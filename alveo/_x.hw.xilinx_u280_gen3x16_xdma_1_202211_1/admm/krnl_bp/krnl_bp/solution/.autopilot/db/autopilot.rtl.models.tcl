set SynModuleInfo {
  {SRCNAME krnl_bp_Pipeline_VITIS_LOOP_606_2 MODELNAME krnl_bp_Pipeline_VITIS_LOOP_606_2 RTLNAME krnl_bp_krnl_bp_Pipeline_VITIS_LOOP_606_2
    SUBMODULES {
      {MODELNAME krnl_bp_flow_control_loop_pipe_sequential_init RTLNAME krnl_bp_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME krnl_bp_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME krnl_bp_Pipeline_VITIS_LOOP_618_4 MODELNAME krnl_bp_Pipeline_VITIS_LOOP_618_4 RTLNAME krnl_bp_krnl_bp_Pipeline_VITIS_LOOP_618_4
    SUBMODULES {
      {MODELNAME krnl_bp_sparsemux_33_4_32_1_1 RTLNAME krnl_bp_sparsemux_33_4_32_1_1 BINDTYPE op TYPE sparsemux IMPL auto}
    }
  }
  {SRCNAME krnl_bp_Pipeline_VITIS_LOOP_636_7 MODELNAME krnl_bp_Pipeline_VITIS_LOOP_636_7 RTLNAME krnl_bp_krnl_bp_Pipeline_VITIS_LOOP_636_7}
  {SRCNAME krnl_bp_Pipeline_VITIS_LOOP_642_8 MODELNAME krnl_bp_Pipeline_VITIS_LOOP_642_8 RTLNAME krnl_bp_krnl_bp_Pipeline_VITIS_LOOP_642_8}
  {SRCNAME krnl_bp_Pipeline_VITIS_LOOP_648_9 MODELNAME krnl_bp_Pipeline_VITIS_LOOP_648_9 RTLNAME krnl_bp_krnl_bp_Pipeline_VITIS_LOOP_648_9
    SUBMODULES {
      {MODELNAME krnl_bp_fmul_32ns_32ns_32_4_max_dsp_1 RTLNAME krnl_bp_fmul_32ns_32ns_32_4_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME krnl_bp_Pipeline_shrinkage_loop MODELNAME krnl_bp_Pipeline_shrinkage_loop RTLNAME krnl_bp_krnl_bp_Pipeline_shrinkage_loop
    SUBMODULES {
      {MODELNAME krnl_bp_fsub_32ns_32ns_32_7_full_dsp_1 RTLNAME krnl_bp_fsub_32ns_32ns_32_7_full_dsp_1 BINDTYPE op TYPE fsub IMPL fulldsp LATENCY 6 ALLOW_PRAGMA 1}
      {MODELNAME krnl_bp_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME krnl_bp_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME krnl_bp_Pipeline_VITIS_LOOP_665_10 MODELNAME krnl_bp_Pipeline_VITIS_LOOP_665_10 RTLNAME krnl_bp_krnl_bp_Pipeline_VITIS_LOOP_665_10}
  {SRCNAME krnl_bp_Pipeline_VITIS_LOOP_671_11 MODELNAME krnl_bp_Pipeline_VITIS_LOOP_671_11 RTLNAME krnl_bp_krnl_bp_Pipeline_VITIS_LOOP_671_11}
  {SRCNAME krnl_bp_Pipeline_VITIS_LOOP_679_12 MODELNAME krnl_bp_Pipeline_VITIS_LOOP_679_12 RTLNAME krnl_bp_krnl_bp_Pipeline_VITIS_LOOP_679_12}
  {SRCNAME krnl_bp MODELNAME krnl_bp RTLNAME krnl_bp IS_TOP 1
    SUBMODULES {
      {MODELNAME krnl_bp_faddfsub_32ns_32ns_32_7_full_dsp_1 RTLNAME krnl_bp_faddfsub_32ns_32ns_32_7_full_dsp_1 BINDTYPE op TYPE fsub IMPL fulldsp LATENCY 6 ALLOW_PRAGMA 1}
      {MODELNAME krnl_bp_mul_32ns_32s_62_2_1 RTLNAME krnl_bp_mul_32ns_32s_62_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME krnl_bp_mul_32s_32s_32_2_1 RTLNAME krnl_bp_mul_32s_32s_32_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME krnl_bp_x_RAM_AUTO_1R1W RTLNAME krnl_bp_x_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME krnl_bp_u_RAM_AUTO_1R1W RTLNAME krnl_bp_u_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME krnl_bp_gmem0_m_axi RTLNAME krnl_bp_gmem0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME krnl_bp_gmem1_m_axi RTLNAME krnl_bp_gmem1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME krnl_bp_gmem2_m_axi RTLNAME krnl_bp_gmem2_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME krnl_bp_control_s_axi RTLNAME krnl_bp_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
