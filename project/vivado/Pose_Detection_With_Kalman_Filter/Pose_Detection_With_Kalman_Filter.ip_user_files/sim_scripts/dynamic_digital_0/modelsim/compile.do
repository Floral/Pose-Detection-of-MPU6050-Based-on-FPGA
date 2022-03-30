vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../../Pose_Detection_With_Kalman_Filter.srcs/sources_1/ip/dynamic_digital_0/src/dynamic_digital.v" \
"../../../../Pose_Detection_With_Kalman_Filter.srcs/sources_1/ip/dynamic_digital_0/sim/dynamic_digital_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

