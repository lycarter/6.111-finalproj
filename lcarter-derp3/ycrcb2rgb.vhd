--------------------------------------------------------------------------------
-- Copyright (c) 1995-2008 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: K.39
--  \   \         Application: netgen
--  /   /         Filename: ycrcb2rgb.vhd
-- /___/   /\     Timestamp: Tue Dec 13 04:25:33 2016
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
    cb : in STD_LOGIC_VECTOR ( 9 downto 0 ); 
    cr : in STD_LOGIC_VECTOR ( 9 downto 0 ); 
    b : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    g : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    r : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    y : in STD_LOGIC_VECTOR ( 9 downto 0 ) 
  );
end ycrcb2rgb;

architecture STRUCTURE of ycrcb2rgb is
  signal BU2_Mshreg_pix_en_out_694 : STD_LOGIC; 
  signal BU2_Mshreg_v_sync_out_693 : STD_LOGIC; 
  signal BU2_U0_del_Y_Mshreg_shift_register_4_9_692 : STD_LOGIC; 
  signal BU2_U0_del_Y_Mshreg_shift_register_4_8_691 : STD_LOGIC; 
  signal BU2_Mshreg_h_sync_out_690 : STD_LOGIC; 
  signal BU2_U0_del_Y_Mshreg_shift_register_4_6_689 : STD_LOGIC; 
  signal BU2_U0_del_Y_Mshreg_shift_register_4_5_688 : STD_LOGIC; 
  signal BU2_U0_del_Y_Mshreg_shift_register_4_7_687 : STD_LOGIC; 
  signal BU2_U0_del_Y_Mshreg_shift_register_4_3_686 : STD_LOGIC; 
  signal BU2_U0_del_Y_Mshreg_shift_register_4_2_685 : STD_LOGIC; 
  signal BU2_U0_del_Y_Mshreg_shift_register_4_4_684 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_26_683 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_25_682 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_24_681 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_23_680 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_22_679 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_21_678 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_20_677 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_19_676 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_18_675 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_17_674 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_16_673 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_15_672 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_14_671 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_13_670 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_27_669 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_24_668 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_23_667 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_22_666 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_21_665 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_20_664 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_19_663 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_18_662 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_17_661 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_16_660 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_15_659 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_14_658 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_13_657 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_12_656 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_11_655 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_10_654 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_9_653 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_26_652 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_25_651 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_24_650 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_23_649 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_22_648 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_21_647 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_20_646 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_19_645 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_18_644 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_17_643 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_16_642 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_15_641 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_14_640 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_13_639 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_12_638 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_11_637 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_10_636 : STD_LOGIC; 
  signal BU2_U0_clip_max_B_reg_shift_register_1_0_635 : STD_LOGIC; 
  signal BU2_U0_clip_max_B_reg_shift_register_1_1_633 : STD_LOGIC; 
  signal BU2_U0_clip_max_B_reg_shift_register_1_2_631 : STD_LOGIC; 
  signal BU2_U0_clip_max_B_reg_shift_register_1_3_629 : STD_LOGIC; 
  signal BU2_U0_clip_max_B_reg_shift_register_1_4_627 : STD_LOGIC; 
  signal BU2_U0_clip_max_B_reg_shift_register_1_5_625 : STD_LOGIC; 
  signal BU2_U0_clip_max_B_reg_shift_register_1_6_623 : STD_LOGIC; 
  signal BU2_U0_clip_max_B_reg_shift_register_1_7_621 : STD_LOGIC; 
  signal BU2_U0_clip_max_B_reg_shift_register_1_9_619 : STD_LOGIC; 
  signal BU2_U0_clip_max_G_reg_shift_register_1_0_618 : STD_LOGIC; 
  signal BU2_U0_clip_max_G_reg_shift_register_1_1_616 : STD_LOGIC; 
  signal BU2_U0_clip_max_G_reg_shift_register_1_2_614 : STD_LOGIC; 
  signal BU2_U0_clip_max_G_reg_shift_register_1_3_612 : STD_LOGIC; 
  signal BU2_U0_clip_max_G_reg_shift_register_1_4_610 : STD_LOGIC; 
  signal BU2_U0_clip_max_G_reg_shift_register_1_5_608 : STD_LOGIC; 
  signal BU2_U0_clip_max_G_reg_shift_register_1_6_606 : STD_LOGIC; 
  signal BU2_U0_clip_max_G_reg_shift_register_1_7_604 : STD_LOGIC; 
  signal BU2_U0_clip_max_G_reg_shift_register_1_9_602 : STD_LOGIC; 
  signal BU2_U0_clip_max_R_reg_shift_register_1_0_601 : STD_LOGIC; 
  signal BU2_U0_clip_max_R_reg_shift_register_1_1_599 : STD_LOGIC; 
  signal BU2_U0_clip_max_R_reg_shift_register_1_2_597 : STD_LOGIC; 
  signal BU2_U0_clip_max_R_reg_shift_register_1_3_595 : STD_LOGIC; 
  signal BU2_U0_clip_max_R_reg_shift_register_1_4_593 : STD_LOGIC; 
  signal BU2_U0_clip_max_R_reg_shift_register_1_5_591 : STD_LOGIC; 
  signal BU2_U0_clip_max_R_reg_shift_register_1_6_589 : STD_LOGIC; 
  signal BU2_U0_clip_max_R_reg_shift_register_1_7_587 : STD_LOGIC; 
  signal BU2_U0_clip_max_R_reg_shift_register_1_9_585 : STD_LOGIC; 
  signal BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_9_560 : STD_LOGIC; 
  signal BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_8_559 : STD_LOGIC; 
  signal BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_7_558 : STD_LOGIC; 
  signal BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_6_557 : STD_LOGIC; 
  signal BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_5_556 : STD_LOGIC; 
  signal BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_4_555 : STD_LOGIC; 
  signal BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_3_554 : STD_LOGIC; 
  signal BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_2_553 : STD_LOGIC; 
  signal BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_1_552 : STD_LOGIC; 
  signal BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_0_551 : STD_LOGIC; 
  signal BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_9_550 : STD_LOGIC; 
  signal BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_8_549 : STD_LOGIC; 
  signal BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_7_548 : STD_LOGIC; 
  signal BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_6_547 : STD_LOGIC; 
  signal BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_5_546 : STD_LOGIC; 
  signal BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_4_545 : STD_LOGIC; 
  signal BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_3_544 : STD_LOGIC; 
  signal BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_2_543 : STD_LOGIC; 
  signal BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_1_542 : STD_LOGIC; 
  signal BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_0_541 : STD_LOGIC; 
  signal BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_9_540 : STD_LOGIC; 
  signal BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_8_539 : STD_LOGIC; 
  signal BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_7_538 : STD_LOGIC; 
  signal BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_6_537 : STD_LOGIC; 
  signal BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_5_536 : STD_LOGIC; 
  signal BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_4_535 : STD_LOGIC; 
  signal BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_3_534 : STD_LOGIC; 
  signal BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_2_533 : STD_LOGIC; 
  signal BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_1_532 : STD_LOGIC; 
  signal BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_0_531 : STD_LOGIC; 
  signal BU2_U0_del_Cb_shift_register_1_0_516 : STD_LOGIC; 
  signal BU2_U0_del_Cb_shift_register_1_1_515 : STD_LOGIC; 
  signal BU2_U0_del_Cb_shift_register_1_2_514 : STD_LOGIC; 
  signal BU2_U0_del_Cb_shift_register_1_3_513 : STD_LOGIC; 
  signal BU2_U0_del_Cb_shift_register_1_4_512 : STD_LOGIC; 
  signal BU2_U0_del_Cb_shift_register_1_5_511 : STD_LOGIC; 
  signal BU2_U0_del_Cb_shift_register_1_6_510 : STD_LOGIC; 
  signal BU2_U0_del_Cb_shift_register_1_7_509 : STD_LOGIC; 
  signal BU2_U0_del_Cb_shift_register_1_8_508 : STD_LOGIC; 
  signal BU2_U0_del_Cb_shift_register_1_9_507 : STD_LOGIC; 
  signal BU2_U0_del_Cr_shift_register_1_0_440 : STD_LOGIC; 
  signal BU2_U0_del_Cr_shift_register_1_1_439 : STD_LOGIC; 
  signal BU2_U0_del_Cr_shift_register_1_2_438 : STD_LOGIC; 
  signal BU2_U0_del_Cr_shift_register_1_3_437 : STD_LOGIC; 
  signal BU2_U0_del_Cr_shift_register_1_4_436 : STD_LOGIC; 
  signal BU2_U0_del_Cr_shift_register_1_5_435 : STD_LOGIC; 
  signal BU2_U0_del_Cr_shift_register_1_6_434 : STD_LOGIC; 
  signal BU2_U0_del_Cr_shift_register_1_7_433 : STD_LOGIC; 
  signal BU2_U0_del_Cr_shift_register_1_8_432 : STD_LOGIC; 
  signal BU2_U0_del_Cr_shift_register_1_9_431 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_11_Q : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_12_rt_429 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_13_Q : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_14_Q : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_15_Q : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_16_Q : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_17_Q : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_18_Q : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_19_rt_415 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_20_Q : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_21_rt_411 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_22_rt_409 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_23_rt_407 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_24_Q : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_7_Q : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_8_Q : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_9_Q : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_10_Q : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_11_Q : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_12_Q : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_13_Q : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_14_Q : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_15_rt_388 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_16_rt_386 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_17_Q : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_18_rt_382 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_19_rt_380 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_20_rt_378 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_21_rt_376 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_22_Q : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_23_rt_372 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_xor_24_rt_370 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_8_Q : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_9_rt_367 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_10_Q : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_11_Q : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_12_rt_361 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_13_rt_359 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_14_rt_357 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_15_rt_355 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_16_Q : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_17_Q : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_18_rt_349 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_19_Q : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_20_Q : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_21_Q : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_22_rt_341 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_23_rt_339 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_24_Q : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_2_334 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_3_332 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_4_329 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_5_326 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_6_323 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_7_320 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_8_317 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_9_314 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_10_311 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_11_308 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_12_305 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_13_302 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_14_299 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_15_296 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_16_293 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_17_290 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_18_288 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_19_285 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_20_282 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_21_279 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_22_276 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_23_273 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_24_270 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_25_267 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_27_264 : STD_LOGIC; 
  signal BU2_U0_add_B_use_fabric_adder_Madd_c_cy_8_rt_237 : STD_LOGIC; 
  signal BU2_U0_add_B_use_fabric_adder_Madd_c_xor_9_rt_234 : STD_LOGIC; 
  signal BU2_U0_add_R_use_fabric_adder_Madd_c_cy_8_rt_208 : STD_LOGIC; 
  signal BU2_U0_add_R_use_fabric_adder_Madd_c_xor_9_rt_205 : STD_LOGIC; 
  signal BU2_U0_del_Y_shift_register_4_2_203 : STD_LOGIC; 
  signal BU2_U0_del_Y_shift_register_4_3_200 : STD_LOGIC; 
  signal BU2_U0_del_Y_shift_register_4_4_196 : STD_LOGIC; 
  signal BU2_U0_del_Y_shift_register_4_5_192 : STD_LOGIC; 
  signal BU2_U0_del_Y_shift_register_4_6_188 : STD_LOGIC; 
  signal BU2_U0_del_Y_shift_register_4_7_184 : STD_LOGIC; 
  signal BU2_U0_del_Y_shift_register_4_8_180 : STD_LOGIC; 
  signal BU2_U0_del_Y_shift_register_4_9_176 : STD_LOGIC; 
  signal BU2_U0_add_G_use_fabric_adder_Madd_c_cy_8_rt_171 : STD_LOGIC; 
  signal BU2_U0_add_G_use_fabric_adder_Madd_c_xor_9_rt_168 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_24_166 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_23_164 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_22_162 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_21_160 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_20_158 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_19_156 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_18_154 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_17_152 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_16_150 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_24_148 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_23_146 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_22_144 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_21_142 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_20_140 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_19_138 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_18_136 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_17_134 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_16_132 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_24_130 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_23_128 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_22_126 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_21_124 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_20_122 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_19_120 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_18_118 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_17_116 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_16_114 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_15_112 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_14_110 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_13_108 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_12_106 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_11_104 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_10_102 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_9_100 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_8_98 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_7_96 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_6_94 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_8_93 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_5_92 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_7_91 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_4_90 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_6_89 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_3_88 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_5_87 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_2_86 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_4_85 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_1_84 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_3_83 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_0_82 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_2_81 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_24_80 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_23_78 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_22_76 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_21_74 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_20_72 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_19_70 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_18_68 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_17_66 : STD_LOGIC; 
  signal BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_16_64 : STD_LOGIC; 
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
  signal NLW_BU2_U0_sp3_v2_v2p_mult_dCb_Mmult_c_P_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_dCb_Mmult_c_P_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_dCb_Mmult_c_P_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_dCb_Mmult_c_P_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_dCb_Mmult_c_P_8_UNCONNECTED : STD_LOGIC; 
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
  signal NLW_BU2_U0_sp3_v2_v2p_mult_aCr_Mmult_c_P_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_aCr_Mmult_c_P_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_aCr_Mmult_c_P_7_UNCONNECTED : STD_LOGIC; 
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
  signal NLW_BU2_U0_sp3_v2_v2p_mult_cCb_Mmult_c_P_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_cCb_Mmult_c_P_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_bCr_Mmult_c_P_35_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_bCr_Mmult_c_P_34_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_bCr_Mmult_c_P_33_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_bCr_Mmult_c_P_32_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_bCr_Mmult_c_P_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_bCr_Mmult_c_P_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_bCr_Mmult_c_P_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_bCr_Mmult_c_P_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_bCr_Mmult_c_P_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_bCr_Mmult_c_P_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_sp3_v2_v2p_mult_bCr_Mmult_c_P_0_UNCONNECTED : STD_LOGIC; 
  signal y_2 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal cr_3 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal cb_4 : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal r_5 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal g_6 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal b_7 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal BU2_U0_clip_max_B_c : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal BU2_U0_clip_max_G_c : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal BU2_U0_clip_max_R_c : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal BU2_U0_clamp_min_B_c : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal BU2_U0_clamp_min_G_c : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal BU2_U0_clamp_min_R_c : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register : STD_LOGIC_VECTOR2 ( 1 downto 1 , 26 downto 13 ); 
  signal BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register : STD_LOGIC_VECTOR2 ( 1 downto 1 , 26 downto 10 ); 
  signal BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register : STD_LOGIC_VECTOR2 ( 1 downto 1 , 25 downto 2 ); 
  signal BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register : STD_LOGIC_VECTOR2 ( 1 downto 1 , 26 downto 2 ); 
  signal BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy : STD_LOGIC_VECTOR ( 23 downto 11 ); 
  signal BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy : STD_LOGIC_VECTOR ( 23 downto 7 ); 
  signal BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy : STD_LOGIC_VECTOR ( 23 downto 8 ); 
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
  cb_4(9) <= cb(9);
  cb_4(8) <= cb(8);
  cb_4(7) <= cb(7);
  cb_4(6) <= cb(6);
  cb_4(5) <= cb(5);
  cb_4(4) <= cb(4);
  cb_4(3) <= cb(3);
  cb_4(2) <= cb(2);
  cb_4(1) <= cb(1);
  cb_4(0) <= cb(0);
  cr_3(9) <= cr(9);
  cr_3(8) <= cr(8);
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
  y_2(9) <= y(9);
  y_2(8) <= y(8);
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
      D => BU2_Mshreg_pix_en_out_694,
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
      Q => BU2_Mshreg_pix_en_out_694
    );
  BU2_v_sync_out : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_Mshreg_v_sync_out_693,
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
      Q => BU2_Mshreg_v_sync_out_693
    );
  BU2_U0_del_Y_shift_register_4_9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_del_Y_Mshreg_shift_register_4_9_692,
      Q => BU2_U0_del_Y_shift_register_4_9_176
    );
  BU2_U0_del_Y_Mshreg_shift_register_4_9 : SRL16E
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
      D => y_2(9),
      Q => BU2_U0_del_Y_Mshreg_shift_register_4_9_692
    );
  BU2_U0_del_Y_shift_register_4_8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_del_Y_Mshreg_shift_register_4_8_691,
      Q => BU2_U0_del_Y_shift_register_4_8_180
    );
  BU2_U0_del_Y_Mshreg_shift_register_4_8 : SRL16E
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
      D => y_2(8),
      Q => BU2_U0_del_Y_Mshreg_shift_register_4_8_691
    );
  BU2_h_sync_out : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_Mshreg_h_sync_out_690,
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
      Q => BU2_Mshreg_h_sync_out_690
    );
  BU2_U0_del_Y_shift_register_4_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_del_Y_Mshreg_shift_register_4_6_689,
      Q => BU2_U0_del_Y_shift_register_4_6_188
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
      Q => BU2_U0_del_Y_Mshreg_shift_register_4_6_689
    );
  BU2_U0_del_Y_shift_register_4_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_del_Y_Mshreg_shift_register_4_5_688,
      Q => BU2_U0_del_Y_shift_register_4_5_192
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
      Q => BU2_U0_del_Y_Mshreg_shift_register_4_5_688
    );
  BU2_U0_del_Y_shift_register_4_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_del_Y_Mshreg_shift_register_4_7_687,
      Q => BU2_U0_del_Y_shift_register_4_7_184
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
      Q => BU2_U0_del_Y_Mshreg_shift_register_4_7_687
    );
  BU2_U0_del_Y_shift_register_4_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_del_Y_Mshreg_shift_register_4_3_686,
      Q => BU2_U0_del_Y_shift_register_4_3_200
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
      Q => BU2_U0_del_Y_Mshreg_shift_register_4_3_686
    );
  BU2_U0_del_Y_shift_register_4_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_del_Y_Mshreg_shift_register_4_2_685,
      Q => BU2_U0_del_Y_shift_register_4_2_203
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
      Q => BU2_U0_del_Y_Mshreg_shift_register_4_2_685
    );
  BU2_U0_del_Y_shift_register_4_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_del_Y_Mshreg_shift_register_4_4_684,
      Q => BU2_U0_del_Y_shift_register_4_4_196
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
      Q => BU2_U0_del_Y_Mshreg_shift_register_4_4_684
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_11_INV_0 : INV
    port map (
      I => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_13_670,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_11_Q
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_13_INV_0 : INV
    port map (
      I => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_15_672,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_13_Q
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_14_INV_0 : INV
    port map (
      I => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_16_673,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_14_Q
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_15_INV_0 : INV
    port map (
      I => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_17_674,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_15_Q
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_16_INV_0 : INV
    port map (
      I => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_18_675,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_16_Q
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_17_INV_0 : INV
    port map (
      I => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_19_676,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_17_Q
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_18_INV_0 : INV
    port map (
      I => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_20_677,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_18_Q
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_20_INV_0 : INV
    port map (
      I => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_22_679,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_20_Q
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_24_INV_0 : INV
    port map (
      I => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_26_683,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_24_Q
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_7_INV_0 : INV
    port map (
      I => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_9_653,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_7_Q
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_8_INV_0 : INV
    port map (
      I => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_10_654,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_8_Q
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_9_INV_0 : INV
    port map (
      I => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_11_655,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_9_Q
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_10_INV_0 : INV
    port map (
      I => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_12_656,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_10_Q
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_11_INV_0 : INV
    port map (
      I => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_13_657,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_11_Q
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_12_INV_0 : INV
    port map (
      I => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_14_658,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_12_Q
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_13_INV_0 : INV
    port map (
      I => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_15_659,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_13_Q
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_14_INV_0 : INV
    port map (
      I => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_16_660,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_14_Q
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_17_INV_0 : INV
    port map (
      I => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_19_663,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_17_Q
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_22_INV_0 : INV
    port map (
      I => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_24_668,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_22_Q
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_8_INV_0 : INV
    port map (
      I => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_10_636,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_8_Q
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_10_INV_0 : INV
    port map (
      I => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_12_638,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_10_Q
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_11_INV_0 : INV
    port map (
      I => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_13_639,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_11_Q
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_16_INV_0 : INV
    port map (
      I => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_18_644,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_16_Q
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_17_INV_0 : INV
    port map (
      I => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_19_645,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_17_Q
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_19_INV_0 : INV
    port map (
      I => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_21_647,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_19_Q
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_20_INV_0 : INV
    port map (
      I => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_22_648,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_20_Q
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_21_INV_0 : INV
    port map (
      I => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_23_649,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_21_Q
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_24_INV_0 : INV
    port map (
      I => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_26_652,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_24_Q
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_xor_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_27_669,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_xor_24_rt_370
    );
  BU2_U0_add_B_use_fabric_adder_Madd_c_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_24_80,
      O => BU2_U0_add_B_use_fabric_adder_Madd_c_xor_9_rt_234
    );
  BU2_U0_add_R_use_fabric_adder_Madd_c_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_24_166,
      O => BU2_U0_add_R_use_fabric_adder_Madd_c_xor_9_rt_205
    );
  BU2_U0_add_G_use_fabric_adder_Madd_c_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_24_148,
      O => BU2_U0_add_G_use_fabric_adder_Madd_c_xor_9_rt_168
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_14_671,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_12_rt_429
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_21_678,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_19_rt_415
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_23_680,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_21_rt_411
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_24_681,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_22_rt_409
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_25_682,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_23_rt_407
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_17_661,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_15_rt_388
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_18_662,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_16_rt_386
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_20_664,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_18_rt_382
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_21_665,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_19_rt_380
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_22_666,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_20_rt_378
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_23_667,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_21_rt_376
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_27_669,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_23_rt_372
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_11_637,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_9_rt_367
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_14_640,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_12_rt_361
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_15_641,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_13_rt_359
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_16_642,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_14_rt_357
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_17_643,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_15_rt_355
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_20_646,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_18_rt_349
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_24_650,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_22_rt_341
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_25_651,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_23_rt_339
    );
  BU2_U0_add_B_use_fabric_adder_Madd_c_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_24_80,
      O => BU2_U0_add_B_use_fabric_adder_Madd_c_cy_8_rt_237
    );
  BU2_U0_add_R_use_fabric_adder_Madd_c_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_24_166,
      O => BU2_U0_add_R_use_fabric_adder_Madd_c_cy_8_rt_208
    );
  BU2_U0_add_G_use_fabric_adder_Madd_c_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_24_148,
      O => BU2_U0_add_G_use_fabric_adder_Madd_c_cy_8_rt_171
    );
  BU2_U0_clip_max_B_c_0_1 : LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_9_560,
      I1 => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_8_559,
      I2 => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_0_551,
      O => BU2_U0_clip_max_B_c(0)
    );
  BU2_U0_clip_max_B_c_1_1 : LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_9_560,
      I1 => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_8_559,
      I2 => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_1_552,
      O => BU2_U0_clip_max_B_c(1)
    );
  BU2_U0_clip_max_B_c_2_1 : LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_9_560,
      I1 => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_8_559,
      I2 => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_2_553,
      O => BU2_U0_clip_max_B_c(2)
    );
  BU2_U0_clip_max_B_c_3_1 : LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_9_560,
      I1 => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_8_559,
      I2 => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_3_554,
      O => BU2_U0_clip_max_B_c(3)
    );
  BU2_U0_clip_max_B_c_4_1 : LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_9_560,
      I1 => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_8_559,
      I2 => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_4_555,
      O => BU2_U0_clip_max_B_c(4)
    );
  BU2_U0_clip_max_B_c_5_1 : LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_9_560,
      I1 => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_8_559,
      I2 => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_5_556,
      O => BU2_U0_clip_max_B_c(5)
    );
  BU2_U0_clip_max_B_c_6_1 : LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_9_560,
      I1 => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_8_559,
      I2 => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_6_557,
      O => BU2_U0_clip_max_B_c(6)
    );
  BU2_U0_clip_max_B_c_7_1 : LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_9_560,
      I1 => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_8_559,
      I2 => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_7_558,
      O => BU2_U0_clip_max_B_c(7)
    );
  BU2_U0_clip_max_G_c_0_1 : LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_9_550,
      I1 => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_8_549,
      I2 => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_0_541,
      O => BU2_U0_clip_max_G_c(0)
    );
  BU2_U0_clip_max_G_c_1_1 : LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_9_550,
      I1 => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_8_549,
      I2 => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_1_542,
      O => BU2_U0_clip_max_G_c(1)
    );
  BU2_U0_clip_max_G_c_2_1 : LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_9_550,
      I1 => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_8_549,
      I2 => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_2_543,
      O => BU2_U0_clip_max_G_c(2)
    );
  BU2_U0_clip_max_G_c_3_1 : LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_9_550,
      I1 => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_8_549,
      I2 => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_3_544,
      O => BU2_U0_clip_max_G_c(3)
    );
  BU2_U0_clip_max_G_c_4_1 : LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_9_550,
      I1 => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_8_549,
      I2 => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_4_545,
      O => BU2_U0_clip_max_G_c(4)
    );
  BU2_U0_clip_max_G_c_5_1 : LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_9_550,
      I1 => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_8_549,
      I2 => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_5_546,
      O => BU2_U0_clip_max_G_c(5)
    );
  BU2_U0_clip_max_G_c_6_1 : LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_9_550,
      I1 => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_8_549,
      I2 => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_6_547,
      O => BU2_U0_clip_max_G_c(6)
    );
  BU2_U0_clip_max_G_c_7_1 : LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_9_550,
      I1 => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_8_549,
      I2 => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_7_548,
      O => BU2_U0_clip_max_G_c(7)
    );
  BU2_U0_clip_max_R_c_0_1 : LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_9_540,
      I1 => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_8_539,
      I2 => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_0_531,
      O => BU2_U0_clip_max_R_c(0)
    );
  BU2_U0_clip_max_R_c_1_1 : LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_9_540,
      I1 => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_8_539,
      I2 => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_1_532,
      O => BU2_U0_clip_max_R_c(1)
    );
  BU2_U0_clip_max_R_c_2_1 : LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_9_540,
      I1 => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_8_539,
      I2 => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_2_533,
      O => BU2_U0_clip_max_R_c(2)
    );
  BU2_U0_clip_max_R_c_3_1 : LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_9_540,
      I1 => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_8_539,
      I2 => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_3_534,
      O => BU2_U0_clip_max_R_c(3)
    );
  BU2_U0_clip_max_R_c_4_1 : LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_9_540,
      I1 => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_8_539,
      I2 => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_4_535,
      O => BU2_U0_clip_max_R_c(4)
    );
  BU2_U0_clip_max_R_c_5_1 : LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_9_540,
      I1 => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_8_539,
      I2 => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_5_536,
      O => BU2_U0_clip_max_R_c(5)
    );
  BU2_U0_clip_max_R_c_6_1 : LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_9_540,
      I1 => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_8_539,
      I2 => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_6_537,
      O => BU2_U0_clip_max_R_c(6)
    );
  BU2_U0_clip_max_R_c_7_1 : LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_9_540,
      I1 => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_8_539,
      I2 => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_7_538,
      O => BU2_U0_clip_max_R_c(7)
    );
  BU2_U0_clamp_min_B_c_0_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => BU2_U0_clip_max_B_reg_shift_register_1_9_619,
      I1 => BU2_U0_clip_max_B_reg_shift_register_1_0_635,
      O => BU2_U0_clamp_min_B_c(0)
    );
  BU2_U0_clamp_min_B_c_1_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => BU2_U0_clip_max_B_reg_shift_register_1_9_619,
      I1 => BU2_U0_clip_max_B_reg_shift_register_1_1_633,
      O => BU2_U0_clamp_min_B_c(1)
    );
  BU2_U0_clamp_min_B_c_2_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => BU2_U0_clip_max_B_reg_shift_register_1_9_619,
      I1 => BU2_U0_clip_max_B_reg_shift_register_1_2_631,
      O => BU2_U0_clamp_min_B_c(2)
    );
  BU2_U0_clamp_min_B_c_3_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => BU2_U0_clip_max_B_reg_shift_register_1_9_619,
      I1 => BU2_U0_clip_max_B_reg_shift_register_1_3_629,
      O => BU2_U0_clamp_min_B_c(3)
    );
  BU2_U0_clamp_min_B_c_4_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => BU2_U0_clip_max_B_reg_shift_register_1_9_619,
      I1 => BU2_U0_clip_max_B_reg_shift_register_1_4_627,
      O => BU2_U0_clamp_min_B_c(4)
    );
  BU2_U0_clamp_min_B_c_5_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => BU2_U0_clip_max_B_reg_shift_register_1_9_619,
      I1 => BU2_U0_clip_max_B_reg_shift_register_1_5_625,
      O => BU2_U0_clamp_min_B_c(5)
    );
  BU2_U0_clamp_min_B_c_6_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => BU2_U0_clip_max_B_reg_shift_register_1_9_619,
      I1 => BU2_U0_clip_max_B_reg_shift_register_1_6_623,
      O => BU2_U0_clamp_min_B_c(6)
    );
  BU2_U0_clamp_min_B_c_7_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => BU2_U0_clip_max_B_reg_shift_register_1_9_619,
      I1 => BU2_U0_clip_max_B_reg_shift_register_1_7_621,
      O => BU2_U0_clamp_min_B_c(7)
    );
  BU2_U0_clamp_min_G_c_0_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => BU2_U0_clip_max_G_reg_shift_register_1_9_602,
      I1 => BU2_U0_clip_max_G_reg_shift_register_1_0_618,
      O => BU2_U0_clamp_min_G_c(0)
    );
  BU2_U0_clamp_min_G_c_1_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => BU2_U0_clip_max_G_reg_shift_register_1_9_602,
      I1 => BU2_U0_clip_max_G_reg_shift_register_1_1_616,
      O => BU2_U0_clamp_min_G_c(1)
    );
  BU2_U0_clamp_min_G_c_2_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => BU2_U0_clip_max_G_reg_shift_register_1_9_602,
      I1 => BU2_U0_clip_max_G_reg_shift_register_1_2_614,
      O => BU2_U0_clamp_min_G_c(2)
    );
  BU2_U0_clamp_min_G_c_3_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => BU2_U0_clip_max_G_reg_shift_register_1_9_602,
      I1 => BU2_U0_clip_max_G_reg_shift_register_1_3_612,
      O => BU2_U0_clamp_min_G_c(3)
    );
  BU2_U0_clamp_min_G_c_4_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => BU2_U0_clip_max_G_reg_shift_register_1_9_602,
      I1 => BU2_U0_clip_max_G_reg_shift_register_1_4_610,
      O => BU2_U0_clamp_min_G_c(4)
    );
  BU2_U0_clamp_min_G_c_5_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => BU2_U0_clip_max_G_reg_shift_register_1_9_602,
      I1 => BU2_U0_clip_max_G_reg_shift_register_1_5_608,
      O => BU2_U0_clamp_min_G_c(5)
    );
  BU2_U0_clamp_min_G_c_6_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => BU2_U0_clip_max_G_reg_shift_register_1_9_602,
      I1 => BU2_U0_clip_max_G_reg_shift_register_1_6_606,
      O => BU2_U0_clamp_min_G_c(6)
    );
  BU2_U0_clamp_min_G_c_7_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => BU2_U0_clip_max_G_reg_shift_register_1_9_602,
      I1 => BU2_U0_clip_max_G_reg_shift_register_1_7_604,
      O => BU2_U0_clamp_min_G_c(7)
    );
  BU2_U0_clamp_min_R_c_0_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => BU2_U0_clip_max_R_reg_shift_register_1_9_585,
      I1 => BU2_U0_clip_max_R_reg_shift_register_1_0_601,
      O => BU2_U0_clamp_min_R_c(0)
    );
  BU2_U0_clamp_min_R_c_1_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => BU2_U0_clip_max_R_reg_shift_register_1_9_585,
      I1 => BU2_U0_clip_max_R_reg_shift_register_1_1_599,
      O => BU2_U0_clamp_min_R_c(1)
    );
  BU2_U0_clamp_min_R_c_2_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => BU2_U0_clip_max_R_reg_shift_register_1_9_585,
      I1 => BU2_U0_clip_max_R_reg_shift_register_1_2_597,
      O => BU2_U0_clamp_min_R_c(2)
    );
  BU2_U0_clamp_min_R_c_3_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => BU2_U0_clip_max_R_reg_shift_register_1_9_585,
      I1 => BU2_U0_clip_max_R_reg_shift_register_1_3_595,
      O => BU2_U0_clamp_min_R_c(3)
    );
  BU2_U0_clamp_min_R_c_4_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => BU2_U0_clip_max_R_reg_shift_register_1_9_585,
      I1 => BU2_U0_clip_max_R_reg_shift_register_1_4_593,
      O => BU2_U0_clamp_min_R_c(4)
    );
  BU2_U0_clamp_min_R_c_5_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => BU2_U0_clip_max_R_reg_shift_register_1_9_585,
      I1 => BU2_U0_clip_max_R_reg_shift_register_1_5_591,
      O => BU2_U0_clamp_min_R_c(5)
    );
  BU2_U0_clamp_min_R_c_6_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => BU2_U0_clip_max_R_reg_shift_register_1_9_585,
      I1 => BU2_U0_clip_max_R_reg_shift_register_1_6_589,
      O => BU2_U0_clamp_min_R_c(6)
    );
  BU2_U0_clamp_min_R_c_7_1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => BU2_U0_clip_max_R_reg_shift_register_1_9_585,
      I1 => BU2_U0_clip_max_R_reg_shift_register_1_7_587,
      O => BU2_U0_clamp_min_R_c(7)
    );
  BU2_U0_del_Cb_shift_register_1_9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => cb_4(9),
      Q => BU2_U0_del_Cb_shift_register_1_9_507
    );
  BU2_U0_del_Cb_shift_register_1_8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => cb_4(8),
      Q => BU2_U0_del_Cb_shift_register_1_8_508
    );
  BU2_U0_del_Cb_shift_register_1_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => cb_4(7),
      Q => BU2_U0_del_Cb_shift_register_1_7_509
    );
  BU2_U0_del_Cb_shift_register_1_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => cb_4(6),
      Q => BU2_U0_del_Cb_shift_register_1_6_510
    );
  BU2_U0_del_Cb_shift_register_1_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => cb_4(5),
      Q => BU2_U0_del_Cb_shift_register_1_5_511
    );
  BU2_U0_del_Cb_shift_register_1_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => cb_4(4),
      Q => BU2_U0_del_Cb_shift_register_1_4_512
    );
  BU2_U0_del_Cb_shift_register_1_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => cb_4(3),
      Q => BU2_U0_del_Cb_shift_register_1_3_513
    );
  BU2_U0_del_Cb_shift_register_1_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => cb_4(2),
      Q => BU2_U0_del_Cb_shift_register_1_2_514
    );
  BU2_U0_del_Cb_shift_register_1_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => cb_4(1),
      Q => BU2_U0_del_Cb_shift_register_1_1_515
    );
  BU2_U0_del_Cb_shift_register_1_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => cb_4(0),
      Q => BU2_U0_del_Cb_shift_register_1_0_516
    );
  BU2_U0_del_Cr_shift_register_1_9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => cr_3(9),
      Q => BU2_U0_del_Cr_shift_register_1_9_431
    );
  BU2_U0_del_Cr_shift_register_1_8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => cr_3(8),
      Q => BU2_U0_del_Cr_shift_register_1_8_432
    );
  BU2_U0_del_Cr_shift_register_1_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => cr_3(7),
      Q => BU2_U0_del_Cr_shift_register_1_7_433
    );
  BU2_U0_del_Cr_shift_register_1_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => cr_3(6),
      Q => BU2_U0_del_Cr_shift_register_1_6_434
    );
  BU2_U0_del_Cr_shift_register_1_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => cr_3(5),
      Q => BU2_U0_del_Cr_shift_register_1_5_435
    );
  BU2_U0_del_Cr_shift_register_1_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => cr_3(4),
      Q => BU2_U0_del_Cr_shift_register_1_4_436
    );
  BU2_U0_del_Cr_shift_register_1_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => cr_3(3),
      Q => BU2_U0_del_Cr_shift_register_1_3_437
    );
  BU2_U0_del_Cr_shift_register_1_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => cr_3(2),
      Q => BU2_U0_del_Cr_shift_register_1_2_438
    );
  BU2_U0_del_Cr_shift_register_1_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => cr_3(1),
      Q => BU2_U0_del_Cr_shift_register_1_1_439
    );
  BU2_U0_del_Cr_shift_register_1_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => cr_3(0),
      Q => BU2_U0_del_Cr_shift_register_1_0_440
    );
  BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_26 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register(1, 26),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_26_683
    );
  BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_25 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register(1, 25),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_25_682
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
      Q => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_24_681
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
      Q => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_23_680
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
      Q => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_22_679
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
      Q => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_21_678
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
      Q => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_20_677
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
      Q => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_19_676
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
      Q => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_18_675
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
      Q => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_17_674
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
      Q => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_16_673
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
      Q => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_15_672
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
      Q => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_14_671
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
      Q => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register_2_13_670
    );
  BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_27 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register(1, 25),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_27_669
    );
  BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_24 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register(1, 24),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_24_668
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
      Q => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_23_667
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
      Q => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_22_666
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
      Q => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_21_665
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
      Q => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_20_664
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
      Q => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_19_663
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
      Q => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_18_662
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
      Q => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_17_661
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
      Q => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_16_660
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
      Q => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_15_659
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
      Q => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_14_658
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
      Q => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_13_657
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
      Q => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_12_656
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
      Q => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_11_655
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
      Q => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_10_654
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
      Q => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_9_653
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
      Q => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_8_93
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
      Q => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_7_91
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
  BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_27 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register(1, 26),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_27_264
    );
  BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_25 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register(1, 25),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_25_267
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
      Q => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_24_270
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
      Q => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_23_273
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
      Q => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_22_276
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
      Q => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_21_279
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
      Q => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_20_282
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
      Q => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_19_285
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
      Q => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_18_288
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
      Q => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_17_290
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
      Q => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_16_293
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
      Q => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_15_296
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
      Q => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_14_299
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
      Q => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_13_302
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
      Q => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_12_305
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
      Q => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_11_308
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
      Q => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_10_311
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
      Q => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_9_314
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
      Q => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_8_317
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
      Q => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_7_320
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
      Q => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_6_323
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
      Q => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_5_326
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
      Q => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_4_329
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
      Q => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_3_332
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
      Q => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_2_334
    );
  BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_26 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register(1, 26),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_26_652
    );
  BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_25 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register(1, 25),
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_25_651
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
      Q => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_24_650
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
      Q => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_23_649
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
      Q => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_22_648
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
      Q => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_21_647
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
      Q => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_20_646
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
      Q => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_19_645
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
      Q => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_18_644
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
      Q => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_17_643
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
      Q => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_16_642
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
      Q => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_15_641
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
      Q => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_14_640
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
      Q => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_13_639
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
      Q => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_12_638
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
      Q => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_11_637
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
      Q => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register_2_10_636
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
      Q => BU2_U0_clip_max_B_reg_shift_register_1_0_635
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
      Q => BU2_U0_clip_max_B_reg_shift_register_1_1_633
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
      Q => BU2_U0_clip_max_B_reg_shift_register_1_2_631
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
      Q => BU2_U0_clip_max_B_reg_shift_register_1_3_629
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
      Q => BU2_U0_clip_max_B_reg_shift_register_1_4_627
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
      Q => BU2_U0_clip_max_B_reg_shift_register_1_5_625
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
      Q => BU2_U0_clip_max_B_reg_shift_register_1_6_623
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
      Q => BU2_U0_clip_max_B_reg_shift_register_1_7_621
    );
  BU2_U0_clip_max_B_reg_shift_register_1_9 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_9_560,
      R => sclr,
      Q => BU2_U0_clip_max_B_reg_shift_register_1_9_619
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
      Q => BU2_U0_clip_max_G_reg_shift_register_1_0_618
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
      Q => BU2_U0_clip_max_G_reg_shift_register_1_1_616
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
      Q => BU2_U0_clip_max_G_reg_shift_register_1_2_614
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
      Q => BU2_U0_clip_max_G_reg_shift_register_1_3_612
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
      Q => BU2_U0_clip_max_G_reg_shift_register_1_4_610
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
      Q => BU2_U0_clip_max_G_reg_shift_register_1_5_608
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
      Q => BU2_U0_clip_max_G_reg_shift_register_1_6_606
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
      Q => BU2_U0_clip_max_G_reg_shift_register_1_7_604
    );
  BU2_U0_clip_max_G_reg_shift_register_1_9 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_9_550,
      R => sclr,
      Q => BU2_U0_clip_max_G_reg_shift_register_1_9_602
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
      Q => BU2_U0_clip_max_R_reg_shift_register_1_0_601
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
      Q => BU2_U0_clip_max_R_reg_shift_register_1_1_599
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
      Q => BU2_U0_clip_max_R_reg_shift_register_1_2_597
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
      Q => BU2_U0_clip_max_R_reg_shift_register_1_3_595
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
      Q => BU2_U0_clip_max_R_reg_shift_register_1_4_593
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
      Q => BU2_U0_clip_max_R_reg_shift_register_1_5_591
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
      Q => BU2_U0_clip_max_R_reg_shift_register_1_6_589
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
      Q => BU2_U0_clip_max_R_reg_shift_register_1_7_587
    );
  BU2_U0_clip_max_R_reg_shift_register_1_9 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_9_540,
      R => sclr,
      Q => BU2_U0_clip_max_R_reg_shift_register_1_9_585
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
      Q => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_9_560
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
      Q => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_8_559
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
      Q => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_7_558
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
      Q => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_6_557
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
      Q => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_5_556
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
      Q => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_4_555
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
      Q => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_3_554
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
      Q => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_2_553
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
      Q => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_1_552
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
      Q => BU2_U0_add_B_use_fabric_adder_reg_shift_register_1_0_551
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
      Q => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_9_550
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
      Q => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_8_549
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
      Q => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_7_548
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
      Q => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_6_547
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
      Q => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_5_546
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
      Q => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_4_545
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
      Q => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_3_544
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
      Q => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_2_543
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
      Q => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_1_542
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
      Q => BU2_U0_add_G_use_fabric_adder_reg_shift_register_1_0_541
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
      Q => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_9_540
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
      Q => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_8_539
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
      Q => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_7_538
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
      Q => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_6_537
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
      Q => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_5_536
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
      Q => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_4_535
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
      Q => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_3_534
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
      Q => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_2_533
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
      Q => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_1_532
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
      Q => BU2_U0_add_R_use_fabric_adder_reg_shift_register_1_0_531
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
      A(12) => BU2_N1,
      A(11) => BU2_N0,
      A(10) => BU2_N0,
      A(9) => BU2_N0,
      A(8) => BU2_N0,
      A(7) => BU2_N0,
      A(6) => BU2_N1,
      A(5) => BU2_N1,
      A(4) => BU2_N1,
      A(3) => BU2_N0,
      A(2) => BU2_N0,
      A(1) => BU2_N0,
      A(0) => BU2_N0,
      B(17) => BU2_N0,
      B(16) => BU2_N0,
      B(15) => BU2_N0,
      B(14) => BU2_N0,
      B(13) => BU2_N0,
      B(12) => BU2_N0,
      B(11) => BU2_N0,
      B(10) => BU2_N0,
      B(9) => BU2_U0_del_Cb_shift_register_1_9_507,
      B(8) => BU2_U0_del_Cb_shift_register_1_8_508,
      B(7) => BU2_U0_del_Cb_shift_register_1_7_509,
      B(6) => BU2_U0_del_Cb_shift_register_1_6_510,
      B(5) => BU2_U0_del_Cb_shift_register_1_5_511,
      B(4) => BU2_U0_del_Cb_shift_register_1_4_512,
      B(3) => BU2_U0_del_Cb_shift_register_1_3_513,
      B(2) => BU2_U0_del_Cb_shift_register_1_2_514,
      B(1) => BU2_U0_del_Cb_shift_register_1_1_515,
      B(0) => BU2_U0_del_Cb_shift_register_1_0_516,
      P(35) => NLW_BU2_U0_sp3_v2_v2p_mult_dCb_Mmult_c_P_35_UNCONNECTED,
      P(34) => NLW_BU2_U0_sp3_v2_v2p_mult_dCb_Mmult_c_P_34_UNCONNECTED,
      P(33) => NLW_BU2_U0_sp3_v2_v2p_mult_dCb_Mmult_c_P_33_UNCONNECTED,
      P(32) => NLW_BU2_U0_sp3_v2_v2p_mult_dCb_Mmult_c_P_32_UNCONNECTED,
      P(31) => NLW_BU2_U0_sp3_v2_v2p_mult_dCb_Mmult_c_P_31_UNCONNECTED,
      P(30) => NLW_BU2_U0_sp3_v2_v2p_mult_dCb_Mmult_c_P_30_UNCONNECTED,
      P(29) => NLW_BU2_U0_sp3_v2_v2p_mult_dCb_Mmult_c_P_29_UNCONNECTED,
      P(28) => NLW_BU2_U0_sp3_v2_v2p_mult_dCb_Mmult_c_P_28_UNCONNECTED,
      P(27) => NLW_BU2_U0_sp3_v2_v2p_mult_dCb_Mmult_c_P_27_UNCONNECTED,
      P(26) => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register(1, 26),
      P(25) => BU2_U0_sp3_v2_v2p_mult_dCb_reg_shift_register(1, 25),
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
      P(12) => NLW_BU2_U0_sp3_v2_v2p_mult_dCb_Mmult_c_P_12_UNCONNECTED,
      P(11) => NLW_BU2_U0_sp3_v2_v2p_mult_dCb_Mmult_c_P_11_UNCONNECTED,
      P(10) => NLW_BU2_U0_sp3_v2_v2p_mult_dCb_Mmult_c_P_10_UNCONNECTED,
      P(9) => NLW_BU2_U0_sp3_v2_v2p_mult_dCb_Mmult_c_P_9_UNCONNECTED,
      P(8) => NLW_BU2_U0_sp3_v2_v2p_mult_dCb_Mmult_c_P_8_UNCONNECTED,
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
      A(15) => BU2_N1,
      A(14) => BU2_N0,
      A(13) => BU2_N0,
      A(12) => BU2_N0,
      A(11) => BU2_N1,
      A(10) => BU2_N0,
      A(9) => BU2_N1,
      A(8) => BU2_N0,
      A(7) => BU2_N0,
      A(6) => BU2_N0,
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
      B(9) => BU2_U0_del_Cr_shift_register_1_9_431,
      B(8) => BU2_U0_del_Cr_shift_register_1_8_432,
      B(7) => BU2_U0_del_Cr_shift_register_1_7_433,
      B(6) => BU2_U0_del_Cr_shift_register_1_6_434,
      B(5) => BU2_U0_del_Cr_shift_register_1_5_435,
      B(4) => BU2_U0_del_Cr_shift_register_1_4_436,
      B(3) => BU2_U0_del_Cr_shift_register_1_3_437,
      B(2) => BU2_U0_del_Cr_shift_register_1_2_438,
      B(1) => BU2_U0_del_Cr_shift_register_1_1_439,
      B(0) => BU2_U0_del_Cr_shift_register_1_0_440,
      P(35) => NLW_BU2_U0_sp3_v2_v2p_mult_aCr_Mmult_c_P_35_UNCONNECTED,
      P(34) => NLW_BU2_U0_sp3_v2_v2p_mult_aCr_Mmult_c_P_34_UNCONNECTED,
      P(33) => NLW_BU2_U0_sp3_v2_v2p_mult_aCr_Mmult_c_P_33_UNCONNECTED,
      P(32) => NLW_BU2_U0_sp3_v2_v2p_mult_aCr_Mmult_c_P_32_UNCONNECTED,
      P(31) => NLW_BU2_U0_sp3_v2_v2p_mult_aCr_Mmult_c_P_31_UNCONNECTED,
      P(30) => NLW_BU2_U0_sp3_v2_v2p_mult_aCr_Mmult_c_P_30_UNCONNECTED,
      P(29) => NLW_BU2_U0_sp3_v2_v2p_mult_aCr_Mmult_c_P_29_UNCONNECTED,
      P(28) => NLW_BU2_U0_sp3_v2_v2p_mult_aCr_Mmult_c_P_28_UNCONNECTED,
      P(27) => NLW_BU2_U0_sp3_v2_v2p_mult_aCr_Mmult_c_P_27_UNCONNECTED,
      P(26) => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register(1, 26),
      P(25) => BU2_U0_sp3_v2_v2p_mult_aCr_reg_shift_register(1, 25),
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
      P(9) => NLW_BU2_U0_sp3_v2_v2p_mult_aCr_Mmult_c_P_9_UNCONNECTED,
      P(8) => NLW_BU2_U0_sp3_v2_v2p_mult_aCr_Mmult_c_P_8_UNCONNECTED,
      P(7) => NLW_BU2_U0_sp3_v2_v2p_mult_aCr_Mmult_c_P_7_UNCONNECTED,
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
      A(14) => BU2_N1,
      A(13) => BU2_N0,
      A(12) => BU2_N1,
      A(11) => BU2_N1,
      A(10) => BU2_N0,
      A(9) => BU2_N1,
      A(8) => BU2_N0,
      A(7) => BU2_N0,
      A(6) => BU2_N0,
      A(5) => BU2_N0,
      A(4) => BU2_N0,
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
      B(9) => cb_4(9),
      B(8) => cb_4(8),
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
      P(25) => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register(1, 25),
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
      P(1) => NLW_BU2_U0_sp3_v2_v2p_mult_cCb_Mmult_c_P_1_UNCONNECTED,
      P(0) => NLW_BU2_U0_sp3_v2_v2p_mult_cCb_Mmult_c_P_0_UNCONNECTED
    );
  BU2_U0_sp3_v2_v2p_mult_bCr_Mmult_c : MULT18X18S
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
      A(10) => BU2_N0,
      A(9) => BU2_N0,
      A(8) => BU2_N1,
      A(7) => BU2_N0,
      A(6) => BU2_N0,
      A(5) => BU2_N1,
      A(4) => BU2_N1,
      A(3) => BU2_N0,
      A(2) => BU2_N1,
      A(1) => BU2_N0,
      A(0) => BU2_N0,
      B(17) => BU2_N0,
      B(16) => BU2_N0,
      B(15) => BU2_N0,
      B(14) => BU2_N0,
      B(13) => BU2_N0,
      B(12) => BU2_N0,
      B(11) => BU2_N0,
      B(10) => BU2_N0,
      B(9) => BU2_U0_del_Cr_shift_register_1_9_431,
      B(8) => BU2_U0_del_Cr_shift_register_1_8_432,
      B(7) => BU2_U0_del_Cr_shift_register_1_7_433,
      B(6) => BU2_U0_del_Cr_shift_register_1_6_434,
      B(5) => BU2_U0_del_Cr_shift_register_1_5_435,
      B(4) => BU2_U0_del_Cr_shift_register_1_4_436,
      B(3) => BU2_U0_del_Cr_shift_register_1_3_437,
      B(2) => BU2_U0_del_Cr_shift_register_1_2_438,
      B(1) => BU2_U0_del_Cr_shift_register_1_1_439,
      B(0) => BU2_U0_del_Cr_shift_register_1_0_440,
      P(35) => NLW_BU2_U0_sp3_v2_v2p_mult_bCr_Mmult_c_P_35_UNCONNECTED,
      P(34) => NLW_BU2_U0_sp3_v2_v2p_mult_bCr_Mmult_c_P_34_UNCONNECTED,
      P(33) => NLW_BU2_U0_sp3_v2_v2p_mult_bCr_Mmult_c_P_33_UNCONNECTED,
      P(32) => NLW_BU2_U0_sp3_v2_v2p_mult_bCr_Mmult_c_P_32_UNCONNECTED,
      P(31) => NLW_BU2_U0_sp3_v2_v2p_mult_bCr_Mmult_c_P_31_UNCONNECTED,
      P(30) => NLW_BU2_U0_sp3_v2_v2p_mult_bCr_Mmult_c_P_30_UNCONNECTED,
      P(29) => NLW_BU2_U0_sp3_v2_v2p_mult_bCr_Mmult_c_P_29_UNCONNECTED,
      P(28) => NLW_BU2_U0_sp3_v2_v2p_mult_bCr_Mmult_c_P_28_UNCONNECTED,
      P(27) => NLW_BU2_U0_sp3_v2_v2p_mult_bCr_Mmult_c_P_27_UNCONNECTED,
      P(26) => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register(1, 26),
      P(25) => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register(1, 25),
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
      P(1) => NLW_BU2_U0_sp3_v2_v2p_mult_bCr_Mmult_c_P_1_UNCONNECTED,
      P(0) => NLW_BU2_U0_sp3_v2_v2p_mult_bCr_Mmult_c_P_0_UNCONNECTED
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_11_Q : MUXCY
    port map (
      CI => BU2_N0,
      DI => BU2_N1,
      S => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_11_Q,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy(11)
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_12_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy(11),
      DI => BU2_N0,
      S => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_12_rt_429,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy(12)
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_13_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy(12),
      DI => BU2_N1,
      S => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_13_Q,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy(13)
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_14_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy(13),
      DI => BU2_N1,
      S => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_14_Q,
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
      DI => BU2_N1,
      S => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_17_Q,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy(17)
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_xor_17_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy(16),
      LI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_17_Q,
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
      DI => BU2_N0,
      S => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_19_rt_415,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy(19)
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_xor_19_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy(18),
      LI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_19_rt_415,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_c(19)
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_20_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy(19),
      DI => BU2_N1,
      S => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_20_Q,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy(20)
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_xor_20_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy(19),
      LI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_lut_20_Q,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_c(20)
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_21_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy(20),
      DI => BU2_N0,
      S => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_21_rt_411,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy(21)
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_xor_21_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy(20),
      LI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_21_rt_411,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_c(21)
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_22_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy(21),
      DI => BU2_N0,
      S => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_22_rt_409,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy(22)
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_xor_22_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy(21),
      LI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_22_rt_409,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_c(22)
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_23_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy(22),
      DI => BU2_N0,
      S => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_23_rt_407,
      O => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy(23)
    );
  BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_xor_23_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy(22),
      LI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_Madd_c_cy_23_rt_407,
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
      DI => BU2_N1,
      S => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_8_Q,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(8)
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_xor_8_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(7),
      LI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_8_Q,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_c(8)
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_9_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(8),
      DI => BU2_N1,
      S => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_9_Q,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(9)
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_xor_9_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(8),
      LI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_9_Q,
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
      DI => BU2_N1,
      S => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_11_Q,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(11)
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_xor_11_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(10),
      LI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_11_Q,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_c(11)
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_12_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(11),
      DI => BU2_N1,
      S => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_12_Q,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(12)
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_xor_12_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(11),
      LI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_12_Q,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_c(12)
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_13_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(12),
      DI => BU2_N1,
      S => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_13_Q,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(13)
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_xor_13_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(12),
      LI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_13_Q,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_c(13)
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_14_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(13),
      DI => BU2_N1,
      S => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_14_Q,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(14)
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_xor_14_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(13),
      LI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_14_Q,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_c(14)
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_15_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(14),
      DI => BU2_N0,
      S => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_15_rt_388,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(15)
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_xor_15_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(14),
      LI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_15_rt_388,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_c(15)
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_16_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(15),
      DI => BU2_N0,
      S => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_16_rt_386,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(16)
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_xor_16_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(15),
      LI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_16_rt_386,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_c(16)
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_17_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(16),
      DI => BU2_N1,
      S => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_17_Q,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(17)
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_xor_17_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(16),
      LI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_lut_17_Q,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_c(17)
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_18_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(17),
      DI => BU2_N0,
      S => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_18_rt_382,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(18)
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_xor_18_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(17),
      LI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_18_rt_382,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_c(18)
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_19_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(18),
      DI => BU2_N0,
      S => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_19_rt_380,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(19)
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_xor_19_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(18),
      LI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_19_rt_380,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_c(19)
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_20_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(19),
      DI => BU2_N0,
      S => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_20_rt_378,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(20)
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_xor_20_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(19),
      LI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_20_rt_378,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_c(20)
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_21_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(20),
      DI => BU2_N0,
      S => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_21_rt_376,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(21)
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_xor_21_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(20),
      LI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_21_rt_376,
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
      S => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_23_rt_372,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(23)
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_xor_23_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(22),
      LI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy_23_rt_372,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_c(23)
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_xor_24_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_cy(23),
      LI => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_Madd_c_xor_24_rt_370,
      O => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_c(24)
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_8_Q : MUXCY
    port map (
      CI => BU2_N0,
      DI => BU2_N1,
      S => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_8_Q,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy(8)
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_9_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy(8),
      DI => BU2_N0,
      S => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_9_rt_367,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy(9)
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_10_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy(9),
      DI => BU2_N1,
      S => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_10_Q,
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
      DI => BU2_N0,
      S => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_12_rt_361,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy(12)
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_13_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy(12),
      DI => BU2_N0,
      S => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_13_rt_359,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy(13)
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_14_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy(13),
      DI => BU2_N0,
      S => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_14_rt_357,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy(14)
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_15_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy(14),
      DI => BU2_N0,
      S => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_15_rt_355,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy(15)
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_16_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy(15),
      DI => BU2_N1,
      S => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_16_Q,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy(16)
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_xor_16_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy(15),
      LI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_16_Q,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_c(16)
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_17_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy(16),
      DI => BU2_N1,
      S => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_17_Q,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy(17)
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_xor_17_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy(16),
      LI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_lut_17_Q,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_c(17)
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_18_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy(17),
      DI => BU2_N0,
      S => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_18_rt_349,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy(18)
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_xor_18_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy(17),
      LI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_18_rt_349,
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
      S => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_22_rt_341,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy(22)
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_xor_22_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy(21),
      LI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_22_rt_341,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_c(22)
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_23_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy(22),
      DI => BU2_N0,
      S => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_23_rt_339,
      O => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy(23)
    );
  BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_xor_23_Q : XORCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy(22),
      LI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_Madd_c_cy_23_rt_339,
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
      I0 => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_2_334,
      I1 => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_0_82,
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(0)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy_0_Q : MUXCY
    port map (
      CI => BU2_N0,
      DI => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_2_334,
      S => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(0),
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(0)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut_1_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_3_332,
      I1 => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_1_84,
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(1)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy_1_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(0),
      DI => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_3_332,
      S => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(1),
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(1)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_4_329,
      I1 => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_2_86,
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(2)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy_2_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(1),
      DI => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_4_329,
      S => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(2),
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(2)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_5_326,
      I1 => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_3_88,
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(3)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy_3_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(2),
      DI => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_5_326,
      S => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(3),
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(3)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_6_323,
      I1 => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_4_90,
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(4)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy_4_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(3),
      DI => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_6_323,
      S => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(4),
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(4)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut_5_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_7_320,
      I1 => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_5_92,
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(5)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy_5_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(4),
      DI => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_7_320,
      S => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(5),
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(5)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut_6_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_8_317,
      I1 => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_6_94,
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(6)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy_6_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(5),
      DI => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_8_317,
      S => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(6),
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(6)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut_7_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_9_314,
      I1 => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_7_96,
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(7)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy_7_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(6),
      DI => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_9_314,
      S => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(7),
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(7)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut_8_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_10_311,
      I1 => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_8_98,
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(8)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy_8_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(7),
      DI => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_10_311,
      S => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(8),
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(8)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut_9_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_11_308,
      I1 => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_9_100,
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(9)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy_9_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(8),
      DI => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_11_308,
      S => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(9),
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(9)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut_10_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_12_305,
      I1 => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_10_102,
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(10)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy_10_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(9),
      DI => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_12_305,
      S => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(10),
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(10)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut_11_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_13_302,
      I1 => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_11_104,
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(11)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy_11_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(10),
      DI => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_13_302,
      S => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(11),
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(11)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut_12_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_14_299,
      I1 => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_12_106,
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(12)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy_12_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(11),
      DI => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_14_299,
      S => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(12),
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(12)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut_13_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_15_296,
      I1 => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_13_108,
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(13)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy_13_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(12),
      DI => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_15_296,
      S => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(13),
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(13)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut_14_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_16_293,
      I1 => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_14_110,
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(14)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy_14_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(13),
      DI => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_16_293,
      S => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(14),
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(14)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut_15_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_17_290,
      I1 => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_15_112,
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(15)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy_15_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(14),
      DI => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_17_290,
      S => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(15),
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(15)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut_16_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_18_288,
      I1 => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_16_114,
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(16)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy_16_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(15),
      DI => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_18_288,
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
      I0 => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_19_285,
      I1 => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_17_116,
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(17)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy_17_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(16),
      DI => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_19_285,
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
      I0 => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_20_282,
      I1 => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_18_118,
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(18)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy_18_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(17),
      DI => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_20_282,
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
      I0 => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_21_279,
      I1 => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_19_120,
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(19)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy_19_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(18),
      DI => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_21_279,
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
      I0 => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_22_276,
      I1 => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_20_122,
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(20)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy_20_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(19),
      DI => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_22_276,
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
      I0 => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_23_273,
      I1 => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_21_124,
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(21)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy_21_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(20),
      DI => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_23_273,
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
      I0 => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_24_270,
      I1 => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_22_126,
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(22)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy_22_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(21),
      DI => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_24_270,
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
      I0 => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_25_267,
      I1 => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_23_128,
      O => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_lut(23)
    );
  BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy_23_Q : MUXCY
    port map (
      CI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_Madd_c_cy(22),
      DI => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_25_267,
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
      I0 => BU2_U0_sp3_v2_v2p_mult_bCr_reg_shift_register_2_27_264,
      I1 => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_24_130,
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
      I0 => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_16_64,
      I1 => BU2_U0_del_Y_shift_register_4_2_203,
      O => BU2_U0_add_B_use_fabric_adder_Madd_c_lut(0)
    );
  BU2_U0_add_B_use_fabric_adder_Madd_c_cy_0_Q : MUXCY
    port map (
      CI => BU2_N0,
      DI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_16_64,
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
      I0 => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_17_66,
      I1 => BU2_U0_del_Y_shift_register_4_3_200,
      O => BU2_U0_add_B_use_fabric_adder_Madd_c_lut(1)
    );
  BU2_U0_add_B_use_fabric_adder_Madd_c_cy_1_Q : MUXCY
    port map (
      CI => BU2_U0_add_B_use_fabric_adder_Madd_c_cy(0),
      DI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_17_66,
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
      I0 => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_18_68,
      I1 => BU2_U0_del_Y_shift_register_4_4_196,
      O => BU2_U0_add_B_use_fabric_adder_Madd_c_lut(2)
    );
  BU2_U0_add_B_use_fabric_adder_Madd_c_cy_2_Q : MUXCY
    port map (
      CI => BU2_U0_add_B_use_fabric_adder_Madd_c_cy(1),
      DI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_18_68,
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
      I0 => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_19_70,
      I1 => BU2_U0_del_Y_shift_register_4_5_192,
      O => BU2_U0_add_B_use_fabric_adder_Madd_c_lut(3)
    );
  BU2_U0_add_B_use_fabric_adder_Madd_c_cy_3_Q : MUXCY
    port map (
      CI => BU2_U0_add_B_use_fabric_adder_Madd_c_cy(2),
      DI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_19_70,
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
      I0 => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_20_72,
      I1 => BU2_U0_del_Y_shift_register_4_6_188,
      O => BU2_U0_add_B_use_fabric_adder_Madd_c_lut(4)
    );
  BU2_U0_add_B_use_fabric_adder_Madd_c_cy_4_Q : MUXCY
    port map (
      CI => BU2_U0_add_B_use_fabric_adder_Madd_c_cy(3),
      DI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_20_72,
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
      I0 => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_21_74,
      I1 => BU2_U0_del_Y_shift_register_4_7_184,
      O => BU2_U0_add_B_use_fabric_adder_Madd_c_lut(5)
    );
  BU2_U0_add_B_use_fabric_adder_Madd_c_cy_5_Q : MUXCY
    port map (
      CI => BU2_U0_add_B_use_fabric_adder_Madd_c_cy(4),
      DI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_21_74,
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
      I0 => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_22_76,
      I1 => BU2_U0_del_Y_shift_register_4_8_180,
      O => BU2_U0_add_B_use_fabric_adder_Madd_c_lut(6)
    );
  BU2_U0_add_B_use_fabric_adder_Madd_c_cy_6_Q : MUXCY
    port map (
      CI => BU2_U0_add_B_use_fabric_adder_Madd_c_cy(5),
      DI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_22_76,
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
      I0 => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_23_78,
      I1 => BU2_U0_del_Y_shift_register_4_9_176,
      O => BU2_U0_add_B_use_fabric_adder_Madd_c_lut(7)
    );
  BU2_U0_add_B_use_fabric_adder_Madd_c_cy_7_Q : MUXCY
    port map (
      CI => BU2_U0_add_B_use_fabric_adder_Madd_c_cy(6),
      DI => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_23_78,
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
      S => BU2_U0_add_B_use_fabric_adder_Madd_c_cy_8_rt_237,
      O => BU2_U0_add_B_use_fabric_adder_Madd_c_cy(8)
    );
  BU2_U0_add_B_use_fabric_adder_Madd_c_xor_8_Q : XORCY
    port map (
      CI => BU2_U0_add_B_use_fabric_adder_Madd_c_cy(7),
      LI => BU2_U0_add_B_use_fabric_adder_Madd_c_cy_8_rt_237,
      O => BU2_U0_add_B_use_fabric_adder_c(8)
    );
  BU2_U0_add_B_use_fabric_adder_Madd_c_xor_9_Q : XORCY
    port map (
      CI => BU2_U0_add_B_use_fabric_adder_Madd_c_cy(8),
      LI => BU2_U0_add_B_use_fabric_adder_Madd_c_xor_9_rt_234,
      O => BU2_U0_add_B_use_fabric_adder_c(9)
    );
  BU2_U0_add_R_use_fabric_adder_Madd_c_lut_0_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_16_150,
      I1 => BU2_U0_del_Y_shift_register_4_2_203,
      O => BU2_U0_add_R_use_fabric_adder_Madd_c_lut(0)
    );
  BU2_U0_add_R_use_fabric_adder_Madd_c_cy_0_Q : MUXCY
    port map (
      CI => BU2_N0,
      DI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_16_150,
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
      I0 => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_17_152,
      I1 => BU2_U0_del_Y_shift_register_4_3_200,
      O => BU2_U0_add_R_use_fabric_adder_Madd_c_lut(1)
    );
  BU2_U0_add_R_use_fabric_adder_Madd_c_cy_1_Q : MUXCY
    port map (
      CI => BU2_U0_add_R_use_fabric_adder_Madd_c_cy(0),
      DI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_17_152,
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
      I0 => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_18_154,
      I1 => BU2_U0_del_Y_shift_register_4_4_196,
      O => BU2_U0_add_R_use_fabric_adder_Madd_c_lut(2)
    );
  BU2_U0_add_R_use_fabric_adder_Madd_c_cy_2_Q : MUXCY
    port map (
      CI => BU2_U0_add_R_use_fabric_adder_Madd_c_cy(1),
      DI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_18_154,
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
      I0 => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_19_156,
      I1 => BU2_U0_del_Y_shift_register_4_5_192,
      O => BU2_U0_add_R_use_fabric_adder_Madd_c_lut(3)
    );
  BU2_U0_add_R_use_fabric_adder_Madd_c_cy_3_Q : MUXCY
    port map (
      CI => BU2_U0_add_R_use_fabric_adder_Madd_c_cy(2),
      DI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_19_156,
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
      I0 => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_20_158,
      I1 => BU2_U0_del_Y_shift_register_4_6_188,
      O => BU2_U0_add_R_use_fabric_adder_Madd_c_lut(4)
    );
  BU2_U0_add_R_use_fabric_adder_Madd_c_cy_4_Q : MUXCY
    port map (
      CI => BU2_U0_add_R_use_fabric_adder_Madd_c_cy(3),
      DI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_20_158,
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
      I0 => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_21_160,
      I1 => BU2_U0_del_Y_shift_register_4_7_184,
      O => BU2_U0_add_R_use_fabric_adder_Madd_c_lut(5)
    );
  BU2_U0_add_R_use_fabric_adder_Madd_c_cy_5_Q : MUXCY
    port map (
      CI => BU2_U0_add_R_use_fabric_adder_Madd_c_cy(4),
      DI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_21_160,
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
      I0 => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_22_162,
      I1 => BU2_U0_del_Y_shift_register_4_8_180,
      O => BU2_U0_add_R_use_fabric_adder_Madd_c_lut(6)
    );
  BU2_U0_add_R_use_fabric_adder_Madd_c_cy_6_Q : MUXCY
    port map (
      CI => BU2_U0_add_R_use_fabric_adder_Madd_c_cy(5),
      DI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_22_162,
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
      I0 => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_23_164,
      I1 => BU2_U0_del_Y_shift_register_4_9_176,
      O => BU2_U0_add_R_use_fabric_adder_Madd_c_lut(7)
    );
  BU2_U0_add_R_use_fabric_adder_Madd_c_cy_7_Q : MUXCY
    port map (
      CI => BU2_U0_add_R_use_fabric_adder_Madd_c_cy(6),
      DI => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_23_164,
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
      S => BU2_U0_add_R_use_fabric_adder_Madd_c_cy_8_rt_208,
      O => BU2_U0_add_R_use_fabric_adder_Madd_c_cy(8)
    );
  BU2_U0_add_R_use_fabric_adder_Madd_c_xor_8_Q : XORCY
    port map (
      CI => BU2_U0_add_R_use_fabric_adder_Madd_c_cy(7),
      LI => BU2_U0_add_R_use_fabric_adder_Madd_c_cy_8_rt_208,
      O => BU2_U0_add_R_use_fabric_adder_c(8)
    );
  BU2_U0_add_R_use_fabric_adder_Madd_c_xor_9_Q : XORCY
    port map (
      CI => BU2_U0_add_R_use_fabric_adder_Madd_c_cy(8),
      LI => BU2_U0_add_R_use_fabric_adder_Madd_c_xor_9_rt_205,
      O => BU2_U0_add_R_use_fabric_adder_c(9)
    );
  BU2_U0_add_G_use_fabric_adder_Madd_c_lut_0_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_16_132,
      I1 => BU2_U0_del_Y_shift_register_4_2_203,
      O => BU2_U0_add_G_use_fabric_adder_Madd_c_lut(0)
    );
  BU2_U0_add_G_use_fabric_adder_Madd_c_cy_0_Q : MUXCY
    port map (
      CI => BU2_N0,
      DI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_16_132,
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
      I0 => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_17_134,
      I1 => BU2_U0_del_Y_shift_register_4_3_200,
      O => BU2_U0_add_G_use_fabric_adder_Madd_c_lut(1)
    );
  BU2_U0_add_G_use_fabric_adder_Madd_c_cy_1_Q : MUXCY
    port map (
      CI => BU2_U0_add_G_use_fabric_adder_Madd_c_cy(0),
      DI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_17_134,
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
      I0 => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_18_136,
      I1 => BU2_U0_del_Y_shift_register_4_4_196,
      O => BU2_U0_add_G_use_fabric_adder_Madd_c_lut(2)
    );
  BU2_U0_add_G_use_fabric_adder_Madd_c_cy_2_Q : MUXCY
    port map (
      CI => BU2_U0_add_G_use_fabric_adder_Madd_c_cy(1),
      DI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_18_136,
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
      I0 => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_19_138,
      I1 => BU2_U0_del_Y_shift_register_4_5_192,
      O => BU2_U0_add_G_use_fabric_adder_Madd_c_lut(3)
    );
  BU2_U0_add_G_use_fabric_adder_Madd_c_cy_3_Q : MUXCY
    port map (
      CI => BU2_U0_add_G_use_fabric_adder_Madd_c_cy(2),
      DI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_19_138,
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
      I0 => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_20_140,
      I1 => BU2_U0_del_Y_shift_register_4_6_188,
      O => BU2_U0_add_G_use_fabric_adder_Madd_c_lut(4)
    );
  BU2_U0_add_G_use_fabric_adder_Madd_c_cy_4_Q : MUXCY
    port map (
      CI => BU2_U0_add_G_use_fabric_adder_Madd_c_cy(3),
      DI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_20_140,
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
      I0 => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_21_142,
      I1 => BU2_U0_del_Y_shift_register_4_7_184,
      O => BU2_U0_add_G_use_fabric_adder_Madd_c_lut(5)
    );
  BU2_U0_add_G_use_fabric_adder_Madd_c_cy_5_Q : MUXCY
    port map (
      CI => BU2_U0_add_G_use_fabric_adder_Madd_c_cy(4),
      DI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_21_142,
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
      I0 => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_22_144,
      I1 => BU2_U0_del_Y_shift_register_4_8_180,
      O => BU2_U0_add_G_use_fabric_adder_Madd_c_lut(6)
    );
  BU2_U0_add_G_use_fabric_adder_Madd_c_cy_6_Q : MUXCY
    port map (
      CI => BU2_U0_add_G_use_fabric_adder_Madd_c_cy(5),
      DI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_22_144,
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
      I0 => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_23_146,
      I1 => BU2_U0_del_Y_shift_register_4_9_176,
      O => BU2_U0_add_G_use_fabric_adder_Madd_c_lut(7)
    );
  BU2_U0_add_G_use_fabric_adder_Madd_c_cy_7_Q : MUXCY
    port map (
      CI => BU2_U0_add_G_use_fabric_adder_Madd_c_cy(6),
      DI => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_23_146,
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
      S => BU2_U0_add_G_use_fabric_adder_Madd_c_cy_8_rt_171,
      O => BU2_U0_add_G_use_fabric_adder_Madd_c_cy(8)
    );
  BU2_U0_add_G_use_fabric_adder_Madd_c_xor_8_Q : XORCY
    port map (
      CI => BU2_U0_add_G_use_fabric_adder_Madd_c_cy(7),
      LI => BU2_U0_add_G_use_fabric_adder_Madd_c_cy_8_rt_171,
      O => BU2_U0_add_G_use_fabric_adder_c(8)
    );
  BU2_U0_add_G_use_fabric_adder_Madd_c_xor_9_Q : XORCY
    port map (
      CI => BU2_U0_add_G_use_fabric_adder_Madd_c_cy(8),
      LI => BU2_U0_add_G_use_fabric_adder_Madd_c_xor_9_rt_168,
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
      Q => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_24_166
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
      Q => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_23_164
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
      Q => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_22_162
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
      Q => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_21_160
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
      Q => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_20_158
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
      Q => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_19_156
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
      Q => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_18_154
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
      Q => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_17_152
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
      Q => BU2_U0_sp3_v2_v2p_round_aCr_use_fabric_adder_reg_shift_register_1_16_150
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
      Q => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_24_148
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
      Q => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_23_146
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
      Q => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_22_144
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
      Q => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_21_142
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
      Q => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_20_140
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
      Q => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_19_138
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
      Q => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_18_136
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
      Q => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_17_134
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
      Q => BU2_U0_sp3_v2_v2p_round_bCr_use_fabric_adder_reg_shift_register_1_16_132
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
      Q => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_24_130
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
      Q => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_23_128
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
      Q => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_22_126
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
      Q => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_21_124
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
      Q => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_20_122
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
      Q => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_19_120
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
      Q => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_18_118
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
      Q => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_17_116
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
      Q => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_16_114
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
      Q => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_15_112
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
      Q => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_14_110
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
      Q => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_13_108
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
      Q => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_12_106
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
      Q => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_11_104
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
      Q => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_10_102
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
      Q => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_9_100
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
      Q => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_8_98
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
      Q => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_7_96
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_8_93,
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_6_94
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_7_91,
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_5_92
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_6_89,
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_4_90
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_5_87,
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_3_88
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_4_85,
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_2_86
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_3_83,
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_1_84
    );
  BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => ce,
      D => BU2_U0_sp3_v2_v2p_mult_cCb_reg_shift_register_2_2_81,
      R => sclr,
      Q => BU2_U0_sp3_v2_v2p_round_cCb_use_fabric_adder_reg_shift_register_1_0_82
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
      Q => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_24_80
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
      Q => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_23_78
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
      Q => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_22_76
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
      Q => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_21_74
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
      Q => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_20_72
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
      Q => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_19_70
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
      Q => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_18_68
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
      Q => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_17_66
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
      Q => BU2_U0_sp3_v2_v2p_round_dCb_use_fabric_adder_reg_shift_register_1_16_64
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
