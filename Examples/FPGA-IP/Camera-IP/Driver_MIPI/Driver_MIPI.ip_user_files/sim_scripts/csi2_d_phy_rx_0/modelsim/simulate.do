onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L secureip -lib xil_defaultlib xil_defaultlib.csi2_d_phy_rx_0

do {wave.do}

view wave
view structure
view signals

do {csi2_d_phy_rx_0.udo}

run -all

quit -force
