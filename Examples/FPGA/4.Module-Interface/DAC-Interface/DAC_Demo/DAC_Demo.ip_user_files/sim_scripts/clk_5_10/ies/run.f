-makelib ies_lib/xil_defaultlib -sv \
  "D:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "D:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../DAC_Demo.srcs/sources_1/ip/clk_5_10/clk_5_10_clk_wiz.v" \
  "../../../../DAC_Demo.srcs/sources_1/ip/clk_5_10/clk_5_10.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

