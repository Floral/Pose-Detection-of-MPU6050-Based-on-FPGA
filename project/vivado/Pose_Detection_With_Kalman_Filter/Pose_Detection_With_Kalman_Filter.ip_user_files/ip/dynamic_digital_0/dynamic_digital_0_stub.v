// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Feb 13 18:27:30 2022
// Host        : LAPTOP-DOA running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/MyDocument/LearningIC/FPGA/Pose_Detection_With_Kalman_Filter/Pose_Detection_With_Kalman_Filter.srcs/sources_1/ip/dynamic_digital_0/dynamic_digital_0_stub.v
// Design      : dynamic_digital_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a75tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "dynamic_digital,Vivado 2018.3" *)
module dynamic_digital_0(clk_in, rst_n, data_in, seg_out, dig_out)
/* synthesis syn_black_box black_box_pad_pin="clk_in,rst_n,data_in[23:0],seg_out[7:0],dig_out[5:0]" */;
  input clk_in;
  input rst_n;
  input [23:0]data_in;
  output [7:0]seg_out;
  output [5:0]dig_out;
endmodule
