-makelib ies/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2017.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2017.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies/xpm \
  "C:/Xilinx/Vivado/2017.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies/xil_defaultlib \
  "../../../../test_core_apb_i2c.srcs/sources_1/ip/ila_0/sim/ila_0.v" \
-endlib
-makelib ies/xil_defaultlib \
  glbl.v
-endlib

