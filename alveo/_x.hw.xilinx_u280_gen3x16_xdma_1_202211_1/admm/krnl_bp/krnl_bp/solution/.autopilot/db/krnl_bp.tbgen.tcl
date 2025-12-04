set moduleName krnl_bp
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_chain
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {krnl_bp}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem0 int 32 regular {axi_master 0}  }
	{ gmem1 int 32 regular {axi_master 0}  }
	{ gmem2 int 32 regular {axi_master 1}  }
	{ mat_p int 64 regular {axi_slave 0}  }
	{ vec_q int 64 regular {axi_slave 0}  }
	{ out_r int 64 regular {axi_slave 0}  }
	{ rho float 32 regular {axi_slave 0}  }
	{ alpha float 32 regular {axi_slave 0}  }
	{ N int 32 regular {axi_slave 0}  }
	{ chunk_size int 32 regular {axi_slave 0}  }
}
set hasAXIMCache 0
set AXIMCacheInstList { }
set C_modelArgMapList {[ 
	{ "Name" : "gmem0", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "mat_p","offset": { "type": "dynamic","port_name": "mat_p","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "gmem1", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "vec_q","offset": { "type": "dynamic","port_name": "vec_q","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "gmem2", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "out_r","offset": { "type": "dynamic","port_name": "out_r","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "mat_p", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "vec_q", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "out_r", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":51}} , 
 	{ "Name" : "rho", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":52}, "offset_end" : {"in":59}} , 
 	{ "Name" : "alpha", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":60}, "offset_end" : {"in":67}} , 
 	{ "Name" : "N", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":68}, "offset_end" : {"in":75}} , 
 	{ "Name" : "chunk_size", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":76}, "offset_end" : {"in":83}} ]}
# RTL Port declarations: 
set portNum 155
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
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
	{ m_axi_gmem0_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_WSTRB sc_out sc_lv 4 signal 0 } 
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
	{ m_axi_gmem0_RDATA sc_in sc_lv 32 signal 0 } 
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
	{ m_axi_gmem1_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_gmem1_WSTRB sc_out sc_lv 4 signal 1 } 
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
	{ m_axi_gmem1_RDATA sc_in sc_lv 32 signal 1 } 
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
	{ m_axi_gmem2_WDATA sc_out sc_lv 32 signal 2 } 
	{ m_axi_gmem2_WSTRB sc_out sc_lv 4 signal 2 } 
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
	{ m_axi_gmem2_RDATA sc_in sc_lv 32 signal 2 } 
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
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"krnl_bp","role":"start","value":"0","valid_bit":"0"},{"name":"krnl_bp","role":"continue","value":"0","valid_bit":"4"},{"name":"krnl_bp","role":"auto_start","value":"0","valid_bit":"7"},{"name":"mat_p","role":"data","value":"16"},{"name":"vec_q","role":"data","value":"28"},{"name":"out_r","role":"data","value":"40"},{"name":"rho","role":"data","value":"52"},{"name":"alpha","role":"data","value":"60"},{"name":"N","role":"data","value":"68"},{"name":"chunk_size","role":"data","value":"76"}] },
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
 	{ "name": "m_axi_gmem0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "WSTRB" }} , 
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
 	{ "name": "m_axi_gmem0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "RDATA" }} , 
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
 	{ "name": "m_axi_gmem1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem1", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "WSTRB" }} , 
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
 	{ "name": "m_axi_gmem1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem1", "role": "RDATA" }} , 
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
 	{ "name": "m_axi_gmem2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem2", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem2", "role": "WSTRB" }} , 
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
 	{ "name": "m_axi_gmem2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem2", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RID" }} , 
 	{ "name": "m_axi_gmem2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem2", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BID" }} , 
 	{ "name": "m_axi_gmem2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem2", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "131", "135", "138", "141", "146", "155", "159", "163", "166", "167", "168", "169", "170", "171", "172", "173", "174"],
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
					{"Name" : "gmem0_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem1_blk_n_AR", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "135", "SubInstance" : "grp_krnl_bp_Pipeline_VITIS_LOOP_636_7_fu_1357", "Port" : "gmem1", "Inst_start_state" : "172", "Inst_end_state" : "173"}]},
			{"Name" : "gmem2", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem2_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem2_blk_n_B", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "163", "SubInstance" : "grp_krnl_bp_Pipeline_VITIS_LOOP_679_12_fu_1633", "Port" : "gmem2", "Inst_start_state" : "183", "Inst_end_state" : "184"}]},
			{"Name" : "mat_p", "Type" : "None", "Direction" : "I"},
			{"Name" : "vec_q", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "rho", "Type" : "None", "Direction" : "I"},
			{"Name" : "alpha", "Type" : "None", "Direction" : "I"},
			{"Name" : "N", "Type" : "None", "Direction" : "I"},
			{"Name" : "chunk_size", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_627_6", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "252", "FirstState" : "ap_ST_fsm_state87", "LastState" : ["ap_ST_fsm_state99"], "QuitState" : ["ap_ST_fsm_state87"], "PreState" : ["ap_ST_fsm_state86"], "PostState" : ["ap_ST_fsm_state100"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_624_5", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "252", "FirstState" : "ap_ST_fsm_state86", "LastState" : ["ap_ST_fsm_state100"], "QuitState" : ["ap_ST_fsm_state86"], "PreState" : ["ap_ST_fsm_state85"], "PostState" : ["ap_ST_fsm_state101"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_616_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "252", "FirstState" : "ap_ST_fsm_state14", "LastState" : ["ap_ST_fsm_state181"], "QuitState" : ["ap_ST_fsm_state14"], "PreState" : ["ap_ST_fsm_state13"], "PostState" : ["ap_ST_fsm_state182"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "VITIS_LOOP_602_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "252", "FirstState" : "ap_ST_fsm_state9", "LastState" : ["ap_ST_fsm_state252"], "QuitState" : ["ap_ST_fsm_state9"], "PreState" : ["ap_ST_fsm_state8"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_7_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_8_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_9_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_10_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_11_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_12_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_13_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_14_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_15_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.u_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.u_1_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.u_2_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.u_3_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.u_4_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.u_5_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.u_6_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.u_7_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.u_8_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.u_9_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.u_10_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.u_11_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.u_12_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.u_13_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.u_14_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.u_15_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_1_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_2_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_3_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_4_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_5_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_6_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_7_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_8_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_9_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_10_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_11_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_12_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_13_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_14_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_15_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_old_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_old_1_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_old_2_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_old_3_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_old_4_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_old_5_U", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_old_6_U", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_old_7_U", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_old_8_U", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_old_9_U", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_old_10_U", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_old_11_U", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_old_12_U", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_old_13_U", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_old_14_U", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_old_15_U", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_u_U", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_u_1_U", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_u_2_U", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_u_3_U", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_u_4_U", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_u_5_U", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_u_6_U", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_u_7_U", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_u_8_U", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_u_9_U", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_u_10_U", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_u_11_U", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_u_12_U", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_u_13_U", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_u_14_U", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_u_15_U", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_res_U", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_res_1_U", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_res_2_U", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_res_3_U", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_res_4_U", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_res_5_U", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_res_6_U", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_res_7_U", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_res_8_U", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_res_9_U", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_res_10_U", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_res_11_U", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_res_12_U", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_res_13_U", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_res_14_U", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_res_15_U", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_hat_U", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_hat_1_U", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_hat_2_U", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_hat_3_U", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_hat_4_U", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_hat_5_U", "Parent" : "0"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_hat_6_U", "Parent" : "0"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_hat_7_U", "Parent" : "0"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_hat_8_U", "Parent" : "0"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_hat_9_U", "Parent" : "0"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_hat_10_U", "Parent" : "0"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_hat_11_U", "Parent" : "0"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_hat_12_U", "Parent" : "0"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_hat_13_U", "Parent" : "0"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_hat_14_U", "Parent" : "0"},
	{"ID" : "112", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_hat_15_U", "Parent" : "0"},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_hat_z_U", "Parent" : "0"},
	{"ID" : "114", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_hat_z_1_U", "Parent" : "0"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_hat_z_2_U", "Parent" : "0"},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_hat_z_3_U", "Parent" : "0"},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_hat_z_4_U", "Parent" : "0"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_hat_z_5_U", "Parent" : "0"},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_hat_z_6_U", "Parent" : "0"},
	{"ID" : "120", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_hat_z_7_U", "Parent" : "0"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_hat_z_8_U", "Parent" : "0"},
	{"ID" : "122", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_hat_z_9_U", "Parent" : "0"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_hat_z_10_U", "Parent" : "0"},
	{"ID" : "124", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_hat_z_11_U", "Parent" : "0"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_hat_z_12_U", "Parent" : "0"},
	{"ID" : "126", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_hat_z_13_U", "Parent" : "0"},
	{"ID" : "127", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_hat_z_14_U", "Parent" : "0"},
	{"ID" : "128", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.x_hat_z_15_U", "Parent" : "0"},
	{"ID" : "129", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_606_2_fu_1235", "Parent" : "0", "Child" : ["130"],
		"CDFG" : "krnl_bp_Pipeline_VITIS_LOOP_606_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
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
			{"Name" : "chunk", "Type" : "None", "Direction" : "I"},
			{"Name" : "z_old_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_old_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_old_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_old_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_old_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_old_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_old_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_old_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_old_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_old_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_old_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_old_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_old_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_old_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_old_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_old", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "u_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "u_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "u_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "u_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "u_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "u_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "u_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "u_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "u_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "u_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "u_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "u_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "u_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "u_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "u_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "u", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z", "Type" : "Memory", "Direction" : "O"},
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
			{"Name" : "x", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_606_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_606_2_fu_1235.flow_control_loop_pipe_sequential_init_U", "Parent" : "129"},
	{"ID" : "131", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_618_4_fu_1304", "Parent" : "0", "Child" : ["132", "133", "134"],
		"CDFG" : "krnl_bp_Pipeline_VITIS_LOOP_618_4",
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
			{"Name" : "z_u_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_u_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_u_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_u_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_u_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_u_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_u_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_u_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_u_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_u_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_u_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_u_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_u_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_u_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_u_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_u", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_old", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_old_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_old_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_old_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_old_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_old_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_old_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_old_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_old_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_old_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_old_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_old_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_old_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_old_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_old_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_old_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "u", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "u_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "u_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "u_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "u_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "u_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "u_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "u_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "u_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "u_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "u_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "u_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "u_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "u_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "u_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "u_15", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_618_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_618_4_fu_1304.sparsemux_33_4_32_1_1_U67", "Parent" : "131"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_618_4_fu_1304.sparsemux_33_4_32_1_1_U68", "Parent" : "131"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_618_4_fu_1304.flow_control_loop_pipe_sequential_init_U", "Parent" : "131"},
	{"ID" : "135", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_636_7_fu_1357", "Parent" : "0", "Child" : ["136", "137"],
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
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_636_7_fu_1357.sparsemux_33_4_32_1_1_U120", "Parent" : "135"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_636_7_fu_1357.flow_control_loop_pipe_sequential_init_U", "Parent" : "135"},
	{"ID" : "138", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_642_8_fu_1397", "Parent" : "0", "Child" : ["139", "140"],
		"CDFG" : "krnl_bp_Pipeline_VITIS_LOOP_642_8",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "chunk", "Type" : "None", "Direction" : "I"},
			{"Name" : "z_old_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_old_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_old_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_old_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_old_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_old_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_old_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_old_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_old_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_old_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_old_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_old_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_old_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_old_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_old_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_old", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_15", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_642_8", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_642_8_fu_1397.sparsemux_33_4_32_1_1_U156", "Parent" : "138"},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_642_8_fu_1397.flow_control_loop_pipe_sequential_init_U", "Parent" : "138"},
	{"ID" : "141", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_648_9_fu_1434", "Parent" : "0", "Child" : ["142", "143", "144", "145"],
		"CDFG" : "krnl_bp_Pipeline_VITIS_LOOP_648_9",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "chunk", "Type" : "None", "Direction" : "I"},
			{"Name" : "x_hat_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_hat_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_hat_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_hat_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_hat_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_hat_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_hat_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_hat_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_hat_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_hat_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_hat_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_hat_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_hat_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_hat_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_hat_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_hat", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "alpha", "Type" : "None", "Direction" : "I"},
			{"Name" : "z_old", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_old_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_old_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_old_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_old_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_old_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_old_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_old_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_old_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_old_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_old_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_old_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_old_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_old_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_old_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_old_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sub", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_648_9", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter13", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter13", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_648_9_fu_1434.fmul_32ns_32ns_32_4_max_dsp_1_U192", "Parent" : "141"},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_648_9_fu_1434.sparsemux_33_4_32_1_1_U193", "Parent" : "141"},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_648_9_fu_1434.sparsemux_33_4_32_1_1_U194", "Parent" : "141"},
	{"ID" : "145", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_648_9_fu_1434.flow_control_loop_pipe_sequential_init_U", "Parent" : "141"},
	{"ID" : "146", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_shrinkage_loop_fu_1489", "Parent" : "0", "Child" : ["147", "148", "149", "150", "151", "152", "153", "154"],
		"CDFG" : "krnl_bp_Pipeline_shrinkage_loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "28", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "chunk", "Type" : "None", "Direction" : "I"},
			{"Name" : "z_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "z", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_hat", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_hat_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_hat_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_hat_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_hat_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_hat_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_hat_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_hat_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_hat_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_hat_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_hat_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_hat_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_hat_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_hat_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_hat_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_hat_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "u", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "u_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "u_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "u_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "u_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "u_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "u_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "u_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "u_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "u_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "u_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "u_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "u_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "u_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "u_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "u_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rho", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "shrinkage_loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter26", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter26", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "147", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_shrinkage_loop_fu_1489.fsub_32ns_32ns_32_7_full_dsp_1_U248", "Parent" : "146"},
	{"ID" : "148", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_shrinkage_loop_fu_1489.fsub_32ns_32ns_32_7_full_dsp_1_U249", "Parent" : "146"},
	{"ID" : "149", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_shrinkage_loop_fu_1489.fsub_32ns_32ns_32_7_full_dsp_1_U250", "Parent" : "146"},
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_shrinkage_loop_fu_1489.fcmp_32ns_32ns_1_2_no_dsp_1_U251", "Parent" : "146"},
	{"ID" : "151", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_shrinkage_loop_fu_1489.fcmp_32ns_32ns_1_2_no_dsp_1_U252", "Parent" : "146"},
	{"ID" : "152", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_shrinkage_loop_fu_1489.sparsemux_33_4_32_1_1_U253", "Parent" : "146"},
	{"ID" : "153", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_shrinkage_loop_fu_1489.sparsemux_33_4_32_1_1_U254", "Parent" : "146"},
	{"ID" : "154", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_shrinkage_loop_fu_1489.flow_control_loop_pipe_sequential_init_U", "Parent" : "146"},
	{"ID" : "155", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_665_10_fu_1543", "Parent" : "0", "Child" : ["156", "157", "158"],
		"CDFG" : "krnl_bp_Pipeline_VITIS_LOOP_665_10",
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
			{"Name" : "x_hat_z_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_hat_z_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_hat_z_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_hat_z_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_hat_z_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_hat_z_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_hat_z_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_hat_z_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_hat_z_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_hat_z_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_hat_z_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_hat_z_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_hat_z_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_hat_z_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_hat_z_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_hat_z", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "x_hat", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_hat_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_hat_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_hat_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_hat_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_hat_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_hat_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_hat_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_hat_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_hat_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_hat_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_hat_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_hat_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_hat_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_hat_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_hat_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "z_15", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_665_10", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter9", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter9", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "156", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_665_10_fu_1543.sparsemux_33_4_32_1_1_U308", "Parent" : "155"},
	{"ID" : "157", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_665_10_fu_1543.sparsemux_33_4_32_1_1_U309", "Parent" : "155"},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_665_10_fu_1543.flow_control_loop_pipe_sequential_init_U", "Parent" : "155"},
	{"ID" : "159", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_671_11_fu_1596", "Parent" : "0", "Child" : ["160", "161", "162"],
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
	{"ID" : "160", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_671_11_fu_1596.sparsemux_33_4_32_1_1_U360", "Parent" : "159"},
	{"ID" : "161", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_671_11_fu_1596.sparsemux_33_4_32_1_1_U361", "Parent" : "159"},
	{"ID" : "162", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_671_11_fu_1596.flow_control_loop_pipe_sequential_init_U", "Parent" : "159"},
	{"ID" : "163", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_679_12_fu_1633", "Parent" : "0", "Child" : ["164", "165"],
		"CDFG" : "krnl_bp_Pipeline_VITIS_LOOP_679_12",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
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
			{"Name" : "gmem2", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem2_blk_n_W", "Type" : "RtlSignal"}]},
			{"Name" : "chunk", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln679", "Type" : "None", "Direction" : "I"},
			{"Name" : "x", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "x_15", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_679_12", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_679_12_fu_1633.sparsemux_33_4_32_1_1_U395", "Parent" : "163"},
	{"ID" : "165", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_krnl_bp_Pipeline_VITIS_LOOP_679_12_fu_1633.flow_control_loop_pipe_sequential_init_U", "Parent" : "163"},
	{"ID" : "166", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "167", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem0_m_axi_U", "Parent" : "0"},
	{"ID" : "168", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem1_m_axi_U", "Parent" : "0"},
	{"ID" : "169", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem2_m_axi_U", "Parent" : "0"},
	{"ID" : "170", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.faddfsub_32ns_32ns_32_7_full_dsp_1_U415", "Parent" : "0"},
	{"ID" : "171", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U416", "Parent" : "0"},
	{"ID" : "172", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_32s_62_2_1_U417", "Parent" : "0"},
	{"ID" : "173", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_2_1_U418", "Parent" : "0"},
	{"ID" : "174", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sparsemux_33_4_32_1_1_U419", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	krnl_bp {
		gmem0 {Type I LastRead 87 FirstWrite -1}
		gmem1 {Type I LastRead 86 FirstWrite -1}
		gmem2 {Type O LastRead 17 FirstWrite 2}
		mat_p {Type I LastRead 7 FirstWrite -1}
		vec_q {Type I LastRead 7 FirstWrite -1}
		out_r {Type I LastRead 7 FirstWrite -1}
		rho {Type I LastRead 7 FirstWrite -1}
		alpha {Type I LastRead 0 FirstWrite -1}
		N {Type I LastRead 5 FirstWrite -1}
		chunk_size {Type I LastRead 5 FirstWrite -1}}
	krnl_bp_Pipeline_VITIS_LOOP_606_2 {
		chunk {Type I LastRead 0 FirstWrite -1}
		z_old_15 {Type O LastRead -1 FirstWrite 0}
		z_old_14 {Type O LastRead -1 FirstWrite 0}
		z_old_13 {Type O LastRead -1 FirstWrite 0}
		z_old_12 {Type O LastRead -1 FirstWrite 0}
		z_old_11 {Type O LastRead -1 FirstWrite 0}
		z_old_10 {Type O LastRead -1 FirstWrite 0}
		z_old_9 {Type O LastRead -1 FirstWrite 0}
		z_old_8 {Type O LastRead -1 FirstWrite 0}
		z_old_7 {Type O LastRead -1 FirstWrite 0}
		z_old_6 {Type O LastRead -1 FirstWrite 0}
		z_old_5 {Type O LastRead -1 FirstWrite 0}
		z_old_4 {Type O LastRead -1 FirstWrite 0}
		z_old_3 {Type O LastRead -1 FirstWrite 0}
		z_old_2 {Type O LastRead -1 FirstWrite 0}
		z_old_1 {Type O LastRead -1 FirstWrite 0}
		z_old {Type O LastRead -1 FirstWrite 0}
		u_15 {Type O LastRead -1 FirstWrite 0}
		u_14 {Type O LastRead -1 FirstWrite 0}
		u_13 {Type O LastRead -1 FirstWrite 0}
		u_12 {Type O LastRead -1 FirstWrite 0}
		u_11 {Type O LastRead -1 FirstWrite 0}
		u_10 {Type O LastRead -1 FirstWrite 0}
		u_9 {Type O LastRead -1 FirstWrite 0}
		u_8 {Type O LastRead -1 FirstWrite 0}
		u_7 {Type O LastRead -1 FirstWrite 0}
		u_6 {Type O LastRead -1 FirstWrite 0}
		u_5 {Type O LastRead -1 FirstWrite 0}
		u_4 {Type O LastRead -1 FirstWrite 0}
		u_3 {Type O LastRead -1 FirstWrite 0}
		u_2 {Type O LastRead -1 FirstWrite 0}
		u_1 {Type O LastRead -1 FirstWrite 0}
		u {Type O LastRead -1 FirstWrite 0}
		z_15 {Type O LastRead -1 FirstWrite 0}
		z_14 {Type O LastRead -1 FirstWrite 0}
		z_13 {Type O LastRead -1 FirstWrite 0}
		z_12 {Type O LastRead -1 FirstWrite 0}
		z_11 {Type O LastRead -1 FirstWrite 0}
		z_10 {Type O LastRead -1 FirstWrite 0}
		z_9 {Type O LastRead -1 FirstWrite 0}
		z_8 {Type O LastRead -1 FirstWrite 0}
		z_7 {Type O LastRead -1 FirstWrite 0}
		z_6 {Type O LastRead -1 FirstWrite 0}
		z_5 {Type O LastRead -1 FirstWrite 0}
		z_4 {Type O LastRead -1 FirstWrite 0}
		z_3 {Type O LastRead -1 FirstWrite 0}
		z_2 {Type O LastRead -1 FirstWrite 0}
		z_1 {Type O LastRead -1 FirstWrite 0}
		z {Type O LastRead -1 FirstWrite 0}
		x_15 {Type O LastRead -1 FirstWrite 0}
		x_14 {Type O LastRead -1 FirstWrite 0}
		x_13 {Type O LastRead -1 FirstWrite 0}
		x_12 {Type O LastRead -1 FirstWrite 0}
		x_11 {Type O LastRead -1 FirstWrite 0}
		x_10 {Type O LastRead -1 FirstWrite 0}
		x_9 {Type O LastRead -1 FirstWrite 0}
		x_8 {Type O LastRead -1 FirstWrite 0}
		x_7 {Type O LastRead -1 FirstWrite 0}
		x_6 {Type O LastRead -1 FirstWrite 0}
		x_5 {Type O LastRead -1 FirstWrite 0}
		x_4 {Type O LastRead -1 FirstWrite 0}
		x_3 {Type O LastRead -1 FirstWrite 0}
		x_2 {Type O LastRead -1 FirstWrite 0}
		x_1 {Type O LastRead -1 FirstWrite 0}
		x {Type O LastRead -1 FirstWrite 0}}
	krnl_bp_Pipeline_VITIS_LOOP_618_4 {
		chunk {Type I LastRead 0 FirstWrite -1}
		z_u_15 {Type O LastRead -1 FirstWrite 9}
		z_u_14 {Type O LastRead -1 FirstWrite 9}
		z_u_13 {Type O LastRead -1 FirstWrite 9}
		z_u_12 {Type O LastRead -1 FirstWrite 9}
		z_u_11 {Type O LastRead -1 FirstWrite 9}
		z_u_10 {Type O LastRead -1 FirstWrite 9}
		z_u_9 {Type O LastRead -1 FirstWrite 9}
		z_u_8 {Type O LastRead -1 FirstWrite 9}
		z_u_7 {Type O LastRead -1 FirstWrite 9}
		z_u_6 {Type O LastRead -1 FirstWrite 9}
		z_u_5 {Type O LastRead -1 FirstWrite 9}
		z_u_4 {Type O LastRead -1 FirstWrite 9}
		z_u_3 {Type O LastRead -1 FirstWrite 9}
		z_u_2 {Type O LastRead -1 FirstWrite 9}
		z_u_1 {Type O LastRead -1 FirstWrite 9}
		z_u {Type O LastRead -1 FirstWrite 9}
		z_old {Type I LastRead 0 FirstWrite -1}
		z_old_1 {Type I LastRead 0 FirstWrite -1}
		z_old_2 {Type I LastRead 0 FirstWrite -1}
		z_old_3 {Type I LastRead 0 FirstWrite -1}
		z_old_4 {Type I LastRead 0 FirstWrite -1}
		z_old_5 {Type I LastRead 0 FirstWrite -1}
		z_old_6 {Type I LastRead 0 FirstWrite -1}
		z_old_7 {Type I LastRead 0 FirstWrite -1}
		z_old_8 {Type I LastRead 0 FirstWrite -1}
		z_old_9 {Type I LastRead 0 FirstWrite -1}
		z_old_10 {Type I LastRead 0 FirstWrite -1}
		z_old_11 {Type I LastRead 0 FirstWrite -1}
		z_old_12 {Type I LastRead 0 FirstWrite -1}
		z_old_13 {Type I LastRead 0 FirstWrite -1}
		z_old_14 {Type I LastRead 0 FirstWrite -1}
		z_old_15 {Type I LastRead 0 FirstWrite -1}
		u {Type I LastRead 0 FirstWrite -1}
		u_1 {Type I LastRead 0 FirstWrite -1}
		u_2 {Type I LastRead 0 FirstWrite -1}
		u_3 {Type I LastRead 0 FirstWrite -1}
		u_4 {Type I LastRead 0 FirstWrite -1}
		u_5 {Type I LastRead 0 FirstWrite -1}
		u_6 {Type I LastRead 0 FirstWrite -1}
		u_7 {Type I LastRead 0 FirstWrite -1}
		u_8 {Type I LastRead 0 FirstWrite -1}
		u_9 {Type I LastRead 0 FirstWrite -1}
		u_10 {Type I LastRead 0 FirstWrite -1}
		u_11 {Type I LastRead 0 FirstWrite -1}
		u_12 {Type I LastRead 0 FirstWrite -1}
		u_13 {Type I LastRead 0 FirstWrite -1}
		u_14 {Type I LastRead 0 FirstWrite -1}
		u_15 {Type I LastRead 0 FirstWrite -1}}
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
		mac_res_15 {Type I LastRead 0 FirstWrite -1}}
	krnl_bp_Pipeline_VITIS_LOOP_642_8 {
		chunk {Type I LastRead 0 FirstWrite -1}
		z_old_15 {Type O LastRead -1 FirstWrite 1}
		z_old_14 {Type O LastRead -1 FirstWrite 1}
		z_old_13 {Type O LastRead -1 FirstWrite 1}
		z_old_12 {Type O LastRead -1 FirstWrite 1}
		z_old_11 {Type O LastRead -1 FirstWrite 1}
		z_old_10 {Type O LastRead -1 FirstWrite 1}
		z_old_9 {Type O LastRead -1 FirstWrite 1}
		z_old_8 {Type O LastRead -1 FirstWrite 1}
		z_old_7 {Type O LastRead -1 FirstWrite 1}
		z_old_6 {Type O LastRead -1 FirstWrite 1}
		z_old_5 {Type O LastRead -1 FirstWrite 1}
		z_old_4 {Type O LastRead -1 FirstWrite 1}
		z_old_3 {Type O LastRead -1 FirstWrite 1}
		z_old_2 {Type O LastRead -1 FirstWrite 1}
		z_old_1 {Type O LastRead -1 FirstWrite 1}
		z_old {Type O LastRead -1 FirstWrite 1}
		z {Type I LastRead 0 FirstWrite -1}
		z_1 {Type I LastRead 0 FirstWrite -1}
		z_2 {Type I LastRead 0 FirstWrite -1}
		z_3 {Type I LastRead 0 FirstWrite -1}
		z_4 {Type I LastRead 0 FirstWrite -1}
		z_5 {Type I LastRead 0 FirstWrite -1}
		z_6 {Type I LastRead 0 FirstWrite -1}
		z_7 {Type I LastRead 0 FirstWrite -1}
		z_8 {Type I LastRead 0 FirstWrite -1}
		z_9 {Type I LastRead 0 FirstWrite -1}
		z_10 {Type I LastRead 0 FirstWrite -1}
		z_11 {Type I LastRead 0 FirstWrite -1}
		z_12 {Type I LastRead 0 FirstWrite -1}
		z_13 {Type I LastRead 0 FirstWrite -1}
		z_14 {Type I LastRead 0 FirstWrite -1}
		z_15 {Type I LastRead 0 FirstWrite -1}}
	krnl_bp_Pipeline_VITIS_LOOP_648_9 {
		chunk {Type I LastRead 0 FirstWrite -1}
		x_hat_15 {Type O LastRead -1 FirstWrite 13}
		x_hat_14 {Type O LastRead -1 FirstWrite 13}
		x_hat_13 {Type O LastRead -1 FirstWrite 13}
		x_hat_12 {Type O LastRead -1 FirstWrite 13}
		x_hat_11 {Type O LastRead -1 FirstWrite 13}
		x_hat_10 {Type O LastRead -1 FirstWrite 13}
		x_hat_9 {Type O LastRead -1 FirstWrite 13}
		x_hat_8 {Type O LastRead -1 FirstWrite 13}
		x_hat_7 {Type O LastRead -1 FirstWrite 13}
		x_hat_6 {Type O LastRead -1 FirstWrite 13}
		x_hat_5 {Type O LastRead -1 FirstWrite 13}
		x_hat_4 {Type O LastRead -1 FirstWrite 13}
		x_hat_3 {Type O LastRead -1 FirstWrite 13}
		x_hat_2 {Type O LastRead -1 FirstWrite 13}
		x_hat_1 {Type O LastRead -1 FirstWrite 13}
		x_hat {Type O LastRead -1 FirstWrite 13}
		x {Type I LastRead 0 FirstWrite -1}
		x_1 {Type I LastRead 0 FirstWrite -1}
		x_2 {Type I LastRead 0 FirstWrite -1}
		x_3 {Type I LastRead 0 FirstWrite -1}
		x_4 {Type I LastRead 0 FirstWrite -1}
		x_5 {Type I LastRead 0 FirstWrite -1}
		x_6 {Type I LastRead 0 FirstWrite -1}
		x_7 {Type I LastRead 0 FirstWrite -1}
		x_8 {Type I LastRead 0 FirstWrite -1}
		x_9 {Type I LastRead 0 FirstWrite -1}
		x_10 {Type I LastRead 0 FirstWrite -1}
		x_11 {Type I LastRead 0 FirstWrite -1}
		x_12 {Type I LastRead 0 FirstWrite -1}
		x_13 {Type I LastRead 0 FirstWrite -1}
		x_14 {Type I LastRead 0 FirstWrite -1}
		x_15 {Type I LastRead 0 FirstWrite -1}
		alpha {Type I LastRead 0 FirstWrite -1}
		z_old {Type I LastRead 0 FirstWrite -1}
		z_old_1 {Type I LastRead 0 FirstWrite -1}
		z_old_2 {Type I LastRead 0 FirstWrite -1}
		z_old_3 {Type I LastRead 0 FirstWrite -1}
		z_old_4 {Type I LastRead 0 FirstWrite -1}
		z_old_5 {Type I LastRead 0 FirstWrite -1}
		z_old_6 {Type I LastRead 0 FirstWrite -1}
		z_old_7 {Type I LastRead 0 FirstWrite -1}
		z_old_8 {Type I LastRead 0 FirstWrite -1}
		z_old_9 {Type I LastRead 0 FirstWrite -1}
		z_old_10 {Type I LastRead 0 FirstWrite -1}
		z_old_11 {Type I LastRead 0 FirstWrite -1}
		z_old_12 {Type I LastRead 0 FirstWrite -1}
		z_old_13 {Type I LastRead 0 FirstWrite -1}
		z_old_14 {Type I LastRead 0 FirstWrite -1}
		z_old_15 {Type I LastRead 0 FirstWrite -1}
		sub {Type I LastRead 0 FirstWrite -1}}
	krnl_bp_Pipeline_shrinkage_loop {
		chunk {Type I LastRead 0 FirstWrite -1}
		z_15 {Type O LastRead -1 FirstWrite 26}
		z_14 {Type O LastRead -1 FirstWrite 26}
		z_13 {Type O LastRead -1 FirstWrite 26}
		z_12 {Type O LastRead -1 FirstWrite 26}
		z_11 {Type O LastRead -1 FirstWrite 26}
		z_10 {Type O LastRead -1 FirstWrite 26}
		z_9 {Type O LastRead -1 FirstWrite 26}
		z_8 {Type O LastRead -1 FirstWrite 26}
		z_7 {Type O LastRead -1 FirstWrite 26}
		z_6 {Type O LastRead -1 FirstWrite 26}
		z_5 {Type O LastRead -1 FirstWrite 26}
		z_4 {Type O LastRead -1 FirstWrite 26}
		z_3 {Type O LastRead -1 FirstWrite 26}
		z_2 {Type O LastRead -1 FirstWrite 26}
		z_1 {Type O LastRead -1 FirstWrite 26}
		z {Type O LastRead -1 FirstWrite 26}
		x_hat {Type I LastRead 0 FirstWrite -1}
		x_hat_1 {Type I LastRead 0 FirstWrite -1}
		x_hat_2 {Type I LastRead 0 FirstWrite -1}
		x_hat_3 {Type I LastRead 0 FirstWrite -1}
		x_hat_4 {Type I LastRead 0 FirstWrite -1}
		x_hat_5 {Type I LastRead 0 FirstWrite -1}
		x_hat_6 {Type I LastRead 0 FirstWrite -1}
		x_hat_7 {Type I LastRead 0 FirstWrite -1}
		x_hat_8 {Type I LastRead 0 FirstWrite -1}
		x_hat_9 {Type I LastRead 0 FirstWrite -1}
		x_hat_10 {Type I LastRead 0 FirstWrite -1}
		x_hat_11 {Type I LastRead 0 FirstWrite -1}
		x_hat_12 {Type I LastRead 0 FirstWrite -1}
		x_hat_13 {Type I LastRead 0 FirstWrite -1}
		x_hat_14 {Type I LastRead 0 FirstWrite -1}
		x_hat_15 {Type I LastRead 0 FirstWrite -1}
		u {Type I LastRead 0 FirstWrite -1}
		u_1 {Type I LastRead 0 FirstWrite -1}
		u_2 {Type I LastRead 0 FirstWrite -1}
		u_3 {Type I LastRead 0 FirstWrite -1}
		u_4 {Type I LastRead 0 FirstWrite -1}
		u_5 {Type I LastRead 0 FirstWrite -1}
		u_6 {Type I LastRead 0 FirstWrite -1}
		u_7 {Type I LastRead 0 FirstWrite -1}
		u_8 {Type I LastRead 0 FirstWrite -1}
		u_9 {Type I LastRead 0 FirstWrite -1}
		u_10 {Type I LastRead 0 FirstWrite -1}
		u_11 {Type I LastRead 0 FirstWrite -1}
		u_12 {Type I LastRead 0 FirstWrite -1}
		u_13 {Type I LastRead 0 FirstWrite -1}
		u_14 {Type I LastRead 0 FirstWrite -1}
		u_15 {Type I LastRead 0 FirstWrite -1}
		rho {Type I LastRead 0 FirstWrite -1}}
	krnl_bp_Pipeline_VITIS_LOOP_665_10 {
		chunk {Type I LastRead 0 FirstWrite -1}
		x_hat_z_15 {Type O LastRead -1 FirstWrite 9}
		x_hat_z_14 {Type O LastRead -1 FirstWrite 9}
		x_hat_z_13 {Type O LastRead -1 FirstWrite 9}
		x_hat_z_12 {Type O LastRead -1 FirstWrite 9}
		x_hat_z_11 {Type O LastRead -1 FirstWrite 9}
		x_hat_z_10 {Type O LastRead -1 FirstWrite 9}
		x_hat_z_9 {Type O LastRead -1 FirstWrite 9}
		x_hat_z_8 {Type O LastRead -1 FirstWrite 9}
		x_hat_z_7 {Type O LastRead -1 FirstWrite 9}
		x_hat_z_6 {Type O LastRead -1 FirstWrite 9}
		x_hat_z_5 {Type O LastRead -1 FirstWrite 9}
		x_hat_z_4 {Type O LastRead -1 FirstWrite 9}
		x_hat_z_3 {Type O LastRead -1 FirstWrite 9}
		x_hat_z_2 {Type O LastRead -1 FirstWrite 9}
		x_hat_z_1 {Type O LastRead -1 FirstWrite 9}
		x_hat_z {Type O LastRead -1 FirstWrite 9}
		x_hat {Type I LastRead 0 FirstWrite -1}
		x_hat_1 {Type I LastRead 0 FirstWrite -1}
		x_hat_2 {Type I LastRead 0 FirstWrite -1}
		x_hat_3 {Type I LastRead 0 FirstWrite -1}
		x_hat_4 {Type I LastRead 0 FirstWrite -1}
		x_hat_5 {Type I LastRead 0 FirstWrite -1}
		x_hat_6 {Type I LastRead 0 FirstWrite -1}
		x_hat_7 {Type I LastRead 0 FirstWrite -1}
		x_hat_8 {Type I LastRead 0 FirstWrite -1}
		x_hat_9 {Type I LastRead 0 FirstWrite -1}
		x_hat_10 {Type I LastRead 0 FirstWrite -1}
		x_hat_11 {Type I LastRead 0 FirstWrite -1}
		x_hat_12 {Type I LastRead 0 FirstWrite -1}
		x_hat_13 {Type I LastRead 0 FirstWrite -1}
		x_hat_14 {Type I LastRead 0 FirstWrite -1}
		x_hat_15 {Type I LastRead 0 FirstWrite -1}
		z {Type I LastRead 0 FirstWrite -1}
		z_1 {Type I LastRead 0 FirstWrite -1}
		z_2 {Type I LastRead 0 FirstWrite -1}
		z_3 {Type I LastRead 0 FirstWrite -1}
		z_4 {Type I LastRead 0 FirstWrite -1}
		z_5 {Type I LastRead 0 FirstWrite -1}
		z_6 {Type I LastRead 0 FirstWrite -1}
		z_7 {Type I LastRead 0 FirstWrite -1}
		z_8 {Type I LastRead 0 FirstWrite -1}
		z_9 {Type I LastRead 0 FirstWrite -1}
		z_10 {Type I LastRead 0 FirstWrite -1}
		z_11 {Type I LastRead 0 FirstWrite -1}
		z_12 {Type I LastRead 0 FirstWrite -1}
		z_13 {Type I LastRead 0 FirstWrite -1}
		z_14 {Type I LastRead 0 FirstWrite -1}
		z_15 {Type I LastRead 0 FirstWrite -1}}
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
		x_hat_z_15 {Type I LastRead 0 FirstWrite -1}}
	krnl_bp_Pipeline_VITIS_LOOP_679_12 {
		gmem2 {Type O LastRead -1 FirstWrite 2}
		chunk {Type I LastRead 0 FirstWrite -1}
		sext_ln679 {Type I LastRead 0 FirstWrite -1}
		x {Type I LastRead 0 FirstWrite -1}
		x_1 {Type I LastRead 0 FirstWrite -1}
		x_2 {Type I LastRead 0 FirstWrite -1}
		x_3 {Type I LastRead 0 FirstWrite -1}
		x_4 {Type I LastRead 0 FirstWrite -1}
		x_5 {Type I LastRead 0 FirstWrite -1}
		x_6 {Type I LastRead 0 FirstWrite -1}
		x_7 {Type I LastRead 0 FirstWrite -1}
		x_8 {Type I LastRead 0 FirstWrite -1}
		x_9 {Type I LastRead 0 FirstWrite -1}
		x_10 {Type I LastRead 0 FirstWrite -1}
		x_11 {Type I LastRead 0 FirstWrite -1}
		x_12 {Type I LastRead 0 FirstWrite -1}
		x_13 {Type I LastRead 0 FirstWrite -1}
		x_14 {Type I LastRead 0 FirstWrite -1}
		x_15 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem0 { m_axi {  { m_axi_gmem0_AWVALID VALID 1 1 }  { m_axi_gmem0_AWREADY READY 0 1 }  { m_axi_gmem0_AWADDR ADDR 1 64 }  { m_axi_gmem0_AWID ID 1 1 }  { m_axi_gmem0_AWLEN SIZE 1 8 }  { m_axi_gmem0_AWSIZE BURST 1 3 }  { m_axi_gmem0_AWBURST LOCK 1 2 }  { m_axi_gmem0_AWLOCK CACHE 1 2 }  { m_axi_gmem0_AWCACHE PROT 1 4 }  { m_axi_gmem0_AWPROT QOS 1 3 }  { m_axi_gmem0_AWQOS REGION 1 4 }  { m_axi_gmem0_AWREGION USER 1 4 }  { m_axi_gmem0_AWUSER DATA 1 1 }  { m_axi_gmem0_WVALID VALID 1 1 }  { m_axi_gmem0_WREADY READY 0 1 }  { m_axi_gmem0_WDATA FIFONUM 1 32 }  { m_axi_gmem0_WSTRB STRB 1 4 }  { m_axi_gmem0_WLAST LAST 1 1 }  { m_axi_gmem0_WID ID 1 1 }  { m_axi_gmem0_WUSER DATA 1 1 }  { m_axi_gmem0_ARVALID VALID 1 1 }  { m_axi_gmem0_ARREADY READY 0 1 }  { m_axi_gmem0_ARADDR ADDR 1 64 }  { m_axi_gmem0_ARID ID 1 1 }  { m_axi_gmem0_ARLEN SIZE 1 8 }  { m_axi_gmem0_ARSIZE BURST 1 3 }  { m_axi_gmem0_ARBURST LOCK 1 2 }  { m_axi_gmem0_ARLOCK CACHE 1 2 }  { m_axi_gmem0_ARCACHE PROT 1 4 }  { m_axi_gmem0_ARPROT QOS 1 3 }  { m_axi_gmem0_ARQOS REGION 1 4 }  { m_axi_gmem0_ARREGION USER 1 4 }  { m_axi_gmem0_ARUSER DATA 1 1 }  { m_axi_gmem0_RVALID VALID 0 1 }  { m_axi_gmem0_RREADY READY 1 1 }  { m_axi_gmem0_RDATA FIFONUM 0 32 }  { m_axi_gmem0_RLAST LAST 0 1 }  { m_axi_gmem0_RID ID 0 1 }  { m_axi_gmem0_RUSER DATA 0 1 }  { m_axi_gmem0_RRESP RESP 0 2 }  { m_axi_gmem0_BVALID VALID 0 1 }  { m_axi_gmem0_BREADY READY 1 1 }  { m_axi_gmem0_BRESP RESP 0 2 }  { m_axi_gmem0_BID ID 0 1 }  { m_axi_gmem0_BUSER DATA 0 1 } } }
	gmem1 { m_axi {  { m_axi_gmem1_AWVALID VALID 1 1 }  { m_axi_gmem1_AWREADY READY 0 1 }  { m_axi_gmem1_AWADDR ADDR 1 64 }  { m_axi_gmem1_AWID ID 1 1 }  { m_axi_gmem1_AWLEN SIZE 1 8 }  { m_axi_gmem1_AWSIZE BURST 1 3 }  { m_axi_gmem1_AWBURST LOCK 1 2 }  { m_axi_gmem1_AWLOCK CACHE 1 2 }  { m_axi_gmem1_AWCACHE PROT 1 4 }  { m_axi_gmem1_AWPROT QOS 1 3 }  { m_axi_gmem1_AWQOS REGION 1 4 }  { m_axi_gmem1_AWREGION USER 1 4 }  { m_axi_gmem1_AWUSER DATA 1 1 }  { m_axi_gmem1_WVALID VALID 1 1 }  { m_axi_gmem1_WREADY READY 0 1 }  { m_axi_gmem1_WDATA FIFONUM 1 32 }  { m_axi_gmem1_WSTRB STRB 1 4 }  { m_axi_gmem1_WLAST LAST 1 1 }  { m_axi_gmem1_WID ID 1 1 }  { m_axi_gmem1_WUSER DATA 1 1 }  { m_axi_gmem1_ARVALID VALID 1 1 }  { m_axi_gmem1_ARREADY READY 0 1 }  { m_axi_gmem1_ARADDR ADDR 1 64 }  { m_axi_gmem1_ARID ID 1 1 }  { m_axi_gmem1_ARLEN SIZE 1 8 }  { m_axi_gmem1_ARSIZE BURST 1 3 }  { m_axi_gmem1_ARBURST LOCK 1 2 }  { m_axi_gmem1_ARLOCK CACHE 1 2 }  { m_axi_gmem1_ARCACHE PROT 1 4 }  { m_axi_gmem1_ARPROT QOS 1 3 }  { m_axi_gmem1_ARQOS REGION 1 4 }  { m_axi_gmem1_ARREGION USER 1 4 }  { m_axi_gmem1_ARUSER DATA 1 1 }  { m_axi_gmem1_RVALID VALID 0 1 }  { m_axi_gmem1_RREADY READY 1 1 }  { m_axi_gmem1_RDATA FIFONUM 0 32 }  { m_axi_gmem1_RLAST LAST 0 1 }  { m_axi_gmem1_RID ID 0 1 }  { m_axi_gmem1_RUSER DATA 0 1 }  { m_axi_gmem1_RRESP RESP 0 2 }  { m_axi_gmem1_BVALID VALID 0 1 }  { m_axi_gmem1_BREADY READY 1 1 }  { m_axi_gmem1_BRESP RESP 0 2 }  { m_axi_gmem1_BID ID 0 1 }  { m_axi_gmem1_BUSER DATA 0 1 } } }
	gmem2 { m_axi {  { m_axi_gmem2_AWVALID VALID 1 1 }  { m_axi_gmem2_AWREADY READY 0 1 }  { m_axi_gmem2_AWADDR ADDR 1 64 }  { m_axi_gmem2_AWID ID 1 1 }  { m_axi_gmem2_AWLEN SIZE 1 8 }  { m_axi_gmem2_AWSIZE BURST 1 3 }  { m_axi_gmem2_AWBURST LOCK 1 2 }  { m_axi_gmem2_AWLOCK CACHE 1 2 }  { m_axi_gmem2_AWCACHE PROT 1 4 }  { m_axi_gmem2_AWPROT QOS 1 3 }  { m_axi_gmem2_AWQOS REGION 1 4 }  { m_axi_gmem2_AWREGION USER 1 4 }  { m_axi_gmem2_AWUSER DATA 1 1 }  { m_axi_gmem2_WVALID VALID 1 1 }  { m_axi_gmem2_WREADY READY 0 1 }  { m_axi_gmem2_WDATA FIFONUM 1 32 }  { m_axi_gmem2_WSTRB STRB 1 4 }  { m_axi_gmem2_WLAST LAST 1 1 }  { m_axi_gmem2_WID ID 1 1 }  { m_axi_gmem2_WUSER DATA 1 1 }  { m_axi_gmem2_ARVALID VALID 1 1 }  { m_axi_gmem2_ARREADY READY 0 1 }  { m_axi_gmem2_ARADDR ADDR 1 64 }  { m_axi_gmem2_ARID ID 1 1 }  { m_axi_gmem2_ARLEN SIZE 1 8 }  { m_axi_gmem2_ARSIZE BURST 1 3 }  { m_axi_gmem2_ARBURST LOCK 1 2 }  { m_axi_gmem2_ARLOCK CACHE 1 2 }  { m_axi_gmem2_ARCACHE PROT 1 4 }  { m_axi_gmem2_ARPROT QOS 1 3 }  { m_axi_gmem2_ARQOS REGION 1 4 }  { m_axi_gmem2_ARREGION USER 1 4 }  { m_axi_gmem2_ARUSER DATA 1 1 }  { m_axi_gmem2_RVALID VALID 0 1 }  { m_axi_gmem2_RREADY READY 1 1 }  { m_axi_gmem2_RDATA FIFONUM 0 32 }  { m_axi_gmem2_RLAST LAST 0 1 }  { m_axi_gmem2_RID ID 0 1 }  { m_axi_gmem2_RUSER DATA 0 1 }  { m_axi_gmem2_RRESP RESP 0 2 }  { m_axi_gmem2_BVALID VALID 0 1 }  { m_axi_gmem2_BREADY READY 1 1 }  { m_axi_gmem2_BRESP RESP 0 2 }  { m_axi_gmem2_BID ID 0 1 }  { m_axi_gmem2_BUSER DATA 0 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict gmem0 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 64 MAX_WRITE_BURST_LENGTH 64 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem1 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 64 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem2 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 64 READ_WRITE_MODE WRITE_ONLY}

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
