`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:13:26 11/17/2016 
// Design Name: 
// Module Name:    blade_generator 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module blade_block	#(parameter COLOR = 24'hFF_FF_FF)	// default color: white
	(input [10:0] handle_top_x, handle_bottom_x, hcount,
	 input [9:0] handle_top_y, handle_bottom_y, vcount,
	 input [10:0] handle_top_z, handle_bottom_z,
     output reg [23:0] pixel,
	 output reg occupied);
	 
	parameter [9:0] BLADE_LENGTH = 100;
	parameter [20:0] BLADE_WIDTH = 3000;
	 
	wire [10:0] blade_bottom_x;
	wire [9:0] blade_bottom_y;
	wire [10:0] blade_bottom_z;
	wire [10:0] blade_top_x;
	wire [10:0] blade_top_y;
	wire [10:0] blade_top_z;
	 
	assign blade_bottom_x = handle_top_x;
	assign blade_bottom_y = handle_top_y;
	assign blade_bottom_z = handle_top_z;
	assign blade_top_x = 2*handle_top_x - 1*handle_bottom_x;
	assign blade_top_y = 2*handle_top_y - 1*handle_bottom_y;
	assign blade_top_z = 2*handle_top_z - 1*handle_bottom_z;
	
	wire [10:0] blade_bottom_2dx;
	wire [9:0] blade_bottom_2dy;
	wire [10:0] blade_top_2dx;
	wire [10:0] blade_top_2dy;
	 
	// TODO: incorporate z into calculation 
	assign blade_bottom_2dx = blade_bottom_x;
	assign blade_bottom_2dy = blade_bottom_y;
	assign blade_top_2dx = blade_top_x;
	assign blade_top_2dy = blade_top_y;
	
	always @ * begin
		// TODO: blade top outside screen, vertical/horizontal disappearing, rounded/square ends
		if ( ( (blade_top_2dx > blade_bottom_2dx && hcount > blade_bottom_2dx && hcount < blade_top_2dx) ||
				(blade_top_2dx < blade_bottom_2dx && hcount > blade_top_2dx && hcount < blade_bottom_2dx) )  &&
			  ( (blade_top_2dy > blade_bottom_2dy && vcount > blade_bottom_2dy && vcount < blade_top_2dy) ||
				(blade_top_2dy < blade_bottom_2dy && vcount > blade_top_2dy && vcount < blade_bottom_2dy) )  && 
		
			  (hcount - blade_bottom_2dx) * (blade_top_2dy - blade_bottom_2dy) - 
				(vcount - blade_bottom_2dy) * (blade_top_2dx - blade_bottom_2dx) < BLADE_WIDTH && 
			  (hcount - blade_bottom_2dx) * (blade_top_2dy - blade_bottom_2dy) - 
				(vcount - blade_bottom_2dy) * (blade_top_2dx - blade_bottom_2dx) > 0
			) begin
			pixel = COLOR;
			occupied = 1;
		end
		else begin
			pixel = 0;
			occupied = 0;
		end
	end
	
	
endmodule
