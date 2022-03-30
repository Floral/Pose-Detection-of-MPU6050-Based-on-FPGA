vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 \
"../../../../Pose_Detection_With_Kalman_Filter.srcs/sources_1/ip/dynamic_digital_0/src/dynamic_digital.v" \
"../../../../Pose_Detection_With_Kalman_Filter.srcs/sources_1/ip/dynamic_digital_0/sim/dynamic_digital_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

