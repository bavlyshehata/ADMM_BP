set SynModuleInfo {
  {SRCNAME krnl_bp_Pipeline_l_load_input MODELNAME krnl_bp_Pipeline_l_load_input RTLNAME krnl_bp_krnl_bp_Pipeline_l_load_input
    SUBMODULES {
      {MODELNAME krnl_bp_flow_control_loop_pipe_sequential_init RTLNAME krnl_bp_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME krnl_bp_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME krnl_bp_Pipeline_l_load_input1 MODELNAME krnl_bp_Pipeline_l_load_input1 RTLNAME krnl_bp_krnl_bp_Pipeline_l_load_input1}
  {SRCNAME krnl_bp_Pipeline_VITIS_LOOP_677_1 MODELNAME krnl_bp_Pipeline_VITIS_LOOP_677_1 RTLNAME krnl_bp_krnl_bp_Pipeline_VITIS_LOOP_677_1}
  {SRCNAME krnl_bp_Pipeline_VITIS_LOOP_677_12 MODELNAME krnl_bp_Pipeline_VITIS_LOOP_677_12 RTLNAME krnl_bp_krnl_bp_Pipeline_VITIS_LOOP_677_12}
  {SRCNAME krnl_bp_Pipeline_VITIS_LOOP_677_13 MODELNAME krnl_bp_Pipeline_VITIS_LOOP_677_13 RTLNAME krnl_bp_krnl_bp_Pipeline_VITIS_LOOP_677_13}
  {SRCNAME replicate_stream MODELNAME replicate_stream RTLNAME krnl_bp_replicate_stream}
  {SRCNAME krnl_bp_Pipeline_VITIS_LOOP_980_1 MODELNAME krnl_bp_Pipeline_VITIS_LOOP_980_1 RTLNAME krnl_bp_krnl_bp_Pipeline_VITIS_LOOP_980_1}
  {SRCNAME krnl_bp_Pipeline_l_vec_sub MODELNAME krnl_bp_Pipeline_l_vec_sub RTLNAME krnl_bp_krnl_bp_Pipeline_l_vec_sub}
  {SRCNAME mac_Pipeline_VITIS_LOOP_234_1 MODELNAME mac_Pipeline_VITIS_LOOP_234_1 RTLNAME krnl_bp_mac_Pipeline_VITIS_LOOP_234_1}
  {SRCNAME mac_Pipeline_VITIS_LOOP_242_2 MODELNAME mac_Pipeline_VITIS_LOOP_242_2 RTLNAME krnl_bp_mac_Pipeline_VITIS_LOOP_242_2}
  {SRCNAME mac_Pipeline_VITIS_LOOP_259_4 MODELNAME mac_Pipeline_VITIS_LOOP_259_4 RTLNAME krnl_bp_mac_Pipeline_VITIS_LOOP_259_4}
  {SRCNAME mac MODELNAME mac RTLNAME krnl_bp_mac
    SUBMODULES {
      {MODELNAME krnl_bp_mac_z_u_local_RAM_AUTO_1R1W RTLNAME krnl_bp_mac_z_u_local_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME krnl_bp_fifo_w32_d256_A RTLNAME krnl_bp_fifo_w32_d256_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME p_stream_U}
    }
  }
  {SRCNAME krnl_bp_Pipeline_VITIS_LOOP_1001_2 MODELNAME krnl_bp_Pipeline_VITIS_LOOP_1001_2 RTLNAME krnl_bp_krnl_bp_Pipeline_VITIS_LOOP_1001_2}
  {SRCNAME krnl_bp_Pipeline_VITIS_LOOP_367_1 MODELNAME krnl_bp_Pipeline_VITIS_LOOP_367_1 RTLNAME krnl_bp_krnl_bp_Pipeline_VITIS_LOOP_367_1}
  {SRCNAME krnl_bp_Pipeline_VITIS_LOOP_380_2 MODELNAME krnl_bp_Pipeline_VITIS_LOOP_380_2 RTLNAME krnl_bp_krnl_bp_Pipeline_VITIS_LOOP_380_2}
  {SRCNAME krnl_bp_Pipeline_VITIS_LOOP_386_3 MODELNAME krnl_bp_Pipeline_VITIS_LOOP_386_3 RTLNAME krnl_bp_krnl_bp_Pipeline_VITIS_LOOP_386_3}
  {SRCNAME krnl_bp_Pipeline_VITIS_LOOP_514_1 MODELNAME krnl_bp_Pipeline_VITIS_LOOP_514_1 RTLNAME krnl_bp_krnl_bp_Pipeline_VITIS_LOOP_514_1}
  {SRCNAME krnl_bp_Pipeline_VITIS_LOOP_526_2 MODELNAME krnl_bp_Pipeline_VITIS_LOOP_526_2 RTLNAME krnl_bp_krnl_bp_Pipeline_VITIS_LOOP_526_2}
  {SRCNAME krnl_bp_Pipeline_l_write_bram MODELNAME krnl_bp_Pipeline_l_write_bram RTLNAME krnl_bp_krnl_bp_Pipeline_l_write_bram}
  {SRCNAME vec_add MODELNAME vec_add RTLNAME krnl_bp_vec_add
    SUBMODULES {
      {MODELNAME krnl_bp_fadd_32ns_32ns_32_7_full_dsp_1 RTLNAME krnl_bp_fadd_32ns_32ns_32_7_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 6 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME krnl_bp_Pipeline_l_shrinkage MODELNAME krnl_bp_Pipeline_l_shrinkage RTLNAME krnl_bp_krnl_bp_Pipeline_l_shrinkage
    SUBMODULES {
      {MODELNAME krnl_bp_fsub_32ns_32ns_32_7_full_dsp_1 RTLNAME krnl_bp_fsub_32ns_32ns_32_7_full_dsp_1 BINDTYPE op TYPE fsub IMPL fulldsp LATENCY 6 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME krnl_bp_Pipeline_l_vec_sub4 MODELNAME krnl_bp_Pipeline_l_vec_sub4 RTLNAME krnl_bp_krnl_bp_Pipeline_l_vec_sub4}
  {SRCNAME pow_generic<double> MODELNAME pow_generic_double_s RTLNAME krnl_bp_pow_generic_double_s
    SUBMODULES {
      {MODELNAME krnl_bp_mul_54s_6ns_54_5_1 RTLNAME krnl_bp_mul_54s_6ns_54_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME krnl_bp_mul_71ns_4ns_75_5_1 RTLNAME krnl_bp_mul_71ns_4ns_75_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME krnl_bp_mul_73ns_6ns_79_5_1 RTLNAME krnl_bp_mul_73ns_6ns_79_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME krnl_bp_mul_83ns_6ns_89_5_1 RTLNAME krnl_bp_mul_83ns_6ns_89_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME krnl_bp_mul_92ns_6ns_98_5_1 RTLNAME krnl_bp_mul_92ns_6ns_98_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME krnl_bp_mul_87ns_6ns_93_5_1 RTLNAME krnl_bp_mul_87ns_6ns_93_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME krnl_bp_mul_82ns_6ns_88_5_1 RTLNAME krnl_bp_mul_82ns_6ns_88_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME krnl_bp_mul_77ns_6ns_83_5_1 RTLNAME krnl_bp_mul_77ns_6ns_83_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME krnl_bp_mul_12s_80ns_90_5_1 RTLNAME krnl_bp_mul_12s_80ns_90_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME krnl_bp_mul_40ns_40ns_80_2_1 RTLNAME krnl_bp_mul_40ns_40ns_80_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME krnl_bp_mul_13s_71s_71_5_1 RTLNAME krnl_bp_mul_13s_71s_71_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME krnl_bp_mul_43ns_36ns_79_2_1 RTLNAME krnl_bp_mul_43ns_36ns_79_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME krnl_bp_mul_49ns_44ns_93_5_1 RTLNAME krnl_bp_mul_49ns_44ns_93_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME krnl_bp_mul_50ns_50ns_100_5_1 RTLNAME krnl_bp_mul_50ns_50ns_100_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME krnl_bp_mac_muladd_16s_15ns_19s_31_4_1 RTLNAME krnl_bp_mac_muladd_16s_15ns_19s_31_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME krnl_bp_pow_generic_double_s_pow_reduce_anonymous_namespace_log_inverse_lut_table_powbkb RTLNAME krnl_bp_pow_generic_double_s_pow_reduce_anonymous_namespace_log_inverse_lut_table_powbkb BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME krnl_bp_pow_generic_double_s_pow_reduce_anonymous_namespace_log0_lut_table_array_V_ROcud RTLNAME krnl_bp_pow_generic_double_s_pow_reduce_anonymous_namespace_log0_lut_table_array_V_ROcud BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME krnl_bp_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_4_dEe RTLNAME krnl_bp_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_4_dEe BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME krnl_bp_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_7_eOg RTLNAME krnl_bp_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_7_eOg BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME krnl_bp_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_12fYi RTLNAME krnl_bp_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_12fYi BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME krnl_bp_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_17g8j RTLNAME krnl_bp_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_17g8j BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME krnl_bp_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_22hbi RTLNAME krnl_bp_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_22hbi BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME krnl_bp_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_27ibs RTLNAME krnl_bp_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_27ibs BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME krnl_bp_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_32jbC RTLNAME krnl_bp_pow_generic_double_s_pow_reduce_anonymous_namespace_log_lut_table_ap_fixed_32jbC BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME krnl_bp_pow_generic_double_s_pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_arkbM RTLNAME krnl_bp_pow_generic_double_s_pow_reduce_anonymous_namespace_table_exp_Z1_ap_ufixed_arkbM BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME krnl_bp_pow_generic_double_s_pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_arralbW RTLNAME krnl_bp_pow_generic_double_s_pow_reduce_anonymous_namespace_table_f_Z3_ap_ufixed_arralbW BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME krnl_bp_pow_generic_double_s_pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_arramb6 RTLNAME krnl_bp_pow_generic_double_s_pow_reduce_anonymous_namespace_table_f_Z2_ap_ufixed_arramb6 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME krnl_bp_Pipeline_VITIS_LOOP_1045_3 MODELNAME krnl_bp_Pipeline_VITIS_LOOP_1045_3 RTLNAME krnl_bp_krnl_bp_Pipeline_VITIS_LOOP_1045_3}
  {SRCNAME krnl_bp_Pipeline_VITIS_LOOP_843_1 MODELNAME krnl_bp_Pipeline_VITIS_LOOP_843_1 RTLNAME krnl_bp_krnl_bp_Pipeline_VITIS_LOOP_843_1}
  {SRCNAME krnl_bp_Pipeline_VITIS_LOOP_843_15 MODELNAME krnl_bp_Pipeline_VITIS_LOOP_843_15 RTLNAME krnl_bp_krnl_bp_Pipeline_VITIS_LOOP_843_15}
  {SRCNAME krnl_bp_Pipeline_VITIS_LOOP_843_16 MODELNAME krnl_bp_Pipeline_VITIS_LOOP_843_16 RTLNAME krnl_bp_krnl_bp_Pipeline_VITIS_LOOP_843_16}
  {SRCNAME krnl_bp_Pipeline_l_write_mem MODELNAME krnl_bp_Pipeline_l_write_mem RTLNAME krnl_bp_krnl_bp_Pipeline_l_write_mem}
  {SRCNAME krnl_bp MODELNAME krnl_bp RTLNAME krnl_bp IS_TOP 1
    SUBMODULES {
      {MODELNAME krnl_bp_faddfsub_32ns_32ns_32_7_full_dsp_1 RTLNAME krnl_bp_faddfsub_32ns_32ns_32_7_full_dsp_1 BINDTYPE op TYPE fsub IMPL fulldsp LATENCY 6 ALLOW_PRAGMA 1}
      {MODELNAME krnl_bp_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME krnl_bp_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME krnl_bp_fptrunc_64ns_32_2_no_dsp_1 RTLNAME krnl_bp_fptrunc_64ns_32_2_no_dsp_1 BINDTYPE op TYPE fptrunc IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME krnl_bp_fpext_32ns_64_2_no_dsp_1 RTLNAME krnl_bp_fpext_32ns_64_2_no_dsp_1 BINDTYPE op TYPE fpext IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME krnl_bp_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME krnl_bp_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME krnl_bp_fsqrt_32ns_32ns_32_12_no_dsp_1 RTLNAME krnl_bp_fsqrt_32ns_32ns_32_12_no_dsp_1 BINDTYPE op TYPE fsqrt IMPL fabric LATENCY 11 ALLOW_PRAGMA 1}
      {MODELNAME krnl_bp_dadd_64ns_64ns_64_8_full_dsp_1 RTLNAME krnl_bp_dadd_64ns_64ns_64_8_full_dsp_1 BINDTYPE op TYPE dadd IMPL fulldsp LATENCY 7 ALLOW_PRAGMA 1}
      {MODELNAME krnl_bp_mat_p_bram_RAM_AUTO_1R1W RTLNAME krnl_bp_mat_p_bram_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME krnl_bp_vec_q_bram_RAM_AUTO_1R1W RTLNAME krnl_bp_vec_q_bram_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME krnl_bp_fifo_w32_d128_A RTLNAME krnl_bp_fifo_w32_d128_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME u_stream_U}
      {MODELNAME krnl_bp_fifo_w32_d128_A RTLNAME krnl_bp_fifo_w32_d128_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME z_copy_2_stream_U}
      {MODELNAME krnl_bp_fifo_w32_d128_A RTLNAME krnl_bp_fifo_w32_d128_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME z_old_stream_U}
      {MODELNAME krnl_bp_fifo_w32_d128_A RTLNAME krnl_bp_fifo_w32_d128_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME u_copy_1_stream_U}
      {MODELNAME krnl_bp_fifo_w32_d128_A RTLNAME krnl_bp_fifo_w32_d128_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME u_copy_2_stream_U}
      {MODELNAME krnl_bp_fifo_w32_d128_A RTLNAME krnl_bp_fifo_w32_d128_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME u_copy_3_stream_U}
      {MODELNAME krnl_bp_fifo_w32_d128_A RTLNAME krnl_bp_fifo_w32_d128_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME z_u_stream_U}
      {MODELNAME krnl_bp_fifo_w32_d256_A_x RTLNAME krnl_bp_fifo_w32_d256_A_x BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME mac_res_stream_U}
      {MODELNAME krnl_bp_fifo_w32_d36_A RTLNAME krnl_bp_fifo_w32_d36_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME q_stream_U}
      {MODELNAME krnl_bp_fifo_w32_d128_A RTLNAME krnl_bp_fifo_w32_d128_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME x_stream_U}
      {MODELNAME krnl_bp_fifo_w32_d128_A RTLNAME krnl_bp_fifo_w32_d128_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME x_hat_stream_U}
      {MODELNAME krnl_bp_fifo_w32_d128_A RTLNAME krnl_bp_fifo_w32_d128_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME x_hat_copy_1_stream_U}
      {MODELNAME krnl_bp_fifo_w32_d128_A RTLNAME krnl_bp_fifo_w32_d128_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME x_hat_copy_2_stream_U}
      {MODELNAME krnl_bp_fifo_w32_d128_A RTLNAME krnl_bp_fifo_w32_d128_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME x_hat_copy_3_stream_U}
      {MODELNAME krnl_bp_fifo_w32_d128_A RTLNAME krnl_bp_fifo_w32_d128_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME x_hat_u_stream_U}
      {MODELNAME krnl_bp_fifo_w32_d128_A RTLNAME krnl_bp_fifo_w32_d128_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME z_stream_U}
      {MODELNAME krnl_bp_fifo_w32_d128_A RTLNAME krnl_bp_fifo_w32_d128_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME z_copy_1_stream_U}
      {MODELNAME krnl_bp_fifo_w32_d128_A RTLNAME krnl_bp_fifo_w32_d128_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME x_hat_z_stream_U}
      {MODELNAME krnl_bp_gmem0_m_axi RTLNAME krnl_bp_gmem0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME krnl_bp_gmem1_m_axi RTLNAME krnl_bp_gmem1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME krnl_bp_gmem2_m_axi RTLNAME krnl_bp_gmem2_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME krnl_bp_control_s_axi RTLNAME krnl_bp_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
