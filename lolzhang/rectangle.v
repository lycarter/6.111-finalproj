`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:15:24 11/17/2016 
// Design Name: 
// Module Name:    rectangle
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: generate rectangle on screen
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

module rectangle
	#(parameter WIDTH = 64,			// default width: 64 pixels
				HEIGHT = 64,			// default height: 64 pixels
                COLOR = 24'hFF_FF_FF)	// default color: white
	(input [10:0] x,hcount,
	 input [9:0] y,vcount,
     output reg [23:0] pixel);

	always @ * begin
		if ((hcount >= x && hcount < (x+WIDTH)) && 
			(vcount < y && vcount >= (y-HEIGHT)))
			pixel = COLOR;
		else pixel = 0;
	end
	
endmodule
