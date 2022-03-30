vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../Pose_Detection_With_Kalman_Filter.srcs/sources_1/ip/keyboard_0/src/clk_div.v" \
"../../../../Pose_Detection_With_Kalman_Filter.srcs/sources_1/ip/keyboard_0/src/debounce.v" \
"../../../../Pose_Detection_With_Kalman_Filter.srcs/sources_1/ip/keyboard_0/src/key_scan.v" \
"../../../../Pose_Detection_With_Kalman_Filter.srcs/sources_1/ip/keyboard_0/src/keyboard_top.v" \
"../../../../Pose_Detection_With_Kalman_Filter.srcs/sources_1/ip/keyboard_0/sim/keyboard_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

