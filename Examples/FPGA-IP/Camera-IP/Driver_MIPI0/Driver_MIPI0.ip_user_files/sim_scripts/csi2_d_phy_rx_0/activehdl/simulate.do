onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+csi2_d_phy_rx_0 -L xil_defaultlib -L secureip -O5 xil_defaultlib.csi2_d_phy_rx_0

do {wave.do}

view wave
view structure

do {csi2_d_phy_rx_0.udo}

run -all

endsim

quit -force
