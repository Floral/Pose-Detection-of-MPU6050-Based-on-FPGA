// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sun Feb 13 18:27:51 2022
// Host        : LAPTOP-DOA running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/MyDocument/LearningIC/FPGA/Pose_Detection_With_Kalman_Filter/Pose_Detection_With_Kalman_Filter.srcs/sources_1/ip/keyboard_0/keyboard_0_stub.v
// Design      : keyboard_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a75tfgg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "keyboard_top,Vivado 2018.3" *)
module keyboard_0(clk_in, rst_n, col_in, row_out, key_id_out, 
  key_data_vld_out)
/* synthesis syn_black_box black_box_pad_pin="clk_in,rst_n,col_in[3:0],row_out[3:0],key_id_out[3:0],key_data_vld_out" */;
  input clk_in;
  input rst_n;
  input [3:0]col_in;
  output [3:0]row_out;
  output [3:0]key_id_out;
  output key_data_vld_out;
endmodule
