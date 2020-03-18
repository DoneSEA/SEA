onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L secureip -lib xil_defaultlib xil_defaultlib.csi_to_axis_0

do {wave.do}

view wave
view structure
view signals

do {csi_to_axis_0.udo}

run -all

quit -force
