## Clock signal 100 MHz
set_property -dict { PACKAGE_PIN H4  IOSTANDARD LVCMOS33 } [get_ports { clk_100MHz}]; #IO_L13P_T2_MRCC_35 Sch=sysclk
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {clk_100MHz}];
#DAC
set_property PACKAGE_PIN L1 [get_ports DAC_Din]
set_property PACKAGE_PIN M1 [get_ports clk_DAC]
set_property PACKAGE_PIN N1 [get_ports DAC_Sync]
set_property IOSTANDARD LVCMOS33 [get_ports DAC_Din]
set_property IOSTANDARD LVCMOS33 [get_ports clk_DAC]
set_property IOSTANDARD LVCMOS33 [get_ports DAC_Sync]

#Key
set_property PACKAGE_PIN C3 [get_ports {Key[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Key[0]}]
set_property PACKAGE_PIN M4 [get_ports {Key[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Key[1]}]