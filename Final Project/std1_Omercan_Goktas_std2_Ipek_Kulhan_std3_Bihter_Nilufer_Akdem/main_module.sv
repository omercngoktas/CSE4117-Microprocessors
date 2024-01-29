module main_module (
	input clk,
	input ps2c,
	input ps2d,
	output logic hsync,
	output logic vsync,
	output logic [2:0] rgb,
	//---output to seven segment display
	output logic [6:0] display,
	output logic [3:0] grounds
);

//memory map is defined here
localparam BEGINMEM 							= 12'h000;
localparam ENDMEM 							= 12'h7ff;
localparam SEVENSEG 							= 12'hb00;
localparam ADDR_SPACESHIP_HORIZONTAL	= 12'hb00;
localparam ADDR_SPACESHIP_VERTICAL 		= 12'hb01;
localparam ADDR_PLANET_HORIZONTAL   	= 12'hb02;
localparam ADDR_PLANET_VERTICAL    		= 12'hb03;
localparam VGA_INTACK						= 12'hb04;
localparam PLANET_CLOCK_DT					= 12'hb05;
localparam PLANET_CLOCK_ST					= 12'hb06;
localparam KEYBOARD_ADDR 					= 12'hb07;
localparam SPACESHIP_BITMAP_ADDR			= 12'h800;
localparam PLANET_BITMAP_ADDR				= 12'h810;

logic [15:0]	clk_data;
logic [15:0]	data_out, data_in, ss7_out;
logic [12:0]	address;
logic [8:0]		keyb_out;
logic [3:0] 	keyout;
logic [31:0] 	clk1;
logic [15:0]	spaceship_horizontal, spaceship_vertical, planet_horizontal, planet_vertical;
logic [15:0]	prev_spaceship_horizontal, prev_spaceship_vertical;
logic [15:0]	spaceship_bitmap[0:15], planet_bitmap[0:15];
logic 			isUp; // if isUp == 1, planet goes up, else goes down
logic 			isRight; // if isRight == 1, planet goes right, else goes left
logic 			memwt, INT, intack, keyb_ack, vga_ack, vga_interrupt;

//  memory chip
logic [15:0] memory [0:511]; 

//====== pic ===============
logic irq0, irq1, irq2, irq3, irq4, irq5, irq6, irq7;

sevensegment ss1 (
	.din(ss7_out), 
	.grounds(grounds), 
	.display(display), 
	.clk(clk)
);

keyboard  kb1(
	.clk(clk),
	.ps2d(ps2d), 
	.ps2c(ps2c), 
	.dout(keyb_out), 
	.ack(keyb_ack)
);

vga_sync vg1 (
	.clk(clk),
	.ack(vga_ack),
	.interrupt(vga_interrupt),
	.hsync(hsync),
	.vsync(vsync),
	.rgb(rgb),
	.spaceship_horizontal(spaceship_horizontal),
	.spaceship_vertical(spaceship_vertical),
	.planet_horizontal(planet_horizontal),
	.planet_vertical(planet_vertical),
	.spaceship_bitmap(spaceship_bitmap),
	.planet_bitmap(planet_bitmap)
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
      irq2 = vga_interrupt;
      irq3 = 1'b0;
      irq4 = 1'b0;
      irq5 = 1'b0;
      irq6 = 1'b0;
      irq7 = 1'b0;
   end
	
//we assume that the devices hold their irq until being serviced by cpu
assign INT = irq0 | irq1 | irq2 | irq3 | irq4 | irq5 | irq6 | irq7; 

//multiplexer for cpu input
always_comb
	begin
		keyb_ack = 0;
		vga_ack = 0;
		if(intack == 0)
			begin
				keyb_ack = 0;
				vga_ack = 0;
				if ((BEGINMEM <= address) && (address <= ENDMEM))
					begin
						data_in = memory[address];
					end
			
				else if (address == KEYBOARD_ADDR + 1)
					begin    
						data_in = keyb_out;
					end
					
				else if (address == KEYBOARD_ADDR)
					begin
						data_in = keyb_out;
						keyb_ack = 1;
					end
				
				else if (address == ADDR_SPACESHIP_HORIZONTAL)
					begin
						vga_ack = 1;
						data_in = spaceship_horizontal;
					end
					
				else if (address == ADDR_SPACESHIP_VERTICAL)
					begin
						vga_ack = 1;
						data_in = spaceship_vertical;
					end
				
				else if (address == ADDR_PLANET_HORIZONTAL)
					begin
						vga_ack = 1;
						data_in = planet_horizontal;
					end
					
				else if (address == ADDR_PLANET_VERTICAL)
					begin
						vga_ack = 1;
						data_in = planet_vertical;
					end

				else if (address == PLANET_CLOCK_ST)
					begin
						vga_ack = 1;
						data_in = clk1[25];
					end
				
				else if (address == PLANET_CLOCK_DT)
					begin
						vga_ack = 1;
						data_in = clk_data;
					end

				else
					begin
						data_in = 16'h9113;
					end
			end
			
		else
			begin
				if (irq0)
					begin
						data_in = 16'h0;
					end
				else if (irq1)
					begin
						data_in = 16'h1;
					end
				else if (irq2)
					begin
						data_in = 16'h2;
					end
				else if (irq3)
					begin
						data_in = 16'h3;
					end
				else if (irq4)
					begin
						data_in = 16'h4;
					end
				else if (irq5)
					begin
						data_in = 16'h5;
					end
				else if (irq6)
					begin
						data_in = 16'h6;
					end
				else
					begin
						data_in = 16'h7;
					end
			end
	end
	
/*
always_ff @(posedge clk)
	begin
		clk1 <= clk1 + 1;
		
		if (clk1[25])
			begin
				clk1 <= 0;
				if (isRight)
					begin
						if ((620 <= planet_horizontal) && (planet_horizontal <= 640))
							begin
								isRight <= 0;
								planet_horizontal <= 620;
							end
						else
							begin
								planet_horizontal <= planet_horizontal + 20;
							end
					end
					
				else if (isRight == 0)
					begin
						if (planet_horizontal <= 0)
							begin
								isRight <= 1;
								planet_horizontal <= 0;
							end
						else
							begin
								planet_horizontal <= planet_horizontal - 20;
							end
					end
					
				 if (isUp)
					begin
						if ((470 <= planet_vertical) && (planet_vertical <= 480))
							begin
								isUp <= 0;
								planet_vertical <= 470;
							end
						else
							begin
								planet_vertical <= planet_vertical + 10;
							end
					end
					
				else if (isUp == 0)
					begin
						if (planet_vertical <= 0)
							begin
								isUp <= 1;
								planet_vertical <= 0;
							end
						else
							begin
								planet_vertical <= planet_vertical - 10;
							end
					end
			end
	end
*/

//multiplexer for cpu output 
always_ff @(posedge clk) //data output port of the cpu
	begin
		clk1 <= clk1 + 1;
		if (memwt)
			begin
				if ((BEGINMEM <= address) && (address <= ENDMEM))
					begin
						memory[address] <= data_out;
					end
					
				else if (ADDR_SPACESHIP_HORIZONTAL == address)
					begin
						spaceship_horizontal <= data_out;
					end
					
				else if (ADDR_SPACESHIP_VERTICAL == address)
					begin
						spaceship_vertical <= data_out;
					end
					
				else if (ADDR_PLANET_HORIZONTAL == address)
					begin
						planet_horizontal <= data_out;
					end
					
				else if (ADDR_PLANET_VERTICAL == address)
					begin
						planet_vertical <= data_out;
					end
						
				else if (SEVENSEG == address)
					begin
						ss7_out <= data_out;
					end
					
				else if (PLANET_CLOCK_DT == address)
					begin
						clk_data <= data_out;
					end
					
				else if (PLANET_CLOCK_ST == address)
					begin
					 	clk1 <= 0;
					 end

				else if (address == SPACESHIP_BITMAP_ADDR)
					begin
						spaceship_bitmap[0] <= data_out;
					end
				else if (address == SPACESHIP_BITMAP_ADDR + 1)
					begin
						spaceship_bitmap[1] <= data_out;
					end
				else if (address == SPACESHIP_BITMAP_ADDR + 2)
					begin
						spaceship_bitmap[2] <= data_out;
					end
				else if (address == SPACESHIP_BITMAP_ADDR + 3)
					begin
						spaceship_bitmap[3] <= data_out;
					end
				else if (address == SPACESHIP_BITMAP_ADDR + 4)
					begin
						spaceship_bitmap[4] <= data_out;
					end
				else if (address == SPACESHIP_BITMAP_ADDR + 5)
					begin
						spaceship_bitmap[5] <= data_out;
					end
				else if (address == SPACESHIP_BITMAP_ADDR + 6)
					begin
						spaceship_bitmap[6] <= data_out;
					end
				else if (address == SPACESHIP_BITMAP_ADDR + 7)
					begin
						spaceship_bitmap[7] <= data_out;
					end
				else if (address == SPACESHIP_BITMAP_ADDR + 8)
					begin
						spaceship_bitmap[8] <= data_out;
					end
				else if (address == SPACESHIP_BITMAP_ADDR + 9)
					begin
						spaceship_bitmap[9] <= data_out;
					end
				else if (address == SPACESHIP_BITMAP_ADDR + 10)
					begin
						spaceship_bitmap[10] <= data_out;
					end
				else if (address == SPACESHIP_BITMAP_ADDR + 11)
					begin
						spaceship_bitmap[11] <= data_out;
					end
				else if (address == SPACESHIP_BITMAP_ADDR + 12)
					begin
						spaceship_bitmap[12] <= data_out;
					end
				else if (address == SPACESHIP_BITMAP_ADDR + 13)
					begin
						spaceship_bitmap[13] <= data_out;
					end
				else if (address == SPACESHIP_BITMAP_ADDR + 14)
					begin
						spaceship_bitmap[14] <= data_out;
					end
				else if (address == SPACESHIP_BITMAP_ADDR + 15)
					begin
						spaceship_bitmap[15] <= data_out;
					end
					
				else if (address == PLANET_BITMAP_ADDR)
					begin
						planet_bitmap[0] <= data_out;
					end
				else if (address == PLANET_BITMAP_ADDR + 1)
					begin
						planet_bitmap[1] <= data_out;
					end
				else if (address == PLANET_BITMAP_ADDR + 2)
					begin
						planet_bitmap[2] <= data_out;
					end
				else if (address == PLANET_BITMAP_ADDR + 3)
					begin
						planet_bitmap[3] <= data_out;
					end
				else if (address == PLANET_BITMAP_ADDR + 4)
					begin
						planet_bitmap[4] <= data_out;
					end
				else if (address == PLANET_BITMAP_ADDR + 5)
					begin
						planet_bitmap[5] <= data_out;
					end
				else if (address == PLANET_BITMAP_ADDR + 6)
					begin
						planet_bitmap[6] <= data_out;
					end
				else if (address == PLANET_BITMAP_ADDR + 7)
					begin
						planet_bitmap[7] <= data_out;
					end
				else if (address == PLANET_BITMAP_ADDR + 8)
					begin
						planet_bitmap[8] <= data_out;
					end
				else if (address == PLANET_BITMAP_ADDR + 9)
					begin
						planet_bitmap[9] <= data_out;
					end
				else if (address == PLANET_BITMAP_ADDR + 10)
					begin
						planet_bitmap[10] <= data_out;
					end
				else if (address == PLANET_BITMAP_ADDR + 11)
					begin
						planet_bitmap[11] <= data_out;
					end
				else if (address == PLANET_BITMAP_ADDR + 12)
					begin
						planet_bitmap[12] <= data_out;
					end
				else if (address == PLANET_BITMAP_ADDR + 13)
					begin
						planet_bitmap[13] <= data_out;
					end
				else if (address == PLANET_BITMAP_ADDR + 14)
					begin
						planet_bitmap[14] <= data_out;
					end
				else if (address == PLANET_BITMAP_ADDR + 15)
					begin
						planet_bitmap[15] <= data_out;
					end
			end
	end

initial 
    begin
			vga_ack = 0;
			keyb_ack = 0;
			vga_interrupt = 0;
			ss7_out = 16'h3136;
			clk1 = 0;
			isUp = 1;
			isRight = 1;
			clk_data = 0;
			/*spaceship_bitmap[0]  = 16'b0000000010000000;
			spaceship_bitmap[1]  = 16'b0000000111000000;
			spaceship_bitmap[2]  = 16'b0000000111000000;
			spaceship_bitmap[3]  = 16'b0000000111000000;
			spaceship_bitmap[4]  = 16'b0000000111000000;
			spaceship_bitmap[5]  = 16'b0000001111100000;
			spaceship_bitmap[6]  = 16'b0000011111110000;
			spaceship_bitmap[7]  = 16'b0000111111111000;
			spaceship_bitmap[8]  = 16'b0001111111111100;
			spaceship_bitmap[9]  = 16'b0000000111000000;
			spaceship_bitmap[10] = 16'b0000000111000000;
			spaceship_bitmap[11] = 16'b0000000111000000;
			spaceship_bitmap[12] = 16'b0000000111000000;
			spaceship_bitmap[13] = 16'b0000001111100000;
			spaceship_bitmap[14] = 16'b0000011111110000;
			spaceship_bitmap[15] = 16'b0000000111000000;
			planet_bitmap[0]  	= 16'b0000011111100000;
			planet_bitmap[1]  	= 16'b0001111111111000;
			planet_bitmap[2]  	= 16'b0011111111111100;
			planet_bitmap[3]  	= 16'b0111111111111110;
			planet_bitmap[4]  	= 16'b0111111111111110;
			planet_bitmap[5]  	= 16'b1111111111111111;
			planet_bitmap[6]  	= 16'b1111111111111111;
			planet_bitmap[7]  	= 16'b1111111111111111;
			planet_bitmap[8]  	= 16'b1111111111111111;
			planet_bitmap[9]  	= 16'b1111111111111111;
			planet_bitmap[10] 	= 16'b0111111111111110;
			planet_bitmap[11] 	= 16'b0111111111111110;
			planet_bitmap[12] 	= 16'b0011111111111100;
			planet_bitmap[13] 	= 16'b0001111111111000;
			planet_bitmap[14] 	= 16'b0000011111100000;
			planet_bitmap[15] 	= 16'b0000000000000000;*/
			$readmemh("ram.dat", memory);
    end

endmodule