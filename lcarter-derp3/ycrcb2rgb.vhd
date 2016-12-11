--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: K.39
--  \   \         Application: netgen
--  /   /         Filename: ycrcb2rgb.vhd
-- /___/   /\     Timestamp: Sun Dec 11 17:36:28 2016
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -w -sim -ofmt vhdl /afs/athena.mit.edu/user/l/c/lcarter/6.111/6.111-finalproj/lcarter-derp3/tmp/_cg/ycrcb2rgb.ngc /afs/athena.mit.edu/user/l/c/lcarter/6.111/6.111-finalproj/lcarter-derp3/tmp/_cg/ycrcb2rgb.vhd 
-- Device	: 2v6000bf957-4
-- Input file	: /afs/athena.mit.edu/user/l/c/lcarter/6.111/6.111-finalproj/lcarter-derp3/tmp/_cg/ycrcb2rgb.ngc
-- Output file	: /afs/athena.mit.edu/user/l/c/lcarter/6.111/6.111-finalproj/lcarter-derp3/tmp/_cg/ycrcb2rgb.vhd
-- # of Entities	: 1
-- Design Name	: ycrcb2rgb
-- Xilinx	: /afs/csail.mit.edu/proj/redsocs/Xilinx10.1/ISE
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Development System Reference Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------


-- synthesis translate_off
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity ycrcb2rgb is
  port (
    sclr : in STD_LOGIC := 'X'; 
    ce : in STD_LOGIC := 'X'; 
    h_sync_out : out STD_LOGIC; 
    pix_en_out : out STD_LOGIC; 
    pix_en_in : in STD_LOGIC := 'X'; 
    clk : in STD_LOGIC := 'X'; 
    v_sync_out : out STD_LOGIC; 
    h_sync_in : in STD_LOGIC := 'X'; 
    v_sync_in : in STD_LOGIC := 'X'; 
    cb : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    cr : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    b : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    g : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    r : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    y : in STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end ycrcb2rgb;

architecture STRUCTURE of ycrcb2rgb is
  signal BU2_Mshreg_pix_en_out_724 : STD_LOGIC; 
  signal BU2_Mshreg_v_sync_out_723 : STD_LOGIC; 
  signal BU2_U0_del_Y_Mshreg_shift_register_4_7_722 : STD_LOGIC; 
  signal BU2_U0_del_Y_Mshreg_shift_register_4_6_721 : STD_LOGIC; 
  signal BU2_Mshreg_h_sync_out_720 : STD_LOGIC; 
  signal BU2_U0_del_Y_Mshreg_shift_register_4_4_719 : STD_LOGIC; 
  signal BU2_U0_del_Y_Mshreg_shift_register_4_3_718 : STD_LOGIC; 
  signal BU2_U0_del_Y_Mshreg_shift_register_4_5_717 : STD_LOGIC; 
  signal BU2_U0_del_Y_Mshreg_shift_register_4_1_716 : STD_LOGIC; 
  signal BU2_U0_del_Y_Mshreg_shift_register_4_0_715 : STD_LOGIC; 
  signal BU2_U0_del_Y_Mshreg_shift_register_4_2_714 : STD_LOGIC; 
  signal BU2_N30 : STD_LOGIC; 
  signal BU2_N28 : STD_LOGIC; 
  signal BU2_N26 : STD_LOGIC; 
  signal BU2_N37 : STD_LOGIC; 
  signal BU2_N36 : STD_LOGIC; 
  signal BU2_N35 : STD_LOGIC; 
  signal BU2_U0_clamp_min_B_c_cmp_lt0000 : STD_LOGIC; 
  signal BU2_U0_clamp_min_G_c_cmp_lt0000 : STD_LOGIC; 
  signal BU2_U0_clamp_min_R_c_cmp_lt0000 : STD_LOGIC; 
  signal BU2_N18 : STD_LOGIC; 
  signal BU2_N34 : STD_LOGIC; 
  signal BU2_N10 : STD_LOGIC; 
  signal BU2_N33 : STD_LOGIC; 
  signal BU2_N2 : STD_LOGIC; 
  signal BU2_N32 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_24_698 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_23_697 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_22_696 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_21_695 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_20_694 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_19_693 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_18_692 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_17_691 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_16_690 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_15_689 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_14_688 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_13_687 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_12_686 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_11_685 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_10_684 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_9_683 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_8_682 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_23_681 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_22_680 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_21_679 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_20_678 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_19_677 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_18_676 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_17_675 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_16_674 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_15_673 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_14_672 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_13_671 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_12_670 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_11_669 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_10_668 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_9_667 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_8_666 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_7_665 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_24_664 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_23_663 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_22_662 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_21_661 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_20_660 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_19_659 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_18_658 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_17_657 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_16_656 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_15_655 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_14_654 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_13_653 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_12_652 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_11_651 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_10_650 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_9_649 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_8_648 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_7_647 : STD_LOGIC; 
  signal BU2_U0_clip_max_B_reg_shift_register_1_0_646 : STD_LOGIC; 
  signal BU2_U0_clip_max_B_reg_shift_register_1_1_644 : STD_LOGIC; 
  signal BU2_U0_clip_max_B_reg_shift_register_1_2_642 : STD_LOGIC; 
  signal BU2_U0_clip_max_B_reg_shift_register_1_3_640 : STD_LOGIC; 
  signal BU2_U0_clip_max_B_reg_shift_register_1_4_638 : STD_LOGIC; 
  signal BU2_U0_clip_max_B_reg_shift_register_1_5_636 : STD_LOGIC; 
  signal BU2_U0_clip_max_B_reg_shift_register_1_6_634 : STD_LOGIC; 
  signal BU2_U0_clip_max_B_reg_shift_register_1_7_632 : STD_LOGIC; 
  signal BU2_U0_clip_max_B_reg_shift_register_1_8_630 : STD_LOGIC; 
  signal BU2_U0_clip_max_B_reg_shift_register_1_9_628 : STD_LOGIC; 
  signal BU2_U0_clip_max_G_reg_shift_register_1_0_627 : STD_LOGIC; 
  signal BU2_U0_clip_max_G_reg_shift_register_1_1_625 : STD_LOGIC; 
  signal BU2_U0_clip_max_G_reg_shift_register_1_2_623 : STD_LOGIC; 
  signal BU2_U0_clip_max_G_reg_shift_register_1_3_621 : STD_LOGIC; 
  signal BU2_U0_clip_max_G_reg_shift_register_1_4_619 : STD_LOGIC; 
  signal BU2_U0_clip_max_G_reg_shift_register_1_5_617 : STD_LOGIC; 
  signal BU2_U0_clip_max_G_reg_shift_register_1_6_615 : STD_LOGIC; 
  signal BU2_U0_clip_max_G_reg_shift_register_1_7_613 : STD_LOGIC; 
  signal BU2_U0_clip_max_G_reg_shift_register_1_8_611 : STD_LOGIC; 
  signal BU2_U0_clip_max_G_reg_shift_register_1_9_609 : STD_LOGIC; 
  signal BU2_U0_clip_max_R_reg_shift_register_1_0_608 : STD_LOGIC; 
  signal BU2_U0_clip_max_R_reg_shift_register_1_1_606 : STD_LOGIC; 
  signal BU2_U0_clip_max_R_reg_shift_register_1_2_604 : STD_LOGIC; 
  signal BU2_U0_clip_max_R_reg_shift_register_1_3_602 : STD_LOGIC; 
  signal BU2_U0_clip_max_R_reg_shift_register_1_4_600 : STD_LOGIC; 
  signal BU2_U0_clip_max_R_reg_shift_register_1_5_598 : STD_LOGIC; 
  signal BU2_U0_clip_max_R_reg_shift_register_1_6_596 : STD_LOGIC; 
  signal BU2_U0_clip_max_R_reg_shift_register_1_7_594 : STD_LOGIC; 
  signal BU2_U0_clip_max_R_reg_shift_register_1_8_592 : STD_LOGIC; 
  signal BU2_U0_clip_max_R_reg_shift_register_1_9_590 : STD_LOGIC; 
  signal BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_9_565 : STD_LOGIC; 
  signal BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_8_564 : STD_LOGIC; 
  signal BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_7_563 : STD_LOGIC; 
  signal BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_6_562 : STD_LOGIC; 
  signal BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_5_561 : STD_LOGIC; 
  signal BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_4_560 : STD_LOGIC; 
  signal BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_3_559 : STD_LOGIC; 
  signal BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_2_558 : STD_LOGIC; 
  signal BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_1_557 : STD_LOGIC; 
  signal BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_0_556 : STD_LOGIC; 
  signal BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_9_555 : STD_LOGIC; 
  signal BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_8_554 : STD_LOGIC; 
  signal BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_7_553 : STD_LOGIC; 
  signal BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_6_552 : STD_LOGIC; 
  signal BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_5_551 : STD_LOGIC; 
  signal BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_4_550 : STD_LOGIC; 
  signal BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_3_549 : STD_LOGIC; 
  signal BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_2_548 : STD_LOGIC; 
  signal BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_1_547 : STD_LOGIC; 
  signal BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_0_546 : STD_LOGIC; 
  signal BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_9_545 : STD_LOGIC; 
  signal BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_8_544 : STD_LOGIC; 
  signal BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_7_543 : STD_LOGIC; 
  signal BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_6_542 : STD_LOGIC; 
  signal BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_5_541 : STD_LOGIC; 
  signal BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_4_540 : STD_LOGIC; 
  signal BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_3_539 : STD_LOGIC; 
  signal BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_2_538 : STD_LOGIC; 
  signal BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_1_537 : STD_LOGIC; 
  signal BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_0_536 : STD_LOGIC; 
  signal BU2_U0_del_Cb_shift_register_1_0_518 : STD_LOGIC; 
  signal BU2_U0_del_Cb_shift_register_1_1_517 : STD_LOGIC; 
  signal BU2_U0_del_Cb_shift_register_1_2_516 : STD_LOGIC; 
  signal BU2_U0_del_Cb_shift_register_1_3_515 : STD_LOGIC; 
  signal BU2_U0_del_Cb_shift_register_1_4_514 : STD_LOGIC; 
  signal BU2_U0_del_Cb_shift_register_1_5_513 : STD_LOGIC; 
  signal BU2_U0_del_Cb_shift_register_1_6_512 : STD_LOGIC; 
  signal BU2_U0_del_Cb_shift_register_1_7_511 : STD_LOGIC; 
  signal BU2_U0_del_Cr_shift_register_1_0_442 : STD_LOGIC; 
  signal BU2_U0_del_Cr_shift_register_1_1_441 : STD_LOGIC; 
  signal BU2_U0_del_Cr_shift_register_1_2_440 : STD_LOGIC; 
  signal BU2_U0_del_Cr_shift_register_1_3_439 : STD_LOGIC; 
  signal BU2_U0_del_Cr_shift_register_1_4_438 : STD_LOGIC; 
  signal BU2_U0_del_Cr_shift_register_1_5_437 : STD_LOGIC; 
  signal BU2_U0_del_Cr_shift_register_1_6_436 : STD_LOGIC; 
  signal BU2_U0_del_Cr_shift_register_1_7_435 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_8_Q : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_9_rt_433 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_10_Q : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_11_Q : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_12_rt_427 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_13_rt_425 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_14_rt_423 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_15_Q : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_16_Q : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_17_rt_417 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_18_Q : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_19_Q : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_20_rt_411 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_21_rt_409 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_22_rt_407 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_23_rt_405 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_24_Q : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_7_Q : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_8_rt_400 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_9_rt_398 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_10_Q : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_11_rt_394 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_12_rt_392 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_13_rt_390 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_14_rt_388 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_15_rt_386 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_16_rt_384 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_17_rt_382 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_18_rt_380 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_19_Q : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_20_Q : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_21_Q : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_22_Q : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_23_rt_370 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_25_368 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_7_Q : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_8_rt_365 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_9_Q : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_10_rt_361 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_11_Q : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_12_Q : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_13_Q : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_14_Q : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_15_Q : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_16_rt_349 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_17_rt_347 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_18_Q : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_19_Q : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_20_Q : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_21_Q : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_22_rt_337 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_23_rt_335 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_24_Q : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_0_330 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_1_328 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_2_325 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_3_322 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_4_319 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_5_316 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_6_313 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_7_310 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_8_307 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_9_304 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_10_301 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_11_298 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_12_295 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_13_292 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_14_289 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_15_286 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_16_284 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_17_281 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_18_278 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_19_275 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_20_272 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_21_269 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_22_266 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_23_263 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_24_260 : STD_LOGIC; 
  signal BU2_U0_add_B_use_fabric_adder_Madd_c_cy_8_rt_233 : STD_LOGIC; 
  signal BU2_U0_add_B_use_fabric_adder_Madd_c_xor_9_rt_230 : STD_LOGIC; 
  signal BU2_U0_add_R_use_fabric_adder_Madd_c_cy_8_rt_204 : STD_LOGIC; 
  signal BU2_U0_add_R_use_fabric_adder_Madd_c_xor_9_rt_201 : STD_LOGIC; 
  signal BU2_U0_del_Y_shift_register_4_0_199 : STD_LOGIC; 
  signal BU2_U0_del_Y_shift_register_4_1_196 : STD_LOGIC; 
  signal BU2_U0_del_Y_shift_register_4_2_192 : STD_LOGIC; 
  signal BU2_U0_del_Y_shift_register_4_3_188 : STD_LOGIC; 
  signal BU2_U0_del_Y_shift_register_4_4_184 : STD_LOGIC; 
  signal BU2_U0_del_Y_shift_register_4_5_180 : STD_LOGIC; 
  signal BU2_U0_del_Y_shift_register_4_6_176 : STD_LOGIC; 
  signal BU2_U0_del_Y_shift_register_4_7_172 : STD_LOGIC; 
  signal BU2_U0_add_G_use_fabric_adder_Madd_c_cy_8_rt_167 : STD_LOGIC; 
  signal BU2_U0_add_G_use_fabric_adder_Madd_c_xor_9_rt_164 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_24_162 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_23_160 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_22_158 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_21_156 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_20_154 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_19_152 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_18_150 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_17_148 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_16_146 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_24_144 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_23_142 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_22_140 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_21_138 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_20_136 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_19_134 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_18_132 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_17_130 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_16_128 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_24_126 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_23_124 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_22_122 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_21_120 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_20_118 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_19_116 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_18_114 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_17_112 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_16_110 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_15_108 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_14_106 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_13_104 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_12_102 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_11_100 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_10_98 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_9_96 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_8_94 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_7_92 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_6_90 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_6_89 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_5_88 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_5_87 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_4_86 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_4_85 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_3_84 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_3_83 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_2_82 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_2_81 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_1_80 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_1_79 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_0_78 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_0_77 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_24_76 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_23_74 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_22_72 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_21_70 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_20_68 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_19_66 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_18_64 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_17_62 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_16_60 : STD_LOGIC; 
  signal BU2_N1 : STD_LOGIC; 
  signal BU2_N0 : STD_LOGIC; 
  signal NLW_VCC_P_UNCONNECTED : STD_LOGIC; 
  signal NLW_GND_G_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_dCb_Mmult_c_P_35_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_dCb_Mmult_c_P_34_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_dCb_Mmult_c_P_33_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_dCb_Mmult_c_P_32_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_dCb_Mmult_c_P_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_dCb_Mmult_c_P_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_dCb_Mmult_c_P_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_dCb_Mmult_c_P_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_dCb_Mmult_c_P_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_dCb_Mmult_c_P_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_dCb_Mmult_c_P_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_dCb_Mmult_c_P_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_dCb_Mmult_c_P_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_dCb_Mmult_c_P_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_dCb_Mmult_c_P_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_dCb_Mmult_c_P_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_dCb_Mmult_c_P_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_dCb_Mmult_c_P_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_dCb_Mmult_c_P_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_aCr_Mmult_c_P_35_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_aCr_Mmult_c_P_34_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_aCr_Mmult_c_P_33_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_aCr_Mmult_c_P_32_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_aCr_Mmult_c_P_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_aCr_Mmult_c_P_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_aCr_Mmult_c_P_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_aCr_Mmult_c_P_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_aCr_Mmult_c_P_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_aCr_Mmult_c_P_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_aCr_Mmult_c_P_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_aCr_Mmult_c_P_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_aCr_Mmult_c_P_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_aCr_Mmult_c_P_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_aCr_Mmult_c_P_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_aCr_Mmult_c_P_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_aCr_Mmult_c_P_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_aCr_Mmult_c_P_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_cCb_Mmult_c_P_35_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_cCb_Mmult_c_P_34_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_cCb_Mmult_c_P_33_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_cCb_Mmult_c_P_32_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_cCb_Mmult_c_P_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_cCb_Mmult_c_P_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_cCb_Mmult_c_P_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_cCb_Mmult_c_P_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_cCb_Mmult_c_P_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_cCb_Mmult_c_P_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_cCb_Mmult_c_P_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_bCr_Mmult_c_P_35_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_bCr_Mmult_c_P_34_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_bCr_Mmult_c_P_33_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_bCr_Mmult_c_P_32_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_bCr_Mmult_c_P_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_bCr_Mmult_c_P_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_bCr_Mmult_c_P_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_bCr_Mmult_c_P_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_bCr_Mmult_c_P_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_bCr_Mmult_c_P_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_bCr_Mmult_c_P_25_UNCONNECTED : STD_LOGIC; 
  signal y_2 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal cr_3 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal cb_4 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal r_5 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal g_6 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal b_7 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal BU2_U0_clip_max_B_c : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal BU2_U0_clip_max_G_c : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal BU2_U0_clip_max_R_c : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal BU2_U0_clamp_min_B_c : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal BU2_U0_clamp_min_G_c : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal BU2_U0_clamp_min_R_c : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register : STD_LOGIC_VECTOR2 ( 1 downto 1 , 24 downto 8 ); 
  signal BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register : STD_LOGIC_VECTOR2 ( 1 downto 1 , 24 downto 7 ); 
  signal BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register : STD_LOGIC_VECTOR2 ( 1 downto 1 , 24 downto 0 ); 
  signal BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register : STD_LOGIC_VECTOR2 ( 1 downto 1 , 24 downto 0 ); 
  signal BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy : STD_LOGIC_VECTOR ( 23 downto 8 ); 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy : STD_LOGIC_VECTOR ( 23 downto 7 ); 
  signal BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy : STD_LOGIC_VECTOR ( 23 downto 7 ); 
  signal BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut : STD_LOGIC_VECTOR ( 24 downto 0 ); 
  signal BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy : STD_LOGIC_VECTOR ( 23 downto 0 ); 
  signal BU2_U0_add_B_use_fabric_adder_c : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal BU2_U0_add_B_use_fabric_adder_Madd_c_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal BU2_U0_add_B_use_fabric_adder_Madd_c_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal BU2_U0_add_R_use_fabric_adder_c : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal BU2_U0_add_R_use_fabric_adder_Madd_c_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal BU2_U0_add_R_use_fabric_adder_Madd_c_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal BU2_U0_add_G_use_fabric_adder_c : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal BU2_U0_add_G_use_fabric_adder_Madd_c_lut : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal BU2_U0_add_G_use_fabric_adder_Madd_c_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_c : STD_LOGIC_VECTOR ( 24 downto 16 ); 
  signal BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_c : STD_LOGIC_VECTOR ( 24 downto 16 ); 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_c : STD_LOGIC_VECTOR ( 24 downto 7 ); 
  signal BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_c : STD_LOGIC_VECTOR ( 24 downto 16 ); 
begin
  cb_4(7) <= cb(7);
  cb_4(6) <= cb(6);
  cb_4(5) <= cb(5);
  cb_4(4) <= cb(4);
  cb_4(3) <= cb(3);
  cb_4(2) <= cb(2);
  cb_4(1) <= cb(1);
  cb_4(0) <= cb(0);
  cr_3(7) <= cr(7);
  cr_3(6) <= cr(6);
  cr_3(5) <= cr(5);
  cr_3(4) <= cr(4);
  cr_3(3) <= cr(3);
  cr_3(2) <= cr(2);
  cr_3(1) <= cr(1);
  cr_3(0) <= cr(0);
  b(7) <= b_7(7);
  b(6) <= b_7(6);
  b(5) <= b_7(5);
  b(4) <= b_7(4);
  b(3) <= b_7(3);
  b(2) <= b_7(2);
  b(1) <= b_7(1);
  b(0) <= b_7(0);
  g(7) <= g_6(7);
  g(6) <= g_6(6);
  g(5) <= g_6(5);
  g(4) <= g_6(4);
  g(3) <= g_6(3);
  g(2) <= g_6(2);
  g(1) <= g_6(1);
  g(0) <= g_6(0);
  r(7) <= r_5(7);
  r(6) <= r_5(6);
  r(5) <= r_5(5);
  r(4) <= r_5(4);
  r(3) <= r_5(3);
  r(2) <= r_5(2);
  r(1) <= r_5(1);
  r(0) <= r_5(0);
  y_2(7) <= y(7);
  y_2(6) <= y(6);
  y_2(5) <= y(5);
  y_2(4) <= y(4);
  y_2(3) <= y(3);
  y_2(2) <= y(2);
  y_2(1) <= y(1);
  y_2(0) <= y(0);
  VCC_0 : VCC
    port map (
      P => NLW_VCC_P_UNCONNECTED
    );
  GND_1 : GND
    port map (
      G => NLW_GND_G_UNCONNECTED
    );
  BU2_pix_en_out : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_Mshreg_pix_en_out_724,
      Q => pix_en_out
    );
  BU2_Mshreg_pix_en_out : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => BU2_N1,
      A1 => BU2_N0,
      A2 => BU2_N1,
      A3 => BU2_N0,
      CE => ce,
      CLK => clk,
      D => pix_en_in,
      Q => BU2_Mshreg_pix_en_out_724
    );
  BU2_v_sync_out : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_Mshreg_v_sync_out_723,
      Q => v_sync_out
    );
  BU2_Mshreg_v_sync_out : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => BU2_N1,
      A1 => BU2_N0,
      A2 => BU2_N1,
      A3 => BU2_N0,
      CE => ce,
      CLK => clk,
      D => v_sync_in,
      Q => BU2_Mshreg_v_sync_out_723
    );
  BU2_U0_del_Y_shift_register_4_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_del_Y_Mshreg_shift_register_4_7_722,
      Q => BU2_U0_del_Y_shift_register_4_7_172
    );
  BU2_U0_del_Y_Mshreg_shift_register_4_7 : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => BU2_N0,
      A1 => BU2_N1,
      A2 => BU2_N0,
      A3 => BU2_N0,
      CE => ce,
      CLK => clk,
      D => y_2(7),
      Q => BU2_U0_del_Y_Mshreg_shift_register_4_7_722
    );
  BU2_U0_del_Y_shift_register_4_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_del_Y_Mshreg_shift_register_4_6_721,
      Q => BU2_U0_del_Y_shift_register_4_6_176
    );
  BU2_U0_del_Y_Mshreg_shift_register_4_6 : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => BU2_N0,
      A1 => BU2_N1,
      A2 => BU2_N0,
      A3 => BU2_N0,
      CE => ce,
      CLK => clk,
      D => y_2(6),
      Q => BU2_U0_del_Y_Mshreg_shift_register_4_6_721
    );
  BU2_h_sync_out : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_Mshreg_h_sync_out_720,
      Q => h_sync_out
    );
  BU2_Mshreg_h_sync_out : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => BU2_N1,
      A1 => BU2_N0,
      A2 => BU2_N1,
      A3 => BU2_N0,
      CE => ce,
      CLK => clk,
      D => h_sync_in,
      Q => BU2_Mshreg_h_sync_out_720
    );
  BU2_U0_del_Y_shift_register_4_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_del_Y_Mshreg_shift_register_4_4_719,
      Q => BU2_U0_del_Y_shift_register_4_4_184
    );
  BU2_U0_del_Y_Mshreg_shift_register_4_4 : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => BU2_N0,
      A1 => BU2_N1,
      A2 => BU2_N0,
      A3 => BU2_N0,
      CE => ce,
      CLK => clk,
      D => y_2(4),
      Q => BU2_U0_del_Y_Mshreg_shift_register_4_4_719
    );
  BU2_U0_del_Y_shift_register_4_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_del_Y_Mshreg_shift_register_4_3_718,
      Q => BU2_U0_del_Y_shift_register_4_3_188
    );
  BU2_U0_del_Y_Mshreg_shift_register_4_3 : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => BU2_N0,
      A1 => BU2_N1,
      A2 => BU2_N0,
      A3 => BU2_N0,
      CE => ce,
      CLK => clk,
      D => y_2(3),
      Q => BU2_U0_del_Y_Mshreg_shift_register_4_3_718
    );
  BU2_U0_del_Y_shift_register_4_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_del_Y_Mshreg_shift_register_4_5_717,
      Q => BU2_U0_del_Y_shift_register_4_5_180
    );
  BU2_U0_del_Y_Mshreg_shift_register_4_5 : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => BU2_N0,
      A1 => BU2_N1,
      A2 => BU2_N0,
      A3 => BU2_N0,
      CE => ce,
      CLK => clk,
      D => y_2(5),
      Q => BU2_U0_del_Y_Mshreg_shift_register_4_5_717
    );
  BU2_U0_del_Y_shift_register_4_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_del_Y_Mshreg_shift_register_4_1_716,
      Q => BU2_U0_del_Y_shift_register_4_1_196
    );
  BU2_U0_del_Y_Mshreg_shift_register_4_1 : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => BU2_N0,
      A1 => BU2_N1,
      A2 => BU2_N0,
      A3 => BU2_N0,
      CE => ce,
      CLK => clk,
      D => y_2(1),
      Q => BU2_U0_del_Y_Mshreg_shift_register_4_1_716
    );
  BU2_U0_del_Y_shift_register_4_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_del_Y_Mshreg_shift_register_4_0_715,
      Q => BU2_U0_del_Y_shift_register_4_0_199
    );
  BU2_U0_del_Y_Mshreg_shift_register_4_0 : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => BU2_N0,
      A1 => BU2_N1,
      A2 => BU2_N0,
      A3 => BU2_N0,
      CE => ce,
      CLK => clk,
      D => y_2(0),
      Q => BU2_U0_del_Y_Mshreg_shift_register_4_0_715
    );
  BU2_U0_del_Y_shift_register_4_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_del_Y_Mshreg_shift_register_4_2_714,
      Q => BU2_U0_del_Y_shift_register_4_2_192
    );
  BU2_U0_del_Y_Mshreg_shift_register_4_2 : SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => BU2_N0,
      A1 => BU2_N1,
      A2 => BU2_N0,
      A3 => BU2_N0,
      CE => ce,
      CLK => clk,
      D => y_2(2),
      Q => BU2_U0_del_Y_Mshreg_shift_register_4_2_714
    );
  BU2_U0_clamp_min_B_c_cmp_lt00001_SW0 : LUT3_D
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => BU2_U0_clip_max_B_reg_shift_register_1_8_630,
      I1 => BU2_U0_clip_max_B_reg_shift_register_1_6_634,
      I2 => BU2_U0_clip_max_B_reg_shift_register_1_5_636,
      LO => BU2_N37,
      O => BU2_N30
    );
  BU2_U0_clamp_min_G_c_cmp_lt00001_SW0 : LUT3_D
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => BU2_U0_clip_max_G_reg_shift_register_1_8_611,
      I1 => BU2_U0_clip_max_G_reg_shift_register_1_6_615,
      I2 => BU2_U0_clip_max_G_reg_shift_register_1_5_617,
      LO => BU2_N36,
      O => BU2_N28
    );
  BU2_U0_clamp_min_R_c_cmp_lt00001_SW0 : LUT3_D
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => BU2_U0_clip_max_R_reg_shift_register_1_8_592,
      I1 => BU2_U0_clip_max_R_reg_shift_register_1_6_596,
      I2 => BU2_U0_clip_max_R_reg_shift_register_1_5_598,
      LO => BU2_N35,
      O => BU2_N26
    );
  BU2_U0_clip_max_B_c_3_SW0 : LUT4_D
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_7_563,
      I1 => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_6_562,
      I2 => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_5_561,
      I3 => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_4_560,
      LO => BU2_N34,
      O => BU2_N18
    );
  BU2_U0_clip_max_G_c_3_SW0 : LUT4_D
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_7_553,
      I1 => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_6_552,
      I2 => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_5_551,
      I3 => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_4_550,
      LO => BU2_N33,
      O => BU2_N10
    );
  BU2_U0_clip_max_R_c_3_SW0 : LUT4_D
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_7_543,
      I1 => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_6_542,
      I2 => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_5_541,
      I3 => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_4_540,
      LO => BU2_N32,
      O => BU2_N2
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_8_INV_0 : INV
    port map (
      I => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_8_682,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_8_Q
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_10_INV_0 : INV
    port map (
      I => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_10_684,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_10_Q
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_11_INV_0 : INV
    port map (
      I => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_11_685,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_11_Q
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_15_INV_0 : INV
    port map (
      I => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_15_689,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_15_Q
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_16_INV_0 : INV
    port map (
      I => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_16_690,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_16_Q
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_18_INV_0 : INV
    port map (
      I => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_18_692,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_18_Q
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_19_INV_0 : INV
    port map (
      I => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_19_693,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_19_Q
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_24_INV_0 : INV
    port map (
      I => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_24_698,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_24_Q
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_7_INV_0 : INV
    port map (
      I => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_7_665,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_7_Q
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_10_INV_0 : INV
    port map (
      I => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_10_668,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_10_Q
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_19_INV_0 : INV
    port map (
      I => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_19_677,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_19_Q
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_20_INV_0 : INV
    port map (
      I => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_20_678,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_20_Q
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_21_INV_0 : INV
    port map (
      I => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_21_679,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_21_Q
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_22_INV_0 : INV
    port map (
      I => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_22_680,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_22_Q
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_7_INV_0 : INV
    port map (
      I => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_7_647,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_7_Q
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_9_INV_0 : INV
    port map (
      I => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_9_649,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_9_Q
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_11_INV_0 : INV
    port map (
      I => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_11_651,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_11_Q
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_12_INV_0 : INV
    port map (
      I => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_12_652,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_12_Q
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_13_INV_0 : INV
    port map (
      I => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_13_653,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_13_Q
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_14_INV_0 : INV
    port map (
      I => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_14_654,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_14_Q
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_15_INV_0 : INV
    port map (
      I => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_15_655,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_15_Q
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_18_INV_0 : INV
    port map (
      I => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_18_658,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_18_Q
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_19_INV_0 : INV
    port map (
      I => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_19_659,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_19_Q
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_20_INV_0 : INV
    port map (
      I => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_20_660,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_20_Q
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_21_INV_0 : INV
    port map (
      I => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_21_661,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_21_Q
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_24_INV_0 : INV
    port map (
      I => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_24_664,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_24_Q
    );
  BU2_U0_clamp_min_B_c_4_1 : LUT4
    generic map(
      INIT => X"EFEE"
    )
    port map (
      I0 => BU2_U0_clip_max_B_reg_shift_register_1_4_638,
      I1 => BU2_U0_clip_max_B_reg_shift_register_1_9_628,
      I2 => BU2_U0_clip_max_B_reg_shift_register_1_7_632,
      I3 => BU2_N30,
      O => BU2_U0_clamp_min_B_c(4)
    );
  BU2_U0_clamp_min_G_c_4_1 : LUT4
    generic map(
      INIT => X"EFEE"
    )
    port map (
      I0 => BU2_U0_clip_max_G_reg_shift_register_1_4_619,
      I1 => BU2_U0_clip_max_G_reg_shift_register_1_9_609,
      I2 => BU2_U0_clip_max_G_reg_shift_register_1_7_613,
      I3 => BU2_N28,
      O => BU2_U0_clamp_min_G_c(4)
    );
  BU2_U0_clamp_min_R_c_4_1 : LUT4
    generic map(
      INIT => X"EFEE"
    )
    port map (
      I0 => BU2_U0_clip_max_R_reg_shift_register_1_4_600,
      I1 => BU2_U0_clip_max_R_reg_shift_register_1_9_590,
      I2 => BU2_U0_clip_max_R_reg_shift_register_1_7_594,
      I3 => BU2_N26,
      O => BU2_U0_clamp_min_R_c(4)
    );
  BU2_U0_clamp_min_B_c_7_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => BU2_U0_clip_max_B_reg_shift_register_1_9_628,
      I1 => BU2_U0_clip_max_B_reg_shift_register_1_7_632,
      O => BU2_U0_clamp_min_B_c(7)
    );
  BU2_U0_clamp_min_G_c_7_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => BU2_U0_clip_max_G_reg_shift_register_1_9_609,
      I1 => BU2_U0_clip_max_G_reg_shift_register_1_7_613,
      O => BU2_U0_clamp_min_G_c(7)
    );
  BU2_U0_clamp_min_R_c_7_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => BU2_U0_clip_max_R_reg_shift_register_1_9_590,
      I1 => BU2_U0_clip_max_R_reg_shift_register_1_7_594,
      O => BU2_U0_clamp_min_R_c(7)
    );
  BU2_U0_add_B_use_fabric_adder_Madd_c_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_24_76,
      O => BU2_U0_add_B_use_fabric_adder_Madd_c_xor_9_rt_230
    );
  BU2_U0_add_R_use_fabric_adder_Madd_c_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_24_162,
      O => BU2_U0_add_R_use_fabric_adder_Madd_c_xor_9_rt_201
    );
  BU2_U0_add_G_use_fabric_adder_Madd_c_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_24_144,
      O => BU2_U0_add_G_use_fabric_adder_Madd_c_xor_9_rt_164
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_9_683,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_9_rt_433
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_12_686,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_12_rt_427
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_13_687,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_13_rt_425
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_14_688,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_14_rt_423
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_17_691,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_17_rt_417
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_20_694,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_20_rt_411
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_21_695,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_21_rt_409
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_22_696,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_22_rt_407
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_23_697,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_23_rt_405
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_8_666,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_8_rt_400
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_9_667,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_9_rt_398
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_11_669,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_11_rt_394
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_12_670,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_12_rt_392
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_13_671,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_13_rt_390
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_14_672,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_14_rt_388
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_15_673,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_15_rt_386
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_16_674,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_16_rt_384
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_17_675,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_17_rt_382
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_18_676,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_18_rt_380
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_23_681,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_23_rt_370
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_8_648,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_8_rt_365
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_10_650,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_10_rt_361
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_16_656,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_16_rt_349
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_17_657,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_17_rt_347
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_22_662,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_22_rt_337
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_23_663,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_23_rt_335
    );
  BU2_U0_add_B_use_fabric_adder_Madd_c_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_24_76,
      O => BU2_U0_add_B_use_fabric_adder_Madd_c_cy_8_rt_233
    );
  BU2_U0_add_R_use_fabric_adder_Madd_c_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_24_162,
      O => BU2_U0_add_R_use_fabric_adder_Madd_c_cy_8_rt_204
    );
  BU2_U0_add_G_use_fabric_adder_Madd_c_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_24_144,
      O => BU2_U0_add_G_use_fabric_adder_Madd_c_cy_8_rt_167
    );
  BU2_U0_clamp_min_B_c_cmp_lt00001 : LUT4
    generic map(
      INIT => X"FF10"
    )
    port map (
      I0 => BU2_U0_clip_max_B_reg_shift_register_1_7_632,
      I1 => BU2_U0_clip_max_B_reg_shift_register_1_4_638,
      I2 => BU2_N37,
      I3 => BU2_U0_clip_max_B_reg_shift_register_1_9_628,
      O => BU2_U0_clamp_min_B_c_cmp_lt0000
    );
  BU2_U0_clamp_min_G_c_cmp_lt00001 : LUT4
    generic map(
      INIT => X"FF10"
    )
    port map (
      I0 => BU2_U0_clip_max_G_reg_shift_register_1_7_613,
      I1 => BU2_U0_clip_max_G_reg_shift_register_1_4_619,
      I2 => BU2_N36,
      I3 => BU2_U0_clip_max_G_reg_shift_register_1_9_609,
      O => BU2_U0_clamp_min_G_c_cmp_lt0000
    );
  BU2_U0_clamp_min_R_c_cmp_lt00001 : LUT4
    generic map(
      INIT => X"FF10"
    )
    port map (
      I0 => BU2_U0_clip_max_R_reg_shift_register_1_7_594,
      I1 => BU2_U0_clip_max_R_reg_shift_register_1_4_600,
      I2 => BU2_N35,
      I3 => BU2_U0_clip_max_R_reg_shift_register_1_9_590,
      O => BU2_U0_clamp_min_R_c_cmp_lt0000
    );
  BU2_U0_clamp_min_B_c_0_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_clip_max_B_reg_shift_register_1_0_646,
      I1 => BU2_U0_clamp_min_B_c_cmp_lt0000,
      O => BU2_U0_clamp_min_B_c(0)
    );
  BU2_U0_clamp_min_B_c_1_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_clip_max_B_reg_shift_register_1_1_644,
      I1 => BU2_U0_clamp_min_B_c_cmp_lt0000,
      O => BU2_U0_clamp_min_B_c(1)
    );
  BU2_U0_clamp_min_B_c_2_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_clip_max_B_reg_shift_register_1_2_642,
      I1 => BU2_U0_clamp_min_B_c_cmp_lt0000,
      O => BU2_U0_clamp_min_B_c(2)
    );
  BU2_U0_clamp_min_B_c_3_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_clip_max_B_reg_shift_register_1_3_640,
      I1 => BU2_U0_clamp_min_B_c_cmp_lt0000,
      O => BU2_U0_clamp_min_B_c(3)
    );
  BU2_U0_clamp_min_B_c_5_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_clip_max_B_reg_shift_register_1_5_636,
      I1 => BU2_U0_clamp_min_B_c_cmp_lt0000,
      O => BU2_U0_clamp_min_B_c(5)
    );
  BU2_U0_clamp_min_B_c_6_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_clip_max_B_reg_shift_register_1_6_634,
      I1 => BU2_U0_clamp_min_B_c_cmp_lt0000,
      O => BU2_U0_clamp_min_B_c(6)
    );
  BU2_U0_clamp_min_G_c_0_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_clip_max_G_reg_shift_register_1_0_627,
      I1 => BU2_U0_clamp_min_G_c_cmp_lt0000,
      O => BU2_U0_clamp_min_G_c(0)
    );
  BU2_U0_clamp_min_G_c_1_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_clip_max_G_reg_shift_register_1_1_625,
      I1 => BU2_U0_clamp_min_G_c_cmp_lt0000,
      O => BU2_U0_clamp_min_G_c(1)
    );
  BU2_U0_clamp_min_G_c_2_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_clip_max_G_reg_shift_register_1_2_623,
      I1 => BU2_U0_clamp_min_G_c_cmp_lt0000,
      O => BU2_U0_clamp_min_G_c(2)
    );
  BU2_U0_clamp_min_G_c_3_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_clip_max_G_reg_shift_register_1_3_621,
      I1 => BU2_U0_clamp_min_G_c_cmp_lt0000,
      O => BU2_U0_clamp_min_G_c(3)
    );
  BU2_U0_clamp_min_G_c_5_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_clip_max_G_reg_shift_register_1_5_617,
      I1 => BU2_U0_clamp_min_G_c_cmp_lt0000,
      O => BU2_U0_clamp_min_G_c(5)
    );
  BU2_U0_clamp_min_G_c_6_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_clip_max_G_reg_shift_register_1_6_615,
      I1 => BU2_U0_clamp_min_G_c_cmp_lt0000,
      O => BU2_U0_clamp_min_G_c(6)
    );
  BU2_U0_clamp_min_R_c_0_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_clip_max_R_reg_shift_register_1_0_608,
      I1 => BU2_U0_clamp_min_R_c_cmp_lt0000,
      O => BU2_U0_clamp_min_R_c(0)
    );
  BU2_U0_clamp_min_R_c_1_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_clip_max_R_reg_shift_register_1_1_606,
      I1 => BU2_U0_clamp_min_R_c_cmp_lt0000,
      O => BU2_U0_clamp_min_R_c(1)
    );
  BU2_U0_clamp_min_R_c_2_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_clip_max_R_reg_shift_register_1_2_604,
      I1 => BU2_U0_clamp_min_R_c_cmp_lt0000,
      O => BU2_U0_clamp_min_R_c(2)
    );
  BU2_U0_clamp_min_R_c_3_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_clip_max_R_reg_shift_register_1_3_602,
      I1 => BU2_U0_clamp_min_R_c_cmp_lt0000,
      O => BU2_U0_clamp_min_R_c(3)
    );
  BU2_U0_clamp_min_R_c_5_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_clip_max_R_reg_shift_register_1_5_598,
      I1 => BU2_U0_clamp_min_R_c_cmp_lt0000,
      O => BU2_U0_clamp_min_R_c(5)
    );
  BU2_U0_clamp_min_R_c_6_1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_clip_max_R_reg_shift_register_1_6_596,
      I1 => BU2_U0_clamp_min_R_c_cmp_lt0000,
      O => BU2_U0_clamp_min_R_c(6)
    );
  BU2_U0_clip_max_B_c_0_Q : LUT4
    generic map(
      INIT => X"CC04"
    )
    port map (
      I0 => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_8_564,
      I1 => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_0_556,
      I2 => BU2_N18,
      I3 => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_9_565,
      O => BU2_U0_clip_max_B_c(0)
    );
  BU2_U0_clip_max_B_c_1_Q : LUT4
    generic map(
      INIT => X"CC04"
    )
    port map (
      I0 => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_8_564,
      I1 => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_1_557,
      I2 => BU2_N18,
      I3 => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_9_565,
      O => BU2_U0_clip_max_B_c(1)
    );
  BU2_U0_clip_max_B_c_2_Q : LUT4
    generic map(
      INIT => X"CC04"
    )
    port map (
      I0 => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_8_564,
      I1 => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_2_558,
      I2 => BU2_N18,
      I3 => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_9_565,
      O => BU2_U0_clip_max_B_c(2)
    );
  BU2_U0_clip_max_B_c_3_Q : LUT4
    generic map(
      INIT => X"CC04"
    )
    port map (
      I0 => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_8_564,
      I1 => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_3_559,
      I2 => BU2_N34,
      I3 => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_9_565,
      O => BU2_U0_clip_max_B_c(3)
    );
  BU2_U0_clip_max_G_c_0_Q : LUT4
    generic map(
      INIT => X"CC04"
    )
    port map (
      I0 => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_8_554,
      I1 => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_0_546,
      I2 => BU2_N10,
      I3 => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_9_555,
      O => BU2_U0_clip_max_G_c(0)
    );
  BU2_U0_clip_max_G_c_1_Q : LUT4
    generic map(
      INIT => X"CC04"
    )
    port map (
      I0 => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_8_554,
      I1 => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_1_547,
      I2 => BU2_N10,
      I3 => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_9_555,
      O => BU2_U0_clip_max_G_c(1)
    );
  BU2_U0_clip_max_G_c_2_Q : LUT4
    generic map(
      INIT => X"CC04"
    )
    port map (
      I0 => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_8_554,
      I1 => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_2_548,
      I2 => BU2_N10,
      I3 => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_9_555,
      O => BU2_U0_clip_max_G_c(2)
    );
  BU2_U0_clip_max_G_c_3_Q : LUT4
    generic map(
      INIT => X"CC04"
    )
    port map (
      I0 => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_8_554,
      I1 => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_3_549,
      I2 => BU2_N33,
      I3 => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_9_555,
      O => BU2_U0_clip_max_G_c(3)
    );
  BU2_U0_clip_max_R_c_0_Q : LUT4
    generic map(
      INIT => X"CC04"
    )
    port map (
      I0 => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_8_544,
      I1 => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_0_536,
      I2 => BU2_N2,
      I3 => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_9_545,
      O => BU2_U0_clip_max_R_c(0)
    );
  BU2_U0_clip_max_R_c_1_Q : LUT4
    generic map(
      INIT => X"CC04"
    )
    port map (
      I0 => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_8_544,
      I1 => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_1_537,
      I2 => BU2_N2,
      I3 => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_9_545,
      O => BU2_U0_clip_max_R_c(1)
    );
  BU2_U0_clip_max_R_c_2_Q : LUT4
    generic map(
      INIT => X"CC04"
    )
    port map (
      I0 => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_8_544,
      I1 => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_2_538,
      I2 => BU2_N2,
      I3 => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_9_545,
      O => BU2_U0_clip_max_R_c(2)
    );
  BU2_U0_clip_max_R_c_3_Q : LUT4
    generic map(
      INIT => X"CC04"
    )
    port map (
      I0 => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_8_544,
      I1 => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_3_539,
      I2 => BU2_N32,
      I3 => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_9_545,
      O => BU2_U0_clip_max_R_c(3)
    );
  BU2_U0_clip_max_B_c_4_1 : LUT3
    generic map(
      INIT => X"BA"
    )
    port map (
      I0 => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_4_560,
      I1 => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_9_565,
      I2 => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_8_564,
      O => BU2_U0_clip_max_B_c(4)
    );
  BU2_U0_clip_max_B_c_5_1 : LUT3
    generic map(
      INIT => X"BA"
    )
    port map (
      I0 => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_5_561,
      I1 => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_9_565,
      I2 => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_8_564,
      O => BU2_U0_clip_max_B_c(5)
    );
  BU2_U0_clip_max_B_c_6_1 : LUT3
    generic map(
      INIT => X"BA"
    )
    port map (
      I0 => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_6_562,
      I1 => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_9_565,
      I2 => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_8_564,
      O => BU2_U0_clip_max_B_c(6)
    );
  BU2_U0_clip_max_B_c_7_1 : LUT3
    generic map(
      INIT => X"BA"
    )
    port map (
      I0 => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_7_563,
      I1 => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_9_565,
      I2 => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_8_564,
      O => BU2_U0_clip_max_B_c(7)
    );
  BU2_U0_clip_max_G_c_4_1 : LUT3
    generic map(
      INIT => X"BA"
    )
    port map (
      I0 => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_4_550,
      I1 => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_9_555,
      I2 => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_8_554,
      O => BU2_U0_clip_max_G_c(4)
    );
  BU2_U0_clip_max_G_c_5_1 : LUT3
    generic map(
      INIT => X"BA"
    )
    port map (
      I0 => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_5_551,
      I1 => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_9_555,
      I2 => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_8_554,
      O => BU2_U0_clip_max_G_c(5)
    );
  BU2_U0_clip_max_G_c_6_1 : LUT3
    generic map(
      INIT => X"BA"
    )
    port map (
      I0 => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_6_552,
      I1 => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_9_555,
      I2 => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_8_554,
      O => BU2_U0_clip_max_G_c(6)
    );
  BU2_U0_clip_max_G_c_7_1 : LUT3
    generic map(
      INIT => X"BA"
    )
    port map (
      I0 => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_7_553,
      I1 => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_9_555,
      I2 => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_8_554,
      O => BU2_U0_clip_max_G_c(7)
    );
  BU2_U0_clip_max_R_c_4_1 : LUT3
    generic map(
      INIT => X"BA"
    )
    port map (
      I0 => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_4_540,
      I1 => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_9_545,
      I2 => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_8_544,
      O => BU2_U0_clip_max_R_c(4)
    );
  BU2_U0_clip_max_R_c_5_1 : LUT3
    generic map(
      INIT => X"BA"
    )
    port map (
      I0 => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_5_541,
      I1 => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_9_545,
      I2 => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_8_544,
      O => BU2_U0_clip_max_R_c(5)
    );
  BU2_U0_clip_max_R_c_6_1 : LUT3
    generic map(
      INIT => X"BA"
    )
    port map (
      I0 => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_6_542,
      I1 => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_9_545,
      I2 => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_8_544,
      O => BU2_U0_clip_max_R_c(6)
    );
  BU2_U0_clip_max_R_c_7_1 : LUT3
    generic map(
      INIT => X"BA"
    )
    port map (
      I0 => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_7_543,
      I1 => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_9_545,
      I2 => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_8_544,
      O => BU2_U0_clip_max_R_c(7)
    );
  BU2_U0_clip_max_B_c_8_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_8_564,
      I1 => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_9_565,
      O => BU2_U0_clip_max_B_c(8)
    );
  BU2_U0_clip_max_G_c_8_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_8_554,
      I1 => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_9_555,
      O => BU2_U0_clip_max_G_c(8)
    );
  BU2_U0_clip_max_R_c_8_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_8_544,
      I1 => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_9_545,
      O => BU2_U0_clip_max_R_c(8)
    );
  BU2_U0_del_Cb_shift_register_1_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => cb_4(7),
      Q => BU2_U0_del_Cb_shift_register_1_7_511
    );
  BU2_U0_del_Cb_shift_register_1_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => cb_4(6),
      Q => BU2_U0_del_Cb_shift_register_1_6_512
    );
  BU2_U0_del_Cb_shift_register_1_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => cb_4(5),
      Q => BU2_U0_del_Cb_shift_register_1_5_513
    );
  BU2_U0_del_Cb_shift_register_1_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => cb_4(4),
      Q => BU2_U0_del_Cb_shift_register_1_4_514
    );
  BU2_U0_del_Cb_shift_register_1_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => cb_4(3),
      Q => BU2_U0_del_Cb_shift_register_1_3_515
    );
  BU2_U0_del_Cb_shift_register_1_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => cb_4(2),
      Q => BU2_U0_del_Cb_shift_register_1_2_516
    );
  BU2_U0_del_Cb_shift_register_1_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => cb_4(1),
      Q => BU2_U0_del_Cb_shift_register_1_1_517
    );
  BU2_U0_del_Cb_shift_register_1_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => cb_4(0),
      Q => BU2_U0_del_Cb_shift_register_1_0_518
    );
  BU2_U0_del_Cr_shift_register_1_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => cr_3(7),
      Q => BU2_U0_del_Cr_shift_register_1_7_435
    );
  BU2_U0_del_Cr_shift_register_1_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => cr_3(6),
      Q => BU2_U0_del_Cr_shift_register_1_6_436
    );
  BU2_U0_del_Cr_shift_register_1_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => cr_3(5),
      Q => BU2_U0_del_Cr_shift_register_1_5_437
    );
  BU2_U0_del_Cr_shift_register_1_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => cr_3(4),
      Q => BU2_U0_del_Cr_shift_register_1_4_438
    );
  BU2_U0_del_Cr_shift_register_1_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => cr_3(3),
      Q => BU2_U0_del_Cr_shift_register_1_3_439
    );
  BU2_U0_del_Cr_shift_register_1_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => cr_3(2),
      Q => BU2_U0_del_Cr_shift_register_1_2_440
    );
  BU2_U0_del_Cr_shift_register_1_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => cr_3(1),
      Q => BU2_U0_del_Cr_shift_register_1_1_441
    );
  BU2_U0_del_Cr_shift_register_1_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => cr_3(0),
      Q => BU2_U0_del_Cr_shift_register_1_0_442
    );
  BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_24 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register(1, 24),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_24_698
    );
  BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_23 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register(1, 23),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_23_697
    );
  BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_22 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register(1, 22),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_22_696
    );
  BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_21 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register(1, 21),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_21_695
    );
  BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_20 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register(1, 20),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_20_694
    );
  BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_19 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register(1, 19),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_19_693
    );
  BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_18 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register(1, 18),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_18_692
    );
  BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_17 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register(1, 17),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_17_691
    );
  BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_16 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register(1, 16),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_16_690
    );
  BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_15 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register(1, 15),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_15_689
    );
  BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_14 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register(1, 14),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_14_688
    );
  BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_13 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register(1, 13),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_13_687
    );
  BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_12 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register(1, 12),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_12_686
    );
  BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_11 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register(1, 11),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_11_685
    );
  BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_10 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register(1, 10),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_10_684
    );
  BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_9 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register(1, 9),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_9_683
    );
  BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_8 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register(1, 8),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_8_682
    );
  BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_25 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register(1, 24),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_25_368
    );
  BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_23 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register(1, 23),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_23_681
    );
  BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_22 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register(1, 22),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_22_680
    );
  BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_21 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register(1, 21),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_21_679
    );
  BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_20 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register(1, 20),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_20_678
    );
  BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_19 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register(1, 19),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_19_677
    );
  BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_18 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register(1, 18),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_18_676
    );
  BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_17 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register(1, 17),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_17_675
    );
  BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_16 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register(1, 16),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_16_674
    );
  BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_15 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register(1, 15),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_15_673
    );
  BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_14 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register(1, 14),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_14_672
    );
  BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_13 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register(1, 13),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_13_671
    );
  BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_12 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register(1, 12),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_12_670
    );
  BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_11 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register(1, 11),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_11_669
    );
  BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_10 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register(1, 10),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_10_668
    );
  BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_9 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register(1, 9),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_9_667
    );
  BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_8 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register(1, 8),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_8_666
    );
  BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register(1, 7),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_7_665
    );
  BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register(1, 6),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_6_89
    );
  BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register(1, 5),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_5_87
    );
  BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register(1, 4),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_4_85
    );
  BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register(1, 3),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_3_83
    );
  BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register(1, 2),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_2_81
    );
  BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register(1, 1),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_1_79
    );
  BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register(1, 0),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_0_77
    );
  BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_24 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register(1, 24),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_24_260
    );
  BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_23 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register(1, 23),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_23_263
    );
  BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_22 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register(1, 22),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_22_266
    );
  BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_21 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register(1, 21),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_21_269
    );
  BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_20 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register(1, 20),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_20_272
    );
  BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_19 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register(1, 19),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_19_275
    );
  BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_18 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register(1, 18),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_18_278
    );
  BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_17 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register(1, 17),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_17_281
    );
  BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_16 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register(1, 16),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_16_284
    );
  BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_15 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register(1, 15),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_15_286
    );
  BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_14 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register(1, 14),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_14_289
    );
  BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_13 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register(1, 13),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_13_292
    );
  BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_12 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register(1, 12),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_12_295
    );
  BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_11 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register(1, 11),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_11_298
    );
  BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_10 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register(1, 10),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_10_301
    );
  BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_9 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register(1, 9),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_9_304
    );
  BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_8 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register(1, 8),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_8_307
    );
  BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register(1, 7),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_7_310
    );
  BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register(1, 6),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_6_313
    );
  BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register(1, 5),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_5_316
    );
  BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register(1, 4),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_4_319
    );
  BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register(1, 3),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_3_322
    );
  BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register(1, 2),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_2_325
    );
  BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register(1, 1),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_1_328
    );
  BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register(1, 0),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_0_330
    );
  BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_24 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register(1, 24),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_24_664
    );
  BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_23 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register(1, 23),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_23_663
    );
  BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_22 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register(1, 22),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_22_662
    );
  BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_21 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register(1, 21),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_21_661
    );
  BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_20 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register(1, 20),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_20_660
    );
  BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_19 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register(1, 19),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_19_659
    );
  BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_18 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register(1, 18),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_18_658
    );
  BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_17 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register(1, 17),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_17_657
    );
  BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_16 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register(1, 16),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_16_656
    );
  BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_15 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register(1, 15),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_15_655
    );
  BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_14 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register(1, 14),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_14_654
    );
  BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_13 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register(1, 13),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_13_653
    );
  BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_12 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register(1, 12),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_12_652
    );
  BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_11 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register(1, 11),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_11_651
    );
  BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_10 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register(1, 10),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_10_650
    );
  BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_9 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register(1, 9),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_9_649
    );
  BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_8 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register(1, 8),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_8_648
    );
  BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register(1, 7),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_7_647
    );
  BU2_U0_clip_max_B_reg_shift_register_1_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_clip_max_B_c(0),
      R => sclr,
      Q => BU2_U0_clip_max_B_reg_shift_register_1_0_646
    );
  BU2_U0_clip_max_B_reg_shift_register_1_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_clip_max_B_c(1),
      R => sclr,
      Q => BU2_U0_clip_max_B_reg_shift_register_1_1_644
    );
  BU2_U0_clip_max_B_reg_shift_register_1_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_clip_max_B_c(2),
      R => sclr,
      Q => BU2_U0_clip_max_B_reg_shift_register_1_2_642
    );
  BU2_U0_clip_max_B_reg_shift_register_1_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_clip_max_B_c(3),
      R => sclr,
      Q => BU2_U0_clip_max_B_reg_shift_register_1_3_640
    );
  BU2_U0_clip_max_B_reg_shift_register_1_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_clip_max_B_c(4),
      R => sclr,
      Q => BU2_U0_clip_max_B_reg_shift_register_1_4_638
    );
  BU2_U0_clip_max_B_reg_shift_register_1_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_clip_max_B_c(5),
      R => sclr,
      Q => BU2_U0_clip_max_B_reg_shift_register_1_5_636
    );
  BU2_U0_clip_max_B_reg_shift_register_1_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_clip_max_B_c(6),
      R => sclr,
      Q => BU2_U0_clip_max_B_reg_shift_register_1_6_634
    );
  BU2_U0_clip_max_B_reg_shift_register_1_7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_clip_max_B_c(7),
      R => sclr,
      Q => BU2_U0_clip_max_B_reg_shift_register_1_7_632
    );
  BU2_U0_clip_max_B_reg_shift_register_1_8 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_clip_max_B_c(8),
      R => sclr,
      Q => BU2_U0_clip_max_B_reg_shift_register_1_8_630
    );
  BU2_U0_clip_max_B_reg_shift_register_1_9 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_9_565,
      R => sclr,
      Q => BU2_U0_clip_max_B_reg_shift_register_1_9_628
    );
  BU2_U0_clip_max_G_reg_shift_register_1_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_clip_max_G_c(0),
      R => sclr,
      Q => BU2_U0_clip_max_G_reg_shift_register_1_0_627
    );
  BU2_U0_clip_max_G_reg_shift_register_1_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_clip_max_G_c(1),
      R => sclr,
      Q => BU2_U0_clip_max_G_reg_shift_register_1_1_625
    );
  BU2_U0_clip_max_G_reg_shift_register_1_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_clip_max_G_c(2),
      R => sclr,
      Q => BU2_U0_clip_max_G_reg_shift_register_1_2_623
    );
  BU2_U0_clip_max_G_reg_shift_register_1_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_clip_max_G_c(3),
      R => sclr,
      Q => BU2_U0_clip_max_G_reg_shift_register_1_3_621
    );
  BU2_U0_clip_max_G_reg_shift_register_1_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_clip_max_G_c(4),
      R => sclr,
      Q => BU2_U0_clip_max_G_reg_shift_register_1_4_619
    );
  BU2_U0_clip_max_G_reg_shift_register_1_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_clip_max_G_c(5),
      R => sclr,
      Q => BU2_U0_clip_max_G_reg_shift_register_1_5_617
    );
  BU2_U0_clip_max_G_reg_shift_register_1_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_clip_max_G_c(6),
      R => sclr,
      Q => BU2_U0_clip_max_G_reg_shift_register_1_6_615
    );
  BU2_U0_clip_max_G_reg_shift_register_1_7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_clip_max_G_c(7),
      R => sclr,
      Q => BU2_U0_clip_max_G_reg_shift_register_1_7_613
    );
  BU2_U0_clip_max_G_reg_shift_register_1_8 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_clip_max_G_c(8),
      R => sclr,
      Q => BU2_U0_clip_max_G_reg_shift_register_1_8_611
    );
  BU2_U0_clip_max_G_reg_shift_register_1_9 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_9_555,
      R => sclr,
      Q => BU2_U0_clip_max_G_reg_shift_register_1_9_609
    );
  BU2_U0_clip_max_R_reg_shift_register_1_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_clip_max_R_c(0),
      R => sclr,
      Q => BU2_U0_clip_max_R_reg_shift_register_1_0_608
    );
  BU2_U0_clip_max_R_reg_shift_register_1_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_clip_max_R_c(1),
      R => sclr,
      Q => BU2_U0_clip_max_R_reg_shift_register_1_1_606
    );
  BU2_U0_clip_max_R_reg_shift_register_1_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_clip_max_R_c(2),
      R => sclr,
      Q => BU2_U0_clip_max_R_reg_shift_register_1_2_604
    );
  BU2_U0_clip_max_R_reg_shift_register_1_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_clip_max_R_c(3),
      R => sclr,
      Q => BU2_U0_clip_max_R_reg_shift_register_1_3_602
    );
  BU2_U0_clip_max_R_reg_shift_register_1_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_clip_max_R_c(4),
      R => sclr,
      Q => BU2_U0_clip_max_R_reg_shift_register_1_4_600
    );
  BU2_U0_clip_max_R_reg_shift_register_1_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_clip_max_R_c(5),
      R => sclr,
      Q => BU2_U0_clip_max_R_reg_shift_register_1_5_598
    );
  BU2_U0_clip_max_R_reg_shift_register_1_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_clip_max_R_c(6),
      R => sclr,
      Q => BU2_U0_clip_max_R_reg_shift_register_1_6_596
    );
  BU2_U0_clip_max_R_reg_shift_register_1_7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_clip_max_R_c(7),
      R => sclr,
      Q => BU2_U0_clip_max_R_reg_shift_register_1_7_594
    );
  BU2_U0_clip_max_R_reg_shift_register_1_8 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_clip_max_R_c(8),
      R => sclr,
      Q => BU2_U0_clip_max_R_reg_shift_register_1_8_592
    );
  BU2_U0_clip_max_R_reg_shift_register_1_9 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_9_545,
      R => sclr,
      Q => BU2_U0_clip_max_R_reg_shift_register_1_9_590
    );
  BU2_U0_clamp_min_B_reg_shift_register_1_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_clamp_min_B_c(0),
      R => sclr,
      Q => b_7(0)
    );
  BU2_U0_clamp_min_B_reg_shift_register_1_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_clamp_min_B_c(1),
      R => sclr,
      Q => b_7(1)
    );
  BU2_U0_clamp_min_B_reg_shift_register_1_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_clamp_min_B_c(2),
      R => sclr,
      Q => b_7(2)
    );
  BU2_U0_clamp_min_B_reg_shift_register_1_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_clamp_min_B_c(3),
      R => sclr,
      Q => b_7(3)
    );
  BU2_U0_clamp_min_B_reg_shift_register_1_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_clamp_min_B_c(4),
      R => sclr,
      Q => b_7(4)
    );
  BU2_U0_clamp_min_B_reg_shift_register_1_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_clamp_min_B_c(5),
      R => sclr,
      Q => b_7(5)
    );
  BU2_U0_clamp_min_B_reg_shift_register_1_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_clamp_min_B_c(6),
      R => sclr,
      Q => b_7(6)
    );
  BU2_U0_clamp_min_B_reg_shift_register_1_7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_clamp_min_B_c(7),
      R => sclr,
      Q => b_7(7)
    );
  BU2_U0_clamp_min_G_reg_shift_register_1_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_clamp_min_G_c(0),
      R => sclr,
      Q => g_6(0)
    );
  BU2_U0_clamp_min_G_reg_shift_register_1_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_clamp_min_G_c(1),
      R => sclr,
      Q => g_6(1)
    );
  BU2_U0_clamp_min_G_reg_shift_register_1_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_clamp_min_G_c(2),
      R => sclr,
      Q => g_6(2)
    );
  BU2_U0_clamp_min_G_reg_shift_register_1_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_clamp_min_G_c(3),
      R => sclr,
      Q => g_6(3)
    );
  BU2_U0_clamp_min_G_reg_shift_register_1_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_clamp_min_G_c(4),
      R => sclr,
      Q => g_6(4)
    );
  BU2_U0_clamp_min_G_reg_shift_register_1_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_clamp_min_G_c(5),
      R => sclr,
      Q => g_6(5)
    );
  BU2_U0_clamp_min_G_reg_shift_register_1_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_clamp_min_G_c(6),
      R => sclr,
      Q => g_6(6)
    );
  BU2_U0_clamp_min_G_reg_shift_register_1_7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_clamp_min_G_c(7),
      R => sclr,
      Q => g_6(7)
    );
  BU2_U0_clamp_min_R_reg_shift_register_1_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_clamp_min_R_c(0),
      R => sclr,
      Q => r_5(0)
    );
  BU2_U0_clamp_min_R_reg_shift_register_1_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_clamp_min_R_c(1),
      R => sclr,
      Q => r_5(1)
    );
  BU2_U0_clamp_min_R_reg_shift_register_1_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_clamp_min_R_c(2),
      R => sclr,
      Q => r_5(2)
    );
  BU2_U0_clamp_min_R_reg_shift_register_1_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_clamp_min_R_c(3),
      R => sclr,
      Q => r_5(3)
    );
  BU2_U0_clamp_min_R_reg_shift_register_1_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_clamp_min_R_c(4),
      R => sclr,
      Q => r_5(4)
    );
  BU2_U0_clamp_min_R_reg_shift_register_1_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_clamp_min_R_c(5),
      R => sclr,
      Q => r_5(5)
    );
  BU2_U0_clamp_min_R_reg_shift_register_1_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_clamp_min_R_c(6),
      R => sclr,
      Q => r_5(6)
    );
  BU2_U0_clamp_min_R_reg_shift_register_1_7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_clamp_min_R_c(7),
      R => sclr,
      Q => r_5(7)
    );
  BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_9 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_add_B_use_fabric_adder_c(9),
      R => sclr,
      Q => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_9_565
    );
  BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_8 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_add_B_use_fabric_adder_c(8),
      R => sclr,
      Q => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_8_564
    );
  BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_add_B_use_fabric_adder_c(7),
      R => sclr,
      Q => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_7_563
    );
  BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_add_B_use_fabric_adder_c(6),
      R => sclr,
      Q => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_6_562
    );
  BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_add_B_use_fabric_adder_c(5),
      R => sclr,
      Q => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_5_561
    );
  BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_add_B_use_fabric_adder_c(4),
      R => sclr,
      Q => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_4_560
    );
  BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_add_B_use_fabric_adder_c(3),
      R => sclr,
      Q => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_3_559
    );
  BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_add_B_use_fabric_adder_c(2),
      R => sclr,
      Q => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_2_558
    );
  BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_add_B_use_fabric_adder_c(1),
      R => sclr,
      Q => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_1_557
    );
  BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_add_B_use_fabric_adder_c(0),
      R => sclr,
      Q => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_0_556
    );
  BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_9 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_add_G_use_fabric_adder_c(9),
      R => sclr,
      Q => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_9_555
    );
  BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_8 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_add_G_use_fabric_adder_c(8),
      R => sclr,
      Q => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_8_554
    );
  BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_add_G_use_fabric_adder_c(7),
      R => sclr,
      Q => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_7_553
    );
  BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_add_G_use_fabric_adder_c(6),
      R => sclr,
      Q => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_6_552
    );
  BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_add_G_use_fabric_adder_c(5),
      R => sclr,
      Q => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_5_551
    );
  BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_add_G_use_fabric_adder_c(4),
      R => sclr,
      Q => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_4_550
    );
  BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_add_G_use_fabric_adder_c(3),
      R => sclr,
      Q => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_3_549
    );
  BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_add_G_use_fabric_adder_c(2),
      R => sclr,
      Q => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_2_548
    );
  BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_add_G_use_fabric_adder_c(1),
      R => sclr,
      Q => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_1_547
    );
  BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_add_G_use_fabric_adder_c(0),
      R => sclr,
      Q => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_0_546
    );
  BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_9 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_add_R_use_fabric_adder_c(9),
      R => sclr,
      Q => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_9_545
    );
  BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_8 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_add_R_use_fabric_adder_c(8),
      R => sclr,
      Q => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_8_544
    );
  BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_add_R_use_fabric_adder_c(7),
      R => sclr,
      Q => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_7_543
    );
  BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_add_R_use_fabric_adder_c(6),
      R => sclr,
      Q => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_6_542
    );
  BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_add_R_use_fabric_adder_c(5),
      R => sclr,
      Q => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_5_541
    );
  BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_add_R_use_fabric_adder_c(4),
      R => sclr,
      Q => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_4_540
    );
  BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_add_R_use_fabric_adder_c(3),
      R => sclr,
      Q => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_3_539
    );
  BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_add_R_use_fabric_adder_c(2),
      R => sclr,
      Q => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_2_538
    );
  BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_add_R_use_fabric_adder_c(1),
      R => sclr,
      Q => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_1_537
    );
  BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_add_R_use_fabric_adder_c(0),
      R => sclr,
      Q => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_0_536
    );
  BU2_U0_sp3_v2_v2p_mult_dCb_Mmult_c : MULT18X18S
    port map (
      C => clk,
      CE => ce,
      R => sclr,
      A(17) => BU2_N0,
      A(16) => BU2_N1,
      A(15) => BU2_N1,
      A(14) => BU2_N1,
      A(13) => BU2_N0,
      A(12) => BU2_N0,
      A(11) => BU2_N0,
      A(10) => BU2_N1,
      A(9) => BU2_N0,
      A(8) => BU2_N1,
      A(7) => BU2_N1,
      A(6) => BU2_N1,
      A(5) => BU2_N1,
      A(4) => BU2_N0,
      A(3) => BU2_N0,
      A(2) => BU2_N1,
      A(1) => BU2_N1,
      A(0) => BU2_N0,
      B(17) => BU2_N0,
      B(16) => BU2_N0,
      B(15) => BU2_N0,
      B(14) => BU2_N0,
      B(13) => BU2_N0,
      B(12) => BU2_N0,
      B(11) => BU2_N0,
      B(10) => BU2_N0,
      B(9) => BU2_N0,
      B(8) => BU2_N0,
      B(7) => BU2_U0_del_Cb_shift_register_1_7_511,
      B(6) => BU2_U0_del_Cb_shift_register_1_6_512,
      B(5) => BU2_U0_del_Cb_shift_register_1_5_513,
      B(4) => BU2_U0_del_Cb_shift_register_1_4_514,
      B(3) => BU2_U0_del_Cb_shift_register_1_3_515,
      B(2) => BU2_U0_del_Cb_shift_register_1_2_516,
      B(1) => BU2_U0_del_Cb_shift_register_1_1_517,
      B(0) => BU2_U0_del_Cb_shift_register_1_0_518,
      P(35) => NLW_BU2_U0_sp3_v2_v2p_mult_dCb_Mmult_c_P_35_UNCONNECTED,
      P(34) => NLW_BU2_U0_sp3_v2_v2p_mult_dCb_Mmult_c_P_34_UNCONNECTED,
      P(33) => NLW_BU2_U0_sp3_v2_v2p_mult_dCb_Mmult_c_P_33_UNCONNECTED,
      P(32) => NLW_BU2_U0_sp3_v2_v2p_mult_dCb_Mmult_c_P_32_UNCONNECTED,
      P(31) => NLW_BU2_U0_sp3_v2_v2p_mult_dCb_Mmult_c_P_31_UNCONNECTED,
      P(30) => NLW_BU2_U0_sp3_v2_v2p_mult_dCb_Mmult_c_P_30_UNCONNECTED,
      P(29) => NLW_BU2_U0_sp3_v2_v2p_mult_dCb_Mmult_c_P_29_UNCONNECTED,
      P(28) => NLW_BU2_U0_sp3_v2_v2p_mult_dCb_Mmult_c_P_28_UNCONNECTED,
      P(27) => NLW_BU2_U0_sp3_v2_v2p_mult_dCb_Mmult_c_P_27_UNCONNECTED,
      P(26) => NLW_BU2_U0_sp3_v2_v2p_mult_dCb_Mmult_c_P_26_UNCONNECTED,
      P(25) => NLW_BU2_U0_sp3_v2_v2p_mult_dCb_Mmult_c_P_25_UNCONNECTED,
      P(24) => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register(1, 24),
      P(23) => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register(1, 23),
      P(22) => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register(1, 22),
      P(21) => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register(1, 21),
      P(20) => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register(1, 20),
      P(19) => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register(1, 19),
      P(18) => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register(1, 18),
      P(17) => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register(1, 17),
      P(16) => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register(1, 16),
      P(15) => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register(1, 15),
      P(14) => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register(1, 14),
      P(13) => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register(1, 13),
      P(12) => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register(1, 12),
      P(11) => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register(1, 11),
      P(10) => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register(1, 10),
      P(9) => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register(1, 9),
      P(8) => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register(1, 8),
      P(7) => NLW_BU2_U0_sp3_v2_v2p_mult_dCb_Mmult_c_P_7_UNCONNECTED,
      P(6) => NLW_BU2_U0_sp3_v2_v2p_mult_dCb_Mmult_c_P_6_UNCONNECTED,
      P(5) => NLW_BU2_U0_sp3_v2_v2p_mult_dCb_Mmult_c_P_5_UNCONNECTED,
      P(4) => NLW_BU2_U0_sp3_v2_v2p_mult_dCb_Mmult_c_P_4_UNCONNECTED,
      P(3) => NLW_BU2_U0_sp3_v2_v2p_mult_dCb_Mmult_c_P_3_UNCONNECTED,
      P(2) => NLW_BU2_U0_sp3_v2_v2p_mult_dCb_Mmult_c_P_2_UNCONNECTED,
      P(1) => NLW_BU2_U0_sp3_v2_v2p_mult_dCb_Mmult_c_P_1_UNCONNECTED,
      P(0) => NLW_BU2_U0_sp3_v2_v2p_mult_dCb_Mmult_c_P_0_UNCONNECTED
    );
  BU2_U0_sp3_v2_v2p_mult_aCr_Mmult_c : MULT18X18S
    port map (
      C => clk,
      CE => ce,
      R => sclr,
      A(17) => BU2_N0,
      A(16) => BU2_N1,
      A(15) => BU2_N0,
      A(14) => BU2_N1,
      A(13) => BU2_N1,
      A(12) => BU2_N0,
      A(11) => BU2_N0,
      A(10) => BU2_N1,
      A(9) => BU2_N1,
      A(8) => BU2_N1,
      A(7) => BU2_N0,
      A(6) => BU2_N0,
      A(5) => BU2_N0,
      A(4) => BU2_N0,
      A(3) => BU2_N1,
      A(2) => BU2_N0,
      A(1) => BU2_N1,
      A(0) => BU2_N1,
      B(17) => BU2_N0,
      B(16) => BU2_N0,
      B(15) => BU2_N0,
      B(14) => BU2_N0,
      B(13) => BU2_N0,
      B(12) => BU2_N0,
      B(11) => BU2_N0,
      B(10) => BU2_N0,
      B(9) => BU2_N0,
      B(8) => BU2_N0,
      B(7) => BU2_U0_del_Cr_shift_register_1_7_435,
      B(6) => BU2_U0_del_Cr_shift_register_1_6_436,
      B(5) => BU2_U0_del_Cr_shift_register_1_5_437,
      B(4) => BU2_U0_del_Cr_shift_register_1_4_438,
      B(3) => BU2_U0_del_Cr_shift_register_1_3_439,
      B(2) => BU2_U0_del_Cr_shift_register_1_2_440,
      B(1) => BU2_U0_del_Cr_shift_register_1_1_441,
      B(0) => BU2_U0_del_Cr_shift_register_1_0_442,
      P(35) => NLW_BU2_U0_sp3_v2_v2p_mult_aCr_Mmult_c_P_35_UNCONNECTED,
      P(34) => NLW_BU2_U0_sp3_v2_v2p_mult_aCr_Mmult_c_P_34_UNCONNECTED,
      P(33) => NLW_BU2_U0_sp3_v2_v2p_mult_aCr_Mmult_c_P_33_UNCONNECTED,
      P(32) => NLW_BU2_U0_sp3_v2_v2p_mult_aCr_Mmult_c_P_32_UNCONNECTED,
      P(31) => NLW_BU2_U0_sp3_v2_v2p_mult_aCr_Mmult_c_P_31_UNCONNECTED,
      P(30) => NLW_BU2_U0_sp3_v2_v2p_mult_aCr_Mmult_c_P_30_UNCONNECTED,
      P(29) => NLW_BU2_U0_sp3_v2_v2p_mult_aCr_Mmult_c_P_29_UNCONNECTED,
      P(28) => NLW_BU2_U0_sp3_v2_v2p_mult_aCr_Mmult_c_P_28_UNCONNECTED,
      P(27) => NLW_BU2_U0_sp3_v2_v2p_mult_aCr_Mmult_c_P_27_UNCONNECTED,
      P(26) => NLW_BU2_U0_sp3_v2_v2p_mult_aCr_Mmult_c_P_26_UNCONNECTED,
      P(25) => NLW_BU2_U0_sp3_v2_v2p_mult_aCr_Mmult_c_P_25_UNCONNECTED,
      P(24) => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register(1, 24),
      P(23) => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register(1, 23),
      P(22) => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register(1, 22),
      P(21) => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register(1, 21),
      P(20) => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register(1, 20),
      P(19) => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register(1, 19),
      P(18) => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register(1, 18),
      P(17) => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register(1, 17),
      P(16) => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register(1, 16),
      P(15) => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register(1, 15),
      P(14) => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register(1, 14),
      P(13) => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register(1, 13),
      P(12) => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register(1, 12),
      P(11) => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register(1, 11),
      P(10) => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register(1, 10),
      P(9) => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register(1, 9),
      P(8) => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register(1, 8),
      P(7) => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register(1, 7),
      P(6) => NLW_BU2_U0_sp3_v2_v2p_mult_aCr_Mmult_c_P_6_UNCONNECTED,
      P(5) => NLW_BU2_U0_sp3_v2_v2p_mult_aCr_Mmult_c_P_5_UNCONNECTED,
      P(4) => NLW_BU2_U0_sp3_v2_v2p_mult_aCr_Mmult_c_P_4_UNCONNECTED,
      P(3) => NLW_BU2_U0_sp3_v2_v2p_mult_aCr_Mmult_c_P_3_UNCONNECTED,
      P(2) => NLW_BU2_U0_sp3_v2_v2p_mult_aCr_Mmult_c_P_2_UNCONNECTED,
      P(1) => NLW_BU2_U0_sp3_v2_v2p_mult_aCr_Mmult_c_P_1_UNCONNECTED,
      P(0) => NLW_BU2_U0_sp3_v2_v2p_mult_aCr_Mmult_c_P_0_UNCONNECTED
    );
  BU2_U0_sp3_v2_v2p_mult_cCb_Mmult_c : MULT18X18S
    port map (
      C => clk,
      CE => ce,
      R => sclr,
      A(17) => BU2_N1,
      A(16) => BU2_N1,
      A(15) => BU2_N1,
      A(14) => BU2_N0,
      A(13) => BU2_N1,
      A(12) => BU2_N0,
      A(11) => BU2_N0,
      A(10) => BU2_N1,
      A(9) => BU2_N1,
      A(8) => BU2_N1,
      A(7) => BU2_N1,
      A(6) => BU2_N1,
      A(5) => BU2_N0,
      A(4) => BU2_N1,
      A(3) => BU2_N1,
      A(2) => BU2_N0,
      A(1) => BU2_N1,
      A(0) => BU2_N0,
      B(17) => BU2_N0,
      B(16) => BU2_N0,
      B(15) => BU2_N0,
      B(14) => BU2_N0,
      B(13) => BU2_N0,
      B(12) => BU2_N0,
      B(11) => BU2_N0,
      B(10) => BU2_N0,
      B(9) => BU2_N0,
      B(8) => BU2_N0,
      B(7) => cb_4(7),
      B(6) => cb_4(6),
      B(5) => cb_4(5),
      B(4) => cb_4(4),
      B(3) => cb_4(3),
      B(2) => cb_4(2),
      B(1) => cb_4(1),
      B(0) => cb_4(0),
      P(35) => NLW_BU2_U0_sp3_v2_v2p_mult_cCb_Mmult_c_P_35_UNCONNECTED,
      P(34) => NLW_BU2_U0_sp3_v2_v2p_mult_cCb_Mmult_c_P_34_UNCONNECTED,
      P(33) => NLW_BU2_U0_sp3_v2_v2p_mult_cCb_Mmult_c_P_33_UNCONNECTED,
      P(32) => NLW_BU2_U0_sp3_v2_v2p_mult_cCb_Mmult_c_P_32_UNCONNECTED,
      P(31) => NLW_BU2_U0_sp3_v2_v2p_mult_cCb_Mmult_c_P_31_UNCONNECTED,
      P(30) => NLW_BU2_U0_sp3_v2_v2p_mult_cCb_Mmult_c_P_30_UNCONNECTED,
      P(29) => NLW_BU2_U0_sp3_v2_v2p_mult_cCb_Mmult_c_P_29_UNCONNECTED,
      P(28) => NLW_BU2_U0_sp3_v2_v2p_mult_cCb_Mmult_c_P_28_UNCONNECTED,
      P(27) => NLW_BU2_U0_sp3_v2_v2p_mult_cCb_Mmult_c_P_27_UNCONNECTED,
      P(26) => NLW_BU2_U0_sp3_v2_v2p_mult_cCb_Mmult_c_P_26_UNCONNECTED,
      P(25) => NLW_BU2_U0_sp3_v2_v2p_mult_cCb_Mmult_c_P_25_UNCONNECTED,
      P(24) => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register(1, 24),
      P(23) => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register(1, 23),
      P(22) => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register(1, 22),
      P(21) => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register(1, 21),
      P(20) => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register(1, 20),
      P(19) => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register(1, 19),
      P(18) => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register(1, 18),
      P(17) => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register(1, 17),
      P(16) => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register(1, 16),
      P(15) => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register(1, 15),
      P(14) => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register(1, 14),
      P(13) => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register(1, 13),
      P(12) => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register(1, 12),
      P(11) => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register(1, 11),
      P(10) => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register(1, 10),
      P(9) => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register(1, 9),
      P(8) => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register(1, 8),
      P(7) => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register(1, 7),
      P(6) => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register(1, 6),
      P(5) => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register(1, 5),
      P(4) => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register(1, 4),
      P(3) => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register(1, 3),
      P(2) => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register(1, 2),
      P(1) => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register(1, 1),
      P(0) => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register(1, 0)
    );
  BU2_U0_sp3_v2_v2p_mult_bCr_Mmult_c : MULT18X18S
    port map (
      C => clk,
      CE => ce,
      R => sclr,
      A(17) => BU2_N1,
      A(16) => BU2_N1,
      A(15) => BU2_N0,
      A(14) => BU2_N1,
      A(13) => BU2_N0,
      A(12) => BU2_N0,
      A(11) => BU2_N1,
      A(10) => BU2_N0,
      A(9) => BU2_N0,
      A(8) => BU2_N1,
      A(7) => BU2_N0,
      A(6) => BU2_N0,
      A(5) => BU2_N0,
      A(4) => BU2_N1,
      A(3) => BU2_N1,
      A(2) => BU2_N1,
      A(1) => BU2_N0,
      A(0) => BU2_N1,
      B(17) => BU2_N0,
      B(16) => BU2_N0,
      B(15) => BU2_N0,
      B(14) => BU2_N0,
      B(13) => BU2_N0,
      B(12) => BU2_N0,
      B(11) => BU2_N0,
      B(10) => BU2_N0,
      B(9) => BU2_N0,
      B(8) => BU2_N0,
      B(7) => BU2_U0_del_Cr_shift_register_1_7_435,
      B(6) => BU2_U0_del_Cr_shift_register_1_6_436,
      B(5) => BU2_U0_del_Cr_shift_register_1_5_437,
      B(4) => BU2_U0_del_Cr_shift_register_1_4_438,
      B(3) => BU2_U0_del_Cr_shift_register_1_3_439,
      B(2) => BU2_U0_del_Cr_shift_register_1_2_440,
      B(1) => BU2_U0_del_Cr_shift_register_1_1_441,
      B(0) => BU2_U0_del_Cr_shift_register_1_0_442,
      P(35) => NLW_BU2_U0_sp3_v2_v2p_mult_bCr_Mmult_c_P_35_UNCONNECTED,
      P(34) => NLW_BU2_U0_sp3_v2_v2p_mult_bCr_Mmult_c_P_34_UNCONNECTED,
      P(33) => NLW_BU2_U0_sp3_v2_v2p_mult_bCr_Mmult_c_P_33_UNCONNECTED,
      P(32) => NLW_BU2_U0_sp3_v2_v2p_mult_bCr_Mmult_c_P_32_UNCONNECTED,
      P(31) => NLW_BU2_U0_sp3_v2_v2p_mult_bCr_Mmult_c_P_31_UNCONNECTED,
      P(30) => NLW_BU2_U0_sp3_v2_v2p_mult_bCr_Mmult_c_P_30_UNCONNECTED,
      P(29) => NLW_BU2_U0_sp3_v2_v2p_mult_bCr_Mmult_c_P_29_UNCONNECTED,
      P(28) => NLW_BU2_U0_sp3_v2_v2p_mult_bCr_Mmult_c_P_28_UNCONNECTED,
      P(27) => NLW_BU2_U0_sp3_v2_v2p_mult_bCr_Mmult_c_P_27_UNCONNECTED,
      P(26) => NLW_BU2_U0_sp3_v2_v2p_mult_bCr_Mmult_c_P_26_UNCONNECTED,
      P(25) => NLW_BU2_U0_sp3_v2_v2p_mult_bCr_Mmult_c_P_25_UNCONNECTED,
      P(24) => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register(1, 24),
      P(23) => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register(1, 23),
      P(22) => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register(1, 22),
      P(21) => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register(1, 21),
      P(20) => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register(1, 20),
      P(19) => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register(1, 19),
      P(18) => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register(1, 18),
      P(17) => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register(1, 17),
      P(16) => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register(1, 16),
      P(15) => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register(1, 15),
      P(14) => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register(1, 14),
      P(13) => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register(1, 13),
      P(12) => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register(1, 12),
      P(11) => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register(1, 11),
      P(10) => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register(1, 10),
      P(9) => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register(1, 9),
      P(8) => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register(1, 8),
      P(7) => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register(1, 7),
      P(6) => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register(1, 6),
      P(5) => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register(1, 5),
      P(4) => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register(1, 4),
      P(3) => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register(1, 3),
      P(2) => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register(1, 2),
      P(1) => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register(1, 1),
      P(0) => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register(1, 0)
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_8_Q : MUXCY
    port map (
      CI => BU2_N0,
      DI => BU2_N1,
      S => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_8_Q,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy(8)
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_9_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy(8),
      DI => BU2_N0,
      S => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_9_rt_433,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy(9)
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_10_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy(9),
      DI => BU2_N1,
      S => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_10_Q,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy(10)
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_11_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy(10),
      DI => BU2_N1,
      S => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_11_Q,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy(11)
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_12_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy(11),
      DI => BU2_N0,
      S => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_12_rt_427,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy(12)
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_13_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy(12),
      DI => BU2_N0,
      S => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_13_rt_425,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy(13)
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_14_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy(13),
      DI => BU2_N0,
      S => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_14_rt_423,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy(14)
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_15_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy(14),
      DI => BU2_N1,
      S => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_15_Q,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy(15)
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_16_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy(15),
      DI => BU2_N1,
      S => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_16_Q,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy(16)
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_xor_16_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy(15),
      LI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_16_Q,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_c(16)
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_17_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy(16),
      DI => BU2_N0,
      S => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_17_rt_417,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy(17)
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_xor_17_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy(16),
      LI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_17_rt_417,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_c(17)
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_18_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy(17),
      DI => BU2_N1,
      S => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_18_Q,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy(18)
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_xor_18_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy(17),
      LI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_18_Q,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_c(18)
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_19_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy(18),
      DI => BU2_N1,
      S => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_19_Q,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy(19)
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_xor_19_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy(18),
      LI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_19_Q,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_c(19)
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_20_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy(19),
      DI => BU2_N0,
      S => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_20_rt_411,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy(20)
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_xor_20_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy(19),
      LI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_20_rt_411,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_c(20)
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_21_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy(20),
      DI => BU2_N0,
      S => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_21_rt_409,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy(21)
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_xor_21_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy(20),
      LI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_21_rt_409,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_c(21)
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_22_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy(21),
      DI => BU2_N0,
      S => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_22_rt_407,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy(22)
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_xor_22_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy(21),
      LI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_22_rt_407,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_c(22)
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_23_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy(22),
      DI => BU2_N0,
      S => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_23_rt_405,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy(23)
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_xor_23_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy(22),
      LI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_23_rt_405,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_c(23)
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_xor_24_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy(23),
      LI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_24_Q,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_c(24)
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_7_Q : MUXCY
    port map (
      CI => BU2_N0,
      DI => BU2_N1,
      S => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_7_Q,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(7)
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_xor_7_Q : XORCY
    port map (
      CI => BU2_N0,
      LI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_7_Q,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_c(7)
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_8_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(7),
      DI => BU2_N0,
      S => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_8_rt_400,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(8)
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_xor_8_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(7),
      LI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_8_rt_400,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_c(8)
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_9_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(8),
      DI => BU2_N0,
      S => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_9_rt_398,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(9)
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_xor_9_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(8),
      LI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_9_rt_398,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_c(9)
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_10_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(9),
      DI => BU2_N1,
      S => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_10_Q,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(10)
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_xor_10_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(9),
      LI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_10_Q,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_c(10)
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_11_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(10),
      DI => BU2_N0,
      S => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_11_rt_394,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(11)
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_xor_11_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(10),
      LI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_11_rt_394,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_c(11)
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_12_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(11),
      DI => BU2_N0,
      S => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_12_rt_392,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(12)
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_xor_12_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(11),
      LI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_12_rt_392,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_c(12)
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_13_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(12),
      DI => BU2_N0,
      S => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_13_rt_390,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(13)
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_xor_13_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(12),
      LI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_13_rt_390,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_c(13)
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_14_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(13),
      DI => BU2_N0,
      S => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_14_rt_388,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(14)
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_xor_14_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(13),
      LI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_14_rt_388,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_c(14)
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_15_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(14),
      DI => BU2_N0,
      S => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_15_rt_386,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(15)
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_xor_15_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(14),
      LI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_15_rt_386,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_c(15)
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_16_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(15),
      DI => BU2_N0,
      S => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_16_rt_384,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(16)
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_xor_16_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(15),
      LI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_16_rt_384,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_c(16)
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_17_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(16),
      DI => BU2_N0,
      S => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_17_rt_382,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(17)
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_xor_17_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(16),
      LI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_17_rt_382,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_c(17)
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_18_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(17),
      DI => BU2_N0,
      S => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_18_rt_380,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(18)
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_xor_18_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(17),
      LI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_18_rt_380,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_c(18)
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_19_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(18),
      DI => BU2_N1,
      S => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_19_Q,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(19)
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_xor_19_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(18),
      LI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_19_Q,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_c(19)
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_20_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(19),
      DI => BU2_N1,
      S => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_20_Q,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(20)
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_xor_20_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(19),
      LI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_20_Q,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_c(20)
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_21_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(20),
      DI => BU2_N1,
      S => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_21_Q,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(21)
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_xor_21_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(20),
      LI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_21_Q,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_c(21)
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_22_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(21),
      DI => BU2_N1,
      S => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_22_Q,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(22)
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_xor_22_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(21),
      LI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_22_Q,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_c(22)
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_23_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(22),
      DI => BU2_N0,
      S => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_23_rt_370,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(23)
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_xor_23_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(22),
      LI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_23_rt_370,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_c(23)
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_xor_24_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(23),
      LI => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_25_368,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_c(24)
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_7_Q : MUXCY
    port map (
      CI => BU2_N0,
      DI => BU2_N1,
      S => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_7_Q,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy(7)
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_8_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy(7),
      DI => BU2_N0,
      S => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_8_rt_365,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy(8)
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_9_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy(8),
      DI => BU2_N1,
      S => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_9_Q,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy(9)
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_10_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy(9),
      DI => BU2_N0,
      S => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_10_rt_361,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy(10)
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_11_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy(10),
      DI => BU2_N1,
      S => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_11_Q,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy(11)
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_12_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy(11),
      DI => BU2_N1,
      S => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_12_Q,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy(12)
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_13_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy(12),
      DI => BU2_N1,
      S => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_13_Q,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy(13)
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_14_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy(13),
      DI => BU2_N1,
      S => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_14_Q,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy(14)
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_15_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy(14),
      DI => BU2_N1,
      S => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_15_Q,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy(15)
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_16_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy(15),
      DI => BU2_N0,
      S => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_16_rt_349,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy(16)
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_xor_16_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy(15),
      LI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_16_rt_349,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_c(16)
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_17_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy(16),
      DI => BU2_N0,
      S => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_17_rt_347,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy(17)
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_xor_17_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy(16),
      LI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_17_rt_347,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_c(17)
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_18_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy(17),
      DI => BU2_N1,
      S => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_18_Q,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy(18)
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_xor_18_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy(17),
      LI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_18_Q,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_c(18)
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_19_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy(18),
      DI => BU2_N1,
      S => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_19_Q,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy(19)
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_xor_19_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy(18),
      LI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_19_Q,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_c(19)
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_20_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy(19),
      DI => BU2_N1,
      S => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_20_Q,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy(20)
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_xor_20_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy(19),
      LI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_20_Q,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_c(20)
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_21_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy(20),
      DI => BU2_N1,
      S => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_21_Q,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy(21)
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_xor_21_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy(20),
      LI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_21_Q,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_c(21)
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_22_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy(21),
      DI => BU2_N0,
      S => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_22_rt_337,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy(22)
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_xor_22_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy(21),
      LI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_22_rt_337,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_c(22)
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_23_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy(22),
      DI => BU2_N0,
      S => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_23_rt_335,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy(23)
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_xor_23_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy(22),
      LI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_23_rt_335,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_c(23)
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_xor_24_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy(23),
      LI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_24_Q,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_c(24)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut_0_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_0_330,
      I1 => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_0_78,
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(0)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy_0_Q : MUXCY
    port map (
      CI => BU2_N0,
      DI => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_0_330,
      S => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(0),
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(0)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut_1_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_1_328,
      I1 => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_1_80,
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(1)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy_1_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(0),
      DI => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_1_328,
      S => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(1),
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(1)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_2_325,
      I1 => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_2_82,
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(2)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy_2_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(1),
      DI => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_2_325,
      S => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(2),
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(2)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_3_322,
      I1 => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_3_84,
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(3)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy_3_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(2),
      DI => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_3_322,
      S => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(3),
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(3)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_4_319,
      I1 => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_4_86,
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(4)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy_4_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(3),
      DI => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_4_319,
      S => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(4),
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(4)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_5_316,
      I1 => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_5_88,
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(5)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy_5_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(4),
      DI => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_5_316,
      S => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(5),
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(5)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_6_313,
      I1 => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_6_90,
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(6)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy_6_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(5),
      DI => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_6_313,
      S => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(6),
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(6)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_7_310,
      I1 => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_7_92,
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(7)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy_7_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(6),
      DI => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_7_310,
      S => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(7),
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(7)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut_8_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_8_307,
      I1 => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_8_94,
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(8)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy_8_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(7),
      DI => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_8_307,
      S => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(8),
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(8)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut_9_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_9_304,
      I1 => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_9_96,
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(9)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy_9_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(8),
      DI => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_9_304,
      S => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(9),
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(9)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut_10_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_10_301,
      I1 => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_10_98,
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(10)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy_10_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(9),
      DI => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_10_301,
      S => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(10),
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(10)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut_11_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_11_298,
      I1 => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_11_100,
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(11)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy_11_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(10),
      DI => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_11_298,
      S => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(11),
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(11)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut_12_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_12_295,
      I1 => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_12_102,
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(12)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy_12_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(11),
      DI => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_12_295,
      S => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(12),
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(12)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut_13_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_13_292,
      I1 => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_13_104,
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(13)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy_13_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(12),
      DI => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_13_292,
      S => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(13),
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(13)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut_14_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_14_289,
      I1 => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_14_106,
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(14)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy_14_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(13),
      DI => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_14_289,
      S => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(14),
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(14)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut_15_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_15_286,
      I1 => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_15_108,
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(15)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy_15_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(14),
      DI => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_15_286,
      S => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(15),
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(15)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut_16_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_16_284,
      I1 => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_16_110,
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(16)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy_16_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(15),
      DI => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_16_284,
      S => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(16),
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(16)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_xor_16_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(15),
      LI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(16),
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_c(16)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut_17_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_17_281,
      I1 => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_17_112,
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(17)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy_17_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(16),
      DI => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_17_281,
      S => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(17),
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(17)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_xor_17_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(16),
      LI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(17),
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_c(17)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut_18_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_18_278,
      I1 => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_18_114,
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(18)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy_18_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(17),
      DI => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_18_278,
      S => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(18),
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(18)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_xor_18_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(17),
      LI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(18),
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_c(18)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut_19_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_19_275,
      I1 => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_19_116,
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(19)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy_19_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(18),
      DI => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_19_275,
      S => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(19),
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(19)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_xor_19_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(18),
      LI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(19),
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_c(19)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut_20_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_20_272,
      I1 => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_20_118,
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(20)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy_20_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(19),
      DI => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_20_272,
      S => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(20),
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(20)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_xor_20_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(19),
      LI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(20),
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_c(20)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut_21_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_21_269,
      I1 => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_21_120,
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(21)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy_21_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(20),
      DI => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_21_269,
      S => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(21),
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(21)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_xor_21_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(20),
      LI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(21),
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_c(21)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut_22_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_22_266,
      I1 => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_22_122,
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(22)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy_22_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(21),
      DI => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_22_266,
      S => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(22),
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(22)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_xor_22_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(21),
      LI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(22),
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_c(22)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut_23_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_23_263,
      I1 => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_23_124,
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(23)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy_23_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(22),
      DI => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_23_263,
      S => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(23),
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(23)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_xor_23_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(22),
      LI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(23),
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_c(23)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut_24_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_24_260,
      I1 => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_24_126,
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(24)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_xor_24_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(23),
      LI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(24),
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_c(24)
    );
  BU2_U0_add_B_use_fabric_adder_Madd_c_lut_0_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_16_60,
      I1 => BU2_U0_del_Y_shift_register_4_0_199,
      O => BU2_U0_add_B_use_fabric_adder_Madd_c_lut(0)
    );
  BU2_U0_add_B_use_fabric_adder_Madd_c_cy_0_Q : MUXCY
    port map (
      CI => BU2_N0,
      DI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_16_60,
      S => BU2_U0_add_B_use_fabric_adder_Madd_c_lut(0),
      O => BU2_U0_add_B_use_fabric_adder_Madd_c_cy(0)
    );
  BU2_U0_add_B_use_fabric_adder_Madd_c_xor_0_Q : XORCY
    port map (
      CI => BU2_N0,
      LI => BU2_U0_add_B_use_fabric_adder_Madd_c_lut(0),
      O => BU2_U0_add_B_use_fabric_adder_c(0)
    );
  BU2_U0_add_B_use_fabric_adder_Madd_c_lut_1_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_17_62,
      I1 => BU2_U0_del_Y_shift_register_4_1_196,
      O => BU2_U0_add_B_use_fabric_adder_Madd_c_lut(1)
    );
  BU2_U0_add_B_use_fabric_adder_Madd_c_cy_1_Q : MUXCY
    port map (
      CI => BU2_U0_add_B_use_fabric_adder_Madd_c_cy(0),
      DI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_17_62,
      S => BU2_U0_add_B_use_fabric_adder_Madd_c_lut(1),
      O => BU2_U0_add_B_use_fabric_adder_Madd_c_cy(1)
    );
  BU2_U0_add_B_use_fabric_adder_Madd_c_xor_1_Q : XORCY
    port map (
      CI => BU2_U0_add_B_use_fabric_adder_Madd_c_cy(0),
      LI => BU2_U0_add_B_use_fabric_adder_Madd_c_lut(1),
      O => BU2_U0_add_B_use_fabric_adder_c(1)
    );
  BU2_U0_add_B_use_fabric_adder_Madd_c_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_18_64,
      I1 => BU2_U0_del_Y_shift_register_4_2_192,
      O => BU2_U0_add_B_use_fabric_adder_Madd_c_lut(2)
    );
  BU2_U0_add_B_use_fabric_adder_Madd_c_cy_2_Q : MUXCY
    port map (
      CI => BU2_U0_add_B_use_fabric_adder_Madd_c_cy(1),
      DI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_18_64,
      S => BU2_U0_add_B_use_fabric_adder_Madd_c_lut(2),
      O => BU2_U0_add_B_use_fabric_adder_Madd_c_cy(2)
    );
  BU2_U0_add_B_use_fabric_adder_Madd_c_xor_2_Q : XORCY
    port map (
      CI => BU2_U0_add_B_use_fabric_adder_Madd_c_cy(1),
      LI => BU2_U0_add_B_use_fabric_adder_Madd_c_lut(2),
      O => BU2_U0_add_B_use_fabric_adder_c(2)
    );
  BU2_U0_add_B_use_fabric_adder_Madd_c_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_19_66,
      I1 => BU2_U0_del_Y_shift_register_4_3_188,
      O => BU2_U0_add_B_use_fabric_adder_Madd_c_lut(3)
    );
  BU2_U0_add_B_use_fabric_adder_Madd_c_cy_3_Q : MUXCY
    port map (
      CI => BU2_U0_add_B_use_fabric_adder_Madd_c_cy(2),
      DI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_19_66,
      S => BU2_U0_add_B_use_fabric_adder_Madd_c_lut(3),
      O => BU2_U0_add_B_use_fabric_adder_Madd_c_cy(3)
    );
  BU2_U0_add_B_use_fabric_adder_Madd_c_xor_3_Q : XORCY
    port map (
      CI => BU2_U0_add_B_use_fabric_adder_Madd_c_cy(2),
      LI => BU2_U0_add_B_use_fabric_adder_Madd_c_lut(3),
      O => BU2_U0_add_B_use_fabric_adder_c(3)
    );
  BU2_U0_add_B_use_fabric_adder_Madd_c_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_20_68,
      I1 => BU2_U0_del_Y_shift_register_4_4_184,
      O => BU2_U0_add_B_use_fabric_adder_Madd_c_lut(4)
    );
  BU2_U0_add_B_use_fabric_adder_Madd_c_cy_4_Q : MUXCY
    port map (
      CI => BU2_U0_add_B_use_fabric_adder_Madd_c_cy(3),
      DI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_20_68,
      S => BU2_U0_add_B_use_fabric_adder_Madd_c_lut(4),
      O => BU2_U0_add_B_use_fabric_adder_Madd_c_cy(4)
    );
  BU2_U0_add_B_use_fabric_adder_Madd_c_xor_4_Q : XORCY
    port map (
      CI => BU2_U0_add_B_use_fabric_adder_Madd_c_cy(3),
      LI => BU2_U0_add_B_use_fabric_adder_Madd_c_lut(4),
      O => BU2_U0_add_B_use_fabric_adder_c(4)
    );
  BU2_U0_add_B_use_fabric_adder_Madd_c_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_21_70,
      I1 => BU2_U0_del_Y_shift_register_4_5_180,
      O => BU2_U0_add_B_use_fabric_adder_Madd_c_lut(5)
    );
  BU2_U0_add_B_use_fabric_adder_Madd_c_cy_5_Q : MUXCY
    port map (
      CI => BU2_U0_add_B_use_fabric_adder_Madd_c_cy(4),
      DI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_21_70,
      S => BU2_U0_add_B_use_fabric_adder_Madd_c_lut(5),
      O => BU2_U0_add_B_use_fabric_adder_Madd_c_cy(5)
    );
  BU2_U0_add_B_use_fabric_adder_Madd_c_xor_5_Q : XORCY
    port map (
      CI => BU2_U0_add_B_use_fabric_adder_Madd_c_cy(4),
      LI => BU2_U0_add_B_use_fabric_adder_Madd_c_lut(5),
      O => BU2_U0_add_B_use_fabric_adder_c(5)
    );
  BU2_U0_add_B_use_fabric_adder_Madd_c_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_22_72,
      I1 => BU2_U0_del_Y_shift_register_4_6_176,
      O => BU2_U0_add_B_use_fabric_adder_Madd_c_lut(6)
    );
  BU2_U0_add_B_use_fabric_adder_Madd_c_cy_6_Q : MUXCY
    port map (
      CI => BU2_U0_add_B_use_fabric_adder_Madd_c_cy(5),
      DI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_22_72,
      S => BU2_U0_add_B_use_fabric_adder_Madd_c_lut(6),
      O => BU2_U0_add_B_use_fabric_adder_Madd_c_cy(6)
    );
  BU2_U0_add_B_use_fabric_adder_Madd_c_xor_6_Q : XORCY
    port map (
      CI => BU2_U0_add_B_use_fabric_adder_Madd_c_cy(5),
      LI => BU2_U0_add_B_use_fabric_adder_Madd_c_lut(6),
      O => BU2_U0_add_B_use_fabric_adder_c(6)
    );
  BU2_U0_add_B_use_fabric_adder_Madd_c_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_23_74,
      I1 => BU2_U0_del_Y_shift_register_4_7_172,
      O => BU2_U0_add_B_use_fabric_adder_Madd_c_lut(7)
    );
  BU2_U0_add_B_use_fabric_adder_Madd_c_cy_7_Q : MUXCY
    port map (
      CI => BU2_U0_add_B_use_fabric_adder_Madd_c_cy(6),
      DI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_23_74,
      S => BU2_U0_add_B_use_fabric_adder_Madd_c_lut(7),
      O => BU2_U0_add_B_use_fabric_adder_Madd_c_cy(7)
    );
  BU2_U0_add_B_use_fabric_adder_Madd_c_xor_7_Q : XORCY
    port map (
      CI => BU2_U0_add_B_use_fabric_adder_Madd_c_cy(6),
      LI => BU2_U0_add_B_use_fabric_adder_Madd_c_lut(7),
      O => BU2_U0_add_B_use_fabric_adder_c(7)
    );
  BU2_U0_add_B_use_fabric_adder_Madd_c_cy_8_Q : MUXCY
    port map (
      CI => BU2_U0_add_B_use_fabric_adder_Madd_c_cy(7),
      DI => BU2_N0,
      S => BU2_U0_add_B_use_fabric_adder_Madd_c_cy_8_rt_233,
      O => BU2_U0_add_B_use_fabric_adder_Madd_c_cy(8)
    );
  BU2_U0_add_B_use_fabric_adder_Madd_c_xor_8_Q : XORCY
    port map (
      CI => BU2_U0_add_B_use_fabric_adder_Madd_c_cy(7),
      LI => BU2_U0_add_B_use_fabric_adder_Madd_c_cy_8_rt_233,
      O => BU2_U0_add_B_use_fabric_adder_c(8)
    );
  BU2_U0_add_B_use_fabric_adder_Madd_c_xor_9_Q : XORCY
    port map (
      CI => BU2_U0_add_B_use_fabric_adder_Madd_c_cy(8),
      LI => BU2_U0_add_B_use_fabric_adder_Madd_c_xor_9_rt_230,
      O => BU2_U0_add_B_use_fabric_adder_c(9)
    );
  BU2_U0_add_R_use_fabric_adder_Madd_c_lut_0_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_16_146,
      I1 => BU2_U0_del_Y_shift_register_4_0_199,
      O => BU2_U0_add_R_use_fabric_adder_Madd_c_lut(0)
    );
  BU2_U0_add_R_use_fabric_adder_Madd_c_cy_0_Q : MUXCY
    port map (
      CI => BU2_N0,
      DI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_16_146,
      S => BU2_U0_add_R_use_fabric_adder_Madd_c_lut(0),
      O => BU2_U0_add_R_use_fabric_adder_Madd_c_cy(0)
    );
  BU2_U0_add_R_use_fabric_adder_Madd_c_xor_0_Q : XORCY
    port map (
      CI => BU2_N0,
      LI => BU2_U0_add_R_use_fabric_adder_Madd_c_lut(0),
      O => BU2_U0_add_R_use_fabric_adder_c(0)
    );
  BU2_U0_add_R_use_fabric_adder_Madd_c_lut_1_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_17_148,
      I1 => BU2_U0_del_Y_shift_register_4_1_196,
      O => BU2_U0_add_R_use_fabric_adder_Madd_c_lut(1)
    );
  BU2_U0_add_R_use_fabric_adder_Madd_c_cy_1_Q : MUXCY
    port map (
      CI => BU2_U0_add_R_use_fabric_adder_Madd_c_cy(0),
      DI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_17_148,
      S => BU2_U0_add_R_use_fabric_adder_Madd_c_lut(1),
      O => BU2_U0_add_R_use_fabric_adder_Madd_c_cy(1)
    );
  BU2_U0_add_R_use_fabric_adder_Madd_c_xor_1_Q : XORCY
    port map (
      CI => BU2_U0_add_R_use_fabric_adder_Madd_c_cy(0),
      LI => BU2_U0_add_R_use_fabric_adder_Madd_c_lut(1),
      O => BU2_U0_add_R_use_fabric_adder_c(1)
    );
  BU2_U0_add_R_use_fabric_adder_Madd_c_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_18_150,
      I1 => BU2_U0_del_Y_shift_register_4_2_192,
      O => BU2_U0_add_R_use_fabric_adder_Madd_c_lut(2)
    );
  BU2_U0_add_R_use_fabric_adder_Madd_c_cy_2_Q : MUXCY
    port map (
      CI => BU2_U0_add_R_use_fabric_adder_Madd_c_cy(1),
      DI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_18_150,
      S => BU2_U0_add_R_use_fabric_adder_Madd_c_lut(2),
      O => BU2_U0_add_R_use_fabric_adder_Madd_c_cy(2)
    );
  BU2_U0_add_R_use_fabric_adder_Madd_c_xor_2_Q : XORCY
    port map (
      CI => BU2_U0_add_R_use_fabric_adder_Madd_c_cy(1),
      LI => BU2_U0_add_R_use_fabric_adder_Madd_c_lut(2),
      O => BU2_U0_add_R_use_fabric_adder_c(2)
    );
  BU2_U0_add_R_use_fabric_adder_Madd_c_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_19_152,
      I1 => BU2_U0_del_Y_shift_register_4_3_188,
      O => BU2_U0_add_R_use_fabric_adder_Madd_c_lut(3)
    );
  BU2_U0_add_R_use_fabric_adder_Madd_c_cy_3_Q : MUXCY
    port map (
      CI => BU2_U0_add_R_use_fabric_adder_Madd_c_cy(2),
      DI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_19_152,
      S => BU2_U0_add_R_use_fabric_adder_Madd_c_lut(3),
      O => BU2_U0_add_R_use_fabric_adder_Madd_c_cy(3)
    );
  BU2_U0_add_R_use_fabric_adder_Madd_c_xor_3_Q : XORCY
    port map (
      CI => BU2_U0_add_R_use_fabric_adder_Madd_c_cy(2),
      LI => BU2_U0_add_R_use_fabric_adder_Madd_c_lut(3),
      O => BU2_U0_add_R_use_fabric_adder_c(3)
    );
  BU2_U0_add_R_use_fabric_adder_Madd_c_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_20_154,
      I1 => BU2_U0_del_Y_shift_register_4_4_184,
      O => BU2_U0_add_R_use_fabric_adder_Madd_c_lut(4)
    );
  BU2_U0_add_R_use_fabric_adder_Madd_c_cy_4_Q : MUXCY
    port map (
      CI => BU2_U0_add_R_use_fabric_adder_Madd_c_cy(3),
      DI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_20_154,
      S => BU2_U0_add_R_use_fabric_adder_Madd_c_lut(4),
      O => BU2_U0_add_R_use_fabric_adder_Madd_c_cy(4)
    );
  BU2_U0_add_R_use_fabric_adder_Madd_c_xor_4_Q : XORCY
    port map (
      CI => BU2_U0_add_R_use_fabric_adder_Madd_c_cy(3),
      LI => BU2_U0_add_R_use_fabric_adder_Madd_c_lut(4),
      O => BU2_U0_add_R_use_fabric_adder_c(4)
    );
  BU2_U0_add_R_use_fabric_adder_Madd_c_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_21_156,
      I1 => BU2_U0_del_Y_shift_register_4_5_180,
      O => BU2_U0_add_R_use_fabric_adder_Madd_c_lut(5)
    );
  BU2_U0_add_R_use_fabric_adder_Madd_c_cy_5_Q : MUXCY
    port map (
      CI => BU2_U0_add_R_use_fabric_adder_Madd_c_cy(4),
      DI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_21_156,
      S => BU2_U0_add_R_use_fabric_adder_Madd_c_lut(5),
      O => BU2_U0_add_R_use_fabric_adder_Madd_c_cy(5)
    );
  BU2_U0_add_R_use_fabric_adder_Madd_c_xor_5_Q : XORCY
    port map (
      CI => BU2_U0_add_R_use_fabric_adder_Madd_c_cy(4),
      LI => BU2_U0_add_R_use_fabric_adder_Madd_c_lut(5),
      O => BU2_U0_add_R_use_fabric_adder_c(5)
    );
  BU2_U0_add_R_use_fabric_adder_Madd_c_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_22_158,
      I1 => BU2_U0_del_Y_shift_register_4_6_176,
      O => BU2_U0_add_R_use_fabric_adder_Madd_c_lut(6)
    );
  BU2_U0_add_R_use_fabric_adder_Madd_c_cy_6_Q : MUXCY
    port map (
      CI => BU2_U0_add_R_use_fabric_adder_Madd_c_cy(5),
      DI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_22_158,
      S => BU2_U0_add_R_use_fabric_adder_Madd_c_lut(6),
      O => BU2_U0_add_R_use_fabric_adder_Madd_c_cy(6)
    );
  BU2_U0_add_R_use_fabric_adder_Madd_c_xor_6_Q : XORCY
    port map (
      CI => BU2_U0_add_R_use_fabric_adder_Madd_c_cy(5),
      LI => BU2_U0_add_R_use_fabric_adder_Madd_c_lut(6),
      O => BU2_U0_add_R_use_fabric_adder_c(6)
    );
  BU2_U0_add_R_use_fabric_adder_Madd_c_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_23_160,
      I1 => BU2_U0_del_Y_shift_register_4_7_172,
      O => BU2_U0_add_R_use_fabric_adder_Madd_c_lut(7)
    );
  BU2_U0_add_R_use_fabric_adder_Madd_c_cy_7_Q : MUXCY
    port map (
      CI => BU2_U0_add_R_use_fabric_adder_Madd_c_cy(6),
      DI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_23_160,
      S => BU2_U0_add_R_use_fabric_adder_Madd_c_lut(7),
      O => BU2_U0_add_R_use_fabric_adder_Madd_c_cy(7)
    );
  BU2_U0_add_R_use_fabric_adder_Madd_c_xor_7_Q : XORCY
    port map (
      CI => BU2_U0_add_R_use_fabric_adder_Madd_c_cy(6),
      LI => BU2_U0_add_R_use_fabric_adder_Madd_c_lut(7),
      O => BU2_U0_add_R_use_fabric_adder_c(7)
    );
  BU2_U0_add_R_use_fabric_adder_Madd_c_cy_8_Q : MUXCY
    port map (
      CI => BU2_U0_add_R_use_fabric_adder_Madd_c_cy(7),
      DI => BU2_N0,
      S => BU2_U0_add_R_use_fabric_adder_Madd_c_cy_8_rt_204,
      O => BU2_U0_add_R_use_fabric_adder_Madd_c_cy(8)
    );
  BU2_U0_add_R_use_fabric_adder_Madd_c_xor_8_Q : XORCY
    port map (
      CI => BU2_U0_add_R_use_fabric_adder_Madd_c_cy(7),
      LI => BU2_U0_add_R_use_fabric_adder_Madd_c_cy_8_rt_204,
      O => BU2_U0_add_R_use_fabric_adder_c(8)
    );
  BU2_U0_add_R_use_fabric_adder_Madd_c_xor_9_Q : XORCY
    port map (
      CI => BU2_U0_add_R_use_fabric_adder_Madd_c_cy(8),
      LI => BU2_U0_add_R_use_fabric_adder_Madd_c_xor_9_rt_201,
      O => BU2_U0_add_R_use_fabric_adder_c(9)
    );
  BU2_U0_add_G_use_fabric_adder_Madd_c_lut_0_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_16_128,
      I1 => BU2_U0_del_Y_shift_register_4_0_199,
      O => BU2_U0_add_G_use_fabric_adder_Madd_c_lut(0)
    );
  BU2_U0_add_G_use_fabric_adder_Madd_c_cy_0_Q : MUXCY
    port map (
      CI => BU2_N0,
      DI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_16_128,
      S => BU2_U0_add_G_use_fabric_adder_Madd_c_lut(0),
      O => BU2_U0_add_G_use_fabric_adder_Madd_c_cy(0)
    );
  BU2_U0_add_G_use_fabric_adder_Madd_c_xor_0_Q : XORCY
    port map (
      CI => BU2_N0,
      LI => BU2_U0_add_G_use_fabric_adder_Madd_c_lut(0),
      O => BU2_U0_add_G_use_fabric_adder_c(0)
    );
  BU2_U0_add_G_use_fabric_adder_Madd_c_lut_1_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_17_130,
      I1 => BU2_U0_del_Y_shift_register_4_1_196,
      O => BU2_U0_add_G_use_fabric_adder_Madd_c_lut(1)
    );
  BU2_U0_add_G_use_fabric_adder_Madd_c_cy_1_Q : MUXCY
    port map (
      CI => BU2_U0_add_G_use_fabric_adder_Madd_c_cy(0),
      DI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_17_130,
      S => BU2_U0_add_G_use_fabric_adder_Madd_c_lut(1),
      O => BU2_U0_add_G_use_fabric_adder_Madd_c_cy(1)
    );
  BU2_U0_add_G_use_fabric_adder_Madd_c_xor_1_Q : XORCY
    port map (
      CI => BU2_U0_add_G_use_fabric_adder_Madd_c_cy(0),
      LI => BU2_U0_add_G_use_fabric_adder_Madd_c_lut(1),
      O => BU2_U0_add_G_use_fabric_adder_c(1)
    );
  BU2_U0_add_G_use_fabric_adder_Madd_c_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_18_132,
      I1 => BU2_U0_del_Y_shift_register_4_2_192,
      O => BU2_U0_add_G_use_fabric_adder_Madd_c_lut(2)
    );
  BU2_U0_add_G_use_fabric_adder_Madd_c_cy_2_Q : MUXCY
    port map (
      CI => BU2_U0_add_G_use_fabric_adder_Madd_c_cy(1),
      DI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_18_132,
      S => BU2_U0_add_G_use_fabric_adder_Madd_c_lut(2),
      O => BU2_U0_add_G_use_fabric_adder_Madd_c_cy(2)
    );
  BU2_U0_add_G_use_fabric_adder_Madd_c_xor_2_Q : XORCY
    port map (
      CI => BU2_U0_add_G_use_fabric_adder_Madd_c_cy(1),
      LI => BU2_U0_add_G_use_fabric_adder_Madd_c_lut(2),
      O => BU2_U0_add_G_use_fabric_adder_c(2)
    );
  BU2_U0_add_G_use_fabric_adder_Madd_c_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_19_134,
      I1 => BU2_U0_del_Y_shift_register_4_3_188,
      O => BU2_U0_add_G_use_fabric_adder_Madd_c_lut(3)
    );
  BU2_U0_add_G_use_fabric_adder_Madd_c_cy_3_Q : MUXCY
    port map (
      CI => BU2_U0_add_G_use_fabric_adder_Madd_c_cy(2),
      DI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_19_134,
      S => BU2_U0_add_G_use_fabric_adder_Madd_c_lut(3),
      O => BU2_U0_add_G_use_fabric_adder_Madd_c_cy(3)
    );
  BU2_U0_add_G_use_fabric_adder_Madd_c_xor_3_Q : XORCY
    port map (
      CI => BU2_U0_add_G_use_fabric_adder_Madd_c_cy(2),
      LI => BU2_U0_add_G_use_fabric_adder_Madd_c_lut(3),
      O => BU2_U0_add_G_use_fabric_adder_c(3)
    );
  BU2_U0_add_G_use_fabric_adder_Madd_c_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_20_136,
      I1 => BU2_U0_del_Y_shift_register_4_4_184,
      O => BU2_U0_add_G_use_fabric_adder_Madd_c_lut(4)
    );
  BU2_U0_add_G_use_fabric_adder_Madd_c_cy_4_Q : MUXCY
    port map (
      CI => BU2_U0_add_G_use_fabric_adder_Madd_c_cy(3),
      DI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_20_136,
      S => BU2_U0_add_G_use_fabric_adder_Madd_c_lut(4),
      O => BU2_U0_add_G_use_fabric_adder_Madd_c_cy(4)
    );
  BU2_U0_add_G_use_fabric_adder_Madd_c_xor_4_Q : XORCY
    port map (
      CI => BU2_U0_add_G_use_fabric_adder_Madd_c_cy(3),
      LI => BU2_U0_add_G_use_fabric_adder_Madd_c_lut(4),
      O => BU2_U0_add_G_use_fabric_adder_c(4)
    );
  BU2_U0_add_G_use_fabric_adder_Madd_c_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_21_138,
      I1 => BU2_U0_del_Y_shift_register_4_5_180,
      O => BU2_U0_add_G_use_fabric_adder_Madd_c_lut(5)
    );
  BU2_U0_add_G_use_fabric_adder_Madd_c_cy_5_Q : MUXCY
    port map (
      CI => BU2_U0_add_G_use_fabric_adder_Madd_c_cy(4),
      DI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_21_138,
      S => BU2_U0_add_G_use_fabric_adder_Madd_c_lut(5),
      O => BU2_U0_add_G_use_fabric_adder_Madd_c_cy(5)
    );
  BU2_U0_add_G_use_fabric_adder_Madd_c_xor_5_Q : XORCY
    port map (
      CI => BU2_U0_add_G_use_fabric_adder_Madd_c_cy(4),
      LI => BU2_U0_add_G_use_fabric_adder_Madd_c_lut(5),
      O => BU2_U0_add_G_use_fabric_adder_c(5)
    );
  BU2_U0_add_G_use_fabric_adder_Madd_c_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_22_140,
      I1 => BU2_U0_del_Y_shift_register_4_6_176,
      O => BU2_U0_add_G_use_fabric_adder_Madd_c_lut(6)
    );
  BU2_U0_add_G_use_fabric_adder_Madd_c_cy_6_Q : MUXCY
    port map (
      CI => BU2_U0_add_G_use_fabric_adder_Madd_c_cy(5),
      DI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_22_140,
      S => BU2_U0_add_G_use_fabric_adder_Madd_c_lut(6),
      O => BU2_U0_add_G_use_fabric_adder_Madd_c_cy(6)
    );
  BU2_U0_add_G_use_fabric_adder_Madd_c_xor_6_Q : XORCY
    port map (
      CI => BU2_U0_add_G_use_fabric_adder_Madd_c_cy(5),
      LI => BU2_U0_add_G_use_fabric_adder_Madd_c_lut(6),
      O => BU2_U0_add_G_use_fabric_adder_c(6)
    );
  BU2_U0_add_G_use_fabric_adder_Madd_c_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_23_142,
      I1 => BU2_U0_del_Y_shift_register_4_7_172,
      O => BU2_U0_add_G_use_fabric_adder_Madd_c_lut(7)
    );
  BU2_U0_add_G_use_fabric_adder_Madd_c_cy_7_Q : MUXCY
    port map (
      CI => BU2_U0_add_G_use_fabric_adder_Madd_c_cy(6),
      DI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_23_142,
      S => BU2_U0_add_G_use_fabric_adder_Madd_c_lut(7),
      O => BU2_U0_add_G_use_fabric_adder_Madd_c_cy(7)
    );
  BU2_U0_add_G_use_fabric_adder_Madd_c_xor_7_Q : XORCY
    port map (
      CI => BU2_U0_add_G_use_fabric_adder_Madd_c_cy(6),
      LI => BU2_U0_add_G_use_fabric_adder_Madd_c_lut(7),
      O => BU2_U0_add_G_use_fabric_adder_c(7)
    );
  BU2_U0_add_G_use_fabric_adder_Madd_c_cy_8_Q : MUXCY
    port map (
      CI => BU2_U0_add_G_use_fabric_adder_Madd_c_cy(7),
      DI => BU2_N0,
      S => BU2_U0_add_G_use_fabric_adder_Madd_c_cy_8_rt_167,
      O => BU2_U0_add_G_use_fabric_adder_Madd_c_cy(8)
    );
  BU2_U0_add_G_use_fabric_adder_Madd_c_xor_8_Q : XORCY
    port map (
      CI => BU2_U0_add_G_use_fabric_adder_Madd_c_cy(7),
      LI => BU2_U0_add_G_use_fabric_adder_Madd_c_cy_8_rt_167,
      O => BU2_U0_add_G_use_fabric_adder_c(8)
    );
  BU2_U0_add_G_use_fabric_adder_Madd_c_xor_9_Q : XORCY
    port map (
      CI => BU2_U0_add_G_use_fabric_adder_Madd_c_cy(8),
      LI => BU2_U0_add_G_use_fabric_adder_Madd_c_xor_9_rt_164,
      O => BU2_U0_add_G_use_fabric_adder_c(9)
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_24 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_c(24),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_24_162
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_23 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_c(23),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_23_160
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_22 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_c(22),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_22_158
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_21 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_c(21),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_21_156
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_20 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_c(20),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_20_154
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_19 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_c(19),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_19_152
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_18 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_c(18),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_18_150
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_17 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_c(17),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_17_148
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_16 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_c(16),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_16_146
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_24 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_c(24),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_24_144
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_23 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_c(23),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_23_142
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_22 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_c(22),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_22_140
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_21 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_c(21),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_21_138
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_20 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_c(20),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_20_136
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_19 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_c(19),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_19_134
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_18 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_c(18),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_18_132
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_17 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_c(17),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_17_130
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_16 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_c(16),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_16_128
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_24 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_c(24),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_24_126
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_23 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_c(23),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_23_124
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_22 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_c(22),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_22_122
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_21 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_c(21),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_21_120
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_20 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_c(20),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_20_118
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_19 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_c(19),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_19_116
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_18 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_c(18),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_18_114
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_17 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_c(17),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_17_112
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_16 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_c(16),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_16_110
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_15 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_c(15),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_15_108
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_14 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_c(14),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_14_106
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_13 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_c(13),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_13_104
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_12 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_c(12),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_12_102
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_11 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_c(11),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_11_100
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_10 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_c(10),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_10_98
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_9 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_c(9),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_9_96
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_8 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_c(8),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_8_94
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_c(7),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_7_92
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_6_89,
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_6_90
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_5_87,
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_5_88
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_4_85,
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_4_86
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_3_83,
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_3_84
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_2_81,
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_2_82
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_1_79,
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_1_80
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_0_77,
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_0_78
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_24 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_c(24),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_24_76
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_23 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_c(23),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_23_74
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_22 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_c(22),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_22_72
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_21 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_c(21),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_21_70
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_20 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_c(20),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_20_68
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_19 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_c(19),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_19_66
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_18 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_c(18),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_18_64
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_17 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_c(17),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_17_62
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_16 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_c(16),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_16_60
    );
  BU2_XST_VCC : VCC
    port map (
      P => BU2_N1
    );
  BU2_XST_GND : GND
    port map (
      G => BU2_N0
    );

end STRUCTURE;

-- synthesis translate_on
