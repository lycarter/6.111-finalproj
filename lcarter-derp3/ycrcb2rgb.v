////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: K.39
//  \   \         Application: netgen
//  /   /         Filename: ycrcb2rgb.v
// /___/   /\     Timestamp: Sun Dec 11 17:36:29 2016
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -w -sim -ofmt verilog /afs/athena.mit.edu/user/l/c/lcarter/6.111/6.111-finalproj/lcarter-derp3/tmp/_cg/ycrcb2rgb.ngc /afs/athena.mit.edu/user/l/c/lcarter/6.111/6.111-finalproj/lcarter-derp3/tmp/_cg/ycrcb2rgb.v 
// Device	: 2v6000bf957-4
// Input file	: /afs/athena.mit.edu/user/l/c/lcarter/6.111/6.111-finalproj/lcarter-derp3/tmp/_cg/ycrcb2rgb.ngc
// Output file	: /afs/athena.mit.edu/user/l/c/lcarter/6.111/6.111-finalproj/lcarter-derp3/tmp/_cg/ycrcb2rgb.v
// # of Modules	: 1
// Design Name	: ycrcb2rgb
// Xilinx        : /afs/csail.mit.edu/proj/redsocs/Xilinx10.1/ISE
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Development System Reference Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module ycrcb2rgb (
  sclr, ce, h_sync_out, pix_en_out, pix_en_in, clk, v_sync_out, h_sync_in, v_sync_in, cb, cr, b, g, r, y
);
  input sclr;
  input ce;
  output h_sync_out;
  output pix_en_out;
  input pix_en_in;
  input clk;
  output v_sync_out;
  input h_sync_in;
  input v_sync_in;
  input [7 : 0] cb;
  input [7 : 0] cr;
  output [7 : 0] b;
  output [7 : 0] g;
  output [7 : 0] r;
  input [7 : 0] y;
  
  // synthesis translate_off
  
  wire \BU2/Mshreg_pix_en_out_724 ;
  wire \BU2/Mshreg_v_sync_out_723 ;
  wire \BU2/U0/del_Y/Mshreg_shift_register_4_7_722 ;
  wire \BU2/U0/del_Y/Mshreg_shift_register_4_6_721 ;
  wire \BU2/Mshreg_h_sync_out_720 ;
  wire \BU2/U0/del_Y/Mshreg_shift_register_4_4_719 ;
  wire \BU2/U0/del_Y/Mshreg_shift_register_4_3_718 ;
  wire \BU2/U0/del_Y/Mshreg_shift_register_4_5_717 ;
  wire \BU2/U0/del_Y/Mshreg_shift_register_4_1_716 ;
  wire \BU2/U0/del_Y/Mshreg_shift_register_4_0_715 ;
  wire \BU2/U0/del_Y/Mshreg_shift_register_4_2_714 ;
  wire \BU2/N30 ;
  wire \BU2/N28 ;
  wire \BU2/N26 ;
  wire \BU2/N37 ;
  wire \BU2/N36 ;
  wire \BU2/N35 ;
  wire \BU2/U0/clamp.min_B/c_cmp_lt0000 ;
  wire \BU2/U0/clamp.min_G/c_cmp_lt0000 ;
  wire \BU2/U0/clamp.min_R/c_cmp_lt0000 ;
  wire \BU2/N18 ;
  wire \BU2/N34 ;
  wire \BU2/N10 ;
  wire \BU2/N33 ;
  wire \BU2/N2 ;
  wire \BU2/N32 ;
  wire \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_24_698 ;
  wire \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_23_697 ;
  wire \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_22_696 ;
  wire \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_21_695 ;
  wire \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_20_694 ;
  wire \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_19_693 ;
  wire \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_18_692 ;
  wire \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_17_691 ;
  wire \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_16_690 ;
  wire \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_15_689 ;
  wire \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_14_688 ;
  wire \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_13_687 ;
  wire \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_12_686 ;
  wire \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_11_685 ;
  wire \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_10_684 ;
  wire \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_9_683 ;
  wire \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_8_682 ;
  wire \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_23_681 ;
  wire \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_22_680 ;
  wire \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_21_679 ;
  wire \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_20_678 ;
  wire \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_19_677 ;
  wire \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_18_676 ;
  wire \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_17_675 ;
  wire \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_16_674 ;
  wire \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_15_673 ;
  wire \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_14_672 ;
  wire \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_13_671 ;
  wire \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_12_670 ;
  wire \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_11_669 ;
  wire \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_10_668 ;
  wire \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_9_667 ;
  wire \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_8_666 ;
  wire \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_7_665 ;
  wire \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_24_664 ;
  wire \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_23_663 ;
  wire \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_22_662 ;
  wire \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_21_661 ;
  wire \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_20_660 ;
  wire \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_19_659 ;
  wire \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_18_658 ;
  wire \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_17_657 ;
  wire \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_16_656 ;
  wire \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_15_655 ;
  wire \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_14_654 ;
  wire \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_13_653 ;
  wire \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_12_652 ;
  wire \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_11_651 ;
  wire \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_10_650 ;
  wire \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_9_649 ;
  wire \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_8_648 ;
  wire \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_7_647 ;
  wire \BU2/U0/clip.max_B/reg/shift_register_1_0_646 ;
  wire \BU2/U0/clip.max_B/reg/shift_register_1_1_644 ;
  wire \BU2/U0/clip.max_B/reg/shift_register_1_2_642 ;
  wire \BU2/U0/clip.max_B/reg/shift_register_1_3_640 ;
  wire \BU2/U0/clip.max_B/reg/shift_register_1_4_638 ;
  wire \BU2/U0/clip.max_B/reg/shift_register_1_5_636 ;
  wire \BU2/U0/clip.max_B/reg/shift_register_1_6_634 ;
  wire \BU2/U0/clip.max_B/reg/shift_register_1_7_632 ;
  wire \BU2/U0/clip.max_B/reg/shift_register_1_8_630 ;
  wire \BU2/U0/clip.max_B/reg/shift_register_1_9_628 ;
  wire \BU2/U0/clip.max_G/reg/shift_register_1_0_627 ;
  wire \BU2/U0/clip.max_G/reg/shift_register_1_1_625 ;
  wire \BU2/U0/clip.max_G/reg/shift_register_1_2_623 ;
  wire \BU2/U0/clip.max_G/reg/shift_register_1_3_621 ;
  wire \BU2/U0/clip.max_G/reg/shift_register_1_4_619 ;
  wire \BU2/U0/clip.max_G/reg/shift_register_1_5_617 ;
  wire \BU2/U0/clip.max_G/reg/shift_register_1_6_615 ;
  wire \BU2/U0/clip.max_G/reg/shift_register_1_7_613 ;
  wire \BU2/U0/clip.max_G/reg/shift_register_1_8_611 ;
  wire \BU2/U0/clip.max_G/reg/shift_register_1_9_609 ;
  wire \BU2/U0/clip.max_R/reg/shift_register_1_0_608 ;
  wire \BU2/U0/clip.max_R/reg/shift_register_1_1_606 ;
  wire \BU2/U0/clip.max_R/reg/shift_register_1_2_604 ;
  wire \BU2/U0/clip.max_R/reg/shift_register_1_3_602 ;
  wire \BU2/U0/clip.max_R/reg/shift_register_1_4_600 ;
  wire \BU2/U0/clip.max_R/reg/shift_register_1_5_598 ;
  wire \BU2/U0/clip.max_R/reg/shift_register_1_6_596 ;
  wire \BU2/U0/clip.max_R/reg/shift_register_1_7_594 ;
  wire \BU2/U0/clip.max_R/reg/shift_register_1_8_592 ;
  wire \BU2/U0/clip.max_R/reg/shift_register_1_9_590 ;
  wire \BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_9_565 ;
  wire \BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_8_564 ;
  wire \BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_7_563 ;
  wire \BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_6_562 ;
  wire \BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_5_561 ;
  wire \BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_4_560 ;
  wire \BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_3_559 ;
  wire \BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_2_558 ;
  wire \BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_1_557 ;
  wire \BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_0_556 ;
  wire \BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_9_555 ;
  wire \BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_8_554 ;
  wire \BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_7_553 ;
  wire \BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_6_552 ;
  wire \BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_5_551 ;
  wire \BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_4_550 ;
  wire \BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_3_549 ;
  wire \BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_2_548 ;
  wire \BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_1_547 ;
  wire \BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_0_546 ;
  wire \BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_9_545 ;
  wire \BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_8_544 ;
  wire \BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_7_543 ;
  wire \BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_6_542 ;
  wire \BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_5_541 ;
  wire \BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_4_540 ;
  wire \BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_3_539 ;
  wire \BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_2_538 ;
  wire \BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_1_537 ;
  wire \BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_0_536 ;
  wire \BU2/U0/del_Cb/shift_register_1_0_518 ;
  wire \BU2/U0/del_Cb/shift_register_1_1_517 ;
  wire \BU2/U0/del_Cb/shift_register_1_2_516 ;
  wire \BU2/U0/del_Cb/shift_register_1_3_515 ;
  wire \BU2/U0/del_Cb/shift_register_1_4_514 ;
  wire \BU2/U0/del_Cb/shift_register_1_5_513 ;
  wire \BU2/U0/del_Cb/shift_register_1_6_512 ;
  wire \BU2/U0/del_Cb/shift_register_1_7_511 ;
  wire \BU2/U0/del_Cr/shift_register_1_0_442 ;
  wire \BU2/U0/del_Cr/shift_register_1_1_441 ;
  wire \BU2/U0/del_Cr/shift_register_1_2_440 ;
  wire \BU2/U0/del_Cr/shift_register_1_3_439 ;
  wire \BU2/U0/del_Cr/shift_register_1_4_438 ;
  wire \BU2/U0/del_Cr/shift_register_1_5_437 ;
  wire \BU2/U0/del_Cr/shift_register_1_6_436 ;
  wire \BU2/U0/del_Cr/shift_register_1_7_435 ;
  wire \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut[8] ;
  wire \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<9>_rt_433 ;
  wire \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut[10] ;
  wire \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut[11] ;
  wire \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<12>_rt_427 ;
  wire \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<13>_rt_425 ;
  wire \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<14>_rt_423 ;
  wire \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut[15] ;
  wire \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut[16] ;
  wire \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<17>_rt_417 ;
  wire \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut[18] ;
  wire \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut[19] ;
  wire \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<20>_rt_411 ;
  wire \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<21>_rt_409 ;
  wire \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<22>_rt_407 ;
  wire \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<23>_rt_405 ;
  wire \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut[24] ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut[7] ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<8>_rt_400 ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<9>_rt_398 ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut[10] ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<11>_rt_394 ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<12>_rt_392 ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<13>_rt_390 ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<14>_rt_388 ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<15>_rt_386 ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<16>_rt_384 ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<17>_rt_382 ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<18>_rt_380 ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut[19] ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut[20] ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut[21] ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut[22] ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<23>_rt_370 ;
  wire \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_25_368 ;
  wire \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut[7] ;
  wire \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<8>_rt_365 ;
  wire \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut[9] ;
  wire \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<10>_rt_361 ;
  wire \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut[11] ;
  wire \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut[12] ;
  wire \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut[13] ;
  wire \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut[14] ;
  wire \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut[15] ;
  wire \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<16>_rt_349 ;
  wire \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<17>_rt_347 ;
  wire \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut[18] ;
  wire \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut[19] ;
  wire \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut[20] ;
  wire \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut[21] ;
  wire \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<22>_rt_337 ;
  wire \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<23>_rt_335 ;
  wire \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut[24] ;
  wire \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_0_330 ;
  wire \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_1_328 ;
  wire \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_2_325 ;
  wire \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_3_322 ;
  wire \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_4_319 ;
  wire \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_5_316 ;
  wire \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_6_313 ;
  wire \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_7_310 ;
  wire \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_8_307 ;
  wire \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_9_304 ;
  wire \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_10_301 ;
  wire \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_11_298 ;
  wire \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_12_295 ;
  wire \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_13_292 ;
  wire \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_14_289 ;
  wire \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_15_286 ;
  wire \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_16_284 ;
  wire \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_17_281 ;
  wire \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_18_278 ;
  wire \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_19_275 ;
  wire \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_20_272 ;
  wire \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_21_269 ;
  wire \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_22_266 ;
  wire \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_23_263 ;
  wire \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_24_260 ;
  wire \BU2/U0/add_B/use_fabric.adder/Madd_c_cy<8>_rt_233 ;
  wire \BU2/U0/add_B/use_fabric.adder/Madd_c_xor<9>_rt_230 ;
  wire \BU2/U0/add_R/use_fabric.adder/Madd_c_cy<8>_rt_204 ;
  wire \BU2/U0/add_R/use_fabric.adder/Madd_c_xor<9>_rt_201 ;
  wire \BU2/U0/del_Y/shift_register_4_0_199 ;
  wire \BU2/U0/del_Y/shift_register_4_1_196 ;
  wire \BU2/U0/del_Y/shift_register_4_2_192 ;
  wire \BU2/U0/del_Y/shift_register_4_3_188 ;
  wire \BU2/U0/del_Y/shift_register_4_4_184 ;
  wire \BU2/U0/del_Y/shift_register_4_5_180 ;
  wire \BU2/U0/del_Y/shift_register_4_6_176 ;
  wire \BU2/U0/del_Y/shift_register_4_7_172 ;
  wire \BU2/U0/add_G/use_fabric.adder/Madd_c_cy<8>_rt_167 ;
  wire \BU2/U0/add_G/use_fabric.adder/Madd_c_xor<9>_rt_164 ;
  wire \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_24_162 ;
  wire \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_23_160 ;
  wire \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_22_158 ;
  wire \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_21_156 ;
  wire \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_20_154 ;
  wire \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_19_152 ;
  wire \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_18_150 ;
  wire \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_17_148 ;
  wire \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_16_146 ;
  wire \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_24_144 ;
  wire \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_23_142 ;
  wire \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_22_140 ;
  wire \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_21_138 ;
  wire \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_20_136 ;
  wire \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_19_134 ;
  wire \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_18_132 ;
  wire \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_17_130 ;
  wire \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_16_128 ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_24_126 ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_23_124 ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_22_122 ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_21_120 ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_20_118 ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_19_116 ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_18_114 ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_17_112 ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_16_110 ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_15_108 ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_14_106 ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_13_104 ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_12_102 ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_11_100 ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_10_98 ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_9_96 ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_8_94 ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_7_92 ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_6_90 ;
  wire \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_6_89 ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_5_88 ;
  wire \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_5_87 ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_4_86 ;
  wire \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_4_85 ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_3_84 ;
  wire \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_3_83 ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_2_82 ;
  wire \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_2_81 ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_1_80 ;
  wire \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_1_79 ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_0_78 ;
  wire \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_0_77 ;
  wire \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_24_76 ;
  wire \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_23_74 ;
  wire \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_22_72 ;
  wire \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_21_70 ;
  wire \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_20_68 ;
  wire \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_19_66 ;
  wire \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_18_64 ;
  wire \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_17_62 ;
  wire \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_16_60 ;
  wire \BU2/N1 ;
  wire \BU2/N0 ;
  wire NLW_VCC_P_UNCONNECTED;
  wire NLW_GND_G_UNCONNECTED;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_dCb/Mmult_c_P<35>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_dCb/Mmult_c_P<34>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_dCb/Mmult_c_P<33>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_dCb/Mmult_c_P<32>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_dCb/Mmult_c_P<31>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_dCb/Mmult_c_P<30>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_dCb/Mmult_c_P<29>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_dCb/Mmult_c_P<28>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_dCb/Mmult_c_P<27>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_dCb/Mmult_c_P<26>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_dCb/Mmult_c_P<25>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_dCb/Mmult_c_P<7>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_dCb/Mmult_c_P<6>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_dCb/Mmult_c_P<5>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_dCb/Mmult_c_P<4>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_dCb/Mmult_c_P<3>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_dCb/Mmult_c_P<2>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_dCb/Mmult_c_P<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_dCb/Mmult_c_P<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_aCr/Mmult_c_P<35>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_aCr/Mmult_c_P<34>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_aCr/Mmult_c_P<33>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_aCr/Mmult_c_P<32>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_aCr/Mmult_c_P<31>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_aCr/Mmult_c_P<30>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_aCr/Mmult_c_P<29>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_aCr/Mmult_c_P<28>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_aCr/Mmult_c_P<27>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_aCr/Mmult_c_P<26>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_aCr/Mmult_c_P<25>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_aCr/Mmult_c_P<6>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_aCr/Mmult_c_P<5>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_aCr/Mmult_c_P<4>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_aCr/Mmult_c_P<3>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_aCr/Mmult_c_P<2>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_aCr/Mmult_c_P<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_aCr/Mmult_c_P<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_cCb/Mmult_c_P<35>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_cCb/Mmult_c_P<34>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_cCb/Mmult_c_P<33>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_cCb/Mmult_c_P<32>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_cCb/Mmult_c_P<31>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_cCb/Mmult_c_P<30>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_cCb/Mmult_c_P<29>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_cCb/Mmult_c_P<28>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_cCb/Mmult_c_P<27>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_cCb/Mmult_c_P<26>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_cCb/Mmult_c_P<25>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_bCr/Mmult_c_P<35>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_bCr/Mmult_c_P<34>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_bCr/Mmult_c_P<33>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_bCr/Mmult_c_P<32>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_bCr/Mmult_c_P<31>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_bCr/Mmult_c_P<30>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_bCr/Mmult_c_P<29>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_bCr/Mmult_c_P<28>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_bCr/Mmult_c_P<27>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_bCr/Mmult_c_P<26>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_bCr/Mmult_c_P<25>_UNCONNECTED ;
  wire [7 : 0] y_2;
  wire [7 : 0] cr_3;
  wire [7 : 0] cb_4;
  wire [7 : 0] r_5;
  wire [7 : 0] g_6;
  wire [7 : 0] b_7;
  wire [8 : 0] \BU2/U0/clip.max_B/c ;
  wire [8 : 0] \BU2/U0/clip.max_G/c ;
  wire [8 : 0] \BU2/U0/clip.max_R/c ;
  wire [7 : 0] \BU2/U0/clamp.min_B/c ;
  wire [7 : 0] \BU2/U0/clamp.min_G/c ;
  wire [7 : 0] \BU2/U0/clamp.min_R/c ;
  wire [24 : 8] \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register<1> ;
  wire [24 : 7] \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> ;
  wire [24 : 0] \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> ;
  wire [24 : 0] \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> ;
  wire [23 : 8] \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy ;
  wire [23 : 7] \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy ;
  wire [23 : 7] \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy ;
  wire [24 : 0] \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut ;
  wire [23 : 0] \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy ;
  wire [9 : 0] \BU2/U0/add_B/use_fabric.adder/c ;
  wire [7 : 0] \BU2/U0/add_B/use_fabric.adder/Madd_c_lut ;
  wire [8 : 0] \BU2/U0/add_B/use_fabric.adder/Madd_c_cy ;
  wire [9 : 0] \BU2/U0/add_R/use_fabric.adder/c ;
  wire [7 : 0] \BU2/U0/add_R/use_fabric.adder/Madd_c_lut ;
  wire [8 : 0] \BU2/U0/add_R/use_fabric.adder/Madd_c_cy ;
  wire [9 : 0] \BU2/U0/add_G/use_fabric.adder/c ;
  wire [7 : 0] \BU2/U0/add_G/use_fabric.adder/Madd_c_lut ;
  wire [8 : 0] \BU2/U0/add_G/use_fabric.adder/Madd_c_cy ;
  wire [24 : 16] \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/c ;
  wire [24 : 16] \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/c ;
  wire [24 : 7] \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c ;
  wire [24 : 16] \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/c ;
  assign
    cb_4[7] = cb[7],
    cb_4[6] = cb[6],
    cb_4[5] = cb[5],
    cb_4[4] = cb[4],
    cb_4[3] = cb[3],
    cb_4[2] = cb[2],
    cb_4[1] = cb[1],
    cb_4[0] = cb[0],
    cr_3[7] = cr[7],
    cr_3[6] = cr[6],
    cr_3[5] = cr[5],
    cr_3[4] = cr[4],
    cr_3[3] = cr[3],
    cr_3[2] = cr[2],
    cr_3[1] = cr[1],
    cr_3[0] = cr[0],
    b[7] = b_7[7],
    b[6] = b_7[6],
    b[5] = b_7[5],
    b[4] = b_7[4],
    b[3] = b_7[3],
    b[2] = b_7[2],
    b[1] = b_7[1],
    b[0] = b_7[0],
    g[7] = g_6[7],
    g[6] = g_6[6],
    g[5] = g_6[5],
    g[4] = g_6[4],
    g[3] = g_6[3],
    g[2] = g_6[2],
    g[1] = g_6[1],
    g[0] = g_6[0],
    r[7] = r_5[7],
    r[6] = r_5[6],
    r[5] = r_5[5],
    r[4] = r_5[4],
    r[3] = r_5[3],
    r[2] = r_5[2],
    r[1] = r_5[1],
    r[0] = r_5[0],
    y_2[7] = y[7],
    y_2[6] = y[6],
    y_2[5] = y[5],
    y_2[4] = y[4],
    y_2[3] = y[3],
    y_2[2] = y[2],
    y_2[1] = y[1],
    y_2[0] = y[0];
  VCC   VCC_0 (
    .P(NLW_VCC_P_UNCONNECTED)
  );
  GND   GND_1 (
    .G(NLW_GND_G_UNCONNECTED)
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/pix_en_out  (
    .C(clk),
    .CE(ce),
    .D(\BU2/Mshreg_pix_en_out_724 ),
    .Q(pix_en_out)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \BU2/Mshreg_pix_en_out  (
    .A0(\BU2/N1 ),
    .A1(\BU2/N0 ),
    .A2(\BU2/N1 ),
    .A3(\BU2/N0 ),
    .CE(ce),
    .CLK(clk),
    .D(pix_en_in),
    .Q(\BU2/Mshreg_pix_en_out_724 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/v_sync_out  (
    .C(clk),
    .CE(ce),
    .D(\BU2/Mshreg_v_sync_out_723 ),
    .Q(v_sync_out)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \BU2/Mshreg_v_sync_out  (
    .A0(\BU2/N1 ),
    .A1(\BU2/N0 ),
    .A2(\BU2/N1 ),
    .A3(\BU2/N0 ),
    .CE(ce),
    .CLK(clk),
    .D(v_sync_in),
    .Q(\BU2/Mshreg_v_sync_out_723 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/del_Y/shift_register_4_7  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/del_Y/Mshreg_shift_register_4_7_722 ),
    .Q(\BU2/U0/del_Y/shift_register_4_7_172 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \BU2/U0/del_Y/Mshreg_shift_register_4_7  (
    .A0(\BU2/N0 ),
    .A1(\BU2/N1 ),
    .A2(\BU2/N0 ),
    .A3(\BU2/N0 ),
    .CE(ce),
    .CLK(clk),
    .D(y_2[7]),
    .Q(\BU2/U0/del_Y/Mshreg_shift_register_4_7_722 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/del_Y/shift_register_4_6  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/del_Y/Mshreg_shift_register_4_6_721 ),
    .Q(\BU2/U0/del_Y/shift_register_4_6_176 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \BU2/U0/del_Y/Mshreg_shift_register_4_6  (
    .A0(\BU2/N0 ),
    .A1(\BU2/N1 ),
    .A2(\BU2/N0 ),
    .A3(\BU2/N0 ),
    .CE(ce),
    .CLK(clk),
    .D(y_2[6]),
    .Q(\BU2/U0/del_Y/Mshreg_shift_register_4_6_721 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/h_sync_out  (
    .C(clk),
    .CE(ce),
    .D(\BU2/Mshreg_h_sync_out_720 ),
    .Q(h_sync_out)
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \BU2/Mshreg_h_sync_out  (
    .A0(\BU2/N1 ),
    .A1(\BU2/N0 ),
    .A2(\BU2/N1 ),
    .A3(\BU2/N0 ),
    .CE(ce),
    .CLK(clk),
    .D(h_sync_in),
    .Q(\BU2/Mshreg_h_sync_out_720 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/del_Y/shift_register_4_4  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/del_Y/Mshreg_shift_register_4_4_719 ),
    .Q(\BU2/U0/del_Y/shift_register_4_4_184 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \BU2/U0/del_Y/Mshreg_shift_register_4_4  (
    .A0(\BU2/N0 ),
    .A1(\BU2/N1 ),
    .A2(\BU2/N0 ),
    .A3(\BU2/N0 ),
    .CE(ce),
    .CLK(clk),
    .D(y_2[4]),
    .Q(\BU2/U0/del_Y/Mshreg_shift_register_4_4_719 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/del_Y/shift_register_4_3  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/del_Y/Mshreg_shift_register_4_3_718 ),
    .Q(\BU2/U0/del_Y/shift_register_4_3_188 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \BU2/U0/del_Y/Mshreg_shift_register_4_3  (
    .A0(\BU2/N0 ),
    .A1(\BU2/N1 ),
    .A2(\BU2/N0 ),
    .A3(\BU2/N0 ),
    .CE(ce),
    .CLK(clk),
    .D(y_2[3]),
    .Q(\BU2/U0/del_Y/Mshreg_shift_register_4_3_718 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/del_Y/shift_register_4_5  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/del_Y/Mshreg_shift_register_4_5_717 ),
    .Q(\BU2/U0/del_Y/shift_register_4_5_180 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \BU2/U0/del_Y/Mshreg_shift_register_4_5  (
    .A0(\BU2/N0 ),
    .A1(\BU2/N1 ),
    .A2(\BU2/N0 ),
    .A3(\BU2/N0 ),
    .CE(ce),
    .CLK(clk),
    .D(y_2[5]),
    .Q(\BU2/U0/del_Y/Mshreg_shift_register_4_5_717 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/del_Y/shift_register_4_1  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/del_Y/Mshreg_shift_register_4_1_716 ),
    .Q(\BU2/U0/del_Y/shift_register_4_1_196 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \BU2/U0/del_Y/Mshreg_shift_register_4_1  (
    .A0(\BU2/N0 ),
    .A1(\BU2/N1 ),
    .A2(\BU2/N0 ),
    .A3(\BU2/N0 ),
    .CE(ce),
    .CLK(clk),
    .D(y_2[1]),
    .Q(\BU2/U0/del_Y/Mshreg_shift_register_4_1_716 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/del_Y/shift_register_4_0  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/del_Y/Mshreg_shift_register_4_0_715 ),
    .Q(\BU2/U0/del_Y/shift_register_4_0_199 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \BU2/U0/del_Y/Mshreg_shift_register_4_0  (
    .A0(\BU2/N0 ),
    .A1(\BU2/N1 ),
    .A2(\BU2/N0 ),
    .A3(\BU2/N0 ),
    .CE(ce),
    .CLK(clk),
    .D(y_2[0]),
    .Q(\BU2/U0/del_Y/Mshreg_shift_register_4_0_715 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/del_Y/shift_register_4_2  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/del_Y/Mshreg_shift_register_4_2_714 ),
    .Q(\BU2/U0/del_Y/shift_register_4_2_192 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \BU2/U0/del_Y/Mshreg_shift_register_4_2  (
    .A0(\BU2/N0 ),
    .A1(\BU2/N1 ),
    .A2(\BU2/N0 ),
    .A3(\BU2/N0 ),
    .CE(ce),
    .CLK(clk),
    .D(y_2[2]),
    .Q(\BU2/U0/del_Y/Mshreg_shift_register_4_2_714 )
  );
  LUT3_D #(
    .INIT ( 8'h01 ))
  \BU2/U0/clamp.min_B/c_cmp_lt00001_SW0  (
    .I0(\BU2/U0/clip.max_B/reg/shift_register_1_8_630 ),
    .I1(\BU2/U0/clip.max_B/reg/shift_register_1_6_634 ),
    .I2(\BU2/U0/clip.max_B/reg/shift_register_1_5_636 ),
    .LO(\BU2/N37 ),
    .O(\BU2/N30 )
  );
  LUT3_D #(
    .INIT ( 8'h01 ))
  \BU2/U0/clamp.min_G/c_cmp_lt00001_SW0  (
    .I0(\BU2/U0/clip.max_G/reg/shift_register_1_8_611 ),
    .I1(\BU2/U0/clip.max_G/reg/shift_register_1_6_615 ),
    .I2(\BU2/U0/clip.max_G/reg/shift_register_1_5_617 ),
    .LO(\BU2/N36 ),
    .O(\BU2/N28 )
  );
  LUT3_D #(
    .INIT ( 8'h01 ))
  \BU2/U0/clamp.min_R/c_cmp_lt00001_SW0  (
    .I0(\BU2/U0/clip.max_R/reg/shift_register_1_8_592 ),
    .I1(\BU2/U0/clip.max_R/reg/shift_register_1_6_596 ),
    .I2(\BU2/U0/clip.max_R/reg/shift_register_1_5_598 ),
    .LO(\BU2/N35 ),
    .O(\BU2/N26 )
  );
  LUT4_D #(
    .INIT ( 16'h8000 ))
  \BU2/U0/clip.max_B/c<3>_SW0  (
    .I0(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_7_563 ),
    .I1(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_6_562 ),
    .I2(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_5_561 ),
    .I3(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_4_560 ),
    .LO(\BU2/N34 ),
    .O(\BU2/N18 )
  );
  LUT4_D #(
    .INIT ( 16'h8000 ))
  \BU2/U0/clip.max_G/c<3>_SW0  (
    .I0(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_7_553 ),
    .I1(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_6_552 ),
    .I2(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_5_551 ),
    .I3(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_4_550 ),
    .LO(\BU2/N33 ),
    .O(\BU2/N10 )
  );
  LUT4_D #(
    .INIT ( 16'h8000 ))
  \BU2/U0/clip.max_R/c<3>_SW0  (
    .I0(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_7_543 ),
    .I1(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_6_542 ),
    .I2(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_5_541 ),
    .I3(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_4_540 ),
    .LO(\BU2/N32 ),
    .O(\BU2/N2 )
  );
  INV   \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut<8>_INV_0  (
    .I(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_8_682 ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut[8] )
  );
  INV   \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut<10>_INV_0  (
    .I(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_10_684 ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut[10] )
  );
  INV   \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut<11>_INV_0  (
    .I(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_11_685 ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut[11] )
  );
  INV   \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut<15>_INV_0  (
    .I(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_15_689 ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut[15] )
  );
  INV   \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut<16>_INV_0  (
    .I(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_16_690 ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut[16] )
  );
  INV   \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut<18>_INV_0  (
    .I(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_18_692 ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut[18] )
  );
  INV   \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut<19>_INV_0  (
    .I(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_19_693 ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut[19] )
  );
  INV   \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut<24>_INV_0  (
    .I(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_24_698 ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut[24] )
  );
  INV   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut<7>_INV_0  (
    .I(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_7_665 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut[7] )
  );
  INV   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut<10>_INV_0  (
    .I(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_10_668 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut[10] )
  );
  INV   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut<19>_INV_0  (
    .I(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_19_677 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut[19] )
  );
  INV   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut<20>_INV_0  (
    .I(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_20_678 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut[20] )
  );
  INV   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut<21>_INV_0  (
    .I(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_21_679 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut[21] )
  );
  INV   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut<22>_INV_0  (
    .I(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_22_680 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut[22] )
  );
  INV   \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut<7>_INV_0  (
    .I(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_7_647 ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut[7] )
  );
  INV   \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut<9>_INV_0  (
    .I(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_9_649 ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut[9] )
  );
  INV   \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut<11>_INV_0  (
    .I(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_11_651 ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut[11] )
  );
  INV   \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut<12>_INV_0  (
    .I(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_12_652 ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut[12] )
  );
  INV   \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut<13>_INV_0  (
    .I(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_13_653 ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut[13] )
  );
  INV   \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut<14>_INV_0  (
    .I(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_14_654 ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut[14] )
  );
  INV   \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut<15>_INV_0  (
    .I(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_15_655 ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut[15] )
  );
  INV   \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut<18>_INV_0  (
    .I(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_18_658 ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut[18] )
  );
  INV   \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut<19>_INV_0  (
    .I(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_19_659 ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut[19] )
  );
  INV   \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut<20>_INV_0  (
    .I(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_20_660 ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut[20] )
  );
  INV   \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut<21>_INV_0  (
    .I(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_21_661 ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut[21] )
  );
  INV   \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut<24>_INV_0  (
    .I(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_24_664 ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut[24] )
  );
  LUT4 #(
    .INIT ( 16'hEFEE ))
  \BU2/U0/clamp.min_B/c<4>1  (
    .I0(\BU2/U0/clip.max_B/reg/shift_register_1_4_638 ),
    .I1(\BU2/U0/clip.max_B/reg/shift_register_1_9_628 ),
    .I2(\BU2/U0/clip.max_B/reg/shift_register_1_7_632 ),
    .I3(\BU2/N30 ),
    .O(\BU2/U0/clamp.min_B/c [4])
  );
  LUT4 #(
    .INIT ( 16'hEFEE ))
  \BU2/U0/clamp.min_G/c<4>1  (
    .I0(\BU2/U0/clip.max_G/reg/shift_register_1_4_619 ),
    .I1(\BU2/U0/clip.max_G/reg/shift_register_1_9_609 ),
    .I2(\BU2/U0/clip.max_G/reg/shift_register_1_7_613 ),
    .I3(\BU2/N28 ),
    .O(\BU2/U0/clamp.min_G/c [4])
  );
  LUT4 #(
    .INIT ( 16'hEFEE ))
  \BU2/U0/clamp.min_R/c<4>1  (
    .I0(\BU2/U0/clip.max_R/reg/shift_register_1_4_600 ),
    .I1(\BU2/U0/clip.max_R/reg/shift_register_1_9_590 ),
    .I2(\BU2/U0/clip.max_R/reg/shift_register_1_7_594 ),
    .I3(\BU2/N26 ),
    .O(\BU2/U0/clamp.min_R/c [4])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \BU2/U0/clamp.min_B/c<7>1  (
    .I0(\BU2/U0/clip.max_B/reg/shift_register_1_9_628 ),
    .I1(\BU2/U0/clip.max_B/reg/shift_register_1_7_632 ),
    .O(\BU2/U0/clamp.min_B/c [7])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \BU2/U0/clamp.min_G/c<7>1  (
    .I0(\BU2/U0/clip.max_G/reg/shift_register_1_9_609 ),
    .I1(\BU2/U0/clip.max_G/reg/shift_register_1_7_613 ),
    .O(\BU2/U0/clamp.min_G/c [7])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \BU2/U0/clamp.min_R/c<7>1  (
    .I0(\BU2/U0/clip.max_R/reg/shift_register_1_9_590 ),
    .I1(\BU2/U0/clip.max_R/reg/shift_register_1_7_594 ),
    .O(\BU2/U0/clamp.min_R/c [7])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/add_B/use_fabric.adder/Madd_c_xor<9>_rt  (
    .I0(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_24_76 ),
    .O(\BU2/U0/add_B/use_fabric.adder/Madd_c_xor<9>_rt_230 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/add_R/use_fabric.adder/Madd_c_xor<9>_rt  (
    .I0(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_24_162 ),
    .O(\BU2/U0/add_R/use_fabric.adder/Madd_c_xor<9>_rt_201 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/add_G/use_fabric.adder/Madd_c_xor<9>_rt  (
    .I0(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_24_144 ),
    .O(\BU2/U0/add_G/use_fabric.adder/Madd_c_xor<9>_rt_164 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<9>_rt  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_9_683 ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<9>_rt_433 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<12>_rt  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_12_686 ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<12>_rt_427 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<13>_rt  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_13_687 ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<13>_rt_425 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<14>_rt  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_14_688 ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<14>_rt_423 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<17>_rt  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_17_691 ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<17>_rt_417 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<20>_rt  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_20_694 ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<20>_rt_411 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<21>_rt  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_21_695 ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<21>_rt_409 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<22>_rt  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_22_696 ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<22>_rt_407 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<23>_rt  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_23_697 ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<23>_rt_405 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<8>_rt  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_8_666 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<8>_rt_400 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<9>_rt  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_9_667 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<9>_rt_398 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<11>_rt  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_11_669 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<11>_rt_394 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<12>_rt  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_12_670 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<12>_rt_392 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<13>_rt  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_13_671 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<13>_rt_390 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<14>_rt  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_14_672 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<14>_rt_388 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<15>_rt  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_15_673 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<15>_rt_386 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<16>_rt  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_16_674 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<16>_rt_384 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<17>_rt  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_17_675 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<17>_rt_382 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<18>_rt  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_18_676 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<18>_rt_380 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<23>_rt  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_23_681 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<23>_rt_370 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<8>_rt  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_8_648 ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<8>_rt_365 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<10>_rt  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_10_650 ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<10>_rt_361 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<16>_rt  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_16_656 ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<16>_rt_349 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<17>_rt  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_17_657 ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<17>_rt_347 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<22>_rt  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_22_662 ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<22>_rt_337 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<23>_rt  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_23_663 ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<23>_rt_335 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/add_B/use_fabric.adder/Madd_c_cy<8>_rt  (
    .I0(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_24_76 ),
    .O(\BU2/U0/add_B/use_fabric.adder/Madd_c_cy<8>_rt_233 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/add_R/use_fabric.adder/Madd_c_cy<8>_rt  (
    .I0(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_24_162 ),
    .O(\BU2/U0/add_R/use_fabric.adder/Madd_c_cy<8>_rt_204 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/add_G/use_fabric.adder/Madd_c_cy<8>_rt  (
    .I0(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_24_144 ),
    .O(\BU2/U0/add_G/use_fabric.adder/Madd_c_cy<8>_rt_167 )
  );
  LUT4 #(
    .INIT ( 16'hFF10 ))
  \BU2/U0/clamp.min_B/c_cmp_lt00001  (
    .I0(\BU2/U0/clip.max_B/reg/shift_register_1_7_632 ),
    .I1(\BU2/U0/clip.max_B/reg/shift_register_1_4_638 ),
    .I2(\BU2/N37 ),
    .I3(\BU2/U0/clip.max_B/reg/shift_register_1_9_628 ),
    .O(\BU2/U0/clamp.min_B/c_cmp_lt0000 )
  );
  LUT4 #(
    .INIT ( 16'hFF10 ))
  \BU2/U0/clamp.min_G/c_cmp_lt00001  (
    .I0(\BU2/U0/clip.max_G/reg/shift_register_1_7_613 ),
    .I1(\BU2/U0/clip.max_G/reg/shift_register_1_4_619 ),
    .I2(\BU2/N36 ),
    .I3(\BU2/U0/clip.max_G/reg/shift_register_1_9_609 ),
    .O(\BU2/U0/clamp.min_G/c_cmp_lt0000 )
  );
  LUT4 #(
    .INIT ( 16'hFF10 ))
  \BU2/U0/clamp.min_R/c_cmp_lt00001  (
    .I0(\BU2/U0/clip.max_R/reg/shift_register_1_7_594 ),
    .I1(\BU2/U0/clip.max_R/reg/shift_register_1_4_600 ),
    .I2(\BU2/N35 ),
    .I3(\BU2/U0/clip.max_R/reg/shift_register_1_9_590 ),
    .O(\BU2/U0/clamp.min_R/c_cmp_lt0000 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \BU2/U0/clamp.min_B/c<0>1  (
    .I0(\BU2/U0/clip.max_B/reg/shift_register_1_0_646 ),
    .I1(\BU2/U0/clamp.min_B/c_cmp_lt0000 ),
    .O(\BU2/U0/clamp.min_B/c [0])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \BU2/U0/clamp.min_B/c<1>1  (
    .I0(\BU2/U0/clip.max_B/reg/shift_register_1_1_644 ),
    .I1(\BU2/U0/clamp.min_B/c_cmp_lt0000 ),
    .O(\BU2/U0/clamp.min_B/c [1])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \BU2/U0/clamp.min_B/c<2>1  (
    .I0(\BU2/U0/clip.max_B/reg/shift_register_1_2_642 ),
    .I1(\BU2/U0/clamp.min_B/c_cmp_lt0000 ),
    .O(\BU2/U0/clamp.min_B/c [2])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \BU2/U0/clamp.min_B/c<3>1  (
    .I0(\BU2/U0/clip.max_B/reg/shift_register_1_3_640 ),
    .I1(\BU2/U0/clamp.min_B/c_cmp_lt0000 ),
    .O(\BU2/U0/clamp.min_B/c [3])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \BU2/U0/clamp.min_B/c<5>1  (
    .I0(\BU2/U0/clip.max_B/reg/shift_register_1_5_636 ),
    .I1(\BU2/U0/clamp.min_B/c_cmp_lt0000 ),
    .O(\BU2/U0/clamp.min_B/c [5])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \BU2/U0/clamp.min_B/c<6>1  (
    .I0(\BU2/U0/clip.max_B/reg/shift_register_1_6_634 ),
    .I1(\BU2/U0/clamp.min_B/c_cmp_lt0000 ),
    .O(\BU2/U0/clamp.min_B/c [6])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \BU2/U0/clamp.min_G/c<0>1  (
    .I0(\BU2/U0/clip.max_G/reg/shift_register_1_0_627 ),
    .I1(\BU2/U0/clamp.min_G/c_cmp_lt0000 ),
    .O(\BU2/U0/clamp.min_G/c [0])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \BU2/U0/clamp.min_G/c<1>1  (
    .I0(\BU2/U0/clip.max_G/reg/shift_register_1_1_625 ),
    .I1(\BU2/U0/clamp.min_G/c_cmp_lt0000 ),
    .O(\BU2/U0/clamp.min_G/c [1])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \BU2/U0/clamp.min_G/c<2>1  (
    .I0(\BU2/U0/clip.max_G/reg/shift_register_1_2_623 ),
    .I1(\BU2/U0/clamp.min_G/c_cmp_lt0000 ),
    .O(\BU2/U0/clamp.min_G/c [2])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \BU2/U0/clamp.min_G/c<3>1  (
    .I0(\BU2/U0/clip.max_G/reg/shift_register_1_3_621 ),
    .I1(\BU2/U0/clamp.min_G/c_cmp_lt0000 ),
    .O(\BU2/U0/clamp.min_G/c [3])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \BU2/U0/clamp.min_G/c<5>1  (
    .I0(\BU2/U0/clip.max_G/reg/shift_register_1_5_617 ),
    .I1(\BU2/U0/clamp.min_G/c_cmp_lt0000 ),
    .O(\BU2/U0/clamp.min_G/c [5])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \BU2/U0/clamp.min_G/c<6>1  (
    .I0(\BU2/U0/clip.max_G/reg/shift_register_1_6_615 ),
    .I1(\BU2/U0/clamp.min_G/c_cmp_lt0000 ),
    .O(\BU2/U0/clamp.min_G/c [6])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \BU2/U0/clamp.min_R/c<0>1  (
    .I0(\BU2/U0/clip.max_R/reg/shift_register_1_0_608 ),
    .I1(\BU2/U0/clamp.min_R/c_cmp_lt0000 ),
    .O(\BU2/U0/clamp.min_R/c [0])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \BU2/U0/clamp.min_R/c<1>1  (
    .I0(\BU2/U0/clip.max_R/reg/shift_register_1_1_606 ),
    .I1(\BU2/U0/clamp.min_R/c_cmp_lt0000 ),
    .O(\BU2/U0/clamp.min_R/c [1])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \BU2/U0/clamp.min_R/c<2>1  (
    .I0(\BU2/U0/clip.max_R/reg/shift_register_1_2_604 ),
    .I1(\BU2/U0/clamp.min_R/c_cmp_lt0000 ),
    .O(\BU2/U0/clamp.min_R/c [2])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \BU2/U0/clamp.min_R/c<3>1  (
    .I0(\BU2/U0/clip.max_R/reg/shift_register_1_3_602 ),
    .I1(\BU2/U0/clamp.min_R/c_cmp_lt0000 ),
    .O(\BU2/U0/clamp.min_R/c [3])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \BU2/U0/clamp.min_R/c<5>1  (
    .I0(\BU2/U0/clip.max_R/reg/shift_register_1_5_598 ),
    .I1(\BU2/U0/clamp.min_R/c_cmp_lt0000 ),
    .O(\BU2/U0/clamp.min_R/c [5])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \BU2/U0/clamp.min_R/c<6>1  (
    .I0(\BU2/U0/clip.max_R/reg/shift_register_1_6_596 ),
    .I1(\BU2/U0/clamp.min_R/c_cmp_lt0000 ),
    .O(\BU2/U0/clamp.min_R/c [6])
  );
  LUT4 #(
    .INIT ( 16'hCC04 ))
  \BU2/U0/clip.max_B/c<0>  (
    .I0(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_8_564 ),
    .I1(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_0_556 ),
    .I2(\BU2/N18 ),
    .I3(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_9_565 ),
    .O(\BU2/U0/clip.max_B/c [0])
  );
  LUT4 #(
    .INIT ( 16'hCC04 ))
  \BU2/U0/clip.max_B/c<1>  (
    .I0(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_8_564 ),
    .I1(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_1_557 ),
    .I2(\BU2/N18 ),
    .I3(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_9_565 ),
    .O(\BU2/U0/clip.max_B/c [1])
  );
  LUT4 #(
    .INIT ( 16'hCC04 ))
  \BU2/U0/clip.max_B/c<2>  (
    .I0(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_8_564 ),
    .I1(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_2_558 ),
    .I2(\BU2/N18 ),
    .I3(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_9_565 ),
    .O(\BU2/U0/clip.max_B/c [2])
  );
  LUT4 #(
    .INIT ( 16'hCC04 ))
  \BU2/U0/clip.max_B/c<3>  (
    .I0(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_8_564 ),
    .I1(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_3_559 ),
    .I2(\BU2/N34 ),
    .I3(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_9_565 ),
    .O(\BU2/U0/clip.max_B/c [3])
  );
  LUT4 #(
    .INIT ( 16'hCC04 ))
  \BU2/U0/clip.max_G/c<0>  (
    .I0(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_8_554 ),
    .I1(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_0_546 ),
    .I2(\BU2/N10 ),
    .I3(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_9_555 ),
    .O(\BU2/U0/clip.max_G/c [0])
  );
  LUT4 #(
    .INIT ( 16'hCC04 ))
  \BU2/U0/clip.max_G/c<1>  (
    .I0(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_8_554 ),
    .I1(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_1_547 ),
    .I2(\BU2/N10 ),
    .I3(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_9_555 ),
    .O(\BU2/U0/clip.max_G/c [1])
  );
  LUT4 #(
    .INIT ( 16'hCC04 ))
  \BU2/U0/clip.max_G/c<2>  (
    .I0(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_8_554 ),
    .I1(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_2_548 ),
    .I2(\BU2/N10 ),
    .I3(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_9_555 ),
    .O(\BU2/U0/clip.max_G/c [2])
  );
  LUT4 #(
    .INIT ( 16'hCC04 ))
  \BU2/U0/clip.max_G/c<3>  (
    .I0(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_8_554 ),
    .I1(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_3_549 ),
    .I2(\BU2/N33 ),
    .I3(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_9_555 ),
    .O(\BU2/U0/clip.max_G/c [3])
  );
  LUT4 #(
    .INIT ( 16'hCC04 ))
  \BU2/U0/clip.max_R/c<0>  (
    .I0(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_8_544 ),
    .I1(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_0_536 ),
    .I2(\BU2/N2 ),
    .I3(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_9_545 ),
    .O(\BU2/U0/clip.max_R/c [0])
  );
  LUT4 #(
    .INIT ( 16'hCC04 ))
  \BU2/U0/clip.max_R/c<1>  (
    .I0(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_8_544 ),
    .I1(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_1_537 ),
    .I2(\BU2/N2 ),
    .I3(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_9_545 ),
    .O(\BU2/U0/clip.max_R/c [1])
  );
  LUT4 #(
    .INIT ( 16'hCC04 ))
  \BU2/U0/clip.max_R/c<2>  (
    .I0(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_8_544 ),
    .I1(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_2_538 ),
    .I2(\BU2/N2 ),
    .I3(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_9_545 ),
    .O(\BU2/U0/clip.max_R/c [2])
  );
  LUT4 #(
    .INIT ( 16'hCC04 ))
  \BU2/U0/clip.max_R/c<3>  (
    .I0(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_8_544 ),
    .I1(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_3_539 ),
    .I2(\BU2/N32 ),
    .I3(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_9_545 ),
    .O(\BU2/U0/clip.max_R/c [3])
  );
  LUT3 #(
    .INIT ( 8'hBA ))
  \BU2/U0/clip.max_B/c<4>1  (
    .I0(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_4_560 ),
    .I1(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_9_565 ),
    .I2(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_8_564 ),
    .O(\BU2/U0/clip.max_B/c [4])
  );
  LUT3 #(
    .INIT ( 8'hBA ))
  \BU2/U0/clip.max_B/c<5>1  (
    .I0(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_5_561 ),
    .I1(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_9_565 ),
    .I2(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_8_564 ),
    .O(\BU2/U0/clip.max_B/c [5])
  );
  LUT3 #(
    .INIT ( 8'hBA ))
  \BU2/U0/clip.max_B/c<6>1  (
    .I0(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_6_562 ),
    .I1(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_9_565 ),
    .I2(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_8_564 ),
    .O(\BU2/U0/clip.max_B/c [6])
  );
  LUT3 #(
    .INIT ( 8'hBA ))
  \BU2/U0/clip.max_B/c<7>1  (
    .I0(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_7_563 ),
    .I1(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_9_565 ),
    .I2(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_8_564 ),
    .O(\BU2/U0/clip.max_B/c [7])
  );
  LUT3 #(
    .INIT ( 8'hBA ))
  \BU2/U0/clip.max_G/c<4>1  (
    .I0(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_4_550 ),
    .I1(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_9_555 ),
    .I2(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_8_554 ),
    .O(\BU2/U0/clip.max_G/c [4])
  );
  LUT3 #(
    .INIT ( 8'hBA ))
  \BU2/U0/clip.max_G/c<5>1  (
    .I0(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_5_551 ),
    .I1(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_9_555 ),
    .I2(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_8_554 ),
    .O(\BU2/U0/clip.max_G/c [5])
  );
  LUT3 #(
    .INIT ( 8'hBA ))
  \BU2/U0/clip.max_G/c<6>1  (
    .I0(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_6_552 ),
    .I1(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_9_555 ),
    .I2(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_8_554 ),
    .O(\BU2/U0/clip.max_G/c [6])
  );
  LUT3 #(
    .INIT ( 8'hBA ))
  \BU2/U0/clip.max_G/c<7>1  (
    .I0(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_7_553 ),
    .I1(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_9_555 ),
    .I2(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_8_554 ),
    .O(\BU2/U0/clip.max_G/c [7])
  );
  LUT3 #(
    .INIT ( 8'hBA ))
  \BU2/U0/clip.max_R/c<4>1  (
    .I0(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_4_540 ),
    .I1(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_9_545 ),
    .I2(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_8_544 ),
    .O(\BU2/U0/clip.max_R/c [4])
  );
  LUT3 #(
    .INIT ( 8'hBA ))
  \BU2/U0/clip.max_R/c<5>1  (
    .I0(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_5_541 ),
    .I1(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_9_545 ),
    .I2(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_8_544 ),
    .O(\BU2/U0/clip.max_R/c [5])
  );
  LUT3 #(
    .INIT ( 8'hBA ))
  \BU2/U0/clip.max_R/c<6>1  (
    .I0(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_6_542 ),
    .I1(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_9_545 ),
    .I2(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_8_544 ),
    .O(\BU2/U0/clip.max_R/c [6])
  );
  LUT3 #(
    .INIT ( 8'hBA ))
  \BU2/U0/clip.max_R/c<7>1  (
    .I0(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_7_543 ),
    .I1(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_9_545 ),
    .I2(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_8_544 ),
    .O(\BU2/U0/clip.max_R/c [7])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \BU2/U0/clip.max_B/c<8>1  (
    .I0(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_8_564 ),
    .I1(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_9_565 ),
    .O(\BU2/U0/clip.max_B/c [8])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \BU2/U0/clip.max_G/c<8>1  (
    .I0(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_8_554 ),
    .I1(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_9_555 ),
    .O(\BU2/U0/clip.max_G/c [8])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \BU2/U0/clip.max_R/c<8>1  (
    .I0(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_8_544 ),
    .I1(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_9_545 ),
    .O(\BU2/U0/clip.max_R/c [8])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/del_Cb/shift_register_1_7  (
    .C(clk),
    .CE(ce),
    .D(cb_4[7]),
    .Q(\BU2/U0/del_Cb/shift_register_1_7_511 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/del_Cb/shift_register_1_6  (
    .C(clk),
    .CE(ce),
    .D(cb_4[6]),
    .Q(\BU2/U0/del_Cb/shift_register_1_6_512 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/del_Cb/shift_register_1_5  (
    .C(clk),
    .CE(ce),
    .D(cb_4[5]),
    .Q(\BU2/U0/del_Cb/shift_register_1_5_513 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/del_Cb/shift_register_1_4  (
    .C(clk),
    .CE(ce),
    .D(cb_4[4]),
    .Q(\BU2/U0/del_Cb/shift_register_1_4_514 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/del_Cb/shift_register_1_3  (
    .C(clk),
    .CE(ce),
    .D(cb_4[3]),
    .Q(\BU2/U0/del_Cb/shift_register_1_3_515 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/del_Cb/shift_register_1_2  (
    .C(clk),
    .CE(ce),
    .D(cb_4[2]),
    .Q(\BU2/U0/del_Cb/shift_register_1_2_516 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/del_Cb/shift_register_1_1  (
    .C(clk),
    .CE(ce),
    .D(cb_4[1]),
    .Q(\BU2/U0/del_Cb/shift_register_1_1_517 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/del_Cb/shift_register_1_0  (
    .C(clk),
    .CE(ce),
    .D(cb_4[0]),
    .Q(\BU2/U0/del_Cb/shift_register_1_0_518 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/del_Cr/shift_register_1_7  (
    .C(clk),
    .CE(ce),
    .D(cr_3[7]),
    .Q(\BU2/U0/del_Cr/shift_register_1_7_435 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/del_Cr/shift_register_1_6  (
    .C(clk),
    .CE(ce),
    .D(cr_3[6]),
    .Q(\BU2/U0/del_Cr/shift_register_1_6_436 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/del_Cr/shift_register_1_5  (
    .C(clk),
    .CE(ce),
    .D(cr_3[5]),
    .Q(\BU2/U0/del_Cr/shift_register_1_5_437 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/del_Cr/shift_register_1_4  (
    .C(clk),
    .CE(ce),
    .D(cr_3[4]),
    .Q(\BU2/U0/del_Cr/shift_register_1_4_438 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/del_Cr/shift_register_1_3  (
    .C(clk),
    .CE(ce),
    .D(cr_3[3]),
    .Q(\BU2/U0/del_Cr/shift_register_1_3_439 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/del_Cr/shift_register_1_2  (
    .C(clk),
    .CE(ce),
    .D(cr_3[2]),
    .Q(\BU2/U0/del_Cr/shift_register_1_2_440 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/del_Cr/shift_register_1_1  (
    .C(clk),
    .CE(ce),
    .D(cr_3[1]),
    .Q(\BU2/U0/del_Cr/shift_register_1_1_441 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/del_Cr/shift_register_1_0  (
    .C(clk),
    .CE(ce),
    .D(cr_3[0]),
    .Q(\BU2/U0/del_Cr/shift_register_1_0_442 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_24  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register<1> [24]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_24_698 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_23  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register<1> [23]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_23_697 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_22  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register<1> [22]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_22_696 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_21  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register<1> [21]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_21_695 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_20  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register<1> [20]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_20_694 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_19  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register<1> [19]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_19_693 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_18  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register<1> [18]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_18_692 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_17  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register<1> [17]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_17_691 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_16  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register<1> [16]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_16_690 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_15  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register<1> [15]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_15_689 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_14  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register<1> [14]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_14_688 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_13  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register<1> [13]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_13_687 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_12  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register<1> [12]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_12_686 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_11  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register<1> [11]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_11_685 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_10  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register<1> [10]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_10_684 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_9  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register<1> [9]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_9_683 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_8  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register<1> [8]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_8_682 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_25  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [24]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_25_368 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_23  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [23]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_23_681 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_22  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [22]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_22_680 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_21  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [21]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_21_679 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_20  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [20]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_20_678 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_19  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [19]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_19_677 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_18  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [18]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_18_676 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_17  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [17]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_17_675 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_16  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [16]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_16_674 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_15  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [15]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_15_673 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_14  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [14]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_14_672 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_13  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [13]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_13_671 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_12  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [12]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_12_670 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_11  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [11]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_11_669 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_10  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [10]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_10_668 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_9  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [9]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_9_667 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_8  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [8]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_8_666 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_7  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [7]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_7_665 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_6  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [6]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_6_89 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_5  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [5]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_5_87 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_4  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [4]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_4_85 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_3  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [3]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_3_83 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_2  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [2]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_2_81 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_1  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [1]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_1_79 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_0  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [0]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_0_77 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_24  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [24]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_24_260 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_23  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [23]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_23_263 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_22  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [22]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_22_266 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_21  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [21]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_21_269 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_20  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [20]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_20_272 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_19  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [19]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_19_275 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_18  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [18]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_18_278 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_17  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [17]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_17_281 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_16  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [16]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_16_284 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_15  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [15]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_15_286 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_14  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [14]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_14_289 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_13  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [13]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_13_292 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_12  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [12]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_12_295 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_11  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [11]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_11_298 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_10  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [10]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_10_301 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_9  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [9]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_9_304 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_8  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [8]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_8_307 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_7  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [7]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_7_310 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_6  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [6]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_6_313 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_5  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [5]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_5_316 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_4  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [4]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_4_319 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_3  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [3]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_3_322 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_2  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [2]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_2_325 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_1  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [1]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_1_328 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_0  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [0]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_0_330 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_24  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [24]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_24_664 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_23  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [23]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_23_663 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_22  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [22]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_22_662 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_21  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [21]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_21_661 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_20  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [20]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_20_660 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_19  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [19]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_19_659 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_18  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [18]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_18_658 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_17  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [17]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_17_657 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_16  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [16]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_16_656 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_15  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [15]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_15_655 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_14  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [14]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_14_654 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_13  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [13]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_13_653 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_12  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [12]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_12_652 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_11  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [11]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_11_651 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_10  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [10]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_10_650 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_9  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [9]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_9_649 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_8  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [8]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_8_648 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_7  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [7]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_7_647 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clip.max_B/reg/shift_register_1_0  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clip.max_B/c [0]),
    .R(sclr),
    .Q(\BU2/U0/clip.max_B/reg/shift_register_1_0_646 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clip.max_B/reg/shift_register_1_1  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clip.max_B/c [1]),
    .R(sclr),
    .Q(\BU2/U0/clip.max_B/reg/shift_register_1_1_644 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clip.max_B/reg/shift_register_1_2  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clip.max_B/c [2]),
    .R(sclr),
    .Q(\BU2/U0/clip.max_B/reg/shift_register_1_2_642 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clip.max_B/reg/shift_register_1_3  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clip.max_B/c [3]),
    .R(sclr),
    .Q(\BU2/U0/clip.max_B/reg/shift_register_1_3_640 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clip.max_B/reg/shift_register_1_4  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clip.max_B/c [4]),
    .R(sclr),
    .Q(\BU2/U0/clip.max_B/reg/shift_register_1_4_638 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clip.max_B/reg/shift_register_1_5  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clip.max_B/c [5]),
    .R(sclr),
    .Q(\BU2/U0/clip.max_B/reg/shift_register_1_5_636 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clip.max_B/reg/shift_register_1_6  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clip.max_B/c [6]),
    .R(sclr),
    .Q(\BU2/U0/clip.max_B/reg/shift_register_1_6_634 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clip.max_B/reg/shift_register_1_7  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clip.max_B/c [7]),
    .R(sclr),
    .Q(\BU2/U0/clip.max_B/reg/shift_register_1_7_632 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clip.max_B/reg/shift_register_1_8  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clip.max_B/c [8]),
    .R(sclr),
    .Q(\BU2/U0/clip.max_B/reg/shift_register_1_8_630 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clip.max_B/reg/shift_register_1_9  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_9_565 ),
    .R(sclr),
    .Q(\BU2/U0/clip.max_B/reg/shift_register_1_9_628 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clip.max_G/reg/shift_register_1_0  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clip.max_G/c [0]),
    .R(sclr),
    .Q(\BU2/U0/clip.max_G/reg/shift_register_1_0_627 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clip.max_G/reg/shift_register_1_1  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clip.max_G/c [1]),
    .R(sclr),
    .Q(\BU2/U0/clip.max_G/reg/shift_register_1_1_625 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clip.max_G/reg/shift_register_1_2  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clip.max_G/c [2]),
    .R(sclr),
    .Q(\BU2/U0/clip.max_G/reg/shift_register_1_2_623 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clip.max_G/reg/shift_register_1_3  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clip.max_G/c [3]),
    .R(sclr),
    .Q(\BU2/U0/clip.max_G/reg/shift_register_1_3_621 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clip.max_G/reg/shift_register_1_4  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clip.max_G/c [4]),
    .R(sclr),
    .Q(\BU2/U0/clip.max_G/reg/shift_register_1_4_619 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clip.max_G/reg/shift_register_1_5  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clip.max_G/c [5]),
    .R(sclr),
    .Q(\BU2/U0/clip.max_G/reg/shift_register_1_5_617 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clip.max_G/reg/shift_register_1_6  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clip.max_G/c [6]),
    .R(sclr),
    .Q(\BU2/U0/clip.max_G/reg/shift_register_1_6_615 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clip.max_G/reg/shift_register_1_7  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clip.max_G/c [7]),
    .R(sclr),
    .Q(\BU2/U0/clip.max_G/reg/shift_register_1_7_613 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clip.max_G/reg/shift_register_1_8  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clip.max_G/c [8]),
    .R(sclr),
    .Q(\BU2/U0/clip.max_G/reg/shift_register_1_8_611 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clip.max_G/reg/shift_register_1_9  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_9_555 ),
    .R(sclr),
    .Q(\BU2/U0/clip.max_G/reg/shift_register_1_9_609 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clip.max_R/reg/shift_register_1_0  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clip.max_R/c [0]),
    .R(sclr),
    .Q(\BU2/U0/clip.max_R/reg/shift_register_1_0_608 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clip.max_R/reg/shift_register_1_1  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clip.max_R/c [1]),
    .R(sclr),
    .Q(\BU2/U0/clip.max_R/reg/shift_register_1_1_606 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clip.max_R/reg/shift_register_1_2  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clip.max_R/c [2]),
    .R(sclr),
    .Q(\BU2/U0/clip.max_R/reg/shift_register_1_2_604 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clip.max_R/reg/shift_register_1_3  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clip.max_R/c [3]),
    .R(sclr),
    .Q(\BU2/U0/clip.max_R/reg/shift_register_1_3_602 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clip.max_R/reg/shift_register_1_4  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clip.max_R/c [4]),
    .R(sclr),
    .Q(\BU2/U0/clip.max_R/reg/shift_register_1_4_600 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clip.max_R/reg/shift_register_1_5  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clip.max_R/c [5]),
    .R(sclr),
    .Q(\BU2/U0/clip.max_R/reg/shift_register_1_5_598 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clip.max_R/reg/shift_register_1_6  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clip.max_R/c [6]),
    .R(sclr),
    .Q(\BU2/U0/clip.max_R/reg/shift_register_1_6_596 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clip.max_R/reg/shift_register_1_7  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clip.max_R/c [7]),
    .R(sclr),
    .Q(\BU2/U0/clip.max_R/reg/shift_register_1_7_594 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clip.max_R/reg/shift_register_1_8  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clip.max_R/c [8]),
    .R(sclr),
    .Q(\BU2/U0/clip.max_R/reg/shift_register_1_8_592 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clip.max_R/reg/shift_register_1_9  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_9_545 ),
    .R(sclr),
    .Q(\BU2/U0/clip.max_R/reg/shift_register_1_9_590 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clamp.min_B/reg/shift_register_1_0  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clamp.min_B/c [0]),
    .R(sclr),
    .Q(b_7[0])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clamp.min_B/reg/shift_register_1_1  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clamp.min_B/c [1]),
    .R(sclr),
    .Q(b_7[1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clamp.min_B/reg/shift_register_1_2  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clamp.min_B/c [2]),
    .R(sclr),
    .Q(b_7[2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clamp.min_B/reg/shift_register_1_3  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clamp.min_B/c [3]),
    .R(sclr),
    .Q(b_7[3])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clamp.min_B/reg/shift_register_1_4  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clamp.min_B/c [4]),
    .R(sclr),
    .Q(b_7[4])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clamp.min_B/reg/shift_register_1_5  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clamp.min_B/c [5]),
    .R(sclr),
    .Q(b_7[5])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clamp.min_B/reg/shift_register_1_6  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clamp.min_B/c [6]),
    .R(sclr),
    .Q(b_7[6])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clamp.min_B/reg/shift_register_1_7  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clamp.min_B/c [7]),
    .R(sclr),
    .Q(b_7[7])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clamp.min_G/reg/shift_register_1_0  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clamp.min_G/c [0]),
    .R(sclr),
    .Q(g_6[0])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clamp.min_G/reg/shift_register_1_1  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clamp.min_G/c [1]),
    .R(sclr),
    .Q(g_6[1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clamp.min_G/reg/shift_register_1_2  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clamp.min_G/c [2]),
    .R(sclr),
    .Q(g_6[2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clamp.min_G/reg/shift_register_1_3  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clamp.min_G/c [3]),
    .R(sclr),
    .Q(g_6[3])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clamp.min_G/reg/shift_register_1_4  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clamp.min_G/c [4]),
    .R(sclr),
    .Q(g_6[4])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clamp.min_G/reg/shift_register_1_5  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clamp.min_G/c [5]),
    .R(sclr),
    .Q(g_6[5])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clamp.min_G/reg/shift_register_1_6  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clamp.min_G/c [6]),
    .R(sclr),
    .Q(g_6[6])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clamp.min_G/reg/shift_register_1_7  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clamp.min_G/c [7]),
    .R(sclr),
    .Q(g_6[7])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clamp.min_R/reg/shift_register_1_0  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clamp.min_R/c [0]),
    .R(sclr),
    .Q(r_5[0])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clamp.min_R/reg/shift_register_1_1  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clamp.min_R/c [1]),
    .R(sclr),
    .Q(r_5[1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clamp.min_R/reg/shift_register_1_2  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clamp.min_R/c [2]),
    .R(sclr),
    .Q(r_5[2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clamp.min_R/reg/shift_register_1_3  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clamp.min_R/c [3]),
    .R(sclr),
    .Q(r_5[3])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clamp.min_R/reg/shift_register_1_4  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clamp.min_R/c [4]),
    .R(sclr),
    .Q(r_5[4])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clamp.min_R/reg/shift_register_1_5  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clamp.min_R/c [5]),
    .R(sclr),
    .Q(r_5[5])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clamp.min_R/reg/shift_register_1_6  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clamp.min_R/c [6]),
    .R(sclr),
    .Q(r_5[6])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clamp.min_R/reg/shift_register_1_7  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clamp.min_R/c [7]),
    .R(sclr),
    .Q(r_5[7])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_9  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/add_B/use_fabric.adder/c [9]),
    .R(sclr),
    .Q(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_9_565 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_8  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/add_B/use_fabric.adder/c [8]),
    .R(sclr),
    .Q(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_8_564 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_7  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/add_B/use_fabric.adder/c [7]),
    .R(sclr),
    .Q(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_7_563 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_6  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/add_B/use_fabric.adder/c [6]),
    .R(sclr),
    .Q(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_6_562 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_5  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/add_B/use_fabric.adder/c [5]),
    .R(sclr),
    .Q(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_5_561 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_4  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/add_B/use_fabric.adder/c [4]),
    .R(sclr),
    .Q(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_4_560 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_3  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/add_B/use_fabric.adder/c [3]),
    .R(sclr),
    .Q(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_3_559 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_2  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/add_B/use_fabric.adder/c [2]),
    .R(sclr),
    .Q(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_2_558 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_1  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/add_B/use_fabric.adder/c [1]),
    .R(sclr),
    .Q(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_1_557 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_0  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/add_B/use_fabric.adder/c [0]),
    .R(sclr),
    .Q(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_0_556 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_9  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/add_G/use_fabric.adder/c [9]),
    .R(sclr),
    .Q(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_9_555 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_8  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/add_G/use_fabric.adder/c [8]),
    .R(sclr),
    .Q(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_8_554 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_7  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/add_G/use_fabric.adder/c [7]),
    .R(sclr),
    .Q(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_7_553 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_6  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/add_G/use_fabric.adder/c [6]),
    .R(sclr),
    .Q(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_6_552 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_5  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/add_G/use_fabric.adder/c [5]),
    .R(sclr),
    .Q(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_5_551 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_4  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/add_G/use_fabric.adder/c [4]),
    .R(sclr),
    .Q(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_4_550 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_3  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/add_G/use_fabric.adder/c [3]),
    .R(sclr),
    .Q(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_3_549 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_2  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/add_G/use_fabric.adder/c [2]),
    .R(sclr),
    .Q(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_2_548 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_1  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/add_G/use_fabric.adder/c [1]),
    .R(sclr),
    .Q(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_1_547 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_0  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/add_G/use_fabric.adder/c [0]),
    .R(sclr),
    .Q(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_0_546 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_9  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/add_R/use_fabric.adder/c [9]),
    .R(sclr),
    .Q(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_9_545 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_8  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/add_R/use_fabric.adder/c [8]),
    .R(sclr),
    .Q(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_8_544 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_7  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/add_R/use_fabric.adder/c [7]),
    .R(sclr),
    .Q(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_7_543 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_6  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/add_R/use_fabric.adder/c [6]),
    .R(sclr),
    .Q(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_6_542 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_5  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/add_R/use_fabric.adder/c [5]),
    .R(sclr),
    .Q(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_5_541 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_4  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/add_R/use_fabric.adder/c [4]),
    .R(sclr),
    .Q(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_4_540 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_3  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/add_R/use_fabric.adder/c [3]),
    .R(sclr),
    .Q(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_3_539 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_2  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/add_R/use_fabric.adder/c [2]),
    .R(sclr),
    .Q(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_2_538 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_1  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/add_R/use_fabric.adder/c [1]),
    .R(sclr),
    .Q(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_1_537 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_0  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/add_R/use_fabric.adder/c [0]),
    .R(sclr),
    .Q(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_0_536 )
  );
  MULT18X18S   \BU2/U0/sp3_v2_v2p.mult_dCb/Mmult_c  (
    .C(clk),
    .CE(ce),
    .R(sclr),
    .A({\BU2/N0 , \BU2/N1 , \BU2/N1 , \BU2/N1 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N1 , \BU2/N0 , \BU2/N1 , \BU2/N1 , \BU2/N1 , \BU2/N1 , \BU2/N0 , 
\BU2/N0 , \BU2/N1 , \BU2/N1 , \BU2/N0 }),
    .B({\BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/U0/del_Cb/shift_register_1_7_511 , 
\BU2/U0/del_Cb/shift_register_1_6_512 , \BU2/U0/del_Cb/shift_register_1_5_513 , \BU2/U0/del_Cb/shift_register_1_4_514 , 
\BU2/U0/del_Cb/shift_register_1_3_515 , \BU2/U0/del_Cb/shift_register_1_2_516 , \BU2/U0/del_Cb/shift_register_1_1_517 , 
\BU2/U0/del_Cb/shift_register_1_0_518 }),
    .P({\NLW_BU2/U0/sp3_v2_v2p.mult_dCb/Mmult_c_P<35>_UNCONNECTED , \NLW_BU2/U0/sp3_v2_v2p.mult_dCb/Mmult_c_P<34>_UNCONNECTED , 
\NLW_BU2/U0/sp3_v2_v2p.mult_dCb/Mmult_c_P<33>_UNCONNECTED , \NLW_BU2/U0/sp3_v2_v2p.mult_dCb/Mmult_c_P<32>_UNCONNECTED , 
\NLW_BU2/U0/sp3_v2_v2p.mult_dCb/Mmult_c_P<31>_UNCONNECTED , \NLW_BU2/U0/sp3_v2_v2p.mult_dCb/Mmult_c_P<30>_UNCONNECTED , 
\NLW_BU2/U0/sp3_v2_v2p.mult_dCb/Mmult_c_P<29>_UNCONNECTED , \NLW_BU2/U0/sp3_v2_v2p.mult_dCb/Mmult_c_P<28>_UNCONNECTED , 
\NLW_BU2/U0/sp3_v2_v2p.mult_dCb/Mmult_c_P<27>_UNCONNECTED , \NLW_BU2/U0/sp3_v2_v2p.mult_dCb/Mmult_c_P<26>_UNCONNECTED , 
\NLW_BU2/U0/sp3_v2_v2p.mult_dCb/Mmult_c_P<25>_UNCONNECTED , \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register<1> [24], 
\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register<1> [23], \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register<1> [22], 
\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register<1> [21], \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register<1> [20], 
\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register<1> [19], \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register<1> [18], 
\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register<1> [17], \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register<1> [16], 
\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register<1> [15], \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register<1> [14], 
\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register<1> [13], \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register<1> [12], 
\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register<1> [11], \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register<1> [10], 
\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register<1> [9], \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register<1> [8], 
\NLW_BU2/U0/sp3_v2_v2p.mult_dCb/Mmult_c_P<7>_UNCONNECTED , \NLW_BU2/U0/sp3_v2_v2p.mult_dCb/Mmult_c_P<6>_UNCONNECTED , 
\NLW_BU2/U0/sp3_v2_v2p.mult_dCb/Mmult_c_P<5>_UNCONNECTED , \NLW_BU2/U0/sp3_v2_v2p.mult_dCb/Mmult_c_P<4>_UNCONNECTED , 
\NLW_BU2/U0/sp3_v2_v2p.mult_dCb/Mmult_c_P<3>_UNCONNECTED , \NLW_BU2/U0/sp3_v2_v2p.mult_dCb/Mmult_c_P<2>_UNCONNECTED , 
\NLW_BU2/U0/sp3_v2_v2p.mult_dCb/Mmult_c_P<1>_UNCONNECTED , \NLW_BU2/U0/sp3_v2_v2p.mult_dCb/Mmult_c_P<0>_UNCONNECTED })
  );
  MULT18X18S   \BU2/U0/sp3_v2_v2p.mult_aCr/Mmult_c  (
    .C(clk),
    .CE(ce),
    .R(sclr),
    .A({\BU2/N0 , \BU2/N1 , \BU2/N0 , \BU2/N1 , \BU2/N1 , \BU2/N0 , \BU2/N0 , \BU2/N1 , \BU2/N1 , \BU2/N1 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , 
\BU2/N1 , \BU2/N0 , \BU2/N1 , \BU2/N1 }),
    .B({\BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/U0/del_Cr/shift_register_1_7_435 , 
\BU2/U0/del_Cr/shift_register_1_6_436 , \BU2/U0/del_Cr/shift_register_1_5_437 , \BU2/U0/del_Cr/shift_register_1_4_438 , 
\BU2/U0/del_Cr/shift_register_1_3_439 , \BU2/U0/del_Cr/shift_register_1_2_440 , \BU2/U0/del_Cr/shift_register_1_1_441 , 
\BU2/U0/del_Cr/shift_register_1_0_442 }),
    .P({\NLW_BU2/U0/sp3_v2_v2p.mult_aCr/Mmult_c_P<35>_UNCONNECTED , \NLW_BU2/U0/sp3_v2_v2p.mult_aCr/Mmult_c_P<34>_UNCONNECTED , 
\NLW_BU2/U0/sp3_v2_v2p.mult_aCr/Mmult_c_P<33>_UNCONNECTED , \NLW_BU2/U0/sp3_v2_v2p.mult_aCr/Mmult_c_P<32>_UNCONNECTED , 
\NLW_BU2/U0/sp3_v2_v2p.mult_aCr/Mmult_c_P<31>_UNCONNECTED , \NLW_BU2/U0/sp3_v2_v2p.mult_aCr/Mmult_c_P<30>_UNCONNECTED , 
\NLW_BU2/U0/sp3_v2_v2p.mult_aCr/Mmult_c_P<29>_UNCONNECTED , \NLW_BU2/U0/sp3_v2_v2p.mult_aCr/Mmult_c_P<28>_UNCONNECTED , 
\NLW_BU2/U0/sp3_v2_v2p.mult_aCr/Mmult_c_P<27>_UNCONNECTED , \NLW_BU2/U0/sp3_v2_v2p.mult_aCr/Mmult_c_P<26>_UNCONNECTED , 
\NLW_BU2/U0/sp3_v2_v2p.mult_aCr/Mmult_c_P<25>_UNCONNECTED , \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [24], 
\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [23], \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [22], 
\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [21], \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [20], 
\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [19], \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [18], 
\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [17], \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [16], 
\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [15], \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [14], 
\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [13], \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [12], 
\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [11], \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [10], 
\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [9], \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [8], 
\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [7], \NLW_BU2/U0/sp3_v2_v2p.mult_aCr/Mmult_c_P<6>_UNCONNECTED , 
\NLW_BU2/U0/sp3_v2_v2p.mult_aCr/Mmult_c_P<5>_UNCONNECTED , \NLW_BU2/U0/sp3_v2_v2p.mult_aCr/Mmult_c_P<4>_UNCONNECTED , 
\NLW_BU2/U0/sp3_v2_v2p.mult_aCr/Mmult_c_P<3>_UNCONNECTED , \NLW_BU2/U0/sp3_v2_v2p.mult_aCr/Mmult_c_P<2>_UNCONNECTED , 
\NLW_BU2/U0/sp3_v2_v2p.mult_aCr/Mmult_c_P<1>_UNCONNECTED , \NLW_BU2/U0/sp3_v2_v2p.mult_aCr/Mmult_c_P<0>_UNCONNECTED })
  );
  MULT18X18S   \BU2/U0/sp3_v2_v2p.mult_cCb/Mmult_c  (
    .C(clk),
    .CE(ce),
    .R(sclr),
    .A({\BU2/N1 , \BU2/N1 , \BU2/N1 , \BU2/N0 , \BU2/N1 , \BU2/N0 , \BU2/N0 , \BU2/N1 , \BU2/N1 , \BU2/N1 , \BU2/N1 , \BU2/N1 , \BU2/N0 , \BU2/N1 , 
\BU2/N1 , \BU2/N0 , \BU2/N1 , \BU2/N0 }),
    .B({\BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , cb_4[7], cb_4[6], cb_4[5], cb_4[4], 
cb_4[3], cb_4[2], cb_4[1], cb_4[0]}),
    .P({\NLW_BU2/U0/sp3_v2_v2p.mult_cCb/Mmult_c_P<35>_UNCONNECTED , \NLW_BU2/U0/sp3_v2_v2p.mult_cCb/Mmult_c_P<34>_UNCONNECTED , 
\NLW_BU2/U0/sp3_v2_v2p.mult_cCb/Mmult_c_P<33>_UNCONNECTED , \NLW_BU2/U0/sp3_v2_v2p.mult_cCb/Mmult_c_P<32>_UNCONNECTED , 
\NLW_BU2/U0/sp3_v2_v2p.mult_cCb/Mmult_c_P<31>_UNCONNECTED , \NLW_BU2/U0/sp3_v2_v2p.mult_cCb/Mmult_c_P<30>_UNCONNECTED , 
\NLW_BU2/U0/sp3_v2_v2p.mult_cCb/Mmult_c_P<29>_UNCONNECTED , \NLW_BU2/U0/sp3_v2_v2p.mult_cCb/Mmult_c_P<28>_UNCONNECTED , 
\NLW_BU2/U0/sp3_v2_v2p.mult_cCb/Mmult_c_P<27>_UNCONNECTED , \NLW_BU2/U0/sp3_v2_v2p.mult_cCb/Mmult_c_P<26>_UNCONNECTED , 
\NLW_BU2/U0/sp3_v2_v2p.mult_cCb/Mmult_c_P<25>_UNCONNECTED , \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [24], 
\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [23], \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [22], 
\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [21], \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [20], 
\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [19], \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [18], 
\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [17], \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [16], 
\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [15], \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [14], 
\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [13], \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [12], 
\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [11], \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [10], 
\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [9], \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [8], 
\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [7], \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [6], 
\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [5], \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [4], 
\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [3], \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [2], 
\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [1], \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [0]})
  );
  MULT18X18S   \BU2/U0/sp3_v2_v2p.mult_bCr/Mmult_c  (
    .C(clk),
    .CE(ce),
    .R(sclr),
    .A({\BU2/N1 , \BU2/N1 , \BU2/N0 , \BU2/N1 , \BU2/N0 , \BU2/N0 , \BU2/N1 , \BU2/N0 , \BU2/N0 , \BU2/N1 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N1 , 
\BU2/N1 , \BU2/N1 , \BU2/N0 , \BU2/N1 }),
    .B({\BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/U0/del_Cr/shift_register_1_7_435 , 
\BU2/U0/del_Cr/shift_register_1_6_436 , \BU2/U0/del_Cr/shift_register_1_5_437 , \BU2/U0/del_Cr/shift_register_1_4_438 , 
\BU2/U0/del_Cr/shift_register_1_3_439 , \BU2/U0/del_Cr/shift_register_1_2_440 , \BU2/U0/del_Cr/shift_register_1_1_441 , 
\BU2/U0/del_Cr/shift_register_1_0_442 }),
    .P({\NLW_BU2/U0/sp3_v2_v2p.mult_bCr/Mmult_c_P<35>_UNCONNECTED , \NLW_BU2/U0/sp3_v2_v2p.mult_bCr/Mmult_c_P<34>_UNCONNECTED , 
\NLW_BU2/U0/sp3_v2_v2p.mult_bCr/Mmult_c_P<33>_UNCONNECTED , \NLW_BU2/U0/sp3_v2_v2p.mult_bCr/Mmult_c_P<32>_UNCONNECTED , 
\NLW_BU2/U0/sp3_v2_v2p.mult_bCr/Mmult_c_P<31>_UNCONNECTED , \NLW_BU2/U0/sp3_v2_v2p.mult_bCr/Mmult_c_P<30>_UNCONNECTED , 
\NLW_BU2/U0/sp3_v2_v2p.mult_bCr/Mmult_c_P<29>_UNCONNECTED , \NLW_BU2/U0/sp3_v2_v2p.mult_bCr/Mmult_c_P<28>_UNCONNECTED , 
\NLW_BU2/U0/sp3_v2_v2p.mult_bCr/Mmult_c_P<27>_UNCONNECTED , \NLW_BU2/U0/sp3_v2_v2p.mult_bCr/Mmult_c_P<26>_UNCONNECTED , 
\NLW_BU2/U0/sp3_v2_v2p.mult_bCr/Mmult_c_P<25>_UNCONNECTED , \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [24], 
\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [23], \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [22], 
\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [21], \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [20], 
\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [19], \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [18], 
\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [17], \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [16], 
\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [15], \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [14], 
\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [13], \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [12], 
\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [11], \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [10], 
\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [9], \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [8], 
\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [7], \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [6], 
\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [5], \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [4], 
\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [3], \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [2], 
\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [1], \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [0]})
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<8>  (
    .CI(\BU2/N0 ),
    .DI(\BU2/N1 ),
    .S(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut[8] ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy [8])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<9>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy [8]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<9>_rt_433 ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy [9])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<10>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy [9]),
    .DI(\BU2/N1 ),
    .S(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut[10] ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy [10])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<11>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy [10]),
    .DI(\BU2/N1 ),
    .S(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut[11] ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy [11])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<12>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy [11]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<12>_rt_427 ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy [12])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<13>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy [12]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<13>_rt_425 ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy [13])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<14>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy [13]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<14>_rt_423 ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy [14])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<15>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy [14]),
    .DI(\BU2/N1 ),
    .S(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut[15] ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy [15])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<16>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy [15]),
    .DI(\BU2/N1 ),
    .S(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut[16] ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy [16])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_xor<16>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy [15]),
    .LI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut[16] ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/c [16])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<17>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy [16]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<17>_rt_417 ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy [17])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_xor<17>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy [16]),
    .LI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<17>_rt_417 ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/c [17])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<18>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy [17]),
    .DI(\BU2/N1 ),
    .S(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut[18] ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy [18])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_xor<18>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy [17]),
    .LI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut[18] ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/c [18])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<19>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy [18]),
    .DI(\BU2/N1 ),
    .S(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut[19] ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy [19])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_xor<19>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy [18]),
    .LI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut[19] ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/c [19])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<20>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy [19]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<20>_rt_411 ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy [20])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_xor<20>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy [19]),
    .LI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<20>_rt_411 ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/c [20])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<21>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy [20]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<21>_rt_409 ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy [21])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_xor<21>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy [20]),
    .LI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<21>_rt_409 ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/c [21])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<22>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy [21]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<22>_rt_407 ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy [22])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_xor<22>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy [21]),
    .LI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<22>_rt_407 ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/c [22])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<23>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy [22]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<23>_rt_405 ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy [23])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_xor<23>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy [22]),
    .LI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<23>_rt_405 ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/c [23])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_xor<24>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy [23]),
    .LI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut[24] ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/c [24])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<7>  (
    .CI(\BU2/N0 ),
    .DI(\BU2/N1 ),
    .S(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut[7] ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [7])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_xor<7>  (
    .CI(\BU2/N0 ),
    .LI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut[7] ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c [7])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<8>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [7]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<8>_rt_400 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [8])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_xor<8>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [7]),
    .LI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<8>_rt_400 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c [8])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<9>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [8]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<9>_rt_398 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [9])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_xor<9>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [8]),
    .LI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<9>_rt_398 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c [9])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<10>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [9]),
    .DI(\BU2/N1 ),
    .S(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut[10] ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [10])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_xor<10>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [9]),
    .LI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut[10] ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c [10])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<11>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [10]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<11>_rt_394 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [11])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_xor<11>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [10]),
    .LI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<11>_rt_394 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c [11])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<12>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [11]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<12>_rt_392 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [12])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_xor<12>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [11]),
    .LI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<12>_rt_392 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c [12])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<13>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [12]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<13>_rt_390 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [13])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_xor<13>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [12]),
    .LI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<13>_rt_390 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c [13])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<14>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [13]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<14>_rt_388 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [14])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_xor<14>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [13]),
    .LI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<14>_rt_388 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c [14])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<15>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [14]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<15>_rt_386 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [15])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_xor<15>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [14]),
    .LI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<15>_rt_386 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c [15])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<16>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [15]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<16>_rt_384 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [16])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_xor<16>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [15]),
    .LI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<16>_rt_384 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c [16])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<17>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [16]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<17>_rt_382 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [17])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_xor<17>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [16]),
    .LI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<17>_rt_382 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c [17])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<18>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [17]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<18>_rt_380 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [18])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_xor<18>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [17]),
    .LI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<18>_rt_380 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c [18])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<19>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [18]),
    .DI(\BU2/N1 ),
    .S(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut[19] ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [19])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_xor<19>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [18]),
    .LI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut[19] ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c [19])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<20>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [19]),
    .DI(\BU2/N1 ),
    .S(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut[20] ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [20])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_xor<20>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [19]),
    .LI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut[20] ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c [20])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<21>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [20]),
    .DI(\BU2/N1 ),
    .S(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut[21] ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [21])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_xor<21>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [20]),
    .LI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut[21] ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c [21])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<22>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [21]),
    .DI(\BU2/N1 ),
    .S(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut[22] ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [22])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_xor<22>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [21]),
    .LI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut[22] ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c [22])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<23>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [22]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<23>_rt_370 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [23])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_xor<23>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [22]),
    .LI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<23>_rt_370 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c [23])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_xor<24>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [23]),
    .LI(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_25_368 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c [24])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<7>  (
    .CI(\BU2/N0 ),
    .DI(\BU2/N1 ),
    .S(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut[7] ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy [7])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<8>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy [7]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<8>_rt_365 ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy [8])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<9>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy [8]),
    .DI(\BU2/N1 ),
    .S(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut[9] ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy [9])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<10>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy [9]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<10>_rt_361 ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy [10])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<11>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy [10]),
    .DI(\BU2/N1 ),
    .S(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut[11] ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy [11])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<12>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy [11]),
    .DI(\BU2/N1 ),
    .S(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut[12] ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy [12])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<13>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy [12]),
    .DI(\BU2/N1 ),
    .S(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut[13] ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy [13])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<14>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy [13]),
    .DI(\BU2/N1 ),
    .S(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut[14] ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy [14])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<15>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy [14]),
    .DI(\BU2/N1 ),
    .S(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut[15] ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy [15])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<16>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy [15]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<16>_rt_349 ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy [16])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_xor<16>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy [15]),
    .LI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<16>_rt_349 ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/c [16])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<17>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy [16]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<17>_rt_347 ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy [17])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_xor<17>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy [16]),
    .LI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<17>_rt_347 ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/c [17])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<18>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy [17]),
    .DI(\BU2/N1 ),
    .S(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut[18] ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy [18])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_xor<18>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy [17]),
    .LI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut[18] ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/c [18])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<19>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy [18]),
    .DI(\BU2/N1 ),
    .S(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut[19] ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy [19])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_xor<19>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy [18]),
    .LI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut[19] ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/c [19])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<20>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy [19]),
    .DI(\BU2/N1 ),
    .S(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut[20] ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy [20])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_xor<20>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy [19]),
    .LI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut[20] ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/c [20])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<21>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy [20]),
    .DI(\BU2/N1 ),
    .S(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut[21] ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy [21])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_xor<21>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy [20]),
    .LI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut[21] ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/c [21])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<22>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy [21]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<22>_rt_337 ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy [22])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_xor<22>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy [21]),
    .LI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<22>_rt_337 ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/c [22])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<23>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy [22]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<23>_rt_335 ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy [23])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_xor<23>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy [22]),
    .LI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<23>_rt_335 ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/c [23])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_xor<24>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy [23]),
    .LI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut[24] ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/c [24])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut<0>  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_0_330 ),
    .I1(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_0_78 ),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [0])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy<0>  (
    .CI(\BU2/N0 ),
    .DI(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_0_330 ),
    .S(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [0]),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut<1>  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_1_328 ),
    .I1(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_1_80 ),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [1])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy<1>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [0]),
    .DI(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_1_328 ),
    .S(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [1]),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut<2>  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_2_325 ),
    .I1(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_2_82 ),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [2])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy<2>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [1]),
    .DI(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_2_325 ),
    .S(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [2]),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [2])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut<3>  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_3_322 ),
    .I1(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_3_84 ),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [3])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy<3>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [2]),
    .DI(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_3_322 ),
    .S(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [3]),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [3])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut<4>  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_4_319 ),
    .I1(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_4_86 ),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [4])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy<4>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [3]),
    .DI(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_4_319 ),
    .S(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [4]),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [4])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut<5>  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_5_316 ),
    .I1(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_5_88 ),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [5])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy<5>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [4]),
    .DI(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_5_316 ),
    .S(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [5]),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [5])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut<6>  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_6_313 ),
    .I1(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_6_90 ),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [6])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy<6>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [5]),
    .DI(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_6_313 ),
    .S(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [6]),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [6])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut<7>  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_7_310 ),
    .I1(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_7_92 ),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [7])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy<7>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [6]),
    .DI(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_7_310 ),
    .S(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [7]),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [7])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut<8>  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_8_307 ),
    .I1(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_8_94 ),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [8])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy<8>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [7]),
    .DI(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_8_307 ),
    .S(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [8]),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [8])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut<9>  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_9_304 ),
    .I1(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_9_96 ),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [9])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy<9>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [8]),
    .DI(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_9_304 ),
    .S(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [9]),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [9])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut<10>  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_10_301 ),
    .I1(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_10_98 ),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [10])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy<10>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [9]),
    .DI(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_10_301 ),
    .S(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [10]),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [10])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut<11>  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_11_298 ),
    .I1(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_11_100 ),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [11])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy<11>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [10]),
    .DI(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_11_298 ),
    .S(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [11]),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [11])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut<12>  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_12_295 ),
    .I1(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_12_102 ),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [12])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy<12>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [11]),
    .DI(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_12_295 ),
    .S(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [12]),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [12])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut<13>  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_13_292 ),
    .I1(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_13_104 ),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [13])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy<13>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [12]),
    .DI(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_13_292 ),
    .S(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [13]),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [13])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut<14>  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_14_289 ),
    .I1(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_14_106 ),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [14])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy<14>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [13]),
    .DI(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_14_289 ),
    .S(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [14]),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [14])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut<15>  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_15_286 ),
    .I1(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_15_108 ),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [15])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy<15>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [14]),
    .DI(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_15_286 ),
    .S(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [15]),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [15])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut<16>  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_16_284 ),
    .I1(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_16_110 ),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [16])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy<16>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [15]),
    .DI(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_16_284 ),
    .S(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [16]),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [16])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_xor<16>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [15]),
    .LI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [16]),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/c [16])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut<17>  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_17_281 ),
    .I1(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_17_112 ),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [17])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy<17>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [16]),
    .DI(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_17_281 ),
    .S(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [17]),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [17])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_xor<17>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [16]),
    .LI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [17]),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/c [17])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut<18>  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_18_278 ),
    .I1(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_18_114 ),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [18])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy<18>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [17]),
    .DI(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_18_278 ),
    .S(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [18]),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [18])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_xor<18>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [17]),
    .LI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [18]),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/c [18])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut<19>  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_19_275 ),
    .I1(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_19_116 ),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [19])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy<19>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [18]),
    .DI(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_19_275 ),
    .S(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [19]),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [19])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_xor<19>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [18]),
    .LI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [19]),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/c [19])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut<20>  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_20_272 ),
    .I1(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_20_118 ),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [20])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy<20>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [19]),
    .DI(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_20_272 ),
    .S(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [20]),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [20])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_xor<20>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [19]),
    .LI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [20]),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/c [20])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut<21>  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_21_269 ),
    .I1(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_21_120 ),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [21])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy<21>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [20]),
    .DI(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_21_269 ),
    .S(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [21]),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [21])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_xor<21>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [20]),
    .LI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [21]),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/c [21])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut<22>  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_22_266 ),
    .I1(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_22_122 ),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [22])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy<22>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [21]),
    .DI(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_22_266 ),
    .S(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [22]),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [22])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_xor<22>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [21]),
    .LI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [22]),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/c [22])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut<23>  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_23_263 ),
    .I1(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_23_124 ),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [23])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy<23>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [22]),
    .DI(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_23_263 ),
    .S(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [23]),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [23])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_xor<23>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [22]),
    .LI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [23]),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/c [23])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut<24>  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_24_260 ),
    .I1(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_24_126 ),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [24])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_xor<24>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [23]),
    .LI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [24]),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/c [24])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/add_B/use_fabric.adder/Madd_c_lut<0>  (
    .I0(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_16_60 ),
    .I1(\BU2/U0/del_Y/shift_register_4_0_199 ),
    .O(\BU2/U0/add_B/use_fabric.adder/Madd_c_lut [0])
  );
  MUXCY   \BU2/U0/add_B/use_fabric.adder/Madd_c_cy<0>  (
    .CI(\BU2/N0 ),
    .DI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_16_60 ),
    .S(\BU2/U0/add_B/use_fabric.adder/Madd_c_lut [0]),
    .O(\BU2/U0/add_B/use_fabric.adder/Madd_c_cy [0])
  );
  XORCY   \BU2/U0/add_B/use_fabric.adder/Madd_c_xor<0>  (
    .CI(\BU2/N0 ),
    .LI(\BU2/U0/add_B/use_fabric.adder/Madd_c_lut [0]),
    .O(\BU2/U0/add_B/use_fabric.adder/c [0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/add_B/use_fabric.adder/Madd_c_lut<1>  (
    .I0(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_17_62 ),
    .I1(\BU2/U0/del_Y/shift_register_4_1_196 ),
    .O(\BU2/U0/add_B/use_fabric.adder/Madd_c_lut [1])
  );
  MUXCY   \BU2/U0/add_B/use_fabric.adder/Madd_c_cy<1>  (
    .CI(\BU2/U0/add_B/use_fabric.adder/Madd_c_cy [0]),
    .DI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_17_62 ),
    .S(\BU2/U0/add_B/use_fabric.adder/Madd_c_lut [1]),
    .O(\BU2/U0/add_B/use_fabric.adder/Madd_c_cy [1])
  );
  XORCY   \BU2/U0/add_B/use_fabric.adder/Madd_c_xor<1>  (
    .CI(\BU2/U0/add_B/use_fabric.adder/Madd_c_cy [0]),
    .LI(\BU2/U0/add_B/use_fabric.adder/Madd_c_lut [1]),
    .O(\BU2/U0/add_B/use_fabric.adder/c [1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/add_B/use_fabric.adder/Madd_c_lut<2>  (
    .I0(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_18_64 ),
    .I1(\BU2/U0/del_Y/shift_register_4_2_192 ),
    .O(\BU2/U0/add_B/use_fabric.adder/Madd_c_lut [2])
  );
  MUXCY   \BU2/U0/add_B/use_fabric.adder/Madd_c_cy<2>  (
    .CI(\BU2/U0/add_B/use_fabric.adder/Madd_c_cy [1]),
    .DI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_18_64 ),
    .S(\BU2/U0/add_B/use_fabric.adder/Madd_c_lut [2]),
    .O(\BU2/U0/add_B/use_fabric.adder/Madd_c_cy [2])
  );
  XORCY   \BU2/U0/add_B/use_fabric.adder/Madd_c_xor<2>  (
    .CI(\BU2/U0/add_B/use_fabric.adder/Madd_c_cy [1]),
    .LI(\BU2/U0/add_B/use_fabric.adder/Madd_c_lut [2]),
    .O(\BU2/U0/add_B/use_fabric.adder/c [2])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/add_B/use_fabric.adder/Madd_c_lut<3>  (
    .I0(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_19_66 ),
    .I1(\BU2/U0/del_Y/shift_register_4_3_188 ),
    .O(\BU2/U0/add_B/use_fabric.adder/Madd_c_lut [3])
  );
  MUXCY   \BU2/U0/add_B/use_fabric.adder/Madd_c_cy<3>  (
    .CI(\BU2/U0/add_B/use_fabric.adder/Madd_c_cy [2]),
    .DI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_19_66 ),
    .S(\BU2/U0/add_B/use_fabric.adder/Madd_c_lut [3]),
    .O(\BU2/U0/add_B/use_fabric.adder/Madd_c_cy [3])
  );
  XORCY   \BU2/U0/add_B/use_fabric.adder/Madd_c_xor<3>  (
    .CI(\BU2/U0/add_B/use_fabric.adder/Madd_c_cy [2]),
    .LI(\BU2/U0/add_B/use_fabric.adder/Madd_c_lut [3]),
    .O(\BU2/U0/add_B/use_fabric.adder/c [3])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/add_B/use_fabric.adder/Madd_c_lut<4>  (
    .I0(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_20_68 ),
    .I1(\BU2/U0/del_Y/shift_register_4_4_184 ),
    .O(\BU2/U0/add_B/use_fabric.adder/Madd_c_lut [4])
  );
  MUXCY   \BU2/U0/add_B/use_fabric.adder/Madd_c_cy<4>  (
    .CI(\BU2/U0/add_B/use_fabric.adder/Madd_c_cy [3]),
    .DI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_20_68 ),
    .S(\BU2/U0/add_B/use_fabric.adder/Madd_c_lut [4]),
    .O(\BU2/U0/add_B/use_fabric.adder/Madd_c_cy [4])
  );
  XORCY   \BU2/U0/add_B/use_fabric.adder/Madd_c_xor<4>  (
    .CI(\BU2/U0/add_B/use_fabric.adder/Madd_c_cy [3]),
    .LI(\BU2/U0/add_B/use_fabric.adder/Madd_c_lut [4]),
    .O(\BU2/U0/add_B/use_fabric.adder/c [4])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/add_B/use_fabric.adder/Madd_c_lut<5>  (
    .I0(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_21_70 ),
    .I1(\BU2/U0/del_Y/shift_register_4_5_180 ),
    .O(\BU2/U0/add_B/use_fabric.adder/Madd_c_lut [5])
  );
  MUXCY   \BU2/U0/add_B/use_fabric.adder/Madd_c_cy<5>  (
    .CI(\BU2/U0/add_B/use_fabric.adder/Madd_c_cy [4]),
    .DI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_21_70 ),
    .S(\BU2/U0/add_B/use_fabric.adder/Madd_c_lut [5]),
    .O(\BU2/U0/add_B/use_fabric.adder/Madd_c_cy [5])
  );
  XORCY   \BU2/U0/add_B/use_fabric.adder/Madd_c_xor<5>  (
    .CI(\BU2/U0/add_B/use_fabric.adder/Madd_c_cy [4]),
    .LI(\BU2/U0/add_B/use_fabric.adder/Madd_c_lut [5]),
    .O(\BU2/U0/add_B/use_fabric.adder/c [5])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/add_B/use_fabric.adder/Madd_c_lut<6>  (
    .I0(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_22_72 ),
    .I1(\BU2/U0/del_Y/shift_register_4_6_176 ),
    .O(\BU2/U0/add_B/use_fabric.adder/Madd_c_lut [6])
  );
  MUXCY   \BU2/U0/add_B/use_fabric.adder/Madd_c_cy<6>  (
    .CI(\BU2/U0/add_B/use_fabric.adder/Madd_c_cy [5]),
    .DI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_22_72 ),
    .S(\BU2/U0/add_B/use_fabric.adder/Madd_c_lut [6]),
    .O(\BU2/U0/add_B/use_fabric.adder/Madd_c_cy [6])
  );
  XORCY   \BU2/U0/add_B/use_fabric.adder/Madd_c_xor<6>  (
    .CI(\BU2/U0/add_B/use_fabric.adder/Madd_c_cy [5]),
    .LI(\BU2/U0/add_B/use_fabric.adder/Madd_c_lut [6]),
    .O(\BU2/U0/add_B/use_fabric.adder/c [6])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/add_B/use_fabric.adder/Madd_c_lut<7>  (
    .I0(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_23_74 ),
    .I1(\BU2/U0/del_Y/shift_register_4_7_172 ),
    .O(\BU2/U0/add_B/use_fabric.adder/Madd_c_lut [7])
  );
  MUXCY   \BU2/U0/add_B/use_fabric.adder/Madd_c_cy<7>  (
    .CI(\BU2/U0/add_B/use_fabric.adder/Madd_c_cy [6]),
    .DI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_23_74 ),
    .S(\BU2/U0/add_B/use_fabric.adder/Madd_c_lut [7]),
    .O(\BU2/U0/add_B/use_fabric.adder/Madd_c_cy [7])
  );
  XORCY   \BU2/U0/add_B/use_fabric.adder/Madd_c_xor<7>  (
    .CI(\BU2/U0/add_B/use_fabric.adder/Madd_c_cy [6]),
    .LI(\BU2/U0/add_B/use_fabric.adder/Madd_c_lut [7]),
    .O(\BU2/U0/add_B/use_fabric.adder/c [7])
  );
  MUXCY   \BU2/U0/add_B/use_fabric.adder/Madd_c_cy<8>  (
    .CI(\BU2/U0/add_B/use_fabric.adder/Madd_c_cy [7]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/add_B/use_fabric.adder/Madd_c_cy<8>_rt_233 ),
    .O(\BU2/U0/add_B/use_fabric.adder/Madd_c_cy [8])
  );
  XORCY   \BU2/U0/add_B/use_fabric.adder/Madd_c_xor<8>  (
    .CI(\BU2/U0/add_B/use_fabric.adder/Madd_c_cy [7]),
    .LI(\BU2/U0/add_B/use_fabric.adder/Madd_c_cy<8>_rt_233 ),
    .O(\BU2/U0/add_B/use_fabric.adder/c [8])
  );
  XORCY   \BU2/U0/add_B/use_fabric.adder/Madd_c_xor<9>  (
    .CI(\BU2/U0/add_B/use_fabric.adder/Madd_c_cy [8]),
    .LI(\BU2/U0/add_B/use_fabric.adder/Madd_c_xor<9>_rt_230 ),
    .O(\BU2/U0/add_B/use_fabric.adder/c [9])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/add_R/use_fabric.adder/Madd_c_lut<0>  (
    .I0(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_16_146 ),
    .I1(\BU2/U0/del_Y/shift_register_4_0_199 ),
    .O(\BU2/U0/add_R/use_fabric.adder/Madd_c_lut [0])
  );
  MUXCY   \BU2/U0/add_R/use_fabric.adder/Madd_c_cy<0>  (
    .CI(\BU2/N0 ),
    .DI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_16_146 ),
    .S(\BU2/U0/add_R/use_fabric.adder/Madd_c_lut [0]),
    .O(\BU2/U0/add_R/use_fabric.adder/Madd_c_cy [0])
  );
  XORCY   \BU2/U0/add_R/use_fabric.adder/Madd_c_xor<0>  (
    .CI(\BU2/N0 ),
    .LI(\BU2/U0/add_R/use_fabric.adder/Madd_c_lut [0]),
    .O(\BU2/U0/add_R/use_fabric.adder/c [0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/add_R/use_fabric.adder/Madd_c_lut<1>  (
    .I0(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_17_148 ),
    .I1(\BU2/U0/del_Y/shift_register_4_1_196 ),
    .O(\BU2/U0/add_R/use_fabric.adder/Madd_c_lut [1])
  );
  MUXCY   \BU2/U0/add_R/use_fabric.adder/Madd_c_cy<1>  (
    .CI(\BU2/U0/add_R/use_fabric.adder/Madd_c_cy [0]),
    .DI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_17_148 ),
    .S(\BU2/U0/add_R/use_fabric.adder/Madd_c_lut [1]),
    .O(\BU2/U0/add_R/use_fabric.adder/Madd_c_cy [1])
  );
  XORCY   \BU2/U0/add_R/use_fabric.adder/Madd_c_xor<1>  (
    .CI(\BU2/U0/add_R/use_fabric.adder/Madd_c_cy [0]),
    .LI(\BU2/U0/add_R/use_fabric.adder/Madd_c_lut [1]),
    .O(\BU2/U0/add_R/use_fabric.adder/c [1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/add_R/use_fabric.adder/Madd_c_lut<2>  (
    .I0(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_18_150 ),
    .I1(\BU2/U0/del_Y/shift_register_4_2_192 ),
    .O(\BU2/U0/add_R/use_fabric.adder/Madd_c_lut [2])
  );
  MUXCY   \BU2/U0/add_R/use_fabric.adder/Madd_c_cy<2>  (
    .CI(\BU2/U0/add_R/use_fabric.adder/Madd_c_cy [1]),
    .DI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_18_150 ),
    .S(\BU2/U0/add_R/use_fabric.adder/Madd_c_lut [2]),
    .O(\BU2/U0/add_R/use_fabric.adder/Madd_c_cy [2])
  );
  XORCY   \BU2/U0/add_R/use_fabric.adder/Madd_c_xor<2>  (
    .CI(\BU2/U0/add_R/use_fabric.adder/Madd_c_cy [1]),
    .LI(\BU2/U0/add_R/use_fabric.adder/Madd_c_lut [2]),
    .O(\BU2/U0/add_R/use_fabric.adder/c [2])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/add_R/use_fabric.adder/Madd_c_lut<3>  (
    .I0(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_19_152 ),
    .I1(\BU2/U0/del_Y/shift_register_4_3_188 ),
    .O(\BU2/U0/add_R/use_fabric.adder/Madd_c_lut [3])
  );
  MUXCY   \BU2/U0/add_R/use_fabric.adder/Madd_c_cy<3>  (
    .CI(\BU2/U0/add_R/use_fabric.adder/Madd_c_cy [2]),
    .DI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_19_152 ),
    .S(\BU2/U0/add_R/use_fabric.adder/Madd_c_lut [3]),
    .O(\BU2/U0/add_R/use_fabric.adder/Madd_c_cy [3])
  );
  XORCY   \BU2/U0/add_R/use_fabric.adder/Madd_c_xor<3>  (
    .CI(\BU2/U0/add_R/use_fabric.adder/Madd_c_cy [2]),
    .LI(\BU2/U0/add_R/use_fabric.adder/Madd_c_lut [3]),
    .O(\BU2/U0/add_R/use_fabric.adder/c [3])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/add_R/use_fabric.adder/Madd_c_lut<4>  (
    .I0(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_20_154 ),
    .I1(\BU2/U0/del_Y/shift_register_4_4_184 ),
    .O(\BU2/U0/add_R/use_fabric.adder/Madd_c_lut [4])
  );
  MUXCY   \BU2/U0/add_R/use_fabric.adder/Madd_c_cy<4>  (
    .CI(\BU2/U0/add_R/use_fabric.adder/Madd_c_cy [3]),
    .DI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_20_154 ),
    .S(\BU2/U0/add_R/use_fabric.adder/Madd_c_lut [4]),
    .O(\BU2/U0/add_R/use_fabric.adder/Madd_c_cy [4])
  );
  XORCY   \BU2/U0/add_R/use_fabric.adder/Madd_c_xor<4>  (
    .CI(\BU2/U0/add_R/use_fabric.adder/Madd_c_cy [3]),
    .LI(\BU2/U0/add_R/use_fabric.adder/Madd_c_lut [4]),
    .O(\BU2/U0/add_R/use_fabric.adder/c [4])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/add_R/use_fabric.adder/Madd_c_lut<5>  (
    .I0(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_21_156 ),
    .I1(\BU2/U0/del_Y/shift_register_4_5_180 ),
    .O(\BU2/U0/add_R/use_fabric.adder/Madd_c_lut [5])
  );
  MUXCY   \BU2/U0/add_R/use_fabric.adder/Madd_c_cy<5>  (
    .CI(\BU2/U0/add_R/use_fabric.adder/Madd_c_cy [4]),
    .DI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_21_156 ),
    .S(\BU2/U0/add_R/use_fabric.adder/Madd_c_lut [5]),
    .O(\BU2/U0/add_R/use_fabric.adder/Madd_c_cy [5])
  );
  XORCY   \BU2/U0/add_R/use_fabric.adder/Madd_c_xor<5>  (
    .CI(\BU2/U0/add_R/use_fabric.adder/Madd_c_cy [4]),
    .LI(\BU2/U0/add_R/use_fabric.adder/Madd_c_lut [5]),
    .O(\BU2/U0/add_R/use_fabric.adder/c [5])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/add_R/use_fabric.adder/Madd_c_lut<6>  (
    .I0(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_22_158 ),
    .I1(\BU2/U0/del_Y/shift_register_4_6_176 ),
    .O(\BU2/U0/add_R/use_fabric.adder/Madd_c_lut [6])
  );
  MUXCY   \BU2/U0/add_R/use_fabric.adder/Madd_c_cy<6>  (
    .CI(\BU2/U0/add_R/use_fabric.adder/Madd_c_cy [5]),
    .DI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_22_158 ),
    .S(\BU2/U0/add_R/use_fabric.adder/Madd_c_lut [6]),
    .O(\BU2/U0/add_R/use_fabric.adder/Madd_c_cy [6])
  );
  XORCY   \BU2/U0/add_R/use_fabric.adder/Madd_c_xor<6>  (
    .CI(\BU2/U0/add_R/use_fabric.adder/Madd_c_cy [5]),
    .LI(\BU2/U0/add_R/use_fabric.adder/Madd_c_lut [6]),
    .O(\BU2/U0/add_R/use_fabric.adder/c [6])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/add_R/use_fabric.adder/Madd_c_lut<7>  (
    .I0(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_23_160 ),
    .I1(\BU2/U0/del_Y/shift_register_4_7_172 ),
    .O(\BU2/U0/add_R/use_fabric.adder/Madd_c_lut [7])
  );
  MUXCY   \BU2/U0/add_R/use_fabric.adder/Madd_c_cy<7>  (
    .CI(\BU2/U0/add_R/use_fabric.adder/Madd_c_cy [6]),
    .DI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_23_160 ),
    .S(\BU2/U0/add_R/use_fabric.adder/Madd_c_lut [7]),
    .O(\BU2/U0/add_R/use_fabric.adder/Madd_c_cy [7])
  );
  XORCY   \BU2/U0/add_R/use_fabric.adder/Madd_c_xor<7>  (
    .CI(\BU2/U0/add_R/use_fabric.adder/Madd_c_cy [6]),
    .LI(\BU2/U0/add_R/use_fabric.adder/Madd_c_lut [7]),
    .O(\BU2/U0/add_R/use_fabric.adder/c [7])
  );
  MUXCY   \BU2/U0/add_R/use_fabric.adder/Madd_c_cy<8>  (
    .CI(\BU2/U0/add_R/use_fabric.adder/Madd_c_cy [7]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/add_R/use_fabric.adder/Madd_c_cy<8>_rt_204 ),
    .O(\BU2/U0/add_R/use_fabric.adder/Madd_c_cy [8])
  );
  XORCY   \BU2/U0/add_R/use_fabric.adder/Madd_c_xor<8>  (
    .CI(\BU2/U0/add_R/use_fabric.adder/Madd_c_cy [7]),
    .LI(\BU2/U0/add_R/use_fabric.adder/Madd_c_cy<8>_rt_204 ),
    .O(\BU2/U0/add_R/use_fabric.adder/c [8])
  );
  XORCY   \BU2/U0/add_R/use_fabric.adder/Madd_c_xor<9>  (
    .CI(\BU2/U0/add_R/use_fabric.adder/Madd_c_cy [8]),
    .LI(\BU2/U0/add_R/use_fabric.adder/Madd_c_xor<9>_rt_201 ),
    .O(\BU2/U0/add_R/use_fabric.adder/c [9])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/add_G/use_fabric.adder/Madd_c_lut<0>  (
    .I0(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_16_128 ),
    .I1(\BU2/U0/del_Y/shift_register_4_0_199 ),
    .O(\BU2/U0/add_G/use_fabric.adder/Madd_c_lut [0])
  );
  MUXCY   \BU2/U0/add_G/use_fabric.adder/Madd_c_cy<0>  (
    .CI(\BU2/N0 ),
    .DI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_16_128 ),
    .S(\BU2/U0/add_G/use_fabric.adder/Madd_c_lut [0]),
    .O(\BU2/U0/add_G/use_fabric.adder/Madd_c_cy [0])
  );
  XORCY   \BU2/U0/add_G/use_fabric.adder/Madd_c_xor<0>  (
    .CI(\BU2/N0 ),
    .LI(\BU2/U0/add_G/use_fabric.adder/Madd_c_lut [0]),
    .O(\BU2/U0/add_G/use_fabric.adder/c [0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/add_G/use_fabric.adder/Madd_c_lut<1>  (
    .I0(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_17_130 ),
    .I1(\BU2/U0/del_Y/shift_register_4_1_196 ),
    .O(\BU2/U0/add_G/use_fabric.adder/Madd_c_lut [1])
  );
  MUXCY   \BU2/U0/add_G/use_fabric.adder/Madd_c_cy<1>  (
    .CI(\BU2/U0/add_G/use_fabric.adder/Madd_c_cy [0]),
    .DI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_17_130 ),
    .S(\BU2/U0/add_G/use_fabric.adder/Madd_c_lut [1]),
    .O(\BU2/U0/add_G/use_fabric.adder/Madd_c_cy [1])
  );
  XORCY   \BU2/U0/add_G/use_fabric.adder/Madd_c_xor<1>  (
    .CI(\BU2/U0/add_G/use_fabric.adder/Madd_c_cy [0]),
    .LI(\BU2/U0/add_G/use_fabric.adder/Madd_c_lut [1]),
    .O(\BU2/U0/add_G/use_fabric.adder/c [1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/add_G/use_fabric.adder/Madd_c_lut<2>  (
    .I0(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_18_132 ),
    .I1(\BU2/U0/del_Y/shift_register_4_2_192 ),
    .O(\BU2/U0/add_G/use_fabric.adder/Madd_c_lut [2])
  );
  MUXCY   \BU2/U0/add_G/use_fabric.adder/Madd_c_cy<2>  (
    .CI(\BU2/U0/add_G/use_fabric.adder/Madd_c_cy [1]),
    .DI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_18_132 ),
    .S(\BU2/U0/add_G/use_fabric.adder/Madd_c_lut [2]),
    .O(\BU2/U0/add_G/use_fabric.adder/Madd_c_cy [2])
  );
  XORCY   \BU2/U0/add_G/use_fabric.adder/Madd_c_xor<2>  (
    .CI(\BU2/U0/add_G/use_fabric.adder/Madd_c_cy [1]),
    .LI(\BU2/U0/add_G/use_fabric.adder/Madd_c_lut [2]),
    .O(\BU2/U0/add_G/use_fabric.adder/c [2])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/add_G/use_fabric.adder/Madd_c_lut<3>  (
    .I0(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_19_134 ),
    .I1(\BU2/U0/del_Y/shift_register_4_3_188 ),
    .O(\BU2/U0/add_G/use_fabric.adder/Madd_c_lut [3])
  );
  MUXCY   \BU2/U0/add_G/use_fabric.adder/Madd_c_cy<3>  (
    .CI(\BU2/U0/add_G/use_fabric.adder/Madd_c_cy [2]),
    .DI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_19_134 ),
    .S(\BU2/U0/add_G/use_fabric.adder/Madd_c_lut [3]),
    .O(\BU2/U0/add_G/use_fabric.adder/Madd_c_cy [3])
  );
  XORCY   \BU2/U0/add_G/use_fabric.adder/Madd_c_xor<3>  (
    .CI(\BU2/U0/add_G/use_fabric.adder/Madd_c_cy [2]),
    .LI(\BU2/U0/add_G/use_fabric.adder/Madd_c_lut [3]),
    .O(\BU2/U0/add_G/use_fabric.adder/c [3])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/add_G/use_fabric.adder/Madd_c_lut<4>  (
    .I0(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_20_136 ),
    .I1(\BU2/U0/del_Y/shift_register_4_4_184 ),
    .O(\BU2/U0/add_G/use_fabric.adder/Madd_c_lut [4])
  );
  MUXCY   \BU2/U0/add_G/use_fabric.adder/Madd_c_cy<4>  (
    .CI(\BU2/U0/add_G/use_fabric.adder/Madd_c_cy [3]),
    .DI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_20_136 ),
    .S(\BU2/U0/add_G/use_fabric.adder/Madd_c_lut [4]),
    .O(\BU2/U0/add_G/use_fabric.adder/Madd_c_cy [4])
  );
  XORCY   \BU2/U0/add_G/use_fabric.adder/Madd_c_xor<4>  (
    .CI(\BU2/U0/add_G/use_fabric.adder/Madd_c_cy [3]),
    .LI(\BU2/U0/add_G/use_fabric.adder/Madd_c_lut [4]),
    .O(\BU2/U0/add_G/use_fabric.adder/c [4])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/add_G/use_fabric.adder/Madd_c_lut<5>  (
    .I0(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_21_138 ),
    .I1(\BU2/U0/del_Y/shift_register_4_5_180 ),
    .O(\BU2/U0/add_G/use_fabric.adder/Madd_c_lut [5])
  );
  MUXCY   \BU2/U0/add_G/use_fabric.adder/Madd_c_cy<5>  (
    .CI(\BU2/U0/add_G/use_fabric.adder/Madd_c_cy [4]),
    .DI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_21_138 ),
    .S(\BU2/U0/add_G/use_fabric.adder/Madd_c_lut [5]),
    .O(\BU2/U0/add_G/use_fabric.adder/Madd_c_cy [5])
  );
  XORCY   \BU2/U0/add_G/use_fabric.adder/Madd_c_xor<5>  (
    .CI(\BU2/U0/add_G/use_fabric.adder/Madd_c_cy [4]),
    .LI(\BU2/U0/add_G/use_fabric.adder/Madd_c_lut [5]),
    .O(\BU2/U0/add_G/use_fabric.adder/c [5])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/add_G/use_fabric.adder/Madd_c_lut<6>  (
    .I0(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_22_140 ),
    .I1(\BU2/U0/del_Y/shift_register_4_6_176 ),
    .O(\BU2/U0/add_G/use_fabric.adder/Madd_c_lut [6])
  );
  MUXCY   \BU2/U0/add_G/use_fabric.adder/Madd_c_cy<6>  (
    .CI(\BU2/U0/add_G/use_fabric.adder/Madd_c_cy [5]),
    .DI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_22_140 ),
    .S(\BU2/U0/add_G/use_fabric.adder/Madd_c_lut [6]),
    .O(\BU2/U0/add_G/use_fabric.adder/Madd_c_cy [6])
  );
  XORCY   \BU2/U0/add_G/use_fabric.adder/Madd_c_xor<6>  (
    .CI(\BU2/U0/add_G/use_fabric.adder/Madd_c_cy [5]),
    .LI(\BU2/U0/add_G/use_fabric.adder/Madd_c_lut [6]),
    .O(\BU2/U0/add_G/use_fabric.adder/c [6])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/add_G/use_fabric.adder/Madd_c_lut<7>  (
    .I0(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_23_142 ),
    .I1(\BU2/U0/del_Y/shift_register_4_7_172 ),
    .O(\BU2/U0/add_G/use_fabric.adder/Madd_c_lut [7])
  );
  MUXCY   \BU2/U0/add_G/use_fabric.adder/Madd_c_cy<7>  (
    .CI(\BU2/U0/add_G/use_fabric.adder/Madd_c_cy [6]),
    .DI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_23_142 ),
    .S(\BU2/U0/add_G/use_fabric.adder/Madd_c_lut [7]),
    .O(\BU2/U0/add_G/use_fabric.adder/Madd_c_cy [7])
  );
  XORCY   \BU2/U0/add_G/use_fabric.adder/Madd_c_xor<7>  (
    .CI(\BU2/U0/add_G/use_fabric.adder/Madd_c_cy [6]),
    .LI(\BU2/U0/add_G/use_fabric.adder/Madd_c_lut [7]),
    .O(\BU2/U0/add_G/use_fabric.adder/c [7])
  );
  MUXCY   \BU2/U0/add_G/use_fabric.adder/Madd_c_cy<8>  (
    .CI(\BU2/U0/add_G/use_fabric.adder/Madd_c_cy [7]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/add_G/use_fabric.adder/Madd_c_cy<8>_rt_167 ),
    .O(\BU2/U0/add_G/use_fabric.adder/Madd_c_cy [8])
  );
  XORCY   \BU2/U0/add_G/use_fabric.adder/Madd_c_xor<8>  (
    .CI(\BU2/U0/add_G/use_fabric.adder/Madd_c_cy [7]),
    .LI(\BU2/U0/add_G/use_fabric.adder/Madd_c_cy<8>_rt_167 ),
    .O(\BU2/U0/add_G/use_fabric.adder/c [8])
  );
  XORCY   \BU2/U0/add_G/use_fabric.adder/Madd_c_xor<9>  (
    .CI(\BU2/U0/add_G/use_fabric.adder/Madd_c_cy [8]),
    .LI(\BU2/U0/add_G/use_fabric.adder/Madd_c_xor<9>_rt_164 ),
    .O(\BU2/U0/add_G/use_fabric.adder/c [9])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_24  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/c [24]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_24_162 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_23  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/c [23]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_23_160 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_22  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/c [22]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_22_158 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_21  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/c [21]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_21_156 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_20  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/c [20]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_20_154 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_19  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/c [19]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_19_152 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_18  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/c [18]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_18_150 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_17  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/c [17]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_17_148 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_16  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/c [16]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_16_146 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_24  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/c [24]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_24_144 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_23  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/c [23]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_23_142 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_22  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/c [22]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_22_140 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_21  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/c [21]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_21_138 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_20  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/c [20]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_20_136 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_19  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/c [19]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_19_134 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_18  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/c [18]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_18_132 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_17  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/c [17]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_17_130 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_16  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/c [16]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_16_128 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_24  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c [24]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_24_126 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_23  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c [23]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_23_124 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_22  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c [22]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_22_122 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_21  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c [21]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_21_120 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_20  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c [20]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_20_118 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_19  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c [19]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_19_116 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_18  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c [18]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_18_114 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_17  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c [17]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_17_112 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_16  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c [16]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_16_110 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_15  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c [15]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_15_108 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_14  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c [14]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_14_106 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_13  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c [13]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_13_104 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_12  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c [12]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_12_102 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_11  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c [11]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_11_100 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_10  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c [10]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_10_98 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_9  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c [9]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_9_96 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_8  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c [8]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_8_94 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_7  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c [7]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_7_92 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_6  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_6_89 ),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_6_90 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_5  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_5_87 ),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_5_88 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_4  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_4_85 ),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_4_86 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_3  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_3_83 ),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_3_84 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_2  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_2_81 ),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_2_82 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_1  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_1_79 ),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_1_80 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_0  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_0_77 ),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_0_78 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_24  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/c [24]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_24_76 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_23  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/c [23]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_23_74 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_22  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/c [22]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_22_72 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_21  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/c [21]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_21_70 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_20  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/c [20]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_20_68 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_19  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/c [19]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_19_66 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_18  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/c [18]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_18_64 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_17  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/c [17]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_17_62 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_16  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/c [16]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_16_60 )
  );
  VCC   \BU2/XST_VCC  (
    .P(\BU2/N1 )
  );
  GND   \BU2/XST_GND  (
    .G(\BU2/N0 )
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

    wire GSR;
    wire GTS;
    wire PRLD;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

// synthesis translate_on
