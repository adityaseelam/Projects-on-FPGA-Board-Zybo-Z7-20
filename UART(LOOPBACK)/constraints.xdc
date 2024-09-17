create_clock -name sysclk -period 8.00 -waveform {0 4} [get_ports {CLK}];
set_property -dict { PACKAGE_PIN K17   IOSTANDARD LVCMOS33 } [get_ports { CLK }];

set_property -dict { PACKAGE_PIN W8   IOSTANDARD LVCMOS33 } [get_ports { RX_IN }];

set_property -dict { PACKAGE_PIN V8   IOSTANDARD LVCMOS33 } [get_ports { TX_OUT }];