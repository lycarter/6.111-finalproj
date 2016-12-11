`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Linda Zhang
// 
// Create Date:    18:42:02 12/05/2016 
// Design Name: 
// Module Name:    alpha_blend 
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
module alpha_blend(
	input [23:0] object_color, background_color,

	output [23:0] pixel
    );
	
	// compute alpha by right-shifting alpha_n bits and multiplying by alpha_m
	//wire [2:0] alpha_m = 2;
	//wire [2:0] alpha_n = 2;
	wire [2:0] alpha = 1;
	
	// rbg values for alpha blending
	wire [7:0] alpha_blending_r; 
	wire [7:0] alpha_blending_g;
	wire [7:0] alpha_blending_b;
/*
	assign alpha_blending_r = (object_color[23:16]>>alpha_n)*alpha_m + background_color[23:16] - (background_color[23:16]>>alpha_n)*alpha_m;
	assign alpha_blending_g = (object_color[15:8]>>alpha_n)*alpha_m + background_color[15:8] - (background_color[15:8]>>alpha_n)*alpha_m;
	assign alpha_blending_b = (object_color[7:0]>>alpha_n)*alpha_m + background_color[7:0] - (background_color[7:0]>>alpha_n)*alpha_m;
*/
	assign alpha_blending_r = object_color[23:16]>>alpha + background_color[23:16] - background_color[23:16]>>alpha;
	assign alpha_blending_g = object_color[15:8]>>alpha + background_color[15:8] - background_color[15:8]>>alpha;
	assign alpha_blending_b = object_color[7:0]>>alpha + background_color[7:0] - background_color[7:0]>>alpha;
	
	assign pixel = {alpha_blending_r, alpha_blending_g, alpha_blending_b};

endmodule
