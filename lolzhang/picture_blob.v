////////////////////////////////////////////////////
//  
//   picture_blob: display a picture
//  
//////////////////////////////////////////////////
module picture_blob #(parameter WIDTH = 100,    // default picture width
								 HEIGHT =77)     // default picture height
     (input clock, 
       input [10:0] x,hcount, 
       input [9:0] y,vcount, 
	   input display,
       output reg [23:0] pixel,
	   output reg occupied
	 ); 
     
	wire [12:0] image_addr;   // num of bits for ROM
	wire [7:0] image_bits, red_mapped, green_mapped, blue_mapped; 
    
	// note the one clock cycle delay in pixel!
    always @ (posedge clock) begin
		if ((hcount >= x && hcount < (x+WIDTH)) && (vcount >= y && vcount < (y+HEIGHT)) && display) begin
			pixel <= {red_mapped, green_mapped, blue_mapped};  
			occupied <= 1;
		end
		else begin
			pixel <= 0;
			occupied <= 0;
		end
    end   
    
	// calculate rom address and read the location
    //assign image_addr = (hcount-x) + (vcount-y) * WIDTH;
    assign image_addr = (vcount-y) + (hcount-x) * HEIGHT;
    labkit_image labkitrom(clock, image_addr, image_bits); 
	
    // use color map to create 8bits R, 8bits G, 8 bits B;
    labkit_image_red rcm (clock, image_bits, red_mapped);  
    labkit_image_green gcm (clock, image_bits, green_mapped);  
    labkit_image_blue bcm (clock, image_bits, blue_mapped);  
	
endmodule