set moduleName krnl_bp_Pipeline_VITIS_LOOP_386_3
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
set C_modelName {krnl_bp_Pipeline_VITIS_LOOP_386_3}
set C_modelType { void 0 }
set C_modelArgList {
	{ mac_res_stream int 32 regular {fifo 0 volatile } {global 0}  }
	{ q_stream int 32 regular {fifo 0 volatile } {global 0}  }
	{ x_stream int 32 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mac_res_stream", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "q_stream", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "x_stream", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mac_res_stream_dout sc_in sc_lv 32 signal 0 } 
	{ mac_res_stream_empty_n sc_in sc_logic 1 signal 0 } 
	{ mac_res_stream_read sc_out sc_logic 1 signal 0 } 
	{ q_stream_dout sc_in sc_lv 32 signal 1 } 
	{ q_stream_empty_n sc_in sc_logic 1 signal 1 } 
	{ q_stream_read sc_out sc_logic 1 signal 1 } 
	{ x_stream_din sc_out sc_lv 32 signal 2 } 
	{ x_stream_full_n sc_in sc_logic 1 signal 2 } 
	{ x_stream_write sc_out sc_logic 1 signal 2 } 
	{ ap_ext_blocking_n sc_out sc_logic 1 signal -1 } 
	{ ap_str_blocking_n sc_out sc_logic 1 signal -1 } 
	{ ap_int_blocking_n sc_out sc_logic 1 signal -1 } 
	{ grp_fu_626_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_626_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_626_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_626_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_626_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "mac_res_stream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mac_res_stream", "role": "dout" }} , 
 	{ "name": "mac_res_stream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_res_stream", "role": "empty_n" }} , 
 	{ "name": "mac_res_stream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_res_stream", "role": "read" }} , 
 	{ "name": "q_stream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "q_stream", "role": "dout" }} , 
 	{ "name": "q_stream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "q_stream", "role": "empty_n" }} , 
 	{ "name": "q_stream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "q_stream", "role": "read" }} , 
 	{ "name": "x_stream_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "x_stream", "role": "din" }} , 
 	{ "name": "x_stream_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_stream", "role": "full_n" }} , 
 	{ "name": "x_stream_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "x_stream", "role": "write" }} , 
 	{ "name": "ap_ext_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_ext_blocking_n", "role": "default" }} , 
 	{ "name": "ap_str_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_str_blocking_n", "role": "default" }} , 
 	{ "name": "ap_int_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_int_blocking_n", "role": "default" }} , 
 	{ "name": "grp_fu_626_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_626_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_626_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_626_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_626_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_626_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_626_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_626_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_626_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_626_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	krnl_bp_Pipeline_VITIS_LOOP_386_3 {
		mac_res_stream {Type I LastRead 1 FirstWrite -1}
		q_stream {Type I LastRead 1 FirstWrite -1}
		x_stream {Type O LastRead -1 FirstWrite 9}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "18", "Max" : "18"}
	, {"Name" : "Interval", "Min" : "18", "Max" : "18"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	mac_res_stream { ap_fifo {  { mac_res_stream_dout fifo_port_we 0 32 }  { mac_res_stream_empty_n fifo_status 0 1 }  { mac_res_stream_read fifo_data 1 1 } } }
	q_stream { ap_fifo {  { q_stream_dout fifo_port_we 0 32 }  { q_stream_empty_n fifo_status 0 1 }  { q_stream_read fifo_data 1 1 } } }
	x_stream { ap_fifo {  { x_stream_din fifo_port_we 1 32 }  { x_stream_full_n fifo_status 0 1 }  { x_stream_write fifo_data 1 1 } } }
}
