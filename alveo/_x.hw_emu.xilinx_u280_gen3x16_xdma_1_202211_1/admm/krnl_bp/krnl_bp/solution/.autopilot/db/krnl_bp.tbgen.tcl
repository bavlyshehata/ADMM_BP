set moduleName krnl_bp
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_chain
set isOneStateSeq 0
set ProfileFlag 1
set StallSigGenFlag 1
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {krnl_bp}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem0 int 512 regular {axi_master 0}  }
	{ gmem1 int 256 regular {axi_master 0}  }
	{ gmem2 int 256 regular {axi_master 1}  }
	{ mat_p int 64 regular {axi_slave 0}  }
	{ vec_q int 64 regular {axi_slave 0}  }
	{ out_r int 64 regular {axi_slave 0}  }
	{ rho float 32 regular {axi_slave 0}  }
	{ alpha float 32 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem0", "interface" : "axi_master", "bitwidth" : 512, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "mat_p","offset": { "type": "dynamic","port_name": "mat_p","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "gmem1", "interface" : "axi_master", "bitwidth" : 256, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "vec_q","offset": { "type": "dynamic","port_name": "vec_q","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "gmem2", "interface" : "axi_master", "bitwidth" : 256, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "out_r","offset": { "type": "dynamic","port_name": "out_r","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "mat_p", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "vec_q", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "out_r", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":51}} , 
 	{ "Name" : "rho", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":52}, "offset_end" : {"in":59}} , 
 	{ "Name" : "alpha", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":60}, "offset_end" : {"in":67}} ]}
# RTL Port declarations: 
set portNum 163
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ event_done sc_out sc_logic 1 signal -1 } 
	{ m_axi_gmem0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WDATA sc_out sc_lv 512 signal 0 } 
	{ m_axi_gmem0_WSTRB sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RDATA sc_in sc_lv 512 signal 0 } 
	{ m_axi_gmem0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem1_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem1_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_gmem1_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem1_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem1_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem1_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem1_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_WDATA sc_out sc_lv 256 signal 1 } 
	{ m_axi_gmem1_WSTRB sc_out sc_lv 32 signal 1 } 
	{ m_axi_gmem1_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem1_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_gmem1_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem1_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem1_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem1_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem1_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_RDATA sc_in sc_lv 256 signal 1 } 
	{ m_axi_gmem1_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem1_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem1_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem1_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem1_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem1_BUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem2_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem2_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_AWLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_gmem2_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem2_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem2_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem2_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem2_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_WDATA sc_out sc_lv 256 signal 2 } 
	{ m_axi_gmem2_WSTRB sc_out sc_lv 32 signal 2 } 
	{ m_axi_gmem2_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem2_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_ARLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_gmem2_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem2_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem2_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem2_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem2_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem2_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem2_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_RDATA sc_in sc_lv 256 signal 2 } 
	{ m_axi_gmem2_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem2_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem2_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem2_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem2_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem2_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem2_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem2_BUSER sc_in sc_lv 1 signal 2 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 7 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
	{ event_start sc_out sc_logic 1 signal -1 } 
	{ stall_start_ext sc_out sc_logic 1 signal -1 } 
	{ stall_done_ext sc_out sc_logic 1 signal -1 } 
	{ stall_start_str sc_out sc_logic 1 signal -1 } 
	{ stall_done_str sc_out sc_logic 1 signal -1 } 
	{ stall_start_int sc_out sc_logic 1 signal -1 } 
	{ stall_done_int sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"krnl_bp","role":"start","value":"0","valid_bit":"0"},{"name":"krnl_bp","role":"continue","value":"0","valid_bit":"4"},{"name":"krnl_bp","role":"auto_start","value":"0","valid_bit":"7"},{"name":"mat_p","role":"data","value":"16"},{"name":"vec_q","role":"data","value":"28"},{"name":"out_r","role":"data","value":"40"},{"name":"rho","role":"data","value":"52"},{"name":"alpha","role":"data","value":"60"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"krnl_bp","role":"start","value":"0","valid_bit":"0"},{"name":"krnl_bp","role":"done","value":"0","valid_bit":"1"},{"name":"krnl_bp","role":"idle","value":"0","valid_bit":"2"},{"name":"krnl_bp","role":"ready","value":"0","valid_bit":"3"},{"name":"krnl_bp","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "event_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "event_done", "role": "default" }} , 
 	{ "name": "m_axi_gmem0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem0", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WID" }} , 
 	{ "name": "m_axi_gmem0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":512, "type": "signal", "bundle":{"name": "gmem0", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RID" }} , 
 	{ "name": "m_axi_gmem0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BID" }} , 
 	{ "name": "m_axi_gmem0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem1", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_gmem1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "gmem1", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WID" }} , 
 	{ "name": "m_axi_gmem1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem1", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_gmem1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "gmem1", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RID" }} , 
 	{ "name": "m_axi_gmem1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BID" }} , 
 	{ "name": "m_axi_gmem1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "gmem2", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WID" }} , 
 	{ "name": "m_axi_gmem2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":256, "type": "signal", "bundle":{"name": "gmem2", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RID" }} , 
 	{ "name": "m_axi_gmem2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BID" }} , 
 	{ "name": "m_axi_gmem2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BUSER" }} , 
 	{ "name": "event_start", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "event_start", "role": "default" }} , 
 	{ "name": "stall_start_ext", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stall_start_ext", "role": "default" }} , 
 	{ "name": "stall_done_ext", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stall_done_ext", "role": "default" }} , 
 	{ "name": "stall_start_str", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stall_start_str", "role": "default" }} , 
 	{ "name": "stall_done_str", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stall_done_str", "role": "default" }} , 
 	{ "name": "stall_start_int", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stall_start_int", "role": "default" }} , 
 	{ "name": "stall_done_int", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "stall_done_int", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "6", "8", "10", "12", "14", "16", "18", "20", "29", "31", "33", "35", "37", "39", "41", "43", "45", "49", "51", "81", "83", "85", "87", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123"],
		"CDFG" : "krnl_bp",
		"Protocol" : "ap_ctrl_chain",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem0_blk_n_AR", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_krnl_bp_Pipeline_l_load_input_fu_389", "Port" : "gmem0", "Inst_start_state" : "73", "Inst_end_state" : "74"}]},
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem1_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "gmem2", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem2_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem2_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "gmem2_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "mat_p", "Type" : "None", "Direction" : "I"},
			{"Name" : "vec_q", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "rho", "Type" : "None", "Direction" : "I"},
			{"Name" : "alpha", "Type" : "None", "Direction" : "I"},
			{"Name" : "mat_p_bram", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_krnl_bp_Pipeline_l_load_input_fu_389", "Port" : "mat_p_bram", "Inst_start_state" : "73", "Inst_end_state" : "74"},
					{"ID" : "20", "SubInstance" : "grp_mac_fu_459", "Port" : "mat_p_bram", "Inst_start_state" : "91", "Inst_end_state" : "92"}]},
			{"Name" : "vec_q_bram", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_krnl_bp_Pipeline_l_load_input1_fu_398", "Port" : "vec_q_bram", "Inst_start_state" : "73", "Inst_end_state" : "74"},
					{"ID" : "33", "SubInstance" : "grp_krnl_bp_Pipeline_VITIS_LOOP_380_2_fu_483", "Port" : "vec_q_bram", "Inst_start_state" : "99", "Inst_end_state" : "100"}]},
			{"Name" : "u_stream", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_vec_add_fu_527", "Port" : "krnl_bp_x_hat_u_stream", "Inst_start_state" : "136", "Inst_end_state" : "151"},
					{"ID" : "51", "SubInstance" : "grp_krnl_bp_Pipeline_VITIS_LOOP_1045_3_fu_559", "Port" : "u_stream", "Inst_start_state" : "152", "Inst_end_state" : "153"},
					{"ID" : "8", "SubInstance" : "grp_krnl_bp_Pipeline_VITIS_LOOP_677_1_fu_405", "Port" : "u_stream", "Inst_start_state" : "75", "Inst_end_state" : "76"},
					{"ID" : "14", "SubInstance" : "grp_replicate_stream_fu_423", "Port" : "krnl_bp_u_stream", "Inst_start_state" : "132", "Inst_end_state" : "133"},
					{"ID" : "81", "SubInstance" : "grp_krnl_bp_Pipeline_VITIS_LOOP_843_1_fu_601", "Port" : "u_stream", "Inst_start_state" : "187", "Inst_end_state" : "188"}]},
			{"Name" : "z_copy_2_stream", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "grp_krnl_bp_Pipeline_VITIS_LOOP_1045_3_fu_559", "Port" : "z_copy_2_stream", "Inst_start_state" : "152", "Inst_end_state" : "153"},
					{"ID" : "18", "SubInstance" : "grp_krnl_bp_Pipeline_l_vec_sub_fu_449", "Port" : "z_copy_2_stream", "Inst_start_state" : "89", "Inst_end_state" : "90"},
					{"ID" : "10", "SubInstance" : "grp_krnl_bp_Pipeline_VITIS_LOOP_677_12_fu_411", "Port" : "z_copy_2_stream", "Inst_start_state" : "78", "Inst_end_state" : "79"},
					{"ID" : "14", "SubInstance" : "grp_replicate_stream_fu_423", "Port" : "krnl_bp_u_copy_3_stream", "Inst_start_state" : "132", "Inst_end_state" : "133"},
					{"ID" : "85", "SubInstance" : "grp_krnl_bp_Pipeline_VITIS_LOOP_843_16_fu_613", "Port" : "z_copy_2_stream", "Inst_start_state" : "193", "Inst_end_state" : "194"}]},
			{"Name" : "z_old_stream", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "grp_krnl_bp_Pipeline_VITIS_LOOP_1045_3_fu_559", "Port" : "z_old_stream", "Inst_start_state" : "152", "Inst_end_state" : "153"},
					{"ID" : "39", "SubInstance" : "grp_krnl_bp_Pipeline_VITIS_LOOP_526_2_fu_507", "Port" : "z_old_stream", "Inst_start_state" : "108", "Inst_end_state" : "109"},
					{"ID" : "12", "SubInstance" : "grp_krnl_bp_Pipeline_VITIS_LOOP_677_13_fu_417", "Port" : "z_old_stream", "Inst_start_state" : "81", "Inst_end_state" : "82"},
					{"ID" : "14", "SubInstance" : "grp_replicate_stream_fu_423", "Port" : "krnl_bp_u_copy_1_stream", "Inst_start_state" : "132", "Inst_end_state" : "133"},
					{"ID" : "83", "SubInstance" : "grp_krnl_bp_Pipeline_VITIS_LOOP_843_15_fu_607", "Port" : "z_old_stream", "Inst_start_state" : "190", "Inst_end_state" : "191"}]},
			{"Name" : "u_copy_1_stream", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_krnl_bp_Pipeline_l_vec_sub_fu_449", "Port" : "u_copy_1_stream", "Inst_start_state" : "89", "Inst_end_state" : "90"},
					{"ID" : "14", "SubInstance" : "grp_replicate_stream_fu_423", "Port" : "krnl_bp_u_copy_1_stream", "Inst_start_state" : "132", "Inst_end_state" : "133"}]},
			{"Name" : "u_copy_2_stream", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_vec_add_fu_527", "Port" : "krnl_bp_u_copy_2_stream", "Inst_start_state" : "136", "Inst_end_state" : "151"},
					{"ID" : "14", "SubInstance" : "grp_replicate_stream_fu_423", "Port" : "krnl_bp_u_copy_2_stream", "Inst_start_state" : "132", "Inst_end_state" : "133"}]},
			{"Name" : "u_copy_3_stream", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_vec_add_fu_527", "Port" : "krnl_bp_u_copy_2_stream", "Inst_start_state" : "136", "Inst_end_state" : "151"},
					{"ID" : "14", "SubInstance" : "grp_replicate_stream_fu_423", "Port" : "krnl_bp_u_copy_3_stream", "Inst_start_state" : "132", "Inst_end_state" : "133"}]},
			{"Name" : "z_u_stream", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_krnl_bp_Pipeline_VITIS_LOOP_980_1_fu_443", "Port" : "z_u_stream", "Inst_start_state" : "86", "Inst_end_state" : "87"},
					{"ID" : "18", "SubInstance" : "grp_krnl_bp_Pipeline_l_vec_sub_fu_449", "Port" : "z_u_stream", "Inst_start_state" : "89", "Inst_end_state" : "90"},
					{"ID" : "20", "SubInstance" : "grp_mac_fu_459", "Port" : "z_u_stream", "Inst_start_state" : "91", "Inst_end_state" : "92"}]},
			{"Name" : "p_stream", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_mac_fu_459", "Port" : "p_stream", "Inst_start_state" : "91", "Inst_end_state" : "92"}]},
			{"Name" : "mac_res_stream", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "20", "SubInstance" : "grp_mac_fu_459", "Port" : "mac_res_stream", "Inst_start_state" : "91", "Inst_end_state" : "92"},
					{"ID" : "29", "SubInstance" : "grp_krnl_bp_Pipeline_VITIS_LOOP_1001_2_fu_471", "Port" : "mac_res_stream", "Inst_start_state" : "93", "Inst_end_state" : "94"},
					{"ID" : "31", "SubInstance" : "grp_krnl_bp_Pipeline_VITIS_LOOP_367_1_fu_477", "Port" : "mac_res_stream", "Inst_start_state" : "96", "Inst_end_state" : "97"},
					{"ID" : "35", "SubInstance" : "grp_krnl_bp_Pipeline_VITIS_LOOP_386_3_fu_491", "Port" : "mac_res_stream", "Inst_start_state" : "102", "Inst_end_state" : "103"}]},
			{"Name" : "q_stream", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "33", "SubInstance" : "grp_krnl_bp_Pipeline_VITIS_LOOP_380_2_fu_483", "Port" : "q_stream", "Inst_start_state" : "99", "Inst_end_state" : "100"},
					{"ID" : "35", "SubInstance" : "grp_krnl_bp_Pipeline_VITIS_LOOP_386_3_fu_491", "Port" : "q_stream", "Inst_start_state" : "102", "Inst_end_state" : "103"}]},
			{"Name" : "x_stream", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_krnl_bp_Pipeline_VITIS_LOOP_386_3_fu_491", "Port" : "x_stream", "Inst_start_state" : "102", "Inst_end_state" : "103"},
					{"ID" : "37", "SubInstance" : "grp_krnl_bp_Pipeline_VITIS_LOOP_514_1_fu_501", "Port" : "x_stream", "Inst_start_state" : "105", "Inst_end_state" : "106"},
					{"ID" : "39", "SubInstance" : "grp_krnl_bp_Pipeline_VITIS_LOOP_526_2_fu_507", "Port" : "x_stream", "Inst_start_state" : "108", "Inst_end_state" : "109"}]},
			{"Name" : "x_hat_stream", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "39", "SubInstance" : "grp_krnl_bp_Pipeline_VITIS_LOOP_526_2_fu_507", "Port" : "x_hat_stream", "Inst_start_state" : "108", "Inst_end_state" : "109"},
					{"ID" : "14", "SubInstance" : "grp_replicate_stream_fu_423", "Port" : "krnl_bp_u_stream", "Inst_start_state" : "132", "Inst_end_state" : "133"}]},
			{"Name" : "x_hat_copy_1_stream", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_vec_add_fu_527", "Port" : "krnl_bp_x_hat_copy_1_stream", "Inst_start_state" : "136", "Inst_end_state" : "151"},
					{"ID" : "14", "SubInstance" : "grp_replicate_stream_fu_423", "Port" : "krnl_bp_u_copy_1_stream", "Inst_start_state" : "132", "Inst_end_state" : "133"}]},
			{"Name" : "x_hat_copy_2_stream", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "49", "SubInstance" : "grp_krnl_bp_Pipeline_l_vec_sub4_fu_549", "Port" : "x_hat_copy_2_stream", "Inst_start_state" : "134", "Inst_end_state" : "135"},
					{"ID" : "14", "SubInstance" : "grp_replicate_stream_fu_423", "Port" : "krnl_bp_u_copy_2_stream", "Inst_start_state" : "132", "Inst_end_state" : "133"}]},
			{"Name" : "x_hat_copy_3_stream", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "41", "SubInstance" : "grp_krnl_bp_Pipeline_l_write_bram_fu_519", "Port" : "x_hat_copy_3_stream", "Inst_start_state" : "112", "Inst_end_state" : "113"},
					{"ID" : "14", "SubInstance" : "grp_replicate_stream_fu_423", "Port" : "krnl_bp_u_copy_3_stream", "Inst_start_state" : "132", "Inst_end_state" : "133"}]},
			{"Name" : "x_bram", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "grp_krnl_bp_Pipeline_VITIS_LOOP_1045_3_fu_559", "Port" : "x_bram", "Inst_start_state" : "152", "Inst_end_state" : "153"},
					{"ID" : "41", "SubInstance" : "grp_krnl_bp_Pipeline_l_write_bram_fu_519", "Port" : "x_bram", "Inst_start_state" : "112", "Inst_end_state" : "113"},
					{"ID" : "87", "SubInstance" : "grp_krnl_bp_Pipeline_l_write_mem_fu_619", "Port" : "x_bram", "Inst_start_state" : "193", "Inst_end_state" : "194"}]},
			{"Name" : "x_hat_u_stream", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_vec_add_fu_527", "Port" : "krnl_bp_x_hat_u_stream", "Inst_start_state" : "136", "Inst_end_state" : "151"},
					{"ID" : "45", "SubInstance" : "grp_krnl_bp_Pipeline_l_shrinkage_fu_540", "Port" : "x_hat_u_stream", "Inst_start_state" : "130", "Inst_end_state" : "131"}]},
			{"Name" : "z_stream", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "45", "SubInstance" : "grp_krnl_bp_Pipeline_l_shrinkage_fu_540", "Port" : "z_stream", "Inst_start_state" : "130", "Inst_end_state" : "131"},
					{"ID" : "14", "SubInstance" : "grp_replicate_stream_fu_423", "Port" : "krnl_bp_u_stream", "Inst_start_state" : "132", "Inst_end_state" : "133"}]},
			{"Name" : "z_copy_1_stream", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "49", "SubInstance" : "grp_krnl_bp_Pipeline_l_vec_sub4_fu_549", "Port" : "z_copy_1_stream", "Inst_start_state" : "134", "Inst_end_state" : "135"},
					{"ID" : "14", "SubInstance" : "grp_replicate_stream_fu_423", "Port" : "krnl_bp_u_copy_2_stream", "Inst_start_state" : "132", "Inst_end_state" : "133"}]},
			{"Name" : "x_hat_z_stream", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_vec_add_fu_527", "Port" : "krnl_bp_x_hat_copy_1_stream", "Inst_start_state" : "136", "Inst_end_state" : "151"},
					{"ID" : "49", "SubInstance" : "grp_krnl_bp_Pipeline_l_vec_sub4_fu_549", "Port" : "x_hat_z_stream", "Inst_start_state" : "134", "Inst_end_state" : "135"}]},
			{"Name" : "pow_reduce_anonymous_namespace_log_inverse_lut_table_pow_0_5_64_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "grp_krnl_bp_Pipeline_VITIS_LOOP_1045_3_fu_559", "Port" : "pow_reduce_anonymous_namespace_log_inverse_lut_table_pow_0_5_64_array_V", "Inst_start_state" : "152", "Inst_end_state" : "153"}]},
			{"Name" : "pow_reduce_anonymous_namespace_log0_lut_table_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "grp_krnl_bp_Pipeline_VITIS_LOOP_1045_3_fu_559", "Port" : "pow_reduce_anonymous_namespace_log0_lut_table_array_V", "Inst_start_state" : "152", "Inst_end_state" : "153"}]},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_4_4_16_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "grp_krnl_bp_Pipeline_VITIS_LOOP_1045_3_fu_559", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_4_4_16_array_V", "Inst_start_state" : "152", "Inst_end_state" : "153"}]},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_7_6_64_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "grp_krnl_bp_Pipeline_VITIS_LOOP_1045_3_fu_559", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_7_6_64_array_V", "Inst_start_state" : "152", "Inst_end_state" : "153"}]},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_12_6_64_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "grp_krnl_bp_Pipeline_VITIS_LOOP_1045_3_fu_559", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_12_6_64_array_V", "Inst_start_state" : "152", "Inst_end_state" : "153"}]},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_17_6_64_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "grp_krnl_bp_Pipeline_VITIS_LOOP_1045_3_fu_559", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_17_6_64_array_V", "Inst_start_state" : "152", "Inst_end_state" : "153"}]},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_22_6_64_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "grp_krnl_bp_Pipeline_VITIS_LOOP_1045_3_fu_559", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_22_6_64_array_V", "Inst_start_state" : "152", "Inst_end_state" : "153"}]},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_27_6_64_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "grp_krnl_bp_Pipeline_VITIS_LOOP_1045_3_fu_559", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_27_6_64_array_V", "Inst_start_state" : "152", "Inst_end_state" : "153"}]},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_32_6_64_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "grp_krnl_bp_Pipeline_VITIS_LOOP_1045_3_fu_559", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_32_6_64_array_V", "Inst_start_state" : "152", "Inst_end_state" : "153"}]},
			{"Name" : "pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "grp_krnl_bp_Pipeline_VITIS_LOOP_1045_3_fu_559", "Port" : "pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_array_V", "Inst_start_state" : "152", "Inst_end_state" : "153"}]},
			{"Name" : "pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "grp_krnl_bp_Pipeline_VITIS_LOOP_1045_3_fu_559", "Port" : "pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array_V", "Inst_start_state" : "152", "Inst_end_state" : "153"}]},
			{"Name" : "pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "51", "SubInstance" : "grp_krnl_bp_Pipeline_VITIS_LOOP_1045_3_fu_559", "Port" : "pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_array_V", "Inst_start_state" : "152", "Inst_end_state" : "153"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_vec_add_fu_527", "SubBlockPort" : ["krnl_bp_x_hat_copy_1_stream_blk_n", "krnl_bp_u_copy_2_stream_blk_n", "krnl_bp_x_hat_u_stream_blk_n"]}],
		"Loop" : [
			{"Name" : "l_main", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "263", "FirstState" : "ap_ST_fsm_state84", "LastState" : ["ap_ST_fsm_state187"], "QuitState" : ["ap_ST_fsm_state187"], "PreState" : ["ap_ST_fsm_state83"], "PostState" : ["ap_ST_fsm_state188"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mat_p_bram_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.vec_q_bram_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_bram_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_l_load_input_fu_389", "Parent" : "0", "Child" : ["5"],
		"CDFG" : "krnl_bp_Pipeline_l_load_input",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "67", "EstimateLatencyMax" : "67",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln19", "Type" : "None", "Direction" : "I"},
			{"Name" : "mat_p_bram", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "l_load_input", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_l_load_input_fu_389.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_l_load_input1_fu_398", "Parent" : "0", "Child" : ["7"],
		"CDFG" : "krnl_bp_Pipeline_l_load_input1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem1_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "vec_q_bram", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "l_load_input", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_l_load_input1_fu_398.flow_control_loop_pipe_sequential_init_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_677_1_fu_405", "Parent" : "0", "Child" : ["9"],
		"CDFG" : "krnl_bp_Pipeline_VITIS_LOOP_677_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "u_stream", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "u_stream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_677_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_677_1_fu_405.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_677_12_fu_411", "Parent" : "0", "Child" : ["11"],
		"CDFG" : "krnl_bp_Pipeline_VITIS_LOOP_677_12",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "z_copy_2_stream", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "z_copy_2_stream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_677_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_677_12_fu_411.flow_control_loop_pipe_sequential_init_U", "Parent" : "10"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_677_13_fu_417", "Parent" : "0", "Child" : ["13"],
		"CDFG" : "krnl_bp_Pipeline_VITIS_LOOP_677_13",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "z_old_stream", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "z_old_stream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_677_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_677_13_fu_417.flow_control_loop_pipe_sequential_init_U", "Parent" : "12"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_replicate_stream_fu_423", "Parent" : "0", "Child" : ["15"],
		"CDFG" : "replicate_stream",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "krnl_bp_u_stream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "krnl_bp_u_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "krnl_bp_u_copy_1_stream", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "krnl_bp_u_copy_1_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "krnl_bp_u_copy_2_stream", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "krnl_bp_u_copy_2_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "krnl_bp_u_copy_3_stream", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "krnl_bp_u_copy_3_stream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "l_rep_stream_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_replicate_stream_fu_423.flow_control_loop_pipe_sequential_init_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_980_1_fu_443", "Parent" : "0", "Child" : ["17"],
		"CDFG" : "krnl_bp_Pipeline_VITIS_LOOP_980_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "z_u_stream", "Type" : "Fifo", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "z_u_stream_i_blk_n", "Type" : "RtlSignal"},
					{"Name" : "z_u_stream_o_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_980_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_980_1_fu_443.flow_control_loop_pipe_sequential_init_U", "Parent" : "16"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_l_vec_sub_fu_449", "Parent" : "0", "Child" : ["19"],
		"CDFG" : "krnl_bp_Pipeline_l_vec_sub",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "z_copy_2_stream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "z_copy_2_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "u_copy_1_stream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "u_copy_1_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "z_u_stream", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "z_u_stream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "l_vec_sub", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_l_vec_sub_fu_449.flow_control_loop_pipe_sequential_init_U", "Parent" : "18"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mac_fu_459", "Parent" : "0", "Child" : ["21", "22", "24", "26", "28"],
		"CDFG" : "mac",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "618", "EstimateLatencyMax" : "618",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "mat_p_bram", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_mac_Pipeline_VITIS_LOOP_234_1_fu_83", "Port" : "mat_p_bram", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_stream", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "22", "SubInstance" : "grp_mac_Pipeline_VITIS_LOOP_234_1_fu_83", "Port" : "p_stream", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "26", "SubInstance" : "grp_mac_Pipeline_VITIS_LOOP_259_4_fu_98", "Port" : "p_stream", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "z_u_stream", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_mac_Pipeline_VITIS_LOOP_242_2_fu_91", "Port" : "z_u_stream", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mac_res_stream", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "mac_res_stream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_256_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state7", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state7"], "PreState" : ["ap_ST_fsm_state6"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mac_fu_459.z_u_local_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mac_fu_459.grp_mac_Pipeline_VITIS_LOOP_234_1_fu_83", "Parent" : "20", "Child" : ["23"],
		"CDFG" : "mac_Pipeline_VITIS_LOOP_234_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "66", "EstimateLatencyMax" : "66",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "mat_p_bram", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_stream", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "p_stream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_234_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mac_fu_459.grp_mac_Pipeline_VITIS_LOOP_234_1_fu_83.flow_control_loop_pipe_sequential_init_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mac_fu_459.grp_mac_Pipeline_VITIS_LOOP_242_2_fu_91", "Parent" : "20", "Child" : ["25"],
		"CDFG" : "mac_Pipeline_VITIS_LOOP_242_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "z_u_local", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_u_stream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "z_u_stream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_242_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mac_fu_459.grp_mac_Pipeline_VITIS_LOOP_242_2_fu_91.flow_control_loop_pipe_sequential_init_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mac_fu_459.grp_mac_Pipeline_VITIS_LOOP_259_4_fu_98", "Parent" : "20", "Child" : ["27"],
		"CDFG" : "mac_Pipeline_VITIS_LOOP_259_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "z_u_local", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "result_tmp_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_stream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "p_stream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_259_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "7", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage6", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage6_subdone", "QuitState" : "ap_ST_fsm_pp0_stage6", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage6_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mac_fu_459.grp_mac_Pipeline_VITIS_LOOP_259_4_fu_98.flow_control_loop_pipe_sequential_init_U", "Parent" : "26"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mac_fu_459.p_stream_fifo_U", "Parent" : "20"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_1001_2_fu_471", "Parent" : "0", "Child" : ["30"],
		"CDFG" : "krnl_bp_Pipeline_VITIS_LOOP_1001_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "mac_res_stream", "Type" : "Fifo", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "mac_res_stream_i_blk_n", "Type" : "RtlSignal"},
					{"Name" : "mac_res_stream_o_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1001_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_1001_2_fu_471.flow_control_loop_pipe_sequential_init_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_367_1_fu_477", "Parent" : "0", "Child" : ["32"],
		"CDFG" : "krnl_bp_Pipeline_VITIS_LOOP_367_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "mac_res_stream", "Type" : "Fifo", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "mac_res_stream_i_blk_n", "Type" : "RtlSignal"},
					{"Name" : "mac_res_stream_o_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_367_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_367_1_fu_477.flow_control_loop_pipe_sequential_init_U", "Parent" : "31"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_380_2_fu_483", "Parent" : "0", "Child" : ["34"],
		"CDFG" : "krnl_bp_Pipeline_VITIS_LOOP_380_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "vec_q_bram", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "q_stream", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "q_stream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_380_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_380_2_fu_483.flow_control_loop_pipe_sequential_init_U", "Parent" : "33"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_386_3_fu_491", "Parent" : "0", "Child" : ["36"],
		"CDFG" : "krnl_bp_Pipeline_VITIS_LOOP_386_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "mac_res_stream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "mac_res_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "q_stream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "q_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "x_stream", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "x_stream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_386_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_386_3_fu_491.flow_control_loop_pipe_sequential_init_U", "Parent" : "35"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_514_1_fu_501", "Parent" : "0", "Child" : ["38"],
		"CDFG" : "krnl_bp_Pipeline_VITIS_LOOP_514_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_stream", "Type" : "Fifo", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "x_stream_i_blk_n", "Type" : "RtlSignal"},
					{"Name" : "x_stream_o_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_514_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_514_1_fu_501.flow_control_loop_pipe_sequential_init_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_526_2_fu_507", "Parent" : "0", "Child" : ["40"],
		"CDFG" : "krnl_bp_Pipeline_VITIS_LOOP_526_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "22", "EstimateLatencyMax" : "22",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "alpha", "Type" : "None", "Direction" : "I"},
			{"Name" : "reg_alpha", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_stream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "x_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "z_old_stream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "z_old_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "x_hat_stream", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "x_hat_stream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_526_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter12", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter13", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_526_2_fu_507.flow_control_loop_pipe_sequential_init_U", "Parent" : "39"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_l_write_bram_fu_519", "Parent" : "0", "Child" : ["42"],
		"CDFG" : "krnl_bp_Pipeline_l_write_bram",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_hat_copy_3_stream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "x_hat_copy_3_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "x_bram", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "l_write_bram", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_l_write_bram_fu_519.flow_control_loop_pipe_sequential_init_U", "Parent" : "41"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_vec_add_fu_527", "Parent" : "0", "Child" : ["44"],
		"CDFG" : "vec_add",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "8",
		"VariableLatency" : "0", "ExactLatency" : "15", "EstimateLatencyMin" : "15", "EstimateLatencyMax" : "15",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "krnl_bp_x_hat_copy_1_stream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "krnl_bp_x_hat_copy_1_stream_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "krnl_bp_u_copy_2_stream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "krnl_bp_u_copy_2_stream_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "krnl_bp_x_hat_u_stream", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "krnl_bp_x_hat_u_stream_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_vec_add_fu_527.fadd_32ns_32ns_32_7_full_dsp_1_U53", "Parent" : "43"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_l_shrinkage_fu_540", "Parent" : "0", "Child" : ["46", "47", "48"],
		"CDFG" : "krnl_bp_Pipeline_l_shrinkage",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "27", "EstimateLatencyMax" : "27",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "rho", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_hat_u_stream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "x_hat_u_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "z_stream", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "z_stream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "l_shrinkage", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter18", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter18", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_l_shrinkage_fu_540.fsub_32ns_32ns_32_7_full_dsp_1_U59", "Parent" : "45"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_l_shrinkage_fu_540.fsub_32ns_32ns_32_7_full_dsp_1_U60", "Parent" : "45"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_l_shrinkage_fu_540.flow_control_loop_pipe_sequential_init_U", "Parent" : "45"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_l_vec_sub4_fu_549", "Parent" : "0", "Child" : ["50"],
		"CDFG" : "krnl_bp_Pipeline_l_vec_sub4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x_hat_copy_2_stream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "x_hat_copy_2_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "z_copy_1_stream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "z_copy_1_stream_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "x_hat_z_stream", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "x_hat_z_stream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "l_vec_sub", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_l_vec_sub4_fu_549.flow_control_loop_pipe_sequential_init_U", "Parent" : "49"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_1045_3_fu_559", "Parent" : "0", "Child" : ["52", "80"],
		"CDFG" : "krnl_bp_Pipeline_VITIS_LOOP_1045_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "193", "EstimateLatencyMax" : "193",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "1",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "sub1", "Type" : "None", "Direction" : "I"},
			{"Name" : "r_norm_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "s_norm_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "norm_x_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "norm_z_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "norm_u_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "pow_reduce_anonymous_namespace_log_inverse_lut_table_pow_0_5_64_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "grp_pow_generic_double_s_fu_283", "Port" : "pow_reduce_anonymous_namespace_log_inverse_lut_table_pow_0_5_64_array_V", "Inst_start_state" : "20", "Inst_end_state" : "98"}]},
			{"Name" : "pow_reduce_anonymous_namespace_log0_lut_table_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "grp_pow_generic_double_s_fu_283", "Port" : "pow_reduce_anonymous_namespace_log0_lut_table_array_V", "Inst_start_state" : "20", "Inst_end_state" : "98"}]},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_4_4_16_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "grp_pow_generic_double_s_fu_283", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_4_4_16_array_V", "Inst_start_state" : "20", "Inst_end_state" : "98"}]},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_7_6_64_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "grp_pow_generic_double_s_fu_283", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_7_6_64_array_V", "Inst_start_state" : "20", "Inst_end_state" : "98"}]},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_12_6_64_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "grp_pow_generic_double_s_fu_283", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_12_6_64_array_V", "Inst_start_state" : "20", "Inst_end_state" : "98"}]},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_17_6_64_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "grp_pow_generic_double_s_fu_283", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_17_6_64_array_V", "Inst_start_state" : "20", "Inst_end_state" : "98"}]},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_22_6_64_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "grp_pow_generic_double_s_fu_283", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_22_6_64_array_V", "Inst_start_state" : "20", "Inst_end_state" : "98"}]},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_27_6_64_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "grp_pow_generic_double_s_fu_283", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_27_6_64_array_V", "Inst_start_state" : "20", "Inst_end_state" : "98"}]},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_32_6_64_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "grp_pow_generic_double_s_fu_283", "Port" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_32_6_64_array_V", "Inst_start_state" : "20", "Inst_end_state" : "98"}]},
			{"Name" : "pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "grp_pow_generic_double_s_fu_283", "Port" : "pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_array_V", "Inst_start_state" : "20", "Inst_end_state" : "98"}]},
			{"Name" : "pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "grp_pow_generic_double_s_fu_283", "Port" : "pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array_V", "Inst_start_state" : "20", "Inst_end_state" : "98"}]},
			{"Name" : "pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_array_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "52", "SubInstance" : "grp_pow_generic_double_s_fu_283", "Port" : "pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_array_V", "Inst_start_state" : "20", "Inst_end_state" : "98"}]},
			{"Name" : "z_old_stream", "Type" : "Fifo", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "z_old_stream_i_blk_n", "Type" : "RtlSignal"},
					{"Name" : "z_old_stream_o_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "u_stream", "Type" : "Fifo", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "u_stream_i_blk_n", "Type" : "RtlSignal"},
					{"Name" : "u_stream_o_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "x_bram", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_copy_2_stream", "Type" : "Fifo", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "z_copy_2_stream_o_blk_n", "Type" : "RtlSignal"},
					{"Name" : "z_copy_2_stream_i_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1045_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "12", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage11", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage11_subdone", "QuitState" : "ap_ST_fsm_pp0_stage11", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage11_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_1045_3_fu_559.grp_pow_generic_double_s_fu_283", "Parent" : "51", "Child" : ["53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79"],
		"CDFG" : "pow_generic_double_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "78", "EstimateLatencyMin" : "78", "EstimateLatencyMax" : "78",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "base_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log_inverse_lut_table_pow_0_5_64_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log0_lut_table_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_4_4_16_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_7_6_64_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_12_6_64_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_17_6_64_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_22_6_64_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_27_6_64_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_32_6_64_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_array_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_1045_3_fu_559.grp_pow_generic_double_s_fu_283.pow_reduce_anonymous_namespace_log_inverse_lut_table_pow_0_5_64_array_V_U", "Parent" : "52"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_1045_3_fu_559.grp_pow_generic_double_s_fu_283.pow_reduce_anonymous_namespace_log0_lut_table_array_V_U", "Parent" : "52"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_1045_3_fu_559.grp_pow_generic_double_s_fu_283.pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_4_4_16_array_V_U", "Parent" : "52"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_1045_3_fu_559.grp_pow_generic_double_s_fu_283.pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_7_6_64_array_V_U", "Parent" : "52"},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_1045_3_fu_559.grp_pow_generic_double_s_fu_283.pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_12_6_64_array_V_U", "Parent" : "52"},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_1045_3_fu_559.grp_pow_generic_double_s_fu_283.pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_17_6_64_array_V_U", "Parent" : "52"},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_1045_3_fu_559.grp_pow_generic_double_s_fu_283.pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_22_6_64_array_V_U", "Parent" : "52"},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_1045_3_fu_559.grp_pow_generic_double_s_fu_283.pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_27_6_64_array_V_U", "Parent" : "52"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_1045_3_fu_559.grp_pow_generic_double_s_fu_283.pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_32_6_64_array_V_U", "Parent" : "52"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_1045_3_fu_559.grp_pow_generic_double_s_fu_283.pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_array_V_U", "Parent" : "52"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_1045_3_fu_559.grp_pow_generic_double_s_fu_283.pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array_V_U", "Parent" : "52"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_1045_3_fu_559.grp_pow_generic_double_s_fu_283.pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_array_V_U", "Parent" : "52"},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_1045_3_fu_559.grp_pow_generic_double_s_fu_283.mul_54s_6ns_54_5_1_U71", "Parent" : "52"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_1045_3_fu_559.grp_pow_generic_double_s_fu_283.mul_71ns_4ns_75_5_1_U72", "Parent" : "52"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_1045_3_fu_559.grp_pow_generic_double_s_fu_283.mul_73ns_6ns_79_5_1_U73", "Parent" : "52"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_1045_3_fu_559.grp_pow_generic_double_s_fu_283.mul_83ns_6ns_89_5_1_U74", "Parent" : "52"},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_1045_3_fu_559.grp_pow_generic_double_s_fu_283.mul_92ns_6ns_98_5_1_U75", "Parent" : "52"},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_1045_3_fu_559.grp_pow_generic_double_s_fu_283.mul_87ns_6ns_93_5_1_U76", "Parent" : "52"},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_1045_3_fu_559.grp_pow_generic_double_s_fu_283.mul_82ns_6ns_88_5_1_U77", "Parent" : "52"},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_1045_3_fu_559.grp_pow_generic_double_s_fu_283.mul_77ns_6ns_83_5_1_U78", "Parent" : "52"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_1045_3_fu_559.grp_pow_generic_double_s_fu_283.mul_12s_80ns_90_5_1_U79", "Parent" : "52"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_1045_3_fu_559.grp_pow_generic_double_s_fu_283.mul_40ns_40ns_80_2_1_U80", "Parent" : "52"},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_1045_3_fu_559.grp_pow_generic_double_s_fu_283.mul_13s_71s_71_5_1_U81", "Parent" : "52"},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_1045_3_fu_559.grp_pow_generic_double_s_fu_283.mul_43ns_36ns_79_2_1_U82", "Parent" : "52"},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_1045_3_fu_559.grp_pow_generic_double_s_fu_283.mul_49ns_44ns_93_5_1_U83", "Parent" : "52"},
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_1045_3_fu_559.grp_pow_generic_double_s_fu_283.mul_50ns_50ns_100_5_1_U84", "Parent" : "52"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_1045_3_fu_559.grp_pow_generic_double_s_fu_283.mac_muladd_16s_15ns_19s_31_4_1_U85", "Parent" : "52"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_1045_3_fu_559.flow_control_loop_pipe_sequential_init_U", "Parent" : "51"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_843_1_fu_601", "Parent" : "0", "Child" : ["82"],
		"CDFG" : "krnl_bp_Pipeline_VITIS_LOOP_843_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "u_stream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "u_stream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_843_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_843_1_fu_601.flow_control_loop_pipe_sequential_init_U", "Parent" : "81"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_843_15_fu_607", "Parent" : "0", "Child" : ["84"],
		"CDFG" : "krnl_bp_Pipeline_VITIS_LOOP_843_15",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "z_old_stream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "z_old_stream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_843_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_843_15_fu_607.flow_control_loop_pipe_sequential_init_U", "Parent" : "83"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_843_16_fu_613", "Parent" : "0", "Child" : ["86"],
		"CDFG" : "krnl_bp_Pipeline_VITIS_LOOP_843_16",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "z_copy_2_stream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "z_copy_2_stream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_843_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_843_16_fu_613.flow_control_loop_pipe_sequential_init_U", "Parent" : "85"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_l_write_mem_fu_619", "Parent" : "0", "Child" : ["88"],
		"CDFG" : "krnl_bp_Pipeline_l_write_mem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "shiftreg_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "x_bram", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "l_write_mem", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_l_write_mem_fu_619.flow_control_loop_pipe_sequential_init_U", "Parent" : "87"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem0_m_axi_U", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem1_m_axi_U", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem2_m_axi_U", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.faddfsub_32ns_32ns_32_7_full_dsp_1_U134", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U135", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U136", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fptrunc_64ns_32_2_no_dsp_1_U137", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fptrunc_64ns_32_2_no_dsp_1_U138", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U139", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fpext_32ns_64_2_no_dsp_1_U140", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U141", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U142", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fsqrt_32ns_32ns_32_12_no_dsp_1_U143", "Parent" : "0"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fsqrt_32ns_32ns_32_12_no_dsp_1_U144", "Parent" : "0"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_8_full_dsp_1_U145", "Parent" : "0"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dadd_64ns_64ns_64_8_full_dsp_1_U146", "Parent" : "0"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_res_stream_fifo_U", "Parent" : "0"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.q_stream_fifo_U", "Parent" : "0"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.u_copy_1_stream_fifo_U", "Parent" : "0"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.u_copy_2_stream_fifo_U", "Parent" : "0"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.u_copy_3_stream_fifo_U", "Parent" : "0"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.u_stream_fifo_U", "Parent" : "0"},
	{"ID" : "112", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_hat_copy_1_stream_fifo_U", "Parent" : "0"},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_hat_copy_2_stream_fifo_U", "Parent" : "0"},
	{"ID" : "114", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_hat_copy_3_stream_fifo_U", "Parent" : "0"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_hat_stream_fifo_U", "Parent" : "0"},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_hat_u_stream_fifo_U", "Parent" : "0"},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_hat_z_stream_fifo_U", "Parent" : "0"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_stream_fifo_U", "Parent" : "0"},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_copy_1_stream_fifo_U", "Parent" : "0"},
	{"ID" : "120", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_copy_2_stream_fifo_U", "Parent" : "0"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_old_stream_fifo_U", "Parent" : "0"},
	{"ID" : "122", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_stream_fifo_U", "Parent" : "0"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_u_stream_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	krnl_bp {
		gmem0 {Type I LastRead 1 FirstWrite -1}
		gmem1 {Type I LastRead 71 FirstWrite -1}
		gmem2 {Type O LastRead 195 FirstWrite 194}
		mat_p {Type I LastRead 0 FirstWrite -1}
		vec_q {Type I LastRead 0 FirstWrite -1}
		out_r {Type I LastRead 0 FirstWrite -1}
		rho {Type I LastRead 73 FirstWrite -1}
		alpha {Type I LastRead 73 FirstWrite -1}
		mat_p_bram {Type IO LastRead -1 FirstWrite -1}
		vec_q_bram {Type IO LastRead -1 FirstWrite -1}
		u_stream {Type IO LastRead -1 FirstWrite -1}
		z_copy_2_stream {Type IO LastRead -1 FirstWrite -1}
		z_old_stream {Type IO LastRead -1 FirstWrite -1}
		u_copy_1_stream {Type IO LastRead -1 FirstWrite -1}
		u_copy_2_stream {Type IO LastRead -1 FirstWrite -1}
		u_copy_3_stream {Type IO LastRead -1 FirstWrite -1}
		z_u_stream {Type IO LastRead -1 FirstWrite -1}
		p_stream {Type IO LastRead -1 FirstWrite -1}
		mac_res_stream {Type IO LastRead -1 FirstWrite -1}
		q_stream {Type IO LastRead -1 FirstWrite -1}
		x_stream {Type IO LastRead -1 FirstWrite -1}
		x_hat_stream {Type IO LastRead -1 FirstWrite -1}
		x_hat_copy_1_stream {Type IO LastRead -1 FirstWrite -1}
		x_hat_copy_2_stream {Type IO LastRead -1 FirstWrite -1}
		x_hat_copy_3_stream {Type IO LastRead -1 FirstWrite -1}
		x_bram {Type IO LastRead -1 FirstWrite -1}
		x_hat_u_stream {Type IO LastRead -1 FirstWrite -1}
		z_stream {Type IO LastRead -1 FirstWrite -1}
		z_copy_1_stream {Type IO LastRead -1 FirstWrite -1}
		x_hat_z_stream {Type IO LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_inverse_lut_table_pow_0_5_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log0_lut_table_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_4_4_16_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_7_6_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_12_6_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_17_6_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_22_6_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_27_6_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_32_6_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_array_V {Type I LastRead -1 FirstWrite -1}}
	krnl_bp_Pipeline_l_load_input {
		gmem0 {Type I LastRead 1 FirstWrite -1}
		sext_ln19 {Type I LastRead 0 FirstWrite -1}
		mat_p_bram {Type O LastRead -1 FirstWrite 2}}
	krnl_bp_Pipeline_l_load_input1 {
		gmem1_load {Type I LastRead 0 FirstWrite -1}
		vec_q_bram {Type O LastRead -1 FirstWrite 1}}
	krnl_bp_Pipeline_VITIS_LOOP_677_1 {
		u_stream {Type O LastRead -1 FirstWrite 1}}
	krnl_bp_Pipeline_VITIS_LOOP_677_12 {
		z_copy_2_stream {Type O LastRead -1 FirstWrite 1}}
	krnl_bp_Pipeline_VITIS_LOOP_677_13 {
		z_old_stream {Type O LastRead -1 FirstWrite 1}}
	replicate_stream {
		krnl_bp_u_stream {Type I LastRead 1 FirstWrite -1}
		krnl_bp_u_copy_1_stream {Type O LastRead -1 FirstWrite 2}
		krnl_bp_u_copy_2_stream {Type O LastRead -1 FirstWrite 2}
		krnl_bp_u_copy_3_stream {Type O LastRead -1 FirstWrite 2}}
	krnl_bp_Pipeline_VITIS_LOOP_980_1 {
		z_u_stream {Type IO LastRead 1 FirstWrite 1}}
	krnl_bp_Pipeline_l_vec_sub {
		z_copy_2_stream {Type I LastRead 1 FirstWrite -1}
		u_copy_1_stream {Type I LastRead 1 FirstWrite -1}
		z_u_stream {Type O LastRead -1 FirstWrite 9}}
	mac {
		mat_p_bram {Type I LastRead 0 FirstWrite -1}
		p_stream {Type IO LastRead -1 FirstWrite -1}
		z_u_stream {Type I LastRead 1 FirstWrite -1}
		mac_res_stream {Type O LastRead 8 FirstWrite 8}}
	mac_Pipeline_VITIS_LOOP_234_1 {
		mat_p_bram {Type I LastRead 0 FirstWrite -1}
		p_stream {Type O LastRead -1 FirstWrite 1}}
	mac_Pipeline_VITIS_LOOP_242_2 {
		z_u_local {Type O LastRead -1 FirstWrite 1}
		z_u_stream {Type I LastRead 1 FirstWrite -1}}
	mac_Pipeline_VITIS_LOOP_259_4 {
		z_u_local {Type I LastRead 0 FirstWrite -1}
		result_tmp_out {Type O LastRead -1 FirstWrite 6}
		p_stream {Type I LastRead 1 FirstWrite -1}}
	krnl_bp_Pipeline_VITIS_LOOP_1001_2 {
		mac_res_stream {Type IO LastRead 1 FirstWrite 1}}
	krnl_bp_Pipeline_VITIS_LOOP_367_1 {
		mac_res_stream {Type IO LastRead 1 FirstWrite 1}}
	krnl_bp_Pipeline_VITIS_LOOP_380_2 {
		vec_q_bram {Type I LastRead 0 FirstWrite -1}
		q_stream {Type O LastRead -1 FirstWrite 1}}
	krnl_bp_Pipeline_VITIS_LOOP_386_3 {
		mac_res_stream {Type I LastRead 1 FirstWrite -1}
		q_stream {Type I LastRead 1 FirstWrite -1}
		x_stream {Type O LastRead -1 FirstWrite 9}}
	krnl_bp_Pipeline_VITIS_LOOP_514_1 {
		x_stream {Type IO LastRead 1 FirstWrite 1}}
	krnl_bp_Pipeline_VITIS_LOOP_526_2 {
		alpha {Type I LastRead 0 FirstWrite -1}
		reg_alpha {Type I LastRead 0 FirstWrite -1}
		x_stream {Type I LastRead 1 FirstWrite -1}
		z_old_stream {Type I LastRead 1 FirstWrite -1}
		x_hat_stream {Type O LastRead -1 FirstWrite 13}}
	krnl_bp_Pipeline_l_write_bram {
		x_hat_copy_3_stream {Type I LastRead 1 FirstWrite -1}
		x_bram {Type O LastRead -1 FirstWrite 1}}
	vec_add {
		krnl_bp_x_hat_copy_1_stream {Type I LastRead 7 FirstWrite -1}
		krnl_bp_u_copy_2_stream {Type I LastRead 7 FirstWrite -1}
		krnl_bp_x_hat_u_stream {Type O LastRead -1 FirstWrite 8}}
	krnl_bp_Pipeline_l_shrinkage {
		rho {Type I LastRead 0 FirstWrite -1}
		x_hat_u_stream {Type I LastRead 1 FirstWrite -1}
		z_stream {Type O LastRead -1 FirstWrite 18}}
	krnl_bp_Pipeline_l_vec_sub4 {
		x_hat_copy_2_stream {Type I LastRead 1 FirstWrite -1}
		z_copy_1_stream {Type I LastRead 1 FirstWrite -1}
		x_hat_z_stream {Type O LastRead -1 FirstWrite 9}}
	krnl_bp_Pipeline_VITIS_LOOP_1045_3 {
		sub1 {Type I LastRead 0 FirstWrite -1}
		r_norm_1_out {Type O LastRead -1 FirstWrite 95}
		s_norm_1_out {Type O LastRead -1 FirstWrite 95}
		norm_x_1_out {Type O LastRead -1 FirstWrite 95}
		norm_z_1_out {Type O LastRead -1 FirstWrite 95}
		norm_u_out {Type O LastRead -1 FirstWrite 95}
		pow_reduce_anonymous_namespace_log_inverse_lut_table_pow_0_5_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log0_lut_table_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_4_4_16_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_7_6_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_12_6_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_17_6_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_22_6_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_27_6_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_32_6_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_array_V {Type I LastRead -1 FirstWrite -1}
		z_old_stream {Type IO LastRead 5 FirstWrite 5}
		u_stream {Type IO LastRead 2 FirstWrite 2}
		x_bram {Type I LastRead 0 FirstWrite -1}
		z_copy_2_stream {Type IO LastRead 1 FirstWrite 6}}
	pow_generic_double_s {
		base_r {Type I LastRead 0 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_inverse_lut_table_pow_0_5_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log0_lut_table_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_4_4_16_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_7_6_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_12_6_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_17_6_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_22_6_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_27_6_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_32_6_64_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_array_V {Type I LastRead -1 FirstWrite -1}
		pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_array_V {Type I LastRead -1 FirstWrite -1}}
	krnl_bp_Pipeline_VITIS_LOOP_843_1 {
		u_stream {Type I LastRead 1 FirstWrite -1}}
	krnl_bp_Pipeline_VITIS_LOOP_843_15 {
		z_old_stream {Type I LastRead 1 FirstWrite -1}}
	krnl_bp_Pipeline_VITIS_LOOP_843_16 {
		z_copy_2_stream {Type I LastRead 1 FirstWrite -1}}
	krnl_bp_Pipeline_l_write_mem {
		shiftreg_out {Type O LastRead -1 FirstWrite 0}
		x_bram {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem0 { m_axi {  { m_axi_gmem0_AWVALID VALID 1 1 }  { m_axi_gmem0_AWREADY READY 0 1 }  { m_axi_gmem0_AWADDR ADDR 1 64 }  { m_axi_gmem0_AWID ID 1 1 }  { m_axi_gmem0_AWLEN SIZE 1 8 }  { m_axi_gmem0_AWSIZE BURST 1 3 }  { m_axi_gmem0_AWBURST LOCK 1 2 }  { m_axi_gmem0_AWLOCK CACHE 1 2 }  { m_axi_gmem0_AWCACHE PROT 1 4 }  { m_axi_gmem0_AWPROT QOS 1 3 }  { m_axi_gmem0_AWQOS REGION 1 4 }  { m_axi_gmem0_AWREGION USER 1 4 }  { m_axi_gmem0_AWUSER DATA 1 1 }  { m_axi_gmem0_WVALID VALID 1 1 }  { m_axi_gmem0_WREADY READY 0 1 }  { m_axi_gmem0_WDATA FIFONUM 1 512 }  { m_axi_gmem0_WSTRB STRB 1 64 }  { m_axi_gmem0_WLAST LAST 1 1 }  { m_axi_gmem0_WID ID 1 1 }  { m_axi_gmem0_WUSER DATA 1 1 }  { m_axi_gmem0_ARVALID VALID 1 1 }  { m_axi_gmem0_ARREADY READY 0 1 }  { m_axi_gmem0_ARADDR ADDR 1 64 }  { m_axi_gmem0_ARID ID 1 1 }  { m_axi_gmem0_ARLEN SIZE 1 8 }  { m_axi_gmem0_ARSIZE BURST 1 3 }  { m_axi_gmem0_ARBURST LOCK 1 2 }  { m_axi_gmem0_ARLOCK CACHE 1 2 }  { m_axi_gmem0_ARCACHE PROT 1 4 }  { m_axi_gmem0_ARPROT QOS 1 3 }  { m_axi_gmem0_ARQOS REGION 1 4 }  { m_axi_gmem0_ARREGION USER 1 4 }  { m_axi_gmem0_ARUSER DATA 1 1 }  { m_axi_gmem0_RVALID VALID 0 1 }  { m_axi_gmem0_RREADY READY 1 1 }  { m_axi_gmem0_RDATA FIFONUM 0 512 }  { m_axi_gmem0_RLAST LAST 0 1 }  { m_axi_gmem0_RID ID 0 1 }  { m_axi_gmem0_RUSER DATA 0 1 }  { m_axi_gmem0_RRESP RESP 0 2 }  { m_axi_gmem0_BVALID VALID 0 1 }  { m_axi_gmem0_BREADY READY 1 1 }  { m_axi_gmem0_BRESP RESP 0 2 }  { m_axi_gmem0_BID ID 0 1 }  { m_axi_gmem0_BUSER DATA 0 1 } } }
	gmem1 { m_axi {  { m_axi_gmem1_AWVALID VALID 1 1 }  { m_axi_gmem1_AWREADY READY 0 1 }  { m_axi_gmem1_AWADDR ADDR 1 64 }  { m_axi_gmem1_AWID ID 1 1 }  { m_axi_gmem1_AWLEN SIZE 1 8 }  { m_axi_gmem1_AWSIZE BURST 1 3 }  { m_axi_gmem1_AWBURST LOCK 1 2 }  { m_axi_gmem1_AWLOCK CACHE 1 2 }  { m_axi_gmem1_AWCACHE PROT 1 4 }  { m_axi_gmem1_AWPROT QOS 1 3 }  { m_axi_gmem1_AWQOS REGION 1 4 }  { m_axi_gmem1_AWREGION USER 1 4 }  { m_axi_gmem1_AWUSER DATA 1 1 }  { m_axi_gmem1_WVALID VALID 1 1 }  { m_axi_gmem1_WREADY READY 0 1 }  { m_axi_gmem1_WDATA FIFONUM 1 256 }  { m_axi_gmem1_WSTRB STRB 1 32 }  { m_axi_gmem1_WLAST LAST 1 1 }  { m_axi_gmem1_WID ID 1 1 }  { m_axi_gmem1_WUSER DATA 1 1 }  { m_axi_gmem1_ARVALID VALID 1 1 }  { m_axi_gmem1_ARREADY READY 0 1 }  { m_axi_gmem1_ARADDR ADDR 1 64 }  { m_axi_gmem1_ARID ID 1 1 }  { m_axi_gmem1_ARLEN SIZE 1 8 }  { m_axi_gmem1_ARSIZE BURST 1 3 }  { m_axi_gmem1_ARBURST LOCK 1 2 }  { m_axi_gmem1_ARLOCK CACHE 1 2 }  { m_axi_gmem1_ARCACHE PROT 1 4 }  { m_axi_gmem1_ARPROT QOS 1 3 }  { m_axi_gmem1_ARQOS REGION 1 4 }  { m_axi_gmem1_ARREGION USER 1 4 }  { m_axi_gmem1_ARUSER DATA 1 1 }  { m_axi_gmem1_RVALID VALID 0 1 }  { m_axi_gmem1_RREADY READY 1 1 }  { m_axi_gmem1_RDATA FIFONUM 0 256 }  { m_axi_gmem1_RLAST LAST 0 1 }  { m_axi_gmem1_RID ID 0 1 }  { m_axi_gmem1_RUSER DATA 0 1 }  { m_axi_gmem1_RRESP RESP 0 2 }  { m_axi_gmem1_BVALID VALID 0 1 }  { m_axi_gmem1_BREADY READY 1 1 }  { m_axi_gmem1_BRESP RESP 0 2 }  { m_axi_gmem1_BID ID 0 1 }  { m_axi_gmem1_BUSER DATA 0 1 } } }
	gmem2 { m_axi {  { m_axi_gmem2_AWVALID VALID 1 1 }  { m_axi_gmem2_AWREADY READY 0 1 }  { m_axi_gmem2_AWADDR ADDR 1 64 }  { m_axi_gmem2_AWID ID 1 1 }  { m_axi_gmem2_AWLEN SIZE 1 8 }  { m_axi_gmem2_AWSIZE BURST 1 3 }  { m_axi_gmem2_AWBURST LOCK 1 2 }  { m_axi_gmem2_AWLOCK CACHE 1 2 }  { m_axi_gmem2_AWCACHE PROT 1 4 }  { m_axi_gmem2_AWPROT QOS 1 3 }  { m_axi_gmem2_AWQOS REGION 1 4 }  { m_axi_gmem2_AWREGION USER 1 4 }  { m_axi_gmem2_AWUSER DATA 1 1 }  { m_axi_gmem2_WVALID VALID 1 1 }  { m_axi_gmem2_WREADY READY 0 1 }  { m_axi_gmem2_WDATA FIFONUM 1 256 }  { m_axi_gmem2_WSTRB STRB 1 32 }  { m_axi_gmem2_WLAST LAST 1 1 }  { m_axi_gmem2_WID ID 1 1 }  { m_axi_gmem2_WUSER DATA 1 1 }  { m_axi_gmem2_ARVALID VALID 1 1 }  { m_axi_gmem2_ARREADY READY 0 1 }  { m_axi_gmem2_ARADDR ADDR 1 64 }  { m_axi_gmem2_ARID ID 1 1 }  { m_axi_gmem2_ARLEN SIZE 1 8 }  { m_axi_gmem2_ARSIZE BURST 1 3 }  { m_axi_gmem2_ARBURST LOCK 1 2 }  { m_axi_gmem2_ARLOCK CACHE 1 2 }  { m_axi_gmem2_ARCACHE PROT 1 4 }  { m_axi_gmem2_ARPROT QOS 1 3 }  { m_axi_gmem2_ARQOS REGION 1 4 }  { m_axi_gmem2_ARREGION USER 1 4 }  { m_axi_gmem2_ARUSER DATA 1 1 }  { m_axi_gmem2_RVALID VALID 0 1 }  { m_axi_gmem2_RREADY READY 1 1 }  { m_axi_gmem2_RDATA FIFONUM 0 256 }  { m_axi_gmem2_RLAST LAST 0 1 }  { m_axi_gmem2_RID ID 0 1 }  { m_axi_gmem2_RUSER DATA 0 1 }  { m_axi_gmem2_RRESP RESP 0 2 }  { m_axi_gmem2_BVALID VALID 0 1 }  { m_axi_gmem2_BREADY READY 1 1 }  { m_axi_gmem2_BRESP RESP 0 2 }  { m_axi_gmem2_BID ID 0 1 }  { m_axi_gmem2_BUSER DATA 0 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict gmem0 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem1 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem2 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE WRITE_ONLY}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmem0 64 }
	{ gmem1 64 }
	{ gmem2 64 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmem0 64 }
	{ gmem1 64 }
	{ gmem2 64 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
