module switchbank_poll(
	input clk,
	//--user side
	input [15:0] data_in,
	input enter_key,
	//--cpu side
	input a0,
	input ack,
	output data_out
);
  
reg [1:0] pressed_button_one;// isim degistirdim @talha
reg [1:0] pressed_button_two;   // Ekledim @talha
reg [15:0] status_reg_for_button_one;// isim degistirdim @talha
reg [15:0] status_reg_for_button_two;// Ekledim @talha
reg [15:0] data_reg;   

always_ff @(posedge clk)
	begin
		pressed_button_one <= {pressed_button_one[0], enter_key};// isim degistirdim @talha
		if ((pressed_button_one == 2'b10) && (status_reg_for_button_one[0] == 1'b0))// isim degistirdim @talha
			begin
				status_reg_for_button_one  <= 16'b1;// isim degistirdim @talha
				data_reg    <= data_in;
			end
			
		pressed_button_two <= {pressed_button_one[0], enter_key};// Ekledim @talha
		else if ((pressed_button_two == 2'b10) && (status_reg_for_button_two[0] == 1'b0))// Ekledim @talha
			begin
				status_reg_for_button_two  <= 16'b1;// Ekledim @talha
				data_reg    <= data_in;// Ekledim @talha
			end	
		
		else if (ack & ~a0)
			begin
				status_reg_for_button_one <= 16'b0;// isim degistirdim @talha
				status_reg_for_button_two <= 16'b0;// Ekledim @talha
			end
			
		
	end

always_comb
	begin
		if (a0)
			begin
				data_out = status_reg;
			end
		else
			begin
				data_out = data_reg;
			end
	end

endmodule
