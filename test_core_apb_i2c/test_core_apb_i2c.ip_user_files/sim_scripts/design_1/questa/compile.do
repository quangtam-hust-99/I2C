vlib work
vlib msim

vlib msim/xil_defaultlib
vlib msim/xpm
vlib msim/microblaze_v10_0_3
vlib msim/axi_lite_ipif_v3_0_4
vlib msim/mdm_v3_2_10
vlib msim/lib_cdc_v1_0_2
vlib msim/proc_sys_reset_v5_0_11
vlib msim/lib_pkg_v1_0_2
vlib msim/axi_apb_bridge_v3_0_11
vlib msim/lib_srl_fifo_v1_0_2
vlib msim/axi_uartlite_v2_0_17
vlib msim/generic_baseblocks_v2_1_0
vlib msim/axi_infrastructure_v1_1_0
vlib msim/axi_register_slice_v2_1_13
vlib msim/fifo_generator_v13_1_4
vlib msim/axi_data_fifo_v2_1_12
vlib msim/axi_crossbar_v2_1_14
vlib msim/lmb_v10_v3_0_9
vlib msim/lmb_bram_if_cntlr_v4_0_12
vlib msim/blk_mem_gen_v8_3_6

vmap xil_defaultlib msim/xil_defaultlib
vmap xpm msim/xpm
vmap microblaze_v10_0_3 msim/microblaze_v10_0_3
vmap axi_lite_ipif_v3_0_4 msim/axi_lite_ipif_v3_0_4
vmap mdm_v3_2_10 msim/mdm_v3_2_10
vmap lib_cdc_v1_0_2 msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_11 msim/proc_sys_reset_v5_0_11
vmap lib_pkg_v1_0_2 msim/lib_pkg_v1_0_2
vmap axi_apb_bridge_v3_0_11 msim/axi_apb_bridge_v3_0_11
vmap lib_srl_fifo_v1_0_2 msim/lib_srl_fifo_v1_0_2
vmap axi_uartlite_v2_0_17 msim/axi_uartlite_v2_0_17
vmap generic_baseblocks_v2_1_0 msim/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_13 msim/axi_register_slice_v2_1_13
vmap fifo_generator_v13_1_4 msim/fifo_generator_v13_1_4
vmap axi_data_fifo_v2_1_12 msim/axi_data_fifo_v2_1_12
vmap axi_crossbar_v2_1_14 msim/axi_crossbar_v2_1_14
vmap lmb_v10_v3_0_9 msim/lmb_v10_v3_0_9
vmap lmb_bram_if_cntlr_v4_0_12 msim/lmb_bram_if_cntlr_v4_0_12
vmap blk_mem_gen_v8_3_6 msim/blk_mem_gen_v8_3_6

vlog -work xil_defaultlib -64 -sv "+incdir+../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/9c7f" "+incdir+../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/9c7f" "+incdir+../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"C:/Xilinx/Vivado/2017.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2017.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2017.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v10_0_3 -64 -93 \
"../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/fe06/hdl/microblaze_v10_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_microblaze_0_0/sim/design_1_microblaze_0_0.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/0ba0/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work mdm_v3_2_10 -64 -93 \
"../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/5967/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_mdm_1_0/sim/design_1_mdm_1_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/9c7f" "+incdir+../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/9c7f" "+incdir+../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0.v" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/52cb/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_11 -64 -93 \
"../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/5db7/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_rst_clk_wiz_1_100M_0/sim/design_1_rst_clk_wiz_1_100M_0.vhd" \

vcom -work lib_pkg_v1_0_2 -64 -93 \
"../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/832a/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work axi_apb_bridge_v3_0_11 -64 -93 \
"../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/8bef/hdl/axi_apb_bridge_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_axi_apb_bridge_0_0/sim/design_1_axi_apb_bridge_0_0.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -64 -93 \
"../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/6039/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_17 -64 -93 \
"../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/1b8b/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_axi_uartlite_0_0/sim/design_1_axi_uartlite_0_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/9c7f" "+incdir+../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/9c7f" "+incdir+../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../bd/design_1/ipshared/a0ef/apb_interface.v" \
"../../../bd/design_1/ipshared/a0ef/div_clk.v" \
"../../../bd/design_1/ipshared/a0ef/fifo_generator.v" \
"../../../bd/design_1/ipshared/a0ef/i2c_master.v" \
"../../../bd/design_1/ipshared/a0ef/top_core_i2c.v" \
"../../../bd/design_1/ip/design_1_top_core_i2c_0_0/sim/design_1_top_core_i2c_0_0.v" \

vlog -work generic_baseblocks_v2_1_0 -64 "+incdir+../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/9c7f" "+incdir+../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/9c7f" "+incdir+../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/f9c1/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0 -64 "+incdir+../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/9c7f" "+incdir+../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/9c7f" "+incdir+../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_13 -64 "+incdir+../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/9c7f" "+incdir+../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/9c7f" "+incdir+../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/55c0/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_1_4 -64 "+incdir+../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/9c7f" "+incdir+../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/9c7f" "+incdir+../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/ebc2/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_1_4 -64 -93 \
"../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/ebc2/hdl/fifo_generator_v13_1_rfs.vhd" \

vlog -work fifo_generator_v13_1_4 -64 "+incdir+../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/9c7f" "+incdir+../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/9c7f" "+incdir+../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/ebc2/hdl/fifo_generator_v13_1_rfs.v" \

vlog -work axi_data_fifo_v2_1_12 -64 "+incdir+../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/9c7f" "+incdir+../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/9c7f" "+incdir+../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/95b9/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_14 -64 "+incdir+../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/9c7f" "+incdir+../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/9c7f" "+incdir+../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/f582/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/9c7f" "+incdir+../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/9c7f" "+incdir+../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \

vcom -work lmb_v10_v3_0_9 -64 -93 \
"../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/162e/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_dlmb_v10_0/sim/design_1_dlmb_v10_0.vhd" \
"../../../bd/design_1/ip/design_1_ilmb_v10_0/sim/design_1_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_12 -64 -93 \
"../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/51e1/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_1/ip/design_1_dlmb_bram_if_cntlr_0/sim/design_1_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/design_1/ip/design_1_ilmb_bram_if_cntlr_0/sim/design_1_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_3_6 -64 "+incdir+../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/9c7f" "+incdir+../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/9c7f" "+incdir+../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/4158/simulation/blk_mem_gen_v8_3.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/9c7f" "+incdir+../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" "+incdir+../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/9c7f" "+incdir+../../../../test_core_apb_i2c.srcs/sources_1/bd/design_1/ipshared/7e3a/hdl" \
"../../../bd/design_1/ip/design_1_lmb_bram_0/sim/design_1_lmb_bram_0.v" \
"../../../bd/design_1/hdl/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"
