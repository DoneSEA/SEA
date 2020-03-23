## Clock signal 100 MHz
set_property -dict { PACKAGE_PIN H4  IOSTANDARD LVCMOS33 } [get_ports { clk_100MHz }]; #IO_L13P_T2_MRCC_35 Sch=sysclk
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports { clk_100MHz }];
#UART0
set_property -dict {PACKAGE_PIN A3 IOSTANDARD LVCMOS33} [get_ports uart_rtl_0_rxd];
set_property -dict {PACKAGE_PIN A5 IOSTANDARD LVCMOS33} [get_ports uart_rtl_0_txd];
#Gyro
set_property -dict {PACKAGE_PIN P12 IOSTANDARD LVCMOS33} [get_ports iic_rtl_0_scl_io];
set_property -dict {PACKAGE_PIN P13 IOSTANDARD LVCMOS33} [get_ports iic_rtl_0_sda_io];

set_property PULLUP true [get_ports {iic_rtl_0_scl_io}]
set_property PULLUP true [get_ports {iic_rtl_0_sda_io}]
#Rst
set_property -dict {PACKAGE_PIN D14 IOSTANDARD LVCMOS33} [get_ports reset_rtl_0];