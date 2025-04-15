set moduleName mac
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 1
set StallSigGenFlag 1
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {mac}
set C_modelType { void 0 }
set C_modelArgList {
	{ p_stream int 32 regular {fifo 2 volatile } {global 2}  }
	{ z_u_stream int 32 regular {fifo 0 volatile } {global 0}  }
	{ mac_res_stream int 32 regular {fifo 1 volatile } {global 1}  }
	{ mat_p_bram float 32 regular {array 64 { 1 1 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "p_stream", "interface" : "fifo", "bitwidth" : 32, "direction" : "READWRITE", "extern" : 0} , 
 	{ "Name" : "z_u_stream", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mac_res_stream", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} , 
 	{ "Name" : "mat_p_bram", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 40
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mac_res_stream_din sc_out sc_lv 32 signal 2 } 
	{ mac_res_stream_full_n sc_in sc_logic 1 signal 2 } 
	{ mac_res_stream_write sc_out sc_logic 1 signal 2 } 
	{ p_stream_dout sc_in sc_lv 32 signal 0 } 
	{ p_stream_empty_n sc_in sc_logic 1 signal 0 } 
	{ p_stream_read sc_out sc_logic 1 signal 0 } 
	{ p_stream_din sc_out sc_lv 32 signal 0 } 
	{ p_stream_full_n sc_in sc_logic 1 signal 0 } 
	{ p_stream_write sc_out sc_logic 1 signal 0 } 
	{ z_u_stream_dout sc_in sc_lv 32 signal 1 } 
	{ z_u_stream_empty_n sc_in sc_logic 1 signal 1 } 
	{ z_u_stream_read sc_out sc_logic 1 signal 1 } 
	{ mat_p_bram_address0 sc_out sc_lv 6 signal 3 } 
	{ mat_p_bram_ce0 sc_out sc_logic 1 signal 3 } 
	{ mat_p_bram_q0 sc_in sc_lv 32 signal 3 } 
	{ mat_p_bram_address1 sc_out sc_lv 6 signal 3 } 
	{ mat_p_bram_ce1 sc_out sc_logic 1 signal 3 } 
	{ mat_p_bram_q1 sc_in sc_lv 32 signal 3 } 
	{ p_stream_o_blk_n sc_out sc_logic 1 signal -1 } 
	{ p_stream_i_blk_n sc_out sc_logic 1 signal -1 } 
	{ z_u_stream_blk_n sc_out sc_logic 1 signal -1 } 
	{ mac_res_stream_blk_n sc_out sc_logic 1 signal -1 } 
	{ ap_ext_blocking_n sc_out sc_logic 1 signal -1 } 
	{ ap_str_blocking_n sc_out sc_logic 1 signal -1 } 
	{ ap_int_blocking_n sc_out sc_logic 1 signal -1 } 
	{ grp_fu_390_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_390_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_390_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_390_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_390_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_398_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_398_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_398_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_398_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "mac_res_stream_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mac_res_stream", "role": "din" }} , 
 	{ "name": "mac_res_stream_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_res_stream", "role": "full_n" }} , 
 	{ "name": "mac_res_stream_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_res_stream", "role": "write" }} , 
 	{ "name": "p_stream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_stream", "role": "dout" }} , 
 	{ "name": "p_stream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_stream", "role": "empty_n" }} , 
 	{ "name": "p_stream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_stream", "role": "read" }} , 
 	{ "name": "p_stream_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_stream", "role": "din" }} , 
 	{ "name": "p_stream_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_stream", "role": "full_n" }} , 
 	{ "name": "p_stream_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_stream", "role": "write" }} , 
 	{ "name": "z_u_stream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "z_u_stream", "role": "dout" }} , 
 	{ "name": "z_u_stream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_u_stream", "role": "empty_n" }} , 
 	{ "name": "z_u_stream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_u_stream", "role": "read" }} , 
 	{ "name": "mat_p_bram_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "mat_p_bram", "role": "address0" }} , 
 	{ "name": "mat_p_bram_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_p_bram", "role": "ce0" }} , 
 	{ "name": "mat_p_bram_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mat_p_bram", "role": "q0" }} , 
 	{ "name": "mat_p_bram_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "mat_p_bram", "role": "address1" }} , 
 	{ "name": "mat_p_bram_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_p_bram", "role": "ce1" }} , 
 	{ "name": "mat_p_bram_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mat_p_bram", "role": "q1" }} , 
 	{ "name": "p_stream_o_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_stream_o_blk_n", "role": "default" }} , 
 	{ "name": "p_stream_i_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_stream_i_blk_n", "role": "default" }} , 
 	{ "name": "z_u_stream_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_u_stream_blk_n", "role": "default" }} , 
 	{ "name": "mac_res_stream_blk_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_res_stream_blk_n", "role": "default" }} , 
 	{ "name": "ap_ext_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_ext_blocking_n", "role": "default" }} , 
 	{ "name": "ap_str_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_str_blocking_n", "role": "default" }} , 
 	{ "name": "ap_int_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_int_blocking_n", "role": "default" }} , 
 	{ "name": "grp_fu_390_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_390_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_390_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_390_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_390_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_390_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_390_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_390_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_390_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_390_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_398_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_398_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_398_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_398_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_398_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_398_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_398_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_398_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "mac",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "127",
		"VariableLatency" : "0", "ExactLatency" : "182", "EstimateLatencyMin" : "182", "EstimateLatencyMax" : "182",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_stream", "Type" : "Fifo", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "p_stream_o_blk_n", "Type" : "RtlPort"},
					{"Name" : "p_stream_i_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "z_u_stream", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "z_u_stream_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "mac_res_stream", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "mac_res_stream_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "mat_p_bram", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	mac {
		p_stream {Type IO LastRead 128 FirstWrite 1}
		z_u_stream {Type I LastRead 72 FirstWrite -1}
		mac_res_stream {Type O LastRead -1 FirstWrite 126}
		mat_p_bram {Type I LastRead 32 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "182", "Max" : "182"}
	, {"Name" : "Interval", "Min" : "127", "Max" : "127"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	p_stream { ap_fifo {  { p_stream_dout fifo_port_we 0 32 }  { p_stream_empty_n fifo_status 0 1 }  { p_stream_read fifo_data 1 1 }  { p_stream_din fifo_port_we 1 32 }  { p_stream_full_n fifo_status 0 1 }  { p_stream_write fifo_data 1 1 } } }
	z_u_stream { ap_fifo {  { z_u_stream_dout fifo_port_we 0 32 }  { z_u_stream_empty_n fifo_status 0 1 }  { z_u_stream_read fifo_data 1 1 } } }
	mac_res_stream { ap_fifo {  { mac_res_stream_din fifo_port_we 1 32 }  { mac_res_stream_full_n fifo_status 0 1 }  { mac_res_stream_write fifo_data 1 1 } } }
	mat_p_bram { ap_memory {  { mat_p_bram_address0 mem_address 1 6 }  { mat_p_bram_ce0 mem_ce 1 1 }  { mat_p_bram_q0 mem_dout 0 32 }  { mat_p_bram_address1 MemPortADDR2 1 6 }  { mat_p_bram_ce1 MemPortCE2 1 1 }  { mat_p_bram_q1 in_data 0 32 } } }
}
