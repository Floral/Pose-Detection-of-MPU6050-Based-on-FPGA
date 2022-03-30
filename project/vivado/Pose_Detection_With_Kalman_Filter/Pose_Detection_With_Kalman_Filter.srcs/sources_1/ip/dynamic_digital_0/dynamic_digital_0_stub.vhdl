-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Sun Feb 13 18:27:30 2022
-- Host        : LAPTOP-DOA running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/MyDocument/LearningIC/FPGA/Pose_Detection_With_Kalman_Filter/Pose_Detection_With_Kalman_Filter.srcs/sources_1/ip/dynamic_digital_0/dynamic_digital_0_stub.vhdl
-- Design      : dynamic_digital_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a75tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dynamic_digital_0 is
  Port ( 
    clk_in : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 23 downto 0 );
    seg_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dig_out : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );

end dynamic_digital_0;

architecture stub of dynamic_digital_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_in,rst_n,data_in[23:0],seg_out[7:0],dig_out[5:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "dynamic_digital,Vivado 2018.3";
begin
end;
