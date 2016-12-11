////////////////////////////////////////////////////////////////////////////////
//
// gameplay
//
////////////////////////////////////////////////////////////////////////////////

module gameplay (
   input vclock,				// 65MHz clock
   input reset,				// 1 to initialize module
   input up,					// 1 when blade should move up
   input down,  				// 1 when blade should move down
   input left,					// 1 when blade should move left
   input right,  				// 1 when blade should move right
   input button,				// 1 when blade button is pressed
   input [1:0] switch,		// level switch 
   input [23:0] background,	// background pixel color
   input [10:0] hcount,		// horizontal index of current pixel (0..1023)
   input [9:0] vcount, 		// vertical index of current pixel (0..767)
   input hsync,				// XVGA horizontal sync signal (active low)
   input vsync,				// XVGA vertical sync signal (active low)
   input blank,				// XVGA blanking (1 means output black pixel)

   output reg phsync,			// horizontal sync
   output reg pvsync,			// vertical sync
   output reg pblank,			// blanking
   output [23:0] pixel,		// pixel: r=23:16, g=15:8, b=7:0
   output [5:0] countdown,	// timer countdown
   output reg [7:0] score		// score
   );
   
   
   
    // 1Hz clock
    reg one_sec_start;
    wire one_sec;
    one_hz ones(.clock_65mhz(vclock), .start(one_sec_start), .one_hz_enable(one_sec));
	
	// countdown timer
    reg [5:0] time_exp_parameter = 30;
    wire time_exp;
    timer timeexp(.clock(vclock), .time_parameter(time_exp_parameter), 
					.start(one_sec_start), .one_hz_enable(one_sec), .countdown(countdown), .time_expired(time_exp));

    // screen parameters
	parameter [10:0] X_PIXELS = 1023;
	parameter [10:0] X_MIDDLE = 480;
	parameter [10:0] Y_PIXELS = 767;
	parameter [10:0] Y_MIDDLE = 280;
	
	// blade parameters	
	parameter [4:0] BLADE_SPEED = 4;
	
	// blade properties
	reg [10:0] blade_x = X_MIDDLE;
	reg [9:0] blade_y = Y_MIDDLE;
	reg previous_button;
	reg [2:0] blade_state;
	reg [23:0] blade_color; 
	
	// sprite location
	reg new;
	reg offset;
	wire [10:0] sprite_x;
	random_number sx(.clock(vclock),.new(new),.reset(reset),.seed(43),.offset(offset),.data(sprite_x));
	wire [9:0] sprite_y;
	random_number sy(.clock(vclock),.new(new),.reset(reset),.seed(29),.offset(0),.data(sprite_y));
	reg sprite_display = 1;
	reg labkit_display = 1;
	
	// blade pixel
	wire [23:0] blade_pixel;
	wire blade_occupied;
	// sprite pixel
	wire [23:0] sprite_pixel;
	wire sprite_occupied;
	// labkit pixel
	wire [23:0] labkit_pixel;
	wire labkit_occupied;
	// hit pixel
	wire [23:0] hitme_pixel;
	wire hitme_occupied;
	assign hitme_pixel = sprite_pixel | labkit_pixel;
	assign hitme_occupied = sprite_occupied || labkit_occupied;
	
	
	
	// blade hits sprite
	reg overlap = 0;
	
	always @(posedge vclock) begin
	phsync <= hsync;
	pvsync <= vsync;
	pblank <= blank;
	blade_state <= button && !previous_button ? (blade_state != 3 ? blade_state+1 : 0) : blade_state;
	case(blade_state)
		0: blade_color <= 24'hFF_FF_FF;
		1: blade_color <= 24'h00_FF_FF;
		2: blade_color <= 24'hFF_00_FF;
		3: blade_color <= 24'h00_FF_00;
	endcase
	previous_button <= button;
	
	
	case(switch)
		0: begin sprite_display <= !time_exp ? 1 : 0; labkit_display <= 0; end
		1: begin sprite_display <= 0; labkit_display <= !time_exp ? 1 : 0; end
		default: begin sprite_display <= !time_exp ? 1 : 0; labkit_display <= 0; end
	endcase

	// changes sprite position every second, really hard idk if want to keep??	
	if (switch == 2'b01 && one_sec && !time_exp) begin
		new <= 1;
		offset <= !offset;
	end
	
	
	else if (vcount == 800 && hcount == 1030) begin // this syncs vclock to vsync using a pixel that is off screen

		// reset game 
		if (reset) begin
			blade_x <= X_MIDDLE;
			blade_y <= Y_MIDDLE;
			score <= 0;
			one_sec_start <= 1;
			new <= 1;
			sprite_display <= switch != 2'b01 ? 1 : 0;
			labkit_display <= switch == 2'b01 ? 1 : 0;
		end
		
		else begin
			one_sec_start <= 0;
			
			// blade hits sprite
			if (overlap) begin
				score <= score + 1;
				new <= 1;
				offset <= !offset;
				overlap <= 0;
			end
			
			else begin
				new <= 0;
				// time expires
				if (time_exp) begin
					sprite_display <= 0;
					labkit_display <= 0;
				end
				
				// control position of handle top
				if (up) begin
					blade_y <= blade_y - BLADE_SPEED;
				end
				if (down) begin
					blade_y <= blade_y + BLADE_SPEED;
				end
				if (left) begin
					blade_x <= blade_x - BLADE_SPEED;
				end
				if (right) begin
					blade_x <= blade_x + BLADE_SPEED;
				end
			end
		end
	end
	
	else begin
		new <= 0;
		// see if blade has hit sprite
		if (hitme_occupied && blade_occupied) begin
			overlap <= 1;
		end
	end
	
	end	
	
	
	blade_block bladelol(.clock(vclock),
					.handle_top_x(blade_x),.handle_bottom_x(480),.hcount(hcount),
					.handle_top_y(blade_y),.handle_bottom_y(480),.vcount(vcount),
					//.handle_top_z(0),.handle_bottom_z(0),
					.on(blade_state != 0), .color(blade_color), .background(background),
					.pixel(blade_pixel), .occupied(blade_occupied));
					
	
	sprite #(.COLOR(24'hFF_00_FF))
		spritelol(.clock(vclock),
					.x(sprite_x), .hcount(hcount), 
					.y(sprite_y), .vcount(vcount),
					.display(sprite_display), .background(background),
					.pixel(sprite_pixel), .occupied(sprite_occupied));
	
	picture_blob blob(.clock(vclock), 
						.x(sprite_x), .hcount(hcount), 
						.y(sprite_y), .vcount(vcount), 
						.display(labkit_display),
						.pixel(labkit_pixel), .occupied(labkit_occupied));
	
					 
	assign pixel = hitme_occupied ? hitme_pixel : blade_pixel;
     
endmodule
