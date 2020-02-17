`include "include_module.v"
`ifdef __Rocket
module Rocket( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155415.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155416.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155417.4]
  input         io_interrupts_debug, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  input         io_interrupts_mtip, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  input         io_interrupts_msip, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  input         io_interrupts_meip, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  input         io_interrupts_seip, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output        io_imem_might_request, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output        io_imem_req_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output [31:0] io_imem_req_bits_pc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output        io_imem_req_bits_speculative, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output        io_imem_sfence_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output        io_imem_sfence_bits_rs1, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output        io_imem_sfence_bits_rs2, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output [31:0] io_imem_sfence_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output        io_imem_resp_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  input         io_imem_resp_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  input         io_imem_resp_bits_btb_taken, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  input         io_imem_resp_bits_btb_bridx, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  input  [4:0]  io_imem_resp_bits_btb_entry, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  input  [7:0]  io_imem_resp_bits_btb_bht_history, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  input  [31:0] io_imem_resp_bits_pc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  input  [31:0] io_imem_resp_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  input         io_imem_resp_bits_xcpt_pf_inst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  input         io_imem_resp_bits_xcpt_ae_inst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  input         io_imem_resp_bits_replay, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output        io_imem_btb_update_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output [4:0]  io_imem_btb_update_bits_prediction_entry, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output [31:0] io_imem_btb_update_bits_pc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output        io_imem_btb_update_bits_isValid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output [31:0] io_imem_btb_update_bits_br_pc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output [1:0]  io_imem_btb_update_bits_cfiType, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output        io_imem_bht_update_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output [7:0]  io_imem_bht_update_bits_prediction_history, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output [31:0] io_imem_bht_update_bits_pc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output        io_imem_bht_update_bits_branch, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output        io_imem_bht_update_bits_taken, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output        io_imem_bht_update_bits_mispredict, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output        io_imem_flush_icache, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  input         io_dmem_req_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output        io_dmem_req_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output [31:0] io_dmem_req_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output [6:0]  io_dmem_req_bits_tag, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output [4:0]  io_dmem_req_bits_cmd, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output [1:0]  io_dmem_req_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output        io_dmem_req_bits_signed, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output        io_dmem_s1_kill, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output [31:0] io_dmem_s1_data_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  input         io_dmem_s2_nack, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  input         io_dmem_resp_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  input  [6:0]  io_dmem_resp_bits_tag, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  input  [31:0] io_dmem_resp_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  input         io_dmem_resp_bits_replay, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  input         io_dmem_resp_bits_has_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  input  [31:0] io_dmem_resp_bits_data_word_bypass, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  input         io_dmem_replay_next, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  input         io_dmem_s2_xcpt_ma_ld, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  input         io_dmem_s2_xcpt_ma_st, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  input         io_dmem_s2_xcpt_pf_ld, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  input         io_dmem_s2_xcpt_pf_st, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  input         io_dmem_s2_xcpt_ae_ld, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  input         io_dmem_s2_xcpt_ae_st, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  input         io_dmem_ordered, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  input         io_dmem_perf_release, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  input         io_dmem_perf_grant, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output        io_ptw_ptbr_mode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output [21:0] io_ptw_ptbr_ppn, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output        io_ptw_sfence_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output        io_ptw_sfence_bits_rs1, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output        io_ptw_status_debug, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output [1:0]  io_ptw_status_dprv, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output [1:0]  io_ptw_status_prv, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output        io_ptw_status_mxr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output        io_ptw_status_sum, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output        io_ptw_pmp_0_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output [1:0]  io_ptw_pmp_0_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output        io_ptw_pmp_0_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output        io_ptw_pmp_0_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output        io_ptw_pmp_0_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output [29:0] io_ptw_pmp_0_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output [31:0] io_ptw_pmp_0_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output        io_ptw_pmp_1_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output [1:0]  io_ptw_pmp_1_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output        io_ptw_pmp_1_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output        io_ptw_pmp_1_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output        io_ptw_pmp_1_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output [29:0] io_ptw_pmp_1_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output [31:0] io_ptw_pmp_1_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output        io_ptw_pmp_2_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output [1:0]  io_ptw_pmp_2_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output        io_ptw_pmp_2_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output        io_ptw_pmp_2_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output        io_ptw_pmp_2_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output [29:0] io_ptw_pmp_2_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output [31:0] io_ptw_pmp_2_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output        io_ptw_pmp_3_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output [1:0]  io_ptw_pmp_3_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output        io_ptw_pmp_3_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output        io_ptw_pmp_3_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output        io_ptw_pmp_3_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output [29:0] io_ptw_pmp_3_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output [31:0] io_ptw_pmp_3_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output        io_ptw_pmp_4_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output [1:0]  io_ptw_pmp_4_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output        io_ptw_pmp_4_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output        io_ptw_pmp_4_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output        io_ptw_pmp_4_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output [29:0] io_ptw_pmp_4_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output [31:0] io_ptw_pmp_4_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output        io_ptw_pmp_5_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output [1:0]  io_ptw_pmp_5_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output        io_ptw_pmp_5_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output        io_ptw_pmp_5_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output        io_ptw_pmp_5_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output [29:0] io_ptw_pmp_5_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output [31:0] io_ptw_pmp_5_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output        io_ptw_pmp_6_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output [1:0]  io_ptw_pmp_6_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output        io_ptw_pmp_6_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output        io_ptw_pmp_6_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output        io_ptw_pmp_6_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output [29:0] io_ptw_pmp_6_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output [31:0] io_ptw_pmp_6_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output        io_ptw_pmp_7_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output [1:0]  io_ptw_pmp_7_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output        io_ptw_pmp_7_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output        io_ptw_pmp_7_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output        io_ptw_pmp_7_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output [29:0] io_ptw_pmp_7_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output [31:0] io_ptw_pmp_7_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output [31:0] io_ptw_customCSRs_csrs_0_value, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output [31:0] io_fpu_inst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output [31:0] io_fpu_fromint_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output [2:0]  io_fpu_fcsr_rm, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  input         io_fpu_fcsr_flags_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  input  [4:0]  io_fpu_fcsr_flags_bits, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  input  [31:0] io_fpu_store_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  input  [31:0] io_fpu_toint_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output        io_fpu_dmem_resp_val, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output [4:0]  io_fpu_dmem_resp_tag, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output [31:0] io_fpu_dmem_resp_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output        io_fpu_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  input         io_fpu_fcsr_rdy, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  input         io_fpu_nack_mem, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  input         io_fpu_illegal_rm, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output        io_fpu_killx, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  output        io_fpu_killm, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  input         io_fpu_dec_wen, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  input         io_fpu_dec_ren1, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  input         io_fpu_dec_ren2, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  input         io_fpu_dec_ren3, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  input         io_fpu_sboard_set, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  input         io_fpu_sboard_clr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
  input  [4:0]  io_fpu_sboard_clra // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155418.4]
);
  wire  ibuf_clock; // @[RocketCore.scala 238:20:freechips.rocketchip.system.DefaultRV32Config.fir@155489.4]
  wire  ibuf_reset; // @[RocketCore.scala 238:20:freechips.rocketchip.system.DefaultRV32Config.fir@155489.4]
  wire  ibuf_io_imem_ready; // @[RocketCore.scala 238:20:freechips.rocketchip.system.DefaultRV32Config.fir@155489.4]
  wire  ibuf_io_imem_valid; // @[RocketCore.scala 238:20:freechips.rocketchip.system.DefaultRV32Config.fir@155489.4]
  wire  ibuf_io_imem_bits_btb_taken; // @[RocketCore.scala 238:20:freechips.rocketchip.system.DefaultRV32Config.fir@155489.4]
  wire  ibuf_io_imem_bits_btb_bridx; // @[RocketCore.scala 238:20:freechips.rocketchip.system.DefaultRV32Config.fir@155489.4]
  wire [4:0] ibuf_io_imem_bits_btb_entry; // @[RocketCore.scala 238:20:freechips.rocketchip.system.DefaultRV32Config.fir@155489.4]
  wire [7:0] ibuf_io_imem_bits_btb_bht_history; // @[RocketCore.scala 238:20:freechips.rocketchip.system.DefaultRV32Config.fir@155489.4]
  wire [31:0] ibuf_io_imem_bits_pc; // @[RocketCore.scala 238:20:freechips.rocketchip.system.DefaultRV32Config.fir@155489.4]
  wire [31:0] ibuf_io_imem_bits_data; // @[RocketCore.scala 238:20:freechips.rocketchip.system.DefaultRV32Config.fir@155489.4]
  wire  ibuf_io_imem_bits_xcpt_pf_inst; // @[RocketCore.scala 238:20:freechips.rocketchip.system.DefaultRV32Config.fir@155489.4]
  wire  ibuf_io_imem_bits_xcpt_ae_inst; // @[RocketCore.scala 238:20:freechips.rocketchip.system.DefaultRV32Config.fir@155489.4]
  wire  ibuf_io_imem_bits_replay; // @[RocketCore.scala 238:20:freechips.rocketchip.system.DefaultRV32Config.fir@155489.4]
  wire  ibuf_io_kill; // @[RocketCore.scala 238:20:freechips.rocketchip.system.DefaultRV32Config.fir@155489.4]
  wire [31:0] ibuf_io_pc; // @[RocketCore.scala 238:20:freechips.rocketchip.system.DefaultRV32Config.fir@155489.4]
  wire [4:0] ibuf_io_btb_resp_entry; // @[RocketCore.scala 238:20:freechips.rocketchip.system.DefaultRV32Config.fir@155489.4]
  wire [7:0] ibuf_io_btb_resp_bht_history; // @[RocketCore.scala 238:20:freechips.rocketchip.system.DefaultRV32Config.fir@155489.4]
  wire  ibuf_io_inst_0_ready; // @[RocketCore.scala 238:20:freechips.rocketchip.system.DefaultRV32Config.fir@155489.4]
  wire  ibuf_io_inst_0_valid; // @[RocketCore.scala 238:20:freechips.rocketchip.system.DefaultRV32Config.fir@155489.4]
  wire  ibuf_io_inst_0_bits_xcpt0_pf_inst; // @[RocketCore.scala 238:20:freechips.rocketchip.system.DefaultRV32Config.fir@155489.4]
  wire  ibuf_io_inst_0_bits_xcpt0_ae_inst; // @[RocketCore.scala 238:20:freechips.rocketchip.system.DefaultRV32Config.fir@155489.4]
  wire  ibuf_io_inst_0_bits_xcpt1_pf_inst; // @[RocketCore.scala 238:20:freechips.rocketchip.system.DefaultRV32Config.fir@155489.4]
  wire  ibuf_io_inst_0_bits_xcpt1_ae_inst; // @[RocketCore.scala 238:20:freechips.rocketchip.system.DefaultRV32Config.fir@155489.4]
  wire  ibuf_io_inst_0_bits_replay; // @[RocketCore.scala 238:20:freechips.rocketchip.system.DefaultRV32Config.fir@155489.4]
  wire  ibuf_io_inst_0_bits_rvc; // @[RocketCore.scala 238:20:freechips.rocketchip.system.DefaultRV32Config.fir@155489.4]
  wire [31:0] ibuf_io_inst_0_bits_inst_bits; // @[RocketCore.scala 238:20:freechips.rocketchip.system.DefaultRV32Config.fir@155489.4]
  wire [4:0] ibuf_io_inst_0_bits_inst_rd; // @[RocketCore.scala 238:20:freechips.rocketchip.system.DefaultRV32Config.fir@155489.4]
  wire [4:0] ibuf_io_inst_0_bits_inst_rs1; // @[RocketCore.scala 238:20:freechips.rocketchip.system.DefaultRV32Config.fir@155489.4]
  wire [4:0] ibuf_io_inst_0_bits_inst_rs2; // @[RocketCore.scala 238:20:freechips.rocketchip.system.DefaultRV32Config.fir@155489.4]
  wire [4:0] ibuf_io_inst_0_bits_inst_rs3; // @[RocketCore.scala 238:20:freechips.rocketchip.system.DefaultRV32Config.fir@155489.4]
  wire [31:0] ibuf_io_inst_0_bits_raw; // @[RocketCore.scala 238:20:freechips.rocketchip.system.DefaultRV32Config.fir@155489.4]
  reg [31:0] _T_383 [0:30]; // @[RocketCore.scala 956:15:freechips.rocketchip.system.DefaultRV32Config.fir@155915.4]
  reg [31:0] _RAND_0;
  wire [31:0] _T_383__T_388_data; // @[RocketCore.scala 956:15:freechips.rocketchip.system.DefaultRV32Config.fir@155915.4]
  wire [4:0] _T_383__T_388_addr; // @[RocketCore.scala 956:15:freechips.rocketchip.system.DefaultRV32Config.fir@155915.4]
  reg [31:0] _RAND_1;
  wire [31:0] _T_383__T_394_data; // @[RocketCore.scala 956:15:freechips.rocketchip.system.DefaultRV32Config.fir@155915.4]
  wire [4:0] _T_383__T_394_addr; // @[RocketCore.scala 956:15:freechips.rocketchip.system.DefaultRV32Config.fir@155915.4]
  reg [31:0] _RAND_2;
  wire [31:0] _T_383__T_1074_data; // @[RocketCore.scala 956:15:freechips.rocketchip.system.DefaultRV32Config.fir@155915.4]
  wire [4:0] _T_383__T_1074_addr; // @[RocketCore.scala 956:15:freechips.rocketchip.system.DefaultRV32Config.fir@155915.4]
  wire  _T_383__T_1074_mask; // @[RocketCore.scala 956:15:freechips.rocketchip.system.DefaultRV32Config.fir@155915.4]
  wire  _T_383__T_1074_en; // @[RocketCore.scala 956:15:freechips.rocketchip.system.DefaultRV32Config.fir@155915.4]
  wire  csr_clock; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_reset; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_ungated_clock; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_interrupts_debug; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_interrupts_mtip; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_interrupts_msip; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_interrupts_meip; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_interrupts_seip; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire [11:0] csr_io_rw_addr; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire [2:0] csr_io_rw_cmd; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire [31:0] csr_io_rw_rdata; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire [31:0] csr_io_rw_wdata; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire [11:0] csr_io_decode_0_csr; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_decode_0_fp_illegal; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_decode_0_fp_csr; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_decode_0_read_illegal; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_decode_0_write_illegal; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_decode_0_write_flush; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_decode_0_system_illegal; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_csr_stall; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_eret; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_singleStep; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_status_debug; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_status_cease; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire [31:0] csr_io_status_isa; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire [1:0] csr_io_status_dprv; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire [1:0] csr_io_status_prv; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_status_sd; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire [26:0] csr_io_status_zero2; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire [1:0] csr_io_status_sxl; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire [1:0] csr_io_status_uxl; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_status_sd_rv32; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire [5:0] csr_io_status_zero1; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire [1:0] csr_io_status_vs; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_status_tsr; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_status_tw; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_status_tvm; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_status_mxr; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_status_sum; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_status_mprv; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire [1:0] csr_io_status_xs; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire [1:0] csr_io_status_fs; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire [1:0] csr_io_status_mpp; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire [1:0] csr_io_status_hpp; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_status_spp; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_status_mpie; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_status_hpie; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_status_spie; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_status_upie; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_status_mie; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_status_hie; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_status_sie; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_status_uie; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_ptbr_mode; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire [21:0] csr_io_ptbr_ppn; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire [31:0] csr_io_evec; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_exception; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_retire; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire [31:0] csr_io_cause; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire [31:0] csr_io_pc; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire [31:0] csr_io_tval; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire [31:0] csr_io_time; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire [2:0] csr_io_fcsr_rm; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_fcsr_flags_valid; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire [4:0] csr_io_fcsr_flags_bits; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_interrupt; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire [31:0] csr_io_interrupt_cause; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_bp_0_control_action; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire [1:0] csr_io_bp_0_control_tmatch; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_bp_0_control_m; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_bp_0_control_s; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_bp_0_control_u; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_bp_0_control_x; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_bp_0_control_w; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_bp_0_control_r; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire [31:0] csr_io_bp_0_address; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_pmp_0_cfg_l; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire [1:0] csr_io_pmp_0_cfg_a; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_pmp_0_cfg_x; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_pmp_0_cfg_w; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_pmp_0_cfg_r; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire [29:0] csr_io_pmp_0_addr; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire [31:0] csr_io_pmp_0_mask; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_pmp_1_cfg_l; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire [1:0] csr_io_pmp_1_cfg_a; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_pmp_1_cfg_x; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_pmp_1_cfg_w; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_pmp_1_cfg_r; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire [29:0] csr_io_pmp_1_addr; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire [31:0] csr_io_pmp_1_mask; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_pmp_2_cfg_l; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire [1:0] csr_io_pmp_2_cfg_a; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_pmp_2_cfg_x; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_pmp_2_cfg_w; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_pmp_2_cfg_r; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire [29:0] csr_io_pmp_2_addr; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire [31:0] csr_io_pmp_2_mask; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_pmp_3_cfg_l; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire [1:0] csr_io_pmp_3_cfg_a; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_pmp_3_cfg_x; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_pmp_3_cfg_w; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_pmp_3_cfg_r; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire [29:0] csr_io_pmp_3_addr; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire [31:0] csr_io_pmp_3_mask; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_pmp_4_cfg_l; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire [1:0] csr_io_pmp_4_cfg_a; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_pmp_4_cfg_x; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_pmp_4_cfg_w; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_pmp_4_cfg_r; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire [29:0] csr_io_pmp_4_addr; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire [31:0] csr_io_pmp_4_mask; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_pmp_5_cfg_l; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire [1:0] csr_io_pmp_5_cfg_a; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_pmp_5_cfg_x; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_pmp_5_cfg_w; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_pmp_5_cfg_r; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire [29:0] csr_io_pmp_5_addr; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire [31:0] csr_io_pmp_5_mask; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_pmp_6_cfg_l; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire [1:0] csr_io_pmp_6_cfg_a; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_pmp_6_cfg_x; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_pmp_6_cfg_w; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_pmp_6_cfg_r; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire [29:0] csr_io_pmp_6_addr; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire [31:0] csr_io_pmp_6_mask; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_pmp_7_cfg_l; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire [1:0] csr_io_pmp_7_cfg_a; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_pmp_7_cfg_x; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_pmp_7_cfg_w; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_pmp_7_cfg_r; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire [29:0] csr_io_pmp_7_addr; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire [31:0] csr_io_pmp_7_mask; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire [31:0] csr_io_inst_0; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_trace_0_valid; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire [31:0] csr_io_trace_0_iaddr; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire [31:0] csr_io_trace_0_insn; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  csr_io_trace_0_exception; // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
  wire  bpu_io_status_debug; // @[RocketCore.scala 307:19:freechips.rocketchip.system.DefaultRV32Config.fir@156107.4]
  wire [1:0] bpu_io_status_prv; // @[RocketCore.scala 307:19:freechips.rocketchip.system.DefaultRV32Config.fir@156107.4]
  wire  bpu_io_bp_0_control_action; // @[RocketCore.scala 307:19:freechips.rocketchip.system.DefaultRV32Config.fir@156107.4]
  wire [1:0] bpu_io_bp_0_control_tmatch; // @[RocketCore.scala 307:19:freechips.rocketchip.system.DefaultRV32Config.fir@156107.4]
  wire  bpu_io_bp_0_control_m; // @[RocketCore.scala 307:19:freechips.rocketchip.system.DefaultRV32Config.fir@156107.4]
  wire  bpu_io_bp_0_control_s; // @[RocketCore.scala 307:19:freechips.rocketchip.system.DefaultRV32Config.fir@156107.4]
  wire  bpu_io_bp_0_control_u; // @[RocketCore.scala 307:19:freechips.rocketchip.system.DefaultRV32Config.fir@156107.4]
  wire  bpu_io_bp_0_control_x; // @[RocketCore.scala 307:19:freechips.rocketchip.system.DefaultRV32Config.fir@156107.4]
  wire  bpu_io_bp_0_control_w; // @[RocketCore.scala 307:19:freechips.rocketchip.system.DefaultRV32Config.fir@156107.4]
  wire  bpu_io_bp_0_control_r; // @[RocketCore.scala 307:19:freechips.rocketchip.system.DefaultRV32Config.fir@156107.4]
  wire [31:0] bpu_io_bp_0_address; // @[RocketCore.scala 307:19:freechips.rocketchip.system.DefaultRV32Config.fir@156107.4]
  wire [31:0] bpu_io_pc; // @[RocketCore.scala 307:19:freechips.rocketchip.system.DefaultRV32Config.fir@156107.4]
  wire [31:0] bpu_io_ea; // @[RocketCore.scala 307:19:freechips.rocketchip.system.DefaultRV32Config.fir@156107.4]
  wire  bpu_io_xcpt_if; // @[RocketCore.scala 307:19:freechips.rocketchip.system.DefaultRV32Config.fir@156107.4]
  wire  bpu_io_xcpt_ld; // @[RocketCore.scala 307:19:freechips.rocketchip.system.DefaultRV32Config.fir@156107.4]
  wire  bpu_io_xcpt_st; // @[RocketCore.scala 307:19:freechips.rocketchip.system.DefaultRV32Config.fir@156107.4]
  wire  bpu_io_debug_if; // @[RocketCore.scala 307:19:freechips.rocketchip.system.DefaultRV32Config.fir@156107.4]
  wire  bpu_io_debug_ld; // @[RocketCore.scala 307:19:freechips.rocketchip.system.DefaultRV32Config.fir@156107.4]
  wire  bpu_io_debug_st; // @[RocketCore.scala 307:19:freechips.rocketchip.system.DefaultRV32Config.fir@156107.4]
  wire [3:0] alu_io_fn; // @[RocketCore.scala 367:19:freechips.rocketchip.system.DefaultRV32Config.fir@156262.4]
  wire [31:0] alu_io_in2; // @[RocketCore.scala 367:19:freechips.rocketchip.system.DefaultRV32Config.fir@156262.4]
  wire [31:0] alu_io_in1; // @[RocketCore.scala 367:19:freechips.rocketchip.system.DefaultRV32Config.fir@156262.4]
  wire [31:0] alu_io_out; // @[RocketCore.scala 367:19:freechips.rocketchip.system.DefaultRV32Config.fir@156262.4]
  wire [31:0] alu_io_adder_out; // @[RocketCore.scala 367:19:freechips.rocketchip.system.DefaultRV32Config.fir@156262.4]
  wire  alu_io_cmp_out; // @[RocketCore.scala 367:19:freechips.rocketchip.system.DefaultRV32Config.fir@156262.4]
  wire  div_clock; // @[RocketCore.scala 391:19:freechips.rocketchip.system.DefaultRV32Config.fir@156272.4]
  wire  div_reset; // @[RocketCore.scala 391:19:freechips.rocketchip.system.DefaultRV32Config.fir@156272.4]
  wire  div_io_req_ready; // @[RocketCore.scala 391:19:freechips.rocketchip.system.DefaultRV32Config.fir@156272.4]
  wire  div_io_req_valid; // @[RocketCore.scala 391:19:freechips.rocketchip.system.DefaultRV32Config.fir@156272.4]
  wire [3:0] div_io_req_bits_fn; // @[RocketCore.scala 391:19:freechips.rocketchip.system.DefaultRV32Config.fir@156272.4]
  wire [31:0] div_io_req_bits_in1; // @[RocketCore.scala 391:19:freechips.rocketchip.system.DefaultRV32Config.fir@156272.4]
  wire [31:0] div_io_req_bits_in2; // @[RocketCore.scala 391:19:freechips.rocketchip.system.DefaultRV32Config.fir@156272.4]
  wire [4:0] div_io_req_bits_tag; // @[RocketCore.scala 391:19:freechips.rocketchip.system.DefaultRV32Config.fir@156272.4]
  wire  div_io_kill; // @[RocketCore.scala 391:19:freechips.rocketchip.system.DefaultRV32Config.fir@156272.4]
  wire  div_io_resp_ready; // @[RocketCore.scala 391:19:freechips.rocketchip.system.DefaultRV32Config.fir@156272.4]
  wire  div_io_resp_valid; // @[RocketCore.scala 391:19:freechips.rocketchip.system.DefaultRV32Config.fir@156272.4]
  wire [31:0] div_io_resp_bits_data; // @[RocketCore.scala 391:19:freechips.rocketchip.system.DefaultRV32Config.fir@156272.4]
  wire [4:0] div_io_resp_bits_tag; // @[RocketCore.scala 391:19:freechips.rocketchip.system.DefaultRV32Config.fir@156272.4]
  wire  PlusArgTimeout_clock; // @[PlusArg.scala 53:11:freechips.rocketchip.system.DefaultRV32Config.fir@157369.4]
  wire  PlusArgTimeout_reset; // @[PlusArg.scala 53:11:freechips.rocketchip.system.DefaultRV32Config.fir@157369.4]
  wire [31:0] PlusArgTimeout_io_count; // @[PlusArg.scala 53:11:freechips.rocketchip.system.DefaultRV32Config.fir@157369.4]
  reg  id_reg_pause; // @[RocketCore.scala 101:25:freechips.rocketchip.system.DefaultRV32Config.fir@155425.4]
  reg [31:0] _RAND_3;
  reg  imem_might_request_reg; // @[RocketCore.scala 102:35:freechips.rocketchip.system.DefaultRV32Config.fir@155426.4]
  reg [31:0] _RAND_4;
  reg  ex_ctrl_fp; // @[RocketCore.scala 174:20:freechips.rocketchip.system.DefaultRV32Config.fir@155430.4]
  reg [31:0] _RAND_5;
  reg  ex_ctrl_branch; // @[RocketCore.scala 174:20:freechips.rocketchip.system.DefaultRV32Config.fir@155430.4]
  reg [31:0] _RAND_6;
  reg  ex_ctrl_jal; // @[RocketCore.scala 174:20:freechips.rocketchip.system.DefaultRV32Config.fir@155430.4]
  reg [31:0] _RAND_7;
  reg  ex_ctrl_jalr; // @[RocketCore.scala 174:20:freechips.rocketchip.system.DefaultRV32Config.fir@155430.4]
  reg [31:0] _RAND_8;
  reg  ex_ctrl_rxs2; // @[RocketCore.scala 174:20:freechips.rocketchip.system.DefaultRV32Config.fir@155430.4]
  reg [31:0] _RAND_9;
  reg [1:0] ex_ctrl_sel_alu2; // @[RocketCore.scala 174:20:freechips.rocketchip.system.DefaultRV32Config.fir@155430.4]
  reg [31:0] _RAND_10;
  reg [1:0] ex_ctrl_sel_alu1; // @[RocketCore.scala 174:20:freechips.rocketchip.system.DefaultRV32Config.fir@155430.4]
  reg [31:0] _RAND_11;
  reg [2:0] ex_ctrl_sel_imm; // @[RocketCore.scala 174:20:freechips.rocketchip.system.DefaultRV32Config.fir@155430.4]
  reg [31:0] _RAND_12;
  reg [3:0] ex_ctrl_alu_fn; // @[RocketCore.scala 174:20:freechips.rocketchip.system.DefaultRV32Config.fir@155430.4]
  reg [31:0] _RAND_13;
  reg  ex_ctrl_mem; // @[RocketCore.scala 174:20:freechips.rocketchip.system.DefaultRV32Config.fir@155430.4]
  reg [31:0] _RAND_14;
  reg [4:0] ex_ctrl_mem_cmd; // @[RocketCore.scala 174:20:freechips.rocketchip.system.DefaultRV32Config.fir@155430.4]
  reg [31:0] _RAND_15;
  reg  ex_ctrl_wfd; // @[RocketCore.scala 174:20:freechips.rocketchip.system.DefaultRV32Config.fir@155430.4]
  reg [31:0] _RAND_16;
  reg  ex_ctrl_div; // @[RocketCore.scala 174:20:freechips.rocketchip.system.DefaultRV32Config.fir@155430.4]
  reg [31:0] _RAND_17;
  reg  ex_ctrl_wxd; // @[RocketCore.scala 174:20:freechips.rocketchip.system.DefaultRV32Config.fir@155430.4]
  reg [31:0] _RAND_18;
  reg [2:0] ex_ctrl_csr; // @[RocketCore.scala 174:20:freechips.rocketchip.system.DefaultRV32Config.fir@155430.4]
  reg [31:0] _RAND_19;
  reg  ex_ctrl_fence_i; // @[RocketCore.scala 174:20:freechips.rocketchip.system.DefaultRV32Config.fir@155430.4]
  reg [31:0] _RAND_20;
  reg  mem_ctrl_fp; // @[RocketCore.scala 175:21:freechips.rocketchip.system.DefaultRV32Config.fir@155431.4]
  reg [31:0] _RAND_21;
  reg  mem_ctrl_branch; // @[RocketCore.scala 175:21:freechips.rocketchip.system.DefaultRV32Config.fir@155431.4]
  reg [31:0] _RAND_22;
  reg  mem_ctrl_jal; // @[RocketCore.scala 175:21:freechips.rocketchip.system.DefaultRV32Config.fir@155431.4]
  reg [31:0] _RAND_23;
  reg  mem_ctrl_jalr; // @[RocketCore.scala 175:21:freechips.rocketchip.system.DefaultRV32Config.fir@155431.4]
  reg [31:0] _RAND_24;
  reg  mem_ctrl_mem; // @[RocketCore.scala 175:21:freechips.rocketchip.system.DefaultRV32Config.fir@155431.4]
  reg [31:0] _RAND_25;
  reg  mem_ctrl_wfd; // @[RocketCore.scala 175:21:freechips.rocketchip.system.DefaultRV32Config.fir@155431.4]
  reg [31:0] _RAND_26;
  reg  mem_ctrl_div; // @[RocketCore.scala 175:21:freechips.rocketchip.system.DefaultRV32Config.fir@155431.4]
  reg [31:0] _RAND_27;
  reg  mem_ctrl_wxd; // @[RocketCore.scala 175:21:freechips.rocketchip.system.DefaultRV32Config.fir@155431.4]
  reg [31:0] _RAND_28;
  reg [2:0] mem_ctrl_csr; // @[RocketCore.scala 175:21:freechips.rocketchip.system.DefaultRV32Config.fir@155431.4]
  reg [31:0] _RAND_29;
  reg  mem_ctrl_fence_i; // @[RocketCore.scala 175:21:freechips.rocketchip.system.DefaultRV32Config.fir@155431.4]
  reg [31:0] _RAND_30;
  reg  wb_ctrl_mem; // @[RocketCore.scala 176:20:freechips.rocketchip.system.DefaultRV32Config.fir@155432.4]
  reg [31:0] _RAND_31;
  reg  wb_ctrl_wfd; // @[RocketCore.scala 176:20:freechips.rocketchip.system.DefaultRV32Config.fir@155432.4]
  reg [31:0] _RAND_32;
  reg  wb_ctrl_div; // @[RocketCore.scala 176:20:freechips.rocketchip.system.DefaultRV32Config.fir@155432.4]
  reg [31:0] _RAND_33;
  reg  wb_ctrl_wxd; // @[RocketCore.scala 176:20:freechips.rocketchip.system.DefaultRV32Config.fir@155432.4]
  reg [31:0] _RAND_34;
  reg [2:0] wb_ctrl_csr; // @[RocketCore.scala 176:20:freechips.rocketchip.system.DefaultRV32Config.fir@155432.4]
  reg [31:0] _RAND_35;
  reg  wb_ctrl_fence_i; // @[RocketCore.scala 176:20:freechips.rocketchip.system.DefaultRV32Config.fir@155432.4]
  reg [31:0] _RAND_36;
  reg  ex_reg_xcpt_interrupt; // @[RocketCore.scala 178:35:freechips.rocketchip.system.DefaultRV32Config.fir@155433.4]
  reg [31:0] _RAND_37;
  reg  ex_reg_valid; // @[RocketCore.scala 179:35:freechips.rocketchip.system.DefaultRV32Config.fir@155434.4]
  reg [31:0] _RAND_38;
  reg  ex_reg_rvc; // @[RocketCore.scala 180:35:freechips.rocketchip.system.DefaultRV32Config.fir@155435.4]
  reg [31:0] _RAND_39;
  reg [4:0] ex_reg_btb_resp_entry; // @[RocketCore.scala 181:35:freechips.rocketchip.system.DefaultRV32Config.fir@155436.4]
  reg [31:0] _RAND_40;
  reg [7:0] ex_reg_btb_resp_bht_history; // @[RocketCore.scala 181:35:freechips.rocketchip.system.DefaultRV32Config.fir@155436.4]
  reg [31:0] _RAND_41;
  reg  ex_reg_xcpt; // @[RocketCore.scala 182:35:freechips.rocketchip.system.DefaultRV32Config.fir@155437.4]
  reg [31:0] _RAND_42;
  reg  ex_reg_flush_pipe; // @[RocketCore.scala 183:35:freechips.rocketchip.system.DefaultRV32Config.fir@155438.4]
  reg [31:0] _RAND_43;
  reg  ex_reg_load_use; // @[RocketCore.scala 184:35:freechips.rocketchip.system.DefaultRV32Config.fir@155439.4]
  reg [31:0] _RAND_44;
  reg [31:0] ex_reg_cause; // @[RocketCore.scala 185:35:freechips.rocketchip.system.DefaultRV32Config.fir@155440.4]
  reg [31:0] _RAND_45;
  reg  ex_reg_replay; // @[RocketCore.scala 186:26:freechips.rocketchip.system.DefaultRV32Config.fir@155441.4]
  reg [31:0] _RAND_46;
  reg [31:0] ex_reg_pc; // @[RocketCore.scala 187:22:freechips.rocketchip.system.DefaultRV32Config.fir@155442.4]
  reg [31:0] _RAND_47;
  reg [1:0] ex_reg_mem_size; // @[RocketCore.scala 188:28:freechips.rocketchip.system.DefaultRV32Config.fir@155443.4]
  reg [31:0] _RAND_48;
  reg [31:0] ex_reg_inst; // @[RocketCore.scala 189:24:freechips.rocketchip.system.DefaultRV32Config.fir@155444.4]
  reg [31:0] _RAND_49;
  reg [31:0] ex_reg_raw_inst; // @[RocketCore.scala 190:28:freechips.rocketchip.system.DefaultRV32Config.fir@155445.4]
  reg [31:0] _RAND_50;
  reg  mem_reg_xcpt_interrupt; // @[RocketCore.scala 195:36:freechips.rocketchip.system.DefaultRV32Config.fir@155449.4]
  reg [31:0] _RAND_51;
  reg  mem_reg_valid; // @[RocketCore.scala 196:36:freechips.rocketchip.system.DefaultRV32Config.fir@155450.4]
  reg [31:0] _RAND_52;
  reg  mem_reg_rvc; // @[RocketCore.scala 197:36:freechips.rocketchip.system.DefaultRV32Config.fir@155451.4]
  reg [31:0] _RAND_53;
  reg [4:0] mem_reg_btb_resp_entry; // @[RocketCore.scala 198:36:freechips.rocketchip.system.DefaultRV32Config.fir@155452.4]
  reg [31:0] _RAND_54;
  reg [7:0] mem_reg_btb_resp_bht_history; // @[RocketCore.scala 198:36:freechips.rocketchip.system.DefaultRV32Config.fir@155452.4]
  reg [31:0] _RAND_55;
  reg  mem_reg_xcpt; // @[RocketCore.scala 199:36:freechips.rocketchip.system.DefaultRV32Config.fir@155453.4]
  reg [31:0] _RAND_56;
  reg  mem_reg_replay; // @[RocketCore.scala 200:36:freechips.rocketchip.system.DefaultRV32Config.fir@155454.4]
  reg [31:0] _RAND_57;
  reg  mem_reg_flush_pipe; // @[RocketCore.scala 201:36:freechips.rocketchip.system.DefaultRV32Config.fir@155455.4]
  reg [31:0] _RAND_58;
  reg [31:0] mem_reg_cause; // @[RocketCore.scala 202:36:freechips.rocketchip.system.DefaultRV32Config.fir@155456.4]
  reg [31:0] _RAND_59;
  reg  mem_reg_slow_bypass; // @[RocketCore.scala 203:36:freechips.rocketchip.system.DefaultRV32Config.fir@155457.4]
  reg [31:0] _RAND_60;
  reg  mem_reg_load; // @[RocketCore.scala 204:36:freechips.rocketchip.system.DefaultRV32Config.fir@155458.4]
  reg [31:0] _RAND_61;
  reg  mem_reg_store; // @[RocketCore.scala 205:36:freechips.rocketchip.system.DefaultRV32Config.fir@155459.4]
  reg [31:0] _RAND_62;
  reg  mem_reg_sfence; // @[RocketCore.scala 206:27:freechips.rocketchip.system.DefaultRV32Config.fir@155460.4]
  reg [31:0] _RAND_63;
  reg [31:0] mem_reg_pc; // @[RocketCore.scala 207:23:freechips.rocketchip.system.DefaultRV32Config.fir@155461.4]
  reg [31:0] _RAND_64;
  reg [31:0] mem_reg_inst; // @[RocketCore.scala 208:25:freechips.rocketchip.system.DefaultRV32Config.fir@155462.4]
  reg [31:0] _RAND_65;
  reg [1:0] mem_reg_mem_size; // @[RocketCore.scala 209:29:freechips.rocketchip.system.DefaultRV32Config.fir@155463.4]
  reg [31:0] _RAND_66;
  reg [31:0] mem_reg_raw_inst; // @[RocketCore.scala 210:29:freechips.rocketchip.system.DefaultRV32Config.fir@155464.4]
  reg [31:0] _RAND_67;
  reg [31:0] mem_reg_wdata; // @[RocketCore.scala 213:26:freechips.rocketchip.system.DefaultRV32Config.fir@155467.4]
  reg [31:0] _RAND_68;
  reg [31:0] mem_reg_rs2; // @[RocketCore.scala 214:24:freechips.rocketchip.system.DefaultRV32Config.fir@155468.4]
  reg [31:0] _RAND_69;
  reg  mem_br_taken; // @[RocketCore.scala 215:25:freechips.rocketchip.system.DefaultRV32Config.fir@155469.4]
  reg [31:0] _RAND_70;
  reg  wb_reg_valid; // @[RocketCore.scala 219:35:freechips.rocketchip.system.DefaultRV32Config.fir@155473.4]
  reg [31:0] _RAND_71;
  reg  wb_reg_xcpt; // @[RocketCore.scala 220:35:freechips.rocketchip.system.DefaultRV32Config.fir@155474.4]
  reg [31:0] _RAND_72;
  reg  wb_reg_replay; // @[RocketCore.scala 221:35:freechips.rocketchip.system.DefaultRV32Config.fir@155475.4]
  reg [31:0] _RAND_73;
  reg  wb_reg_flush_pipe; // @[RocketCore.scala 222:35:freechips.rocketchip.system.DefaultRV32Config.fir@155476.4]
  reg [31:0] _RAND_74;
  reg [31:0] wb_reg_cause; // @[RocketCore.scala 223:35:freechips.rocketchip.system.DefaultRV32Config.fir@155477.4]
  reg [31:0] _RAND_75;
  reg  wb_reg_sfence; // @[RocketCore.scala 224:26:freechips.rocketchip.system.DefaultRV32Config.fir@155478.4]
  reg [31:0] _RAND_76;
  reg [31:0] wb_reg_pc; // @[RocketCore.scala 225:22:freechips.rocketchip.system.DefaultRV32Config.fir@155479.4]
  reg [31:0] _RAND_77;
  reg [1:0] wb_reg_mem_size; // @[RocketCore.scala 226:28:freechips.rocketchip.system.DefaultRV32Config.fir@155480.4]
  reg [31:0] _RAND_78;
  reg [31:0] wb_reg_inst; // @[RocketCore.scala 227:24:freechips.rocketchip.system.DefaultRV32Config.fir@155481.4]
  reg [31:0] _RAND_79;
  reg [31:0] wb_reg_raw_inst; // @[RocketCore.scala 228:28:freechips.rocketchip.system.DefaultRV32Config.fir@155482.4]
  reg [31:0] _RAND_80;
  reg [31:0] wb_reg_wdata; // @[RocketCore.scala 229:25:freechips.rocketchip.system.DefaultRV32Config.fir@155483.4]
  reg [31:0] _RAND_81;
  wire  replay_wb_common; // @[RocketCore.scala 614:42:freechips.rocketchip.system.DefaultRV32Config.fir@156825.4]
  wire  _T_1015; // @[RocketCore.scala 592:19:freechips.rocketchip.system.DefaultRV32Config.fir@156784.4]
  wire  _T_1016; // @[RocketCore.scala 592:34:freechips.rocketchip.system.DefaultRV32Config.fir@156785.4]
  wire  _T_1027; // @[RocketCore.scala 916:26:freechips.rocketchip.system.DefaultRV32Config.fir@156796.4]
  wire  _T_1018; // @[RocketCore.scala 593:34:freechips.rocketchip.system.DefaultRV32Config.fir@156787.4]
  wire  _T_1028; // @[RocketCore.scala 916:26:freechips.rocketchip.system.DefaultRV32Config.fir@156797.4]
  wire  _T_1020; // @[RocketCore.scala 594:34:freechips.rocketchip.system.DefaultRV32Config.fir@156789.4]
  wire  _T_1029; // @[RocketCore.scala 916:26:freechips.rocketchip.system.DefaultRV32Config.fir@156798.4]
  wire  _T_1022; // @[RocketCore.scala 595:34:freechips.rocketchip.system.DefaultRV32Config.fir@156791.4]
  wire  _T_1030; // @[RocketCore.scala 916:26:freechips.rocketchip.system.DefaultRV32Config.fir@156799.4]
  wire  _T_1024; // @[RocketCore.scala 596:34:freechips.rocketchip.system.DefaultRV32Config.fir@156793.4]
  wire  _T_1031; // @[RocketCore.scala 916:26:freechips.rocketchip.system.DefaultRV32Config.fir@156800.4]
  wire  _T_1026; // @[RocketCore.scala 597:34:freechips.rocketchip.system.DefaultRV32Config.fir@156795.4]
  wire  wb_xcpt; // @[RocketCore.scala 916:26:freechips.rocketchip.system.DefaultRV32Config.fir@156801.4]
  wire  _T_1053; // @[RocketCore.scala 617:27:freechips.rocketchip.system.DefaultRV32Config.fir@156830.4]
  wire  _T_1054; // @[RocketCore.scala 617:38:freechips.rocketchip.system.DefaultRV32Config.fir@156831.4]
  wire  take_pc_wb; // @[RocketCore.scala 617:53:freechips.rocketchip.system.DefaultRV32Config.fir@156832.4]
  wire  _T_717; // @[RocketCore.scala 467:34:freechips.rocketchip.system.DefaultRV32Config.fir@156400.4]
  wire  ex_pc_valid; // @[RocketCore.scala 467:51:freechips.rocketchip.system.DefaultRV32Config.fir@156401.4]
  wire  _T_873; // @[RocketCore.scala 490:36:freechips.rocketchip.system.DefaultRV32Config.fir@156567.4]
  wire [31:0] _T_874; // @[RocketCore.scala 490:106:freechips.rocketchip.system.DefaultRV32Config.fir@156568.4]
  wire [31:0] _T_742; // @[RocketCore.scala 486:34:freechips.rocketchip.system.DefaultRV32Config.fir@156435.4]
  wire  _T_743; // @[RocketCore.scala 487:25:freechips.rocketchip.system.DefaultRV32Config.fir@156436.4]
  wire  _T_745; // @[RocketCore.scala 978:48:freechips.rocketchip.system.DefaultRV32Config.fir@156438.4]
  wire  _T_746; // @[RocketCore.scala 978:53:freechips.rocketchip.system.DefaultRV32Config.fir@156439.4]
  wire  _T_801; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@156494.4]
  wire [10:0] _T_751; // @[RocketCore.scala 979:21:freechips.rocketchip.system.DefaultRV32Config.fir@156444.4]
  wire [10:0] _T_800; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@156493.4]
  wire [7:0] _T_755; // @[RocketCore.scala 980:65:freechips.rocketchip.system.DefaultRV32Config.fir@156448.4]
  wire [7:0] _T_756; // @[RocketCore.scala 980:73:freechips.rocketchip.system.DefaultRV32Config.fir@156449.4]
  wire [7:0] _T_757; // @[RocketCore.scala 980:21:freechips.rocketchip.system.DefaultRV32Config.fir@156450.4]
  wire [7:0] _T_798; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@156491.4]
  wire  _T_762; // @[RocketCore.scala 982:39:freechips.rocketchip.system.DefaultRV32Config.fir@156455.4]
  wire  _T_763; // @[RocketCore.scala 982:44:freechips.rocketchip.system.DefaultRV32Config.fir@156456.4]
  wire  _T_765; // @[RocketCore.scala 983:39:freechips.rocketchip.system.DefaultRV32Config.fir@156458.4]
  wire  _T_766; // @[RocketCore.scala 983:43:freechips.rocketchip.system.DefaultRV32Config.fir@156459.4]
  wire  _T_797; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@156490.4]
  wire [5:0] _T_773; // @[RocketCore.scala 984:66:freechips.rocketchip.system.DefaultRV32Config.fir@156466.4]
  wire [3:0] _T_779; // @[RocketCore.scala 986:57:freechips.rocketchip.system.DefaultRV32Config.fir@156472.4]
  wire [3:0] _T_782; // @[RocketCore.scala 987:52:freechips.rocketchip.system.DefaultRV32Config.fir@156475.4]
  wire [31:0] _T_804; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@156497.4]
  wire [31:0] _T_805; // @[RocketCore.scala 992:53:freechips.rocketchip.system.DefaultRV32Config.fir@156498.4]
  wire [7:0] _T_860; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@156553.4]
  wire  _T_859; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@156552.4]
  wire [31:0] _T_866; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@156559.4]
  wire [31:0] _T_867; // @[RocketCore.scala 992:53:freechips.rocketchip.system.DefaultRV32Config.fir@156560.4]
  wire [3:0] _T_868; // @[RocketCore.scala 489:8:freechips.rocketchip.system.DefaultRV32Config.fir@156561.4]
  wire [31:0] _T_869; // @[RocketCore.scala 488:8:freechips.rocketchip.system.DefaultRV32Config.fir@156562.4]
  wire [31:0] _T_870; // @[RocketCore.scala 487:8:freechips.rocketchip.system.DefaultRV32Config.fir@156563.4]
  wire [31:0] _T_872; // @[RocketCore.scala 486:41:freechips.rocketchip.system.DefaultRV32Config.fir@156565.4]
  wire [31:0] mem_br_target; // @[RocketCore.scala 486:41:freechips.rocketchip.system.DefaultRV32Config.fir@156566.4]
  wire [31:0] _T_875; // @[RocketCore.scala 490:21:freechips.rocketchip.system.DefaultRV32Config.fir@156569.4]
  wire [31:0] _T_876; // @[RocketCore.scala 490:129:freechips.rocketchip.system.DefaultRV32Config.fir@156570.4]
  wire [31:0] _T_877; // @[RocketCore.scala 490:129:freechips.rocketchip.system.DefaultRV32Config.fir@156571.4]
  wire [31:0] mem_npc; // @[RocketCore.scala 490:141:freechips.rocketchip.system.DefaultRV32Config.fir@156572.4]
  wire  _T_878; // @[RocketCore.scala 492:30:freechips.rocketchip.system.DefaultRV32Config.fir@156573.4]
  wire  _T_879; // @[RocketCore.scala 493:31:freechips.rocketchip.system.DefaultRV32Config.fir@156574.4]
  wire  _T_880; // @[RocketCore.scala 493:62:freechips.rocketchip.system.DefaultRV32Config.fir@156575.4]
  wire  _T_881; // @[RocketCore.scala 493:8:freechips.rocketchip.system.DefaultRV32Config.fir@156576.4]
  wire  mem_wrong_npc; // @[RocketCore.scala 492:8:freechips.rocketchip.system.DefaultRV32Config.fir@156577.4]
  wire  _T_897; // @[RocketCore.scala 500:54:freechips.rocketchip.system.DefaultRV32Config.fir@156598.4]
  wire  take_pc_mem; // @[RocketCore.scala 500:32:freechips.rocketchip.system.DefaultRV32Config.fir@156599.4]
  wire  take_pc_mem_wb; // @[RocketCore.scala 234:35:freechips.rocketchip.system.DefaultRV32Config.fir@155488.4]
  wire [31:0] _T; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155497.4]
  wire  _T_1; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155498.4]
  wire [31:0] _T_2; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155499.4]
  wire  _T_3; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155500.4]
  wire [31:0] _T_4; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155501.4]
  wire  _T_5; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155502.4]
  wire [31:0] _T_6; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155503.4]
  wire  _T_7; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155504.4]
  wire [31:0] _T_8; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155505.4]
  wire  _T_9; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155506.4]
  wire [31:0] _T_10; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155507.4]
  wire  _T_11; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155508.4]
  wire [31:0] _T_12; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155509.4]
  wire  _T_13; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155510.4]
  wire [31:0] _T_14; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155511.4]
  wire  _T_15; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155512.4]
  wire [31:0] _T_16; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155513.4]
  wire  _T_17; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155514.4]
  wire [31:0] _T_18; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155515.4]
  wire  _T_19; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155516.4]
  wire [31:0] _T_20; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155517.4]
  wire  _T_21; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155518.4]
  wire [31:0] _T_22; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155519.4]
  wire  _T_23; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155520.4]
  wire  _T_25; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155522.4]
  wire [31:0] _T_26; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155523.4]
  wire  _T_27; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155524.4]
  wire  _T_29; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155526.4]
  wire [31:0] _T_30; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155527.4]
  wire  _T_31; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155528.4]
  wire [31:0] _T_32; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155529.4]
  wire  _T_33; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155530.4]
  wire [31:0] _T_34; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155531.4]
  wire  _T_35; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155532.4]
  wire [31:0] _T_36; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155533.4]
  wire  _T_37; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155534.4]
  wire  _T_39; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155536.4]
  wire [31:0] _T_40; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155537.4]
  wire  _T_41; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155538.4]
  wire [31:0] _T_42; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155539.4]
  wire  _T_43; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155540.4]
  wire [31:0] _T_44; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155541.4]
  wire  _T_45; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155542.4]
  wire [31:0] _T_46; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155543.4]
  wire  _T_47; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155544.4]
  wire [31:0] _T_48; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155545.4]
  wire  _T_49; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155546.4]
  wire  _T_50; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155547.4]
  wire [31:0] _T_51; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155548.4]
  wire  _T_52; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155549.4]
  wire [31:0] _T_53; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155550.4]
  wire  _T_54; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155551.4]
  wire [31:0] _T_55; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155552.4]
  wire  _T_56; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155553.4]
  wire [31:0] _T_57; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155554.4]
  wire  _T_58; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155555.4]
  wire [31:0] _T_59; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155556.4]
  wire  _T_60; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155557.4]
  wire [31:0] _T_61; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155558.4]
  wire  _T_62; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155559.4]
  wire  _T_64; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155561.4]
  wire  _T_66; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155563.4]
  wire  _T_67; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155564.4]
  wire  _T_68; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155565.4]
  wire  _T_69; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155566.4]
  wire  _T_70; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155567.4]
  wire  _T_71; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155568.4]
  wire  _T_72; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155569.4]
  wire  _T_73; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155570.4]
  wire  _T_74; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155571.4]
  wire  _T_75; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155572.4]
  wire  _T_76; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155573.4]
  wire  _T_77; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155574.4]
  wire  _T_78; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155575.4]
  wire  _T_79; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155576.4]
  wire  _T_80; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155577.4]
  wire  _T_81; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155578.4]
  wire  _T_82; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155579.4]
  wire  _T_83; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155580.4]
  wire  _T_84; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155581.4]
  wire  _T_85; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155582.4]
  wire  _T_86; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155583.4]
  wire  _T_87; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155584.4]
  wire  _T_88; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155585.4]
  wire  _T_89; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155586.4]
  wire  _T_90; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155587.4]
  wire  _T_91; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155588.4]
  wire  _T_92; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155589.4]
  wire  _T_93; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155590.4]
  wire  _T_94; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155591.4]
  wire  _T_95; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155592.4]
  wire  _T_96; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155593.4]
  wire  id_ctrl_legal; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155594.4]
  wire [31:0] _T_98; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155595.4]
  wire  _T_99; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155596.4]
  wire [31:0] _T_100; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155597.4]
  wire  _T_101; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155598.4]
  wire  id_ctrl_fp; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155600.4]
  wire [31:0] _T_104; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155601.4]
  wire  id_ctrl_branch; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155602.4]
  wire [31:0] _T_107; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155604.4]
  wire  id_ctrl_jal; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155605.4]
  wire [31:0] _T_110; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155607.4]
  wire  id_ctrl_jalr; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155608.4]
  wire [31:0] _T_113; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155610.4]
  wire  _T_114; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155611.4]
  wire [31:0] _T_115; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155612.4]
  wire  _T_116; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155613.4]
  wire [31:0] _T_117; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155614.4]
  wire  id_ctrl_amo; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155615.4]
  wire [31:0] _T_119; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155616.4]
  wire  _T_120; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155617.4]
  wire  _T_122; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155619.4]
  wire  _T_123; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155620.4]
  wire  id_ctrl_rxs2; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155621.4]
  wire [31:0] _T_125; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155622.4]
  wire  _T_126; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155623.4]
  wire [31:0] _T_127; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155624.4]
  wire  _T_128; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155625.4]
  wire [31:0] _T_129; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155626.4]
  wire  _T_130; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155627.4]
  wire [31:0] _T_131; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155628.4]
  wire  _T_132; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155629.4]
  wire [31:0] _T_133; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155630.4]
  wire  _T_134; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155631.4]
  wire  _T_136; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155633.4]
  wire  _T_137; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155634.4]
  wire  _T_138; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155635.4]
  wire  id_ctrl_rxs1; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155636.4]
  wire [31:0] _T_140; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155637.4]
  wire  _T_141; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155638.4]
  wire [31:0] _T_142; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155639.4]
  wire  _T_143; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155640.4]
  wire [31:0] _T_144; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155641.4]
  wire  _T_145; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155642.4]
  wire [31:0] _T_146; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155643.4]
  wire  _T_147; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155644.4]
  wire [31:0] _T_148; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155645.4]
  wire  _T_149; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155646.4]
  wire  _T_151; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155648.4]
  wire  _T_152; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155649.4]
  wire  _T_153; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155650.4]
  wire  _T_154; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155651.4]
  wire  _T_156; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155653.4]
  wire [31:0] _T_157; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155654.4]
  wire  _T_158; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155655.4]
  wire [31:0] _T_159; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155656.4]
  wire  _T_160; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155657.4]
  wire  _T_162; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155659.4]
  wire  _T_163; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155660.4]
  wire [1:0] id_ctrl_sel_alu2; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@155661.4]
  wire [31:0] _T_165; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155662.4]
  wire  _T_166; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155663.4]
  wire [31:0] _T_167; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155664.4]
  wire  _T_168; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155665.4]
  wire [31:0] _T_169; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155666.4]
  wire  _T_170; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155667.4]
  wire  _T_172; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155669.4]
  wire  _T_173; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155670.4]
  wire  _T_174; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155671.4]
  wire  _T_175; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155672.4]
  wire  _T_177; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155674.4]
  wire  _T_179; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155676.4]
  wire [1:0] id_ctrl_sel_alu1; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@155677.4]
  wire [31:0] _T_181; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155678.4]
  wire  _T_182; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155679.4]
  wire  _T_184; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155681.4]
  wire  _T_186; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155683.4]
  wire [31:0] _T_187; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155684.4]
  wire  _T_188; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155685.4]
  wire  _T_190; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155687.4]
  wire [31:0] _T_191; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155688.4]
  wire  _T_192; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155689.4]
  wire [31:0] _T_193; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155690.4]
  wire  _T_194; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155691.4]
  wire  _T_196; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155693.4]
  wire  _T_198; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155695.4]
  wire  _T_199; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155696.4]
  wire [2:0] id_ctrl_sel_imm; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@155698.4]
  wire [31:0] _T_205; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155702.4]
  wire  _T_206; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155703.4]
  wire [31:0] _T_207; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155704.4]
  wire  _T_208; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155705.4]
  wire [31:0] _T_209; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155706.4]
  wire  _T_210; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155707.4]
  wire [31:0] _T_211; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155708.4]
  wire  _T_212; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155709.4]
  wire  _T_214; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155711.4]
  wire  _T_215; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155712.4]
  wire  _T_216; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155713.4]
  wire [31:0] _T_217; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155714.4]
  wire  _T_218; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155715.4]
  wire [31:0] _T_219; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155716.4]
  wire  _T_220; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155717.4]
  wire [31:0] _T_221; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155718.4]
  wire  _T_222; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155719.4]
  wire [31:0] _T_223; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155720.4]
  wire  _T_224; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155721.4]
  wire [31:0] _T_225; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155722.4]
  wire  _T_226; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155723.4]
  wire [31:0] _T_227; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155724.4]
  wire  _T_228; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155725.4]
  wire [31:0] _T_229; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155726.4]
  wire  _T_230; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155727.4]
  wire  _T_232; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155729.4]
  wire  _T_233; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155730.4]
  wire  _T_234; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155731.4]
  wire  _T_235; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155732.4]
  wire  _T_236; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155733.4]
  wire  _T_237; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155734.4]
  wire [31:0] _T_238; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155735.4]
  wire  _T_239; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155736.4]
  wire [31:0] _T_240; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155737.4]
  wire  _T_241; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155738.4]
  wire [31:0] _T_242; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155739.4]
  wire  _T_243; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155740.4]
  wire [31:0] _T_244; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155741.4]
  wire  _T_245; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155742.4]
  wire [31:0] _T_246; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155743.4]
  wire  _T_247; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155744.4]
  wire  _T_249; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155746.4]
  wire  _T_250; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155747.4]
  wire  _T_251; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155748.4]
  wire  _T_252; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155749.4]
  wire [31:0] _T_253; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155750.4]
  wire  _T_254; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155751.4]
  wire [31:0] _T_255; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155752.4]
  wire  _T_256; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155753.4]
  wire [31:0] _T_257; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155754.4]
  wire  _T_258; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155755.4]
  wire  _T_260; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155757.4]
  wire  _T_261; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155758.4]
  wire  _T_262; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155759.4]
  wire  _T_263; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155760.4]
  wire [3:0] id_ctrl_alu_fn; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@155763.4]
  wire  _T_268; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155765.4]
  wire  _T_269; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155766.4]
  wire  _T_270; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155767.4]
  wire  _T_271; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155768.4]
  wire  _T_272; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155769.4]
  wire  id_ctrl_mem; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155770.4]
  wire  _T_275; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155772.4]
  wire [31:0] _T_276; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155773.4]
  wire  _T_277; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155774.4]
  wire [31:0] _T_278; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155775.4]
  wire  _T_279; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155776.4]
  wire  _T_281; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155778.4]
  wire  _T_282; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155779.4]
  wire [31:0] _T_283; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155780.4]
  wire  _T_284; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155781.4]
  wire [31:0] _T_285; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155782.4]
  wire  _T_286; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155783.4]
  wire  _T_288; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155785.4]
  wire [31:0] _T_289; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155786.4]
  wire  _T_290; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155787.4]
  wire [31:0] _T_291; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155788.4]
  wire  _T_292; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155789.4]
  wire [31:0] _T_293; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155790.4]
  wire  _T_294; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155791.4]
  wire  _T_296; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155793.4]
  wire  _T_297; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155794.4]
  wire  _T_298; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155795.4]
  wire [31:0] _T_299; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155796.4]
  wire  _T_300; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155797.4]
  wire [4:0] id_ctrl_mem_cmd; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@155803.4]
  wire [31:0] _T_307; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155804.4]
  wire  _T_308; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155805.4]
  wire [31:0] _T_309; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155806.4]
  wire [31:0] _T_311; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155808.4]
  wire  id_ctrl_rfs3; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155809.4]
  wire [31:0] _T_325; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155822.4]
  wire  _T_326; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155823.4]
  wire  _T_328; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155825.4]
  wire  _T_330; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155827.4]
  wire  _T_331; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155828.4]
  wire  id_ctrl_wfd; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155829.4]
  wire [31:0] _T_333; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155830.4]
  wire  id_ctrl_div; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155831.4]
  wire  _T_337; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155834.4]
  wire  _T_339; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155836.4]
  wire [31:0] _T_340; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155837.4]
  wire  _T_341; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155838.4]
  wire [31:0] _T_342; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155839.4]
  wire  _T_343; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155840.4]
  wire [31:0] _T_344; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155841.4]
  wire  _T_345; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155842.4]
  wire [31:0] _T_346; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155843.4]
  wire  _T_347; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155844.4]
  wire [31:0] _T_348; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155845.4]
  wire  _T_349; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155846.4]
  wire  _T_351; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155848.4]
  wire  _T_352; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155849.4]
  wire  _T_353; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155850.4]
  wire  _T_354; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155851.4]
  wire  _T_355; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155852.4]
  wire  id_ctrl_wxd; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155853.4]
  wire [31:0] _T_357; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155854.4]
  wire  _T_358; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155855.4]
  wire [31:0] _T_360; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155857.4]
  wire  _T_361; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155858.4]
  wire [31:0] _T_363; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155860.4]
  wire  _T_364; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155861.4]
  wire [31:0] _T_365; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155862.4]
  wire  _T_366; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155863.4]
  wire [31:0] _T_367; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155864.4]
  wire  _T_368; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155865.4]
  wire  _T_370; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155867.4]
  wire  _T_371; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155868.4]
  wire  _T_372; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155869.4]
  wire  _T_373; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155870.4]
  wire [2:0] id_ctrl_csr; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@155872.4]
  wire [31:0] _T_376; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155873.4]
  wire  id_ctrl_fence_i; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155874.4]
  wire  id_ctrl_fence; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155877.4]
  wire [4:0] id_raddr3; // @[RocketCore.scala 251:72:freechips.rocketchip.system.DefaultRV32Config.fir@155908.4]
  wire [4:0] id_raddr2; // @[RocketCore.scala 251:72:freechips.rocketchip.system.DefaultRV32Config.fir@155909.4]
  wire [4:0] id_raddr1; // @[RocketCore.scala 251:72:freechips.rocketchip.system.DefaultRV32Config.fir@155910.4]
  wire [4:0] id_waddr; // @[RocketCore.scala 251:72:freechips.rocketchip.system.DefaultRV32Config.fir@155911.4]
  reg  id_reg_fence; // @[RocketCore.scala 258:25:freechips.rocketchip.system.DefaultRV32Config.fir@155914.4]
  reg [31:0] _RAND_82;
  wire  _T_384; // @[RocketCore.scala 963:45:freechips.rocketchip.system.DefaultRV32Config.fir@155918.4]
  wire [31:0] _T_389; // @[RocketCore.scala 963:25:freechips.rocketchip.system.DefaultRV32Config.fir@155923.4]
  wire [31:0] _T_395; // @[RocketCore.scala 963:25:freechips.rocketchip.system.DefaultRV32Config.fir@155932.4]
  wire  _T_462; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@156007.4]
  wire  _T_463; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@156008.4]
  wire  _T_464; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@156009.4]
  wire  _T_465; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@156010.4]
  wire  id_csr_en; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@156011.4]
  wire  id_system_insn; // @[RocketCore.scala 268:36:freechips.rocketchip.system.DefaultRV32Config.fir@156012.4]
  wire  id_csr_ren; // @[RocketCore.scala 269:54:freechips.rocketchip.system.DefaultRV32Config.fir@156017.4]
  wire  _T_470; // @[RocketCore.scala 271:50:freechips.rocketchip.system.DefaultRV32Config.fir@156019.4]
  wire  id_sfence; // @[RocketCore.scala 271:31:freechips.rocketchip.system.DefaultRV32Config.fir@156020.4]
  wire  _T_471; // @[RocketCore.scala 272:32:freechips.rocketchip.system.DefaultRV32Config.fir@156021.4]
  wire  _T_472; // @[RocketCore.scala 272:67:freechips.rocketchip.system.DefaultRV32Config.fir@156022.4]
  wire  _T_473; // @[RocketCore.scala 272:64:freechips.rocketchip.system.DefaultRV32Config.fir@156023.4]
  wire  _T_474; // @[RocketCore.scala 272:79:freechips.rocketchip.system.DefaultRV32Config.fir@156024.4]
  wire  id_csr_flush; // @[RocketCore.scala 272:50:freechips.rocketchip.system.DefaultRV32Config.fir@156025.4]
  wire  _T_475; // @[RocketCore.scala 280:25:freechips.rocketchip.system.DefaultRV32Config.fir@156028.4]
  wire  _T_477; // @[RocketCore.scala 281:55:freechips.rocketchip.system.DefaultRV32Config.fir@156030.4]
  wire  _T_478; // @[RocketCore.scala 281:37:freechips.rocketchip.system.DefaultRV32Config.fir@156031.4]
  wire  _T_479; // @[RocketCore.scala 281:34:freechips.rocketchip.system.DefaultRV32Config.fir@156032.4]
  wire  _T_480; // @[RocketCore.scala 280:40:freechips.rocketchip.system.DefaultRV32Config.fir@156033.4]
  wire  _T_481; // @[RocketCore.scala 282:38:freechips.rocketchip.system.DefaultRV32Config.fir@156034.4]
  wire  _T_482; // @[RocketCore.scala 282:20:freechips.rocketchip.system.DefaultRV32Config.fir@156035.4]
  wire  _T_483; // @[RocketCore.scala 282:17:freechips.rocketchip.system.DefaultRV32Config.fir@156036.4]
  wire  _T_484; // @[RocketCore.scala 281:65:freechips.rocketchip.system.DefaultRV32Config.fir@156037.4]
  wire  _T_485; // @[RocketCore.scala 283:48:freechips.rocketchip.system.DefaultRV32Config.fir@156038.4]
  wire  _T_486; // @[RocketCore.scala 283:16:freechips.rocketchip.system.DefaultRV32Config.fir@156039.4]
  wire  _T_487; // @[RocketCore.scala 282:48:freechips.rocketchip.system.DefaultRV32Config.fir@156040.4]
  wire  _T_492; // @[RocketCore.scala 285:51:freechips.rocketchip.system.DefaultRV32Config.fir@156045.4]
  wire  _T_493; // @[RocketCore.scala 285:33:freechips.rocketchip.system.DefaultRV32Config.fir@156046.4]
  wire  _T_494; // @[RocketCore.scala 285:30:freechips.rocketchip.system.DefaultRV32Config.fir@156047.4]
  wire  _T_495; // @[RocketCore.scala 284:47:freechips.rocketchip.system.DefaultRV32Config.fir@156048.4]
  wire  _T_515; // @[RocketCore.scala 291:64:freechips.rocketchip.system.DefaultRV32Config.fir@156068.4]
  wire  _T_516; // @[RocketCore.scala 291:49:freechips.rocketchip.system.DefaultRV32Config.fir@156069.4]
  wire  _T_517; // @[RocketCore.scala 291:15:freechips.rocketchip.system.DefaultRV32Config.fir@156070.4]
  wire  _T_518; // @[RocketCore.scala 290:81:freechips.rocketchip.system.DefaultRV32Config.fir@156071.4]
  wire  _T_519; // @[RocketCore.scala 292:5:freechips.rocketchip.system.DefaultRV32Config.fir@156072.4]
  wire  _T_521; // @[RocketCore.scala 292:65:freechips.rocketchip.system.DefaultRV32Config.fir@156074.4]
  wire  _T_522; // @[RocketCore.scala 292:31:freechips.rocketchip.system.DefaultRV32Config.fir@156075.4]
  wire  id_illegal_insn; // @[RocketCore.scala 291:99:freechips.rocketchip.system.DefaultRV32Config.fir@156076.4]
  wire  id_amo_aq; // @[RocketCore.scala 294:29:freechips.rocketchip.system.DefaultRV32Config.fir@156077.4]
  wire  id_amo_rl; // @[RocketCore.scala 295:29:freechips.rocketchip.system.DefaultRV32Config.fir@156078.4]
  wire [3:0] id_fence_succ; // @[RocketCore.scala 297:33:freechips.rocketchip.system.DefaultRV32Config.fir@156080.4]
  wire  _T_523; // @[RocketCore.scala 298:52:freechips.rocketchip.system.DefaultRV32Config.fir@156081.4]
  wire  id_fence_next; // @[RocketCore.scala 298:37:freechips.rocketchip.system.DefaultRV32Config.fir@156082.4]
  wire  _T_524; // @[RocketCore.scala 299:21:freechips.rocketchip.system.DefaultRV32Config.fir@156083.4]
  wire  id_mem_busy; // @[RocketCore.scala 299:38:freechips.rocketchip.system.DefaultRV32Config.fir@156084.4]
  wire  _T_525; // @[RocketCore.scala 300:9:freechips.rocketchip.system.DefaultRV32Config.fir@156085.4]
  wire  _GEN_0; // @[RocketCore.scala 300:23:freechips.rocketchip.system.DefaultRV32Config.fir@156086.4]
  wire  _T_533; // @[RocketCore.scala 305:33:freechips.rocketchip.system.DefaultRV32Config.fir@156097.4]
  wire  _T_534; // @[RocketCore.scala 305:46:freechips.rocketchip.system.DefaultRV32Config.fir@156098.4]
  wire  _T_536; // @[RocketCore.scala 305:81:freechips.rocketchip.system.DefaultRV32Config.fir@156100.4]
  wire  _T_537; // @[RocketCore.scala 305:65:freechips.rocketchip.system.DefaultRV32Config.fir@156101.4]
  wire  id_do_fence; // @[RocketCore.scala 305:17:freechips.rocketchip.system.DefaultRV32Config.fir@156102.4]
  wire  _T_540; // @[RocketCore.scala 916:26:freechips.rocketchip.system.DefaultRV32Config.fir@156115.4]
  wire  _T_541; // @[RocketCore.scala 916:26:freechips.rocketchip.system.DefaultRV32Config.fir@156116.4]
  wire  _T_542; // @[RocketCore.scala 916:26:freechips.rocketchip.system.DefaultRV32Config.fir@156117.4]
  wire  _T_543; // @[RocketCore.scala 916:26:freechips.rocketchip.system.DefaultRV32Config.fir@156118.4]
  wire  _T_544; // @[RocketCore.scala 916:26:freechips.rocketchip.system.DefaultRV32Config.fir@156119.4]
  wire  _T_545; // @[RocketCore.scala 916:26:freechips.rocketchip.system.DefaultRV32Config.fir@156120.4]
  wire  id_xcpt; // @[RocketCore.scala 916:26:freechips.rocketchip.system.DefaultRV32Config.fir@156121.4]
  wire [1:0] _T_546; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@156122.4]
  wire [3:0] _T_547; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@156123.4]
  wire [3:0] _T_548; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@156124.4]
  wire [3:0] _T_549; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@156125.4]
  wire [3:0] _T_550; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@156126.4]
  wire [3:0] _T_551; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@156127.4]
  wire [4:0] ex_waddr; // @[RocketCore.scala 341:29:freechips.rocketchip.system.DefaultRV32Config.fir@156140.4]
  wire [4:0] mem_waddr; // @[RocketCore.scala 342:31:freechips.rocketchip.system.DefaultRV32Config.fir@156142.4]
  wire [4:0] wb_waddr; // @[RocketCore.scala 343:29:freechips.rocketchip.system.DefaultRV32Config.fir@156144.4]
  wire  _T_565; // @[RocketCore.scala 346:19:freechips.rocketchip.system.DefaultRV32Config.fir@156146.4]
  wire  _T_566; // @[RocketCore.scala 347:20:freechips.rocketchip.system.DefaultRV32Config.fir@156147.4]
  wire  _T_567; // @[RocketCore.scala 347:39:freechips.rocketchip.system.DefaultRV32Config.fir@156148.4]
  wire  _T_568; // @[RocketCore.scala 347:36:freechips.rocketchip.system.DefaultRV32Config.fir@156149.4]
  wire  id_bypass_src_0_0; // @[RocketCore.scala 349:82:freechips.rocketchip.system.DefaultRV32Config.fir@156151.4]
  wire  _T_571; // @[RocketCore.scala 349:82:freechips.rocketchip.system.DefaultRV32Config.fir@156153.4]
  wire  id_bypass_src_0_1; // @[RocketCore.scala 349:74:freechips.rocketchip.system.DefaultRV32Config.fir@156154.4]
  wire  _T_572; // @[RocketCore.scala 349:82:freechips.rocketchip.system.DefaultRV32Config.fir@156155.4]
  wire  id_bypass_src_0_2; // @[RocketCore.scala 349:74:freechips.rocketchip.system.DefaultRV32Config.fir@156156.4]
  wire  id_bypass_src_0_3; // @[RocketCore.scala 349:74:freechips.rocketchip.system.DefaultRV32Config.fir@156158.4]
  wire  id_bypass_src_1_0; // @[RocketCore.scala 349:82:freechips.rocketchip.system.DefaultRV32Config.fir@156159.4]
  wire  _T_575; // @[RocketCore.scala 349:82:freechips.rocketchip.system.DefaultRV32Config.fir@156161.4]
  wire  id_bypass_src_1_1; // @[RocketCore.scala 349:74:freechips.rocketchip.system.DefaultRV32Config.fir@156162.4]
  wire  _T_576; // @[RocketCore.scala 349:82:freechips.rocketchip.system.DefaultRV32Config.fir@156163.4]
  wire  id_bypass_src_1_2; // @[RocketCore.scala 349:74:freechips.rocketchip.system.DefaultRV32Config.fir@156164.4]
  wire  id_bypass_src_1_3; // @[RocketCore.scala 349:74:freechips.rocketchip.system.DefaultRV32Config.fir@156166.4]
  reg  ex_reg_rs_bypass_0; // @[RocketCore.scala 353:29:freechips.rocketchip.system.DefaultRV32Config.fir@156167.4]
  reg [31:0] _RAND_83;
  reg  ex_reg_rs_bypass_1; // @[RocketCore.scala 353:29:freechips.rocketchip.system.DefaultRV32Config.fir@156167.4]
  reg [31:0] _RAND_84;
  reg [1:0] ex_reg_rs_lsb_0; // @[RocketCore.scala 354:26:freechips.rocketchip.system.DefaultRV32Config.fir@156168.4]
  reg [31:0] _RAND_85;
  reg [1:0] ex_reg_rs_lsb_1; // @[RocketCore.scala 354:26:freechips.rocketchip.system.DefaultRV32Config.fir@156168.4]
  reg [31:0] _RAND_86;
  reg [29:0] ex_reg_rs_msb_0; // @[RocketCore.scala 355:26:freechips.rocketchip.system.DefaultRV32Config.fir@156169.4]
  reg [31:0] _RAND_87;
  reg [29:0] ex_reg_rs_msb_1; // @[RocketCore.scala 355:26:freechips.rocketchip.system.DefaultRV32Config.fir@156169.4]
  reg [31:0] _RAND_88;
  wire  _T_578; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@156170.4]
  wire [31:0] _T_579; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@156171.4]
  wire  _T_580; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@156172.4]
  wire [31:0] _T_581; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@156173.4]
  wire  _T_582; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@156174.4]
  wire [31:0] _T_583; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@156175.4]
  wire [31:0] _T_584; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@156176.4]
  wire [31:0] ex_rs_0; // @[RocketCore.scala 357:14:freechips.rocketchip.system.DefaultRV32Config.fir@156177.4]
  wire  _T_585; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@156178.4]
  wire [31:0] _T_586; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@156179.4]
  wire  _T_587; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@156180.4]
  wire [31:0] _T_588; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@156181.4]
  wire  _T_589; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@156182.4]
  wire [31:0] _T_590; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@156183.4]
  wire [31:0] _T_591; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@156184.4]
  wire [31:0] ex_rs_1; // @[RocketCore.scala 357:14:freechips.rocketchip.system.DefaultRV32Config.fir@156185.4]
  wire  _T_592; // @[RocketCore.scala 978:24:freechips.rocketchip.system.DefaultRV32Config.fir@156186.4]
  wire  _T_593; // @[RocketCore.scala 978:48:freechips.rocketchip.system.DefaultRV32Config.fir@156187.4]
  wire  _T_594; // @[RocketCore.scala 978:53:freechips.rocketchip.system.DefaultRV32Config.fir@156188.4]
  wire  _T_595; // @[RocketCore.scala 978:19:freechips.rocketchip.system.DefaultRV32Config.fir@156189.4]
  wire  _T_596; // @[RocketCore.scala 979:26:freechips.rocketchip.system.DefaultRV32Config.fir@156190.4]
  wire [10:0] _T_597; // @[RocketCore.scala 979:41:freechips.rocketchip.system.DefaultRV32Config.fir@156191.4]
  wire [10:0] _T_598; // @[RocketCore.scala 979:49:freechips.rocketchip.system.DefaultRV32Config.fir@156192.4]
  wire [10:0] _T_599; // @[RocketCore.scala 979:21:freechips.rocketchip.system.DefaultRV32Config.fir@156193.4]
  wire  _T_600; // @[RocketCore.scala 980:26:freechips.rocketchip.system.DefaultRV32Config.fir@156194.4]
  wire  _T_601; // @[RocketCore.scala 980:43:freechips.rocketchip.system.DefaultRV32Config.fir@156195.4]
  wire  _T_602; // @[RocketCore.scala 980:36:freechips.rocketchip.system.DefaultRV32Config.fir@156196.4]
  wire [7:0] _T_603; // @[RocketCore.scala 980:65:freechips.rocketchip.system.DefaultRV32Config.fir@156197.4]
  wire [7:0] _T_604; // @[RocketCore.scala 980:73:freechips.rocketchip.system.DefaultRV32Config.fir@156198.4]
  wire [7:0] _T_605; // @[RocketCore.scala 980:21:freechips.rocketchip.system.DefaultRV32Config.fir@156199.4]
  wire  _T_608; // @[RocketCore.scala 981:33:freechips.rocketchip.system.DefaultRV32Config.fir@156202.4]
  wire  _T_609; // @[RocketCore.scala 982:23:freechips.rocketchip.system.DefaultRV32Config.fir@156203.4]
  wire  _T_610; // @[RocketCore.scala 982:39:freechips.rocketchip.system.DefaultRV32Config.fir@156204.4]
  wire  _T_611; // @[RocketCore.scala 982:44:freechips.rocketchip.system.DefaultRV32Config.fir@156205.4]
  wire  _T_612; // @[RocketCore.scala 983:23:freechips.rocketchip.system.DefaultRV32Config.fir@156206.4]
  wire  _T_613; // @[RocketCore.scala 983:39:freechips.rocketchip.system.DefaultRV32Config.fir@156207.4]
  wire  _T_614; // @[RocketCore.scala 983:43:freechips.rocketchip.system.DefaultRV32Config.fir@156208.4]
  wire  _T_615; // @[RocketCore.scala 983:18:freechips.rocketchip.system.DefaultRV32Config.fir@156209.4]
  wire  _T_616; // @[RocketCore.scala 982:18:freechips.rocketchip.system.DefaultRV32Config.fir@156210.4]
  wire  _T_617; // @[RocketCore.scala 981:18:freechips.rocketchip.system.DefaultRV32Config.fir@156211.4]
  wire [5:0] _T_621; // @[RocketCore.scala 984:66:freechips.rocketchip.system.DefaultRV32Config.fir@156215.4]
  wire [5:0] _T_622; // @[RocketCore.scala 984:20:freechips.rocketchip.system.DefaultRV32Config.fir@156216.4]
  wire  _T_624; // @[RocketCore.scala 986:24:freechips.rocketchip.system.DefaultRV32Config.fir@156218.4]
  wire  _T_626; // @[RocketCore.scala 986:34:freechips.rocketchip.system.DefaultRV32Config.fir@156220.4]
  wire [3:0] _T_627; // @[RocketCore.scala 986:57:freechips.rocketchip.system.DefaultRV32Config.fir@156221.4]
  wire [3:0] _T_629; // @[RocketCore.scala 987:39:freechips.rocketchip.system.DefaultRV32Config.fir@156223.4]
  wire [3:0] _T_630; // @[RocketCore.scala 987:52:freechips.rocketchip.system.DefaultRV32Config.fir@156224.4]
  wire [3:0] _T_631; // @[RocketCore.scala 987:19:freechips.rocketchip.system.DefaultRV32Config.fir@156225.4]
  wire [3:0] _T_632; // @[RocketCore.scala 986:19:freechips.rocketchip.system.DefaultRV32Config.fir@156226.4]
  wire [3:0] _T_633; // @[RocketCore.scala 985:19:freechips.rocketchip.system.DefaultRV32Config.fir@156227.4]
  wire  _T_636; // @[RocketCore.scala 989:22:freechips.rocketchip.system.DefaultRV32Config.fir@156230.4]
  wire  _T_639; // @[RocketCore.scala 990:37:freechips.rocketchip.system.DefaultRV32Config.fir@156233.4]
  wire  _T_640; // @[RocketCore.scala 990:17:freechips.rocketchip.system.DefaultRV32Config.fir@156234.4]
  wire  _T_641; // @[RocketCore.scala 989:17:freechips.rocketchip.system.DefaultRV32Config.fir@156235.4]
  wire  _T_642; // @[RocketCore.scala 988:17:freechips.rocketchip.system.DefaultRV32Config.fir@156236.4]
  wire  _T_645; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@156239.4]
  wire [7:0] _T_646; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@156240.4]
  wire [10:0] _T_648; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@156242.4]
  wire  _T_649; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@156243.4]
  wire [31:0] _T_652; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@156246.4]
  wire [31:0] ex_imm; // @[RocketCore.scala 992:53:freechips.rocketchip.system.DefaultRV32Config.fir@156247.4]
  wire [31:0] _T_653; // @[RocketCore.scala 360:24:freechips.rocketchip.system.DefaultRV32Config.fir@156248.4]
  wire [31:0] _T_654; // @[RocketCore.scala 361:24:freechips.rocketchip.system.DefaultRV32Config.fir@156249.4]
  wire  _T_655; // @[Mux.scala 68:19:freechips.rocketchip.system.DefaultRV32Config.fir@156250.4]
  wire [31:0] _T_656; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@156251.4]
  wire  _T_657; // @[Mux.scala 68:19:freechips.rocketchip.system.DefaultRV32Config.fir@156252.4]
  wire [31:0] ex_op1; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@156253.4]
  wire [31:0] _T_658; // @[RocketCore.scala 363:24:freechips.rocketchip.system.DefaultRV32Config.fir@156254.4]
  wire [3:0] _T_659; // @[RocketCore.scala 365:19:freechips.rocketchip.system.DefaultRV32Config.fir@156255.4]
  wire  _T_660; // @[Mux.scala 68:19:freechips.rocketchip.system.DefaultRV32Config.fir@156256.4]
  wire [3:0] _T_661; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@156257.4]
  wire  _T_662; // @[Mux.scala 68:19:freechips.rocketchip.system.DefaultRV32Config.fir@156258.4]
  wire [31:0] _T_663; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@156259.4]
  wire  _T_664; // @[Mux.scala 68:19:freechips.rocketchip.system.DefaultRV32Config.fir@156260.4]
  wire [31:0] ex_op2; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@156261.4]
  wire  _T_1301; // @[RocketCore.scala 758:17:freechips.rocketchip.system.DefaultRV32Config.fir@157178.4]
  wire  _T_1302; // @[RocketCore.scala 758:40:freechips.rocketchip.system.DefaultRV32Config.fir@157179.4]
  wire  _T_1303; // @[RocketCore.scala 758:71:freechips.rocketchip.system.DefaultRV32Config.fir@157180.4]
  wire  _T_1108; // @[RocketCore.scala 689:55:freechips.rocketchip.system.DefaultRV32Config.fir@156949.4]
  wire  _T_1109; // @[RocketCore.scala 689:42:freechips.rocketchip.system.DefaultRV32Config.fir@156950.4]
  wire  _T_1156; // @[RocketCore.scala 709:70:freechips.rocketchip.system.DefaultRV32Config.fir@157005.4]
  wire  _T_1157; // @[RocketCore.scala 925:27:freechips.rocketchip.system.DefaultRV32Config.fir@157006.4]
  wire  _T_1110; // @[RocketCore.scala 690:55:freechips.rocketchip.system.DefaultRV32Config.fir@156951.4]
  wire  _T_1111; // @[RocketCore.scala 690:42:freechips.rocketchip.system.DefaultRV32Config.fir@156952.4]
  wire  _T_1158; // @[RocketCore.scala 709:70:freechips.rocketchip.system.DefaultRV32Config.fir@157007.4]
  wire  _T_1159; // @[RocketCore.scala 925:27:freechips.rocketchip.system.DefaultRV32Config.fir@157008.4]
  wire  _T_1162; // @[RocketCore.scala 925:50:freechips.rocketchip.system.DefaultRV32Config.fir@157011.4]
  wire  _T_1112; // @[RocketCore.scala 691:55:freechips.rocketchip.system.DefaultRV32Config.fir@156953.4]
  wire  _T_1113; // @[RocketCore.scala 691:42:freechips.rocketchip.system.DefaultRV32Config.fir@156954.4]
  wire  _T_1160; // @[RocketCore.scala 709:70:freechips.rocketchip.system.DefaultRV32Config.fir@157009.4]
  wire  _T_1161; // @[RocketCore.scala 925:27:freechips.rocketchip.system.DefaultRV32Config.fir@157010.4]
  wire  _T_1163; // @[RocketCore.scala 925:50:freechips.rocketchip.system.DefaultRV32Config.fir@157012.4]
  wire  data_hazard_ex; // @[RocketCore.scala 709:36:freechips.rocketchip.system.DefaultRV32Config.fir@157013.4]
  wire  _T_1149; // @[RocketCore.scala 708:38:freechips.rocketchip.system.DefaultRV32Config.fir@156997.4]
  wire  _T_1150; // @[RocketCore.scala 708:48:freechips.rocketchip.system.DefaultRV32Config.fir@156998.4]
  wire  _T_1151; // @[RocketCore.scala 708:64:freechips.rocketchip.system.DefaultRV32Config.fir@156999.4]
  wire  _T_1153; // @[RocketCore.scala 708:94:freechips.rocketchip.system.DefaultRV32Config.fir@157001.4]
  wire  ex_cannot_bypass; // @[RocketCore.scala 708:109:freechips.rocketchip.system.DefaultRV32Config.fir@157002.4]
  wire  _T_1175; // @[RocketCore.scala 711:54:freechips.rocketchip.system.DefaultRV32Config.fir@157026.4]
  wire  _T_1165; // @[RocketCore.scala 925:27:freechips.rocketchip.system.DefaultRV32Config.fir@157015.4]
  wire  _T_1167; // @[RocketCore.scala 925:27:freechips.rocketchip.system.DefaultRV32Config.fir@157017.4]
  wire  _T_1172; // @[RocketCore.scala 925:50:freechips.rocketchip.system.DefaultRV32Config.fir@157022.4]
  wire  _T_1168; // @[RocketCore.scala 710:76:freechips.rocketchip.system.DefaultRV32Config.fir@157018.4]
  wire  _T_1169; // @[RocketCore.scala 925:27:freechips.rocketchip.system.DefaultRV32Config.fir@157019.4]
  wire  _T_1173; // @[RocketCore.scala 925:50:freechips.rocketchip.system.DefaultRV32Config.fir@157023.4]
  wire  _T_1171; // @[RocketCore.scala 925:27:freechips.rocketchip.system.DefaultRV32Config.fir@157021.4]
  wire  _T_1174; // @[RocketCore.scala 925:50:freechips.rocketchip.system.DefaultRV32Config.fir@157024.4]
  wire  fp_data_hazard_ex; // @[RocketCore.scala 710:39:freechips.rocketchip.system.DefaultRV32Config.fir@157025.4]
  wire  _T_1176; // @[RocketCore.scala 711:74:freechips.rocketchip.system.DefaultRV32Config.fir@157027.4]
  wire  id_ex_hazard; // @[RocketCore.scala 711:35:freechips.rocketchip.system.DefaultRV32Config.fir@157028.4]
  wire  _T_1183; // @[RocketCore.scala 718:72:freechips.rocketchip.system.DefaultRV32Config.fir@157037.4]
  wire  _T_1184; // @[RocketCore.scala 925:27:freechips.rocketchip.system.DefaultRV32Config.fir@157038.4]
  wire  _T_1185; // @[RocketCore.scala 718:72:freechips.rocketchip.system.DefaultRV32Config.fir@157039.4]
  wire  _T_1186; // @[RocketCore.scala 925:27:freechips.rocketchip.system.DefaultRV32Config.fir@157040.4]
  wire  _T_1189; // @[RocketCore.scala 925:50:freechips.rocketchip.system.DefaultRV32Config.fir@157043.4]
  wire  _T_1187; // @[RocketCore.scala 718:72:freechips.rocketchip.system.DefaultRV32Config.fir@157041.4]
  wire  _T_1188; // @[RocketCore.scala 925:27:freechips.rocketchip.system.DefaultRV32Config.fir@157042.4]
  wire  _T_1190; // @[RocketCore.scala 925:50:freechips.rocketchip.system.DefaultRV32Config.fir@157044.4]
  wire  data_hazard_mem; // @[RocketCore.scala 718:38:freechips.rocketchip.system.DefaultRV32Config.fir@157045.4]
  wire  _T_1177; // @[RocketCore.scala 717:40:freechips.rocketchip.system.DefaultRV32Config.fir@157030.4]
  wire  _T_1178; // @[RocketCore.scala 717:66:freechips.rocketchip.system.DefaultRV32Config.fir@157031.4]
  wire  _T_1179; // @[RocketCore.scala 717:50:freechips.rocketchip.system.DefaultRV32Config.fir@157032.4]
  wire  _T_1181; // @[RocketCore.scala 717:100:freechips.rocketchip.system.DefaultRV32Config.fir@157034.4]
  wire  mem_cannot_bypass; // @[RocketCore.scala 717:116:freechips.rocketchip.system.DefaultRV32Config.fir@157035.4]
  wire  _T_1202; // @[RocketCore.scala 720:57:freechips.rocketchip.system.DefaultRV32Config.fir@157058.4]
  wire  _T_1192; // @[RocketCore.scala 925:27:freechips.rocketchip.system.DefaultRV32Config.fir@157047.4]
  wire  _T_1194; // @[RocketCore.scala 925:27:freechips.rocketchip.system.DefaultRV32Config.fir@157049.4]
  wire  _T_1199; // @[RocketCore.scala 925:50:freechips.rocketchip.system.DefaultRV32Config.fir@157054.4]
  wire  _T_1195; // @[RocketCore.scala 719:78:freechips.rocketchip.system.DefaultRV32Config.fir@157050.4]
  wire  _T_1196; // @[RocketCore.scala 925:27:freechips.rocketchip.system.DefaultRV32Config.fir@157051.4]
  wire  _T_1200; // @[RocketCore.scala 925:50:freechips.rocketchip.system.DefaultRV32Config.fir@157055.4]
  wire  _T_1198; // @[RocketCore.scala 925:27:freechips.rocketchip.system.DefaultRV32Config.fir@157053.4]
  wire  _T_1201; // @[RocketCore.scala 925:50:freechips.rocketchip.system.DefaultRV32Config.fir@157056.4]
  wire  fp_data_hazard_mem; // @[RocketCore.scala 719:41:freechips.rocketchip.system.DefaultRV32Config.fir@157057.4]
  wire  _T_1203; // @[RocketCore.scala 720:78:freechips.rocketchip.system.DefaultRV32Config.fir@157059.4]
  wire  id_mem_hazard; // @[RocketCore.scala 720:37:freechips.rocketchip.system.DefaultRV32Config.fir@157060.4]
  wire  _T_1273; // @[RocketCore.scala 747:18:freechips.rocketchip.system.DefaultRV32Config.fir@157149.4]
  wire  _T_1206; // @[RocketCore.scala 724:70:freechips.rocketchip.system.DefaultRV32Config.fir@157064.4]
  wire  _T_1207; // @[RocketCore.scala 925:27:freechips.rocketchip.system.DefaultRV32Config.fir@157065.4]
  wire  _T_1208; // @[RocketCore.scala 724:70:freechips.rocketchip.system.DefaultRV32Config.fir@157066.4]
  wire  _T_1209; // @[RocketCore.scala 925:27:freechips.rocketchip.system.DefaultRV32Config.fir@157067.4]
  wire  _T_1212; // @[RocketCore.scala 925:50:freechips.rocketchip.system.DefaultRV32Config.fir@157070.4]
  wire  _T_1210; // @[RocketCore.scala 724:70:freechips.rocketchip.system.DefaultRV32Config.fir@157068.4]
  wire  _T_1211; // @[RocketCore.scala 925:27:freechips.rocketchip.system.DefaultRV32Config.fir@157069.4]
  wire  _T_1213; // @[RocketCore.scala 925:50:freechips.rocketchip.system.DefaultRV32Config.fir@157071.4]
  wire  data_hazard_wb; // @[RocketCore.scala 724:36:freechips.rocketchip.system.DefaultRV32Config.fir@157072.4]
  wire  _T_718; // @[RocketCore.scala 468:39:freechips.rocketchip.system.DefaultRV32Config.fir@156402.4]
  wire  wb_dcache_miss; // @[RocketCore.scala 468:36:freechips.rocketchip.system.DefaultRV32Config.fir@156403.4]
  wire  wb_set_sboard; // @[RocketCore.scala 613:35:freechips.rocketchip.system.DefaultRV32Config.fir@156823.4]
  wire  _T_1225; // @[RocketCore.scala 726:54:freechips.rocketchip.system.DefaultRV32Config.fir@157085.4]
  wire  _T_1215; // @[RocketCore.scala 925:27:freechips.rocketchip.system.DefaultRV32Config.fir@157074.4]
  wire  _T_1217; // @[RocketCore.scala 925:27:freechips.rocketchip.system.DefaultRV32Config.fir@157076.4]
  wire  _T_1222; // @[RocketCore.scala 925:50:freechips.rocketchip.system.DefaultRV32Config.fir@157081.4]
  wire  _T_1218; // @[RocketCore.scala 725:76:freechips.rocketchip.system.DefaultRV32Config.fir@157077.4]
  wire  _T_1219; // @[RocketCore.scala 925:27:freechips.rocketchip.system.DefaultRV32Config.fir@157078.4]
  wire  _T_1223; // @[RocketCore.scala 925:50:freechips.rocketchip.system.DefaultRV32Config.fir@157082.4]
  wire  _T_1221; // @[RocketCore.scala 925:27:freechips.rocketchip.system.DefaultRV32Config.fir@157080.4]
  wire  _T_1224; // @[RocketCore.scala 925:50:freechips.rocketchip.system.DefaultRV32Config.fir@157083.4]
  wire  fp_data_hazard_wb; // @[RocketCore.scala 725:39:freechips.rocketchip.system.DefaultRV32Config.fir@157084.4]
  wire  _T_1226; // @[RocketCore.scala 726:71:freechips.rocketchip.system.DefaultRV32Config.fir@157086.4]
  wire  id_wb_hazard; // @[RocketCore.scala 726:35:freechips.rocketchip.system.DefaultRV32Config.fir@157087.4]
  wire  _T_1274; // @[RocketCore.scala 747:35:freechips.rocketchip.system.DefaultRV32Config.fir@157150.4]
  reg [31:0] _T_1114; // @[RocketCore.scala 942:25:freechips.rocketchip.system.DefaultRV32Config.fir@156955.4]
  reg [31:0] _RAND_89;
  wire [30:0] _T_1115; // @[RocketCore.scala 943:35:freechips.rocketchip.system.DefaultRV32Config.fir@156956.4]
  wire [31:0] _T_1116; // @[RocketCore.scala 943:40:freechips.rocketchip.system.DefaultRV32Config.fir@156957.4]
  wire [31:0] _T_1122; // @[RocketCore.scala 939:35:freechips.rocketchip.system.DefaultRV32Config.fir@156966.4]
  wire  _T_1123; // @[RocketCore.scala 939:35:freechips.rocketchip.system.DefaultRV32Config.fir@156967.4]
  wire  dmem_resp_valid; // @[RocketCore.scala 623:44:freechips.rocketchip.system.DefaultRV32Config.fir@156840.4]
  wire  dmem_resp_replay; // @[RocketCore.scala 624:42:freechips.rocketchip.system.DefaultRV32Config.fir@156841.4]
  wire  _T_1056; // @[RocketCore.scala 620:45:freechips.rocketchip.system.DefaultRV32Config.fir@156834.4]
  wire  dmem_resp_xpu; // @[RocketCore.scala 620:23:freechips.rocketchip.system.DefaultRV32Config.fir@156836.4]
  wire  _T_1061; // @[RocketCore.scala 639:26:freechips.rocketchip.system.DefaultRV32Config.fir@156854.4]
  wire  _T_1060; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@156850.4]
  wire  ll_wen; // @[RocketCore.scala 639:44:freechips.rocketchip.system.DefaultRV32Config.fir@156855.4]
  wire [4:0] dmem_resp_waddr; // @[RocketCore.scala 622:46:freechips.rocketchip.system.DefaultRV32Config.fir@156839.4]
  wire [4:0] ll_waddr; // @[RocketCore.scala 639:44:freechips.rocketchip.system.DefaultRV32Config.fir@156855.4]
  wire  _T_1124; // @[RocketCore.scala 701:70:freechips.rocketchip.system.DefaultRV32Config.fir@156968.4]
  wire  _T_1125; // @[RocketCore.scala 701:58:freechips.rocketchip.system.DefaultRV32Config.fir@156969.4]
  wire  _T_1126; // @[RocketCore.scala 704:80:freechips.rocketchip.system.DefaultRV32Config.fir@156970.4]
  wire  _T_1127; // @[RocketCore.scala 704:77:freechips.rocketchip.system.DefaultRV32Config.fir@156971.4]
  wire  _T_1128; // @[RocketCore.scala 925:27:freechips.rocketchip.system.DefaultRV32Config.fir@156972.4]
  wire [31:0] _T_1129; // @[RocketCore.scala 939:35:freechips.rocketchip.system.DefaultRV32Config.fir@156973.4]
  wire  _T_1130; // @[RocketCore.scala 939:35:freechips.rocketchip.system.DefaultRV32Config.fir@156974.4]
  wire  _T_1131; // @[RocketCore.scala 701:70:freechips.rocketchip.system.DefaultRV32Config.fir@156975.4]
  wire  _T_1132; // @[RocketCore.scala 701:58:freechips.rocketchip.system.DefaultRV32Config.fir@156976.4]
  wire  _T_1133; // @[RocketCore.scala 704:80:freechips.rocketchip.system.DefaultRV32Config.fir@156977.4]
  wire  _T_1134; // @[RocketCore.scala 704:77:freechips.rocketchip.system.DefaultRV32Config.fir@156978.4]
  wire  _T_1135; // @[RocketCore.scala 925:27:freechips.rocketchip.system.DefaultRV32Config.fir@156979.4]
  wire  _T_1143; // @[RocketCore.scala 925:50:freechips.rocketchip.system.DefaultRV32Config.fir@156987.4]
  wire [31:0] _T_1136; // @[RocketCore.scala 939:35:freechips.rocketchip.system.DefaultRV32Config.fir@156980.4]
  wire  _T_1137; // @[RocketCore.scala 939:35:freechips.rocketchip.system.DefaultRV32Config.fir@156981.4]
  wire  _T_1138; // @[RocketCore.scala 701:70:freechips.rocketchip.system.DefaultRV32Config.fir@156982.4]
  wire  _T_1139; // @[RocketCore.scala 701:58:freechips.rocketchip.system.DefaultRV32Config.fir@156983.4]
  wire  _T_1140; // @[RocketCore.scala 704:80:freechips.rocketchip.system.DefaultRV32Config.fir@156984.4]
  wire  _T_1141; // @[RocketCore.scala 704:77:freechips.rocketchip.system.DefaultRV32Config.fir@156985.4]
  wire  _T_1142; // @[RocketCore.scala 925:27:freechips.rocketchip.system.DefaultRV32Config.fir@156986.4]
  wire  id_sboard_hazard; // @[RocketCore.scala 925:50:freechips.rocketchip.system.DefaultRV32Config.fir@156988.4]
  wire  _T_1275; // @[RocketCore.scala 747:51:freechips.rocketchip.system.DefaultRV32Config.fir@157151.4]
  wire  _T_1276; // @[RocketCore.scala 748:40:freechips.rocketchip.system.DefaultRV32Config.fir@157152.4]
  wire  _T_1277; // @[RocketCore.scala 748:57:freechips.rocketchip.system.DefaultRV32Config.fir@157153.4]
  wire  _T_1278; // @[RocketCore.scala 748:23:freechips.rocketchip.system.DefaultRV32Config.fir@157154.4]
  wire  _T_1279; // @[RocketCore.scala 747:71:freechips.rocketchip.system.DefaultRV32Config.fir@157155.4]
  wire  _T_1280; // @[RocketCore.scala 749:15:freechips.rocketchip.system.DefaultRV32Config.fir@157156.4]
  wire  _T_1281; // @[RocketCore.scala 749:45:freechips.rocketchip.system.DefaultRV32Config.fir@157157.4]
  wire  _T_1282; // @[RocketCore.scala 749:42:freechips.rocketchip.system.DefaultRV32Config.fir@157158.4]
  wire  _T_1283; // @[RocketCore.scala 748:74:freechips.rocketchip.system.DefaultRV32Config.fir@157159.4]
  reg [31:0] _T_1227; // @[RocketCore.scala 942:25:freechips.rocketchip.system.DefaultRV32Config.fir@157088.4]
  reg [31:0] _RAND_90;
  wire [31:0] _T_1246; // @[RocketCore.scala 939:35:freechips.rocketchip.system.DefaultRV32Config.fir@157116.4]
  wire  _T_1247; // @[RocketCore.scala 939:35:freechips.rocketchip.system.DefaultRV32Config.fir@157117.4]
  wire  _T_1248; // @[RocketCore.scala 925:27:freechips.rocketchip.system.DefaultRV32Config.fir@157118.4]
  wire [31:0] _T_1249; // @[RocketCore.scala 939:35:freechips.rocketchip.system.DefaultRV32Config.fir@157119.4]
  wire  _T_1250; // @[RocketCore.scala 939:35:freechips.rocketchip.system.DefaultRV32Config.fir@157120.4]
  wire  _T_1251; // @[RocketCore.scala 925:27:freechips.rocketchip.system.DefaultRV32Config.fir@157121.4]
  wire  _T_1258; // @[RocketCore.scala 925:50:freechips.rocketchip.system.DefaultRV32Config.fir@157128.4]
  wire [31:0] _T_1252; // @[RocketCore.scala 939:35:freechips.rocketchip.system.DefaultRV32Config.fir@157122.4]
  wire  _T_1253; // @[RocketCore.scala 939:35:freechips.rocketchip.system.DefaultRV32Config.fir@157123.4]
  wire  _T_1254; // @[RocketCore.scala 925:27:freechips.rocketchip.system.DefaultRV32Config.fir@157124.4]
  wire  _T_1259; // @[RocketCore.scala 925:50:freechips.rocketchip.system.DefaultRV32Config.fir@157129.4]
  wire [31:0] _T_1255; // @[RocketCore.scala 939:35:freechips.rocketchip.system.DefaultRV32Config.fir@157125.4]
  wire  _T_1256; // @[RocketCore.scala 939:35:freechips.rocketchip.system.DefaultRV32Config.fir@157126.4]
  wire  _T_1257; // @[RocketCore.scala 925:27:freechips.rocketchip.system.DefaultRV32Config.fir@157127.4]
  wire  id_stall_fpu; // @[RocketCore.scala 925:50:freechips.rocketchip.system.DefaultRV32Config.fir@157130.4]
  wire  _T_1284; // @[RocketCore.scala 750:16:freechips.rocketchip.system.DefaultRV32Config.fir@157160.4]
  wire  _T_1285; // @[RocketCore.scala 749:62:freechips.rocketchip.system.DefaultRV32Config.fir@157161.4]
  reg  blocked; // @[RocketCore.scala 739:22:freechips.rocketchip.system.DefaultRV32Config.fir@157131.4]
  reg [31:0] _RAND_91;
  wire  _T_1267; // @[RocketCore.scala 741:16:freechips.rocketchip.system.DefaultRV32Config.fir@157140.4]
  wire  dcache_blocked; // @[RocketCore.scala 741:13:freechips.rocketchip.system.DefaultRV32Config.fir@157141.4]
  wire  _T_1286; // @[RocketCore.scala 751:17:freechips.rocketchip.system.DefaultRV32Config.fir@157162.4]
  wire  _T_1287; // @[RocketCore.scala 750:32:freechips.rocketchip.system.DefaultRV32Config.fir@157163.4]
  wire  wb_wxd; // @[RocketCore.scala 612:29:freechips.rocketchip.system.DefaultRV32Config.fir@156822.4]
  wire  _T_1290; // @[RocketCore.scala 753:65:freechips.rocketchip.system.DefaultRV32Config.fir@157166.4]
  wire  _T_1291; // @[RocketCore.scala 753:62:freechips.rocketchip.system.DefaultRV32Config.fir@157167.4]
  wire  _T_1292; // @[RocketCore.scala 753:40:freechips.rocketchip.system.DefaultRV32Config.fir@157168.4]
  wire  _T_1293; // @[RocketCore.scala 753:21:freechips.rocketchip.system.DefaultRV32Config.fir@157169.4]
  wire  _T_1294; // @[RocketCore.scala 753:75:freechips.rocketchip.system.DefaultRV32Config.fir@157170.4]
  wire  _T_1295; // @[RocketCore.scala 753:17:freechips.rocketchip.system.DefaultRV32Config.fir@157171.4]
  wire  _T_1296; // @[RocketCore.scala 752:34:freechips.rocketchip.system.DefaultRV32Config.fir@157172.4]
  wire  _T_1299; // @[RocketCore.scala 754:15:freechips.rocketchip.system.DefaultRV32Config.fir@157175.4]
  wire  _T_1300; // @[RocketCore.scala 755:17:freechips.rocketchip.system.DefaultRV32Config.fir@157176.4]
  wire  ctrl_stalld; // @[RocketCore.scala 756:22:freechips.rocketchip.system.DefaultRV32Config.fir@157177.4]
  wire  _T_1304; // @[RocketCore.scala 758:89:freechips.rocketchip.system.DefaultRV32Config.fir@157181.4]
  wire  ctrl_killd; // @[RocketCore.scala 758:104:freechips.rocketchip.system.DefaultRV32Config.fir@157182.4]
  wire  _T_668; // @[RocketCore.scala 405:19:freechips.rocketchip.system.DefaultRV32Config.fir@156283.4]
  wire  _T_669; // @[RocketCore.scala 406:20:freechips.rocketchip.system.DefaultRV32Config.fir@156285.4]
  wire  _T_670; // @[RocketCore.scala 406:29:freechips.rocketchip.system.DefaultRV32Config.fir@156286.4]
  wire  _T_680; // @[RocketCore.scala 416:42:freechips.rocketchip.system.DefaultRV32Config.fir@156305.6]
  wire  _T_681; // @[RocketCore.scala 416:25:freechips.rocketchip.system.DefaultRV32Config.fir@156306.6]
  wire  _GEN_1; // @[RocketCore.scala 416:49:freechips.rocketchip.system.DefaultRV32Config.fir@156307.6]
  wire  _GEN_2; // @[RocketCore.scala 417:26:freechips.rocketchip.system.DefaultRV32Config.fir@156310.6]
  wire [1:0] _T_682; // @[RocketCore.scala 423:22:freechips.rocketchip.system.DefaultRV32Config.fir@156318.8]
  wire  _T_683; // @[RocketCore.scala 423:29:freechips.rocketchip.system.DefaultRV32Config.fir@156319.8]
  wire  _GEN_5; // @[RocketCore.scala 423:34:freechips.rocketchip.system.DefaultRV32Config.fir@156320.8]
  wire [1:0] _T_684; // @[RocketCore.scala 428:40:freechips.rocketchip.system.DefaultRV32Config.fir@156325.8]
  wire  _T_685; // @[RocketCore.scala 428:47:freechips.rocketchip.system.DefaultRV32Config.fir@156326.8]
  wire  _T_686; // @[RocketCore.scala 428:28:freechips.rocketchip.system.DefaultRV32Config.fir@156327.8]
  wire  _T_687; // @[RocketCore.scala 433:42:freechips.rocketchip.system.DefaultRV32Config.fir@156333.6]
  wire [1:0] _T_688; // @[RocketCore.scala 435:34:freechips.rocketchip.system.DefaultRV32Config.fir@156336.6]
  wire  _T_690; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@156339.6]
  wire  _T_691; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@156340.6]
  wire [1:0] _T_694; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@156344.8]
  wire  _T_695; // @[RocketCore.scala 441:48:freechips.rocketchip.system.DefaultRV32Config.fir@156347.6]
  wire  _T_696; // @[RocketCore.scala 441:48:freechips.rocketchip.system.DefaultRV32Config.fir@156348.6]
  wire  do_bypass; // @[RocketCore.scala 441:48:freechips.rocketchip.system.DefaultRV32Config.fir@156349.6]
  wire  _T_699; // @[RocketCore.scala 445:26:freechips.rocketchip.system.DefaultRV32Config.fir@156355.6]
  wire  _T_700; // @[RocketCore.scala 445:23:freechips.rocketchip.system.DefaultRV32Config.fir@156356.6]
  wire  _T_1062; // @[RocketCore.scala 647:34:freechips.rocketchip.system.DefaultRV32Config.fir@156860.4]
  wire  _T_1063; // @[RocketCore.scala 647:31:freechips.rocketchip.system.DefaultRV32Config.fir@156861.4]
  wire  _T_1064; // @[RocketCore.scala 647:48:freechips.rocketchip.system.DefaultRV32Config.fir@156862.4]
  wire  wb_valid; // @[RocketCore.scala 647:45:freechips.rocketchip.system.DefaultRV32Config.fir@156863.4]
  wire  wb_wen; // @[RocketCore.scala 648:25:freechips.rocketchip.system.DefaultRV32Config.fir@156864.4]
  wire  rf_wen; // @[RocketCore.scala 649:23:freechips.rocketchip.system.DefaultRV32Config.fir@156865.4]
  wire [4:0] rf_waddr; // @[RocketCore.scala 650:21:freechips.rocketchip.system.DefaultRV32Config.fir@156866.4]
  wire  _T_1071; // @[RocketCore.scala 968:16:freechips.rocketchip.system.DefaultRV32Config.fir@156875.6]
  wire  _T_1075; // @[RocketCore.scala 971:20:freechips.rocketchip.system.DefaultRV32Config.fir@156881.8]
  wire  _T_1065; // @[RocketCore.scala 651:38:freechips.rocketchip.system.DefaultRV32Config.fir@156867.4]
  wire [31:0] ll_wdata; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@156844.4 :freechips.rocketchip.system.DefaultRV32Config.fir@156846.4]
  wire  _T_1067; // @[RocketCore.scala 653:34:freechips.rocketchip.system.DefaultRV32Config.fir@156869.4]
  wire [31:0] _T_1069; // @[RocketCore.scala 653:21:freechips.rocketchip.system.DefaultRV32Config.fir@156871.4]
  wire [31:0] _T_1070; // @[RocketCore.scala 652:21:freechips.rocketchip.system.DefaultRV32Config.fir@156872.4]
  wire [31:0] rf_wdata; // @[RocketCore.scala 651:21:freechips.rocketchip.system.DefaultRV32Config.fir@156873.4]
  wire [31:0] _GEN_226; // @[RocketCore.scala 971:31:freechips.rocketchip.system.DefaultRV32Config.fir@156882.8]
  wire [31:0] _GEN_233; // @[RocketCore.scala 968:29:freechips.rocketchip.system.DefaultRV32Config.fir@156876.6]
  wire [31:0] id_rs_0; // @[RocketCore.scala 656:17:freechips.rocketchip.system.DefaultRV32Config.fir@156874.4]
  wire [1:0] _T_701; // @[RocketCore.scala 446:37:freechips.rocketchip.system.DefaultRV32Config.fir@156358.8]
  wire [29:0] _T_702; // @[RocketCore.scala 447:38:freechips.rocketchip.system.DefaultRV32Config.fir@156360.8]
  wire  _T_703; // @[RocketCore.scala 441:48:freechips.rocketchip.system.DefaultRV32Config.fir@156363.6]
  wire  _T_704; // @[RocketCore.scala 441:48:freechips.rocketchip.system.DefaultRV32Config.fir@156364.6]
  wire  do_bypass_1; // @[RocketCore.scala 441:48:freechips.rocketchip.system.DefaultRV32Config.fir@156365.6]
  wire  _T_707; // @[RocketCore.scala 445:26:freechips.rocketchip.system.DefaultRV32Config.fir@156371.6]
  wire  _T_708; // @[RocketCore.scala 445:23:freechips.rocketchip.system.DefaultRV32Config.fir@156372.6]
  wire  _T_1076; // @[RocketCore.scala 971:20:freechips.rocketchip.system.DefaultRV32Config.fir@156885.8]
  wire [31:0] _GEN_227; // @[RocketCore.scala 971:31:freechips.rocketchip.system.DefaultRV32Config.fir@156886.8]
  wire [31:0] _GEN_234; // @[RocketCore.scala 968:29:freechips.rocketchip.system.DefaultRV32Config.fir@156876.6]
  wire [31:0] id_rs_1; // @[RocketCore.scala 656:17:freechips.rocketchip.system.DefaultRV32Config.fir@156874.4]
  wire [1:0] _T_709; // @[RocketCore.scala 446:37:freechips.rocketchip.system.DefaultRV32Config.fir@156374.8]
  wire [29:0] _T_710; // @[RocketCore.scala 447:38:freechips.rocketchip.system.DefaultRV32Config.fir@156376.8]
  wire [15:0] _T_711; // @[RocketCore.scala 451:62:freechips.rocketchip.system.DefaultRV32Config.fir@156380.8]
  wire [31:0] inst; // @[RocketCore.scala 451:21:freechips.rocketchip.system.DefaultRV32Config.fir@156381.8]
  wire [1:0] _T_712; // @[RocketCore.scala 453:31:freechips.rocketchip.system.DefaultRV32Config.fir@156383.8]
  wire [29:0] _T_713; // @[RocketCore.scala 454:32:freechips.rocketchip.system.DefaultRV32Config.fir@156385.8]
  wire  _T_1204; // @[RocketCore.scala 721:32:freechips.rocketchip.system.DefaultRV32Config.fir@157061.4]
  wire  id_load_use; // @[RocketCore.scala 721:51:freechips.rocketchip.system.DefaultRV32Config.fir@157062.4]
  wire  _T_715; // @[RocketCore.scala 457:21:freechips.rocketchip.system.DefaultRV32Config.fir@156390.4]
  wire  _T_716; // @[RocketCore.scala 457:41:freechips.rocketchip.system.DefaultRV32Config.fir@156391.4]
  wire  _T_719; // @[RocketCore.scala 469:45:freechips.rocketchip.system.DefaultRV32Config.fir@156404.4]
  wire  _T_720; // @[RocketCore.scala 469:42:freechips.rocketchip.system.DefaultRV32Config.fir@156405.4]
  wire  _T_721; // @[RocketCore.scala 470:45:freechips.rocketchip.system.DefaultRV32Config.fir@156406.4]
  wire  _T_722; // @[RocketCore.scala 470:42:freechips.rocketchip.system.DefaultRV32Config.fir@156407.4]
  wire  replay_ex_structural; // @[RocketCore.scala 469:64:freechips.rocketchip.system.DefaultRV32Config.fir@156408.4]
  wire  replay_ex_load_use; // @[RocketCore.scala 471:43:freechips.rocketchip.system.DefaultRV32Config.fir@156409.4]
  wire  _T_723; // @[RocketCore.scala 472:75:freechips.rocketchip.system.DefaultRV32Config.fir@156410.4]
  wire  _T_724; // @[RocketCore.scala 472:50:freechips.rocketchip.system.DefaultRV32Config.fir@156411.4]
  wire  replay_ex; // @[RocketCore.scala 472:33:freechips.rocketchip.system.DefaultRV32Config.fir@156412.4]
  wire  _T_725; // @[RocketCore.scala 473:35:freechips.rocketchip.system.DefaultRV32Config.fir@156413.4]
  wire  _T_726; // @[RocketCore.scala 473:51:freechips.rocketchip.system.DefaultRV32Config.fir@156414.4]
  wire  ctrl_killx; // @[RocketCore.scala 473:48:freechips.rocketchip.system.DefaultRV32Config.fir@156415.4]
  wire  _T_727; // @[RocketCore.scala 475:40:freechips.rocketchip.system.DefaultRV32Config.fir@156416.4]
  wire  _T_728; // @[RocketCore.scala 475:69:freechips.rocketchip.system.DefaultRV32Config.fir@156417.4]
  wire  ex_slow_bypass; // @[RocketCore.scala 475:50:freechips.rocketchip.system.DefaultRV32Config.fir@156418.4]
  wire  _T_730; // @[RocketCore.scala 476:67:freechips.rocketchip.system.DefaultRV32Config.fir@156420.4]
  wire  ex_sfence; // @[RocketCore.scala 476:48:freechips.rocketchip.system.DefaultRV32Config.fir@156421.4]
  wire  ex_xcpt; // @[RocketCore.scala 479:28:freechips.rocketchip.system.DefaultRV32Config.fir@156422.4]
  wire  _T_741; // @[RocketCore.scala 485:36:freechips.rocketchip.system.DefaultRV32Config.fir@156433.4]
  wire  mem_pc_valid; // @[RocketCore.scala 485:54:freechips.rocketchip.system.DefaultRV32Config.fir@156434.4]
  wire  _T_884; // @[RocketCore.scala 494:66:freechips.rocketchip.system.DefaultRV32Config.fir@156580.4]
  wire  _T_885; // @[RocketCore.scala 494:56:freechips.rocketchip.system.DefaultRV32Config.fir@156581.4]
  wire  _T_886; // @[RocketCore.scala 494:73:freechips.rocketchip.system.DefaultRV32Config.fir@156582.4]
  wire  mem_npc_misaligned; // @[RocketCore.scala 494:70:freechips.rocketchip.system.DefaultRV32Config.fir@156583.4]
  wire  _T_887; // @[RocketCore.scala 495:27:freechips.rocketchip.system.DefaultRV32Config.fir@156584.4]
  wire  _T_888; // @[RocketCore.scala 495:59:freechips.rocketchip.system.DefaultRV32Config.fir@156585.4]
  wire  _T_889; // @[RocketCore.scala 495:41:freechips.rocketchip.system.DefaultRV32Config.fir@156586.4]
  wire [31:0] _T_891; // @[RocketCore.scala 495:26:freechips.rocketchip.system.DefaultRV32Config.fir@156588.4]
  wire [31:0] mem_int_wdata; // @[RocketCore.scala 495:119:freechips.rocketchip.system.DefaultRV32Config.fir@156589.4]
  wire  _T_892; // @[RocketCore.scala 496:33:freechips.rocketchip.system.DefaultRV32Config.fir@156590.4]
  wire  mem_cfi; // @[RocketCore.scala 496:50:freechips.rocketchip.system.DefaultRV32Config.fir@156591.4]
  wire  _T_894; // @[RocketCore.scala 497:57:freechips.rocketchip.system.DefaultRV32Config.fir@156593.4]
  wire  mem_cfi_taken; // @[RocketCore.scala 497:74:freechips.rocketchip.system.DefaultRV32Config.fir@156594.4]
  wire  _T_899; // @[RocketCore.scala 502:20:freechips.rocketchip.system.DefaultRV32Config.fir@156601.4]
  wire  _T_906; // @[RocketCore.scala 509:23:freechips.rocketchip.system.DefaultRV32Config.fir@156612.4]
  wire  _T_907; // @[Consts.scala 82:31:freechips.rocketchip.system.DefaultRV32Config.fir@156622.8]
  wire  _T_908; // @[Consts.scala 82:48:freechips.rocketchip.system.DefaultRV32Config.fir@156623.8]
  wire  _T_909; // @[Consts.scala 82:41:freechips.rocketchip.system.DefaultRV32Config.fir@156624.8]
  wire  _T_911; // @[Consts.scala 82:58:freechips.rocketchip.system.DefaultRV32Config.fir@156626.8]
  wire  _T_912; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@156627.8]
  wire  _T_913; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@156628.8]
  wire  _T_914; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@156629.8]
  wire  _T_915; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@156630.8]
  wire  _T_916; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@156631.8]
  wire  _T_917; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@156632.8]
  wire  _T_918; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@156633.8]
  wire  _T_919; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@156634.8]
  wire  _T_920; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@156635.8]
  wire  _T_921; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@156636.8]
  wire  _T_922; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@156637.8]
  wire  _T_923; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@156638.8]
  wire  _T_924; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@156639.8]
  wire  _T_925; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@156640.8]
  wire  _T_926; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@156641.8]
  wire  _T_927; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@156642.8]
  wire  _T_928; // @[Consts.scala 80:44:freechips.rocketchip.system.DefaultRV32Config.fir@156643.8]
  wire  _T_929; // @[Consts.scala 82:75:freechips.rocketchip.system.DefaultRV32Config.fir@156644.8]
  wire  _T_930; // @[RocketCore.scala 516:33:freechips.rocketchip.system.DefaultRV32Config.fir@156645.8]
  wire  _T_931; // @[Consts.scala 83:32:freechips.rocketchip.system.DefaultRV32Config.fir@156647.8]
  wire  _T_932; // @[Consts.scala 83:49:freechips.rocketchip.system.DefaultRV32Config.fir@156648.8]
  wire  _T_933; // @[Consts.scala 83:42:freechips.rocketchip.system.DefaultRV32Config.fir@156649.8]
  wire  _T_935; // @[Consts.scala 83:59:freechips.rocketchip.system.DefaultRV32Config.fir@156651.8]
  wire  _T_953; // @[Consts.scala 83:76:freechips.rocketchip.system.DefaultRV32Config.fir@156669.8]
  wire  _T_954; // @[RocketCore.scala 517:34:freechips.rocketchip.system.DefaultRV32Config.fir@156670.8]
  wire [31:0] _T_955; // @[RocketCore.scala 529:25:freechips.rocketchip.system.DefaultRV32Config.fir@156682.8]
  wire  _T_957; // @[RocketCore.scala 532:56:freechips.rocketchip.system.DefaultRV32Config.fir@156686.8]
  wire  _T_958; // @[RocketCore.scala 532:24:freechips.rocketchip.system.DefaultRV32Config.fir@156687.8]
  wire  _T_960; // @[AMOALU.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@156691.10]
  wire [7:0] _T_961; // @[AMOALU.scala 26:66:freechips.rocketchip.system.DefaultRV32Config.fir@156692.10]
  wire [31:0] _T_963; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@156694.10]
  wire  _T_964; // @[AMOALU.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@156695.10]
  wire [15:0] _T_965; // @[AMOALU.scala 26:66:freechips.rocketchip.system.DefaultRV32Config.fir@156696.10]
  wire [31:0] _T_966; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@156697.10]
  wire  _T_969; // @[RocketCore.scala 536:24:freechips.rocketchip.system.DefaultRV32Config.fir@156702.8]
  wire  _GEN_77; // @[RocketCore.scala 536:48:freechips.rocketchip.system.DefaultRV32Config.fir@156703.8]
  wire  _GEN_78; // @[RocketCore.scala 536:48:freechips.rocketchip.system.DefaultRV32Config.fir@156703.8]
  wire  _T_970; // @[RocketCore.scala 543:38:freechips.rocketchip.system.DefaultRV32Config.fir@156708.4]
  wire  _T_971; // @[RocketCore.scala 543:75:freechips.rocketchip.system.DefaultRV32Config.fir@156709.4]
  wire  mem_breakpoint; // @[RocketCore.scala 543:57:freechips.rocketchip.system.DefaultRV32Config.fir@156710.4]
  wire  _T_972; // @[RocketCore.scala 544:44:freechips.rocketchip.system.DefaultRV32Config.fir@156711.4]
  wire  _T_973; // @[RocketCore.scala 544:82:freechips.rocketchip.system.DefaultRV32Config.fir@156712.4]
  wire  mem_debug_breakpoint; // @[RocketCore.scala 544:64:freechips.rocketchip.system.DefaultRV32Config.fir@156713.4]
  wire  mem_ldst_xcpt; // @[RocketCore.scala 916:26:freechips.rocketchip.system.DefaultRV32Config.fir@156714.4]
  wire [3:0] mem_ldst_cause; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@156715.4]
  wire  _T_974; // @[RocketCore.scala 550:29:freechips.rocketchip.system.DefaultRV32Config.fir@156716.4]
  wire  _T_975; // @[RocketCore.scala 551:20:freechips.rocketchip.system.DefaultRV32Config.fir@156717.4]
  wire  _T_976; // @[RocketCore.scala 552:20:freechips.rocketchip.system.DefaultRV32Config.fir@156718.4]
  wire  _T_977; // @[RocketCore.scala 916:26:freechips.rocketchip.system.DefaultRV32Config.fir@156719.4]
  wire  mem_xcpt; // @[RocketCore.scala 916:26:freechips.rocketchip.system.DefaultRV32Config.fir@156720.4]
  wire [3:0] _T_978; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@156721.4]
  wire  dcache_kill_mem; // @[RocketCore.scala 561:55:freechips.rocketchip.system.DefaultRV32Config.fir@156736.4]
  wire  _T_992; // @[RocketCore.scala 562:36:freechips.rocketchip.system.DefaultRV32Config.fir@156737.4]
  wire  fpu_kill_mem; // @[RocketCore.scala 562:51:freechips.rocketchip.system.DefaultRV32Config.fir@156738.4]
  wire  _T_993; // @[RocketCore.scala 563:37:freechips.rocketchip.system.DefaultRV32Config.fir@156739.4]
  wire  replay_mem; // @[RocketCore.scala 563:55:freechips.rocketchip.system.DefaultRV32Config.fir@156740.4]
  wire  _T_994; // @[RocketCore.scala 564:38:freechips.rocketchip.system.DefaultRV32Config.fir@156741.4]
  wire  _T_995; // @[RocketCore.scala 564:52:freechips.rocketchip.system.DefaultRV32Config.fir@156742.4]
  wire  _T_996; // @[RocketCore.scala 564:71:freechips.rocketchip.system.DefaultRV32Config.fir@156743.4]
  wire  killm_common; // @[RocketCore.scala 564:68:freechips.rocketchip.system.DefaultRV32Config.fir@156744.4]
  reg  _T_998; // @[RocketCore.scala 565:37:freechips.rocketchip.system.DefaultRV32Config.fir@156746.4]
  reg [31:0] _RAND_92;
  wire  _T_1000; // @[RocketCore.scala 566:33:freechips.rocketchip.system.DefaultRV32Config.fir@156750.4]
  wire  ctrl_killm; // @[RocketCore.scala 566:45:freechips.rocketchip.system.DefaultRV32Config.fir@156751.4]
  wire  _T_1001; // @[RocketCore.scala 569:19:freechips.rocketchip.system.DefaultRV32Config.fir@156752.4]
  wire  _T_1002; // @[RocketCore.scala 570:34:freechips.rocketchip.system.DefaultRV32Config.fir@156754.4]
  wire  _T_1009; // @[RocketCore.scala 577:25:freechips.rocketchip.system.DefaultRV32Config.fir@156767.6]
  wire  _T_1010; // @[RocketCore.scala 577:40:freechips.rocketchip.system.DefaultRV32Config.fir@156768.6]
  wire [2:0] _T_1032; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@156802.4]
  wire [3:0] _T_1033; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@156803.4]
  wire [3:0] _T_1034; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@156804.4]
  wire [3:0] _T_1035; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@156805.4]
  wire [3:0] _T_1036; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@156806.4]
  wire [31:0] wb_cause; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@156807.4]
  wire  _T_1037; // @[RocketCore.scala 920:38:freechips.rocketchip.system.DefaultRV32Config.fir@156808.4]
  wire  _T_1039; // @[RocketCore.scala 920:38:freechips.rocketchip.system.DefaultRV32Config.fir@156810.4]
  wire  _T_1041; // @[RocketCore.scala 920:38:freechips.rocketchip.system.DefaultRV32Config.fir@156812.4]
  wire  _T_1043; // @[RocketCore.scala 920:38:freechips.rocketchip.system.DefaultRV32Config.fir@156814.4]
  wire  _T_1045; // @[RocketCore.scala 920:38:freechips.rocketchip.system.DefaultRV32Config.fir@156816.4]
  wire  _T_1047; // @[RocketCore.scala 920:38:freechips.rocketchip.system.DefaultRV32Config.fir@156818.4]
  wire [1:0] _T_1078; // @[RocketCore.scala 664:66:freechips.rocketchip.system.DefaultRV32Config.fir@156897.4]
  wire  _T_1079; // @[RocketCore.scala 664:73:freechips.rocketchip.system.DefaultRV32Config.fir@156898.4]
  wire [15:0] _T_1080; // @[RocketCore.scala 664:91:freechips.rocketchip.system.DefaultRV32Config.fir@156899.4]
  wire [15:0] _T_1081; // @[RocketCore.scala 664:50:freechips.rocketchip.system.DefaultRV32Config.fir@156900.4]
  wire [15:0] _T_1082; // @[RocketCore.scala 664:119:freechips.rocketchip.system.DefaultRV32Config.fir@156901.4]
  wire  _T_1084; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@156910.4]
  wire  _T_1085; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@156911.4]
  wire  _T_1090; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@156916.4]
  wire  _T_1093; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@156919.4]
  wire  _T_1094; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@156920.4]
  wire  _T_1095; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@156921.4]
  wire  _T_1096; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@156922.4]
  wire  _T_1097; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@156923.4]
  wire  _T_1098; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@156924.4]
  wire  _T_1099; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@156925.4]
  wire  _T_1100; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@156926.4]
  wire  _T_1101; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@156927.4]
  wire  _T_1102; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@156928.4]
  wire  tval_valid; // @[RocketCore.scala 671:28:freechips.rocketchip.system.DefaultRV32Config.fir@156929.4]
  wire [2:0] _T_1105; // @[CSR.scala 131:15:freechips.rocketchip.system.DefaultRV32Config.fir@156941.4]
  wire [2:0] _T_1106; // @[CSR.scala 131:11:freechips.rocketchip.system.DefaultRV32Config.fir@156942.4]
  wire [31:0] _T_1117; // @[RocketCore.scala 946:62:freechips.rocketchip.system.DefaultRV32Config.fir@156958.4]
  wire [31:0] _T_1118; // @[RocketCore.scala 946:49:freechips.rocketchip.system.DefaultRV32Config.fir@156959.4]
  wire [31:0] _T_1119; // @[RocketCore.scala 938:64:freechips.rocketchip.system.DefaultRV32Config.fir@156960.4]
  wire [31:0] _T_1120; // @[RocketCore.scala 938:62:freechips.rocketchip.system.DefaultRV32Config.fir@156961.4]
  wire  _T_1144; // @[RocketCore.scala 705:28:freechips.rocketchip.system.DefaultRV32Config.fir@156989.4]
  wire [31:0] _T_1145; // @[RocketCore.scala 946:62:freechips.rocketchip.system.DefaultRV32Config.fir@156990.4]
  wire [31:0] _T_1146; // @[RocketCore.scala 946:49:freechips.rocketchip.system.DefaultRV32Config.fir@156991.4]
  wire [31:0] _T_1147; // @[RocketCore.scala 937:60:freechips.rocketchip.system.DefaultRV32Config.fir@156992.4]
  wire  _T_1148; // @[RocketCore.scala 949:17:freechips.rocketchip.system.DefaultRV32Config.fir@156993.4]
  wire  _T_1228; // @[RocketCore.scala 730:35:freechips.rocketchip.system.DefaultRV32Config.fir@157089.4]
  wire  _T_1229; // @[RocketCore.scala 730:50:freechips.rocketchip.system.DefaultRV32Config.fir@157090.4]
  wire  _T_1230; // @[RocketCore.scala 730:72:freechips.rocketchip.system.DefaultRV32Config.fir@157091.4]
  wire [31:0] _T_1232; // @[RocketCore.scala 946:49:freechips.rocketchip.system.DefaultRV32Config.fir@157093.4]
  wire [31:0] _T_1233; // @[RocketCore.scala 937:60:freechips.rocketchip.system.DefaultRV32Config.fir@157094.4]
  wire  _T_1235; // @[RocketCore.scala 731:38:freechips.rocketchip.system.DefaultRV32Config.fir@157099.4]
  wire [31:0] _T_1236; // @[RocketCore.scala 946:62:freechips.rocketchip.system.DefaultRV32Config.fir@157100.4]
  wire [31:0] _T_1237; // @[RocketCore.scala 946:49:freechips.rocketchip.system.DefaultRV32Config.fir@157101.4]
  wire [31:0] _T_1238; // @[RocketCore.scala 938:64:freechips.rocketchip.system.DefaultRV32Config.fir@157102.4]
  wire [31:0] _T_1239; // @[RocketCore.scala 938:62:freechips.rocketchip.system.DefaultRV32Config.fir@157103.4]
  wire  _T_1240; // @[RocketCore.scala 949:17:freechips.rocketchip.system.DefaultRV32Config.fir@157104.4]
  wire [31:0] _T_1241; // @[RocketCore.scala 946:62:freechips.rocketchip.system.DefaultRV32Config.fir@157108.4]
  wire [31:0] _T_1242; // @[RocketCore.scala 946:49:freechips.rocketchip.system.DefaultRV32Config.fir@157109.4]
  wire [31:0] _T_1243; // @[RocketCore.scala 938:64:freechips.rocketchip.system.DefaultRV32Config.fir@157110.4]
  wire [31:0] _T_1244; // @[RocketCore.scala 938:62:freechips.rocketchip.system.DefaultRV32Config.fir@157111.4]
  wire  _T_1245; // @[RocketCore.scala 949:17:freechips.rocketchip.system.DefaultRV32Config.fir@157112.4]
  wire  _T_1263; // @[RocketCore.scala 740:60:freechips.rocketchip.system.DefaultRV32Config.fir@157135.4]
  wire  _T_1264; // @[RocketCore.scala 740:95:freechips.rocketchip.system.DefaultRV32Config.fir@157136.4]
  wire  _T_1265; // @[RocketCore.scala 740:116:freechips.rocketchip.system.DefaultRV32Config.fir@157137.4]
  wire  _T_1307; // @[RocketCore.scala 763:17:freechips.rocketchip.system.DefaultRV32Config.fir@157187.4]
  wire [31:0] _T_1308; // @[RocketCore.scala 764:8:freechips.rocketchip.system.DefaultRV32Config.fir@157188.4]
  wire  _T_1310; // @[RocketCore.scala 766:40:freechips.rocketchip.system.DefaultRV32Config.fir@157191.4]
  wire  _T_1311; // @[RocketCore.scala 766:62:freechips.rocketchip.system.DefaultRV32Config.fir@157192.4]
  wire  _T_1313; // @[RocketCore.scala 768:43:freechips.rocketchip.system.DefaultRV32Config.fir@157195.4]
  wire  _T_1314; // @[CustomCSRs.scala 38:61:freechips.rocketchip.system.DefaultRV32Config.fir@157196.4]
  wire  _T_1321; // @[RocketCore.scala 780:45:freechips.rocketchip.system.DefaultRV32Config.fir@157212.4]
  wire  _T_1322; // @[RocketCore.scala 780:60:freechips.rocketchip.system.DefaultRV32Config.fir@157213.4]
  wire  _T_1323; // @[RocketCore.scala 780:81:freechips.rocketchip.system.DefaultRV32Config.fir@157214.4]
  wire  _T_1324; // @[RocketCore.scala 780:90:freechips.rocketchip.system.DefaultRV32Config.fir@157215.4]
  wire  _T_1326; // @[RocketCore.scala 783:23:freechips.rocketchip.system.DefaultRV32Config.fir@157219.4]
  wire  _T_1327; // @[RocketCore.scala 783:53:freechips.rocketchip.system.DefaultRV32Config.fir@157220.4]
  wire  _T_1328; // @[RocketCore.scala 783:41:freechips.rocketchip.system.DefaultRV32Config.fir@157221.4]
  wire [4:0] _T_1329; // @[RocketCore.scala 784:39:freechips.rocketchip.system.DefaultRV32Config.fir@157222.4]
  wire [4:0] _T_1331; // @[RocketCore.scala 784:62:freechips.rocketchip.system.DefaultRV32Config.fir@157224.4]
  wire  _T_1332; // @[RocketCore.scala 784:62:freechips.rocketchip.system.DefaultRV32Config.fir@157225.4]
  wire  _T_1333; // @[RocketCore.scala 784:23:freechips.rocketchip.system.DefaultRV32Config.fir@157226.4]
  wire [1:0] _T_1336; // @[RocketCore.scala 784:8:freechips.rocketchip.system.DefaultRV32Config.fir@157229.4]
  wire [1:0] _T_1338; // @[RocketCore.scala 788:74:freechips.rocketchip.system.DefaultRV32Config.fir@157233.4]
  wire [31:0] _GEN_256; // @[RocketCore.scala 788:69:freechips.rocketchip.system.DefaultRV32Config.fir@157234.4]
  wire [31:0] _T_1341; // @[RocketCore.scala 789:35:freechips.rocketchip.system.DefaultRV32Config.fir@157237.4]
  wire [31:0] _T_1342; // @[RocketCore.scala 789:66:freechips.rocketchip.system.DefaultRV32Config.fir@157238.4]
  wire [5:0] ex_dcache_tag; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@157266.4]
  wire  _T_1351; // @[RocketCore.scala 816:42:freechips.rocketchip.system.DefaultRV32Config.fir@157270.4]
  wire  _T_1354; // @[RocketCore.scala 820:35:freechips.rocketchip.system.DefaultRV32Config.fir@157277.4]
  wire [4:0] _T_1369; // @[RocketCore.scala 828:58:freechips.rocketchip.system.DefaultRV32Config.fir@157306.4]
  wire [4:0] _T_1370; // @[RocketCore.scala 828:58:freechips.rocketchip.system.DefaultRV32Config.fir@157308.4]
  wire [4:0] _T_1372; // @[RocketCore.scala 833:28:freechips.rocketchip.system.DefaultRV32Config.fir@157315.4]
  wire  _T_1373; // @[RocketCore.scala 833:62:freechips.rocketchip.system.DefaultRV32Config.fir@157316.4]
  wire  _T_1374; // @[RocketCore.scala 833:68:freechips.rocketchip.system.DefaultRV32Config.fir@157317.4]
  wire  unpause; // @[RocketCore.scala 833:92:freechips.rocketchip.system.DefaultRV32Config.fir@157318.4]
  wire [31:0] coreMonitorBundle_timer; // @[RocketCore.scala 859:41:freechips.rocketchip.system.DefaultRV32Config.fir@157334.4]
  wire  _T_1380; // @[RocketCore.scala 860:55:freechips.rocketchip.system.DefaultRV32Config.fir@157336.4]
  wire  coreMonitorBundle_valid; // @[RocketCore.scala 860:52:freechips.rocketchip.system.DefaultRV32Config.fir@157337.4]
  wire [31:0] coreMonitorBundle_pc; // @[RocketCore.scala 861:48:freechips.rocketchip.system.DefaultRV32Config.fir@157339.4]
  wire  _T_1384; // @[RocketCore.scala 862:44:freechips.rocketchip.system.DefaultRV32Config.fir@157342.4]
  wire  _T_1385; // @[RocketCore.scala 862:41:freechips.rocketchip.system.DefaultRV32Config.fir@157343.4]
  wire [4:0] coreMonitorBundle_wrdst; // @[RocketCore.scala 862:33:freechips.rocketchip.system.DefaultRV32Config.fir@157344.4]
  reg [31:0] _T_1388; // @[RocketCore.scala 866:43:freechips.rocketchip.system.DefaultRV32Config.fir@157350.4]
  reg [31:0] _RAND_93;
  reg [31:0] coreMonitorBundle_rd0val; // @[RocketCore.scala 866:34:freechips.rocketchip.system.DefaultRV32Config.fir@157352.4]
  reg [31:0] _RAND_94;
  reg [31:0] _T_1391; // @[RocketCore.scala 868:43:freechips.rocketchip.system.DefaultRV32Config.fir@157357.4]
  reg [31:0] _RAND_95;
  reg [31:0] coreMonitorBundle_rd1val; // @[RocketCore.scala 868:34:freechips.rocketchip.system.DefaultRV32Config.fir@157359.4]
  reg [31:0] _RAND_96;
  wire [4:0] _T_1393; // @[RocketCore.scala 901:13:freechips.rocketchip.system.DefaultRV32Config.fir@157363.4]
  wire  _T_1395; // @[RocketCore.scala 898:11:freechips.rocketchip.system.DefaultRV32Config.fir@157365.4]
  wire [31:0] coreMonitorBundle_inst; // @[RocketCore.scala 854:31:freechips.rocketchip.system.DefaultRV32Config.fir@157329.4 RocketCore.scala 869:26:freechips.rocketchip.system.DefaultRV32Config.fir@157362.4]
  IBuf ibuf ( // @[RocketCore.scala 238:20:freechips.rocketchip.system.DefaultRV32Config.fir@155489.4]
    .clock(ibuf_clock),
    .reset(ibuf_reset),
    .io_imem_ready(ibuf_io_imem_ready),
    .io_imem_valid(ibuf_io_imem_valid),
    .io_imem_bits_btb_taken(ibuf_io_imem_bits_btb_taken),
    .io_imem_bits_btb_bridx(ibuf_io_imem_bits_btb_bridx),
    .io_imem_bits_btb_entry(ibuf_io_imem_bits_btb_entry),
    .io_imem_bits_btb_bht_history(ibuf_io_imem_bits_btb_bht_history),
    .io_imem_bits_pc(ibuf_io_imem_bits_pc),
    .io_imem_bits_data(ibuf_io_imem_bits_data),
    .io_imem_bits_xcpt_pf_inst(ibuf_io_imem_bits_xcpt_pf_inst),
    .io_imem_bits_xcpt_ae_inst(ibuf_io_imem_bits_xcpt_ae_inst),
    .io_imem_bits_replay(ibuf_io_imem_bits_replay),
    .io_kill(ibuf_io_kill),
    .io_pc(ibuf_io_pc),
    .io_btb_resp_entry(ibuf_io_btb_resp_entry),
    .io_btb_resp_bht_history(ibuf_io_btb_resp_bht_history),
    .io_inst_0_ready(ibuf_io_inst_0_ready),
    .io_inst_0_valid(ibuf_io_inst_0_valid),
    .io_inst_0_bits_xcpt0_pf_inst(ibuf_io_inst_0_bits_xcpt0_pf_inst),
    .io_inst_0_bits_xcpt0_ae_inst(ibuf_io_inst_0_bits_xcpt0_ae_inst),
    .io_inst_0_bits_xcpt1_pf_inst(ibuf_io_inst_0_bits_xcpt1_pf_inst),
    .io_inst_0_bits_xcpt1_ae_inst(ibuf_io_inst_0_bits_xcpt1_ae_inst),
    .io_inst_0_bits_replay(ibuf_io_inst_0_bits_replay),
    .io_inst_0_bits_rvc(ibuf_io_inst_0_bits_rvc),
    .io_inst_0_bits_inst_bits(ibuf_io_inst_0_bits_inst_bits),
    .io_inst_0_bits_inst_rd(ibuf_io_inst_0_bits_inst_rd),
    .io_inst_0_bits_inst_rs1(ibuf_io_inst_0_bits_inst_rs1),
    .io_inst_0_bits_inst_rs2(ibuf_io_inst_0_bits_inst_rs2),
    .io_inst_0_bits_inst_rs3(ibuf_io_inst_0_bits_inst_rs3),
    .io_inst_0_bits_raw(ibuf_io_inst_0_bits_raw)
  );
  CSRFile csr ( // @[RocketCore.scala 266:19:freechips.rocketchip.system.DefaultRV32Config.fir@156003.4]
    .clock(csr_clock),
    .reset(csr_reset),
    .io_ungated_clock(csr_io_ungated_clock),
    .io_interrupts_debug(csr_io_interrupts_debug),
    .io_interrupts_mtip(csr_io_interrupts_mtip),
    .io_interrupts_msip(csr_io_interrupts_msip),
    .io_interrupts_meip(csr_io_interrupts_meip),
    .io_interrupts_seip(csr_io_interrupts_seip),
    .io_rw_addr(csr_io_rw_addr),
    .io_rw_cmd(csr_io_rw_cmd),
    .io_rw_rdata(csr_io_rw_rdata),
    .io_rw_wdata(csr_io_rw_wdata),
    .io_decode_0_csr(csr_io_decode_0_csr),
    .io_decode_0_fp_illegal(csr_io_decode_0_fp_illegal),
    .io_decode_0_fp_csr(csr_io_decode_0_fp_csr),
    .io_decode_0_read_illegal(csr_io_decode_0_read_illegal),
    .io_decode_0_write_illegal(csr_io_decode_0_write_illegal),
    .io_decode_0_write_flush(csr_io_decode_0_write_flush),
    .io_decode_0_system_illegal(csr_io_decode_0_system_illegal),
    .io_csr_stall(csr_io_csr_stall),
    .io_eret(csr_io_eret),
    .io_singleStep(csr_io_singleStep),
    .io_status_debug(csr_io_status_debug),
    .io_status_cease(csr_io_status_cease),
    .io_status_isa(csr_io_status_isa),
    .io_status_dprv(csr_io_status_dprv),
    .io_status_prv(csr_io_status_prv),
    .io_status_sd(csr_io_status_sd),
    .io_status_zero2(csr_io_status_zero2),
    .io_status_sxl(csr_io_status_sxl),
    .io_status_uxl(csr_io_status_uxl),
    .io_status_sd_rv32(csr_io_status_sd_rv32),
    .io_status_zero1(csr_io_status_zero1),
    .io_status_vs(csr_io_status_vs),
    .io_status_tsr(csr_io_status_tsr),
    .io_status_tw(csr_io_status_tw),
    .io_status_tvm(csr_io_status_tvm),
    .io_status_mxr(csr_io_status_mxr),
    .io_status_sum(csr_io_status_sum),
    .io_status_mprv(csr_io_status_mprv),
    .io_status_xs(csr_io_status_xs),
    .io_status_fs(csr_io_status_fs),
    .io_status_mpp(csr_io_status_mpp),
    .io_status_hpp(csr_io_status_hpp),
    .io_status_spp(csr_io_status_spp),
    .io_status_mpie(csr_io_status_mpie),
    .io_status_hpie(csr_io_status_hpie),
    .io_status_spie(csr_io_status_spie),
    .io_status_upie(csr_io_status_upie),
    .io_status_mie(csr_io_status_mie),
    .io_status_hie(csr_io_status_hie),
    .io_status_sie(csr_io_status_sie),
    .io_status_uie(csr_io_status_uie),
    .io_ptbr_mode(csr_io_ptbr_mode),
    .io_ptbr_ppn(csr_io_ptbr_ppn),
    .io_evec(csr_io_evec),
    .io_exception(csr_io_exception),
    .io_retire(csr_io_retire),
    .io_cause(csr_io_cause),
    .io_pc(csr_io_pc),
    .io_tval(csr_io_tval),
    .io_time(csr_io_time),
    .io_fcsr_rm(csr_io_fcsr_rm),
    .io_fcsr_flags_valid(csr_io_fcsr_flags_valid),
    .io_fcsr_flags_bits(csr_io_fcsr_flags_bits),
    .io_interrupt(csr_io_interrupt),
    .io_interrupt_cause(csr_io_interrupt_cause),
    .io_bp_0_control_action(csr_io_bp_0_control_action),
    .io_bp_0_control_tmatch(csr_io_bp_0_control_tmatch),
    .io_bp_0_control_m(csr_io_bp_0_control_m),
    .io_bp_0_control_s(csr_io_bp_0_control_s),
    .io_bp_0_control_u(csr_io_bp_0_control_u),
    .io_bp_0_control_x(csr_io_bp_0_control_x),
    .io_bp_0_control_w(csr_io_bp_0_control_w),
    .io_bp_0_control_r(csr_io_bp_0_control_r),
    .io_bp_0_address(csr_io_bp_0_address),
    .io_pmp_0_cfg_l(csr_io_pmp_0_cfg_l),
    .io_pmp_0_cfg_a(csr_io_pmp_0_cfg_a),
    .io_pmp_0_cfg_x(csr_io_pmp_0_cfg_x),
    .io_pmp_0_cfg_w(csr_io_pmp_0_cfg_w),
    .io_pmp_0_cfg_r(csr_io_pmp_0_cfg_r),
    .io_pmp_0_addr(csr_io_pmp_0_addr),
    .io_pmp_0_mask(csr_io_pmp_0_mask),
    .io_pmp_1_cfg_l(csr_io_pmp_1_cfg_l),
    .io_pmp_1_cfg_a(csr_io_pmp_1_cfg_a),
    .io_pmp_1_cfg_x(csr_io_pmp_1_cfg_x),
    .io_pmp_1_cfg_w(csr_io_pmp_1_cfg_w),
    .io_pmp_1_cfg_r(csr_io_pmp_1_cfg_r),
    .io_pmp_1_addr(csr_io_pmp_1_addr),
    .io_pmp_1_mask(csr_io_pmp_1_mask),
    .io_pmp_2_cfg_l(csr_io_pmp_2_cfg_l),
    .io_pmp_2_cfg_a(csr_io_pmp_2_cfg_a),
    .io_pmp_2_cfg_x(csr_io_pmp_2_cfg_x),
    .io_pmp_2_cfg_w(csr_io_pmp_2_cfg_w),
    .io_pmp_2_cfg_r(csr_io_pmp_2_cfg_r),
    .io_pmp_2_addr(csr_io_pmp_2_addr),
    .io_pmp_2_mask(csr_io_pmp_2_mask),
    .io_pmp_3_cfg_l(csr_io_pmp_3_cfg_l),
    .io_pmp_3_cfg_a(csr_io_pmp_3_cfg_a),
    .io_pmp_3_cfg_x(csr_io_pmp_3_cfg_x),
    .io_pmp_3_cfg_w(csr_io_pmp_3_cfg_w),
    .io_pmp_3_cfg_r(csr_io_pmp_3_cfg_r),
    .io_pmp_3_addr(csr_io_pmp_3_addr),
    .io_pmp_3_mask(csr_io_pmp_3_mask),
    .io_pmp_4_cfg_l(csr_io_pmp_4_cfg_l),
    .io_pmp_4_cfg_a(csr_io_pmp_4_cfg_a),
    .io_pmp_4_cfg_x(csr_io_pmp_4_cfg_x),
    .io_pmp_4_cfg_w(csr_io_pmp_4_cfg_w),
    .io_pmp_4_cfg_r(csr_io_pmp_4_cfg_r),
    .io_pmp_4_addr(csr_io_pmp_4_addr),
    .io_pmp_4_mask(csr_io_pmp_4_mask),
    .io_pmp_5_cfg_l(csr_io_pmp_5_cfg_l),
    .io_pmp_5_cfg_a(csr_io_pmp_5_cfg_a),
    .io_pmp_5_cfg_x(csr_io_pmp_5_cfg_x),
    .io_pmp_5_cfg_w(csr_io_pmp_5_cfg_w),
    .io_pmp_5_cfg_r(csr_io_pmp_5_cfg_r),
    .io_pmp_5_addr(csr_io_pmp_5_addr),
    .io_pmp_5_mask(csr_io_pmp_5_mask),
    .io_pmp_6_cfg_l(csr_io_pmp_6_cfg_l),
    .io_pmp_6_cfg_a(csr_io_pmp_6_cfg_a),
    .io_pmp_6_cfg_x(csr_io_pmp_6_cfg_x),
    .io_pmp_6_cfg_w(csr_io_pmp_6_cfg_w),
    .io_pmp_6_cfg_r(csr_io_pmp_6_cfg_r),
    .io_pmp_6_addr(csr_io_pmp_6_addr),
    .io_pmp_6_mask(csr_io_pmp_6_mask),
    .io_pmp_7_cfg_l(csr_io_pmp_7_cfg_l),
    .io_pmp_7_cfg_a(csr_io_pmp_7_cfg_a),
    .io_pmp_7_cfg_x(csr_io_pmp_7_cfg_x),
    .io_pmp_7_cfg_w(csr_io_pmp_7_cfg_w),
    .io_pmp_7_cfg_r(csr_io_pmp_7_cfg_r),
    .io_pmp_7_addr(csr_io_pmp_7_addr),
    .io_pmp_7_mask(csr_io_pmp_7_mask),
    .io_inst_0(csr_io_inst_0),
    .io_trace_0_valid(csr_io_trace_0_valid),
    .io_trace_0_iaddr(csr_io_trace_0_iaddr),
    .io_trace_0_insn(csr_io_trace_0_insn),
    .io_trace_0_exception(csr_io_trace_0_exception)
  );
  BreakpointUnit bpu ( // @[RocketCore.scala 307:19:freechips.rocketchip.system.DefaultRV32Config.fir@156107.4]
    .io_status_debug(bpu_io_status_debug),
    .io_status_prv(bpu_io_status_prv),
    .io_bp_0_control_action(bpu_io_bp_0_control_action),
    .io_bp_0_control_tmatch(bpu_io_bp_0_control_tmatch),
    .io_bp_0_control_m(bpu_io_bp_0_control_m),
    .io_bp_0_control_s(bpu_io_bp_0_control_s),
    .io_bp_0_control_u(bpu_io_bp_0_control_u),
    .io_bp_0_control_x(bpu_io_bp_0_control_x),
    .io_bp_0_control_w(bpu_io_bp_0_control_w),
    .io_bp_0_control_r(bpu_io_bp_0_control_r),
    .io_bp_0_address(bpu_io_bp_0_address),
    .io_pc(bpu_io_pc),
    .io_ea(bpu_io_ea),
    .io_xcpt_if(bpu_io_xcpt_if),
    .io_xcpt_ld(bpu_io_xcpt_ld),
    .io_xcpt_st(bpu_io_xcpt_st),
    .io_debug_if(bpu_io_debug_if),
    .io_debug_ld(bpu_io_debug_ld),
    .io_debug_st(bpu_io_debug_st)
  );
  ALU alu ( // @[RocketCore.scala 367:19:freechips.rocketchip.system.DefaultRV32Config.fir@156262.4]
    .io_fn(alu_io_fn),
    .io_in2(alu_io_in2),
    .io_in1(alu_io_in1),
    .io_out(alu_io_out),
    .io_adder_out(alu_io_adder_out),
    .io_cmp_out(alu_io_cmp_out)
  );
  MulDiv div ( // @[RocketCore.scala 391:19:freechips.rocketchip.system.DefaultRV32Config.fir@156272.4]
    .clock(div_clock),
    .reset(div_reset),
    .io_req_ready(div_io_req_ready),
    .io_req_valid(div_io_req_valid),
    .io_req_bits_fn(div_io_req_bits_fn),
    .io_req_bits_in1(div_io_req_bits_in1),
    .io_req_bits_in2(div_io_req_bits_in2),
    .io_req_bits_tag(div_io_req_bits_tag),
    .io_kill(div_io_kill),
    .io_resp_ready(div_io_resp_ready),
    .io_resp_valid(div_io_resp_valid),
    .io_resp_bits_data(div_io_resp_bits_data),
    .io_resp_bits_tag(div_io_resp_bits_tag)
  );
  PlusArgTimeout PlusArgTimeout ( // @[PlusArg.scala 53:11:freechips.rocketchip.system.DefaultRV32Config.fir@157369.4]
    .clock(PlusArgTimeout_clock),
    .reset(PlusArgTimeout_reset),
    .io_count(PlusArgTimeout_io_count)
  );
  assign _T_383__T_388_addr = ~ id_raddr1;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign _T_383__T_388_data = _T_383[_T_383__T_388_addr]; // @[RocketCore.scala 956:15:freechips.rocketchip.system.DefaultRV32Config.fir@155915.4]
  `else
  assign _T_383__T_388_data = _T_383__T_388_addr >= 5'h1f ? _RAND_1[31:0] : _T_383[_T_383__T_388_addr]; // @[RocketCore.scala 956:15:freechips.rocketchip.system.DefaultRV32Config.fir@155915.4]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign _T_383__T_394_addr = ~ id_raddr2;
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign _T_383__T_394_data = _T_383[_T_383__T_394_addr]; // @[RocketCore.scala 956:15:freechips.rocketchip.system.DefaultRV32Config.fir@155915.4]
  `else
  assign _T_383__T_394_data = _T_383__T_394_addr >= 5'h1f ? _RAND_2[31:0] : _T_383[_T_383__T_394_addr]; // @[RocketCore.scala 956:15:freechips.rocketchip.system.DefaultRV32Config.fir@155915.4]
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  assign _T_383__T_1074_data = _T_1065 ? io_dmem_resp_bits_data : _T_1070;
  assign _T_383__T_1074_addr = ~ rf_waddr;
  assign _T_383__T_1074_mask = 1'h1;
  assign _T_383__T_1074_en = rf_wen & _T_1071;
  assign replay_wb_common = io_dmem_s2_nack | wb_reg_replay; // @[RocketCore.scala 614:42:freechips.rocketchip.system.DefaultRV32Config.fir@156825.4]
  assign _T_1015 = wb_reg_valid & wb_ctrl_mem; // @[RocketCore.scala 592:19:freechips.rocketchip.system.DefaultRV32Config.fir@156784.4]
  assign _T_1016 = _T_1015 & io_dmem_s2_xcpt_ma_st; // @[RocketCore.scala 592:34:freechips.rocketchip.system.DefaultRV32Config.fir@156785.4]
  assign _T_1027 = wb_reg_xcpt | _T_1016; // @[RocketCore.scala 916:26:freechips.rocketchip.system.DefaultRV32Config.fir@156796.4]
  assign _T_1018 = _T_1015 & io_dmem_s2_xcpt_ma_ld; // @[RocketCore.scala 593:34:freechips.rocketchip.system.DefaultRV32Config.fir@156787.4]
  assign _T_1028 = _T_1027 | _T_1018; // @[RocketCore.scala 916:26:freechips.rocketchip.system.DefaultRV32Config.fir@156797.4]
  assign _T_1020 = _T_1015 & io_dmem_s2_xcpt_pf_st; // @[RocketCore.scala 594:34:freechips.rocketchip.system.DefaultRV32Config.fir@156789.4]
  assign _T_1029 = _T_1028 | _T_1020; // @[RocketCore.scala 916:26:freechips.rocketchip.system.DefaultRV32Config.fir@156798.4]
  assign _T_1022 = _T_1015 & io_dmem_s2_xcpt_pf_ld; // @[RocketCore.scala 595:34:freechips.rocketchip.system.DefaultRV32Config.fir@156791.4]
  assign _T_1030 = _T_1029 | _T_1022; // @[RocketCore.scala 916:26:freechips.rocketchip.system.DefaultRV32Config.fir@156799.4]
  assign _T_1024 = _T_1015 & io_dmem_s2_xcpt_ae_st; // @[RocketCore.scala 596:34:freechips.rocketchip.system.DefaultRV32Config.fir@156793.4]
  assign _T_1031 = _T_1030 | _T_1024; // @[RocketCore.scala 916:26:freechips.rocketchip.system.DefaultRV32Config.fir@156800.4]
  assign _T_1026 = _T_1015 & io_dmem_s2_xcpt_ae_ld; // @[RocketCore.scala 597:34:freechips.rocketchip.system.DefaultRV32Config.fir@156795.4]
  assign wb_xcpt = _T_1031 | _T_1026; // @[RocketCore.scala 916:26:freechips.rocketchip.system.DefaultRV32Config.fir@156801.4]
  assign _T_1053 = replay_wb_common | wb_xcpt; // @[RocketCore.scala 617:27:freechips.rocketchip.system.DefaultRV32Config.fir@156830.4]
  assign _T_1054 = _T_1053 | csr_io_eret; // @[RocketCore.scala 617:38:freechips.rocketchip.system.DefaultRV32Config.fir@156831.4]
  assign take_pc_wb = _T_1054 | wb_reg_flush_pipe; // @[RocketCore.scala 617:53:freechips.rocketchip.system.DefaultRV32Config.fir@156832.4]
  assign _T_717 = ex_reg_valid | ex_reg_replay; // @[RocketCore.scala 467:34:freechips.rocketchip.system.DefaultRV32Config.fir@156400.4]
  assign ex_pc_valid = _T_717 | ex_reg_xcpt_interrupt; // @[RocketCore.scala 467:51:freechips.rocketchip.system.DefaultRV32Config.fir@156401.4]
  assign _T_873 = mem_ctrl_jalr | mem_reg_sfence; // @[RocketCore.scala 490:36:freechips.rocketchip.system.DefaultRV32Config.fir@156567.4]
  assign _T_874 = $signed(mem_reg_wdata); // @[RocketCore.scala 490:106:freechips.rocketchip.system.DefaultRV32Config.fir@156568.4]
  assign _T_742 = $signed(mem_reg_pc); // @[RocketCore.scala 486:34:freechips.rocketchip.system.DefaultRV32Config.fir@156435.4]
  assign _T_743 = mem_ctrl_branch & mem_br_taken; // @[RocketCore.scala 487:25:freechips.rocketchip.system.DefaultRV32Config.fir@156436.4]
  assign _T_745 = mem_reg_inst[31]; // @[RocketCore.scala 978:48:freechips.rocketchip.system.DefaultRV32Config.fir@156438.4]
  assign _T_746 = $signed(_T_745); // @[RocketCore.scala 978:53:freechips.rocketchip.system.DefaultRV32Config.fir@156439.4]
  assign _T_801 = $unsigned(_T_746); // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@156494.4]
  assign _T_751 = {11{_T_746}}; // @[RocketCore.scala 979:21:freechips.rocketchip.system.DefaultRV32Config.fir@156444.4]
  assign _T_800 = $unsigned(_T_751); // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@156493.4]
  assign _T_755 = mem_reg_inst[19:12]; // @[RocketCore.scala 980:65:freechips.rocketchip.system.DefaultRV32Config.fir@156448.4]
  assign _T_756 = $signed(_T_755); // @[RocketCore.scala 980:73:freechips.rocketchip.system.DefaultRV32Config.fir@156449.4]
  assign _T_757 = {8{_T_746}}; // @[RocketCore.scala 980:21:freechips.rocketchip.system.DefaultRV32Config.fir@156450.4]
  assign _T_798 = $unsigned(_T_757); // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@156491.4]
  assign _T_762 = mem_reg_inst[20]; // @[RocketCore.scala 982:39:freechips.rocketchip.system.DefaultRV32Config.fir@156455.4]
  assign _T_763 = $signed(_T_762); // @[RocketCore.scala 982:44:freechips.rocketchip.system.DefaultRV32Config.fir@156456.4]
  assign _T_765 = mem_reg_inst[7]; // @[RocketCore.scala 983:39:freechips.rocketchip.system.DefaultRV32Config.fir@156458.4]
  assign _T_766 = $signed(_T_765); // @[RocketCore.scala 983:43:freechips.rocketchip.system.DefaultRV32Config.fir@156459.4]
  assign _T_797 = $unsigned(_T_766); // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@156490.4]
  assign _T_773 = mem_reg_inst[30:25]; // @[RocketCore.scala 984:66:freechips.rocketchip.system.DefaultRV32Config.fir@156466.4]
  assign _T_779 = mem_reg_inst[11:8]; // @[RocketCore.scala 986:57:freechips.rocketchip.system.DefaultRV32Config.fir@156472.4]
  assign _T_782 = mem_reg_inst[24:21]; // @[RocketCore.scala 987:52:freechips.rocketchip.system.DefaultRV32Config.fir@156475.4]
  assign _T_804 = {_T_801,_T_800,_T_798,_T_797,_T_773,_T_779,1'h0}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@156497.4]
  assign _T_805 = $signed(_T_804); // @[RocketCore.scala 992:53:freechips.rocketchip.system.DefaultRV32Config.fir@156498.4]
  assign _T_860 = $unsigned(_T_756); // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@156553.4]
  assign _T_859 = $unsigned(_T_763); // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@156552.4]
  assign _T_866 = {_T_801,_T_800,_T_860,_T_859,_T_773,_T_782,1'h0}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@156559.4]
  assign _T_867 = $signed(_T_866); // @[RocketCore.scala 992:53:freechips.rocketchip.system.DefaultRV32Config.fir@156560.4]
  assign _T_868 = mem_reg_rvc ? $signed(4'sh2) : $signed(4'sh4); // @[RocketCore.scala 489:8:freechips.rocketchip.system.DefaultRV32Config.fir@156561.4]
  assign _T_869 = mem_ctrl_jal ? $signed(_T_867) : $signed({{28{_T_868[3]}},_T_868}); // @[RocketCore.scala 488:8:freechips.rocketchip.system.DefaultRV32Config.fir@156562.4]
  assign _T_870 = _T_743 ? $signed(_T_805) : $signed(_T_869); // @[RocketCore.scala 487:8:freechips.rocketchip.system.DefaultRV32Config.fir@156563.4]
  assign _T_872 = $signed(_T_742) + $signed(_T_870); // @[RocketCore.scala 486:41:freechips.rocketchip.system.DefaultRV32Config.fir@156565.4]
  assign mem_br_target = $signed(_T_872); // @[RocketCore.scala 486:41:freechips.rocketchip.system.DefaultRV32Config.fir@156566.4]
  assign _T_875 = _T_873 ? $signed(_T_874) : $signed(mem_br_target); // @[RocketCore.scala 490:21:freechips.rocketchip.system.DefaultRV32Config.fir@156569.4]
  assign _T_876 = $signed(_T_875) & $signed(-32'sh2); // @[RocketCore.scala 490:129:freechips.rocketchip.system.DefaultRV32Config.fir@156570.4]
  assign _T_877 = $signed(_T_876); // @[RocketCore.scala 490:129:freechips.rocketchip.system.DefaultRV32Config.fir@156571.4]
  assign mem_npc = $unsigned(_T_877); // @[RocketCore.scala 490:141:freechips.rocketchip.system.DefaultRV32Config.fir@156572.4]
  assign _T_878 = mem_npc != ex_reg_pc; // @[RocketCore.scala 492:30:freechips.rocketchip.system.DefaultRV32Config.fir@156573.4]
  assign _T_879 = ibuf_io_inst_0_valid | ibuf_io_imem_valid; // @[RocketCore.scala 493:31:freechips.rocketchip.system.DefaultRV32Config.fir@156574.4]
  assign _T_880 = mem_npc != ibuf_io_pc; // @[RocketCore.scala 493:62:freechips.rocketchip.system.DefaultRV32Config.fir@156575.4]
  assign _T_881 = _T_879 ? _T_880 : 1'h1; // @[RocketCore.scala 493:8:freechips.rocketchip.system.DefaultRV32Config.fir@156576.4]
  assign mem_wrong_npc = ex_pc_valid ? _T_878 : _T_881; // @[RocketCore.scala 492:8:freechips.rocketchip.system.DefaultRV32Config.fir@156577.4]
  assign _T_897 = mem_wrong_npc | mem_reg_sfence; // @[RocketCore.scala 500:54:freechips.rocketchip.system.DefaultRV32Config.fir@156598.4]
  assign take_pc_mem = mem_reg_valid & _T_897; // @[RocketCore.scala 500:32:freechips.rocketchip.system.DefaultRV32Config.fir@156599.4]
  assign take_pc_mem_wb = take_pc_wb | take_pc_mem; // @[RocketCore.scala 234:35:freechips.rocketchip.system.DefaultRV32Config.fir@155488.4]
  assign _T = ibuf_io_inst_0_bits_inst_bits & 32'h207f; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155497.4]
  assign _T_1 = _T == 32'h3; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155498.4]
  assign _T_2 = ibuf_io_inst_0_bits_inst_bits & 32'h607f; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155499.4]
  assign _T_3 = _T_2 == 32'hf; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155500.4]
  assign _T_4 = ibuf_io_inst_0_bits_inst_bits & 32'h5f; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155501.4]
  assign _T_5 = _T_4 == 32'h17; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155502.4]
  assign _T_6 = ibuf_io_inst_0_bits_inst_bits & 32'hfc00007f; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155503.4]
  assign _T_7 = _T_6 == 32'h33; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155504.4]
  assign _T_8 = ibuf_io_inst_0_bits_inst_bits & 32'hbe00707f; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155505.4]
  assign _T_9 = _T_8 == 32'h33; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155506.4]
  assign _T_10 = ibuf_io_inst_0_bits_inst_bits & 32'h6000073; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155507.4]
  assign _T_11 = _T_10 == 32'h43; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155508.4]
  assign _T_12 = ibuf_io_inst_0_bits_inst_bits & 32'he600007f; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155509.4]
  assign _T_13 = _T_12 == 32'h53; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155510.4]
  assign _T_14 = ibuf_io_inst_0_bits_inst_bits & 32'h707b; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155511.4]
  assign _T_15 = _T_14 == 32'h63; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155512.4]
  assign _T_16 = ibuf_io_inst_0_bits_inst_bits & 32'h7f; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155513.4]
  assign _T_17 = _T_16 == 32'h6f; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155514.4]
  assign _T_18 = ibuf_io_inst_0_bits_inst_bits & 32'hffefffff; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155515.4]
  assign _T_19 = _T_18 == 32'h73; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155516.4]
  assign _T_20 = ibuf_io_inst_0_bits_inst_bits & 32'hfe00305f; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155517.4]
  assign _T_21 = _T_20 == 32'h1013; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155518.4]
  assign _T_22 = ibuf_io_inst_0_bits_inst_bits & 32'h705b; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155519.4]
  assign _T_23 = _T_22 == 32'h2003; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155520.4]
  assign _T_25 = _T == 32'h2013; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155522.4]
  assign _T_26 = ibuf_io_inst_0_bits_inst_bits & 32'h1800707f; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155523.4]
  assign _T_27 = _T_26 == 32'h202f; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155524.4]
  assign _T_29 = _T == 32'h2073; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155526.4]
  assign _T_30 = ibuf_io_inst_0_bits_inst_bits & 32'hbe00705f; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155527.4]
  assign _T_31 = _T_30 == 32'h5013; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155528.4]
  assign _T_32 = ibuf_io_inst_0_bits_inst_bits & 32'he800707f; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155529.4]
  assign _T_33 = _T_32 == 32'h800202f; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155530.4]
  assign _T_34 = ibuf_io_inst_0_bits_inst_bits & 32'hf9f0707f; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155531.4]
  assign _T_35 = _T_34 == 32'h1000202f; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155532.4]
  assign _T_36 = ibuf_io_inst_0_bits_inst_bits & 32'hdfffffff; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155533.4]
  assign _T_37 = _T_36 == 32'h10200073; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155534.4]
  assign _T_39 = _T_36 == 32'h10500073; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155536.4]
  assign _T_40 = ibuf_io_inst_0_bits_inst_bits & 32'hfe007fff; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155537.4]
  assign _T_41 = _T_40 == 32'h12000073; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155538.4]
  assign _T_42 = ibuf_io_inst_0_bits_inst_bits & 32'hf600607f; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155539.4]
  assign _T_43 = _T_42 == 32'h20000053; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155540.4]
  assign _T_44 = ibuf_io_inst_0_bits_inst_bits & 32'h7e00607f; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155541.4]
  assign _T_45 = _T_44 == 32'h20000053; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155542.4]
  assign _T_46 = ibuf_io_inst_0_bits_inst_bits & 32'h7e00507f; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155543.4]
  assign _T_47 = _T_46 == 32'h20000053; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155544.4]
  assign _T_48 = ibuf_io_inst_0_bits_inst_bits & 32'hfff0007f; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155545.4]
  assign _T_49 = _T_48 == 32'h58000053; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155546.4]
  assign _T_50 = ibuf_io_inst_0_bits_inst_bits == 32'h7b200073; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155547.4]
  assign _T_51 = ibuf_io_inst_0_bits_inst_bits & 32'hefe0007f; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155548.4]
  assign _T_52 = _T_51 == 32'hc0000053; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155549.4]
  assign _T_53 = ibuf_io_inst_0_bits_inst_bits & 32'hfff0607f; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155550.4]
  assign _T_54 = _T_53 == 32'he0000053; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155551.4]
  assign _T_55 = ibuf_io_inst_0_bits_inst_bits & 32'heff0707f; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155552.4]
  assign _T_56 = _T_55 == 32'he0000053; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155553.4]
  assign _T_57 = ibuf_io_inst_0_bits_inst_bits & 32'h306f; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155554.4]
  assign _T_58 = _T_57 == 32'h1063; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155555.4]
  assign _T_59 = ibuf_io_inst_0_bits_inst_bits & 32'h407f; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155556.4]
  assign _T_60 = _T_59 == 32'h4063; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155557.4]
  assign _T_61 = ibuf_io_inst_0_bits_inst_bits & 32'h605f; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155558.4]
  assign _T_62 = _T_61 == 32'h3; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155559.4]
  assign _T_64 = _T_57 == 32'h3; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155561.4]
  assign _T_66 = _T_1 | _T_3; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155563.4]
  assign _T_67 = _T_66 | _T_5; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155564.4]
  assign _T_68 = _T_67 | _T_7; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155565.4]
  assign _T_69 = _T_68 | _T_9; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155566.4]
  assign _T_70 = _T_69 | _T_11; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155567.4]
  assign _T_71 = _T_70 | _T_13; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155568.4]
  assign _T_72 = _T_71 | _T_15; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155569.4]
  assign _T_73 = _T_72 | _T_17; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155570.4]
  assign _T_74 = _T_73 | _T_19; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155571.4]
  assign _T_75 = _T_74 | _T_21; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155572.4]
  assign _T_76 = _T_75 | _T_23; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155573.4]
  assign _T_77 = _T_76 | _T_25; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155574.4]
  assign _T_78 = _T_77 | _T_27; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155575.4]
  assign _T_79 = _T_78 | _T_29; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155576.4]
  assign _T_80 = _T_79 | _T_31; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155577.4]
  assign _T_81 = _T_80 | _T_33; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155578.4]
  assign _T_82 = _T_81 | _T_35; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155579.4]
  assign _T_83 = _T_82 | _T_37; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155580.4]
  assign _T_84 = _T_83 | _T_39; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155581.4]
  assign _T_85 = _T_84 | _T_41; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155582.4]
  assign _T_86 = _T_85 | _T_43; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155583.4]
  assign _T_87 = _T_86 | _T_45; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155584.4]
  assign _T_88 = _T_87 | _T_47; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155585.4]
  assign _T_89 = _T_88 | _T_49; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155586.4]
  assign _T_90 = _T_89 | _T_50; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155587.4]
  assign _T_91 = _T_90 | _T_52; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155588.4]
  assign _T_92 = _T_91 | _T_54; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155589.4]
  assign _T_93 = _T_92 | _T_56; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155590.4]
  assign _T_94 = _T_93 | _T_58; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155591.4]
  assign _T_95 = _T_94 | _T_60; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155592.4]
  assign _T_96 = _T_95 | _T_62; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155593.4]
  assign id_ctrl_legal = _T_96 | _T_64; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155594.4]
  assign _T_98 = ibuf_io_inst_0_bits_inst_bits & 32'h5c; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155595.4]
  assign _T_99 = _T_98 == 32'h4; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155596.4]
  assign _T_100 = ibuf_io_inst_0_bits_inst_bits & 32'h60; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155597.4]
  assign _T_101 = _T_100 == 32'h40; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155598.4]
  assign id_ctrl_fp = _T_99 | _T_101; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155600.4]
  assign _T_104 = ibuf_io_inst_0_bits_inst_bits & 32'h74; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155601.4]
  assign id_ctrl_branch = _T_104 == 32'h60; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155602.4]
  assign _T_107 = ibuf_io_inst_0_bits_inst_bits & 32'h68; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155604.4]
  assign id_ctrl_jal = _T_107 == 32'h68; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155605.4]
  assign _T_110 = ibuf_io_inst_0_bits_inst_bits & 32'h203c; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155607.4]
  assign id_ctrl_jalr = _T_110 == 32'h24; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155608.4]
  assign _T_113 = ibuf_io_inst_0_bits_inst_bits & 32'h64; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155610.4]
  assign _T_114 = _T_113 == 32'h20; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155611.4]
  assign _T_115 = ibuf_io_inst_0_bits_inst_bits & 32'h34; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155612.4]
  assign _T_116 = _T_115 == 32'h20; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155613.4]
  assign _T_117 = ibuf_io_inst_0_bits_inst_bits & 32'h2048; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155614.4]
  assign id_ctrl_amo = _T_117 == 32'h2008; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155615.4]
  assign _T_119 = ibuf_io_inst_0_bits_inst_bits & 32'h42003044; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155616.4]
  assign _T_120 = _T_119 == 32'h2000040; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155617.4]
  assign _T_122 = _T_114 | _T_116; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155619.4]
  assign _T_123 = _T_122 | id_ctrl_amo; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155620.4]
  assign id_ctrl_rxs2 = _T_123 | _T_120; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155621.4]
  assign _T_125 = ibuf_io_inst_0_bits_inst_bits & 32'h44; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155622.4]
  assign _T_126 = _T_125 == 32'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155623.4]
  assign _T_127 = ibuf_io_inst_0_bits_inst_bits & 32'h4024; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155624.4]
  assign _T_128 = _T_127 == 32'h20; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155625.4]
  assign _T_129 = ibuf_io_inst_0_bits_inst_bits & 32'h38; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155626.4]
  assign _T_130 = _T_129 == 32'h20; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155627.4]
  assign _T_131 = ibuf_io_inst_0_bits_inst_bits & 32'h2050; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155628.4]
  assign _T_132 = _T_131 == 32'h2000; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155629.4]
  assign _T_133 = ibuf_io_inst_0_bits_inst_bits & 32'h90000034; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155630.4]
  assign _T_134 = _T_133 == 32'h90000010; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155631.4]
  assign _T_136 = _T_126 | _T_128; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155633.4]
  assign _T_137 = _T_136 | _T_130; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155634.4]
  assign _T_138 = _T_137 | _T_132; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155635.4]
  assign id_ctrl_rxs1 = _T_138 | _T_134; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155636.4]
  assign _T_140 = ibuf_io_inst_0_bits_inst_bits & 32'h58; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155637.4]
  assign _T_141 = _T_140 == 32'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155638.4]
  assign _T_142 = ibuf_io_inst_0_bits_inst_bits & 32'h20; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155639.4]
  assign _T_143 = _T_142 == 32'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155640.4]
  assign _T_144 = ibuf_io_inst_0_bits_inst_bits & 32'hc; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155641.4]
  assign _T_145 = _T_144 == 32'h4; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155642.4]
  assign _T_146 = ibuf_io_inst_0_bits_inst_bits & 32'h48; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155643.4]
  assign _T_147 = _T_146 == 32'h48; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155644.4]
  assign _T_148 = ibuf_io_inst_0_bits_inst_bits & 32'h4050; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155645.4]
  assign _T_149 = _T_148 == 32'h4050; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155646.4]
  assign _T_151 = _T_141 | _T_143; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155648.4]
  assign _T_152 = _T_151 | _T_145; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155649.4]
  assign _T_153 = _T_152 | _T_147; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155650.4]
  assign _T_154 = _T_153 | _T_149; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155651.4]
  assign _T_156 = _T_146 == 32'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155653.4]
  assign _T_157 = ibuf_io_inst_0_bits_inst_bits & 32'h18; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155654.4]
  assign _T_158 = _T_157 == 32'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155655.4]
  assign _T_159 = ibuf_io_inst_0_bits_inst_bits & 32'h4008; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155656.4]
  assign _T_160 = _T_159 == 32'h4000; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155657.4]
  assign _T_162 = _T_156 | _T_158; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155659.4]
  assign _T_163 = _T_162 | _T_160; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155660.4]
  assign id_ctrl_sel_alu2 = {_T_163,_T_154}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@155661.4]
  assign _T_165 = ibuf_io_inst_0_bits_inst_bits & 32'h4004; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155662.4]
  assign _T_166 = _T_165 == 32'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155663.4]
  assign _T_167 = ibuf_io_inst_0_bits_inst_bits & 32'h50; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155664.4]
  assign _T_168 = _T_167 == 32'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155665.4]
  assign _T_169 = ibuf_io_inst_0_bits_inst_bits & 32'h24; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155666.4]
  assign _T_170 = _T_169 == 32'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155667.4]
  assign _T_172 = _T_166 | _T_168; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155669.4]
  assign _T_173 = _T_172 | _T_126; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155670.4]
  assign _T_174 = _T_173 | _T_170; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155671.4]
  assign _T_175 = _T_174 | _T_158; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155672.4]
  assign _T_177 = _T_115 == 32'h14; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155674.4]
  assign _T_179 = _T_177 | _T_147; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155676.4]
  assign id_ctrl_sel_alu1 = {_T_179,_T_175}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@155677.4]
  assign _T_181 = ibuf_io_inst_0_bits_inst_bits & 32'h8; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155678.4]
  assign _T_182 = _T_181 == 32'h8; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155679.4]
  assign _T_184 = _T_125 == 32'h40; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155681.4]
  assign _T_186 = _T_182 | _T_184; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155683.4]
  assign _T_187 = ibuf_io_inst_0_bits_inst_bits & 32'h14; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155684.4]
  assign _T_188 = _T_187 == 32'h14; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155685.4]
  assign _T_190 = _T_182 | _T_188; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155687.4]
  assign _T_191 = ibuf_io_inst_0_bits_inst_bits & 32'h30; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155688.4]
  assign _T_192 = _T_191 == 32'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155689.4]
  assign _T_193 = ibuf_io_inst_0_bits_inst_bits & 32'h201c; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155690.4]
  assign _T_194 = _T_193 == 32'h4; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155691.4]
  assign _T_196 = _T_187 == 32'h10; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155693.4]
  assign _T_198 = _T_192 | _T_194; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155695.4]
  assign _T_199 = _T_198 | _T_196; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155696.4]
  assign id_ctrl_sel_imm = {_T_199,_T_190,_T_186}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@155698.4]
  assign _T_205 = ibuf_io_inst_0_bits_inst_bits & 32'h3054; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155702.4]
  assign _T_206 = _T_205 == 32'h1010; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155703.4]
  assign _T_207 = ibuf_io_inst_0_bits_inst_bits & 32'h1058; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155704.4]
  assign _T_208 = _T_207 == 32'h1040; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155705.4]
  assign _T_209 = ibuf_io_inst_0_bits_inst_bits & 32'h7044; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155706.4]
  assign _T_210 = _T_209 == 32'h7000; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155707.4]
  assign _T_211 = ibuf_io_inst_0_bits_inst_bits & 32'h2001074; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155708.4]
  assign _T_212 = _T_211 == 32'h2001030; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155709.4]
  assign _T_214 = _T_206 | _T_208; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155711.4]
  assign _T_215 = _T_214 | _T_210; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155712.4]
  assign _T_216 = _T_215 | _T_212; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155713.4]
  assign _T_217 = ibuf_io_inst_0_bits_inst_bits & 32'h4054; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155714.4]
  assign _T_218 = _T_217 == 32'h40; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155715.4]
  assign _T_219 = ibuf_io_inst_0_bits_inst_bits & 32'h3044; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155716.4]
  assign _T_220 = _T_219 == 32'h3000; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155717.4]
  assign _T_221 = ibuf_io_inst_0_bits_inst_bits & 32'h6044; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155718.4]
  assign _T_222 = _T_221 == 32'h6000; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155719.4]
  assign _T_223 = ibuf_io_inst_0_bits_inst_bits & 32'h6018; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155720.4]
  assign _T_224 = _T_223 == 32'h6000; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155721.4]
  assign _T_225 = ibuf_io_inst_0_bits_inst_bits & 32'h2002074; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155722.4]
  assign _T_226 = _T_225 == 32'h2002030; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155723.4]
  assign _T_227 = ibuf_io_inst_0_bits_inst_bits & 32'h40003034; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155724.4]
  assign _T_228 = _T_227 == 32'h40000030; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155725.4]
  assign _T_229 = ibuf_io_inst_0_bits_inst_bits & 32'h40001054; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155726.4]
  assign _T_230 = _T_229 == 32'h40001010; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155727.4]
  assign _T_232 = _T_218 | _T_220; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155729.4]
  assign _T_233 = _T_232 | _T_222; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155730.4]
  assign _T_234 = _T_233 | _T_224; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155731.4]
  assign _T_235 = _T_234 | _T_226; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155732.4]
  assign _T_236 = _T_235 | _T_228; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155733.4]
  assign _T_237 = _T_236 | _T_230; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155734.4]
  assign _T_238 = ibuf_io_inst_0_bits_inst_bits & 32'h2002054; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155735.4]
  assign _T_239 = _T_238 == 32'h2010; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155736.4]
  assign _T_240 = ibuf_io_inst_0_bits_inst_bits & 32'h2034; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155737.4]
  assign _T_241 = _T_240 == 32'h2010; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155738.4]
  assign _T_242 = ibuf_io_inst_0_bits_inst_bits & 32'h40004054; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155739.4]
  assign _T_243 = _T_242 == 32'h4010; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155740.4]
  assign _T_244 = ibuf_io_inst_0_bits_inst_bits & 32'h5054; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155741.4]
  assign _T_245 = _T_244 == 32'h4010; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155742.4]
  assign _T_246 = ibuf_io_inst_0_bits_inst_bits & 32'h4058; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155743.4]
  assign _T_247 = _T_246 == 32'h4040; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155744.4]
  assign _T_249 = _T_239 | _T_241; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155746.4]
  assign _T_250 = _T_249 | _T_243; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155747.4]
  assign _T_251 = _T_250 | _T_245; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155748.4]
  assign _T_252 = _T_251 | _T_247; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155749.4]
  assign _T_253 = ibuf_io_inst_0_bits_inst_bits & 32'h2006054; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155750.4]
  assign _T_254 = _T_253 == 32'h2010; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155751.4]
  assign _T_255 = ibuf_io_inst_0_bits_inst_bits & 32'h6034; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155752.4]
  assign _T_256 = _T_255 == 32'h2010; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155753.4]
  assign _T_257 = ibuf_io_inst_0_bits_inst_bits & 32'h40003054; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155754.4]
  assign _T_258 = _T_257 == 32'h40001010; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155755.4]
  assign _T_260 = _T_254 | _T_256; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155757.4]
  assign _T_261 = _T_260 | _T_247; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155758.4]
  assign _T_262 = _T_261 | _T_228; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155759.4]
  assign _T_263 = _T_262 | _T_258; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155760.4]
  assign id_ctrl_alu_fn = {_T_263,_T_252,_T_237,_T_216}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@155763.4]
  assign _T_268 = _T_62 | _T_1; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155765.4]
  assign _T_269 = _T_268 | _T_23; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155766.4]
  assign _T_270 = _T_269 | _T_27; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155767.4]
  assign _T_271 = _T_270 | _T_33; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155768.4]
  assign _T_272 = _T_271 | _T_35; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155769.4]
  assign id_ctrl_mem = _T_272 | _T_41; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155770.4]
  assign _T_275 = _T_107 == 32'h20; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155772.4]
  assign _T_276 = ibuf_io_inst_0_bits_inst_bits & 32'h18000020; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155773.4]
  assign _T_277 = _T_276 == 32'h18000020; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155774.4]
  assign _T_278 = ibuf_io_inst_0_bits_inst_bits & 32'h20000020; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155775.4]
  assign _T_279 = _T_278 == 32'h20000020; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155776.4]
  assign _T_281 = _T_275 | _T_277; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155778.4]
  assign _T_282 = _T_281 | _T_279; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155779.4]
  assign _T_283 = ibuf_io_inst_0_bits_inst_bits & 32'h10000008; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155780.4]
  assign _T_284 = _T_283 == 32'h10000008; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155781.4]
  assign _T_285 = ibuf_io_inst_0_bits_inst_bits & 32'h40000008; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155782.4]
  assign _T_286 = _T_285 == 32'h40000008; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155783.4]
  assign _T_288 = _T_284 | _T_286; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155785.4]
  assign _T_289 = ibuf_io_inst_0_bits_inst_bits & 32'h40; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155786.4]
  assign _T_290 = _T_289 == 32'h40; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155787.4]
  assign _T_291 = ibuf_io_inst_0_bits_inst_bits & 32'h8000008; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155788.4]
  assign _T_292 = _T_291 == 32'h8000008; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155789.4]
  assign _T_293 = ibuf_io_inst_0_bits_inst_bits & 32'h80000008; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155790.4]
  assign _T_294 = _T_293 == 32'h80000008; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155791.4]
  assign _T_296 = _T_290 | _T_292; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155793.4]
  assign _T_297 = _T_296 | _T_284; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155794.4]
  assign _T_298 = _T_297 | _T_294; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155795.4]
  assign _T_299 = ibuf_io_inst_0_bits_inst_bits & 32'h18000008; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155796.4]
  assign _T_300 = _T_299 == 32'h8; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155797.4]
  assign id_ctrl_mem_cmd = {_T_290,_T_300,_T_298,_T_288,_T_282}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@155803.4]
  assign _T_307 = ibuf_io_inst_0_bits_inst_bits & 32'h80000060; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155804.4]
  assign _T_308 = _T_307 == 32'h40; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155805.4]
  assign _T_309 = ibuf_io_inst_0_bits_inst_bits & 32'h10000060; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155806.4]
  assign _T_311 = ibuf_io_inst_0_bits_inst_bits & 32'h70; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155808.4]
  assign id_ctrl_rfs3 = _T_311 == 32'h40; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155809.4]
  assign _T_325 = ibuf_io_inst_0_bits_inst_bits & 32'h3c; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155822.4]
  assign _T_326 = _T_325 == 32'h4; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155823.4]
  assign _T_328 = _T_309 == 32'h10000040; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155825.4]
  assign _T_330 = _T_326 | _T_308; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155827.4]
  assign _T_331 = _T_330 | id_ctrl_rfs3; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155828.4]
  assign id_ctrl_wfd = _T_331 | _T_328; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155829.4]
  assign _T_333 = ibuf_io_inst_0_bits_inst_bits & 32'h2000074; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155830.4]
  assign id_ctrl_div = _T_333 == 32'h2000030; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155831.4]
  assign _T_337 = _T_113 == 32'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155834.4]
  assign _T_339 = _T_167 == 32'h10; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155836.4]
  assign _T_340 = ibuf_io_inst_0_bits_inst_bits & 32'h2024; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155837.4]
  assign _T_341 = _T_340 == 32'h24; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155838.4]
  assign _T_342 = ibuf_io_inst_0_bits_inst_bits & 32'h28; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155839.4]
  assign _T_343 = _T_342 == 32'h28; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155840.4]
  assign _T_344 = ibuf_io_inst_0_bits_inst_bits & 32'h1030; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155841.4]
  assign _T_345 = _T_344 == 32'h1030; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155842.4]
  assign _T_346 = ibuf_io_inst_0_bits_inst_bits & 32'h2030; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155843.4]
  assign _T_347 = _T_346 == 32'h2030; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155844.4]
  assign _T_348 = ibuf_io_inst_0_bits_inst_bits & 32'h90000010; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155845.4]
  assign _T_349 = _T_348 == 32'h80000010; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155846.4]
  assign _T_351 = _T_337 | _T_339; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155848.4]
  assign _T_352 = _T_351 | _T_341; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155849.4]
  assign _T_353 = _T_352 | _T_343; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155850.4]
  assign _T_354 = _T_353 | _T_345; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155851.4]
  assign _T_355 = _T_354 | _T_347; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155852.4]
  assign id_ctrl_wxd = _T_355 | _T_349; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155853.4]
  assign _T_357 = ibuf_io_inst_0_bits_inst_bits & 32'h1070; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155854.4]
  assign _T_358 = _T_357 == 32'h1070; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155855.4]
  assign _T_360 = ibuf_io_inst_0_bits_inst_bits & 32'h2070; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155857.4]
  assign _T_361 = _T_360 == 32'h2070; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155858.4]
  assign _T_363 = ibuf_io_inst_0_bits_inst_bits & 32'h10000070; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155860.4]
  assign _T_364 = _T_363 == 32'h70; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155861.4]
  assign _T_365 = ibuf_io_inst_0_bits_inst_bits & 32'h12000034; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155862.4]
  assign _T_366 = _T_365 == 32'h10000030; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155863.4]
  assign _T_367 = ibuf_io_inst_0_bits_inst_bits & 32'he0000050; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155864.4]
  assign _T_368 = _T_367 == 32'h60000050; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155865.4]
  assign _T_370 = _T_364 | _T_358; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155867.4]
  assign _T_371 = _T_370 | _T_361; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155868.4]
  assign _T_372 = _T_371 | _T_366; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155869.4]
  assign _T_373 = _T_372 | _T_368; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@155870.4]
  assign id_ctrl_csr = {_T_373,_T_361,_T_358}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@155872.4]
  assign _T_376 = ibuf_io_inst_0_bits_inst_bits & 32'h1048; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@155873.4]
  assign id_ctrl_fence_i = _T_376 == 32'h1008; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155874.4]
  assign id_ctrl_fence = _T_117 == 32'h8; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@155877.4]
  assign id_raddr3 = ibuf_io_inst_0_bits_inst_rs3; // @[RocketCore.scala 251:72:freechips.rocketchip.system.DefaultRV32Config.fir@155908.4]
  assign id_raddr2 = ibuf_io_inst_0_bits_inst_rs2; // @[RocketCore.scala 251:72:freechips.rocketchip.system.DefaultRV32Config.fir@155909.4]
  assign id_raddr1 = ibuf_io_inst_0_bits_inst_rs1; // @[RocketCore.scala 251:72:freechips.rocketchip.system.DefaultRV32Config.fir@155910.4]
  assign id_waddr = ibuf_io_inst_0_bits_inst_rd; // @[RocketCore.scala 251:72:freechips.rocketchip.system.DefaultRV32Config.fir@155911.4]
  assign _T_384 = id_raddr1 == 5'h0; // @[RocketCore.scala 963:45:freechips.rocketchip.system.DefaultRV32Config.fir@155918.4]
  assign _T_389 = _T_383__T_388_data; // @[RocketCore.scala 963:25:freechips.rocketchip.system.DefaultRV32Config.fir@155923.4]
  assign _T_395 = _T_383__T_394_data; // @[RocketCore.scala 963:25:freechips.rocketchip.system.DefaultRV32Config.fir@155932.4]
  assign _T_462 = id_ctrl_csr == 3'h6; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@156007.4]
  assign _T_463 = id_ctrl_csr == 3'h7; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@156008.4]
  assign _T_464 = id_ctrl_csr == 3'h5; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@156009.4]
  assign _T_465 = _T_462 | _T_463; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@156010.4]
  assign id_csr_en = _T_465 | _T_464; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@156011.4]
  assign id_system_insn = id_ctrl_csr == 3'h4; // @[RocketCore.scala 268:36:freechips.rocketchip.system.DefaultRV32Config.fir@156012.4]
  assign id_csr_ren = _T_465 & _T_384; // @[RocketCore.scala 269:54:freechips.rocketchip.system.DefaultRV32Config.fir@156017.4]
  assign _T_470 = id_ctrl_mem_cmd == 5'h14; // @[RocketCore.scala 271:50:freechips.rocketchip.system.DefaultRV32Config.fir@156019.4]
  assign id_sfence = id_ctrl_mem & _T_470; // @[RocketCore.scala 271:31:freechips.rocketchip.system.DefaultRV32Config.fir@156020.4]
  assign _T_471 = id_sfence | id_system_insn; // @[RocketCore.scala 272:32:freechips.rocketchip.system.DefaultRV32Config.fir@156021.4]
  assign _T_472 = id_csr_ren == 1'h0; // @[RocketCore.scala 272:67:freechips.rocketchip.system.DefaultRV32Config.fir@156022.4]
  assign _T_473 = id_csr_en & _T_472; // @[RocketCore.scala 272:64:freechips.rocketchip.system.DefaultRV32Config.fir@156023.4]
  assign _T_474 = _T_473 & csr_io_decode_0_write_flush; // @[RocketCore.scala 272:79:freechips.rocketchip.system.DefaultRV32Config.fir@156024.4]
  assign id_csr_flush = _T_471 | _T_474; // @[RocketCore.scala 272:50:freechips.rocketchip.system.DefaultRV32Config.fir@156025.4]
  assign _T_475 = id_ctrl_legal == 1'h0; // @[RocketCore.scala 280:25:freechips.rocketchip.system.DefaultRV32Config.fir@156028.4]
  assign _T_477 = csr_io_status_isa[12]; // @[RocketCore.scala 281:55:freechips.rocketchip.system.DefaultRV32Config.fir@156030.4]
  assign _T_478 = _T_477 == 1'h0; // @[RocketCore.scala 281:37:freechips.rocketchip.system.DefaultRV32Config.fir@156031.4]
  assign _T_479 = id_ctrl_div & _T_478; // @[RocketCore.scala 281:34:freechips.rocketchip.system.DefaultRV32Config.fir@156032.4]
  assign _T_480 = _T_475 | _T_479; // @[RocketCore.scala 280:40:freechips.rocketchip.system.DefaultRV32Config.fir@156033.4]
  assign _T_481 = csr_io_status_isa[0]; // @[RocketCore.scala 282:38:freechips.rocketchip.system.DefaultRV32Config.fir@156034.4]
  assign _T_482 = _T_481 == 1'h0; // @[RocketCore.scala 282:20:freechips.rocketchip.system.DefaultRV32Config.fir@156035.4]
  assign _T_483 = id_ctrl_amo & _T_482; // @[RocketCore.scala 282:17:freechips.rocketchip.system.DefaultRV32Config.fir@156036.4]
  assign _T_484 = _T_480 | _T_483; // @[RocketCore.scala 281:65:freechips.rocketchip.system.DefaultRV32Config.fir@156037.4]
  assign _T_485 = csr_io_decode_0_fp_illegal | io_fpu_illegal_rm; // @[RocketCore.scala 283:48:freechips.rocketchip.system.DefaultRV32Config.fir@156038.4]
  assign _T_486 = id_ctrl_fp & _T_485; // @[RocketCore.scala 283:16:freechips.rocketchip.system.DefaultRV32Config.fir@156039.4]
  assign _T_487 = _T_484 | _T_486; // @[RocketCore.scala 282:48:freechips.rocketchip.system.DefaultRV32Config.fir@156040.4]
  assign _T_492 = csr_io_status_isa[2]; // @[RocketCore.scala 285:51:freechips.rocketchip.system.DefaultRV32Config.fir@156045.4]
  assign _T_493 = _T_492 == 1'h0; // @[RocketCore.scala 285:33:freechips.rocketchip.system.DefaultRV32Config.fir@156046.4]
  assign _T_494 = ibuf_io_inst_0_bits_rvc & _T_493; // @[RocketCore.scala 285:30:freechips.rocketchip.system.DefaultRV32Config.fir@156047.4]
  assign _T_495 = _T_487 | _T_494; // @[RocketCore.scala 284:47:freechips.rocketchip.system.DefaultRV32Config.fir@156048.4]
  assign _T_515 = _T_472 & csr_io_decode_0_write_illegal; // @[RocketCore.scala 291:64:freechips.rocketchip.system.DefaultRV32Config.fir@156068.4]
  assign _T_516 = csr_io_decode_0_read_illegal | _T_515; // @[RocketCore.scala 291:49:freechips.rocketchip.system.DefaultRV32Config.fir@156069.4]
  assign _T_517 = id_csr_en & _T_516; // @[RocketCore.scala 291:15:freechips.rocketchip.system.DefaultRV32Config.fir@156070.4]
  assign _T_518 = _T_495 | _T_517; // @[RocketCore.scala 290:81:freechips.rocketchip.system.DefaultRV32Config.fir@156071.4]
  assign _T_519 = ibuf_io_inst_0_bits_rvc == 1'h0; // @[RocketCore.scala 292:5:freechips.rocketchip.system.DefaultRV32Config.fir@156072.4]
  assign _T_521 = _T_471 & csr_io_decode_0_system_illegal; // @[RocketCore.scala 292:65:freechips.rocketchip.system.DefaultRV32Config.fir@156074.4]
  assign _T_522 = _T_519 & _T_521; // @[RocketCore.scala 292:31:freechips.rocketchip.system.DefaultRV32Config.fir@156075.4]
  assign id_illegal_insn = _T_518 | _T_522; // @[RocketCore.scala 291:99:freechips.rocketchip.system.DefaultRV32Config.fir@156076.4]
  assign id_amo_aq = ibuf_io_inst_0_bits_inst_bits[26]; // @[RocketCore.scala 294:29:freechips.rocketchip.system.DefaultRV32Config.fir@156077.4]
  assign id_amo_rl = ibuf_io_inst_0_bits_inst_bits[25]; // @[RocketCore.scala 295:29:freechips.rocketchip.system.DefaultRV32Config.fir@156078.4]
  assign id_fence_succ = ibuf_io_inst_0_bits_inst_bits[23:20]; // @[RocketCore.scala 297:33:freechips.rocketchip.system.DefaultRV32Config.fir@156080.4]
  assign _T_523 = id_ctrl_amo & id_amo_aq; // @[RocketCore.scala 298:52:freechips.rocketchip.system.DefaultRV32Config.fir@156081.4]
  assign id_fence_next = id_ctrl_fence | _T_523; // @[RocketCore.scala 298:37:freechips.rocketchip.system.DefaultRV32Config.fir@156082.4]
  assign _T_524 = io_dmem_ordered == 1'h0; // @[RocketCore.scala 299:21:freechips.rocketchip.system.DefaultRV32Config.fir@156083.4]
  assign id_mem_busy = _T_524 | io_dmem_req_valid; // @[RocketCore.scala 299:38:freechips.rocketchip.system.DefaultRV32Config.fir@156084.4]
  assign _T_525 = id_mem_busy == 1'h0; // @[RocketCore.scala 300:9:freechips.rocketchip.system.DefaultRV32Config.fir@156085.4]
  assign _GEN_0 = _T_525 ? 1'h0 : id_reg_fence; // @[RocketCore.scala 300:23:freechips.rocketchip.system.DefaultRV32Config.fir@156086.4]
  assign _T_533 = id_ctrl_amo & id_amo_rl; // @[RocketCore.scala 305:33:freechips.rocketchip.system.DefaultRV32Config.fir@156097.4]
  assign _T_534 = _T_533 | id_ctrl_fence_i; // @[RocketCore.scala 305:46:freechips.rocketchip.system.DefaultRV32Config.fir@156098.4]
  assign _T_536 = id_reg_fence & id_ctrl_mem; // @[RocketCore.scala 305:81:freechips.rocketchip.system.DefaultRV32Config.fir@156100.4]
  assign _T_537 = _T_534 | _T_536; // @[RocketCore.scala 305:65:freechips.rocketchip.system.DefaultRV32Config.fir@156101.4]
  assign id_do_fence = id_mem_busy & _T_537; // @[RocketCore.scala 305:17:freechips.rocketchip.system.DefaultRV32Config.fir@156102.4]
  assign _T_540 = csr_io_interrupt | bpu_io_debug_if; // @[RocketCore.scala 916:26:freechips.rocketchip.system.DefaultRV32Config.fir@156115.4]
  assign _T_541 = _T_540 | bpu_io_xcpt_if; // @[RocketCore.scala 916:26:freechips.rocketchip.system.DefaultRV32Config.fir@156116.4]
  assign _T_542 = _T_541 | ibuf_io_inst_0_bits_xcpt0_pf_inst; // @[RocketCore.scala 916:26:freechips.rocketchip.system.DefaultRV32Config.fir@156117.4]
  assign _T_543 = _T_542 | ibuf_io_inst_0_bits_xcpt0_ae_inst; // @[RocketCore.scala 916:26:freechips.rocketchip.system.DefaultRV32Config.fir@156118.4]
  assign _T_544 = _T_543 | ibuf_io_inst_0_bits_xcpt1_pf_inst; // @[RocketCore.scala 916:26:freechips.rocketchip.system.DefaultRV32Config.fir@156119.4]
  assign _T_545 = _T_544 | ibuf_io_inst_0_bits_xcpt1_ae_inst; // @[RocketCore.scala 916:26:freechips.rocketchip.system.DefaultRV32Config.fir@156120.4]
  assign id_xcpt = _T_545 | id_illegal_insn; // @[RocketCore.scala 916:26:freechips.rocketchip.system.DefaultRV32Config.fir@156121.4]
  assign _T_546 = ibuf_io_inst_0_bits_xcpt1_ae_inst ? 2'h1 : 2'h2; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@156122.4]
  assign _T_547 = ibuf_io_inst_0_bits_xcpt1_pf_inst ? 4'hc : {{2'd0}, _T_546}; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@156123.4]
  assign _T_548 = ibuf_io_inst_0_bits_xcpt0_ae_inst ? 4'h1 : _T_547; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@156124.4]
  assign _T_549 = ibuf_io_inst_0_bits_xcpt0_pf_inst ? 4'hc : _T_548; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@156125.4]
  assign _T_550 = bpu_io_xcpt_if ? 4'h3 : _T_549; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@156126.4]
  assign _T_551 = bpu_io_debug_if ? 4'he : _T_550; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@156127.4]
  assign ex_waddr = ex_reg_inst[11:7]; // @[RocketCore.scala 341:29:freechips.rocketchip.system.DefaultRV32Config.fir@156140.4]
  assign mem_waddr = mem_reg_inst[11:7]; // @[RocketCore.scala 342:31:freechips.rocketchip.system.DefaultRV32Config.fir@156142.4]
  assign wb_waddr = wb_reg_inst[11:7]; // @[RocketCore.scala 343:29:freechips.rocketchip.system.DefaultRV32Config.fir@156144.4]
  assign _T_565 = ex_reg_valid & ex_ctrl_wxd; // @[RocketCore.scala 346:19:freechips.rocketchip.system.DefaultRV32Config.fir@156146.4]
  assign _T_566 = mem_reg_valid & mem_ctrl_wxd; // @[RocketCore.scala 347:20:freechips.rocketchip.system.DefaultRV32Config.fir@156147.4]
  assign _T_567 = mem_ctrl_mem == 1'h0; // @[RocketCore.scala 347:39:freechips.rocketchip.system.DefaultRV32Config.fir@156148.4]
  assign _T_568 = _T_566 & _T_567; // @[RocketCore.scala 347:36:freechips.rocketchip.system.DefaultRV32Config.fir@156149.4]
  assign id_bypass_src_0_0 = 5'h0 == id_raddr1; // @[RocketCore.scala 349:82:freechips.rocketchip.system.DefaultRV32Config.fir@156151.4]
  assign _T_571 = ex_waddr == id_raddr1; // @[RocketCore.scala 349:82:freechips.rocketchip.system.DefaultRV32Config.fir@156153.4]
  assign id_bypass_src_0_1 = _T_565 & _T_571; // @[RocketCore.scala 349:74:freechips.rocketchip.system.DefaultRV32Config.fir@156154.4]
  assign _T_572 = mem_waddr == id_raddr1; // @[RocketCore.scala 349:82:freechips.rocketchip.system.DefaultRV32Config.fir@156155.4]
  assign id_bypass_src_0_2 = _T_568 & _T_572; // @[RocketCore.scala 349:74:freechips.rocketchip.system.DefaultRV32Config.fir@156156.4]
  assign id_bypass_src_0_3 = _T_566 & _T_572; // @[RocketCore.scala 349:74:freechips.rocketchip.system.DefaultRV32Config.fir@156158.4]
  assign id_bypass_src_1_0 = 5'h0 == id_raddr2; // @[RocketCore.scala 349:82:freechips.rocketchip.system.DefaultRV32Config.fir@156159.4]
  assign _T_575 = ex_waddr == id_raddr2; // @[RocketCore.scala 349:82:freechips.rocketchip.system.DefaultRV32Config.fir@156161.4]
  assign id_bypass_src_1_1 = _T_565 & _T_575; // @[RocketCore.scala 349:74:freechips.rocketchip.system.DefaultRV32Config.fir@156162.4]
  assign _T_576 = mem_waddr == id_raddr2; // @[RocketCore.scala 349:82:freechips.rocketchip.system.DefaultRV32Config.fir@156163.4]
  assign id_bypass_src_1_2 = _T_568 & _T_576; // @[RocketCore.scala 349:74:freechips.rocketchip.system.DefaultRV32Config.fir@156164.4]
  assign id_bypass_src_1_3 = _T_566 & _T_576; // @[RocketCore.scala 349:74:freechips.rocketchip.system.DefaultRV32Config.fir@156166.4]
  assign _T_578 = ex_reg_rs_lsb_0 == 2'h1; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@156170.4]
  assign _T_579 = _T_578 ? mem_reg_wdata : 32'h0; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@156171.4]
  assign _T_580 = ex_reg_rs_lsb_0 == 2'h2; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@156172.4]
  assign _T_581 = _T_580 ? wb_reg_wdata : _T_579; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@156173.4]
  assign _T_582 = ex_reg_rs_lsb_0 == 2'h3; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@156174.4]
  assign _T_583 = _T_582 ? io_dmem_resp_bits_data_word_bypass : _T_581; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@156175.4]
  assign _T_584 = {ex_reg_rs_msb_0,ex_reg_rs_lsb_0}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@156176.4]
  assign ex_rs_0 = ex_reg_rs_bypass_0 ? _T_583 : _T_584; // @[RocketCore.scala 357:14:freechips.rocketchip.system.DefaultRV32Config.fir@156177.4]
  assign _T_585 = ex_reg_rs_lsb_1 == 2'h1; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@156178.4]
  assign _T_586 = _T_585 ? mem_reg_wdata : 32'h0; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@156179.4]
  assign _T_587 = ex_reg_rs_lsb_1 == 2'h2; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@156180.4]
  assign _T_588 = _T_587 ? wb_reg_wdata : _T_586; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@156181.4]
  assign _T_589 = ex_reg_rs_lsb_1 == 2'h3; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@156182.4]
  assign _T_590 = _T_589 ? io_dmem_resp_bits_data_word_bypass : _T_588; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@156183.4]
  assign _T_591 = {ex_reg_rs_msb_1,ex_reg_rs_lsb_1}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@156184.4]
  assign ex_rs_1 = ex_reg_rs_bypass_1 ? _T_590 : _T_591; // @[RocketCore.scala 357:14:freechips.rocketchip.system.DefaultRV32Config.fir@156185.4]
  assign _T_592 = ex_ctrl_sel_imm == 3'h5; // @[RocketCore.scala 978:24:freechips.rocketchip.system.DefaultRV32Config.fir@156186.4]
  assign _T_593 = ex_reg_inst[31]; // @[RocketCore.scala 978:48:freechips.rocketchip.system.DefaultRV32Config.fir@156187.4]
  assign _T_594 = $signed(_T_593); // @[RocketCore.scala 978:53:freechips.rocketchip.system.DefaultRV32Config.fir@156188.4]
  assign _T_595 = _T_592 ? $signed(1'sh0) : $signed(_T_594); // @[RocketCore.scala 978:19:freechips.rocketchip.system.DefaultRV32Config.fir@156189.4]
  assign _T_596 = ex_ctrl_sel_imm == 3'h2; // @[RocketCore.scala 979:26:freechips.rocketchip.system.DefaultRV32Config.fir@156190.4]
  assign _T_597 = ex_reg_inst[30:20]; // @[RocketCore.scala 979:41:freechips.rocketchip.system.DefaultRV32Config.fir@156191.4]
  assign _T_598 = $signed(_T_597); // @[RocketCore.scala 979:49:freechips.rocketchip.system.DefaultRV32Config.fir@156192.4]
  assign _T_599 = _T_596 ? $signed(_T_598) : $signed({11{_T_595}}); // @[RocketCore.scala 979:21:freechips.rocketchip.system.DefaultRV32Config.fir@156193.4]
  assign _T_600 = ex_ctrl_sel_imm != 3'h2; // @[RocketCore.scala 980:26:freechips.rocketchip.system.DefaultRV32Config.fir@156194.4]
  assign _T_601 = ex_ctrl_sel_imm != 3'h3; // @[RocketCore.scala 980:43:freechips.rocketchip.system.DefaultRV32Config.fir@156195.4]
  assign _T_602 = _T_600 & _T_601; // @[RocketCore.scala 980:36:freechips.rocketchip.system.DefaultRV32Config.fir@156196.4]
  assign _T_603 = ex_reg_inst[19:12]; // @[RocketCore.scala 980:65:freechips.rocketchip.system.DefaultRV32Config.fir@156197.4]
  assign _T_604 = $signed(_T_603); // @[RocketCore.scala 980:73:freechips.rocketchip.system.DefaultRV32Config.fir@156198.4]
  assign _T_605 = _T_602 ? $signed({8{_T_595}}) : $signed(_T_604); // @[RocketCore.scala 980:21:freechips.rocketchip.system.DefaultRV32Config.fir@156199.4]
  assign _T_608 = _T_596 | _T_592; // @[RocketCore.scala 981:33:freechips.rocketchip.system.DefaultRV32Config.fir@156202.4]
  assign _T_609 = ex_ctrl_sel_imm == 3'h3; // @[RocketCore.scala 982:23:freechips.rocketchip.system.DefaultRV32Config.fir@156203.4]
  assign _T_610 = ex_reg_inst[20]; // @[RocketCore.scala 982:39:freechips.rocketchip.system.DefaultRV32Config.fir@156204.4]
  assign _T_611 = $signed(_T_610); // @[RocketCore.scala 982:44:freechips.rocketchip.system.DefaultRV32Config.fir@156205.4]
  assign _T_612 = ex_ctrl_sel_imm == 3'h1; // @[RocketCore.scala 983:23:freechips.rocketchip.system.DefaultRV32Config.fir@156206.4]
  assign _T_613 = ex_reg_inst[7]; // @[RocketCore.scala 983:39:freechips.rocketchip.system.DefaultRV32Config.fir@156207.4]
  assign _T_614 = $signed(_T_613); // @[RocketCore.scala 983:43:freechips.rocketchip.system.DefaultRV32Config.fir@156208.4]
  assign _T_615 = _T_612 ? $signed(_T_614) : $signed(_T_595); // @[RocketCore.scala 983:18:freechips.rocketchip.system.DefaultRV32Config.fir@156209.4]
  assign _T_616 = _T_609 ? $signed(_T_611) : $signed(_T_615); // @[RocketCore.scala 982:18:freechips.rocketchip.system.DefaultRV32Config.fir@156210.4]
  assign _T_617 = _T_608 ? $signed(1'sh0) : $signed(_T_616); // @[RocketCore.scala 981:18:freechips.rocketchip.system.DefaultRV32Config.fir@156211.4]
  assign _T_621 = ex_reg_inst[30:25]; // @[RocketCore.scala 984:66:freechips.rocketchip.system.DefaultRV32Config.fir@156215.4]
  assign _T_622 = _T_608 ? 6'h0 : _T_621; // @[RocketCore.scala 984:20:freechips.rocketchip.system.DefaultRV32Config.fir@156216.4]
  assign _T_624 = ex_ctrl_sel_imm == 3'h0; // @[RocketCore.scala 986:24:freechips.rocketchip.system.DefaultRV32Config.fir@156218.4]
  assign _T_626 = _T_624 | _T_612; // @[RocketCore.scala 986:34:freechips.rocketchip.system.DefaultRV32Config.fir@156220.4]
  assign _T_627 = ex_reg_inst[11:8]; // @[RocketCore.scala 986:57:freechips.rocketchip.system.DefaultRV32Config.fir@156221.4]
  assign _T_629 = ex_reg_inst[19:16]; // @[RocketCore.scala 987:39:freechips.rocketchip.system.DefaultRV32Config.fir@156223.4]
  assign _T_630 = ex_reg_inst[24:21]; // @[RocketCore.scala 987:52:freechips.rocketchip.system.DefaultRV32Config.fir@156224.4]
  assign _T_631 = _T_592 ? _T_629 : _T_630; // @[RocketCore.scala 987:19:freechips.rocketchip.system.DefaultRV32Config.fir@156225.4]
  assign _T_632 = _T_626 ? _T_627 : _T_631; // @[RocketCore.scala 986:19:freechips.rocketchip.system.DefaultRV32Config.fir@156226.4]
  assign _T_633 = _T_596 ? 4'h0 : _T_632; // @[RocketCore.scala 985:19:freechips.rocketchip.system.DefaultRV32Config.fir@156227.4]
  assign _T_636 = ex_ctrl_sel_imm == 3'h4; // @[RocketCore.scala 989:22:freechips.rocketchip.system.DefaultRV32Config.fir@156230.4]
  assign _T_639 = ex_reg_inst[15]; // @[RocketCore.scala 990:37:freechips.rocketchip.system.DefaultRV32Config.fir@156233.4]
  assign _T_640 = _T_592 & _T_639; // @[RocketCore.scala 990:17:freechips.rocketchip.system.DefaultRV32Config.fir@156234.4]
  assign _T_641 = _T_636 ? _T_610 : _T_640; // @[RocketCore.scala 989:17:freechips.rocketchip.system.DefaultRV32Config.fir@156235.4]
  assign _T_642 = _T_624 ? _T_613 : _T_641; // @[RocketCore.scala 988:17:freechips.rocketchip.system.DefaultRV32Config.fir@156236.4]
  assign _T_645 = $unsigned(_T_617); // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@156239.4]
  assign _T_646 = $unsigned(_T_605); // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@156240.4]
  assign _T_648 = $unsigned(_T_599); // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@156242.4]
  assign _T_649 = $unsigned(_T_595); // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@156243.4]
  assign _T_652 = {_T_649,_T_648,_T_646,_T_645,_T_622,_T_633,_T_642}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@156246.4]
  assign ex_imm = $signed(_T_652); // @[RocketCore.scala 992:53:freechips.rocketchip.system.DefaultRV32Config.fir@156247.4]
  assign _T_653 = $signed(ex_rs_0); // @[RocketCore.scala 360:24:freechips.rocketchip.system.DefaultRV32Config.fir@156248.4]
  assign _T_654 = $signed(ex_reg_pc); // @[RocketCore.scala 361:24:freechips.rocketchip.system.DefaultRV32Config.fir@156249.4]
  assign _T_655 = 2'h2 == ex_ctrl_sel_alu1; // @[Mux.scala 68:19:freechips.rocketchip.system.DefaultRV32Config.fir@156250.4]
  assign _T_656 = _T_655 ? $signed(_T_654) : $signed(32'sh0); // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@156251.4]
  assign _T_657 = 2'h1 == ex_ctrl_sel_alu1; // @[Mux.scala 68:19:freechips.rocketchip.system.DefaultRV32Config.fir@156252.4]
  assign ex_op1 = _T_657 ? $signed(_T_653) : $signed(_T_656); // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@156253.4]
  assign _T_658 = $signed(ex_rs_1); // @[RocketCore.scala 363:24:freechips.rocketchip.system.DefaultRV32Config.fir@156254.4]
  assign _T_659 = ex_reg_rvc ? $signed(4'sh2) : $signed(4'sh4); // @[RocketCore.scala 365:19:freechips.rocketchip.system.DefaultRV32Config.fir@156255.4]
  assign _T_660 = 2'h1 == ex_ctrl_sel_alu2; // @[Mux.scala 68:19:freechips.rocketchip.system.DefaultRV32Config.fir@156256.4]
  assign _T_661 = _T_660 ? $signed(_T_659) : $signed(4'sh0); // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@156257.4]
  assign _T_662 = 2'h3 == ex_ctrl_sel_alu2; // @[Mux.scala 68:19:freechips.rocketchip.system.DefaultRV32Config.fir@156258.4]
  assign _T_663 = _T_662 ? $signed(ex_imm) : $signed({{28{_T_661[3]}},_T_661}); // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@156259.4]
  assign _T_664 = 2'h2 == ex_ctrl_sel_alu2; // @[Mux.scala 68:19:freechips.rocketchip.system.DefaultRV32Config.fir@156260.4]
  assign ex_op2 = _T_664 ? $signed(_T_658) : $signed(_T_663); // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@156261.4]
  assign _T_1301 = ibuf_io_inst_0_valid == 1'h0; // @[RocketCore.scala 758:17:freechips.rocketchip.system.DefaultRV32Config.fir@157178.4]
  assign _T_1302 = _T_1301 | ibuf_io_inst_0_bits_replay; // @[RocketCore.scala 758:40:freechips.rocketchip.system.DefaultRV32Config.fir@157179.4]
  assign _T_1303 = _T_1302 | take_pc_mem_wb; // @[RocketCore.scala 758:71:freechips.rocketchip.system.DefaultRV32Config.fir@157180.4]
  assign _T_1108 = id_raddr1 != 5'h0; // @[RocketCore.scala 689:55:freechips.rocketchip.system.DefaultRV32Config.fir@156949.4]
  assign _T_1109 = id_ctrl_rxs1 & _T_1108; // @[RocketCore.scala 689:42:freechips.rocketchip.system.DefaultRV32Config.fir@156950.4]
  assign _T_1156 = id_raddr1 == ex_waddr; // @[RocketCore.scala 709:70:freechips.rocketchip.system.DefaultRV32Config.fir@157005.4]
  assign _T_1157 = _T_1109 & _T_1156; // @[RocketCore.scala 925:27:freechips.rocketchip.system.DefaultRV32Config.fir@157006.4]
  assign _T_1110 = id_raddr2 != 5'h0; // @[RocketCore.scala 690:55:freechips.rocketchip.system.DefaultRV32Config.fir@156951.4]
  assign _T_1111 = id_ctrl_rxs2 & _T_1110; // @[RocketCore.scala 690:42:freechips.rocketchip.system.DefaultRV32Config.fir@156952.4]
  assign _T_1158 = id_raddr2 == ex_waddr; // @[RocketCore.scala 709:70:freechips.rocketchip.system.DefaultRV32Config.fir@157007.4]
  assign _T_1159 = _T_1111 & _T_1158; // @[RocketCore.scala 925:27:freechips.rocketchip.system.DefaultRV32Config.fir@157008.4]
  assign _T_1162 = _T_1157 | _T_1159; // @[RocketCore.scala 925:50:freechips.rocketchip.system.DefaultRV32Config.fir@157011.4]
  assign _T_1112 = id_waddr != 5'h0; // @[RocketCore.scala 691:55:freechips.rocketchip.system.DefaultRV32Config.fir@156953.4]
  assign _T_1113 = id_ctrl_wxd & _T_1112; // @[RocketCore.scala 691:42:freechips.rocketchip.system.DefaultRV32Config.fir@156954.4]
  assign _T_1160 = id_waddr == ex_waddr; // @[RocketCore.scala 709:70:freechips.rocketchip.system.DefaultRV32Config.fir@157009.4]
  assign _T_1161 = _T_1113 & _T_1160; // @[RocketCore.scala 925:27:freechips.rocketchip.system.DefaultRV32Config.fir@157010.4]
  assign _T_1163 = _T_1162 | _T_1161; // @[RocketCore.scala 925:50:freechips.rocketchip.system.DefaultRV32Config.fir@157012.4]
  assign data_hazard_ex = ex_ctrl_wxd & _T_1163; // @[RocketCore.scala 709:36:freechips.rocketchip.system.DefaultRV32Config.fir@157013.4]
  assign _T_1149 = ex_ctrl_csr != 3'h0; // @[RocketCore.scala 708:38:freechips.rocketchip.system.DefaultRV32Config.fir@156997.4]
  assign _T_1150 = _T_1149 | ex_ctrl_jalr; // @[RocketCore.scala 708:48:freechips.rocketchip.system.DefaultRV32Config.fir@156998.4]
  assign _T_1151 = _T_1150 | ex_ctrl_mem; // @[RocketCore.scala 708:64:freechips.rocketchip.system.DefaultRV32Config.fir@156999.4]
  assign _T_1153 = _T_1151 | ex_ctrl_div; // @[RocketCore.scala 708:94:freechips.rocketchip.system.DefaultRV32Config.fir@157001.4]
  assign ex_cannot_bypass = _T_1153 | ex_ctrl_fp; // @[RocketCore.scala 708:109:freechips.rocketchip.system.DefaultRV32Config.fir@157002.4]
  assign _T_1175 = data_hazard_ex & ex_cannot_bypass; // @[RocketCore.scala 711:54:freechips.rocketchip.system.DefaultRV32Config.fir@157026.4]
  assign _T_1165 = io_fpu_dec_ren1 & _T_1156; // @[RocketCore.scala 925:27:freechips.rocketchip.system.DefaultRV32Config.fir@157015.4]
  assign _T_1167 = io_fpu_dec_ren2 & _T_1158; // @[RocketCore.scala 925:27:freechips.rocketchip.system.DefaultRV32Config.fir@157017.4]
  assign _T_1172 = _T_1165 | _T_1167; // @[RocketCore.scala 925:50:freechips.rocketchip.system.DefaultRV32Config.fir@157022.4]
  assign _T_1168 = id_raddr3 == ex_waddr; // @[RocketCore.scala 710:76:freechips.rocketchip.system.DefaultRV32Config.fir@157018.4]
  assign _T_1169 = io_fpu_dec_ren3 & _T_1168; // @[RocketCore.scala 925:27:freechips.rocketchip.system.DefaultRV32Config.fir@157019.4]
  assign _T_1173 = _T_1172 | _T_1169; // @[RocketCore.scala 925:50:freechips.rocketchip.system.DefaultRV32Config.fir@157023.4]
  assign _T_1171 = io_fpu_dec_wen & _T_1160; // @[RocketCore.scala 925:27:freechips.rocketchip.system.DefaultRV32Config.fir@157021.4]
  assign _T_1174 = _T_1173 | _T_1171; // @[RocketCore.scala 925:50:freechips.rocketchip.system.DefaultRV32Config.fir@157024.4]
  assign fp_data_hazard_ex = ex_ctrl_wfd & _T_1174; // @[RocketCore.scala 710:39:freechips.rocketchip.system.DefaultRV32Config.fir@157025.4]
  assign _T_1176 = _T_1175 | fp_data_hazard_ex; // @[RocketCore.scala 711:74:freechips.rocketchip.system.DefaultRV32Config.fir@157027.4]
  assign id_ex_hazard = ex_reg_valid & _T_1176; // @[RocketCore.scala 711:35:freechips.rocketchip.system.DefaultRV32Config.fir@157028.4]
  assign _T_1183 = id_raddr1 == mem_waddr; // @[RocketCore.scala 718:72:freechips.rocketchip.system.DefaultRV32Config.fir@157037.4]
  assign _T_1184 = _T_1109 & _T_1183; // @[RocketCore.scala 925:27:freechips.rocketchip.system.DefaultRV32Config.fir@157038.4]
  assign _T_1185 = id_raddr2 == mem_waddr; // @[RocketCore.scala 718:72:freechips.rocketchip.system.DefaultRV32Config.fir@157039.4]
  assign _T_1186 = _T_1111 & _T_1185; // @[RocketCore.scala 925:27:freechips.rocketchip.system.DefaultRV32Config.fir@157040.4]
  assign _T_1189 = _T_1184 | _T_1186; // @[RocketCore.scala 925:50:freechips.rocketchip.system.DefaultRV32Config.fir@157043.4]
  assign _T_1187 = id_waddr == mem_waddr; // @[RocketCore.scala 718:72:freechips.rocketchip.system.DefaultRV32Config.fir@157041.4]
  assign _T_1188 = _T_1113 & _T_1187; // @[RocketCore.scala 925:27:freechips.rocketchip.system.DefaultRV32Config.fir@157042.4]
  assign _T_1190 = _T_1189 | _T_1188; // @[RocketCore.scala 925:50:freechips.rocketchip.system.DefaultRV32Config.fir@157044.4]
  assign data_hazard_mem = mem_ctrl_wxd & _T_1190; // @[RocketCore.scala 718:38:freechips.rocketchip.system.DefaultRV32Config.fir@157045.4]
  assign _T_1177 = mem_ctrl_csr != 3'h0; // @[RocketCore.scala 717:40:freechips.rocketchip.system.DefaultRV32Config.fir@157030.4]
  assign _T_1178 = mem_ctrl_mem & mem_reg_slow_bypass; // @[RocketCore.scala 717:66:freechips.rocketchip.system.DefaultRV32Config.fir@157031.4]
  assign _T_1179 = _T_1177 | _T_1178; // @[RocketCore.scala 717:50:freechips.rocketchip.system.DefaultRV32Config.fir@157032.4]
  assign _T_1181 = _T_1179 | mem_ctrl_div; // @[RocketCore.scala 717:100:freechips.rocketchip.system.DefaultRV32Config.fir@157034.4]
  assign mem_cannot_bypass = _T_1181 | mem_ctrl_fp; // @[RocketCore.scala 717:116:freechips.rocketchip.system.DefaultRV32Config.fir@157035.4]
  assign _T_1202 = data_hazard_mem & mem_cannot_bypass; // @[RocketCore.scala 720:57:freechips.rocketchip.system.DefaultRV32Config.fir@157058.4]
  assign _T_1192 = io_fpu_dec_ren1 & _T_1183; // @[RocketCore.scala 925:27:freechips.rocketchip.system.DefaultRV32Config.fir@157047.4]
  assign _T_1194 = io_fpu_dec_ren2 & _T_1185; // @[RocketCore.scala 925:27:freechips.rocketchip.system.DefaultRV32Config.fir@157049.4]
  assign _T_1199 = _T_1192 | _T_1194; // @[RocketCore.scala 925:50:freechips.rocketchip.system.DefaultRV32Config.fir@157054.4]
  assign _T_1195 = id_raddr3 == mem_waddr; // @[RocketCore.scala 719:78:freechips.rocketchip.system.DefaultRV32Config.fir@157050.4]
  assign _T_1196 = io_fpu_dec_ren3 & _T_1195; // @[RocketCore.scala 925:27:freechips.rocketchip.system.DefaultRV32Config.fir@157051.4]
  assign _T_1200 = _T_1199 | _T_1196; // @[RocketCore.scala 925:50:freechips.rocketchip.system.DefaultRV32Config.fir@157055.4]
  assign _T_1198 = io_fpu_dec_wen & _T_1187; // @[RocketCore.scala 925:27:freechips.rocketchip.system.DefaultRV32Config.fir@157053.4]
  assign _T_1201 = _T_1200 | _T_1198; // @[RocketCore.scala 925:50:freechips.rocketchip.system.DefaultRV32Config.fir@157056.4]
  assign fp_data_hazard_mem = mem_ctrl_wfd & _T_1201; // @[RocketCore.scala 719:41:freechips.rocketchip.system.DefaultRV32Config.fir@157057.4]
  assign _T_1203 = _T_1202 | fp_data_hazard_mem; // @[RocketCore.scala 720:78:freechips.rocketchip.system.DefaultRV32Config.fir@157059.4]
  assign id_mem_hazard = mem_reg_valid & _T_1203; // @[RocketCore.scala 720:37:freechips.rocketchip.system.DefaultRV32Config.fir@157060.4]
  assign _T_1273 = id_ex_hazard | id_mem_hazard; // @[RocketCore.scala 747:18:freechips.rocketchip.system.DefaultRV32Config.fir@157149.4]
  assign _T_1206 = id_raddr1 == wb_waddr; // @[RocketCore.scala 724:70:freechips.rocketchip.system.DefaultRV32Config.fir@157064.4]
  assign _T_1207 = _T_1109 & _T_1206; // @[RocketCore.scala 925:27:freechips.rocketchip.system.DefaultRV32Config.fir@157065.4]
  assign _T_1208 = id_raddr2 == wb_waddr; // @[RocketCore.scala 724:70:freechips.rocketchip.system.DefaultRV32Config.fir@157066.4]
  assign _T_1209 = _T_1111 & _T_1208; // @[RocketCore.scala 925:27:freechips.rocketchip.system.DefaultRV32Config.fir@157067.4]
  assign _T_1212 = _T_1207 | _T_1209; // @[RocketCore.scala 925:50:freechips.rocketchip.system.DefaultRV32Config.fir@157070.4]
  assign _T_1210 = id_waddr == wb_waddr; // @[RocketCore.scala 724:70:freechips.rocketchip.system.DefaultRV32Config.fir@157068.4]
  assign _T_1211 = _T_1113 & _T_1210; // @[RocketCore.scala 925:27:freechips.rocketchip.system.DefaultRV32Config.fir@157069.4]
  assign _T_1213 = _T_1212 | _T_1211; // @[RocketCore.scala 925:50:freechips.rocketchip.system.DefaultRV32Config.fir@157071.4]
  assign data_hazard_wb = wb_ctrl_wxd & _T_1213; // @[RocketCore.scala 724:36:freechips.rocketchip.system.DefaultRV32Config.fir@157072.4]
  assign _T_718 = io_dmem_resp_valid == 1'h0; // @[RocketCore.scala 468:39:freechips.rocketchip.system.DefaultRV32Config.fir@156402.4]
  assign wb_dcache_miss = wb_ctrl_mem & _T_718; // @[RocketCore.scala 468:36:freechips.rocketchip.system.DefaultRV32Config.fir@156403.4]
  assign wb_set_sboard = wb_ctrl_div | wb_dcache_miss; // @[RocketCore.scala 613:35:freechips.rocketchip.system.DefaultRV32Config.fir@156823.4]
  assign _T_1225 = data_hazard_wb & wb_set_sboard; // @[RocketCore.scala 726:54:freechips.rocketchip.system.DefaultRV32Config.fir@157085.4]
  assign _T_1215 = io_fpu_dec_ren1 & _T_1206; // @[RocketCore.scala 925:27:freechips.rocketchip.system.DefaultRV32Config.fir@157074.4]
  assign _T_1217 = io_fpu_dec_ren2 & _T_1208; // @[RocketCore.scala 925:27:freechips.rocketchip.system.DefaultRV32Config.fir@157076.4]
  assign _T_1222 = _T_1215 | _T_1217; // @[RocketCore.scala 925:50:freechips.rocketchip.system.DefaultRV32Config.fir@157081.4]
  assign _T_1218 = id_raddr3 == wb_waddr; // @[RocketCore.scala 725:76:freechips.rocketchip.system.DefaultRV32Config.fir@157077.4]
  assign _T_1219 = io_fpu_dec_ren3 & _T_1218; // @[RocketCore.scala 925:27:freechips.rocketchip.system.DefaultRV32Config.fir@157078.4]
  assign _T_1223 = _T_1222 | _T_1219; // @[RocketCore.scala 925:50:freechips.rocketchip.system.DefaultRV32Config.fir@157082.4]
  assign _T_1221 = io_fpu_dec_wen & _T_1210; // @[RocketCore.scala 925:27:freechips.rocketchip.system.DefaultRV32Config.fir@157080.4]
  assign _T_1224 = _T_1223 | _T_1221; // @[RocketCore.scala 925:50:freechips.rocketchip.system.DefaultRV32Config.fir@157083.4]
  assign fp_data_hazard_wb = wb_ctrl_wfd & _T_1224; // @[RocketCore.scala 725:39:freechips.rocketchip.system.DefaultRV32Config.fir@157084.4]
  assign _T_1226 = _T_1225 | fp_data_hazard_wb; // @[RocketCore.scala 726:71:freechips.rocketchip.system.DefaultRV32Config.fir@157086.4]
  assign id_wb_hazard = wb_reg_valid & _T_1226; // @[RocketCore.scala 726:35:freechips.rocketchip.system.DefaultRV32Config.fir@157087.4]
  assign _T_1274 = _T_1273 | id_wb_hazard; // @[RocketCore.scala 747:35:freechips.rocketchip.system.DefaultRV32Config.fir@157150.4]
  assign _T_1115 = _T_1114[31:1]; // @[RocketCore.scala 943:35:freechips.rocketchip.system.DefaultRV32Config.fir@156956.4]
  assign _T_1116 = {_T_1115, 1'h0}; // @[RocketCore.scala 943:40:freechips.rocketchip.system.DefaultRV32Config.fir@156957.4]
  assign _T_1122 = _T_1116 >> id_raddr1; // @[RocketCore.scala 939:35:freechips.rocketchip.system.DefaultRV32Config.fir@156966.4]
  assign _T_1123 = _T_1122[0]; // @[RocketCore.scala 939:35:freechips.rocketchip.system.DefaultRV32Config.fir@156967.4]
  assign dmem_resp_valid = io_dmem_resp_valid & io_dmem_resp_bits_has_data; // @[RocketCore.scala 623:44:freechips.rocketchip.system.DefaultRV32Config.fir@156840.4]
  assign dmem_resp_replay = dmem_resp_valid & io_dmem_resp_bits_replay; // @[RocketCore.scala 624:42:freechips.rocketchip.system.DefaultRV32Config.fir@156841.4]
  assign _T_1056 = io_dmem_resp_bits_tag[0]; // @[RocketCore.scala 620:45:freechips.rocketchip.system.DefaultRV32Config.fir@156834.4]
  assign dmem_resp_xpu = _T_1056 == 1'h0; // @[RocketCore.scala 620:23:freechips.rocketchip.system.DefaultRV32Config.fir@156836.4]
  assign _T_1061 = dmem_resp_replay & dmem_resp_xpu; // @[RocketCore.scala 639:26:freechips.rocketchip.system.DefaultRV32Config.fir@156854.4]
  assign _T_1060 = div_io_resp_ready & div_io_resp_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@156850.4]
  assign ll_wen = _T_1061 | _T_1060; // @[RocketCore.scala 639:44:freechips.rocketchip.system.DefaultRV32Config.fir@156855.4]
  assign dmem_resp_waddr = io_dmem_resp_bits_tag[5:1]; // @[RocketCore.scala 622:46:freechips.rocketchip.system.DefaultRV32Config.fir@156839.4]
  assign ll_waddr = _T_1061 ? dmem_resp_waddr : div_io_resp_bits_tag; // @[RocketCore.scala 639:44:freechips.rocketchip.system.DefaultRV32Config.fir@156855.4]
  assign _T_1124 = ll_waddr == id_raddr1; // @[RocketCore.scala 701:70:freechips.rocketchip.system.DefaultRV32Config.fir@156968.4]
  assign _T_1125 = ll_wen & _T_1124; // @[RocketCore.scala 701:58:freechips.rocketchip.system.DefaultRV32Config.fir@156969.4]
  assign _T_1126 = _T_1125 == 1'h0; // @[RocketCore.scala 704:80:freechips.rocketchip.system.DefaultRV32Config.fir@156970.4]
  assign _T_1127 = _T_1123 & _T_1126; // @[RocketCore.scala 704:77:freechips.rocketchip.system.DefaultRV32Config.fir@156971.4]
  assign _T_1128 = _T_1109 & _T_1127; // @[RocketCore.scala 925:27:freechips.rocketchip.system.DefaultRV32Config.fir@156972.4]
  assign _T_1129 = _T_1116 >> id_raddr2; // @[RocketCore.scala 939:35:freechips.rocketchip.system.DefaultRV32Config.fir@156973.4]
  assign _T_1130 = _T_1129[0]; // @[RocketCore.scala 939:35:freechips.rocketchip.system.DefaultRV32Config.fir@156974.4]
  assign _T_1131 = ll_waddr == id_raddr2; // @[RocketCore.scala 701:70:freechips.rocketchip.system.DefaultRV32Config.fir@156975.4]
  assign _T_1132 = ll_wen & _T_1131; // @[RocketCore.scala 701:58:freechips.rocketchip.system.DefaultRV32Config.fir@156976.4]
  assign _T_1133 = _T_1132 == 1'h0; // @[RocketCore.scala 704:80:freechips.rocketchip.system.DefaultRV32Config.fir@156977.4]
  assign _T_1134 = _T_1130 & _T_1133; // @[RocketCore.scala 704:77:freechips.rocketchip.system.DefaultRV32Config.fir@156978.4]
  assign _T_1135 = _T_1111 & _T_1134; // @[RocketCore.scala 925:27:freechips.rocketchip.system.DefaultRV32Config.fir@156979.4]
  assign _T_1143 = _T_1128 | _T_1135; // @[RocketCore.scala 925:50:freechips.rocketchip.system.DefaultRV32Config.fir@156987.4]
  assign _T_1136 = _T_1116 >> id_waddr; // @[RocketCore.scala 939:35:freechips.rocketchip.system.DefaultRV32Config.fir@156980.4]
  assign _T_1137 = _T_1136[0]; // @[RocketCore.scala 939:35:freechips.rocketchip.system.DefaultRV32Config.fir@156981.4]
  assign _T_1138 = ll_waddr == id_waddr; // @[RocketCore.scala 701:70:freechips.rocketchip.system.DefaultRV32Config.fir@156982.4]
  assign _T_1139 = ll_wen & _T_1138; // @[RocketCore.scala 701:58:freechips.rocketchip.system.DefaultRV32Config.fir@156983.4]
  assign _T_1140 = _T_1139 == 1'h0; // @[RocketCore.scala 704:80:freechips.rocketchip.system.DefaultRV32Config.fir@156984.4]
  assign _T_1141 = _T_1137 & _T_1140; // @[RocketCore.scala 704:77:freechips.rocketchip.system.DefaultRV32Config.fir@156985.4]
  assign _T_1142 = _T_1113 & _T_1141; // @[RocketCore.scala 925:27:freechips.rocketchip.system.DefaultRV32Config.fir@156986.4]
  assign id_sboard_hazard = _T_1143 | _T_1142; // @[RocketCore.scala 925:50:freechips.rocketchip.system.DefaultRV32Config.fir@156988.4]
  assign _T_1275 = _T_1274 | id_sboard_hazard; // @[RocketCore.scala 747:51:freechips.rocketchip.system.DefaultRV32Config.fir@157151.4]
  assign _T_1276 = ex_reg_valid | mem_reg_valid; // @[RocketCore.scala 748:40:freechips.rocketchip.system.DefaultRV32Config.fir@157152.4]
  assign _T_1277 = _T_1276 | wb_reg_valid; // @[RocketCore.scala 748:57:freechips.rocketchip.system.DefaultRV32Config.fir@157153.4]
  assign _T_1278 = csr_io_singleStep & _T_1277; // @[RocketCore.scala 748:23:freechips.rocketchip.system.DefaultRV32Config.fir@157154.4]
  assign _T_1279 = _T_1275 | _T_1278; // @[RocketCore.scala 747:71:freechips.rocketchip.system.DefaultRV32Config.fir@157155.4]
  assign _T_1280 = id_csr_en & csr_io_decode_0_fp_csr; // @[RocketCore.scala 749:15:freechips.rocketchip.system.DefaultRV32Config.fir@157156.4]
  assign _T_1281 = io_fpu_fcsr_rdy == 1'h0; // @[RocketCore.scala 749:45:freechips.rocketchip.system.DefaultRV32Config.fir@157157.4]
  assign _T_1282 = _T_1280 & _T_1281; // @[RocketCore.scala 749:42:freechips.rocketchip.system.DefaultRV32Config.fir@157158.4]
  assign _T_1283 = _T_1279 | _T_1282; // @[RocketCore.scala 748:74:freechips.rocketchip.system.DefaultRV32Config.fir@157159.4]
  assign _T_1246 = _T_1227 >> id_raddr1; // @[RocketCore.scala 939:35:freechips.rocketchip.system.DefaultRV32Config.fir@157116.4]
  assign _T_1247 = _T_1246[0]; // @[RocketCore.scala 939:35:freechips.rocketchip.system.DefaultRV32Config.fir@157117.4]
  assign _T_1248 = io_fpu_dec_ren1 & _T_1247; // @[RocketCore.scala 925:27:freechips.rocketchip.system.DefaultRV32Config.fir@157118.4]
  assign _T_1249 = _T_1227 >> id_raddr2; // @[RocketCore.scala 939:35:freechips.rocketchip.system.DefaultRV32Config.fir@157119.4]
  assign _T_1250 = _T_1249[0]; // @[RocketCore.scala 939:35:freechips.rocketchip.system.DefaultRV32Config.fir@157120.4]
  assign _T_1251 = io_fpu_dec_ren2 & _T_1250; // @[RocketCore.scala 925:27:freechips.rocketchip.system.DefaultRV32Config.fir@157121.4]
  assign _T_1258 = _T_1248 | _T_1251; // @[RocketCore.scala 925:50:freechips.rocketchip.system.DefaultRV32Config.fir@157128.4]
  assign _T_1252 = _T_1227 >> id_raddr3; // @[RocketCore.scala 939:35:freechips.rocketchip.system.DefaultRV32Config.fir@157122.4]
  assign _T_1253 = _T_1252[0]; // @[RocketCore.scala 939:35:freechips.rocketchip.system.DefaultRV32Config.fir@157123.4]
  assign _T_1254 = io_fpu_dec_ren3 & _T_1253; // @[RocketCore.scala 925:27:freechips.rocketchip.system.DefaultRV32Config.fir@157124.4]
  assign _T_1259 = _T_1258 | _T_1254; // @[RocketCore.scala 925:50:freechips.rocketchip.system.DefaultRV32Config.fir@157129.4]
  assign _T_1255 = _T_1227 >> id_waddr; // @[RocketCore.scala 939:35:freechips.rocketchip.system.DefaultRV32Config.fir@157125.4]
  assign _T_1256 = _T_1255[0]; // @[RocketCore.scala 939:35:freechips.rocketchip.system.DefaultRV32Config.fir@157126.4]
  assign _T_1257 = io_fpu_dec_wen & _T_1256; // @[RocketCore.scala 925:27:freechips.rocketchip.system.DefaultRV32Config.fir@157127.4]
  assign id_stall_fpu = _T_1259 | _T_1257; // @[RocketCore.scala 925:50:freechips.rocketchip.system.DefaultRV32Config.fir@157130.4]
  assign _T_1284 = id_ctrl_fp & id_stall_fpu; // @[RocketCore.scala 750:16:freechips.rocketchip.system.DefaultRV32Config.fir@157160.4]
  assign _T_1285 = _T_1283 | _T_1284; // @[RocketCore.scala 749:62:freechips.rocketchip.system.DefaultRV32Config.fir@157161.4]
  assign _T_1267 = io_dmem_perf_grant == 1'h0; // @[RocketCore.scala 741:16:freechips.rocketchip.system.DefaultRV32Config.fir@157140.4]
  assign dcache_blocked = blocked & _T_1267; // @[RocketCore.scala 741:13:freechips.rocketchip.system.DefaultRV32Config.fir@157141.4]
  assign _T_1286 = id_ctrl_mem & dcache_blocked; // @[RocketCore.scala 751:17:freechips.rocketchip.system.DefaultRV32Config.fir@157162.4]
  assign _T_1287 = _T_1285 | _T_1286; // @[RocketCore.scala 750:32:freechips.rocketchip.system.DefaultRV32Config.fir@157163.4]
  assign wb_wxd = wb_reg_valid & wb_ctrl_wxd; // @[RocketCore.scala 612:29:freechips.rocketchip.system.DefaultRV32Config.fir@156822.4]
  assign _T_1290 = wb_wxd == 1'h0; // @[RocketCore.scala 753:65:freechips.rocketchip.system.DefaultRV32Config.fir@157166.4]
  assign _T_1291 = div_io_resp_valid & _T_1290; // @[RocketCore.scala 753:62:freechips.rocketchip.system.DefaultRV32Config.fir@157167.4]
  assign _T_1292 = div_io_req_ready | _T_1291; // @[RocketCore.scala 753:40:freechips.rocketchip.system.DefaultRV32Config.fir@157168.4]
  assign _T_1293 = _T_1292 == 1'h0; // @[RocketCore.scala 753:21:freechips.rocketchip.system.DefaultRV32Config.fir@157169.4]
  assign _T_1294 = _T_1293 | div_io_req_valid; // @[RocketCore.scala 753:75:freechips.rocketchip.system.DefaultRV32Config.fir@157170.4]
  assign _T_1295 = id_ctrl_div & _T_1294; // @[RocketCore.scala 753:17:freechips.rocketchip.system.DefaultRV32Config.fir@157171.4]
  assign _T_1296 = _T_1287 | _T_1295; // @[RocketCore.scala 752:34:freechips.rocketchip.system.DefaultRV32Config.fir@157172.4]
  assign _T_1299 = _T_1296 | id_do_fence; // @[RocketCore.scala 754:15:freechips.rocketchip.system.DefaultRV32Config.fir@157175.4]
  assign _T_1300 = _T_1299 | csr_io_csr_stall; // @[RocketCore.scala 755:17:freechips.rocketchip.system.DefaultRV32Config.fir@157176.4]
  assign ctrl_stalld = _T_1300 | id_reg_pause; // @[RocketCore.scala 756:22:freechips.rocketchip.system.DefaultRV32Config.fir@157177.4]
  assign _T_1304 = _T_1303 | ctrl_stalld; // @[RocketCore.scala 758:89:freechips.rocketchip.system.DefaultRV32Config.fir@157181.4]
  assign ctrl_killd = _T_1304 | csr_io_interrupt; // @[RocketCore.scala 758:104:freechips.rocketchip.system.DefaultRV32Config.fir@157182.4]
  assign _T_668 = ctrl_killd == 1'h0; // @[RocketCore.scala 405:19:freechips.rocketchip.system.DefaultRV32Config.fir@156283.4]
  assign _T_669 = take_pc_mem_wb == 1'h0; // @[RocketCore.scala 406:20:freechips.rocketchip.system.DefaultRV32Config.fir@156285.4]
  assign _T_670 = _T_669 & ibuf_io_inst_0_valid; // @[RocketCore.scala 406:29:freechips.rocketchip.system.DefaultRV32Config.fir@156286.4]
  assign _T_680 = id_fence_succ == 4'h0; // @[RocketCore.scala 416:42:freechips.rocketchip.system.DefaultRV32Config.fir@156305.6]
  assign _T_681 = id_ctrl_fence & _T_680; // @[RocketCore.scala 416:25:freechips.rocketchip.system.DefaultRV32Config.fir@156306.6]
  assign _GEN_1 = _T_681 | id_reg_pause; // @[RocketCore.scala 416:49:freechips.rocketchip.system.DefaultRV32Config.fir@156307.6]
  assign _GEN_2 = id_fence_next | _GEN_0; // @[RocketCore.scala 417:26:freechips.rocketchip.system.DefaultRV32Config.fir@156310.6]
  assign _T_682 = {ibuf_io_inst_0_bits_xcpt1_pf_inst,ibuf_io_inst_0_bits_xcpt1_ae_inst}; // @[RocketCore.scala 423:22:freechips.rocketchip.system.DefaultRV32Config.fir@156318.8]
  assign _T_683 = _T_682 != 2'h0; // @[RocketCore.scala 423:29:freechips.rocketchip.system.DefaultRV32Config.fir@156319.8]
  assign _GEN_5 = _T_683 | ibuf_io_inst_0_bits_rvc; // @[RocketCore.scala 423:34:freechips.rocketchip.system.DefaultRV32Config.fir@156320.8]
  assign _T_684 = {ibuf_io_inst_0_bits_xcpt0_pf_inst,ibuf_io_inst_0_bits_xcpt0_ae_inst}; // @[RocketCore.scala 428:40:freechips.rocketchip.system.DefaultRV32Config.fir@156325.8]
  assign _T_685 = _T_684 != 2'h0; // @[RocketCore.scala 428:47:freechips.rocketchip.system.DefaultRV32Config.fir@156326.8]
  assign _T_686 = bpu_io_xcpt_if | _T_685; // @[RocketCore.scala 428:28:freechips.rocketchip.system.DefaultRV32Config.fir@156327.8]
  assign _T_687 = id_ctrl_fence_i | id_csr_flush; // @[RocketCore.scala 433:42:freechips.rocketchip.system.DefaultRV32Config.fir@156333.6]
  assign _T_688 = ibuf_io_inst_0_bits_inst_bits[13:12]; // @[RocketCore.scala 435:34:freechips.rocketchip.system.DefaultRV32Config.fir@156336.6]
  assign _T_690 = id_ctrl_mem_cmd == 5'h5; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@156339.6]
  assign _T_691 = _T_470 | _T_690; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@156340.6]
  assign _T_694 = {_T_1110,_T_1108}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@156344.8]
  assign _T_695 = id_bypass_src_0_0 | id_bypass_src_0_1; // @[RocketCore.scala 441:48:freechips.rocketchip.system.DefaultRV32Config.fir@156347.6]
  assign _T_696 = _T_695 | id_bypass_src_0_2; // @[RocketCore.scala 441:48:freechips.rocketchip.system.DefaultRV32Config.fir@156348.6]
  assign do_bypass = _T_696 | id_bypass_src_0_3; // @[RocketCore.scala 441:48:freechips.rocketchip.system.DefaultRV32Config.fir@156349.6]
  assign _T_699 = do_bypass == 1'h0; // @[RocketCore.scala 445:26:freechips.rocketchip.system.DefaultRV32Config.fir@156355.6]
  assign _T_700 = id_ctrl_rxs1 & _T_699; // @[RocketCore.scala 445:23:freechips.rocketchip.system.DefaultRV32Config.fir@156356.6]
  assign _T_1062 = replay_wb_common == 1'h0; // @[RocketCore.scala 647:34:freechips.rocketchip.system.DefaultRV32Config.fir@156860.4]
  assign _T_1063 = wb_reg_valid & _T_1062; // @[RocketCore.scala 647:31:freechips.rocketchip.system.DefaultRV32Config.fir@156861.4]
  assign _T_1064 = wb_xcpt == 1'h0; // @[RocketCore.scala 647:48:freechips.rocketchip.system.DefaultRV32Config.fir@156862.4]
  assign wb_valid = _T_1063 & _T_1064; // @[RocketCore.scala 647:45:freechips.rocketchip.system.DefaultRV32Config.fir@156863.4]
  assign wb_wen = wb_valid & wb_ctrl_wxd; // @[RocketCore.scala 648:25:freechips.rocketchip.system.DefaultRV32Config.fir@156864.4]
  assign rf_wen = wb_wen | ll_wen; // @[RocketCore.scala 649:23:freechips.rocketchip.system.DefaultRV32Config.fir@156865.4]
  assign rf_waddr = ll_wen ? ll_waddr : wb_waddr; // @[RocketCore.scala 650:21:freechips.rocketchip.system.DefaultRV32Config.fir@156866.4]
  assign _T_1071 = rf_waddr != 5'h0; // @[RocketCore.scala 968:16:freechips.rocketchip.system.DefaultRV32Config.fir@156875.6]
  assign _T_1075 = rf_waddr == id_raddr1; // @[RocketCore.scala 971:20:freechips.rocketchip.system.DefaultRV32Config.fir@156881.8]
  assign _T_1065 = dmem_resp_valid & dmem_resp_xpu; // @[RocketCore.scala 651:38:freechips.rocketchip.system.DefaultRV32Config.fir@156867.4]
  assign ll_wdata = div_io_resp_bits_data; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@156844.4 :freechips.rocketchip.system.DefaultRV32Config.fir@156846.4]
  assign _T_1067 = wb_ctrl_csr != 3'h0; // @[RocketCore.scala 653:34:freechips.rocketchip.system.DefaultRV32Config.fir@156869.4]
  assign _T_1069 = _T_1067 ? csr_io_rw_rdata : wb_reg_wdata; // @[RocketCore.scala 653:21:freechips.rocketchip.system.DefaultRV32Config.fir@156871.4]
  assign _T_1070 = ll_wen ? ll_wdata : _T_1069; // @[RocketCore.scala 652:21:freechips.rocketchip.system.DefaultRV32Config.fir@156872.4]
  assign rf_wdata = _T_1065 ? io_dmem_resp_bits_data : _T_1070; // @[RocketCore.scala 651:21:freechips.rocketchip.system.DefaultRV32Config.fir@156873.4]
  assign _GEN_226 = _T_1075 ? rf_wdata : _T_389; // @[RocketCore.scala 971:31:freechips.rocketchip.system.DefaultRV32Config.fir@156882.8]
  assign _GEN_233 = _T_1071 ? _GEN_226 : _T_389; // @[RocketCore.scala 968:29:freechips.rocketchip.system.DefaultRV32Config.fir@156876.6]
  assign id_rs_0 = rf_wen ? _GEN_233 : _T_389; // @[RocketCore.scala 656:17:freechips.rocketchip.system.DefaultRV32Config.fir@156874.4]
  assign _T_701 = id_rs_0[1:0]; // @[RocketCore.scala 446:37:freechips.rocketchip.system.DefaultRV32Config.fir@156358.8]
  assign _T_702 = id_rs_0[31:2]; // @[RocketCore.scala 447:38:freechips.rocketchip.system.DefaultRV32Config.fir@156360.8]
  assign _T_703 = id_bypass_src_1_0 | id_bypass_src_1_1; // @[RocketCore.scala 441:48:freechips.rocketchip.system.DefaultRV32Config.fir@156363.6]
  assign _T_704 = _T_703 | id_bypass_src_1_2; // @[RocketCore.scala 441:48:freechips.rocketchip.system.DefaultRV32Config.fir@156364.6]
  assign do_bypass_1 = _T_704 | id_bypass_src_1_3; // @[RocketCore.scala 441:48:freechips.rocketchip.system.DefaultRV32Config.fir@156365.6]
  assign _T_707 = do_bypass_1 == 1'h0; // @[RocketCore.scala 445:26:freechips.rocketchip.system.DefaultRV32Config.fir@156371.6]
  assign _T_708 = id_ctrl_rxs2 & _T_707; // @[RocketCore.scala 445:23:freechips.rocketchip.system.DefaultRV32Config.fir@156372.6]
  assign _T_1076 = rf_waddr == id_raddr2; // @[RocketCore.scala 971:20:freechips.rocketchip.system.DefaultRV32Config.fir@156885.8]
  assign _GEN_227 = _T_1076 ? rf_wdata : _T_395; // @[RocketCore.scala 971:31:freechips.rocketchip.system.DefaultRV32Config.fir@156886.8]
  assign _GEN_234 = _T_1071 ? _GEN_227 : _T_395; // @[RocketCore.scala 968:29:freechips.rocketchip.system.DefaultRV32Config.fir@156876.6]
  assign id_rs_1 = rf_wen ? _GEN_234 : _T_395; // @[RocketCore.scala 656:17:freechips.rocketchip.system.DefaultRV32Config.fir@156874.4]
  assign _T_709 = id_rs_1[1:0]; // @[RocketCore.scala 446:37:freechips.rocketchip.system.DefaultRV32Config.fir@156374.8]
  assign _T_710 = id_rs_1[31:2]; // @[RocketCore.scala 447:38:freechips.rocketchip.system.DefaultRV32Config.fir@156376.8]
  assign _T_711 = ibuf_io_inst_0_bits_raw[15:0]; // @[RocketCore.scala 451:62:freechips.rocketchip.system.DefaultRV32Config.fir@156380.8]
  assign inst = ibuf_io_inst_0_bits_rvc ? {{16'd0}, _T_711} : ibuf_io_inst_0_bits_raw; // @[RocketCore.scala 451:21:freechips.rocketchip.system.DefaultRV32Config.fir@156381.8]
  assign _T_712 = inst[1:0]; // @[RocketCore.scala 453:31:freechips.rocketchip.system.DefaultRV32Config.fir@156383.8]
  assign _T_713 = inst[31:2]; // @[RocketCore.scala 454:32:freechips.rocketchip.system.DefaultRV32Config.fir@156385.8]
  assign _T_1204 = mem_reg_valid & data_hazard_mem; // @[RocketCore.scala 721:32:freechips.rocketchip.system.DefaultRV32Config.fir@157061.4]
  assign id_load_use = _T_1204 & mem_ctrl_mem; // @[RocketCore.scala 721:51:freechips.rocketchip.system.DefaultRV32Config.fir@157062.4]
  assign _T_715 = _T_668 | csr_io_interrupt; // @[RocketCore.scala 457:21:freechips.rocketchip.system.DefaultRV32Config.fir@156390.4]
  assign _T_716 = _T_715 | ibuf_io_inst_0_bits_replay; // @[RocketCore.scala 457:41:freechips.rocketchip.system.DefaultRV32Config.fir@156391.4]
  assign _T_719 = io_dmem_req_ready == 1'h0; // @[RocketCore.scala 469:45:freechips.rocketchip.system.DefaultRV32Config.fir@156404.4]
  assign _T_720 = ex_ctrl_mem & _T_719; // @[RocketCore.scala 469:42:freechips.rocketchip.system.DefaultRV32Config.fir@156405.4]
  assign _T_721 = div_io_req_ready == 1'h0; // @[RocketCore.scala 470:45:freechips.rocketchip.system.DefaultRV32Config.fir@156406.4]
  assign _T_722 = ex_ctrl_div & _T_721; // @[RocketCore.scala 470:42:freechips.rocketchip.system.DefaultRV32Config.fir@156407.4]
  assign replay_ex_structural = _T_720 | _T_722; // @[RocketCore.scala 469:64:freechips.rocketchip.system.DefaultRV32Config.fir@156408.4]
  assign replay_ex_load_use = wb_dcache_miss & ex_reg_load_use; // @[RocketCore.scala 471:43:freechips.rocketchip.system.DefaultRV32Config.fir@156409.4]
  assign _T_723 = replay_ex_structural | replay_ex_load_use; // @[RocketCore.scala 472:75:freechips.rocketchip.system.DefaultRV32Config.fir@156410.4]
  assign _T_724 = ex_reg_valid & _T_723; // @[RocketCore.scala 472:50:freechips.rocketchip.system.DefaultRV32Config.fir@156411.4]
  assign replay_ex = ex_reg_replay | _T_724; // @[RocketCore.scala 472:33:freechips.rocketchip.system.DefaultRV32Config.fir@156412.4]
  assign _T_725 = take_pc_mem_wb | replay_ex; // @[RocketCore.scala 473:35:freechips.rocketchip.system.DefaultRV32Config.fir@156413.4]
  assign _T_726 = ex_reg_valid == 1'h0; // @[RocketCore.scala 473:51:freechips.rocketchip.system.DefaultRV32Config.fir@156414.4]
  assign ctrl_killx = _T_725 | _T_726; // @[RocketCore.scala 473:48:freechips.rocketchip.system.DefaultRV32Config.fir@156415.4]
  assign _T_727 = ex_ctrl_mem_cmd == 5'h7; // @[RocketCore.scala 475:40:freechips.rocketchip.system.DefaultRV32Config.fir@156416.4]
  assign _T_728 = ex_reg_mem_size < 2'h2; // @[RocketCore.scala 475:69:freechips.rocketchip.system.DefaultRV32Config.fir@156417.4]
  assign ex_slow_bypass = _T_727 | _T_728; // @[RocketCore.scala 475:50:freechips.rocketchip.system.DefaultRV32Config.fir@156418.4]
  assign _T_730 = ex_ctrl_mem_cmd == 5'h14; // @[RocketCore.scala 476:67:freechips.rocketchip.system.DefaultRV32Config.fir@156420.4]
  assign ex_sfence = ex_ctrl_mem & _T_730; // @[RocketCore.scala 476:48:freechips.rocketchip.system.DefaultRV32Config.fir@156421.4]
  assign ex_xcpt = ex_reg_xcpt_interrupt | ex_reg_xcpt; // @[RocketCore.scala 479:28:freechips.rocketchip.system.DefaultRV32Config.fir@156422.4]
  assign _T_741 = mem_reg_valid | mem_reg_replay; // @[RocketCore.scala 485:36:freechips.rocketchip.system.DefaultRV32Config.fir@156433.4]
  assign mem_pc_valid = _T_741 | mem_reg_xcpt_interrupt; // @[RocketCore.scala 485:54:freechips.rocketchip.system.DefaultRV32Config.fir@156434.4]
  assign _T_884 = mem_npc[1]; // @[RocketCore.scala 494:66:freechips.rocketchip.system.DefaultRV32Config.fir@156580.4]
  assign _T_885 = _T_493 & _T_884; // @[RocketCore.scala 494:56:freechips.rocketchip.system.DefaultRV32Config.fir@156581.4]
  assign _T_886 = mem_reg_sfence == 1'h0; // @[RocketCore.scala 494:73:freechips.rocketchip.system.DefaultRV32Config.fir@156582.4]
  assign mem_npc_misaligned = _T_885 & _T_886; // @[RocketCore.scala 494:70:freechips.rocketchip.system.DefaultRV32Config.fir@156583.4]
  assign _T_887 = mem_reg_xcpt == 1'h0; // @[RocketCore.scala 495:27:freechips.rocketchip.system.DefaultRV32Config.fir@156584.4]
  assign _T_888 = mem_ctrl_jalr ^ mem_npc_misaligned; // @[RocketCore.scala 495:59:freechips.rocketchip.system.DefaultRV32Config.fir@156585.4]
  assign _T_889 = _T_887 & _T_888; // @[RocketCore.scala 495:41:freechips.rocketchip.system.DefaultRV32Config.fir@156586.4]
  assign _T_891 = _T_889 ? $signed(mem_br_target) : $signed(_T_874); // @[RocketCore.scala 495:26:freechips.rocketchip.system.DefaultRV32Config.fir@156588.4]
  assign mem_int_wdata = $unsigned(_T_891); // @[RocketCore.scala 495:119:freechips.rocketchip.system.DefaultRV32Config.fir@156589.4]
  assign _T_892 = mem_ctrl_branch | mem_ctrl_jalr; // @[RocketCore.scala 496:33:freechips.rocketchip.system.DefaultRV32Config.fir@156590.4]
  assign mem_cfi = _T_892 | mem_ctrl_jal; // @[RocketCore.scala 496:50:freechips.rocketchip.system.DefaultRV32Config.fir@156591.4]
  assign _T_894 = _T_743 | mem_ctrl_jalr; // @[RocketCore.scala 497:57:freechips.rocketchip.system.DefaultRV32Config.fir@156593.4]
  assign mem_cfi_taken = _T_894 | mem_ctrl_jal; // @[RocketCore.scala 497:74:freechips.rocketchip.system.DefaultRV32Config.fir@156594.4]
  assign _T_899 = ctrl_killx == 1'h0; // @[RocketCore.scala 502:20:freechips.rocketchip.system.DefaultRV32Config.fir@156601.4]
  assign _T_906 = mem_reg_valid & mem_reg_flush_pipe; // @[RocketCore.scala 509:23:freechips.rocketchip.system.DefaultRV32Config.fir@156612.4]
  assign _T_907 = ex_ctrl_mem_cmd == 5'h0; // @[Consts.scala 82:31:freechips.rocketchip.system.DefaultRV32Config.fir@156622.8]
  assign _T_908 = ex_ctrl_mem_cmd == 5'h6; // @[Consts.scala 82:48:freechips.rocketchip.system.DefaultRV32Config.fir@156623.8]
  assign _T_909 = _T_907 | _T_908; // @[Consts.scala 82:41:freechips.rocketchip.system.DefaultRV32Config.fir@156624.8]
  assign _T_911 = _T_909 | _T_727; // @[Consts.scala 82:58:freechips.rocketchip.system.DefaultRV32Config.fir@156626.8]
  assign _T_912 = ex_ctrl_mem_cmd == 5'h4; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@156627.8]
  assign _T_913 = ex_ctrl_mem_cmd == 5'h9; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@156628.8]
  assign _T_914 = ex_ctrl_mem_cmd == 5'ha; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@156629.8]
  assign _T_915 = ex_ctrl_mem_cmd == 5'hb; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@156630.8]
  assign _T_916 = _T_912 | _T_913; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@156631.8]
  assign _T_917 = _T_916 | _T_914; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@156632.8]
  assign _T_918 = _T_917 | _T_915; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@156633.8]
  assign _T_919 = ex_ctrl_mem_cmd == 5'h8; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@156634.8]
  assign _T_920 = ex_ctrl_mem_cmd == 5'hc; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@156635.8]
  assign _T_921 = ex_ctrl_mem_cmd == 5'hd; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@156636.8]
  assign _T_922 = ex_ctrl_mem_cmd == 5'he; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@156637.8]
  assign _T_923 = ex_ctrl_mem_cmd == 5'hf; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@156638.8]
  assign _T_924 = _T_919 | _T_920; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@156639.8]
  assign _T_925 = _T_924 | _T_921; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@156640.8]
  assign _T_926 = _T_925 | _T_922; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@156641.8]
  assign _T_927 = _T_926 | _T_923; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@156642.8]
  assign _T_928 = _T_918 | _T_927; // @[Consts.scala 80:44:freechips.rocketchip.system.DefaultRV32Config.fir@156643.8]
  assign _T_929 = _T_911 | _T_928; // @[Consts.scala 82:75:freechips.rocketchip.system.DefaultRV32Config.fir@156644.8]
  assign _T_930 = ex_ctrl_mem & _T_929; // @[RocketCore.scala 516:33:freechips.rocketchip.system.DefaultRV32Config.fir@156645.8]
  assign _T_931 = ex_ctrl_mem_cmd == 5'h1; // @[Consts.scala 83:32:freechips.rocketchip.system.DefaultRV32Config.fir@156647.8]
  assign _T_932 = ex_ctrl_mem_cmd == 5'h11; // @[Consts.scala 83:49:freechips.rocketchip.system.DefaultRV32Config.fir@156648.8]
  assign _T_933 = _T_931 | _T_932; // @[Consts.scala 83:42:freechips.rocketchip.system.DefaultRV32Config.fir@156649.8]
  assign _T_935 = _T_933 | _T_727; // @[Consts.scala 83:59:freechips.rocketchip.system.DefaultRV32Config.fir@156651.8]
  assign _T_953 = _T_935 | _T_928; // @[Consts.scala 83:76:freechips.rocketchip.system.DefaultRV32Config.fir@156669.8]
  assign _T_954 = ex_ctrl_mem & _T_953; // @[RocketCore.scala 517:34:freechips.rocketchip.system.DefaultRV32Config.fir@156670.8]
  assign _T_955 = alu_io_out; // @[RocketCore.scala 529:25:freechips.rocketchip.system.DefaultRV32Config.fir@156682.8]
  assign _T_957 = ex_ctrl_mem | ex_sfence; // @[RocketCore.scala 532:56:freechips.rocketchip.system.DefaultRV32Config.fir@156686.8]
  assign _T_958 = ex_ctrl_rxs2 & _T_957; // @[RocketCore.scala 532:24:freechips.rocketchip.system.DefaultRV32Config.fir@156687.8]
  assign _T_960 = ex_reg_mem_size == 2'h0; // @[AMOALU.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@156691.10]
  assign _T_961 = ex_rs_1[7:0]; // @[AMOALU.scala 26:66:freechips.rocketchip.system.DefaultRV32Config.fir@156692.10]
  assign _T_963 = {_T_961,_T_961,_T_961,_T_961}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@156694.10]
  assign _T_964 = ex_reg_mem_size == 2'h1; // @[AMOALU.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@156695.10]
  assign _T_965 = ex_rs_1[15:0]; // @[AMOALU.scala 26:66:freechips.rocketchip.system.DefaultRV32Config.fir@156696.10]
  assign _T_966 = {_T_965,_T_965}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@156697.10]
  assign _T_969 = ex_ctrl_jalr & csr_io_status_debug; // @[RocketCore.scala 536:24:freechips.rocketchip.system.DefaultRV32Config.fir@156702.8]
  assign _GEN_77 = _T_969 | ex_ctrl_fence_i; // @[RocketCore.scala 536:48:freechips.rocketchip.system.DefaultRV32Config.fir@156703.8]
  assign _GEN_78 = _T_969 | ex_reg_flush_pipe; // @[RocketCore.scala 536:48:freechips.rocketchip.system.DefaultRV32Config.fir@156703.8]
  assign _T_970 = mem_reg_load & bpu_io_xcpt_ld; // @[RocketCore.scala 543:38:freechips.rocketchip.system.DefaultRV32Config.fir@156708.4]
  assign _T_971 = mem_reg_store & bpu_io_xcpt_st; // @[RocketCore.scala 543:75:freechips.rocketchip.system.DefaultRV32Config.fir@156709.4]
  assign mem_breakpoint = _T_970 | _T_971; // @[RocketCore.scala 543:57:freechips.rocketchip.system.DefaultRV32Config.fir@156710.4]
  assign _T_972 = mem_reg_load & bpu_io_debug_ld; // @[RocketCore.scala 544:44:freechips.rocketchip.system.DefaultRV32Config.fir@156711.4]
  assign _T_973 = mem_reg_store & bpu_io_debug_st; // @[RocketCore.scala 544:82:freechips.rocketchip.system.DefaultRV32Config.fir@156712.4]
  assign mem_debug_breakpoint = _T_972 | _T_973; // @[RocketCore.scala 544:64:freechips.rocketchip.system.DefaultRV32Config.fir@156713.4]
  assign mem_ldst_xcpt = mem_debug_breakpoint | mem_breakpoint; // @[RocketCore.scala 916:26:freechips.rocketchip.system.DefaultRV32Config.fir@156714.4]
  assign mem_ldst_cause = mem_debug_breakpoint ? 4'he : 4'h3; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@156715.4]
  assign _T_974 = mem_reg_xcpt_interrupt | mem_reg_xcpt; // @[RocketCore.scala 550:29:freechips.rocketchip.system.DefaultRV32Config.fir@156716.4]
  assign _T_975 = mem_reg_valid & mem_npc_misaligned; // @[RocketCore.scala 551:20:freechips.rocketchip.system.DefaultRV32Config.fir@156717.4]
  assign _T_976 = mem_reg_valid & mem_ldst_xcpt; // @[RocketCore.scala 552:20:freechips.rocketchip.system.DefaultRV32Config.fir@156718.4]
  assign _T_977 = _T_974 | _T_975; // @[RocketCore.scala 916:26:freechips.rocketchip.system.DefaultRV32Config.fir@156719.4]
  assign mem_xcpt = _T_977 | _T_976; // @[RocketCore.scala 916:26:freechips.rocketchip.system.DefaultRV32Config.fir@156720.4]
  assign _T_978 = _T_975 ? 4'h0 : mem_ldst_cause; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@156721.4]
  assign dcache_kill_mem = _T_566 & io_dmem_replay_next; // @[RocketCore.scala 561:55:freechips.rocketchip.system.DefaultRV32Config.fir@156736.4]
  assign _T_992 = mem_reg_valid & mem_ctrl_fp; // @[RocketCore.scala 562:36:freechips.rocketchip.system.DefaultRV32Config.fir@156737.4]
  assign fpu_kill_mem = _T_992 & io_fpu_nack_mem; // @[RocketCore.scala 562:51:freechips.rocketchip.system.DefaultRV32Config.fir@156738.4]
  assign _T_993 = dcache_kill_mem | mem_reg_replay; // @[RocketCore.scala 563:37:freechips.rocketchip.system.DefaultRV32Config.fir@156739.4]
  assign replay_mem = _T_993 | fpu_kill_mem; // @[RocketCore.scala 563:55:freechips.rocketchip.system.DefaultRV32Config.fir@156740.4]
  assign _T_994 = dcache_kill_mem | take_pc_wb; // @[RocketCore.scala 564:38:freechips.rocketchip.system.DefaultRV32Config.fir@156741.4]
  assign _T_995 = _T_994 | mem_reg_xcpt; // @[RocketCore.scala 564:52:freechips.rocketchip.system.DefaultRV32Config.fir@156742.4]
  assign _T_996 = mem_reg_valid == 1'h0; // @[RocketCore.scala 564:71:freechips.rocketchip.system.DefaultRV32Config.fir@156743.4]
  assign killm_common = _T_995 | _T_996; // @[RocketCore.scala 564:68:freechips.rocketchip.system.DefaultRV32Config.fir@156744.4]
  assign _T_1000 = killm_common | mem_xcpt; // @[RocketCore.scala 566:33:freechips.rocketchip.system.DefaultRV32Config.fir@156750.4]
  assign ctrl_killm = _T_1000 | fpu_kill_mem; // @[RocketCore.scala 566:45:freechips.rocketchip.system.DefaultRV32Config.fir@156751.4]
  assign _T_1001 = ctrl_killm == 1'h0; // @[RocketCore.scala 569:19:freechips.rocketchip.system.DefaultRV32Config.fir@156752.4]
  assign _T_1002 = take_pc_wb == 1'h0; // @[RocketCore.scala 570:34:freechips.rocketchip.system.DefaultRV32Config.fir@156754.4]
  assign _T_1009 = _T_887 & mem_ctrl_fp; // @[RocketCore.scala 577:25:freechips.rocketchip.system.DefaultRV32Config.fir@156767.6]
  assign _T_1010 = _T_1009 & mem_ctrl_wxd; // @[RocketCore.scala 577:40:freechips.rocketchip.system.DefaultRV32Config.fir@156768.6]
  assign _T_1032 = _T_1024 ? 3'h7 : 3'h5; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@156802.4]
  assign _T_1033 = _T_1022 ? 4'hd : {{1'd0}, _T_1032}; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@156803.4]
  assign _T_1034 = _T_1020 ? 4'hf : _T_1033; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@156804.4]
  assign _T_1035 = _T_1018 ? 4'h4 : _T_1034; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@156805.4]
  assign _T_1036 = _T_1016 ? 4'h6 : _T_1035; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@156806.4]
  assign wb_cause = wb_reg_xcpt ? wb_reg_cause : {{28'd0}, _T_1036}; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@156807.4]
  assign _T_1037 = wb_cause == 32'h6; // @[RocketCore.scala 920:38:freechips.rocketchip.system.DefaultRV32Config.fir@156808.4]
  assign _T_1039 = wb_cause == 32'h4; // @[RocketCore.scala 920:38:freechips.rocketchip.system.DefaultRV32Config.fir@156810.4]
  assign _T_1041 = wb_cause == 32'h7; // @[RocketCore.scala 920:38:freechips.rocketchip.system.DefaultRV32Config.fir@156812.4]
  assign _T_1043 = wb_cause == 32'h5; // @[RocketCore.scala 920:38:freechips.rocketchip.system.DefaultRV32Config.fir@156814.4]
  assign _T_1045 = wb_cause == 32'hf; // @[RocketCore.scala 920:38:freechips.rocketchip.system.DefaultRV32Config.fir@156816.4]
  assign _T_1047 = wb_cause == 32'hd; // @[RocketCore.scala 920:38:freechips.rocketchip.system.DefaultRV32Config.fir@156818.4]
  assign _T_1078 = wb_reg_raw_inst[1:0]; // @[RocketCore.scala 664:66:freechips.rocketchip.system.DefaultRV32Config.fir@156897.4]
  assign _T_1079 = _T_1078 == 2'h3; // @[RocketCore.scala 664:73:freechips.rocketchip.system.DefaultRV32Config.fir@156898.4]
  assign _T_1080 = wb_reg_inst[31:16]; // @[RocketCore.scala 664:91:freechips.rocketchip.system.DefaultRV32Config.fir@156899.4]
  assign _T_1081 = _T_1079 ? _T_1080 : 16'h0; // @[RocketCore.scala 664:50:freechips.rocketchip.system.DefaultRV32Config.fir@156900.4]
  assign _T_1082 = wb_reg_raw_inst[15:0]; // @[RocketCore.scala 664:119:freechips.rocketchip.system.DefaultRV32Config.fir@156901.4]
  assign _T_1084 = wb_cause == 32'h2; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@156910.4]
  assign _T_1085 = wb_cause == 32'h3; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@156911.4]
  assign _T_1090 = wb_cause == 32'h1; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@156916.4]
  assign _T_1093 = wb_cause == 32'hc; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@156919.4]
  assign _T_1094 = _T_1084 | _T_1085; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@156920.4]
  assign _T_1095 = _T_1094 | _T_1039; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@156921.4]
  assign _T_1096 = _T_1095 | _T_1037; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@156922.4]
  assign _T_1097 = _T_1096 | _T_1043; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@156923.4]
  assign _T_1098 = _T_1097 | _T_1041; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@156924.4]
  assign _T_1099 = _T_1098 | _T_1090; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@156925.4]
  assign _T_1100 = _T_1099 | _T_1047; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@156926.4]
  assign _T_1101 = _T_1100 | _T_1045; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@156927.4]
  assign _T_1102 = _T_1101 | _T_1093; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@156928.4]
  assign tval_valid = wb_xcpt & _T_1102; // @[RocketCore.scala 671:28:freechips.rocketchip.system.DefaultRV32Config.fir@156929.4]
  assign _T_1105 = wb_reg_valid ? 3'h0 : 3'h4; // @[CSR.scala 131:15:freechips.rocketchip.system.DefaultRV32Config.fir@156941.4]
  assign _T_1106 = ~ _T_1105; // @[CSR.scala 131:11:freechips.rocketchip.system.DefaultRV32Config.fir@156942.4]
  assign _T_1117 = 32'h1 << ll_waddr; // @[RocketCore.scala 946:62:freechips.rocketchip.system.DefaultRV32Config.fir@156958.4]
  assign _T_1118 = ll_wen ? _T_1117 : 32'h0; // @[RocketCore.scala 946:49:freechips.rocketchip.system.DefaultRV32Config.fir@156959.4]
  assign _T_1119 = ~ _T_1118; // @[RocketCore.scala 938:64:freechips.rocketchip.system.DefaultRV32Config.fir@156960.4]
  assign _T_1120 = _T_1116 & _T_1119; // @[RocketCore.scala 938:62:freechips.rocketchip.system.DefaultRV32Config.fir@156961.4]
  assign _T_1144 = wb_set_sboard & wb_wen; // @[RocketCore.scala 705:28:freechips.rocketchip.system.DefaultRV32Config.fir@156989.4]
  assign _T_1145 = 32'h1 << wb_waddr; // @[RocketCore.scala 946:62:freechips.rocketchip.system.DefaultRV32Config.fir@156990.4]
  assign _T_1146 = _T_1144 ? _T_1145 : 32'h0; // @[RocketCore.scala 946:49:freechips.rocketchip.system.DefaultRV32Config.fir@156991.4]
  assign _T_1147 = _T_1120 | _T_1146; // @[RocketCore.scala 937:60:freechips.rocketchip.system.DefaultRV32Config.fir@156992.4]
  assign _T_1148 = ll_wen | _T_1144; // @[RocketCore.scala 949:17:freechips.rocketchip.system.DefaultRV32Config.fir@156993.4]
  assign _T_1228 = wb_dcache_miss & wb_ctrl_wfd; // @[RocketCore.scala 730:35:freechips.rocketchip.system.DefaultRV32Config.fir@157089.4]
  assign _T_1229 = _T_1228 | io_fpu_sboard_set; // @[RocketCore.scala 730:50:freechips.rocketchip.system.DefaultRV32Config.fir@157090.4]
  assign _T_1230 = _T_1229 & wb_valid; // @[RocketCore.scala 730:72:freechips.rocketchip.system.DefaultRV32Config.fir@157091.4]
  assign _T_1232 = _T_1230 ? _T_1145 : 32'h0; // @[RocketCore.scala 946:49:freechips.rocketchip.system.DefaultRV32Config.fir@157093.4]
  assign _T_1233 = _T_1227 | _T_1232; // @[RocketCore.scala 937:60:freechips.rocketchip.system.DefaultRV32Config.fir@157094.4]
  assign _T_1235 = dmem_resp_replay & _T_1056; // @[RocketCore.scala 731:38:freechips.rocketchip.system.DefaultRV32Config.fir@157099.4]
  assign _T_1236 = 32'h1 << dmem_resp_waddr; // @[RocketCore.scala 946:62:freechips.rocketchip.system.DefaultRV32Config.fir@157100.4]
  assign _T_1237 = _T_1235 ? _T_1236 : 32'h0; // @[RocketCore.scala 946:49:freechips.rocketchip.system.DefaultRV32Config.fir@157101.4]
  assign _T_1238 = ~ _T_1237; // @[RocketCore.scala 938:64:freechips.rocketchip.system.DefaultRV32Config.fir@157102.4]
  assign _T_1239 = _T_1233 & _T_1238; // @[RocketCore.scala 938:62:freechips.rocketchip.system.DefaultRV32Config.fir@157103.4]
  assign _T_1240 = _T_1230 | _T_1235; // @[RocketCore.scala 949:17:freechips.rocketchip.system.DefaultRV32Config.fir@157104.4]
  assign _T_1241 = 32'h1 << io_fpu_sboard_clra; // @[RocketCore.scala 946:62:freechips.rocketchip.system.DefaultRV32Config.fir@157108.4]
  assign _T_1242 = io_fpu_sboard_clr ? _T_1241 : 32'h0; // @[RocketCore.scala 946:49:freechips.rocketchip.system.DefaultRV32Config.fir@157109.4]
  assign _T_1243 = ~ _T_1242; // @[RocketCore.scala 938:64:freechips.rocketchip.system.DefaultRV32Config.fir@157110.4]
  assign _T_1244 = _T_1239 & _T_1243; // @[RocketCore.scala 938:62:freechips.rocketchip.system.DefaultRV32Config.fir@157111.4]
  assign _T_1245 = _T_1240 | io_fpu_sboard_clr; // @[RocketCore.scala 949:17:freechips.rocketchip.system.DefaultRV32Config.fir@157112.4]
  assign _T_1263 = _T_719 & _T_1267; // @[RocketCore.scala 740:60:freechips.rocketchip.system.DefaultRV32Config.fir@157135.4]
  assign _T_1264 = blocked | io_dmem_req_valid; // @[RocketCore.scala 740:95:freechips.rocketchip.system.DefaultRV32Config.fir@157136.4]
  assign _T_1265 = _T_1264 | io_dmem_s2_nack; // @[RocketCore.scala 740:116:freechips.rocketchip.system.DefaultRV32Config.fir@157137.4]
  assign _T_1307 = wb_xcpt | csr_io_eret; // @[RocketCore.scala 763:17:freechips.rocketchip.system.DefaultRV32Config.fir@157187.4]
  assign _T_1308 = replay_wb_common ? wb_reg_pc : mem_npc; // @[RocketCore.scala 764:8:freechips.rocketchip.system.DefaultRV32Config.fir@157188.4]
  assign _T_1310 = wb_reg_valid & wb_ctrl_fence_i; // @[RocketCore.scala 766:40:freechips.rocketchip.system.DefaultRV32Config.fir@157191.4]
  assign _T_1311 = io_dmem_s2_nack == 1'h0; // @[RocketCore.scala 766:62:freechips.rocketchip.system.DefaultRV32Config.fir@157192.4]
  assign _T_1313 = ex_pc_valid | mem_pc_valid; // @[RocketCore.scala 768:43:freechips.rocketchip.system.DefaultRV32Config.fir@157195.4]
  assign _T_1314 = io_ptw_customCSRs_csrs_0_value[1]; // @[CustomCSRs.scala 38:61:freechips.rocketchip.system.DefaultRV32Config.fir@157196.4]
  assign _T_1321 = mem_reg_valid & _T_1002; // @[RocketCore.scala 780:45:freechips.rocketchip.system.DefaultRV32Config.fir@157212.4]
  assign _T_1322 = _T_1321 & mem_wrong_npc; // @[RocketCore.scala 780:60:freechips.rocketchip.system.DefaultRV32Config.fir@157213.4]
  assign _T_1323 = mem_cfi == 1'h0; // @[RocketCore.scala 780:81:freechips.rocketchip.system.DefaultRV32Config.fir@157214.4]
  assign _T_1324 = _T_1323 | mem_cfi_taken; // @[RocketCore.scala 780:90:freechips.rocketchip.system.DefaultRV32Config.fir@157215.4]
  assign _T_1326 = mem_ctrl_jal | mem_ctrl_jalr; // @[RocketCore.scala 783:23:freechips.rocketchip.system.DefaultRV32Config.fir@157219.4]
  assign _T_1327 = mem_waddr[0]; // @[RocketCore.scala 783:53:freechips.rocketchip.system.DefaultRV32Config.fir@157220.4]
  assign _T_1328 = _T_1326 & _T_1327; // @[RocketCore.scala 783:41:freechips.rocketchip.system.DefaultRV32Config.fir@157221.4]
  assign _T_1329 = mem_reg_inst[19:15]; // @[RocketCore.scala 784:39:freechips.rocketchip.system.DefaultRV32Config.fir@157222.4]
  assign _T_1331 = _T_1329 & 5'h1b; // @[RocketCore.scala 784:62:freechips.rocketchip.system.DefaultRV32Config.fir@157224.4]
  assign _T_1332 = 5'h1 == _T_1331; // @[RocketCore.scala 784:62:freechips.rocketchip.system.DefaultRV32Config.fir@157225.4]
  assign _T_1333 = mem_ctrl_jalr & _T_1332; // @[RocketCore.scala 784:23:freechips.rocketchip.system.DefaultRV32Config.fir@157226.4]
  assign _T_1336 = _T_1333 ? 2'h3 : {{1'd0}, _T_1326}; // @[RocketCore.scala 784:8:freechips.rocketchip.system.DefaultRV32Config.fir@157229.4]
  assign _T_1338 = mem_reg_rvc ? 2'h0 : 2'h2; // @[RocketCore.scala 788:74:freechips.rocketchip.system.DefaultRV32Config.fir@157233.4]
  assign _GEN_256 = {{30'd0}, _T_1338}; // @[RocketCore.scala 788:69:freechips.rocketchip.system.DefaultRV32Config.fir@157234.4]
  assign _T_1341 = ~ io_imem_btb_update_bits_br_pc; // @[RocketCore.scala 789:35:freechips.rocketchip.system.DefaultRV32Config.fir@157237.4]
  assign _T_1342 = _T_1341 | 32'h3; // @[RocketCore.scala 789:66:freechips.rocketchip.system.DefaultRV32Config.fir@157238.4]
  assign ex_dcache_tag = {ex_waddr,ex_ctrl_fp}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@157266.4]
  assign _T_1351 = ex_reg_inst[14]; // @[RocketCore.scala 816:42:freechips.rocketchip.system.DefaultRV32Config.fir@157270.4]
  assign _T_1354 = killm_common | mem_ldst_xcpt; // @[RocketCore.scala 820:35:freechips.rocketchip.system.DefaultRV32Config.fir@157277.4]
  assign _T_1369 = wb_reg_inst[19:15]; // @[RocketCore.scala 828:58:freechips.rocketchip.system.DefaultRV32Config.fir@157306.4]
  assign _T_1370 = wb_reg_inst[24:20]; // @[RocketCore.scala 828:58:freechips.rocketchip.system.DefaultRV32Config.fir@157308.4]
  assign _T_1372 = csr_io_time[4:0]; // @[RocketCore.scala 833:28:freechips.rocketchip.system.DefaultRV32Config.fir@157315.4]
  assign _T_1373 = _T_1372 == 5'h0; // @[RocketCore.scala 833:62:freechips.rocketchip.system.DefaultRV32Config.fir@157316.4]
  assign _T_1374 = _T_1373 | io_dmem_perf_release; // @[RocketCore.scala 833:68:freechips.rocketchip.system.DefaultRV32Config.fir@157317.4]
  assign unpause = _T_1374 | take_pc_mem_wb; // @[RocketCore.scala 833:92:freechips.rocketchip.system.DefaultRV32Config.fir@157318.4]
  assign coreMonitorBundle_timer = csr_io_time; // @[RocketCore.scala 859:41:freechips.rocketchip.system.DefaultRV32Config.fir@157334.4]
  assign _T_1380 = csr_io_trace_0_exception == 1'h0; // @[RocketCore.scala 860:55:freechips.rocketchip.system.DefaultRV32Config.fir@157336.4]
  assign coreMonitorBundle_valid = csr_io_trace_0_valid & _T_1380; // @[RocketCore.scala 860:52:freechips.rocketchip.system.DefaultRV32Config.fir@157337.4]
  assign coreMonitorBundle_pc = csr_io_trace_0_iaddr; // @[RocketCore.scala 861:48:freechips.rocketchip.system.DefaultRV32Config.fir@157339.4]
  assign _T_1384 = _T_1144 == 1'h0; // @[RocketCore.scala 862:44:freechips.rocketchip.system.DefaultRV32Config.fir@157342.4]
  assign _T_1385 = rf_wen & _T_1384; // @[RocketCore.scala 862:41:freechips.rocketchip.system.DefaultRV32Config.fir@157343.4]
  assign coreMonitorBundle_wrdst = _T_1385 ? rf_waddr : 5'h0; // @[RocketCore.scala 862:33:freechips.rocketchip.system.DefaultRV32Config.fir@157344.4]
  assign _T_1393 = rf_wen ? coreMonitorBundle_wrdst : 5'h0; // @[RocketCore.scala 901:13:freechips.rocketchip.system.DefaultRV32Config.fir@157363.4]
  assign _T_1395 = reset == 1'h0; // @[RocketCore.scala 898:11:freechips.rocketchip.system.DefaultRV32Config.fir@157365.4]
  assign coreMonitorBundle_inst = csr_io_trace_0_insn; // @[RocketCore.scala 854:31:freechips.rocketchip.system.DefaultRV32Config.fir@157329.4 RocketCore.scala 869:26:freechips.rocketchip.system.DefaultRV32Config.fir@157362.4]
  assign io_imem_might_request = imem_might_request_reg; // @[RocketCore.scala 767:25:freechips.rocketchip.system.DefaultRV32Config.fir@157199.4]
  assign io_imem_req_valid = take_pc_wb | take_pc_mem; // @[RocketCore.scala 760:21:freechips.rocketchip.system.DefaultRV32Config.fir@157184.4]
  assign io_imem_req_bits_pc = _T_1307 ? csr_io_evec : _T_1308; // @[RocketCore.scala 762:23:freechips.rocketchip.system.DefaultRV32Config.fir@157190.4]
  assign io_imem_req_bits_speculative = take_pc_wb == 1'h0; // @[RocketCore.scala 761:32:freechips.rocketchip.system.DefaultRV32Config.fir@157186.4]
  assign io_imem_sfence_valid = wb_reg_valid & wb_reg_sfence; // @[RocketCore.scala 771:24:freechips.rocketchip.system.DefaultRV32Config.fir@157201.4]
  assign io_imem_sfence_bits_rs1 = wb_reg_mem_size[0]; // @[RocketCore.scala 772:27:freechips.rocketchip.system.DefaultRV32Config.fir@157203.4]
  assign io_imem_sfence_bits_rs2 = wb_reg_mem_size[1]; // @[RocketCore.scala 773:27:freechips.rocketchip.system.DefaultRV32Config.fir@157205.4]
  assign io_imem_sfence_bits_addr = wb_reg_wdata; // @[RocketCore.scala 774:28:freechips.rocketchip.system.DefaultRV32Config.fir@157206.4]
  assign io_imem_resp_ready = ibuf_io_imem_ready; // @[RocketCore.scala 242:16:freechips.rocketchip.system.DefaultRV32Config.fir@155493.4]
  assign io_imem_btb_update_valid = _T_1322 & _T_1324; // @[RocketCore.scala 780:28:freechips.rocketchip.system.DefaultRV32Config.fir@157217.4]
  assign io_imem_btb_update_bits_prediction_entry = mem_reg_btb_resp_entry; // @[RocketCore.scala 790:38:freechips.rocketchip.system.DefaultRV32Config.fir@157241.4]
  assign io_imem_btb_update_bits_pc = ~ _T_1342; // @[RocketCore.scala 789:30:freechips.rocketchip.system.DefaultRV32Config.fir@157240.4]
  assign io_imem_btb_update_bits_isValid = _T_892 | mem_ctrl_jal; // @[RocketCore.scala 781:35:freechips.rocketchip.system.DefaultRV32Config.fir@157218.4]
  assign io_imem_btb_update_bits_br_pc = mem_reg_pc + _GEN_256; // @[RocketCore.scala 788:33:freechips.rocketchip.system.DefaultRV32Config.fir@157236.4]
  assign io_imem_btb_update_bits_cfiType = _T_1328 ? 2'h2 : _T_1336; // @[RocketCore.scala 782:35:freechips.rocketchip.system.DefaultRV32Config.fir@157231.4]
  assign io_imem_bht_update_valid = mem_reg_valid & _T_1002; // @[RocketCore.scala 792:28:freechips.rocketchip.system.DefaultRV32Config.fir@157244.4]
  assign io_imem_bht_update_bits_prediction_history = mem_reg_btb_resp_bht_history; // @[RocketCore.scala 797:38:freechips.rocketchip.system.DefaultRV32Config.fir@157249.4]
  assign io_imem_bht_update_bits_pc = io_imem_btb_update_bits_pc; // @[RocketCore.scala 793:30:freechips.rocketchip.system.DefaultRV32Config.fir@157245.4]
  assign io_imem_bht_update_bits_branch = mem_ctrl_branch; // @[RocketCore.scala 796:34:freechips.rocketchip.system.DefaultRV32Config.fir@157248.4]
  assign io_imem_bht_update_bits_taken = mem_br_taken; // @[RocketCore.scala 794:33:freechips.rocketchip.system.DefaultRV32Config.fir@157246.4]
  assign io_imem_bht_update_bits_mispredict = ex_pc_valid ? _T_878 : _T_881; // @[RocketCore.scala 795:38:freechips.rocketchip.system.DefaultRV32Config.fir@157247.4]
  assign io_imem_flush_icache = _T_1310 & _T_1311; // @[RocketCore.scala 766:24:freechips.rocketchip.system.DefaultRV32Config.fir@157194.4]
  assign io_dmem_req_valid = ex_reg_valid & ex_ctrl_mem; // @[RocketCore.scala 810:25:freechips.rocketchip.system.DefaultRV32Config.fir@157265.4]
  assign io_dmem_req_bits_addr = alu_io_adder_out; // @[RocketCore.scala 818:25:freechips.rocketchip.system.DefaultRV32Config.fir@157274.4]
  assign io_dmem_req_bits_tag = {{1'd0}, ex_dcache_tag}; // @[RocketCore.scala 813:25:freechips.rocketchip.system.DefaultRV32Config.fir@157267.4]
  assign io_dmem_req_bits_cmd = ex_ctrl_mem_cmd; // @[RocketCore.scala 814:25:freechips.rocketchip.system.DefaultRV32Config.fir@157268.4]
  assign io_dmem_req_bits_size = ex_reg_mem_size; // @[RocketCore.scala 815:25:freechips.rocketchip.system.DefaultRV32Config.fir@157269.4]
  assign io_dmem_req_bits_signed = _T_1351 == 1'h0; // @[RocketCore.scala 816:27:freechips.rocketchip.system.DefaultRV32Config.fir@157272.4]
  assign io_dmem_s1_kill = _T_1354 | fpu_kill_mem; // @[RocketCore.scala 820:19:freechips.rocketchip.system.DefaultRV32Config.fir@157279.4]
  assign io_dmem_s1_data_data = mem_ctrl_fp ? io_fpu_store_data : mem_reg_rs2; // @[RocketCore.scala 819:24:freechips.rocketchip.system.DefaultRV32Config.fir@157276.4]
  assign io_ptw_ptbr_mode = csr_io_ptbr_mode; // @[RocketCore.scala 676:15:freechips.rocketchip.system.DefaultRV32Config.fir@156932.4]
  assign io_ptw_ptbr_ppn = csr_io_ptbr_ppn; // @[RocketCore.scala 676:15:freechips.rocketchip.system.DefaultRV32Config.fir@156932.4]
  assign io_ptw_sfence_valid = io_imem_sfence_valid; // @[RocketCore.scala 776:17:freechips.rocketchip.system.DefaultRV32Config.fir@157208.4]
  assign io_ptw_sfence_bits_rs1 = io_imem_sfence_bits_rs1; // @[RocketCore.scala 776:17:freechips.rocketchip.system.DefaultRV32Config.fir@157208.4]
  assign io_ptw_status_debug = csr_io_status_debug; // @[RocketCore.scala 678:17:freechips.rocketchip.system.DefaultRV32Config.fir@156937.4]
  assign io_ptw_status_dprv = csr_io_status_dprv; // @[RocketCore.scala 678:17:freechips.rocketchip.system.DefaultRV32Config.fir@156937.4]
  assign io_ptw_status_prv = csr_io_status_prv; // @[RocketCore.scala 678:17:freechips.rocketchip.system.DefaultRV32Config.fir@156937.4]
  assign io_ptw_status_mxr = csr_io_status_mxr; // @[RocketCore.scala 678:17:freechips.rocketchip.system.DefaultRV32Config.fir@156937.4]
  assign io_ptw_status_sum = csr_io_status_sum; // @[RocketCore.scala 678:17:freechips.rocketchip.system.DefaultRV32Config.fir@156937.4]
  assign io_ptw_pmp_0_cfg_l = csr_io_pmp_0_cfg_l; // @[RocketCore.scala 679:14:freechips.rocketchip.system.DefaultRV32Config.fir@156938.4]
  assign io_ptw_pmp_0_cfg_a = csr_io_pmp_0_cfg_a; // @[RocketCore.scala 679:14:freechips.rocketchip.system.DefaultRV32Config.fir@156938.4]
  assign io_ptw_pmp_0_cfg_x = csr_io_pmp_0_cfg_x; // @[RocketCore.scala 679:14:freechips.rocketchip.system.DefaultRV32Config.fir@156938.4]
  assign io_ptw_pmp_0_cfg_w = csr_io_pmp_0_cfg_w; // @[RocketCore.scala 679:14:freechips.rocketchip.system.DefaultRV32Config.fir@156938.4]
  assign io_ptw_pmp_0_cfg_r = csr_io_pmp_0_cfg_r; // @[RocketCore.scala 679:14:freechips.rocketchip.system.DefaultRV32Config.fir@156938.4]
  assign io_ptw_pmp_0_addr = csr_io_pmp_0_addr; // @[RocketCore.scala 679:14:freechips.rocketchip.system.DefaultRV32Config.fir@156938.4]
  assign io_ptw_pmp_0_mask = csr_io_pmp_0_mask; // @[RocketCore.scala 679:14:freechips.rocketchip.system.DefaultRV32Config.fir@156938.4]
  assign io_ptw_pmp_1_cfg_l = csr_io_pmp_1_cfg_l; // @[RocketCore.scala 679:14:freechips.rocketchip.system.DefaultRV32Config.fir@156938.4]
  assign io_ptw_pmp_1_cfg_a = csr_io_pmp_1_cfg_a; // @[RocketCore.scala 679:14:freechips.rocketchip.system.DefaultRV32Config.fir@156938.4]
  assign io_ptw_pmp_1_cfg_x = csr_io_pmp_1_cfg_x; // @[RocketCore.scala 679:14:freechips.rocketchip.system.DefaultRV32Config.fir@156938.4]
  assign io_ptw_pmp_1_cfg_w = csr_io_pmp_1_cfg_w; // @[RocketCore.scala 679:14:freechips.rocketchip.system.DefaultRV32Config.fir@156938.4]
  assign io_ptw_pmp_1_cfg_r = csr_io_pmp_1_cfg_r; // @[RocketCore.scala 679:14:freechips.rocketchip.system.DefaultRV32Config.fir@156938.4]
  assign io_ptw_pmp_1_addr = csr_io_pmp_1_addr; // @[RocketCore.scala 679:14:freechips.rocketchip.system.DefaultRV32Config.fir@156938.4]
  assign io_ptw_pmp_1_mask = csr_io_pmp_1_mask; // @[RocketCore.scala 679:14:freechips.rocketchip.system.DefaultRV32Config.fir@156938.4]
  assign io_ptw_pmp_2_cfg_l = csr_io_pmp_2_cfg_l; // @[RocketCore.scala 679:14:freechips.rocketchip.system.DefaultRV32Config.fir@156938.4]
  assign io_ptw_pmp_2_cfg_a = csr_io_pmp_2_cfg_a; // @[RocketCore.scala 679:14:freechips.rocketchip.system.DefaultRV32Config.fir@156938.4]
  assign io_ptw_pmp_2_cfg_x = csr_io_pmp_2_cfg_x; // @[RocketCore.scala 679:14:freechips.rocketchip.system.DefaultRV32Config.fir@156938.4]
  assign io_ptw_pmp_2_cfg_w = csr_io_pmp_2_cfg_w; // @[RocketCore.scala 679:14:freechips.rocketchip.system.DefaultRV32Config.fir@156938.4]
  assign io_ptw_pmp_2_cfg_r = csr_io_pmp_2_cfg_r; // @[RocketCore.scala 679:14:freechips.rocketchip.system.DefaultRV32Config.fir@156938.4]
  assign io_ptw_pmp_2_addr = csr_io_pmp_2_addr; // @[RocketCore.scala 679:14:freechips.rocketchip.system.DefaultRV32Config.fir@156938.4]
  assign io_ptw_pmp_2_mask = csr_io_pmp_2_mask; // @[RocketCore.scala 679:14:freechips.rocketchip.system.DefaultRV32Config.fir@156938.4]
  assign io_ptw_pmp_3_cfg_l = csr_io_pmp_3_cfg_l; // @[RocketCore.scala 679:14:freechips.rocketchip.system.DefaultRV32Config.fir@156938.4]
  assign io_ptw_pmp_3_cfg_a = csr_io_pmp_3_cfg_a; // @[RocketCore.scala 679:14:freechips.rocketchip.system.DefaultRV32Config.fir@156938.4]
  assign io_ptw_pmp_3_cfg_x = csr_io_pmp_3_cfg_x; // @[RocketCore.scala 679:14:freechips.rocketchip.system.DefaultRV32Config.fir@156938.4]
  assign io_ptw_pmp_3_cfg_w = csr_io_pmp_3_cfg_w; // @[RocketCore.scala 679:14:freechips.rocketchip.system.DefaultRV32Config.fir@156938.4]
  assign io_ptw_pmp_3_cfg_r = csr_io_pmp_3_cfg_r; // @[RocketCore.scala 679:14:freechips.rocketchip.system.DefaultRV32Config.fir@156938.4]
  assign io_ptw_pmp_3_addr = csr_io_pmp_3_addr; // @[RocketCore.scala 679:14:freechips.rocketchip.system.DefaultRV32Config.fir@156938.4]
  assign io_ptw_pmp_3_mask = csr_io_pmp_3_mask; // @[RocketCore.scala 679:14:freechips.rocketchip.system.DefaultRV32Config.fir@156938.4]
  assign io_ptw_pmp_4_cfg_l = csr_io_pmp_4_cfg_l; // @[RocketCore.scala 679:14:freechips.rocketchip.system.DefaultRV32Config.fir@156938.4]
  assign io_ptw_pmp_4_cfg_a = csr_io_pmp_4_cfg_a; // @[RocketCore.scala 679:14:freechips.rocketchip.system.DefaultRV32Config.fir@156938.4]
  assign io_ptw_pmp_4_cfg_x = csr_io_pmp_4_cfg_x; // @[RocketCore.scala 679:14:freechips.rocketchip.system.DefaultRV32Config.fir@156938.4]
  assign io_ptw_pmp_4_cfg_w = csr_io_pmp_4_cfg_w; // @[RocketCore.scala 679:14:freechips.rocketchip.system.DefaultRV32Config.fir@156938.4]
  assign io_ptw_pmp_4_cfg_r = csr_io_pmp_4_cfg_r; // @[RocketCore.scala 679:14:freechips.rocketchip.system.DefaultRV32Config.fir@156938.4]
  assign io_ptw_pmp_4_addr = csr_io_pmp_4_addr; // @[RocketCore.scala 679:14:freechips.rocketchip.system.DefaultRV32Config.fir@156938.4]
  assign io_ptw_pmp_4_mask = csr_io_pmp_4_mask; // @[RocketCore.scala 679:14:freechips.rocketchip.system.DefaultRV32Config.fir@156938.4]
  assign io_ptw_pmp_5_cfg_l = csr_io_pmp_5_cfg_l; // @[RocketCore.scala 679:14:freechips.rocketchip.system.DefaultRV32Config.fir@156938.4]
  assign io_ptw_pmp_5_cfg_a = csr_io_pmp_5_cfg_a; // @[RocketCore.scala 679:14:freechips.rocketchip.system.DefaultRV32Config.fir@156938.4]
  assign io_ptw_pmp_5_cfg_x = csr_io_pmp_5_cfg_x; // @[RocketCore.scala 679:14:freechips.rocketchip.system.DefaultRV32Config.fir@156938.4]
  assign io_ptw_pmp_5_cfg_w = csr_io_pmp_5_cfg_w; // @[RocketCore.scala 679:14:freechips.rocketchip.system.DefaultRV32Config.fir@156938.4]
  assign io_ptw_pmp_5_cfg_r = csr_io_pmp_5_cfg_r; // @[RocketCore.scala 679:14:freechips.rocketchip.system.DefaultRV32Config.fir@156938.4]
  assign io_ptw_pmp_5_addr = csr_io_pmp_5_addr; // @[RocketCore.scala 679:14:freechips.rocketchip.system.DefaultRV32Config.fir@156938.4]
  assign io_ptw_pmp_5_mask = csr_io_pmp_5_mask; // @[RocketCore.scala 679:14:freechips.rocketchip.system.DefaultRV32Config.fir@156938.4]
  assign io_ptw_pmp_6_cfg_l = csr_io_pmp_6_cfg_l; // @[RocketCore.scala 679:14:freechips.rocketchip.system.DefaultRV32Config.fir@156938.4]
  assign io_ptw_pmp_6_cfg_a = csr_io_pmp_6_cfg_a; // @[RocketCore.scala 679:14:freechips.rocketchip.system.DefaultRV32Config.fir@156938.4]
  assign io_ptw_pmp_6_cfg_x = csr_io_pmp_6_cfg_x; // @[RocketCore.scala 679:14:freechips.rocketchip.system.DefaultRV32Config.fir@156938.4]
  assign io_ptw_pmp_6_cfg_w = csr_io_pmp_6_cfg_w; // @[RocketCore.scala 679:14:freechips.rocketchip.system.DefaultRV32Config.fir@156938.4]
  assign io_ptw_pmp_6_cfg_r = csr_io_pmp_6_cfg_r; // @[RocketCore.scala 679:14:freechips.rocketchip.system.DefaultRV32Config.fir@156938.4]
  assign io_ptw_pmp_6_addr = csr_io_pmp_6_addr; // @[RocketCore.scala 679:14:freechips.rocketchip.system.DefaultRV32Config.fir@156938.4]
  assign io_ptw_pmp_6_mask = csr_io_pmp_6_mask; // @[RocketCore.scala 679:14:freechips.rocketchip.system.DefaultRV32Config.fir@156938.4]
  assign io_ptw_pmp_7_cfg_l = csr_io_pmp_7_cfg_l; // @[RocketCore.scala 679:14:freechips.rocketchip.system.DefaultRV32Config.fir@156938.4]
  assign io_ptw_pmp_7_cfg_a = csr_io_pmp_7_cfg_a; // @[RocketCore.scala 679:14:freechips.rocketchip.system.DefaultRV32Config.fir@156938.4]
  assign io_ptw_pmp_7_cfg_x = csr_io_pmp_7_cfg_x; // @[RocketCore.scala 679:14:freechips.rocketchip.system.DefaultRV32Config.fir@156938.4]
  assign io_ptw_pmp_7_cfg_w = csr_io_pmp_7_cfg_w; // @[RocketCore.scala 679:14:freechips.rocketchip.system.DefaultRV32Config.fir@156938.4]
  assign io_ptw_pmp_7_cfg_r = csr_io_pmp_7_cfg_r; // @[RocketCore.scala 679:14:freechips.rocketchip.system.DefaultRV32Config.fir@156938.4]
  assign io_ptw_pmp_7_addr = csr_io_pmp_7_addr; // @[RocketCore.scala 679:14:freechips.rocketchip.system.DefaultRV32Config.fir@156938.4]
  assign io_ptw_pmp_7_mask = csr_io_pmp_7_mask; // @[RocketCore.scala 679:14:freechips.rocketchip.system.DefaultRV32Config.fir@156938.4]
  assign io_ptw_customCSRs_csrs_0_value = 32'h0; // @[RocketCore.scala 677:79:freechips.rocketchip.system.DefaultRV32Config.fir@156933.4]
  assign io_fpu_inst = ibuf_io_inst_0_bits_inst_bits; // @[RocketCore.scala 802:15:freechips.rocketchip.system.DefaultRV32Config.fir@157255.4]
  assign io_fpu_fromint_data = ex_reg_rs_bypass_0 ? _T_583 : _T_584; // @[RocketCore.scala 803:23:freechips.rocketchip.system.DefaultRV32Config.fir@157256.4]
  assign io_fpu_fcsr_rm = csr_io_fcsr_rm; // @[RocketCore.scala 667:18:freechips.rocketchip.system.DefaultRV32Config.fir@156906.4]
  assign io_fpu_dmem_resp_val = dmem_resp_valid & _T_1056; // @[RocketCore.scala 804:24:freechips.rocketchip.system.DefaultRV32Config.fir@157258.4]
  assign io_fpu_dmem_resp_tag = io_dmem_resp_bits_tag[5:1]; // @[RocketCore.scala 807:24:freechips.rocketchip.system.DefaultRV32Config.fir@157261.4]
  assign io_fpu_dmem_resp_data = io_dmem_resp_bits_data_word_bypass; // @[RocketCore.scala 805:25:freechips.rocketchip.system.DefaultRV32Config.fir@157259.4]
  assign io_fpu_valid = _T_668 & id_ctrl_fp; // @[RocketCore.scala 799:16:freechips.rocketchip.system.DefaultRV32Config.fir@157252.4]
  assign io_fpu_killx = _T_725 | _T_726; // @[RocketCore.scala 800:16:freechips.rocketchip.system.DefaultRV32Config.fir@157253.4]
  assign io_fpu_killm = _T_995 | _T_996; // @[RocketCore.scala 801:16:freechips.rocketchip.system.DefaultRV32Config.fir@157254.4]
  assign ibuf_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155491.4]
  assign ibuf_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@155492.4]
  assign ibuf_io_imem_valid = io_imem_resp_valid; // @[RocketCore.scala 242:16:freechips.rocketchip.system.DefaultRV32Config.fir@155493.4]
  assign ibuf_io_imem_bits_btb_taken = io_imem_resp_bits_btb_taken; // @[RocketCore.scala 242:16:freechips.rocketchip.system.DefaultRV32Config.fir@155493.4]
  assign ibuf_io_imem_bits_btb_bridx = io_imem_resp_bits_btb_bridx; // @[RocketCore.scala 242:16:freechips.rocketchip.system.DefaultRV32Config.fir@155493.4]
  assign ibuf_io_imem_bits_btb_entry = io_imem_resp_bits_btb_entry; // @[RocketCore.scala 242:16:freechips.rocketchip.system.DefaultRV32Config.fir@155493.4]
  assign ibuf_io_imem_bits_btb_bht_history = io_imem_resp_bits_btb_bht_history; // @[RocketCore.scala 242:16:freechips.rocketchip.system.DefaultRV32Config.fir@155493.4]
  assign ibuf_io_imem_bits_pc = io_imem_resp_bits_pc; // @[RocketCore.scala 242:16:freechips.rocketchip.system.DefaultRV32Config.fir@155493.4]
  assign ibuf_io_imem_bits_data = io_imem_resp_bits_data; // @[RocketCore.scala 242:16:freechips.rocketchip.system.DefaultRV32Config.fir@155493.4]
  assign ibuf_io_imem_bits_xcpt_pf_inst = io_imem_resp_bits_xcpt_pf_inst; // @[RocketCore.scala 242:16:freechips.rocketchip.system.DefaultRV32Config.fir@155493.4]
  assign ibuf_io_imem_bits_xcpt_ae_inst = io_imem_resp_bits_xcpt_ae_inst; // @[RocketCore.scala 242:16:freechips.rocketchip.system.DefaultRV32Config.fir@155493.4]
  assign ibuf_io_imem_bits_replay = io_imem_resp_bits_replay; // @[RocketCore.scala 242:16:freechips.rocketchip.system.DefaultRV32Config.fir@155493.4]
  assign ibuf_io_kill = take_pc_wb | take_pc_mem; // @[RocketCore.scala 243:16:freechips.rocketchip.system.DefaultRV32Config.fir@155494.4]
  assign ibuf_io_inst_0_ready = ctrl_stalld == 1'h0; // @[RocketCore.scala 778:25:freechips.rocketchip.system.DefaultRV32Config.fir@157210.4]
  assign csr_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@156005.4]
  assign csr_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@156006.4]
  assign csr_io_ungated_clock = clock; // @[RocketCore.scala 659:24:freechips.rocketchip.system.DefaultRV32Config.fir@156891.4]
  assign csr_io_interrupts_debug = io_interrupts_debug; // @[RocketCore.scala 665:21:freechips.rocketchip.system.DefaultRV32Config.fir@156904.4]
  assign csr_io_interrupts_mtip = io_interrupts_mtip; // @[RocketCore.scala 665:21:freechips.rocketchip.system.DefaultRV32Config.fir@156904.4]
  assign csr_io_interrupts_msip = io_interrupts_msip; // @[RocketCore.scala 665:21:freechips.rocketchip.system.DefaultRV32Config.fir@156904.4]
  assign csr_io_interrupts_meip = io_interrupts_meip; // @[RocketCore.scala 665:21:freechips.rocketchip.system.DefaultRV32Config.fir@156904.4]
  assign csr_io_interrupts_seip = io_interrupts_seip; // @[RocketCore.scala 665:21:freechips.rocketchip.system.DefaultRV32Config.fir@156904.4]
  assign csr_io_rw_addr = wb_reg_inst[31:20]; // @[RocketCore.scala 680:18:freechips.rocketchip.system.DefaultRV32Config.fir@156940.4]
  assign csr_io_rw_cmd = wb_ctrl_csr & _T_1106; // @[RocketCore.scala 681:17:freechips.rocketchip.system.DefaultRV32Config.fir@156944.4]
  assign csr_io_rw_wdata = wb_reg_wdata; // @[RocketCore.scala 682:19:freechips.rocketchip.system.DefaultRV32Config.fir@156945.4]
  assign csr_io_decode_0_csr = ibuf_io_inst_0_bits_raw[31:20]; // @[RocketCore.scala 660:24:freechips.rocketchip.system.DefaultRV32Config.fir@156893.4]
  assign csr_io_exception = _T_1031 | _T_1026; // @[RocketCore.scala 661:20:freechips.rocketchip.system.DefaultRV32Config.fir@156894.4]
  assign csr_io_retire = _T_1063 & _T_1064; // @[RocketCore.scala 663:17:freechips.rocketchip.system.DefaultRV32Config.fir@156896.4]
  assign csr_io_cause = wb_reg_xcpt ? wb_reg_cause : {{28'd0}, _T_1036}; // @[RocketCore.scala 662:16:freechips.rocketchip.system.DefaultRV32Config.fir@156895.4]
  assign csr_io_pc = wb_reg_pc; // @[RocketCore.scala 670:13:freechips.rocketchip.system.DefaultRV32Config.fir@156909.4]
  assign csr_io_tval = tval_valid ? wb_reg_wdata : 32'h0; // @[RocketCore.scala 675:15:freechips.rocketchip.system.DefaultRV32Config.fir@156931.4]
  assign csr_io_fcsr_flags_valid = io_fpu_fcsr_flags_valid; // @[RocketCore.scala 668:21:freechips.rocketchip.system.DefaultRV32Config.fir@156907.4]
  assign csr_io_fcsr_flags_bits = io_fpu_fcsr_flags_bits; // @[RocketCore.scala 668:21:freechips.rocketchip.system.DefaultRV32Config.fir@156907.4]
  assign csr_io_inst_0 = {_T_1081,_T_1082}; // @[RocketCore.scala 664:18:freechips.rocketchip.system.DefaultRV32Config.fir@156903.4]
  assign bpu_io_status_debug = csr_io_status_debug; // @[RocketCore.scala 308:17:freechips.rocketchip.system.DefaultRV32Config.fir@156111.4]
  assign bpu_io_status_prv = csr_io_status_prv; // @[RocketCore.scala 308:17:freechips.rocketchip.system.DefaultRV32Config.fir@156111.4]
  assign bpu_io_bp_0_control_action = csr_io_bp_0_control_action; // @[RocketCore.scala 309:13:freechips.rocketchip.system.DefaultRV32Config.fir@156112.4]
  assign bpu_io_bp_0_control_tmatch = csr_io_bp_0_control_tmatch; // @[RocketCore.scala 309:13:freechips.rocketchip.system.DefaultRV32Config.fir@156112.4]
  assign bpu_io_bp_0_control_m = csr_io_bp_0_control_m; // @[RocketCore.scala 309:13:freechips.rocketchip.system.DefaultRV32Config.fir@156112.4]
  assign bpu_io_bp_0_control_s = csr_io_bp_0_control_s; // @[RocketCore.scala 309:13:freechips.rocketchip.system.DefaultRV32Config.fir@156112.4]
  assign bpu_io_bp_0_control_u = csr_io_bp_0_control_u; // @[RocketCore.scala 309:13:freechips.rocketchip.system.DefaultRV32Config.fir@156112.4]
  assign bpu_io_bp_0_control_x = csr_io_bp_0_control_x; // @[RocketCore.scala 309:13:freechips.rocketchip.system.DefaultRV32Config.fir@156112.4]
  assign bpu_io_bp_0_control_w = csr_io_bp_0_control_w; // @[RocketCore.scala 309:13:freechips.rocketchip.system.DefaultRV32Config.fir@156112.4]
  assign bpu_io_bp_0_control_r = csr_io_bp_0_control_r; // @[RocketCore.scala 309:13:freechips.rocketchip.system.DefaultRV32Config.fir@156112.4]
  assign bpu_io_bp_0_address = csr_io_bp_0_address; // @[RocketCore.scala 309:13:freechips.rocketchip.system.DefaultRV32Config.fir@156112.4]
  assign bpu_io_pc = ibuf_io_pc; // @[RocketCore.scala 310:13:freechips.rocketchip.system.DefaultRV32Config.fir@156113.4]
  assign bpu_io_ea = mem_reg_wdata; // @[RocketCore.scala 311:13:freechips.rocketchip.system.DefaultRV32Config.fir@156114.4]
  assign alu_io_fn = ex_ctrl_alu_fn; // @[RocketCore.scala 369:13:freechips.rocketchip.system.DefaultRV32Config.fir@156267.4]
  assign alu_io_in2 = $unsigned(ex_op2); // @[RocketCore.scala 370:14:freechips.rocketchip.system.DefaultRV32Config.fir@156269.4]
  assign alu_io_in1 = $unsigned(ex_op1); // @[RocketCore.scala 371:14:freechips.rocketchip.system.DefaultRV32Config.fir@156271.4]
  assign div_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@156274.4]
  assign div_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@156275.4]
  assign div_io_req_valid = ex_reg_valid & ex_ctrl_div; // @[RocketCore.scala 392:20:freechips.rocketchip.system.DefaultRV32Config.fir@156277.4]
  assign div_io_req_bits_fn = ex_ctrl_alu_fn; // @[RocketCore.scala 394:22:freechips.rocketchip.system.DefaultRV32Config.fir@156279.4]
  assign div_io_req_bits_in1 = ex_reg_rs_bypass_0 ? _T_583 : _T_584; // @[RocketCore.scala 395:23:freechips.rocketchip.system.DefaultRV32Config.fir@156280.4]
  assign div_io_req_bits_in2 = ex_reg_rs_bypass_1 ? _T_590 : _T_591; // @[RocketCore.scala 396:23:freechips.rocketchip.system.DefaultRV32Config.fir@156281.4]
  assign div_io_req_bits_tag = ex_reg_inst[11:7]; // @[RocketCore.scala 397:23:freechips.rocketchip.system.DefaultRV32Config.fir@156282.4]
  assign div_io_kill = killm_common & _T_998; // @[RocketCore.scala 565:15:freechips.rocketchip.system.DefaultRV32Config.fir@156749.4]
  assign div_io_resp_ready = _T_1061 ? 1'h0 : _T_1290; // @[RocketCore.scala 626:21:freechips.rocketchip.system.DefaultRV32Config.fir@156843.4 RocketCore.scala 640:23:freechips.rocketchip.system.DefaultRV32Config.fir@156856.6]
  assign PlusArgTimeout_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@157370.4]
  assign PlusArgTimeout_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@157371.4]
  assign PlusArgTimeout_io_count = csr_io_time; // @[PlusArg.scala 53:82:freechips.rocketchip.system.DefaultRV32Config.fir@157372.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  _RAND_0 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 31; initvar = initvar+1)
    _T_383[initvar] = _RAND_0[31:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_1 = {1{`RANDOM}};
  _RAND_2 = {1{`RANDOM}};
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  id_reg_pause = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  imem_might_request_reg = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  ex_ctrl_fp = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  ex_ctrl_branch = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  ex_ctrl_jal = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  ex_ctrl_jalr = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  ex_ctrl_rxs2 = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  ex_ctrl_sel_alu2 = _RAND_10[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  ex_ctrl_sel_alu1 = _RAND_11[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  ex_ctrl_sel_imm = _RAND_12[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  ex_ctrl_alu_fn = _RAND_13[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  ex_ctrl_mem = _RAND_14[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  ex_ctrl_mem_cmd = _RAND_15[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  ex_ctrl_wfd = _RAND_16[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  ex_ctrl_div = _RAND_17[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  ex_ctrl_wxd = _RAND_18[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  ex_ctrl_csr = _RAND_19[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  ex_ctrl_fence_i = _RAND_20[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  mem_ctrl_fp = _RAND_21[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  mem_ctrl_branch = _RAND_22[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  mem_ctrl_jal = _RAND_23[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  mem_ctrl_jalr = _RAND_24[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  mem_ctrl_mem = _RAND_25[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  mem_ctrl_wfd = _RAND_26[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  mem_ctrl_div = _RAND_27[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  mem_ctrl_wxd = _RAND_28[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  mem_ctrl_csr = _RAND_29[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{`RANDOM}};
  mem_ctrl_fence_i = _RAND_30[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{`RANDOM}};
  wb_ctrl_mem = _RAND_31[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{`RANDOM}};
  wb_ctrl_wfd = _RAND_32[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{`RANDOM}};
  wb_ctrl_div = _RAND_33[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{`RANDOM}};
  wb_ctrl_wxd = _RAND_34[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{`RANDOM}};
  wb_ctrl_csr = _RAND_35[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{`RANDOM}};
  wb_ctrl_fence_i = _RAND_36[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{`RANDOM}};
  ex_reg_xcpt_interrupt = _RAND_37[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{`RANDOM}};
  ex_reg_valid = _RAND_38[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {1{`RANDOM}};
  ex_reg_rvc = _RAND_39[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{`RANDOM}};
  ex_reg_btb_resp_entry = _RAND_40[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {1{`RANDOM}};
  ex_reg_btb_resp_bht_history = _RAND_41[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {1{`RANDOM}};
  ex_reg_xcpt = _RAND_42[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {1{`RANDOM}};
  ex_reg_flush_pipe = _RAND_43[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {1{`RANDOM}};
  ex_reg_load_use = _RAND_44[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_45 = {1{`RANDOM}};
  ex_reg_cause = _RAND_45[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_46 = {1{`RANDOM}};
  ex_reg_replay = _RAND_46[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_47 = {1{`RANDOM}};
  ex_reg_pc = _RAND_47[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_48 = {1{`RANDOM}};
  ex_reg_mem_size = _RAND_48[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_49 = {1{`RANDOM}};
  ex_reg_inst = _RAND_49[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_50 = {1{`RANDOM}};
  ex_reg_raw_inst = _RAND_50[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_51 = {1{`RANDOM}};
  mem_reg_xcpt_interrupt = _RAND_51[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_52 = {1{`RANDOM}};
  mem_reg_valid = _RAND_52[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_53 = {1{`RANDOM}};
  mem_reg_rvc = _RAND_53[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_54 = {1{`RANDOM}};
  mem_reg_btb_resp_entry = _RAND_54[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_55 = {1{`RANDOM}};
  mem_reg_btb_resp_bht_history = _RAND_55[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_56 = {1{`RANDOM}};
  mem_reg_xcpt = _RAND_56[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_57 = {1{`RANDOM}};
  mem_reg_replay = _RAND_57[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_58 = {1{`RANDOM}};
  mem_reg_flush_pipe = _RAND_58[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_59 = {1{`RANDOM}};
  mem_reg_cause = _RAND_59[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_60 = {1{`RANDOM}};
  mem_reg_slow_bypass = _RAND_60[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_61 = {1{`RANDOM}};
  mem_reg_load = _RAND_61[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_62 = {1{`RANDOM}};
  mem_reg_store = _RAND_62[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_63 = {1{`RANDOM}};
  mem_reg_sfence = _RAND_63[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_64 = {1{`RANDOM}};
  mem_reg_pc = _RAND_64[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_65 = {1{`RANDOM}};
  mem_reg_inst = _RAND_65[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_66 = {1{`RANDOM}};
  mem_reg_mem_size = _RAND_66[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_67 = {1{`RANDOM}};
  mem_reg_raw_inst = _RAND_67[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_68 = {1{`RANDOM}};
  mem_reg_wdata = _RAND_68[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_69 = {1{`RANDOM}};
  mem_reg_rs2 = _RAND_69[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_70 = {1{`RANDOM}};
  mem_br_taken = _RAND_70[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_71 = {1{`RANDOM}};
  wb_reg_valid = _RAND_71[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_72 = {1{`RANDOM}};
  wb_reg_xcpt = _RAND_72[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_73 = {1{`RANDOM}};
  wb_reg_replay = _RAND_73[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_74 = {1{`RANDOM}};
  wb_reg_flush_pipe = _RAND_74[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_75 = {1{`RANDOM}};
  wb_reg_cause = _RAND_75[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_76 = {1{`RANDOM}};
  wb_reg_sfence = _RAND_76[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_77 = {1{`RANDOM}};
  wb_reg_pc = _RAND_77[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_78 = {1{`RANDOM}};
  wb_reg_mem_size = _RAND_78[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_79 = {1{`RANDOM}};
  wb_reg_inst = _RAND_79[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_80 = {1{`RANDOM}};
  wb_reg_raw_inst = _RAND_80[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_81 = {1{`RANDOM}};
  wb_reg_wdata = _RAND_81[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_82 = {1{`RANDOM}};
  id_reg_fence = _RAND_82[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_83 = {1{`RANDOM}};
  ex_reg_rs_bypass_0 = _RAND_83[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_84 = {1{`RANDOM}};
  ex_reg_rs_bypass_1 = _RAND_84[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_85 = {1{`RANDOM}};
  ex_reg_rs_lsb_0 = _RAND_85[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_86 = {1{`RANDOM}};
  ex_reg_rs_lsb_1 = _RAND_86[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_87 = {1{`RANDOM}};
  ex_reg_rs_msb_0 = _RAND_87[29:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_88 = {1{`RANDOM}};
  ex_reg_rs_msb_1 = _RAND_88[29:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_89 = {1{`RANDOM}};
  _T_1114 = _RAND_89[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_90 = {1{`RANDOM}};
  _T_1227 = _RAND_90[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_91 = {1{`RANDOM}};
  blocked = _RAND_91[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_92 = {1{`RANDOM}};
  _T_998 = _RAND_92[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_93 = {1{`RANDOM}};
  _T_1388 = _RAND_93[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_94 = {1{`RANDOM}};
  coreMonitorBundle_rd0val = _RAND_94[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_95 = {1{`RANDOM}};
  _T_1391 = _RAND_95[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_96 = {1{`RANDOM}};
  coreMonitorBundle_rd1val = _RAND_96[31:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge clock) begin
    if(_T_383__T_1074_en & _T_383__T_1074_mask) begin
      _T_383[_T_383__T_1074_addr] <= _T_383__T_1074_data; // @[RocketCore.scala 956:15:freechips.rocketchip.system.DefaultRV32Config.fir@155915.4]
    end
    if (unpause) begin
      id_reg_pause <= 1'h0;
    end else begin
      if (_T_668) begin
        id_reg_pause <= _GEN_1;
      end
    end
    imem_might_request_reg <= _T_1313 | _T_1314;
    if (_T_668) begin
      ex_ctrl_fp <= id_ctrl_fp;
    end
    if (_T_668) begin
      ex_ctrl_branch <= id_ctrl_branch;
    end
    if (_T_668) begin
      ex_ctrl_jal <= id_ctrl_jal;
    end
    if (_T_668) begin
      ex_ctrl_jalr <= id_ctrl_jalr;
    end
    if (_T_668) begin
      ex_ctrl_rxs2 <= id_ctrl_rxs2;
    end
    if (_T_668) begin
      if (id_xcpt) begin
        if (_T_686) begin
          ex_ctrl_sel_alu2 <= 2'h0;
        end else begin
          if (_T_683) begin
            ex_ctrl_sel_alu2 <= 2'h1;
          end else begin
            ex_ctrl_sel_alu2 <= 2'h0;
          end
        end
      end else begin
        ex_ctrl_sel_alu2 <= id_ctrl_sel_alu2;
      end
    end
    if (_T_668) begin
      if (id_xcpt) begin
        if (_T_686) begin
          ex_ctrl_sel_alu1 <= 2'h2;
        end else begin
          if (_T_683) begin
            ex_ctrl_sel_alu1 <= 2'h2;
          end else begin
            ex_ctrl_sel_alu1 <= 2'h1;
          end
        end
      end else begin
        ex_ctrl_sel_alu1 <= id_ctrl_sel_alu1;
      end
    end
    if (_T_668) begin
      ex_ctrl_sel_imm <= id_ctrl_sel_imm;
    end
    if (_T_668) begin
      if (id_xcpt) begin
        ex_ctrl_alu_fn <= 4'h0;
      end else begin
        ex_ctrl_alu_fn <= id_ctrl_alu_fn;
      end
    end
    if (_T_668) begin
      ex_ctrl_mem <= id_ctrl_mem;
    end
    if (_T_668) begin
      ex_ctrl_mem_cmd <= id_ctrl_mem_cmd;
    end
    if (_T_668) begin
      ex_ctrl_wfd <= id_ctrl_wfd;
    end
    if (_T_668) begin
      ex_ctrl_div <= id_ctrl_div;
    end
    if (_T_668) begin
      ex_ctrl_wxd <= id_ctrl_wxd;
    end
    if (_T_668) begin
      if (id_csr_ren) begin
        ex_ctrl_csr <= 3'h2;
      end else begin
        ex_ctrl_csr <= id_ctrl_csr;
      end
    end
    if (_T_668) begin
      ex_ctrl_fence_i <= id_ctrl_fence_i;
    end
    if (!(_T_906)) begin
      if (ex_pc_valid) begin
        mem_ctrl_fp <= ex_ctrl_fp;
      end
    end
    if (!(_T_906)) begin
      if (ex_pc_valid) begin
        mem_ctrl_branch <= ex_ctrl_branch;
      end
    end
    if (!(_T_906)) begin
      if (ex_pc_valid) begin
        mem_ctrl_jal <= ex_ctrl_jal;
      end
    end
    if (!(_T_906)) begin
      if (ex_pc_valid) begin
        mem_ctrl_jalr <= ex_ctrl_jalr;
      end
    end
    if (!(_T_906)) begin
      if (ex_pc_valid) begin
        mem_ctrl_mem <= ex_ctrl_mem;
      end
    end
    if (!(_T_906)) begin
      if (ex_pc_valid) begin
        mem_ctrl_wfd <= ex_ctrl_wfd;
      end
    end
    if (!(_T_906)) begin
      if (ex_pc_valid) begin
        mem_ctrl_div <= ex_ctrl_div;
      end
    end
    if (!(_T_906)) begin
      if (ex_pc_valid) begin
        mem_ctrl_wxd <= ex_ctrl_wxd;
      end
    end
    if (!(_T_906)) begin
      if (ex_pc_valid) begin
        mem_ctrl_csr <= ex_ctrl_csr;
      end
    end
    if (!(_T_906)) begin
      if (ex_pc_valid) begin
        mem_ctrl_fence_i <= _GEN_77;
      end
    end
    if (mem_pc_valid) begin
      wb_ctrl_mem <= mem_ctrl_mem;
    end
    if (mem_pc_valid) begin
      wb_ctrl_wfd <= mem_ctrl_wfd;
    end
    if (mem_pc_valid) begin
      wb_ctrl_div <= mem_ctrl_div;
    end
    if (mem_pc_valid) begin
      wb_ctrl_wxd <= mem_ctrl_wxd;
    end
    if (mem_pc_valid) begin
      wb_ctrl_csr <= mem_ctrl_csr;
    end
    if (mem_pc_valid) begin
      wb_ctrl_fence_i <= mem_ctrl_fence_i;
    end
    ex_reg_xcpt_interrupt <= _T_670 & csr_io_interrupt;
    ex_reg_valid <= ctrl_killd == 1'h0;
    if (_T_668) begin
      if (id_xcpt) begin
        ex_reg_rvc <= _GEN_5;
      end else begin
        ex_reg_rvc <= ibuf_io_inst_0_bits_rvc;
      end
    end
    if (_T_716) begin
      ex_reg_btb_resp_entry <= ibuf_io_btb_resp_entry;
    end
    if (_T_716) begin
      ex_reg_btb_resp_bht_history <= ibuf_io_btb_resp_bht_history;
    end
    ex_reg_xcpt <= _T_668 & id_xcpt;
    if (_T_668) begin
      ex_reg_flush_pipe <= _T_687;
    end
    if (_T_668) begin
      ex_reg_load_use <= id_load_use;
    end
    if (_T_716) begin
      if (csr_io_interrupt) begin
        ex_reg_cause <= csr_io_interrupt_cause;
      end else begin
        ex_reg_cause <= {{28'd0}, _T_551};
      end
    end
    ex_reg_replay <= _T_670 & ibuf_io_inst_0_bits_replay;
    if (_T_716) begin
      ex_reg_pc <= ibuf_io_pc;
    end
    if (_T_668) begin
      if (_T_691) begin
        ex_reg_mem_size <= _T_694;
      end else begin
        ex_reg_mem_size <= _T_688;
      end
    end
    if (_T_716) begin
      ex_reg_inst <= ibuf_io_inst_0_bits_inst_bits;
    end
    if (_T_716) begin
      ex_reg_raw_inst <= ibuf_io_inst_0_bits_raw;
    end
    mem_reg_xcpt_interrupt <= _T_669 & ex_reg_xcpt_interrupt;
    mem_reg_valid <= ctrl_killx == 1'h0;
    if (!(_T_906)) begin
      if (ex_pc_valid) begin
        mem_reg_rvc <= ex_reg_rvc;
      end
    end
    if (!(_T_906)) begin
      if (ex_pc_valid) begin
        mem_reg_btb_resp_entry <= ex_reg_btb_resp_entry;
      end
    end
    if (!(_T_906)) begin
      if (ex_pc_valid) begin
        mem_reg_btb_resp_bht_history <= ex_reg_btb_resp_bht_history;
      end
    end
    mem_reg_xcpt <= _T_899 & ex_xcpt;
    mem_reg_replay <= _T_669 & replay_ex;
    if (!(_T_906)) begin
      if (ex_pc_valid) begin
        mem_reg_flush_pipe <= _GEN_78;
      end
    end
    if (!(_T_906)) begin
      if (ex_pc_valid) begin
        mem_reg_cause <= ex_reg_cause;
      end
    end
    if (!(_T_906)) begin
      if (ex_pc_valid) begin
        mem_reg_slow_bypass <= ex_slow_bypass;
      end
    end
    if (!(_T_906)) begin
      if (ex_pc_valid) begin
        mem_reg_load <= _T_930;
      end
    end
    if (!(_T_906)) begin
      if (ex_pc_valid) begin
        mem_reg_store <= _T_954;
      end
    end
    if (_T_906) begin
      mem_reg_sfence <= 1'h0;
    end else begin
      if (ex_pc_valid) begin
        mem_reg_sfence <= ex_sfence;
      end
    end
    if (!(_T_906)) begin
      if (ex_pc_valid) begin
        mem_reg_pc <= ex_reg_pc;
      end
    end
    if (!(_T_906)) begin
      if (ex_pc_valid) begin
        mem_reg_inst <= ex_reg_inst;
      end
    end
    if (!(_T_906)) begin
      if (ex_pc_valid) begin
        mem_reg_mem_size <= ex_reg_mem_size;
      end
    end
    if (!(_T_906)) begin
      if (ex_pc_valid) begin
        mem_reg_raw_inst <= ex_reg_raw_inst;
      end
    end
    if (!(_T_906)) begin
      if (ex_pc_valid) begin
        mem_reg_wdata <= _T_955;
      end
    end
    if (!(_T_906)) begin
      if (ex_pc_valid) begin
        if (_T_958) begin
          if (_T_960) begin
            mem_reg_rs2 <= _T_963;
          end else begin
            if (_T_964) begin
              mem_reg_rs2 <= _T_966;
            end else begin
              if (ex_reg_rs_bypass_1) begin
                if (_T_589) begin
                  mem_reg_rs2 <= io_dmem_resp_bits_data_word_bypass;
                end else begin
                  if (_T_587) begin
                    mem_reg_rs2 <= wb_reg_wdata;
                  end else begin
                    if (_T_585) begin
                      mem_reg_rs2 <= mem_reg_wdata;
                    end else begin
                      mem_reg_rs2 <= 32'h0;
                    end
                  end
                end
              end else begin
                mem_reg_rs2 <= _T_591;
              end
            end
          end
        end
      end
    end
    if (!(_T_906)) begin
      if (ex_pc_valid) begin
        mem_br_taken <= alu_io_cmp_out;
      end
    end
    wb_reg_valid <= ctrl_killm == 1'h0;
    wb_reg_xcpt <= mem_xcpt & _T_1002;
    wb_reg_replay <= replay_mem & _T_1002;
    wb_reg_flush_pipe <= _T_1001 & mem_reg_flush_pipe;
    if (mem_pc_valid) begin
      if (_T_974) begin
        wb_reg_cause <= mem_reg_cause;
      end else begin
        wb_reg_cause <= {{28'd0}, _T_978};
      end
    end
    if (mem_pc_valid) begin
      wb_reg_sfence <= mem_reg_sfence;
    end
    if (mem_pc_valid) begin
      wb_reg_pc <= mem_reg_pc;
    end
    if (mem_pc_valid) begin
      wb_reg_mem_size <= mem_reg_mem_size;
    end
    if (mem_pc_valid) begin
      wb_reg_inst <= mem_reg_inst;
    end
    if (mem_pc_valid) begin
      wb_reg_raw_inst <= mem_reg_raw_inst;
    end
    if (mem_pc_valid) begin
      if (_T_1010) begin
        wb_reg_wdata <= io_fpu_toint_data;
      end else begin
        wb_reg_wdata <= mem_int_wdata;
      end
    end
    if (reset) begin
      id_reg_fence <= 1'h0;
    end else begin
      if (_T_668) begin
        id_reg_fence <= _GEN_2;
      end else begin
        if (_T_525) begin
          id_reg_fence <= 1'h0;
        end
      end
    end
    if (_T_668) begin
      if (id_illegal_insn) begin
        ex_reg_rs_bypass_0 <= 1'h0;
      end else begin
        ex_reg_rs_bypass_0 <= do_bypass;
      end
    end
    if (_T_668) begin
      ex_reg_rs_bypass_1 <= do_bypass_1;
    end
    if (_T_668) begin
      if (id_illegal_insn) begin
        ex_reg_rs_lsb_0 <= _T_712;
      end else begin
        if (_T_700) begin
          ex_reg_rs_lsb_0 <= _T_701;
        end else begin
          if (id_bypass_src_0_0) begin
            ex_reg_rs_lsb_0 <= 2'h0;
          end else begin
            if (id_bypass_src_0_1) begin
              ex_reg_rs_lsb_0 <= 2'h1;
            end else begin
              if (id_bypass_src_0_2) begin
                ex_reg_rs_lsb_0 <= 2'h2;
              end else begin
                ex_reg_rs_lsb_0 <= 2'h3;
              end
            end
          end
        end
      end
    end
    if (_T_668) begin
      if (_T_708) begin
        ex_reg_rs_lsb_1 <= _T_709;
      end else begin
        if (id_bypass_src_1_0) begin
          ex_reg_rs_lsb_1 <= 2'h0;
        end else begin
          if (id_bypass_src_1_1) begin
            ex_reg_rs_lsb_1 <= 2'h1;
          end else begin
            if (id_bypass_src_1_2) begin
              ex_reg_rs_lsb_1 <= 2'h2;
            end else begin
              ex_reg_rs_lsb_1 <= 2'h3;
            end
          end
        end
      end
    end
    if (_T_668) begin
      if (id_illegal_insn) begin
        ex_reg_rs_msb_0 <= _T_713;
      end else begin
        if (_T_700) begin
          ex_reg_rs_msb_0 <= _T_702;
        end
      end
    end
    if (_T_668) begin
      if (_T_708) begin
        ex_reg_rs_msb_1 <= _T_710;
      end
    end
    if (reset) begin
      _T_1114 <= 32'h0;
    end else begin
      if (_T_1148) begin
        _T_1114 <= _T_1147;
      end else begin
        if (ll_wen) begin
          _T_1114 <= _T_1120;
        end
      end
    end
    if (reset) begin
      _T_1227 <= 32'h0;
    end else begin
      if (_T_1245) begin
        _T_1227 <= _T_1244;
      end else begin
        if (_T_1240) begin
          _T_1227 <= _T_1239;
        end else begin
          if (_T_1230) begin
            _T_1227 <= _T_1233;
          end
        end
      end
    end
    blocked <= _T_1263 & _T_1265;
    _T_998 <= div_io_req_ready & div_io_req_valid;
    if (ex_reg_rs_bypass_0) begin
      if (_T_582) begin
        _T_1388 <= io_dmem_resp_bits_data_word_bypass;
      end else begin
        if (_T_580) begin
          _T_1388 <= wb_reg_wdata;
        end else begin
          if (_T_578) begin
            _T_1388 <= mem_reg_wdata;
          end else begin
            _T_1388 <= 32'h0;
          end
        end
      end
    end else begin
      _T_1388 <= _T_584;
    end
    coreMonitorBundle_rd0val <= _T_1388;
    if (ex_reg_rs_bypass_1) begin
      if (_T_589) begin
        _T_1391 <= io_dmem_resp_bits_data_word_bypass;
      end else begin
        if (_T_587) begin
          _T_1391 <= wb_reg_wdata;
        end else begin
          if (_T_585) begin
            _T_1391 <= mem_reg_wdata;
          end else begin
            _T_1391 <= 32'h0;
          end
        end
      end
    end else begin
      _T_1391 <= _T_591;
    end
    coreMonitorBundle_rd1val <= _T_1391;
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1395) begin
          $fwrite(32'h80000002,"C%d: %d [%d] pc=[%x] W[r%d=%x] R[r%d=%x] R[r%d=%x] inst=[%x] DASM(%x)\n",1'h0,coreMonitorBundle_timer,coreMonitorBundle_valid,coreMonitorBundle_pc,_T_1393,rf_wdata,_T_1369,coreMonitorBundle_rd0val,_T_1370,coreMonitorBundle_rd1val,coreMonitorBundle_inst,coreMonitorBundle_inst); // @[RocketCore.scala 898:11:freechips.rocketchip.system.DefaultRV32Config.fir@157367.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
`endif // __Rocket

