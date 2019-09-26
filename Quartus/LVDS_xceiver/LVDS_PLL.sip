set_global_assignment -entity "LVDS_PLL" -library "lib_LVDS_PLL" -name IP_TOOL_NAME "altera_pll"
set_global_assignment -entity "LVDS_PLL" -library "lib_LVDS_PLL" -name IP_TOOL_VERSION "18.1"
set_global_assignment -entity "LVDS_PLL" -library "lib_LVDS_PLL" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_LVDS_PLL" -name SPD_FILE [file join $::quartus(sip_path) "LVDS_PLL.spd"]

set_global_assignment -library "lib_LVDS_PLL" -name MISC_FILE [file join $::quartus(sip_path) "LVDS_PLL_sim/LVDS_PLL.vho"]
