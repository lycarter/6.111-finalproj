`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Linda Zhang
// 
// Create Date:    18:04:01 11/30/2016 
// Design Name: 
// Module Name:    random_number 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: pseudo random number generator
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module random_number
   (input clock,			// clock
	input new,				// output new data if asserted
	input reset,			// reset
	input [9:0] seed,		// start value of generator
	input offset,			// offset is asserted
    output [9:0] data 		// pseudo random number
    );

	parameter OFFSET = 300;
	reg [9:0] data_next;
	
	always @(posedge clock) begin
		data_next <= reset ? seed : { 3'b0, data_next[5:0], data_next[6] ^ data_next[5] };
	end
	
	assign data = new ? (offset ? (data_next << 2) + OFFSET : data_next << 2) : data;
	

endmodule
