module SevenSegment(
  segmentBits, // Seven-segment display bit outputs
  grounds,
  leftButton,
  rightButton
);

output reg [6:0] segmentBits;
output reg [3:0] grounds = 4'b0000;
input wire leftButton;
input wire rightButton;

reg [3:0] data = 4'b1000; // For example, 'hD

always @* begin
    // Sağ buton basıldığında data'yı bir arttır
    if (rightButton) begin
      if (data == 4'hF)
        data <= 4'b0000;
      else
        data <= data + 1;
    end
  end

always @*
	case(data)
		0: segmentBits=7'b1111110;
		1: segmentBits=7'b0110000;
		2: segmentBits=7'b1101101;
		3: segmentBits=7'b1111001;
		4: segmentBits=7'b0110011;
		5: segmentBits=7'b1011011;
		6: segmentBits=7'b1011111;
		7: segmentBits=7'b1110000;
		8: segmentBits=7'b1111111;
		9: segmentBits=7'b1111011;
		'ha: segmentBits=7'b1110111;
		'hb: segmentBits=7'b0011111;
		'hc: segmentBits=7'b1001110;
		'hd: segmentBits=7'b0111101;
		'he: segmentBits=7'b1001111;
		'hf: segmentBits=7'b1000111;
		default segmentBits=7'b1111111;
	endcase

endmodule
