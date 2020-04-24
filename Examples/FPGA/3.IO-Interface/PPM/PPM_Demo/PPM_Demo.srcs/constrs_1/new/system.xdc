## Clock signal 100 MHz
set_property -dict {PACKAGE_PIN H4 IOSTANDARD LVCMOS33} [get_ports clk_100MHz]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {clk_100MHz}];
#PPM
set_property PACKAGE_PIN A10 [get_ports PPM]
set_property IOSTANDARD LVCMOS33 [get_ports PPM]

#UART0
set_property -dict {PACKAGE_PIN A3 IOSTANDARD LVCMOS33} [get_ports UART0_Rx];
set_property -dict {PACKAGE_PIN A5 IOSTANDARD LVCMOS33} [get_ports UART0_Tx];