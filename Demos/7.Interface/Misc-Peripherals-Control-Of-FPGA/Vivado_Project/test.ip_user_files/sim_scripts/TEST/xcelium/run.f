-makelib xcelium_lib/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/TEST/ip/TEST_test_0_0/sim/TEST_test_0_0.v" \
  "../../../bd/TEST/sim/TEST.v" \
  "../../../bd/TEST/ip/TEST_clk_wiz_0_0/TEST_clk_wiz_0_0_clk_wiz.v" \
  "../../../bd/TEST/ip/TEST_clk_wiz_0_0/TEST_clk_wiz_0_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

