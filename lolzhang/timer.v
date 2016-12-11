`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Linda Zhang
// 
// Create Date: 10/11/2016 10:25:37 PM
// Design Name: 
// Module Name: timer
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: timer counts down the number of seconds specified by the time parameter
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module timer(
    input clock,                    // clock
    input [5:0] time_parameter,    // seconds in countdown before timer expires
    input start,                    // timer starts countdown when start is asserted
    input one_hz_enable,            // asserted once per second
    output [5:0] countdown,        // countdown from time_parameter
    output time_expired             // asserted when countdown reaches 0
    );
    
    reg [5:0] counter;
    reg time_exp;
    
    always @(posedge clock) begin
        // reset counter to time_parameter at start 
        if (start) begin
            counter <= time_parameter;
            time_exp <= 0;
        end
        // decrease counter every second when one_hz_enable is high and counter is in (0, time_parameter]
        else if (one_hz_enable && counter > 0 && counter <= time_parameter) begin
            counter <= counter - 1;
            time_exp <= 0;
        end
        // if counter is 0, then time has expired
        else if (counter == 0 ) begin
            time_exp <= 1;
        end
        else begin
            time_exp <= 0;
        end
    end
    
    assign countdown = counter;
    assign time_expired = time_exp;
    
endmodule
