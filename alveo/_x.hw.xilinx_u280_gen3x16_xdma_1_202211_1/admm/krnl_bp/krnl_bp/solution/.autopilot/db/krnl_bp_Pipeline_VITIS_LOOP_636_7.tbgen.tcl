set moduleName krnl_bp_Pipeline_VITIS_LOOP_636_7
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
set C_modelName {krnl_bp_Pipeline_VITIS_LOOP_636_7}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem1 int 32 regular {axi_master 0}  }
	{ chunk int 31 regular  }
	{ sext_ln636 int 62 regular  }
	{ x_15 float 32 regular {array 8 { 0 3 } 0 1 }  }
	{ x_14 float 32 regular {array 8 { 0 3 } 0 1 }  }
	{ x_13 float 32 regular {array 8 { 0 3 } 0 1 }  }
	{ x_12 float 32 regular {array 8 { 0 3 } 0 1 }  }
	{ x_11 float 32 regular {array 8 { 0 3 } 0 1 }  }
	{ x_10 float 32 regular {array 8 { 0 3 } 0 1 }  }
	{ x_9 float 32 regular {array 8 { 0 3 } 0 1 }  }
	{ x_8 float 32 regular {array 8 { 0 3 } 0 1 }  }
	{ x_7 float 32 regular {array 8 { 0 3 } 0 1 }  }
	{ x_6 float 32 regular {array 8 { 0 3 } 0 1 }  }
	{ x_5 float 32 regular {array 8 { 0 3 } 0 1 }  }
	{ x_4 float 32 regular {array 8 { 0 3 } 0 1 }  }
	{ x_3 float 32 regular {array 8 { 0 3 } 0 1 }  }
	{ x_2 float 32 regular {array 8 { 0 3 } 0 1 }  }
	{ x_1 float 32 regular {array 8 { 0 3 } 0 1 }  }
	{ x float 32 regular {array 8 { 0 3 } 0 1 }  }
	{ mac_res float 32 regular {array 8 { 1 3 } 1 1 }  }
	{ mac_res_1 float 32 regular {array 8 { 1 3 } 1 1 }  }
	{ mac_res_2 float 32 regular {array 8 { 1 3 } 1 1 }  }
	{ mac_res_3 float 32 regular {array 8 { 1 3 } 1 1 }  }
	{ mac_res_4 float 32 regular {array 8 { 1 3 } 1 1 }  }
	{ mac_res_5 float 32 regular {array 8 { 1 3 } 1 1 }  }
	{ mac_res_6 float 32 regular {array 8 { 1 3 } 1 1 }  }
	{ mac_res_7 float 32 regular {array 8 { 1 3 } 1 1 }  }
	{ mac_res_8 float 32 regular {array 8 { 1 3 } 1 1 }  }
	{ mac_res_9 float 32 regular {array 8 { 1 3 } 1 1 }  }
	{ mac_res_10 float 32 regular {array 8 { 1 3 } 1 1 }  }
	{ mac_res_11 float 32 regular {array 8 { 1 3 } 1 1 }  }
	{ mac_res_12 float 32 regular {array 8 { 1 3 } 1 1 }  }
	{ mac_res_13 float 32 regular {array 8 { 1 3 } 1 1 }  }
	{ mac_res_14 float 32 regular {array 8 { 1 3 } 1 1 }  }
	{ mac_res_15 float 32 regular {array 8 { 1 3 } 1 1 }  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "gmem1", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "vec_q","offset": { "type": "dynamic","port_name": "vec_q","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "chunk", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln636", "interface" : "wire", "bitwidth" : 62, "direction" : "READONLY"} , 
 	{ "Name" : "x_15", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_14", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_13", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_12", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_11", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_10", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_9", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_8", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_7", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_6", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_5", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_4", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "x", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mac_res", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mac_res_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mac_res_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mac_res_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mac_res_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mac_res_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mac_res_6", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mac_res_7", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mac_res_8", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mac_res_9", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mac_res_10", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mac_res_11", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mac_res_12", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mac_res_13", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mac_res_14", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "mac_res_15", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 171
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem1_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem1_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem1_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem1_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem1_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem1_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem1_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem1_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem1_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem1_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem1_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem1_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem1_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem1_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem1_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem1_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem1_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem1_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem1_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem1_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem1_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem1_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem1_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem1_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem1_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem1_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem1_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem1_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem1_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem1_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem1_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem1_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem1_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem1_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem1_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem1_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_gmem1_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem1_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem1_RFIFONUM sc_in sc_lv 11 signal 0 } 
	{ m_axi_gmem1_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem1_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem1_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem1_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem1_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem1_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem1_BUSER sc_in sc_lv 1 signal 0 } 
	{ chunk sc_in sc_lv 31 signal 1 } 
	{ sext_ln636 sc_in sc_lv 62 signal 2 } 
	{ x_15_address0 sc_out sc_lv 3 signal 3 } 
	{ x_15_ce0 sc_out sc_logic 1 signal 3 } 
	{ x_15_we0 sc_out sc_logic 1 signal 3 } 
	{ x_15_d0 sc_out sc_lv 32 signal 3 } 
	{ x_14_address0 sc_out sc_lv 3 signal 4 } 
	{ x_14_ce0 sc_out sc_logic 1 signal 4 } 
	{ x_14_we0 sc_out sc_logic 1 signal 4 } 
	{ x_14_d0 sc_out sc_lv 32 signal 4 } 
	{ x_13_address0 sc_out sc_lv 3 signal 5 } 
	{ x_13_ce0 sc_out sc_logic 1 signal 5 } 
	{ x_13_we0 sc_out sc_logic 1 signal 5 } 
	{ x_13_d0 sc_out sc_lv 32 signal 5 } 
	{ x_12_address0 sc_out sc_lv 3 signal 6 } 
	{ x_12_ce0 sc_out sc_logic 1 signal 6 } 
	{ x_12_we0 sc_out sc_logic 1 signal 6 } 
	{ x_12_d0 sc_out sc_lv 32 signal 6 } 
	{ x_11_address0 sc_out sc_lv 3 signal 7 } 
	{ x_11_ce0 sc_out sc_logic 1 signal 7 } 
	{ x_11_we0 sc_out sc_logic 1 signal 7 } 
	{ x_11_d0 sc_out sc_lv 32 signal 7 } 
	{ x_10_address0 sc_out sc_lv 3 signal 8 } 
	{ x_10_ce0 sc_out sc_logic 1 signal 8 } 
	{ x_10_we0 sc_out sc_logic 1 signal 8 } 
	{ x_10_d0 sc_out sc_lv 32 signal 8 } 
	{ x_9_address0 sc_out sc_lv 3 signal 9 } 
	{ x_9_ce0 sc_out sc_logic 1 signal 9 } 
	{ x_9_we0 sc_out sc_logic 1 signal 9 } 
	{ x_9_d0 sc_out sc_lv 32 signal 9 } 
	{ x_8_address0 sc_out sc_lv 3 signal 10 } 
	{ x_8_ce0 sc_out sc_logic 1 signal 10 } 
	{ x_8_we0 sc_out sc_logic 1 signal 10 } 
	{ x_8_d0 sc_out sc_lv 32 signal 10 } 
	{ x_7_address0 sc_out sc_lv 3 signal 11 } 
	{ x_7_ce0 sc_out sc_logic 1 signal 11 } 
	{ x_7_we0 sc_out sc_logic 1 signal 11 } 
	{ x_7_d0 sc_out sc_lv 32 signal 11 } 
	{ x_6_address0 sc_out sc_lv 3 signal 12 } 
	{ x_6_ce0 sc_out sc_logic 1 signal 12 } 
	{ x_6_we0 sc_out sc_logic 1 signal 12 } 
	{ x_6_d0 sc_out sc_lv 32 signal 12 } 
	{ x_5_address0 sc_out sc_lv 3 signal 13 } 
	{ x_5_ce0 sc_out sc_logic 1 signal 13 } 
	{ x_5_we0 sc_out sc_logic 1 signal 13 } 
	{ x_5_d0 sc_out sc_lv 32 signal 13 } 
	{ x_4_address0 sc_out sc_lv 3 signal 14 } 
	{ x_4_ce0 sc_out sc_logic 1 signal 14 } 
	{ x_4_we0 sc_out sc_logic 1 signal 14 } 
	{ x_4_d0 sc_out sc_lv 32 signal 14 } 
	{ x_3_address0 sc_out sc_lv 3 signal 15 } 
	{ x_3_ce0 sc_out sc_logic 1 signal 15 } 
	{ x_3_we0 sc_out sc_logic 1 signal 15 } 
	{ x_3_d0 sc_out sc_lv 32 signal 15 } 
	{ x_2_address0 sc_out sc_lv 3 signal 16 } 
	{ x_2_ce0 sc_out sc_logic 1 signal 16 } 
	{ x_2_we0 sc_out sc_logic 1 signal 16 } 
	{ x_2_d0 sc_out sc_lv 32 signal 16 } 
	{ x_1_address0 sc_out sc_lv 3 signal 17 } 
	{ x_1_ce0 sc_out sc_logic 1 signal 17 } 
	{ x_1_we0 sc_out sc_logic 1 signal 17 } 
	{ x_1_d0 sc_out sc_lv 32 signal 17 } 
	{ x_address0 sc_out sc_lv 3 signal 18 } 
	{ x_ce0 sc_out sc_logic 1 signal 18 } 
	{ x_we0 sc_out sc_logic 1 signal 18 } 
	{ x_d0 sc_out sc_lv 32 signal 18 } 
	{ mac_res_address0 sc_out sc_lv 3 signal 19 } 
	{ mac_res_ce0 sc_out sc_logic 1 signal 19 } 
	{ mac_res_q0 sc_in sc_lv 32 signal 19 } 
	{ mac_res_1_address0 sc_out sc_lv 3 signal 20 } 
	{ mac_res_1_ce0 sc_out sc_logic 1 signal 20 } 
	{ mac_res_1_q0 sc_in sc_lv 32 signal 20 } 
	{ mac_res_2_address0 sc_out sc_lv 3 signal 21 } 
	{ mac_res_2_ce0 sc_out sc_logic 1 signal 21 } 
	{ mac_res_2_q0 sc_in sc_lv 32 signal 21 } 
	{ mac_res_3_address0 sc_out sc_lv 3 signal 22 } 
	{ mac_res_3_ce0 sc_out sc_logic 1 signal 22 } 
	{ mac_res_3_q0 sc_in sc_lv 32 signal 22 } 
	{ mac_res_4_address0 sc_out sc_lv 3 signal 23 } 
	{ mac_res_4_ce0 sc_out sc_logic 1 signal 23 } 
	{ mac_res_4_q0 sc_in sc_lv 32 signal 23 } 
	{ mac_res_5_address0 sc_out sc_lv 3 signal 24 } 
	{ mac_res_5_ce0 sc_out sc_logic 1 signal 24 } 
	{ mac_res_5_q0 sc_in sc_lv 32 signal 24 } 
	{ mac_res_6_address0 sc_out sc_lv 3 signal 25 } 
	{ mac_res_6_ce0 sc_out sc_logic 1 signal 25 } 
	{ mac_res_6_q0 sc_in sc_lv 32 signal 25 } 
	{ mac_res_7_address0 sc_out sc_lv 3 signal 26 } 
	{ mac_res_7_ce0 sc_out sc_logic 1 signal 26 } 
	{ mac_res_7_q0 sc_in sc_lv 32 signal 26 } 
	{ mac_res_8_address0 sc_out sc_lv 3 signal 27 } 
	{ mac_res_8_ce0 sc_out sc_logic 1 signal 27 } 
	{ mac_res_8_q0 sc_in sc_lv 32 signal 27 } 
	{ mac_res_9_address0 sc_out sc_lv 3 signal 28 } 
	{ mac_res_9_ce0 sc_out sc_logic 1 signal 28 } 
	{ mac_res_9_q0 sc_in sc_lv 32 signal 28 } 
	{ mac_res_10_address0 sc_out sc_lv 3 signal 29 } 
	{ mac_res_10_ce0 sc_out sc_logic 1 signal 29 } 
	{ mac_res_10_q0 sc_in sc_lv 32 signal 29 } 
	{ mac_res_11_address0 sc_out sc_lv 3 signal 30 } 
	{ mac_res_11_ce0 sc_out sc_logic 1 signal 30 } 
	{ mac_res_11_q0 sc_in sc_lv 32 signal 30 } 
	{ mac_res_12_address0 sc_out sc_lv 3 signal 31 } 
	{ mac_res_12_ce0 sc_out sc_logic 1 signal 31 } 
	{ mac_res_12_q0 sc_in sc_lv 32 signal 31 } 
	{ mac_res_13_address0 sc_out sc_lv 3 signal 32 } 
	{ mac_res_13_ce0 sc_out sc_logic 1 signal 32 } 
	{ mac_res_13_q0 sc_in sc_lv 32 signal 32 } 
	{ mac_res_14_address0 sc_out sc_lv 3 signal 33 } 
	{ mac_res_14_ce0 sc_out sc_logic 1 signal 33 } 
	{ mac_res_14_q0 sc_in sc_lv 32 signal 33 } 
	{ mac_res_15_address0 sc_out sc_lv 3 signal 34 } 
	{ mac_res_15_ce0 sc_out sc_logic 1 signal 34 } 
	{ mac_res_15_q0 sc_in sc_lv 32 signal 34 } 
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
 	{ "name": "m_axi_gmem1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem1", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WID" }} , 
 	{ "name": "m_axi_gmem1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem1", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RID" }} , 
 	{ "name": "m_axi_gmem1_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "gmem1", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_gmem1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BID" }} , 
 	{ "name": "m_axi_gmem1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BUSER" }} , 
 	{ "name": "chunk", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "chunk", "role": "default" }} , 
 	{ "name": "sext_ln636", "direction": "in", "datatype": "sc_lv", "bitwidth":62, "type": "signal", "bundle":{"name": "sext_ln636", "role": "default" }} , 
 	{ "name": "x_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_15", "role": "address0" }} , 
 	{ "name": "x_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_15", "role": "ce0" }} , 
 	{ "name": "x_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_15", "role": "we0" }} , 
 	{ "name": "x_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_15", "role": "d0" }} , 
 	{ "name": "x_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_14", "role": "address0" }} , 
 	{ "name": "x_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_14", "role": "ce0" }} , 
 	{ "name": "x_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_14", "role": "we0" }} , 
 	{ "name": "x_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_14", "role": "d0" }} , 
 	{ "name": "x_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_13", "role": "address0" }} , 
 	{ "name": "x_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_13", "role": "ce0" }} , 
 	{ "name": "x_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_13", "role": "we0" }} , 
 	{ "name": "x_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_13", "role": "d0" }} , 
 	{ "name": "x_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_12", "role": "address0" }} , 
 	{ "name": "x_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_12", "role": "ce0" }} , 
 	{ "name": "x_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_12", "role": "we0" }} , 
 	{ "name": "x_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_12", "role": "d0" }} , 
 	{ "name": "x_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_11", "role": "address0" }} , 
 	{ "name": "x_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_11", "role": "ce0" }} , 
 	{ "name": "x_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_11", "role": "we0" }} , 
 	{ "name": "x_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_11", "role": "d0" }} , 
 	{ "name": "x_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_10", "role": "address0" }} , 
 	{ "name": "x_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_10", "role": "ce0" }} , 
 	{ "name": "x_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_10", "role": "we0" }} , 
 	{ "name": "x_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_10", "role": "d0" }} , 
 	{ "name": "x_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_9", "role": "address0" }} , 
 	{ "name": "x_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_9", "role": "ce0" }} , 
 	{ "name": "x_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_9", "role": "we0" }} , 
 	{ "name": "x_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_9", "role": "d0" }} , 
 	{ "name": "x_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_8", "role": "address0" }} , 
 	{ "name": "x_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_8", "role": "ce0" }} , 
 	{ "name": "x_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_8", "role": "we0" }} , 
 	{ "name": "x_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_8", "role": "d0" }} , 
 	{ "name": "x_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_7", "role": "address0" }} , 
 	{ "name": "x_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_7", "role": "ce0" }} , 
 	{ "name": "x_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_7", "role": "we0" }} , 
 	{ "name": "x_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_7", "role": "d0" }} , 
 	{ "name": "x_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_6", "role": "address0" }} , 
 	{ "name": "x_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_6", "role": "ce0" }} , 
 	{ "name": "x_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_6", "role": "we0" }} , 
 	{ "name": "x_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_6", "role": "d0" }} , 
 	{ "name": "x_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_5", "role": "address0" }} , 
 	{ "name": "x_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_5", "role": "ce0" }} , 
 	{ "name": "x_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_5", "role": "we0" }} , 
 	{ "name": "x_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_5", "role": "d0" }} , 
 	{ "name": "x_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_4", "role": "address0" }} , 
 	{ "name": "x_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_4", "role": "ce0" }} , 
 	{ "name": "x_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_4", "role": "we0" }} , 
 	{ "name": "x_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_4", "role": "d0" }} , 
 	{ "name": "x_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_3", "role": "address0" }} , 
 	{ "name": "x_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_3", "role": "ce0" }} , 
 	{ "name": "x_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_3", "role": "we0" }} , 
 	{ "name": "x_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_3", "role": "d0" }} , 
 	{ "name": "x_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_2", "role": "address0" }} , 
 	{ "name": "x_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_2", "role": "ce0" }} , 
 	{ "name": "x_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_2", "role": "we0" }} , 
 	{ "name": "x_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_2", "role": "d0" }} , 
 	{ "name": "x_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x_1", "role": "address0" }} , 
 	{ "name": "x_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_1", "role": "ce0" }} , 
 	{ "name": "x_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_1", "role": "we0" }} , 
 	{ "name": "x_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_1", "role": "d0" }} , 
 	{ "name": "x_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "x", "role": "address0" }} , 
 	{ "name": "x_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x", "role": "ce0" }} , 
 	{ "name": "x_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x", "role": "we0" }} , 
 	{ "name": "x_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x", "role": "d0" }} , 
 	{ "name": "mac_res_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mac_res", "role": "address0" }} , 
 	{ "name": "mac_res_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_res", "role": "ce0" }} , 
 	{ "name": "mac_res_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mac_res", "role": "q0" }} , 
 	{ "name": "mac_res_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mac_res_1", "role": "address0" }} , 
 	{ "name": "mac_res_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_res_1", "role": "ce0" }} , 
 	{ "name": "mac_res_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mac_res_1", "role": "q0" }} , 
 	{ "name": "mac_res_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mac_res_2", "role": "address0" }} , 
 	{ "name": "mac_res_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_res_2", "role": "ce0" }} , 
 	{ "name": "mac_res_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mac_res_2", "role": "q0" }} , 
 	{ "name": "mac_res_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mac_res_3", "role": "address0" }} , 
 	{ "name": "mac_res_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_res_3", "role": "ce0" }} , 
 	{ "name": "mac_res_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mac_res_3", "role": "q0" }} , 
 	{ "name": "mac_res_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mac_res_4", "role": "address0" }} , 
 	{ "name": "mac_res_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_res_4", "role": "ce0" }} , 
 	{ "name": "mac_res_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mac_res_4", "role": "q0" }} , 
 	{ "name": "mac_res_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mac_res_5", "role": "address0" }} , 
 	{ "name": "mac_res_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_res_5", "role": "ce0" }} , 
 	{ "name": "mac_res_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mac_res_5", "role": "q0" }} , 
 	{ "name": "mac_res_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mac_res_6", "role": "address0" }} , 
 	{ "name": "mac_res_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_res_6", "role": "ce0" }} , 
 	{ "name": "mac_res_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mac_res_6", "role": "q0" }} , 
 	{ "name": "mac_res_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mac_res_7", "role": "address0" }} , 
 	{ "name": "mac_res_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_res_7", "role": "ce0" }} , 
 	{ "name": "mac_res_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mac_res_7", "role": "q0" }} , 
 	{ "name": "mac_res_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mac_res_8", "role": "address0" }} , 
 	{ "name": "mac_res_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_res_8", "role": "ce0" }} , 
 	{ "name": "mac_res_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mac_res_8", "role": "q0" }} , 
 	{ "name": "mac_res_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mac_res_9", "role": "address0" }} , 
 	{ "name": "mac_res_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_res_9", "role": "ce0" }} , 
 	{ "name": "mac_res_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mac_res_9", "role": "q0" }} , 
 	{ "name": "mac_res_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mac_res_10", "role": "address0" }} , 
 	{ "name": "mac_res_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_res_10", "role": "ce0" }} , 
 	{ "name": "mac_res_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mac_res_10", "role": "q0" }} , 
 	{ "name": "mac_res_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mac_res_11", "role": "address0" }} , 
 	{ "name": "mac_res_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_res_11", "role": "ce0" }} , 
 	{ "name": "mac_res_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mac_res_11", "role": "q0" }} , 
 	{ "name": "mac_res_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mac_res_12", "role": "address0" }} , 
 	{ "name": "mac_res_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_res_12", "role": "ce0" }} , 
 	{ "name": "mac_res_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mac_res_12", "role": "q0" }} , 
 	{ "name": "mac_res_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mac_res_13", "role": "address0" }} , 
 	{ "name": "mac_res_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_res_13", "role": "ce0" }} , 
 	{ "name": "mac_res_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mac_res_13", "role": "q0" }} , 
 	{ "name": "mac_res_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mac_res_14", "role": "address0" }} , 
 	{ "name": "mac_res_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_res_14", "role": "ce0" }} , 
 	{ "name": "mac_res_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mac_res_14", "role": "q0" }} , 
 	{ "name": "mac_res_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "mac_res_15", "role": "address0" }} , 
 	{ "name": "mac_res_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_res_15", "role": "ce0" }} , 
 	{ "name": "mac_res_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mac_res_15", "role": "q0" }} , 
 	{ "name": "grp_fu_1657_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1657_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1657_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1657_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1657_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1657_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1657_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1657_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1657_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1657_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "krnl_bp_Pipeline_VITIS_LOOP_636_7",
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
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "chunk", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln636", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mac_res", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mac_res_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mac_res_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mac_res_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mac_res_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mac_res_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mac_res_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mac_res_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mac_res_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mac_res_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mac_res_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mac_res_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mac_res_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mac_res_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mac_res_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "mac_res_15", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_636_7", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_33_4_32_1_1_U120", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	krnl_bp_Pipeline_VITIS_LOOP_636_7 {
		gmem1 {Type I LastRead 1 FirstWrite -1}
		chunk {Type I LastRead 0 FirstWrite -1}
		sext_ln636 {Type I LastRead 0 FirstWrite -1}
		x_15 {Type O LastRead -1 FirstWrite 9}
		x_14 {Type O LastRead -1 FirstWrite 9}
		x_13 {Type O LastRead -1 FirstWrite 9}
		x_12 {Type O LastRead -1 FirstWrite 9}
		x_11 {Type O LastRead -1 FirstWrite 9}
		x_10 {Type O LastRead -1 FirstWrite 9}
		x_9 {Type O LastRead -1 FirstWrite 9}
		x_8 {Type O LastRead -1 FirstWrite 9}
		x_7 {Type O LastRead -1 FirstWrite 9}
		x_6 {Type O LastRead -1 FirstWrite 9}
		x_5 {Type O LastRead -1 FirstWrite 9}
		x_4 {Type O LastRead -1 FirstWrite 9}
		x_3 {Type O LastRead -1 FirstWrite 9}
		x_2 {Type O LastRead -1 FirstWrite 9}
		x_1 {Type O LastRead -1 FirstWrite 9}
		x {Type O LastRead -1 FirstWrite 9}
		mac_res {Type I LastRead 0 FirstWrite -1}
		mac_res_1 {Type I LastRead 0 FirstWrite -1}
		mac_res_2 {Type I LastRead 0 FirstWrite -1}
		mac_res_3 {Type I LastRead 0 FirstWrite -1}
		mac_res_4 {Type I LastRead 0 FirstWrite -1}
		mac_res_5 {Type I LastRead 0 FirstWrite -1}
		mac_res_6 {Type I LastRead 0 FirstWrite -1}
		mac_res_7 {Type I LastRead 0 FirstWrite -1}
		mac_res_8 {Type I LastRead 0 FirstWrite -1}
		mac_res_9 {Type I LastRead 0 FirstWrite -1}
		mac_res_10 {Type I LastRead 0 FirstWrite -1}
		mac_res_11 {Type I LastRead 0 FirstWrite -1}
		mac_res_12 {Type I LastRead 0 FirstWrite -1}
		mac_res_13 {Type I LastRead 0 FirstWrite -1}
		mac_res_14 {Type I LastRead 0 FirstWrite -1}
		mac_res_15 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "11", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "11", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_gmem1_AWVALID VALID 1 1 }  { m_axi_gmem1_AWREADY READY 0 1 }  { m_axi_gmem1_AWADDR ADDR 1 64 }  { m_axi_gmem1_AWID ID 1 1 }  { m_axi_gmem1_AWLEN SIZE 1 32 }  { m_axi_gmem1_AWSIZE BURST 1 3 }  { m_axi_gmem1_AWBURST LOCK 1 2 }  { m_axi_gmem1_AWLOCK CACHE 1 2 }  { m_axi_gmem1_AWCACHE PROT 1 4 }  { m_axi_gmem1_AWPROT QOS 1 3 }  { m_axi_gmem1_AWQOS REGION 1 4 }  { m_axi_gmem1_AWREGION USER 1 4 }  { m_axi_gmem1_AWUSER DATA 1 1 }  { m_axi_gmem1_WVALID VALID 1 1 }  { m_axi_gmem1_WREADY READY 0 1 }  { m_axi_gmem1_WDATA FIFONUM 1 32 }  { m_axi_gmem1_WSTRB STRB 1 4 }  { m_axi_gmem1_WLAST LAST 1 1 }  { m_axi_gmem1_WID ID 1 1 }  { m_axi_gmem1_WUSER DATA 1 1 }  { m_axi_gmem1_ARVALID VALID 1 1 }  { m_axi_gmem1_ARREADY READY 0 1 }  { m_axi_gmem1_ARADDR ADDR 1 64 }  { m_axi_gmem1_ARID ID 1 1 }  { m_axi_gmem1_ARLEN SIZE 1 32 }  { m_axi_gmem1_ARSIZE BURST 1 3 }  { m_axi_gmem1_ARBURST LOCK 1 2 }  { m_axi_gmem1_ARLOCK CACHE 1 2 }  { m_axi_gmem1_ARCACHE PROT 1 4 }  { m_axi_gmem1_ARPROT QOS 1 3 }  { m_axi_gmem1_ARQOS REGION 1 4 }  { m_axi_gmem1_ARREGION USER 1 4 }  { m_axi_gmem1_ARUSER DATA 1 1 }  { m_axi_gmem1_RVALID VALID 0 1 }  { m_axi_gmem1_RREADY READY 1 1 }  { m_axi_gmem1_RDATA FIFONUM 0 32 }  { m_axi_gmem1_RLAST LAST 0 1 }  { m_axi_gmem1_RID ID 0 1 }  { m_axi_gmem1_RFIFONUM LEN 0 11 }  { m_axi_gmem1_RUSER DATA 0 1 }  { m_axi_gmem1_RRESP RESP 0 2 }  { m_axi_gmem1_BVALID VALID 0 1 }  { m_axi_gmem1_BREADY READY 1 1 }  { m_axi_gmem1_BRESP RESP 0 2 }  { m_axi_gmem1_BID ID 0 1 }  { m_axi_gmem1_BUSER DATA 0 1 } } }
	chunk { ap_none {  { chunk in_data 0 31 } } }
	sext_ln636 { ap_none {  { sext_ln636 in_data 0 62 } } }
	x_15 { ap_memory {  { x_15_address0 mem_address 1 3 }  { x_15_ce0 mem_ce 1 1 }  { x_15_we0 mem_we 1 1 }  { x_15_d0 mem_din 1 32 } } }
	x_14 { ap_memory {  { x_14_address0 mem_address 1 3 }  { x_14_ce0 mem_ce 1 1 }  { x_14_we0 mem_we 1 1 }  { x_14_d0 mem_din 1 32 } } }
	x_13 { ap_memory {  { x_13_address0 mem_address 1 3 }  { x_13_ce0 mem_ce 1 1 }  { x_13_we0 mem_we 1 1 }  { x_13_d0 mem_din 1 32 } } }
	x_12 { ap_memory {  { x_12_address0 mem_address 1 3 }  { x_12_ce0 mem_ce 1 1 }  { x_12_we0 mem_we 1 1 }  { x_12_d0 mem_din 1 32 } } }
	x_11 { ap_memory {  { x_11_address0 mem_address 1 3 }  { x_11_ce0 mem_ce 1 1 }  { x_11_we0 mem_we 1 1 }  { x_11_d0 mem_din 1 32 } } }
	x_10 { ap_memory {  { x_10_address0 mem_address 1 3 }  { x_10_ce0 mem_ce 1 1 }  { x_10_we0 mem_we 1 1 }  { x_10_d0 mem_din 1 32 } } }
	x_9 { ap_memory {  { x_9_address0 mem_address 1 3 }  { x_9_ce0 mem_ce 1 1 }  { x_9_we0 mem_we 1 1 }  { x_9_d0 mem_din 1 32 } } }
	x_8 { ap_memory {  { x_8_address0 mem_address 1 3 }  { x_8_ce0 mem_ce 1 1 }  { x_8_we0 mem_we 1 1 }  { x_8_d0 mem_din 1 32 } } }
	x_7 { ap_memory {  { x_7_address0 mem_address 1 3 }  { x_7_ce0 mem_ce 1 1 }  { x_7_we0 mem_we 1 1 }  { x_7_d0 mem_din 1 32 } } }
	x_6 { ap_memory {  { x_6_address0 mem_address 1 3 }  { x_6_ce0 mem_ce 1 1 }  { x_6_we0 mem_we 1 1 }  { x_6_d0 mem_din 1 32 } } }
	x_5 { ap_memory {  { x_5_address0 mem_address 1 3 }  { x_5_ce0 mem_ce 1 1 }  { x_5_we0 mem_we 1 1 }  { x_5_d0 mem_din 1 32 } } }
	x_4 { ap_memory {  { x_4_address0 mem_address 1 3 }  { x_4_ce0 mem_ce 1 1 }  { x_4_we0 mem_we 1 1 }  { x_4_d0 mem_din 1 32 } } }
	x_3 { ap_memory {  { x_3_address0 mem_address 1 3 }  { x_3_ce0 mem_ce 1 1 }  { x_3_we0 mem_we 1 1 }  { x_3_d0 mem_din 1 32 } } }
	x_2 { ap_memory {  { x_2_address0 mem_address 1 3 }  { x_2_ce0 mem_ce 1 1 }  { x_2_we0 mem_we 1 1 }  { x_2_d0 mem_din 1 32 } } }
	x_1 { ap_memory {  { x_1_address0 mem_address 1 3 }  { x_1_ce0 mem_ce 1 1 }  { x_1_we0 mem_we 1 1 }  { x_1_d0 mem_din 1 32 } } }
	x { ap_memory {  { x_address0 mem_address 1 3 }  { x_ce0 mem_ce 1 1 }  { x_we0 mem_we 1 1 }  { x_d0 mem_din 1 32 } } }
	mac_res { ap_memory {  { mac_res_address0 mem_address 1 3 }  { mac_res_ce0 mem_ce 1 1 }  { mac_res_q0 in_data 0 32 } } }
	mac_res_1 { ap_memory {  { mac_res_1_address0 mem_address 1 3 }  { mac_res_1_ce0 mem_ce 1 1 }  { mac_res_1_q0 in_data 0 32 } } }
	mac_res_2 { ap_memory {  { mac_res_2_address0 mem_address 1 3 }  { mac_res_2_ce0 mem_ce 1 1 }  { mac_res_2_q0 in_data 0 32 } } }
	mac_res_3 { ap_memory {  { mac_res_3_address0 mem_address 1 3 }  { mac_res_3_ce0 mem_ce 1 1 }  { mac_res_3_q0 in_data 0 32 } } }
	mac_res_4 { ap_memory {  { mac_res_4_address0 mem_address 1 3 }  { mac_res_4_ce0 mem_ce 1 1 }  { mac_res_4_q0 in_data 0 32 } } }
	mac_res_5 { ap_memory {  { mac_res_5_address0 mem_address 1 3 }  { mac_res_5_ce0 mem_ce 1 1 }  { mac_res_5_q0 in_data 0 32 } } }
	mac_res_6 { ap_memory {  { mac_res_6_address0 mem_address 1 3 }  { mac_res_6_ce0 mem_ce 1 1 }  { mac_res_6_q0 in_data 0 32 } } }
	mac_res_7 { ap_memory {  { mac_res_7_address0 mem_address 1 3 }  { mac_res_7_ce0 mem_ce 1 1 }  { mac_res_7_q0 in_data 0 32 } } }
	mac_res_8 { ap_memory {  { mac_res_8_address0 mem_address 1 3 }  { mac_res_8_ce0 mem_ce 1 1 }  { mac_res_8_q0 in_data 0 32 } } }
	mac_res_9 { ap_memory {  { mac_res_9_address0 mem_address 1 3 }  { mac_res_9_ce0 mem_ce 1 1 }  { mac_res_9_q0 in_data 0 32 } } }
	mac_res_10 { ap_memory {  { mac_res_10_address0 mem_address 1 3 }  { mac_res_10_ce0 mem_ce 1 1 }  { mac_res_10_q0 in_data 0 32 } } }
	mac_res_11 { ap_memory {  { mac_res_11_address0 mem_address 1 3 }  { mac_res_11_ce0 mem_ce 1 1 }  { mac_res_11_q0 in_data 0 32 } } }
	mac_res_12 { ap_memory {  { mac_res_12_address0 mem_address 1 3 }  { mac_res_12_ce0 mem_ce 1 1 }  { mac_res_12_q0 in_data 0 32 } } }
	mac_res_13 { ap_memory {  { mac_res_13_address0 mem_address 1 3 }  { mac_res_13_ce0 mem_ce 1 1 }  { mac_res_13_q0 in_data 0 32 } } }
	mac_res_14 { ap_memory {  { mac_res_14_address0 mem_address 1 3 }  { mac_res_14_ce0 mem_ce 1 1 }  { mac_res_14_q0 in_data 0 32 } } }
	mac_res_15 { ap_memory {  { mac_res_15_address0 mem_address 1 3 }  { mac_res_15_ce0 mem_ce 1 1 }  { mac_res_15_q0 in_data 0 32 } } }
}
