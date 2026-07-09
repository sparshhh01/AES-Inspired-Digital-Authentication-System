#====================================================
# Clock
#====================================================

create_clock -period 10.000 -name gclk [get_ports clk]
set_property PACKAGE_PIN F14 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]

set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]

#====================================================
# Buttons
#====================================================

# Reset
set_property PACKAGE_PIN J2 [get_ports rst]
set_property IOSTANDARD LVCMOS33 [get_ports rst]

# Load Password
set_property PACKAGE_PIN J5 [get_ports load]
set_property IOSTANDARD LVCMOS33 [get_ports load]

# Attempt/Login
set_property PACKAGE_PIN H2 [get_ports attempt]
set_property IOSTANDARD LVCMOS33 [get_ports attempt]

#====================================================
# Password Input (16 switches)
#====================================================

set_property PACKAGE_PIN V2 [get_ports {user_password[0]}]
set_property PACKAGE_PIN U2 [get_ports {user_password[1]}]
set_property PACKAGE_PIN U1 [get_ports {user_password[2]}]
set_property PACKAGE_PIN T2 [get_ports {user_password[3]}]
set_property PACKAGE_PIN T1 [get_ports {user_password[4]}]
set_property PACKAGE_PIN R2 [get_ports {user_password[5]}]
set_property PACKAGE_PIN R1 [get_ports {user_password[6]}]
set_property PACKAGE_PIN P2 [get_ports {user_password[7]}]
set_property PACKAGE_PIN P1 [get_ports {user_password[8]}]
set_property PACKAGE_PIN N2 [get_ports {user_password[9]}]
set_property PACKAGE_PIN N1 [get_ports {user_password[10]}]
set_property PACKAGE_PIN M2 [get_ports {user_password[11]}]
set_property PACKAGE_PIN M1 [get_ports {user_password[12]}]
set_property PACKAGE_PIN L1 [get_ports {user_password[13]}]
set_property PACKAGE_PIN K2 [get_ports {user_password[14]}]
set_property PACKAGE_PIN K1 [get_ports {user_password[15]}]

set_property IOSTANDARD LVCMOS33 [get_ports {user_password[*]}]

#====================================================
# LEDs
#====================================================

# Unlock
set_property PACKAGE_PIN G1 [get_ports unlock]
set_property IOSTANDARD LVCMOS33 [get_ports unlock]

# Fail
set_property PACKAGE_PIN G2 [get_ports fail]
set_property IOSTANDARD LVCMOS33 [get_ports fail]

# Locked
set_property PACKAGE_PIN F1 [get_ports locked]
set_property IOSTANDARD LVCMOS33 [get_ports locked]

# Failed Attempt Counter
set_property PACKAGE_PIN F2 [get_ports {count[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {count[0]}]

set_property PACKAGE_PIN E1 [get_ports {count[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {count[1]}]