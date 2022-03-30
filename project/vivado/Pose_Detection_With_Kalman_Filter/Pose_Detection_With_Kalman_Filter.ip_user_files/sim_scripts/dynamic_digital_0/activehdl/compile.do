vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../Pose_Detection_With_Kalman_Filter.srcs/sources_1/ip/dynamic_digital_0/src/dynamic_digital.v" \
"../../../../Pose_Detection_With_Kalman_Filter.srcs/sources_1/ip/dynamic_digital_0/sim/dynamic_digital_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

