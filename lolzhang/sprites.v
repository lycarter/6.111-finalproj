`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:50:12 11/27/2016 
// Design Name: 
// Module Name:    sprites 
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
module sprite #(parameter COLOR = 24'hFF_00_FF,
						   SIZE = 64)
   (input [10:0] x, hcount, 
	input [9:0] y, vcount,
	output reg [23:0] pixel,
	output reg occupied);
	
	always @ * begin
		if ((hcount >= x && hcount < (x+SIZE)) &&
			(vcount >= y && vcount < (y+SIZE))) begin
			pixel = COLOR;
			occupied = 1;
		end
		else begin
			pixel = 0;
			occupied = 0;
		end
   end

endmodule
