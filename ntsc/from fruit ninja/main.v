 wire [10:0] com_x;
 wire [9:0] com_y;
 wire [10:0] com_x_old0;
 wire [9:0] com_y_old0;
 wire [10:0] com_x_old1;
 wire [9:0] com_y_old1;
 wire [10:0] com_x_old2;
 wire [9:0] com_y_old2;
 wire [10:0] com_x_old3;
 wire [9:0] com_y_old3;
 wire [10:0] com_x_old4;
 wire [9:0] com_y_old4;
 wire [7:0] hue;
 wire [7:0] saturation;
 wire [7:0] value;
 wire [7:0] isaac_vga_red;
 wire [7:0] isaac_vga_green;
 wire [7:0] isaac_vga_blue;
 wire [7:0] vr_vga_red;
 wire [7:0] vr_vga_green;
 wire [7:0] vr_vga_blue;
 // select output pixel data
 // wire [17:0] delay_pixel;
 //delay the hcount and vcount by 22 clock cycles to match the rgb2hsv delay
 // delayN #(.NDELAY(30),.SIZE(18)) delayx(.clk(clk), .in(pixel), .out(delay_pixel));
 // delayN #(.NDELAY(22),.SIZE(10)) delayy(.clk(clk), .in(vcount), .out(vcount_filter));

 // select output pixel data
 assign isaac_vga_red = {pixel[17:12], 2'd1};
 assign isaac_vga_green = {pixel[11:6], 2'd1};
 assign isaac_vga_blue = {pixel[5:0], 2'd1};
 assign vr_vga_red = {vr_pixel[17:12], 2'd1};
 assign vr_vga_green = {vr_pixel[11:6], 2'd1};
 assign vr_vga_blue = {vr_pixel[5:0], 2'd1};

 wire inframe;
 // was 523 for vcount
 //assign inframe = (hcount >= 80 && hcount <= 719 && vcount >= 76 && vcount <= 565) ||
switch[2];
 //assign inframe = (hcount <= 880 && hcount >= 195 && vcount >= 126 && vcount <= 605) ||
switch[2];
 assign inframe = (hcount <= 880 && hcount >= 200 && vcount >= 126 && vcount <= 605) ||
switch[2];
 wire detected;

 //assign detected = (hue < 8 || hue > 248) && (saturation > 125) && (value > 120);
 //assign detected = (hue < 2 || hue > 253) && (saturation > 130) && (value > 100);
// assign detected = switch[7] ? (hue < 8 || hue > 248) && (saturation > 125) && (value >
switch[7:0]) : (hue < 8 || hue > 248) && (saturation > switch[7:0]) && (value > 100);

 reg [7:0] hue_thresh_high;
 reg [7:0] hue_thresh_low;
 reg [7:0] sat_thresh;
 reg [7:0] val_thresh;
 assign detected = (hue < hue_thresh_low || hue > hue_thresh_high) && (saturation >
sat_thresh) && (value > val_thresh);

 wire used;
 // if you see lines running down the image, restart the FPGA dev kit
 // completely and the camera
 CenterOfMass com1 (.inframe(inframe), .clk(clk), .reset(reset),
 .x(hcount), .y(vcount), .H(hue),
 .S(saturation), .V(value), .target_hue_low(7'b0),
 .target_hue_high(switch[7:0]), .comX(com_x),
 .comY(com_y), .detected(detected), .used(used),
 .comXOld0(com_x_old0), .comYOld0(com_y_old0),
 .comXOld1(com_x_old1), .comYOld1(com_y_old1),
 .comXOld2(com_x_old2), .comYOld2(com_y_old2),
 .comXOld3(com_x_old3), .comYOld3(com_y_old3),
 .comXOld4(com_x_old4), .comYOld4(com_y_old4),
 .minX(11'd245), .minY(10'd176), .extrapolate(switch[4]));
 rgb2hsv
myrgb2hsv(.clock(clk), .reset(reset), .r(vr_vga_red), .g(vr_vga_green), .b(vr_vga_blue), .h(hue), .
s(saturation), .v(value));
 wire clock_250_clock;
 five_time_divider ftd(clk, reset, clock_250_clock);
 initial begin
 hue_thresh_low <= 8'h09;
 hue_thresh_high <= 8'hec;
 sat_thresh <= 8'hb7;
 val_thresh <= 8'h22;
 val_thresh <= 8'h22;
 end

 always @(posedge clock_250_clock) begin
 if (!button3 && !button_left)
 hue_thresh_low <= hue_thresh_low - 1;
 else if (!button3 && !button_right)
 hue_thresh_low <= hue_thresh_low + 1;
 else if (!button2 && !button_left)
 hue_thresh_high <= hue_thresh_high - 1;
 else if (!button2 && !button_right)
 hue_thresh_high <= hue_thresh_high + 1;
 else if (!button1 && !button_left)
 sat_thresh <= sat_thresh - 1;
 else if (!button1 && !button_right)
 sat_thresh <= sat_thresh + 1;
 else if (!button0 && !button_left)
 val_thresh <= val_thresh - 1;
 else if (!button0 && !button_right)
 val_thresh <= val_thresh + 1;
 end
 always @(posedge clk) begin
 // need to fix 22 pixel offset
 if (switch[0] && (hcount == (com_x - 22) || vcount == (com_y )))
 pixel <= 18'b111111111111111111; // white
 else if (switch[0] &&
 ((hcount == (com_x_old0 - 22) && vcount == (com_y_old0 )) ||
 (hcount == (com_x_old1 - 22) && vcount == (com_y_old1 )) ||
 (hcount == (com_x_old2 - 22) && vcount == (com_y_old2 )) ||
 (hcount == (com_x_old3 - 22) && vcount == (com_y_old3 )) ||
 (hcount == (com_x_old4 - 22) && vcount == (com_y_old4 ))))
 pixel <= 18'b111111111111111111; // white
 else if (switch[0] && (hcount == (com_x_old0 - 22) || vcount == (com_y_old0 )))
 pixel <= 18'b011111011111011111; // gray
 // else if (!button_left && (hue <= switch[7:0]) && inframe)
 // pixel <= 18'b000000111111000000; // solid green
 // else if (!button_right && (hue >= switch[7:0]) && inframe)
 // pixel <= 18'b000000111111000000; // solid green
 else if (switch[1] && detected && inframe) //origsat 120
 pixel <= used ? 18'b111111000000000000 : 18'b000000111111000000;
 else if (inframe)
 pixel <= vr_pixel;
 else
 pixel <= 18'b000000000000000000; // solid black
 b <= blank;
 hs <= hsync;
 vs <= vsync;
 end

 // VGA Output. In order to meet the setup and hold times of the
 // AD7125, we send it ~clk.
 // these three lines: modification for b&w -> color
 // assign vga_out_red = vga_red;
 // assign vga_out_green = vga_green;
 // assign vga_out_blue = vga_blue;
 assign vga_out_sync_b = 1'b1; // not used
 assign vga_out_pixel_clock = ~clk;
 assign vga_out_blank_b = ~b;
 assign vga_out_hsync = hs;
 assign vga_out_vsync = vs;
 // debugging

 //assign led = ~{vram_addr[18:13],reset,1};
 //assign led = {com_x, com
 always @(posedge clk)
 // dispdata <= {vram_read_data,9'b0,vram_addr};
 //dispdata <= {ntsc_data,9'b0,ntsc_addr};
 //dispdata <= {12'b0,switch[7:0],1'b0,com_x,2'b0,com_y};
 //dispdata <= {12'b0,switch[7:0],1'b0,com_x,2'b0,com_y};
 dispdata <= {12'b0,hue_thresh_low,hue_thresh_high,sat_thresh,val_thresh};
 ////////////////////////NATHAN
 /////////////////////////////////////////////////////////////////////////////////
 wire [7:0] from_ac97_data, to_ac97_data;
 wire ready;
 // allow user to adjust volume
 wire vup,vdown;
 reg old_vup,old_vdown;
 debounce bup(.reset(reset),.clk(clock_27mhz),.noisy(~button_up),.clean(vup));
 debounce bdown(.reset(reset),.clk(clock_27mhz),.noisy(~button_down),.clean(vdown));
 reg [4:0] volume;
 always @ (posedge clock_27mhz) begin
 if (reset) volume <= 5'd22;
 else begin
 if (vup & ~old_vup & volume != 5'd31) volume <= volume+1;
 if (vdown & ~old_vdown & volume != 5'd0) volume <= volume-1;
 end
 old_vup <= vup;
 old_vdown <= vdown;
 end
 wire myreset;
 wire myresetinv;
 assign myreset = ~myresetinv;
 // AC97 driver
 wire [5:0] cut;
 wire [2:0] lives;
 wire [3:0] level;
 wire [2:0] linemaker; //generates cuts from buttons
 //wire [10:0] hcount;
 //wire [9:0] vcount;
 //wire hsync,vsync,blank;
 wire gameon;
 wire [8:0] score;
 wire [9:0] sp0x; //sprite X positions
 wire [9:0] sp1x;
 wire [9:0] sp2x;
 wire [9:0] sp3x;
 wire [9:0] sp4x;
 wire [9:0] sp5x;
 wire [9:0] sp0y; //sprite Y positions
 wire [9:0] sp1y;
 wire [9:0] sp2y;
 wire [9:0] sp3y;
 wire [9:0] sp4y;
 wire [9:0] sp5y;

 wire [9:0] mysp0x; //used for start screen generation
 wire [9:0] mysp1x;
 wire [9:0] mysp0y;
 wire [9:0] mysp1y;
 wire [1:0] myspon;
 wire [1:0] mysponsync;

 wire [23:0] livespixel, levelpixel, scorepixel;

 wire [5:0] spon; //sprites on
 wire [9:0] rando; //Random number GENERATE THIS
 wire [5:0] sponsync;
 wire [1:0] bombcut;
 wire [9:0] bomb0y;
 wire [9:0] bomb1y;
 wire [9:0] bomb0x;
 wire [9:0] bomb1x;
 wire [1:0] bombon;
 wire [1:0] bombonsync;
 // output useful things to the logic analyzer connectors
 // assign analyzer1_clock = ac97_bit_clock;
 // assign analyzer1_data[0] = audio_reset_b;
 // assign analyzer1_data[1] = ac97_sdata_out;
 // assign analyzer1_data[2] = ac97_sdata_in;
 // assign analyzer1_data[3] = ac97_synch;
 // assign analyzer1_data[15:4] = 0;
 //assign led = {8'd0};
 // assign analyzer3_clock = ready;
 // assign analyzer3_data = {from_ac97_data, to_ac97_data};

 /* wire clock_65mhz_unbuf,clock_65mhz;
 DCM vclk1(.CLKIN(clock_27mhz),.CLKFX(clock_65mhz_unbuf));
 // synthesis attribute CLKFX_DIVIDE of vclk1 is 10
 // synthesis attribute CLKFX_MULTIPLY of vclk1 is 24
 // synthesis attribute CLK_FEEDBACK of vclk1 is NONE
 // synthesis attribute CLKIN_PERIOD of vclk1 is 37
 BUFG vclk2(.O(clock_65mhz),.I(clock_65mhz_unbuf));
 */
 // reg [23:0] rgb;
 // reg b,hs,vs;
 reg [23:0] nathanpixelreg;
 wire [23:0] nathanpixel1, nathanpixel2, splashpixel;
 wire phsync,pvsync,pblank;
 always @(posedge clock_65mhz) begin
 nathanpixelreg <= nathanpixel1 | nathanpixel2;
 // hs <= phsync;
 // vs <= pvsync;
 // b <= pblank;
 end
 //start screen logic
 assign myspon[0] = (!(|level)) ? 1'b1 : spon[0]; //force proper signals for start screen
 assign myspon[1] = (!(|level)) ? 1'b1 : spon[1];
 assign mysp0x = (!(|level)) ? 10'd300 : sp0x;
 assign mysp0y = (!(|level)) ? 10'd500 : sp0y;
 assign mysp1x = (!(|level)) ? 10'd700 : sp1x;
 assign mysp1y = (!(|level)) ? 10'd500 : sp1y;
 assign mysponsync[0] = (!(|level)) ? 1'b1 : sponsync[0];
 assign mysponsync[1] = (!(|level)) ? 1'b1 : sponsync[1];

 //
 /*
 assign vga_out_red = rgb[23:16];
 assign vga_out_green = rgb[15:8];
 assign vga_out_blue = rgb[7:0];
 assign vga_out_sync_b = 1'b1; // not used
 assign vga_out_blank_b = ~b;
 assign vga_out_pixel_clock = ~clock_65mhz;
 assign vga_out_hsync = hs;
 assign vga_out_vsync = vs;
 */
 //assign led = {~(score[7:0])};
 assign led = 8'b11111010;
 // ~rando[7:0];
 assign user1= {31'hZ, ready};
 //isaac_vga_red
 assign vga_out_red = (|(nathanpixelreg[23:16]) ? nathanpixelreg[23:16] : (isaac_vga_red &
splashpixel[23:16])) | (livespixel[23:16] | levelpixel[23:16] | scorepixel[23:16]) ;
 assign vga_out_green = (|(nathanpixelreg[15:8]) ? nathanpixelreg[15:8] : (isaac_vga_green &
splashpixel[15:8])) | (livespixel[15:8] | levelpixel[15:8] | scorepixel[15:8]) ;
 assign vga_out_blue = (|(nathanpixelreg[7:0]) ? nathanpixelreg[7:0] : (isaac_vga_blue &
splashpixel[7:0])) | (livespixel[7:0] | levelpixel[7:0] | scorepixel[7:0]) ;
 debounce b1(.reset(myreset),.clk(clock_27mhz),.noisy(button0),.clean(linemaker[0]));
 debounce b2(.reset(myreset),.clk(clock_27mhz),.noisy(button1),.clean(linemaker[1]));
 debounce b3(.reset(myreset),.clk(clock_27mhz),.noisy(button2),.clean(linemaker[2]));
 debounce bent(.reset(myreset),.clk(clock_27mhz),.noisy(button_enter),.clean(myresetinv));
 game_audio
sound(.clock(clock_27mhz),.reset(myreset), .ready(ready), .cut(cut), .bombcut(bombcut), .lives(li
ves), .level(level), .score(score), .to_ac97_data(to_ac97_data));
 lab5audio a(clock_27mhz, myreset, volume, from_ac97_data, to_ac97_data, ready,
 audio_reset_b, ac97_sdata_out, ac97_sdata_in,
 ac97_synch, ac97_bit_clock);
 //xvga xvga1(.vclock(clock_65mhz),.hcount(hcount),.vcount(vcount),
 // .hsync(hsync),.vsync(vsync),.blank(blank));

/* game_video pg(.vclock(clock_65mhz),.reset(myreset),
 .hcount(hcount),.vcount(vcount),
 .hsync(hsync),.vsync(vsync),.blank(blank),
 .sp0x(mysp0x), .sp1x(mysp1x), .sp2x(sp2x), .sp3x(sp3x), .sp4x(sp4x), .sp5x(sp5x),

.sp0y(mysp0y), .sp1y(mysp1y), .sp2y(sp2y), .sp3y(sp3y), .sp4y(sp4y), .sp5y(sp5y), .b0x(bomb0x
), .b0y(bomb0y), .b1x(bomb1x), .b1y(bomb1y), .bombon(bombonsync), .spon({sponsync[5:2],
mysponsync}), .comx(com_x), .comy(com_y), .linemaker({~linemaker[2], ~linemaker[1],
~linemaker[0]}),
 .pixel(nathanpixel));
*/
wire [2:0] s0,s1,s2,s3,s4,s5,s6,s7;
wire cheat;
UI_wrapper dw(.clock(clock_27mhz), .reset(myreset),.level(level),.hcount(hcount),
.spon(spon),.rando(rando[3:0]
),.s0(s0), .s1(s1), .s2(s2), .s3(s3), .s4(s4), .s5(s5), .s6(s6), .s7(s7),.cheat(cheat), .cut(cut[1:0]));
sword swd(.pixel_clk(clock_65mhz),.myx(com_x - 22),.hcount(hcount),.y(com_y
),.vcount(vcount),.pixel(nathanpixel2));
lives
liv(.vclock(clock_65mhz),.x(11'd150),.hcount(hcount),.y(10'd675),.vcount(vcount),.lives(lives), .
level(level), .pixel(livespixel));
level
lev(.vclock(clock_65mhz),.x(11'd750),.hcount(hcount),.y(10'd675),.vcount(vcount),.level(level),.
pixel(levelpixel));
score
sco(.vclock(clock_65mhz), .slowclock(clock_27mhz),.x(11'd400),.hcount(hcount),.y(10'd675),.v
count(vcount),.score(score),.pixel(scorepixel),.reset(myreset),.level(level));
splash_screen
spl(.pixel_clk(clock_65mhz), .level(level),.x(11'd262),.hcount(hcount),.y(10'd200),.vcount(vcoun
t),.mypixel(splashpixel));
picture_blob pb(.pixel_clk(clock_65mhz),.cheat(cheat), .level(level),
.x0(mysp0x-32), .x1(mysp1x-32), .x2(sp2x-32), .x3(sp3x-32), .x4(sp4x-32), .x5(sp5x-
32), .bomb0x(bomb0x-32), .bomb1x(bomb1x-32), .hcount(hcount),
.y0(mysp0y-32), .y1(mysp1y-32), .y2(sp2y-32), .y3(sp3y-32), .y4(sp4y-32), .y5(sp5y-
32), .bomb0y(bomb0y-32), .bomb1y(bomb1y-32),
.vcount(vcount), .spon({sponsync[5:2], mysponsync}
), .bombon(bombonsync), .s0(s0), .s1(s1), .s2(s2), .s3(s3), .s4(s4), .s5(s5), .s6(s6), .s7(s7),
.pixel(nathanpixel1), .hsync(hsync), .vsync(vsync), .phsync(phsync), .pvsync(pvsync));
 geto_cut_detector gcd(.clock(clock_27mhz), .reset(myreset),
 .sp0y(mysp0y), .sp1y(mysp1y), .sp2y(sp2y), .sp3y(sp3y), .sp4y(sp4y), .sp5y(sp5y),
 .sp0x(mysp0x), .sp1x(mysp1x), .sp2x(sp2x), .sp3x(sp3x), .sp4x(sp4x), .sp5x(sp5x),
 .b0y(bomb0y), .b1y(bomb1y),
 .b0x(bomb0x), .b1x(bomb1x),
 .spon({spon[5:2], myspon}), .bombon(bombon),
 .cut(cut), .bombcut(bombcut),
 .com_x_old0(com_x_old0 - 22), .com_y_old0(com_y_old0 ),
 .com_x_old1(com_x_old1 - 22), .com_y_old1(com_y_old1 ),
 .com_x_old2(com_x_old2 - 22), .com_y_old2(com_y_old2 ),
 .com_x_old3(com_x_old3 - 22), .com_y_old3(com_y_old3 ),
 .com_x_old4(com_x_old4 - 22), .com_y_old4(com_y_old4 ));

 game_logic
gl(.clock(clock_27mhz), .reset(myreset), .cut(cut), .bombcut(bombcut), .sp0y(sp0y), .sp1y(sp1y),
.sp2y(sp2y), .sp3y(sp3y), .sp4y(sp4y), .sp5y(sp5y), .b0y(bomb0y), .b1y(bomb1y), .spon(spon), .
bombon(bombon), .level(level), .score(score), .lives(lives), .gameon(gameon));
 sprite_logic sl0(.clock(clock_27mhz), .reset(myreset), .vsync(vsync), .on(spon[0]
), .rando(rando), .ypos(sp0y), .xpos(sp0x), .syncstate(sponsync[0]));
 sprite_logic sl1(.clock(clock_27mhz), .reset(myreset), .vsync(vsync), .on(spon[1]
), .rando(rando), .ypos(sp1y), .xpos(sp1x), .syncstate(sponsync[1]));
 sprite_logic sl2(.clock(clock_27mhz), .reset(myreset), .vsync(vsync), .on(spon[2]
), .rando(rando), .ypos(sp2y), .xpos(sp2x), .syncstate(sponsync[2]));
 sprite_logic sl3(.clock(clock_27mhz), .reset(myreset), .vsync(vsync), .on(spon[3]
), .rando(rando), .ypos(sp3y), .xpos(sp3x), .syncstate(sponsync[3]));
 sprite_logic sl4(.clock(clock_27mhz), .reset(myreset), .vsync(vsync), .on(spon[4]
), .rando(rando), .ypos(sp4y), .xpos(sp4x), .syncstate(sponsync[4]));
 sprite_logic sl5(.clock(clock_27mhz), .reset(myreset), .vsync(vsync), .on(spon[5]
), .rando(rando), .ypos(sp5y), .xpos(sp5x), .syncstate(sponsync[5]));
 sprite_logic bomb0(.clock(clock_27mhz), .reset(myreset), .vsync(vsync), .on(bombon[0]
), .rando(rando), .ypos(bomb0y), .xpos(bomb0x), .syncstate(bombonsync[0]));
 sprite_logic bomb1(.clock(clock_27mhz), .reset(myreset), .vsync(vsync), .on(bombon[1]
), .rando(rando), .ypos(bomb1y), .xpos(bomb1x), .syncstate(bombonsync[1]));
 geto_randomizer random(.xpos(com_x), .ypos(com_y), .rando(rando));
endmodule