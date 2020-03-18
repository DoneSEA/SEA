onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib csi_to_axis_0_opt

do {wave.do}

view wave
view structure
view signals

do {csi_to_axis_0.udo}

run -all

quit -force
