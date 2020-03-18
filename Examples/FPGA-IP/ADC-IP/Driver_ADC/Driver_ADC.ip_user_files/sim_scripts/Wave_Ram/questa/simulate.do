onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib Wave_Ram_opt

do {wave.do}

view wave
view structure
view signals

do {Wave_Ram.udo}

run -all

quit -force
