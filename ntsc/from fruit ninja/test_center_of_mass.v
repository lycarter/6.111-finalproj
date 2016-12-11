// test_center_of_mass.v
// 6.111 final project
// By Isaac Evans, ine@mit.edu
//Testbench for center of mass module
module test_center_of_mass;
 // Inputs
 reg clk;
 reg reset;
 reg [18:0] ntsc_address;
 reg ntsc_we;
 reg [10:0] x;
 reg [9:0] y;
 reg [7:0] H;
 reg [7:0] S;
 reg [7:0] V;
 reg [7:0] target_hue_low;
 reg [7:0] target_hue_high;
 // Outputs
 wire [10:0] comX;
 wire [9:0] comY;
 integer fin, code;

 // Instantiate the Unit Under Test (UUT)
 CenterOfMass uut (
 .clk(clk),
 .reset(reset),
 .ntsc_address(ntsc_address),
 .ntsc_we(ntsc_we),
 .x(x),
 .y(y),
 .H(H),
 .S(S),
 .V(V),
 .target_hue_low(target_hue_low),
 .target_hue_high(target_hue_high),
 .comX(comX),
 .comY(comY)
 );
 initial begin
 fin = $fopen("h.jpg","r");
 if (fin == 0) begin
 $display("can't open file...");
 $stop;
 end

 // Initialize Inputs
 clk = 0;
 reset = 0;
 ntsc_address = 0;
 ntsc_we = 0;
 x = 0;
 y = 0;
 H = 0;
 S = 0;
 V = 0;
 target_hue_low = 3;
 target_hue_high = 15;

 // Wait 100 ns for global reset to finish
 #100;
 reset = 0;
 #10;
 reset = 1;
 #10;
 reset = 0;
 end // initial begin

 always #5 clk = ~clk;

 always @(posedge clk) begin
 code = $fscanf(fin,"%d", H);
 if (code != 1) begin
 $fclose(fin);
 $stop;
 end
 //sat = $fscanf(fin,"%d",x);
 //val = $fscanf(fin,"%d",x);
 ntsc_address <= ntsc_address + 1;
 ntsc_we = 1;
 if (x == 1024) begin
 x <= 0;
 y <= y + 1;
 end
 else if (y == 768) begin
 $stop;
 end
 else begin
 x <= x + 1;
 end

 /*
 if (cycle == 6'd63) begin
 // assert ready next cycle, read next sample from file
 ready <= 1;
 code = $fscanf(fin,"%d",x);
 // if we reach the end of the input file, we're done
 if (code != 1) begin
 $fclose(fout);
 $stop;
 end
 end
 else begin
 ready <= 0;
 end
 if (ready) begin
 // starting with sample 32, record results in output file
 if (scount > 31) $fdisplay(fout,"%d",y);
 scount <= scount + 1;
 end
 cycle <= cycle+1;
 */
 end

endmodule