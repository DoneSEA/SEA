# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "CS_L" -parent ${Page_0}
  ipgui::add_param $IPINST -name "END" -parent ${Page_0}
  ipgui::add_param $IPINST -name "Factor" -parent ${Page_0}
  ipgui::add_param $IPINST -name "IDLE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SEND_DATA" -parent ${Page_0}
  ipgui::add_param $IPINST -name "SPI_CLK" -parent ${Page_0}


}

proc update_PARAM_VALUE.CS_L { PARAM_VALUE.CS_L } {
	# Procedure called to update CS_L when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.CS_L { PARAM_VALUE.CS_L } {
	# Procedure called to validate CS_L
	return true
}

proc update_PARAM_VALUE.END { PARAM_VALUE.END } {
	# Procedure called to update END when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.END { PARAM_VALUE.END } {
	# Procedure called to validate END
	return true
}

proc update_PARAM_VALUE.Factor { PARAM_VALUE.Factor } {
	# Procedure called to update Factor when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.Factor { PARAM_VALUE.Factor } {
	# Procedure called to validate Factor
	return true
}

proc update_PARAM_VALUE.IDLE { PARAM_VALUE.IDLE } {
	# Procedure called to update IDLE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IDLE { PARAM_VALUE.IDLE } {
	# Procedure called to validate IDLE
	return true
}

proc update_PARAM_VALUE.SEND_DATA { PARAM_VALUE.SEND_DATA } {
	# Procedure called to update SEND_DATA when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SEND_DATA { PARAM_VALUE.SEND_DATA } {
	# Procedure called to validate SEND_DATA
	return true
}

proc update_PARAM_VALUE.SPI_CLK { PARAM_VALUE.SPI_CLK } {
	# Procedure called to update SPI_CLK when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.SPI_CLK { PARAM_VALUE.SPI_CLK } {
	# Procedure called to validate SPI_CLK
	return true
}


proc update_MODELPARAM_VALUE.IDLE { MODELPARAM_VALUE.IDLE PARAM_VALUE.IDLE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IDLE}] ${MODELPARAM_VALUE.IDLE}
}

proc update_MODELPARAM_VALUE.CS_L { MODELPARAM_VALUE.CS_L PARAM_VALUE.CS_L } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.CS_L}] ${MODELPARAM_VALUE.CS_L}
}

proc update_MODELPARAM_VALUE.SEND_DATA { MODELPARAM_VALUE.SEND_DATA PARAM_VALUE.SEND_DATA } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SEND_DATA}] ${MODELPARAM_VALUE.SEND_DATA}
}

proc update_MODELPARAM_VALUE.END { MODELPARAM_VALUE.END PARAM_VALUE.END } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.END}] ${MODELPARAM_VALUE.END}
}

proc update_MODELPARAM_VALUE.SPI_CLK { MODELPARAM_VALUE.SPI_CLK PARAM_VALUE.SPI_CLK } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.SPI_CLK}] ${MODELPARAM_VALUE.SPI_CLK}
}

proc update_MODELPARAM_VALUE.Factor { MODELPARAM_VALUE.Factor PARAM_VALUE.Factor } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.Factor}] ${MODELPARAM_VALUE.Factor}
}

