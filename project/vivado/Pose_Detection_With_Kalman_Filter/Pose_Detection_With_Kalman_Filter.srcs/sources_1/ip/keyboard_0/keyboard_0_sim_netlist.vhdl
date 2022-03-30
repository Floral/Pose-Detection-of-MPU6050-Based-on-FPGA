-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Sun Feb 13 18:27:51 2022
-- Host        : LAPTOP-DOA running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/MyDocument/LearningIC/FPGA/Pose_Detection_With_Kalman_Filter/Pose_Detection_With_Kalman_Filter.srcs/sources_1/ip/keyboard_0/keyboard_0_sim_netlist.vhdl
-- Design      : keyboard_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a75tfgg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity keyboard_0_clk_div is
  port (
    clk_ms : out STD_LOGIC;
    rst_n_0 : out STD_LOGIC;
    CLK : out STD_LOGIC;
    clk_in : in STD_LOGIC;
    rst_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of keyboard_0_clk_div : entity is "clk_div";
end keyboard_0_clk_div;

architecture STRUCTURE of keyboard_0_clk_div is
  signal \^clk\ : STD_LOGIC;
  signal clk_20ms_i_1_n_0 : STD_LOGIC;
  signal \^clk_ms\ : STD_LOGIC;
  signal clk_ms_i_3_n_0 : STD_LOGIC;
  signal clk_ms_i_4_n_0 : STD_LOGIC;
  signal clk_ms_i_5_n_0 : STD_LOGIC;
  signal \cnt0[0]_i_2_n_0\ : STD_LOGIC;
  signal \cnt0[0]_i_3_n_0\ : STD_LOGIC;
  signal \cnt0[0]_i_4_n_0\ : STD_LOGIC;
  signal \cnt0[0]_i_5_n_0\ : STD_LOGIC;
  signal \cnt0[0]_i_6_n_0\ : STD_LOGIC;
  signal \cnt0[12]_i_2_n_0\ : STD_LOGIC;
  signal \cnt0[12]_i_3_n_0\ : STD_LOGIC;
  signal \cnt0[4]_i_2_n_0\ : STD_LOGIC;
  signal \cnt0[4]_i_3_n_0\ : STD_LOGIC;
  signal \cnt0[8]_i_2_n_0\ : STD_LOGIC;
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
  signal \cnt1[3]_i_3_n_0\ : STD_LOGIC;
  signal \cnt1[3]_i_4_n_0\ : STD_LOGIC;
  signal \cnt1_reg__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal end_cnt0 : STD_LOGIC;
  signal end_cnt1 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^rst_n_0\ : STD_LOGIC;
  signal \NLW_cnt0_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of clk_ms_i_4 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt1[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt1[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt1[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt1[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt1[3]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt1[3]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt1[4]_i_1\ : label is "soft_lutpair0";
begin
  CLK <= \^clk\;
  clk_ms <= \^clk_ms\;
  rst_n_0 <= \^rst_n_0\;
clk_20ms_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => end_cnt1,
      I1 => \^clk\,
      O => clk_20ms_i_1_n_0
    );
clk_20ms_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => \^rst_n_0\,
      D => clk_20ms_i_1_n_0,
      Q => \^clk\
    );
clk_ms_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000040000000"
    )
        port map (
      I0 => clk_ms_i_3_n_0,
      I1 => cnt0_reg(7),
      I2 => cnt0_reg(14),
      I3 => cnt0_reg(8),
      I4 => cnt0_reg(13),
      I5 => clk_ms_i_4_n_0,
      O => end_cnt0
    );
clk_ms_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^clk_ms\,
      O => p_0_in
    );
clk_ms_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => cnt0_reg(0),
      I1 => cnt0_reg(5),
      I2 => cnt0_reg(1),
      I3 => cnt0_reg(2),
      O => clk_ms_i_3_n_0
    );
clk_ms_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => cnt0_reg(6),
      I1 => cnt0_reg(4),
      I2 => cnt0_reg(9),
      I3 => cnt0_reg(3),
      I4 => clk_ms_i_5_n_0,
      O => clk_ms_i_4_n_0
    );
clk_ms_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cnt0_reg(11),
      I1 => cnt0_reg(12),
      I2 => cnt0_reg(15),
      I3 => cnt0_reg(10),
      O => clk_ms_i_5_n_0
    );
clk_ms_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => end_cnt0,
      CLR => \^rst_n_0\,
      D => p_0_in,
      Q => \^clk_ms\
    );
\cnt0[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF00000000"
    )
        port map (
      I0 => clk_ms_i_4_n_0,
      I1 => \cnt0[0]_i_6_n_0\,
      I2 => cnt0_reg(2),
      I3 => cnt0_reg(1),
      I4 => cnt0_reg(5),
      I5 => cnt0_reg(0),
      O => \cnt0[0]_i_2_n_0\
    );
\cnt0[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B0F0F0F0F0F0F0F0"
    )
        port map (
      I0 => clk_ms_i_4_n_0,
      I1 => \cnt0[0]_i_6_n_0\,
      I2 => cnt0_reg(2),
      I3 => cnt0_reg(1),
      I4 => cnt0_reg(5),
      I5 => cnt0_reg(0),
      O => \cnt0[0]_i_3_n_0\
    );
\cnt0[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BF00FF00FF00FF00"
    )
        port map (
      I0 => clk_ms_i_4_n_0,
      I1 => \cnt0[0]_i_6_n_0\,
      I2 => cnt0_reg(2),
      I3 => cnt0_reg(1),
      I4 => cnt0_reg(5),
      I5 => cnt0_reg(0),
      O => \cnt0[0]_i_4_n_0\
    );
\cnt0[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt0_reg(0),
      O => \cnt0[0]_i_5_n_0\
    );
\cnt0[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => cnt0_reg(7),
      I1 => cnt0_reg(14),
      I2 => cnt0_reg(8),
      I3 => cnt0_reg(13),
      O => \cnt0[0]_i_6_n_0\
    );
\cnt0[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF00BF00FF00"
    )
        port map (
      I0 => clk_ms_i_4_n_0,
      I1 => cnt0_reg(13),
      I2 => cnt0_reg(8),
      I3 => cnt0_reg(14),
      I4 => cnt0_reg(7),
      I5 => clk_ms_i_3_n_0,
      O => \cnt0[12]_i_2_n_0\
    );
\cnt0[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCC8CCCCCCC"
    )
        port map (
      I0 => clk_ms_i_4_n_0,
      I1 => cnt0_reg(13),
      I2 => cnt0_reg(8),
      I3 => cnt0_reg(14),
      I4 => cnt0_reg(7),
      I5 => clk_ms_i_3_n_0,
      O => \cnt0[12]_i_3_n_0\
    );
\cnt0[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000BFFF0000"
    )
        port map (
      I0 => clk_ms_i_4_n_0,
      I1 => cnt0_reg(13),
      I2 => cnt0_reg(8),
      I3 => cnt0_reg(14),
      I4 => cnt0_reg(7),
      I5 => clk_ms_i_3_n_0,
      O => \cnt0[4]_i_2_n_0\
    );
\cnt0[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFF0000FFFF0000"
    )
        port map (
      I0 => clk_ms_i_4_n_0,
      I1 => \cnt0[0]_i_6_n_0\,
      I2 => cnt0_reg(2),
      I3 => cnt0_reg(1),
      I4 => cnt0_reg(5),
      I5 => cnt0_reg(0),
      O => \cnt0[4]_i_3_n_0\
    );
\cnt0[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0B0F0F0F0"
    )
        port map (
      I0 => clk_ms_i_4_n_0,
      I1 => cnt0_reg(13),
      I2 => cnt0_reg(8),
      I3 => cnt0_reg(14),
      I4 => cnt0_reg(7),
      I5 => clk_ms_i_3_n_0,
      O => \cnt0[8]_i_2_n_0\
    );
\cnt0_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => \^rst_n_0\,
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
      S(3) => cnt0_reg(3),
      S(2) => \cnt0[0]_i_3_n_0\,
      S(1) => \cnt0[0]_i_4_n_0\,
      S(0) => \cnt0[0]_i_5_n_0\
    );
\cnt0_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \cnt0_reg[8]_i_1_n_5\,
      Q => cnt0_reg(10)
    );
\cnt0_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \cnt0_reg[8]_i_1_n_4\,
      Q => cnt0_reg(11)
    );
\cnt0_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => \^rst_n_0\,
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
      S(3) => cnt0_reg(15),
      S(2) => \cnt0[12]_i_2_n_0\,
      S(1) => \cnt0[12]_i_3_n_0\,
      S(0) => cnt0_reg(12)
    );
\cnt0_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \cnt0_reg[12]_i_1_n_6\,
      Q => cnt0_reg(13)
    );
\cnt0_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \cnt0_reg[12]_i_1_n_5\,
      Q => cnt0_reg(14)
    );
\cnt0_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \cnt0_reg[12]_i_1_n_4\,
      Q => cnt0_reg(15)
    );
\cnt0_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \cnt0_reg[0]_i_1_n_6\,
      Q => cnt0_reg(1)
    );
\cnt0_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \cnt0_reg[0]_i_1_n_5\,
      Q => cnt0_reg(2)
    );
\cnt0_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \cnt0_reg[0]_i_1_n_4\,
      Q => cnt0_reg(3)
    );
\cnt0_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => \^rst_n_0\,
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
      S(2) => cnt0_reg(6),
      S(1) => \cnt0[4]_i_3_n_0\,
      S(0) => cnt0_reg(4)
    );
\cnt0_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \cnt0_reg[4]_i_1_n_6\,
      Q => cnt0_reg(5)
    );
\cnt0_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \cnt0_reg[4]_i_1_n_5\,
      Q => cnt0_reg(6)
    );
\cnt0_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \cnt0_reg[4]_i_1_n_4\,
      Q => cnt0_reg(7)
    );
\cnt0_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => \^rst_n_0\,
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
      S(3 downto 1) => cnt0_reg(11 downto 9),
      S(0) => \cnt0[8]_i_2_n_0\
    );
\cnt0_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => \^rst_n_0\,
      D => \cnt0_reg[8]_i_1_n_6\,
      Q => cnt0_reg(9)
    );
\cnt1[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt1_reg__0\(0),
      O => \p_0_in__0\(0)
    );
\cnt1[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \cnt1_reg__0\(1),
      I1 => \cnt1_reg__0\(0),
      I2 => end_cnt1,
      O => \p_0_in__0\(1)
    );
\cnt1[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \cnt1_reg__0\(2),
      I1 => \cnt1_reg__0\(1),
      I2 => \cnt1_reg__0\(0),
      O => \p_0_in__0\(2)
    );
\cnt1[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F80"
    )
        port map (
      I0 => \cnt1_reg__0\(2),
      I1 => \cnt1_reg__0\(1),
      I2 => \cnt1_reg__0\(0),
      I3 => \cnt1_reg__0\(3),
      I4 => end_cnt1,
      O => \p_0_in__0\(3)
    );
\cnt1[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \cnt1[3]_i_3_n_0\,
      I1 => clk_ms_i_5_n_0,
      I2 => \cnt0[0]_i_6_n_0\,
      I3 => clk_ms_i_3_n_0,
      I4 => \cnt1[3]_i_4_n_0\,
      O => end_cnt1
    );
\cnt1[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cnt0_reg(3),
      I1 => cnt0_reg(9),
      I2 => cnt0_reg(4),
      I3 => cnt0_reg(6),
      O => \cnt1[3]_i_3_n_0\
    );
\cnt1[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFDFF"
    )
        port map (
      I0 => \cnt1_reg__0\(0),
      I1 => \cnt1_reg__0\(4),
      I2 => \cnt1_reg__0\(2),
      I3 => \cnt1_reg__0\(3),
      I4 => \cnt1_reg__0\(1),
      O => \cnt1[3]_i_4_n_0\
    );
\cnt1[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \cnt1_reg__0\(4),
      I1 => \cnt1_reg__0\(2),
      I2 => \cnt1_reg__0\(1),
      I3 => \cnt1_reg__0\(0),
      I4 => \cnt1_reg__0\(3),
      O => \p_0_in__0\(4)
    );
\cnt1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => end_cnt0,
      CLR => \^rst_n_0\,
      D => \p_0_in__0\(0),
      Q => \cnt1_reg__0\(0)
    );
\cnt1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => end_cnt0,
      CLR => \^rst_n_0\,
      D => \p_0_in__0\(1),
      Q => \cnt1_reg__0\(1)
    );
\cnt1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => end_cnt0,
      CLR => \^rst_n_0\,
      D => \p_0_in__0\(2),
      Q => \cnt1_reg__0\(2)
    );
\cnt1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => end_cnt0,
      CLR => \^rst_n_0\,
      D => \p_0_in__0\(3),
      Q => \cnt1_reg__0\(3)
    );
\cnt1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => end_cnt0,
      CLR => \^rst_n_0\,
      D => \p_0_in__0\(4),
      Q => \cnt1_reg__0\(4)
    );
\row[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => \^rst_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity keyboard_0_debounce is
  port (
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \key_current_reg[15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    key_data_vld_out : out STD_LOGIC;
    \key_current_reg[15]_1\ : in STD_LOGIC_VECTOR ( 15 downto 0 );
    CLK : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of keyboard_0_debounce : entity is "debounce";
end keyboard_0_debounce;

architecture STRUCTURE of keyboard_0_debounce is
  signal key_buffer0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal key_current : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^key_current_reg[15]_0\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal key_data_vld_out_INST_0_i_1_n_0 : STD_LOGIC;
  signal key_data_vld_out_INST_0_i_2_n_0 : STD_LOGIC;
  signal key_data_vld_out_INST_0_i_3_n_0 : STD_LOGIC;
  signal key_data_vld_out_INST_0_i_4_n_0 : STD_LOGIC;
  signal key_data_vld_out_INST_0_i_5_n_0 : STD_LOGIC;
  signal key_data_vld_out_INST_0_i_6_n_0 : STD_LOGIC;
  signal key_data_vld_out_INST_0_i_7_n_0 : STD_LOGIC;
  signal key_data_vld_out_INST_0_i_8_n_0 : STD_LOGIC;
  signal \key_id[0]_i_2_n_0\ : STD_LOGIC;
  signal \key_id[0]_i_3_n_0\ : STD_LOGIC;
  signal \key_id[0]_i_4_n_0\ : STD_LOGIC;
  signal \key_id[0]_i_5_n_0\ : STD_LOGIC;
  signal \key_id[0]_i_6_n_0\ : STD_LOGIC;
  signal \key_id[1]_i_2_n_0\ : STD_LOGIC;
  signal \key_id[1]_i_3_n_0\ : STD_LOGIC;
  signal \key_id[1]_i_4_n_0\ : STD_LOGIC;
  signal \key_id[2]_i_2_n_0\ : STD_LOGIC;
  signal \key_id[2]_i_3_n_0\ : STD_LOGIC;
  signal \key_id[2]_i_4_n_0\ : STD_LOGIC;
  signal \key_id[2]_i_5_n_0\ : STD_LOGIC;
  signal \key_id[3]_i_3_n_0\ : STD_LOGIC;
  signal \key_id[3]_i_4_n_0\ : STD_LOGIC;
  signal \key_id[3]_i_5_n_0\ : STD_LOGIC;
  signal \key_id[3]_i_6_n_0\ : STD_LOGIC;
  signal \key_id[3]_i_7_n_0\ : STD_LOGIC;
  signal \key_id[3]_i_8_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \key_data_ff[11]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \key_data_ff[13]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \key_data_ff[14]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \key_data_ff[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \key_data_ff[4]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \key_data_ff[5]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \key_data_ff[6]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \key_id[0]_i_4\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \key_id[1]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \key_id[1]_i_4\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \key_id[2]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \key_id[2]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \key_id[2]_i_4\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \key_id[2]_i_5\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \key_id[3]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \key_id[3]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \key_id[3]_i_5\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \key_id[3]_i_6\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \key_id[3]_i_7\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \key_id[3]_i_8\ : label is "soft_lutpair6";
begin
  \key_current_reg[15]_0\(15 downto 0) <= \^key_current_reg[15]_0\(15 downto 0);
\key_buffer0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => key_current(0),
      Q => key_buffer0(0),
      R => '0'
    );
\key_buffer0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => key_current(10),
      Q => key_buffer0(10),
      R => '0'
    );
\key_buffer0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => key_current(11),
      Q => key_buffer0(11),
      R => '0'
    );
\key_buffer0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => key_current(12),
      Q => key_buffer0(12),
      R => '0'
    );
\key_buffer0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => key_current(13),
      Q => key_buffer0(13),
      R => '0'
    );
\key_buffer0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => key_current(14),
      Q => key_buffer0(14),
      R => '0'
    );
\key_buffer0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => key_current(15),
      Q => key_buffer0(15),
      R => '0'
    );
\key_buffer0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => key_current(1),
      Q => key_buffer0(1),
      R => '0'
    );
\key_buffer0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => key_current(2),
      Q => key_buffer0(2),
      R => '0'
    );
\key_buffer0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => key_current(3),
      Q => key_buffer0(3),
      R => '0'
    );
\key_buffer0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => key_current(4),
      Q => key_buffer0(4),
      R => '0'
    );
\key_buffer0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => key_current(5),
      Q => key_buffer0(5),
      R => '0'
    );
\key_buffer0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => key_current(6),
      Q => key_buffer0(6),
      R => '0'
    );
\key_buffer0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => key_current(7),
      Q => key_buffer0(7),
      R => '0'
    );
\key_buffer0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => key_current(8),
      Q => key_buffer0(8),
      R => '0'
    );
\key_buffer0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => key_current(9),
      Q => key_buffer0(9),
      R => '0'
    );
\key_current_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \key_current_reg[15]_1\(0),
      Q => key_current(0),
      R => '0'
    );
\key_current_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \key_current_reg[15]_1\(10),
      Q => key_current(10),
      R => '0'
    );
\key_current_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \key_current_reg[15]_1\(11),
      Q => key_current(11),
      R => '0'
    );
\key_current_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \key_current_reg[15]_1\(12),
      Q => key_current(12),
      R => '0'
    );
\key_current_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \key_current_reg[15]_1\(13),
      Q => key_current(13),
      R => '0'
    );
\key_current_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \key_current_reg[15]_1\(14),
      Q => key_current(14),
      R => '0'
    );
\key_current_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \key_current_reg[15]_1\(15),
      Q => key_current(15),
      R => '0'
    );
\key_current_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \key_current_reg[15]_1\(1),
      Q => key_current(1),
      R => '0'
    );
\key_current_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \key_current_reg[15]_1\(2),
      Q => key_current(2),
      R => '0'
    );
\key_current_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \key_current_reg[15]_1\(3),
      Q => key_current(3),
      R => '0'
    );
\key_current_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \key_current_reg[15]_1\(4),
      Q => key_current(4),
      R => '0'
    );
\key_current_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \key_current_reg[15]_1\(5),
      Q => key_current(5),
      R => '0'
    );
\key_current_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \key_current_reg[15]_1\(6),
      Q => key_current(6),
      R => '0'
    );
\key_current_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \key_current_reg[15]_1\(7),
      Q => key_current(7),
      R => '0'
    );
\key_current_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \key_current_reg[15]_1\(8),
      Q => key_current(8),
      R => '0'
    );
\key_current_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => CLK,
      CE => '1',
      D => \key_current_reg[15]_1\(9),
      Q => key_current(9),
      R => '0'
    );
\key_data_ff[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => key_current(0),
      I1 => key_buffer0(0),
      O => \^key_current_reg[15]_0\(0)
    );
\key_data_ff[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => key_current(10),
      I1 => key_buffer0(10),
      O => \^key_current_reg[15]_0\(10)
    );
\key_data_ff[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => key_current(11),
      I1 => key_buffer0(11),
      O => \^key_current_reg[15]_0\(11)
    );
\key_data_ff[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => key_current(12),
      I1 => key_buffer0(12),
      O => \^key_current_reg[15]_0\(12)
    );
\key_data_ff[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => key_current(13),
      I1 => key_buffer0(13),
      O => \^key_current_reg[15]_0\(13)
    );
\key_data_ff[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => key_current(14),
      I1 => key_buffer0(14),
      O => \^key_current_reg[15]_0\(14)
    );
\key_data_ff[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => key_current(15),
      I1 => key_buffer0(15),
      O => \^key_current_reg[15]_0\(15)
    );
\key_data_ff[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => key_current(1),
      I1 => key_buffer0(1),
      O => \^key_current_reg[15]_0\(1)
    );
\key_data_ff[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => key_current(2),
      I1 => key_buffer0(2),
      O => \^key_current_reg[15]_0\(2)
    );
\key_data_ff[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => key_current(3),
      I1 => key_buffer0(3),
      O => \^key_current_reg[15]_0\(3)
    );
\key_data_ff[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => key_current(4),
      I1 => key_buffer0(4),
      O => \^key_current_reg[15]_0\(4)
    );
\key_data_ff[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => key_current(5),
      I1 => key_buffer0(5),
      O => \^key_current_reg[15]_0\(5)
    );
\key_data_ff[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => key_current(6),
      I1 => key_buffer0(6),
      O => \^key_current_reg[15]_0\(6)
    );
\key_data_ff[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => key_current(7),
      I1 => key_buffer0(7),
      O => \^key_current_reg[15]_0\(7)
    );
\key_data_ff[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => key_current(8),
      I1 => key_buffer0(8),
      O => \^key_current_reg[15]_0\(8)
    );
\key_data_ff[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => key_current(9),
      I1 => key_buffer0(9),
      O => \^key_current_reg[15]_0\(9)
    );
key_data_vld_out_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => key_data_vld_out_INST_0_i_1_n_0,
      I1 => key_data_vld_out_INST_0_i_2_n_0,
      I2 => key_data_vld_out_INST_0_i_3_n_0,
      I3 => key_data_vld_out_INST_0_i_4_n_0,
      I4 => key_data_vld_out_INST_0_i_5_n_0,
      I5 => key_data_vld_out_INST_0_i_6_n_0,
      O => key_data_vld_out
    );
key_data_vld_out_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBAFFBABA"
    )
        port map (
      I0 => key_data_vld_out_INST_0_i_7_n_0,
      I1 => \^key_current_reg[15]_0\(7),
      I2 => Q(7),
      I3 => \^key_current_reg[15]_0\(6),
      I4 => Q(6),
      I5 => key_data_vld_out_INST_0_i_8_n_0,
      O => key_data_vld_out_INST_0_i_1_n_0
    );
key_data_vld_out_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"101010FF10101010"
    )
        port map (
      I0 => key_current(8),
      I1 => key_buffer0(8),
      I2 => Q(8),
      I3 => key_current(10),
      I4 => key_buffer0(10),
      I5 => Q(10),
      O => key_data_vld_out_INST_0_i_2_n_0
    );
key_data_vld_out_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"101010FF10101010"
    )
        port map (
      I0 => key_current(11),
      I1 => key_buffer0(11),
      I2 => Q(11),
      I3 => key_current(9),
      I4 => key_buffer0(9),
      I5 => Q(9),
      O => key_data_vld_out_INST_0_i_3_n_0
    );
key_data_vld_out_INST_0_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"101010FF10101010"
    )
        port map (
      I0 => key_current(0),
      I1 => key_buffer0(0),
      I2 => Q(0),
      I3 => key_current(2),
      I4 => key_buffer0(2),
      I5 => Q(2),
      O => key_data_vld_out_INST_0_i_4_n_0
    );
key_data_vld_out_INST_0_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"101010FF10101010"
    )
        port map (
      I0 => key_current(3),
      I1 => key_buffer0(3),
      I2 => Q(3),
      I3 => key_current(1),
      I4 => key_buffer0(1),
      I5 => Q(1),
      O => key_data_vld_out_INST_0_i_5_n_0
    );
key_data_vld_out_INST_0_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"101010FF10101010"
    )
        port map (
      I0 => key_current(13),
      I1 => key_buffer0(13),
      I2 => Q(13),
      I3 => key_current(12),
      I4 => key_buffer0(12),
      I5 => Q(12),
      O => key_data_vld_out_INST_0_i_6_n_0
    );
key_data_vld_out_INST_0_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"101010FF10101010"
    )
        port map (
      I0 => key_current(5),
      I1 => key_buffer0(5),
      I2 => Q(5),
      I3 => key_current(4),
      I4 => key_buffer0(4),
      I5 => Q(4),
      O => key_data_vld_out_INST_0_i_7_n_0
    );
key_data_vld_out_INST_0_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"101010FF10101010"
    )
        port map (
      I0 => key_current(15),
      I1 => key_buffer0(15),
      I2 => Q(15),
      I3 => key_current(14),
      I4 => key_buffer0(14),
      I5 => Q(14),
      O => key_data_vld_out_INST_0_i_8_n_0
    );
\key_id[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0FFF1F1F1"
    )
        port map (
      I0 => key_buffer0(11),
      I1 => key_current(11),
      I2 => \key_id[0]_i_2_n_0\,
      I3 => \key_id[0]_i_3_n_0\,
      I4 => \^key_current_reg[15]_0\(10),
      I5 => \key_id[0]_i_4_n_0\,
      O => D(0)
    );
\key_id[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"111011101110FFFF"
    )
        port map (
      I0 => key_current(13),
      I1 => key_buffer0(13),
      I2 => key_current(14),
      I3 => key_buffer0(14),
      I4 => key_buffer0(15),
      I5 => key_current(15),
      O => \key_id[0]_i_2_n_0\
    );
\key_id[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0AAA0A2FFFFFFFF"
    )
        port map (
      I0 => \^key_current_reg[15]_0\(8),
      I1 => \^key_current_reg[15]_0\(3),
      I2 => \key_id[0]_i_5_n_0\,
      I3 => \key_id[3]_i_6_n_0\,
      I4 => \key_id[0]_i_6_n_0\,
      I5 => \^key_current_reg[15]_0\(9),
      O => \key_id[0]_i_3_n_0\
    );
\key_id[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"111F"
    )
        port map (
      I0 => key_buffer0(14),
      I1 => key_current(14),
      I2 => key_buffer0(12),
      I3 => key_current(12),
      O => \key_id[0]_i_4_n_0\
    );
\key_id[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"111011101110FFFF"
    )
        port map (
      I0 => key_current(5),
      I1 => key_buffer0(5),
      I2 => key_current(6),
      I3 => key_buffer0(6),
      I4 => key_buffer0(7),
      I5 => key_current(7),
      O => \key_id[0]_i_5_n_0\
    );
\key_id[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF1FFF1FFF10000"
    )
        port map (
      I0 => key_current(1),
      I1 => key_buffer0(1),
      I2 => key_current(0),
      I3 => key_buffer0(0),
      I4 => key_buffer0(2),
      I5 => key_current(2),
      O => \key_id[0]_i_6_n_0\
    );
\key_id[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF7777777777777"
    )
        port map (
      I0 => \^key_current_reg[15]_0\(14),
      I1 => \^key_current_reg[15]_0\(15),
      I2 => \key_id[1]_i_2_n_0\,
      I3 => \key_id[1]_i_3_n_0\,
      I4 => \^key_current_reg[15]_0\(13),
      I5 => \^key_current_reg[15]_0\(12),
      O => D(1)
    );
\key_id[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000A2FFFFFF"
    )
        port map (
      I0 => \key_id[1]_i_4_n_0\,
      I1 => \key_id[3]_i_8_n_0\,
      I2 => \key_id[3]_i_7_n_0\,
      I3 => \^key_current_reg[15]_0\(7),
      I4 => \^key_current_reg[15]_0\(6),
      I5 => \key_id[3]_i_5_n_0\,
      O => \key_id[1]_i_2_n_0\
    );
\key_id[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"111F"
    )
        port map (
      I0 => key_buffer0(11),
      I1 => key_current(11),
      I2 => key_buffer0(10),
      I3 => key_current(10),
      O => \key_id[1]_i_3_n_0\
    );
\key_id[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEE0"
    )
        port map (
      I0 => key_buffer0(5),
      I1 => key_current(5),
      I2 => key_buffer0(4),
      I3 => key_current(4),
      O => \key_id[1]_i_4_n_0\
    );
\key_id[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF45"
    )
        port map (
      I0 => \key_id[2]_i_2_n_0\,
      I1 => \key_id[2]_i_3_n_0\,
      I2 => \key_id[2]_i_4_n_0\,
      I3 => \key_id[2]_i_5_n_0\,
      O => D(2)
    );
\key_id[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF111F"
    )
        port map (
      I0 => key_current(8),
      I1 => key_buffer0(8),
      I2 => key_current(9),
      I3 => key_buffer0(9),
      I4 => \key_id[1]_i_3_n_0\,
      O => \key_id[2]_i_2_n_0\
    );
\key_id[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF111F"
    )
        port map (
      I0 => key_current(5),
      I1 => key_buffer0(5),
      I2 => key_current(7),
      I3 => key_buffer0(7),
      I4 => \key_id[3]_i_6_n_0\,
      O => \key_id[2]_i_3_n_0\
    );
\key_id[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF111F"
    )
        port map (
      I0 => key_current(0),
      I1 => key_buffer0(0),
      I2 => key_current(1),
      I3 => key_buffer0(1),
      I4 => \key_id[3]_i_7_n_0\,
      O => \key_id[2]_i_4_n_0\
    );
\key_id[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF111F"
    )
        port map (
      I0 => key_current(13),
      I1 => key_buffer0(13),
      I2 => key_current(15),
      I3 => key_buffer0(15),
      I4 => \key_id[0]_i_4_n_0\,
      O => \key_id[2]_i_5_n_0\
    );
\key_id[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \key_id[3]_i_3_n_0\,
      I1 => \key_id[3]_i_4_n_0\,
      O => E(0)
    );
\key_id[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \key_id[3]_i_3_n_0\,
      I1 => \key_id[3]_i_4_n_0\,
      O => D(3)
    );
\key_id[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFABFF"
    )
        port map (
      I0 => \key_id[0]_i_4_n_0\,
      I1 => key_buffer0(15),
      I2 => key_current(15),
      I3 => \^key_current_reg[15]_0\(13),
      I4 => \key_id[1]_i_3_n_0\,
      I5 => \key_id[3]_i_5_n_0\,
      O => \key_id[3]_i_3_n_0\
    );
\key_id[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFABFF"
    )
        port map (
      I0 => \key_id[3]_i_6_n_0\,
      I1 => key_buffer0(7),
      I2 => key_current(7),
      I3 => \^key_current_reg[15]_0\(5),
      I4 => \key_id[3]_i_7_n_0\,
      I5 => \key_id[3]_i_8_n_0\,
      O => \key_id[3]_i_4_n_0\
    );
\key_id[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"111F"
    )
        port map (
      I0 => key_buffer0(9),
      I1 => key_current(9),
      I2 => key_buffer0(8),
      I3 => key_current(8),
      O => \key_id[3]_i_5_n_0\
    );
\key_id[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"111F"
    )
        port map (
      I0 => key_buffer0(6),
      I1 => key_current(6),
      I2 => key_buffer0(4),
      I3 => key_current(4),
      O => \key_id[3]_i_6_n_0\
    );
\key_id[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"111F"
    )
        port map (
      I0 => key_buffer0(3),
      I1 => key_current(3),
      I2 => key_buffer0(2),
      I3 => key_current(2),
      O => \key_id[3]_i_7_n_0\
    );
\key_id[3]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"111F"
    )
        port map (
      I0 => key_buffer0(1),
      I1 => key_current(1),
      I2 => key_buffer0(0),
      I3 => key_current(0),
      O => \key_id[3]_i_8_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity keyboard_0_key_scan is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \key_data_reg[15]_0\ : out STD_LOGIC_VECTOR ( 15 downto 0 );
    clk_ms : in STD_LOGIC;
    \row_reg[3]_0\ : in STD_LOGIC;
    col_in : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of keyboard_0_key_scan : entity is "key_scan";
end keyboard_0_key_scan;

architecture STRUCTURE of keyboard_0_key_scan is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \key_data[0]_i_1_n_0\ : STD_LOGIC;
  signal \key_data[10]_i_1_n_0\ : STD_LOGIC;
  signal \key_data[11]_i_1_n_0\ : STD_LOGIC;
  signal \key_data[11]_i_2_n_0\ : STD_LOGIC;
  signal \key_data[11]_i_3_n_0\ : STD_LOGIC;
  signal \key_data[15]_i_1_n_0\ : STD_LOGIC;
  signal \key_data[15]_i_2_n_0\ : STD_LOGIC;
  signal \key_data[1]_i_1_n_0\ : STD_LOGIC;
  signal \key_data[2]_i_1_n_0\ : STD_LOGIC;
  signal \key_data[3]_i_1_n_0\ : STD_LOGIC;
  signal \key_data[3]_i_2_n_0\ : STD_LOGIC;
  signal \key_data[3]_i_3_n_0\ : STD_LOGIC;
  signal \key_data[4]_i_1_n_0\ : STD_LOGIC;
  signal \key_data[5]_i_1_n_0\ : STD_LOGIC;
  signal \key_data[6]_i_1_n_0\ : STD_LOGIC;
  signal \key_data[7]_i_1_n_0\ : STD_LOGIC;
  signal \key_data[7]_i_2_n_0\ : STD_LOGIC;
  signal \key_data[7]_i_3_n_0\ : STD_LOGIC;
  signal \key_data[8]_i_1_n_0\ : STD_LOGIC;
  signal \key_data[9]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \key_data[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \key_data[10]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \key_data[11]_i_3\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \key_data[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \key_data[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \key_data[3]_i_3\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \key_data[4]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \key_data[5]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \key_data[6]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \key_data[7]_i_3\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \key_data[8]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \key_data[9]_i_1\ : label is "soft_lutpair18";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
\key_data[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \^q\(3),
      I1 => col_in(0),
      I2 => \^q\(1),
      I3 => \^q\(2),
      O => \key_data[0]_i_1_n_0\
    );
\key_data[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \^q\(3),
      I1 => col_in(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      O => \key_data[10]_i_1_n_0\
    );
\key_data[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"822A"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(3),
      I3 => \^q\(0),
      O => \key_data[11]_i_1_n_0\
    );
\key_data[11]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"97FF"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(2),
      O => \key_data[11]_i_2_n_0\
    );
\key_data[11]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \^q\(3),
      I1 => col_in(3),
      I2 => \^q\(1),
      I3 => \^q\(0),
      O => \key_data[11]_i_3_n_0\
    );
\key_data[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"977F"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(0),
      O => \key_data[15]_i_1_n_0\
    );
\key_data[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"97FF"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(3),
      O => \key_data[15]_i_2_n_0\
    );
\key_data[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \^q\(3),
      I1 => col_in(1),
      I2 => \^q\(1),
      I3 => \^q\(2),
      O => \key_data[1]_i_1_n_0\
    );
\key_data[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \^q\(3),
      I1 => col_in(2),
      I2 => \^q\(1),
      I3 => \^q\(2),
      O => \key_data[2]_i_1_n_0\
    );
\key_data[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9700"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(0),
      O => \key_data[3]_i_1_n_0\
    );
\key_data[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D77F"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(3),
      I3 => \^q\(2),
      O => \key_data[3]_i_2_n_0\
    );
\key_data[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \^q\(3),
      I1 => col_in(3),
      I2 => \^q\(1),
      I3 => \^q\(2),
      O => \key_data[3]_i_3_n_0\
    );
\key_data[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \^q\(3),
      I1 => col_in(0),
      I2 => \^q\(0),
      I3 => \^q\(2),
      O => \key_data[4]_i_1_n_0\
    );
\key_data[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \^q\(3),
      I1 => col_in(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      O => \key_data[5]_i_1_n_0\
    );
\key_data[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \^q\(3),
      I1 => col_in(2),
      I2 => \^q\(0),
      I3 => \^q\(2),
      O => \key_data[6]_i_1_n_0\
    );
\key_data[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"822A"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \^q\(0),
      O => \key_data[7]_i_1_n_0\
    );
\key_data[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"97FF"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(3),
      I2 => \^q\(2),
      I3 => \^q\(1),
      O => \key_data[7]_i_2_n_0\
    );
\key_data[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \^q\(3),
      I1 => col_in(3),
      I2 => \^q\(0),
      I3 => \^q\(2),
      O => \key_data[7]_i_3_n_0\
    );
\key_data[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \^q\(3),
      I1 => col_in(0),
      I2 => \^q\(1),
      I3 => \^q\(0),
      O => \key_data[8]_i_1_n_0\
    );
\key_data[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \^q\(3),
      I1 => col_in(1),
      I2 => \^q\(1),
      I3 => \^q\(0),
      O => \key_data[9]_i_1_n_0\
    );
\key_data_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_ms,
      CE => \key_data[3]_i_2_n_0\,
      D => \key_data[0]_i_1_n_0\,
      Q => \key_data_reg[15]_0\(0),
      S => \key_data[3]_i_1_n_0\
    );
\key_data_reg[10]\: unisim.vcomponents.FDSE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_ms,
      CE => \key_data[11]_i_2_n_0\,
      D => \key_data[10]_i_1_n_0\,
      Q => \key_data_reg[15]_0\(10),
      S => \key_data[11]_i_1_n_0\
    );
\key_data_reg[11]\: unisim.vcomponents.FDSE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_ms,
      CE => \key_data[11]_i_2_n_0\,
      D => \key_data[11]_i_3_n_0\,
      Q => \key_data_reg[15]_0\(11),
      S => \key_data[11]_i_1_n_0\
    );
\key_data_reg[12]\: unisim.vcomponents.FDSE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_ms,
      CE => \key_data[15]_i_2_n_0\,
      D => col_in(0),
      Q => \key_data_reg[15]_0\(12),
      S => \key_data[15]_i_1_n_0\
    );
\key_data_reg[13]\: unisim.vcomponents.FDSE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_ms,
      CE => \key_data[15]_i_2_n_0\,
      D => col_in(1),
      Q => \key_data_reg[15]_0\(13),
      S => \key_data[15]_i_1_n_0\
    );
\key_data_reg[14]\: unisim.vcomponents.FDSE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_ms,
      CE => \key_data[15]_i_2_n_0\,
      D => col_in(2),
      Q => \key_data_reg[15]_0\(14),
      S => \key_data[15]_i_1_n_0\
    );
\key_data_reg[15]\: unisim.vcomponents.FDSE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_ms,
      CE => \key_data[15]_i_2_n_0\,
      D => col_in(3),
      Q => \key_data_reg[15]_0\(15),
      S => \key_data[15]_i_1_n_0\
    );
\key_data_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_ms,
      CE => \key_data[3]_i_2_n_0\,
      D => \key_data[1]_i_1_n_0\,
      Q => \key_data_reg[15]_0\(1),
      S => \key_data[3]_i_1_n_0\
    );
\key_data_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_ms,
      CE => \key_data[3]_i_2_n_0\,
      D => \key_data[2]_i_1_n_0\,
      Q => \key_data_reg[15]_0\(2),
      S => \key_data[3]_i_1_n_0\
    );
\key_data_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_ms,
      CE => \key_data[3]_i_2_n_0\,
      D => \key_data[3]_i_3_n_0\,
      Q => \key_data_reg[15]_0\(3),
      S => \key_data[3]_i_1_n_0\
    );
\key_data_reg[4]\: unisim.vcomponents.FDSE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_ms,
      CE => \key_data[7]_i_2_n_0\,
      D => \key_data[4]_i_1_n_0\,
      Q => \key_data_reg[15]_0\(4),
      S => \key_data[7]_i_1_n_0\
    );
\key_data_reg[5]\: unisim.vcomponents.FDSE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_ms,
      CE => \key_data[7]_i_2_n_0\,
      D => \key_data[5]_i_1_n_0\,
      Q => \key_data_reg[15]_0\(5),
      S => \key_data[7]_i_1_n_0\
    );
\key_data_reg[6]\: unisim.vcomponents.FDSE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_ms,
      CE => \key_data[7]_i_2_n_0\,
      D => \key_data[6]_i_1_n_0\,
      Q => \key_data_reg[15]_0\(6),
      S => \key_data[7]_i_1_n_0\
    );
\key_data_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_ms,
      CE => \key_data[7]_i_2_n_0\,
      D => \key_data[7]_i_3_n_0\,
      Q => \key_data_reg[15]_0\(7),
      S => \key_data[7]_i_1_n_0\
    );
\key_data_reg[8]\: unisim.vcomponents.FDSE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_ms,
      CE => \key_data[11]_i_2_n_0\,
      D => \key_data[8]_i_1_n_0\,
      Q => \key_data_reg[15]_0\(8),
      S => \key_data[11]_i_1_n_0\
    );
\key_data_reg[9]\: unisim.vcomponents.FDSE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk_ms,
      CE => \key_data[11]_i_2_n_0\,
      D => \key_data[9]_i_1_n_0\,
      Q => \key_data_reg[15]_0\(9),
      S => \key_data[11]_i_1_n_0\
    );
\row_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_ms,
      CE => '1',
      CLR => \row_reg[3]_0\,
      D => \^q\(3),
      Q => \^q\(0)
    );
\row_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => clk_ms,
      CE => '1',
      D => \^q\(0),
      PRE => \row_reg[3]_0\,
      Q => \^q\(1)
    );
\row_reg[2]\: unisim.vcomponents.FDPE
     port map (
      C => clk_ms,
      CE => '1',
      D => \^q\(1),
      PRE => \row_reg[3]_0\,
      Q => \^q\(2)
    );
\row_reg[3]\: unisim.vcomponents.FDPE
     port map (
      C => clk_ms,
      CE => '1',
      D => \^q\(2),
      PRE => \row_reg[3]_0\,
      Q => \^q\(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity keyboard_0_keyboard_top is
  port (
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    key_id_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    key_data_vld_out : out STD_LOGIC;
    clk_in : in STD_LOGIC;
    col_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rst_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of keyboard_0_keyboard_top : entity is "keyboard_top";
end keyboard_0_keyboard_top;

architecture STRUCTURE of keyboard_0_keyboard_top is
  signal clk_20ms : STD_LOGIC;
  signal clk_ms : STD_LOGIC;
  signal key_data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal key_data_ff : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal key_data_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal u_clk_div_0_n_1 : STD_LOGIC;
  signal u_debounce_0_n_0 : STD_LOGIC;
  signal u_debounce_0_n_1 : STD_LOGIC;
  signal u_debounce_0_n_2 : STD_LOGIC;
  signal u_debounce_0_n_20 : STD_LOGIC;
  signal u_debounce_0_n_3 : STD_LOGIC;
begin
\key_data_ff_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => u_clk_div_0_n_1,
      D => key_data_out(0),
      Q => key_data_ff(0)
    );
\key_data_ff_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => u_clk_div_0_n_1,
      D => key_data_out(10),
      Q => key_data_ff(10)
    );
\key_data_ff_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => u_clk_div_0_n_1,
      D => key_data_out(11),
      Q => key_data_ff(11)
    );
\key_data_ff_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => u_clk_div_0_n_1,
      D => key_data_out(12),
      Q => key_data_ff(12)
    );
\key_data_ff_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => u_clk_div_0_n_1,
      D => key_data_out(13),
      Q => key_data_ff(13)
    );
\key_data_ff_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => u_clk_div_0_n_1,
      D => key_data_out(14),
      Q => key_data_ff(14)
    );
\key_data_ff_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => u_clk_div_0_n_1,
      D => key_data_out(15),
      Q => key_data_ff(15)
    );
\key_data_ff_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => u_clk_div_0_n_1,
      D => key_data_out(1),
      Q => key_data_ff(1)
    );
\key_data_ff_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => u_clk_div_0_n_1,
      D => key_data_out(2),
      Q => key_data_ff(2)
    );
\key_data_ff_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => u_clk_div_0_n_1,
      D => key_data_out(3),
      Q => key_data_ff(3)
    );
\key_data_ff_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => u_clk_div_0_n_1,
      D => key_data_out(4),
      Q => key_data_ff(4)
    );
\key_data_ff_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => u_clk_div_0_n_1,
      D => key_data_out(5),
      Q => key_data_ff(5)
    );
\key_data_ff_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => u_clk_div_0_n_1,
      D => key_data_out(6),
      Q => key_data_ff(6)
    );
\key_data_ff_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => u_clk_div_0_n_1,
      D => key_data_out(7),
      Q => key_data_ff(7)
    );
\key_data_ff_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => u_clk_div_0_n_1,
      D => key_data_out(8),
      Q => key_data_ff(8)
    );
\key_data_ff_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => u_clk_div_0_n_1,
      D => key_data_out(9),
      Q => key_data_ff(9)
    );
\key_id_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_ms,
      CE => u_debounce_0_n_20,
      CLR => u_clk_div_0_n_1,
      D => u_debounce_0_n_3,
      Q => key_id_out(0)
    );
\key_id_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_ms,
      CE => u_debounce_0_n_20,
      CLR => u_clk_div_0_n_1,
      D => u_debounce_0_n_2,
      Q => key_id_out(1)
    );
\key_id_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_ms,
      CE => u_debounce_0_n_20,
      CLR => u_clk_div_0_n_1,
      D => u_debounce_0_n_1,
      Q => key_id_out(2)
    );
\key_id_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_ms,
      CE => u_debounce_0_n_20,
      CLR => u_clk_div_0_n_1,
      D => u_debounce_0_n_0,
      Q => key_id_out(3)
    );
u_clk_div_0: entity work.keyboard_0_clk_div
     port map (
      CLK => clk_20ms,
      clk_in => clk_in,
      clk_ms => clk_ms,
      rst_n => rst_n,
      rst_n_0 => u_clk_div_0_n_1
    );
u_debounce_0: entity work.keyboard_0_debounce
     port map (
      CLK => clk_20ms,
      D(3) => u_debounce_0_n_0,
      D(2) => u_debounce_0_n_1,
      D(1) => u_debounce_0_n_2,
      D(0) => u_debounce_0_n_3,
      E(0) => u_debounce_0_n_20,
      Q(15 downto 0) => key_data_ff(15 downto 0),
      \key_current_reg[15]_0\(15 downto 0) => key_data_out(15 downto 0),
      \key_current_reg[15]_1\(15 downto 0) => key_data(15 downto 0),
      key_data_vld_out => key_data_vld_out
    );
u_key_scan_0: entity work.keyboard_0_key_scan
     port map (
      Q(3 downto 0) => Q(3 downto 0),
      clk_ms => clk_ms,
      col_in(3 downto 0) => col_in(3 downto 0),
      \key_data_reg[15]_0\(15 downto 0) => key_data(15 downto 0),
      \row_reg[3]_0\ => u_clk_div_0_n_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity keyboard_0 is
  port (
    clk_in : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    col_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    row_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    key_id_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    key_data_vld_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of keyboard_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of keyboard_0 : entity is "keyboard_0,keyboard_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of keyboard_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of keyboard_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of keyboard_0 : entity is "keyboard_top,Vivado 2018.3";
end keyboard_0;

architecture STRUCTURE of keyboard_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.keyboard_0_keyboard_top
     port map (
      Q(3 downto 0) => row_out(3 downto 0),
      clk_in => clk_in,
      col_in(3 downto 0) => col_in(3 downto 0),
      key_data_vld_out => key_data_vld_out,
      key_id_out(3 downto 0) => key_id_out(3 downto 0),
      rst_n => rst_n
    );
end STRUCTURE;
