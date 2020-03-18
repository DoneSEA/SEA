## Clock signal 100 MHz
set_property -dict { PACKAGE_PIN H4  IOSTANDARD LVCMOS33 } [get_ports { clk_100MHz}]; #IO_L13P_T2_MRCC_35 Sch=sysclk
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {clk_100MHz}];
#SPI
set_property PACKAGE_PIN B2 [get_ports CS]
set_property PACKAGE_PIN M5 [get_ports MOSI]
set_property PACKAGE_PIN L5 [get_ports MISO]
set_property PACKAGE_PIN H13 [get_ports SCK]

set_property IOSTANDARD LVCMOS33 [get_ports CS]
set_property IOSTANDARD LVCMOS33 [get_ports MOSI]
set_property IOSTANDARD LVCMOS33 [get_ports MISO]
set_property IOSTANDARD LVCMOS33 [get_ports SCK]
#Signal Enable
set_property PACKAGE_PIN M3 [get_ports SPI_EN]
set_property IOSTANDARD LVCMOS33 [get_ports SPI_EN]