
set_property -dict { PACKAGE_PIN AD11  IOSTANDARD LVDS     } [get_ports { clk_n }]; 
set_property -dict { PACKAGE_PIN AD12  IOSTANDARD LVDS     } [get_ports { clk_p }]; 
set_property -dict { PACKAGE_PIN G19   IOSTANDARD LVCMOS12 } [get_ports { reset }]; 
set_property -dict { PACKAGE_PIN V30   IOSTANDARD LVCMOS33 } [get_ports { scl }]; 
set_property -dict { PACKAGE_PIN V25   IOSTANDARD LVCMOS33 } [get_ports { sda }]; 
set_property -dict { PACKAGE_PIN Y23   IOSTANDARD LVCMOS33 } [get_ports { rx }]; 
set_property -dict { PACKAGE_PIN Y20   IOSTANDARD LVCMOS33 } [get_ports { tx }]; 
set_property -dict { PACKAGE_PIN U27   IOSTANDARD LVCMOS33 } [get_ports { cs }];