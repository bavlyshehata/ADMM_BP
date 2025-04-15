set SynModuleInfo {
  {SRCNAME krnl_bp_Pipeline_l_load_input MODELNAME krnl_bp_Pipeline_l_load_input RTLNAME krnl_bp_krnl_bp_Pipeline_l_load_input
    SUBMODULES {
      {MODELNAME krnl_bp_flow_control_loop_pipe_sequential_init RTLNAME krnl_bp_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME krnl_bp_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME krnl_bp_Pipeline_l_load_input1 MODELNAME krnl_bp_Pipeline_l_load_input1 RTLNAME krnl_bp_krnl_bp_Pipeline_l_load_input1}
  {SRCNAME krnl_bp_Pipeline_VITIS_LOOP_236_1 MODELNAME krnl_bp_Pipeline_VITIS_LOOP_236_1 RTLNAME krnl_bp_krnl_bp_Pipeline_VITIS_LOOP_236_1}
  {SRCNAME krnl_bp_Pipeline_VITIS_LOOP_236_12 MODELNAME krnl_bp_Pipeline_VITIS_LOOP_236_12 RTLNAME krnl_bp_krnl_bp_Pipeline_VITIS_LOOP_236_12}
  {SRCNAME krnl_bp_Pipeline_VITIS_LOOP_236_13 MODELNAME krnl_bp_Pipeline_VITIS_LOOP_236_13 RTLNAME krnl_bp_krnl_bp_Pipeline_VITIS_LOOP_236_13}
  {SRCNAME replicate_stream MODELNAME replicate_stream RTLNAME krnl_bp_replicate_stream}
  {SRCNAME mac MODELNAME mac RTLNAME krnl_bp_mac}
  {SRCNAME krnl_bp_Pipeline_l_main MODELNAME krnl_bp_Pipeline_l_main RTLNAME krnl_bp_krnl_bp_Pipeline_l_main
    SUBMODULES {
      {MODELNAME krnl_bp_fsub_32ns_32ns_32_7_full_dsp_1 RTLNAME krnl_bp_fsub_32ns_32ns_32_7_full_dsp_1 BINDTYPE op TYPE fsub IMPL fulldsp LATENCY 6 ALLOW_PRAGMA 1}
      {MODELNAME krnl_bp_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME krnl_bp_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME krnl_bp_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME krnl_bp_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME krnl_bp_fifo_w32_d36_A RTLNAME krnl_bp_fifo_w32_d36_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME u_copy_1_stream_U}
      {MODELNAME krnl_bp_fifo_w32_d36_A RTLNAME krnl_bp_fifo_w32_d36_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME u_copy_2_stream_U}
      {MODELNAME krnl_bp_fifo_w32_d36_A RTLNAME krnl_bp_fifo_w32_d36_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME u_copy_3_stream_U}
      {MODELNAME krnl_bp_fifo_w32_d68_A RTLNAME krnl_bp_fifo_w32_d68_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME p_stream_U}
      {MODELNAME krnl_bp_fifo_w32_d36_A RTLNAME krnl_bp_fifo_w32_d36_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME q_stream_U}
      {MODELNAME krnl_bp_fifo_w32_d36_A RTLNAME krnl_bp_fifo_w32_d36_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME x_stream_U}
      {MODELNAME krnl_bp_fifo_w32_d36_A RTLNAME krnl_bp_fifo_w32_d36_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME x_hat_stream_U}
      {MODELNAME krnl_bp_fifo_w32_d36_A RTLNAME krnl_bp_fifo_w32_d36_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME x_hat_copy_1_stream_U}
      {MODELNAME krnl_bp_fifo_w32_d36_A RTLNAME krnl_bp_fifo_w32_d36_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME x_hat_copy_2_stream_U}
      {MODELNAME krnl_bp_fifo_w32_d36_A RTLNAME krnl_bp_fifo_w32_d36_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME x_hat_copy_3_stream_U}
      {MODELNAME krnl_bp_fifo_w32_d36_A RTLNAME krnl_bp_fifo_w32_d36_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME x_hat_u_stream_U}
      {MODELNAME krnl_bp_fifo_w32_d36_A RTLNAME krnl_bp_fifo_w32_d36_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME z_stream_U}
      {MODELNAME krnl_bp_fifo_w32_d36_A RTLNAME krnl_bp_fifo_w32_d36_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME z_copy_1_stream_U}
      {MODELNAME krnl_bp_fifo_w32_d36_A RTLNAME krnl_bp_fifo_w32_d36_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME x_hat_z_stream_U}
    }
  }
  {SRCNAME krnl_bp_Pipeline_VITIS_LOOP_229_1 MODELNAME krnl_bp_Pipeline_VITIS_LOOP_229_1 RTLNAME krnl_bp_krnl_bp_Pipeline_VITIS_LOOP_229_1}
  {SRCNAME krnl_bp_Pipeline_VITIS_LOOP_229_14 MODELNAME krnl_bp_Pipeline_VITIS_LOOP_229_14 RTLNAME krnl_bp_krnl_bp_Pipeline_VITIS_LOOP_229_14}
  {SRCNAME krnl_bp_Pipeline_VITIS_LOOP_229_15 MODELNAME krnl_bp_Pipeline_VITIS_LOOP_229_15 RTLNAME krnl_bp_krnl_bp_Pipeline_VITIS_LOOP_229_15}
  {SRCNAME krnl_bp_Pipeline_l_write_mem MODELNAME krnl_bp_Pipeline_l_write_mem RTLNAME krnl_bp_krnl_bp_Pipeline_l_write_mem}
  {SRCNAME krnl_bp MODELNAME krnl_bp RTLNAME krnl_bp IS_TOP 1
    SUBMODULES {
      {MODELNAME krnl_bp_faddfsub_32ns_32ns_32_7_full_dsp_1 RTLNAME krnl_bp_faddfsub_32ns_32ns_32_7_full_dsp_1 BINDTYPE op TYPE fsub IMPL fulldsp LATENCY 6 ALLOW_PRAGMA 1}
      {MODELNAME krnl_bp_mat_p_bram_RAM_AUTO_1R1W RTLNAME krnl_bp_mat_p_bram_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME krnl_bp_vec_q_bram_RAM_AUTO_1R1W RTLNAME krnl_bp_vec_q_bram_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME krnl_bp_fifo_w32_d36_A_x RTLNAME krnl_bp_fifo_w32_d36_A_x BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME u_stream_U}
      {MODELNAME krnl_bp_fifo_w32_d36_A_x RTLNAME krnl_bp_fifo_w32_d36_A_x BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME z_copy_2_stream_U}
      {MODELNAME krnl_bp_fifo_w32_d36_A_x RTLNAME krnl_bp_fifo_w32_d36_A_x BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME z_old_stream_U}
      {MODELNAME krnl_bp_fifo_w32_d36_A_x RTLNAME krnl_bp_fifo_w32_d36_A_x BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME z_u_stream_U}
      {MODELNAME krnl_bp_fifo_w32_d36_A_x RTLNAME krnl_bp_fifo_w32_d36_A_x BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME mac_res_stream_U}
      {MODELNAME krnl_bp_gmem0_m_axi RTLNAME krnl_bp_gmem0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME krnl_bp_gmem1_m_axi RTLNAME krnl_bp_gmem1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME krnl_bp_gmem2_m_axi RTLNAME krnl_bp_gmem2_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME krnl_bp_control_s_axi RTLNAME krnl_bp_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
