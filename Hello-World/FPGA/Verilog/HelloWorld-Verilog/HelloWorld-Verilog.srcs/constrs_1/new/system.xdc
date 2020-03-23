## Clock signal constraint
set_property -dict { PACKAGE_PIN H4  IOSTANDARD LVCMOS33 } [get_ports { xxxx }];
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports { xxxx }];

## IO signal constraint,TMDS_33 or LVCMOS33,xx replaces the pin number,such as F4
set_property -dict { PACKAGE_PIN xx IOSTANDARD TMDS_33  } [get_ports { xxxx }];
set_property -dict { PACKAGE_PIN xx IOSTANDARD LVCMOS33  } [get_ports { xxxx }];