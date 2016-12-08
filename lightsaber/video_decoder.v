//
// File:   video_decoder.v
// Date:   31-Oct-05
// Author: J. Castro (MIT 6.111, fall 2005)
//
// This file contains the ntsc_decode and adv7185init modules
//
// These modules are used to grab input NTSC video data from the RCA
// phono jack on the right hand side of the 6.111 labkit (connect
// the camera to the LOWER jack).
//

/////////////////////////////////////////////////////////////////////////////
//
// NTSC decode - 16-bit CCIR656 decoder
// By Javier Castro
// This module takes a stream of LLC data from the adv7185
// NTSC/PAL video decoder and generates the corresponding pixels,
// that are encoded within the stream, in YCrCb format.

// Make sure that the adv7185 is set to run in 16-bit LLC2 mode.

module ntsc_decode(clk, reset, tv_in_ycrcb, ycrcb, f, v, h, data_valid);
   
   // clk - line-locked clock (in this case, LLC1 which runs at 27Mhz)
   // reset - system reset
   // tv_in_ycrcb - 10-bit input from chip. should map to pins [19:10]
   // ycrcb - 24 bit luminance and chrominance (8 bits each)
   // f - field: 1 indicates an even field, 0 an odd field
   // v - vertical sync: 1 means vertical sync
   // h - horizontal sync: 1 means horizontal sync
   
   input clk;
   input reset;
   input [9:0] tv_in_ycrcb; // modified for 10 bit input - should be P[19:10]
   output [29:0] ycrcb;
   output 	f;
   output 	v;
   output 	h;
   output 	data_valid;
   // output [4:0] state;

   parameter 	SYNC_1 = 0;
   parameter 	SYNC_2 = 1;
   parameter 	SYNC_3 = 2;
   parameter 	SAV_f1_cb0 = 3;
   parameter 	SAV_f1_y0 = 4;
   parameter 	SAV_f1_cr1 = 5;
   parameter 	SAV_f1_y1 = 6;
   parameter 	EAV_f1 = 7;
   parameter 	SAV_VBI_f1 = 8;
   parameter 	EAV_VBI_f1 = 9;
   parameter 	SAV_f2_cb0 = 10;
   parameter 	SAV_f2_y0 = 11;
   parameter 	SAV_f2_cr1 = 12;
   parameter 	SAV_f2_y1 = 13;
   parameter 	EAV_f2 = 14;
   parameter 	SAV_VBI_f2 = 15;
   parameter 	EAV_VBI_f2 = 16;

   
   
   
   // In the start state, the module doesn't know where
   // in the sequence of pixels, it is looking.

   // Once we determine where to start, the FSM goes through a normal
   // sequence of SAV process_YCrCb EAV... repeat

   // The data stream looks as follows
   // SAV_FF | SAV_00 | SAV_00 | SAV_XY | Cb0 | Y0 | Cr1 | Y1 | Cb2 | Y2 | ... | EAV sequence
   // There are two things we need to do:
   //   1. Find the two SAV blocks (stands for Start Active Video perhaps?)
   //   2. Decode the subsequent data

   reg [4:0] 	current_state = 5'h00;
   reg [9:0] 	y = 10'h000;  // luminance
   reg [9:0] 	cr = 10'h000; // chrominance
   reg [9:0] 	cb = 10'h000; // more chrominance
   
   assign 	state = current_state;
   
   always @ (posedge clk) begin
    	if (reset)
    	  begin

    	  end
    	else
	  begin
	     // these states don't do much except allow us to know where we are in the stream.
	     // whenever the synchronization code is seen, go back to the sync_state before
	     // transitioning to the new state
	     case (current_state)
	       SYNC_1: current_state <= (tv_in_ycrcb == 10'h000) ? SYNC_2 : SYNC_1;
	       SYNC_2: current_state <= (tv_in_ycrcb == 10'h000) ? SYNC_3 : SYNC_1;
	       SYNC_3: current_state <= (tv_in_ycrcb == 10'h200) ? SAV_f1_cb0 :
					(tv_in_ycrcb == 10'h274) ? EAV_f1 :
					(tv_in_ycrcb == 10'h2ac) ? SAV_VBI_f1 :
					(tv_in_ycrcb == 10'h2d8) ? EAV_VBI_f1 :
					(tv_in_ycrcb == 10'h31c) ? SAV_f2_cb0 :
					(tv_in_ycrcb == 10'h368) ? EAV_f2 :
					(tv_in_ycrcb == 10'h3b0) ? SAV_VBI_f2 :
					(tv_in_ycrcb == 10'h3c4) ? EAV_VBI_f2 : SYNC_1;
	       
	       SAV_f1_cb0: current_state <= (tv_in_ycrcb == 10'h3ff) ? SYNC_1 : SAV_f1_y0;
	       SAV_f1_y0: current_state <= (tv_in_ycrcb == 10'h3ff) ? SYNC_1 : SAV_f1_cr1;
	       SAV_f1_cr1: current_state <= (tv_in_ycrcb == 10'h3ff) ? SYNC_1 : SAV_f1_y1;
	       SAV_f1_y1: current_state <= (tv_in_ycrcb == 10'h3ff) ? SYNC_1 : SAV_f1_cb0;

	       SAV_f2_cb0: current_state <= (tv_in_ycrcb == 10'h3ff) ? SYNC_1 : SAV_f2_y0;
	       SAV_f2_y0: current_state <= (tv_in_ycrcb == 10'h3ff) ? SYNC_1 : SAV_f2_cr1;
	       SAV_f2_cr1: current_state <= (tv_in_ycrcb == 10'h3ff) ? SYNC_1 : SAV_f2_y1;
	       SAV_f2_y1: current_state <= (tv_in_ycrcb == 10'h3ff) ? SYNC_1 : SAV_f2_cb0;

	       // These states are here in the event that we want to cover these signals
	       // in the future. For now, they just send the state machine back to SYNC_1
	       EAV_f1: current_state <= SYNC_1;
	       SAV_VBI_f1: current_state <= SYNC_1;
	       EAV_VBI_f1: current_state <= SYNC_1;
	       EAV_f2: current_state <= SYNC_1;
	       SAV_VBI_f2: current_state <= SYNC_1;
	       EAV_VBI_f2: current_state <= SYNC_1;

	     endcase
	  end
     end // always @ (posedge clk)

   // implement our decoding mechanism

   wire y_enable;
   wire cr_enable;
   wire cb_enable;

   // if y is coming in, enable the register
   // likewise for cr and cb
   assign y_enable = (current_state == SAV_f1_y0) || 
	             (current_state == SAV_f1_y1) ||
	             (current_state == SAV_f2_y0) || 
	             (current_state == SAV_f2_y1);
   assign cr_enable = (current_state == SAV_f1_cr1) ||
	              (current_state == SAV_f2_cr1);
   assign cb_enable = (current_state == SAV_f1_cb0) ||
	              (current_state == SAV_f2_cb0);

   // f, v, and h only go high when active
   assign {v,h} = (current_state == SYNC_3) ? tv_in_ycrcb[7:6] : 2'b00;

   // data is valid when we have all three values: y, cr, cb
   assign data_valid = y_enable;
   assign ycrcb = {y,cr,cb};

   reg 	  f = 0;
   
   always @ (posedge clk)
     begin
	y <= y_enable ? tv_in_ycrcb : y;
	cr <= cr_enable ? tv_in_ycrcb : cr;
	cb <= cb_enable ? tv_in_ycrcb : cb;
	f <= (current_state == SYNC_3) ? tv_in_ycrcb[8] : f;
     end
   
endmodule