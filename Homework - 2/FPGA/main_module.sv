module main_module (
	input clk,
	/*input left_button,
	input right_button,*/
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

//  memory chip
logic [15:0] memory [0:127];
 
// cpu's input-output pins
logic [15:0] data_out;
logic [15:0] data_in;
logic [11:0] address;
logic memwt; // memory'e bir sey yazacagimiz ya da push-call islemlerinden birisini gerceklestirecegimiz zaman kullaniyoruz

//======ss7 and switchbank=====
logic [15:0] ss7_out;
logic [15:0] switches_in;
logic [15:0] switch_in;
logic ackx;

//=====components==================
sevensegment ss1(
  .din(ss7_out),
  .grounds(grounds),
  .display(display),
  .clk(clk)
);

switchbank  sw1(
	.clk(clk),
	.switches(switches_in),
	.enter_key(enter_key),
	.a0(address[0]),
	.ack(ackx),
	.data_out(switch_in) // burada devicedan okunan deger veriliyor statusreg ya da datareg olarak dataout guncellenecek
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
		// burada address'in BEGINMEM ile ENDMEM arasinda olup olmadigi kontrol ediliyor
		if ((BEGINMEM <= address) && (address <= ENDMEM))
			begin
				data_in = memory[address];
			end
			
		// address STATUS ya da DATA'ya esit ise (device'in status ya da data adresiyse)
		else if ((address == SWITCHBANK_STATUS) || (address == SWITCHBANK_DATA))
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
		if (memwt) // yazma islemi yapilacaksa
			begin
				if ((BEGINMEM <= address) && (address <= ENDMEM)) // address memorynin araligindaysa
					begin
						memory[address] <= data_out;
					end

				else if (SWITCHBANK_DATA == address)
					begin
						switches_in <= data_out;
					end

				else if (SEVENSEG == address) // uretilen address sevenseg addressi haliyle data sevensegmente bastirilacak
					begin
						ss7_out <= data_out;
					end
			end
	end

initial 
	begin
		ss7_out=16'h3136;
		switches_in=16'h9113;
		$readmemh("ram.dat", memory);
	end
	 
endmodule