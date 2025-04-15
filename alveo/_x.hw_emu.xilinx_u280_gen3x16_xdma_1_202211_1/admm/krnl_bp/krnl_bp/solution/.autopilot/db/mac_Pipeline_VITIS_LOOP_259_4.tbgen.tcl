set moduleName mac_Pipeline_VITIS_LOOP_259_4
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 1
set StallSigGenFlag 1
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {mac_Pipeline_VITIS_LOOP_259_4}
set C_modelType { void 0 }
set C_modelArgList {
	{ z_u_local float 32 regular {array 8 { 1 3 } 1 1 }  }
	{ result_tmp_out float 32 regular {pointer 1}  }
	{ p_stream int 32 regular {fifo 0 volatile } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "z_u_local", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "result_tmp_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_stream", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 26
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ z_u_local_address0 sc_out sc_lv 3 signal 0 } 
	{ z_u_local_ce0 sc_out sc_logic 1 signal 0 } 
	{ z_u_local_q0 sc_in sc_lv 32 signal 0 } 
	{ result_tmp_out sc_out sc_lv 32 signal 1 } 
	{ result_tmp_out_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ p_stream_dout sc_in sc_lv 32 signal 2 } 
	{ p_stream_empty_n sc_in sc_logic 1 signal 2 } 
	{ p_stream_read sc_out sc_logic 1 signal 2 } 
	{ ap_ext_blocking_n sc_out sc_logic 1 signal -1 } 
	{ ap_str_blocking_n sc_out sc_logic 1 signal -1 } 
	{ ap_int_blocking_n sc_out sc_logic 1 signal -1 } 
	{ grp_fu_162_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_162_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_162_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_162_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_162_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_166_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_166_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_166_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_166_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "z_u_local_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "z_u_local", "role": "address0" }} , 
 	{ "name": "z_u_local_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_u_local", "role": "ce0" }} , 
 	{ "name": "z_u_local_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "z_u_local", "role": "q0" }} , 
 	{ "name": "result_tmp_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "result_tmp_out", "role": "default" }} , 
 	{ "name": "result_tmp_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "result_tmp_out", "role": "ap_vld" }} , 
 	{ "name": "p_stream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "p_stream", "role": "dout" }} , 
 	{ "name": "p_stream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_stream", "role": "empty_n" }} , 
 	{ "name": "p_stream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "p_stream", "role": "read" }} , 
 	{ "name": "ap_ext_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_ext_blocking_n", "role": "default" }} , 
 	{ "name": "ap_str_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_str_blocking_n", "role": "default" }} , 
 	{ "name": "ap_int_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_int_blocking_n", "role": "default" }} , 
 	{ "name": "grp_fu_162_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_162_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_162_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_162_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_162_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_162_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_162_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_162_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_162_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_162_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_166_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_166_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_166_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_166_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_166_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_166_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_166_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_166_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mac_Pipeline_VITIS_LOOP_259_4 {
		z_u_local {Type I LastRead 0 FirstWrite -1}
		result_tmp_out {Type O LastRead -1 FirstWrite 6}
		p_stream {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "64", "Max" : "64"}
	, {"Name" : "Interval", "Min" : "64", "Max" : "64"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	z_u_local { ap_memory {  { z_u_local_address0 mem_address 1 3 }  { z_u_local_ce0 mem_ce 1 1 }  { z_u_local_q0 mem_dout 0 32 } } }
	result_tmp_out { ap_vld {  { result_tmp_out out_data 1 32 }  { result_tmp_out_ap_vld out_vld 1 1 } } }
	p_stream { ap_fifo {  { p_stream_dout fifo_port_we 0 32 }  { p_stream_empty_n fifo_status 0 1 }  { p_stream_read fifo_data 1 1 } } }
}
