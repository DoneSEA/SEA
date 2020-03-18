onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib csi2_d_phy_rx_0_opt

do {wave.do}

view wave
view structure
view signals

do {csi2_d_phy_rx_0.udo}

run -all

quit -force
