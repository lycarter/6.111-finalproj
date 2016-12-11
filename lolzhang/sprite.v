`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Linda Zhang
// 
// Create Date:    22:50:12 11/27/2016 
// Design Name: 
// Module Name:    sprite
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
						   RADIUS = 16)
   (input clock,
	input [10:0] x, hcount, 
	input [9:0] y, vcount,
	input display,
	input [23:0] background,
	output reg [23:0] pixel,
	output reg occupied);
	
	reg [10:0] deltax;
	reg [10:0] deltay;
	reg [20:0] deltax2;
	reg [20:0] deltay2;
	reg [10:0] radiussquaredinner;
	reg [10:0] radiussquaredouter;
	
	wire [23:0] alpha_blended_pixel;
	alpha_blend ab(.object_color(COLOR), .background_color(background), .pixel(alpha_blended_pixel));
	
	// TODO: alpha blending, preloaded image??
	always @ (posedge clock)  begin
		// generate round puck
		// compute x-xcenter and y-ycenter
		radiussquaredinner <= RADIUS*RADIUS;
		radiussquaredouter <= radiussquaredinner<<2;
		deltax <= (hcount > (x+RADIUS)) ? (hcount-(x+RADIUS)) : ((x+RADIUS)-hcount);
		deltay <= (vcount > (y+RADIUS)) ? (vcount-(y+RADIUS)) : ((y+RADIUS)-vcount);
		deltax2 <= deltax*deltax;
		deltay2 <= deltay*deltay;
		// check if distance is less than radius squared
		if(deltax2+deltay2 <= radiussquaredinner && display) begin
			pixel <= COLOR;
			occupied <= 1;
		end
		else if(deltax2+deltay2 <= radiussquaredouter && display) begin
			pixel <= alpha_blended_pixel;
			occupied <= 1;
		end
		else begin
			pixel <= 0;
			occupied <= 0;
		end
	end


endmodule
