-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Sun Feb 13 18:27:51 2022
-- Host        : LAPTOP-DOA running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/MyDocument/LearningIC/FPGA/Pose_Detection_With_Kalman_Filter/Pose_Detection_With_Kalman_Filter.srcs/sources_1/ip/keyboard_0/keyboard_0_stub.vhdl
-- Design      : keyboard_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a75tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity keyboard_0 is
  Port ( 
    clk_in : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    col_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    row_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    key_id_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    key_data_vld_out : out STD_LOGIC
  );

end keyboard_0;

architecture stub of keyboard_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_in,rst_n,col_in[3:0],row_out[3:0],key_id_out[3:0],key_data_vld_out";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "keyboard_top,Vivado 2018.3";
begin
end;
