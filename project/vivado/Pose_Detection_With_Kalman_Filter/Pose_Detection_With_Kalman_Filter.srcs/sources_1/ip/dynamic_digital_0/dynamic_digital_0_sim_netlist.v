// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Feb 13 18:27:30 2022
// Host        : LAPTOP-DOA running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/MyDocument/LearningIC/FPGA/Pose_Detection_With_Kalman_Filter/Pose_Detection_With_Kalman_Filter.srcs/sources_1/ip/dynamic_digital_0/dynamic_digital_0_sim_netlist.v
// Design      : dynamic_digital_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a75tfgg484-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dynamic_digital_0,dynamic_digital,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "dynamic_digital,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module dynamic_digital_0
   (clk_in,
    rst_n,
    data_in,
    seg_out,
    dig_out);
  input clk_in;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  input [23:0]data_in;
  output [7:0]seg_out;
  output [5:0]dig_out;

  wire \<const0> ;
  wire clk_in;
  wire [23:0]data_in;
  wire [5:0]dig_out;
  wire rst_n;
  wire [6:0]\^seg_out ;

  assign seg_out[7] = \<const0> ;
  assign seg_out[6:0] = \^seg_out [6:0];
  GND GND
       (.G(\<const0> ));
  dynamic_digital_0_dynamic_digital inst
       (.clk_in(clk_in),
        .data_in(data_in),
        .dig_out(dig_out),
        .rst_n(rst_n),
        .seg_out(\^seg_out ));
endmodule

(* ORIG_REF_NAME = "dynamic_digital" *) 
module dynamic_digital_0_dynamic_digital
   (dig_out,
    seg_out,
    rst_n,
    clk_in,
    data_in);
  output [5:0]dig_out;
  output [6:0]seg_out;
  input rst_n;
  input clk_in;
  input [23:0]data_in;

  wire clk_in;
  wire \cnt0[0]_i_2_n_0 ;
  wire \cnt0[0]_i_3_n_0 ;
  wire \cnt0[0]_i_4_n_0 ;
  wire \cnt0[0]_i_5_n_0 ;
  wire \cnt0[0]_i_6_n_0 ;
  wire \cnt0[12]_i_2_n_0 ;
  wire \cnt0[12]_i_3_n_0 ;
  wire \cnt0[12]_i_4_n_0 ;
  wire \cnt0[12]_i_5_n_0 ;
  wire \cnt0[4]_i_2_n_0 ;
  wire \cnt0[4]_i_3_n_0 ;
  wire \cnt0[4]_i_4_n_0 ;
  wire \cnt0[4]_i_5_n_0 ;
  wire \cnt0[8]_i_2_n_0 ;
  wire \cnt0[8]_i_3_n_0 ;
  wire \cnt0[8]_i_4_n_0 ;
  wire \cnt0[8]_i_5_n_0 ;
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
  wire [2:0]cnt1;
  wire \cnt1[0]_i_1_n_0 ;
  wire \cnt1[1]_i_1_n_0 ;
  wire \cnt1[2]_i_1_n_0 ;
  wire \cnt1[2]_i_2_n_0 ;
  wire \cnt1[2]_i_4_n_0 ;
  wire \cnt1[2]_i_5_n_0 ;
  wire \cnt1[2]_i_6_n_0 ;
  wire \cnt1[2]_i_7_n_0 ;
  wire [23:0]data_in;
  wire [5:0]dig_out;
  wire end_cnt0;
  wire rst_n;
  wire [6:0]seg_out;
  wire \seg_out[6]_INST_0_i_10_n_0 ;
  wire \seg_out[6]_INST_0_i_5_n_0 ;
  wire \seg_out[6]_INST_0_i_6_n_0 ;
  wire \seg_out[6]_INST_0_i_7_n_0 ;
  wire \seg_out[6]_INST_0_i_8_n_0 ;
  wire \seg_out[6]_INST_0_i_9_n_0 ;
  wire [3:0]sel0;
  wire [3:3]\NLW_cnt0_reg[12]_i_1_CO_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h2)) 
    \cnt0[0]_i_2 
       (.I0(cnt0_reg[0]),
        .I1(end_cnt0),
        .O(\cnt0[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt0[0]_i_3 
       (.I0(cnt0_reg[3]),
        .I1(end_cnt0),
        .O(\cnt0[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt0[0]_i_4 
       (.I0(cnt0_reg[2]),
        .I1(end_cnt0),
        .O(\cnt0[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt0[0]_i_5 
       (.I0(cnt0_reg[1]),
        .I1(end_cnt0),
        .O(\cnt0[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \cnt0[0]_i_6 
       (.I0(cnt0_reg[0]),
        .I1(end_cnt0),
        .O(\cnt0[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt0[12]_i_2 
       (.I0(cnt0_reg[15]),
        .I1(end_cnt0),
        .O(\cnt0[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt0[12]_i_3 
       (.I0(cnt0_reg[14]),
        .I1(end_cnt0),
        .O(\cnt0[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt0[12]_i_4 
       (.I0(cnt0_reg[13]),
        .I1(end_cnt0),
        .O(\cnt0[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt0[12]_i_5 
       (.I0(cnt0_reg[12]),
        .I1(end_cnt0),
        .O(\cnt0[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt0[4]_i_2 
       (.I0(cnt0_reg[7]),
        .I1(end_cnt0),
        .O(\cnt0[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt0[4]_i_3 
       (.I0(cnt0_reg[6]),
        .I1(end_cnt0),
        .O(\cnt0[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt0[4]_i_4 
       (.I0(cnt0_reg[5]),
        .I1(end_cnt0),
        .O(\cnt0[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt0[4]_i_5 
       (.I0(cnt0_reg[4]),
        .I1(end_cnt0),
        .O(\cnt0[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt0[8]_i_2 
       (.I0(cnt0_reg[11]),
        .I1(end_cnt0),
        .O(\cnt0[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt0[8]_i_3 
       (.I0(cnt0_reg[10]),
        .I1(end_cnt0),
        .O(\cnt0[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt0[8]_i_4 
       (.I0(cnt0_reg[9]),
        .I1(end_cnt0),
        .O(\cnt0[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt0[8]_i_5 
       (.I0(cnt0_reg[8]),
        .I1(end_cnt0),
        .O(\cnt0[8]_i_5_n_0 ));
  FDCE \cnt0_reg[0] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(\cnt1[2]_i_2_n_0 ),
        .D(\cnt0_reg[0]_i_1_n_7 ),
        .Q(cnt0_reg[0]));
  CARRY4 \cnt0_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\cnt0_reg[0]_i_1_n_0 ,\cnt0_reg[0]_i_1_n_1 ,\cnt0_reg[0]_i_1_n_2 ,\cnt0_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\cnt0[0]_i_2_n_0 }),
        .O({\cnt0_reg[0]_i_1_n_4 ,\cnt0_reg[0]_i_1_n_5 ,\cnt0_reg[0]_i_1_n_6 ,\cnt0_reg[0]_i_1_n_7 }),
        .S({\cnt0[0]_i_3_n_0 ,\cnt0[0]_i_4_n_0 ,\cnt0[0]_i_5_n_0 ,\cnt0[0]_i_6_n_0 }));
  FDCE \cnt0_reg[10] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(\cnt1[2]_i_2_n_0 ),
        .D(\cnt0_reg[8]_i_1_n_5 ),
        .Q(cnt0_reg[10]));
  FDCE \cnt0_reg[11] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(\cnt1[2]_i_2_n_0 ),
        .D(\cnt0_reg[8]_i_1_n_4 ),
        .Q(cnt0_reg[11]));
  FDCE \cnt0_reg[12] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(\cnt1[2]_i_2_n_0 ),
        .D(\cnt0_reg[12]_i_1_n_7 ),
        .Q(cnt0_reg[12]));
  CARRY4 \cnt0_reg[12]_i_1 
       (.CI(\cnt0_reg[8]_i_1_n_0 ),
        .CO({\NLW_cnt0_reg[12]_i_1_CO_UNCONNECTED [3],\cnt0_reg[12]_i_1_n_1 ,\cnt0_reg[12]_i_1_n_2 ,\cnt0_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt0_reg[12]_i_1_n_4 ,\cnt0_reg[12]_i_1_n_5 ,\cnt0_reg[12]_i_1_n_6 ,\cnt0_reg[12]_i_1_n_7 }),
        .S({\cnt0[12]_i_2_n_0 ,\cnt0[12]_i_3_n_0 ,\cnt0[12]_i_4_n_0 ,\cnt0[12]_i_5_n_0 }));
  FDCE \cnt0_reg[13] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(\cnt1[2]_i_2_n_0 ),
        .D(\cnt0_reg[12]_i_1_n_6 ),
        .Q(cnt0_reg[13]));
  FDCE \cnt0_reg[14] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(\cnt1[2]_i_2_n_0 ),
        .D(\cnt0_reg[12]_i_1_n_5 ),
        .Q(cnt0_reg[14]));
  FDCE \cnt0_reg[15] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(\cnt1[2]_i_2_n_0 ),
        .D(\cnt0_reg[12]_i_1_n_4 ),
        .Q(cnt0_reg[15]));
  FDCE \cnt0_reg[1] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(\cnt1[2]_i_2_n_0 ),
        .D(\cnt0_reg[0]_i_1_n_6 ),
        .Q(cnt0_reg[1]));
  FDCE \cnt0_reg[2] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(\cnt1[2]_i_2_n_0 ),
        .D(\cnt0_reg[0]_i_1_n_5 ),
        .Q(cnt0_reg[2]));
  FDCE \cnt0_reg[3] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(\cnt1[2]_i_2_n_0 ),
        .D(\cnt0_reg[0]_i_1_n_4 ),
        .Q(cnt0_reg[3]));
  FDCE \cnt0_reg[4] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(\cnt1[2]_i_2_n_0 ),
        .D(\cnt0_reg[4]_i_1_n_7 ),
        .Q(cnt0_reg[4]));
  CARRY4 \cnt0_reg[4]_i_1 
       (.CI(\cnt0_reg[0]_i_1_n_0 ),
        .CO({\cnt0_reg[4]_i_1_n_0 ,\cnt0_reg[4]_i_1_n_1 ,\cnt0_reg[4]_i_1_n_2 ,\cnt0_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt0_reg[4]_i_1_n_4 ,\cnt0_reg[4]_i_1_n_5 ,\cnt0_reg[4]_i_1_n_6 ,\cnt0_reg[4]_i_1_n_7 }),
        .S({\cnt0[4]_i_2_n_0 ,\cnt0[4]_i_3_n_0 ,\cnt0[4]_i_4_n_0 ,\cnt0[4]_i_5_n_0 }));
  FDCE \cnt0_reg[5] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(\cnt1[2]_i_2_n_0 ),
        .D(\cnt0_reg[4]_i_1_n_6 ),
        .Q(cnt0_reg[5]));
  FDCE \cnt0_reg[6] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(\cnt1[2]_i_2_n_0 ),
        .D(\cnt0_reg[4]_i_1_n_5 ),
        .Q(cnt0_reg[6]));
  FDCE \cnt0_reg[7] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(\cnt1[2]_i_2_n_0 ),
        .D(\cnt0_reg[4]_i_1_n_4 ),
        .Q(cnt0_reg[7]));
  FDCE \cnt0_reg[8] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(\cnt1[2]_i_2_n_0 ),
        .D(\cnt0_reg[8]_i_1_n_7 ),
        .Q(cnt0_reg[8]));
  CARRY4 \cnt0_reg[8]_i_1 
       (.CI(\cnt0_reg[4]_i_1_n_0 ),
        .CO({\cnt0_reg[8]_i_1_n_0 ,\cnt0_reg[8]_i_1_n_1 ,\cnt0_reg[8]_i_1_n_2 ,\cnt0_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt0_reg[8]_i_1_n_4 ,\cnt0_reg[8]_i_1_n_5 ,\cnt0_reg[8]_i_1_n_6 ,\cnt0_reg[8]_i_1_n_7 }),
        .S({\cnt0[8]_i_2_n_0 ,\cnt0[8]_i_3_n_0 ,\cnt0[8]_i_4_n_0 ,\cnt0[8]_i_5_n_0 }));
  FDCE \cnt0_reg[9] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(\cnt1[2]_i_2_n_0 ),
        .D(\cnt0_reg[8]_i_1_n_6 ),
        .Q(cnt0_reg[9]));
  LUT2 #(
    .INIT(4'h6)) 
    \cnt1[0]_i_1 
       (.I0(end_cnt0),
        .I1(cnt1[0]),
        .O(\cnt1[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h5F20)) 
    \cnt1[1]_i_1 
       (.I0(cnt1[0]),
        .I1(cnt1[2]),
        .I2(end_cnt0),
        .I3(cnt1[1]),
        .O(\cnt1[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h3F80)) 
    \cnt1[2]_i_1 
       (.I0(cnt1[1]),
        .I1(cnt1[0]),
        .I2(end_cnt0),
        .I3(cnt1[2]),
        .O(\cnt1[2]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt1[2]_i_2 
       (.I0(rst_n),
        .O(\cnt1[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \cnt1[2]_i_3 
       (.I0(\cnt1[2]_i_4_n_0 ),
        .I1(\cnt1[2]_i_5_n_0 ),
        .I2(\cnt1[2]_i_6_n_0 ),
        .I3(\cnt1[2]_i_7_n_0 ),
        .O(end_cnt0));
  LUT4 #(
    .INIT(16'h0004)) 
    \cnt1[2]_i_4 
       (.I0(cnt0_reg[7]),
        .I1(cnt0_reg[6]),
        .I2(cnt0_reg[5]),
        .I3(cnt0_reg[4]),
        .O(\cnt1[2]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \cnt1[2]_i_5 
       (.I0(cnt0_reg[1]),
        .I1(cnt0_reg[0]),
        .I2(cnt0_reg[3]),
        .I3(cnt0_reg[2]),
        .O(\cnt1[2]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \cnt1[2]_i_6 
       (.I0(cnt0_reg[11]),
        .I1(cnt0_reg[10]),
        .I2(cnt0_reg[9]),
        .I3(cnt0_reg[8]),
        .O(\cnt1[2]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \cnt1[2]_i_7 
       (.I0(cnt0_reg[15]),
        .I1(cnt0_reg[14]),
        .I2(cnt0_reg[13]),
        .I3(cnt0_reg[12]),
        .O(\cnt1[2]_i_7_n_0 ));
  FDCE \cnt1_reg[0] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(\cnt1[2]_i_2_n_0 ),
        .D(\cnt1[0]_i_1_n_0 ),
        .Q(cnt1[0]));
  FDCE \cnt1_reg[1] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(\cnt1[2]_i_2_n_0 ),
        .D(\cnt1[1]_i_1_n_0 ),
        .Q(cnt1[1]));
  FDCE \cnt1_reg[2] 
       (.C(clk_in),
        .CE(1'b1),
        .CLR(\cnt1[2]_i_2_n_0 ),
        .D(\cnt1[2]_i_1_n_0 ),
        .Q(cnt1[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \dig_out[0]_INST_0 
       (.I0(cnt1[1]),
        .I1(cnt1[0]),
        .I2(cnt1[2]),
        .O(dig_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \dig_out[1]_INST_0 
       (.I0(cnt1[0]),
        .I1(cnt1[1]),
        .I2(cnt1[2]),
        .O(dig_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \dig_out[2]_INST_0 
       (.I0(cnt1[1]),
        .I1(cnt1[0]),
        .I2(cnt1[2]),
        .O(dig_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \dig_out[3]_INST_0 
       (.I0(cnt1[1]),
        .I1(cnt1[0]),
        .I2(cnt1[2]),
        .O(dig_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \dig_out[4]_INST_0 
       (.I0(cnt1[1]),
        .I1(cnt1[0]),
        .I2(cnt1[2]),
        .O(dig_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \dig_out[5]_INST_0 
       (.I0(cnt1[0]),
        .I1(cnt1[1]),
        .I2(cnt1[2]),
        .O(dig_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h9FED)) 
    \seg_out[0]_INST_0 
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[3]),
        .O(seg_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h479F)) 
    \seg_out[1]_INST_0 
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .O(seg_out[1]));
  LUT4 #(
    .INIT(16'h75FB)) 
    \seg_out[2]_INST_0 
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[3]),
        .O(seg_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h3EDB)) 
    \seg_out[3]_INST_0 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .O(seg_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFD45)) 
    \seg_out[4]_INST_0 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[3]),
        .O(seg_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hC6EF)) 
    \seg_out[5]_INST_0 
       (.I0(sel0[2]),
        .I1(sel0[3]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .O(seg_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFD6E)) 
    \seg_out[6]_INST_0 
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[3]),
        .O(seg_out[6]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \seg_out[6]_INST_0_i_1 
       (.I0(data_in[22]),
        .I1(\seg_out[6]_INST_0_i_5_n_0 ),
        .I2(\seg_out[6]_INST_0_i_6_n_0 ),
        .I3(\seg_out[6]_INST_0_i_7_n_0 ),
        .I4(data_in[18]),
        .I5(data_in[2]),
        .O(sel0[2]));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \seg_out[6]_INST_0_i_10 
       (.I0(data_in[7]),
        .I1(data_in[15]),
        .I2(data_in[3]),
        .I3(cnt1[1]),
        .I4(cnt1[0]),
        .I5(data_in[11]),
        .O(\seg_out[6]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \seg_out[6]_INST_0_i_2 
       (.I0(data_in[21]),
        .I1(\seg_out[6]_INST_0_i_8_n_0 ),
        .I2(\seg_out[6]_INST_0_i_6_n_0 ),
        .I3(\seg_out[6]_INST_0_i_7_n_0 ),
        .I4(data_in[17]),
        .I5(data_in[1]),
        .O(sel0[1]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \seg_out[6]_INST_0_i_3 
       (.I0(data_in[20]),
        .I1(\seg_out[6]_INST_0_i_9_n_0 ),
        .I2(\seg_out[6]_INST_0_i_6_n_0 ),
        .I3(\seg_out[6]_INST_0_i_7_n_0 ),
        .I4(data_in[16]),
        .I5(data_in[0]),
        .O(sel0[0]));
  LUT6 #(
    .INIT(64'hCFAFCFA0C0AFC0A0)) 
    \seg_out[6]_INST_0_i_4 
       (.I0(data_in[23]),
        .I1(\seg_out[6]_INST_0_i_10_n_0 ),
        .I2(\seg_out[6]_INST_0_i_6_n_0 ),
        .I3(\seg_out[6]_INST_0_i_7_n_0 ),
        .I4(data_in[19]),
        .I5(data_in[3]),
        .O(sel0[3]));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \seg_out[6]_INST_0_i_5 
       (.I0(data_in[6]),
        .I1(data_in[14]),
        .I2(data_in[2]),
        .I3(cnt1[1]),
        .I4(cnt1[0]),
        .I5(data_in[10]),
        .O(\seg_out[6]_INST_0_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h2F)) 
    \seg_out[6]_INST_0_i_6 
       (.I0(cnt1[0]),
        .I1(cnt1[1]),
        .I2(cnt1[2]),
        .O(\seg_out[6]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \seg_out[6]_INST_0_i_7 
       (.I0(cnt1[1]),
        .I1(cnt1[2]),
        .O(\seg_out[6]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \seg_out[6]_INST_0_i_8 
       (.I0(data_in[5]),
        .I1(data_in[13]),
        .I2(data_in[1]),
        .I3(cnt1[1]),
        .I4(cnt1[0]),
        .I5(data_in[9]),
        .O(\seg_out[6]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hCCAAFFF0CCAA00F0)) 
    \seg_out[6]_INST_0_i_9 
       (.I0(data_in[4]),
        .I1(data_in[12]),
        .I2(data_in[0]),
        .I3(cnt1[1]),
        .I4(cnt1[0]),
        .I5(data_in[8]),
        .O(\seg_out[6]_INST_0_i_9_n_0 ));
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
