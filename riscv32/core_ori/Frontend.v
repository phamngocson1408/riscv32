`include "include_module.v"
`ifdef __Frontend
module Frontend( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137192.2]
  input         gated_clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137193.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137194.4]
  input         auto_icache_master_out_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137195.4]
  output        auto_icache_master_out_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137195.4]
  output [31:0] auto_icache_master_out_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137195.4]
  input         auto_icache_master_out_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137195.4]
  input  [2:0]  auto_icache_master_out_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137195.4]
  input  [3:0]  auto_icache_master_out_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137195.4]
  input  [31:0] auto_icache_master_out_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137195.4]
  input         auto_icache_master_out_d_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137195.4]
  input         io_cpu_might_request, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input         io_cpu_req_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input  [31:0] io_cpu_req_bits_pc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input         io_cpu_req_bits_speculative, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input         io_cpu_sfence_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input         io_cpu_sfence_bits_rs1, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input         io_cpu_sfence_bits_rs2, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input  [31:0] io_cpu_sfence_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input         io_cpu_resp_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  output        io_cpu_resp_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  output        io_cpu_resp_bits_btb_taken, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  output        io_cpu_resp_bits_btb_bridx, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  output [4:0]  io_cpu_resp_bits_btb_entry, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  output [7:0]  io_cpu_resp_bits_btb_bht_history, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  output [31:0] io_cpu_resp_bits_pc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  output [31:0] io_cpu_resp_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  output        io_cpu_resp_bits_xcpt_pf_inst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  output        io_cpu_resp_bits_xcpt_ae_inst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  output        io_cpu_resp_bits_replay, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input         io_cpu_btb_update_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input  [4:0]  io_cpu_btb_update_bits_prediction_entry, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input  [31:0] io_cpu_btb_update_bits_pc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input         io_cpu_btb_update_bits_isValid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input  [31:0] io_cpu_btb_update_bits_br_pc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input  [1:0]  io_cpu_btb_update_bits_cfiType, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input         io_cpu_bht_update_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input  [7:0]  io_cpu_bht_update_bits_prediction_history, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input  [31:0] io_cpu_bht_update_bits_pc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input         io_cpu_bht_update_bits_branch, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input         io_cpu_bht_update_bits_taken, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input         io_cpu_bht_update_bits_mispredict, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input         io_cpu_flush_icache, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  output [31:0] io_cpu_npc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input         io_ptw_req_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  output        io_ptw_req_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  output        io_ptw_req_bits_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  output [19:0] io_ptw_req_bits_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input         io_ptw_resp_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input         io_ptw_resp_bits_ae, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input  [53:0] io_ptw_resp_bits_pte_ppn, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input         io_ptw_resp_bits_pte_d, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input         io_ptw_resp_bits_pte_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input         io_ptw_resp_bits_pte_g, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input         io_ptw_resp_bits_pte_u, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input         io_ptw_resp_bits_pte_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input         io_ptw_resp_bits_pte_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input         io_ptw_resp_bits_pte_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input         io_ptw_resp_bits_pte_v, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input         io_ptw_resp_bits_level, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input         io_ptw_resp_bits_homogeneous, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input         io_ptw_ptbr_mode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input         io_ptw_status_debug, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input  [1:0]  io_ptw_status_prv, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input         io_ptw_pmp_0_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input  [1:0]  io_ptw_pmp_0_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input         io_ptw_pmp_0_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input         io_ptw_pmp_0_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input         io_ptw_pmp_0_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input  [29:0] io_ptw_pmp_0_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input  [31:0] io_ptw_pmp_0_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input         io_ptw_pmp_1_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input  [1:0]  io_ptw_pmp_1_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input         io_ptw_pmp_1_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input         io_ptw_pmp_1_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input         io_ptw_pmp_1_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input  [29:0] io_ptw_pmp_1_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input  [31:0] io_ptw_pmp_1_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input         io_ptw_pmp_2_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input  [1:0]  io_ptw_pmp_2_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input         io_ptw_pmp_2_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input         io_ptw_pmp_2_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input         io_ptw_pmp_2_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input  [29:0] io_ptw_pmp_2_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input  [31:0] io_ptw_pmp_2_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input         io_ptw_pmp_3_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input  [1:0]  io_ptw_pmp_3_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input         io_ptw_pmp_3_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input         io_ptw_pmp_3_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input         io_ptw_pmp_3_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input  [29:0] io_ptw_pmp_3_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input  [31:0] io_ptw_pmp_3_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input         io_ptw_pmp_4_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input  [1:0]  io_ptw_pmp_4_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input         io_ptw_pmp_4_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input         io_ptw_pmp_4_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input         io_ptw_pmp_4_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input  [29:0] io_ptw_pmp_4_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input  [31:0] io_ptw_pmp_4_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input         io_ptw_pmp_5_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input  [1:0]  io_ptw_pmp_5_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input         io_ptw_pmp_5_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input         io_ptw_pmp_5_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input         io_ptw_pmp_5_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input  [29:0] io_ptw_pmp_5_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input  [31:0] io_ptw_pmp_5_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input         io_ptw_pmp_6_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input  [1:0]  io_ptw_pmp_6_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input         io_ptw_pmp_6_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input         io_ptw_pmp_6_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input         io_ptw_pmp_6_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input  [29:0] io_ptw_pmp_6_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input  [31:0] io_ptw_pmp_6_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input         io_ptw_pmp_7_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input  [1:0]  io_ptw_pmp_7_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input         io_ptw_pmp_7_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input         io_ptw_pmp_7_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input         io_ptw_pmp_7_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input  [29:0] io_ptw_pmp_7_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
  input  [31:0] io_ptw_pmp_7_mask // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137196.4]
);
  wire  icache_clock; // @[Frontend.scala 63:26:freechips.rocketchip.system.DefaultRV32Config.fir@137202.4]
  wire  icache_reset; // @[Frontend.scala 63:26:freechips.rocketchip.system.DefaultRV32Config.fir@137202.4]
  wire  icache_auto_master_out_a_ready; // @[Frontend.scala 63:26:freechips.rocketchip.system.DefaultRV32Config.fir@137202.4]
  wire  icache_auto_master_out_a_valid; // @[Frontend.scala 63:26:freechips.rocketchip.system.DefaultRV32Config.fir@137202.4]
  wire [31:0] icache_auto_master_out_a_bits_address; // @[Frontend.scala 63:26:freechips.rocketchip.system.DefaultRV32Config.fir@137202.4]
  wire  icache_auto_master_out_d_valid; // @[Frontend.scala 63:26:freechips.rocketchip.system.DefaultRV32Config.fir@137202.4]
  wire [2:0] icache_auto_master_out_d_bits_opcode; // @[Frontend.scala 63:26:freechips.rocketchip.system.DefaultRV32Config.fir@137202.4]
  wire [3:0] icache_auto_master_out_d_bits_size; // @[Frontend.scala 63:26:freechips.rocketchip.system.DefaultRV32Config.fir@137202.4]
  wire [31:0] icache_auto_master_out_d_bits_data; // @[Frontend.scala 63:26:freechips.rocketchip.system.DefaultRV32Config.fir@137202.4]
  wire  icache_auto_master_out_d_bits_corrupt; // @[Frontend.scala 63:26:freechips.rocketchip.system.DefaultRV32Config.fir@137202.4]
  wire  icache_io_req_ready; // @[Frontend.scala 63:26:freechips.rocketchip.system.DefaultRV32Config.fir@137202.4]
  wire  icache_io_req_valid; // @[Frontend.scala 63:26:freechips.rocketchip.system.DefaultRV32Config.fir@137202.4]
  wire [31:0] icache_io_req_bits_addr; // @[Frontend.scala 63:26:freechips.rocketchip.system.DefaultRV32Config.fir@137202.4]
  wire [31:0] icache_io_s1_paddr; // @[Frontend.scala 63:26:freechips.rocketchip.system.DefaultRV32Config.fir@137202.4]
  wire  icache_io_s1_kill; // @[Frontend.scala 63:26:freechips.rocketchip.system.DefaultRV32Config.fir@137202.4]
  wire  icache_io_s2_kill; // @[Frontend.scala 63:26:freechips.rocketchip.system.DefaultRV32Config.fir@137202.4]
  wire  icache_io_resp_valid; // @[Frontend.scala 63:26:freechips.rocketchip.system.DefaultRV32Config.fir@137202.4]
  wire [31:0] icache_io_resp_bits_data; // @[Frontend.scala 63:26:freechips.rocketchip.system.DefaultRV32Config.fir@137202.4]
  wire  icache_io_resp_bits_ae; // @[Frontend.scala 63:26:freechips.rocketchip.system.DefaultRV32Config.fir@137202.4]
  wire  icache_io_invalidate; // @[Frontend.scala 63:26:freechips.rocketchip.system.DefaultRV32Config.fir@137202.4]
  wire  fq_clock; // @[Frontend.scala 84:57:freechips.rocketchip.system.DefaultRV32Config.fir@137212.4]
  wire  fq_reset; // @[Frontend.scala 84:57:freechips.rocketchip.system.DefaultRV32Config.fir@137212.4]
  wire  fq_io_enq_ready; // @[Frontend.scala 84:57:freechips.rocketchip.system.DefaultRV32Config.fir@137212.4]
  wire  fq_io_enq_valid; // @[Frontend.scala 84:57:freechips.rocketchip.system.DefaultRV32Config.fir@137212.4]
  wire  fq_io_enq_bits_btb_taken; // @[Frontend.scala 84:57:freechips.rocketchip.system.DefaultRV32Config.fir@137212.4]
  wire  fq_io_enq_bits_btb_bridx; // @[Frontend.scala 84:57:freechips.rocketchip.system.DefaultRV32Config.fir@137212.4]
  wire [4:0] fq_io_enq_bits_btb_entry; // @[Frontend.scala 84:57:freechips.rocketchip.system.DefaultRV32Config.fir@137212.4]
  wire [7:0] fq_io_enq_bits_btb_bht_history; // @[Frontend.scala 84:57:freechips.rocketchip.system.DefaultRV32Config.fir@137212.4]
  wire [31:0] fq_io_enq_bits_pc; // @[Frontend.scala 84:57:freechips.rocketchip.system.DefaultRV32Config.fir@137212.4]
  wire [31:0] fq_io_enq_bits_data; // @[Frontend.scala 84:57:freechips.rocketchip.system.DefaultRV32Config.fir@137212.4]
  wire [1:0] fq_io_enq_bits_mask; // @[Frontend.scala 84:57:freechips.rocketchip.system.DefaultRV32Config.fir@137212.4]
  wire  fq_io_enq_bits_xcpt_pf_inst; // @[Frontend.scala 84:57:freechips.rocketchip.system.DefaultRV32Config.fir@137212.4]
  wire  fq_io_enq_bits_xcpt_ae_inst; // @[Frontend.scala 84:57:freechips.rocketchip.system.DefaultRV32Config.fir@137212.4]
  wire  fq_io_enq_bits_replay; // @[Frontend.scala 84:57:freechips.rocketchip.system.DefaultRV32Config.fir@137212.4]
  wire  fq_io_deq_ready; // @[Frontend.scala 84:57:freechips.rocketchip.system.DefaultRV32Config.fir@137212.4]
  wire  fq_io_deq_valid; // @[Frontend.scala 84:57:freechips.rocketchip.system.DefaultRV32Config.fir@137212.4]
  wire  fq_io_deq_bits_btb_taken; // @[Frontend.scala 84:57:freechips.rocketchip.system.DefaultRV32Config.fir@137212.4]
  wire  fq_io_deq_bits_btb_bridx; // @[Frontend.scala 84:57:freechips.rocketchip.system.DefaultRV32Config.fir@137212.4]
  wire [4:0] fq_io_deq_bits_btb_entry; // @[Frontend.scala 84:57:freechips.rocketchip.system.DefaultRV32Config.fir@137212.4]
  wire [7:0] fq_io_deq_bits_btb_bht_history; // @[Frontend.scala 84:57:freechips.rocketchip.system.DefaultRV32Config.fir@137212.4]
  wire [31:0] fq_io_deq_bits_pc; // @[Frontend.scala 84:57:freechips.rocketchip.system.DefaultRV32Config.fir@137212.4]
  wire [31:0] fq_io_deq_bits_data; // @[Frontend.scala 84:57:freechips.rocketchip.system.DefaultRV32Config.fir@137212.4]
  wire  fq_io_deq_bits_xcpt_pf_inst; // @[Frontend.scala 84:57:freechips.rocketchip.system.DefaultRV32Config.fir@137212.4]
  wire  fq_io_deq_bits_xcpt_ae_inst; // @[Frontend.scala 84:57:freechips.rocketchip.system.DefaultRV32Config.fir@137212.4]
  wire  fq_io_deq_bits_replay; // @[Frontend.scala 84:57:freechips.rocketchip.system.DefaultRV32Config.fir@137212.4]
  wire [4:0] fq_io_mask; // @[Frontend.scala 84:57:freechips.rocketchip.system.DefaultRV32Config.fir@137212.4]
  wire  tlb_clock; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire  tlb_reset; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire  tlb_io_req_ready; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire  tlb_io_req_valid; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire [31:0] tlb_io_req_bits_vaddr; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire  tlb_io_resp_miss; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire [31:0] tlb_io_resp_paddr; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire  tlb_io_resp_pf_inst; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire  tlb_io_resp_ae_inst; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire  tlb_io_resp_cacheable; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire  tlb_io_sfence_valid; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire  tlb_io_sfence_bits_rs1; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire  tlb_io_sfence_bits_rs2; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire [31:0] tlb_io_sfence_bits_addr; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire  tlb_io_ptw_req_ready; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire  tlb_io_ptw_req_valid; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire  tlb_io_ptw_req_bits_valid; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire [19:0] tlb_io_ptw_req_bits_bits_addr; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire  tlb_io_ptw_resp_valid; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire  tlb_io_ptw_resp_bits_ae; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire [53:0] tlb_io_ptw_resp_bits_pte_ppn; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire  tlb_io_ptw_resp_bits_pte_d; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire  tlb_io_ptw_resp_bits_pte_a; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire  tlb_io_ptw_resp_bits_pte_g; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire  tlb_io_ptw_resp_bits_pte_u; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire  tlb_io_ptw_resp_bits_pte_x; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire  tlb_io_ptw_resp_bits_pte_w; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire  tlb_io_ptw_resp_bits_pte_r; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire  tlb_io_ptw_resp_bits_pte_v; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire  tlb_io_ptw_resp_bits_level; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire  tlb_io_ptw_resp_bits_homogeneous; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire  tlb_io_ptw_ptbr_mode; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire  tlb_io_ptw_status_debug; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire [1:0] tlb_io_ptw_status_prv; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire  tlb_io_ptw_pmp_0_cfg_l; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire [1:0] tlb_io_ptw_pmp_0_cfg_a; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire  tlb_io_ptw_pmp_0_cfg_x; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire  tlb_io_ptw_pmp_0_cfg_w; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire  tlb_io_ptw_pmp_0_cfg_r; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire [29:0] tlb_io_ptw_pmp_0_addr; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire [31:0] tlb_io_ptw_pmp_0_mask; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire  tlb_io_ptw_pmp_1_cfg_l; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire [1:0] tlb_io_ptw_pmp_1_cfg_a; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire  tlb_io_ptw_pmp_1_cfg_x; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire  tlb_io_ptw_pmp_1_cfg_w; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire  tlb_io_ptw_pmp_1_cfg_r; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire [29:0] tlb_io_ptw_pmp_1_addr; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire [31:0] tlb_io_ptw_pmp_1_mask; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire  tlb_io_ptw_pmp_2_cfg_l; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire [1:0] tlb_io_ptw_pmp_2_cfg_a; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire  tlb_io_ptw_pmp_2_cfg_x; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire  tlb_io_ptw_pmp_2_cfg_w; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire  tlb_io_ptw_pmp_2_cfg_r; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire [29:0] tlb_io_ptw_pmp_2_addr; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire [31:0] tlb_io_ptw_pmp_2_mask; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire  tlb_io_ptw_pmp_3_cfg_l; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire [1:0] tlb_io_ptw_pmp_3_cfg_a; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire  tlb_io_ptw_pmp_3_cfg_x; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire  tlb_io_ptw_pmp_3_cfg_w; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire  tlb_io_ptw_pmp_3_cfg_r; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire [29:0] tlb_io_ptw_pmp_3_addr; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire [31:0] tlb_io_ptw_pmp_3_mask; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire  tlb_io_ptw_pmp_4_cfg_l; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire [1:0] tlb_io_ptw_pmp_4_cfg_a; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire  tlb_io_ptw_pmp_4_cfg_x; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire  tlb_io_ptw_pmp_4_cfg_w; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire  tlb_io_ptw_pmp_4_cfg_r; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire [29:0] tlb_io_ptw_pmp_4_addr; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire [31:0] tlb_io_ptw_pmp_4_mask; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire  tlb_io_ptw_pmp_5_cfg_l; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire [1:0] tlb_io_ptw_pmp_5_cfg_a; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire  tlb_io_ptw_pmp_5_cfg_x; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire  tlb_io_ptw_pmp_5_cfg_w; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire  tlb_io_ptw_pmp_5_cfg_r; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire [29:0] tlb_io_ptw_pmp_5_addr; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire [31:0] tlb_io_ptw_pmp_5_mask; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire  tlb_io_ptw_pmp_6_cfg_l; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire [1:0] tlb_io_ptw_pmp_6_cfg_a; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire  tlb_io_ptw_pmp_6_cfg_x; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire  tlb_io_ptw_pmp_6_cfg_w; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire  tlb_io_ptw_pmp_6_cfg_r; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire [29:0] tlb_io_ptw_pmp_6_addr; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire [31:0] tlb_io_ptw_pmp_6_mask; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire  tlb_io_ptw_pmp_7_cfg_l; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire [1:0] tlb_io_ptw_pmp_7_cfg_a; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire  tlb_io_ptw_pmp_7_cfg_x; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire  tlb_io_ptw_pmp_7_cfg_w; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire  tlb_io_ptw_pmp_7_cfg_r; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire [29:0] tlb_io_ptw_pmp_7_addr; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire [31:0] tlb_io_ptw_pmp_7_mask; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire  tlb_io_kill; // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
  wire  btb_clock; // @[Frontend.scala 178:21:freechips.rocketchip.system.DefaultRV32Config.fir@137371.4]
  wire  btb_reset; // @[Frontend.scala 178:21:freechips.rocketchip.system.DefaultRV32Config.fir@137371.4]
  wire [31:0] btb_io_req_bits_addr; // @[Frontend.scala 178:21:freechips.rocketchip.system.DefaultRV32Config.fir@137371.4]
  wire  btb_io_resp_valid; // @[Frontend.scala 178:21:freechips.rocketchip.system.DefaultRV32Config.fir@137371.4]
  wire  btb_io_resp_bits_taken; // @[Frontend.scala 178:21:freechips.rocketchip.system.DefaultRV32Config.fir@137371.4]
  wire  btb_io_resp_bits_bridx; // @[Frontend.scala 178:21:freechips.rocketchip.system.DefaultRV32Config.fir@137371.4]
  wire [31:0] btb_io_resp_bits_target; // @[Frontend.scala 178:21:freechips.rocketchip.system.DefaultRV32Config.fir@137371.4]
  wire [4:0] btb_io_resp_bits_entry; // @[Frontend.scala 178:21:freechips.rocketchip.system.DefaultRV32Config.fir@137371.4]
  wire [7:0] btb_io_resp_bits_bht_history; // @[Frontend.scala 178:21:freechips.rocketchip.system.DefaultRV32Config.fir@137371.4]
  wire  btb_io_resp_bits_bht_value; // @[Frontend.scala 178:21:freechips.rocketchip.system.DefaultRV32Config.fir@137371.4]
  wire  btb_io_btb_update_valid; // @[Frontend.scala 178:21:freechips.rocketchip.system.DefaultRV32Config.fir@137371.4]
  wire [4:0] btb_io_btb_update_bits_prediction_entry; // @[Frontend.scala 178:21:freechips.rocketchip.system.DefaultRV32Config.fir@137371.4]
  wire [31:0] btb_io_btb_update_bits_pc; // @[Frontend.scala 178:21:freechips.rocketchip.system.DefaultRV32Config.fir@137371.4]
  wire  btb_io_btb_update_bits_isValid; // @[Frontend.scala 178:21:freechips.rocketchip.system.DefaultRV32Config.fir@137371.4]
  wire [31:0] btb_io_btb_update_bits_br_pc; // @[Frontend.scala 178:21:freechips.rocketchip.system.DefaultRV32Config.fir@137371.4]
  wire [1:0] btb_io_btb_update_bits_cfiType; // @[Frontend.scala 178:21:freechips.rocketchip.system.DefaultRV32Config.fir@137371.4]
  wire  btb_io_bht_update_valid; // @[Frontend.scala 178:21:freechips.rocketchip.system.DefaultRV32Config.fir@137371.4]
  wire [7:0] btb_io_bht_update_bits_prediction_history; // @[Frontend.scala 178:21:freechips.rocketchip.system.DefaultRV32Config.fir@137371.4]
  wire [31:0] btb_io_bht_update_bits_pc; // @[Frontend.scala 178:21:freechips.rocketchip.system.DefaultRV32Config.fir@137371.4]
  wire  btb_io_bht_update_bits_branch; // @[Frontend.scala 178:21:freechips.rocketchip.system.DefaultRV32Config.fir@137371.4]
  wire  btb_io_bht_update_bits_taken; // @[Frontend.scala 178:21:freechips.rocketchip.system.DefaultRV32Config.fir@137371.4]
  wire  btb_io_bht_update_bits_mispredict; // @[Frontend.scala 178:21:freechips.rocketchip.system.DefaultRV32Config.fir@137371.4]
  wire  btb_io_bht_advance_valid; // @[Frontend.scala 178:21:freechips.rocketchip.system.DefaultRV32Config.fir@137371.4]
  wire  btb_io_bht_advance_bits_bht_value; // @[Frontend.scala 178:21:freechips.rocketchip.system.DefaultRV32Config.fir@137371.4]
  wire  btb_io_ras_update_valid; // @[Frontend.scala 178:21:freechips.rocketchip.system.DefaultRV32Config.fir@137371.4]
  wire [1:0] btb_io_ras_update_bits_cfiType; // @[Frontend.scala 178:21:freechips.rocketchip.system.DefaultRV32Config.fir@137371.4]
  wire [31:0] btb_io_ras_update_bits_returnAddr; // @[Frontend.scala 178:21:freechips.rocketchip.system.DefaultRV32Config.fir@137371.4]
  wire  btb_io_ras_head_valid; // @[Frontend.scala 178:21:freechips.rocketchip.system.DefaultRV32Config.fir@137371.4]
  wire [31:0] btb_io_ras_head_bits; // @[Frontend.scala 178:21:freechips.rocketchip.system.DefaultRV32Config.fir@137371.4]
  wire  btb_io_flush; // @[Frontend.scala 178:21:freechips.rocketchip.system.DefaultRV32Config.fir@137371.4]
  wire  _T_2; // @[Frontend.scala 89:29:freechips.rocketchip.system.DefaultRV32Config.fir@137219.4]
  wire  _T_3; // @[Frontend.scala 89:52:freechips.rocketchip.system.DefaultRV32Config.fir@137220.4]
  wire  _T_4; // @[Frontend.scala 89:75:freechips.rocketchip.system.DefaultRV32Config.fir@137221.4]
  wire  _T_5; // @[Frontend.scala 89:102:freechips.rocketchip.system.DefaultRV32Config.fir@137222.4]
  wire  _T_6; // @[Frontend.scala 89:10:freechips.rocketchip.system.DefaultRV32Config.fir@137223.4]
  wire  _T_7; // @[Frontend.scala 89:130:freechips.rocketchip.system.DefaultRV32Config.fir@137224.4]
  wire  _T_9; // @[Frontend.scala 89:9:freechips.rocketchip.system.DefaultRV32Config.fir@137226.4]
  wire  _T_10; // @[Frontend.scala 89:9:freechips.rocketchip.system.DefaultRV32Config.fir@137227.4]
  reg  s1_valid; // @[Frontend.scala 100:21:freechips.rocketchip.system.DefaultRV32Config.fir@137238.4]
  reg [31:0] _RAND_0;
  reg  s2_valid; // @[Frontend.scala 101:25:freechips.rocketchip.system.DefaultRV32Config.fir@137239.4]
  reg [31:0] _RAND_1;
  wire  _T_11; // @[Frontend.scala 103:16:freechips.rocketchip.system.DefaultRV32Config.fir@137240.4]
  wire  _T_12; // @[Frontend.scala 103:5:freechips.rocketchip.system.DefaultRV32Config.fir@137241.4]
  wire  _T_13; // @[Frontend.scala 104:17:freechips.rocketchip.system.DefaultRV32Config.fir@137242.4]
  wire  _T_14; // @[Frontend.scala 104:6:freechips.rocketchip.system.DefaultRV32Config.fir@137243.4]
  wire  _T_15; // @[Frontend.scala 104:45:freechips.rocketchip.system.DefaultRV32Config.fir@137244.4]
  wire  _T_16; // @[Frontend.scala 104:58:freechips.rocketchip.system.DefaultRV32Config.fir@137245.4]
  wire  _T_17; // @[Frontend.scala 104:55:freechips.rocketchip.system.DefaultRV32Config.fir@137246.4]
  wire  _T_18; // @[Frontend.scala 104:41:freechips.rocketchip.system.DefaultRV32Config.fir@137247.4]
  wire  _T_19; // @[Frontend.scala 103:40:freechips.rocketchip.system.DefaultRV32Config.fir@137248.4]
  wire  _T_20; // @[Frontend.scala 105:17:freechips.rocketchip.system.DefaultRV32Config.fir@137249.4]
  wire  _T_21; // @[Frontend.scala 105:6:freechips.rocketchip.system.DefaultRV32Config.fir@137250.4]
  wire  _T_24; // @[Frontend.scala 105:55:freechips.rocketchip.system.DefaultRV32Config.fir@137253.4]
  wire  _T_25; // @[Frontend.scala 105:41:freechips.rocketchip.system.DefaultRV32Config.fir@137254.4]
  wire  s0_fq_has_space; // @[Frontend.scala 104:70:freechips.rocketchip.system.DefaultRV32Config.fir@137255.4]
  wire  s0_valid; // @[Frontend.scala 106:35:freechips.rocketchip.system.DefaultRV32Config.fir@137256.4]
  reg [31:0] s1_pc; // @[Frontend.scala 108:18:freechips.rocketchip.system.DefaultRV32Config.fir@137258.4]
  reg [31:0] _RAND_2;
  reg  s1_speculative; // @[Frontend.scala 109:27:freechips.rocketchip.system.DefaultRV32Config.fir@137259.4]
  reg [31:0] _RAND_3;
  reg [31:0] s2_pc; // @[Frontend.scala 110:22:freechips.rocketchip.system.DefaultRV32Config.fir@137263.4]
  reg [31:0] _RAND_4;
  reg  s2_btb_resp_valid; // @[Frontend.scala 111:44:freechips.rocketchip.system.DefaultRV32Config.fir@137264.4]
  reg [31:0] _RAND_5;
  reg  s2_btb_resp_bits_taken; // @[Frontend.scala 112:29:freechips.rocketchip.system.DefaultRV32Config.fir@137265.4]
  reg [31:0] _RAND_6;
  reg  s2_btb_resp_bits_bridx; // @[Frontend.scala 112:29:freechips.rocketchip.system.DefaultRV32Config.fir@137265.4]
  reg [31:0] _RAND_7;
  reg [4:0] s2_btb_resp_bits_entry; // @[Frontend.scala 112:29:freechips.rocketchip.system.DefaultRV32Config.fir@137265.4]
  reg [31:0] _RAND_8;
  reg [7:0] s2_btb_resp_bits_bht_history; // @[Frontend.scala 112:29:freechips.rocketchip.system.DefaultRV32Config.fir@137265.4]
  reg [31:0] _RAND_9;
  reg  s2_btb_resp_bits_bht_value; // @[Frontend.scala 112:29:freechips.rocketchip.system.DefaultRV32Config.fir@137265.4]
  reg [31:0] _RAND_10;
  wire  s2_btb_taken; // @[Frontend.scala 113:40:freechips.rocketchip.system.DefaultRV32Config.fir@137266.4]
  reg  s2_tlb_resp_miss; // @[Frontend.scala 114:24:freechips.rocketchip.system.DefaultRV32Config.fir@137267.4]
  reg [31:0] _RAND_11;
  reg  s2_tlb_resp_pf_inst; // @[Frontend.scala 114:24:freechips.rocketchip.system.DefaultRV32Config.fir@137267.4]
  reg [31:0] _RAND_12;
  reg  s2_tlb_resp_ae_inst; // @[Frontend.scala 114:24:freechips.rocketchip.system.DefaultRV32Config.fir@137267.4]
  reg [31:0] _RAND_13;
  reg  s2_tlb_resp_cacheable; // @[Frontend.scala 114:24:freechips.rocketchip.system.DefaultRV32Config.fir@137267.4]
  reg [31:0] _RAND_14;
  wire  s2_xcpt; // @[Frontend.scala 115:37:freechips.rocketchip.system.DefaultRV32Config.fir@137268.4]
  reg  s2_speculative; // @[Frontend.scala 116:27:freechips.rocketchip.system.DefaultRV32Config.fir@137269.4]
  reg [31:0] _RAND_15;
  reg  s2_partial_insn_valid; // @[Frontend.scala 117:38:freechips.rocketchip.system.DefaultRV32Config.fir@137270.4]
  reg [31:0] _RAND_16;
  reg [15:0] s2_partial_insn; // @[Frontend.scala 118:28:freechips.rocketchip.system.DefaultRV32Config.fir@137271.4]
  reg [31:0] _RAND_17;
  reg  wrong_path; // @[Frontend.scala 119:23:freechips.rocketchip.system.DefaultRV32Config.fir@137272.4]
  reg [31:0] _RAND_18;
  wire [31:0] _T_29; // @[Frontend.scala 121:22:freechips.rocketchip.system.DefaultRV32Config.fir@137273.4]
  wire [31:0] _T_30; // @[Frontend.scala 121:29:freechips.rocketchip.system.DefaultRV32Config.fir@137274.4]
  wire [31:0] s1_base_pc; // @[Frontend.scala 121:20:freechips.rocketchip.system.DefaultRV32Config.fir@137275.4]
  wire [31:0] ntpc; // @[Frontend.scala 122:25:freechips.rocketchip.system.DefaultRV32Config.fir@137277.4]
  wire  _T_32; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@137286.4]
  wire  _T_33; // @[Frontend.scala 127:29:freechips.rocketchip.system.DefaultRV32Config.fir@137287.4]
  wire  _T_34; // @[Frontend.scala 127:26:freechips.rocketchip.system.DefaultRV32Config.fir@137288.4]
  wire  _T_35; // @[Frontend.scala 127:72:freechips.rocketchip.system.DefaultRV32Config.fir@137289.4]
  reg  _T_37; // @[Frontend.scala 127:58:freechips.rocketchip.system.DefaultRV32Config.fir@137291.4]
  reg [31:0] _RAND_19;
  wire  s2_replay; // @[Frontend.scala 127:48:freechips.rocketchip.system.DefaultRV32Config.fir@137293.4]
  wire  _T_36; // @[Frontend.scala 127:69:freechips.rocketchip.system.DefaultRV32Config.fir@137290.4]
  wire [1:0] _T_89; // @[Frontend.scala 207:39:freechips.rocketchip.system.DefaultRV32Config.fir@137435.4]
  wire  _T_90; // @[Frontend.scala 207:45:freechips.rocketchip.system.DefaultRV32Config.fir@137436.4]
  wire  _T_91; // @[Frontend.scala 208:34:freechips.rocketchip.system.DefaultRV32Config.fir@137437.4]
  wire  taken_prevRVI; // @[Frontend.scala 208:31:freechips.rocketchip.system.DefaultRV32Config.fir@137438.4]
  wire [15:0] taken_bits; // @[Frontend.scala 210:37:freechips.rocketchip.system.DefaultRV32Config.fir@137442.4]
  wire [31:0] taken_rviBits; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@137445.4]
  wire [6:0] _T_96; // @[Frontend.scala 214:28:freechips.rocketchip.system.DefaultRV32Config.fir@137448.4]
  wire  taken_rviJump; // @[Frontend.scala 214:34:freechips.rocketchip.system.DefaultRV32Config.fir@137449.4]
  wire  taken_rviJALR; // @[Frontend.scala 215:34:freechips.rocketchip.system.DefaultRV32Config.fir@137451.4]
  wire  _T_284; // @[Frontend.scala 229:29:freechips.rocketchip.system.DefaultRV32Config.fir@137650.4]
  wire  taken_rviBranch; // @[Frontend.scala 213:36:freechips.rocketchip.system.DefaultRV32Config.fir@137447.4]
  wire  _T_285; // @[Frontend.scala 229:53:freechips.rocketchip.system.DefaultRV32Config.fir@137651.4]
  wire  _T_286; // @[Frontend.scala 229:40:freechips.rocketchip.system.DefaultRV32Config.fir@137652.4]
  wire  _T_287; // @[Frontend.scala 229:17:freechips.rocketchip.system.DefaultRV32Config.fir@137653.4]
  wire  _T_92; // @[Frontend.scala 209:38:freechips.rocketchip.system.DefaultRV32Config.fir@137439.4]
  wire  _T_93; // @[Frontend.scala 209:47:freechips.rocketchip.system.DefaultRV32Config.fir@137440.4]
  wire  taken_valid; // @[Frontend.scala 209:44:freechips.rocketchip.system.DefaultRV32Config.fir@137441.4]
  wire [15:0] _T_112; // @[Frontend.scala 220:26:freechips.rocketchip.system.DefaultRV32Config.fir@137470.4]
  wire  _T_113; // @[Frontend.scala 220:26:freechips.rocketchip.system.DefaultRV32Config.fir@137471.4]
  wire  taken_rvcJAL; // @[Frontend.scala 219:45:freechips.rocketchip.system.DefaultRV32Config.fir@137468.4]
  wire  taken_rvcJump; // @[Frontend.scala 220:47:freechips.rocketchip.system.DefaultRV32Config.fir@137472.4]
  wire [15:0] _T_154; // @[Frontend.scala 224:26:freechips.rocketchip.system.DefaultRV32Config.fir@137516.4]
  wire  _T_155; // @[Frontend.scala 224:26:freechips.rocketchip.system.DefaultRV32Config.fir@137517.4]
  wire [4:0] _T_156; // @[Frontend.scala 224:56:freechips.rocketchip.system.DefaultRV32Config.fir@137518.4]
  wire  _T_157; // @[Frontend.scala 224:62:freechips.rocketchip.system.DefaultRV32Config.fir@137519.4]
  wire  taken_rvcJALR; // @[Frontend.scala 224:49:freechips.rocketchip.system.DefaultRV32Config.fir@137520.4]
  wire  _T_288; // @[Frontend.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@137654.4]
  wire  _T_148; // @[Frontend.scala 222:24:freechips.rocketchip.system.DefaultRV32Config.fir@137508.4]
  wire  taken_rvcJR; // @[Frontend.scala 222:46:freechips.rocketchip.system.DefaultRV32Config.fir@137511.4]
  wire  _T_289; // @[Frontend.scala 230:38:freechips.rocketchip.system.DefaultRV32Config.fir@137655.4]
  wire  _T_107; // @[Frontend.scala 218:28:freechips.rocketchip.system.DefaultRV32Config.fir@137463.4]
  wire  _T_109; // @[Frontend.scala 218:60:freechips.rocketchip.system.DefaultRV32Config.fir@137465.4]
  wire  taken_rvcBranch; // @[Frontend.scala 218:52:freechips.rocketchip.system.DefaultRV32Config.fir@137466.4]
  wire  _T_290; // @[Frontend.scala 230:60:freechips.rocketchip.system.DefaultRV32Config.fir@137656.4]
  wire  _T_291; // @[Frontend.scala 230:47:freechips.rocketchip.system.DefaultRV32Config.fir@137657.4]
  wire  _T_292; // @[Frontend.scala 230:15:freechips.rocketchip.system.DefaultRV32Config.fir@137658.4]
  wire  taken_taken; // @[Frontend.scala 229:71:freechips.rocketchip.system.DefaultRV32Config.fir@137659.4]
  wire  taken_idx; // @[Frontend.scala 244:13:freechips.rocketchip.system.DefaultRV32Config.fir@138004.4]
  wire  _T_592; // @[Frontend.scala 253:15:freechips.rocketchip.system.DefaultRV32Config.fir@138027.6]
  wire [1:0] _T_356; // @[Frontend.scala 207:39:freechips.rocketchip.system.DefaultRV32Config.fir@137757.4]
  wire  _T_357; // @[Frontend.scala 207:45:freechips.rocketchip.system.DefaultRV32Config.fir@137758.4]
  wire  _T_358; // @[Frontend.scala 208:34:freechips.rocketchip.system.DefaultRV32Config.fir@137759.4]
  wire  taken_prevRVI_1; // @[Frontend.scala 208:31:freechips.rocketchip.system.DefaultRV32Config.fir@137760.4]
  wire [15:0] taken_bits_1; // @[Frontend.scala 210:37:freechips.rocketchip.system.DefaultRV32Config.fir@137764.4]
  wire [31:0] taken_rviBits_1; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@137767.4]
  wire [6:0] _T_364; // @[Frontend.scala 215:28:freechips.rocketchip.system.DefaultRV32Config.fir@137772.4]
  wire  taken_rviJALR_1; // @[Frontend.scala 215:34:freechips.rocketchip.system.DefaultRV32Config.fir@137773.4]
  wire  _T_365; // @[Frontend.scala 216:42:freechips.rocketchip.system.DefaultRV32Config.fir@137774.4]
  wire  _T_366; // @[Frontend.scala 216:34:freechips.rocketchip.system.DefaultRV32Config.fir@137775.4]
  wire  _T_367; // @[Frontend.scala 216:31:freechips.rocketchip.system.DefaultRV32Config.fir@137776.4]
  wire [4:0] _T_368; // @[Frontend.scala 216:77:freechips.rocketchip.system.DefaultRV32Config.fir@137777.4]
  wire [4:0] _T_369; // @[Frontend.scala 216:66:freechips.rocketchip.system.DefaultRV32Config.fir@137778.4]
  wire  _T_370; // @[Frontend.scala 216:66:freechips.rocketchip.system.DefaultRV32Config.fir@137779.4]
  wire  taken_rviReturn_1; // @[Frontend.scala 216:46:freechips.rocketchip.system.DefaultRV32Config.fir@137780.4]
  wire  _T_560; // @[Frontend.scala 231:61:freechips.rocketchip.system.DefaultRV32Config.fir@137982.4]
  wire  _T_359; // @[Frontend.scala 209:38:freechips.rocketchip.system.DefaultRV32Config.fir@137761.4]
  wire  _T_360; // @[Frontend.scala 209:47:freechips.rocketchip.system.DefaultRV32Config.fir@137762.4]
  wire  taken_valid_1; // @[Frontend.scala 209:44:freechips.rocketchip.system.DefaultRV32Config.fir@137763.4]
  wire [15:0] _T_414; // @[Frontend.scala 222:24:freechips.rocketchip.system.DefaultRV32Config.fir@137829.4]
  wire  _T_415; // @[Frontend.scala 222:24:freechips.rocketchip.system.DefaultRV32Config.fir@137830.4]
  wire [4:0] _T_416; // @[Frontend.scala 222:53:freechips.rocketchip.system.DefaultRV32Config.fir@137831.4]
  wire  _T_417; // @[Frontend.scala 222:59:freechips.rocketchip.system.DefaultRV32Config.fir@137832.4]
  wire  taken_rvcJR_1; // @[Frontend.scala 222:46:freechips.rocketchip.system.DefaultRV32Config.fir@137833.4]
  wire [4:0] _T_418; // @[Frontend.scala 223:57:freechips.rocketchip.system.DefaultRV32Config.fir@137834.4]
  wire [4:0] _T_419; // @[Frontend.scala 223:49:freechips.rocketchip.system.DefaultRV32Config.fir@137835.4]
  wire  _T_420; // @[Frontend.scala 223:49:freechips.rocketchip.system.DefaultRV32Config.fir@137836.4]
  wire  taken_rvcReturn_1; // @[Frontend.scala 223:29:freechips.rocketchip.system.DefaultRV32Config.fir@137837.4]
  wire  _T_561; // @[Frontend.scala 231:83:freechips.rocketchip.system.DefaultRV32Config.fir@137983.4]
  wire  _T_562; // @[Frontend.scala 231:74:freechips.rocketchip.system.DefaultRV32Config.fir@137984.4]
  wire  taken_predictReturn_1; // @[Frontend.scala 231:49:freechips.rocketchip.system.DefaultRV32Config.fir@137985.4]
  wire  _T_601; // @[Frontend.scala 257:26:freechips.rocketchip.system.DefaultRV32Config.fir@138040.8]
  wire  _T_98; // @[Frontend.scala 216:42:freechips.rocketchip.system.DefaultRV32Config.fir@137452.4]
  wire  _T_99; // @[Frontend.scala 216:34:freechips.rocketchip.system.DefaultRV32Config.fir@137453.4]
  wire  _T_100; // @[Frontend.scala 216:31:freechips.rocketchip.system.DefaultRV32Config.fir@137454.4]
  wire [4:0] _T_101; // @[Frontend.scala 216:77:freechips.rocketchip.system.DefaultRV32Config.fir@137455.4]
  wire [4:0] _T_102; // @[Frontend.scala 216:66:freechips.rocketchip.system.DefaultRV32Config.fir@137456.4]
  wire  _T_103; // @[Frontend.scala 216:66:freechips.rocketchip.system.DefaultRV32Config.fir@137457.4]
  wire  taken_rviReturn; // @[Frontend.scala 216:46:freechips.rocketchip.system.DefaultRV32Config.fir@137458.4]
  wire  _T_293; // @[Frontend.scala 231:61:freechips.rocketchip.system.DefaultRV32Config.fir@137660.4]
  wire [4:0] _T_151; // @[Frontend.scala 223:57:freechips.rocketchip.system.DefaultRV32Config.fir@137512.4]
  wire [4:0] _T_152; // @[Frontend.scala 223:49:freechips.rocketchip.system.DefaultRV32Config.fir@137513.4]
  wire  _T_153; // @[Frontend.scala 223:49:freechips.rocketchip.system.DefaultRV32Config.fir@137514.4]
  wire  taken_rvcReturn; // @[Frontend.scala 223:29:freechips.rocketchip.system.DefaultRV32Config.fir@137515.4]
  wire  _T_294; // @[Frontend.scala 231:83:freechips.rocketchip.system.DefaultRV32Config.fir@137661.4]
  wire  _T_295; // @[Frontend.scala 231:74:freechips.rocketchip.system.DefaultRV32Config.fir@137662.4]
  wire  taken_predictReturn; // @[Frontend.scala 231:49:freechips.rocketchip.system.DefaultRV32Config.fir@137663.4]
  wire  _T_334; // @[Frontend.scala 257:26:freechips.rocketchip.system.DefaultRV32Config.fir@137718.8]
  wire  _GEN_45; // @[Frontend.scala 253:30:freechips.rocketchip.system.DefaultRV32Config.fir@137706.6]
  wire  _GEN_78; // @[Frontend.scala 257:44:freechips.rocketchip.system.DefaultRV32Config.fir@138041.8]
  wire  _GEN_81; // @[Frontend.scala 253:30:freechips.rocketchip.system.DefaultRV32Config.fir@138028.6]
  wire  useRAS; // @[Frontend.scala 244:25:freechips.rocketchip.system.DefaultRV32Config.fir@138005.4]
  wire  taken_rviBranch_1; // @[Frontend.scala 213:36:freechips.rocketchip.system.DefaultRV32Config.fir@137769.4]
  wire  _T_565; // @[Frontend.scala 233:53:freechips.rocketchip.system.DefaultRV32Config.fir@137989.4]
  wire [15:0] _T_373; // @[Frontend.scala 218:28:freechips.rocketchip.system.DefaultRV32Config.fir@137784.4]
  wire  _T_374; // @[Frontend.scala 218:28:freechips.rocketchip.system.DefaultRV32Config.fir@137785.4]
  wire  _T_376; // @[Frontend.scala 218:60:freechips.rocketchip.system.DefaultRV32Config.fir@137787.4]
  wire  taken_rvcBranch_1; // @[Frontend.scala 218:52:freechips.rocketchip.system.DefaultRV32Config.fir@137788.4]
  wire  _T_566; // @[Frontend.scala 233:75:freechips.rocketchip.system.DefaultRV32Config.fir@137990.4]
  wire  _T_567; // @[Frontend.scala 233:66:freechips.rocketchip.system.DefaultRV32Config.fir@137991.4]
  wire  taken_predictBranch_1; // @[Frontend.scala 233:41:freechips.rocketchip.system.DefaultRV32Config.fir@137992.4]
  wire  taken_rviJump_1; // @[Frontend.scala 214:34:freechips.rocketchip.system.DefaultRV32Config.fir@137771.4]
  wire  _T_563; // @[Frontend.scala 232:33:freechips.rocketchip.system.DefaultRV32Config.fir@137986.4]
  wire  _T_380; // @[Frontend.scala 220:26:freechips.rocketchip.system.DefaultRV32Config.fir@137793.4]
  wire  taken_rvcJAL_1; // @[Frontend.scala 219:45:freechips.rocketchip.system.DefaultRV32Config.fir@137790.4]
  wire  taken_rvcJump_1; // @[Frontend.scala 220:47:freechips.rocketchip.system.DefaultRV32Config.fir@137794.4]
  wire  _T_564; // @[Frontend.scala 232:53:freechips.rocketchip.system.DefaultRV32Config.fir@137987.4]
  wire  taken_predictJump_1; // @[Frontend.scala 232:44:freechips.rocketchip.system.DefaultRV32Config.fir@137988.4]
  wire  _T_602; // @[Frontend.scala 260:44:freechips.rocketchip.system.DefaultRV32Config.fir@138044.8]
  wire  _T_603; // @[Frontend.scala 260:26:freechips.rocketchip.system.DefaultRV32Config.fir@138045.8]
  wire [31:0] _T_75; // @[Frontend.scala 200:24:freechips.rocketchip.system.DefaultRV32Config.fir@137400.4]
  wire [31:0] _T_76; // @[Frontend.scala 200:31:freechips.rocketchip.system.DefaultRV32Config.fir@137401.4]
  wire [31:0] s2_base_pc; // @[Frontend.scala 200:22:freechips.rocketchip.system.DefaultRV32Config.fir@137402.4]
  wire [31:0] taken_pc_1; // @[Frontend.scala 261:33:freechips.rocketchip.system.DefaultRV32Config.fir@138047.10]
  wire [31:0] _T_605; // @[Frontend.scala 264:36:freechips.rocketchip.system.DefaultRV32Config.fir@138049.10]
  wire [31:0] _T_606; // @[Frontend.scala 264:23:freechips.rocketchip.system.DefaultRV32Config.fir@138050.10]
  wire [31:0] _T_607; // @[Frontend.scala 264:57:freechips.rocketchip.system.DefaultRV32Config.fir@138051.10]
  wire  _T_425; // @[Frontend.scala 226:31:freechips.rocketchip.system.DefaultRV32Config.fir@137844.4]
  wire  _T_427; // @[RocketCore.scala 978:48:freechips.rocketchip.system.DefaultRV32Config.fir@137846.4]
  wire  _T_428; // @[RocketCore.scala 978:53:freechips.rocketchip.system.DefaultRV32Config.fir@137847.4]
  wire  _T_483; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@137902.4]
  wire [10:0] _T_433; // @[RocketCore.scala 979:21:freechips.rocketchip.system.DefaultRV32Config.fir@137852.4]
  wire [10:0] _T_482; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@137901.4]
  wire [7:0] _T_437; // @[RocketCore.scala 980:65:freechips.rocketchip.system.DefaultRV32Config.fir@137856.4]
  wire [7:0] _T_438; // @[RocketCore.scala 980:73:freechips.rocketchip.system.DefaultRV32Config.fir@137857.4]
  wire [7:0] _T_480; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@137899.4]
  wire  _T_444; // @[RocketCore.scala 982:39:freechips.rocketchip.system.DefaultRV32Config.fir@137863.4]
  wire  _T_445; // @[RocketCore.scala 982:44:freechips.rocketchip.system.DefaultRV32Config.fir@137864.4]
  wire  _T_448; // @[RocketCore.scala 983:43:freechips.rocketchip.system.DefaultRV32Config.fir@137867.4]
  wire  _T_479; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@137898.4]
  wire [5:0] _T_455; // @[RocketCore.scala 984:66:freechips.rocketchip.system.DefaultRV32Config.fir@137874.4]
  wire [3:0] _T_461; // @[RocketCore.scala 986:57:freechips.rocketchip.system.DefaultRV32Config.fir@137880.4]
  wire [3:0] _T_464; // @[RocketCore.scala 987:52:freechips.rocketchip.system.DefaultRV32Config.fir@137883.4]
  wire [31:0] _T_486; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@137905.4]
  wire [31:0] _T_487; // @[RocketCore.scala 992:53:freechips.rocketchip.system.DefaultRV32Config.fir@137906.4]
  wire [7:0] _T_501; // @[RocketCore.scala 980:21:freechips.rocketchip.system.DefaultRV32Config.fir@137920.4]
  wire [7:0] _T_542; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@137961.4]
  wire  _T_541; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@137960.4]
  wire [31:0] _T_548; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@137967.4]
  wire [31:0] _T_549; // @[RocketCore.scala 992:53:freechips.rocketchip.system.DefaultRV32Config.fir@137968.4]
  wire [31:0] taken_rviImm_1; // @[Frontend.scala 226:23:freechips.rocketchip.system.DefaultRV32Config.fir@137969.4]
  wire  _T_381; // @[Frontend.scala 221:28:freechips.rocketchip.system.DefaultRV32Config.fir@137795.4]
  wire  _T_382; // @[RVC.scala 45:27:freechips.rocketchip.system.DefaultRV32Config.fir@137796.4]
  wire [4:0] _T_384; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@137798.4]
  wire [1:0] _T_385; // @[RVC.scala 45:35:freechips.rocketchip.system.DefaultRV32Config.fir@137799.4]
  wire  _T_386; // @[RVC.scala 45:43:freechips.rocketchip.system.DefaultRV32Config.fir@137800.4]
  wire [1:0] _T_387; // @[RVC.scala 45:49:freechips.rocketchip.system.DefaultRV32Config.fir@137801.4]
  wire [1:0] _T_388; // @[RVC.scala 45:59:freechips.rocketchip.system.DefaultRV32Config.fir@137802.4]
  wire [12:0] _T_393; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@137807.4]
  wire [12:0] _T_394; // @[Frontend.scala 221:66:freechips.rocketchip.system.DefaultRV32Config.fir@137808.4]
  wire [9:0] _T_397; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@137811.4]
  wire  _T_398; // @[RVC.scala 44:36:freechips.rocketchip.system.DefaultRV32Config.fir@137812.4]
  wire [1:0] _T_399; // @[RVC.scala 44:42:freechips.rocketchip.system.DefaultRV32Config.fir@137813.4]
  wire  _T_400; // @[RVC.scala 44:51:freechips.rocketchip.system.DefaultRV32Config.fir@137814.4]
  wire  _T_401; // @[RVC.scala 44:57:freechips.rocketchip.system.DefaultRV32Config.fir@137815.4]
  wire  _T_403; // @[RVC.scala 44:69:freechips.rocketchip.system.DefaultRV32Config.fir@137817.4]
  wire [2:0] _T_404; // @[RVC.scala 44:76:freechips.rocketchip.system.DefaultRV32Config.fir@137818.4]
  wire [20:0] _T_412; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@137826.4]
  wire [20:0] _T_413; // @[Frontend.scala 221:106:freechips.rocketchip.system.DefaultRV32Config.fir@137827.4]
  wire [20:0] taken_rvcImm_1; // @[Frontend.scala 221:23:freechips.rocketchip.system.DefaultRV32Config.fir@137828.4]
  wire [31:0] _T_608; // @[Frontend.scala 264:69:freechips.rocketchip.system.DefaultRV32Config.fir@138052.10]
  wire [31:0] _T_610; // @[Frontend.scala 264:64:freechips.rocketchip.system.DefaultRV32Config.fir@138054.10]
  wire [31:0] taken_npc_1; // @[Frontend.scala 264:64:freechips.rocketchip.system.DefaultRV32Config.fir@138055.10]
  wire [31:0] _T_611; // @[Frontend.scala 265:34:freechips.rocketchip.system.DefaultRV32Config.fir@138056.10]
  wire  _T_298; // @[Frontend.scala 233:53:freechips.rocketchip.system.DefaultRV32Config.fir@137667.4]
  wire  _T_299; // @[Frontend.scala 233:75:freechips.rocketchip.system.DefaultRV32Config.fir@137668.4]
  wire  _T_300; // @[Frontend.scala 233:66:freechips.rocketchip.system.DefaultRV32Config.fir@137669.4]
  wire  taken_predictBranch; // @[Frontend.scala 233:41:freechips.rocketchip.system.DefaultRV32Config.fir@137670.4]
  wire  _T_296; // @[Frontend.scala 232:33:freechips.rocketchip.system.DefaultRV32Config.fir@137664.4]
  wire  _T_297; // @[Frontend.scala 232:53:freechips.rocketchip.system.DefaultRV32Config.fir@137665.4]
  wire  taken_predictJump; // @[Frontend.scala 232:44:freechips.rocketchip.system.DefaultRV32Config.fir@137666.4]
  wire  _T_335; // @[Frontend.scala 260:44:freechips.rocketchip.system.DefaultRV32Config.fir@137722.8]
  wire  _T_336; // @[Frontend.scala 260:26:freechips.rocketchip.system.DefaultRV32Config.fir@137723.8]
  wire [31:0] _T_337; // @[Frontend.scala 263:32:freechips.rocketchip.system.DefaultRV32Config.fir@137726.10]
  wire  _T_158; // @[Frontend.scala 226:31:freechips.rocketchip.system.DefaultRV32Config.fir@137522.4]
  wire  _T_160; // @[RocketCore.scala 978:48:freechips.rocketchip.system.DefaultRV32Config.fir@137524.4]
  wire  _T_161; // @[RocketCore.scala 978:53:freechips.rocketchip.system.DefaultRV32Config.fir@137525.4]
  wire  _T_216; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@137580.4]
  wire [10:0] _T_166; // @[RocketCore.scala 979:21:freechips.rocketchip.system.DefaultRV32Config.fir@137530.4]
  wire [10:0] _T_215; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@137579.4]
  wire [7:0] _T_170; // @[RocketCore.scala 980:65:freechips.rocketchip.system.DefaultRV32Config.fir@137534.4]
  wire [7:0] _T_171; // @[RocketCore.scala 980:73:freechips.rocketchip.system.DefaultRV32Config.fir@137535.4]
  wire [7:0] _T_213; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@137577.4]
  wire  _T_177; // @[RocketCore.scala 982:39:freechips.rocketchip.system.DefaultRV32Config.fir@137541.4]
  wire  _T_178; // @[RocketCore.scala 982:44:freechips.rocketchip.system.DefaultRV32Config.fir@137542.4]
  wire  _T_181; // @[RocketCore.scala 983:43:freechips.rocketchip.system.DefaultRV32Config.fir@137545.4]
  wire  _T_212; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@137576.4]
  wire [5:0] _T_188; // @[RocketCore.scala 984:66:freechips.rocketchip.system.DefaultRV32Config.fir@137552.4]
  wire [3:0] _T_194; // @[RocketCore.scala 986:57:freechips.rocketchip.system.DefaultRV32Config.fir@137558.4]
  wire [3:0] _T_197; // @[RocketCore.scala 987:52:freechips.rocketchip.system.DefaultRV32Config.fir@137561.4]
  wire [31:0] _T_219; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@137583.4]
  wire [31:0] _T_220; // @[RocketCore.scala 992:53:freechips.rocketchip.system.DefaultRV32Config.fir@137584.4]
  wire [7:0] _T_234; // @[RocketCore.scala 980:21:freechips.rocketchip.system.DefaultRV32Config.fir@137598.4]
  wire [7:0] _T_275; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@137639.4]
  wire  _T_274; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@137638.4]
  wire [31:0] _T_281; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@137645.4]
  wire [31:0] _T_282; // @[RocketCore.scala 992:53:freechips.rocketchip.system.DefaultRV32Config.fir@137646.4]
  wire [31:0] taken_rviImm; // @[Frontend.scala 226:23:freechips.rocketchip.system.DefaultRV32Config.fir@137647.4]
  wire [32:0] _T_338; // @[Frontend.scala 263:61:freechips.rocketchip.system.DefaultRV32Config.fir@137727.10]
  wire  _T_114; // @[Frontend.scala 221:28:freechips.rocketchip.system.DefaultRV32Config.fir@137473.4]
  wire  _T_115; // @[RVC.scala 45:27:freechips.rocketchip.system.DefaultRV32Config.fir@137474.4]
  wire [4:0] _T_117; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@137476.4]
  wire [1:0] _T_118; // @[RVC.scala 45:35:freechips.rocketchip.system.DefaultRV32Config.fir@137477.4]
  wire  _T_119; // @[RVC.scala 45:43:freechips.rocketchip.system.DefaultRV32Config.fir@137478.4]
  wire [1:0] _T_120; // @[RVC.scala 45:49:freechips.rocketchip.system.DefaultRV32Config.fir@137479.4]
  wire [1:0] _T_121; // @[RVC.scala 45:59:freechips.rocketchip.system.DefaultRV32Config.fir@137480.4]
  wire [12:0] _T_126; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@137485.4]
  wire [12:0] _T_127; // @[Frontend.scala 221:66:freechips.rocketchip.system.DefaultRV32Config.fir@137486.4]
  wire [9:0] _T_130; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@137489.4]
  wire  _T_131; // @[RVC.scala 44:36:freechips.rocketchip.system.DefaultRV32Config.fir@137490.4]
  wire [1:0] _T_132; // @[RVC.scala 44:42:freechips.rocketchip.system.DefaultRV32Config.fir@137491.4]
  wire  _T_133; // @[RVC.scala 44:51:freechips.rocketchip.system.DefaultRV32Config.fir@137492.4]
  wire  _T_134; // @[RVC.scala 44:57:freechips.rocketchip.system.DefaultRV32Config.fir@137493.4]
  wire  _T_136; // @[RVC.scala 44:69:freechips.rocketchip.system.DefaultRV32Config.fir@137495.4]
  wire [2:0] _T_137; // @[RVC.scala 44:76:freechips.rocketchip.system.DefaultRV32Config.fir@137496.4]
  wire [20:0] _T_145; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@137504.4]
  wire [20:0] _T_146; // @[Frontend.scala 221:106:freechips.rocketchip.system.DefaultRV32Config.fir@137505.4]
  wire [20:0] taken_rvcImm; // @[Frontend.scala 221:23:freechips.rocketchip.system.DefaultRV32Config.fir@137506.4]
  wire [32:0] _T_339; // @[Frontend.scala 263:44:freechips.rocketchip.system.DefaultRV32Config.fir@137728.10]
  wire [32:0] _GEN_127; // @[Frontend.scala 263:39:freechips.rocketchip.system.DefaultRV32Config.fir@137729.10]
  wire [32:0] _T_341; // @[Frontend.scala 263:39:freechips.rocketchip.system.DefaultRV32Config.fir@137730.10]
  wire [32:0] taken_npc; // @[Frontend.scala 263:39:freechips.rocketchip.system.DefaultRV32Config.fir@137731.10]
  wire [32:0] _T_342; // @[Frontend.scala 265:34:freechips.rocketchip.system.DefaultRV32Config.fir@137732.10]
  wire  predicted_taken; // @[Frontend.scala 191:29:freechips.rocketchip.system.DefaultRV32Config.fir@137389.4]
  wire [31:0] _GEN_28; // @[Frontend.scala 191:56:freechips.rocketchip.system.DefaultRV32Config.fir@137390.4]
  wire [32:0] _GEN_43; // @[Frontend.scala 260:61:freechips.rocketchip.system.DefaultRV32Config.fir@137724.8]
  wire [32:0] _GEN_46; // @[Frontend.scala 253:30:freechips.rocketchip.system.DefaultRV32Config.fir@137706.6]
  wire [32:0] _GEN_79; // @[Frontend.scala 260:61:freechips.rocketchip.system.DefaultRV32Config.fir@138046.8]
  wire [32:0] _GEN_82; // @[Frontend.scala 253:30:freechips.rocketchip.system.DefaultRV32Config.fir@138028.6]
  wire [32:0] _GEN_99; // @[Frontend.scala 244:25:freechips.rocketchip.system.DefaultRV32Config.fir@138005.4]
  wire [32:0] predicted_npc; // @[Frontend.scala 304:19:freechips.rocketchip.system.DefaultRV32Config.fir@138094.4]
  wire [32:0] npc; // @[Frontend.scala 128:16:freechips.rocketchip.system.DefaultRV32Config.fir@137295.4]
  wire  _T_39; // @[Frontend.scala 134:56:freechips.rocketchip.system.DefaultRV32Config.fir@137297.4]
  wire  _T_40; // @[Frontend.scala 134:53:freechips.rocketchip.system.DefaultRV32Config.fir@137298.4]
  wire  _T_41; // @[Frontend.scala 134:41:freechips.rocketchip.system.DefaultRV32Config.fir@137299.4]
  wire  s0_speculative; // @[Frontend.scala 134:72:freechips.rocketchip.system.DefaultRV32Config.fir@137300.4]
  wire  _T_44; // @[Frontend.scala 140:9:freechips.rocketchip.system.DefaultRV32Config.fir@137308.4]
  wire  _T_551; // @[Frontend.scala 229:29:freechips.rocketchip.system.DefaultRV32Config.fir@137972.4]
  wire  _T_552; // @[Frontend.scala 229:53:freechips.rocketchip.system.DefaultRV32Config.fir@137973.4]
  wire  _T_553; // @[Frontend.scala 229:40:freechips.rocketchip.system.DefaultRV32Config.fir@137974.4]
  wire  _T_554; // @[Frontend.scala 229:17:freechips.rocketchip.system.DefaultRV32Config.fir@137975.4]
  wire  _T_422; // @[Frontend.scala 224:26:freechips.rocketchip.system.DefaultRV32Config.fir@137839.4]
  wire  taken_rvcJALR_1; // @[Frontend.scala 224:49:freechips.rocketchip.system.DefaultRV32Config.fir@137842.4]
  wire  _T_555; // @[Frontend.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@137976.4]
  wire  _T_556; // @[Frontend.scala 230:38:freechips.rocketchip.system.DefaultRV32Config.fir@137977.4]
  wire  _T_557; // @[Frontend.scala 230:60:freechips.rocketchip.system.DefaultRV32Config.fir@137978.4]
  wire  _T_558; // @[Frontend.scala 230:47:freechips.rocketchip.system.DefaultRV32Config.fir@137979.4]
  wire  _T_559; // @[Frontend.scala 230:15:freechips.rocketchip.system.DefaultRV32Config.fir@137980.4]
  wire  taken_taken_1; // @[Frontend.scala 229:71:freechips.rocketchip.system.DefaultRV32Config.fir@137981.4]
  wire  taken; // @[Frontend.scala 285:19:freechips.rocketchip.system.DefaultRV32Config.fir@138093.4]
  wire  _GEN_116; // @[Frontend.scala 315:33:freechips.rocketchip.system.DefaultRV32Config.fir@138110.8]
  wire  _GEN_120; // @[Frontend.scala 311:20:freechips.rocketchip.system.DefaultRV32Config.fir@138105.6]
  wire  s2_redirect; // @[Frontend.scala 310:26:freechips.rocketchip.system.DefaultRV32Config.fir@138104.4]
  wire  _T_45; // @[Frontend.scala 141:17:freechips.rocketchip.system.DefaultRV32Config.fir@137310.6]
  wire  _GEN_0; // @[Frontend.scala 140:21:freechips.rocketchip.system.DefaultRV32Config.fir@137309.4]
  wire  _T_49; // @[Frontend.scala 161:36:freechips.rocketchip.system.DefaultRV32Config.fir@137332.4]
  wire  _T_51; // @[Frontend.scala 162:42:freechips.rocketchip.system.DefaultRV32Config.fir@137335.4]
  wire  _T_52; // @[Frontend.scala 162:39:freechips.rocketchip.system.DefaultRV32Config.fir@137336.4]
  reg  _T_54; // @[Frontend.scala 165:29:freechips.rocketchip.system.DefaultRV32Config.fir@137340.4]
  reg [31:0] _RAND_20;
  wire  _T_55; // @[Frontend.scala 165:40:freechips.rocketchip.system.DefaultRV32Config.fir@137342.4]
  wire  _T_56; // @[Frontend.scala 165:80:freechips.rocketchip.system.DefaultRV32Config.fir@137343.4]
  wire  _T_57; // @[Frontend.scala 165:98:freechips.rocketchip.system.DefaultRV32Config.fir@137344.4]
  wire  _T_58; // @[Frontend.scala 165:77:freechips.rocketchip.system.DefaultRV32Config.fir@137345.4]
  wire [32:0] _T_60; // @[Frontend.scala 167:28:freechips.rocketchip.system.DefaultRV32Config.fir@137349.4]
  wire [32:0] _T_61; // @[Frontend.scala 340:29:freechips.rocketchip.system.DefaultRV32Config.fir@137350.4]
  wire [32:0] _T_62; // @[Frontend.scala 340:33:freechips.rocketchip.system.DefaultRV32Config.fir@137351.4]
  wire [32:0] _T_63; // @[Frontend.scala 340:27:freechips.rocketchip.system.DefaultRV32Config.fir@137352.4]
  wire  _T_64; // @[package.scala 120:13:freechips.rocketchip.system.DefaultRV32Config.fir@137355.4]
  wire [2:0] _T_65; // @[Frontend.scala 170:52:freechips.rocketchip.system.DefaultRV32Config.fir@137356.4]
  wire  _T_66; // @[Frontend.scala 171:79:freechips.rocketchip.system.DefaultRV32Config.fir@137358.4]
  wire  _T_67; // @[Frontend.scala 171:76:freechips.rocketchip.system.DefaultRV32Config.fir@137359.4]
  wire  _T_68; // @[Frontend.scala 171:104:freechips.rocketchip.system.DefaultRV32Config.fir@137360.4]
  wire  _T_69; // @[Frontend.scala 171:101:freechips.rocketchip.system.DefaultRV32Config.fir@137361.4]
  wire  _T_71; // @[Frontend.scala 175:30:freechips.rocketchip.system.DefaultRV32Config.fir@137367.4]
  wire  _T_77; // @[Frontend.scala 291:11:freechips.rocketchip.system.DefaultRV32Config.fir@137413.4]
  wire  _T_78; // @[Frontend.scala 292:44:freechips.rocketchip.system.DefaultRV32Config.fir@137415.6]
  wire  fetch_bubble_likely; // @[Frontend.scala 292:33:freechips.rocketchip.system.DefaultRV32Config.fir@137416.6]
  wire  _T_80; // @[Frontend.scala 293:54:freechips.rocketchip.system.DefaultRV32Config.fir@137418.6]
  wire  _T_81; // @[Frontend.scala 293:51:freechips.rocketchip.system.DefaultRV32Config.fir@137419.6]
  wire  _T_82; // @[Frontend.scala 293:66:freechips.rocketchip.system.DefaultRV32Config.fir@137420.6]
  wire  _T_618; // @[Frontend.scala 272:15:freechips.rocketchip.system.DefaultRV32Config.fir@138070.6]
  wire  _T_620; // @[Frontend.scala 272:52:freechips.rocketchip.system.DefaultRV32Config.fir@138072.6]
  wire  _T_621; // @[Frontend.scala 272:91:freechips.rocketchip.system.DefaultRV32Config.fir@138073.6]
  wire  _T_622; // @[Frontend.scala 272:106:freechips.rocketchip.system.DefaultRV32Config.fir@138074.6]
  wire  _T_623; // @[Frontend.scala 272:34:freechips.rocketchip.system.DefaultRV32Config.fir@138075.6]
  wire  _T_351; // @[Frontend.scala 272:52:freechips.rocketchip.system.DefaultRV32Config.fir@137748.6]
  wire  _T_352; // @[Frontend.scala 272:91:freechips.rocketchip.system.DefaultRV32Config.fir@137749.6]
  wire  _T_353; // @[Frontend.scala 272:106:freechips.rocketchip.system.DefaultRV32Config.fir@137750.6]
  wire  _T_354; // @[Frontend.scala 272:34:freechips.rocketchip.system.DefaultRV32Config.fir@137751.6]
  wire  _GEN_92; // @[Frontend.scala 272:125:freechips.rocketchip.system.DefaultRV32Config.fir@138076.6]
  wire  updateBTB; // @[Frontend.scala 244:25:freechips.rocketchip.system.DefaultRV32Config.fir@138005.4]
  wire  _T_83; // @[Frontend.scala 293:89:freechips.rocketchip.system.DefaultRV32Config.fir@137421.6]
  wire [1:0] _T_84; // @[Frontend.scala 297:63:freechips.rocketchip.system.DefaultRV32Config.fir@137426.6]
  wire [31:0] _GEN_128; // @[Frontend.scala 297:50:freechips.rocketchip.system.DefaultRV32Config.fir@137427.6]
  wire [31:0] _T_85; // @[Frontend.scala 297:50:freechips.rocketchip.system.DefaultRV32Config.fir@137427.6]
  wire [1:0] after_idx; // @[Frontend.scala 244:25:freechips.rocketchip.system.DefaultRV32Config.fir@138005.4]
  wire [2:0] _T_86; // @[Frontend.scala 301:66:freechips.rocketchip.system.DefaultRV32Config.fir@137431.4]
  wire [31:0] _GEN_129; // @[Frontend.scala 301:53:freechips.rocketchip.system.DefaultRV32Config.fir@137432.4]
  wire  _T_104; // @[Frontend.scala 217:30:freechips.rocketchip.system.DefaultRV32Config.fir@137459.4]
  wire  taken_rviCall; // @[Frontend.scala 217:42:freechips.rocketchip.system.DefaultRV32Config.fir@137461.4]
  wire  taken_rvcCall; // @[Frontend.scala 225:28:freechips.rocketchip.system.DefaultRV32Config.fir@137521.4]
  wire  _T_301; // @[Frontend.scala 235:22:freechips.rocketchip.system.DefaultRV32Config.fir@137671.4]
  wire  _T_302; // @[Frontend.scala 235:69:freechips.rocketchip.system.DefaultRV32Config.fir@137672.4]
  wire  _T_303; // @[Frontend.scala 235:43:freechips.rocketchip.system.DefaultRV32Config.fir@137673.4]
  wire  _T_304; // @[Frontend.scala 235:77:freechips.rocketchip.system.DefaultRV32Config.fir@137674.4]
  wire  _T_306; // @[Frontend.scala 235:86:freechips.rocketchip.system.DefaultRV32Config.fir@137676.4]
  wire  _GEN_39; // @[Frontend.scala 235:95:freechips.rocketchip.system.DefaultRV32Config.fir@137677.4]
  wire  _GEN_40; // @[Frontend.scala 235:95:freechips.rocketchip.system.DefaultRV32Config.fir@137677.4]
  wire  _T_311; // @[Frontend.scala 247:92:freechips.rocketchip.system.DefaultRV32Config.fir@137689.6]
  wire  _T_312; // @[Frontend.scala 247:80:freechips.rocketchip.system.DefaultRV32Config.fir@137690.6]
  wire  _T_313; // @[Frontend.scala 247:127:freechips.rocketchip.system.DefaultRV32Config.fir@137691.6]
  wire  _T_314; // @[Frontend.scala 247:115:freechips.rocketchip.system.DefaultRV32Config.fir@137692.6]
  wire  _T_315; // @[Frontend.scala 247:106:freechips.rocketchip.system.DefaultRV32Config.fir@137693.6]
  wire  _T_316; // @[Frontend.scala 247:68:freechips.rocketchip.system.DefaultRV32Config.fir@137694.6]
  wire  _T_317; // @[Frontend.scala 248:50:freechips.rocketchip.system.DefaultRV32Config.fir@137696.6]
  wire  _T_318; // @[Frontend.scala 249:50:freechips.rocketchip.system.DefaultRV32Config.fir@137697.6]
  wire  _T_319; // @[Frontend.scala 250:50:freechips.rocketchip.system.DefaultRV32Config.fir@137698.6]
  wire  _T_322; // @[Frontend.scala 250:46:freechips.rocketchip.system.DefaultRV32Config.fir@137701.6]
  wire [1:0] _T_323; // @[Frontend.scala 249:46:freechips.rocketchip.system.DefaultRV32Config.fir@137702.6]
  wire [1:0] _T_324; // @[Frontend.scala 248:46:freechips.rocketchip.system.DefaultRV32Config.fir@137703.6]
  wire  _T_327; // @[Frontend.scala 254:34:freechips.rocketchip.system.DefaultRV32Config.fir@137708.8]
  wire  _T_328; // @[Frontend.scala 254:46:freechips.rocketchip.system.DefaultRV32Config.fir@137709.8]
  wire  _T_329; // @[Frontend.scala 254:43:freechips.rocketchip.system.DefaultRV32Config.fir@137710.8]
  wire  _T_330; // @[Frontend.scala 254:64:freechips.rocketchip.system.DefaultRV32Config.fir@137711.8]
  wire  _T_331; // @[Frontend.scala 254:61:freechips.rocketchip.system.DefaultRV32Config.fir@137712.8]
  wire  _T_332; // @[Frontend.scala 254:80:freechips.rocketchip.system.DefaultRV32Config.fir@137713.8]
  wire  _T_333; // @[Frontend.scala 254:77:freechips.rocketchip.system.DefaultRV32Config.fir@137714.8]
  wire  _GEN_41; // @[Frontend.scala 254:96:freechips.rocketchip.system.DefaultRV32Config.fir@137715.8]
  wire  _GEN_44; // @[Frontend.scala 253:30:freechips.rocketchip.system.DefaultRV32Config.fir@137706.6]
  wire  _GEN_47; // @[Frontend.scala 268:59:freechips.rocketchip.system.DefaultRV32Config.fir@137739.6]
  wire [1:0] _T_361; // @[Frontend.scala 207:39:freechips.rocketchip.system.DefaultRV32Config.fir@137765.4]
  wire  taken_rvc_1; // @[Frontend.scala 207:45:freechips.rocketchip.system.DefaultRV32Config.fir@137766.4]
  wire  _T_371; // @[Frontend.scala 217:30:freechips.rocketchip.system.DefaultRV32Config.fir@137781.4]
  wire  taken_rviCall_1; // @[Frontend.scala 217:42:freechips.rocketchip.system.DefaultRV32Config.fir@137783.4]
  wire  taken_rvcCall_1; // @[Frontend.scala 225:28:freechips.rocketchip.system.DefaultRV32Config.fir@137843.4]
  wire  _T_570; // @[Frontend.scala 235:43:freechips.rocketchip.system.DefaultRV32Config.fir@137995.4]
  wire  _T_571; // @[Frontend.scala 235:77:freechips.rocketchip.system.DefaultRV32Config.fir@137996.4]
  wire  _T_572; // @[Frontend.scala 235:89:freechips.rocketchip.system.DefaultRV32Config.fir@137997.4]
  wire  _T_573; // @[Frontend.scala 235:86:freechips.rocketchip.system.DefaultRV32Config.fir@137998.4]
  wire  _GEN_76; // @[Frontend.scala 235:95:freechips.rocketchip.system.DefaultRV32Config.fir@137999.4]
  wire  _T_578; // @[Frontend.scala 247:92:freechips.rocketchip.system.DefaultRV32Config.fir@138011.6]
  wire  _T_579; // @[Frontend.scala 247:80:freechips.rocketchip.system.DefaultRV32Config.fir@138012.6]
  wire  _T_580; // @[Frontend.scala 247:127:freechips.rocketchip.system.DefaultRV32Config.fir@138013.6]
  wire  _T_581; // @[Frontend.scala 247:115:freechips.rocketchip.system.DefaultRV32Config.fir@138014.6]
  wire  _T_582; // @[Frontend.scala 247:106:freechips.rocketchip.system.DefaultRV32Config.fir@138015.6]
  wire  _T_583; // @[Frontend.scala 247:68:freechips.rocketchip.system.DefaultRV32Config.fir@138016.6]
  wire  _T_584; // @[Frontend.scala 248:50:freechips.rocketchip.system.DefaultRV32Config.fir@138018.6]
  wire  _T_585; // @[Frontend.scala 249:50:freechips.rocketchip.system.DefaultRV32Config.fir@138019.6]
  wire  _T_586; // @[Frontend.scala 250:50:freechips.rocketchip.system.DefaultRV32Config.fir@138020.6]
  wire  _T_589; // @[Frontend.scala 250:46:freechips.rocketchip.system.DefaultRV32Config.fir@138023.6]
  wire [1:0] _T_590; // @[Frontend.scala 249:46:freechips.rocketchip.system.DefaultRV32Config.fir@138024.6]
  wire [1:0] _T_591; // @[Frontend.scala 248:46:freechips.rocketchip.system.DefaultRV32Config.fir@138025.6]
  wire  _T_594; // @[Frontend.scala 254:34:freechips.rocketchip.system.DefaultRV32Config.fir@138030.8]
  wire  _T_595; // @[Frontend.scala 254:46:freechips.rocketchip.system.DefaultRV32Config.fir@138031.8]
  wire  _T_596; // @[Frontend.scala 254:43:freechips.rocketchip.system.DefaultRV32Config.fir@138032.8]
  wire  _T_597; // @[Frontend.scala 254:64:freechips.rocketchip.system.DefaultRV32Config.fir@138033.8]
  wire  _T_598; // @[Frontend.scala 254:61:freechips.rocketchip.system.DefaultRV32Config.fir@138034.8]
  wire  _T_599; // @[Frontend.scala 254:80:freechips.rocketchip.system.DefaultRV32Config.fir@138035.8]
  wire  _T_600; // @[Frontend.scala 254:77:freechips.rocketchip.system.DefaultRV32Config.fir@138036.8]
  wire  _GEN_77; // @[Frontend.scala 254:96:freechips.rocketchip.system.DefaultRV32Config.fir@138037.8]
  wire  _GEN_83; // @[Frontend.scala 268:59:freechips.rocketchip.system.DefaultRV32Config.fir@138063.6]
  wire  _T_626; // @[Frontend.scala 280:23:freechips.rocketchip.system.DefaultRV32Config.fir@138084.6]
  wire  _T_628; // @[Frontend.scala 280:37:freechips.rocketchip.system.DefaultRV32Config.fir@138086.6]
  wire [15:0] _T_629; // @[Frontend.scala 282:37:freechips.rocketchip.system.DefaultRV32Config.fir@138089.8]
  wire  _T_631; // @[Frontend.scala 307:45:freechips.rocketchip.system.DefaultRV32Config.fir@138098.4]
  wire  _T_632; // @[Frontend.scala 307:28:freechips.rocketchip.system.DefaultRV32Config.fir@138099.4]
  wire  _GEN_117; // @[Frontend.scala 311:20:freechips.rocketchip.system.DefaultRV32Config.fir@138105.6]
  wire  _GEN_118; // @[Frontend.scala 311:20:freechips.rocketchip.system.DefaultRV32Config.fir@138105.6]
  wire [4:0] _GEN_119; // @[Frontend.scala 311:20:freechips.rocketchip.system.DefaultRV32Config.fir@138105.6]
  wire  _T_635; // @[Frontend.scala 319:12:freechips.rocketchip.system.DefaultRV32Config.fir@138115.4]
  wire  _T_637; // @[Frontend.scala 319:35:freechips.rocketchip.system.DefaultRV32Config.fir@138117.4]
  wire  _T_639; // @[Frontend.scala 319:11:freechips.rocketchip.system.DefaultRV32Config.fir@138119.4]
  wire  _T_640; // @[Frontend.scala 319:11:freechips.rocketchip.system.DefaultRV32Config.fir@138120.4]
  ICache icache ( // @[Frontend.scala 63:26:freechips.rocketchip.system.DefaultRV32Config.fir@137202.4]
    .clock(icache_clock),
    .reset(icache_reset),
    .auto_master_out_a_ready(icache_auto_master_out_a_ready),
    .auto_master_out_a_valid(icache_auto_master_out_a_valid),
    .auto_master_out_a_bits_address(icache_auto_master_out_a_bits_address),
    .auto_master_out_d_valid(icache_auto_master_out_d_valid),
    .auto_master_out_d_bits_opcode(icache_auto_master_out_d_bits_opcode),
    .auto_master_out_d_bits_size(icache_auto_master_out_d_bits_size),
    .auto_master_out_d_bits_data(icache_auto_master_out_d_bits_data),
    .auto_master_out_d_bits_corrupt(icache_auto_master_out_d_bits_corrupt),
    .io_req_ready(icache_io_req_ready),
    .io_req_valid(icache_io_req_valid),
    .io_req_bits_addr(icache_io_req_bits_addr),
    .io_s1_paddr(icache_io_s1_paddr),
    .io_s1_kill(icache_io_s1_kill),
    .io_s2_kill(icache_io_s2_kill),
    .io_resp_valid(icache_io_resp_valid),
    .io_resp_bits_data(icache_io_resp_bits_data),
    .io_resp_bits_ae(icache_io_resp_bits_ae),
    .io_invalidate(icache_io_invalidate)
  );
  ShiftQueue fq ( // @[Frontend.scala 84:57:freechips.rocketchip.system.DefaultRV32Config.fir@137212.4]
    .clock(fq_clock),
    .reset(fq_reset),
    .io_enq_ready(fq_io_enq_ready),
    .io_enq_valid(fq_io_enq_valid),
    .io_enq_bits_btb_taken(fq_io_enq_bits_btb_taken),
    .io_enq_bits_btb_bridx(fq_io_enq_bits_btb_bridx),
    .io_enq_bits_btb_entry(fq_io_enq_bits_btb_entry),
    .io_enq_bits_btb_bht_history(fq_io_enq_bits_btb_bht_history),
    .io_enq_bits_pc(fq_io_enq_bits_pc),
    .io_enq_bits_data(fq_io_enq_bits_data),
    .io_enq_bits_mask(fq_io_enq_bits_mask),
    .io_enq_bits_xcpt_pf_inst(fq_io_enq_bits_xcpt_pf_inst),
    .io_enq_bits_xcpt_ae_inst(fq_io_enq_bits_xcpt_ae_inst),
    .io_enq_bits_replay(fq_io_enq_bits_replay),
    .io_deq_ready(fq_io_deq_ready),
    .io_deq_valid(fq_io_deq_valid),
    .io_deq_bits_btb_taken(fq_io_deq_bits_btb_taken),
    .io_deq_bits_btb_bridx(fq_io_deq_bits_btb_bridx),
    .io_deq_bits_btb_entry(fq_io_deq_bits_btb_entry),
    .io_deq_bits_btb_bht_history(fq_io_deq_bits_btb_bht_history),
    .io_deq_bits_pc(fq_io_deq_bits_pc),
    .io_deq_bits_data(fq_io_deq_bits_data),
    .io_deq_bits_xcpt_pf_inst(fq_io_deq_bits_xcpt_pf_inst),
    .io_deq_bits_xcpt_ae_inst(fq_io_deq_bits_xcpt_ae_inst),
    .io_deq_bits_replay(fq_io_deq_bits_replay),
    .io_mask(fq_io_mask)
  );
  TLB_1 tlb ( // @[Frontend.scala 98:19:freechips.rocketchip.system.DefaultRV32Config.fir@137234.4]
    .clock(tlb_clock),
    .reset(tlb_reset),
    .io_req_ready(tlb_io_req_ready),
    .io_req_valid(tlb_io_req_valid),
    .io_req_bits_vaddr(tlb_io_req_bits_vaddr),
    .io_resp_miss(tlb_io_resp_miss),
    .io_resp_paddr(tlb_io_resp_paddr),
    .io_resp_pf_inst(tlb_io_resp_pf_inst),
    .io_resp_ae_inst(tlb_io_resp_ae_inst),
    .io_resp_cacheable(tlb_io_resp_cacheable),
    .io_sfence_valid(tlb_io_sfence_valid),
    .io_sfence_bits_rs1(tlb_io_sfence_bits_rs1),
    .io_sfence_bits_rs2(tlb_io_sfence_bits_rs2),
    .io_sfence_bits_addr(tlb_io_sfence_bits_addr),
    .io_ptw_req_ready(tlb_io_ptw_req_ready),
    .io_ptw_req_valid(tlb_io_ptw_req_valid),
    .io_ptw_req_bits_valid(tlb_io_ptw_req_bits_valid),
    .io_ptw_req_bits_bits_addr(tlb_io_ptw_req_bits_bits_addr),
    .io_ptw_resp_valid(tlb_io_ptw_resp_valid),
    .io_ptw_resp_bits_ae(tlb_io_ptw_resp_bits_ae),
    .io_ptw_resp_bits_pte_ppn(tlb_io_ptw_resp_bits_pte_ppn),
    .io_ptw_resp_bits_pte_d(tlb_io_ptw_resp_bits_pte_d),
    .io_ptw_resp_bits_pte_a(tlb_io_ptw_resp_bits_pte_a),
    .io_ptw_resp_bits_pte_g(tlb_io_ptw_resp_bits_pte_g),
    .io_ptw_resp_bits_pte_u(tlb_io_ptw_resp_bits_pte_u),
    .io_ptw_resp_bits_pte_x(tlb_io_ptw_resp_bits_pte_x),
    .io_ptw_resp_bits_pte_w(tlb_io_ptw_resp_bits_pte_w),
    .io_ptw_resp_bits_pte_r(tlb_io_ptw_resp_bits_pte_r),
    .io_ptw_resp_bits_pte_v(tlb_io_ptw_resp_bits_pte_v),
    .io_ptw_resp_bits_level(tlb_io_ptw_resp_bits_level),
    .io_ptw_resp_bits_homogeneous(tlb_io_ptw_resp_bits_homogeneous),
    .io_ptw_ptbr_mode(tlb_io_ptw_ptbr_mode),
    .io_ptw_status_debug(tlb_io_ptw_status_debug),
    .io_ptw_status_prv(tlb_io_ptw_status_prv),
    .io_ptw_pmp_0_cfg_l(tlb_io_ptw_pmp_0_cfg_l),
    .io_ptw_pmp_0_cfg_a(tlb_io_ptw_pmp_0_cfg_a),
    .io_ptw_pmp_0_cfg_x(tlb_io_ptw_pmp_0_cfg_x),
    .io_ptw_pmp_0_cfg_w(tlb_io_ptw_pmp_0_cfg_w),
    .io_ptw_pmp_0_cfg_r(tlb_io_ptw_pmp_0_cfg_r),
    .io_ptw_pmp_0_addr(tlb_io_ptw_pmp_0_addr),
    .io_ptw_pmp_0_mask(tlb_io_ptw_pmp_0_mask),
    .io_ptw_pmp_1_cfg_l(tlb_io_ptw_pmp_1_cfg_l),
    .io_ptw_pmp_1_cfg_a(tlb_io_ptw_pmp_1_cfg_a),
    .io_ptw_pmp_1_cfg_x(tlb_io_ptw_pmp_1_cfg_x),
    .io_ptw_pmp_1_cfg_w(tlb_io_ptw_pmp_1_cfg_w),
    .io_ptw_pmp_1_cfg_r(tlb_io_ptw_pmp_1_cfg_r),
    .io_ptw_pmp_1_addr(tlb_io_ptw_pmp_1_addr),
    .io_ptw_pmp_1_mask(tlb_io_ptw_pmp_1_mask),
    .io_ptw_pmp_2_cfg_l(tlb_io_ptw_pmp_2_cfg_l),
    .io_ptw_pmp_2_cfg_a(tlb_io_ptw_pmp_2_cfg_a),
    .io_ptw_pmp_2_cfg_x(tlb_io_ptw_pmp_2_cfg_x),
    .io_ptw_pmp_2_cfg_w(tlb_io_ptw_pmp_2_cfg_w),
    .io_ptw_pmp_2_cfg_r(tlb_io_ptw_pmp_2_cfg_r),
    .io_ptw_pmp_2_addr(tlb_io_ptw_pmp_2_addr),
    .io_ptw_pmp_2_mask(tlb_io_ptw_pmp_2_mask),
    .io_ptw_pmp_3_cfg_l(tlb_io_ptw_pmp_3_cfg_l),
    .io_ptw_pmp_3_cfg_a(tlb_io_ptw_pmp_3_cfg_a),
    .io_ptw_pmp_3_cfg_x(tlb_io_ptw_pmp_3_cfg_x),
    .io_ptw_pmp_3_cfg_w(tlb_io_ptw_pmp_3_cfg_w),
    .io_ptw_pmp_3_cfg_r(tlb_io_ptw_pmp_3_cfg_r),
    .io_ptw_pmp_3_addr(tlb_io_ptw_pmp_3_addr),
    .io_ptw_pmp_3_mask(tlb_io_ptw_pmp_3_mask),
    .io_ptw_pmp_4_cfg_l(tlb_io_ptw_pmp_4_cfg_l),
    .io_ptw_pmp_4_cfg_a(tlb_io_ptw_pmp_4_cfg_a),
    .io_ptw_pmp_4_cfg_x(tlb_io_ptw_pmp_4_cfg_x),
    .io_ptw_pmp_4_cfg_w(tlb_io_ptw_pmp_4_cfg_w),
    .io_ptw_pmp_4_cfg_r(tlb_io_ptw_pmp_4_cfg_r),
    .io_ptw_pmp_4_addr(tlb_io_ptw_pmp_4_addr),
    .io_ptw_pmp_4_mask(tlb_io_ptw_pmp_4_mask),
    .io_ptw_pmp_5_cfg_l(tlb_io_ptw_pmp_5_cfg_l),
    .io_ptw_pmp_5_cfg_a(tlb_io_ptw_pmp_5_cfg_a),
    .io_ptw_pmp_5_cfg_x(tlb_io_ptw_pmp_5_cfg_x),
    .io_ptw_pmp_5_cfg_w(tlb_io_ptw_pmp_5_cfg_w),
    .io_ptw_pmp_5_cfg_r(tlb_io_ptw_pmp_5_cfg_r),
    .io_ptw_pmp_5_addr(tlb_io_ptw_pmp_5_addr),
    .io_ptw_pmp_5_mask(tlb_io_ptw_pmp_5_mask),
    .io_ptw_pmp_6_cfg_l(tlb_io_ptw_pmp_6_cfg_l),
    .io_ptw_pmp_6_cfg_a(tlb_io_ptw_pmp_6_cfg_a),
    .io_ptw_pmp_6_cfg_x(tlb_io_ptw_pmp_6_cfg_x),
    .io_ptw_pmp_6_cfg_w(tlb_io_ptw_pmp_6_cfg_w),
    .io_ptw_pmp_6_cfg_r(tlb_io_ptw_pmp_6_cfg_r),
    .io_ptw_pmp_6_addr(tlb_io_ptw_pmp_6_addr),
    .io_ptw_pmp_6_mask(tlb_io_ptw_pmp_6_mask),
    .io_ptw_pmp_7_cfg_l(tlb_io_ptw_pmp_7_cfg_l),
    .io_ptw_pmp_7_cfg_a(tlb_io_ptw_pmp_7_cfg_a),
    .io_ptw_pmp_7_cfg_x(tlb_io_ptw_pmp_7_cfg_x),
    .io_ptw_pmp_7_cfg_w(tlb_io_ptw_pmp_7_cfg_w),
    .io_ptw_pmp_7_cfg_r(tlb_io_ptw_pmp_7_cfg_r),
    .io_ptw_pmp_7_addr(tlb_io_ptw_pmp_7_addr),
    .io_ptw_pmp_7_mask(tlb_io_ptw_pmp_7_mask),
    .io_kill(tlb_io_kill)
  );
  BTB btb ( // @[Frontend.scala 178:21:freechips.rocketchip.system.DefaultRV32Config.fir@137371.4]
    .clock(btb_clock),
    .reset(btb_reset),
    .io_req_bits_addr(btb_io_req_bits_addr),
    .io_resp_valid(btb_io_resp_valid),
    .io_resp_bits_taken(btb_io_resp_bits_taken),
    .io_resp_bits_bridx(btb_io_resp_bits_bridx),
    .io_resp_bits_target(btb_io_resp_bits_target),
    .io_resp_bits_entry(btb_io_resp_bits_entry),
    .io_resp_bits_bht_history(btb_io_resp_bits_bht_history),
    .io_resp_bits_bht_value(btb_io_resp_bits_bht_value),
    .io_btb_update_valid(btb_io_btb_update_valid),
    .io_btb_update_bits_prediction_entry(btb_io_btb_update_bits_prediction_entry),
    .io_btb_update_bits_pc(btb_io_btb_update_bits_pc),
    .io_btb_update_bits_isValid(btb_io_btb_update_bits_isValid),
    .io_btb_update_bits_br_pc(btb_io_btb_update_bits_br_pc),
    .io_btb_update_bits_cfiType(btb_io_btb_update_bits_cfiType),
    .io_bht_update_valid(btb_io_bht_update_valid),
    .io_bht_update_bits_prediction_history(btb_io_bht_update_bits_prediction_history),
    .io_bht_update_bits_pc(btb_io_bht_update_bits_pc),
    .io_bht_update_bits_branch(btb_io_bht_update_bits_branch),
    .io_bht_update_bits_taken(btb_io_bht_update_bits_taken),
    .io_bht_update_bits_mispredict(btb_io_bht_update_bits_mispredict),
    .io_bht_advance_valid(btb_io_bht_advance_valid),
    .io_bht_advance_bits_bht_value(btb_io_bht_advance_bits_bht_value),
    .io_ras_update_valid(btb_io_ras_update_valid),
    .io_ras_update_bits_cfiType(btb_io_ras_update_bits_cfiType),
    .io_ras_update_bits_returnAddr(btb_io_ras_update_bits_returnAddr),
    .io_ras_head_valid(btb_io_ras_head_valid),
    .io_ras_head_bits(btb_io_ras_head_bits),
    .io_flush(btb_io_flush)
  );
  assign _T_2 = io_cpu_req_valid | io_cpu_sfence_valid; // @[Frontend.scala 89:29:freechips.rocketchip.system.DefaultRV32Config.fir@137219.4]
  assign _T_3 = _T_2 | io_cpu_flush_icache; // @[Frontend.scala 89:52:freechips.rocketchip.system.DefaultRV32Config.fir@137220.4]
  assign _T_4 = _T_3 | io_cpu_bht_update_valid; // @[Frontend.scala 89:75:freechips.rocketchip.system.DefaultRV32Config.fir@137221.4]
  assign _T_5 = _T_4 | io_cpu_btb_update_valid; // @[Frontend.scala 89:102:freechips.rocketchip.system.DefaultRV32Config.fir@137222.4]
  assign _T_6 = _T_5 == 1'h0; // @[Frontend.scala 89:10:freechips.rocketchip.system.DefaultRV32Config.fir@137223.4]
  assign _T_7 = _T_6 | io_cpu_might_request; // @[Frontend.scala 89:130:freechips.rocketchip.system.DefaultRV32Config.fir@137224.4]
  assign _T_9 = _T_7 | reset; // @[Frontend.scala 89:9:freechips.rocketchip.system.DefaultRV32Config.fir@137226.4]
  assign _T_10 = _T_9 == 1'h0; // @[Frontend.scala 89:9:freechips.rocketchip.system.DefaultRV32Config.fir@137227.4]
  assign _T_11 = fq_io_mask[2]; // @[Frontend.scala 103:16:freechips.rocketchip.system.DefaultRV32Config.fir@137240.4]
  assign _T_12 = _T_11 == 1'h0; // @[Frontend.scala 103:5:freechips.rocketchip.system.DefaultRV32Config.fir@137241.4]
  assign _T_13 = fq_io_mask[3]; // @[Frontend.scala 104:17:freechips.rocketchip.system.DefaultRV32Config.fir@137242.4]
  assign _T_14 = _T_13 == 1'h0; // @[Frontend.scala 104:6:freechips.rocketchip.system.DefaultRV32Config.fir@137243.4]
  assign _T_15 = s1_valid == 1'h0; // @[Frontend.scala 104:45:freechips.rocketchip.system.DefaultRV32Config.fir@137244.4]
  assign _T_16 = s2_valid == 1'h0; // @[Frontend.scala 104:58:freechips.rocketchip.system.DefaultRV32Config.fir@137245.4]
  assign _T_17 = _T_15 | _T_16; // @[Frontend.scala 104:55:freechips.rocketchip.system.DefaultRV32Config.fir@137246.4]
  assign _T_18 = _T_14 & _T_17; // @[Frontend.scala 104:41:freechips.rocketchip.system.DefaultRV32Config.fir@137247.4]
  assign _T_19 = _T_12 | _T_18; // @[Frontend.scala 103:40:freechips.rocketchip.system.DefaultRV32Config.fir@137248.4]
  assign _T_20 = fq_io_mask[4]; // @[Frontend.scala 105:17:freechips.rocketchip.system.DefaultRV32Config.fir@137249.4]
  assign _T_21 = _T_20 == 1'h0; // @[Frontend.scala 105:6:freechips.rocketchip.system.DefaultRV32Config.fir@137250.4]
  assign _T_24 = _T_15 & _T_16; // @[Frontend.scala 105:55:freechips.rocketchip.system.DefaultRV32Config.fir@137253.4]
  assign _T_25 = _T_21 & _T_24; // @[Frontend.scala 105:41:freechips.rocketchip.system.DefaultRV32Config.fir@137254.4]
  assign s0_fq_has_space = _T_19 | _T_25; // @[Frontend.scala 104:70:freechips.rocketchip.system.DefaultRV32Config.fir@137255.4]
  assign s0_valid = io_cpu_req_valid | s0_fq_has_space; // @[Frontend.scala 106:35:freechips.rocketchip.system.DefaultRV32Config.fir@137256.4]
  assign s2_btb_taken = s2_btb_resp_valid & s2_btb_resp_bits_taken; // @[Frontend.scala 113:40:freechips.rocketchip.system.DefaultRV32Config.fir@137266.4]
  assign s2_xcpt = s2_tlb_resp_ae_inst | s2_tlb_resp_pf_inst; // @[Frontend.scala 115:37:freechips.rocketchip.system.DefaultRV32Config.fir@137268.4]
  assign _T_29 = ~ s1_pc; // @[Frontend.scala 121:22:freechips.rocketchip.system.DefaultRV32Config.fir@137273.4]
  assign _T_30 = _T_29 | 32'h3; // @[Frontend.scala 121:29:freechips.rocketchip.system.DefaultRV32Config.fir@137274.4]
  assign s1_base_pc = ~ _T_30; // @[Frontend.scala 121:20:freechips.rocketchip.system.DefaultRV32Config.fir@137275.4]
  assign ntpc = s1_base_pc + 32'h4; // @[Frontend.scala 122:25:freechips.rocketchip.system.DefaultRV32Config.fir@137277.4]
  assign _T_32 = fq_io_enq_ready & fq_io_enq_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@137286.4]
  assign _T_33 = _T_32 == 1'h0; // @[Frontend.scala 127:29:freechips.rocketchip.system.DefaultRV32Config.fir@137287.4]
  assign _T_34 = s2_valid & _T_33; // @[Frontend.scala 127:26:freechips.rocketchip.system.DefaultRV32Config.fir@137288.4]
  assign _T_35 = s0_valid == 1'h0; // @[Frontend.scala 127:72:freechips.rocketchip.system.DefaultRV32Config.fir@137289.4]
  assign s2_replay = _T_34 | _T_37; // @[Frontend.scala 127:48:freechips.rocketchip.system.DefaultRV32Config.fir@137293.4]
  assign _T_36 = s2_replay & _T_35; // @[Frontend.scala 127:69:freechips.rocketchip.system.DefaultRV32Config.fir@137290.4]
  assign _T_89 = s2_partial_insn[1:0]; // @[Frontend.scala 207:39:freechips.rocketchip.system.DefaultRV32Config.fir@137435.4]
  assign _T_90 = _T_89 != 2'h3; // @[Frontend.scala 207:45:freechips.rocketchip.system.DefaultRV32Config.fir@137436.4]
  assign _T_91 = _T_90 == 1'h0; // @[Frontend.scala 208:34:freechips.rocketchip.system.DefaultRV32Config.fir@137437.4]
  assign taken_prevRVI = s2_partial_insn_valid & _T_91; // @[Frontend.scala 208:31:freechips.rocketchip.system.DefaultRV32Config.fir@137438.4]
  assign taken_bits = fq_io_enq_bits_data[15:0]; // @[Frontend.scala 210:37:freechips.rocketchip.system.DefaultRV32Config.fir@137442.4]
  assign taken_rviBits = {taken_bits,s2_partial_insn}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@137445.4]
  assign _T_96 = taken_rviBits[6:0]; // @[Frontend.scala 214:28:freechips.rocketchip.system.DefaultRV32Config.fir@137448.4]
  assign taken_rviJump = _T_96 == 7'h6f; // @[Frontend.scala 214:34:freechips.rocketchip.system.DefaultRV32Config.fir@137449.4]
  assign taken_rviJALR = _T_96 == 7'h67; // @[Frontend.scala 215:34:freechips.rocketchip.system.DefaultRV32Config.fir@137451.4]
  assign _T_284 = taken_rviJump | taken_rviJALR; // @[Frontend.scala 229:29:freechips.rocketchip.system.DefaultRV32Config.fir@137650.4]
  assign taken_rviBranch = _T_96 == 7'h63; // @[Frontend.scala 213:36:freechips.rocketchip.system.DefaultRV32Config.fir@137447.4]
  assign _T_285 = taken_rviBranch & s2_btb_resp_bits_bht_value; // @[Frontend.scala 229:53:freechips.rocketchip.system.DefaultRV32Config.fir@137651.4]
  assign _T_286 = _T_284 | _T_285; // @[Frontend.scala 229:40:freechips.rocketchip.system.DefaultRV32Config.fir@137652.4]
  assign _T_287 = taken_prevRVI & _T_286; // @[Frontend.scala 229:17:freechips.rocketchip.system.DefaultRV32Config.fir@137653.4]
  assign _T_92 = fq_io_enq_bits_mask[0]; // @[Frontend.scala 209:38:freechips.rocketchip.system.DefaultRV32Config.fir@137439.4]
  assign _T_93 = taken_prevRVI == 1'h0; // @[Frontend.scala 209:47:freechips.rocketchip.system.DefaultRV32Config.fir@137440.4]
  assign taken_valid = _T_92 & _T_93; // @[Frontend.scala 209:44:freechips.rocketchip.system.DefaultRV32Config.fir@137441.4]
  assign _T_112 = taken_bits & 16'he003; // @[Frontend.scala 220:26:freechips.rocketchip.system.DefaultRV32Config.fir@137470.4]
  assign _T_113 = 16'ha001 == _T_112; // @[Frontend.scala 220:26:freechips.rocketchip.system.DefaultRV32Config.fir@137471.4]
  assign taken_rvcJAL = 16'h2001 == _T_112; // @[Frontend.scala 219:45:freechips.rocketchip.system.DefaultRV32Config.fir@137468.4]
  assign taken_rvcJump = _T_113 | taken_rvcJAL; // @[Frontend.scala 220:47:freechips.rocketchip.system.DefaultRV32Config.fir@137472.4]
  assign _T_154 = taken_bits & 16'hf003; // @[Frontend.scala 224:26:freechips.rocketchip.system.DefaultRV32Config.fir@137516.4]
  assign _T_155 = 16'h9002 == _T_154; // @[Frontend.scala 224:26:freechips.rocketchip.system.DefaultRV32Config.fir@137517.4]
  assign _T_156 = taken_bits[6:2]; // @[Frontend.scala 224:56:freechips.rocketchip.system.DefaultRV32Config.fir@137518.4]
  assign _T_157 = _T_156 == 5'h0; // @[Frontend.scala 224:62:freechips.rocketchip.system.DefaultRV32Config.fir@137519.4]
  assign taken_rvcJALR = _T_155 & _T_157; // @[Frontend.scala 224:49:freechips.rocketchip.system.DefaultRV32Config.fir@137520.4]
  assign _T_288 = taken_rvcJump | taken_rvcJALR; // @[Frontend.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@137654.4]
  assign _T_148 = 16'h8002 == _T_154; // @[Frontend.scala 222:24:freechips.rocketchip.system.DefaultRV32Config.fir@137508.4]
  assign taken_rvcJR = _T_148 & _T_157; // @[Frontend.scala 222:46:freechips.rocketchip.system.DefaultRV32Config.fir@137511.4]
  assign _T_289 = _T_288 | taken_rvcJR; // @[Frontend.scala 230:38:freechips.rocketchip.system.DefaultRV32Config.fir@137655.4]
  assign _T_107 = 16'hc001 == _T_112; // @[Frontend.scala 218:28:freechips.rocketchip.system.DefaultRV32Config.fir@137463.4]
  assign _T_109 = 16'he001 == _T_112; // @[Frontend.scala 218:60:freechips.rocketchip.system.DefaultRV32Config.fir@137465.4]
  assign taken_rvcBranch = _T_107 | _T_109; // @[Frontend.scala 218:52:freechips.rocketchip.system.DefaultRV32Config.fir@137466.4]
  assign _T_290 = taken_rvcBranch & s2_btb_resp_bits_bht_value; // @[Frontend.scala 230:60:freechips.rocketchip.system.DefaultRV32Config.fir@137656.4]
  assign _T_291 = _T_289 | _T_290; // @[Frontend.scala 230:47:freechips.rocketchip.system.DefaultRV32Config.fir@137657.4]
  assign _T_292 = taken_valid & _T_291; // @[Frontend.scala 230:15:freechips.rocketchip.system.DefaultRV32Config.fir@137658.4]
  assign taken_taken = _T_287 | _T_292; // @[Frontend.scala 229:71:freechips.rocketchip.system.DefaultRV32Config.fir@137659.4]
  assign taken_idx = taken_taken == 1'h0; // @[Frontend.scala 244:13:freechips.rocketchip.system.DefaultRV32Config.fir@138004.4]
  assign _T_592 = s2_btb_taken == 1'h0; // @[Frontend.scala 253:15:freechips.rocketchip.system.DefaultRV32Config.fir@138027.6]
  assign _T_356 = taken_bits[1:0]; // @[Frontend.scala 207:39:freechips.rocketchip.system.DefaultRV32Config.fir@137757.4]
  assign _T_357 = _T_356 != 2'h3; // @[Frontend.scala 207:45:freechips.rocketchip.system.DefaultRV32Config.fir@137758.4]
  assign _T_358 = _T_357 == 1'h0; // @[Frontend.scala 208:34:freechips.rocketchip.system.DefaultRV32Config.fir@137759.4]
  assign taken_prevRVI_1 = taken_valid & _T_358; // @[Frontend.scala 208:31:freechips.rocketchip.system.DefaultRV32Config.fir@137760.4]
  assign taken_bits_1 = fq_io_enq_bits_data[31:16]; // @[Frontend.scala 210:37:freechips.rocketchip.system.DefaultRV32Config.fir@137764.4]
  assign taken_rviBits_1 = {taken_bits_1,taken_bits}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@137767.4]
  assign _T_364 = taken_rviBits_1[6:0]; // @[Frontend.scala 215:28:freechips.rocketchip.system.DefaultRV32Config.fir@137772.4]
  assign taken_rviJALR_1 = _T_364 == 7'h67; // @[Frontend.scala 215:34:freechips.rocketchip.system.DefaultRV32Config.fir@137773.4]
  assign _T_365 = taken_rviBits_1[7]; // @[Frontend.scala 216:42:freechips.rocketchip.system.DefaultRV32Config.fir@137774.4]
  assign _T_366 = _T_365 == 1'h0; // @[Frontend.scala 216:34:freechips.rocketchip.system.DefaultRV32Config.fir@137775.4]
  assign _T_367 = taken_rviJALR_1 & _T_366; // @[Frontend.scala 216:31:freechips.rocketchip.system.DefaultRV32Config.fir@137776.4]
  assign _T_368 = taken_rviBits_1[19:15]; // @[Frontend.scala 216:77:freechips.rocketchip.system.DefaultRV32Config.fir@137777.4]
  assign _T_369 = _T_368 & 5'h1b; // @[Frontend.scala 216:66:freechips.rocketchip.system.DefaultRV32Config.fir@137778.4]
  assign _T_370 = 5'h1 == _T_369; // @[Frontend.scala 216:66:freechips.rocketchip.system.DefaultRV32Config.fir@137779.4]
  assign taken_rviReturn_1 = _T_367 & _T_370; // @[Frontend.scala 216:46:freechips.rocketchip.system.DefaultRV32Config.fir@137780.4]
  assign _T_560 = taken_prevRVI_1 & taken_rviReturn_1; // @[Frontend.scala 231:61:freechips.rocketchip.system.DefaultRV32Config.fir@137982.4]
  assign _T_359 = fq_io_enq_bits_mask[1]; // @[Frontend.scala 209:38:freechips.rocketchip.system.DefaultRV32Config.fir@137761.4]
  assign _T_360 = taken_prevRVI_1 == 1'h0; // @[Frontend.scala 209:47:freechips.rocketchip.system.DefaultRV32Config.fir@137762.4]
  assign taken_valid_1 = _T_359 & _T_360; // @[Frontend.scala 209:44:freechips.rocketchip.system.DefaultRV32Config.fir@137763.4]
  assign _T_414 = taken_bits_1 & 16'hf003; // @[Frontend.scala 222:24:freechips.rocketchip.system.DefaultRV32Config.fir@137829.4]
  assign _T_415 = 16'h8002 == _T_414; // @[Frontend.scala 222:24:freechips.rocketchip.system.DefaultRV32Config.fir@137830.4]
  assign _T_416 = taken_bits_1[6:2]; // @[Frontend.scala 222:53:freechips.rocketchip.system.DefaultRV32Config.fir@137831.4]
  assign _T_417 = _T_416 == 5'h0; // @[Frontend.scala 222:59:freechips.rocketchip.system.DefaultRV32Config.fir@137832.4]
  assign taken_rvcJR_1 = _T_415 & _T_417; // @[Frontend.scala 222:46:freechips.rocketchip.system.DefaultRV32Config.fir@137833.4]
  assign _T_418 = taken_bits_1[11:7]; // @[Frontend.scala 223:57:freechips.rocketchip.system.DefaultRV32Config.fir@137834.4]
  assign _T_419 = _T_418 & 5'h1b; // @[Frontend.scala 223:49:freechips.rocketchip.system.DefaultRV32Config.fir@137835.4]
  assign _T_420 = 5'h1 == _T_419; // @[Frontend.scala 223:49:freechips.rocketchip.system.DefaultRV32Config.fir@137836.4]
  assign taken_rvcReturn_1 = taken_rvcJR_1 & _T_420; // @[Frontend.scala 223:29:freechips.rocketchip.system.DefaultRV32Config.fir@137837.4]
  assign _T_561 = taken_valid_1 & taken_rvcReturn_1; // @[Frontend.scala 231:83:freechips.rocketchip.system.DefaultRV32Config.fir@137983.4]
  assign _T_562 = _T_560 | _T_561; // @[Frontend.scala 231:74:freechips.rocketchip.system.DefaultRV32Config.fir@137984.4]
  assign taken_predictReturn_1 = btb_io_ras_head_valid & _T_562; // @[Frontend.scala 231:49:freechips.rocketchip.system.DefaultRV32Config.fir@137985.4]
  assign _T_601 = s2_valid & taken_predictReturn_1; // @[Frontend.scala 257:26:freechips.rocketchip.system.DefaultRV32Config.fir@138040.8]
  assign _T_98 = taken_rviBits[7]; // @[Frontend.scala 216:42:freechips.rocketchip.system.DefaultRV32Config.fir@137452.4]
  assign _T_99 = _T_98 == 1'h0; // @[Frontend.scala 216:34:freechips.rocketchip.system.DefaultRV32Config.fir@137453.4]
  assign _T_100 = taken_rviJALR & _T_99; // @[Frontend.scala 216:31:freechips.rocketchip.system.DefaultRV32Config.fir@137454.4]
  assign _T_101 = taken_rviBits[19:15]; // @[Frontend.scala 216:77:freechips.rocketchip.system.DefaultRV32Config.fir@137455.4]
  assign _T_102 = _T_101 & 5'h1b; // @[Frontend.scala 216:66:freechips.rocketchip.system.DefaultRV32Config.fir@137456.4]
  assign _T_103 = 5'h1 == _T_102; // @[Frontend.scala 216:66:freechips.rocketchip.system.DefaultRV32Config.fir@137457.4]
  assign taken_rviReturn = _T_100 & _T_103; // @[Frontend.scala 216:46:freechips.rocketchip.system.DefaultRV32Config.fir@137458.4]
  assign _T_293 = taken_prevRVI & taken_rviReturn; // @[Frontend.scala 231:61:freechips.rocketchip.system.DefaultRV32Config.fir@137660.4]
  assign _T_151 = taken_bits[11:7]; // @[Frontend.scala 223:57:freechips.rocketchip.system.DefaultRV32Config.fir@137512.4]
  assign _T_152 = _T_151 & 5'h1b; // @[Frontend.scala 223:49:freechips.rocketchip.system.DefaultRV32Config.fir@137513.4]
  assign _T_153 = 5'h1 == _T_152; // @[Frontend.scala 223:49:freechips.rocketchip.system.DefaultRV32Config.fir@137514.4]
  assign taken_rvcReturn = taken_rvcJR & _T_153; // @[Frontend.scala 223:29:freechips.rocketchip.system.DefaultRV32Config.fir@137515.4]
  assign _T_294 = taken_valid & taken_rvcReturn; // @[Frontend.scala 231:83:freechips.rocketchip.system.DefaultRV32Config.fir@137661.4]
  assign _T_295 = _T_293 | _T_294; // @[Frontend.scala 231:74:freechips.rocketchip.system.DefaultRV32Config.fir@137662.4]
  assign taken_predictReturn = btb_io_ras_head_valid & _T_295; // @[Frontend.scala 231:49:freechips.rocketchip.system.DefaultRV32Config.fir@137663.4]
  assign _T_334 = s2_valid & taken_predictReturn; // @[Frontend.scala 257:26:freechips.rocketchip.system.DefaultRV32Config.fir@137718.8]
  assign _GEN_45 = _T_592 & _T_334; // @[Frontend.scala 253:30:freechips.rocketchip.system.DefaultRV32Config.fir@137706.6]
  assign _GEN_78 = _T_601 | _GEN_45; // @[Frontend.scala 257:44:freechips.rocketchip.system.DefaultRV32Config.fir@138041.8]
  assign _GEN_81 = _T_592 ? _GEN_78 : _GEN_45; // @[Frontend.scala 253:30:freechips.rocketchip.system.DefaultRV32Config.fir@138028.6]
  assign useRAS = taken_idx ? _GEN_81 : _GEN_45; // @[Frontend.scala 244:25:freechips.rocketchip.system.DefaultRV32Config.fir@138005.4]
  assign taken_rviBranch_1 = _T_364 == 7'h63; // @[Frontend.scala 213:36:freechips.rocketchip.system.DefaultRV32Config.fir@137769.4]
  assign _T_565 = taken_prevRVI_1 & taken_rviBranch_1; // @[Frontend.scala 233:53:freechips.rocketchip.system.DefaultRV32Config.fir@137989.4]
  assign _T_373 = taken_bits_1 & 16'he003; // @[Frontend.scala 218:28:freechips.rocketchip.system.DefaultRV32Config.fir@137784.4]
  assign _T_374 = 16'hc001 == _T_373; // @[Frontend.scala 218:28:freechips.rocketchip.system.DefaultRV32Config.fir@137785.4]
  assign _T_376 = 16'he001 == _T_373; // @[Frontend.scala 218:60:freechips.rocketchip.system.DefaultRV32Config.fir@137787.4]
  assign taken_rvcBranch_1 = _T_374 | _T_376; // @[Frontend.scala 218:52:freechips.rocketchip.system.DefaultRV32Config.fir@137788.4]
  assign _T_566 = taken_valid_1 & taken_rvcBranch_1; // @[Frontend.scala 233:75:freechips.rocketchip.system.DefaultRV32Config.fir@137990.4]
  assign _T_567 = _T_565 | _T_566; // @[Frontend.scala 233:66:freechips.rocketchip.system.DefaultRV32Config.fir@137991.4]
  assign taken_predictBranch_1 = s2_btb_resp_bits_bht_value & _T_567; // @[Frontend.scala 233:41:freechips.rocketchip.system.DefaultRV32Config.fir@137992.4]
  assign taken_rviJump_1 = _T_364 == 7'h6f; // @[Frontend.scala 214:34:freechips.rocketchip.system.DefaultRV32Config.fir@137771.4]
  assign _T_563 = taken_prevRVI_1 & taken_rviJump_1; // @[Frontend.scala 232:33:freechips.rocketchip.system.DefaultRV32Config.fir@137986.4]
  assign _T_380 = 16'ha001 == _T_373; // @[Frontend.scala 220:26:freechips.rocketchip.system.DefaultRV32Config.fir@137793.4]
  assign taken_rvcJAL_1 = 16'h2001 == _T_373; // @[Frontend.scala 219:45:freechips.rocketchip.system.DefaultRV32Config.fir@137790.4]
  assign taken_rvcJump_1 = _T_380 | taken_rvcJAL_1; // @[Frontend.scala 220:47:freechips.rocketchip.system.DefaultRV32Config.fir@137794.4]
  assign _T_564 = taken_valid_1 & taken_rvcJump_1; // @[Frontend.scala 232:53:freechips.rocketchip.system.DefaultRV32Config.fir@137987.4]
  assign taken_predictJump_1 = _T_563 | _T_564; // @[Frontend.scala 232:44:freechips.rocketchip.system.DefaultRV32Config.fir@137988.4]
  assign _T_602 = taken_predictBranch_1 | taken_predictJump_1; // @[Frontend.scala 260:44:freechips.rocketchip.system.DefaultRV32Config.fir@138044.8]
  assign _T_603 = s2_valid & _T_602; // @[Frontend.scala 260:26:freechips.rocketchip.system.DefaultRV32Config.fir@138045.8]
  assign _T_75 = ~ s2_pc; // @[Frontend.scala 200:24:freechips.rocketchip.system.DefaultRV32Config.fir@137400.4]
  assign _T_76 = _T_75 | 32'h3; // @[Frontend.scala 200:31:freechips.rocketchip.system.DefaultRV32Config.fir@137401.4]
  assign s2_base_pc = ~ _T_76; // @[Frontend.scala 200:22:freechips.rocketchip.system.DefaultRV32Config.fir@137402.4]
  assign taken_pc_1 = s2_base_pc | 32'h2; // @[Frontend.scala 261:33:freechips.rocketchip.system.DefaultRV32Config.fir@138047.10]
  assign _T_605 = taken_pc_1 - 32'h2; // @[Frontend.scala 264:36:freechips.rocketchip.system.DefaultRV32Config.fir@138049.10]
  assign _T_606 = taken_prevRVI_1 ? _T_605 : taken_pc_1; // @[Frontend.scala 264:23:freechips.rocketchip.system.DefaultRV32Config.fir@138050.10]
  assign _T_607 = $signed(_T_606); // @[Frontend.scala 264:57:freechips.rocketchip.system.DefaultRV32Config.fir@138051.10]
  assign _T_425 = taken_rviBits_1[3]; // @[Frontend.scala 226:31:freechips.rocketchip.system.DefaultRV32Config.fir@137844.4]
  assign _T_427 = taken_rviBits_1[31]; // @[RocketCore.scala 978:48:freechips.rocketchip.system.DefaultRV32Config.fir@137846.4]
  assign _T_428 = $signed(_T_427); // @[RocketCore.scala 978:53:freechips.rocketchip.system.DefaultRV32Config.fir@137847.4]
  assign _T_483 = $unsigned(_T_428); // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@137902.4]
  assign _T_433 = {11{_T_428}}; // @[RocketCore.scala 979:21:freechips.rocketchip.system.DefaultRV32Config.fir@137852.4]
  assign _T_482 = $unsigned(_T_433); // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@137901.4]
  assign _T_437 = taken_rviBits_1[19:12]; // @[RocketCore.scala 980:65:freechips.rocketchip.system.DefaultRV32Config.fir@137856.4]
  assign _T_438 = $signed(_T_437); // @[RocketCore.scala 980:73:freechips.rocketchip.system.DefaultRV32Config.fir@137857.4]
  assign _T_480 = $unsigned(_T_438); // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@137899.4]
  assign _T_444 = taken_rviBits_1[20]; // @[RocketCore.scala 982:39:freechips.rocketchip.system.DefaultRV32Config.fir@137863.4]
  assign _T_445 = $signed(_T_444); // @[RocketCore.scala 982:44:freechips.rocketchip.system.DefaultRV32Config.fir@137864.4]
  assign _T_448 = $signed(_T_365); // @[RocketCore.scala 983:43:freechips.rocketchip.system.DefaultRV32Config.fir@137867.4]
  assign _T_479 = $unsigned(_T_445); // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@137898.4]
  assign _T_455 = taken_rviBits_1[30:25]; // @[RocketCore.scala 984:66:freechips.rocketchip.system.DefaultRV32Config.fir@137874.4]
  assign _T_461 = taken_rviBits_1[11:8]; // @[RocketCore.scala 986:57:freechips.rocketchip.system.DefaultRV32Config.fir@137880.4]
  assign _T_464 = taken_rviBits_1[24:21]; // @[RocketCore.scala 987:52:freechips.rocketchip.system.DefaultRV32Config.fir@137883.4]
  assign _T_486 = {_T_483,_T_482,_T_480,_T_479,_T_455,_T_464,1'h0}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@137905.4]
  assign _T_487 = $signed(_T_486); // @[RocketCore.scala 992:53:freechips.rocketchip.system.DefaultRV32Config.fir@137906.4]
  assign _T_501 = {8{_T_428}}; // @[RocketCore.scala 980:21:freechips.rocketchip.system.DefaultRV32Config.fir@137920.4]
  assign _T_542 = $unsigned(_T_501); // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@137961.4]
  assign _T_541 = $unsigned(_T_448); // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@137960.4]
  assign _T_548 = {_T_483,_T_482,_T_542,_T_541,_T_455,_T_461,1'h0}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@137967.4]
  assign _T_549 = $signed(_T_548); // @[RocketCore.scala 992:53:freechips.rocketchip.system.DefaultRV32Config.fir@137968.4]
  assign taken_rviImm_1 = _T_425 ? $signed(_T_487) : $signed(_T_549); // @[Frontend.scala 226:23:freechips.rocketchip.system.DefaultRV32Config.fir@137969.4]
  assign _T_381 = taken_bits_1[14]; // @[Frontend.scala 221:28:freechips.rocketchip.system.DefaultRV32Config.fir@137795.4]
  assign _T_382 = taken_bits_1[12]; // @[RVC.scala 45:27:freechips.rocketchip.system.DefaultRV32Config.fir@137796.4]
  assign _T_384 = _T_382 ? 5'h1f : 5'h0; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@137798.4]
  assign _T_385 = taken_bits_1[6:5]; // @[RVC.scala 45:35:freechips.rocketchip.system.DefaultRV32Config.fir@137799.4]
  assign _T_386 = taken_bits_1[2]; // @[RVC.scala 45:43:freechips.rocketchip.system.DefaultRV32Config.fir@137800.4]
  assign _T_387 = taken_bits_1[11:10]; // @[RVC.scala 45:49:freechips.rocketchip.system.DefaultRV32Config.fir@137801.4]
  assign _T_388 = taken_bits_1[4:3]; // @[RVC.scala 45:59:freechips.rocketchip.system.DefaultRV32Config.fir@137802.4]
  assign _T_393 = {_T_384,_T_385,_T_386,_T_387,_T_388,1'h0}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@137807.4]
  assign _T_394 = $signed(_T_393); // @[Frontend.scala 221:66:freechips.rocketchip.system.DefaultRV32Config.fir@137808.4]
  assign _T_397 = _T_382 ? 10'h3ff : 10'h0; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@137811.4]
  assign _T_398 = taken_bits_1[8]; // @[RVC.scala 44:36:freechips.rocketchip.system.DefaultRV32Config.fir@137812.4]
  assign _T_399 = taken_bits_1[10:9]; // @[RVC.scala 44:42:freechips.rocketchip.system.DefaultRV32Config.fir@137813.4]
  assign _T_400 = taken_bits_1[6]; // @[RVC.scala 44:51:freechips.rocketchip.system.DefaultRV32Config.fir@137814.4]
  assign _T_401 = taken_bits_1[7]; // @[RVC.scala 44:57:freechips.rocketchip.system.DefaultRV32Config.fir@137815.4]
  assign _T_403 = taken_bits_1[11]; // @[RVC.scala 44:69:freechips.rocketchip.system.DefaultRV32Config.fir@137817.4]
  assign _T_404 = taken_bits_1[5:3]; // @[RVC.scala 44:76:freechips.rocketchip.system.DefaultRV32Config.fir@137818.4]
  assign _T_412 = {_T_397,_T_398,_T_399,_T_400,_T_401,_T_386,_T_403,_T_404,1'h0}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@137826.4]
  assign _T_413 = $signed(_T_412); // @[Frontend.scala 221:106:freechips.rocketchip.system.DefaultRV32Config.fir@137827.4]
  assign taken_rvcImm_1 = _T_381 ? $signed({{8{_T_394[12]}},_T_394}) : $signed(_T_413); // @[Frontend.scala 221:23:freechips.rocketchip.system.DefaultRV32Config.fir@137828.4]
  assign _T_608 = taken_prevRVI_1 ? $signed(taken_rviImm_1) : $signed({{11{taken_rvcImm_1[20]}},taken_rvcImm_1}); // @[Frontend.scala 264:69:freechips.rocketchip.system.DefaultRV32Config.fir@138052.10]
  assign _T_610 = $signed(_T_607) + $signed(_T_608); // @[Frontend.scala 264:64:freechips.rocketchip.system.DefaultRV32Config.fir@138054.10]
  assign taken_npc_1 = $signed(_T_610); // @[Frontend.scala 264:64:freechips.rocketchip.system.DefaultRV32Config.fir@138055.10]
  assign _T_611 = $unsigned(taken_npc_1); // @[Frontend.scala 265:34:freechips.rocketchip.system.DefaultRV32Config.fir@138056.10]
  assign _T_298 = taken_prevRVI & taken_rviBranch; // @[Frontend.scala 233:53:freechips.rocketchip.system.DefaultRV32Config.fir@137667.4]
  assign _T_299 = taken_valid & taken_rvcBranch; // @[Frontend.scala 233:75:freechips.rocketchip.system.DefaultRV32Config.fir@137668.4]
  assign _T_300 = _T_298 | _T_299; // @[Frontend.scala 233:66:freechips.rocketchip.system.DefaultRV32Config.fir@137669.4]
  assign taken_predictBranch = s2_btb_resp_bits_bht_value & _T_300; // @[Frontend.scala 233:41:freechips.rocketchip.system.DefaultRV32Config.fir@137670.4]
  assign _T_296 = taken_prevRVI & taken_rviJump; // @[Frontend.scala 232:33:freechips.rocketchip.system.DefaultRV32Config.fir@137664.4]
  assign _T_297 = taken_valid & taken_rvcJump; // @[Frontend.scala 232:53:freechips.rocketchip.system.DefaultRV32Config.fir@137665.4]
  assign taken_predictJump = _T_296 | _T_297; // @[Frontend.scala 232:44:freechips.rocketchip.system.DefaultRV32Config.fir@137666.4]
  assign _T_335 = taken_predictBranch | taken_predictJump; // @[Frontend.scala 260:44:freechips.rocketchip.system.DefaultRV32Config.fir@137722.8]
  assign _T_336 = s2_valid & _T_335; // @[Frontend.scala 260:26:freechips.rocketchip.system.DefaultRV32Config.fir@137723.8]
  assign _T_337 = $signed(s2_base_pc); // @[Frontend.scala 263:32:freechips.rocketchip.system.DefaultRV32Config.fir@137726.10]
  assign _T_158 = taken_rviBits[3]; // @[Frontend.scala 226:31:freechips.rocketchip.system.DefaultRV32Config.fir@137522.4]
  assign _T_160 = taken_rviBits[31]; // @[RocketCore.scala 978:48:freechips.rocketchip.system.DefaultRV32Config.fir@137524.4]
  assign _T_161 = $signed(_T_160); // @[RocketCore.scala 978:53:freechips.rocketchip.system.DefaultRV32Config.fir@137525.4]
  assign _T_216 = $unsigned(_T_161); // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@137580.4]
  assign _T_166 = {11{_T_161}}; // @[RocketCore.scala 979:21:freechips.rocketchip.system.DefaultRV32Config.fir@137530.4]
  assign _T_215 = $unsigned(_T_166); // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@137579.4]
  assign _T_170 = taken_rviBits[19:12]; // @[RocketCore.scala 980:65:freechips.rocketchip.system.DefaultRV32Config.fir@137534.4]
  assign _T_171 = $signed(_T_170); // @[RocketCore.scala 980:73:freechips.rocketchip.system.DefaultRV32Config.fir@137535.4]
  assign _T_213 = $unsigned(_T_171); // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@137577.4]
  assign _T_177 = taken_rviBits[20]; // @[RocketCore.scala 982:39:freechips.rocketchip.system.DefaultRV32Config.fir@137541.4]
  assign _T_178 = $signed(_T_177); // @[RocketCore.scala 982:44:freechips.rocketchip.system.DefaultRV32Config.fir@137542.4]
  assign _T_181 = $signed(_T_98); // @[RocketCore.scala 983:43:freechips.rocketchip.system.DefaultRV32Config.fir@137545.4]
  assign _T_212 = $unsigned(_T_178); // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@137576.4]
  assign _T_188 = taken_rviBits[30:25]; // @[RocketCore.scala 984:66:freechips.rocketchip.system.DefaultRV32Config.fir@137552.4]
  assign _T_194 = taken_rviBits[11:8]; // @[RocketCore.scala 986:57:freechips.rocketchip.system.DefaultRV32Config.fir@137558.4]
  assign _T_197 = taken_rviBits[24:21]; // @[RocketCore.scala 987:52:freechips.rocketchip.system.DefaultRV32Config.fir@137561.4]
  assign _T_219 = {_T_216,_T_215,_T_213,_T_212,_T_188,_T_197,1'h0}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@137583.4]
  assign _T_220 = $signed(_T_219); // @[RocketCore.scala 992:53:freechips.rocketchip.system.DefaultRV32Config.fir@137584.4]
  assign _T_234 = {8{_T_161}}; // @[RocketCore.scala 980:21:freechips.rocketchip.system.DefaultRV32Config.fir@137598.4]
  assign _T_275 = $unsigned(_T_234); // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@137639.4]
  assign _T_274 = $unsigned(_T_181); // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@137638.4]
  assign _T_281 = {_T_216,_T_215,_T_275,_T_274,_T_188,_T_194,1'h0}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@137645.4]
  assign _T_282 = $signed(_T_281); // @[RocketCore.scala 992:53:freechips.rocketchip.system.DefaultRV32Config.fir@137646.4]
  assign taken_rviImm = _T_158 ? $signed(_T_220) : $signed(_T_282); // @[Frontend.scala 226:23:freechips.rocketchip.system.DefaultRV32Config.fir@137647.4]
  assign _T_338 = $signed(taken_rviImm) - $signed(32'sh2); // @[Frontend.scala 263:61:freechips.rocketchip.system.DefaultRV32Config.fir@137727.10]
  assign _T_114 = taken_bits[14]; // @[Frontend.scala 221:28:freechips.rocketchip.system.DefaultRV32Config.fir@137473.4]
  assign _T_115 = taken_bits[12]; // @[RVC.scala 45:27:freechips.rocketchip.system.DefaultRV32Config.fir@137474.4]
  assign _T_117 = _T_115 ? 5'h1f : 5'h0; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@137476.4]
  assign _T_118 = taken_bits[6:5]; // @[RVC.scala 45:35:freechips.rocketchip.system.DefaultRV32Config.fir@137477.4]
  assign _T_119 = taken_bits[2]; // @[RVC.scala 45:43:freechips.rocketchip.system.DefaultRV32Config.fir@137478.4]
  assign _T_120 = taken_bits[11:10]; // @[RVC.scala 45:49:freechips.rocketchip.system.DefaultRV32Config.fir@137479.4]
  assign _T_121 = taken_bits[4:3]; // @[RVC.scala 45:59:freechips.rocketchip.system.DefaultRV32Config.fir@137480.4]
  assign _T_126 = {_T_117,_T_118,_T_119,_T_120,_T_121,1'h0}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@137485.4]
  assign _T_127 = $signed(_T_126); // @[Frontend.scala 221:66:freechips.rocketchip.system.DefaultRV32Config.fir@137486.4]
  assign _T_130 = _T_115 ? 10'h3ff : 10'h0; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@137489.4]
  assign _T_131 = taken_bits[8]; // @[RVC.scala 44:36:freechips.rocketchip.system.DefaultRV32Config.fir@137490.4]
  assign _T_132 = taken_bits[10:9]; // @[RVC.scala 44:42:freechips.rocketchip.system.DefaultRV32Config.fir@137491.4]
  assign _T_133 = taken_bits[6]; // @[RVC.scala 44:51:freechips.rocketchip.system.DefaultRV32Config.fir@137492.4]
  assign _T_134 = taken_bits[7]; // @[RVC.scala 44:57:freechips.rocketchip.system.DefaultRV32Config.fir@137493.4]
  assign _T_136 = taken_bits[11]; // @[RVC.scala 44:69:freechips.rocketchip.system.DefaultRV32Config.fir@137495.4]
  assign _T_137 = taken_bits[5:3]; // @[RVC.scala 44:76:freechips.rocketchip.system.DefaultRV32Config.fir@137496.4]
  assign _T_145 = {_T_130,_T_131,_T_132,_T_133,_T_134,_T_119,_T_136,_T_137,1'h0}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@137504.4]
  assign _T_146 = $signed(_T_145); // @[Frontend.scala 221:106:freechips.rocketchip.system.DefaultRV32Config.fir@137505.4]
  assign taken_rvcImm = _T_114 ? $signed({{8{_T_127[12]}},_T_127}) : $signed(_T_146); // @[Frontend.scala 221:23:freechips.rocketchip.system.DefaultRV32Config.fir@137506.4]
  assign _T_339 = taken_prevRVI ? $signed(_T_338) : $signed({{12{taken_rvcImm[20]}},taken_rvcImm}); // @[Frontend.scala 263:44:freechips.rocketchip.system.DefaultRV32Config.fir@137728.10]
  assign _GEN_127 = {{1{_T_337[31]}},_T_337}; // @[Frontend.scala 263:39:freechips.rocketchip.system.DefaultRV32Config.fir@137729.10]
  assign _T_341 = $signed(_GEN_127) + $signed(_T_339); // @[Frontend.scala 263:39:freechips.rocketchip.system.DefaultRV32Config.fir@137730.10]
  assign taken_npc = $signed(_T_341); // @[Frontend.scala 263:39:freechips.rocketchip.system.DefaultRV32Config.fir@137731.10]
  assign _T_342 = $unsigned(taken_npc); // @[Frontend.scala 265:34:freechips.rocketchip.system.DefaultRV32Config.fir@137732.10]
  assign predicted_taken = btb_io_resp_valid & btb_io_resp_bits_taken; // @[Frontend.scala 191:29:freechips.rocketchip.system.DefaultRV32Config.fir@137389.4]
  assign _GEN_28 = predicted_taken ? btb_io_resp_bits_target : ntpc; // @[Frontend.scala 191:56:freechips.rocketchip.system.DefaultRV32Config.fir@137390.4]
  assign _GEN_43 = _T_336 ? _T_342 : {{1'd0}, _GEN_28}; // @[Frontend.scala 260:61:freechips.rocketchip.system.DefaultRV32Config.fir@137724.8]
  assign _GEN_46 = _T_592 ? _GEN_43 : {{1'd0}, _GEN_28}; // @[Frontend.scala 253:30:freechips.rocketchip.system.DefaultRV32Config.fir@137706.6]
  assign _GEN_79 = _T_603 ? {{1'd0}, _T_611} : _GEN_46; // @[Frontend.scala 260:61:freechips.rocketchip.system.DefaultRV32Config.fir@138046.8]
  assign _GEN_82 = _T_592 ? _GEN_79 : _GEN_46; // @[Frontend.scala 253:30:freechips.rocketchip.system.DefaultRV32Config.fir@138028.6]
  assign _GEN_99 = taken_idx ? _GEN_82 : _GEN_46; // @[Frontend.scala 244:25:freechips.rocketchip.system.DefaultRV32Config.fir@138005.4]
  assign predicted_npc = useRAS ? {{1'd0}, btb_io_ras_head_bits} : _GEN_99; // @[Frontend.scala 304:19:freechips.rocketchip.system.DefaultRV32Config.fir@138094.4]
  assign npc = s2_replay ? {{1'd0}, s2_pc} : predicted_npc; // @[Frontend.scala 128:16:freechips.rocketchip.system.DefaultRV32Config.fir@137295.4]
  assign _T_39 = s2_speculative == 1'h0; // @[Frontend.scala 134:56:freechips.rocketchip.system.DefaultRV32Config.fir@137297.4]
  assign _T_40 = s2_valid & _T_39; // @[Frontend.scala 134:53:freechips.rocketchip.system.DefaultRV32Config.fir@137298.4]
  assign _T_41 = s1_speculative | _T_40; // @[Frontend.scala 134:41:freechips.rocketchip.system.DefaultRV32Config.fir@137299.4]
  assign s0_speculative = _T_41 | predicted_taken; // @[Frontend.scala 134:72:freechips.rocketchip.system.DefaultRV32Config.fir@137300.4]
  assign _T_44 = s2_replay == 1'h0; // @[Frontend.scala 140:9:freechips.rocketchip.system.DefaultRV32Config.fir@137308.4]
  assign _T_551 = taken_rviJump_1 | taken_rviJALR_1; // @[Frontend.scala 229:29:freechips.rocketchip.system.DefaultRV32Config.fir@137972.4]
  assign _T_552 = taken_rviBranch_1 & s2_btb_resp_bits_bht_value; // @[Frontend.scala 229:53:freechips.rocketchip.system.DefaultRV32Config.fir@137973.4]
  assign _T_553 = _T_551 | _T_552; // @[Frontend.scala 229:40:freechips.rocketchip.system.DefaultRV32Config.fir@137974.4]
  assign _T_554 = taken_prevRVI_1 & _T_553; // @[Frontend.scala 229:17:freechips.rocketchip.system.DefaultRV32Config.fir@137975.4]
  assign _T_422 = 16'h9002 == _T_414; // @[Frontend.scala 224:26:freechips.rocketchip.system.DefaultRV32Config.fir@137839.4]
  assign taken_rvcJALR_1 = _T_422 & _T_417; // @[Frontend.scala 224:49:freechips.rocketchip.system.DefaultRV32Config.fir@137842.4]
  assign _T_555 = taken_rvcJump_1 | taken_rvcJALR_1; // @[Frontend.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@137976.4]
  assign _T_556 = _T_555 | taken_rvcJR_1; // @[Frontend.scala 230:38:freechips.rocketchip.system.DefaultRV32Config.fir@137977.4]
  assign _T_557 = taken_rvcBranch_1 & s2_btb_resp_bits_bht_value; // @[Frontend.scala 230:60:freechips.rocketchip.system.DefaultRV32Config.fir@137978.4]
  assign _T_558 = _T_556 | _T_557; // @[Frontend.scala 230:47:freechips.rocketchip.system.DefaultRV32Config.fir@137979.4]
  assign _T_559 = taken_valid_1 & _T_558; // @[Frontend.scala 230:15:freechips.rocketchip.system.DefaultRV32Config.fir@137980.4]
  assign taken_taken_1 = _T_554 | _T_559; // @[Frontend.scala 229:71:freechips.rocketchip.system.DefaultRV32Config.fir@137981.4]
  assign taken = taken_taken | taken_taken_1; // @[Frontend.scala 285:19:freechips.rocketchip.system.DefaultRV32Config.fir@138093.4]
  assign _GEN_116 = _T_32 | io_cpu_req_valid; // @[Frontend.scala 315:33:freechips.rocketchip.system.DefaultRV32Config.fir@138110.8]
  assign _GEN_120 = taken ? _GEN_116 : io_cpu_req_valid; // @[Frontend.scala 311:20:freechips.rocketchip.system.DefaultRV32Config.fir@138105.6]
  assign s2_redirect = _T_592 ? _GEN_120 : io_cpu_req_valid; // @[Frontend.scala 310:26:freechips.rocketchip.system.DefaultRV32Config.fir@138104.4]
  assign _T_45 = s2_redirect == 1'h0; // @[Frontend.scala 141:17:freechips.rocketchip.system.DefaultRV32Config.fir@137310.6]
  assign _GEN_0 = _T_44 & _T_45; // @[Frontend.scala 140:21:freechips.rocketchip.system.DefaultRV32Config.fir@137309.4]
  assign _T_49 = s2_redirect | tlb_io_resp_miss; // @[Frontend.scala 161:36:freechips.rocketchip.system.DefaultRV32Config.fir@137332.4]
  assign _T_51 = s2_tlb_resp_cacheable == 1'h0; // @[Frontend.scala 162:42:freechips.rocketchip.system.DefaultRV32Config.fir@137335.4]
  assign _T_52 = s2_speculative & _T_51; // @[Frontend.scala 162:39:freechips.rocketchip.system.DefaultRV32Config.fir@137336.4]
  assign _T_55 = _T_54 & s2_valid; // @[Frontend.scala 165:40:freechips.rocketchip.system.DefaultRV32Config.fir@137342.4]
  assign _T_56 = s2_tlb_resp_miss == 1'h0; // @[Frontend.scala 165:80:freechips.rocketchip.system.DefaultRV32Config.fir@137343.4]
  assign _T_57 = _T_56 & icache_io_s2_kill; // @[Frontend.scala 165:98:freechips.rocketchip.system.DefaultRV32Config.fir@137344.4]
  assign _T_58 = icache_io_resp_valid | _T_57; // @[Frontend.scala 165:77:freechips.rocketchip.system.DefaultRV32Config.fir@137345.4]
  assign _T_60 = io_cpu_req_valid ? {{1'd0}, io_cpu_req_bits_pc} : npc; // @[Frontend.scala 167:28:freechips.rocketchip.system.DefaultRV32Config.fir@137349.4]
  assign _T_61 = ~ _T_60; // @[Frontend.scala 340:29:freechips.rocketchip.system.DefaultRV32Config.fir@137350.4]
  assign _T_62 = _T_61 | 33'h1; // @[Frontend.scala 340:33:freechips.rocketchip.system.DefaultRV32Config.fir@137351.4]
  assign _T_63 = ~ _T_62; // @[Frontend.scala 340:27:freechips.rocketchip.system.DefaultRV32Config.fir@137352.4]
  assign _T_64 = s2_pc[1]; // @[package.scala 120:13:freechips.rocketchip.system.DefaultRV32Config.fir@137355.4]
  assign _T_65 = 3'h3 << _T_64; // @[Frontend.scala 170:52:freechips.rocketchip.system.DefaultRV32Config.fir@137356.4]
  assign _T_66 = icache_io_resp_valid == 1'h0; // @[Frontend.scala 171:79:freechips.rocketchip.system.DefaultRV32Config.fir@137358.4]
  assign _T_67 = icache_io_s2_kill & _T_66; // @[Frontend.scala 171:76:freechips.rocketchip.system.DefaultRV32Config.fir@137359.4]
  assign _T_68 = s2_xcpt == 1'h0; // @[Frontend.scala 171:104:freechips.rocketchip.system.DefaultRV32Config.fir@137360.4]
  assign _T_69 = _T_67 & _T_68; // @[Frontend.scala 171:101:freechips.rocketchip.system.DefaultRV32Config.fir@137361.4]
  assign _T_71 = icache_io_resp_valid & icache_io_resp_bits_ae; // @[Frontend.scala 175:30:freechips.rocketchip.system.DefaultRV32Config.fir@137367.4]
  assign _T_77 = io_cpu_btb_update_valid == 1'h0; // @[Frontend.scala 291:11:freechips.rocketchip.system.DefaultRV32Config.fir@137413.4]
  assign _T_78 = fq_io_mask[1]; // @[Frontend.scala 292:44:freechips.rocketchip.system.DefaultRV32Config.fir@137415.6]
  assign fetch_bubble_likely = _T_78 == 1'h0; // @[Frontend.scala 292:33:freechips.rocketchip.system.DefaultRV32Config.fir@137416.6]
  assign _T_80 = wrong_path == 1'h0; // @[Frontend.scala 293:54:freechips.rocketchip.system.DefaultRV32Config.fir@137418.6]
  assign _T_81 = _T_32 & _T_80; // @[Frontend.scala 293:51:freechips.rocketchip.system.DefaultRV32Config.fir@137419.6]
  assign _T_82 = _T_81 & fetch_bubble_likely; // @[Frontend.scala 293:66:freechips.rocketchip.system.DefaultRV32Config.fir@137420.6]
  assign _T_618 = s2_btb_resp_valid == 1'h0; // @[Frontend.scala 272:15:freechips.rocketchip.system.DefaultRV32Config.fir@138070.6]
  assign _T_620 = taken_predictBranch_1 & s2_btb_resp_bits_bht_value; // @[Frontend.scala 272:52:freechips.rocketchip.system.DefaultRV32Config.fir@138072.6]
  assign _T_621 = _T_620 | taken_predictJump_1; // @[Frontend.scala 272:91:freechips.rocketchip.system.DefaultRV32Config.fir@138073.6]
  assign _T_622 = _T_621 | taken_predictReturn_1; // @[Frontend.scala 272:106:freechips.rocketchip.system.DefaultRV32Config.fir@138074.6]
  assign _T_623 = _T_618 & _T_622; // @[Frontend.scala 272:34:freechips.rocketchip.system.DefaultRV32Config.fir@138075.6]
  assign _T_351 = taken_predictBranch & s2_btb_resp_bits_bht_value; // @[Frontend.scala 272:52:freechips.rocketchip.system.DefaultRV32Config.fir@137748.6]
  assign _T_352 = _T_351 | taken_predictJump; // @[Frontend.scala 272:91:freechips.rocketchip.system.DefaultRV32Config.fir@137749.6]
  assign _T_353 = _T_352 | taken_predictReturn; // @[Frontend.scala 272:106:freechips.rocketchip.system.DefaultRV32Config.fir@137750.6]
  assign _T_354 = _T_618 & _T_353; // @[Frontend.scala 272:34:freechips.rocketchip.system.DefaultRV32Config.fir@137751.6]
  assign _GEN_92 = _T_623 | _T_354; // @[Frontend.scala 272:125:freechips.rocketchip.system.DefaultRV32Config.fir@138076.6]
  assign updateBTB = taken_idx ? _GEN_92 : _T_354; // @[Frontend.scala 244:25:freechips.rocketchip.system.DefaultRV32Config.fir@138005.4]
  assign _T_83 = _T_82 & updateBTB; // @[Frontend.scala 293:89:freechips.rocketchip.system.DefaultRV32Config.fir@137421.6]
  assign _T_84 = {taken_idx, 1'h0}; // @[Frontend.scala 297:63:freechips.rocketchip.system.DefaultRV32Config.fir@137426.6]
  assign _GEN_128 = {{30'd0}, _T_84}; // @[Frontend.scala 297:50:freechips.rocketchip.system.DefaultRV32Config.fir@137427.6]
  assign _T_85 = s2_base_pc | _GEN_128; // @[Frontend.scala 297:50:freechips.rocketchip.system.DefaultRV32Config.fir@137427.6]
  assign after_idx = taken_idx ? 2'h2 : 2'h1; // @[Frontend.scala 244:25:freechips.rocketchip.system.DefaultRV32Config.fir@138005.4]
  assign _T_86 = {after_idx, 1'h0}; // @[Frontend.scala 301:66:freechips.rocketchip.system.DefaultRV32Config.fir@137431.4]
  assign _GEN_129 = {{29'd0}, _T_86}; // @[Frontend.scala 301:53:freechips.rocketchip.system.DefaultRV32Config.fir@137432.4]
  assign _T_104 = taken_rviJALR | taken_rviJump; // @[Frontend.scala 217:30:freechips.rocketchip.system.DefaultRV32Config.fir@137459.4]
  assign taken_rviCall = _T_104 & _T_98; // @[Frontend.scala 217:42:freechips.rocketchip.system.DefaultRV32Config.fir@137461.4]
  assign taken_rvcCall = taken_rvcJAL | taken_rvcJALR; // @[Frontend.scala 225:28:freechips.rocketchip.system.DefaultRV32Config.fir@137521.4]
  assign _T_301 = s2_valid & s2_btb_resp_valid; // @[Frontend.scala 235:22:freechips.rocketchip.system.DefaultRV32Config.fir@137671.4]
  assign _T_302 = s2_btb_resp_bits_bridx == 1'h0; // @[Frontend.scala 235:69:freechips.rocketchip.system.DefaultRV32Config.fir@137672.4]
  assign _T_303 = _T_301 & _T_302; // @[Frontend.scala 235:43:freechips.rocketchip.system.DefaultRV32Config.fir@137673.4]
  assign _T_304 = _T_303 & taken_valid; // @[Frontend.scala 235:77:freechips.rocketchip.system.DefaultRV32Config.fir@137674.4]
  assign _T_306 = _T_304 & _T_358; // @[Frontend.scala 235:86:freechips.rocketchip.system.DefaultRV32Config.fir@137676.4]
  assign _GEN_39 = _T_306 | _T_69; // @[Frontend.scala 235:95:freechips.rocketchip.system.DefaultRV32Config.fir@137677.4]
  assign _GEN_40 = _T_306 | wrong_path; // @[Frontend.scala 235:95:freechips.rocketchip.system.DefaultRV32Config.fir@137677.4]
  assign _T_311 = taken_rviCall | taken_rviReturn; // @[Frontend.scala 247:92:freechips.rocketchip.system.DefaultRV32Config.fir@137689.6]
  assign _T_312 = taken_prevRVI & _T_311; // @[Frontend.scala 247:80:freechips.rocketchip.system.DefaultRV32Config.fir@137690.6]
  assign _T_313 = taken_rvcCall | taken_rvcReturn; // @[Frontend.scala 247:127:freechips.rocketchip.system.DefaultRV32Config.fir@137691.6]
  assign _T_314 = taken_valid & _T_313; // @[Frontend.scala 247:115:freechips.rocketchip.system.DefaultRV32Config.fir@137692.6]
  assign _T_315 = _T_312 | _T_314; // @[Frontend.scala 247:106:freechips.rocketchip.system.DefaultRV32Config.fir@137693.6]
  assign _T_316 = _T_81 & _T_315; // @[Frontend.scala 247:68:freechips.rocketchip.system.DefaultRV32Config.fir@137694.6]
  assign _T_317 = taken_prevRVI ? taken_rviReturn : taken_rvcReturn; // @[Frontend.scala 248:50:freechips.rocketchip.system.DefaultRV32Config.fir@137696.6]
  assign _T_318 = taken_prevRVI ? taken_rviCall : taken_rvcCall; // @[Frontend.scala 249:50:freechips.rocketchip.system.DefaultRV32Config.fir@137697.6]
  assign _T_319 = taken_prevRVI ? taken_rviBranch : taken_rvcBranch; // @[Frontend.scala 250:50:freechips.rocketchip.system.DefaultRV32Config.fir@137698.6]
  assign _T_322 = _T_319 ? 1'h0 : 1'h1; // @[Frontend.scala 250:46:freechips.rocketchip.system.DefaultRV32Config.fir@137701.6]
  assign _T_323 = _T_318 ? 2'h2 : {{1'd0}, _T_322}; // @[Frontend.scala 249:46:freechips.rocketchip.system.DefaultRV32Config.fir@137702.6]
  assign _T_324 = _T_317 ? 2'h3 : _T_323; // @[Frontend.scala 248:46:freechips.rocketchip.system.DefaultRV32Config.fir@137703.6]
  assign _T_327 = _T_32 & taken_taken; // @[Frontend.scala 254:34:freechips.rocketchip.system.DefaultRV32Config.fir@137708.8]
  assign _T_328 = taken_predictBranch == 1'h0; // @[Frontend.scala 254:46:freechips.rocketchip.system.DefaultRV32Config.fir@137709.8]
  assign _T_329 = _T_327 & _T_328; // @[Frontend.scala 254:43:freechips.rocketchip.system.DefaultRV32Config.fir@137710.8]
  assign _T_330 = taken_predictJump == 1'h0; // @[Frontend.scala 254:64:freechips.rocketchip.system.DefaultRV32Config.fir@137711.8]
  assign _T_331 = _T_329 & _T_330; // @[Frontend.scala 254:61:freechips.rocketchip.system.DefaultRV32Config.fir@137712.8]
  assign _T_332 = taken_predictReturn == 1'h0; // @[Frontend.scala 254:80:freechips.rocketchip.system.DefaultRV32Config.fir@137713.8]
  assign _T_333 = _T_331 & _T_332; // @[Frontend.scala 254:77:freechips.rocketchip.system.DefaultRV32Config.fir@137714.8]
  assign _GEN_41 = _T_333 | _GEN_40; // @[Frontend.scala 254:96:freechips.rocketchip.system.DefaultRV32Config.fir@137715.8]
  assign _GEN_44 = _T_592 ? _GEN_41 : _GEN_40; // @[Frontend.scala 253:30:freechips.rocketchip.system.DefaultRV32Config.fir@137706.6]
  assign _GEN_47 = _T_300 & _T_81; // @[Frontend.scala 268:59:freechips.rocketchip.system.DefaultRV32Config.fir@137739.6]
  assign _T_361 = taken_bits_1[1:0]; // @[Frontend.scala 207:39:freechips.rocketchip.system.DefaultRV32Config.fir@137765.4]
  assign taken_rvc_1 = _T_361 != 2'h3; // @[Frontend.scala 207:45:freechips.rocketchip.system.DefaultRV32Config.fir@137766.4]
  assign _T_371 = taken_rviJALR_1 | taken_rviJump_1; // @[Frontend.scala 217:30:freechips.rocketchip.system.DefaultRV32Config.fir@137781.4]
  assign taken_rviCall_1 = _T_371 & _T_365; // @[Frontend.scala 217:42:freechips.rocketchip.system.DefaultRV32Config.fir@137783.4]
  assign taken_rvcCall_1 = taken_rvcJAL_1 | taken_rvcJALR_1; // @[Frontend.scala 225:28:freechips.rocketchip.system.DefaultRV32Config.fir@137843.4]
  assign _T_570 = _T_301 & s2_btb_resp_bits_bridx; // @[Frontend.scala 235:43:freechips.rocketchip.system.DefaultRV32Config.fir@137995.4]
  assign _T_571 = _T_570 & taken_valid_1; // @[Frontend.scala 235:77:freechips.rocketchip.system.DefaultRV32Config.fir@137996.4]
  assign _T_572 = taken_rvc_1 == 1'h0; // @[Frontend.scala 235:89:freechips.rocketchip.system.DefaultRV32Config.fir@137997.4]
  assign _T_573 = _T_571 & _T_572; // @[Frontend.scala 235:86:freechips.rocketchip.system.DefaultRV32Config.fir@137998.4]
  assign _GEN_76 = _T_573 | _GEN_44; // @[Frontend.scala 235:95:freechips.rocketchip.system.DefaultRV32Config.fir@137999.4]
  assign _T_578 = taken_rviCall_1 | taken_rviReturn_1; // @[Frontend.scala 247:92:freechips.rocketchip.system.DefaultRV32Config.fir@138011.6]
  assign _T_579 = taken_prevRVI_1 & _T_578; // @[Frontend.scala 247:80:freechips.rocketchip.system.DefaultRV32Config.fir@138012.6]
  assign _T_580 = taken_rvcCall_1 | taken_rvcReturn_1; // @[Frontend.scala 247:127:freechips.rocketchip.system.DefaultRV32Config.fir@138013.6]
  assign _T_581 = taken_valid_1 & _T_580; // @[Frontend.scala 247:115:freechips.rocketchip.system.DefaultRV32Config.fir@138014.6]
  assign _T_582 = _T_579 | _T_581; // @[Frontend.scala 247:106:freechips.rocketchip.system.DefaultRV32Config.fir@138015.6]
  assign _T_583 = _T_81 & _T_582; // @[Frontend.scala 247:68:freechips.rocketchip.system.DefaultRV32Config.fir@138016.6]
  assign _T_584 = taken_prevRVI_1 ? taken_rviReturn_1 : taken_rvcReturn_1; // @[Frontend.scala 248:50:freechips.rocketchip.system.DefaultRV32Config.fir@138018.6]
  assign _T_585 = taken_prevRVI_1 ? taken_rviCall_1 : taken_rvcCall_1; // @[Frontend.scala 249:50:freechips.rocketchip.system.DefaultRV32Config.fir@138019.6]
  assign _T_586 = taken_prevRVI_1 ? taken_rviBranch_1 : taken_rvcBranch_1; // @[Frontend.scala 250:50:freechips.rocketchip.system.DefaultRV32Config.fir@138020.6]
  assign _T_589 = _T_586 ? 1'h0 : 1'h1; // @[Frontend.scala 250:46:freechips.rocketchip.system.DefaultRV32Config.fir@138023.6]
  assign _T_590 = _T_585 ? 2'h2 : {{1'd0}, _T_589}; // @[Frontend.scala 249:46:freechips.rocketchip.system.DefaultRV32Config.fir@138024.6]
  assign _T_591 = _T_584 ? 2'h3 : _T_590; // @[Frontend.scala 248:46:freechips.rocketchip.system.DefaultRV32Config.fir@138025.6]
  assign _T_594 = _T_32 & taken_taken_1; // @[Frontend.scala 254:34:freechips.rocketchip.system.DefaultRV32Config.fir@138030.8]
  assign _T_595 = taken_predictBranch_1 == 1'h0; // @[Frontend.scala 254:46:freechips.rocketchip.system.DefaultRV32Config.fir@138031.8]
  assign _T_596 = _T_594 & _T_595; // @[Frontend.scala 254:43:freechips.rocketchip.system.DefaultRV32Config.fir@138032.8]
  assign _T_597 = taken_predictJump_1 == 1'h0; // @[Frontend.scala 254:64:freechips.rocketchip.system.DefaultRV32Config.fir@138033.8]
  assign _T_598 = _T_596 & _T_597; // @[Frontend.scala 254:61:freechips.rocketchip.system.DefaultRV32Config.fir@138034.8]
  assign _T_599 = taken_predictReturn_1 == 1'h0; // @[Frontend.scala 254:80:freechips.rocketchip.system.DefaultRV32Config.fir@138035.8]
  assign _T_600 = _T_598 & _T_599; // @[Frontend.scala 254:77:freechips.rocketchip.system.DefaultRV32Config.fir@138036.8]
  assign _GEN_77 = _T_600 | _GEN_76; // @[Frontend.scala 254:96:freechips.rocketchip.system.DefaultRV32Config.fir@138037.8]
  assign _GEN_83 = _T_567 ? _T_81 : _GEN_47; // @[Frontend.scala 268:59:freechips.rocketchip.system.DefaultRV32Config.fir@138063.6]
  assign _T_626 = taken_valid_1 & taken_idx; // @[Frontend.scala 280:23:freechips.rocketchip.system.DefaultRV32Config.fir@138084.6]
  assign _T_628 = _T_626 & _T_572; // @[Frontend.scala 280:37:freechips.rocketchip.system.DefaultRV32Config.fir@138086.6]
  assign _T_629 = taken_bits_1 | 16'h3; // @[Frontend.scala 282:37:freechips.rocketchip.system.DefaultRV32Config.fir@138089.8]
  assign _T_631 = s2_btb_taken | taken; // @[Frontend.scala 307:45:freechips.rocketchip.system.DefaultRV32Config.fir@138098.4]
  assign _T_632 = _T_32 & _T_631; // @[Frontend.scala 307:28:freechips.rocketchip.system.DefaultRV32Config.fir@138099.4]
  assign _GEN_117 = taken ? taken_idx : s2_btb_resp_bits_bridx; // @[Frontend.scala 311:20:freechips.rocketchip.system.DefaultRV32Config.fir@138105.6]
  assign _GEN_118 = taken | s2_btb_taken; // @[Frontend.scala 311:20:freechips.rocketchip.system.DefaultRV32Config.fir@138105.6]
  assign _GEN_119 = taken ? 5'h1c : s2_btb_resp_bits_entry; // @[Frontend.scala 311:20:freechips.rocketchip.system.DefaultRV32Config.fir@138105.6]
  assign _T_635 = s2_partial_insn_valid == 1'h0; // @[Frontend.scala 319:12:freechips.rocketchip.system.DefaultRV32Config.fir@138115.4]
  assign _T_637 = _T_635 | _T_92; // @[Frontend.scala 319:35:freechips.rocketchip.system.DefaultRV32Config.fir@138117.4]
  assign _T_639 = _T_637 | reset; // @[Frontend.scala 319:11:freechips.rocketchip.system.DefaultRV32Config.fir@138119.4]
  assign _T_640 = _T_639 == 1'h0; // @[Frontend.scala 319:11:freechips.rocketchip.system.DefaultRV32Config.fir@138120.4]
  assign auto_icache_master_out_a_valid = icache_auto_master_out_a_valid; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@137209.4]
  assign auto_icache_master_out_a_bits_address = icache_auto_master_out_a_bits_address; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@137209.4]
  assign io_cpu_resp_valid = fq_io_deq_valid; // @[Frontend.scala 324:15:freechips.rocketchip.system.DefaultRV32Config.fir@138131.4]
  assign io_cpu_resp_bits_btb_taken = fq_io_deq_bits_btb_taken; // @[Frontend.scala 324:15:freechips.rocketchip.system.DefaultRV32Config.fir@138131.4]
  assign io_cpu_resp_bits_btb_bridx = fq_io_deq_bits_btb_bridx; // @[Frontend.scala 324:15:freechips.rocketchip.system.DefaultRV32Config.fir@138131.4]
  assign io_cpu_resp_bits_btb_entry = fq_io_deq_bits_btb_entry; // @[Frontend.scala 324:15:freechips.rocketchip.system.DefaultRV32Config.fir@138131.4]
  assign io_cpu_resp_bits_btb_bht_history = fq_io_deq_bits_btb_bht_history; // @[Frontend.scala 324:15:freechips.rocketchip.system.DefaultRV32Config.fir@138131.4]
  assign io_cpu_resp_bits_pc = fq_io_deq_bits_pc; // @[Frontend.scala 324:15:freechips.rocketchip.system.DefaultRV32Config.fir@138131.4]
  assign io_cpu_resp_bits_data = fq_io_deq_bits_data; // @[Frontend.scala 324:15:freechips.rocketchip.system.DefaultRV32Config.fir@138131.4]
  assign io_cpu_resp_bits_xcpt_pf_inst = fq_io_deq_bits_xcpt_pf_inst; // @[Frontend.scala 324:15:freechips.rocketchip.system.DefaultRV32Config.fir@138131.4]
  assign io_cpu_resp_bits_xcpt_ae_inst = fq_io_deq_bits_xcpt_ae_inst; // @[Frontend.scala 324:15:freechips.rocketchip.system.DefaultRV32Config.fir@138131.4]
  assign io_cpu_resp_bits_replay = fq_io_deq_bits_replay; // @[Frontend.scala 324:15:freechips.rocketchip.system.DefaultRV32Config.fir@138131.4]
  assign io_cpu_npc = _T_63[31:0]; // @[Frontend.scala 167:14:freechips.rocketchip.system.DefaultRV32Config.fir@137353.4]
  assign io_ptw_req_valid = tlb_io_ptw_req_valid; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign io_ptw_req_bits_valid = tlb_io_ptw_req_bits_valid; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign io_ptw_req_bits_bits_addr = tlb_io_ptw_req_bits_bits_addr; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign icache_clock = gated_clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137207.4 Frontend.scala 94:16:freechips.rocketchip.system.DefaultRV32Config.fir@137232.4]
  assign icache_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137208.4]
  assign icache_auto_master_out_a_ready = auto_icache_master_out_a_ready; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@137209.4]
  assign icache_auto_master_out_d_valid = auto_icache_master_out_d_valid; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@137209.4]
  assign icache_auto_master_out_d_bits_opcode = auto_icache_master_out_d_bits_opcode; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@137209.4]
  assign icache_auto_master_out_d_bits_size = auto_icache_master_out_d_bits_size; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@137209.4]
  assign icache_auto_master_out_d_bits_data = auto_icache_master_out_d_bits_data; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@137209.4]
  assign icache_auto_master_out_d_bits_corrupt = auto_icache_master_out_d_bits_corrupt; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@137209.4]
  assign icache_io_req_valid = io_cpu_req_valid | s0_fq_has_space; // @[Frontend.scala 156:23:freechips.rocketchip.system.DefaultRV32Config.fir@137327.4]
  assign icache_io_req_bits_addr = io_cpu_npc; // @[Frontend.scala 157:27:freechips.rocketchip.system.DefaultRV32Config.fir@137328.4]
  assign icache_io_s1_paddr = tlb_io_resp_paddr; // @[Frontend.scala 159:22:freechips.rocketchip.system.DefaultRV32Config.fir@137330.4]
  assign icache_io_s1_kill = _T_49 | s2_replay; // @[Frontend.scala 161:21:freechips.rocketchip.system.DefaultRV32Config.fir@137334.4]
  assign icache_io_s2_kill = _T_52 | s2_xcpt; // @[Frontend.scala 162:21:freechips.rocketchip.system.DefaultRV32Config.fir@137338.4]
  assign icache_io_invalidate = io_cpu_flush_icache; // @[Frontend.scala 158:24:freechips.rocketchip.system.DefaultRV32Config.fir@137329.4]
  assign fq_clock = gated_clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137214.4]
  assign fq_reset = reset | io_cpu_req_valid; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137215.4]
  assign fq_io_enq_valid = _T_55 & _T_58; // @[Frontend.scala 165:19:freechips.rocketchip.system.DefaultRV32Config.fir@137347.4]
  assign fq_io_enq_bits_btb_taken = _T_592 ? _GEN_118 : s2_btb_taken; // @[Frontend.scala 172:22:freechips.rocketchip.system.DefaultRV32Config.fir@137364.4 Frontend.scala 173:28:freechips.rocketchip.system.DefaultRV32Config.fir@137365.4 Frontend.scala 313:34:freechips.rocketchip.system.DefaultRV32Config.fir@138107.8]
  assign fq_io_enq_bits_btb_bridx = _T_592 ? _GEN_117 : s2_btb_resp_bits_bridx; // @[Frontend.scala 172:22:freechips.rocketchip.system.DefaultRV32Config.fir@137364.4 Frontend.scala 312:34:freechips.rocketchip.system.DefaultRV32Config.fir@138106.8]
  assign fq_io_enq_bits_btb_entry = _T_592 ? _GEN_119 : s2_btb_resp_bits_entry; // @[Frontend.scala 172:22:freechips.rocketchip.system.DefaultRV32Config.fir@137364.4 Frontend.scala 314:34:freechips.rocketchip.system.DefaultRV32Config.fir@138108.8]
  assign fq_io_enq_bits_btb_bht_history = s2_btb_resp_bits_bht_history; // @[Frontend.scala 172:22:freechips.rocketchip.system.DefaultRV32Config.fir@137364.4]
  assign fq_io_enq_bits_pc = s2_pc; // @[Frontend.scala 166:21:freechips.rocketchip.system.DefaultRV32Config.fir@137348.4]
  assign fq_io_enq_bits_data = icache_io_resp_bits_data; // @[Frontend.scala 169:23:freechips.rocketchip.system.DefaultRV32Config.fir@137354.4]
  assign fq_io_enq_bits_mask = _T_65[1:0]; // @[Frontend.scala 170:23:freechips.rocketchip.system.DefaultRV32Config.fir@137357.4]
  assign fq_io_enq_bits_xcpt_pf_inst = s2_tlb_resp_pf_inst; // @[Frontend.scala 174:23:freechips.rocketchip.system.DefaultRV32Config.fir@137366.4]
  assign fq_io_enq_bits_xcpt_ae_inst = _T_71 | s2_tlb_resp_ae_inst; // @[Frontend.scala 174:23:freechips.rocketchip.system.DefaultRV32Config.fir@137366.4 Frontend.scala 175:87:freechips.rocketchip.system.DefaultRV32Config.fir@137369.6]
  assign fq_io_enq_bits_replay = _T_573 | _GEN_39; // @[Frontend.scala 171:25:freechips.rocketchip.system.DefaultRV32Config.fir@137363.4 Frontend.scala 239:31:freechips.rocketchip.system.DefaultRV32Config.fir@137679.6 Frontend.scala 239:31:freechips.rocketchip.system.DefaultRV32Config.fir@138001.6]
  assign fq_io_deq_ready = io_cpu_resp_ready; // @[Frontend.scala 324:15:freechips.rocketchip.system.DefaultRV32Config.fir@138131.4]
  assign tlb_clock = gated_clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137236.4]
  assign tlb_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137237.4]
  assign tlb_io_req_valid = s1_valid & _T_44; // @[Frontend.scala 148:20:freechips.rocketchip.system.DefaultRV32Config.fir@137319.4]
  assign tlb_io_req_bits_vaddr = s1_pc; // @[Frontend.scala 149:25:freechips.rocketchip.system.DefaultRV32Config.fir@137320.4]
  assign tlb_io_sfence_valid = io_cpu_sfence_valid; // @[Frontend.scala 152:17:freechips.rocketchip.system.DefaultRV32Config.fir@137323.4]
  assign tlb_io_sfence_bits_rs1 = io_cpu_sfence_bits_rs1; // @[Frontend.scala 152:17:freechips.rocketchip.system.DefaultRV32Config.fir@137323.4]
  assign tlb_io_sfence_bits_rs2 = io_cpu_sfence_bits_rs2; // @[Frontend.scala 152:17:freechips.rocketchip.system.DefaultRV32Config.fir@137323.4]
  assign tlb_io_sfence_bits_addr = io_cpu_sfence_bits_addr; // @[Frontend.scala 152:17:freechips.rocketchip.system.DefaultRV32Config.fir@137323.4]
  assign tlb_io_ptw_req_ready = io_ptw_req_ready; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_resp_valid = io_ptw_resp_valid; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_resp_bits_ae = io_ptw_resp_bits_ae; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_resp_bits_pte_ppn = io_ptw_resp_bits_pte_ppn; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_resp_bits_pte_d = io_ptw_resp_bits_pte_d; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_resp_bits_pte_a = io_ptw_resp_bits_pte_a; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_resp_bits_pte_g = io_ptw_resp_bits_pte_g; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_resp_bits_pte_u = io_ptw_resp_bits_pte_u; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_resp_bits_pte_x = io_ptw_resp_bits_pte_x; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_resp_bits_pte_w = io_ptw_resp_bits_pte_w; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_resp_bits_pte_r = io_ptw_resp_bits_pte_r; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_resp_bits_pte_v = io_ptw_resp_bits_pte_v; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_resp_bits_level = io_ptw_resp_bits_level; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_resp_bits_homogeneous = io_ptw_resp_bits_homogeneous; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_ptbr_mode = io_ptw_ptbr_mode; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_status_debug = io_ptw_status_debug; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_status_prv = io_ptw_status_prv; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_pmp_0_cfg_l = io_ptw_pmp_0_cfg_l; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_pmp_0_cfg_a = io_ptw_pmp_0_cfg_a; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_pmp_0_cfg_x = io_ptw_pmp_0_cfg_x; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_pmp_0_cfg_w = io_ptw_pmp_0_cfg_w; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_pmp_0_cfg_r = io_ptw_pmp_0_cfg_r; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_pmp_0_addr = io_ptw_pmp_0_addr; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_pmp_0_mask = io_ptw_pmp_0_mask; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_pmp_1_cfg_l = io_ptw_pmp_1_cfg_l; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_pmp_1_cfg_a = io_ptw_pmp_1_cfg_a; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_pmp_1_cfg_x = io_ptw_pmp_1_cfg_x; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_pmp_1_cfg_w = io_ptw_pmp_1_cfg_w; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_pmp_1_cfg_r = io_ptw_pmp_1_cfg_r; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_pmp_1_addr = io_ptw_pmp_1_addr; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_pmp_1_mask = io_ptw_pmp_1_mask; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_pmp_2_cfg_l = io_ptw_pmp_2_cfg_l; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_pmp_2_cfg_a = io_ptw_pmp_2_cfg_a; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_pmp_2_cfg_x = io_ptw_pmp_2_cfg_x; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_pmp_2_cfg_w = io_ptw_pmp_2_cfg_w; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_pmp_2_cfg_r = io_ptw_pmp_2_cfg_r; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_pmp_2_addr = io_ptw_pmp_2_addr; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_pmp_2_mask = io_ptw_pmp_2_mask; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_pmp_3_cfg_l = io_ptw_pmp_3_cfg_l; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_pmp_3_cfg_a = io_ptw_pmp_3_cfg_a; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_pmp_3_cfg_x = io_ptw_pmp_3_cfg_x; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_pmp_3_cfg_w = io_ptw_pmp_3_cfg_w; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_pmp_3_cfg_r = io_ptw_pmp_3_cfg_r; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_pmp_3_addr = io_ptw_pmp_3_addr; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_pmp_3_mask = io_ptw_pmp_3_mask; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_pmp_4_cfg_l = io_ptw_pmp_4_cfg_l; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_pmp_4_cfg_a = io_ptw_pmp_4_cfg_a; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_pmp_4_cfg_x = io_ptw_pmp_4_cfg_x; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_pmp_4_cfg_w = io_ptw_pmp_4_cfg_w; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_pmp_4_cfg_r = io_ptw_pmp_4_cfg_r; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_pmp_4_addr = io_ptw_pmp_4_addr; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_pmp_4_mask = io_ptw_pmp_4_mask; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_pmp_5_cfg_l = io_ptw_pmp_5_cfg_l; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_pmp_5_cfg_a = io_ptw_pmp_5_cfg_a; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_pmp_5_cfg_x = io_ptw_pmp_5_cfg_x; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_pmp_5_cfg_w = io_ptw_pmp_5_cfg_w; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_pmp_5_cfg_r = io_ptw_pmp_5_cfg_r; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_pmp_5_addr = io_ptw_pmp_5_addr; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_pmp_5_mask = io_ptw_pmp_5_mask; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_pmp_6_cfg_l = io_ptw_pmp_6_cfg_l; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_pmp_6_cfg_a = io_ptw_pmp_6_cfg_a; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_pmp_6_cfg_x = io_ptw_pmp_6_cfg_x; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_pmp_6_cfg_w = io_ptw_pmp_6_cfg_w; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_pmp_6_cfg_r = io_ptw_pmp_6_cfg_r; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_pmp_6_addr = io_ptw_pmp_6_addr; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_pmp_6_mask = io_ptw_pmp_6_mask; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_pmp_7_cfg_l = io_ptw_pmp_7_cfg_l; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_pmp_7_cfg_a = io_ptw_pmp_7_cfg_a; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_pmp_7_cfg_x = io_ptw_pmp_7_cfg_x; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_pmp_7_cfg_w = io_ptw_pmp_7_cfg_w; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_pmp_7_cfg_r = io_ptw_pmp_7_cfg_r; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_pmp_7_addr = io_ptw_pmp_7_addr; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_ptw_pmp_7_mask = io_ptw_pmp_7_mask; // @[Frontend.scala 147:10:freechips.rocketchip.system.DefaultRV32Config.fir@137316.4]
  assign tlb_io_kill = s2_valid == 1'h0; // @[Frontend.scala 153:15:freechips.rocketchip.system.DefaultRV32Config.fir@137325.4]
  assign btb_clock = gated_clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137373.4]
  assign btb_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@137374.4]
  assign btb_io_req_bits_addr = s1_pc; // @[Frontend.scala 181:26:freechips.rocketchip.system.DefaultRV32Config.fir@137377.4]
  assign btb_io_btb_update_valid = _T_77 ? _T_83 : io_cpu_btb_update_valid; // @[Frontend.scala 182:23:freechips.rocketchip.system.DefaultRV32Config.fir@137378.4 Frontend.scala 293:31:freechips.rocketchip.system.DefaultRV32Config.fir@137422.6]
  assign btb_io_btb_update_bits_prediction_entry = _T_77 ? 5'h1c : io_cpu_btb_update_bits_prediction_entry; // @[Frontend.scala 182:23:freechips.rocketchip.system.DefaultRV32Config.fir@137378.4 Frontend.scala 294:47:freechips.rocketchip.system.DefaultRV32Config.fir@137423.6]
  assign btb_io_btb_update_bits_pc = _T_77 ? s2_base_pc : io_cpu_btb_update_bits_pc; // @[Frontend.scala 182:23:freechips.rocketchip.system.DefaultRV32Config.fir@137378.4 Frontend.scala 298:33:freechips.rocketchip.system.DefaultRV32Config.fir@137429.6]
  assign btb_io_btb_update_bits_isValid = _T_77 | io_cpu_btb_update_bits_isValid; // @[Frontend.scala 182:23:freechips.rocketchip.system.DefaultRV32Config.fir@137378.4 Frontend.scala 295:38:freechips.rocketchip.system.DefaultRV32Config.fir@137424.6]
  assign btb_io_btb_update_bits_br_pc = _T_77 ? _T_85 : io_cpu_btb_update_bits_br_pc; // @[Frontend.scala 182:23:freechips.rocketchip.system.DefaultRV32Config.fir@137378.4 Frontend.scala 297:36:freechips.rocketchip.system.DefaultRV32Config.fir@137428.6]
  assign btb_io_btb_update_bits_cfiType = _T_77 ? btb_io_ras_update_bits_cfiType : io_cpu_btb_update_bits_cfiType; // @[Frontend.scala 182:23:freechips.rocketchip.system.DefaultRV32Config.fir@137378.4 Frontend.scala 296:38:freechips.rocketchip.system.DefaultRV32Config.fir@137425.6]
  assign btb_io_bht_update_valid = io_cpu_bht_update_valid; // @[Frontend.scala 183:23:freechips.rocketchip.system.DefaultRV32Config.fir@137379.4 Frontend.scala 198:50:freechips.rocketchip.system.DefaultRV32Config.fir@137398.6]
  assign btb_io_bht_update_bits_prediction_history = io_cpu_bht_update_bits_prediction_history; // @[Frontend.scala 183:23:freechips.rocketchip.system.DefaultRV32Config.fir@137379.4]
  assign btb_io_bht_update_bits_pc = io_cpu_bht_update_bits_pc; // @[Frontend.scala 183:23:freechips.rocketchip.system.DefaultRV32Config.fir@137379.4]
  assign btb_io_bht_update_bits_branch = io_cpu_bht_update_bits_branch; // @[Frontend.scala 183:23:freechips.rocketchip.system.DefaultRV32Config.fir@137379.4]
  assign btb_io_bht_update_bits_taken = io_cpu_bht_update_bits_taken; // @[Frontend.scala 183:23:freechips.rocketchip.system.DefaultRV32Config.fir@137379.4]
  assign btb_io_bht_update_bits_mispredict = io_cpu_bht_update_bits_mispredict; // @[Frontend.scala 183:23:freechips.rocketchip.system.DefaultRV32Config.fir@137379.4]
  assign btb_io_bht_advance_valid = taken_idx ? _GEN_83 : _GEN_47; // @[Frontend.scala 185:30:freechips.rocketchip.system.DefaultRV32Config.fir@137381.4 Frontend.scala 269:36:freechips.rocketchip.system.DefaultRV32Config.fir@137743.8 Frontend.scala 269:36:freechips.rocketchip.system.DefaultRV32Config.fir@138067.8]
  assign btb_io_bht_advance_bits_bht_value = s2_btb_resp_bits_bht_value; // @[Frontend.scala 270:35:freechips.rocketchip.system.DefaultRV32Config.fir@137744.8 Frontend.scala 270:35:freechips.rocketchip.system.DefaultRV32Config.fir@138068.8]
  assign btb_io_ras_update_valid = taken_idx ? _T_583 : _T_316; // @[Frontend.scala 184:29:freechips.rocketchip.system.DefaultRV32Config.fir@137380.4 Frontend.scala 247:33:freechips.rocketchip.system.DefaultRV32Config.fir@137695.6 Frontend.scala 247:33:freechips.rocketchip.system.DefaultRV32Config.fir@138017.6]
  assign btb_io_ras_update_bits_cfiType = taken_idx ? _T_591 : _T_324; // @[Frontend.scala 248:40:freechips.rocketchip.system.DefaultRV32Config.fir@137704.6 Frontend.scala 248:40:freechips.rocketchip.system.DefaultRV32Config.fir@138026.6]
  assign btb_io_ras_update_bits_returnAddr = s2_base_pc + _GEN_129; // @[Frontend.scala 301:39:freechips.rocketchip.system.DefaultRV32Config.fir@137434.4]
  assign btb_io_flush = _T_573 | _T_306; // @[Frontend.scala 179:18:freechips.rocketchip.system.DefaultRV32Config.fir@137375.4 Frontend.scala 197:54:freechips.rocketchip.system.DefaultRV32Config.fir@137395.6 Frontend.scala 238:22:freechips.rocketchip.system.DefaultRV32Config.fir@137678.6 Frontend.scala 238:22:freechips.rocketchip.system.DefaultRV32Config.fir@138000.6]
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
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  s1_valid = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  s2_valid = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  s1_pc = _RAND_2[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  s1_speculative = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  s2_pc = _RAND_4[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  s2_btb_resp_valid = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  s2_btb_resp_bits_taken = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  s2_btb_resp_bits_bridx = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  s2_btb_resp_bits_entry = _RAND_8[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  s2_btb_resp_bits_bht_history = _RAND_9[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  s2_btb_resp_bits_bht_value = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  s2_tlb_resp_miss = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  s2_tlb_resp_pf_inst = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  s2_tlb_resp_ae_inst = _RAND_13[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  s2_tlb_resp_cacheable = _RAND_14[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  s2_speculative = _RAND_15[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  s2_partial_insn_valid = _RAND_16[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  s2_partial_insn = _RAND_17[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  wrong_path = _RAND_18[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  _T_37 = _RAND_19[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  _T_54 = _RAND_20[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge gated_clock) begin
    s1_valid <= io_cpu_req_valid | s0_fq_has_space;
    if (reset) begin
      s2_valid <= 1'h0;
    end else begin
      s2_valid <= _GEN_0;
    end
    s1_pc <= io_cpu_npc;
    if (io_cpu_req_valid) begin
      s1_speculative <= io_cpu_req_bits_speculative;
    end else begin
      if (s2_replay) begin
        s1_speculative <= s2_speculative;
      end else begin
        s1_speculative <= s0_speculative;
      end
    end
    if (reset) begin
      s2_pc <= 32'h10040;
    end else begin
      if (_T_44) begin
        s2_pc <= s1_pc;
      end
    end
    if (_T_44) begin
      s2_btb_resp_valid <= btb_io_resp_valid;
    end
    if (_T_44) begin
      s2_btb_resp_bits_taken <= btb_io_resp_bits_taken;
    end
    if (_T_44) begin
      s2_btb_resp_bits_bridx <= btb_io_resp_bits_bridx;
    end
    if (_T_44) begin
      s2_btb_resp_bits_entry <= btb_io_resp_bits_entry;
    end
    if (_T_44) begin
      s2_btb_resp_bits_bht_history <= btb_io_resp_bits_bht_history;
    end
    if (_T_44) begin
      s2_btb_resp_bits_bht_value <= btb_io_resp_bits_bht_value;
    end
    if (_T_44) begin
      s2_tlb_resp_miss <= tlb_io_resp_miss;
    end
    if (_T_44) begin
      s2_tlb_resp_pf_inst <= tlb_io_resp_pf_inst;
    end
    if (_T_44) begin
      s2_tlb_resp_ae_inst <= tlb_io_resp_ae_inst;
    end
    if (_T_44) begin
      s2_tlb_resp_cacheable <= tlb_io_resp_cacheable;
    end
    if (reset) begin
      s2_speculative <= 1'h0;
    end else begin
      if (_T_44) begin
        s2_speculative <= s1_speculative;
      end
    end
    if (reset) begin
      s2_partial_insn_valid <= 1'h0;
    end else begin
      if (s2_redirect) begin
        s2_partial_insn_valid <= 1'h0;
      end else begin
        if (_T_632) begin
          s2_partial_insn_valid <= 1'h0;
        end else begin
          if (_T_32) begin
            s2_partial_insn_valid <= _T_628;
          end
        end
      end
    end
    if (_T_32) begin
      if (_T_628) begin
        s2_partial_insn <= _T_629;
      end
    end
    if (io_cpu_req_valid) begin
      wrong_path <= 1'h0;
    end else begin
      if (taken_idx) begin
        if (_T_592) begin
          wrong_path <= _GEN_77;
        end else begin
          wrong_path <= _GEN_76;
        end
      end else begin
        wrong_path <= _GEN_76;
      end
    end
    _T_37 <= reset | _T_36;
    _T_54 <= s1_valid;
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_10) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Frontend.scala:89 assert(!(io.cpu.req.valid || io.cpu.sfence.valid || io.cpu.flush_icache || io.cpu.bht_update.valid || io.cpu.btb_update.valid) || io.cpu.might_request)\n"); // @[Frontend.scala 89:9:freechips.rocketchip.system.DefaultRV32Config.fir@137229.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_10) begin
          $fatal; // @[Frontend.scala 89:9:freechips.rocketchip.system.DefaultRV32Config.fir@137230.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_640) begin
          $fwrite(32'h80000002,"Assertion failed\n    at Frontend.scala:319 assert(!s2_partial_insn_valid || fq.io.enq.bits.mask(0))\n"); // @[Frontend.scala 319:11:freechips.rocketchip.system.DefaultRV32Config.fir@138122.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_640) begin
          $fatal; // @[Frontend.scala 319:11:freechips.rocketchip.system.DefaultRV32Config.fir@138123.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
`endif // __Frontend

