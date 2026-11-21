## Nexys A7-100T Manchester Encoder/Decoder

## 100 MHz Clock
set_property -dict { PACKAGE_PIN E3 IOSTANDARD LVCMOS33 } [get_ports { clk }]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports { clk }]

## Data input - SW0
set_property -dict { PACKAGE_PIN J15 IOSTANDARD LVCMOS33 } [get_ports { data_in }]

## Enable - SW1
set_property -dict { PACKAGE_PIN L16 IOSTANDARD LVCMOS33 } [get_ports { enable }]

## Reset - Center Push Button BTNC
set_property -dict { PACKAGE_PIN N17 IOSTANDARD LVCMOS33 } [get_ports { reset }]

## Manchester output - LED0
set_property -dict { PACKAGE_PIN H17 IOSTANDARD LVCMOS33 } [get_ports { manchester_out }]

## Decoded data output - LED1
set_property -dict { PACKAGE_PIN K15 IOSTANDARD LVCMOS33 } [get_ports { data_out }]