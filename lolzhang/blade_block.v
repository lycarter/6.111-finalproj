`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Linda Zhang
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
module blade_block	//#(parameter COLOR = 24'hFF_FF_00)	// default color: idk
	(input clock,
	 input [10:0] handle_top_x, handle_bottom_x, hcount,
	 input [9:0] handle_top_y, handle_bottom_y, vcount,
	 //input [10:0] handle_top_z, handle_bottom_z,
	 input on,
	 input [23:0] color,
	 input [23:0] background,
     output reg [23:0] pixel,
	 output reg occupied);
	 
	parameter signed [5:0] BLADE_LENGTH = 3;
	parameter signed [10:0] BLADE_WIDTH = 500;
	parameter signed [5:0] ERROR_MARGIN = 2;
	parameter signed [5:0] ERROR_MARGIN4 = 8;
	
	wire signed [11:0] signed_hcount;
	wire signed [11:0] signed_vcount;
	assign signed_hcount = hcount;
	assign signed_vcount = vcount;
	 
	wire signed [11:0] blade_bottom_x;
	wire signed [11:0] blade_bottom_y;
	//wire signed [11:0] blade_bottom_z;
	wire signed [11:0] blade_top_x;
	wire signed [11:0] blade_top_y;
	//wire signed [12:0] blade_top_z;
	 
	assign blade_bottom_x = handle_top_x;
	assign blade_bottom_y = handle_top_y;
	//assign blade_bottom_z = handle_top_z;
	assign blade_top_x = BLADE_LENGTH*handle_top_x - (BLADE_LENGTH-1)*handle_bottom_x;
	assign blade_top_y = BLADE_LENGTH*handle_top_y - (BLADE_LENGTH-1)*handle_bottom_y;
	//assign blade_top_z = BLADE_LENGTH*handle_top_z - (BLADE_LENGTH-1)*handle_bottom_z;
	
	wire signed [11:0] blade_bottom_2dx;
	wire signed [11:0] blade_bottom_2dy;
	wire signed [11:0] blade_top_2dx;
	wire signed [11:0] blade_top_2dy;
	 
	// TODO: incorporate z into calculation 
	assign blade_bottom_2dx = blade_bottom_x;
	assign blade_bottom_2dy = blade_bottom_y; 
	assign blade_top_2dx = blade_top_x;
	assign blade_top_2dy = blade_top_y;
	
	reg signed [18:0] multiplicationh;
	reg signed [18:0] multiplicationv;
	reg signed [18:0] dot_product_a;
	reg signed [18:0] dot_product_b;
	/*
	assign multiplicationh = (signed_hcount - blade_bottom_2dx) * (blade_top_2dy - blade_bottom_2dy);
	assign multiplicationv = (signed_vcount - blade_bottom_2dy) * (blade_top_2dx - blade_bottom_2dx);
	assign dot_product_a = multiplicationh - multiplicationv;
	assign dot_product_b = multiplicationv - multiplicationh;
	*/
	wire [23:0] alpha_blended_pixel;
	alpha_blend ab(.object_color(color), .background_color(background), .pixel(alpha_blended_pixel));
	
	
	always @ (posedge clock) begin
		// TODO: make the width a function of the widths of the top ball
		//		 add a few pixels to top of alpha blended part to make it fully surround solid part
		multiplicationh <= (signed_hcount - blade_bottom_2dx) * (blade_top_2dy - blade_bottom_2dy);
		multiplicationv <= (signed_vcount - blade_bottom_2dy) * (blade_top_2dx - blade_bottom_2dx);
		dot_product_a <= multiplicationh - multiplicationv;
		dot_product_b <= multiplicationv - multiplicationh;
		
		if (!on) begin
			pixel <= 0;
			occupied <= 0;
		end
		else if ( ( ( (blade_bottom_2dx >= blade_top_2dx && blade_bottom_2dx - blade_top_2dx < ERROR_MARGIN<<1 &&
				   signed_hcount > blade_top_2dx - ERROR_MARGIN && signed_hcount < blade_bottom_2dx + ERROR_MARGIN) || 
			  	  (blade_top_2dx >= blade_bottom_2dx && blade_top_2dx - blade_bottom_2dx < ERROR_MARGIN<<1 &&
				   signed_hcount > blade_bottom_2dx - ERROR_MARGIN && signed_hcount < blade_top_2dx + ERROR_MARGIN) ) && 
			    ( (blade_top_2dy > blade_bottom_2dy && signed_vcount > blade_bottom_2dy && signed_vcount < blade_top_2dy) ||
				  (blade_top_2dy < blade_bottom_2dy && signed_vcount > blade_top_2dy && signed_vcount < blade_bottom_2dy) ) ) 
			  ||
			  ( ( (blade_bottom_2dy >= blade_top_2dy && blade_bottom_2dy - blade_top_2dy < ERROR_MARGIN<<1 &&
				   signed_vcount > blade_top_2dy - ERROR_MARGIN && signed_vcount < blade_bottom_2dy + ERROR_MARGIN) || 
			  	  (blade_top_2dy >= blade_bottom_2dy && blade_top_2dy - blade_bottom_2dy < ERROR_MARGIN<<1 &&
				   signed_vcount > blade_bottom_2dy - ERROR_MARGIN && signed_vcount < blade_top_2dy + ERROR_MARGIN) ) && 
			    ( (blade_top_2dx > blade_bottom_2dx && signed_hcount > blade_bottom_2dx && signed_hcount < blade_top_2dx) ||
				  (blade_top_2dx < blade_bottom_2dx && signed_hcount > blade_top_2dx && signed_hcount < blade_bottom_2dx) ) )
			) begin
			pixel <= color;//24'hFF_FF_FF;
			occupied <= 1;
			
		end
		
		else if ( ( (blade_top_2dx > blade_bottom_2dx && signed_hcount > blade_bottom_2dx && signed_hcount < blade_top_2dx) ||
					 (blade_top_2dx < blade_bottom_2dx && signed_hcount > blade_top_2dx && signed_hcount < blade_bottom_2dx) )  &&
				
				   ( (blade_top_2dy > blade_bottom_2dy && signed_vcount > blade_bottom_2dy && signed_vcount < blade_top_2dy) ||
					  (blade_top_2dy < blade_bottom_2dy && signed_vcount > blade_top_2dy && signed_vcount < blade_bottom_2dy) )  && 
		
				   ( (dot_product_a < BLADE_WIDTH && dot_product_a >= 0) || (dot_product_b < BLADE_WIDTH && dot_product_b >= 0) )
				 ) begin
			pixel <= color;//24'hFF_FF_FF;
			occupied <= 1;
		end
		
		else if ( ( ( (blade_bottom_2dx >= blade_top_2dx && blade_bottom_2dx - blade_top_2dx < ERROR_MARGIN<<3 &&
						signed_hcount > blade_top_2dx - ERROR_MARGIN4 && signed_hcount < blade_bottom_2dx + ERROR_MARGIN4) || 
						(blade_top_2dx >= blade_bottom_2dx && blade_top_2dx - blade_bottom_2dx < ERROR_MARGIN<<3 &&
						signed_hcount > blade_bottom_2dx - ERROR_MARGIN4 && signed_hcount < blade_top_2dx + ERROR_MARGIN4) ) && 
					( (blade_top_2dy > blade_bottom_2dy && signed_vcount > blade_bottom_2dy && signed_vcount < blade_top_2dy) ||
						(blade_top_2dy < blade_bottom_2dy && signed_vcount > blade_top_2dy && signed_vcount < blade_bottom_2dy) ) ) 
					||
					( ( (blade_bottom_2dy >= blade_top_2dy && blade_bottom_2dy - blade_top_2dy < ERROR_MARGIN<<3 &&
						signed_vcount > blade_top_2dy - ERROR_MARGIN4 && signed_vcount < blade_bottom_2dy + ERROR_MARGIN4) || 
						(blade_top_2dy >= blade_bottom_2dy && blade_top_2dy - blade_bottom_2dy < ERROR_MARGIN<<3 &&
						signed_vcount > blade_bottom_2dy - ERROR_MARGIN4 && signed_vcount < blade_top_2dy + ERROR_MARGIN4) ) && 
					( (blade_top_2dx > blade_bottom_2dx && signed_hcount > blade_bottom_2dx && signed_hcount < blade_top_2dx) ||
						(blade_top_2dx < blade_bottom_2dx && signed_hcount > blade_top_2dx && signed_hcount < blade_bottom_2dx) ) )
				) begin
			pixel <= alpha_blended_pixel;
			occupied <= 1;
		
		end
		
		else if ( ( (blade_top_2dx > blade_bottom_2dx && signed_hcount > blade_bottom_2dx && signed_hcount < blade_top_2dx) ||
					 (blade_top_2dx < blade_bottom_2dx && signed_hcount > blade_top_2dx && signed_hcount < blade_bottom_2dx) )  &&
				
				   ( (blade_top_2dy > blade_bottom_2dy && signed_vcount > blade_bottom_2dy && signed_vcount < blade_top_2dy) ||
					  (blade_top_2dy < blade_bottom_2dy && signed_vcount > blade_top_2dy && signed_vcount < blade_bottom_2dy) )  && 
		
				   ( (dot_product_a < BLADE_WIDTH<<2 && dot_product_a >= 0) || (dot_product_b < BLADE_WIDTH<<2 && dot_product_b >= 0) )
				 ) begin
			pixel <= alpha_blended_pixel;
			occupied <= 1;
		end
		
		else begin
			pixel <= 0;
			occupied <= 0;
		end
	end
	
	
endmodule
