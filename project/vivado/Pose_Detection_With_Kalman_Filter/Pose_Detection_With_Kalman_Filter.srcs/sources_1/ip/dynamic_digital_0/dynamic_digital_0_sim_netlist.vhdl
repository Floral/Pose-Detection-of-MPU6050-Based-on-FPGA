-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Sun Feb 13 18:27:30 2022
-- Host        : LAPTOP-DOA running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/MyDocument/LearningIC/FPGA/Pose_Detection_With_Kalman_Filter/Pose_Detection_With_Kalman_Filter.srcs/sources_1/ip/dynamic_digital_0/dynamic_digital_0_sim_netlist.vhdl
-- Design      : dynamic_digital_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a75tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dynamic_digital_0_dynamic_digital is
  port (
    dig_out : out STD_LOGIC_VECTOR ( 5 downto 0 );
    seg_out : out STD_LOGIC_VECTOR ( 6 downto 0 );
    rst_n : in STD_LOGIC;
    clk_in : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of dynamic_digital_0_dynamic_digital : entity is "dynamic_digital";
end dynamic_digital_0_dynamic_digital;

architecture STRUCTURE of dynamic_digital_0_dynamic_digital is
  signal \cnt0[0]_i_2_n_0\ : STD_LOGIC;
  signal \cnt0[0]_i_3_n_0\ : STD_LOGIC;
  signal \cnt0[0]_i_4_n_0\ : STD_LOGIC;
  signal \cnt0[0]_i_5_n_0\ : STD_LOGIC;
  signal \cnt0[0]_i_6_n_0\ : STD_LOGIC;
  signal \cnt0[12]_i_2_n_0\ : STD_LOGIC;
  signal \cnt0[12]_i_3_n_0\ : STD_LOGIC;
  signal \cnt0[12]_i_4_n_0\ : STD_LOGIC;
  signal \cnt0[12]_i_5_n_0\ : STD_LOGIC;
  signal \cnt0[4]_i_2_n_0\ : STD_LOGIC;
  signal \cnt0[4]_i_3_n_0\ : STD_LOGIC;
  signal \cnt0[4]_i_4_n_0\ : STD_LOGIC;
  signal \cnt0[4]_i_5_n_0\ : STD_LOGIC;
  signal \cnt0[8]_i_2_n_0\ : STD_LOGIC;
  signal \cnt0[8]_i_3_n_0\ : STD_LOGIC;
  signal \cnt0[8]_i_4_n_0\ : STD_LOGIC;
  signal \cnt0[8]_i_5_n_0\ : STD_LOGIC;
  signal cnt0_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \cnt0_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt0_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \cnt0_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \cnt0_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \cnt0_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \cnt0_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \cnt0_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \cnt0_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \cnt0_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \cnt0_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \cnt0_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \cnt0_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \cnt0_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \cnt0_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \cnt0_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \cnt0_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \cnt0_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \cnt0_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \cnt0_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \cnt0_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \cnt0_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \cnt0_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \cnt0_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \cnt0_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \cnt0_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \cnt0_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \cnt0_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \cnt0_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \cnt0_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \cnt0_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \cnt0_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal cnt1 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \cnt1[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt1[1]_i_1_n_0\ : STD_LOGIC;
  signal \cnt1[2]_i_1_n_0\ : STD_LOGIC;
  signal \cnt1[2]_i_2_n_0\ : STD_LOGIC;
  signal \cnt1[2]_i_4_n_0\ : STD_LOGIC;
  signal \cnt1[2]_i_5_n_0\ : STD_LOGIC;
  signal \cnt1[2]_i_6_n_0\ : STD_LOGIC;
  signal \cnt1[2]_i_7_n_0\ : STD_LOGIC;
  signal end_cnt0 : STD_LOGIC;
  signal \seg_out[6]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \seg_out[6]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \seg_out[6]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \seg_out[6]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \seg_out[6]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \seg_out[6]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cnt0_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt1[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt1[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \dig_out[0]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \dig_out[1]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \dig_out[2]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \dig_out[3]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \dig_out[4]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \dig_out[5]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \seg_out[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \seg_out[1]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \seg_out[3]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \seg_out[4]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \seg_out[5]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \seg_out[6]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \seg_out[6]_INST_0_i_6\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \seg_out[6]_INST_0_i_7\ : label is "soft_lutpair7";
begin
\cnt0[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt0_reg(0),
      I1 => end_cnt0,
      O => \cnt0[0]_i_2_n_0\
    );
\cnt0[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt0_reg(3),
      I1 => end_cnt0,
      O => \cnt0[0]_i_3_n_0\
    );
\cnt0[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt0_reg(2),
      I1 => end_cnt0,
      O => \cnt0[0]_i_4_n_0\
    );
\cnt0[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt0_reg(1),
      I1 => end_cnt0,
      O => \cnt0[0]_i_5_n_0\
    );
\cnt0[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt0_reg(0),
      I1 => end_cnt0,
      O => \cnt0[0]_i_6_n_0\
    );
\cnt0[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt0_reg(15),
      I1 => end_cnt0,
      O => \cnt0[12]_i_2_n_0\
    );
\cnt0[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt0_reg(14),
      I1 => end_cnt0,
      O => \cnt0[12]_i_3_n_0\
    );
\cnt0[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt0_reg(13),
      I1 => end_cnt0,
      O => \cnt0[12]_i_4_n_0\
    );
\cnt0[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt0_reg(12),
      I1 => end_cnt0,
      O => \cnt0[12]_i_5_n_0\
    );
\cnt0[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt0_reg(7),
      I1 => end_cnt0,
      O => \cnt0[4]_i_2_n_0\
    );
\cnt0[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt0_reg(6),
      I1 => end_cnt0,
      O => \cnt0[4]_i_3_n_0\
    );
\cnt0[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt0_reg(5),
      I1 => end_cnt0,
      O => \cnt0[4]_i_4_n_0\
    );
\cnt0[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt0_reg(4),
      I1 => end_cnt0,
      O => \cnt0[4]_i_5_n_0\
    );
\cnt0[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt0_reg(11),
      I1 => end_cnt0,
      O => \cnt0[8]_i_2_n_0\
    );
\cnt0[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt0_reg(10),
      I1 => end_cnt0,
      O => \cnt0[8]_i_3_n_0\
    );
\cnt0[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt0_reg(9),
      I1 => end_cnt0,
      O => \cnt0[8]_i_4_n_0\
    );
\cnt0[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt0_reg(8),
      I1 => end_cnt0,
      O => \cnt0[8]_i_5_n_0\
    );
\cnt0_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => \cnt1[2]_i_2_n_0\,
      D => \cnt0_reg[0]_i_1_n_7\,
      Q => cnt0_reg(0)
    );
\cnt0_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cnt0_reg[0]_i_1_n_0\,
      CO(2) => \cnt0_reg[0]_i_1_n_1\,
      CO(1) => \cnt0_reg[0]_i_1_n_2\,
      CO(0) => \cnt0_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \cnt0[0]_i_2_n_0\,
      O(3) => \cnt0_reg[0]_i_1_n_4\,
      O(2) => \cnt0_reg[0]_i_1_n_5\,
      O(1) => \cnt0_reg[0]_i_1_n_6\,
      O(0) => \cnt0_reg[0]_i_1_n_7\,
      S(3) => \cnt0[0]_i_3_n_0\,
      S(2) => \cnt0[0]_i_4_n_0\,
      S(1) => \cnt0[0]_i_5_n_0\,
      S(0) => \cnt0[0]_i_6_n_0\
    );
\cnt0_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => \cnt1[2]_i_2_n_0\,
      D => \cnt0_reg[8]_i_1_n_5\,
      Q => cnt0_reg(10)
    );
\cnt0_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => \cnt1[2]_i_2_n_0\,
      D => \cnt0_reg[8]_i_1_n_4\,
      Q => cnt0_reg(11)
    );
\cnt0_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => \cnt1[2]_i_2_n_0\,
      D => \cnt0_reg[12]_i_1_n_7\,
      Q => cnt0_reg(12)
    );
\cnt0_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt0_reg[8]_i_1_n_0\,
      CO(3) => \NLW_cnt0_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \cnt0_reg[12]_i_1_n_1\,
      CO(1) => \cnt0_reg[12]_i_1_n_2\,
      CO(0) => \cnt0_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt0_reg[12]_i_1_n_4\,
      O(2) => \cnt0_reg[12]_i_1_n_5\,
      O(1) => \cnt0_reg[12]_i_1_n_6\,
      O(0) => \cnt0_reg[12]_i_1_n_7\,
      S(3) => \cnt0[12]_i_2_n_0\,
      S(2) => \cnt0[12]_i_3_n_0\,
      S(1) => \cnt0[12]_i_4_n_0\,
      S(0) => \cnt0[12]_i_5_n_0\
    );
\cnt0_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => \cnt1[2]_i_2_n_0\,
      D => \cnt0_reg[12]_i_1_n_6\,
      Q => cnt0_reg(13)
    );
\cnt0_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => \cnt1[2]_i_2_n_0\,
      D => \cnt0_reg[12]_i_1_n_5\,
      Q => cnt0_reg(14)
    );
\cnt0_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => \cnt1[2]_i_2_n_0\,
      D => \cnt0_reg[12]_i_1_n_4\,
      Q => cnt0_reg(15)
    );
\cnt0_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => \cnt1[2]_i_2_n_0\,
      D => \cnt0_reg[0]_i_1_n_6\,
      Q => cnt0_reg(1)
    );
\cnt0_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => \cnt1[2]_i_2_n_0\,
      D => \cnt0_reg[0]_i_1_n_5\,
      Q => cnt0_reg(2)
    );
\cnt0_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => \cnt1[2]_i_2_n_0\,
      D => \cnt0_reg[0]_i_1_n_4\,
      Q => cnt0_reg(3)
    );
\cnt0_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => \cnt1[2]_i_2_n_0\,
      D => \cnt0_reg[4]_i_1_n_7\,
      Q => cnt0_reg(4)
    );
\cnt0_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt0_reg[0]_i_1_n_0\,
      CO(3) => \cnt0_reg[4]_i_1_n_0\,
      CO(2) => \cnt0_reg[4]_i_1_n_1\,
      CO(1) => \cnt0_reg[4]_i_1_n_2\,
      CO(0) => \cnt0_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt0_reg[4]_i_1_n_4\,
      O(2) => \cnt0_reg[4]_i_1_n_5\,
      O(1) => \cnt0_reg[4]_i_1_n_6\,
      O(0) => \cnt0_reg[4]_i_1_n_7\,
      S(3) => \cnt0[4]_i_2_n_0\,
      S(2) => \cnt0[4]_i_3_n_0\,
      S(1) => \cnt0[4]_i_4_n_0\,
      S(0) => \cnt0[4]_i_5_n_0\
    );
\cnt0_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => \cnt1[2]_i_2_n_0\,
      D => \cnt0_reg[4]_i_1_n_6\,
      Q => cnt0_reg(5)
    );
\cnt0_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => \cnt1[2]_i_2_n_0\,
      D => \cnt0_reg[4]_i_1_n_5\,
      Q => cnt0_reg(6)
    );
\cnt0_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => \cnt1[2]_i_2_n_0\,
      D => \cnt0_reg[4]_i_1_n_4\,
      Q => cnt0_reg(7)
    );
\cnt0_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => \cnt1[2]_i_2_n_0\,
      D => \cnt0_reg[8]_i_1_n_7\,
      Q => cnt0_reg(8)
    );
\cnt0_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt0_reg[4]_i_1_n_0\,
      CO(3) => \cnt0_reg[8]_i_1_n_0\,
      CO(2) => \cnt0_reg[8]_i_1_n_1\,
      CO(1) => \cnt0_reg[8]_i_1_n_2\,
      CO(0) => \cnt0_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt0_reg[8]_i_1_n_4\,
      O(2) => \cnt0_reg[8]_i_1_n_5\,
      O(1) => \cnt0_reg[8]_i_1_n_6\,
      O(0) => \cnt0_reg[8]_i_1_n_7\,
      S(3) => \cnt0[8]_i_2_n_0\,
      S(2) => \cnt0[8]_i_3_n_0\,
      S(1) => \cnt0[8]_i_4_n_0\,
      S(0) => \cnt0[8]_i_5_n_0\
    );
\cnt0_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => \cnt1[2]_i_2_n_0\,
      D => \cnt0_reg[8]_i_1_n_6\,
      Q => cnt0_reg(9)
    );
\cnt1[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => end_cnt0,
      I1 => cnt1(0),
      O => \cnt1[0]_i_1_n_0\
    );
\cnt1[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5F20"
    )
        port map (
      I0 => cnt1(0),
      I1 => cnt1(2),
      I2 => end_cnt0,
      I3 => cnt1(1),
      O => \cnt1[1]_i_1_n_0\
    );
\cnt1[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3F80"
    )
        port map (
      I0 => cnt1(1),
      I1 => cnt1(0),
      I2 => end_cnt0,
      I3 => cnt1(2),
      O => \cnt1[2]_i_1_n_0\
    );
\cnt1[2]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => \cnt1[2]_i_2_n_0\
    );
\cnt1[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \cnt1[2]_i_4_n_0\,
      I1 => \cnt1[2]_i_5_n_0\,
      I2 => \cnt1[2]_i_6_n_0\,
      I3 => \cnt1[2]_i_7_n_0\,
      O => end_cnt0
    );
\cnt1[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => cnt0_reg(7),
      I1 => cnt0_reg(6),
      I2 => cnt0_reg(5),
      I3 => cnt0_reg(4),
      O => \cnt1[2]_i_4_n_0\
    );
\cnt1[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => cnt0_reg(1),
      I1 => cnt0_reg(0),
      I2 => cnt0_reg(3),
      I3 => cnt0_reg(2),
      O => \cnt1[2]_i_5_n_0\
    );
\cnt1[2]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => cnt0_reg(11),
      I1 => cnt0_reg(10),
      I2 => cnt0_reg(9),
      I3 => cnt0_reg(8),
      O => \cnt1[2]_i_6_n_0\
    );
\cnt1[2]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => cnt0_reg(15),
      I1 => cnt0_reg(14),
      I2 => cnt0_reg(13),
      I3 => cnt0_reg(12),
      O => \cnt1[2]_i_7_n_0\
    );
\cnt1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => \cnt1[2]_i_2_n_0\,
      D => \cnt1[0]_i_1_n_0\,
      Q => cnt1(0)
    );
\cnt1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => \cnt1[2]_i_2_n_0\,
      D => \cnt1[1]_i_1_n_0\,
      Q => cnt1(1)
    );
\cnt1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => \cnt1[2]_i_2_n_0\,
      D => \cnt1[2]_i_1_n_0\,
      Q => cnt1(2)
    );
\dig_out[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => cnt1(1),
      I1 => cnt1(0),
      I2 => cnt1(2),
      O => dig_out(0)
    );
\dig_out[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => cnt1(0),
      I1 => cnt1(1),
      I2 => cnt1(2),
      O => dig_out(1)
    );
\dig_out[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => cnt1(1),
      I1 => cnt1(0),
      I2 => cnt1(2),
      O => dig_out(2)
    );
\dig_out[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => cnt1(1),
      I1 => cnt1(0),
      I2 => cnt1(2),
      O => dig_out(3)
    );
\dig_out[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => cnt1(1),
      I1 => cnt1(0),
      I2 => cnt1(2),
      O => dig_out(4)
    );
\dig_out[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => cnt1(0),
      I1 => cnt1(1),
      I2 => cnt1(2),
      O => dig_out(5)
    );
\seg_out[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9FED"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(1),
      I2 => sel0(0),
      I3 => sel0(3),
      O => seg_out(0)
    );
\seg_out[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"479F"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(0),
      I2 => sel0(2),
      I3 => sel0(1),
      O => seg_out(1)
    );
\seg_out[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"75FB"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(1),
      I2 => sel0(0),
      I3 => sel0(3),
      O => seg_out(2)
    );
\seg_out[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3EDB"
    )
        port map (
      I0 => sel0(3),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => sel0(0),
      O => seg_out(3)
    );
\seg_out[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD45"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => sel0(3),
      O => seg_out(4)
    );
\seg_out[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C6EF"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(3),
      I2 => sel0(1),
      I3 => sel0(0),
      O => seg_out(5)
    );
\seg_out[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD6E"
    )
        port map (
      I0 => sel0(2),
      I1 => sel0(1),
      I2 => sel0(0),
      I3 => sel0(3),
      O => seg_out(6)
    );
\seg_out[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data_in(22),
      I1 => \seg_out[6]_INST_0_i_5_n_0\,
      I2 => \seg_out[6]_INST_0_i_6_n_0\,
      I3 => \seg_out[6]_INST_0_i_7_n_0\,
      I4 => data_in(18),
      I5 => data_in(2),
      O => sel0(2)
    );
\seg_out[6]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAFFF0CCAA00F0"
    )
        port map (
      I0 => data_in(7),
      I1 => data_in(15),
      I2 => data_in(3),
      I3 => cnt1(1),
      I4 => cnt1(0),
      I5 => data_in(11),
      O => \seg_out[6]_INST_0_i_10_n_0\
    );
\seg_out[6]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data_in(21),
      I1 => \seg_out[6]_INST_0_i_8_n_0\,
      I2 => \seg_out[6]_INST_0_i_6_n_0\,
      I3 => \seg_out[6]_INST_0_i_7_n_0\,
      I4 => data_in(17),
      I5 => data_in(1),
      O => sel0(1)
    );
\seg_out[6]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data_in(20),
      I1 => \seg_out[6]_INST_0_i_9_n_0\,
      I2 => \seg_out[6]_INST_0_i_6_n_0\,
      I3 => \seg_out[6]_INST_0_i_7_n_0\,
      I4 => data_in(16),
      I5 => data_in(0),
      O => sel0(0)
    );
\seg_out[6]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data_in(23),
      I1 => \seg_out[6]_INST_0_i_10_n_0\,
      I2 => \seg_out[6]_INST_0_i_6_n_0\,
      I3 => \seg_out[6]_INST_0_i_7_n_0\,
      I4 => data_in(19),
      I5 => data_in(3),
      O => sel0(3)
    );
\seg_out[6]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAFFF0CCAA00F0"
    )
        port map (
      I0 => data_in(6),
      I1 => data_in(14),
      I2 => data_in(2),
      I3 => cnt1(1),
      I4 => cnt1(0),
      I5 => data_in(10),
      O => \seg_out[6]_INST_0_i_5_n_0\
    );
\seg_out[6]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2F"
    )
        port map (
      I0 => cnt1(0),
      I1 => cnt1(1),
      I2 => cnt1(2),
      O => \seg_out[6]_INST_0_i_6_n_0\
    );
\seg_out[6]_INST_0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => cnt1(1),
      I1 => cnt1(2),
      O => \seg_out[6]_INST_0_i_7_n_0\
    );
\seg_out[6]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAFFF0CCAA00F0"
    )
        port map (
      I0 => data_in(5),
      I1 => data_in(13),
      I2 => data_in(1),
      I3 => cnt1(1),
      I4 => cnt1(0),
      I5 => data_in(9),
      O => \seg_out[6]_INST_0_i_8_n_0\
    );
\seg_out[6]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAAFFF0CCAA00F0"
    )
        port map (
      I0 => data_in(4),
      I1 => data_in(12),
      I2 => data_in(0),
      I3 => cnt1(1),
      I4 => cnt1(0),
      I5 => data_in(8),
      O => \seg_out[6]_INST_0_i_9_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity dynamic_digital_0 is
  port (
    clk_in : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 23 downto 0 );
    seg_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dig_out : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of dynamic_digital_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of dynamic_digital_0 : entity is "dynamic_digital_0,dynamic_digital,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of dynamic_digital_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of dynamic_digital_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of dynamic_digital_0 : entity is "dynamic_digital,Vivado 2018.3";
end dynamic_digital_0;

architecture STRUCTURE of dynamic_digital_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^seg_out\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  seg_out(7) <= \<const0>\;
  seg_out(6 downto 0) <= \^seg_out\(6 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.dynamic_digital_0_dynamic_digital
     port map (
      clk_in => clk_in,
      data_in(23 downto 0) => data_in(23 downto 0),
      dig_out(5 downto 0) => dig_out(5 downto 0),
      rst_n => rst_n,
      seg_out(6 downto 0) => \^seg_out\(6 downto 0)
    );
end STRUCTURE;
