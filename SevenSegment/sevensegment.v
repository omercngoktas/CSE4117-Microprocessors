module sevensegment(
  input wire [3:0] inputNumber, // 4-bit input number
  output reg [6:0] segmentBits // Seven-segment display bit outputs
);

  // Display logic
  always @* begin
    // Get the seven-segment pattern for the current input number
    segmentBits = convertToSevenSegment(inputNumber);
  end

  // Function to convert a 4-bit number to 8-bit for display
  function [6:0] convertToSevenSegment;
    input [3:0] inputNumber;
    case (inputNumber)
      4'b0000: convertToSevenSegment = 7'b1111110; // 0
      4'b0001: convertToSevenSegment = 7'b0110000; // 1
      4'b0010: convertToSevenSegment = 7'b1101101; // 2
      4'b0011: convertToSevenSegment = 7'b1111001; // 3
      4'b0100: convertToSevenSegment = 7'b0110011; // 4
      4'b0101: convertToSevenSegment = 7'b1011011; // 5
      4'b0110: convertToSevenSegment = 7'b1011111; // 6
      4'b0111: convertToSevenSegment = 7'b1110000; // 7
      4'b1000: convertToSevenSegment = 7'b1111111; // 8
      4'b1001: convertToSevenSegment = 7'b1111011; // 9
      default: convertToSevenSegment = 7'b1111111; // Default case (all segments off)
    endcase
  endfunction

endmodule







/*output reg [6:0] display;
output reg [3:0] grounds;

reg [3:0] data;


always @*
	case (data)
		0: display=7'b1111110;
		1: display=7'b0110000;
		2: display=7'b1101101;
		3: display=7'b1111001;
		4: display=7'b0110011;
		5: display=7'b1011011;
		6: display=7'b1011111;
		7: display=7'b1110000;
		8: display=7'b1111111;
		9: display=7'b1111011;
		'ha: display=7'b1110111;
		'hb: display=7'b0011111;
		'hc: display=7'b1001110;
		'hd: display=7'b0111101;
		'he: display=7'b1001111;
		'hf: display=7'b1000111;
		default display=7'b1111111;
	endcase
initial data=4'hA;

endmodule*/
