`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Linda Zhang
// 
// Create Date:    20:43:05 12/7/2016 
// Design Name: 
// Module Name:    bcd_ascii 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: converts 8 digit binary number to binary coded decimal (BCD) 
//				using the double dabble algorithm, outputs digits in ASCII
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module bcd_ascii(
    input clock,			// clock
    input [7:0] data,		// binary input number
    output [7:0] d1,		// decimal 1's place in ASCII
    output [7:0] d10		// decimal 10's place in ASCII
    );
	
	parameter [5:0] ASCII_OFFSET = 48;
    reg [11:0] bcd; 
	integer ii; 
	
     
	// double dabble algorithm
    always @(clock) begin
		//initialize bcd to zero.
		bcd = 0; 
		for (ii = 0; ii < 8; ii = ii+1) begin
			bcd = {bcd[10:0],data[7-ii]};
				
			//if a hex digit of 'bcd' is more than 4, add 3 to it.  
			if(ii < 7 && bcd[3:0] > 4) 
				bcd[3:0] = bcd[3:0] + 3;
			if(ii < 7 && bcd[7:4] > 4)
				bcd[7:4] = bcd[7:4] + 3;
			if(ii < 7 && bcd[11:8] > 4)
				bcd[11:8] = bcd[11:8] + 3;
        end
	end 
	
	assign d1 = bcd[3:0] + ASCII_OFFSET;
	assign d10 = bcd[7:4] + ASCII_OFFSET;

endmodule