
##### SETTING UP THE CLK CONSTRAINTS#############
create_clock -name sysclk -period 8.00 -waveform {0 4} [get_ports {CLK}];
set_property -dict { PACKAGE_PIN K17   IOSTANDARD LVCMOS33 } [get_ports { clk }];
######SETTING UP RST CONSTRAINT WHICH IAM GIVING TO A BUTTON#########
set_property -dict { PACKAGE_PIN K18   IOSTANDARD LVCMOS33 } [get_ports { rst }];
          
##### LED PINS IN MY BOARD#######
set_property -dict { PACKAGE_PIN M14   IOSTANDARD LVCMOS33 } [get_ports { leds[0] }];
set_property -dict { PACKAGE_PIN M15   IOSTANDARD LVCMOS33 } [get_ports { leds[1] }];
set_property -dict { PACKAGE_PIN G14   IOSTANDARD LVCMOS33 } [get_ports { leds[2] }]; 
set_property -dict { PACKAGE_PIN D18   IOSTANDARD LVCMOS33 } [get_ports { leds[3] }];
 
