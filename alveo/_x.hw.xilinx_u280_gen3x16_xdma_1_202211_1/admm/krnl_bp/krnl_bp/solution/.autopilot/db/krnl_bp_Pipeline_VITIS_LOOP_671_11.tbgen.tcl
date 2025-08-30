set moduleName krnl_bp_Pipeline_VITIS_LOOP_671_11
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {krnl_bp_Pipeline_VITIS_LOOP_671_11}
set C_modelType { void 0 }
set C_modelArgList {
	{ chunk int 31 regular  }
	{ u_15 float 32 regular {array 8 { 0 1 } 1 1 }  }
	{ u_14 float 32 regular {array 8 { 0 1 } 1 1 }  }
	{ u_13 float 32 regular {array 8 { 0 1 } 1 1 }  }
	{ u_12 float 32 regular {array 8 { 0 1 } 1 1 }  }
	{ u_11 float 32 regular {array 8 { 0 1 } 1 1 }  }
	{ u_10 float 32 regular {array 8 { 0 1 } 1 1 }  }
	{ u_9 float 32 regular {array 8 { 0 1 } 1 1 }  }
	{ u_8 float 32 regular {array 8 { 0 1 } 1 1 }  }
	{ u_7 float 32 regular {array 8 { 0 1 } 1 1 }  }
	{ u_6 float 32 regular {array 8 { 0 1 } 1 1 }  }
	{ u_5 float 32 regular {array 8 { 0 1 } 1 1 }  }
	{ u_4 float 32 regular {array 8 { 0 1 } 1 1 }  }
	{ u_3 float 32 regular {array 8 { 0 1 } 1 1 }  }
	{ u_2 float 32 regular {array 8 { 0 1 } 1 1 }  }
	{ u_1 float 32 regular {array 8 { 0 1 } 1 1 }  }
	{ u float 32 regular {array 8 { 0 1 } 1 1 }  }
	{ x_hat_z float 32 regular {array 8 { 1 3 } 1 1 }  }
	{ x_hat_z_1 float 32 regular {array 8 { 1 3 } 1 1 }  }
	{ x_hat_z_2 float 32 regular {array 8 { 1 3 } 1 1 }  }
	{ x_hat_z_3 float 32 regular {array 8 { 1 3 } 1 1 }  }
	{ x_hat_z_4 float 32 regular {array 8 { 1 3 } 1 1 }  }
	{ x_hat_z_5 float 32 regular {array 8 { 1 3 } 1 1 }  }
	{ x_hat_z_6 float 32 regular {array 8 { 1 3 } 1 1 }  }
	{ x_hat_z_7 float 32 regular {array 8 { 1 3 } 1 1 }  }
	{ x_hat_z_8 float 32 regular {array 8 { 1 3 } 1 1 }  }
	{ x_hat_z_9 float 32 regular {array 8 { 1 3 } 1 1 }  }
	{ x_hat_z_10 float 32 regular {array 8 { 1 3 } 1 1 }  }
	{ x_hat_z_11 float 32 regular {array 8 { 1 3 } 1 1 }  }
	{ x_hat_z_12 float 32 regular {array 8 { 1 3 } 1 1 }  }
	{ x_hat_z_13 float 32 regular {array 8 { 1 3 } 1 1 }  }
	{ x_hat_z_14 float 32 regular {array 8 { 1 3 } 1 1 }  }
	{ x_hat_z_15 float 32 regular {array 8 { 1 3 } 1 1 }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "chunk", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "u_15", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "u_14", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "u_13", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "u_12", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "u_11", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "u_10", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "u_9", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "u_8", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "u_7", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "u_6", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "u_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "u_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "u_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "u_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "u_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "u", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "x_hat_z", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_hat_z_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_hat_z_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_hat_z_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_hat_z_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_hat_z_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_hat_z_6", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_hat_z_7", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_hat_z_8", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_hat_z_9", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_hat_z_10", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_hat_z_11", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_hat_z_12", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_hat_z_13", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_hat_z_14", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "x_hat_z_15", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 172
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ chunk sc_in sc_lv 31 signal 0 } 
	{ u_15_address0 sc_out sc_lv 3 signal 1 } 
	{ u_15_ce0 sc_out sc_logic 1 signal 1 } 
	{ u_15_we0 sc_out sc_logic 1 signal 1 } 
	{ u_15_d0 sc_out sc_lv 32 signal 1 } 
	{ u_15_address1 sc_out sc_lv 3 signal 1 } 
	{ u_15_ce1 sc_out sc_logic 1 signal 1 } 
	{ u_15_q1 sc_in sc_lv 32 signal 1 } 
	{ u_14_address0 sc_out sc_lv 3 signal 2 } 
	{ u_14_ce0 sc_out sc_logic 1 signal 2 } 
	{ u_14_we0 sc_out sc_logic 1 signal 2 } 
	{ u_14_d0 sc_out sc_lv 32 signal 2 } 
	{ u_14_address1 sc_out sc_lv 3 signal 2 } 
	{ u_14_ce1 sc_out sc_logic 1 signal 2 } 
	{ u_14_q1 sc_in sc_lv 32 signal 2 } 
	{ u_13_address0 sc_out sc_lv 3 signal 3 } 
	{ u_13_ce0 sc_out sc_logic 1 signal 3 } 
	{ u_13_we0 sc_out sc_logic 1 signal 3 } 
	{ u_13_d0 sc_out sc_lv 32 signal 3 } 
	{ u_13_address1 sc_out sc_lv 3 signal 3 } 
	{ u_13_ce1 sc_out sc_logic 1 signal 3 } 
	{ u_13_q1 sc_in sc_lv 32 signal 3 } 
	{ u_12_address0 sc_out sc_lv 3 signal 4 } 
	{ u_12_ce0 sc_out sc_logic 1 signal 4 } 
	{ u_12_we0 sc_out sc_logic 1 signal 4 } 
	{ u_12_d0 sc_out sc_lv 32 signal 4 } 
	{ u_12_address1 sc_out sc_lv 3 signal 4 } 
	{ u_12_ce1 sc_out sc_logic 1 signal 4 } 
	{ u_12_q1 sc_in sc_lv 32 signal 4 } 
	{ u_11_address0 sc_out sc_lv 3 signal 5 } 
	{ u_11_ce0 sc_out sc_logic 1 signal 5 } 
	{ u_11_we0 sc_out sc_logic 1 signal 5 } 
	{ u_11_d0 sc_out sc_lv 32 signal 5 } 
	{ u_11_address1 sc_out sc_lv 3 signal 5 } 
	{ u_11_ce1 sc_out sc_logic 1 signal 5 } 
	{ u_11_q1 sc_in sc_lv 32 signal 5 } 
	{ u_10_address0 sc_out sc_lv 3 signal 6 } 
	{ u_10_ce0 sc_out sc_logic 1 signal 6 } 
	{ u_10_we0 sc_out sc_logic 1 signal 6 } 
	{ u_10_d0 sc_out sc_lv 32 signal 6 } 
	{ u_10_address1 sc_out sc_lv 3 signal 6 } 
	{ u_10_ce1 sc_out sc_logic 1 signal 6 } 
	{ u_10_q1 sc_in sc_lv 32 signal 6 } 
	{ u_9_address0 sc_out sc_lv 3 signal 7 } 
	{ u_9_ce0 sc_out sc_logic 1 signal 7 } 
	{ u_9_we0 sc_out sc_logic 1 signal 7 } 
	{ u_9_d0 sc_out sc_lv 32 signal 7 } 
	{ u_9_address1 sc_out sc_lv 3 signal 7 } 
	{ u_9_ce1 sc_out sc_logic 1 signal 7 } 
	{ u_9_q1 sc_in sc_lv 32 signal 7 } 
	{ u_8_address0 sc_out sc_lv 3 signal 8 } 
	{ u_8_ce0 sc_out sc_logic 1 signal 8 } 
	{ u_8_we0 sc_out sc_logic 1 signal 8 } 
	{ u_8_d0 sc_out sc_lv 32 signal 8 } 
	{ u_8_address1 sc_out sc_lv 3 signal 8 } 
	{ u_8_ce1 sc_out sc_logic 1 signal 8 } 
	{ u_8_q1 sc_in sc_lv 32 signal 8 } 
	{ u_7_address0 sc_out sc_lv 3 signal 9 } 
	{ u_7_ce0 sc_out sc_logic 1 signal 9 } 
	{ u_7_we0 sc_out sc_logic 1 signal 9 } 
	{ u_7_d0 sc_out sc_lv 32 signal 9 } 
	{ u_7_address1 sc_out sc_lv 3 signal 9 } 
	{ u_7_ce1 sc_out sc_logic 1 signal 9 } 
	{ u_7_q1 sc_in sc_lv 32 signal 9 } 
	{ u_6_address0 sc_out sc_lv 3 signal 10 } 
	{ u_6_ce0 sc_out sc_logic 1 signal 10 } 
	{ u_6_we0 sc_out sc_logic 1 signal 10 } 
	{ u_6_d0 sc_out sc_lv 32 signal 10 } 
	{ u_6_address1 sc_out sc_lv 3 signal 10 } 
	{ u_6_ce1 sc_out sc_logic 1 signal 10 } 
	{ u_6_q1 sc_in sc_lv 32 signal 10 } 
	{ u_5_address0 sc_out sc_lv 3 signal 11 } 
	{ u_5_ce0 sc_out sc_logic 1 signal 11 } 
	{ u_5_we0 sc_out sc_logic 1 signal 11 } 
	{ u_5_d0 sc_out sc_lv 32 signal 11 } 
	{ u_5_address1 sc_out sc_lv 3 signal 11 } 
	{ u_5_ce1 sc_out sc_logic 1 signal 11 } 
	{ u_5_q1 sc_in sc_lv 32 signal 11 } 
	{ u_4_address0 sc_out sc_lv 3 signal 12 } 
	{ u_4_ce0 sc_out sc_logic 1 signal 12 } 
	{ u_4_we0 sc_out sc_logic 1 signal 12 } 
	{ u_4_d0 sc_out sc_lv 32 signal 12 } 
	{ u_4_address1 sc_out sc_lv 3 signal 12 } 
	{ u_4_ce1 sc_out sc_logic 1 signal 12 } 
	{ u_4_q1 sc_in sc_lv 32 signal 12 } 
	{ u_3_address0 sc_out sc_lv 3 signal 13 } 
	{ u_3_ce0 sc_out sc_logic 1 signal 13 } 
	{ u_3_we0 sc_out sc_logic 1 signal 13 } 
	{ u_3_d0 sc_out sc_lv 32 signal 13 } 
	{ u_3_address1 sc_out sc_lv 3 signal 13 } 
	{ u_3_ce1 sc_out sc_logic 1 signal 13 } 
	{ u_3_q1 sc_in sc_lv 32 signal 13 } 
	{ u_2_address0 sc_out sc_lv 3 signal 14 } 
	{ u_2_ce0 sc_out sc_logic 1 signal 14 } 
	{ u_2_we0 sc_out sc_logic 1 signal 14 } 
	{ u_2_d0 sc_out sc_lv 32 signal 14 } 
	{ u_2_address1 sc_out sc_lv 3 signal 14 } 
	{ u_2_ce1 sc_out sc_logic 1 signal 14 } 
	{ u_2_q1 sc_in sc_lv 32 signal 14 } 
	{ u_1_address0 sc_out sc_lv 3 signal 15 } 
	{ u_1_ce0 sc_out sc_logic 1 signal 15 } 
	{ u_1_we0 sc_out sc_logic 1 signal 15 } 
	{ u_1_d0 sc_out sc_lv 32 signal 15 } 
	{ u_1_address1 sc_out sc_lv 3 signal 15 } 
	{ u_1_ce1 sc_out sc_logic 1 signal 15 } 
	{ u_1_q1 sc_in sc_lv 32 signal 15 } 
	{ u_address0 sc_out sc_lv 3 signal 16 } 
	{ u_ce0 sc_out sc_logic 1 signal 16 } 
	{ u_we0 sc_out sc_logic 1 signal 16 } 
	{ u_d0 sc_out sc_lv 32 signal 16 } 
	{ u_address1 sc_out sc_lv 3 signal 16 } 
	{ u_ce1 sc_out sc_logic 1 signal 16 } 
	{ u_q1 sc_in sc_lv 32 signal 16 } 
	{ x_hat_z_address0 sc_out sc_lv 3 signal 17 } 
	{ x_hat_z_ce0 sc_out sc_logic 1 signal 17 } 
	{ x_hat_z_q0 sc_in sc_lv 32 signal 17 } 
	{ x_hat_z_1_address0 sc_out sc_lv 3 signal 18 } 
	{ x_hat_z_1_ce0 sc_out sc_logic 1 signal 18 } 
	{ x_hat_z_1_q0 sc_in sc_lv 32 signal 18 } 
	{ x_hat_z_2_address0 sc_out sc_lv 3 signal 19 } 
	{ x_hat_z_2_ce0 sc_out sc_logic 1 signal 19 } 
	{ x_hat_z_2_q0 sc_in sc_lv 32 signal 19 } 
	{ x_hat_z_3_address0 sc_out sc_lv 3 signal 20 } 
	{ x_hat_z_3_ce0 sc_out sc_logic 1 signal 20 } 
	{ x_hat_z_3_q0 sc_in sc_lv 32 signal 20 } 
	{ x_hat_z_4_address0 sc_out sc_lv 3 signal 21 } 
	{ x_hat_z_4_ce0 sc_out sc_logic 1 signal 21 } 
	{ x_hat_z_4_q0 sc_in sc_lv 32 signal 21 } 
	{ x_hat_z_5_address0 sc_out sc_lv 3 signal 22 } 
	{ x_hat_z_5_ce0 sc_out sc_logic 1 signal 22 } 
	{ x_hat_z_5_q0 sc_in sc_lv 32 signal 22 } 
	{ x_hat_z_6_address0 sc_out sc_lv 3 signal 23 } 
	{ x_hat_z_6_ce0 sc_out sc_logic 1 signal 23 } 
	{ x_hat_z_6_q0 sc_in sc_lv 32 signal 23 } 
	{ x_hat_z_7_address0 sc_out sc_lv 3 signal 24 } 
	{ x_hat_z_7_ce0 sc_out sc_logic 1 signal 24 } 
	{ x_hat_z_7_q0 sc_in sc_lv 32 signal 24 } 
	{ x_hat_z_8_address0 sc_out sc_lv 3 signal 25 } 
	{ x_hat_z_8_ce0 sc_out sc_logic 1 signal 25 } 
	{ x_hat_z_8_q0 sc_in sc_lv 32 signal 25 } 
	{ x_hat_z_9_address0 sc_out sc_lv 3 signal 26 } 
	{ x_hat_z_9_ce0 sc_out sc_logic 1 signal 26 } 
	{ x_hat_z_9_q0 sc_in sc_lv 32 signal 26 } 
	{ x_hat_z_10_address0 sc_out sc_lv 3 signal 27 } 
	{ x_hat_z_10_ce0 sc_out sc_logic 1 signal 27 } 
	{ x_hat_z_10_q0 sc_in sc_lv 32 signal 27 } 
	{ x_hat_z_11_address0 sc_out sc_lv 3 signal 28 } 
	{ x_hat_z_11_ce0 sc_out sc_logic 1 signal 28 } 
	{ x_hat_z_11_q0 sc_in sc_lv 32 signal 28 } 
	{ x_hat_z_12_address0 sc_out sc_lv 3 signal 29 } 
	{ x_hat_z_12_ce0 sc_out sc_logic 1 signal 29 } 
	{ x_hat_z_12_q0 sc_in sc_lv 32 signal 29 } 
	{ x_hat_z_13_address0 sc_out sc_lv 3 signal 30 } 
	{ x_hat_z_13_ce0 sc_out sc_logic 1 signal 30 } 
	{ x_hat_z_13_q0 sc_in sc_lv 32 signal 30 } 
	{ x_hat_z_14_address0 sc_out sc_lv 3 signal 31 } 
	{ x_hat_z_14_ce0 sc_out sc_logic 1 signal 31 } 
	{ x_hat_z_14_q0 sc_in sc_lv 32 signal 31 } 
	{ x_hat_z_15_address0 sc_out sc_lv 3 signal 32 } 
	{ x_hat_z_15_ce0 sc_out sc_logic 1 signal 32 } 
	{ x_hat_z_15_q0 sc_in sc_lv 32 signal 32 } 
	{ grp_fu_1657_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1657_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1657_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_1657_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1657_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "chunk", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "chunk", "role": "default" }} , 
 	{ "name": "u_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_15", "role": "address0" }} , 
 	{ "name": "u_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_15", "role": "ce0" }} , 
 	{ "name": "u_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_15", "role": "we0" }} , 
 	{ "name": "u_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_15", "role": "d0" }} , 
 	{ "name": "u_15_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_15", "role": "address1" }} , 
 	{ "name": "u_15_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_15", "role": "ce1" }} , 
 	{ "name": "u_15_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_15", "role": "q1" }} , 
 	{ "name": "u_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_14", "role": "address0" }} , 
 	{ "name": "u_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_14", "role": "ce0" }} , 
 	{ "name": "u_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_14", "role": "we0" }} , 
 	{ "name": "u_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_14", "role": "d0" }} , 
 	{ "name": "u_14_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_14", "role": "address1" }} , 
 	{ "name": "u_14_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_14", "role": "ce1" }} , 
 	{ "name": "u_14_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_14", "role": "q1" }} , 
 	{ "name": "u_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_13", "role": "address0" }} , 
 	{ "name": "u_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_13", "role": "ce0" }} , 
 	{ "name": "u_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_13", "role": "we0" }} , 
 	{ "name": "u_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_13", "role": "d0" }} , 
 	{ "name": "u_13_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_13", "role": "address1" }} , 
 	{ "name": "u_13_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_13", "role": "ce1" }} , 
 	{ "name": "u_13_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_13", "role": "q1" }} , 
 	{ "name": "u_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_12", "role": "address0" }} , 
 	{ "name": "u_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_12", "role": "ce0" }} , 
 	{ "name": "u_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_12", "role": "we0" }} , 
 	{ "name": "u_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_12", "role": "d0" }} , 
 	{ "name": "u_12_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_12", "role": "address1" }} , 
 	{ "name": "u_12_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_12", "role": "ce1" }} , 
 	{ "name": "u_12_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_12", "role": "q1" }} , 
 	{ "name": "u_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_11", "role": "address0" }} , 
 	{ "name": "u_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_11", "role": "ce0" }} , 
 	{ "name": "u_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_11", "role": "we0" }} , 
 	{ "name": "u_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_11", "role": "d0" }} , 
 	{ "name": "u_11_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_11", "role": "address1" }} , 
 	{ "name": "u_11_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_11", "role": "ce1" }} , 
 	{ "name": "u_11_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_11", "role": "q1" }} , 
 	{ "name": "u_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_10", "role": "address0" }} , 
 	{ "name": "u_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_10", "role": "ce0" }} , 
 	{ "name": "u_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_10", "role": "we0" }} , 
 	{ "name": "u_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_10", "role": "d0" }} , 
 	{ "name": "u_10_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_10", "role": "address1" }} , 
 	{ "name": "u_10_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_10", "role": "ce1" }} , 
 	{ "name": "u_10_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_10", "role": "q1" }} , 
 	{ "name": "u_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_9", "role": "address0" }} , 
 	{ "name": "u_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_9", "role": "ce0" }} , 
 	{ "name": "u_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_9", "role": "we0" }} , 
 	{ "name": "u_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_9", "role": "d0" }} , 
 	{ "name": "u_9_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_9", "role": "address1" }} , 
 	{ "name": "u_9_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_9", "role": "ce1" }} , 
 	{ "name": "u_9_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_9", "role": "q1" }} , 
 	{ "name": "u_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_8", "role": "address0" }} , 
 	{ "name": "u_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_8", "role": "ce0" }} , 
 	{ "name": "u_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_8", "role": "we0" }} , 
 	{ "name": "u_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_8", "role": "d0" }} , 
 	{ "name": "u_8_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_8", "role": "address1" }} , 
 	{ "name": "u_8_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_8", "role": "ce1" }} , 
 	{ "name": "u_8_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_8", "role": "q1" }} , 
 	{ "name": "u_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_7", "role": "address0" }} , 
 	{ "name": "u_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_7", "role": "ce0" }} , 
 	{ "name": "u_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_7", "role": "we0" }} , 
 	{ "name": "u_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_7", "role": "d0" }} , 
 	{ "name": "u_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_7", "role": "address1" }} , 
 	{ "name": "u_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_7", "role": "ce1" }} , 
 	{ "name": "u_7_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_7", "role": "q1" }} , 
 	{ "name": "u_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_6", "role": "address0" }} , 
 	{ "name": "u_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_6", "role": "ce0" }} , 
 	{ "name": "u_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_6", "role": "we0" }} , 
 	{ "name": "u_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_6", "role": "d0" }} , 
 	{ "name": "u_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_6", "role": "address1" }} , 
 	{ "name": "u_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_6", "role": "ce1" }} , 
 	{ "name": "u_6_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_6", "role": "q1" }} , 
 	{ "name": "u_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_5", "role": "address0" }} , 
 	{ "name": "u_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_5", "role": "ce0" }} , 
 	{ "name": "u_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_5", "role": "we0" }} , 
 	{ "name": "u_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_5", "role": "d0" }} , 
 	{ "name": "u_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_5", "role": "address1" }} , 
 	{ "name": "u_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_5", "role": "ce1" }} , 
 	{ "name": "u_5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_5", "role": "q1" }} , 
 	{ "name": "u_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_4", "role": "address0" }} , 
 	{ "name": "u_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_4", "role": "ce0" }} , 
 	{ "name": "u_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_4", "role": "we0" }} , 
 	{ "name": "u_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_4", "role": "d0" }} , 
 	{ "name": "u_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_4", "role": "address1" }} , 
 	{ "name": "u_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_4", "role": "ce1" }} , 
 	{ "name": "u_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_4", "role": "q1" }} , 
 	{ "name": "u_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_3", "role": "address0" }} , 
 	{ "name": "u_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_3", "role": "ce0" }} , 
 	{ "name": "u_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_3", "role": "we0" }} , 
 	{ "name": "u_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_3", "role": "d0" }} , 
 	{ "name": "u_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_3", "role": "address1" }} , 
 	{ "name": "u_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_3", "role": "ce1" }} , 
 	{ "name": "u_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_3", "role": "q1" }} , 
 	{ "name": "u_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_2", "role": "address0" }} , 
 	{ "name": "u_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_2", "role": "ce0" }} , 
 	{ "name": "u_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_2", "role": "we0" }} , 
 	{ "name": "u_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_2", "role": "d0" }} , 
 	{ "name": "u_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_2", "role": "address1" }} , 
 	{ "name": "u_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_2", "role": "ce1" }} , 
 	{ "name": "u_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_2", "role": "q1" }} , 
 	{ "name": "u_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_1", "role": "address0" }} , 
 	{ "name": "u_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_1", "role": "ce0" }} , 
 	{ "name": "u_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_1", "role": "we0" }} , 
 	{ "name": "u_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_1", "role": "d0" }} , 
 	{ "name": "u_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_1", "role": "address1" }} , 
 	{ "name": "u_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_1", "role": "ce1" }} , 
 	{ "name": "u_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_1", "role": "q1" }} , 
 	{ "name": "u_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u", "role": "address0" }} , 
 	{ "name": "u_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u", "role": "ce0" }} , 
 	{ "name": "u_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u", "role": "we0" }} , 
 	{ "name": "u_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u", "role": "d0" }} , 
 	{ "name": "u_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u", "role": "address1" }} , 
 	{ "name": "u_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u", "role": "ce1" }} , 
 	{ "name": "u_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u", "role": "q1" }} , 
 	{ "name": "x_hat_z_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_hat_z", "role": "address0" }} , 
 	{ "name": "x_hat_z_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_hat_z", "role": "ce0" }} , 
 	{ "name": "x_hat_z_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_hat_z", "role": "q0" }} , 
 	{ "name": "x_hat_z_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_hat_z_1", "role": "address0" }} , 
 	{ "name": "x_hat_z_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_hat_z_1", "role": "ce0" }} , 
 	{ "name": "x_hat_z_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_hat_z_1", "role": "q0" }} , 
 	{ "name": "x_hat_z_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_hat_z_2", "role": "address0" }} , 
 	{ "name": "x_hat_z_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_hat_z_2", "role": "ce0" }} , 
 	{ "name": "x_hat_z_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_hat_z_2", "role": "q0" }} , 
 	{ "name": "x_hat_z_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_hat_z_3", "role": "address0" }} , 
 	{ "name": "x_hat_z_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_hat_z_3", "role": "ce0" }} , 
 	{ "name": "x_hat_z_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_hat_z_3", "role": "q0" }} , 
 	{ "name": "x_hat_z_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_hat_z_4", "role": "address0" }} , 
 	{ "name": "x_hat_z_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_hat_z_4", "role": "ce0" }} , 
 	{ "name": "x_hat_z_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_hat_z_4", "role": "q0" }} , 
 	{ "name": "x_hat_z_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_hat_z_5", "role": "address0" }} , 
 	{ "name": "x_hat_z_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_hat_z_5", "role": "ce0" }} , 
 	{ "name": "x_hat_z_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_hat_z_5", "role": "q0" }} , 
 	{ "name": "x_hat_z_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_hat_z_6", "role": "address0" }} , 
 	{ "name": "x_hat_z_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_hat_z_6", "role": "ce0" }} , 
 	{ "name": "x_hat_z_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_hat_z_6", "role": "q0" }} , 
 	{ "name": "x_hat_z_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_hat_z_7", "role": "address0" }} , 
 	{ "name": "x_hat_z_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_hat_z_7", "role": "ce0" }} , 
 	{ "name": "x_hat_z_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_hat_z_7", "role": "q0" }} , 
 	{ "name": "x_hat_z_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_hat_z_8", "role": "address0" }} , 
 	{ "name": "x_hat_z_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_hat_z_8", "role": "ce0" }} , 
 	{ "name": "x_hat_z_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_hat_z_8", "role": "q0" }} , 
 	{ "name": "x_hat_z_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_hat_z_9", "role": "address0" }} , 
 	{ "name": "x_hat_z_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_hat_z_9", "role": "ce0" }} , 
 	{ "name": "x_hat_z_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_hat_z_9", "role": "q0" }} , 
 	{ "name": "x_hat_z_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_hat_z_10", "role": "address0" }} , 
 	{ "name": "x_hat_z_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_hat_z_10", "role": "ce0" }} , 
 	{ "name": "x_hat_z_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_hat_z_10", "role": "q0" }} , 
 	{ "name": "x_hat_z_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_hat_z_11", "role": "address0" }} , 
 	{ "name": "x_hat_z_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_hat_z_11", "role": "ce0" }} , 
 	{ "name": "x_hat_z_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_hat_z_11", "role": "q0" }} , 
 	{ "name": "x_hat_z_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_hat_z_12", "role": "address0" }} , 
 	{ "name": "x_hat_z_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_hat_z_12", "role": "ce0" }} , 
 	{ "name": "x_hat_z_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_hat_z_12", "role": "q0" }} , 
 	{ "name": "x_hat_z_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_hat_z_13", "role": "address0" }} , 
 	{ "name": "x_hat_z_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_hat_z_13", "role": "ce0" }} , 
 	{ "name": "x_hat_z_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_hat_z_13", "role": "q0" }} , 
 	{ "name": "x_hat_z_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_hat_z_14", "role": "address0" }} , 
 	{ "name": "x_hat_z_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_hat_z_14", "role": "ce0" }} , 
 	{ "name": "x_hat_z_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_hat_z_14", "role": "q0" }} , 
 	{ "name": "x_hat_z_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_hat_z_15", "role": "address0" }} , 
 	{ "name": "x_hat_z_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_hat_z_15", "role": "ce0" }} , 
 	{ "name": "x_hat_z_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_hat_z_15", "role": "q0" }} , 
 	{ "name": "grp_fu_1657_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1657_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1657_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1657_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1657_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1657_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1657_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1657_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1657_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1657_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "krnl_bp_Pipeline_VITIS_LOOP_671_11",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "chunk", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_15", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "u_14", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "u_13", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "u_12", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "u_11", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "u_10", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "u_9", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "u_8", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "u_7", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "u_6", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "u_5", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "u_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "u_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "u_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "u_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "u", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "x_hat_z", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_hat_z_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_hat_z_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_hat_z_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_hat_z_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_hat_z_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_hat_z_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_hat_z_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_hat_z_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_hat_z_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_hat_z_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_hat_z_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_hat_z_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_hat_z_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_hat_z_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_hat_z_15", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_671_11", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_33_4_32_1_1_U360", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_33_4_32_1_1_U361", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	krnl_bp_Pipeline_VITIS_LOOP_671_11 {
		chunk {Type I LastRead 0 FirstWrite -1}
		u_15 {Type IO LastRead 0 FirstWrite 9}
		u_14 {Type IO LastRead 0 FirstWrite 9}
		u_13 {Type IO LastRead 0 FirstWrite 9}
		u_12 {Type IO LastRead 0 FirstWrite 9}
		u_11 {Type IO LastRead 0 FirstWrite 9}
		u_10 {Type IO LastRead 0 FirstWrite 9}
		u_9 {Type IO LastRead 0 FirstWrite 9}
		u_8 {Type IO LastRead 0 FirstWrite 9}
		u_7 {Type IO LastRead 0 FirstWrite 9}
		u_6 {Type IO LastRead 0 FirstWrite 9}
		u_5 {Type IO LastRead 0 FirstWrite 9}
		u_4 {Type IO LastRead 0 FirstWrite 9}
		u_3 {Type IO LastRead 0 FirstWrite 9}
		u_2 {Type IO LastRead 0 FirstWrite 9}
		u_1 {Type IO LastRead 0 FirstWrite 9}
		u {Type IO LastRead 0 FirstWrite 9}
		x_hat_z {Type I LastRead 0 FirstWrite -1}
		x_hat_z_1 {Type I LastRead 0 FirstWrite -1}
		x_hat_z_2 {Type I LastRead 0 FirstWrite -1}
		x_hat_z_3 {Type I LastRead 0 FirstWrite -1}
		x_hat_z_4 {Type I LastRead 0 FirstWrite -1}
		x_hat_z_5 {Type I LastRead 0 FirstWrite -1}
		x_hat_z_6 {Type I LastRead 0 FirstWrite -1}
		x_hat_z_7 {Type I LastRead 0 FirstWrite -1}
		x_hat_z_8 {Type I LastRead 0 FirstWrite -1}
		x_hat_z_9 {Type I LastRead 0 FirstWrite -1}
		x_hat_z_10 {Type I LastRead 0 FirstWrite -1}
		x_hat_z_11 {Type I LastRead 0 FirstWrite -1}
		x_hat_z_12 {Type I LastRead 0 FirstWrite -1}
		x_hat_z_13 {Type I LastRead 0 FirstWrite -1}
		x_hat_z_14 {Type I LastRead 0 FirstWrite -1}
		x_hat_z_15 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "11", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "11", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	chunk { ap_none {  { chunk in_data 0 31 } } }
	u_15 { ap_memory {  { u_15_address0 mem_address 1 3 }  { u_15_ce0 mem_ce 1 1 }  { u_15_we0 mem_we 1 1 }  { u_15_d0 mem_din 1 32 }  { u_15_address1 MemPortADDR2 1 3 }  { u_15_ce1 MemPortCE2 1 1 }  { u_15_q1 in_data 0 32 } } }
	u_14 { ap_memory {  { u_14_address0 mem_address 1 3 }  { u_14_ce0 mem_ce 1 1 }  { u_14_we0 mem_we 1 1 }  { u_14_d0 mem_din 1 32 }  { u_14_address1 MemPortADDR2 1 3 }  { u_14_ce1 MemPortCE2 1 1 }  { u_14_q1 in_data 0 32 } } }
	u_13 { ap_memory {  { u_13_address0 mem_address 1 3 }  { u_13_ce0 mem_ce 1 1 }  { u_13_we0 mem_we 1 1 }  { u_13_d0 mem_din 1 32 }  { u_13_address1 MemPortADDR2 1 3 }  { u_13_ce1 MemPortCE2 1 1 }  { u_13_q1 in_data 0 32 } } }
	u_12 { ap_memory {  { u_12_address0 mem_address 1 3 }  { u_12_ce0 mem_ce 1 1 }  { u_12_we0 mem_we 1 1 }  { u_12_d0 mem_din 1 32 }  { u_12_address1 MemPortADDR2 1 3 }  { u_12_ce1 MemPortCE2 1 1 }  { u_12_q1 in_data 0 32 } } }
	u_11 { ap_memory {  { u_11_address0 mem_address 1 3 }  { u_11_ce0 mem_ce 1 1 }  { u_11_we0 mem_we 1 1 }  { u_11_d0 mem_din 1 32 }  { u_11_address1 MemPortADDR2 1 3 }  { u_11_ce1 MemPortCE2 1 1 }  { u_11_q1 in_data 0 32 } } }
	u_10 { ap_memory {  { u_10_address0 mem_address 1 3 }  { u_10_ce0 mem_ce 1 1 }  { u_10_we0 mem_we 1 1 }  { u_10_d0 mem_din 1 32 }  { u_10_address1 MemPortADDR2 1 3 }  { u_10_ce1 MemPortCE2 1 1 }  { u_10_q1 in_data 0 32 } } }
	u_9 { ap_memory {  { u_9_address0 mem_address 1 3 }  { u_9_ce0 mem_ce 1 1 }  { u_9_we0 mem_we 1 1 }  { u_9_d0 mem_din 1 32 }  { u_9_address1 MemPortADDR2 1 3 }  { u_9_ce1 MemPortCE2 1 1 }  { u_9_q1 in_data 0 32 } } }
	u_8 { ap_memory {  { u_8_address0 mem_address 1 3 }  { u_8_ce0 mem_ce 1 1 }  { u_8_we0 mem_we 1 1 }  { u_8_d0 mem_din 1 32 }  { u_8_address1 MemPortADDR2 1 3 }  { u_8_ce1 MemPortCE2 1 1 }  { u_8_q1 in_data 0 32 } } }
	u_7 { ap_memory {  { u_7_address0 mem_address 1 3 }  { u_7_ce0 mem_ce 1 1 }  { u_7_we0 mem_we 1 1 }  { u_7_d0 mem_din 1 32 }  { u_7_address1 MemPortADDR2 1 3 }  { u_7_ce1 MemPortCE2 1 1 }  { u_7_q1 in_data 0 32 } } }
	u_6 { ap_memory {  { u_6_address0 mem_address 1 3 }  { u_6_ce0 mem_ce 1 1 }  { u_6_we0 mem_we 1 1 }  { u_6_d0 mem_din 1 32 }  { u_6_address1 MemPortADDR2 1 3 }  { u_6_ce1 MemPortCE2 1 1 }  { u_6_q1 in_data 0 32 } } }
	u_5 { ap_memory {  { u_5_address0 mem_address 1 3 }  { u_5_ce0 mem_ce 1 1 }  { u_5_we0 mem_we 1 1 }  { u_5_d0 mem_din 1 32 }  { u_5_address1 MemPortADDR2 1 3 }  { u_5_ce1 MemPortCE2 1 1 }  { u_5_q1 in_data 0 32 } } }
	u_4 { ap_memory {  { u_4_address0 mem_address 1 3 }  { u_4_ce0 mem_ce 1 1 }  { u_4_we0 mem_we 1 1 }  { u_4_d0 mem_din 1 32 }  { u_4_address1 MemPortADDR2 1 3 }  { u_4_ce1 MemPortCE2 1 1 }  { u_4_q1 in_data 0 32 } } }
	u_3 { ap_memory {  { u_3_address0 mem_address 1 3 }  { u_3_ce0 mem_ce 1 1 }  { u_3_we0 mem_we 1 1 }  { u_3_d0 mem_din 1 32 }  { u_3_address1 MemPortADDR2 1 3 }  { u_3_ce1 MemPortCE2 1 1 }  { u_3_q1 in_data 0 32 } } }
	u_2 { ap_memory {  { u_2_address0 mem_address 1 3 }  { u_2_ce0 mem_ce 1 1 }  { u_2_we0 mem_we 1 1 }  { u_2_d0 mem_din 1 32 }  { u_2_address1 MemPortADDR2 1 3 }  { u_2_ce1 MemPortCE2 1 1 }  { u_2_q1 in_data 0 32 } } }
	u_1 { ap_memory {  { u_1_address0 mem_address 1 3 }  { u_1_ce0 mem_ce 1 1 }  { u_1_we0 mem_we 1 1 }  { u_1_d0 mem_din 1 32 }  { u_1_address1 MemPortADDR2 1 3 }  { u_1_ce1 MemPortCE2 1 1 }  { u_1_q1 in_data 0 32 } } }
	u { ap_memory {  { u_address0 mem_address 1 3 }  { u_ce0 mem_ce 1 1 }  { u_we0 mem_we 1 1 }  { u_d0 mem_din 1 32 }  { u_address1 MemPortADDR2 1 3 }  { u_ce1 MemPortCE2 1 1 }  { u_q1 in_data 0 32 } } }
	x_hat_z { ap_memory {  { x_hat_z_address0 mem_address 1 3 }  { x_hat_z_ce0 mem_ce 1 1 }  { x_hat_z_q0 in_data 0 32 } } }
	x_hat_z_1 { ap_memory {  { x_hat_z_1_address0 mem_address 1 3 }  { x_hat_z_1_ce0 mem_ce 1 1 }  { x_hat_z_1_q0 in_data 0 32 } } }
	x_hat_z_2 { ap_memory {  { x_hat_z_2_address0 mem_address 1 3 }  { x_hat_z_2_ce0 mem_ce 1 1 }  { x_hat_z_2_q0 in_data 0 32 } } }
	x_hat_z_3 { ap_memory {  { x_hat_z_3_address0 mem_address 1 3 }  { x_hat_z_3_ce0 mem_ce 1 1 }  { x_hat_z_3_q0 in_data 0 32 } } }
	x_hat_z_4 { ap_memory {  { x_hat_z_4_address0 mem_address 1 3 }  { x_hat_z_4_ce0 mem_ce 1 1 }  { x_hat_z_4_q0 in_data 0 32 } } }
	x_hat_z_5 { ap_memory {  { x_hat_z_5_address0 mem_address 1 3 }  { x_hat_z_5_ce0 mem_ce 1 1 }  { x_hat_z_5_q0 in_data 0 32 } } }
	x_hat_z_6 { ap_memory {  { x_hat_z_6_address0 mem_address 1 3 }  { x_hat_z_6_ce0 mem_ce 1 1 }  { x_hat_z_6_q0 in_data 0 32 } } }
	x_hat_z_7 { ap_memory {  { x_hat_z_7_address0 mem_address 1 3 }  { x_hat_z_7_ce0 mem_ce 1 1 }  { x_hat_z_7_q0 in_data 0 32 } } }
	x_hat_z_8 { ap_memory {  { x_hat_z_8_address0 mem_address 1 3 }  { x_hat_z_8_ce0 mem_ce 1 1 }  { x_hat_z_8_q0 in_data 0 32 } } }
	x_hat_z_9 { ap_memory {  { x_hat_z_9_address0 mem_address 1 3 }  { x_hat_z_9_ce0 mem_ce 1 1 }  { x_hat_z_9_q0 in_data 0 32 } } }
	x_hat_z_10 { ap_memory {  { x_hat_z_10_address0 mem_address 1 3 }  { x_hat_z_10_ce0 mem_ce 1 1 }  { x_hat_z_10_q0 in_data 0 32 } } }
	x_hat_z_11 { ap_memory {  { x_hat_z_11_address0 mem_address 1 3 }  { x_hat_z_11_ce0 mem_ce 1 1 }  { x_hat_z_11_q0 in_data 0 32 } } }
	x_hat_z_12 { ap_memory {  { x_hat_z_12_address0 mem_address 1 3 }  { x_hat_z_12_ce0 mem_ce 1 1 }  { x_hat_z_12_q0 in_data 0 32 } } }
	x_hat_z_13 { ap_memory {  { x_hat_z_13_address0 mem_address 1 3 }  { x_hat_z_13_ce0 mem_ce 1 1 }  { x_hat_z_13_q0 in_data 0 32 } } }
	x_hat_z_14 { ap_memory {  { x_hat_z_14_address0 mem_address 1 3 }  { x_hat_z_14_ce0 mem_ce 1 1 }  { x_hat_z_14_q0 in_data 0 32 } } }
	x_hat_z_15 { ap_memory {  { x_hat_z_15_address0 mem_address 1 3 }  { x_hat_z_15_ce0 mem_ce 1 1 }  { x_hat_z_15_q0 in_data 0 32 } } }
}
