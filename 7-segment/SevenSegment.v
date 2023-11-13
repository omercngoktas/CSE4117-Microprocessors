module SevenSegment(
  output reg [6:0] segmentBits, // Seven-segment display bit outputs
  output reg [3:0] grounds,
  input clk,
  input wire leftButton,
  input wire rightButton
);

reg [3:0] data [3:0];
reg [25:0] clk1;
reg [1:0] count;
reg [15:0] number;
reg [4:0] scanSpeed;
reg leftButtonPrev;
reg rightButtonPrev;

always @(posedge clk)
	clk1 <= clk1 + 1;

always @(posedge clk1[scanSpeed])
	begin
		grounds <= {grounds[2:0], grounds[3]};
		count <= count + 1;
	end
	
 always @(posedge clk) begin
    if (leftButton) begin
      if (!leftButtonPrev) begin
        number <= number + 1;
        leftButtonPrev <= 1;
      end
    end else begin
      leftButtonPrev <= 0;
    end
  end
  
  
 always @(posedge clk) begin
    if (rightButton) begin
      if (!rightButtonPrev) begin
        scanSpeed <= scanSpeed + 3;
        if (scanSpeed > 25) begin
          scanSpeed <= 0;
        end
        rightButtonPrev <= 1;
      end
    end else begin
      rightButtonPrev <= 0;
    end
  end
	
always @*
	begin
		data[3] = number[15:12];
		data[2] = number[11:8];
		data[1] = number[7:4];
		data[0] = number[3:0];
	end

always @* begin
	case(data[count])
		0: segmentBits=7'b0000001;
		1: segmentBits=7'b1001111;
		2: segmentBits=7'b0010010;
		3: segmentBits=7'b0000110;
		4: segmentBits=7'b1001100;
		5: segmentBits=7'b0100100;
		6: segmentBits=7'b0100000;
		7: segmentBits=7'b0001111;
		8: segmentBits=7'b0000000;
		9: segmentBits=7'b0000100;
		'ha: segmentBits=7'b0001000;
		'hb: segmentBits=7'b1100000;
		'hc: segmentBits=7'b0110001;
		'hd: segmentBits=7'b1000010;
		'he: segmentBits=7'b0110000;
		'hf: segmentBits=7'b0111000;
		default: segmentBits=7'b0000000;
	endcase
end

initial begin
	number = 16'hFFA7;
	grounds = 4'b0001;
	clk1 = 0;
	count = 0;
	scanSpeed = 10;
	leftButtonPrev = 1'b0;
	rightButtonPrev = 1'b0;
end

endmodule
