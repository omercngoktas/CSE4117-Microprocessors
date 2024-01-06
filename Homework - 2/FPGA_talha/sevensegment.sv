module sevensegment( din, grounds, display, clk);

input logic [15:0] din;
output logic [3:0] grounds;
output logic [6:0] display;
input clk; 

logic [3:0] data [3:0] ; //number to be printed on display
logic [1:0] count;       //which data byte to display.
logic [25:0] clk1;

always_ff @(posedge clk1[15]) //25 slow //19 wavy //15 perfect
begin
    grounds<={grounds[2:0],grounds[3]};
    count<=count+1;
end

always_ff @(posedge clk)
    clk1<=clk1+1;

always_comb
    case(data[count])
			0: display=7'b0000001;
			1: display=7'b1001111;
			2: display=7'b0010010;
			3: display=7'b0000110;
			4: display=7'b1001100;
			5: display=7'b0100100;
			6: display=7'b0100000;
			7: display=7'b0001111;
			8: display=7'b0000000;
			9: display=7'b0000100;
			'ha: display=7'b0001000;
			'hb: display=7'b1100000;
			'hc: display=7'b0110001;
			'hd: display=7'b1000010;
			'he: display=7'b0110000;
			'hf: display=7'b0111000;
			default: display=7'b0000000;
    endcase

  always_comb
    begin
    data[3]=din[15:12];
    data[2]=din[11:8];
    data[1]=din[7:4];
    data[0]=din[3:0];
    end

initial begin
    count = 2'b0;
    grounds=4'b0001;
    clk1=0;
end

endmodule