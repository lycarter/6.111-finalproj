////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: K.39
//  \   \         Application: netgen
//  /   /         Filename: ycrcb2rgb.v
// /___/   /\     Timestamp: Sun Dec 11 18:31:03 2016
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
  input [9 : 0] cb;
  input [9 : 0] cr;
  output [7 : 0] b;
  output [7 : 0] g;
  output [7 : 0] r;
  input [9 : 0] y;
  
  // synthesis translate_off
  
  wire \BU2/Mshreg_pix_en_out_694 ;
  wire \BU2/Mshreg_v_sync_out_693 ;
  wire \BU2/U0/del_Y/Mshreg_shift_register_4_9_692 ;
  wire \BU2/U0/del_Y/Mshreg_shift_register_4_8_691 ;
  wire \BU2/Mshreg_h_sync_out_690 ;
  wire \BU2/U0/del_Y/Mshreg_shift_register_4_6_689 ;
  wire \BU2/U0/del_Y/Mshreg_shift_register_4_5_688 ;
  wire \BU2/U0/del_Y/Mshreg_shift_register_4_7_687 ;
  wire \BU2/U0/del_Y/Mshreg_shift_register_4_3_686 ;
  wire \BU2/U0/del_Y/Mshreg_shift_register_4_2_685 ;
  wire \BU2/U0/del_Y/Mshreg_shift_register_4_4_684 ;
  wire \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_26_683 ;
  wire \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_25_682 ;
  wire \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_24_681 ;
  wire \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_23_680 ;
  wire \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_22_679 ;
  wire \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_21_678 ;
  wire \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_20_677 ;
  wire \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_19_676 ;
  wire \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_18_675 ;
  wire \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_17_674 ;
  wire \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_16_673 ;
  wire \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_15_672 ;
  wire \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_14_671 ;
  wire \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_13_670 ;
  wire \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_27_669 ;
  wire \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_24_668 ;
  wire \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_23_667 ;
  wire \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_22_666 ;
  wire \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_21_665 ;
  wire \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_20_664 ;
  wire \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_19_663 ;
  wire \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_18_662 ;
  wire \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_17_661 ;
  wire \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_16_660 ;
  wire \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_15_659 ;
  wire \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_14_658 ;
  wire \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_13_657 ;
  wire \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_12_656 ;
  wire \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_11_655 ;
  wire \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_10_654 ;
  wire \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_9_653 ;
  wire \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_26_652 ;
  wire \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_25_651 ;
  wire \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_24_650 ;
  wire \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_23_649 ;
  wire \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_22_648 ;
  wire \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_21_647 ;
  wire \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_20_646 ;
  wire \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_19_645 ;
  wire \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_18_644 ;
  wire \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_17_643 ;
  wire \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_16_642 ;
  wire \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_15_641 ;
  wire \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_14_640 ;
  wire \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_13_639 ;
  wire \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_12_638 ;
  wire \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_11_637 ;
  wire \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_10_636 ;
  wire \BU2/U0/clip.max_B/reg/shift_register_1_0_635 ;
  wire \BU2/U0/clip.max_B/reg/shift_register_1_1_633 ;
  wire \BU2/U0/clip.max_B/reg/shift_register_1_2_631 ;
  wire \BU2/U0/clip.max_B/reg/shift_register_1_3_629 ;
  wire \BU2/U0/clip.max_B/reg/shift_register_1_4_627 ;
  wire \BU2/U0/clip.max_B/reg/shift_register_1_5_625 ;
  wire \BU2/U0/clip.max_B/reg/shift_register_1_6_623 ;
  wire \BU2/U0/clip.max_B/reg/shift_register_1_7_621 ;
  wire \BU2/U0/clip.max_B/reg/shift_register_1_9_619 ;
  wire \BU2/U0/clip.max_G/reg/shift_register_1_0_618 ;
  wire \BU2/U0/clip.max_G/reg/shift_register_1_1_616 ;
  wire \BU2/U0/clip.max_G/reg/shift_register_1_2_614 ;
  wire \BU2/U0/clip.max_G/reg/shift_register_1_3_612 ;
  wire \BU2/U0/clip.max_G/reg/shift_register_1_4_610 ;
  wire \BU2/U0/clip.max_G/reg/shift_register_1_5_608 ;
  wire \BU2/U0/clip.max_G/reg/shift_register_1_6_606 ;
  wire \BU2/U0/clip.max_G/reg/shift_register_1_7_604 ;
  wire \BU2/U0/clip.max_G/reg/shift_register_1_9_602 ;
  wire \BU2/U0/clip.max_R/reg/shift_register_1_0_601 ;
  wire \BU2/U0/clip.max_R/reg/shift_register_1_1_599 ;
  wire \BU2/U0/clip.max_R/reg/shift_register_1_2_597 ;
  wire \BU2/U0/clip.max_R/reg/shift_register_1_3_595 ;
  wire \BU2/U0/clip.max_R/reg/shift_register_1_4_593 ;
  wire \BU2/U0/clip.max_R/reg/shift_register_1_5_591 ;
  wire \BU2/U0/clip.max_R/reg/shift_register_1_6_589 ;
  wire \BU2/U0/clip.max_R/reg/shift_register_1_7_587 ;
  wire \BU2/U0/clip.max_R/reg/shift_register_1_9_585 ;
  wire \BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_9_560 ;
  wire \BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_8_559 ;
  wire \BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_7_558 ;
  wire \BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_6_557 ;
  wire \BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_5_556 ;
  wire \BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_4_555 ;
  wire \BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_3_554 ;
  wire \BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_2_553 ;
  wire \BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_1_552 ;
  wire \BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_0_551 ;
  wire \BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_9_550 ;
  wire \BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_8_549 ;
  wire \BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_7_548 ;
  wire \BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_6_547 ;
  wire \BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_5_546 ;
  wire \BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_4_545 ;
  wire \BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_3_544 ;
  wire \BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_2_543 ;
  wire \BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_1_542 ;
  wire \BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_0_541 ;
  wire \BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_9_540 ;
  wire \BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_8_539 ;
  wire \BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_7_538 ;
  wire \BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_6_537 ;
  wire \BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_5_536 ;
  wire \BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_4_535 ;
  wire \BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_3_534 ;
  wire \BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_2_533 ;
  wire \BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_1_532 ;
  wire \BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_0_531 ;
  wire \BU2/U0/del_Cb/shift_register_1_0_516 ;
  wire \BU2/U0/del_Cb/shift_register_1_1_515 ;
  wire \BU2/U0/del_Cb/shift_register_1_2_514 ;
  wire \BU2/U0/del_Cb/shift_register_1_3_513 ;
  wire \BU2/U0/del_Cb/shift_register_1_4_512 ;
  wire \BU2/U0/del_Cb/shift_register_1_5_511 ;
  wire \BU2/U0/del_Cb/shift_register_1_6_510 ;
  wire \BU2/U0/del_Cb/shift_register_1_7_509 ;
  wire \BU2/U0/del_Cb/shift_register_1_8_508 ;
  wire \BU2/U0/del_Cb/shift_register_1_9_507 ;
  wire \BU2/U0/del_Cr/shift_register_1_0_440 ;
  wire \BU2/U0/del_Cr/shift_register_1_1_439 ;
  wire \BU2/U0/del_Cr/shift_register_1_2_438 ;
  wire \BU2/U0/del_Cr/shift_register_1_3_437 ;
  wire \BU2/U0/del_Cr/shift_register_1_4_436 ;
  wire \BU2/U0/del_Cr/shift_register_1_5_435 ;
  wire \BU2/U0/del_Cr/shift_register_1_6_434 ;
  wire \BU2/U0/del_Cr/shift_register_1_7_433 ;
  wire \BU2/U0/del_Cr/shift_register_1_8_432 ;
  wire \BU2/U0/del_Cr/shift_register_1_9_431 ;
  wire \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut[11] ;
  wire \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<12>_rt_429 ;
  wire \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut[13] ;
  wire \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut[14] ;
  wire \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut[15] ;
  wire \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut[16] ;
  wire \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut[17] ;
  wire \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut[18] ;
  wire \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<19>_rt_415 ;
  wire \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut[20] ;
  wire \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<21>_rt_411 ;
  wire \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<22>_rt_409 ;
  wire \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<23>_rt_407 ;
  wire \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut[24] ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut[7] ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut[8] ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut[9] ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut[10] ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut[11] ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut[12] ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut[13] ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut[14] ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<15>_rt_388 ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<16>_rt_386 ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut[17] ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<18>_rt_382 ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<19>_rt_380 ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<20>_rt_378 ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<21>_rt_376 ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut[22] ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<23>_rt_372 ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_xor<24>_rt_370 ;
  wire \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut[8] ;
  wire \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<9>_rt_367 ;
  wire \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut[10] ;
  wire \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut[11] ;
  wire \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<12>_rt_361 ;
  wire \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<13>_rt_359 ;
  wire \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<14>_rt_357 ;
  wire \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<15>_rt_355 ;
  wire \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut[16] ;
  wire \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut[17] ;
  wire \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<18>_rt_349 ;
  wire \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut[19] ;
  wire \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut[20] ;
  wire \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut[21] ;
  wire \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<22>_rt_341 ;
  wire \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<23>_rt_339 ;
  wire \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut[24] ;
  wire \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_2_334 ;
  wire \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_3_332 ;
  wire \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_4_329 ;
  wire \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_5_326 ;
  wire \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_6_323 ;
  wire \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_7_320 ;
  wire \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_8_317 ;
  wire \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_9_314 ;
  wire \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_10_311 ;
  wire \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_11_308 ;
  wire \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_12_305 ;
  wire \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_13_302 ;
  wire \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_14_299 ;
  wire \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_15_296 ;
  wire \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_16_293 ;
  wire \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_17_290 ;
  wire \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_18_288 ;
  wire \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_19_285 ;
  wire \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_20_282 ;
  wire \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_21_279 ;
  wire \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_22_276 ;
  wire \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_23_273 ;
  wire \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_24_270 ;
  wire \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_25_267 ;
  wire \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_27_264 ;
  wire \BU2/U0/add_B/use_fabric.adder/Madd_c_cy<8>_rt_237 ;
  wire \BU2/U0/add_B/use_fabric.adder/Madd_c_xor<9>_rt_234 ;
  wire \BU2/U0/add_R/use_fabric.adder/Madd_c_cy<8>_rt_208 ;
  wire \BU2/U0/add_R/use_fabric.adder/Madd_c_xor<9>_rt_205 ;
  wire \BU2/U0/del_Y/shift_register_4_2_203 ;
  wire \BU2/U0/del_Y/shift_register_4_3_200 ;
  wire \BU2/U0/del_Y/shift_register_4_4_196 ;
  wire \BU2/U0/del_Y/shift_register_4_5_192 ;
  wire \BU2/U0/del_Y/shift_register_4_6_188 ;
  wire \BU2/U0/del_Y/shift_register_4_7_184 ;
  wire \BU2/U0/del_Y/shift_register_4_8_180 ;
  wire \BU2/U0/del_Y/shift_register_4_9_176 ;
  wire \BU2/U0/add_G/use_fabric.adder/Madd_c_cy<8>_rt_171 ;
  wire \BU2/U0/add_G/use_fabric.adder/Madd_c_xor<9>_rt_168 ;
  wire \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_24_166 ;
  wire \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_23_164 ;
  wire \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_22_162 ;
  wire \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_21_160 ;
  wire \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_20_158 ;
  wire \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_19_156 ;
  wire \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_18_154 ;
  wire \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_17_152 ;
  wire \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_16_150 ;
  wire \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_24_148 ;
  wire \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_23_146 ;
  wire \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_22_144 ;
  wire \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_21_142 ;
  wire \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_20_140 ;
  wire \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_19_138 ;
  wire \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_18_136 ;
  wire \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_17_134 ;
  wire \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_16_132 ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_24_130 ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_23_128 ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_22_126 ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_21_124 ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_20_122 ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_19_120 ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_18_118 ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_17_116 ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_16_114 ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_15_112 ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_14_110 ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_13_108 ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_12_106 ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_11_104 ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_10_102 ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_9_100 ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_8_98 ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_7_96 ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_6_94 ;
  wire \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_8_93 ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_5_92 ;
  wire \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_7_91 ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_4_90 ;
  wire \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_6_89 ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_3_88 ;
  wire \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_5_87 ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_2_86 ;
  wire \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_4_85 ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_1_84 ;
  wire \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_3_83 ;
  wire \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_0_82 ;
  wire \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_2_81 ;
  wire \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_24_80 ;
  wire \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_23_78 ;
  wire \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_22_76 ;
  wire \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_21_74 ;
  wire \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_20_72 ;
  wire \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_19_70 ;
  wire \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_18_68 ;
  wire \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_17_66 ;
  wire \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_16_64 ;
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
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_dCb/Mmult_c_P<12>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_dCb/Mmult_c_P<11>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_dCb/Mmult_c_P<10>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_dCb/Mmult_c_P<9>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_dCb/Mmult_c_P<8>_UNCONNECTED ;
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
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_aCr/Mmult_c_P<9>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_aCr/Mmult_c_P<8>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_aCr/Mmult_c_P<7>_UNCONNECTED ;
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
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_cCb/Mmult_c_P<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_cCb/Mmult_c_P<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_bCr/Mmult_c_P<35>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_bCr/Mmult_c_P<34>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_bCr/Mmult_c_P<33>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_bCr/Mmult_c_P<32>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_bCr/Mmult_c_P<31>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_bCr/Mmult_c_P<30>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_bCr/Mmult_c_P<29>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_bCr/Mmult_c_P<28>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_bCr/Mmult_c_P<27>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_bCr/Mmult_c_P<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/sp3_v2_v2p.mult_bCr/Mmult_c_P<0>_UNCONNECTED ;
  wire [9 : 0] y_2;
  wire [9 : 0] cr_3;
  wire [9 : 0] cb_4;
  wire [7 : 0] r_5;
  wire [7 : 0] g_6;
  wire [7 : 0] b_7;
  wire [7 : 0] \BU2/U0/clip.max_B/c ;
  wire [7 : 0] \BU2/U0/clip.max_G/c ;
  wire [7 : 0] \BU2/U0/clip.max_R/c ;
  wire [7 : 0] \BU2/U0/clamp.min_B/c ;
  wire [7 : 0] \BU2/U0/clamp.min_G/c ;
  wire [7 : 0] \BU2/U0/clamp.min_R/c ;
  wire [26 : 13] \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register<1> ;
  wire [26 : 10] \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> ;
  wire [25 : 2] \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> ;
  wire [26 : 2] \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> ;
  wire [23 : 11] \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy ;
  wire [23 : 7] \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy ;
  wire [23 : 8] \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy ;
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
    cb_4[9] = cb[9],
    cb_4[8] = cb[8],
    cb_4[7] = cb[7],
    cb_4[6] = cb[6],
    cb_4[5] = cb[5],
    cb_4[4] = cb[4],
    cb_4[3] = cb[3],
    cb_4[2] = cb[2],
    cb_4[1] = cb[1],
    cb_4[0] = cb[0],
    cr_3[9] = cr[9],
    cr_3[8] = cr[8],
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
    y_2[9] = y[9],
    y_2[8] = y[8],
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
    .D(\BU2/Mshreg_pix_en_out_694 ),
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
    .Q(\BU2/Mshreg_pix_en_out_694 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/v_sync_out  (
    .C(clk),
    .CE(ce),
    .D(\BU2/Mshreg_v_sync_out_693 ),
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
    .Q(\BU2/Mshreg_v_sync_out_693 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/del_Y/shift_register_4_9  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/del_Y/Mshreg_shift_register_4_9_692 ),
    .Q(\BU2/U0/del_Y/shift_register_4_9_176 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \BU2/U0/del_Y/Mshreg_shift_register_4_9  (
    .A0(\BU2/N0 ),
    .A1(\BU2/N1 ),
    .A2(\BU2/N0 ),
    .A3(\BU2/N0 ),
    .CE(ce),
    .CLK(clk),
    .D(y_2[9]),
    .Q(\BU2/U0/del_Y/Mshreg_shift_register_4_9_692 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/del_Y/shift_register_4_8  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/del_Y/Mshreg_shift_register_4_8_691 ),
    .Q(\BU2/U0/del_Y/shift_register_4_8_180 )
  );
  SRL16E #(
    .INIT ( 16'h0000 ))
  \BU2/U0/del_Y/Mshreg_shift_register_4_8  (
    .A0(\BU2/N0 ),
    .A1(\BU2/N1 ),
    .A2(\BU2/N0 ),
    .A3(\BU2/N0 ),
    .CE(ce),
    .CLK(clk),
    .D(y_2[8]),
    .Q(\BU2/U0/del_Y/Mshreg_shift_register_4_8_691 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/h_sync_out  (
    .C(clk),
    .CE(ce),
    .D(\BU2/Mshreg_h_sync_out_690 ),
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
    .Q(\BU2/Mshreg_h_sync_out_690 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/del_Y/shift_register_4_6  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/del_Y/Mshreg_shift_register_4_6_689 ),
    .Q(\BU2/U0/del_Y/shift_register_4_6_188 )
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
    .Q(\BU2/U0/del_Y/Mshreg_shift_register_4_6_689 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/del_Y/shift_register_4_5  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/del_Y/Mshreg_shift_register_4_5_688 ),
    .Q(\BU2/U0/del_Y/shift_register_4_5_192 )
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
    .Q(\BU2/U0/del_Y/Mshreg_shift_register_4_5_688 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/del_Y/shift_register_4_7  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/del_Y/Mshreg_shift_register_4_7_687 ),
    .Q(\BU2/U0/del_Y/shift_register_4_7_184 )
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
    .Q(\BU2/U0/del_Y/Mshreg_shift_register_4_7_687 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/del_Y/shift_register_4_3  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/del_Y/Mshreg_shift_register_4_3_686 ),
    .Q(\BU2/U0/del_Y/shift_register_4_3_200 )
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
    .Q(\BU2/U0/del_Y/Mshreg_shift_register_4_3_686 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/del_Y/shift_register_4_2  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/del_Y/Mshreg_shift_register_4_2_685 ),
    .Q(\BU2/U0/del_Y/shift_register_4_2_203 )
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
    .Q(\BU2/U0/del_Y/Mshreg_shift_register_4_2_685 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/del_Y/shift_register_4_4  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/del_Y/Mshreg_shift_register_4_4_684 ),
    .Q(\BU2/U0/del_Y/shift_register_4_4_196 )
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
    .Q(\BU2/U0/del_Y/Mshreg_shift_register_4_4_684 )
  );
  INV   \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut<11>_INV_0  (
    .I(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_13_670 ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut[11] )
  );
  INV   \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut<13>_INV_0  (
    .I(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_15_672 ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut[13] )
  );
  INV   \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut<14>_INV_0  (
    .I(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_16_673 ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut[14] )
  );
  INV   \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut<15>_INV_0  (
    .I(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_17_674 ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut[15] )
  );
  INV   \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut<16>_INV_0  (
    .I(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_18_675 ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut[16] )
  );
  INV   \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut<17>_INV_0  (
    .I(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_19_676 ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut[17] )
  );
  INV   \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut<18>_INV_0  (
    .I(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_20_677 ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut[18] )
  );
  INV   \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut<20>_INV_0  (
    .I(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_22_679 ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut[20] )
  );
  INV   \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut<24>_INV_0  (
    .I(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_26_683 ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut[24] )
  );
  INV   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut<7>_INV_0  (
    .I(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_9_653 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut[7] )
  );
  INV   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut<8>_INV_0  (
    .I(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_10_654 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut[8] )
  );
  INV   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut<9>_INV_0  (
    .I(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_11_655 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut[9] )
  );
  INV   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut<10>_INV_0  (
    .I(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_12_656 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut[10] )
  );
  INV   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut<11>_INV_0  (
    .I(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_13_657 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut[11] )
  );
  INV   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut<12>_INV_0  (
    .I(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_14_658 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut[12] )
  );
  INV   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut<13>_INV_0  (
    .I(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_15_659 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut[13] )
  );
  INV   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut<14>_INV_0  (
    .I(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_16_660 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut[14] )
  );
  INV   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut<17>_INV_0  (
    .I(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_19_663 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut[17] )
  );
  INV   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut<22>_INV_0  (
    .I(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_24_668 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut[22] )
  );
  INV   \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut<8>_INV_0  (
    .I(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_10_636 ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut[8] )
  );
  INV   \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut<10>_INV_0  (
    .I(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_12_638 ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut[10] )
  );
  INV   \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut<11>_INV_0  (
    .I(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_13_639 ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut[11] )
  );
  INV   \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut<16>_INV_0  (
    .I(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_18_644 ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut[16] )
  );
  INV   \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut<17>_INV_0  (
    .I(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_19_645 ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut[17] )
  );
  INV   \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut<19>_INV_0  (
    .I(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_21_647 ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut[19] )
  );
  INV   \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut<20>_INV_0  (
    .I(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_22_648 ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut[20] )
  );
  INV   \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut<21>_INV_0  (
    .I(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_23_649 ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut[21] )
  );
  INV   \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut<24>_INV_0  (
    .I(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_26_652 ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut[24] )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_xor<24>_rt  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_27_669 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_xor<24>_rt_370 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/add_B/use_fabric.adder/Madd_c_xor<9>_rt  (
    .I0(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_24_80 ),
    .O(\BU2/U0/add_B/use_fabric.adder/Madd_c_xor<9>_rt_234 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/add_R/use_fabric.adder/Madd_c_xor<9>_rt  (
    .I0(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_24_166 ),
    .O(\BU2/U0/add_R/use_fabric.adder/Madd_c_xor<9>_rt_205 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/add_G/use_fabric.adder/Madd_c_xor<9>_rt  (
    .I0(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_24_148 ),
    .O(\BU2/U0/add_G/use_fabric.adder/Madd_c_xor<9>_rt_168 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<12>_rt  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_14_671 ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<12>_rt_429 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<19>_rt  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_21_678 ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<19>_rt_415 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<21>_rt  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_23_680 ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<21>_rt_411 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<22>_rt  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_24_681 ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<22>_rt_409 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<23>_rt  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_25_682 ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<23>_rt_407 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<15>_rt  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_17_661 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<15>_rt_388 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<16>_rt  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_18_662 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<16>_rt_386 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<18>_rt  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_20_664 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<18>_rt_382 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<19>_rt  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_21_665 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<19>_rt_380 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<20>_rt  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_22_666 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<20>_rt_378 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<21>_rt  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_23_667 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<21>_rt_376 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<23>_rt  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_27_669 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<23>_rt_372 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<9>_rt  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_11_637 ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<9>_rt_367 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<12>_rt  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_14_640 ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<12>_rt_361 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<13>_rt  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_15_641 ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<13>_rt_359 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<14>_rt  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_16_642 ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<14>_rt_357 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<15>_rt  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_17_643 ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<15>_rt_355 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<18>_rt  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_20_646 ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<18>_rt_349 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<22>_rt  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_24_650 ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<22>_rt_341 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<23>_rt  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_25_651 ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<23>_rt_339 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/add_B/use_fabric.adder/Madd_c_cy<8>_rt  (
    .I0(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_24_80 ),
    .O(\BU2/U0/add_B/use_fabric.adder/Madd_c_cy<8>_rt_237 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/add_R/use_fabric.adder/Madd_c_cy<8>_rt  (
    .I0(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_24_166 ),
    .O(\BU2/U0/add_R/use_fabric.adder/Madd_c_cy<8>_rt_208 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/add_G/use_fabric.adder/Madd_c_cy<8>_rt  (
    .I0(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_24_148 ),
    .O(\BU2/U0/add_G/use_fabric.adder/Madd_c_cy<8>_rt_171 )
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \BU2/U0/clip.max_B/c<0>1  (
    .I0(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_9_560 ),
    .I1(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_8_559 ),
    .I2(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_0_551 ),
    .O(\BU2/U0/clip.max_B/c [0])
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \BU2/U0/clip.max_B/c<1>1  (
    .I0(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_9_560 ),
    .I1(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_8_559 ),
    .I2(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_1_552 ),
    .O(\BU2/U0/clip.max_B/c [1])
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \BU2/U0/clip.max_B/c<2>1  (
    .I0(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_9_560 ),
    .I1(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_8_559 ),
    .I2(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_2_553 ),
    .O(\BU2/U0/clip.max_B/c [2])
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \BU2/U0/clip.max_B/c<3>1  (
    .I0(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_9_560 ),
    .I1(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_8_559 ),
    .I2(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_3_554 ),
    .O(\BU2/U0/clip.max_B/c [3])
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \BU2/U0/clip.max_B/c<4>1  (
    .I0(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_9_560 ),
    .I1(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_8_559 ),
    .I2(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_4_555 ),
    .O(\BU2/U0/clip.max_B/c [4])
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \BU2/U0/clip.max_B/c<5>1  (
    .I0(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_9_560 ),
    .I1(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_8_559 ),
    .I2(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_5_556 ),
    .O(\BU2/U0/clip.max_B/c [5])
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \BU2/U0/clip.max_B/c<6>1  (
    .I0(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_9_560 ),
    .I1(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_8_559 ),
    .I2(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_6_557 ),
    .O(\BU2/U0/clip.max_B/c [6])
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \BU2/U0/clip.max_B/c<7>1  (
    .I0(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_9_560 ),
    .I1(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_8_559 ),
    .I2(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_7_558 ),
    .O(\BU2/U0/clip.max_B/c [7])
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \BU2/U0/clip.max_G/c<0>1  (
    .I0(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_9_550 ),
    .I1(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_8_549 ),
    .I2(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_0_541 ),
    .O(\BU2/U0/clip.max_G/c [0])
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \BU2/U0/clip.max_G/c<1>1  (
    .I0(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_9_550 ),
    .I1(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_8_549 ),
    .I2(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_1_542 ),
    .O(\BU2/U0/clip.max_G/c [1])
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \BU2/U0/clip.max_G/c<2>1  (
    .I0(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_9_550 ),
    .I1(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_8_549 ),
    .I2(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_2_543 ),
    .O(\BU2/U0/clip.max_G/c [2])
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \BU2/U0/clip.max_G/c<3>1  (
    .I0(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_9_550 ),
    .I1(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_8_549 ),
    .I2(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_3_544 ),
    .O(\BU2/U0/clip.max_G/c [3])
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \BU2/U0/clip.max_G/c<4>1  (
    .I0(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_9_550 ),
    .I1(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_8_549 ),
    .I2(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_4_545 ),
    .O(\BU2/U0/clip.max_G/c [4])
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \BU2/U0/clip.max_G/c<5>1  (
    .I0(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_9_550 ),
    .I1(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_8_549 ),
    .I2(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_5_546 ),
    .O(\BU2/U0/clip.max_G/c [5])
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \BU2/U0/clip.max_G/c<6>1  (
    .I0(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_9_550 ),
    .I1(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_8_549 ),
    .I2(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_6_547 ),
    .O(\BU2/U0/clip.max_G/c [6])
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \BU2/U0/clip.max_G/c<7>1  (
    .I0(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_9_550 ),
    .I1(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_8_549 ),
    .I2(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_7_548 ),
    .O(\BU2/U0/clip.max_G/c [7])
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \BU2/U0/clip.max_R/c<0>1  (
    .I0(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_9_540 ),
    .I1(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_8_539 ),
    .I2(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_0_531 ),
    .O(\BU2/U0/clip.max_R/c [0])
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \BU2/U0/clip.max_R/c<1>1  (
    .I0(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_9_540 ),
    .I1(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_8_539 ),
    .I2(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_1_532 ),
    .O(\BU2/U0/clip.max_R/c [1])
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \BU2/U0/clip.max_R/c<2>1  (
    .I0(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_9_540 ),
    .I1(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_8_539 ),
    .I2(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_2_533 ),
    .O(\BU2/U0/clip.max_R/c [2])
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \BU2/U0/clip.max_R/c<3>1  (
    .I0(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_9_540 ),
    .I1(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_8_539 ),
    .I2(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_3_534 ),
    .O(\BU2/U0/clip.max_R/c [3])
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \BU2/U0/clip.max_R/c<4>1  (
    .I0(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_9_540 ),
    .I1(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_8_539 ),
    .I2(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_4_535 ),
    .O(\BU2/U0/clip.max_R/c [4])
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \BU2/U0/clip.max_R/c<5>1  (
    .I0(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_9_540 ),
    .I1(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_8_539 ),
    .I2(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_5_536 ),
    .O(\BU2/U0/clip.max_R/c [5])
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \BU2/U0/clip.max_R/c<6>1  (
    .I0(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_9_540 ),
    .I1(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_8_539 ),
    .I2(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_6_537 ),
    .O(\BU2/U0/clip.max_R/c [6])
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \BU2/U0/clip.max_R/c<7>1  (
    .I0(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_9_540 ),
    .I1(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_8_539 ),
    .I2(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_7_538 ),
    .O(\BU2/U0/clip.max_R/c [7])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \BU2/U0/clamp.min_B/c<0>1  (
    .I0(\BU2/U0/clip.max_B/reg/shift_register_1_9_619 ),
    .I1(\BU2/U0/clip.max_B/reg/shift_register_1_0_635 ),
    .O(\BU2/U0/clamp.min_B/c [0])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \BU2/U0/clamp.min_B/c<1>1  (
    .I0(\BU2/U0/clip.max_B/reg/shift_register_1_9_619 ),
    .I1(\BU2/U0/clip.max_B/reg/shift_register_1_1_633 ),
    .O(\BU2/U0/clamp.min_B/c [1])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \BU2/U0/clamp.min_B/c<2>1  (
    .I0(\BU2/U0/clip.max_B/reg/shift_register_1_9_619 ),
    .I1(\BU2/U0/clip.max_B/reg/shift_register_1_2_631 ),
    .O(\BU2/U0/clamp.min_B/c [2])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \BU2/U0/clamp.min_B/c<3>1  (
    .I0(\BU2/U0/clip.max_B/reg/shift_register_1_9_619 ),
    .I1(\BU2/U0/clip.max_B/reg/shift_register_1_3_629 ),
    .O(\BU2/U0/clamp.min_B/c [3])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \BU2/U0/clamp.min_B/c<4>1  (
    .I0(\BU2/U0/clip.max_B/reg/shift_register_1_9_619 ),
    .I1(\BU2/U0/clip.max_B/reg/shift_register_1_4_627 ),
    .O(\BU2/U0/clamp.min_B/c [4])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \BU2/U0/clamp.min_B/c<5>1  (
    .I0(\BU2/U0/clip.max_B/reg/shift_register_1_9_619 ),
    .I1(\BU2/U0/clip.max_B/reg/shift_register_1_5_625 ),
    .O(\BU2/U0/clamp.min_B/c [5])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \BU2/U0/clamp.min_B/c<6>1  (
    .I0(\BU2/U0/clip.max_B/reg/shift_register_1_9_619 ),
    .I1(\BU2/U0/clip.max_B/reg/shift_register_1_6_623 ),
    .O(\BU2/U0/clamp.min_B/c [6])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \BU2/U0/clamp.min_B/c<7>1  (
    .I0(\BU2/U0/clip.max_B/reg/shift_register_1_9_619 ),
    .I1(\BU2/U0/clip.max_B/reg/shift_register_1_7_621 ),
    .O(\BU2/U0/clamp.min_B/c [7])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \BU2/U0/clamp.min_G/c<0>1  (
    .I0(\BU2/U0/clip.max_G/reg/shift_register_1_9_602 ),
    .I1(\BU2/U0/clip.max_G/reg/shift_register_1_0_618 ),
    .O(\BU2/U0/clamp.min_G/c [0])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \BU2/U0/clamp.min_G/c<1>1  (
    .I0(\BU2/U0/clip.max_G/reg/shift_register_1_9_602 ),
    .I1(\BU2/U0/clip.max_G/reg/shift_register_1_1_616 ),
    .O(\BU2/U0/clamp.min_G/c [1])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \BU2/U0/clamp.min_G/c<2>1  (
    .I0(\BU2/U0/clip.max_G/reg/shift_register_1_9_602 ),
    .I1(\BU2/U0/clip.max_G/reg/shift_register_1_2_614 ),
    .O(\BU2/U0/clamp.min_G/c [2])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \BU2/U0/clamp.min_G/c<3>1  (
    .I0(\BU2/U0/clip.max_G/reg/shift_register_1_9_602 ),
    .I1(\BU2/U0/clip.max_G/reg/shift_register_1_3_612 ),
    .O(\BU2/U0/clamp.min_G/c [3])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \BU2/U0/clamp.min_G/c<4>1  (
    .I0(\BU2/U0/clip.max_G/reg/shift_register_1_9_602 ),
    .I1(\BU2/U0/clip.max_G/reg/shift_register_1_4_610 ),
    .O(\BU2/U0/clamp.min_G/c [4])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \BU2/U0/clamp.min_G/c<5>1  (
    .I0(\BU2/U0/clip.max_G/reg/shift_register_1_9_602 ),
    .I1(\BU2/U0/clip.max_G/reg/shift_register_1_5_608 ),
    .O(\BU2/U0/clamp.min_G/c [5])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \BU2/U0/clamp.min_G/c<6>1  (
    .I0(\BU2/U0/clip.max_G/reg/shift_register_1_9_602 ),
    .I1(\BU2/U0/clip.max_G/reg/shift_register_1_6_606 ),
    .O(\BU2/U0/clamp.min_G/c [6])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \BU2/U0/clamp.min_G/c<7>1  (
    .I0(\BU2/U0/clip.max_G/reg/shift_register_1_9_602 ),
    .I1(\BU2/U0/clip.max_G/reg/shift_register_1_7_604 ),
    .O(\BU2/U0/clamp.min_G/c [7])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \BU2/U0/clamp.min_R/c<0>1  (
    .I0(\BU2/U0/clip.max_R/reg/shift_register_1_9_585 ),
    .I1(\BU2/U0/clip.max_R/reg/shift_register_1_0_601 ),
    .O(\BU2/U0/clamp.min_R/c [0])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \BU2/U0/clamp.min_R/c<1>1  (
    .I0(\BU2/U0/clip.max_R/reg/shift_register_1_9_585 ),
    .I1(\BU2/U0/clip.max_R/reg/shift_register_1_1_599 ),
    .O(\BU2/U0/clamp.min_R/c [1])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \BU2/U0/clamp.min_R/c<2>1  (
    .I0(\BU2/U0/clip.max_R/reg/shift_register_1_9_585 ),
    .I1(\BU2/U0/clip.max_R/reg/shift_register_1_2_597 ),
    .O(\BU2/U0/clamp.min_R/c [2])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \BU2/U0/clamp.min_R/c<3>1  (
    .I0(\BU2/U0/clip.max_R/reg/shift_register_1_9_585 ),
    .I1(\BU2/U0/clip.max_R/reg/shift_register_1_3_595 ),
    .O(\BU2/U0/clamp.min_R/c [3])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \BU2/U0/clamp.min_R/c<4>1  (
    .I0(\BU2/U0/clip.max_R/reg/shift_register_1_9_585 ),
    .I1(\BU2/U0/clip.max_R/reg/shift_register_1_4_593 ),
    .O(\BU2/U0/clamp.min_R/c [4])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \BU2/U0/clamp.min_R/c<5>1  (
    .I0(\BU2/U0/clip.max_R/reg/shift_register_1_9_585 ),
    .I1(\BU2/U0/clip.max_R/reg/shift_register_1_5_591 ),
    .O(\BU2/U0/clamp.min_R/c [5])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \BU2/U0/clamp.min_R/c<6>1  (
    .I0(\BU2/U0/clip.max_R/reg/shift_register_1_9_585 ),
    .I1(\BU2/U0/clip.max_R/reg/shift_register_1_6_589 ),
    .O(\BU2/U0/clamp.min_R/c [6])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \BU2/U0/clamp.min_R/c<7>1  (
    .I0(\BU2/U0/clip.max_R/reg/shift_register_1_9_585 ),
    .I1(\BU2/U0/clip.max_R/reg/shift_register_1_7_587 ),
    .O(\BU2/U0/clamp.min_R/c [7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/del_Cb/shift_register_1_9  (
    .C(clk),
    .CE(ce),
    .D(cb_4[9]),
    .Q(\BU2/U0/del_Cb/shift_register_1_9_507 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/del_Cb/shift_register_1_8  (
    .C(clk),
    .CE(ce),
    .D(cb_4[8]),
    .Q(\BU2/U0/del_Cb/shift_register_1_8_508 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/del_Cb/shift_register_1_7  (
    .C(clk),
    .CE(ce),
    .D(cb_4[7]),
    .Q(\BU2/U0/del_Cb/shift_register_1_7_509 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/del_Cb/shift_register_1_6  (
    .C(clk),
    .CE(ce),
    .D(cb_4[6]),
    .Q(\BU2/U0/del_Cb/shift_register_1_6_510 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/del_Cb/shift_register_1_5  (
    .C(clk),
    .CE(ce),
    .D(cb_4[5]),
    .Q(\BU2/U0/del_Cb/shift_register_1_5_511 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/del_Cb/shift_register_1_4  (
    .C(clk),
    .CE(ce),
    .D(cb_4[4]),
    .Q(\BU2/U0/del_Cb/shift_register_1_4_512 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/del_Cb/shift_register_1_3  (
    .C(clk),
    .CE(ce),
    .D(cb_4[3]),
    .Q(\BU2/U0/del_Cb/shift_register_1_3_513 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/del_Cb/shift_register_1_2  (
    .C(clk),
    .CE(ce),
    .D(cb_4[2]),
    .Q(\BU2/U0/del_Cb/shift_register_1_2_514 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/del_Cb/shift_register_1_1  (
    .C(clk),
    .CE(ce),
    .D(cb_4[1]),
    .Q(\BU2/U0/del_Cb/shift_register_1_1_515 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/del_Cb/shift_register_1_0  (
    .C(clk),
    .CE(ce),
    .D(cb_4[0]),
    .Q(\BU2/U0/del_Cb/shift_register_1_0_516 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/del_Cr/shift_register_1_9  (
    .C(clk),
    .CE(ce),
    .D(cr_3[9]),
    .Q(\BU2/U0/del_Cr/shift_register_1_9_431 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/del_Cr/shift_register_1_8  (
    .C(clk),
    .CE(ce),
    .D(cr_3[8]),
    .Q(\BU2/U0/del_Cr/shift_register_1_8_432 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/del_Cr/shift_register_1_7  (
    .C(clk),
    .CE(ce),
    .D(cr_3[7]),
    .Q(\BU2/U0/del_Cr/shift_register_1_7_433 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/del_Cr/shift_register_1_6  (
    .C(clk),
    .CE(ce),
    .D(cr_3[6]),
    .Q(\BU2/U0/del_Cr/shift_register_1_6_434 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/del_Cr/shift_register_1_5  (
    .C(clk),
    .CE(ce),
    .D(cr_3[5]),
    .Q(\BU2/U0/del_Cr/shift_register_1_5_435 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/del_Cr/shift_register_1_4  (
    .C(clk),
    .CE(ce),
    .D(cr_3[4]),
    .Q(\BU2/U0/del_Cr/shift_register_1_4_436 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/del_Cr/shift_register_1_3  (
    .C(clk),
    .CE(ce),
    .D(cr_3[3]),
    .Q(\BU2/U0/del_Cr/shift_register_1_3_437 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/del_Cr/shift_register_1_2  (
    .C(clk),
    .CE(ce),
    .D(cr_3[2]),
    .Q(\BU2/U0/del_Cr/shift_register_1_2_438 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/del_Cr/shift_register_1_1  (
    .C(clk),
    .CE(ce),
    .D(cr_3[1]),
    .Q(\BU2/U0/del_Cr/shift_register_1_1_439 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/del_Cr/shift_register_1_0  (
    .C(clk),
    .CE(ce),
    .D(cr_3[0]),
    .Q(\BU2/U0/del_Cr/shift_register_1_0_440 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_26  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register<1> [26]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_26_683 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_25  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register<1> [25]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_25_682 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_24  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register<1> [24]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_24_681 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_23  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register<1> [23]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_23_680 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_22  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register<1> [22]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_22_679 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_21  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register<1> [21]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_21_678 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_20  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register<1> [20]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_20_677 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_19  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register<1> [19]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_19_676 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_18  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register<1> [18]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_18_675 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_17  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register<1> [17]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_17_674 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_16  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register<1> [16]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_16_673 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_15  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register<1> [15]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_15_672 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_14  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register<1> [14]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_14_671 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_13  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register<1> [13]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register_2_13_670 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_27  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [25]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_27_669 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_24  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [24]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_24_668 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_23  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [23]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_23_667 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_22  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [22]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_22_666 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_21  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [21]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_21_665 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_20  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [20]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_20_664 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_19  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [19]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_19_663 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_18  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [18]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_18_662 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_17  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [17]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_17_661 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_16  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [16]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_16_660 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_15  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [15]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_15_659 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_14  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [14]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_14_658 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_13  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [13]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_13_657 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_12  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [12]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_12_656 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_11  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [11]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_11_655 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_10  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [10]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_10_654 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_9  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [9]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_9_653 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_8  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [8]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_8_93 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_7  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [7]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_7_91 )
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
  \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_27  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [26]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_27_264 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_25  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [25]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_25_267 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_24  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [24]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_24_270 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_23  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [23]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_23_273 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_22  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [22]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_22_276 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_21  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [21]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_21_279 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_20  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [20]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_20_282 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_19  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [19]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_19_285 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_18  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [18]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_18_288 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_17  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [17]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_17_290 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_16  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [16]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_16_293 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_15  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [15]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_15_296 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_14  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [14]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_14_299 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_13  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [13]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_13_302 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_12  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [12]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_12_305 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_11  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [11]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_11_308 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_10  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [10]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_10_311 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_9  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [9]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_9_314 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_8  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [8]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_8_317 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_7  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [7]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_7_320 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_6  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [6]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_6_323 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_5  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [5]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_5_326 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_4  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [4]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_4_329 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_3  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [3]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_3_332 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_2  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [2]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_2_334 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_26  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [26]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_26_652 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_25  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [25]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_25_651 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_24  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [24]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_24_650 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_23  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [23]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_23_649 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_22  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [22]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_22_648 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_21  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [21]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_21_647 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_20  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [20]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_20_646 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_19  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [19]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_19_645 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_18  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [18]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_18_644 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_17  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [17]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_17_643 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_16  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [16]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_16_642 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_15  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [15]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_15_641 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_14  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [14]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_14_640 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_13  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [13]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_13_639 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_12  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [12]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_12_638 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_11  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [11]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_11_637 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_10  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [10]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register_2_10_636 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clip.max_B/reg/shift_register_1_0  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clip.max_B/c [0]),
    .R(sclr),
    .Q(\BU2/U0/clip.max_B/reg/shift_register_1_0_635 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clip.max_B/reg/shift_register_1_1  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clip.max_B/c [1]),
    .R(sclr),
    .Q(\BU2/U0/clip.max_B/reg/shift_register_1_1_633 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clip.max_B/reg/shift_register_1_2  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clip.max_B/c [2]),
    .R(sclr),
    .Q(\BU2/U0/clip.max_B/reg/shift_register_1_2_631 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clip.max_B/reg/shift_register_1_3  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clip.max_B/c [3]),
    .R(sclr),
    .Q(\BU2/U0/clip.max_B/reg/shift_register_1_3_629 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clip.max_B/reg/shift_register_1_4  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clip.max_B/c [4]),
    .R(sclr),
    .Q(\BU2/U0/clip.max_B/reg/shift_register_1_4_627 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clip.max_B/reg/shift_register_1_5  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clip.max_B/c [5]),
    .R(sclr),
    .Q(\BU2/U0/clip.max_B/reg/shift_register_1_5_625 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clip.max_B/reg/shift_register_1_6  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clip.max_B/c [6]),
    .R(sclr),
    .Q(\BU2/U0/clip.max_B/reg/shift_register_1_6_623 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clip.max_B/reg/shift_register_1_7  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clip.max_B/c [7]),
    .R(sclr),
    .Q(\BU2/U0/clip.max_B/reg/shift_register_1_7_621 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clip.max_B/reg/shift_register_1_9  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_9_560 ),
    .R(sclr),
    .Q(\BU2/U0/clip.max_B/reg/shift_register_1_9_619 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clip.max_G/reg/shift_register_1_0  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clip.max_G/c [0]),
    .R(sclr),
    .Q(\BU2/U0/clip.max_G/reg/shift_register_1_0_618 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clip.max_G/reg/shift_register_1_1  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clip.max_G/c [1]),
    .R(sclr),
    .Q(\BU2/U0/clip.max_G/reg/shift_register_1_1_616 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clip.max_G/reg/shift_register_1_2  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clip.max_G/c [2]),
    .R(sclr),
    .Q(\BU2/U0/clip.max_G/reg/shift_register_1_2_614 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clip.max_G/reg/shift_register_1_3  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clip.max_G/c [3]),
    .R(sclr),
    .Q(\BU2/U0/clip.max_G/reg/shift_register_1_3_612 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clip.max_G/reg/shift_register_1_4  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clip.max_G/c [4]),
    .R(sclr),
    .Q(\BU2/U0/clip.max_G/reg/shift_register_1_4_610 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clip.max_G/reg/shift_register_1_5  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clip.max_G/c [5]),
    .R(sclr),
    .Q(\BU2/U0/clip.max_G/reg/shift_register_1_5_608 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clip.max_G/reg/shift_register_1_6  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clip.max_G/c [6]),
    .R(sclr),
    .Q(\BU2/U0/clip.max_G/reg/shift_register_1_6_606 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clip.max_G/reg/shift_register_1_7  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clip.max_G/c [7]),
    .R(sclr),
    .Q(\BU2/U0/clip.max_G/reg/shift_register_1_7_604 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clip.max_G/reg/shift_register_1_9  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_9_550 ),
    .R(sclr),
    .Q(\BU2/U0/clip.max_G/reg/shift_register_1_9_602 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clip.max_R/reg/shift_register_1_0  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clip.max_R/c [0]),
    .R(sclr),
    .Q(\BU2/U0/clip.max_R/reg/shift_register_1_0_601 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clip.max_R/reg/shift_register_1_1  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clip.max_R/c [1]),
    .R(sclr),
    .Q(\BU2/U0/clip.max_R/reg/shift_register_1_1_599 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clip.max_R/reg/shift_register_1_2  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clip.max_R/c [2]),
    .R(sclr),
    .Q(\BU2/U0/clip.max_R/reg/shift_register_1_2_597 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clip.max_R/reg/shift_register_1_3  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clip.max_R/c [3]),
    .R(sclr),
    .Q(\BU2/U0/clip.max_R/reg/shift_register_1_3_595 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clip.max_R/reg/shift_register_1_4  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clip.max_R/c [4]),
    .R(sclr),
    .Q(\BU2/U0/clip.max_R/reg/shift_register_1_4_593 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clip.max_R/reg/shift_register_1_5  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clip.max_R/c [5]),
    .R(sclr),
    .Q(\BU2/U0/clip.max_R/reg/shift_register_1_5_591 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clip.max_R/reg/shift_register_1_6  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clip.max_R/c [6]),
    .R(sclr),
    .Q(\BU2/U0/clip.max_R/reg/shift_register_1_6_589 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clip.max_R/reg/shift_register_1_7  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/clip.max_R/c [7]),
    .R(sclr),
    .Q(\BU2/U0/clip.max_R/reg/shift_register_1_7_587 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/clip.max_R/reg/shift_register_1_9  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_9_540 ),
    .R(sclr),
    .Q(\BU2/U0/clip.max_R/reg/shift_register_1_9_585 )
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
    .Q(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_9_560 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_8  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/add_B/use_fabric.adder/c [8]),
    .R(sclr),
    .Q(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_8_559 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_7  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/add_B/use_fabric.adder/c [7]),
    .R(sclr),
    .Q(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_7_558 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_6  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/add_B/use_fabric.adder/c [6]),
    .R(sclr),
    .Q(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_6_557 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_5  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/add_B/use_fabric.adder/c [5]),
    .R(sclr),
    .Q(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_5_556 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_4  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/add_B/use_fabric.adder/c [4]),
    .R(sclr),
    .Q(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_4_555 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_3  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/add_B/use_fabric.adder/c [3]),
    .R(sclr),
    .Q(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_3_554 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_2  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/add_B/use_fabric.adder/c [2]),
    .R(sclr),
    .Q(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_2_553 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_1  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/add_B/use_fabric.adder/c [1]),
    .R(sclr),
    .Q(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_1_552 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_0  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/add_B/use_fabric.adder/c [0]),
    .R(sclr),
    .Q(\BU2/U0/add_B/use_fabric.adder/reg/shift_register_1_0_551 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_9  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/add_G/use_fabric.adder/c [9]),
    .R(sclr),
    .Q(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_9_550 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_8  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/add_G/use_fabric.adder/c [8]),
    .R(sclr),
    .Q(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_8_549 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_7  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/add_G/use_fabric.adder/c [7]),
    .R(sclr),
    .Q(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_7_548 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_6  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/add_G/use_fabric.adder/c [6]),
    .R(sclr),
    .Q(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_6_547 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_5  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/add_G/use_fabric.adder/c [5]),
    .R(sclr),
    .Q(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_5_546 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_4  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/add_G/use_fabric.adder/c [4]),
    .R(sclr),
    .Q(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_4_545 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_3  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/add_G/use_fabric.adder/c [3]),
    .R(sclr),
    .Q(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_3_544 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_2  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/add_G/use_fabric.adder/c [2]),
    .R(sclr),
    .Q(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_2_543 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_1  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/add_G/use_fabric.adder/c [1]),
    .R(sclr),
    .Q(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_1_542 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_0  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/add_G/use_fabric.adder/c [0]),
    .R(sclr),
    .Q(\BU2/U0/add_G/use_fabric.adder/reg/shift_register_1_0_541 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_9  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/add_R/use_fabric.adder/c [9]),
    .R(sclr),
    .Q(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_9_540 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_8  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/add_R/use_fabric.adder/c [8]),
    .R(sclr),
    .Q(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_8_539 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_7  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/add_R/use_fabric.adder/c [7]),
    .R(sclr),
    .Q(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_7_538 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_6  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/add_R/use_fabric.adder/c [6]),
    .R(sclr),
    .Q(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_6_537 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_5  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/add_R/use_fabric.adder/c [5]),
    .R(sclr),
    .Q(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_5_536 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_4  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/add_R/use_fabric.adder/c [4]),
    .R(sclr),
    .Q(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_4_535 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_3  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/add_R/use_fabric.adder/c [3]),
    .R(sclr),
    .Q(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_3_534 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_2  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/add_R/use_fabric.adder/c [2]),
    .R(sclr),
    .Q(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_2_533 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_1  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/add_R/use_fabric.adder/c [1]),
    .R(sclr),
    .Q(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_1_532 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_0  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/add_R/use_fabric.adder/c [0]),
    .R(sclr),
    .Q(\BU2/U0/add_R/use_fabric.adder/reg/shift_register_1_0_531 )
  );
  MULT18X18S   \BU2/U0/sp3_v2_v2p.mult_dCb/Mmult_c  (
    .C(clk),
    .CE(ce),
    .R(sclr),
    .A({\BU2/N0 , \BU2/N1 , \BU2/N1 , \BU2/N1 , \BU2/N0 , \BU2/N1 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N1 , \BU2/N1 , \BU2/N1 , 
\BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 }),
    .B({\BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/U0/del_Cb/shift_register_1_9_507 , 
\BU2/U0/del_Cb/shift_register_1_8_508 , \BU2/U0/del_Cb/shift_register_1_7_509 , \BU2/U0/del_Cb/shift_register_1_6_510 , 
\BU2/U0/del_Cb/shift_register_1_5_511 , \BU2/U0/del_Cb/shift_register_1_4_512 , \BU2/U0/del_Cb/shift_register_1_3_513 , 
\BU2/U0/del_Cb/shift_register_1_2_514 , \BU2/U0/del_Cb/shift_register_1_1_515 , \BU2/U0/del_Cb/shift_register_1_0_516 }),
    .P({\NLW_BU2/U0/sp3_v2_v2p.mult_dCb/Mmult_c_P<35>_UNCONNECTED , \NLW_BU2/U0/sp3_v2_v2p.mult_dCb/Mmult_c_P<34>_UNCONNECTED , 
\NLW_BU2/U0/sp3_v2_v2p.mult_dCb/Mmult_c_P<33>_UNCONNECTED , \NLW_BU2/U0/sp3_v2_v2p.mult_dCb/Mmult_c_P<32>_UNCONNECTED , 
\NLW_BU2/U0/sp3_v2_v2p.mult_dCb/Mmult_c_P<31>_UNCONNECTED , \NLW_BU2/U0/sp3_v2_v2p.mult_dCb/Mmult_c_P<30>_UNCONNECTED , 
\NLW_BU2/U0/sp3_v2_v2p.mult_dCb/Mmult_c_P<29>_UNCONNECTED , \NLW_BU2/U0/sp3_v2_v2p.mult_dCb/Mmult_c_P<28>_UNCONNECTED , 
\NLW_BU2/U0/sp3_v2_v2p.mult_dCb/Mmult_c_P<27>_UNCONNECTED , \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register<1> [26], 
\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register<1> [25], \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register<1> [24], 
\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register<1> [23], \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register<1> [22], 
\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register<1> [21], \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register<1> [20], 
\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register<1> [19], \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register<1> [18], 
\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register<1> [17], \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register<1> [16], 
\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register<1> [15], \BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register<1> [14], 
\BU2/U0/sp3_v2_v2p.mult_dCb/reg/shift_register<1> [13], \NLW_BU2/U0/sp3_v2_v2p.mult_dCb/Mmult_c_P<12>_UNCONNECTED , 
\NLW_BU2/U0/sp3_v2_v2p.mult_dCb/Mmult_c_P<11>_UNCONNECTED , \NLW_BU2/U0/sp3_v2_v2p.mult_dCb/Mmult_c_P<10>_UNCONNECTED , 
\NLW_BU2/U0/sp3_v2_v2p.mult_dCb/Mmult_c_P<9>_UNCONNECTED , \NLW_BU2/U0/sp3_v2_v2p.mult_dCb/Mmult_c_P<8>_UNCONNECTED , 
\NLW_BU2/U0/sp3_v2_v2p.mult_dCb/Mmult_c_P<7>_UNCONNECTED , \NLW_BU2/U0/sp3_v2_v2p.mult_dCb/Mmult_c_P<6>_UNCONNECTED , 
\NLW_BU2/U0/sp3_v2_v2p.mult_dCb/Mmult_c_P<5>_UNCONNECTED , \NLW_BU2/U0/sp3_v2_v2p.mult_dCb/Mmult_c_P<4>_UNCONNECTED , 
\NLW_BU2/U0/sp3_v2_v2p.mult_dCb/Mmult_c_P<3>_UNCONNECTED , \NLW_BU2/U0/sp3_v2_v2p.mult_dCb/Mmult_c_P<2>_UNCONNECTED , 
\NLW_BU2/U0/sp3_v2_v2p.mult_dCb/Mmult_c_P<1>_UNCONNECTED , \NLW_BU2/U0/sp3_v2_v2p.mult_dCb/Mmult_c_P<0>_UNCONNECTED })
  );
  MULT18X18S   \BU2/U0/sp3_v2_v2p.mult_aCr/Mmult_c  (
    .C(clk),
    .CE(ce),
    .R(sclr),
    .A({\BU2/N0 , \BU2/N1 , \BU2/N1 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N1 , \BU2/N0 , \BU2/N1 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N1 , \BU2/N0 , 
\BU2/N0 , \BU2/N1 , \BU2/N1 , \BU2/N0 }),
    .B({\BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/U0/del_Cr/shift_register_1_9_431 , 
\BU2/U0/del_Cr/shift_register_1_8_432 , \BU2/U0/del_Cr/shift_register_1_7_433 , \BU2/U0/del_Cr/shift_register_1_6_434 , 
\BU2/U0/del_Cr/shift_register_1_5_435 , \BU2/U0/del_Cr/shift_register_1_4_436 , \BU2/U0/del_Cr/shift_register_1_3_437 , 
\BU2/U0/del_Cr/shift_register_1_2_438 , \BU2/U0/del_Cr/shift_register_1_1_439 , \BU2/U0/del_Cr/shift_register_1_0_440 }),
    .P({\NLW_BU2/U0/sp3_v2_v2p.mult_aCr/Mmult_c_P<35>_UNCONNECTED , \NLW_BU2/U0/sp3_v2_v2p.mult_aCr/Mmult_c_P<34>_UNCONNECTED , 
\NLW_BU2/U0/sp3_v2_v2p.mult_aCr/Mmult_c_P<33>_UNCONNECTED , \NLW_BU2/U0/sp3_v2_v2p.mult_aCr/Mmult_c_P<32>_UNCONNECTED , 
\NLW_BU2/U0/sp3_v2_v2p.mult_aCr/Mmult_c_P<31>_UNCONNECTED , \NLW_BU2/U0/sp3_v2_v2p.mult_aCr/Mmult_c_P<30>_UNCONNECTED , 
\NLW_BU2/U0/sp3_v2_v2p.mult_aCr/Mmult_c_P<29>_UNCONNECTED , \NLW_BU2/U0/sp3_v2_v2p.mult_aCr/Mmult_c_P<28>_UNCONNECTED , 
\NLW_BU2/U0/sp3_v2_v2p.mult_aCr/Mmult_c_P<27>_UNCONNECTED , \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [26], 
\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [25], \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [24], 
\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [23], \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [22], 
\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [21], \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [20], 
\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [19], \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [18], 
\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [17], \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [16], 
\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [15], \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [14], 
\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [13], \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [12], 
\BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [11], \BU2/U0/sp3_v2_v2p.mult_aCr/reg/shift_register<1> [10], 
\NLW_BU2/U0/sp3_v2_v2p.mult_aCr/Mmult_c_P<9>_UNCONNECTED , \NLW_BU2/U0/sp3_v2_v2p.mult_aCr/Mmult_c_P<8>_UNCONNECTED , 
\NLW_BU2/U0/sp3_v2_v2p.mult_aCr/Mmult_c_P<7>_UNCONNECTED , \NLW_BU2/U0/sp3_v2_v2p.mult_aCr/Mmult_c_P<6>_UNCONNECTED , 
\NLW_BU2/U0/sp3_v2_v2p.mult_aCr/Mmult_c_P<5>_UNCONNECTED , \NLW_BU2/U0/sp3_v2_v2p.mult_aCr/Mmult_c_P<4>_UNCONNECTED , 
\NLW_BU2/U0/sp3_v2_v2p.mult_aCr/Mmult_c_P<3>_UNCONNECTED , \NLW_BU2/U0/sp3_v2_v2p.mult_aCr/Mmult_c_P<2>_UNCONNECTED , 
\NLW_BU2/U0/sp3_v2_v2p.mult_aCr/Mmult_c_P<1>_UNCONNECTED , \NLW_BU2/U0/sp3_v2_v2p.mult_aCr/Mmult_c_P<0>_UNCONNECTED })
  );
  MULT18X18S   \BU2/U0/sp3_v2_v2p.mult_cCb/Mmult_c  (
    .C(clk),
    .CE(ce),
    .R(sclr),
    .A({\BU2/N1 , \BU2/N1 , \BU2/N1 , \BU2/N1 , \BU2/N0 , \BU2/N1 , \BU2/N1 , \BU2/N0 , \BU2/N1 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , 
\BU2/N1 , \BU2/N1 , \BU2/N0 , \BU2/N1 }),
    .B({\BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , cb_4[9], cb_4[8], cb_4[7], cb_4[6], cb_4[5], cb_4[4], cb_4[3]
, cb_4[2], cb_4[1], cb_4[0]}),
    .P({\NLW_BU2/U0/sp3_v2_v2p.mult_cCb/Mmult_c_P<35>_UNCONNECTED , \NLW_BU2/U0/sp3_v2_v2p.mult_cCb/Mmult_c_P<34>_UNCONNECTED , 
\NLW_BU2/U0/sp3_v2_v2p.mult_cCb/Mmult_c_P<33>_UNCONNECTED , \NLW_BU2/U0/sp3_v2_v2p.mult_cCb/Mmult_c_P<32>_UNCONNECTED , 
\NLW_BU2/U0/sp3_v2_v2p.mult_cCb/Mmult_c_P<31>_UNCONNECTED , \NLW_BU2/U0/sp3_v2_v2p.mult_cCb/Mmult_c_P<30>_UNCONNECTED , 
\NLW_BU2/U0/sp3_v2_v2p.mult_cCb/Mmult_c_P<29>_UNCONNECTED , \NLW_BU2/U0/sp3_v2_v2p.mult_cCb/Mmult_c_P<28>_UNCONNECTED , 
\NLW_BU2/U0/sp3_v2_v2p.mult_cCb/Mmult_c_P<27>_UNCONNECTED , \NLW_BU2/U0/sp3_v2_v2p.mult_cCb/Mmult_c_P<26>_UNCONNECTED , 
\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [25], \BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register<1> [24], 
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
\NLW_BU2/U0/sp3_v2_v2p.mult_cCb/Mmult_c_P<1>_UNCONNECTED , \NLW_BU2/U0/sp3_v2_v2p.mult_cCb/Mmult_c_P<0>_UNCONNECTED })
  );
  MULT18X18S   \BU2/U0/sp3_v2_v2p.mult_bCr/Mmult_c  (
    .C(clk),
    .CE(ce),
    .R(sclr),
    .A({\BU2/N1 , \BU2/N1 , \BU2/N1 , \BU2/N0 , \BU2/N1 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N1 , \BU2/N0 , \BU2/N0 , \BU2/N1 , \BU2/N1 , 
\BU2/N0 , \BU2/N1 , \BU2/N0 , \BU2/N0 }),
    .B({\BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/U0/del_Cr/shift_register_1_9_431 , 
\BU2/U0/del_Cr/shift_register_1_8_432 , \BU2/U0/del_Cr/shift_register_1_7_433 , \BU2/U0/del_Cr/shift_register_1_6_434 , 
\BU2/U0/del_Cr/shift_register_1_5_435 , \BU2/U0/del_Cr/shift_register_1_4_436 , \BU2/U0/del_Cr/shift_register_1_3_437 , 
\BU2/U0/del_Cr/shift_register_1_2_438 , \BU2/U0/del_Cr/shift_register_1_1_439 , \BU2/U0/del_Cr/shift_register_1_0_440 }),
    .P({\NLW_BU2/U0/sp3_v2_v2p.mult_bCr/Mmult_c_P<35>_UNCONNECTED , \NLW_BU2/U0/sp3_v2_v2p.mult_bCr/Mmult_c_P<34>_UNCONNECTED , 
\NLW_BU2/U0/sp3_v2_v2p.mult_bCr/Mmult_c_P<33>_UNCONNECTED , \NLW_BU2/U0/sp3_v2_v2p.mult_bCr/Mmult_c_P<32>_UNCONNECTED , 
\NLW_BU2/U0/sp3_v2_v2p.mult_bCr/Mmult_c_P<31>_UNCONNECTED , \NLW_BU2/U0/sp3_v2_v2p.mult_bCr/Mmult_c_P<30>_UNCONNECTED , 
\NLW_BU2/U0/sp3_v2_v2p.mult_bCr/Mmult_c_P<29>_UNCONNECTED , \NLW_BU2/U0/sp3_v2_v2p.mult_bCr/Mmult_c_P<28>_UNCONNECTED , 
\NLW_BU2/U0/sp3_v2_v2p.mult_bCr/Mmult_c_P<27>_UNCONNECTED , \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [26], 
\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [25], \BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register<1> [24], 
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
\NLW_BU2/U0/sp3_v2_v2p.mult_bCr/Mmult_c_P<1>_UNCONNECTED , \NLW_BU2/U0/sp3_v2_v2p.mult_bCr/Mmult_c_P<0>_UNCONNECTED })
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<11>  (
    .CI(\BU2/N0 ),
    .DI(\BU2/N1 ),
    .S(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut[11] ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy [11])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<12>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy [11]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<12>_rt_429 ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy [12])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<13>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy [12]),
    .DI(\BU2/N1 ),
    .S(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut[13] ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy [13])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<14>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy [13]),
    .DI(\BU2/N1 ),
    .S(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut[14] ),
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
    .DI(\BU2/N1 ),
    .S(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut[17] ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy [17])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_xor<17>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy [16]),
    .LI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut[17] ),
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
    .DI(\BU2/N0 ),
    .S(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<19>_rt_415 ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy [19])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_xor<19>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy [18]),
    .LI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<19>_rt_415 ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/c [19])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<20>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy [19]),
    .DI(\BU2/N1 ),
    .S(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut[20] ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy [20])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_xor<20>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy [19]),
    .LI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_lut[20] ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/c [20])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<21>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy [20]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<21>_rt_411 ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy [21])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_xor<21>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy [20]),
    .LI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<21>_rt_411 ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/c [21])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<22>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy [21]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<22>_rt_409 ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy [22])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_xor<22>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy [21]),
    .LI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<22>_rt_409 ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/c [22])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<23>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy [22]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<23>_rt_407 ),
    .O(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy [23])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_xor<23>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy [22]),
    .LI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/Madd_c_cy<23>_rt_407 ),
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
    .DI(\BU2/N1 ),
    .S(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut[8] ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [8])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_xor<8>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [7]),
    .LI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut[8] ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c [8])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<9>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [8]),
    .DI(\BU2/N1 ),
    .S(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut[9] ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [9])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_xor<9>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [8]),
    .LI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut[9] ),
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
    .DI(\BU2/N1 ),
    .S(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut[11] ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [11])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_xor<11>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [10]),
    .LI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut[11] ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c [11])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<12>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [11]),
    .DI(\BU2/N1 ),
    .S(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut[12] ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [12])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_xor<12>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [11]),
    .LI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut[12] ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c [12])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<13>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [12]),
    .DI(\BU2/N1 ),
    .S(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut[13] ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [13])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_xor<13>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [12]),
    .LI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut[13] ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c [13])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<14>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [13]),
    .DI(\BU2/N1 ),
    .S(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut[14] ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [14])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_xor<14>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [13]),
    .LI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut[14] ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c [14])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<15>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [14]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<15>_rt_388 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [15])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_xor<15>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [14]),
    .LI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<15>_rt_388 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c [15])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<16>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [15]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<16>_rt_386 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [16])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_xor<16>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [15]),
    .LI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<16>_rt_386 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c [16])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<17>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [16]),
    .DI(\BU2/N1 ),
    .S(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut[17] ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [17])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_xor<17>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [16]),
    .LI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_lut[17] ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c [17])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<18>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [17]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<18>_rt_382 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [18])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_xor<18>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [17]),
    .LI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<18>_rt_382 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c [18])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<19>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [18]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<19>_rt_380 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [19])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_xor<19>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [18]),
    .LI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<19>_rt_380 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c [19])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<20>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [19]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<20>_rt_378 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [20])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_xor<20>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [19]),
    .LI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<20>_rt_378 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c [20])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<21>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [20]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<21>_rt_376 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [21])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_xor<21>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [20]),
    .LI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<21>_rt_376 ),
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
    .S(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<23>_rt_372 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [23])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_xor<23>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [22]),
    .LI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy<23>_rt_372 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c [23])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_xor<24>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_cy [23]),
    .LI(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/Madd_c_xor<24>_rt_370 ),
    .O(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c [24])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<8>  (
    .CI(\BU2/N0 ),
    .DI(\BU2/N1 ),
    .S(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut[8] ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy [8])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<9>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy [8]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<9>_rt_367 ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy [9])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<10>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy [9]),
    .DI(\BU2/N1 ),
    .S(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut[10] ),
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
    .DI(\BU2/N0 ),
    .S(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<12>_rt_361 ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy [12])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<13>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy [12]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<13>_rt_359 ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy [13])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<14>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy [13]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<14>_rt_357 ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy [14])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<15>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy [14]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<15>_rt_355 ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy [15])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<16>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy [15]),
    .DI(\BU2/N1 ),
    .S(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut[16] ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy [16])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_xor<16>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy [15]),
    .LI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut[16] ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/c [16])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<17>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy [16]),
    .DI(\BU2/N1 ),
    .S(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut[17] ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy [17])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_xor<17>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy [16]),
    .LI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_lut[17] ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/c [17])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<18>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy [17]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<18>_rt_349 ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy [18])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_xor<18>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy [17]),
    .LI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<18>_rt_349 ),
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
    .S(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<22>_rt_341 ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy [22])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_xor<22>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy [21]),
    .LI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<22>_rt_341 ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/c [22])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<23>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy [22]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<23>_rt_339 ),
    .O(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy [23])
  );
  XORCY   \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_xor<23>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy [22]),
    .LI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/Madd_c_cy<23>_rt_339 ),
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
    .I0(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_2_334 ),
    .I1(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_0_82 ),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [0])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy<0>  (
    .CI(\BU2/N0 ),
    .DI(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_2_334 ),
    .S(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [0]),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut<1>  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_3_332 ),
    .I1(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_1_84 ),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [1])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy<1>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [0]),
    .DI(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_3_332 ),
    .S(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [1]),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut<2>  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_4_329 ),
    .I1(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_2_86 ),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [2])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy<2>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [1]),
    .DI(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_4_329 ),
    .S(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [2]),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [2])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut<3>  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_5_326 ),
    .I1(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_3_88 ),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [3])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy<3>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [2]),
    .DI(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_5_326 ),
    .S(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [3]),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [3])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut<4>  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_6_323 ),
    .I1(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_4_90 ),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [4])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy<4>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [3]),
    .DI(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_6_323 ),
    .S(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [4]),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [4])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut<5>  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_7_320 ),
    .I1(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_5_92 ),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [5])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy<5>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [4]),
    .DI(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_7_320 ),
    .S(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [5]),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [5])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut<6>  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_8_317 ),
    .I1(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_6_94 ),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [6])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy<6>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [5]),
    .DI(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_8_317 ),
    .S(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [6]),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [6])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut<7>  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_9_314 ),
    .I1(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_7_96 ),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [7])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy<7>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [6]),
    .DI(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_9_314 ),
    .S(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [7]),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [7])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut<8>  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_10_311 ),
    .I1(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_8_98 ),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [8])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy<8>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [7]),
    .DI(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_10_311 ),
    .S(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [8]),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [8])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut<9>  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_11_308 ),
    .I1(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_9_100 ),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [9])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy<9>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [8]),
    .DI(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_11_308 ),
    .S(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [9]),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [9])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut<10>  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_12_305 ),
    .I1(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_10_102 ),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [10])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy<10>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [9]),
    .DI(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_12_305 ),
    .S(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [10]),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [10])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut<11>  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_13_302 ),
    .I1(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_11_104 ),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [11])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy<11>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [10]),
    .DI(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_13_302 ),
    .S(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [11]),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [11])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut<12>  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_14_299 ),
    .I1(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_12_106 ),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [12])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy<12>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [11]),
    .DI(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_14_299 ),
    .S(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [12]),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [12])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut<13>  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_15_296 ),
    .I1(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_13_108 ),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [13])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy<13>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [12]),
    .DI(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_15_296 ),
    .S(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [13]),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [13])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut<14>  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_16_293 ),
    .I1(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_14_110 ),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [14])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy<14>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [13]),
    .DI(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_16_293 ),
    .S(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [14]),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [14])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut<15>  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_17_290 ),
    .I1(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_15_112 ),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [15])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy<15>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [14]),
    .DI(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_17_290 ),
    .S(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [15]),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [15])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut<16>  (
    .I0(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_18_288 ),
    .I1(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_16_114 ),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [16])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy<16>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [15]),
    .DI(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_18_288 ),
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
    .I0(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_19_285 ),
    .I1(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_17_116 ),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [17])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy<17>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [16]),
    .DI(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_19_285 ),
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
    .I0(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_20_282 ),
    .I1(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_18_118 ),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [18])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy<18>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [17]),
    .DI(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_20_282 ),
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
    .I0(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_21_279 ),
    .I1(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_19_120 ),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [19])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy<19>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [18]),
    .DI(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_21_279 ),
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
    .I0(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_22_276 ),
    .I1(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_20_122 ),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [20])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy<20>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [19]),
    .DI(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_22_276 ),
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
    .I0(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_23_273 ),
    .I1(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_21_124 ),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [21])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy<21>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [20]),
    .DI(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_23_273 ),
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
    .I0(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_24_270 ),
    .I1(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_22_126 ),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [22])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy<22>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [21]),
    .DI(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_24_270 ),
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
    .I0(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_25_267 ),
    .I1(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_23_128 ),
    .O(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_lut [23])
  );
  MUXCY   \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy<23>  (
    .CI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/Madd_c_cy [22]),
    .DI(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_25_267 ),
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
    .I0(\BU2/U0/sp3_v2_v2p.mult_bCr/reg/shift_register_2_27_264 ),
    .I1(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_24_130 ),
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
    .I0(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_16_64 ),
    .I1(\BU2/U0/del_Y/shift_register_4_2_203 ),
    .O(\BU2/U0/add_B/use_fabric.adder/Madd_c_lut [0])
  );
  MUXCY   \BU2/U0/add_B/use_fabric.adder/Madd_c_cy<0>  (
    .CI(\BU2/N0 ),
    .DI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_16_64 ),
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
    .I0(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_17_66 ),
    .I1(\BU2/U0/del_Y/shift_register_4_3_200 ),
    .O(\BU2/U0/add_B/use_fabric.adder/Madd_c_lut [1])
  );
  MUXCY   \BU2/U0/add_B/use_fabric.adder/Madd_c_cy<1>  (
    .CI(\BU2/U0/add_B/use_fabric.adder/Madd_c_cy [0]),
    .DI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_17_66 ),
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
    .I0(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_18_68 ),
    .I1(\BU2/U0/del_Y/shift_register_4_4_196 ),
    .O(\BU2/U0/add_B/use_fabric.adder/Madd_c_lut [2])
  );
  MUXCY   \BU2/U0/add_B/use_fabric.adder/Madd_c_cy<2>  (
    .CI(\BU2/U0/add_B/use_fabric.adder/Madd_c_cy [1]),
    .DI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_18_68 ),
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
    .I0(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_19_70 ),
    .I1(\BU2/U0/del_Y/shift_register_4_5_192 ),
    .O(\BU2/U0/add_B/use_fabric.adder/Madd_c_lut [3])
  );
  MUXCY   \BU2/U0/add_B/use_fabric.adder/Madd_c_cy<3>  (
    .CI(\BU2/U0/add_B/use_fabric.adder/Madd_c_cy [2]),
    .DI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_19_70 ),
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
    .I0(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_20_72 ),
    .I1(\BU2/U0/del_Y/shift_register_4_6_188 ),
    .O(\BU2/U0/add_B/use_fabric.adder/Madd_c_lut [4])
  );
  MUXCY   \BU2/U0/add_B/use_fabric.adder/Madd_c_cy<4>  (
    .CI(\BU2/U0/add_B/use_fabric.adder/Madd_c_cy [3]),
    .DI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_20_72 ),
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
    .I0(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_21_74 ),
    .I1(\BU2/U0/del_Y/shift_register_4_7_184 ),
    .O(\BU2/U0/add_B/use_fabric.adder/Madd_c_lut [5])
  );
  MUXCY   \BU2/U0/add_B/use_fabric.adder/Madd_c_cy<5>  (
    .CI(\BU2/U0/add_B/use_fabric.adder/Madd_c_cy [4]),
    .DI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_21_74 ),
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
    .I0(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_22_76 ),
    .I1(\BU2/U0/del_Y/shift_register_4_8_180 ),
    .O(\BU2/U0/add_B/use_fabric.adder/Madd_c_lut [6])
  );
  MUXCY   \BU2/U0/add_B/use_fabric.adder/Madd_c_cy<6>  (
    .CI(\BU2/U0/add_B/use_fabric.adder/Madd_c_cy [5]),
    .DI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_22_76 ),
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
    .I0(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_23_78 ),
    .I1(\BU2/U0/del_Y/shift_register_4_9_176 ),
    .O(\BU2/U0/add_B/use_fabric.adder/Madd_c_lut [7])
  );
  MUXCY   \BU2/U0/add_B/use_fabric.adder/Madd_c_cy<7>  (
    .CI(\BU2/U0/add_B/use_fabric.adder/Madd_c_cy [6]),
    .DI(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_23_78 ),
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
    .S(\BU2/U0/add_B/use_fabric.adder/Madd_c_cy<8>_rt_237 ),
    .O(\BU2/U0/add_B/use_fabric.adder/Madd_c_cy [8])
  );
  XORCY   \BU2/U0/add_B/use_fabric.adder/Madd_c_xor<8>  (
    .CI(\BU2/U0/add_B/use_fabric.adder/Madd_c_cy [7]),
    .LI(\BU2/U0/add_B/use_fabric.adder/Madd_c_cy<8>_rt_237 ),
    .O(\BU2/U0/add_B/use_fabric.adder/c [8])
  );
  XORCY   \BU2/U0/add_B/use_fabric.adder/Madd_c_xor<9>  (
    .CI(\BU2/U0/add_B/use_fabric.adder/Madd_c_cy [8]),
    .LI(\BU2/U0/add_B/use_fabric.adder/Madd_c_xor<9>_rt_234 ),
    .O(\BU2/U0/add_B/use_fabric.adder/c [9])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/add_R/use_fabric.adder/Madd_c_lut<0>  (
    .I0(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_16_150 ),
    .I1(\BU2/U0/del_Y/shift_register_4_2_203 ),
    .O(\BU2/U0/add_R/use_fabric.adder/Madd_c_lut [0])
  );
  MUXCY   \BU2/U0/add_R/use_fabric.adder/Madd_c_cy<0>  (
    .CI(\BU2/N0 ),
    .DI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_16_150 ),
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
    .I0(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_17_152 ),
    .I1(\BU2/U0/del_Y/shift_register_4_3_200 ),
    .O(\BU2/U0/add_R/use_fabric.adder/Madd_c_lut [1])
  );
  MUXCY   \BU2/U0/add_R/use_fabric.adder/Madd_c_cy<1>  (
    .CI(\BU2/U0/add_R/use_fabric.adder/Madd_c_cy [0]),
    .DI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_17_152 ),
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
    .I0(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_18_154 ),
    .I1(\BU2/U0/del_Y/shift_register_4_4_196 ),
    .O(\BU2/U0/add_R/use_fabric.adder/Madd_c_lut [2])
  );
  MUXCY   \BU2/U0/add_R/use_fabric.adder/Madd_c_cy<2>  (
    .CI(\BU2/U0/add_R/use_fabric.adder/Madd_c_cy [1]),
    .DI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_18_154 ),
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
    .I0(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_19_156 ),
    .I1(\BU2/U0/del_Y/shift_register_4_5_192 ),
    .O(\BU2/U0/add_R/use_fabric.adder/Madd_c_lut [3])
  );
  MUXCY   \BU2/U0/add_R/use_fabric.adder/Madd_c_cy<3>  (
    .CI(\BU2/U0/add_R/use_fabric.adder/Madd_c_cy [2]),
    .DI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_19_156 ),
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
    .I0(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_20_158 ),
    .I1(\BU2/U0/del_Y/shift_register_4_6_188 ),
    .O(\BU2/U0/add_R/use_fabric.adder/Madd_c_lut [4])
  );
  MUXCY   \BU2/U0/add_R/use_fabric.adder/Madd_c_cy<4>  (
    .CI(\BU2/U0/add_R/use_fabric.adder/Madd_c_cy [3]),
    .DI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_20_158 ),
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
    .I0(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_21_160 ),
    .I1(\BU2/U0/del_Y/shift_register_4_7_184 ),
    .O(\BU2/U0/add_R/use_fabric.adder/Madd_c_lut [5])
  );
  MUXCY   \BU2/U0/add_R/use_fabric.adder/Madd_c_cy<5>  (
    .CI(\BU2/U0/add_R/use_fabric.adder/Madd_c_cy [4]),
    .DI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_21_160 ),
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
    .I0(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_22_162 ),
    .I1(\BU2/U0/del_Y/shift_register_4_8_180 ),
    .O(\BU2/U0/add_R/use_fabric.adder/Madd_c_lut [6])
  );
  MUXCY   \BU2/U0/add_R/use_fabric.adder/Madd_c_cy<6>  (
    .CI(\BU2/U0/add_R/use_fabric.adder/Madd_c_cy [5]),
    .DI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_22_162 ),
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
    .I0(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_23_164 ),
    .I1(\BU2/U0/del_Y/shift_register_4_9_176 ),
    .O(\BU2/U0/add_R/use_fabric.adder/Madd_c_lut [7])
  );
  MUXCY   \BU2/U0/add_R/use_fabric.adder/Madd_c_cy<7>  (
    .CI(\BU2/U0/add_R/use_fabric.adder/Madd_c_cy [6]),
    .DI(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_23_164 ),
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
    .S(\BU2/U0/add_R/use_fabric.adder/Madd_c_cy<8>_rt_208 ),
    .O(\BU2/U0/add_R/use_fabric.adder/Madd_c_cy [8])
  );
  XORCY   \BU2/U0/add_R/use_fabric.adder/Madd_c_xor<8>  (
    .CI(\BU2/U0/add_R/use_fabric.adder/Madd_c_cy [7]),
    .LI(\BU2/U0/add_R/use_fabric.adder/Madd_c_cy<8>_rt_208 ),
    .O(\BU2/U0/add_R/use_fabric.adder/c [8])
  );
  XORCY   \BU2/U0/add_R/use_fabric.adder/Madd_c_xor<9>  (
    .CI(\BU2/U0/add_R/use_fabric.adder/Madd_c_cy [8]),
    .LI(\BU2/U0/add_R/use_fabric.adder/Madd_c_xor<9>_rt_205 ),
    .O(\BU2/U0/add_R/use_fabric.adder/c [9])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \BU2/U0/add_G/use_fabric.adder/Madd_c_lut<0>  (
    .I0(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_16_132 ),
    .I1(\BU2/U0/del_Y/shift_register_4_2_203 ),
    .O(\BU2/U0/add_G/use_fabric.adder/Madd_c_lut [0])
  );
  MUXCY   \BU2/U0/add_G/use_fabric.adder/Madd_c_cy<0>  (
    .CI(\BU2/N0 ),
    .DI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_16_132 ),
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
    .I0(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_17_134 ),
    .I1(\BU2/U0/del_Y/shift_register_4_3_200 ),
    .O(\BU2/U0/add_G/use_fabric.adder/Madd_c_lut [1])
  );
  MUXCY   \BU2/U0/add_G/use_fabric.adder/Madd_c_cy<1>  (
    .CI(\BU2/U0/add_G/use_fabric.adder/Madd_c_cy [0]),
    .DI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_17_134 ),
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
    .I0(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_18_136 ),
    .I1(\BU2/U0/del_Y/shift_register_4_4_196 ),
    .O(\BU2/U0/add_G/use_fabric.adder/Madd_c_lut [2])
  );
  MUXCY   \BU2/U0/add_G/use_fabric.adder/Madd_c_cy<2>  (
    .CI(\BU2/U0/add_G/use_fabric.adder/Madd_c_cy [1]),
    .DI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_18_136 ),
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
    .I0(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_19_138 ),
    .I1(\BU2/U0/del_Y/shift_register_4_5_192 ),
    .O(\BU2/U0/add_G/use_fabric.adder/Madd_c_lut [3])
  );
  MUXCY   \BU2/U0/add_G/use_fabric.adder/Madd_c_cy<3>  (
    .CI(\BU2/U0/add_G/use_fabric.adder/Madd_c_cy [2]),
    .DI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_19_138 ),
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
    .I0(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_20_140 ),
    .I1(\BU2/U0/del_Y/shift_register_4_6_188 ),
    .O(\BU2/U0/add_G/use_fabric.adder/Madd_c_lut [4])
  );
  MUXCY   \BU2/U0/add_G/use_fabric.adder/Madd_c_cy<4>  (
    .CI(\BU2/U0/add_G/use_fabric.adder/Madd_c_cy [3]),
    .DI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_20_140 ),
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
    .I0(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_21_142 ),
    .I1(\BU2/U0/del_Y/shift_register_4_7_184 ),
    .O(\BU2/U0/add_G/use_fabric.adder/Madd_c_lut [5])
  );
  MUXCY   \BU2/U0/add_G/use_fabric.adder/Madd_c_cy<5>  (
    .CI(\BU2/U0/add_G/use_fabric.adder/Madd_c_cy [4]),
    .DI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_21_142 ),
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
    .I0(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_22_144 ),
    .I1(\BU2/U0/del_Y/shift_register_4_8_180 ),
    .O(\BU2/U0/add_G/use_fabric.adder/Madd_c_lut [6])
  );
  MUXCY   \BU2/U0/add_G/use_fabric.adder/Madd_c_cy<6>  (
    .CI(\BU2/U0/add_G/use_fabric.adder/Madd_c_cy [5]),
    .DI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_22_144 ),
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
    .I0(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_23_146 ),
    .I1(\BU2/U0/del_Y/shift_register_4_9_176 ),
    .O(\BU2/U0/add_G/use_fabric.adder/Madd_c_lut [7])
  );
  MUXCY   \BU2/U0/add_G/use_fabric.adder/Madd_c_cy<7>  (
    .CI(\BU2/U0/add_G/use_fabric.adder/Madd_c_cy [6]),
    .DI(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_23_146 ),
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
    .S(\BU2/U0/add_G/use_fabric.adder/Madd_c_cy<8>_rt_171 ),
    .O(\BU2/U0/add_G/use_fabric.adder/Madd_c_cy [8])
  );
  XORCY   \BU2/U0/add_G/use_fabric.adder/Madd_c_xor<8>  (
    .CI(\BU2/U0/add_G/use_fabric.adder/Madd_c_cy [7]),
    .LI(\BU2/U0/add_G/use_fabric.adder/Madd_c_cy<8>_rt_171 ),
    .O(\BU2/U0/add_G/use_fabric.adder/c [8])
  );
  XORCY   \BU2/U0/add_G/use_fabric.adder/Madd_c_xor<9>  (
    .CI(\BU2/U0/add_G/use_fabric.adder/Madd_c_cy [8]),
    .LI(\BU2/U0/add_G/use_fabric.adder/Madd_c_xor<9>_rt_168 ),
    .O(\BU2/U0/add_G/use_fabric.adder/c [9])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_24  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/c [24]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_24_166 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_23  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/c [23]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_23_164 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_22  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/c [22]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_22_162 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_21  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/c [21]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_21_160 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_20  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/c [20]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_20_158 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_19  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/c [19]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_19_156 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_18  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/c [18]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_18_154 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_17  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/c [17]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_17_152 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_16  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/c [16]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_aCr/use_fabric.adder/reg/shift_register_1_16_150 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_24  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/c [24]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_24_148 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_23  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/c [23]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_23_146 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_22  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/c [22]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_22_144 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_21  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/c [21]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_21_142 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_20  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/c [20]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_20_140 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_19  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/c [19]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_19_138 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_18  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/c [18]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_18_136 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_17  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/c [17]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_17_134 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_16  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/c [16]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_bCr/use_fabric.adder/reg/shift_register_1_16_132 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_24  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c [24]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_24_130 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_23  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c [23]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_23_128 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_22  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c [22]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_22_126 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_21  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c [21]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_21_124 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_20  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c [20]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_20_122 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_19  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c [19]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_19_120 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_18  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c [18]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_18_118 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_17  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c [17]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_17_116 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_16  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c [16]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_16_114 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_15  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c [15]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_15_112 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_14  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c [14]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_14_110 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_13  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c [13]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_13_108 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_12  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c [12]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_12_106 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_11  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c [11]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_11_104 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_10  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c [10]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_10_102 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_9  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c [9]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_9_100 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_8  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c [8]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_8_98 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_7  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/c [7]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_7_96 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_6  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_8_93 ),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_6_94 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_5  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_7_91 ),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_5_92 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_4  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_6_89 ),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_4_90 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_3  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_5_87 ),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_3_88 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_2  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_4_85 ),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_2_86 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_1  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_3_83 ),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_1_84 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_0  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.mult_cCb/reg/shift_register_2_2_81 ),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_cCb/use_fabric.adder/reg/shift_register_1_0_82 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_24  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/c [24]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_24_80 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_23  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/c [23]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_23_78 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_22  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/c [22]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_22_76 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_21  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/c [21]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_21_74 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_20  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/c [20]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_20_72 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_19  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/c [19]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_19_70 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_18  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/c [18]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_18_68 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_17  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/c [17]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_17_66 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_16  (
    .C(clk),
    .CE(ce),
    .D(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/c [16]),
    .R(sclr),
    .Q(\BU2/U0/sp3_v2_v2p.round_dCb/use_fabric.adder/reg/shift_register_1_16_64 )
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
