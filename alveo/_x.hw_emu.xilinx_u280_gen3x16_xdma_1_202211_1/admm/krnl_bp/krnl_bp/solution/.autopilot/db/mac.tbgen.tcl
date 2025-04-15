set moduleName mac
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 1
set StallSigGenFlag 1
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {mac}
set C_modelType { void 0 }
set C_modelArgList {
	{ mat_p_bram float 32 regular {array 64 { 1 3 } 1 1 } {global 0}  }
	{ z_u_stream int 32 regular {fifo 0 volatile } {global 0}  }
	{ mac_res_stream int 32 regular {fifo 1 volatile } {global 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mat_p_bram", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "z_u_stream", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "mac_res_stream", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mat_p_bram_address0 sc_out sc_lv 6 signal 0 } 
	{ mat_p_bram_ce0 sc_out sc_logic 1 signal 0 } 
	{ mat_p_bram_q0 sc_in sc_lv 32 signal 0 } 
	{ z_u_stream_dout sc_in sc_lv 32 signal 1 } 
	{ z_u_stream_empty_n sc_in sc_logic 1 signal 1 } 
	{ z_u_stream_read sc_out sc_logic 1 signal 1 } 
	{ mac_res_stream_din sc_out sc_lv 32 signal 2 } 
	{ mac_res_stream_full_n sc_in sc_logic 1 signal 2 } 
	{ mac_res_stream_write sc_out sc_logic 1 signal 2 } 
	{ ap_ext_blocking_n sc_out sc_logic 1 signal -1 } 
	{ ap_str_blocking_n sc_out sc_logic 1 signal -1 } 
	{ ap_int_blocking_n sc_out sc_logic 1 signal -1 } 
	{ grp_fu_626_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_626_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_626_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_626_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_626_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_631_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_631_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_631_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_631_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "mat_p_bram_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "mat_p_bram", "role": "address0" }} , 
 	{ "name": "mat_p_bram_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mat_p_bram", "role": "ce0" }} , 
 	{ "name": "mat_p_bram_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mat_p_bram", "role": "q0" }} , 
 	{ "name": "z_u_stream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "z_u_stream", "role": "dout" }} , 
 	{ "name": "z_u_stream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_u_stream", "role": "empty_n" }} , 
 	{ "name": "z_u_stream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "z_u_stream", "role": "read" }} , 
 	{ "name": "mac_res_stream_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mac_res_stream", "role": "din" }} , 
 	{ "name": "mac_res_stream_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_res_stream", "role": "full_n" }} , 
 	{ "name": "mac_res_stream_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_res_stream", "role": "write" }} , 
 	{ "name": "ap_ext_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_ext_blocking_n", "role": "default" }} , 
 	{ "name": "ap_str_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_str_blocking_n", "role": "default" }} , 
 	{ "name": "ap_int_blocking_n", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_int_blocking_n", "role": "default" }} , 
 	{ "name": "grp_fu_626_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_626_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_626_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_626_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_626_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_626_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_626_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_626_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_626_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_626_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_631_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_631_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_631_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_631_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_631_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_631_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_631_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_631_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "4", "6", "8"],
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
					{"ID" : "2", "SubInstance" : "grp_mac_Pipeline_VITIS_LOOP_234_1_fu_83", "Port" : "mat_p_bram", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_stream", "Type" : "Fifo", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_mac_Pipeline_VITIS_LOOP_234_1_fu_83", "Port" : "p_stream", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "6", "SubInstance" : "grp_mac_Pipeline_VITIS_LOOP_259_4_fu_98", "Port" : "p_stream", "Inst_start_state" : "7", "Inst_end_state" : "8"}]},
			{"Name" : "z_u_stream", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_mac_Pipeline_VITIS_LOOP_242_2_fu_91", "Port" : "z_u_stream", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "mac_res_stream", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "mac_res_stream_blk_n", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_256_3", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "9", "FirstState" : "ap_ST_fsm_state7", "LastState" : ["ap_ST_fsm_state9"], "QuitState" : ["ap_ST_fsm_state7"], "PreState" : ["ap_ST_fsm_state6"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.z_u_local_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mac_Pipeline_VITIS_LOOP_234_1_fu_83", "Parent" : "0", "Child" : ["3"],
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
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mac_Pipeline_VITIS_LOOP_234_1_fu_83.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mac_Pipeline_VITIS_LOOP_242_2_fu_91", "Parent" : "0", "Child" : ["5"],
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
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mac_Pipeline_VITIS_LOOP_242_2_fu_91.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mac_Pipeline_VITIS_LOOP_259_4_fu_98", "Parent" : "0", "Child" : ["7"],
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
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mac_Pipeline_VITIS_LOOP_259_4_fu_98.flow_control_loop_pipe_sequential_init_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_stream_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		p_stream {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "618", "Max" : "618"}
	, {"Name" : "Interval", "Min" : "618", "Max" : "618"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	mat_p_bram { ap_memory {  { mat_p_bram_address0 mem_address 1 6 }  { mat_p_bram_ce0 mem_ce 1 1 }  { mat_p_bram_q0 mem_dout 0 32 } } }
	z_u_stream { ap_fifo {  { z_u_stream_dout fifo_port_we 0 32 }  { z_u_stream_empty_n fifo_status 0 1 }  { z_u_stream_read fifo_data 1 1 } } }
	mac_res_stream { ap_fifo {  { mac_res_stream_din fifo_port_we 1 32 }  { mac_res_stream_full_n fifo_status 0 1 }  { mac_res_stream_write fifo_data 1 1 } } }
}
