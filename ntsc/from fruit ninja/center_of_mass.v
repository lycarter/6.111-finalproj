// calculates center of mass for a target hue within [target_hue_low,
// target_hue_high], or [0, target_hue_low] union [target_hue_high, 2^8] if
// invert is == 1.
module CenterOfMass #(parameter OLD_POINTS = 15)(inframe, clk, reset,
 ntsc_address, ntsc_we, x, y, H, S, V,
 target_hue_low, target_hue_high, comX, comY,
 detected, used, comXOld0, comYOld0, comXOld1,
 comYOld1, comXOld2, comYOld2, comXOld3, comYOld3,
 comXOld4, comYOld4, minX, minY, extrapolate);
 input wire extrapolate;
 input wire inframe;
 input wire clk;
 input wire reset;
 input wire [18:0] ntsc_address;
 input wire ntsc_we;
 input wire detected;
 input wire [10:0] x;
 input wire [9:0] y;
 input wire [7:0] H;
 input wire [7:0] S;
 input wire [7:0] V;
 input wire [7:0] target_hue_low;
 input wire [7:0] target_hue_high;
 output reg [10:0] comX;
 output reg [9:0] comY;
 input wire [10:0] minX;
 input wire [9:0] minY;
 output reg used;
// reg [1024*768] neighbors;
// reg [1024] last_scan_line;

 reg [10:0] xDelayLine [OLD_POINTS:0];
 reg [9:0] yDelayLine [OLD_POINTS:0];
 output wire [10:0] comXOld0;
 output wire [9:0] comYOld0;
 output wire [10:0] comXOld1;
 output wire [9:0] comYOld1;
 output wire [10:0] comXOld2;
 output wire [9:0] comYOld2;
 output wire [10:0] comXOld3;
 output wire [9:0] comYOld3;
 output wire [10:0] comXOld4;
 output wire [9:0] comYOld4;

 // 28 bits for x and y accumulators because 28 = ceil(log2(1024*768*2^8))
 wire [27:0] center_of_mass_div_x;
 wire [27:0] center_of_mass_div_y;
 reg [27:0] H_sum_x;
 reg [27:0] H_sum_y;
 // appropriate for x in range [0, 1024] and y in range [0, 768]
 wire [10:0] center_of_mass_x;
 wire [9:0] center_of_mass_y;
 // pixel count accumulator is 21 bits = ceil(log2(1024*768))
 reg [20:0] used_pixel_count;
 reg [9:0] prev_detected;
 reg [20:0] prev_detected_count;
 reg [20:0] frameCount;
 // OLD_POINTS = 3
 // [0 1 2 3]
 // ^ frameCount
 // [0 1 2 3]
 // ^ frameCount
 //
 assign comXOld0 = xDelayLine[(frameCount + OLD_POINTS) % (OLD_POINTS + 1)];
 assign comYOld0 = yDelayLine[(frameCount + OLD_POINTS) % (OLD_POINTS + 1)];
 assign comXOld1 = xDelayLine[(frameCount + 12) % (OLD_POINTS + 1)];
 assign comYOld1 = yDelayLine[(frameCount + 12) % (OLD_POINTS + 1)];
 assign comXOld2 = xDelayLine[(frameCount + 9) % (OLD_POINTS + 1)];
 assign comYOld2 = yDelayLine[(frameCount + 9) % (OLD_POINTS + 1)];
 assign comXOld3 = xDelayLine[(frameCount + 6) % (OLD_POINTS + 1)];
 assign comYOld3 = yDelayLine[(frameCount + 6) % (OLD_POINTS + 1)];

 assign comXOld4 = xDelayLine[(frameCount + 3) % (OLD_POINTS + 1)];
 assign comYOld4 = yDelayLine[(frameCount + 3) % (OLD_POINTS + 1)];

 always @(posedge clk) begin
 // nearest neighbor stuff

 if (reset) begin // do initialization
 used_pixel_count <= 0;
 H_sum_x <= 0;
 H_sum_y <= 0;
 comX <= 0;
 comY <= 0;
 frameCount <= 0;
 end
 else if (x == 0 && y == 0) begin // next frame, latch output
 if (frameCount == 0)
 frameCount <= OLD_POINTS - 1;
 else
 frameCount <= frameCount - 1;
 xDelayLine[frameCount] <= comX;
 yDelayLine[frameCount] <= comY;
 if (extrapolate) begin
 comX <= ((center_of_mass_x - minX) << 1); //* 2;
 comY <= ((center_of_mass_y - minY) << 1); //* 2;
 end
 else begin
 comX <= ((center_of_mass_x));
 comY <= ((center_of_mass_y));
 end
 used_pixel_count <= 0;
 H_sum_x <= 0;
 H_sum_y <= 0;
 end
 else if (inframe && detected) begin // ok b/c pixel is sync'd with clk
 if (prev_detected[9:0] == 10'b1111111111) begin
 used_pixel_count <= used_pixel_count + 1;
 H_sum_x <= H_sum_x + x;
 H_sum_y <= H_sum_y + y;
 used <= 1;
 end
 else begin
 used <= 0;
 end
 prev_detected = {prev_detected[8:0], detected};
 end
 end // always @ (posedge clk)
 wire rfdA;
 wire rfdB;

 div mydivX(.dividend(H_sum_x), .divisor(used_pixel_count),
 .quot(center_of_mass_div_x), .clk(clk), .rfd(rfdA));
 div mydivY(.dividend(H_sum_y), .divisor(used_pixel_count),
 .quot(center_of_mass_div_y), .clk(clk), .rfd(rfdB));
 assign center_of_mass_x = rfdA ? center_of_mass_div_x[10:0] : center_of_mass_x;
 assign center_of_mass_y = rfdB ? center_of_mass_div_y[9:0] : center_of_mass_y;

endmodule // CenterOfMass
