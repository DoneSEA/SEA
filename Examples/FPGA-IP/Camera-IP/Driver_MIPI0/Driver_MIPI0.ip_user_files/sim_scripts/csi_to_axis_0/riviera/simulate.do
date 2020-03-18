onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+csi_to_axis_0 -L xil_defaultlib -L secureip -O5 xil_defaultlib.csi_to_axis_0

do {wave.do}

view wave
view structure

do {csi_to_axis_0.udo}

run -all

endsim

quit -force
