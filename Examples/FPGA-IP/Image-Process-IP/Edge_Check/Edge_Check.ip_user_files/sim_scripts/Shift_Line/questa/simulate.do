onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib Shift_Line_opt

do {wave.do}

view wave
view structure
view signals

do {Shift_Line.udo}

run -all

quit -force
