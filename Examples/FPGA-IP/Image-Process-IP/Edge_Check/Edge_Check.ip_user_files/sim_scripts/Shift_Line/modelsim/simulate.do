onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xbip_utils_v3_0_9 -L c_reg_fd_v12_0_5 -L c_mux_bit_v12_0_5 -L c_shift_ram_v12_0_12 -L xil_defaultlib -L secureip -lib xil_defaultlib xil_defaultlib.Shift_Line

do {wave.do}

view wave
view structure
view signals

do {Shift_Line.udo}

run -all

quit -force
