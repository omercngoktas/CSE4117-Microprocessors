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
  
reg [1:0] pressed;   // Ekledim
reg [15:0] status_reg;   // Ekledim
reg [15:0] data_reg;   // Ekledim

always_ff @(posedge clk)
	begin
		pressed <= {pressed[0], enter_key};
		if ((pressed == 2'b10) && (status_reg[0] == 1'b0))
			begin
				status_reg  <= 16'b1;
				data_reg    <= data_in;
			end
		else if (ack & ~a0)
			begin
				status_reg <= 16'b0;
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
