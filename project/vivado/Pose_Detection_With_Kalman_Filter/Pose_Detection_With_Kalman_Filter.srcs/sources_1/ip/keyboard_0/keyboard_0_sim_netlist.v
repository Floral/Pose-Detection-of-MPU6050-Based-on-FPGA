// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Feb 13 18:27:51 2022
// Host        : LAPTOP-DOA running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/MyDocument/LearningIC/FPGA/Pose_Detection_With_Kalman_Filter/Pose_Detection_With_Kalman_Filter.srcs/sources_1/ip/keyboard_0/keyboard_0_sim_netlist.v
// Design      : keyboard_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a75tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "keyboard_0,keyboard_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "keyboard_top,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module keyboard_0
   (clk_in,
    rst_n,
    col_in,
    row_out,
    key_id_out,
    key_data_vld_out);
  input clk_in;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  input [3:0]col_in;
  output [3:0]row_out;
  output [3:0]key_id_out;
  output key_data_vld_out;

  wire clk_in;
  wire [3:0]col_in;
  wire key_data_vld_out;
  wire [3:0]key_id_out;
  wire [3:0]row_out;
  wire rst_n;

  keyboard_0_keyboard_top inst
       (.Q(row_out),
        .clk_in(clk_in),
        .col_in(col_in),
        .key_data_vld_out(key_data_vld_out),
        .key_id_out(key_id_out),
        .rst_n(rst_n));
endmodule

(* ORIG_REF_NAME = "clk_div" *) 
module keyboard_0_clk_div
   (clk_ms,
    rst_n_0,
    CLK,
    clk_in,
    rst_n);
  output clk_ms;
  output rst_n_0;
  output CLK;
  input clk_in;
  input rst_n;

  wire CLK;
  wire clk_20ms_i_1_n_0;
  wire clk_in;
  wire clk_ms;
  wire clk_ms_i_3_n_0;
  wire clk_ms_i_4_n_0;
  wire clk_ms_i_5_n_0;
  wire \cnt0[0]_i_2_n_0 ;
  wire \cnt0[0]_i_3_n_0 ;
  wire \cnt0[0]_i_4_n_0 ;
  wire \cnt0[0]_i_5_n_0 ;
  wire \cnt0[0]_i_6_n_0 ;
  wire \cnt0[12]_i_2_n_0 ;
  wire \cnt0[12]_i_3_n_0 ;
  wire \cnt0[4]_i_2_n_0 ;
  wire \cnt0[4]_i_3_n_0 ;
  wire \cnt0[8]_i_2_n_0 ;
  wire [15:0]cnt0_reg;
  wire \cnt0_reg[0]_i_1_n_0 ;
  wire \cnt0_reg[0]_i_1_n_1 ;
  wire \cnt0_reg[0]_i_1_n_2 ;
  wire \cnt0_reg[0]_i_1_n_3 ;
  wire \cnt0_reg[0]_i_1_n_4 ;
  wire \cnt0_reg[0]_i_1_n_5 ;
  wire \cnt0_reg[0]_i_1_n_6 ;
  wire \cnt0_reg[0]_i_1_n_7 ;
  wire \cnt0_reg[12]_i_1_n_1 ;
  wire \cnt0_reg[12]_i_1_n_2 ;
  wire \cnt0_reg[12]_i_1_n_3 ;
  wire \cnt0_reg[12]_i_1_n_4 ;
  wire \cnt0_reg[12]_i_1_n_5 ;
  wire \cnt0_reg[12]_i_1_n_6 ;
  wire \cnt0_reg[12]_i_1_n_7 ;
  wire \cnt0_reg[4]_i_1_n_0 ;
  wire \cnt0_reg[4]_i_1_n_1 ;
  wire \cnt0_reg[4]_i_1_n_2 ;
  wire \cnt0_reg[4]_i_1_n_3 ;
  wire \cnt0_reg[4]_i_1_n_4 ;
  wire \cnt0_reg[4]_i_1_n_5 ;
  wire \cnt0_reg[4]_i_1_n_6 ;
  wire \cnt0_reg[4]_i_1_n_7 ;
  wire \cnt0_reg[8]_i_1_n_0 ;
  wire \cnt0_reg[8]_i_1_n_1 ;
  wire \cnt0_reg[8]_i_1_n_2 ;
  wire \cnt0_reg[8]_i_1_n_3 ;
  wire \cnt0_reg[8]_i_1_n_4 ;
  wire \cnt0_reg[8]_i_1_n_5 ;
  wire \cnt0_reg[8]_i_1_n_6 ;
  wire \cnt0_reg[8]_i_1_n_7 ;
  wire \cnt1[3]_i_3_n_0 ;
  wire \cnt1[3]_i_4_n_0 ;
  wire [4:0]cnt1_reg__0;
  wire end_cnt0;
  wire end_cnt1;
  wire p_0_in;
  wire [4:0]p_0_in__0;
  wire rst_n;
  wire rst_n_0;
  wire [3:3]\NLW_cnt0_reg[12]_i_1_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h6)) 
    clk_20ms_i_1
       (.I0(end_cnt1),
        .I1(CLK),
        .O(clk_20ms_i_1_n_0));
  FDCE clk_20ms_reg
       (.C(clk_in),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(clk_20ms_i_1_n_0),
        .Q(CLK));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    clk_ms_i_1
       (.I0(clk_ms_i_3_n_0),
        .I1(cnt0_reg[7]),
        .I2(cnt0_reg[14]),
        .I3(cnt0_reg[8]),
        .I4(cnt0_reg[13]),
        .I5(clk_ms_i_4_n_0),
        .O(end_cnt0));
  LUT1 #(
    .INIT(2'h1)) 
    clk_ms_i_2
       (.I0(clk_ms),
        .O(p_0_in));
  LUT4 #(
    .INIT(16'h7FFF)) 
    clk_ms_i_3
       (.I0(cnt0_reg[0]),
        .I1(cnt0_reg[5]),
        .I2(cnt0_reg[1]),
        .I3(cnt0_reg[2]),
        .O(clk_ms_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    clk_ms_i_4
       (.I0(cnt0_reg[6]),
        .I1(cnt0_reg[4]),
        .I2(cnt0_reg[9]),
        .I3(cnt0_reg[3]),
        .I4(clk_ms_i_5_n_0),
        .O(clk_ms_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    clk_ms_i_5
       (.I0(cnt0_reg[11]),
        .I1(cnt0_reg[12]),
        .I2(cnt0_reg[15]),
        .I3(cnt0_reg[10]),
        .O(clk_ms_i_5_n_0));
  FDCE clk_ms_reg
       (.C(clk_in),
        .CE(end_cnt0),
        .CLR(rst_n_0),
        .D(p_0_in),
        .Q(clk_ms));
  LUT6 #(
    .INIT(64'hBFFFFFFF00000000)) 
    \cnt0[0]_i_2 
       (.I0(clk_ms_i_4_n_0),
        .I1(\cnt0[0]_i_6_n_0 ),
        .I2(cnt0_reg[2]),
        .I3(cnt0_reg[1]),
        .I4(cnt0_reg[5]),
        .I5(cnt0_reg[0]),
        .O(\cnt0[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB0F0F0F0F0F0F0F0)) 
    \cnt0[0]_i_3 
       (.I0(clk_ms_i_4_n_0),
        .I1(\cnt0[0]_i_6_n_0 ),
        .I2(cnt0_reg[2]),
        .I3(cnt0_reg[1]),
        .I4(cnt0_reg[5]),
        .I5(cnt0_reg[0]),
        .O(\cnt0[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBF00FF00FF00FF00)) 
    \cnt0[0]_i_4 
       (.I0(clk_ms_i_4_n_0),
        .I1(\cnt0[0]_i_6_n_0 ),
        .I2(cnt0_reg[2]),
        .I3(cnt0_reg[1]),
        .I4(cnt0_reg[5]),
        .I5(cnt0_reg[0]),
        .O(\cnt0[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt0[0]_i_5 
       (.I0(cnt0_reg[0]),
        .O(\cnt0[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \cnt0[0]_i_6 
       (.I0(cnt0_reg[7]),
        .I1(cnt0_reg[14]),
        .I2(cnt0_reg[8]),
        .I3(cnt0_reg[13]),
        .O(\cnt0[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF00BF00FF00)) 
    \cnt0[12]_i_2 
       (.I0(clk_ms_i_4_n_0),
        .I1(cnt0_reg[13]),
        .I2(cnt0_reg[8]),
        .I3(cnt0_reg[14]),
        .I4(cnt0_reg[7]),
        .I5(clk_ms_i_3_n_0),
        .O(\cnt0[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCCCCC8CCCCCCC)) 
    \cnt0[12]_i_3 
       (.I0(clk_ms_i_4_n_0),
        .I1(cnt0_reg[13]),
        .I2(cnt0_reg[8]),
        .I3(cnt0_reg[14]),
        .I4(cnt0_reg[7]),
        .I5(clk_ms_i_3_n_0),
        .O(\cnt0[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000BFFF0000)) 
    \cnt0[4]_i_2 
       (.I0(clk_ms_i_4_n_0),
        .I1(cnt0_reg[13]),
        .I2(cnt0_reg[8]),
        .I3(cnt0_reg[14]),
        .I4(cnt0_reg[7]),
        .I5(clk_ms_i_3_n_0),
        .O(\cnt0[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBFFF0000FFFF0000)) 
    \cnt0[4]_i_3 
       (.I0(clk_ms_i_4_n_0),
        .I1(\cnt0[0]_i_6_n_0 ),
        .I2(cnt0_reg[2]),
        .I3(cnt0_reg[1]),
        .I4(cnt0_reg[5]),
        .I5(cnt0_reg[0]),
        .O(\cnt0[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF0F0F0F0B0F0F0F0)) 
    \cnt0[8]_i_2 
       (.I0(clk_ms_i_4_n_0),
        .I1(cnt0_reg[13]),
        .I2(cnt0_reg[8]),
        .I3(cnt0_reg[14]),
        .I4(cnt0_reg[7]),
        .I5(clk_ms_i_3_n_0),
        .O(\cnt0[8]_i_2_n_0 ));
  FDCE \cnt0_reg[0] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cnt0_reg[0]_i_1_n_7 ),
        .Q(cnt0_reg[0]));
  CARRY4 \cnt0_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\cnt0_reg[0]_i_1_n_0 ,\cnt0_reg[0]_i_1_n_1 ,\cnt0_reg[0]_i_1_n_2 ,\cnt0_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\cnt0[0]_i_2_n_0 }),
        .O({\cnt0_reg[0]_i_1_n_4 ,\cnt0_reg[0]_i_1_n_5 ,\cnt0_reg[0]_i_1_n_6 ,\cnt0_reg[0]_i_1_n_7 }),
        .S({cnt0_reg[3],\cnt0[0]_i_3_n_0 ,\cnt0[0]_i_4_n_0 ,\cnt0[0]_i_5_n_0 }));
  FDCE \cnt0_reg[10] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cnt0_reg[8]_i_1_n_5 ),
        .Q(cnt0_reg[10]));
  FDCE \cnt0_reg[11] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cnt0_reg[8]_i_1_n_4 ),
        .Q(cnt0_reg[11]));
  FDCE \cnt0_reg[12] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cnt0_reg[12]_i_1_n_7 ),
        .Q(cnt0_reg[12]));
  CARRY4 \cnt0_reg[12]_i_1 
       (.CI(\cnt0_reg[8]_i_1_n_0 ),
        .CO({\NLW_cnt0_reg[12]_i_1_CO_UNCONNECTED [3],\cnt0_reg[12]_i_1_n_1 ,\cnt0_reg[12]_i_1_n_2 ,\cnt0_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt0_reg[12]_i_1_n_4 ,\cnt0_reg[12]_i_1_n_5 ,\cnt0_reg[12]_i_1_n_6 ,\cnt0_reg[12]_i_1_n_7 }),
        .S({cnt0_reg[15],\cnt0[12]_i_2_n_0 ,\cnt0[12]_i_3_n_0 ,cnt0_reg[12]}));
  FDCE \cnt0_reg[13] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cnt0_reg[12]_i_1_n_6 ),
        .Q(cnt0_reg[13]));
  FDCE \cnt0_reg[14] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cnt0_reg[12]_i_1_n_5 ),
        .Q(cnt0_reg[14]));
  FDCE \cnt0_reg[15] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cnt0_reg[12]_i_1_n_4 ),
        .Q(cnt0_reg[15]));
  FDCE \cnt0_reg[1] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cnt0_reg[0]_i_1_n_6 ),
        .Q(cnt0_reg[1]));
  FDCE \cnt0_reg[2] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cnt0_reg[0]_i_1_n_5 ),
        .Q(cnt0_reg[2]));
  FDCE \cnt0_reg[3] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cnt0_reg[0]_i_1_n_4 ),
        .Q(cnt0_reg[3]));
  FDCE \cnt0_reg[4] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cnt0_reg[4]_i_1_n_7 ),
        .Q(cnt0_reg[4]));
  CARRY4 \cnt0_reg[4]_i_1 
       (.CI(\cnt0_reg[0]_i_1_n_0 ),
        .CO({\cnt0_reg[4]_i_1_n_0 ,\cnt0_reg[4]_i_1_n_1 ,\cnt0_reg[4]_i_1_n_2 ,\cnt0_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt0_reg[4]_i_1_n_4 ,\cnt0_reg[4]_i_1_n_5 ,\cnt0_reg[4]_i_1_n_6 ,\cnt0_reg[4]_i_1_n_7 }),
        .S({\cnt0[4]_i_2_n_0 ,cnt0_reg[6],\cnt0[4]_i_3_n_0 ,cnt0_reg[4]}));
  FDCE \cnt0_reg[5] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cnt0_reg[4]_i_1_n_6 ),
        .Q(cnt0_reg[5]));
  FDCE \cnt0_reg[6] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cnt0_reg[4]_i_1_n_5 ),
        .Q(cnt0_reg[6]));
  FDCE \cnt0_reg[7] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cnt0_reg[4]_i_1_n_4 ),
        .Q(cnt0_reg[7]));
  FDCE \cnt0_reg[8] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cnt0_reg[8]_i_1_n_7 ),
        .Q(cnt0_reg[8]));
  CARRY4 \cnt0_reg[8]_i_1 
       (.CI(\cnt0_reg[4]_i_1_n_0 ),
        .CO({\cnt0_reg[8]_i_1_n_0 ,\cnt0_reg[8]_i_1_n_1 ,\cnt0_reg[8]_i_1_n_2 ,\cnt0_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt0_reg[8]_i_1_n_4 ,\cnt0_reg[8]_i_1_n_5 ,\cnt0_reg[8]_i_1_n_6 ,\cnt0_reg[8]_i_1_n_7 }),
        .S({cnt0_reg[11:9],\cnt0[8]_i_2_n_0 }));
  FDCE \cnt0_reg[9] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(rst_n_0),
        .D(\cnt0_reg[8]_i_1_n_6 ),
        .Q(cnt0_reg[9]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt1[0]_i_1 
       (.I0(cnt1_reg__0[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \cnt1[1]_i_1 
       (.I0(cnt1_reg__0[1]),
        .I1(cnt1_reg__0[0]),
        .I2(end_cnt1),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \cnt1[2]_i_1 
       (.I0(cnt1_reg__0[2]),
        .I1(cnt1_reg__0[1]),
        .I2(cnt1_reg__0[0]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00007F80)) 
    \cnt1[3]_i_1 
       (.I0(cnt1_reg__0[2]),
        .I1(cnt1_reg__0[1]),
        .I2(cnt1_reg__0[0]),
        .I3(cnt1_reg__0[3]),
        .I4(end_cnt1),
        .O(p_0_in__0[3]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \cnt1[3]_i_2 
       (.I0(\cnt1[3]_i_3_n_0 ),
        .I1(clk_ms_i_5_n_0),
        .I2(\cnt0[0]_i_6_n_0 ),
        .I3(clk_ms_i_3_n_0),
        .I4(\cnt1[3]_i_4_n_0 ),
        .O(end_cnt1));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cnt1[3]_i_3 
       (.I0(cnt0_reg[3]),
        .I1(cnt0_reg[9]),
        .I2(cnt0_reg[4]),
        .I3(cnt0_reg[6]),
        .O(\cnt1[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFDFF)) 
    \cnt1[3]_i_4 
       (.I0(cnt1_reg__0[0]),
        .I1(cnt1_reg__0[4]),
        .I2(cnt1_reg__0[2]),
        .I3(cnt1_reg__0[3]),
        .I4(cnt1_reg__0[1]),
        .O(\cnt1[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \cnt1[4]_i_1 
       (.I0(cnt1_reg__0[4]),
        .I1(cnt1_reg__0[2]),
        .I2(cnt1_reg__0[1]),
        .I3(cnt1_reg__0[0]),
        .I4(cnt1_reg__0[3]),
        .O(p_0_in__0[4]));
  FDCE \cnt1_reg[0] 
       (.C(clk_in),
        .CE(end_cnt0),
        .CLR(rst_n_0),
        .D(p_0_in__0[0]),
        .Q(cnt1_reg__0[0]));
  FDCE \cnt1_reg[1] 
       (.C(clk_in),
        .CE(end_cnt0),
        .CLR(rst_n_0),
        .D(p_0_in__0[1]),
        .Q(cnt1_reg__0[1]));
  FDCE \cnt1_reg[2] 
       (.C(clk_in),
        .CE(end_cnt0),
        .CLR(rst_n_0),
        .D(p_0_in__0[2]),
        .Q(cnt1_reg__0[2]));
  FDCE \cnt1_reg[3] 
       (.C(clk_in),
        .CE(end_cnt0),
        .CLR(rst_n_0),
        .D(p_0_in__0[3]),
        .Q(cnt1_reg__0[3]));
  FDCE \cnt1_reg[4] 
       (.C(clk_in),
        .CE(end_cnt0),
        .CLR(rst_n_0),
        .D(p_0_in__0[4]),
        .Q(cnt1_reg__0[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \row[3]_i_1 
       (.I0(rst_n),
        .O(rst_n_0));
endmodule

(* ORIG_REF_NAME = "debounce" *) 
module keyboard_0_debounce
   (D,
    \key_current_reg[15]_0 ,
    E,
    key_data_vld_out,
    \key_current_reg[15]_1 ,
    CLK,
    Q);
  output [3:0]D;
  output [15:0]\key_current_reg[15]_0 ;
  output [0:0]E;
  output key_data_vld_out;
  input [15:0]\key_current_reg[15]_1 ;
  input CLK;
  input [15:0]Q;

  wire CLK;
  wire [3:0]D;
  wire [0:0]E;
  wire [15:0]Q;
  wire [15:0]key_buffer0;
  wire [15:0]key_current;
  wire [15:0]\key_current_reg[15]_0 ;
  wire [15:0]\key_current_reg[15]_1 ;
  wire key_data_vld_out;
  wire key_data_vld_out_INST_0_i_1_n_0;
  wire key_data_vld_out_INST_0_i_2_n_0;
  wire key_data_vld_out_INST_0_i_3_n_0;
  wire key_data_vld_out_INST_0_i_4_n_0;
  wire key_data_vld_out_INST_0_i_5_n_0;
  wire key_data_vld_out_INST_0_i_6_n_0;
  wire key_data_vld_out_INST_0_i_7_n_0;
  wire key_data_vld_out_INST_0_i_8_n_0;
  wire \key_id[0]_i_2_n_0 ;
  wire \key_id[0]_i_3_n_0 ;
  wire \key_id[0]_i_4_n_0 ;
  wire \key_id[0]_i_5_n_0 ;
  wire \key_id[0]_i_6_n_0 ;
  wire \key_id[1]_i_2_n_0 ;
  wire \key_id[1]_i_3_n_0 ;
  wire \key_id[1]_i_4_n_0 ;
  wire \key_id[2]_i_2_n_0 ;
  wire \key_id[2]_i_3_n_0 ;
  wire \key_id[2]_i_4_n_0 ;
  wire \key_id[2]_i_5_n_0 ;
  wire \key_id[3]_i_3_n_0 ;
  wire \key_id[3]_i_4_n_0 ;
  wire \key_id[3]_i_5_n_0 ;
  wire \key_id[3]_i_6_n_0 ;
  wire \key_id[3]_i_7_n_0 ;
  wire \key_id[3]_i_8_n_0 ;

  FDRE \key_buffer0_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(key_current[0]),
        .Q(key_buffer0[0]),
        .R(1'b0));
  FDRE \key_buffer0_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(key_current[10]),
        .Q(key_buffer0[10]),
        .R(1'b0));
  FDRE \key_buffer0_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(key_current[11]),
        .Q(key_buffer0[11]),
        .R(1'b0));
  FDRE \key_buffer0_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(key_current[12]),
        .Q(key_buffer0[12]),
        .R(1'b0));
  FDRE \key_buffer0_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(key_current[13]),
        .Q(key_buffer0[13]),
        .R(1'b0));
  FDRE \key_buffer0_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(key_current[14]),
        .Q(key_buffer0[14]),
        .R(1'b0));
  FDRE \key_buffer0_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(key_current[15]),
        .Q(key_buffer0[15]),
        .R(1'b0));
  FDRE \key_buffer0_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(key_current[1]),
        .Q(key_buffer0[1]),
        .R(1'b0));
  FDRE \key_buffer0_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(key_current[2]),
        .Q(key_buffer0[2]),
        .R(1'b0));
  FDRE \key_buffer0_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(key_current[3]),
        .Q(key_buffer0[3]),
        .R(1'b0));
  FDRE \key_buffer0_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(key_current[4]),
        .Q(key_buffer0[4]),
        .R(1'b0));
  FDRE \key_buffer0_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(key_current[5]),
        .Q(key_buffer0[5]),
        .R(1'b0));
  FDRE \key_buffer0_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(key_current[6]),
        .Q(key_buffer0[6]),
        .R(1'b0));
  FDRE \key_buffer0_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(key_current[7]),
        .Q(key_buffer0[7]),
        .R(1'b0));
  FDRE \key_buffer0_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(key_current[8]),
        .Q(key_buffer0[8]),
        .R(1'b0));
  FDRE \key_buffer0_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(key_current[9]),
        .Q(key_buffer0[9]),
        .R(1'b0));
  FDRE \key_current_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\key_current_reg[15]_1 [0]),
        .Q(key_current[0]),
        .R(1'b0));
  FDRE \key_current_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(\key_current_reg[15]_1 [10]),
        .Q(key_current[10]),
        .R(1'b0));
  FDRE \key_current_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(\key_current_reg[15]_1 [11]),
        .Q(key_current[11]),
        .R(1'b0));
  FDRE \key_current_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(\key_current_reg[15]_1 [12]),
        .Q(key_current[12]),
        .R(1'b0));
  FDRE \key_current_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(\key_current_reg[15]_1 [13]),
        .Q(key_current[13]),
        .R(1'b0));
  FDRE \key_current_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(\key_current_reg[15]_1 [14]),
        .Q(key_current[14]),
        .R(1'b0));
  FDRE \key_current_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(\key_current_reg[15]_1 [15]),
        .Q(key_current[15]),
        .R(1'b0));
  FDRE \key_current_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\key_current_reg[15]_1 [1]),
        .Q(key_current[1]),
        .R(1'b0));
  FDRE \key_current_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\key_current_reg[15]_1 [2]),
        .Q(key_current[2]),
        .R(1'b0));
  FDRE \key_current_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\key_current_reg[15]_1 [3]),
        .Q(key_current[3]),
        .R(1'b0));
  FDRE \key_current_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\key_current_reg[15]_1 [4]),
        .Q(key_current[4]),
        .R(1'b0));
  FDRE \key_current_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\key_current_reg[15]_1 [5]),
        .Q(key_current[5]),
        .R(1'b0));
  FDRE \key_current_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\key_current_reg[15]_1 [6]),
        .Q(key_current[6]),
        .R(1'b0));
  FDRE \key_current_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(\key_current_reg[15]_1 [7]),
        .Q(key_current[7]),
        .R(1'b0));
  FDRE \key_current_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(\key_current_reg[15]_1 [8]),
        .Q(key_current[8]),
        .R(1'b0));
  FDRE \key_current_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(\key_current_reg[15]_1 [9]),
        .Q(key_current[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'hE)) 
    \key_data_ff[0]_i_1 
       (.I0(key_current[0]),
        .I1(key_buffer0[0]),
        .O(\key_current_reg[15]_0 [0]));
  LUT2 #(
    .INIT(4'hE)) 
    \key_data_ff[10]_i_1 
       (.I0(key_current[10]),
        .I1(key_buffer0[10]),
        .O(\key_current_reg[15]_0 [10]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \key_data_ff[11]_i_1 
       (.I0(key_current[11]),
        .I1(key_buffer0[11]),
        .O(\key_current_reg[15]_0 [11]));
  LUT2 #(
    .INIT(4'hE)) 
    \key_data_ff[12]_i_1 
       (.I0(key_current[12]),
        .I1(key_buffer0[12]),
        .O(\key_current_reg[15]_0 [12]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \key_data_ff[13]_i_1 
       (.I0(key_current[13]),
        .I1(key_buffer0[13]),
        .O(\key_current_reg[15]_0 [13]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \key_data_ff[14]_i_1 
       (.I0(key_current[14]),
        .I1(key_buffer0[14]),
        .O(\key_current_reg[15]_0 [14]));
  LUT2 #(
    .INIT(4'hE)) 
    \key_data_ff[15]_i_1 
       (.I0(key_current[15]),
        .I1(key_buffer0[15]),
        .O(\key_current_reg[15]_0 [15]));
  LUT2 #(
    .INIT(4'hE)) 
    \key_data_ff[1]_i_1 
       (.I0(key_current[1]),
        .I1(key_buffer0[1]),
        .O(\key_current_reg[15]_0 [1]));
  LUT2 #(
    .INIT(4'hE)) 
    \key_data_ff[2]_i_1 
       (.I0(key_current[2]),
        .I1(key_buffer0[2]),
        .O(\key_current_reg[15]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \key_data_ff[3]_i_1 
       (.I0(key_current[3]),
        .I1(key_buffer0[3]),
        .O(\key_current_reg[15]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \key_data_ff[4]_i_1 
       (.I0(key_current[4]),
        .I1(key_buffer0[4]),
        .O(\key_current_reg[15]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \key_data_ff[5]_i_1 
       (.I0(key_current[5]),
        .I1(key_buffer0[5]),
        .O(\key_current_reg[15]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \key_data_ff[6]_i_1 
       (.I0(key_current[6]),
        .I1(key_buffer0[6]),
        .O(\key_current_reg[15]_0 [6]));
  LUT2 #(
    .INIT(4'hE)) 
    \key_data_ff[7]_i_1 
       (.I0(key_current[7]),
        .I1(key_buffer0[7]),
        .O(\key_current_reg[15]_0 [7]));
  LUT2 #(
    .INIT(4'hE)) 
    \key_data_ff[8]_i_1 
       (.I0(key_current[8]),
        .I1(key_buffer0[8]),
        .O(\key_current_reg[15]_0 [8]));
  LUT2 #(
    .INIT(4'hE)) 
    \key_data_ff[9]_i_1 
       (.I0(key_current[9]),
        .I1(key_buffer0[9]),
        .O(\key_current_reg[15]_0 [9]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    key_data_vld_out_INST_0
       (.I0(key_data_vld_out_INST_0_i_1_n_0),
        .I1(key_data_vld_out_INST_0_i_2_n_0),
        .I2(key_data_vld_out_INST_0_i_3_n_0),
        .I3(key_data_vld_out_INST_0_i_4_n_0),
        .I4(key_data_vld_out_INST_0_i_5_n_0),
        .I5(key_data_vld_out_INST_0_i_6_n_0),
        .O(key_data_vld_out));
  LUT6 #(
    .INIT(64'hFFFFFFFFBAFFBABA)) 
    key_data_vld_out_INST_0_i_1
       (.I0(key_data_vld_out_INST_0_i_7_n_0),
        .I1(\key_current_reg[15]_0 [7]),
        .I2(Q[7]),
        .I3(\key_current_reg[15]_0 [6]),
        .I4(Q[6]),
        .I5(key_data_vld_out_INST_0_i_8_n_0),
        .O(key_data_vld_out_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h101010FF10101010)) 
    key_data_vld_out_INST_0_i_2
       (.I0(key_current[8]),
        .I1(key_buffer0[8]),
        .I2(Q[8]),
        .I3(key_current[10]),
        .I4(key_buffer0[10]),
        .I5(Q[10]),
        .O(key_data_vld_out_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'h101010FF10101010)) 
    key_data_vld_out_INST_0_i_3
       (.I0(key_current[11]),
        .I1(key_buffer0[11]),
        .I2(Q[11]),
        .I3(key_current[9]),
        .I4(key_buffer0[9]),
        .I5(Q[9]),
        .O(key_data_vld_out_INST_0_i_3_n_0));
  LUT6 #(
    .INIT(64'h101010FF10101010)) 
    key_data_vld_out_INST_0_i_4
       (.I0(key_current[0]),
        .I1(key_buffer0[0]),
        .I2(Q[0]),
        .I3(key_current[2]),
        .I4(key_buffer0[2]),
        .I5(Q[2]),
        .O(key_data_vld_out_INST_0_i_4_n_0));
  LUT6 #(
    .INIT(64'h101010FF10101010)) 
    key_data_vld_out_INST_0_i_5
       (.I0(key_current[3]),
        .I1(key_buffer0[3]),
        .I2(Q[3]),
        .I3(key_current[1]),
        .I4(key_buffer0[1]),
        .I5(Q[1]),
        .O(key_data_vld_out_INST_0_i_5_n_0));
  LUT6 #(
    .INIT(64'h101010FF10101010)) 
    key_data_vld_out_INST_0_i_6
       (.I0(key_current[13]),
        .I1(key_buffer0[13]),
        .I2(Q[13]),
        .I3(key_current[12]),
        .I4(key_buffer0[12]),
        .I5(Q[12]),
        .O(key_data_vld_out_INST_0_i_6_n_0));
  LUT6 #(
    .INIT(64'h101010FF10101010)) 
    key_data_vld_out_INST_0_i_7
       (.I0(key_current[5]),
        .I1(key_buffer0[5]),
        .I2(Q[5]),
        .I3(key_current[4]),
        .I4(key_buffer0[4]),
        .I5(Q[4]),
        .O(key_data_vld_out_INST_0_i_7_n_0));
  LUT6 #(
    .INIT(64'h101010FF10101010)) 
    key_data_vld_out_INST_0_i_8
       (.I0(key_current[15]),
        .I1(key_buffer0[15]),
        .I2(Q[15]),
        .I3(key_current[14]),
        .I4(key_buffer0[14]),
        .I5(Q[14]),
        .O(key_data_vld_out_INST_0_i_8_n_0));
  LUT6 #(
    .INIT(64'hF0F0F0F0FFF1F1F1)) 
    \key_id[0]_i_1 
       (.I0(key_buffer0[11]),
        .I1(key_current[11]),
        .I2(\key_id[0]_i_2_n_0 ),
        .I3(\key_id[0]_i_3_n_0 ),
        .I4(\key_current_reg[15]_0 [10]),
        .I5(\key_id[0]_i_4_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h111011101110FFFF)) 
    \key_id[0]_i_2 
       (.I0(key_current[13]),
        .I1(key_buffer0[13]),
        .I2(key_current[14]),
        .I3(key_buffer0[14]),
        .I4(key_buffer0[15]),
        .I5(key_current[15]),
        .O(\key_id[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA0AAA0A2FFFFFFFF)) 
    \key_id[0]_i_3 
       (.I0(\key_current_reg[15]_0 [8]),
        .I1(\key_current_reg[15]_0 [3]),
        .I2(\key_id[0]_i_5_n_0 ),
        .I3(\key_id[3]_i_6_n_0 ),
        .I4(\key_id[0]_i_6_n_0 ),
        .I5(\key_current_reg[15]_0 [9]),
        .O(\key_id[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h111F)) 
    \key_id[0]_i_4 
       (.I0(key_buffer0[14]),
        .I1(key_current[14]),
        .I2(key_buffer0[12]),
        .I3(key_current[12]),
        .O(\key_id[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h111011101110FFFF)) 
    \key_id[0]_i_5 
       (.I0(key_current[5]),
        .I1(key_buffer0[5]),
        .I2(key_current[6]),
        .I3(key_buffer0[6]),
        .I4(key_buffer0[7]),
        .I5(key_current[7]),
        .O(\key_id[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFF1FFF1FFF10000)) 
    \key_id[0]_i_6 
       (.I0(key_current[1]),
        .I1(key_buffer0[1]),
        .I2(key_current[0]),
        .I3(key_buffer0[0]),
        .I4(key_buffer0[2]),
        .I5(key_current[2]),
        .O(\key_id[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFF7777777777777)) 
    \key_id[1]_i_1 
       (.I0(\key_current_reg[15]_0 [14]),
        .I1(\key_current_reg[15]_0 [15]),
        .I2(\key_id[1]_i_2_n_0 ),
        .I3(\key_id[1]_i_3_n_0 ),
        .I4(\key_current_reg[15]_0 [13]),
        .I5(\key_current_reg[15]_0 [12]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h00000000A2FFFFFF)) 
    \key_id[1]_i_2 
       (.I0(\key_id[1]_i_4_n_0 ),
        .I1(\key_id[3]_i_8_n_0 ),
        .I2(\key_id[3]_i_7_n_0 ),
        .I3(\key_current_reg[15]_0 [7]),
        .I4(\key_current_reg[15]_0 [6]),
        .I5(\key_id[3]_i_5_n_0 ),
        .O(\key_id[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h111F)) 
    \key_id[1]_i_3 
       (.I0(key_buffer0[11]),
        .I1(key_current[11]),
        .I2(key_buffer0[10]),
        .I3(key_current[10]),
        .O(\key_id[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hEEE0)) 
    \key_id[1]_i_4 
       (.I0(key_buffer0[5]),
        .I1(key_current[5]),
        .I2(key_buffer0[4]),
        .I3(key_current[4]),
        .O(\key_id[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFF45)) 
    \key_id[2]_i_1 
       (.I0(\key_id[2]_i_2_n_0 ),
        .I1(\key_id[2]_i_3_n_0 ),
        .I2(\key_id[2]_i_4_n_0 ),
        .I3(\key_id[2]_i_5_n_0 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFF111F)) 
    \key_id[2]_i_2 
       (.I0(key_current[8]),
        .I1(key_buffer0[8]),
        .I2(key_current[9]),
        .I3(key_buffer0[9]),
        .I4(\key_id[1]_i_3_n_0 ),
        .O(\key_id[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFFFF111F)) 
    \key_id[2]_i_3 
       (.I0(key_current[5]),
        .I1(key_buffer0[5]),
        .I2(key_current[7]),
        .I3(key_buffer0[7]),
        .I4(\key_id[3]_i_6_n_0 ),
        .O(\key_id[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFFF111F)) 
    \key_id[2]_i_4 
       (.I0(key_current[0]),
        .I1(key_buffer0[0]),
        .I2(key_current[1]),
        .I3(key_buffer0[1]),
        .I4(\key_id[3]_i_7_n_0 ),
        .O(\key_id[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFF111F)) 
    \key_id[2]_i_5 
       (.I0(key_current[13]),
        .I1(key_buffer0[13]),
        .I2(key_current[15]),
        .I3(key_buffer0[15]),
        .I4(\key_id[0]_i_4_n_0 ),
        .O(\key_id[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \key_id[3]_i_1 
       (.I0(\key_id[3]_i_3_n_0 ),
        .I1(\key_id[3]_i_4_n_0 ),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \key_id[3]_i_2 
       (.I0(\key_id[3]_i_3_n_0 ),
        .I1(\key_id[3]_i_4_n_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFABFF)) 
    \key_id[3]_i_3 
       (.I0(\key_id[0]_i_4_n_0 ),
        .I1(key_buffer0[15]),
        .I2(key_current[15]),
        .I3(\key_current_reg[15]_0 [13]),
        .I4(\key_id[1]_i_3_n_0 ),
        .I5(\key_id[3]_i_5_n_0 ),
        .O(\key_id[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFABFF)) 
    \key_id[3]_i_4 
       (.I0(\key_id[3]_i_6_n_0 ),
        .I1(key_buffer0[7]),
        .I2(key_current[7]),
        .I3(\key_current_reg[15]_0 [5]),
        .I4(\key_id[3]_i_7_n_0 ),
        .I5(\key_id[3]_i_8_n_0 ),
        .O(\key_id[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h111F)) 
    \key_id[3]_i_5 
       (.I0(key_buffer0[9]),
        .I1(key_current[9]),
        .I2(key_buffer0[8]),
        .I3(key_current[8]),
        .O(\key_id[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h111F)) 
    \key_id[3]_i_6 
       (.I0(key_buffer0[6]),
        .I1(key_current[6]),
        .I2(key_buffer0[4]),
        .I3(key_current[4]),
        .O(\key_id[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h111F)) 
    \key_id[3]_i_7 
       (.I0(key_buffer0[3]),
        .I1(key_current[3]),
        .I2(key_buffer0[2]),
        .I3(key_current[2]),
        .O(\key_id[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h111F)) 
    \key_id[3]_i_8 
       (.I0(key_buffer0[1]),
        .I1(key_current[1]),
        .I2(key_buffer0[0]),
        .I3(key_current[0]),
        .O(\key_id[3]_i_8_n_0 ));
endmodule

(* ORIG_REF_NAME = "key_scan" *) 
module keyboard_0_key_scan
   (Q,
    \key_data_reg[15]_0 ,
    clk_ms,
    \row_reg[3]_0 ,
    col_in);
  output [3:0]Q;
  output [15:0]\key_data_reg[15]_0 ;
  input clk_ms;
  input \row_reg[3]_0 ;
  input [3:0]col_in;

  wire [3:0]Q;
  wire clk_ms;
  wire [3:0]col_in;
  wire \key_data[0]_i_1_n_0 ;
  wire \key_data[10]_i_1_n_0 ;
  wire \key_data[11]_i_1_n_0 ;
  wire \key_data[11]_i_2_n_0 ;
  wire \key_data[11]_i_3_n_0 ;
  wire \key_data[15]_i_1_n_0 ;
  wire \key_data[15]_i_2_n_0 ;
  wire \key_data[1]_i_1_n_0 ;
  wire \key_data[2]_i_1_n_0 ;
  wire \key_data[3]_i_1_n_0 ;
  wire \key_data[3]_i_2_n_0 ;
  wire \key_data[3]_i_3_n_0 ;
  wire \key_data[4]_i_1_n_0 ;
  wire \key_data[5]_i_1_n_0 ;
  wire \key_data[6]_i_1_n_0 ;
  wire \key_data[7]_i_1_n_0 ;
  wire \key_data[7]_i_2_n_0 ;
  wire \key_data[7]_i_3_n_0 ;
  wire \key_data[8]_i_1_n_0 ;
  wire \key_data[9]_i_1_n_0 ;
  wire [15:0]\key_data_reg[15]_0 ;
  wire \row_reg[3]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \key_data[0]_i_1 
       (.I0(Q[3]),
        .I1(col_in[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\key_data[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \key_data[10]_i_1 
       (.I0(Q[3]),
        .I1(col_in[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\key_data[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h822A)) 
    \key_data[11]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[0]),
        .O(\key_data[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h97FF)) 
    \key_data[11]_i_2 
       (.I0(Q[0]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\key_data[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \key_data[11]_i_3 
       (.I0(Q[3]),
        .I1(col_in[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\key_data[11]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h977F)) 
    \key_data[15]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[0]),
        .O(\key_data[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h97FF)) 
    \key_data[15]_i_2 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(\key_data[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \key_data[1]_i_1 
       (.I0(Q[3]),
        .I1(col_in[1]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\key_data[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \key_data[2]_i_1 
       (.I0(Q[3]),
        .I1(col_in[2]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\key_data[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h9700)) 
    \key_data[3]_i_1 
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\key_data[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hD77F)) 
    \key_data[3]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(\key_data[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \key_data[3]_i_3 
       (.I0(Q[3]),
        .I1(col_in[3]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\key_data[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \key_data[4]_i_1 
       (.I0(Q[3]),
        .I1(col_in[0]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(\key_data[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \key_data[5]_i_1 
       (.I0(Q[3]),
        .I1(col_in[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(\key_data[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \key_data[6]_i_1 
       (.I0(Q[3]),
        .I1(col_in[2]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(\key_data[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h822A)) 
    \key_data[7]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[0]),
        .O(\key_data[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h97FF)) 
    \key_data[7]_i_2 
       (.I0(Q[0]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(\key_data[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \key_data[7]_i_3 
       (.I0(Q[3]),
        .I1(col_in[3]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(\key_data[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \key_data[8]_i_1 
       (.I0(Q[3]),
        .I1(col_in[0]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\key_data[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \key_data[9]_i_1 
       (.I0(Q[3]),
        .I1(col_in[1]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\key_data[9]_i_1_n_0 ));
  FDSE #(
    .IS_C_INVERTED(1'b1)) 
    \key_data_reg[0] 
       (.C(clk_ms),
        .CE(\key_data[3]_i_2_n_0 ),
        .D(\key_data[0]_i_1_n_0 ),
        .Q(\key_data_reg[15]_0 [0]),
        .S(\key_data[3]_i_1_n_0 ));
  FDSE #(
    .IS_C_INVERTED(1'b1)) 
    \key_data_reg[10] 
       (.C(clk_ms),
        .CE(\key_data[11]_i_2_n_0 ),
        .D(\key_data[10]_i_1_n_0 ),
        .Q(\key_data_reg[15]_0 [10]),
        .S(\key_data[11]_i_1_n_0 ));
  FDSE #(
    .IS_C_INVERTED(1'b1)) 
    \key_data_reg[11] 
       (.C(clk_ms),
        .CE(\key_data[11]_i_2_n_0 ),
        .D(\key_data[11]_i_3_n_0 ),
        .Q(\key_data_reg[15]_0 [11]),
        .S(\key_data[11]_i_1_n_0 ));
  FDSE #(
    .IS_C_INVERTED(1'b1)) 
    \key_data_reg[12] 
       (.C(clk_ms),
        .CE(\key_data[15]_i_2_n_0 ),
        .D(col_in[0]),
        .Q(\key_data_reg[15]_0 [12]),
        .S(\key_data[15]_i_1_n_0 ));
  FDSE #(
    .IS_C_INVERTED(1'b1)) 
    \key_data_reg[13] 
       (.C(clk_ms),
        .CE(\key_data[15]_i_2_n_0 ),
        .D(col_in[1]),
        .Q(\key_data_reg[15]_0 [13]),
        .S(\key_data[15]_i_1_n_0 ));
  FDSE #(
    .IS_C_INVERTED(1'b1)) 
    \key_data_reg[14] 
       (.C(clk_ms),
        .CE(\key_data[15]_i_2_n_0 ),
        .D(col_in[2]),
        .Q(\key_data_reg[15]_0 [14]),
        .S(\key_data[15]_i_1_n_0 ));
  FDSE #(
    .IS_C_INVERTED(1'b1)) 
    \key_data_reg[15] 
       (.C(clk_ms),
        .CE(\key_data[15]_i_2_n_0 ),
        .D(col_in[3]),
        .Q(\key_data_reg[15]_0 [15]),
        .S(\key_data[15]_i_1_n_0 ));
  FDSE #(
    .IS_C_INVERTED(1'b1)) 
    \key_data_reg[1] 
       (.C(clk_ms),
        .CE(\key_data[3]_i_2_n_0 ),
        .D(\key_data[1]_i_1_n_0 ),
        .Q(\key_data_reg[15]_0 [1]),
        .S(\key_data[3]_i_1_n_0 ));
  FDSE #(
    .IS_C_INVERTED(1'b1)) 
    \key_data_reg[2] 
       (.C(clk_ms),
        .CE(\key_data[3]_i_2_n_0 ),
        .D(\key_data[2]_i_1_n_0 ),
        .Q(\key_data_reg[15]_0 [2]),
        .S(\key_data[3]_i_1_n_0 ));
  FDSE #(
    .IS_C_INVERTED(1'b1)) 
    \key_data_reg[3] 
       (.C(clk_ms),
        .CE(\key_data[3]_i_2_n_0 ),
        .D(\key_data[3]_i_3_n_0 ),
        .Q(\key_data_reg[15]_0 [3]),
        .S(\key_data[3]_i_1_n_0 ));
  FDSE #(
    .IS_C_INVERTED(1'b1)) 
    \key_data_reg[4] 
       (.C(clk_ms),
        .CE(\key_data[7]_i_2_n_0 ),
        .D(\key_data[4]_i_1_n_0 ),
        .Q(\key_data_reg[15]_0 [4]),
        .S(\key_data[7]_i_1_n_0 ));
  FDSE #(
    .IS_C_INVERTED(1'b1)) 
    \key_data_reg[5] 
       (.C(clk_ms),
        .CE(\key_data[7]_i_2_n_0 ),
        .D(\key_data[5]_i_1_n_0 ),
        .Q(\key_data_reg[15]_0 [5]),
        .S(\key_data[7]_i_1_n_0 ));
  FDSE #(
    .IS_C_INVERTED(1'b1)) 
    \key_data_reg[6] 
       (.C(clk_ms),
        .CE(\key_data[7]_i_2_n_0 ),
        .D(\key_data[6]_i_1_n_0 ),
        .Q(\key_data_reg[15]_0 [6]),
        .S(\key_data[7]_i_1_n_0 ));
  FDSE #(
    .IS_C_INVERTED(1'b1)) 
    \key_data_reg[7] 
       (.C(clk_ms),
        .CE(\key_data[7]_i_2_n_0 ),
        .D(\key_data[7]_i_3_n_0 ),
        .Q(\key_data_reg[15]_0 [7]),
        .S(\key_data[7]_i_1_n_0 ));
  FDSE #(
    .IS_C_INVERTED(1'b1)) 
    \key_data_reg[8] 
       (.C(clk_ms),
        .CE(\key_data[11]_i_2_n_0 ),
        .D(\key_data[8]_i_1_n_0 ),
        .Q(\key_data_reg[15]_0 [8]),
        .S(\key_data[11]_i_1_n_0 ));
  FDSE #(
    .IS_C_INVERTED(1'b1)) 
    \key_data_reg[9] 
       (.C(clk_ms),
        .CE(\key_data[11]_i_2_n_0 ),
        .D(\key_data[9]_i_1_n_0 ),
        .Q(\key_data_reg[15]_0 [9]),
        .S(\key_data[11]_i_1_n_0 ));
  FDCE \row_reg[0] 
       (.C(clk_ms),
        .CE(1'b1),
        .CLR(\row_reg[3]_0 ),
        .D(Q[3]),
        .Q(Q[0]));
  FDPE \row_reg[1] 
       (.C(clk_ms),
        .CE(1'b1),
        .D(Q[0]),
        .PRE(\row_reg[3]_0 ),
        .Q(Q[1]));
  FDPE \row_reg[2] 
       (.C(clk_ms),
        .CE(1'b1),
        .D(Q[1]),
        .PRE(\row_reg[3]_0 ),
        .Q(Q[2]));
  FDPE \row_reg[3] 
       (.C(clk_ms),
        .CE(1'b1),
        .D(Q[2]),
        .PRE(\row_reg[3]_0 ),
        .Q(Q[3]));
endmodule

(* ORIG_REF_NAME = "keyboard_top" *) 
module keyboard_0_keyboard_top
   (Q,
    key_id_out,
    key_data_vld_out,
    clk_in,
    col_in,
    rst_n);
  output [3:0]Q;
  output [3:0]key_id_out;
  output key_data_vld_out;
  input clk_in;
  input [3:0]col_in;
  input rst_n;

  wire [3:0]Q;
  wire clk_20ms;
  wire clk_in;
  wire clk_ms;
  wire [3:0]col_in;
  wire [15:0]key_data;
  wire [15:0]key_data_ff;
  wire [15:0]key_data_out;
  wire key_data_vld_out;
  wire [3:0]key_id_out;
  wire rst_n;
  wire u_clk_div_0_n_1;
  wire u_debounce_0_n_0;
  wire u_debounce_0_n_1;
  wire u_debounce_0_n_2;
  wire u_debounce_0_n_20;
  wire u_debounce_0_n_3;

  FDCE \key_data_ff_reg[0] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(u_clk_div_0_n_1),
        .D(key_data_out[0]),
        .Q(key_data_ff[0]));
  FDCE \key_data_ff_reg[10] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(u_clk_div_0_n_1),
        .D(key_data_out[10]),
        .Q(key_data_ff[10]));
  FDCE \key_data_ff_reg[11] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(u_clk_div_0_n_1),
        .D(key_data_out[11]),
        .Q(key_data_ff[11]));
  FDCE \key_data_ff_reg[12] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(u_clk_div_0_n_1),
        .D(key_data_out[12]),
        .Q(key_data_ff[12]));
  FDCE \key_data_ff_reg[13] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(u_clk_div_0_n_1),
        .D(key_data_out[13]),
        .Q(key_data_ff[13]));
  FDCE \key_data_ff_reg[14] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(u_clk_div_0_n_1),
        .D(key_data_out[14]),
        .Q(key_data_ff[14]));
  FDCE \key_data_ff_reg[15] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(u_clk_div_0_n_1),
        .D(key_data_out[15]),
        .Q(key_data_ff[15]));
  FDCE \key_data_ff_reg[1] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(u_clk_div_0_n_1),
        .D(key_data_out[1]),
        .Q(key_data_ff[1]));
  FDCE \key_data_ff_reg[2] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(u_clk_div_0_n_1),
        .D(key_data_out[2]),
        .Q(key_data_ff[2]));
  FDCE \key_data_ff_reg[3] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(u_clk_div_0_n_1),
        .D(key_data_out[3]),
        .Q(key_data_ff[3]));
  FDCE \key_data_ff_reg[4] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(u_clk_div_0_n_1),
        .D(key_data_out[4]),
        .Q(key_data_ff[4]));
  FDCE \key_data_ff_reg[5] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(u_clk_div_0_n_1),
        .D(key_data_out[5]),
        .Q(key_data_ff[5]));
  FDCE \key_data_ff_reg[6] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(u_clk_div_0_n_1),
        .D(key_data_out[6]),
        .Q(key_data_ff[6]));
  FDCE \key_data_ff_reg[7] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(u_clk_div_0_n_1),
        .D(key_data_out[7]),
        .Q(key_data_ff[7]));
  FDCE \key_data_ff_reg[8] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(u_clk_div_0_n_1),
        .D(key_data_out[8]),
        .Q(key_data_ff[8]));
  FDCE \key_data_ff_reg[9] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(u_clk_div_0_n_1),
        .D(key_data_out[9]),
        .Q(key_data_ff[9]));
  FDCE \key_id_reg[0] 
       (.C(clk_ms),
        .CE(u_debounce_0_n_20),
        .CLR(u_clk_div_0_n_1),
        .D(u_debounce_0_n_3),
        .Q(key_id_out[0]));
  FDCE \key_id_reg[1] 
       (.C(clk_ms),
        .CE(u_debounce_0_n_20),
        .CLR(u_clk_div_0_n_1),
        .D(u_debounce_0_n_2),
        .Q(key_id_out[1]));
  FDCE \key_id_reg[2] 
       (.C(clk_ms),
        .CE(u_debounce_0_n_20),
        .CLR(u_clk_div_0_n_1),
        .D(u_debounce_0_n_1),
        .Q(key_id_out[2]));
  FDCE \key_id_reg[3] 
       (.C(clk_ms),
        .CE(u_debounce_0_n_20),
        .CLR(u_clk_div_0_n_1),
        .D(u_debounce_0_n_0),
        .Q(key_id_out[3]));
  keyboard_0_clk_div u_clk_div_0
       (.CLK(clk_20ms),
        .clk_in(clk_in),
        .clk_ms(clk_ms),
        .rst_n(rst_n),
        .rst_n_0(u_clk_div_0_n_1));
  keyboard_0_debounce u_debounce_0
       (.CLK(clk_20ms),
        .D({u_debounce_0_n_0,u_debounce_0_n_1,u_debounce_0_n_2,u_debounce_0_n_3}),
        .E(u_debounce_0_n_20),
        .Q(key_data_ff),
        .\key_current_reg[15]_0 (key_data_out),
        .\key_current_reg[15]_1 (key_data),
        .key_data_vld_out(key_data_vld_out));
  keyboard_0_key_scan u_key_scan_0
       (.Q(Q),
        .clk_ms(clk_ms),
        .col_in(col_in),
        .\key_data_reg[15]_0 (key_data),
        .\row_reg[3]_0 (u_clk_div_0_n_1));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
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
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
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
`endif
