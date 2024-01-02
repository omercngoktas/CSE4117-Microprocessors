module main_module (
		input clk,

		/*input left_button;
		input right_button;*/
		input enter_key,

		//---output to seven segment display
		output logic [3:0] grounds,
		output logic [6:0] display
);


//====memory map is defined here====
localparam    
	BEGINMEM=12'h000,
	ENDMEM=12'h1ff,
	SWITCHBANK_DATA=12'h900,  
	SWITCHBANK_STATUS=12'h901, 
	SEVENSEG=12'hb00;

//====memory chip==============
logic [15:0] memory [0:127]; 
//=====cpu's input-output pins=====
logic [15:0] data_out;
logic [15:0] data_in;
logic [11:0] address;
logic memwt;

//======ss7 and switchbank=====
logic [15:0] ss7_out, switch_in;

logic ackx;

//=====components==================
sevensegment ss1 (
  .din(ss7_out),
  .grounds(grounds),
  .display(display),
  .clk(clk)
);

switchbank_poll sw1(
	.clk(clk),
	.data_in(data_out), // switches'ın türünü düzeltilmiş haliyle belirtin
	.enter_key(enter_key),
	.a0(address[0]),
	.ack(ackx),
	.data_out(switch_in)
);

bird br1(
	.clk(clk),
	.data_in(data_in),
	.data_out(data_out),
	.address(address),
	.memwt(memwt)
);


//====multiplexer for cpu input======
always_comb
	begin
		ackx = 0;
		if ((BEGINMEM<=address) && (address<=ENDMEM))
			begin
				data_in=memory[address];
			end
			
		else if ((address==SWITCHBANK_STATUS)|| (address==SWITCHBANK_DATA))
			begin
				ackx = 1;              //with appropriate a0 resets the ready flag    
				data_in = switch_in;   //a0 will determine if we read data or status
			end
			
		else
			begin
				data_in=16'hf345; //any number
			end
	end
	
//=====multiplexer for cpu output=========== 
always_ff @(posedge clk) //data output port of the cpu
	begin
		if (memwt)
			begin
				if ((BEGINMEM<=address) && (address<=ENDMEM))
					begin
						memory[address]<=data_out;
						
					end
					
				else if (SEVENSEG==address) 
					begin
							ss7_out<=data_out;
							  
					end
			end
	end

initial 
    begin
        $readmemh("ram.dat", memory);
		  for (int i = 0; i < 15; i = i + 1)
            $display("memory[%0d] = %h", i, memory[i]);
				
		  /*ss7_out[3:0] = 4'h1;
		  ss7_out[7:4] = 4'hE;
		  ss7_out[11:8] = 4'hA;
		  ss7_out[15:12] = 4'h7;*/
    end
endmodule