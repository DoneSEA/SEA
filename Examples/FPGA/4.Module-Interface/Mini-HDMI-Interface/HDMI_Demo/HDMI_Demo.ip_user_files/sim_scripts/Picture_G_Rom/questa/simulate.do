onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib Picture_G_Rom_opt

do {wave.do}

view wave
view structure
view signals

do {Picture_G_Rom.udo}

run -all

quit -force
