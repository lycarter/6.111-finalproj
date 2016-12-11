`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Linda Zhang
// 
// Create Date: 10/11/2016 10:30:22 PM
// Design Name: 
// Module Name: one_hz
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 1Hz enable signal (asserted high once per second)
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module one_hz(
    input clock_65mhz,				// 65MHz clock
    input start,                   // 1Hz enable signal restarts when start is high
    output reg one_hz_enable = 0	// asserted high once per second
    );
    
    reg [25:0] counter = 0;
    
    always @(posedge clock_65mhz) begin
        // restart counter at start 
        if (start) begin
            counter <= 0;
        end
        // one_hz_enable asserted high every 65000000 65MHz clock cycles
        else begin
            counter <= counter + 1;
            if (counter == 65_000_000) begin
                counter <= 0;
                one_hz_enable <= 1;
            end
            else begin
                one_hz_enable <= 0;
            end
        end
    end
endmodule
