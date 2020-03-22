set_property -dict {PACKAGE_PIN H4 IOSTANDARD LVCMOS33} [get_ports clk]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {clk}];

set_property -dict { PACKAGE_PIN A10  IOSTANDARD LVCMOS33 } [get_ports {d}];
set_property -dict { PACKAGE_PIN A5  IOSTANDARD LVCMOS33 } [get_ports {q}];
set_property -dict { PACKAGE_PIN A4  IOSTANDARD LVCMOS33 } [get_ports {qb}];

set_property -dict { PACKAGE_PIN C3  IOSTANDARD LVCMOS33 } [get_ports {reset}];