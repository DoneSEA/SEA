onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib Square_Rom_opt

do {wave.do}

view wave
view structure
view signals

do {Square_Rom.udo}

run -all

quit -force
