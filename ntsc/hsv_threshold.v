// hsv_threshold.v
// 6.111 Final Project (Lightsaber Training)

// OLD_POINTS determines how many points to use for the FIR filter
module hsv_threshhold #(parameter OLD_POINTS = 3)(
	clock,reset,detected,x,y,x_out,y_out);
	input wire clock;
	input wire reset;
	input wire detected;
	input wire [10:0] x;
	input wire [9:0] y;
	output wire [10:0] x_out;
	output wire [10:0] y_out;

	reg [10:0] x_history[OLD_POINTS-1:0];
	reg [9:0] y_history[OLD_POINTS-1:0];
	reg [10:0] output_reg_x;
	reg [9:0] output_reg_y;

	wire [27:0] x_div;
	wire [27:0] y_div;
	wire [19:0] x_remainder,y_remainder;
	wire x_rfd,y_rfd;

	// 28 bits = ceil(log2(1024*768*2^8))
	wire [27:0] x_sum;
	wire [27:0] y_sum;
	// 20 bits = ceil(log2(1024*768))
	wire [19:0] pixel_count;

	always @(posedge clock) begin
		if (reset) begin // initialization
			x_sum <= 0;
			y_sum <= 0;
		end
		else if (x == 0 && y == 0) begin // start of frame, set outputs
			x_history <= {x_history[2:1], x_div};
			y_history <= {y_history[2:1], y_div};
			// FIR FILTER
			output_reg_x <= (x_history[2] + x_history[1]*2 + x_history[0]*5)/8;
			output_reg_y <= (y_history[2] + y_history[1]*2 + y_history[0]*5)/8;
		end
		else if (detected) begin
			pixel_count <= pixel_count + 1;
			x_sum <= x_sum + x;
			y_sum <= y_sum + y;
		end
	end

	pixel_divider xdiv(
		.clk(clock),
		.dividend(x_sum),
		.divisor(pixel_count),
		.quotient(x_div),
		.fractional(x_remainder),
		.rfd(x_rfd));
	pixel_divider ydiv(
		.clk(clock),
		.dividend(y_sum),
		.divisor(pixel_count),
		.quotient(y_div),
		.fractional(y_remainder),
		.rfd(y_rfd));

	assign x_out = output_reg_x;
	assign y_out = output_reg_y;