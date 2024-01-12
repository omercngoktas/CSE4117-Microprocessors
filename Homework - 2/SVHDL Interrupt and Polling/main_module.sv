module main_module (
	input clk,
	//---input from switchbank
	input left_button,
	input right_button,
	//---output to seven segment display
	output logic [3:0] grounds,
	output logic [6:0] display
);

//====memory map is defined here====
localparam BEGINMEM = 12'h000;
localparam ENDMEM = 12'h7ff;
localparam SWITCHBANK = 12'h900;
localparam SEVENSEG = 12'hb00;
localparam LEFT_BUTTON_STATUS = 12'h901;

//====memory chip==============
logic [15:0] memory [0:127]; 
 
//=====cpu's input-output pins=====
logic [15:0] data_out;
logic [15:0] data_in;
logic [11:0] address;
logic memwt;
logic INT;    //interrupt pin
logic intack; //interrupt acknowledgement
logic ackx;

//======ss7 and switchbank=====
logic [15:0] input_data;
logic [15:0] lb_switch_in;
logic [15:0] rb_switch_in;
logic [15:0] ss7_out;
logic switch_interrupt;

//====== pic ===============
logic irq0, irq1, irq2, irq3, irq4, irq5, irq6, irq7;

//=====components==================
sevensegment ss1 (
	.din(ss7_out), 
	.grounds(grounds), 
	.display(display), 
	.clk(clk)
);

switchbank_poll  poll_sw1(
	.clk(clk),
	.switches(input_data),
	.enter_key(left_button),
	.a0(address[0]),
	.ack(ackx),
	.data_out(lb_switch_in) // burada devicedan okunan deger veriliyor statusreg ya da datareg olarak dataout guncellenecek
);

switchbank_int  int_sw1 (
	.clk(clk), 
	.switches(input_data), 
	.enter_key(right_button),  
	.ack(ackx), 
	.interrupt(switch_interrupt),
	.data_reg(rb_switch_in)
);

mammal m1 (
	.clk(clk), 
	.data_in(data_in), 
	.data_out(data_out), 
	.address(address), 
	.memwt(memwt),
	.INT(INT), 
	.intack(intack)
);

//===============IRQ's==============
always_comb
	begin
      irq0 = 1'b0;
      irq1 = 1'b0;
      irq2 = switch_interrupt;
      irq3 = 1'b0;
      irq4 = 1'b0;
      irq5 = 1'b0;
      irq6 = 1'b0;
      irq7 = 1'b0;
   end

//we assume that the devices hold their irq until being serviced by cpu
assign INT = irq0 | irq1 | irq2 | irq3 | irq4 | irq5 | irq6 | irq7; 

//====multiplexer for cpu input======
always_comb
	begin
		ackx = 0;
		if (intack == 0)
			begin
				ackx = 0;
				if ((BEGINMEM <= address) && (address <= ENDMEM))
					begin
						data_in = memory[address];
					end
				
				else if (LEFT_BUTTON_STATUS == address)
					begin
						ackx = 1;
						data_in <= lb_switch_in;
					end
					
				else if (SWITCHBANK == address)
					begin
						ackx = 1;              //with appropriate a0 resets the ready flag    
						data_in = input_data;   //a0 will determine if we read data or status
					end
					
				else
					begin
						data_in=16'hf345; //last else to generate combinatorial circuit.
					end
			end
			
		else                        //intack = 1
			begin
				if (irq0)               //highest priority interrupt is irq0
					data_in = 16'h0;
				else if (irq1)
					data_in = 16'h1;
				else if (irq2)	
					data_in = 16'h2;
				else if (irq3)
					data_in = 16'h3;
				else if (irq4)
					data_in = 16'h4;
				else if (irq5)
					data_in = 16'h5;
				else if (irq6)
					data_in = 16'h6;
				else                           //  irq7 
					data_in = 16'h7;
			end
	end

//=====multiplexer for cpu output=========== 
always_ff @(posedge clk) //data output port of the cpu
	begin
		if (memwt)
			begin
				if ((BEGINMEM <= address) && (address <= ENDMEM))
					begin
						memory[address] <= data_out;
					end
				
				if (SWITCHBANK == address)
					begin
						input_data <= data_out;
					end
					
				else if (SEVENSEG == address)
					begin
						ss7_out <= data_out;
					end
			end
	end

initial 
	begin
		switch_interrupt = 1'b0;
		input_data = 16'h0001;
		ss7_out =16'h3136;
		$readmemh("ram.dat", memory);
	end
	 
endmodule