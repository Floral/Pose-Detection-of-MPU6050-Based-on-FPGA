-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Thu Feb 24 22:18:15 2022
-- Host        : DESKTOP-DOA running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top div_gen -prefix
--               div_gen_ div_gen_0_stub.vhdl
-- Design      : div_gen_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a75tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity div_gen is
  Port ( 
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_divisor_tvalid : in STD_LOGIC;
    s_axis_divisor_tready : out STD_LOGIC;
    s_axis_divisor_tdata : in STD_LOGIC_VECTOR ( 39 downto 0 );
    s_axis_dividend_tvalid : in STD_LOGIC;
    s_axis_dividend_tready : out STD_LOGIC;
    s_axis_dividend_tdata : in STD_LOGIC_VECTOR ( 39 downto 0 );
    m_axis_dout_tvalid : out STD_LOGIC;
    m_axis_dout_tdata : out STD_LOGIC_VECTOR ( 55 downto 0 )
  );

end div_gen;

architecture stub of div_gen is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,s_axis_divisor_tvalid,s_axis_divisor_tready,s_axis_divisor_tdata[39:0],s_axis_dividend_tvalid,s_axis_dividend_tready,s_axis_dividend_tdata[39:0],m_axis_dout_tvalid,m_axis_dout_tdata[55:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "div_gen_v5_1_18,Vivado 2021.2";
begin
end;
