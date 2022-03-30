onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib dynamic_digital_0_opt

do {wave.do}

view wave
view structure
view signals

do {dynamic_digital_0.udo}

run -all

quit -force
