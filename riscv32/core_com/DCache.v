`include "include_module.v"
`ifdef __DCache
module DCache( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123300.2]
  input         gated_clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123301.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123302.4]
  input         auto_out_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123303.4]
  output        auto_out_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123303.4]
  output [2:0]  auto_out_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123303.4]
  output [2:0]  auto_out_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123303.4]
  output [3:0]  auto_out_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123303.4]
  output        auto_out_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123303.4]
  output [31:0] auto_out_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123303.4]
  output [3:0]  auto_out_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123303.4]
  output [31:0] auto_out_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123303.4]
  output        auto_out_b_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123303.4]
  input         auto_out_b_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123303.4]
  input  [1:0]  auto_out_b_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123303.4]
  input  [3:0]  auto_out_b_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123303.4]
  input         auto_out_b_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123303.4]
  input  [31:0] auto_out_b_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123303.4]
  input         auto_out_c_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123303.4]
  output        auto_out_c_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123303.4]
  output [2:0]  auto_out_c_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123303.4]
  output [2:0]  auto_out_c_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123303.4]
  output [3:0]  auto_out_c_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123303.4]
  output        auto_out_c_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123303.4]
  output [31:0] auto_out_c_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123303.4]
  output [31:0] auto_out_c_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123303.4]
  output        auto_out_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123303.4]
  input         auto_out_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123303.4]
  input  [2:0]  auto_out_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123303.4]
  input  [1:0]  auto_out_d_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123303.4]
  input  [3:0]  auto_out_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123303.4]
  input         auto_out_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123303.4]
  input  [1:0]  auto_out_d_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123303.4]
  input         auto_out_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123303.4]
  input  [31:0] auto_out_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123303.4]
  input         auto_out_e_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123303.4]
  output        auto_out_e_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123303.4]
  output [1:0]  auto_out_e_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123303.4]
  output        io_cpu_req_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input         io_cpu_req_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input  [31:0] io_cpu_req_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input  [6:0]  io_cpu_req_bits_tag, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input  [4:0]  io_cpu_req_bits_cmd, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input  [1:0]  io_cpu_req_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input         io_cpu_req_bits_signed, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input         io_cpu_req_bits_phys, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input         io_cpu_s1_kill, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input  [31:0] io_cpu_s1_data_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input  [3:0]  io_cpu_s1_data_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  output        io_cpu_s2_nack, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  output        io_cpu_resp_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  output [31:0] io_cpu_resp_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  output [6:0]  io_cpu_resp_bits_tag, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  output [4:0]  io_cpu_resp_bits_cmd, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  output [1:0]  io_cpu_resp_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  output        io_cpu_resp_bits_signed, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  output [31:0] io_cpu_resp_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  output [3:0]  io_cpu_resp_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  output        io_cpu_resp_bits_replay, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  output        io_cpu_resp_bits_has_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  output [31:0] io_cpu_resp_bits_data_word_bypass, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  output [31:0] io_cpu_resp_bits_data_raw, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  output [31:0] io_cpu_resp_bits_store_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  output        io_cpu_replay_next, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  output        io_cpu_s2_xcpt_ma_ld, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  output        io_cpu_s2_xcpt_ma_st, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  output        io_cpu_s2_xcpt_pf_ld, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  output        io_cpu_s2_xcpt_pf_st, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  output        io_cpu_s2_xcpt_ae_ld, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  output        io_cpu_s2_xcpt_ae_st, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  output        io_cpu_ordered, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  output        io_cpu_perf_release, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  output        io_cpu_perf_grant, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input         io_ptw_req_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  output        io_ptw_req_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  output [19:0] io_ptw_req_bits_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input         io_ptw_resp_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input         io_ptw_resp_bits_ae, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input  [53:0] io_ptw_resp_bits_pte_ppn, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input         io_ptw_resp_bits_pte_d, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input         io_ptw_resp_bits_pte_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input         io_ptw_resp_bits_pte_g, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input         io_ptw_resp_bits_pte_u, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input         io_ptw_resp_bits_pte_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input         io_ptw_resp_bits_pte_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input         io_ptw_resp_bits_pte_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input         io_ptw_resp_bits_pte_v, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input         io_ptw_resp_bits_level, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input         io_ptw_resp_bits_homogeneous, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input         io_ptw_ptbr_mode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input         io_ptw_status_debug, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input  [1:0]  io_ptw_status_dprv, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input         io_ptw_status_mxr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input         io_ptw_status_sum, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input         io_ptw_pmp_0_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input  [1:0]  io_ptw_pmp_0_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input         io_ptw_pmp_0_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input         io_ptw_pmp_0_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input         io_ptw_pmp_0_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input  [29:0] io_ptw_pmp_0_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input  [31:0] io_ptw_pmp_0_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input         io_ptw_pmp_1_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input  [1:0]  io_ptw_pmp_1_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input         io_ptw_pmp_1_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input         io_ptw_pmp_1_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input         io_ptw_pmp_1_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input  [29:0] io_ptw_pmp_1_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input  [31:0] io_ptw_pmp_1_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input         io_ptw_pmp_2_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input  [1:0]  io_ptw_pmp_2_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input         io_ptw_pmp_2_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input         io_ptw_pmp_2_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input         io_ptw_pmp_2_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input  [29:0] io_ptw_pmp_2_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input  [31:0] io_ptw_pmp_2_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input         io_ptw_pmp_3_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input  [1:0]  io_ptw_pmp_3_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input         io_ptw_pmp_3_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input         io_ptw_pmp_3_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input         io_ptw_pmp_3_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input  [29:0] io_ptw_pmp_3_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input  [31:0] io_ptw_pmp_3_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input         io_ptw_pmp_4_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input  [1:0]  io_ptw_pmp_4_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input         io_ptw_pmp_4_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input         io_ptw_pmp_4_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input         io_ptw_pmp_4_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input  [29:0] io_ptw_pmp_4_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input  [31:0] io_ptw_pmp_4_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input         io_ptw_pmp_5_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input  [1:0]  io_ptw_pmp_5_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input         io_ptw_pmp_5_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input         io_ptw_pmp_5_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input         io_ptw_pmp_5_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input  [29:0] io_ptw_pmp_5_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input  [31:0] io_ptw_pmp_5_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input         io_ptw_pmp_6_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input  [1:0]  io_ptw_pmp_6_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input         io_ptw_pmp_6_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input         io_ptw_pmp_6_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input         io_ptw_pmp_6_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input  [29:0] io_ptw_pmp_6_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input  [31:0] io_ptw_pmp_6_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input         io_ptw_pmp_7_cfg_l, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input  [1:0]  io_ptw_pmp_7_cfg_a, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input         io_ptw_pmp_7_cfg_x, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input         io_ptw_pmp_7_cfg_w, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input         io_ptw_pmp_7_cfg_r, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input  [29:0] io_ptw_pmp_7_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
  input  [31:0] io_ptw_pmp_7_mask // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123304.4]
);
  wire  MaxPeriodFibonacciLFSR_clock; // @[PRNG.scala 82:22:freechips.rocketchip.system.DefaultRV32Config.fir@123318.4]
  wire  MaxPeriodFibonacciLFSR_reset; // @[PRNG.scala 82:22:freechips.rocketchip.system.DefaultRV32Config.fir@123318.4]
  wire  MaxPeriodFibonacciLFSR_io_increment; // @[PRNG.scala 82:22:freechips.rocketchip.system.DefaultRV32Config.fir@123318.4]
  wire  MaxPeriodFibonacciLFSR_io_out_0; // @[PRNG.scala 82:22:freechips.rocketchip.system.DefaultRV32Config.fir@123318.4]
  wire  MaxPeriodFibonacciLFSR_io_out_1; // @[PRNG.scala 82:22:freechips.rocketchip.system.DefaultRV32Config.fir@123318.4]
  wire  MaxPeriodFibonacciLFSR_io_out_2; // @[PRNG.scala 82:22:freechips.rocketchip.system.DefaultRV32Config.fir@123318.4]
  wire  MaxPeriodFibonacciLFSR_io_out_3; // @[PRNG.scala 82:22:freechips.rocketchip.system.DefaultRV32Config.fir@123318.4]
  wire  MaxPeriodFibonacciLFSR_io_out_4; // @[PRNG.scala 82:22:freechips.rocketchip.system.DefaultRV32Config.fir@123318.4]
  wire  MaxPeriodFibonacciLFSR_io_out_5; // @[PRNG.scala 82:22:freechips.rocketchip.system.DefaultRV32Config.fir@123318.4]
  wire  MaxPeriodFibonacciLFSR_io_out_6; // @[PRNG.scala 82:22:freechips.rocketchip.system.DefaultRV32Config.fir@123318.4]
  wire  MaxPeriodFibonacciLFSR_io_out_7; // @[PRNG.scala 82:22:freechips.rocketchip.system.DefaultRV32Config.fir@123318.4]
  wire  MaxPeriodFibonacciLFSR_io_out_8; // @[PRNG.scala 82:22:freechips.rocketchip.system.DefaultRV32Config.fir@123318.4]
  wire  MaxPeriodFibonacciLFSR_io_out_9; // @[PRNG.scala 82:22:freechips.rocketchip.system.DefaultRV32Config.fir@123318.4]
  wire  MaxPeriodFibonacciLFSR_io_out_10; // @[PRNG.scala 82:22:freechips.rocketchip.system.DefaultRV32Config.fir@123318.4]
  wire  MaxPeriodFibonacciLFSR_io_out_11; // @[PRNG.scala 82:22:freechips.rocketchip.system.DefaultRV32Config.fir@123318.4]
  wire  MaxPeriodFibonacciLFSR_io_out_12; // @[PRNG.scala 82:22:freechips.rocketchip.system.DefaultRV32Config.fir@123318.4]
  wire  MaxPeriodFibonacciLFSR_io_out_13; // @[PRNG.scala 82:22:freechips.rocketchip.system.DefaultRV32Config.fir@123318.4]
  wire  MaxPeriodFibonacciLFSR_io_out_14; // @[PRNG.scala 82:22:freechips.rocketchip.system.DefaultRV32Config.fir@123318.4]
  wire  MaxPeriodFibonacciLFSR_io_out_15; // @[PRNG.scala 82:22:freechips.rocketchip.system.DefaultRV32Config.fir@123318.4]
  wire  metaArb_io_in_0_valid; // @[DCache.scala 107:23:freechips.rocketchip.system.DefaultRV32Config.fir@123402.4]
  wire [31:0] metaArb_io_in_0_bits_addr; // @[DCache.scala 107:23:freechips.rocketchip.system.DefaultRV32Config.fir@123402.4]
  wire [5:0] metaArb_io_in_0_bits_idx; // @[DCache.scala 107:23:freechips.rocketchip.system.DefaultRV32Config.fir@123402.4]
  wire [21:0] metaArb_io_in_0_bits_data; // @[DCache.scala 107:23:freechips.rocketchip.system.DefaultRV32Config.fir@123402.4]
  wire  metaArb_io_in_2_valid; // @[DCache.scala 107:23:freechips.rocketchip.system.DefaultRV32Config.fir@123402.4]
  wire [31:0] metaArb_io_in_2_bits_addr; // @[DCache.scala 107:23:freechips.rocketchip.system.DefaultRV32Config.fir@123402.4]
  wire [5:0] metaArb_io_in_2_bits_idx; // @[DCache.scala 107:23:freechips.rocketchip.system.DefaultRV32Config.fir@123402.4]
  wire [3:0] metaArb_io_in_2_bits_way_en; // @[DCache.scala 107:23:freechips.rocketchip.system.DefaultRV32Config.fir@123402.4]
  wire [21:0] metaArb_io_in_2_bits_data; // @[DCache.scala 107:23:freechips.rocketchip.system.DefaultRV32Config.fir@123402.4]
  wire  metaArb_io_in_3_valid; // @[DCache.scala 107:23:freechips.rocketchip.system.DefaultRV32Config.fir@123402.4]
  wire [31:0] metaArb_io_in_3_bits_addr; // @[DCache.scala 107:23:freechips.rocketchip.system.DefaultRV32Config.fir@123402.4]
  wire [5:0] metaArb_io_in_3_bits_idx; // @[DCache.scala 107:23:freechips.rocketchip.system.DefaultRV32Config.fir@123402.4]
  wire [3:0] metaArb_io_in_3_bits_way_en; // @[DCache.scala 107:23:freechips.rocketchip.system.DefaultRV32Config.fir@123402.4]
  wire [21:0] metaArb_io_in_3_bits_data; // @[DCache.scala 107:23:freechips.rocketchip.system.DefaultRV32Config.fir@123402.4]
  wire  metaArb_io_in_4_ready; // @[DCache.scala 107:23:freechips.rocketchip.system.DefaultRV32Config.fir@123402.4]
  wire  metaArb_io_in_4_valid; // @[DCache.scala 107:23:freechips.rocketchip.system.DefaultRV32Config.fir@123402.4]
  wire [31:0] metaArb_io_in_4_bits_addr; // @[DCache.scala 107:23:freechips.rocketchip.system.DefaultRV32Config.fir@123402.4]
  wire [5:0] metaArb_io_in_4_bits_idx; // @[DCache.scala 107:23:freechips.rocketchip.system.DefaultRV32Config.fir@123402.4]
  wire [3:0] metaArb_io_in_4_bits_way_en; // @[DCache.scala 107:23:freechips.rocketchip.system.DefaultRV32Config.fir@123402.4]
  wire [21:0] metaArb_io_in_4_bits_data; // @[DCache.scala 107:23:freechips.rocketchip.system.DefaultRV32Config.fir@123402.4]
  wire  metaArb_io_in_5_ready; // @[DCache.scala 107:23:freechips.rocketchip.system.DefaultRV32Config.fir@123402.4]
  wire  metaArb_io_in_5_valid; // @[DCache.scala 107:23:freechips.rocketchip.system.DefaultRV32Config.fir@123402.4]
  wire [31:0] metaArb_io_in_5_bits_addr; // @[DCache.scala 107:23:freechips.rocketchip.system.DefaultRV32Config.fir@123402.4]
  wire [5:0] metaArb_io_in_5_bits_idx; // @[DCache.scala 107:23:freechips.rocketchip.system.DefaultRV32Config.fir@123402.4]
  wire  metaArb_io_in_6_ready; // @[DCache.scala 107:23:freechips.rocketchip.system.DefaultRV32Config.fir@123402.4]
  wire  metaArb_io_in_6_valid; // @[DCache.scala 107:23:freechips.rocketchip.system.DefaultRV32Config.fir@123402.4]
  wire [31:0] metaArb_io_in_6_bits_addr; // @[DCache.scala 107:23:freechips.rocketchip.system.DefaultRV32Config.fir@123402.4]
  wire [5:0] metaArb_io_in_6_bits_idx; // @[DCache.scala 107:23:freechips.rocketchip.system.DefaultRV32Config.fir@123402.4]
  wire [3:0] metaArb_io_in_6_bits_way_en; // @[DCache.scala 107:23:freechips.rocketchip.system.DefaultRV32Config.fir@123402.4]
  wire [21:0] metaArb_io_in_6_bits_data; // @[DCache.scala 107:23:freechips.rocketchip.system.DefaultRV32Config.fir@123402.4]
  wire  metaArb_io_in_7_ready; // @[DCache.scala 107:23:freechips.rocketchip.system.DefaultRV32Config.fir@123402.4]
  wire  metaArb_io_in_7_valid; // @[DCache.scala 107:23:freechips.rocketchip.system.DefaultRV32Config.fir@123402.4]
  wire [31:0] metaArb_io_in_7_bits_addr; // @[DCache.scala 107:23:freechips.rocketchip.system.DefaultRV32Config.fir@123402.4]
  wire [5:0] metaArb_io_in_7_bits_idx; // @[DCache.scala 107:23:freechips.rocketchip.system.DefaultRV32Config.fir@123402.4]
  wire [3:0] metaArb_io_in_7_bits_way_en; // @[DCache.scala 107:23:freechips.rocketchip.system.DefaultRV32Config.fir@123402.4]
  wire [21:0] metaArb_io_in_7_bits_data; // @[DCache.scala 107:23:freechips.rocketchip.system.DefaultRV32Config.fir@123402.4]
  wire  metaArb_io_out_valid; // @[DCache.scala 107:23:freechips.rocketchip.system.DefaultRV32Config.fir@123402.4]
  wire  metaArb_io_out_bits_write; // @[DCache.scala 107:23:freechips.rocketchip.system.DefaultRV32Config.fir@123402.4]
  wire [31:0] metaArb_io_out_bits_addr; // @[DCache.scala 107:23:freechips.rocketchip.system.DefaultRV32Config.fir@123402.4]
  wire [5:0] metaArb_io_out_bits_idx; // @[DCache.scala 107:23:freechips.rocketchip.system.DefaultRV32Config.fir@123402.4]
  wire [3:0] metaArb_io_out_bits_way_en; // @[DCache.scala 107:23:freechips.rocketchip.system.DefaultRV32Config.fir@123402.4]
  wire [21:0] metaArb_io_out_bits_data; // @[DCache.scala 107:23:freechips.rocketchip.system.DefaultRV32Config.fir@123402.4]
  wire [5:0] tag_array_RW0_addr; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@123406.4]
  wire  tag_array_RW0_en; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@123406.4]
  wire  tag_array_RW0_clk; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@123406.4]
  wire  tag_array_RW0_wmode; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@123406.4]
  wire [21:0] tag_array_RW0_wdata_0; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@123406.4]
  wire [21:0] tag_array_RW0_wdata_1; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@123406.4]
  wire [21:0] tag_array_RW0_wdata_2; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@123406.4]
  wire [21:0] tag_array_RW0_wdata_3; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@123406.4]
  wire [21:0] tag_array_RW0_rdata_0; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@123406.4]
  wire [21:0] tag_array_RW0_rdata_1; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@123406.4]
  wire [21:0] tag_array_RW0_rdata_2; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@123406.4]
  wire [21:0] tag_array_RW0_rdata_3; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@123406.4]
  wire  tag_array_RW0_wmask_0; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@123406.4]
  wire  tag_array_RW0_wmask_1; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@123406.4]
  wire  tag_array_RW0_wmask_2; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@123406.4]
  wire  tag_array_RW0_wmask_3; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@123406.4]
  wire  data_clock; // @[DCache.scala 117:20:freechips.rocketchip.system.DefaultRV32Config.fir@123407.4]
  wire  data_io_req_valid; // @[DCache.scala 117:20:freechips.rocketchip.system.DefaultRV32Config.fir@123407.4]
  wire [11:0] data_io_req_bits_addr; // @[DCache.scala 117:20:freechips.rocketchip.system.DefaultRV32Config.fir@123407.4]
  wire  data_io_req_bits_write; // @[DCache.scala 117:20:freechips.rocketchip.system.DefaultRV32Config.fir@123407.4]
  wire [31:0] data_io_req_bits_wdata; // @[DCache.scala 117:20:freechips.rocketchip.system.DefaultRV32Config.fir@123407.4]
  wire [3:0] data_io_req_bits_eccMask; // @[DCache.scala 117:20:freechips.rocketchip.system.DefaultRV32Config.fir@123407.4]
  wire [3:0] data_io_req_bits_way_en; // @[DCache.scala 117:20:freechips.rocketchip.system.DefaultRV32Config.fir@123407.4]
  wire [31:0] data_io_resp_0; // @[DCache.scala 117:20:freechips.rocketchip.system.DefaultRV32Config.fir@123407.4]
  wire [31:0] data_io_resp_1; // @[DCache.scala 117:20:freechips.rocketchip.system.DefaultRV32Config.fir@123407.4]
  wire [31:0] data_io_resp_2; // @[DCache.scala 117:20:freechips.rocketchip.system.DefaultRV32Config.fir@123407.4]
  wire [31:0] data_io_resp_3; // @[DCache.scala 117:20:freechips.rocketchip.system.DefaultRV32Config.fir@123407.4]
  wire  dataArb_io_in_0_valid; // @[DCache.scala 118:23:freechips.rocketchip.system.DefaultRV32Config.fir@123411.4]
  wire [11:0] dataArb_io_in_0_bits_addr; // @[DCache.scala 118:23:freechips.rocketchip.system.DefaultRV32Config.fir@123411.4]
  wire  dataArb_io_in_0_bits_write; // @[DCache.scala 118:23:freechips.rocketchip.system.DefaultRV32Config.fir@123411.4]
  wire [31:0] dataArb_io_in_0_bits_wdata; // @[DCache.scala 118:23:freechips.rocketchip.system.DefaultRV32Config.fir@123411.4]
  wire [3:0] dataArb_io_in_0_bits_eccMask; // @[DCache.scala 118:23:freechips.rocketchip.system.DefaultRV32Config.fir@123411.4]
  wire [3:0] dataArb_io_in_0_bits_way_en; // @[DCache.scala 118:23:freechips.rocketchip.system.DefaultRV32Config.fir@123411.4]
  wire  dataArb_io_in_1_ready; // @[DCache.scala 118:23:freechips.rocketchip.system.DefaultRV32Config.fir@123411.4]
  wire  dataArb_io_in_1_valid; // @[DCache.scala 118:23:freechips.rocketchip.system.DefaultRV32Config.fir@123411.4]
  wire [11:0] dataArb_io_in_1_bits_addr; // @[DCache.scala 118:23:freechips.rocketchip.system.DefaultRV32Config.fir@123411.4]
  wire  dataArb_io_in_1_bits_write; // @[DCache.scala 118:23:freechips.rocketchip.system.DefaultRV32Config.fir@123411.4]
  wire [31:0] dataArb_io_in_1_bits_wdata; // @[DCache.scala 118:23:freechips.rocketchip.system.DefaultRV32Config.fir@123411.4]
  wire [3:0] dataArb_io_in_1_bits_eccMask; // @[DCache.scala 118:23:freechips.rocketchip.system.DefaultRV32Config.fir@123411.4]
  wire [3:0] dataArb_io_in_1_bits_way_en; // @[DCache.scala 118:23:freechips.rocketchip.system.DefaultRV32Config.fir@123411.4]
  wire  dataArb_io_in_2_ready; // @[DCache.scala 118:23:freechips.rocketchip.system.DefaultRV32Config.fir@123411.4]
  wire  dataArb_io_in_2_valid; // @[DCache.scala 118:23:freechips.rocketchip.system.DefaultRV32Config.fir@123411.4]
  wire [11:0] dataArb_io_in_2_bits_addr; // @[DCache.scala 118:23:freechips.rocketchip.system.DefaultRV32Config.fir@123411.4]
  wire [31:0] dataArb_io_in_2_bits_wdata; // @[DCache.scala 118:23:freechips.rocketchip.system.DefaultRV32Config.fir@123411.4]
  wire [3:0] dataArb_io_in_2_bits_eccMask; // @[DCache.scala 118:23:freechips.rocketchip.system.DefaultRV32Config.fir@123411.4]
  wire  dataArb_io_in_3_ready; // @[DCache.scala 118:23:freechips.rocketchip.system.DefaultRV32Config.fir@123411.4]
  wire  dataArb_io_in_3_valid; // @[DCache.scala 118:23:freechips.rocketchip.system.DefaultRV32Config.fir@123411.4]
  wire [11:0] dataArb_io_in_3_bits_addr; // @[DCache.scala 118:23:freechips.rocketchip.system.DefaultRV32Config.fir@123411.4]
  wire [31:0] dataArb_io_in_3_bits_wdata; // @[DCache.scala 118:23:freechips.rocketchip.system.DefaultRV32Config.fir@123411.4]
  wire [3:0] dataArb_io_in_3_bits_eccMask; // @[DCache.scala 118:23:freechips.rocketchip.system.DefaultRV32Config.fir@123411.4]
  wire  dataArb_io_out_valid; // @[DCache.scala 118:23:freechips.rocketchip.system.DefaultRV32Config.fir@123411.4]
  wire [11:0] dataArb_io_out_bits_addr; // @[DCache.scala 118:23:freechips.rocketchip.system.DefaultRV32Config.fir@123411.4]
  wire  dataArb_io_out_bits_write; // @[DCache.scala 118:23:freechips.rocketchip.system.DefaultRV32Config.fir@123411.4]
  wire [31:0] dataArb_io_out_bits_wdata; // @[DCache.scala 118:23:freechips.rocketchip.system.DefaultRV32Config.fir@123411.4]
  wire [3:0] dataArb_io_out_bits_eccMask; // @[DCache.scala 118:23:freechips.rocketchip.system.DefaultRV32Config.fir@123411.4]
  wire [3:0] dataArb_io_out_bits_way_en; // @[DCache.scala 118:23:freechips.rocketchip.system.DefaultRV32Config.fir@123411.4]
  wire  tlb_clock; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire  tlb_reset; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire  tlb_io_req_ready; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire  tlb_io_req_valid; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire [31:0] tlb_io_req_bits_vaddr; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire  tlb_io_req_bits_passthrough; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire [1:0] tlb_io_req_bits_size; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire [4:0] tlb_io_req_bits_cmd; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire  tlb_io_resp_miss; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire [31:0] tlb_io_resp_paddr; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire  tlb_io_resp_pf_ld; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire  tlb_io_resp_pf_st; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire  tlb_io_resp_ae_ld; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire  tlb_io_resp_ae_st; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire  tlb_io_resp_ma_ld; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire  tlb_io_resp_ma_st; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire  tlb_io_resp_cacheable; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire  tlb_io_sfence_valid; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire  tlb_io_sfence_bits_rs1; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire  tlb_io_sfence_bits_rs2; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire [31:0] tlb_io_sfence_bits_addr; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire  tlb_io_ptw_req_ready; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire  tlb_io_ptw_req_valid; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire [19:0] tlb_io_ptw_req_bits_bits_addr; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire  tlb_io_ptw_resp_valid; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire  tlb_io_ptw_resp_bits_ae; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire [53:0] tlb_io_ptw_resp_bits_pte_ppn; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire  tlb_io_ptw_resp_bits_pte_d; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire  tlb_io_ptw_resp_bits_pte_a; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire  tlb_io_ptw_resp_bits_pte_g; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire  tlb_io_ptw_resp_bits_pte_u; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire  tlb_io_ptw_resp_bits_pte_x; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire  tlb_io_ptw_resp_bits_pte_w; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire  tlb_io_ptw_resp_bits_pte_r; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire  tlb_io_ptw_resp_bits_pte_v; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire  tlb_io_ptw_resp_bits_level; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire  tlb_io_ptw_resp_bits_homogeneous; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire  tlb_io_ptw_ptbr_mode; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire  tlb_io_ptw_status_debug; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire [1:0] tlb_io_ptw_status_dprv; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire  tlb_io_ptw_status_mxr; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire  tlb_io_ptw_status_sum; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire  tlb_io_ptw_pmp_0_cfg_l; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire [1:0] tlb_io_ptw_pmp_0_cfg_a; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire  tlb_io_ptw_pmp_0_cfg_x; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire  tlb_io_ptw_pmp_0_cfg_w; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire  tlb_io_ptw_pmp_0_cfg_r; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire [29:0] tlb_io_ptw_pmp_0_addr; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire [31:0] tlb_io_ptw_pmp_0_mask; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire  tlb_io_ptw_pmp_1_cfg_l; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire [1:0] tlb_io_ptw_pmp_1_cfg_a; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire  tlb_io_ptw_pmp_1_cfg_x; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire  tlb_io_ptw_pmp_1_cfg_w; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire  tlb_io_ptw_pmp_1_cfg_r; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire [29:0] tlb_io_ptw_pmp_1_addr; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire [31:0] tlb_io_ptw_pmp_1_mask; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire  tlb_io_ptw_pmp_2_cfg_l; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire [1:0] tlb_io_ptw_pmp_2_cfg_a; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire  tlb_io_ptw_pmp_2_cfg_x; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire  tlb_io_ptw_pmp_2_cfg_w; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire  tlb_io_ptw_pmp_2_cfg_r; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire [29:0] tlb_io_ptw_pmp_2_addr; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire [31:0] tlb_io_ptw_pmp_2_mask; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire  tlb_io_ptw_pmp_3_cfg_l; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire [1:0] tlb_io_ptw_pmp_3_cfg_a; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire  tlb_io_ptw_pmp_3_cfg_x; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire  tlb_io_ptw_pmp_3_cfg_w; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire  tlb_io_ptw_pmp_3_cfg_r; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire [29:0] tlb_io_ptw_pmp_3_addr; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire [31:0] tlb_io_ptw_pmp_3_mask; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire  tlb_io_ptw_pmp_4_cfg_l; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire [1:0] tlb_io_ptw_pmp_4_cfg_a; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire  tlb_io_ptw_pmp_4_cfg_x; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire  tlb_io_ptw_pmp_4_cfg_w; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire  tlb_io_ptw_pmp_4_cfg_r; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire [29:0] tlb_io_ptw_pmp_4_addr; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire [31:0] tlb_io_ptw_pmp_4_mask; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire  tlb_io_ptw_pmp_5_cfg_l; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire [1:0] tlb_io_ptw_pmp_5_cfg_a; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire  tlb_io_ptw_pmp_5_cfg_x; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire  tlb_io_ptw_pmp_5_cfg_w; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire  tlb_io_ptw_pmp_5_cfg_r; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire [29:0] tlb_io_ptw_pmp_5_addr; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire [31:0] tlb_io_ptw_pmp_5_mask; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire  tlb_io_ptw_pmp_6_cfg_l; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire [1:0] tlb_io_ptw_pmp_6_cfg_a; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire  tlb_io_ptw_pmp_6_cfg_x; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire  tlb_io_ptw_pmp_6_cfg_w; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire  tlb_io_ptw_pmp_6_cfg_r; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire [29:0] tlb_io_ptw_pmp_6_addr; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire [31:0] tlb_io_ptw_pmp_6_mask; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire  tlb_io_ptw_pmp_7_cfg_l; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire [1:0] tlb_io_ptw_pmp_7_cfg_a; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire  tlb_io_ptw_pmp_7_cfg_x; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire  tlb_io_ptw_pmp_7_cfg_w; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire  tlb_io_ptw_pmp_7_cfg_r; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire [29:0] tlb_io_ptw_pmp_7_addr; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire [31:0] tlb_io_ptw_pmp_7_mask; // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
  wire [3:0] amoalu_io_mask; // @[DCache.scala 811:24:freechips.rocketchip.system.DefaultRV32Config.fir@126903.4]
  wire [4:0] amoalu_io_cmd; // @[DCache.scala 811:24:freechips.rocketchip.system.DefaultRV32Config.fir@126903.4]
  wire [31:0] amoalu_io_lhs; // @[DCache.scala 811:24:freechips.rocketchip.system.DefaultRV32Config.fir@126903.4]
  wire [31:0] amoalu_io_rhs; // @[DCache.scala 811:24:freechips.rocketchip.system.DefaultRV32Config.fir@126903.4]
  wire [31:0] amoalu_io_out; // @[DCache.scala 811:24:freechips.rocketchip.system.DefaultRV32Config.fir@126903.4]
  wire [7:0] _T_7; // @[PRNG.scala 86:17:freechips.rocketchip.system.DefaultRV32Config.fir@123345.4]
  wire [15:0] _T_15; // @[PRNG.scala 86:17:freechips.rocketchip.system.DefaultRV32Config.fir@123353.4]
  wire  _T_16; // @[LFSR.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@123354.4]
  wire  _T_17; // @[LFSR.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@123355.4]
  wire  _T_18; // @[LFSR.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@123356.4]
  wire  _T_19; // @[LFSR.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@123357.4]
  wire  _T_20; // @[LFSR.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@123358.4]
  wire  _T_21; // @[LFSR.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@123359.4]
  wire  _T_22; // @[LFSR.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@123360.4]
  wire  _T_23; // @[LFSR.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@123361.4]
  wire  _T_24; // @[LFSR.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@123362.4]
  wire  _T_25; // @[LFSR.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@123363.4]
  wire  _T_26; // @[LFSR.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@123364.4]
  wire  _T_27; // @[LFSR.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@123365.4]
  wire  _T_28; // @[LFSR.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@123366.4]
  wire  _T_29; // @[LFSR.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@123367.4]
  wire  _T_30; // @[LFSR.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@123368.4]
  wire  _T_31; // @[LFSR.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@123369.4]
  wire [7:0] _T_39; // @[LFSR.scala 43:8:freechips.rocketchip.system.DefaultRV32Config.fir@123393.4]
  wire [15:0] _T_47; // @[LFSR.scala 43:8:freechips.rocketchip.system.DefaultRV32Config.fir@123401.4]
  wire  _T_48; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@123435.4]
  reg  s1_valid; // @[DCache.scala 146:21:freechips.rocketchip.system.DefaultRV32Config.fir@123436.4]
  reg [31:0] _RAND_0;
  reg [2:0] blockProbeAfterGrantCount; // @[DCache.scala 543:38:freechips.rocketchip.system.DefaultRV32Config.fir@126270.4]
  reg [31:0] _RAND_1;
  wire  _T_2348; // @[DCache.scala 641:65:freechips.rocketchip.system.DefaultRV32Config.fir@126497.4]
  reg [6:0] lrscCount; // @[DCache.scala 373:22:freechips.rocketchip.system.DefaultRV32Config.fir@124629.4]
  reg [31:0] _RAND_2;
  wire  lrscValid; // @[DCache.scala 374:29:freechips.rocketchip.system.DefaultRV32Config.fir@124630.4]
  wire  block_probe_for_core_progress; // @[DCache.scala 641:69:freechips.rocketchip.system.DefaultRV32Config.fir@126498.4]
  reg  s1_probe; // @[DCache.scala 147:21:freechips.rocketchip.system.DefaultRV32Config.fir@123439.4]
  reg [31:0] _RAND_3;
  reg  s2_probe; // @[DCache.scala 259:21:freechips.rocketchip.system.DefaultRV32Config.fir@123964.4]
  reg [31:0] _RAND_4;
  wire  _T_381; // @[DCache.scala 260:34:freechips.rocketchip.system.DefaultRV32Config.fir@123966.4]
  reg [2:0] release_state; // @[DCache.scala 176:26:freechips.rocketchip.system.DefaultRV32Config.fir@123536.4]
  reg [31:0] _RAND_5;
  wire  _T_382; // @[DCache.scala 260:63:freechips.rocketchip.system.DefaultRV32Config.fir@123967.4]
  wire  releaseInFlight; // @[DCache.scala 260:46:freechips.rocketchip.system.DefaultRV32Config.fir@123968.4]
  reg  release_ack_wait; // @[DCache.scala 173:29:freechips.rocketchip.system.DefaultRV32Config.fir@123532.4]
  reg [31:0] _RAND_6;
  reg [31:0] release_ack_addr; // @[DCache.scala 174:29:freechips.rocketchip.system.DefaultRV32Config.fir@123533.4]
  reg [31:0] _RAND_7;
  wire [31:0] _T_2349; // @[DCache.scala 642:88:freechips.rocketchip.system.DefaultRV32Config.fir@126499.4]
  wire [5:0] _T_2350; // @[DCache.scala 642:107:freechips.rocketchip.system.DefaultRV32Config.fir@126500.4]
  wire  _T_2351; // @[DCache.scala 642:124:freechips.rocketchip.system.DefaultRV32Config.fir@126501.4]
  wire  block_probe_for_pending_release_ack; // @[DCache.scala 642:62:freechips.rocketchip.system.DefaultRV32Config.fir@126502.4]
  wire  _T_2352; // @[DCache.scala 643:50:freechips.rocketchip.system.DefaultRV32Config.fir@126503.4]
  reg  grantInProgress; // @[DCache.scala 542:28:freechips.rocketchip.system.DefaultRV32Config.fir@126269.4]
  reg [31:0] _RAND_8;
  wire  block_probe_for_ordering; // @[DCache.scala 643:89:freechips.rocketchip.system.DefaultRV32Config.fir@126504.4]
  wire  _T_2356; // @[DCache.scala 645:79:freechips.rocketchip.system.DefaultRV32Config.fir@126509.4]
  wire  _T_2357; // @[DCache.scala 645:107:freechips.rocketchip.system.DefaultRV32Config.fir@126510.4]
  reg  s2_valid; // @[DCache.scala 257:21:freechips.rocketchip.system.DefaultRV32Config.fir@123954.4]
  reg [31:0] _RAND_9;
  wire  _T_2358; // @[DCache.scala 645:119:freechips.rocketchip.system.DefaultRV32Config.fir@126511.4]
  wire  _T_2359; // @[DCache.scala 645:47:freechips.rocketchip.system.DefaultRV32Config.fir@126512.4]
  wire  tl_out__b_ready; // @[DCache.scala 645:44:freechips.rocketchip.system.DefaultRV32Config.fir@126513.4]
  wire  _T_49; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@123438.4]
  reg [1:0] probe_bits_param; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@123442.4]
  reg [31:0] _RAND_10;
  reg [3:0] probe_bits_size; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@123442.4]
  reg [31:0] _RAND_11;
  reg  probe_bits_source; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@123442.4]
  reg [31:0] _RAND_12;
  reg [31:0] probe_bits_address; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@123442.4]
  reg [31:0] _RAND_13;
  wire  _T_51; // @[DCache.scala 150:37:freechips.rocketchip.system.DefaultRV32Config.fir@123456.4]
  wire  s1_valid_masked; // @[DCache.scala 150:34:freechips.rocketchip.system.DefaultRV32Config.fir@123457.4]
  reg [1:0] s2_probe_state_state; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@124183.4]
  reg [31:0] _RAND_14;
  wire [3:0] _T_657; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@124401.4]
  wire  _T_714; // @[Misc.scala 54:20:freechips.rocketchip.system.DefaultRV32Config.fir@124458.4]
  wire  _T_710; // @[Misc.scala 54:20:freechips.rocketchip.system.DefaultRV32Config.fir@124454.4]
  wire  _T_706; // @[Misc.scala 54:20:freechips.rocketchip.system.DefaultRV32Config.fir@124450.4]
  wire  _T_702; // @[Misc.scala 54:20:freechips.rocketchip.system.DefaultRV32Config.fir@124446.4]
  wire  _T_698; // @[Misc.scala 54:20:freechips.rocketchip.system.DefaultRV32Config.fir@124442.4]
  wire  _T_694; // @[Misc.scala 54:20:freechips.rocketchip.system.DefaultRV32Config.fir@124438.4]
  wire  _T_690; // @[Misc.scala 54:20:freechips.rocketchip.system.DefaultRV32Config.fir@124434.4]
  wire  _T_686; // @[Misc.scala 54:20:freechips.rocketchip.system.DefaultRV32Config.fir@124430.4]
  wire  _T_682; // @[Misc.scala 54:20:freechips.rocketchip.system.DefaultRV32Config.fir@124426.4]
  wire  _T_678; // @[Misc.scala 54:20:freechips.rocketchip.system.DefaultRV32Config.fir@124422.4]
  wire  _T_674; // @[Misc.scala 54:20:freechips.rocketchip.system.DefaultRV32Config.fir@124418.4]
  wire  _T_670; // @[Misc.scala 54:20:freechips.rocketchip.system.DefaultRV32Config.fir@124414.4]
  wire  _T_687; // @[Misc.scala 36:9:freechips.rocketchip.system.DefaultRV32Config.fir@124431.4]
  wire  _T_691; // @[Misc.scala 36:9:freechips.rocketchip.system.DefaultRV32Config.fir@124435.4]
  wire  _T_695; // @[Misc.scala 36:9:freechips.rocketchip.system.DefaultRV32Config.fir@124439.4]
  wire  _T_699; // @[Misc.scala 36:9:freechips.rocketchip.system.DefaultRV32Config.fir@124443.4]
  wire  _T_703; // @[Misc.scala 36:9:freechips.rocketchip.system.DefaultRV32Config.fir@124447.4]
  wire  _T_707; // @[Misc.scala 36:9:freechips.rocketchip.system.DefaultRV32Config.fir@124451.4]
  wire  _T_711; // @[Misc.scala 36:9:freechips.rocketchip.system.DefaultRV32Config.fir@124455.4]
  wire  s2_prb_ack_data; // @[Misc.scala 36:9:freechips.rocketchip.system.DefaultRV32Config.fir@124459.4]
  wire  _T_2404; // @[Metadata.scala 50:45:freechips.rocketchip.system.DefaultRV32Config.fir@126634.10]
  reg [9:0] _T_2372; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@126531.4]
  reg [31:0] _RAND_15;
  wire  _T_2375; // @[Edges.scala 233:25:freechips.rocketchip.system.DefaultRV32Config.fir@126535.4]
  wire  _T_2415; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@126687.4]
  wire  _T_2416; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@126688.4]
  wire  _T_2417; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@126689.4]
  wire  _T_2414; // @[DCache.scala 710:25:freechips.rocketchip.system.DefaultRV32Config.fir@126680.4]
  wire  _T_2413; // @[DCache.scala 705:25:freechips.rocketchip.system.DefaultRV32Config.fir@126672.4]
  wire [2:0] _GEN_282; // @[DCache.scala 710:48:freechips.rocketchip.system.DefaultRV32Config.fir@126681.4]
  wire [2:0] tl_out__c_bits_opcode; // @[DCache.scala 714:81:freechips.rocketchip.system.DefaultRV32Config.fir@126690.4]
  wire  _T_2370; // @[Edges.scala 103:36:freechips.rocketchip.system.DefaultRV32Config.fir@126529.4]
  wire [3:0] tl_out__c_bits_size; // @[DCache.scala 714:81:freechips.rocketchip.system.DefaultRV32Config.fir@126690.4]
  wire [26:0] _T_2366; // @[package.scala 189:77:freechips.rocketchip.system.DefaultRV32Config.fir@126525.4]
  wire [11:0] _T_2367; // @[package.scala 189:82:freechips.rocketchip.system.DefaultRV32Config.fir@126526.4]
  wire [11:0] _T_2368; // @[package.scala 189:46:freechips.rocketchip.system.DefaultRV32Config.fir@126527.4]
  wire [9:0] _T_2369; // @[Edges.scala 221:59:freechips.rocketchip.system.DefaultRV32Config.fir@126528.4]
  wire [9:0] _T_2371; // @[Edges.scala 222:14:freechips.rocketchip.system.DefaultRV32Config.fir@126530.4]
  wire  _T_2376; // @[Edges.scala 233:47:freechips.rocketchip.system.DefaultRV32Config.fir@126536.4]
  wire  c_last; // @[Edges.scala 233:37:freechips.rocketchip.system.DefaultRV32Config.fir@126537.4]
  wire  _T_2412; // @[DCache.scala 701:25:freechips.rocketchip.system.DefaultRV32Config.fir@126665.4]
  reg  s2_release_data_valid; // @[DCache.scala 656:34:freechips.rocketchip.system.DefaultRV32Config.fir@126552.4]
  reg [31:0] _RAND_16;
  wire  _GEN_231; // @[DCache.scala 679:36:freechips.rocketchip.system.DefaultRV32Config.fir@126630.8]
  wire  _GEN_252; // @[DCache.scala 675:21:freechips.rocketchip.system.DefaultRV32Config.fir@126622.4]
  wire  _GEN_269; // @[DCache.scala 701:47:freechips.rocketchip.system.DefaultRV32Config.fir@126666.4]
  wire  tl_out__c_valid; // @[DCache.scala 705:48:freechips.rocketchip.system.DefaultRV32Config.fir@126673.4]
  wire  _T_2364; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@126523.4]
  wire  releaseDone; // @[Edges.scala 234:22:freechips.rocketchip.system.DefaultRV32Config.fir@126538.4]
  wire  _T_2406; // @[DCache.scala 687:22:freechips.rocketchip.system.DefaultRV32Config.fir@126643.12]
  wire  _GEN_229; // @[DCache.scala 681:45:freechips.rocketchip.system.DefaultRV32Config.fir@126635.10]
  wire  probeNack; // @[DCache.scala 679:36:freechips.rocketchip.system.DefaultRV32Config.fir@126630.8]
  reg [4:0] s1_req_cmd; // @[DCache.scala 152:19:freechips.rocketchip.system.DefaultRV32Config.fir@123460.4]
  reg [31:0] _RAND_17;
  wire  _T_58; // @[Consts.scala 82:31:freechips.rocketchip.system.DefaultRV32Config.fir@123474.4]
  wire  _T_59; // @[Consts.scala 82:48:freechips.rocketchip.system.DefaultRV32Config.fir@123475.4]
  wire  _T_60; // @[Consts.scala 82:41:freechips.rocketchip.system.DefaultRV32Config.fir@123476.4]
  wire  _T_61; // @[Consts.scala 82:65:freechips.rocketchip.system.DefaultRV32Config.fir@123477.4]
  wire  _T_62; // @[Consts.scala 82:58:freechips.rocketchip.system.DefaultRV32Config.fir@123478.4]
  wire  _T_63; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@123479.4]
  wire  _T_64; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@123480.4]
  wire  _T_67; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@123483.4]
  wire  _T_65; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@123481.4]
  wire  _T_68; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@123484.4]
  wire  _T_66; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@123482.4]
  wire  _T_69; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@123485.4]
  wire  _T_70; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@123486.4]
  wire  _T_71; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@123487.4]
  wire  _T_75; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@123491.4]
  wire  _T_72; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@123488.4]
  wire  _T_76; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@123492.4]
  wire  _T_73; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@123489.4]
  wire  _T_77; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@123493.4]
  wire  _T_74; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@123490.4]
  wire  _T_78; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@123494.4]
  wire  _T_79; // @[Consts.scala 80:44:freechips.rocketchip.system.DefaultRV32Config.fir@123495.4]
  wire  s1_read; // @[Consts.scala 82:75:freechips.rocketchip.system.DefaultRV32Config.fir@123496.4]
  reg [4:0] s2_req_cmd; // @[DCache.scala 263:19:freechips.rocketchip.system.DefaultRV32Config.fir@123975.4]
  reg [31:0] _RAND_18;
  wire  _T_418; // @[Consts.scala 83:32:freechips.rocketchip.system.DefaultRV32Config.fir@124022.4]
  wire  _T_419; // @[Consts.scala 83:49:freechips.rocketchip.system.DefaultRV32Config.fir@124023.4]
  wire  _T_420; // @[Consts.scala 83:42:freechips.rocketchip.system.DefaultRV32Config.fir@124024.4]
  wire  _T_421; // @[Consts.scala 83:66:freechips.rocketchip.system.DefaultRV32Config.fir@124025.4]
  wire  _T_422; // @[Consts.scala 83:59:freechips.rocketchip.system.DefaultRV32Config.fir@124026.4]
  wire  _T_423; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@124027.4]
  wire  _T_424; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@124028.4]
  wire  _T_427; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@124031.4]
  wire  _T_425; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@124029.4]
  wire  _T_428; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@124032.4]
  wire  _T_426; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@124030.4]
  wire  _T_429; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@124033.4]
  wire  _T_430; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@124034.4]
  wire  _T_431; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@124035.4]
  wire  _T_435; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@124039.4]
  wire  _T_432; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@124036.4]
  wire  _T_436; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@124040.4]
  wire  _T_433; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@124037.4]
  wire  _T_437; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@124041.4]
  wire  _T_434; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@124038.4]
  wire  _T_438; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@124042.4]
  wire  _T_439; // @[Consts.scala 80:44:freechips.rocketchip.system.DefaultRV32Config.fir@124043.4]
  wire  s2_write; // @[Consts.scala 83:76:freechips.rocketchip.system.DefaultRV32Config.fir@124044.4]
  wire  _T_996; // @[DCache.scala 406:39:freechips.rocketchip.system.DefaultRV32Config.fir@124844.4]
  reg  pstore1_held; // @[DCache.scala 405:25:freechips.rocketchip.system.DefaultRV32Config.fir@124843.4]
  reg [31:0] _RAND_19;
  wire  pstore1_valid_likely; // @[DCache.scala 406:51:freechips.rocketchip.system.DefaultRV32Config.fir@124845.4]
  reg [31:0] pstore1_addr; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@124681.4]
  reg [31:0] _RAND_20;
  wire [9:0] _T_1111; // @[DCache.scala 458:9:freechips.rocketchip.system.DefaultRV32Config.fir@125007.4]
  reg [31:0] s1_req_addr; // @[DCache.scala 152:19:freechips.rocketchip.system.DefaultRV32Config.fir@123460.4]
  reg [31:0] _RAND_21;
  wire [9:0] _T_1112; // @[DCache.scala 458:46:freechips.rocketchip.system.DefaultRV32Config.fir@125008.4]
  wire  _T_1113; // @[DCache.scala 458:31:freechips.rocketchip.system.DefaultRV32Config.fir@125009.4]
  wire  _T_80; // @[Consts.scala 83:32:freechips.rocketchip.system.DefaultRV32Config.fir@123497.4]
  wire  _T_81; // @[Consts.scala 83:49:freechips.rocketchip.system.DefaultRV32Config.fir@123498.4]
  wire  _T_82; // @[Consts.scala 83:42:freechips.rocketchip.system.DefaultRV32Config.fir@123499.4]
  wire  _T_84; // @[Consts.scala 83:59:freechips.rocketchip.system.DefaultRV32Config.fir@123501.4]
  wire  s1_write; // @[Consts.scala 83:76:freechips.rocketchip.system.DefaultRV32Config.fir@123519.4]
  reg [3:0] pstore1_mask; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@124696.4]
  reg [31:0] _RAND_22;
  wire  _T_1117; // @[package.scala 160:50:freechips.rocketchip.system.DefaultRV32Config.fir@125013.4]
  wire  _T_1116; // @[package.scala 160:50:freechips.rocketchip.system.DefaultRV32Config.fir@125012.4]
  wire  _T_1115; // @[package.scala 160:50:freechips.rocketchip.system.DefaultRV32Config.fir@125011.4]
  wire  _T_1114; // @[package.scala 160:50:freechips.rocketchip.system.DefaultRV32Config.fir@125010.4]
  wire [3:0] _T_1124; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@125020.4]
  wire  _T_1128; // @[Bitwise.scala 26:51:freechips.rocketchip.system.DefaultRV32Config.fir@125024.4]
  wire  _T_1127; // @[Bitwise.scala 26:51:freechips.rocketchip.system.DefaultRV32Config.fir@125023.4]
  wire  _T_1126; // @[Bitwise.scala 26:51:freechips.rocketchip.system.DefaultRV32Config.fir@125022.4]
  wire  _T_1125; // @[Bitwise.scala 26:51:freechips.rocketchip.system.DefaultRV32Config.fir@125021.4]
  wire [3:0] _T_1131; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@125027.4]
  wire  _T_354; // @[AMOALU.scala 17:27:freechips.rocketchip.system.DefaultRV32Config.fir@123928.4]
  wire  _T_346; // @[AMOALU.scala 17:27:freechips.rocketchip.system.DefaultRV32Config.fir@123920.4]
  reg [1:0] s1_req_size; // @[DCache.scala 152:19:freechips.rocketchip.system.DefaultRV32Config.fir@123460.4]
  reg [31:0] _RAND_23;
  wire  _T_348; // @[AMOALU.scala 17:57:freechips.rocketchip.system.DefaultRV32Config.fir@123922.4]
  wire  _T_350; // @[AMOALU.scala 17:46:freechips.rocketchip.system.DefaultRV32Config.fir@123924.4]
  wire  _T_352; // @[AMOALU.scala 18:22:freechips.rocketchip.system.DefaultRV32Config.fir@123926.4]
  wire [1:0] _T_353; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@123927.4]
  wire [1:0] _T_355; // @[AMOALU.scala 17:22:freechips.rocketchip.system.DefaultRV32Config.fir@123929.4]
  wire  _T_356; // @[AMOALU.scala 17:57:freechips.rocketchip.system.DefaultRV32Config.fir@123930.4]
  wire [1:0] _T_357; // @[AMOALU.scala 17:51:freechips.rocketchip.system.DefaultRV32Config.fir@123931.4]
  wire [1:0] _T_358; // @[AMOALU.scala 17:46:freechips.rocketchip.system.DefaultRV32Config.fir@123932.4]
  wire [1:0] _T_360; // @[AMOALU.scala 18:22:freechips.rocketchip.system.DefaultRV32Config.fir@123934.4]
  wire [3:0] s1_mask_xwr; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@123935.4]
  wire  _T_1135; // @[package.scala 160:50:freechips.rocketchip.system.DefaultRV32Config.fir@125031.4]
  wire  _T_1134; // @[package.scala 160:50:freechips.rocketchip.system.DefaultRV32Config.fir@125030.4]
  wire  _T_1133; // @[package.scala 160:50:freechips.rocketchip.system.DefaultRV32Config.fir@125029.4]
  wire  _T_1132; // @[package.scala 160:50:freechips.rocketchip.system.DefaultRV32Config.fir@125028.4]
  wire [3:0] _T_1142; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@125038.4]
  wire  _T_1146; // @[Bitwise.scala 26:51:freechips.rocketchip.system.DefaultRV32Config.fir@125042.4]
  wire  _T_1145; // @[Bitwise.scala 26:51:freechips.rocketchip.system.DefaultRV32Config.fir@125041.4]
  wire  _T_1144; // @[Bitwise.scala 26:51:freechips.rocketchip.system.DefaultRV32Config.fir@125040.4]
  wire  _T_1143; // @[Bitwise.scala 26:51:freechips.rocketchip.system.DefaultRV32Config.fir@125039.4]
  wire [3:0] _T_1149; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@125045.4]
  wire [3:0] _T_1150; // @[DCache.scala 459:38:freechips.rocketchip.system.DefaultRV32Config.fir@125046.4]
  wire  _T_1151; // @[DCache.scala 459:66:freechips.rocketchip.system.DefaultRV32Config.fir@125047.4]
  wire [3:0] _T_1152; // @[DCache.scala 459:77:freechips.rocketchip.system.DefaultRV32Config.fir@125048.4]
  wire  _T_1153; // @[DCache.scala 459:92:freechips.rocketchip.system.DefaultRV32Config.fir@125049.4]
  wire  _T_1154; // @[DCache.scala 459:8:freechips.rocketchip.system.DefaultRV32Config.fir@125050.4]
  wire  _T_1155; // @[DCache.scala 458:68:freechips.rocketchip.system.DefaultRV32Config.fir@125051.4]
  wire  _T_1156; // @[DCache.scala 461:27:freechips.rocketchip.system.DefaultRV32Config.fir@125052.4]
  reg  pstore2_valid; // @[DCache.scala 402:26:freechips.rocketchip.system.DefaultRV32Config.fir@124768.4]
  reg [31:0] _RAND_24;
  reg [31:0] pstore2_addr; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@124907.4]
  reg [31:0] _RAND_25;
  wire [9:0] _T_1157; // @[DCache.scala 458:9:freechips.rocketchip.system.DefaultRV32Config.fir@125053.4]
  wire  _T_1159; // @[DCache.scala 458:31:freechips.rocketchip.system.DefaultRV32Config.fir@125055.4]
  reg [3:0] mask; // @[DCache.scala 432:19:freechips.rocketchip.system.DefaultRV32Config.fir@124951.4]
  reg [31:0] _RAND_26;
  wire  _T_1163; // @[package.scala 160:50:freechips.rocketchip.system.DefaultRV32Config.fir@125059.4]
  wire  _T_1162; // @[package.scala 160:50:freechips.rocketchip.system.DefaultRV32Config.fir@125058.4]
  wire  _T_1161; // @[package.scala 160:50:freechips.rocketchip.system.DefaultRV32Config.fir@125057.4]
  wire  _T_1160; // @[package.scala 160:50:freechips.rocketchip.system.DefaultRV32Config.fir@125056.4]
  wire [3:0] _T_1170; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@125066.4]
  wire  _T_1174; // @[Bitwise.scala 26:51:freechips.rocketchip.system.DefaultRV32Config.fir@125070.4]
  wire  _T_1173; // @[Bitwise.scala 26:51:freechips.rocketchip.system.DefaultRV32Config.fir@125069.4]
  wire  _T_1172; // @[Bitwise.scala 26:51:freechips.rocketchip.system.DefaultRV32Config.fir@125068.4]
  wire  _T_1171; // @[Bitwise.scala 26:51:freechips.rocketchip.system.DefaultRV32Config.fir@125067.4]
  wire [3:0] _T_1177; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@125073.4]
  wire [3:0] _T_1196; // @[DCache.scala 459:38:freechips.rocketchip.system.DefaultRV32Config.fir@125092.4]
  wire  _T_1197; // @[DCache.scala 459:66:freechips.rocketchip.system.DefaultRV32Config.fir@125093.4]
  wire [3:0] _T_1198; // @[DCache.scala 459:77:freechips.rocketchip.system.DefaultRV32Config.fir@125094.4]
  wire  _T_1199; // @[DCache.scala 459:92:freechips.rocketchip.system.DefaultRV32Config.fir@125095.4]
  wire  _T_1200; // @[DCache.scala 459:8:freechips.rocketchip.system.DefaultRV32Config.fir@125096.4]
  wire  _T_1201; // @[DCache.scala 458:68:freechips.rocketchip.system.DefaultRV32Config.fir@125097.4]
  wire  _T_1202; // @[DCache.scala 462:21:freechips.rocketchip.system.DefaultRV32Config.fir@125098.4]
  wire  s1_hazard; // @[DCache.scala 461:69:freechips.rocketchip.system.DefaultRV32Config.fir@125099.4]
  wire  s1_raw_hazard; // @[DCache.scala 463:31:freechips.rocketchip.system.DefaultRV32Config.fir@125100.4]
  wire  _T_1203; // @[DCache.scala 468:18:freechips.rocketchip.system.DefaultRV32Config.fir@125102.4]
  wire [5:0] _T_378; // @[DCache.scala 258:54:freechips.rocketchip.system.DefaultRV32Config.fir@123960.4]
  wire  _T_379; // @[DCache.scala 258:61:freechips.rocketchip.system.DefaultRV32Config.fir@123961.4]
  wire  _T_380; // @[DCache.scala 258:38:freechips.rocketchip.system.DefaultRV32Config.fir@123962.4]
  wire  s2_valid_no_xcpt; // @[DCache.scala 258:35:freechips.rocketchip.system.DefaultRV32Config.fir@123963.4]
  reg  _T_384; // @[DCache.scala 261:48:freechips.rocketchip.system.DefaultRV32Config.fir@123970.4]
  reg [31:0] _RAND_27;
  wire  s2_valid_masked; // @[DCache.scala 261:42:freechips.rocketchip.system.DefaultRV32Config.fir@123972.4]
  wire  _T_539; // @[Consts.scala 84:54:freechips.rocketchip.system.DefaultRV32Config.fir@124249.4]
  wire  _T_540; // @[Consts.scala 84:47:freechips.rocketchip.system.DefaultRV32Config.fir@124250.4]
  wire  _T_541; // @[Consts.scala 84:71:freechips.rocketchip.system.DefaultRV32Config.fir@124251.4]
  wire  _T_542; // @[Consts.scala 84:64:freechips.rocketchip.system.DefaultRV32Config.fir@124252.4]
  reg [1:0] s2_hit_state_state; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@124192.4]
  reg [31:0] _RAND_28;
  wire [3:0] _T_544; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@124254.4]
  wire  _T_602; // @[Misc.scala 47:20:freechips.rocketchip.system.DefaultRV32Config.fir@124312.4]
  wire  _T_599; // @[Misc.scala 47:20:freechips.rocketchip.system.DefaultRV32Config.fir@124309.4]
  wire  _T_596; // @[Misc.scala 47:20:freechips.rocketchip.system.DefaultRV32Config.fir@124306.4]
  wire  _T_593; // @[Misc.scala 47:20:freechips.rocketchip.system.DefaultRV32Config.fir@124303.4]
  wire  _T_590; // @[Misc.scala 47:20:freechips.rocketchip.system.DefaultRV32Config.fir@124300.4]
  wire  _T_587; // @[Misc.scala 47:20:freechips.rocketchip.system.DefaultRV32Config.fir@124297.4]
  wire  _T_584; // @[Misc.scala 47:20:freechips.rocketchip.system.DefaultRV32Config.fir@124294.4]
  wire  _T_581; // @[Misc.scala 47:20:freechips.rocketchip.system.DefaultRV32Config.fir@124291.4]
  wire  _T_578; // @[Misc.scala 47:20:freechips.rocketchip.system.DefaultRV32Config.fir@124288.4]
  wire  _T_575; // @[Misc.scala 47:20:freechips.rocketchip.system.DefaultRV32Config.fir@124285.4]
  wire  _T_572; // @[Misc.scala 47:20:freechips.rocketchip.system.DefaultRV32Config.fir@124282.4]
  wire  _T_569; // @[Misc.scala 47:20:freechips.rocketchip.system.DefaultRV32Config.fir@124279.4]
  wire  _T_588; // @[Misc.scala 33:9:freechips.rocketchip.system.DefaultRV32Config.fir@124298.4]
  wire  _T_591; // @[Misc.scala 33:9:freechips.rocketchip.system.DefaultRV32Config.fir@124301.4]
  wire  _T_594; // @[Misc.scala 33:9:freechips.rocketchip.system.DefaultRV32Config.fir@124304.4]
  wire  _T_597; // @[Misc.scala 33:9:freechips.rocketchip.system.DefaultRV32Config.fir@124307.4]
  wire  _T_600; // @[Misc.scala 33:9:freechips.rocketchip.system.DefaultRV32Config.fir@124310.4]
  wire  s2_hit; // @[Misc.scala 33:9:freechips.rocketchip.system.DefaultRV32Config.fir@124313.4]
  wire  s2_valid_hit_maybe_flush_pre_data_ecc_and_waw; // @[DCache.scala 319:89:freechips.rocketchip.system.DefaultRV32Config.fir@124340.4]
  wire  _T_396; // @[Consts.scala 82:31:freechips.rocketchip.system.DefaultRV32Config.fir@123999.4]
  wire  _T_398; // @[Consts.scala 82:41:freechips.rocketchip.system.DefaultRV32Config.fir@124001.4]
  wire  _T_400; // @[Consts.scala 82:58:freechips.rocketchip.system.DefaultRV32Config.fir@124003.4]
  wire  s2_read; // @[Consts.scala 82:75:freechips.rocketchip.system.DefaultRV32Config.fir@124021.4]
  wire  s2_readwrite; // @[DCache.scala 276:30:freechips.rocketchip.system.DefaultRV32Config.fir@124045.4]
  wire  s2_valid_hit_pre_data_ecc_and_waw; // @[DCache.scala 320:89:freechips.rocketchip.system.DefaultRV32Config.fir@124341.4]
  wire [1:0] _T_571; // @[Misc.scala 33:36:freechips.rocketchip.system.DefaultRV32Config.fir@124281.4]
  wire [1:0] _T_574; // @[Misc.scala 33:36:freechips.rocketchip.system.DefaultRV32Config.fir@124284.4]
  wire [1:0] _T_577; // @[Misc.scala 33:36:freechips.rocketchip.system.DefaultRV32Config.fir@124287.4]
  wire [1:0] _T_580; // @[Misc.scala 33:36:freechips.rocketchip.system.DefaultRV32Config.fir@124290.4]
  wire [1:0] _T_583; // @[Misc.scala 33:36:freechips.rocketchip.system.DefaultRV32Config.fir@124293.4]
  wire [1:0] _T_586; // @[Misc.scala 33:36:freechips.rocketchip.system.DefaultRV32Config.fir@124296.4]
  wire [1:0] _T_589; // @[Misc.scala 33:36:freechips.rocketchip.system.DefaultRV32Config.fir@124299.4]
  wire [1:0] _T_592; // @[Misc.scala 33:36:freechips.rocketchip.system.DefaultRV32Config.fir@124302.4]
  wire [1:0] _T_595; // @[Misc.scala 33:36:freechips.rocketchip.system.DefaultRV32Config.fir@124305.4]
  wire [1:0] _T_598; // @[Misc.scala 33:36:freechips.rocketchip.system.DefaultRV32Config.fir@124308.4]
  wire [1:0] _T_601; // @[Misc.scala 33:36:freechips.rocketchip.system.DefaultRV32Config.fir@124311.4]
  wire [1:0] s2_grow_param; // @[Misc.scala 33:36:freechips.rocketchip.system.DefaultRV32Config.fir@124314.4]
  wire  _T_781; // @[Metadata.scala 46:46:freechips.rocketchip.system.DefaultRV32Config.fir@124535.4]
  wire  s2_update_meta; // @[Metadata.scala 47:40:freechips.rocketchip.system.DefaultRV32Config.fir@124536.4]
  wire  _T_800; // @[DCache.scala 347:62:freechips.rocketchip.system.DefaultRV32Config.fir@124558.4]
  wire  _T_801; // @[DCache.scala 347:24:freechips.rocketchip.system.DefaultRV32Config.fir@124559.4]
  wire  s1_readwrite; // @[DCache.scala 161:30:freechips.rocketchip.system.DefaultRV32Config.fir@123520.4]
  wire  _T_102; // @[DCache.scala 163:34:freechips.rocketchip.system.DefaultRV32Config.fir@123522.4]
  wire  _T_103; // @[DCache.scala 163:64:freechips.rocketchip.system.DefaultRV32Config.fir@123523.4]
  wire  s1_flush_line; // @[DCache.scala 163:50:freechips.rocketchip.system.DefaultRV32Config.fir@123524.4]
  wire  _T_256; // @[DCache.scala 207:38:freechips.rocketchip.system.DefaultRV32Config.fir@123733.4]
  wire  _T_257; // @[DCache.scala 207:69:freechips.rocketchip.system.DefaultRV32Config.fir@123734.4]
  wire  s1_cmd_uses_tlb; // @[DCache.scala 207:55:freechips.rocketchip.system.DefaultRV32Config.fir@123735.4]
  wire  _T_266; // @[DCache.scala 216:18:freechips.rocketchip.system.DefaultRV32Config.fir@123754.4]
  wire  _T_267; // @[DCache.scala 216:37:freechips.rocketchip.system.DefaultRV32Config.fir@123755.4]
  wire  _GEN_93; // @[DCache.scala 347:82:freechips.rocketchip.system.DefaultRV32Config.fir@124560.4]
  wire  _GEN_113; // @[DCache.scala 468:36:freechips.rocketchip.system.DefaultRV32Config.fir@125103.4]
  wire  _GEN_250; // @[DCache.scala 690:24:freechips.rocketchip.system.DefaultRV32Config.fir@126648.6]
  wire  s1_nack; // @[DCache.scala 675:21:freechips.rocketchip.system.DefaultRV32Config.fir@126622.4]
  wire  _T_52; // @[DCache.scala 151:41:freechips.rocketchip.system.DefaultRV32Config.fir@123458.4]
  wire  s1_valid_not_nacked; // @[DCache.scala 151:38:freechips.rocketchip.system.DefaultRV32Config.fir@123459.4]
  reg [6:0] s1_req_tag; // @[DCache.scala 152:19:freechips.rocketchip.system.DefaultRV32Config.fir@123460.4]
  reg [31:0] _RAND_29;
  reg  s1_req_signed; // @[DCache.scala 152:19:freechips.rocketchip.system.DefaultRV32Config.fir@123460.4]
  reg [31:0] _RAND_30;
  reg  s1_req_phys; // @[DCache.scala 152:19:freechips.rocketchip.system.DefaultRV32Config.fir@123460.4]
  reg [31:0] _RAND_31;
  wire  _T_53; // @[DCache.scala 153:43:freechips.rocketchip.system.DefaultRV32Config.fir@123461.4]
  wire  s0_clk_en; // @[DCache.scala 153:40:freechips.rocketchip.system.DefaultRV32Config.fir@123462.4]
  wire [25:0] _T_54; // @[DCache.scala 156:49:freechips.rocketchip.system.DefaultRV32Config.fir@123465.6]
  wire [5:0] _T_55; // @[DCache.scala 156:86:freechips.rocketchip.system.DefaultRV32Config.fir@123466.6]
  wire [31:0] _T_56; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@123467.6]
  wire  _T_57; // @[DCache.scala 157:11:freechips.rocketchip.system.DefaultRV32Config.fir@123469.6]
  wire  _GEN_8; // @[DCache.scala 157:36:freechips.rocketchip.system.DefaultRV32Config.fir@123470.6]
  wire  s1_sfence; // @[DCache.scala 162:30:freechips.rocketchip.system.DefaultRV32Config.fir@123521.4]
  reg  s1_flush_valid; // @[DCache.scala 164:27:freechips.rocketchip.system.DefaultRV32Config.fir@123525.4]
  reg [31:0] _RAND_32;
  reg  cached_grant_wait; // @[DCache.scala 172:30:freechips.rocketchip.system.DefaultRV32Config.fir@123531.4]
  reg [31:0] _RAND_33;
  wire  can_acquire_before_release; // @[DCache.scala 175:36:freechips.rocketchip.system.DefaultRV32Config.fir@123534.4]
  wire  inWriteback; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@123541.4]
  wire  _T_107; // @[DCache.scala 180:38:freechips.rocketchip.system.DefaultRV32Config.fir@123544.4]
  wire  _T_108; // @[DCache.scala 180:54:freechips.rocketchip.system.DefaultRV32Config.fir@123545.4]
  wire  _T_109; // @[DCache.scala 180:51:freechips.rocketchip.system.DefaultRV32Config.fir@123546.4]
  wire  _T_111; // @[DCache.scala 180:73:freechips.rocketchip.system.DefaultRV32Config.fir@123548.4]
  reg  uncachedInFlight_0; // @[DCache.scala 183:33:freechips.rocketchip.system.DefaultRV32Config.fir@123553.4]
  reg [31:0] _RAND_34;
  reg [31:0] uncachedReqs_0_addr; // @[DCache.scala 184:25:freechips.rocketchip.system.DefaultRV32Config.fir@123554.4]
  reg [31:0] _RAND_35;
  reg [6:0] uncachedReqs_0_tag; // @[DCache.scala 184:25:freechips.rocketchip.system.DefaultRV32Config.fir@123554.4]
  reg [31:0] _RAND_36;
  reg [1:0] uncachedReqs_0_size; // @[DCache.scala 184:25:freechips.rocketchip.system.DefaultRV32Config.fir@123554.4]
  reg [31:0] _RAND_37;
  reg  uncachedReqs_0_signed; // @[DCache.scala 184:25:freechips.rocketchip.system.DefaultRV32Config.fir@123554.4]
  reg [31:0] _RAND_38;
  wire  _T_113; // @[Consts.scala 82:31:freechips.rocketchip.system.DefaultRV32Config.fir@123558.4]
  wire  _T_114; // @[Consts.scala 82:48:freechips.rocketchip.system.DefaultRV32Config.fir@123559.4]
  wire  _T_115; // @[Consts.scala 82:41:freechips.rocketchip.system.DefaultRV32Config.fir@123560.4]
  wire  _T_116; // @[Consts.scala 82:65:freechips.rocketchip.system.DefaultRV32Config.fir@123561.4]
  wire  _T_117; // @[Consts.scala 82:58:freechips.rocketchip.system.DefaultRV32Config.fir@123562.4]
  wire  _T_118; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@123563.4]
  wire  _T_119; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@123564.4]
  wire  _T_120; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@123565.4]
  wire  _T_121; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@123566.4]
  wire  _T_122; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@123567.4]
  wire  _T_123; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@123568.4]
  wire  _T_124; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@123569.4]
  wire  _T_125; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@123570.4]
  wire  _T_126; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@123571.4]
  wire  _T_127; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@123572.4]
  wire  _T_128; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@123573.4]
  wire  _T_129; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@123574.4]
  wire  _T_130; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@123575.4]
  wire  _T_131; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@123576.4]
  wire  _T_132; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@123577.4]
  wire  _T_133; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@123578.4]
  wire  _T_134; // @[Consts.scala 80:44:freechips.rocketchip.system.DefaultRV32Config.fir@123579.4]
  wire  s0_read; // @[Consts.scala 82:75:freechips.rocketchip.system.DefaultRV32Config.fir@123580.4]
  wire  _T_135; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@123581.4]
  wire  _T_136; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@123582.4]
  wire  _T_137; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@123583.4]
  wire  res; // @[DCache.scala 1007:15:freechips.rocketchip.system.DefaultRV32Config.fir@123584.4]
  wire  _T_164; // @[Consts.scala 83:49:freechips.rocketchip.system.DefaultRV32Config.fir@123611.4]
  wire  _T_165; // @[Consts.scala 83:42:freechips.rocketchip.system.DefaultRV32Config.fir@123612.4]
  wire  _T_167; // @[Consts.scala 83:59:freechips.rocketchip.system.DefaultRV32Config.fir@123614.4]
  wire  _T_185; // @[Consts.scala 83:76:freechips.rocketchip.system.DefaultRV32Config.fir@123632.4]
  wire  _T_189; // @[DCache.scala 1013:23:freechips.rocketchip.system.DefaultRV32Config.fir@123636.4]
  wire  _T_190; // @[DCache.scala 1012:21:freechips.rocketchip.system.DefaultRV32Config.fir@123637.4]
  wire  _T_191; // @[DCache.scala 1008:12:freechips.rocketchip.system.DefaultRV32Config.fir@123638.4]
  wire  _T_192; // @[DCache.scala 1008:28:freechips.rocketchip.system.DefaultRV32Config.fir@123639.4]
  wire  _T_194; // @[DCache.scala 1008:11:freechips.rocketchip.system.DefaultRV32Config.fir@123641.4]
  wire  _T_195; // @[DCache.scala 1008:11:freechips.rocketchip.system.DefaultRV32Config.fir@123642.4]
  wire  _T_196; // @[DCache.scala 189:46:freechips.rocketchip.system.DefaultRV32Config.fir@123647.4]
  wire  _T_199; // @[DCache.scala 195:9:freechips.rocketchip.system.DefaultRV32Config.fir@123656.4]
  wire  _T_200; // @[DCache.scala 195:33:freechips.rocketchip.system.DefaultRV32Config.fir@123657.4]
  wire  _GEN_19; // @[DCache.scala 195:45:freechips.rocketchip.system.DefaultRV32Config.fir@123658.4]
  wire  _T_252; // @[DCache.scala 196:75:freechips.rocketchip.system.DefaultRV32Config.fir@123712.4]
  wire  _T_253; // @[DCache.scala 196:54:freechips.rocketchip.system.DefaultRV32Config.fir@123713.4]
  reg  s1_did_read; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@123714.4]
  reg [31:0] _RAND_39;
  wire  _GEN_21; // @[DCache.scala 203:34:freechips.rocketchip.system.DefaultRV32Config.fir@123726.4]
  wire  _T_261; // @[DCache.scala 215:9:freechips.rocketchip.system.DefaultRV32Config.fir@123746.4]
  wire  _T_262; // @[DCache.scala 215:30:freechips.rocketchip.system.DefaultRV32Config.fir@123747.4]
  wire  _T_263; // @[DCache.scala 215:27:freechips.rocketchip.system.DefaultRV32Config.fir@123748.4]
  wire  _T_264; // @[DCache.scala 215:56:freechips.rocketchip.system.DefaultRV32Config.fir@123749.4]
  wire  _T_265; // @[DCache.scala 215:53:freechips.rocketchip.system.DefaultRV32Config.fir@123750.4]
  wire  _GEN_22; // @[DCache.scala 215:79:freechips.rocketchip.system.DefaultRV32Config.fir@123751.4]
  wire [1:0] s1_victim_way; // @[package.scala 120:13:freechips.rocketchip.system.DefaultRV32Config.fir@123769.4]
  wire  _T_274; // @[DCache.scala 236:27:freechips.rocketchip.system.DefaultRV32Config.fir@123773.4]
  wire [5:0] _GEN_32; // @[DCache.scala 236:50:freechips.rocketchip.system.DefaultRV32Config.fir@123774.4]
  wire [21:0] _T_282; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123812.4 :freechips.rocketchip.system.DefaultRV32Config.fir@123814.4]
  wire [19:0] s1_meta_uncorrected_0_tag; // @[DCache.scala 241:80:freechips.rocketchip.system.DefaultRV32Config.fir@123815.4]
  wire [1:0] s1_meta_uncorrected_0_coh_state; // @[DCache.scala 241:80:freechips.rocketchip.system.DefaultRV32Config.fir@123817.4]
  wire [21:0] _T_285; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123821.4 :freechips.rocketchip.system.DefaultRV32Config.fir@123823.4]
  wire [19:0] s1_meta_uncorrected_1_tag; // @[DCache.scala 241:80:freechips.rocketchip.system.DefaultRV32Config.fir@123824.4]
  wire [1:0] s1_meta_uncorrected_1_coh_state; // @[DCache.scala 241:80:freechips.rocketchip.system.DefaultRV32Config.fir@123826.4]
  wire [21:0] _T_288; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123830.4 :freechips.rocketchip.system.DefaultRV32Config.fir@123832.4]
  wire [19:0] s1_meta_uncorrected_2_tag; // @[DCache.scala 241:80:freechips.rocketchip.system.DefaultRV32Config.fir@123833.4]
  wire [1:0] s1_meta_uncorrected_2_coh_state; // @[DCache.scala 241:80:freechips.rocketchip.system.DefaultRV32Config.fir@123835.4]
  wire [21:0] _T_291; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123839.4 :freechips.rocketchip.system.DefaultRV32Config.fir@123841.4]
  wire [19:0] s1_meta_uncorrected_3_tag; // @[DCache.scala 241:80:freechips.rocketchip.system.DefaultRV32Config.fir@123842.4]
  wire [1:0] s1_meta_uncorrected_3_coh_state; // @[DCache.scala 241:80:freechips.rocketchip.system.DefaultRV32Config.fir@123844.4]
  wire [19:0] s1_tag; // @[DCache.scala 242:29:freechips.rocketchip.system.DefaultRV32Config.fir@123846.4]
  wire  _T_294; // @[Metadata.scala 50:45:freechips.rocketchip.system.DefaultRV32Config.fir@123847.4]
  wire  _T_295; // @[DCache.scala 243:83:freechips.rocketchip.system.DefaultRV32Config.fir@123848.4]
  wire  _T_296; // @[DCache.scala 243:74:freechips.rocketchip.system.DefaultRV32Config.fir@123849.4]
  wire  _T_297; // @[Metadata.scala 50:45:freechips.rocketchip.system.DefaultRV32Config.fir@123850.4]
  wire  _T_298; // @[DCache.scala 243:83:freechips.rocketchip.system.DefaultRV32Config.fir@123851.4]
  wire  _T_299; // @[DCache.scala 243:74:freechips.rocketchip.system.DefaultRV32Config.fir@123852.4]
  wire  _T_300; // @[Metadata.scala 50:45:freechips.rocketchip.system.DefaultRV32Config.fir@123853.4]
  wire  _T_301; // @[DCache.scala 243:83:freechips.rocketchip.system.DefaultRV32Config.fir@123854.4]
  wire  _T_302; // @[DCache.scala 243:74:freechips.rocketchip.system.DefaultRV32Config.fir@123855.4]
  wire  _T_303; // @[Metadata.scala 50:45:freechips.rocketchip.system.DefaultRV32Config.fir@123856.4]
  wire  _T_304; // @[DCache.scala 243:83:freechips.rocketchip.system.DefaultRV32Config.fir@123857.4]
  wire  _T_305; // @[DCache.scala 243:74:freechips.rocketchip.system.DefaultRV32Config.fir@123858.4]
  wire [3:0] s1_meta_hit_way; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@123861.4]
  wire  _T_310; // @[DCache.scala 245:62:freechips.rocketchip.system.DefaultRV32Config.fir@123866.4]
  wire  _T_311; // @[DCache.scala 245:59:freechips.rocketchip.system.DefaultRV32Config.fir@123867.4]
  wire [1:0] _T_312; // @[DCache.scala 245:41:freechips.rocketchip.system.DefaultRV32Config.fir@123868.4]
  wire  _T_315; // @[DCache.scala 245:59:freechips.rocketchip.system.DefaultRV32Config.fir@123871.4]
  wire [1:0] _T_316; // @[DCache.scala 245:41:freechips.rocketchip.system.DefaultRV32Config.fir@123872.4]
  wire  _T_319; // @[DCache.scala 245:59:freechips.rocketchip.system.DefaultRV32Config.fir@123875.4]
  wire [1:0] _T_320; // @[DCache.scala 245:41:freechips.rocketchip.system.DefaultRV32Config.fir@123876.4]
  wire  _T_323; // @[DCache.scala 245:59:freechips.rocketchip.system.DefaultRV32Config.fir@123879.4]
  wire [1:0] _T_324; // @[DCache.scala 245:41:freechips.rocketchip.system.DefaultRV32Config.fir@123880.4]
  wire [1:0] _T_325; // @[DCache.scala 246:19:freechips.rocketchip.system.DefaultRV32Config.fir@123881.4]
  wire [1:0] _T_326; // @[DCache.scala 246:19:freechips.rocketchip.system.DefaultRV32Config.fir@123882.4]
  wire [1:0] s1_meta_hit_state_state; // @[DCache.scala 246:19:freechips.rocketchip.system.DefaultRV32Config.fir@123883.4]
  wire  _T_332; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@123893.4]
  wire  _T_334; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@123895.4]
  wire  _T_336; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@123897.4]
  wire  s2_hit_valid; // @[Metadata.scala 50:45:freechips.rocketchip.system.DefaultRV32Config.fir@124202.4]
  reg [3:0] s2_hit_way; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@124187.4]
  reg [31:0] _RAND_40;
  reg [1:0] _T_649; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@124381.4]
  reg [31:0] _RAND_41;
  wire [3:0] _T_650; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@124385.4]
  wire [3:0] s2_victim_way; // @[DCache.scala 333:26:freechips.rocketchip.system.DefaultRV32Config.fir@124386.4]
  reg [3:0] s2_probe_way; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@124179.4]
  reg [31:0] _RAND_42;
  wire [3:0] releaseWay; // @[DCache.scala 714:81:freechips.rocketchip.system.DefaultRV32Config.fir@126690.4]
  wire [3:0] _T_337; // @[DCache.scala 249:61:freechips.rocketchip.system.DefaultRV32Config.fir@123899.4]
  wire [7:0] _T_338; // @[package.scala 160:50:freechips.rocketchip.system.DefaultRV32Config.fir@123903.4]
  wire [7:0] _T_339; // @[package.scala 160:50:freechips.rocketchip.system.DefaultRV32Config.fir@123904.4]
  wire [7:0] _T_340; // @[package.scala 160:50:freechips.rocketchip.system.DefaultRV32Config.fir@123905.4]
  wire [7:0] _T_341; // @[package.scala 160:50:freechips.rocketchip.system.DefaultRV32Config.fir@123906.4]
  wire [15:0] _T_342; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@123907.4]
  wire [15:0] _T_343; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@123908.4]
  wire [31:0] _T_344; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@123909.4]
  wire  _T_363; // @[DCache.scala 255:28:freechips.rocketchip.system.DefaultRV32Config.fir@123939.4]
  wire  _T_364; // @[DCache.scala 255:10:freechips.rocketchip.system.DefaultRV32Config.fir@123940.4]
  wire [3:0] _T_365; // @[DCache.scala 255:71:freechips.rocketchip.system.DefaultRV32Config.fir@123941.4]
  wire [3:0] _T_366; // @[DCache.scala 255:69:freechips.rocketchip.system.DefaultRV32Config.fir@123942.4]
  wire  _T_367; // @[DCache.scala 255:93:freechips.rocketchip.system.DefaultRV32Config.fir@123943.4]
  wire  _T_368; // @[DCache.scala 255:53:freechips.rocketchip.system.DefaultRV32Config.fir@123944.4]
  wire  _T_370; // @[DCache.scala 255:9:freechips.rocketchip.system.DefaultRV32Config.fir@123946.4]
  wire  _T_371; // @[DCache.scala 255:9:freechips.rocketchip.system.DefaultRV32Config.fir@123947.4]
  wire  _T_372; // @[DCache.scala 257:46:freechips.rocketchip.system.DefaultRV32Config.fir@123952.4]
  wire  _T_373; // @[DCache.scala 257:43:freechips.rocketchip.system.DefaultRV32Config.fir@123953.4]
  reg [31:0] s2_req_addr; // @[DCache.scala 263:19:freechips.rocketchip.system.DefaultRV32Config.fir@123975.4]
  reg [31:0] _RAND_43;
  reg [6:0] s2_req_tag; // @[DCache.scala 263:19:freechips.rocketchip.system.DefaultRV32Config.fir@123975.4]
  reg [31:0] _RAND_44;
  reg [1:0] s2_req_size; // @[DCache.scala 263:19:freechips.rocketchip.system.DefaultRV32Config.fir@123975.4]
  reg [31:0] _RAND_45;
  reg  s2_req_signed; // @[DCache.scala 263:19:freechips.rocketchip.system.DefaultRV32Config.fir@123975.4]
  reg [31:0] _RAND_46;
  wire  _T_386; // @[DCache.scala 264:37:freechips.rocketchip.system.DefaultRV32Config.fir@123976.4]
  wire  _T_387; // @[DCache.scala 264:68:freechips.rocketchip.system.DefaultRV32Config.fir@123977.4]
  wire  s2_cmd_flush_line; // @[DCache.scala 265:54:freechips.rocketchip.system.DefaultRV32Config.fir@123982.4]
  reg  s2_tlb_resp_pf_ld; // @[DCache.scala 266:24:freechips.rocketchip.system.DefaultRV32Config.fir@123983.4]
  reg [31:0] _RAND_47;
  reg  s2_tlb_resp_pf_st; // @[DCache.scala 266:24:freechips.rocketchip.system.DefaultRV32Config.fir@123983.4]
  reg [31:0] _RAND_48;
  reg  s2_tlb_resp_ae_ld; // @[DCache.scala 266:24:freechips.rocketchip.system.DefaultRV32Config.fir@123983.4]
  reg [31:0] _RAND_49;
  reg  s2_tlb_resp_ae_st; // @[DCache.scala 266:24:freechips.rocketchip.system.DefaultRV32Config.fir@123983.4]
  reg [31:0] _RAND_50;
  reg  s2_tlb_resp_ma_ld; // @[DCache.scala 266:24:freechips.rocketchip.system.DefaultRV32Config.fir@123983.4]
  reg [31:0] _RAND_51;
  reg  s2_tlb_resp_ma_st; // @[DCache.scala 266:24:freechips.rocketchip.system.DefaultRV32Config.fir@123983.4]
  reg [31:0] _RAND_52;
  reg  s2_tlb_resp_cacheable; // @[DCache.scala 266:24:freechips.rocketchip.system.DefaultRV32Config.fir@123983.4]
  reg [31:0] _RAND_53;
  reg [31:0] s2_uncached_resp_addr; // @[DCache.scala 267:34:freechips.rocketchip.system.DefaultRV32Config.fir@123984.4]
  reg [31:0] _RAND_54;
  wire  _T_391; // @[DCache.scala 268:29:freechips.rocketchip.system.DefaultRV32Config.fir@123985.4]
  reg [31:0] _T_393; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@123992.4]
  reg [31:0] _RAND_55;
  wire [19:0] _T_394; // @[DCache.scala 273:84:freechips.rocketchip.system.DefaultRV32Config.fir@123996.4]
  wire [11:0] _T_395; // @[DCache.scala 273:109:freechips.rocketchip.system.DefaultRV32Config.fir@123997.4]
  wire [31:0] s2_vaddr; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@123998.4]
  reg  s2_flush_valid_pre_tag_ecc; // @[DCache.scala 277:43:freechips.rocketchip.system.DefaultRV32Config.fir@124046.4]
  reg [31:0] _RAND_56;
  wire  _T_471; // @[DCache.scala 288:23:freechips.rocketchip.system.DefaultRV32Config.fir@124145.4]
  wire  en; // @[DCache.scala 288:38:freechips.rocketchip.system.DefaultRV32Config.fir@124146.4]
  wire  _T_472; // @[DCache.scala 289:64:freechips.rocketchip.system.DefaultRV32Config.fir@124147.4]
  wire  _T_473; // @[DCache.scala 289:63:freechips.rocketchip.system.DefaultRV32Config.fir@124148.4]
  wire  word_en; // @[DCache.scala 289:22:freechips.rocketchip.system.DefaultRV32Config.fir@124149.4]
  wire [31:0] s1_all_data_ways_0; // @[DCache.scala 251:29:freechips.rocketchip.system.DefaultRV32Config.fir@123912.4 DCache.scala 251:29:freechips.rocketchip.system.DefaultRV32Config.fir@123914.4]
  wire [31:0] s1_all_data_ways_1; // @[DCache.scala 251:29:freechips.rocketchip.system.DefaultRV32Config.fir@123912.4 DCache.scala 251:29:freechips.rocketchip.system.DefaultRV32Config.fir@123915.4]
  wire [31:0] s1_all_data_ways_2; // @[DCache.scala 251:29:freechips.rocketchip.system.DefaultRV32Config.fir@123912.4 DCache.scala 251:29:freechips.rocketchip.system.DefaultRV32Config.fir@123916.4]
  wire [31:0] s1_all_data_ways_3; // @[DCache.scala 251:29:freechips.rocketchip.system.DefaultRV32Config.fir@123912.4 DCache.scala 251:29:freechips.rocketchip.system.DefaultRV32Config.fir@123917.4]
  wire  _T_474; // @[DCache.scala 299:28:freechips.rocketchip.system.DefaultRV32Config.fir@124155.4]
  wire  s1_word_en; // @[DCache.scala 299:27:freechips.rocketchip.system.DefaultRV32Config.fir@124156.4]
  wire  grantIsUncachedData; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@126253.4]
  reg  blockUncachedGrant; // @[DCache.scala 625:33:freechips.rocketchip.system.DefaultRV32Config.fir@126481.4]
  reg [31:0] _RAND_57;
  wire  _T_2343; // @[DCache.scala 627:54:freechips.rocketchip.system.DefaultRV32Config.fir@126483.4]
  wire  _T_2344; // @[DCache.scala 627:31:freechips.rocketchip.system.DefaultRV32Config.fir@126484.4]
  wire  grantIsRefill; // @[DCache.scala 541:29:freechips.rocketchip.system.DefaultRV32Config.fir@126268.4]
  wire  _T_2257; // @[DCache.scala 597:26:freechips.rocketchip.system.DefaultRV32Config.fir@126374.4]
  wire  _T_2258; // @[DCache.scala 597:23:freechips.rocketchip.system.DefaultRV32Config.fir@126375.4]
  wire  _T_2211; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@126264.4]
  wire  grantIsCached; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@126266.4]
  reg [9:0] _T_2190; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@126233.4]
  reg [31:0] _RAND_58;
  wire  d_first; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@126236.4]
  wire  _T_2219; // @[DCache.scala 546:41:freechips.rocketchip.system.DefaultRV32Config.fir@126281.4]
  wire  _T_2220; // @[DCache.scala 546:50:freechips.rocketchip.system.DefaultRV32Config.fir@126282.4]
  wire  canAcceptCachedGrant; // @[DCache.scala 545:30:freechips.rocketchip.system.DefaultRV32Config.fir@126280.4]
  wire  _T_2221; // @[DCache.scala 546:69:freechips.rocketchip.system.DefaultRV32Config.fir@126283.4]
  wire  _T_2222; // @[DCache.scala 546:24:freechips.rocketchip.system.DefaultRV32Config.fir@126284.4]
  wire  _GEN_200; // @[DCache.scala 597:51:freechips.rocketchip.system.DefaultRV32Config.fir@126376.4]
  wire  tl_out__d_ready; // @[DCache.scala 627:68:freechips.rocketchip.system.DefaultRV32Config.fir@126485.4]
  wire  _T_2227; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@126292.4]
  wire  _T_2199; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@126249.4]
  wire  _T_2201; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@126251.4]
  wire  _T_2200; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@126250.4]
  wire  grantIsUncached; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@126252.4]
  wire [4:0] _GEN_156; // @[DCache.scala 566:34:freechips.rocketchip.system.DefaultRV32Config.fir@126324.10]
  wire [4:0] _GEN_165; // @[DCache.scala 559:35:freechips.rocketchip.system.DefaultRV32Config.fir@126311.8]
  wire [4:0] _GEN_178; // @[DCache.scala 550:26:freechips.rocketchip.system.DefaultRV32Config.fir@126294.6]
  wire [4:0] s1_data_way; // @[DCache.scala 549:26:freechips.rocketchip.system.DefaultRV32Config.fir@126293.4]
  wire [4:0] _T_476; // @[DCache.scala 301:28:freechips.rocketchip.system.DefaultRV32Config.fir@124158.4]
  wire  _T_477; // @[Mux.scala 29:36:freechips.rocketchip.system.DefaultRV32Config.fir@124159.4]
  wire  _T_478; // @[Mux.scala 29:36:freechips.rocketchip.system.DefaultRV32Config.fir@124160.4]
  wire  _T_479; // @[Mux.scala 29:36:freechips.rocketchip.system.DefaultRV32Config.fir@124161.4]
  wire  _T_480; // @[Mux.scala 29:36:freechips.rocketchip.system.DefaultRV32Config.fir@124162.4]
  wire  _T_481; // @[Mux.scala 29:36:freechips.rocketchip.system.DefaultRV32Config.fir@124163.4]
  wire [31:0] _T_482; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@124164.4]
  wire [31:0] _T_483; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@124165.4]
  wire [31:0] _T_484; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@124166.4]
  wire [31:0] _T_485; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@124167.4]
  wire [31:0] _T_486; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@124168.4]
  wire [31:0] _T_487; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@124169.4]
  wire [31:0] _T_488; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@124170.4]
  wire [31:0] _T_489; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@124171.4]
  wire [31:0] _T_490; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@124172.4]
  reg [31:0] s2_data; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@124175.4]
  reg [31:0] _RAND_59;
  wire [7:0] _T_603; // @[package.scala 160:50:freechips.rocketchip.system.DefaultRV32Config.fir@124318.4]
  wire [7:0] _T_604; // @[package.scala 160:50:freechips.rocketchip.system.DefaultRV32Config.fir@124319.4]
  wire [7:0] _T_605; // @[package.scala 160:50:freechips.rocketchip.system.DefaultRV32Config.fir@124320.4]
  wire [7:0] _T_606; // @[package.scala 160:50:freechips.rocketchip.system.DefaultRV32Config.fir@124321.4]
  wire [15:0] _T_615; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@124332.4]
  wire [15:0] _T_616; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@124333.4]
  wire [31:0] s2_data_corrected; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@124334.4]
  wire  _T_621; // @[DCache.scala 321:75:freechips.rocketchip.system.DefaultRV32Config.fir@124342.4]
  wire  s2_valid_flush_line; // @[DCache.scala 321:96:freechips.rocketchip.system.DefaultRV32Config.fir@124343.4]
  wire  _T_626; // @[DCache.scala 325:39:freechips.rocketchip.system.DefaultRV32Config.fir@124351.4]
  wire  _T_629; // @[DCache.scala 325:76:freechips.rocketchip.system.DefaultRV32Config.fir@124354.4]
  wire  _T_630; // @[DCache.scala 325:73:freechips.rocketchip.system.DefaultRV32Config.fir@124355.4]
  wire  s2_valid_miss; // @[DCache.scala 325:84:freechips.rocketchip.system.DefaultRV32Config.fir@124356.4]
  wire  s2_uncached; // @[DCache.scala 326:21:freechips.rocketchip.system.DefaultRV32Config.fir@124357.4]
  wire  _T_636; // @[DCache.scala 327:47:freechips.rocketchip.system.DefaultRV32Config.fir@124363.4]
  wire  _T_637; // @[DCache.scala 327:44:freechips.rocketchip.system.DefaultRV32Config.fir@124364.4]
  wire  _T_639; // @[DCache.scala 327:63:freechips.rocketchip.system.DefaultRV32Config.fir@124366.4]
  wire  s2_valid_cached_miss; // @[DCache.scala 327:60:freechips.rocketchip.system.DefaultRV32Config.fir@124367.4]
  wire  _T_640; // @[DCache.scala 329:79:freechips.rocketchip.system.DefaultRV32Config.fir@124368.4]
  wire  s2_want_victimize; // @[DCache.scala 329:125:freechips.rocketchip.system.DefaultRV32Config.fir@124370.4]
  wire  _T_643; // @[DCache.scala 330:29:freechips.rocketchip.system.DefaultRV32Config.fir@124372.4]
  wire  _T_645; // @[DCache.scala 332:49:freechips.rocketchip.system.DefaultRV32Config.fir@124376.4]
  wire  s2_valid_uncached_pending; // @[DCache.scala 332:64:freechips.rocketchip.system.DefaultRV32Config.fir@124379.4]
  wire [19:0] _T_652; // @[DCache.scala 334:82:freechips.rocketchip.system.DefaultRV32Config.fir@124388.4]
  reg [19:0] _T_654; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@124390.4]
  reg [31:0] _RAND_60;
  wire [19:0] s2_victim_tag; // @[DCache.scala 334:26:freechips.rocketchip.system.DefaultRV32Config.fir@124394.4]
  reg [1:0] _T_656_state; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@124396.4]
  reg [31:0] _RAND_61;
  wire [1:0] s2_victim_state_state; // @[DCache.scala 335:28:freechips.rocketchip.system.DefaultRV32Config.fir@124400.4]
  wire [2:0] _T_672; // @[Misc.scala 36:36:freechips.rocketchip.system.DefaultRV32Config.fir@124416.4]
  wire [2:0] _T_676; // @[Misc.scala 36:36:freechips.rocketchip.system.DefaultRV32Config.fir@124420.4]
  wire [2:0] _T_680; // @[Misc.scala 36:36:freechips.rocketchip.system.DefaultRV32Config.fir@124424.4]
  wire [2:0] _T_684; // @[Misc.scala 36:36:freechips.rocketchip.system.DefaultRV32Config.fir@124428.4]
  wire [2:0] _T_688; // @[Misc.scala 36:36:freechips.rocketchip.system.DefaultRV32Config.fir@124432.4]
  wire [2:0] _T_692; // @[Misc.scala 36:36:freechips.rocketchip.system.DefaultRV32Config.fir@124436.4]
  wire [1:0] _T_693; // @[Misc.scala 36:63:freechips.rocketchip.system.DefaultRV32Config.fir@124437.4]
  wire [2:0] _T_696; // @[Misc.scala 36:36:freechips.rocketchip.system.DefaultRV32Config.fir@124440.4]
  wire [1:0] _T_697; // @[Misc.scala 36:63:freechips.rocketchip.system.DefaultRV32Config.fir@124441.4]
  wire [2:0] _T_700; // @[Misc.scala 36:36:freechips.rocketchip.system.DefaultRV32Config.fir@124444.4]
  wire [1:0] _T_701; // @[Misc.scala 36:63:freechips.rocketchip.system.DefaultRV32Config.fir@124445.4]
  wire [2:0] _T_704; // @[Misc.scala 36:36:freechips.rocketchip.system.DefaultRV32Config.fir@124448.4]
  wire [1:0] _T_705; // @[Misc.scala 36:63:freechips.rocketchip.system.DefaultRV32Config.fir@124449.4]
  wire [2:0] _T_708; // @[Misc.scala 36:36:freechips.rocketchip.system.DefaultRV32Config.fir@124452.4]
  wire [1:0] _T_709; // @[Misc.scala 36:63:freechips.rocketchip.system.DefaultRV32Config.fir@124453.4]
  wire [2:0] _T_712; // @[Misc.scala 36:36:freechips.rocketchip.system.DefaultRV32Config.fir@124456.4]
  wire [1:0] _T_713; // @[Misc.scala 36:63:freechips.rocketchip.system.DefaultRV32Config.fir@124457.4]
  wire [2:0] s2_report_param; // @[Misc.scala 36:36:freechips.rocketchip.system.DefaultRV32Config.fir@124460.4]
  wire [1:0] probeNewCoh_state; // @[Misc.scala 36:63:freechips.rocketchip.system.DefaultRV32Config.fir@124461.4]
  wire [3:0] _T_722; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@124471.4]
  wire  _T_735; // @[Misc.scala 54:20:freechips.rocketchip.system.DefaultRV32Config.fir@124484.4]
  wire [2:0] _T_737; // @[Misc.scala 36:36:freechips.rocketchip.system.DefaultRV32Config.fir@124486.4]
  wire  _T_739; // @[Misc.scala 54:20:freechips.rocketchip.system.DefaultRV32Config.fir@124488.4]
  wire [2:0] _T_741; // @[Misc.scala 36:36:freechips.rocketchip.system.DefaultRV32Config.fir@124490.4]
  wire  _T_743; // @[Misc.scala 54:20:freechips.rocketchip.system.DefaultRV32Config.fir@124492.4]
  wire [2:0] _T_745; // @[Misc.scala 36:36:freechips.rocketchip.system.DefaultRV32Config.fir@124494.4]
  wire  _T_747; // @[Misc.scala 54:20:freechips.rocketchip.system.DefaultRV32Config.fir@124496.4]
  wire [2:0] _T_749; // @[Misc.scala 36:36:freechips.rocketchip.system.DefaultRV32Config.fir@124498.4]
  wire  _T_751; // @[Misc.scala 54:20:freechips.rocketchip.system.DefaultRV32Config.fir@124500.4]
  wire  _T_752; // @[Misc.scala 36:9:freechips.rocketchip.system.DefaultRV32Config.fir@124501.4]
  wire [2:0] _T_753; // @[Misc.scala 36:36:freechips.rocketchip.system.DefaultRV32Config.fir@124502.4]
  wire  _T_755; // @[Misc.scala 54:20:freechips.rocketchip.system.DefaultRV32Config.fir@124504.4]
  wire  _T_756; // @[Misc.scala 36:9:freechips.rocketchip.system.DefaultRV32Config.fir@124505.4]
  wire [2:0] _T_757; // @[Misc.scala 36:36:freechips.rocketchip.system.DefaultRV32Config.fir@124506.4]
  wire [1:0] _T_758; // @[Misc.scala 36:63:freechips.rocketchip.system.DefaultRV32Config.fir@124507.4]
  wire  _T_759; // @[Misc.scala 54:20:freechips.rocketchip.system.DefaultRV32Config.fir@124508.4]
  wire  _T_760; // @[Misc.scala 36:9:freechips.rocketchip.system.DefaultRV32Config.fir@124509.4]
  wire [2:0] _T_761; // @[Misc.scala 36:36:freechips.rocketchip.system.DefaultRV32Config.fir@124510.4]
  wire [1:0] _T_762; // @[Misc.scala 36:63:freechips.rocketchip.system.DefaultRV32Config.fir@124511.4]
  wire  _T_763; // @[Misc.scala 54:20:freechips.rocketchip.system.DefaultRV32Config.fir@124512.4]
  wire  _T_764; // @[Misc.scala 36:9:freechips.rocketchip.system.DefaultRV32Config.fir@124513.4]
  wire [2:0] _T_765; // @[Misc.scala 36:36:freechips.rocketchip.system.DefaultRV32Config.fir@124514.4]
  wire [1:0] _T_766; // @[Misc.scala 36:63:freechips.rocketchip.system.DefaultRV32Config.fir@124515.4]
  wire  _T_767; // @[Misc.scala 54:20:freechips.rocketchip.system.DefaultRV32Config.fir@124516.4]
  wire  _T_768; // @[Misc.scala 36:9:freechips.rocketchip.system.DefaultRV32Config.fir@124517.4]
  wire [2:0] _T_769; // @[Misc.scala 36:36:freechips.rocketchip.system.DefaultRV32Config.fir@124518.4]
  wire [1:0] _T_770; // @[Misc.scala 36:63:freechips.rocketchip.system.DefaultRV32Config.fir@124519.4]
  wire  _T_771; // @[Misc.scala 54:20:freechips.rocketchip.system.DefaultRV32Config.fir@124520.4]
  wire  _T_772; // @[Misc.scala 36:9:freechips.rocketchip.system.DefaultRV32Config.fir@124521.4]
  wire [2:0] _T_773; // @[Misc.scala 36:36:freechips.rocketchip.system.DefaultRV32Config.fir@124522.4]
  wire [1:0] _T_774; // @[Misc.scala 36:63:freechips.rocketchip.system.DefaultRV32Config.fir@124523.4]
  wire  _T_775; // @[Misc.scala 54:20:freechips.rocketchip.system.DefaultRV32Config.fir@124524.4]
  wire  _T_776; // @[Misc.scala 36:9:freechips.rocketchip.system.DefaultRV32Config.fir@124525.4]
  wire [2:0] _T_777; // @[Misc.scala 36:36:freechips.rocketchip.system.DefaultRV32Config.fir@124526.4]
  wire [1:0] _T_778; // @[Misc.scala 36:63:freechips.rocketchip.system.DefaultRV32Config.fir@124527.4]
  wire  _T_779; // @[Misc.scala 54:20:freechips.rocketchip.system.DefaultRV32Config.fir@124528.4]
  wire  s2_victim_dirty; // @[Misc.scala 36:9:freechips.rocketchip.system.DefaultRV32Config.fir@124529.4]
  wire [2:0] s2_shrink_param; // @[Misc.scala 36:36:freechips.rocketchip.system.DefaultRV32Config.fir@124530.4]
  wire [1:0] voluntaryNewCoh_state; // @[Misc.scala 36:63:freechips.rocketchip.system.DefaultRV32Config.fir@124531.4]
  wire  s2_dont_nack_uncached; // @[DCache.scala 341:57:freechips.rocketchip.system.DefaultRV32Config.fir@124537.4]
  wire  _T_792; // @[DCache.scala 345:17:freechips.rocketchip.system.DefaultRV32Config.fir@124548.4]
  wire  s2_dont_nack_misc; // @[DCache.scala 342:61:freechips.rocketchip.system.DefaultRV32Config.fir@124550.4]
  wire  _T_794; // @[DCache.scala 346:41:freechips.rocketchip.system.DefaultRV32Config.fir@124551.4]
  wire  _T_795; // @[DCache.scala 346:38:freechips.rocketchip.system.DefaultRV32Config.fir@124552.4]
  wire  _T_796; // @[DCache.scala 346:67:freechips.rocketchip.system.DefaultRV32Config.fir@124553.4]
  wire  _T_797; // @[DCache.scala 346:64:freechips.rocketchip.system.DefaultRV32Config.fir@124554.4]
  wire  _T_798; // @[DCache.scala 346:89:freechips.rocketchip.system.DefaultRV32Config.fir@124555.4]
  wire [5:0] _T_821; // @[DCache.scala 1022:47:freechips.rocketchip.system.DefaultRV32Config.fir@124586.4]
  wire [19:0] _T_824; // @[DCache.scala 355:58:freechips.rocketchip.system.DefaultRV32Config.fir@124590.4]
  wire [11:0] _T_835; // @[DCache.scala 367:80:freechips.rocketchip.system.DefaultRV32Config.fir@124615.4]
  wire [19:0] _T_837; // @[DCache.scala 368:68:freechips.rocketchip.system.DefaultRV32Config.fir@124618.4]
  wire  _T_842; // @[DCache.scala 375:34:freechips.rocketchip.system.DefaultRV32Config.fir@124631.4]
  wire  _T_843; // @[DCache.scala 375:41:freechips.rocketchip.system.DefaultRV32Config.fir@124632.4]
  wire  lrscBackingOff; // @[DCache.scala 375:38:freechips.rocketchip.system.DefaultRV32Config.fir@124633.4]
  reg [25:0] lrscAddr; // @[DCache.scala 376:21:freechips.rocketchip.system.DefaultRV32Config.fir@124634.4]
  reg [31:0] _RAND_62;
  wire [25:0] _T_844; // @[DCache.scala 377:49:freechips.rocketchip.system.DefaultRV32Config.fir@124635.4]
  wire  lrscAddrMatch; // @[DCache.scala 377:32:freechips.rocketchip.system.DefaultRV32Config.fir@124636.4]
  wire  _T_845; // @[DCache.scala 378:41:freechips.rocketchip.system.DefaultRV32Config.fir@124637.4]
  wire  _T_846; // @[DCache.scala 378:29:freechips.rocketchip.system.DefaultRV32Config.fir@124638.4]
  wire  s2_sc_fail; // @[DCache.scala 378:26:freechips.rocketchip.system.DefaultRV32Config.fir@124639.4]
  wire  _T_847; // @[DCache.scala 379:23:freechips.rocketchip.system.DefaultRV32Config.fir@124640.4]
  wire  _T_849; // @[DCache.scala 379:32:freechips.rocketchip.system.DefaultRV32Config.fir@124642.4]
  wire  _T_850; // @[DCache.scala 379:54:freechips.rocketchip.system.DefaultRV32Config.fir@124643.4]
  wire [6:0] _T_857; // @[DCache.scala 383:49:freechips.rocketchip.system.DefaultRV32Config.fir@124655.6]
  wire  _T_858; // @[DCache.scala 384:29:freechips.rocketchip.system.DefaultRV32Config.fir@124658.4]
  wire  _T_866; // @[DCache.scala 393:63:freechips.rocketchip.system.DefaultRV32Config.fir@124675.4]
  reg [4:0] pstore1_cmd; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@124676.4]
  reg [31:0] _RAND_63;
  reg [31:0] pstore1_data; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@124686.4]
  reg [31:0] _RAND_64;
  reg [3:0] pstore1_way; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@124691.4]
  reg [31:0] _RAND_65;
  wire  _T_920; // @[DCache.scala 1013:23:freechips.rocketchip.system.DefaultRV32Config.fir@124752.4]
  wire  _T_921; // @[DCache.scala 1012:21:freechips.rocketchip.system.DefaultRV32Config.fir@124753.4]
  reg  pstore1_rmw; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@124755.4]
  reg [31:0] _RAND_66;
  wire  _T_925; // @[DCache.scala 391:46:freechips.rocketchip.system.DefaultRV32Config.fir@124762.4]
  wire  _T_926; // @[DCache.scala 391:61:freechips.rocketchip.system.DefaultRV32Config.fir@124763.4]
  wire  _T_927; // @[DCache.scala 391:58:freechips.rocketchip.system.DefaultRV32Config.fir@124764.4]
  wire  pstore_drain_opportunistic; // @[DCache.scala 403:36:freechips.rocketchip.system.DefaultRV32Config.fir@124836.4]
  reg  _T_995; // @[DCache.scala 404:56:freechips.rocketchip.system.DefaultRV32Config.fir@124840.4]
  reg [31:0] _RAND_67;
  wire  pstore_drain_on_miss; // @[DCache.scala 404:46:freechips.rocketchip.system.DefaultRV32Config.fir@124842.4]
  wire  pstore1_valid; // @[DCache.scala 408:38:freechips.rocketchip.system.DefaultRV32Config.fir@124851.4]
  wire  _T_1003; // @[DCache.scala 410:54:freechips.rocketchip.system.DefaultRV32Config.fir@124854.4]
  wire  _T_1004; // @[DCache.scala 410:85:freechips.rocketchip.system.DefaultRV32Config.fir@124855.4]
  wire  _T_1005; // @[DCache.scala 410:98:freechips.rocketchip.system.DefaultRV32Config.fir@124856.4]
  wire  pstore_drain_structural; // @[DCache.scala 410:71:freechips.rocketchip.system.DefaultRV32Config.fir@124857.4]
  wire  _T_1009; // @[DCache.scala 407:96:freechips.rocketchip.system.DefaultRV32Config.fir@124861.4]
  wire  _T_1010; // @[DCache.scala 411:63:freechips.rocketchip.system.DefaultRV32Config.fir@124862.4]
  wire  _T_1011; // @[DCache.scala 411:22:freechips.rocketchip.system.DefaultRV32Config.fir@124863.4]
  wire  _T_1013; // @[DCache.scala 411:9:freechips.rocketchip.system.DefaultRV32Config.fir@124865.4]
  wire  _T_1014; // @[DCache.scala 411:9:freechips.rocketchip.system.DefaultRV32Config.fir@124866.4]
  wire  _T_1023; // @[DCache.scala 419:44:freechips.rocketchip.system.DefaultRV32Config.fir@124880.4]
  wire  _T_1024; // @[DCache.scala 419:41:freechips.rocketchip.system.DefaultRV32Config.fir@124881.4]
  wire  _T_1025; // @[DCache.scala 419:58:freechips.rocketchip.system.DefaultRV32Config.fir@124882.4]
  wire  _T_1026; // @[DCache.scala 419:107:freechips.rocketchip.system.DefaultRV32Config.fir@124883.4]
  wire  _T_1027; // @[DCache.scala 419:76:freechips.rocketchip.system.DefaultRV32Config.fir@124884.4]
  wire  pstore_drain; // @[DCache.scala 418:48:freechips.rocketchip.system.DefaultRV32Config.fir@124885.4]
  wire  _T_1037; // @[DCache.scala 422:71:freechips.rocketchip.system.DefaultRV32Config.fir@124895.4]
  wire  _T_1038; // @[DCache.scala 422:91:freechips.rocketchip.system.DefaultRV32Config.fir@124896.4]
  wire  _T_1041; // @[DCache.scala 423:79:freechips.rocketchip.system.DefaultRV32Config.fir@124900.4]
  wire  advance_pstore1; // @[DCache.scala 423:61:freechips.rocketchip.system.DefaultRV32Config.fir@124901.4]
  wire  _T_1043; // @[DCache.scala 424:34:freechips.rocketchip.system.DefaultRV32Config.fir@124903.4]
  reg [3:0] pstore2_way; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@124912.4]
  reg [31:0] _RAND_68;
  wire [31:0] pstore1_storegen_data; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@124700.4 :freechips.rocketchip.system.DefaultRV32Config.fir@124702.4 DCache.scala 816:27:freechips.rocketchip.system.DefaultRV32Config.fir@126911.4]
  wire [7:0] _T_1047; // @[DCache.scala 429:44:freechips.rocketchip.system.DefaultRV32Config.fir@124916.4]
  reg [7:0] _T_1051; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@124920.4]
  reg [31:0] _RAND_69;
  wire [7:0] _T_1052; // @[DCache.scala 429:44:freechips.rocketchip.system.DefaultRV32Config.fir@124924.4]
  reg [7:0] _T_1056; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@124928.4]
  reg [31:0] _RAND_70;
  wire [7:0] _T_1057; // @[DCache.scala 429:44:freechips.rocketchip.system.DefaultRV32Config.fir@124932.4]
  reg [7:0] _T_1061; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@124936.4]
  reg [31:0] _RAND_71;
  wire [7:0] _T_1062; // @[DCache.scala 429:44:freechips.rocketchip.system.DefaultRV32Config.fir@124940.4]
  reg [7:0] _T_1066; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@124944.4]
  reg [31:0] _RAND_72;
  wire [31:0] pstore2_storegen_data; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@124950.4]
  wire [3:0] _T_1071; // @[DCache.scala 435:37:freechips.rocketchip.system.DefaultRV32Config.fir@124956.6]
  wire [3:0] _T_1073; // @[DCache.scala 435:15:freechips.rocketchip.system.DefaultRV32Config.fir@124958.6]
  wire [31:0] _T_1087; // @[DCache.scala 450:36:freechips.rocketchip.system.DefaultRV32Config.fir@124978.4]
  wire [31:0] _T_1089; // @[DCache.scala 452:63:freechips.rocketchip.system.DefaultRV32Config.fir@124982.4]
  wire [7:0] _T_1090; // @[package.scala 160:50:freechips.rocketchip.system.DefaultRV32Config.fir@124983.4]
  wire [7:0] _T_1091; // @[package.scala 160:50:freechips.rocketchip.system.DefaultRV32Config.fir@124984.4]
  wire [7:0] _T_1092; // @[package.scala 160:50:freechips.rocketchip.system.DefaultRV32Config.fir@124985.4]
  wire [7:0] _T_1093; // @[package.scala 160:50:freechips.rocketchip.system.DefaultRV32Config.fir@124986.4]
  wire [15:0] _T_1094; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@124987.4]
  wire [15:0] _T_1095; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@124988.4]
  wire [3:0] _T_1099; // @[DCache.scala 454:47:freechips.rocketchip.system.DefaultRV32Config.fir@124994.4]
  wire  _T_1100; // @[package.scala 160:50:freechips.rocketchip.system.DefaultRV32Config.fir@124995.4]
  wire  _T_1101; // @[package.scala 160:50:freechips.rocketchip.system.DefaultRV32Config.fir@124996.4]
  wire  _T_1102; // @[package.scala 160:50:freechips.rocketchip.system.DefaultRV32Config.fir@124997.4]
  wire  _T_1103; // @[package.scala 160:50:freechips.rocketchip.system.DefaultRV32Config.fir@124998.4]
  wire [1:0] _T_1108; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@125003.4]
  wire [1:0] _T_1109; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@125004.4]
  wire  _T_1209; // @[DCache.scala 474:34:freechips.rocketchip.system.DefaultRV32Config.fir@125113.4]
  wire [1:0] _T_1210; // @[DCache.scala 474:59:freechips.rocketchip.system.DefaultRV32Config.fir@125114.4]
  wire  _T_1211; // @[OneHot.scala 47:40:freechips.rocketchip.system.DefaultRV32Config.fir@125115.4]
  wire  a_source; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@125117.4]
  wire [31:0] acquire_address; // @[DCache.scala 475:49:freechips.rocketchip.system.DefaultRV32Config.fir@125119.4]
  wire [18:0] a_mask; // @[DCache.scala 479:29:freechips.rocketchip.system.DefaultRV32Config.fir@125121.4]
  wire [1:0] _T_1269; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@125183.4]
  wire [1:0] _T_1271; // @[Misc.scala 200:81:freechips.rocketchip.system.DefaultRV32Config.fir@125185.4]
  wire  _T_1272; // @[Misc.scala 204:21:freechips.rocketchip.system.DefaultRV32Config.fir@125186.4]
  wire  _T_1273; // @[Misc.scala 207:26:freechips.rocketchip.system.DefaultRV32Config.fir@125187.4]
  wire  _T_1274; // @[Misc.scala 208:26:freechips.rocketchip.system.DefaultRV32Config.fir@125188.4]
  wire  _T_1275; // @[Misc.scala 209:20:freechips.rocketchip.system.DefaultRV32Config.fir@125189.4]
  wire  _T_1277; // @[Misc.scala 213:38:freechips.rocketchip.system.DefaultRV32Config.fir@125191.4]
  wire  _T_1278; // @[Misc.scala 213:29:freechips.rocketchip.system.DefaultRV32Config.fir@125192.4]
  wire  _T_1280; // @[Misc.scala 213:38:freechips.rocketchip.system.DefaultRV32Config.fir@125194.4]
  wire  _T_1281; // @[Misc.scala 213:29:freechips.rocketchip.system.DefaultRV32Config.fir@125195.4]
  wire  _T_1282; // @[Misc.scala 207:26:freechips.rocketchip.system.DefaultRV32Config.fir@125196.4]
  wire  _T_1283; // @[Misc.scala 208:26:freechips.rocketchip.system.DefaultRV32Config.fir@125197.4]
  wire  _T_1284; // @[Misc.scala 209:20:freechips.rocketchip.system.DefaultRV32Config.fir@125198.4]
  wire  _T_1285; // @[Misc.scala 212:27:freechips.rocketchip.system.DefaultRV32Config.fir@125199.4]
  wire  _T_1286; // @[Misc.scala 213:38:freechips.rocketchip.system.DefaultRV32Config.fir@125200.4]
  wire  _T_1287; // @[Misc.scala 213:29:freechips.rocketchip.system.DefaultRV32Config.fir@125201.4]
  wire  _T_1288; // @[Misc.scala 212:27:freechips.rocketchip.system.DefaultRV32Config.fir@125202.4]
  wire  _T_1289; // @[Misc.scala 213:38:freechips.rocketchip.system.DefaultRV32Config.fir@125203.4]
  wire  _T_1290; // @[Misc.scala 213:29:freechips.rocketchip.system.DefaultRV32Config.fir@125204.4]
  wire  _T_1291; // @[Misc.scala 212:27:freechips.rocketchip.system.DefaultRV32Config.fir@125205.4]
  wire  _T_1292; // @[Misc.scala 213:38:freechips.rocketchip.system.DefaultRV32Config.fir@125206.4]
  wire  _T_1293; // @[Misc.scala 213:29:freechips.rocketchip.system.DefaultRV32Config.fir@125207.4]
  wire  _T_1294; // @[Misc.scala 212:27:freechips.rocketchip.system.DefaultRV32Config.fir@125208.4]
  wire  _T_1295; // @[Misc.scala 213:38:freechips.rocketchip.system.DefaultRV32Config.fir@125209.4]
  wire  _T_1296; // @[Misc.scala 213:29:freechips.rocketchip.system.DefaultRV32Config.fir@125210.4]
  wire [3:0] get_mask; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@125213.4]
  wire  _T_2091; // @[Mux.scala 68:19:freechips.rocketchip.system.DefaultRV32Config.fir@126110.4]
  wire [2:0] _T_2092_opcode; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126111.4]
  wire [2:0] _T_2092_param; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126111.4]
  wire [3:0] _T_2057_size; // @[Edges.scala 491:17:freechips.rocketchip.system.DefaultRV32Config.fir@126067.4 Edges.scala 494:15:freechips.rocketchip.system.DefaultRV32Config.fir@126071.4]
  wire [3:0] _T_2092_size; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126111.4]
  wire  _T_2092_source; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126111.4]
  wire [31:0] _T_2092_address; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126111.4]
  wire [3:0] _T_2092_mask; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126111.4]
  wire [31:0] _T_2092_data; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126111.4]
  wire  _T_2093; // @[Mux.scala 68:19:freechips.rocketchip.system.DefaultRV32Config.fir@126112.4]
  wire [2:0] _T_2094_opcode; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126113.4]
  wire [2:0] _T_2094_param; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126113.4]
  wire [3:0] _T_2094_size; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126113.4]
  wire  _T_2094_source; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126113.4]
  wire [31:0] _T_2094_address; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126113.4]
  wire [3:0] _T_2094_mask; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126113.4]
  wire [31:0] _T_2094_data; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126113.4]
  wire  _T_2095; // @[Mux.scala 68:19:freechips.rocketchip.system.DefaultRV32Config.fir@126114.4]
  wire [2:0] _T_2096_opcode; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126115.4]
  wire [2:0] _T_2096_param; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126115.4]
  wire [3:0] _T_2096_size; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126115.4]
  wire  _T_2096_source; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126115.4]
  wire [31:0] _T_2096_address; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126115.4]
  wire [3:0] _T_2096_mask; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126115.4]
  wire [31:0] _T_2096_data; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126115.4]
  wire  _T_2097; // @[Mux.scala 68:19:freechips.rocketchip.system.DefaultRV32Config.fir@126116.4]
  wire [2:0] _T_2098_opcode; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126117.4]
  wire [2:0] _T_2098_param; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126117.4]
  wire [3:0] _T_2098_size; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126117.4]
  wire  _T_2098_source; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126117.4]
  wire [31:0] _T_2098_address; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126117.4]
  wire [3:0] _T_2098_mask; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126117.4]
  wire [31:0] _T_2098_data; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126117.4]
  wire  _T_2099; // @[Mux.scala 68:19:freechips.rocketchip.system.DefaultRV32Config.fir@126118.4]
  wire [2:0] _T_2100_opcode; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126119.4]
  wire [2:0] _T_2100_param; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126119.4]
  wire [3:0] _T_2100_size; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126119.4]
  wire  _T_2100_source; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126119.4]
  wire [31:0] _T_2100_address; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126119.4]
  wire [3:0] _T_2100_mask; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126119.4]
  wire [31:0] _T_2100_data; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126119.4]
  wire  _T_2101; // @[Mux.scala 68:19:freechips.rocketchip.system.DefaultRV32Config.fir@126120.4]
  wire [2:0] _T_2102_opcode; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126121.4]
  wire [2:0] _T_2102_param; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126121.4]
  wire [3:0] _T_2102_size; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126121.4]
  wire  _T_2102_source; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126121.4]
  wire [31:0] _T_2102_address; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126121.4]
  wire [3:0] _T_2102_mask; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126121.4]
  wire [31:0] _T_2102_data; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126121.4]
  wire  _T_2103; // @[Mux.scala 68:19:freechips.rocketchip.system.DefaultRV32Config.fir@126122.4]
  wire [2:0] _T_2104_opcode; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126123.4]
  wire [2:0] _T_2104_param; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126123.4]
  wire [3:0] _T_2104_size; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126123.4]
  wire  _T_2104_source; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126123.4]
  wire [31:0] _T_2104_address; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126123.4]
  wire [3:0] _T_2104_mask; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126123.4]
  wire [31:0] _T_2104_data; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126123.4]
  wire  _T_2105; // @[Mux.scala 68:19:freechips.rocketchip.system.DefaultRV32Config.fir@126124.4]
  wire [2:0] _T_2106_opcode; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126125.4]
  wire [2:0] _T_2106_param; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126125.4]
  wire [3:0] _T_2106_size; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126125.4]
  wire  _T_2106_source; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126125.4]
  wire [31:0] _T_2106_address; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126125.4]
  wire [3:0] _T_2106_mask; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126125.4]
  wire [31:0] _T_2106_data; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126125.4]
  wire  _T_2107; // @[Mux.scala 68:19:freechips.rocketchip.system.DefaultRV32Config.fir@126126.4]
  wire [2:0] atomics_opcode; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126127.4]
  wire [2:0] atomics_param; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126127.4]
  wire [3:0] atomics_size; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126127.4]
  wire  atomics_source; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126127.4]
  wire [31:0] atomics_address; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126127.4]
  wire [3:0] atomics_mask; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126127.4]
  wire [31:0] atomics_data; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126127.4]
  wire  _T_2109; // @[DCache.scala 500:109:freechips.rocketchip.system.DefaultRV32Config.fir@126129.4]
  wire  _T_2111; // @[DCache.scala 500:63:freechips.rocketchip.system.DefaultRV32Config.fir@126131.4]
  wire  tl_out_a_valid; // @[DCache.scala 500:128:freechips.rocketchip.system.DefaultRV32Config.fir@126132.4]
  wire  _T_2170; // @[DCache.scala 502:9:freechips.rocketchip.system.DefaultRV32Config.fir@126200.4]
  wire  _T_2172; // @[DCache.scala 504:9:freechips.rocketchip.system.DefaultRV32Config.fir@126202.4]
  wire [2:0] _T_2173_opcode; // @[DCache.scala 504:8:freechips.rocketchip.system.DefaultRV32Config.fir@126203.4]
  wire [2:0] _T_2173_param; // @[DCache.scala 504:8:freechips.rocketchip.system.DefaultRV32Config.fir@126203.4]
  wire [3:0] _T_2173_size; // @[DCache.scala 504:8:freechips.rocketchip.system.DefaultRV32Config.fir@126203.4]
  wire  _T_2173_source; // @[DCache.scala 504:8:freechips.rocketchip.system.DefaultRV32Config.fir@126203.4]
  wire [31:0] _T_2173_address; // @[DCache.scala 504:8:freechips.rocketchip.system.DefaultRV32Config.fir@126203.4]
  wire [3:0] _T_2173_mask; // @[DCache.scala 504:8:freechips.rocketchip.system.DefaultRV32Config.fir@126203.4]
  wire [31:0] _T_2173_data; // @[DCache.scala 504:8:freechips.rocketchip.system.DefaultRV32Config.fir@126203.4]
  wire [2:0] _T_2174_opcode; // @[DCache.scala 503:8:freechips.rocketchip.system.DefaultRV32Config.fir@126204.4]
  wire [2:0] _T_2174_param; // @[DCache.scala 503:8:freechips.rocketchip.system.DefaultRV32Config.fir@126204.4]
  wire [3:0] _T_2174_size; // @[DCache.scala 503:8:freechips.rocketchip.system.DefaultRV32Config.fir@126204.4]
  wire  _T_2174_source; // @[DCache.scala 503:8:freechips.rocketchip.system.DefaultRV32Config.fir@126204.4]
  wire [31:0] _T_2174_address; // @[DCache.scala 503:8:freechips.rocketchip.system.DefaultRV32Config.fir@126204.4]
  wire [3:0] putpartial_mask; // @[Edges.scala 476:17:freechips.rocketchip.system.DefaultRV32Config.fir@125378.4 Edges.scala 482:15:freechips.rocketchip.system.DefaultRV32Config.fir@125385.4]
  wire [3:0] _T_2174_mask; // @[DCache.scala 503:8:freechips.rocketchip.system.DefaultRV32Config.fir@126204.4]
  wire [31:0] _T_2174_data; // @[DCache.scala 503:8:freechips.rocketchip.system.DefaultRV32Config.fir@126204.4]
  wire [2:0] _T_2175_opcode; // @[DCache.scala 502:8:freechips.rocketchip.system.DefaultRV32Config.fir@126205.4]
  wire [2:0] _T_2175_param; // @[DCache.scala 502:8:freechips.rocketchip.system.DefaultRV32Config.fir@126205.4]
  wire [3:0] _T_2175_size; // @[DCache.scala 502:8:freechips.rocketchip.system.DefaultRV32Config.fir@126205.4]
  wire  _T_2175_source; // @[DCache.scala 502:8:freechips.rocketchip.system.DefaultRV32Config.fir@126205.4]
  wire [31:0] _T_2175_address; // @[DCache.scala 502:8:freechips.rocketchip.system.DefaultRV32Config.fir@126205.4]
  wire [3:0] _T_2175_mask; // @[DCache.scala 502:8:freechips.rocketchip.system.DefaultRV32Config.fir@126205.4]
  wire [31:0] _T_2175_data; // @[DCache.scala 502:8:freechips.rocketchip.system.DefaultRV32Config.fir@126205.4]
  wire [2:0] _T_2136_param; // @[Edges.scala 338:17:freechips.rocketchip.system.DefaultRV32Config.fir@126157.4 Edges.scala 340:15:freechips.rocketchip.system.DefaultRV32Config.fir@126160.4]
  wire [1:0] _T_2178; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@126209.4]
  wire  a_sel; // @[DCache.scala 507:66:freechips.rocketchip.system.DefaultRV32Config.fir@126211.4]
  wire  _T_2180; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@126212.4]
  wire  _GEN_114; // @[DCache.scala 511:18:freechips.rocketchip.system.DefaultRV32Config.fir@126216.8]
  wire [26:0] _T_2184; // @[package.scala 189:77:freechips.rocketchip.system.DefaultRV32Config.fir@126227.4]
  wire [11:0] _T_2185; // @[package.scala 189:82:freechips.rocketchip.system.DefaultRV32Config.fir@126228.4]
  wire [11:0] _T_2186; // @[package.scala 189:46:freechips.rocketchip.system.DefaultRV32Config.fir@126229.4]
  wire [9:0] _T_2187; // @[Edges.scala 221:59:freechips.rocketchip.system.DefaultRV32Config.fir@126230.4]
  wire  _T_2188; // @[Edges.scala 107:36:freechips.rocketchip.system.DefaultRV32Config.fir@126231.4]
  wire [9:0] _T_2189; // @[Edges.scala 222:14:freechips.rocketchip.system.DefaultRV32Config.fir@126232.4]
  wire [9:0] _T_2192; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@126235.4]
  wire  _T_2193; // @[Edges.scala 233:25:freechips.rocketchip.system.DefaultRV32Config.fir@126237.4]
  wire  _T_2194; // @[Edges.scala 233:47:freechips.rocketchip.system.DefaultRV32Config.fir@126238.4]
  wire  d_last; // @[Edges.scala 233:37:freechips.rocketchip.system.DefaultRV32Config.fir@126239.4]
  wire  d_done; // @[Edges.scala 234:22:freechips.rocketchip.system.DefaultRV32Config.fir@126240.4]
  wire [9:0] _T_2195; // @[Edges.scala 235:27:freechips.rocketchip.system.DefaultRV32Config.fir@126241.4]
  wire [9:0] _T_2196; // @[Edges.scala 235:25:freechips.rocketchip.system.DefaultRV32Config.fir@126242.4]
  wire [11:0] d_address_inc; // @[Edges.scala 270:29:freechips.rocketchip.system.DefaultRV32Config.fir@126247.4]
  wire  _T_2202; // @[DCache.scala 538:80:freechips.rocketchip.system.DefaultRV32Config.fir@126254.4]
  wire  grantIsVoluntary; // @[DCache.scala 540:32:freechips.rocketchip.system.DefaultRV32Config.fir@126267.4]
  wire [2:0] _T_2215; // @[DCache.scala 544:97:freechips.rocketchip.system.DefaultRV32Config.fir@126274.6]
  wire [1:0] _T_2224; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@126287.4]
  wire  uncachedRespIdxOH; // @[DCache.scala 547:90:freechips.rocketchip.system.DefaultRV32Config.fir@126289.4]
  wire  _T_2229; // @[DCache.scala 552:13:freechips.rocketchip.system.DefaultRV32Config.fir@126297.8]
  wire  _T_2230; // @[DCache.scala 552:13:freechips.rocketchip.system.DefaultRV32Config.fir@126298.8]
  wire  _T_2232; // @[DCache.scala 561:17:freechips.rocketchip.system.DefaultRV32Config.fir@126313.10]
  wire  _T_2234; // @[DCache.scala 562:17:freechips.rocketchip.system.DefaultRV32Config.fir@126316.12]
  wire  _T_2235; // @[DCache.scala 562:17:freechips.rocketchip.system.DefaultRV32Config.fir@126317.12]
  wire [29:0] _T_2237; // @[DCache.scala 576:41:freechips.rocketchip.system.DefaultRV32Config.fir@126331.12]
  wire [31:0] dontCareBits; // @[DCache.scala 576:55:freechips.rocketchip.system.DefaultRV32Config.fir@126332.12]
  wire [1:0] _T_2238; // @[DCache.scala 577:45:freechips.rocketchip.system.DefaultRV32Config.fir@126333.12]
  wire [31:0] _GEN_315; // @[DCache.scala 577:26:freechips.rocketchip.system.DefaultRV32Config.fir@126334.12]
  wire [31:0] _T_2239; // @[DCache.scala 577:26:freechips.rocketchip.system.DefaultRV32Config.fir@126334.12]
  wire  _T_2241; // @[DCache.scala 583:13:freechips.rocketchip.system.DefaultRV32Config.fir@126342.12]
  wire  _T_2242; // @[DCache.scala 583:13:freechips.rocketchip.system.DefaultRV32Config.fir@126343.12]
  wire  _GEN_163; // @[DCache.scala 582:36:freechips.rocketchip.system.DefaultRV32Config.fir@126340.10]
  wire  _GEN_172; // @[DCache.scala 559:35:freechips.rocketchip.system.DefaultRV32Config.fir@126311.8]
  wire  _GEN_176; // @[DCache.scala 550:26:freechips.rocketchip.system.DefaultRV32Config.fir@126294.6]
  wire  _GEN_185; // @[DCache.scala 550:26:freechips.rocketchip.system.DefaultRV32Config.fir@126294.6]
  wire  _GEN_198; // @[DCache.scala 549:26:freechips.rocketchip.system.DefaultRV32Config.fir@126293.4]
  wire  _T_2243; // @[DCache.scala 589:36:freechips.rocketchip.system.DefaultRV32Config.fir@126351.4]
  wire  _T_2244; // @[DCache.scala 589:47:freechips.rocketchip.system.DefaultRV32Config.fir@126352.4]
  wire  _T_2245; // @[DCache.scala 589:64:freechips.rocketchip.system.DefaultRV32Config.fir@126353.4]
  wire  tl_out__e_valid; // @[DCache.scala 597:51:freechips.rocketchip.system.DefaultRV32Config.fir@126376.4]
  wire  _T_2247; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@126359.4]
  wire  _T_2249; // @[DCache.scala 591:47:freechips.rocketchip.system.DefaultRV32Config.fir@126361.4]
  wire  _T_2250; // @[DCache.scala 591:58:freechips.rocketchip.system.DefaultRV32Config.fir@126362.4]
  wire  _T_2251; // @[DCache.scala 591:26:freechips.rocketchip.system.DefaultRV32Config.fir@126363.4]
  wire  _T_2253; // @[DCache.scala 591:9:freechips.rocketchip.system.DefaultRV32Config.fir@126365.4]
  wire  _T_2254; // @[DCache.scala 591:9:freechips.rocketchip.system.DefaultRV32Config.fir@126366.4]
  wire  _T_2255; // @[DCache.scala 596:44:freechips.rocketchip.system.DefaultRV32Config.fir@126371.4]
  wire  _T_2256; // @[DCache.scala 596:61:freechips.rocketchip.system.DefaultRV32Config.fir@126372.4]
  wire [25:0] _T_2259; // @[DCache.scala 603:46:freechips.rocketchip.system.DefaultRV32Config.fir@126381.4]
  wire [31:0] _T_2260; // @[DCache.scala 603:57:freechips.rocketchip.system.DefaultRV32Config.fir@126382.4]
  wire [31:0] _GEN_316; // @[DCache.scala 603:67:freechips.rocketchip.system.DefaultRV32Config.fir@126383.4]
  wire [31:0] _T_2261; // @[DCache.scala 603:67:freechips.rocketchip.system.DefaultRV32Config.fir@126383.4]
  wire  _T_2264; // @[DCache.scala 616:43:freechips.rocketchip.system.DefaultRV32Config.fir@126391.4]
  wire  _T_2265; // @[DCache.scala 616:56:freechips.rocketchip.system.DefaultRV32Config.fir@126392.4]
  wire [3:0] _T_2323; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@126455.4]
  wire  _T_2332; // @[Mux.scala 68:19:freechips.rocketchip.system.DefaultRV32Config.fir@126464.4]
  wire [1:0] _T_2333; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126465.4]
  wire  _T_2334; // @[Mux.scala 68:19:freechips.rocketchip.system.DefaultRV32Config.fir@126466.4]
  wire [1:0] _T_2335; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126467.4]
  wire  _T_2336; // @[Mux.scala 68:19:freechips.rocketchip.system.DefaultRV32Config.fir@126468.4]
  wire [1:0] _T_2337; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126469.4]
  wire  _T_2338; // @[Mux.scala 68:19:freechips.rocketchip.system.DefaultRV32Config.fir@126470.4]
  wire [1:0] _T_2339; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126471.4]
  wire  _GEN_201; // @[DCache.scala 630:29:freechips.rocketchip.system.DefaultRV32Config.fir@126487.6]
  wire  _GEN_202; // @[DCache.scala 630:29:freechips.rocketchip.system.DefaultRV32Config.fir@126487.6]
  wire  _GEN_203; // @[DCache.scala 630:29:freechips.rocketchip.system.DefaultRV32Config.fir@126487.6]
  wire  _T_2353; // @[DCache.scala 644:48:freechips.rocketchip.system.DefaultRV32Config.fir@126505.4]
  wire  _T_2354; // @[DCache.scala 644:79:freechips.rocketchip.system.DefaultRV32Config.fir@126506.4]
  wire  _T_2355; // @[DCache.scala 644:44:freechips.rocketchip.system.DefaultRV32Config.fir@126507.4]
  wire [5:0] _T_2361; // @[DCache.scala 1022:47:freechips.rocketchip.system.DefaultRV32Config.fir@126516.4]
  wire [32:0] _T_2363; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@126519.4]
  wire [9:0] _T_2374; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@126533.4]
  wire  c_first; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@126534.4]
  wire [9:0] _T_2377; // @[Edges.scala 235:27:freechips.rocketchip.system.DefaultRV32Config.fir@126539.4]
  wire [9:0] c_count; // @[Edges.scala 235:25:freechips.rocketchip.system.DefaultRV32Config.fir@126540.4]
  wire  _T_2379; // @[DCache.scala 654:43:freechips.rocketchip.system.DefaultRV32Config.fir@126545.4]
  wire  releaseRejected; // @[DCache.scala 654:40:freechips.rocketchip.system.DefaultRV32Config.fir@126546.4]
  reg  s1_release_data_valid; // @[DCache.scala 655:34:freechips.rocketchip.system.DefaultRV32Config.fir@126548.4]
  reg [31:0] _RAND_73;
  wire  _T_2381; // @[DCache.scala 656:67:freechips.rocketchip.system.DefaultRV32Config.fir@126550.4]
  wire [10:0] _T_2383; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@126554.4]
  wire [1:0] _T_2384; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@126555.4]
  wire [1:0] _GEN_317; // @[DCache.scala 657:101:freechips.rocketchip.system.DefaultRV32Config.fir@126556.4]
  wire [1:0] _T_2386; // @[DCache.scala 657:101:freechips.rocketchip.system.DefaultRV32Config.fir@126557.4]
  wire [1:0] _T_2387; // @[DCache.scala 657:52:freechips.rocketchip.system.DefaultRV32Config.fir@126558.4]
  wire [10:0] _GEN_318; // @[DCache.scala 657:47:freechips.rocketchip.system.DefaultRV32Config.fir@126559.4]
  wire [10:0] releaseDataBeat; // @[DCache.scala 657:47:freechips.rocketchip.system.DefaultRV32Config.fir@126560.4]
  wire  _T_2389; // @[DCache.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@126595.6]
  wire  _T_2390; // @[DCache.scala 670:52:freechips.rocketchip.system.DefaultRV32Config.fir@126596.6]
  wire  _T_2392; // @[DCache.scala 670:13:freechips.rocketchip.system.DefaultRV32Config.fir@126598.6]
  wire  _T_2393; // @[DCache.scala 670:13:freechips.rocketchip.system.DefaultRV32Config.fir@126599.6]
  wire  _T_2394; // @[DCache.scala 671:60:freechips.rocketchip.system.DefaultRV32Config.fir@126604.6]
  wire  discard_line; // @[DCache.scala 671:46:freechips.rocketchip.system.DefaultRV32Config.fir@126605.6]
  wire  _T_2398; // @[DCache.scala 672:47:freechips.rocketchip.system.DefaultRV32Config.fir@126609.6]
  wire  _T_2399; // @[DCache.scala 672:44:freechips.rocketchip.system.DefaultRV32Config.fir@126610.6]
  wire [2:0] _T_2400; // @[DCache.scala 672:27:freechips.rocketchip.system.DefaultRV32Config.fir@126611.6]
  wire [5:0] _T_2401; // @[DCache.scala 673:76:freechips.rocketchip.system.DefaultRV32Config.fir@126613.6]
  wire [25:0] _T_2402; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@126614.6]
  wire [31:0] res_2_address; // @[DCache.scala 673:96:freechips.rocketchip.system.DefaultRV32Config.fir@126615.6]
  wire [2:0] _GEN_211; // @[DCache.scala 669:25:freechips.rocketchip.system.DefaultRV32Config.fir@126594.4]
  wire [2:0] _T_2405; // @[DCache.scala 684:29:freechips.rocketchip.system.DefaultRV32Config.fir@126638.12]
  wire [2:0] _T_2407; // @[DCache.scala 688:29:freechips.rocketchip.system.DefaultRV32Config.fir@126645.12]
  wire [2:0] _GEN_222; // @[DCache.scala 681:45:freechips.rocketchip.system.DefaultRV32Config.fir@126635.10]
  wire [2:0] _GEN_228; // @[DCache.scala 681:45:freechips.rocketchip.system.DefaultRV32Config.fir@126635.10]
  wire [2:0] _GEN_230; // @[DCache.scala 679:36:freechips.rocketchip.system.DefaultRV32Config.fir@126630.8]
  wire [2:0] _GEN_233; // @[DCache.scala 679:36:freechips.rocketchip.system.DefaultRV32Config.fir@126630.8]
  wire [2:0] _GEN_251; // @[DCache.scala 675:21:freechips.rocketchip.system.DefaultRV32Config.fir@126622.4]
  wire [2:0] _GEN_254; // @[DCache.scala 675:21:freechips.rocketchip.system.DefaultRV32Config.fir@126622.4]
  wire  _T_2408; // @[DCache.scala 692:25:freechips.rocketchip.system.DefaultRV32Config.fir@126652.4]
  wire [32:0] _T_2411; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@126658.6]
  wire [2:0] _GEN_261; // @[DCache.scala 696:37:freechips.rocketchip.system.DefaultRV32Config.fir@126660.6]
  wire  _GEN_262; // @[DCache.scala 696:37:freechips.rocketchip.system.DefaultRV32Config.fir@126660.6]
  wire [32:0] _GEN_265; // @[DCache.scala 692:44:freechips.rocketchip.system.DefaultRV32Config.fir@126653.4]
  wire [2:0] _GEN_266; // @[DCache.scala 692:44:freechips.rocketchip.system.DefaultRV32Config.fir@126653.4]
  wire [2:0] _GEN_268; // @[DCache.scala 703:26:freechips.rocketchip.system.DefaultRV32Config.fir@126668.6]
  wire [2:0] _GEN_270; // @[DCache.scala 701:47:freechips.rocketchip.system.DefaultRV32Config.fir@126666.4]
  wire [2:0] _GEN_274; // @[DCache.scala 705:48:freechips.rocketchip.system.DefaultRV32Config.fir@126673.4]
  wire [2:0] _GEN_283; // @[DCache.scala 710:48:freechips.rocketchip.system.DefaultRV32Config.fir@126681.4]
  wire  _T_2439; // @[DCache.scala 723:29:freechips.rocketchip.system.DefaultRV32Config.fir@126726.6]
  wire  _GEN_291; // @[DCache.scala 723:41:freechips.rocketchip.system.DefaultRV32Config.fir@126727.6]
  wire [1:0] newCoh_state; // @[DCache.scala 714:81:freechips.rocketchip.system.DefaultRV32Config.fir@126690.4]
  wire  _T_2441; // @[DCache.scala 734:60:freechips.rocketchip.system.DefaultRV32Config.fir@126737.4]
  wire [11:0] _T_2444; // @[DCache.scala 737:55:freechips.rocketchip.system.DefaultRV32Config.fir@126743.4]
  wire [3:0] _T_2445; // @[DCache.scala 737:90:freechips.rocketchip.system.DefaultRV32Config.fir@126744.4]
  wire [5:0] _T_2446; // @[DCache.scala 737:117:freechips.rocketchip.system.DefaultRV32Config.fir@126745.4]
  wire [11:0] _GEN_320; // @[DCache.scala 737:72:freechips.rocketchip.system.DefaultRV32Config.fir@126746.4]
  wire  _T_2451; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@126753.4]
  wire [11:0] _T_2455; // @[DCache.scala 745:90:freechips.rocketchip.system.DefaultRV32Config.fir@126761.4]
  wire [19:0] _T_2457; // @[DCache.scala 746:78:freechips.rocketchip.system.DefaultRV32Config.fir@126764.4]
  wire  _T_2460; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@126771.4]
  wire  _T_2467; // @[DCache.scala 760:57:freechips.rocketchip.system.DefaultRV32Config.fir@126786.4]
  wire  _T_2468; // @[DCache.scala 760:94:freechips.rocketchip.system.DefaultRV32Config.fir@126787.4]
  wire  _T_2470; // @[DCache.scala 760:115:freechips.rocketchip.system.DefaultRV32Config.fir@126789.4]
  wire  _T_2473; // @[DCache.scala 762:40:freechips.rocketchip.system.DefaultRV32Config.fir@126793.4]
  reg  _T_2475; // @[DCache.scala 763:32:freechips.rocketchip.system.DefaultRV32Config.fir@126796.4]
  reg [31:0] _RAND_74;
  reg  doUncachedResp; // @[DCache.scala 778:27:freechips.rocketchip.system.DefaultRV32Config.fir@126840.4]
  reg [31:0] _RAND_75;
  wire  _T_2503; // @[DCache.scala 782:11:freechips.rocketchip.system.DefaultRV32Config.fir@126853.6]
  wire  _T_2504; // @[DCache.scala 782:11:freechips.rocketchip.system.DefaultRV32Config.fir@126854.6]
  wire [15:0] _T_2509; // @[AMOALU.scala 39:37:freechips.rocketchip.system.DefaultRV32Config.fir@126869.4]
  wire [15:0] _T_2510; // @[AMOALU.scala 39:55:freechips.rocketchip.system.DefaultRV32Config.fir@126870.4]
  wire [15:0] _T_2511; // @[AMOALU.scala 39:24:freechips.rocketchip.system.DefaultRV32Config.fir@126871.4]
  wire  _T_2514; // @[AMOALU.scala 42:26:freechips.rocketchip.system.DefaultRV32Config.fir@126874.4]
  wire  _T_2516; // @[AMOALU.scala 42:85:freechips.rocketchip.system.DefaultRV32Config.fir@126876.4]
  wire  _T_2517; // @[AMOALU.scala 42:76:freechips.rocketchip.system.DefaultRV32Config.fir@126877.4]
  wire [15:0] _T_2519; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@126879.4]
  wire [15:0] _T_2521; // @[AMOALU.scala 42:20:freechips.rocketchip.system.DefaultRV32Config.fir@126881.4]
  wire [31:0] _T_2522; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@126882.4]
  wire [7:0] _T_2524; // @[AMOALU.scala 39:37:freechips.rocketchip.system.DefaultRV32Config.fir@126884.4]
  wire [7:0] _T_2525; // @[AMOALU.scala 39:55:freechips.rocketchip.system.DefaultRV32Config.fir@126885.4]
  wire [7:0] _T_2526; // @[AMOALU.scala 39:24:freechips.rocketchip.system.DefaultRV32Config.fir@126886.4]
  wire [7:0] _T_2528; // @[AMOALU.scala 41:23:freechips.rocketchip.system.DefaultRV32Config.fir@126888.4]
  wire  _T_2529; // @[AMOALU.scala 42:26:freechips.rocketchip.system.DefaultRV32Config.fir@126889.4]
  wire  _T_2530; // @[AMOALU.scala 42:38:freechips.rocketchip.system.DefaultRV32Config.fir@126890.4]
  wire  _T_2531; // @[AMOALU.scala 42:85:freechips.rocketchip.system.DefaultRV32Config.fir@126891.4]
  wire  _T_2532; // @[AMOALU.scala 42:76:freechips.rocketchip.system.DefaultRV32Config.fir@126892.4]
  wire [23:0] _T_2534; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@126894.4]
  wire [23:0] _T_2535; // @[AMOALU.scala 42:98:freechips.rocketchip.system.DefaultRV32Config.fir@126895.4]
  wire [23:0] _T_2536; // @[AMOALU.scala 42:20:freechips.rocketchip.system.DefaultRV32Config.fir@126896.4]
  wire [31:0] _T_2537; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@126897.4]
  wire [31:0] _GEN_321; // @[DCache.scala 803:41:freechips.rocketchip.system.DefaultRV32Config.fir@126898.4]
  reg  resetting; // @[DCache.scala 835:26:freechips.rocketchip.system.DefaultRV32Config.fir@126912.4]
  reg [31:0] _RAND_76;
  reg  _T_2540; // @[DCache.scala 837:18:freechips.rocketchip.system.DefaultRV32Config.fir@126914.4]
  reg [31:0] _RAND_77;
  wire  _GEN_309; // @[DCache.scala 837:27:freechips.rocketchip.system.DefaultRV32Config.fir@126916.4]
  reg [7:0] flushCounter; // @[DCache.scala 838:25:freechips.rocketchip.system.DefaultRV32Config.fir@126919.4]
  reg [31:0] _RAND_78;
  wire [8:0] flushCounterNext; // @[DCache.scala 839:39:freechips.rocketchip.system.DefaultRV32Config.fir@126920.4]
  wire [2:0] _T_2541; // @[DCache.scala 840:37:freechips.rocketchip.system.DefaultRV32Config.fir@126921.4]
  wire  flushDone; // @[DCache.scala 840:57:freechips.rocketchip.system.DefaultRV32Config.fir@126922.4]
  wire  _T_2546; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@126928.4]
  wire  _T_2548; // @[DCache.scala 844:45:freechips.rocketchip.system.DefaultRV32Config.fir@126930.4]
  wire  _T_2550; // @[DCache.scala 844:64:freechips.rocketchip.system.DefaultRV32Config.fir@126932.4]
  wire  _T_2552; // @[DCache.scala 844:95:freechips.rocketchip.system.DefaultRV32Config.fir@126934.4]
  wire [11:0] _T_2559; // @[DCache.scala 848:98:freechips.rocketchip.system.DefaultRV32Config.fir@126945.4]
  wire [8:0] _GEN_311; // @[DCache.scala 881:20:freechips.rocketchip.system.DefaultRV32Config.fir@126965.4]
  reg [9:0] _T_2618; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@127028.4]
  reg [31:0] _RAND_79;
  wire [9:0] _T_2620; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@127030.4]
  wire  _T_2621; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@127031.4]
  wire  _T_2622; // @[Edges.scala 233:25:freechips.rocketchip.system.DefaultRV32Config.fir@127032.4]
  wire  _T_2624; // @[Edges.scala 233:37:freechips.rocketchip.system.DefaultRV32Config.fir@127034.4]
  wire  _T_2738; // @[DCache.scala 955:35:freechips.rocketchip.system.DefaultRV32Config.fir@127167.4]
  wire  _GEN_324; // @[DCache.scala 552:13:freechips.rocketchip.system.DefaultRV32Config.fir@126300.10]
  wire  _GEN_327; // @[DCache.scala 562:17:freechips.rocketchip.system.DefaultRV32Config.fir@126319.14]
  wire  _GEN_328; // @[DCache.scala 562:17:freechips.rocketchip.system.DefaultRV32Config.fir@126319.14]
  wire  _GEN_329; // @[DCache.scala 562:17:freechips.rocketchip.system.DefaultRV32Config.fir@126319.14]
  wire  _GEN_337; // @[DCache.scala 583:13:freechips.rocketchip.system.DefaultRV32Config.fir@126345.14]
  wire  _GEN_338; // @[DCache.scala 583:13:freechips.rocketchip.system.DefaultRV32Config.fir@126345.14]
  MaxPeriodFibonacciLFSR MaxPeriodFibonacciLFSR ( // @[PRNG.scala 82:22:freechips.rocketchip.system.DefaultRV32Config.fir@123318.4]
    .clock(MaxPeriodFibonacciLFSR_clock),
    .reset(MaxPeriodFibonacciLFSR_reset),
    .io_increment(MaxPeriodFibonacciLFSR_io_increment),
    .io_out_0(MaxPeriodFibonacciLFSR_io_out_0),
    .io_out_1(MaxPeriodFibonacciLFSR_io_out_1),
    .io_out_2(MaxPeriodFibonacciLFSR_io_out_2),
    .io_out_3(MaxPeriodFibonacciLFSR_io_out_3),
    .io_out_4(MaxPeriodFibonacciLFSR_io_out_4),
    .io_out_5(MaxPeriodFibonacciLFSR_io_out_5),
    .io_out_6(MaxPeriodFibonacciLFSR_io_out_6),
    .io_out_7(MaxPeriodFibonacciLFSR_io_out_7),
    .io_out_8(MaxPeriodFibonacciLFSR_io_out_8),
    .io_out_9(MaxPeriodFibonacciLFSR_io_out_9),
    .io_out_10(MaxPeriodFibonacciLFSR_io_out_10),
    .io_out_11(MaxPeriodFibonacciLFSR_io_out_11),
    .io_out_12(MaxPeriodFibonacciLFSR_io_out_12),
    .io_out_13(MaxPeriodFibonacciLFSR_io_out_13),
    .io_out_14(MaxPeriodFibonacciLFSR_io_out_14),
    .io_out_15(MaxPeriodFibonacciLFSR_io_out_15)
  );
  _2 metaArb ( // @[DCache.scala 107:23:freechips.rocketchip.system.DefaultRV32Config.fir@123402.4]
    .io_in_0_valid(metaArb_io_in_0_valid),
    .io_in_0_bits_addr(metaArb_io_in_0_bits_addr),
    .io_in_0_bits_idx(metaArb_io_in_0_bits_idx),
    .io_in_0_bits_data(metaArb_io_in_0_bits_data),
    .io_in_2_valid(metaArb_io_in_2_valid),
    .io_in_2_bits_addr(metaArb_io_in_2_bits_addr),
    .io_in_2_bits_idx(metaArb_io_in_2_bits_idx),
    .io_in_2_bits_way_en(metaArb_io_in_2_bits_way_en),
    .io_in_2_bits_data(metaArb_io_in_2_bits_data),
    .io_in_3_valid(metaArb_io_in_3_valid),
    .io_in_3_bits_addr(metaArb_io_in_3_bits_addr),
    .io_in_3_bits_idx(metaArb_io_in_3_bits_idx),
    .io_in_3_bits_way_en(metaArb_io_in_3_bits_way_en),
    .io_in_3_bits_data(metaArb_io_in_3_bits_data),
    .io_in_4_ready(metaArb_io_in_4_ready),
    .io_in_4_valid(metaArb_io_in_4_valid),
    .io_in_4_bits_addr(metaArb_io_in_4_bits_addr),
    .io_in_4_bits_idx(metaArb_io_in_4_bits_idx),
    .io_in_4_bits_way_en(metaArb_io_in_4_bits_way_en),
    .io_in_4_bits_data(metaArb_io_in_4_bits_data),
    .io_in_5_ready(metaArb_io_in_5_ready),
    .io_in_5_valid(metaArb_io_in_5_valid),
    .io_in_5_bits_addr(metaArb_io_in_5_bits_addr),
    .io_in_5_bits_idx(metaArb_io_in_5_bits_idx),
    .io_in_6_ready(metaArb_io_in_6_ready),
    .io_in_6_valid(metaArb_io_in_6_valid),
    .io_in_6_bits_addr(metaArb_io_in_6_bits_addr),
    .io_in_6_bits_idx(metaArb_io_in_6_bits_idx),
    .io_in_6_bits_way_en(metaArb_io_in_6_bits_way_en),
    .io_in_6_bits_data(metaArb_io_in_6_bits_data),
    .io_in_7_ready(metaArb_io_in_7_ready),
    .io_in_7_valid(metaArb_io_in_7_valid),
    .io_in_7_bits_addr(metaArb_io_in_7_bits_addr),
    .io_in_7_bits_idx(metaArb_io_in_7_bits_idx),
    .io_in_7_bits_way_en(metaArb_io_in_7_bits_way_en),
    .io_in_7_bits_data(metaArb_io_in_7_bits_data),
    .io_out_valid(metaArb_io_out_valid),
    .io_out_bits_write(metaArb_io_out_bits_write),
    .io_out_bits_addr(metaArb_io_out_bits_addr),
    .io_out_bits_idx(metaArb_io_out_bits_idx),
    .io_out_bits_way_en(metaArb_io_out_bits_way_en),
    .io_out_bits_data(metaArb_io_out_bits_data)
  );
  tag_array tag_array ( // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@123406.4]
    .RW0_addr(tag_array_RW0_addr),
    .RW0_en(tag_array_RW0_en),
    .RW0_clk(tag_array_RW0_clk),
    .RW0_wmode(tag_array_RW0_wmode),
    .RW0_wdata_0(tag_array_RW0_wdata_0),
    .RW0_wdata_1(tag_array_RW0_wdata_1),
    .RW0_wdata_2(tag_array_RW0_wdata_2),
    .RW0_wdata_3(tag_array_RW0_wdata_3),
    .RW0_rdata_0(tag_array_RW0_rdata_0),
    .RW0_rdata_1(tag_array_RW0_rdata_1),
    .RW0_rdata_2(tag_array_RW0_rdata_2),
    .RW0_rdata_3(tag_array_RW0_rdata_3),
    .RW0_wmask_0(tag_array_RW0_wmask_0),
    .RW0_wmask_1(tag_array_RW0_wmask_1),
    .RW0_wmask_2(tag_array_RW0_wmask_2),
    .RW0_wmask_3(tag_array_RW0_wmask_3)
  );
  DCacheDataArray data ( // @[DCache.scala 117:20:freechips.rocketchip.system.DefaultRV32Config.fir@123407.4]
    .clock(data_clock),
    .io_req_valid(data_io_req_valid),
    .io_req_bits_addr(data_io_req_bits_addr),
    .io_req_bits_write(data_io_req_bits_write),
    .io_req_bits_wdata(data_io_req_bits_wdata),
    .io_req_bits_eccMask(data_io_req_bits_eccMask),
    .io_req_bits_way_en(data_io_req_bits_way_en),
    .io_resp_0(data_io_resp_0),
    .io_resp_1(data_io_resp_1),
    .io_resp_2(data_io_resp_2),
    .io_resp_3(data_io_resp_3)
  );
  _3 dataArb ( // @[DCache.scala 118:23:freechips.rocketchip.system.DefaultRV32Config.fir@123411.4]
    .io_in_0_valid(dataArb_io_in_0_valid),
    .io_in_0_bits_addr(dataArb_io_in_0_bits_addr),
    .io_in_0_bits_write(dataArb_io_in_0_bits_write),
    .io_in_0_bits_wdata(dataArb_io_in_0_bits_wdata),
    .io_in_0_bits_eccMask(dataArb_io_in_0_bits_eccMask),
    .io_in_0_bits_way_en(dataArb_io_in_0_bits_way_en),
    .io_in_1_ready(dataArb_io_in_1_ready),
    .io_in_1_valid(dataArb_io_in_1_valid),
    .io_in_1_bits_addr(dataArb_io_in_1_bits_addr),
    .io_in_1_bits_write(dataArb_io_in_1_bits_write),
    .io_in_1_bits_wdata(dataArb_io_in_1_bits_wdata),
    .io_in_1_bits_eccMask(dataArb_io_in_1_bits_eccMask),
    .io_in_1_bits_way_en(dataArb_io_in_1_bits_way_en),
    .io_in_2_ready(dataArb_io_in_2_ready),
    .io_in_2_valid(dataArb_io_in_2_valid),
    .io_in_2_bits_addr(dataArb_io_in_2_bits_addr),
    .io_in_2_bits_wdata(dataArb_io_in_2_bits_wdata),
    .io_in_2_bits_eccMask(dataArb_io_in_2_bits_eccMask),
    .io_in_3_ready(dataArb_io_in_3_ready),
    .io_in_3_valid(dataArb_io_in_3_valid),
    .io_in_3_bits_addr(dataArb_io_in_3_bits_addr),
    .io_in_3_bits_wdata(dataArb_io_in_3_bits_wdata),
    .io_in_3_bits_eccMask(dataArb_io_in_3_bits_eccMask),
    .io_out_valid(dataArb_io_out_valid),
    .io_out_bits_addr(dataArb_io_out_bits_addr),
    .io_out_bits_write(dataArb_io_out_bits_write),
    .io_out_bits_wdata(dataArb_io_out_bits_wdata),
    .io_out_bits_eccMask(dataArb_io_out_bits_eccMask),
    .io_out_bits_way_en(dataArb_io_out_bits_way_en)
  );
  TLB tlb ( // @[DCache.scala 206:19:freechips.rocketchip.system.DefaultRV32Config.fir@123729.4]
    .clock(tlb_clock),
    .reset(tlb_reset),
    .io_req_ready(tlb_io_req_ready),
    .io_req_valid(tlb_io_req_valid),
    .io_req_bits_vaddr(tlb_io_req_bits_vaddr),
    .io_req_bits_passthrough(tlb_io_req_bits_passthrough),
    .io_req_bits_size(tlb_io_req_bits_size),
    .io_req_bits_cmd(tlb_io_req_bits_cmd),
    .io_resp_miss(tlb_io_resp_miss),
    .io_resp_paddr(tlb_io_resp_paddr),
    .io_resp_pf_ld(tlb_io_resp_pf_ld),
    .io_resp_pf_st(tlb_io_resp_pf_st),
    .io_resp_ae_ld(tlb_io_resp_ae_ld),
    .io_resp_ae_st(tlb_io_resp_ae_st),
    .io_resp_ma_ld(tlb_io_resp_ma_ld),
    .io_resp_ma_st(tlb_io_resp_ma_st),
    .io_resp_cacheable(tlb_io_resp_cacheable),
    .io_sfence_valid(tlb_io_sfence_valid),
    .io_sfence_bits_rs1(tlb_io_sfence_bits_rs1),
    .io_sfence_bits_rs2(tlb_io_sfence_bits_rs2),
    .io_sfence_bits_addr(tlb_io_sfence_bits_addr),
    .io_ptw_req_ready(tlb_io_ptw_req_ready),
    .io_ptw_req_valid(tlb_io_ptw_req_valid),
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
    .io_ptw_status_dprv(tlb_io_ptw_status_dprv),
    .io_ptw_status_mxr(tlb_io_ptw_status_mxr),
    .io_ptw_status_sum(tlb_io_ptw_status_sum),
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
    .io_ptw_pmp_7_mask(tlb_io_ptw_pmp_7_mask)
  );
  AMOALU amoalu ( // @[DCache.scala 811:24:freechips.rocketchip.system.DefaultRV32Config.fir@126903.4]
    .io_mask(amoalu_io_mask),
    .io_cmd(amoalu_io_cmd),
    .io_lhs(amoalu_io_lhs),
    .io_rhs(amoalu_io_rhs),
    .io_out(amoalu_io_out)
  );

`define MY_ASSIGNMENT
`ifdef MY_ASSIGNMENT

parameter S_READY 		= 3'h0;
parameter S_VOLUNTARY_WRITEBACK = 3'h1;
parameter S_PROBE_REP_DIRTY	= 3'h2;
parameter S_PROBE_REP_CLEAN	= 3'h3;
parameter S_PROBE_RETRY		= 3'h4;
parameter S_PROBE_REP_MISS	= 3'h5;
parameter S_VOLUNTARY_WRITE_META= 3'h6;
parameter S_PROBE_WRITE_META	= 3'h7;

  assign lrscValid = lrscCount > 7'h3; 

  assign _T_2348 = blockProbeAfterGrantCount > 3'h0;
  assign block_probe_for_core_progress = _T_2348 | lrscValid;

  assign releaseInFlight = s1_probe | s2_probe | (release_state != 3'h0);

  assign block_probe_for_pending_release_ack = release_ack_wait & ((auto_out_b_bits_address[11:6] ^ release_ack_addr[11:6]) == 6'h0);

  assign block_probe_for_ordering = releaseInFlight | block_probe_for_pending_release_ack | grantInProgress;

  assign tl_out__b_ready = metaArb_io_in_6_ready & ((block_probe_for_core_progress | block_probe_for_ordering | s1_valid | s2_valid) == 1'h0);

  assign s1_valid_masked = s1_valid & !io_cpu_s1_kill;

  assign _T_695 = (4'h6 == {probe_bits_param,s2_probe_state_state}) ? 1'h0 
		: (4'h5 == {probe_bits_param,s2_probe_state_state}) ? 1'h0 
		: (4'h4 == {probe_bits_param,s2_probe_state_state}) ? 1'h0 
		: (4'hb == {probe_bits_param,s2_probe_state_state});
  assign _T_711 = (4'h2 == {probe_bits_param,s2_probe_state_state}) ? 1'h0 
		: (4'h1 == {probe_bits_param,s2_probe_state_state}) ? 1'h0 
		: (4'h0 == {probe_bits_param,s2_probe_state_state}) ? 1'h0 
		: (4'h7 == {probe_bits_param,s2_probe_state_state}) | _T_695;
  assign s2_prb_ack_data = (4'h3 == {probe_bits_param,s2_probe_state_state}) | _T_711;

  assign _T_2414 = release_state == 3'h2;
  assign _T_2415 = release_state == 3'h1;
  assign _T_2416 = release_state == 3'h6;
  assign _T_2417 = _T_2415 | _T_2416;
  assign tl_out__c_bits_opcode = _T_2417 ? 3'h7 
				: _T_2414 ? 3'h5 
				: 3'h4;

  assign tl_out__c_bits_size = _T_2417 ? 4'h6 : probe_bits_size;

  assign _T_2366 = 27'hfff << tl_out__c_bits_size;
  assign _T_2371 = tl_out__c_bits_opcode[0] ? ~ _T_2366[11:2] : 10'h0;
  assign _T_2376 = _T_2371 == 10'h0; 
  assign c_last = (_T_2372 == 10'h1) | _T_2376;

  assign _GEN_231 = s2_prb_ack_data ? s2_release_data_valid : 1'h1;
  assign _GEN_252 = s2_probe ? _GEN_231 : s2_release_data_valid;
  assign _T_2412 = release_state == 3'h5;
  assign _T_2413 = release_state == 3'h3;
  assign tl_out__c_valid = _T_2413 | _T_2412 | _GEN_252;

  assign _T_2364 = auto_out_c_ready & tl_out__c_valid;
  assign releaseDone = c_last & _T_2364;

  assign _T_2404 = s2_probe_state_state > 2'h0;
  assign probeNack = s2_prb_ack_data | _T_2404 | !releaseDone;

  assign s1_read = (s1_req_cmd == 5'h0) 
		| (s1_req_cmd == 5'h6) 
		| (s1_req_cmd == 5'h7) 
		| (s1_req_cmd == 5'h4) 
		| (s1_req_cmd == 5'h9) 
		| (s1_req_cmd == 5'ha) 
		| (s1_req_cmd == 5'hb) 
		| (s1_req_cmd == 5'h8) 
		| (s1_req_cmd == 5'hc) 
		| (s1_req_cmd == 5'hd) 
		| (s1_req_cmd == 5'he) 
		| (s1_req_cmd == 5'hf);

  assign s2_write = (s2_req_cmd == 5'h1) 
		| (s2_req_cmd == 5'h11) 
		| (s2_req_cmd == 5'h7) 
		| (s2_req_cmd == 5'h4) 
		| (s2_req_cmd == 5'h9) 
		| (s2_req_cmd == 5'ha) 
		| (s2_req_cmd == 5'hb) 
		| (s2_req_cmd == 5'h8) 
		| (s2_req_cmd == 5'hc) 
		| (s2_req_cmd == 5'hd) 
		| (s2_req_cmd == 5'he) 
		| (s2_req_cmd == 5'hf);

  assign pstore1_valid_likely = _T_996 | pstore1_held;

  assign s1_write = (s1_req_cmd == 5'h1) 
		| (s1_req_cmd == 5'h11) 
		| (s1_req_cmd == 5'h7) 
		| (s1_req_cmd == 5'h4) 
		| (s1_req_cmd == 5'h9) 
		| (s1_req_cmd == 5'ha) 
		| (s1_req_cmd == 5'hb) 
		| (s1_req_cmd == 5'h8) 
		| (s1_req_cmd == 5'hc) 
		| (s1_req_cmd == 5'hd) 
		| (s1_req_cmd == 5'he) 
		| (s1_req_cmd == 5'hf);

  assign _T_350 = s1_req_addr[0] | (s1_req_size >= 2'h1);
  assign _T_352 = s1_req_addr[0] ? 1'h0 : 1'h1;
  assign _T_353 = {_T_350,_T_352};
  assign _T_355 = s1_req_addr[1] ? _T_353 : 2'h0;
  assign _T_357 = (s1_req_size >= 2'h2) ? 2'h3 : 2'h0;
  assign _T_358 = _T_355 | _T_357;
  assign _T_360 = s1_req_addr[1] ? 2'h0 : _T_353;
  assign s1_mask_xwr = {_T_358,_T_360};

  assign s1_hazard = (pstore1_valid_likely & (pstore1_addr[11:2] == s1_req_addr[11:2]) & ((pstore1_mask & s1_mask_xwr) != 4'h0)) | (pstore2_valid & (pstore2_addr[11:2] == s1_req_addr[11:2]) & ((mask & s1_mask_xwr) != 4'h0));

  assign s1_raw_hazard = s1_read & s1_hazard;

  assign s2_valid_no_xcpt = s2_valid & !({io_cpu_s2_xcpt_ma_ld,io_cpu_s2_xcpt_ma_st,io_cpu_s2_xcpt_pf_ld,io_cpu_s2_xcpt_pf_st,io_cpu_s2_xcpt_ae_ld,io_cpu_s2_xcpt_ae_st} != 6'h0);

  assign s2_valid_masked = s2_valid_no_xcpt & _T_384;

  assign _T_541 = s2_req_cmd == 5'h6;
  assign _T_542 = s2_write 
		| (s2_req_cmd == 5'h3) 
		| _T_541;
  assign s2_hit = (4'h3 == {s2_write,_T_542,s2_hit_state_state}) 
		| (4'h2 == {s2_write,_T_542,s2_hit_state_state}) 
		| (4'h1 == {s2_write,_T_542,s2_hit_state_state}) 
		| (4'h7 == {s2_write,_T_542,s2_hit_state_state}) 
		| (4'h6 == {s2_write,_T_542,s2_hit_state_state}) 
		| (4'hf == {s2_write,_T_542,s2_hit_state_state}) 
		| (4'he == {s2_write,_T_542,s2_hit_state_state});

  assign s2_valid_hit_maybe_flush_pre_data_ecc_and_waw = s2_valid_masked & s2_hit; 

  assign _T_421 = s2_req_cmd == 5'h7;
  assign s2_read = (s2_req_cmd == 5'h0) 
		| _T_541
		| _T_421 
		| (s2_req_cmd == 5'h4) 
		| (s2_req_cmd == 5'h9) 
		| (s2_req_cmd == 5'ha) 
		| (s2_req_cmd == 5'hb) 
		| (s2_req_cmd == 5'h8) 
		| (s2_req_cmd == 5'hc) 
		| (s2_req_cmd == 5'hd) 
		| (s2_req_cmd == 5'he) 
		| (s2_req_cmd == 5'hf);

  assign s2_readwrite = s2_read | s2_write;
  assign s2_valid_hit_pre_data_ecc_and_waw = s2_valid_hit_maybe_flush_pre_data_ecc_and_waw & s2_readwrite;

  assign s2_grow_param = (4'h3 == {s2_write,_T_542,s2_hit_state_state}) ? 2'h3 
			: (4'h2 == {s2_write,_T_542,s2_hit_state_state}) ? 2'h2 
			: (4'h1 == {s2_write,_T_542,s2_hit_state_state}) ? 2'h1 
			: (4'h7 == {s2_write,_T_542,s2_hit_state_state}) ? 2'h3 
			: (4'h6 == {s2_write,_T_542,s2_hit_state_state}) ? 2'h2 
			: (4'hf == {s2_write,_T_542,s2_hit_state_state}) ? 2'h3 
			: (4'he == {s2_write,_T_542,s2_hit_state_state}) ? 2'h3 
			: (4'h0 == {s2_write,_T_542,s2_hit_state_state}) ? 2'h0 
			: (4'h5 == {s2_write,_T_542,s2_hit_state_state}) ? 2'h2 
			: (4'h4 == {s2_write,_T_542,s2_hit_state_state}) ? 2'h1 
			: (4'hd == {s2_write,_T_542,s2_hit_state_state}) ? 2'h2 
			: (4'hc == {s2_write,_T_542,s2_hit_state_state}) ? 2'h1 
			: 2'h0;

  assign s2_update_meta = (s2_hit_state_state == s2_grow_param) == 1'h0; 

  assign s1_readwrite = s1_read | s1_write;

  assign s1_flush_line = (s1_req_cmd == 5'h5) & s1_req_size[0];

  assign s1_cmd_uses_tlb = s1_readwrite | s1_flush_line | (s1_req_cmd == 5'h17);

  assign _GEN_113 = (s1_valid & s1_raw_hazard) | io_cpu_s2_nack | (s2_valid_hit_pre_data_ecc_and_waw & s2_update_meta) | (s1_valid & s1_cmd_uses_tlb & tlb_io_resp_miss);
  assign s1_nack = s2_probe ? (probeNack | _GEN_113) : _GEN_113;

  assign s1_valid_not_nacked = s1_valid & !s1_nack;

  assign s0_clk_en = metaArb_io_out_valid & !metaArb_io_out_bits_write;

  assign s1_sfence = s1_req_cmd == 5'h14;
  assign can_acquire_before_release = release_ack_wait == 1'h0;
  assign inWriteback = (release_state == 3'h1) | (release_state == 3'h2);

  assign s0_read = (io_cpu_req_bits_cmd == 5'h0) 
		| (io_cpu_req_bits_cmd == 5'h6) 
		| (io_cpu_req_bits_cmd == 5'h7) 
		| (io_cpu_req_bits_cmd == 5'h4) 
		| (io_cpu_req_bits_cmd == 5'h9) 
		| (io_cpu_req_bits_cmd == 5'ha) 
		| (io_cpu_req_bits_cmd == 5'hb) 
		| (io_cpu_req_bits_cmd == 5'h8) 
		| (io_cpu_req_bits_cmd == 5'hc) 
		| (io_cpu_req_bits_cmd == 5'hd) 
		| (io_cpu_req_bits_cmd == 5'he) 
		| (io_cpu_req_bits_cmd == 5'hf);

  assign res = ((io_cpu_req_bits_cmd == 5'h1) 
		| (io_cpu_req_bits_cmd == 5'h3)) == 1'h0;

  assign s1_victim_way = {MaxPeriodFibonacciLFSR_io_out_14, MaxPeriodFibonacciLFSR_io_out_15};

  assign s1_meta_uncorrected_0_tag = tag_array_RW0_rdata_0[19:0]; 

  assign s1_meta_uncorrected_0_coh_state = tag_array_RW0_rdata_0[21:20]; 

  assign s1_meta_uncorrected_1_tag = tag_array_RW0_rdata_1[19:0];

  assign s1_meta_uncorrected_1_coh_state = tag_array_RW0_rdata_1[21:20];

  assign s1_meta_uncorrected_2_tag = tag_array_RW0_rdata_2[19:0];
  assign s1_meta_uncorrected_2_coh_state = tag_array_RW0_rdata_2[21:20];

  assign s1_meta_uncorrected_3_tag = tag_array_RW0_rdata_3[19:0];
  assign s1_meta_uncorrected_3_coh_state = tag_array_RW0_rdata_3[21:20];

  assign s1_tag = tlb_io_resp_paddr[31:12];
// Passed
  assign s1_meta_hit_way = {((s1_meta_uncorrected_3_coh_state > 2'h0) & (s1_meta_uncorrected_3_tag == s1_tag))
			,((s1_meta_uncorrected_2_coh_state > 2'h0) & (s1_meta_uncorrected_2_tag == s1_tag))
			,((s1_meta_uncorrected_1_coh_state > 2'h0) & (s1_meta_uncorrected_1_tag == s1_tag))
			,((s1_meta_uncorrected_0_coh_state > 2'h0) & (s1_meta_uncorrected_0_tag == s1_tag))};

  assign _T_310 = s1_flush_valid == 1'h0;
  assign s1_meta_hit_state_state = (((s1_meta_uncorrected_0_tag == s1_tag) & _T_310) ? s1_meta_uncorrected_0_coh_state : 2'h0) 
				| (((s1_meta_uncorrected_1_tag == s1_tag) & _T_310) ? s1_meta_uncorrected_1_coh_state : 2'h0) 
				| (((s1_meta_uncorrected_2_tag == s1_tag) & _T_310) ? s1_meta_uncorrected_2_coh_state : 2'h0) 
				| (((s1_meta_uncorrected_3_tag == s1_tag) & _T_310) ? s1_meta_uncorrected_3_coh_state : 2'h0);

  assign s2_hit_valid = s2_hit_state_state > 2'h0;

  assign s2_victim_way = s2_hit_valid ? s2_hit_way : (4'h1 << _T_649);

  assign releaseWay = _T_2417 ? s2_victim_way : s2_probe_way;

  assign s2_cmd_flush_line = (s2_req_cmd == 5'h5) & s2_req_size[0];

  assign s2_vaddr = {_T_393[31:12], s2_req_addr[11:0]};

  assign en = s1_valid | inWriteback | io_cpu_replay_next;

  assign word_en = inWriteback | (!s1_did_read ? 1'h0 : 1'h1);

  assign s1_all_data_ways_0 = data_io_resp_0;
  assign s1_all_data_ways_1 = data_io_resp_1;
  assign s1_all_data_ways_2 = data_io_resp_2;
  assign s1_all_data_ways_3 = data_io_resp_3;

  assign s1_word_en = !io_cpu_replay_next ? word_en : 1'h1;

  assign grantIsUncachedData = auto_out_d_bits_opcode == 3'h1;

  assign grantIsRefill = auto_out_d_bits_opcode == 3'h5;

  assign grantIsCached = (auto_out_d_bits_opcode == 3'h4) | grantIsRefill;

  assign d_first = _T_2190 == 10'h0;

  assign canAcceptCachedGrant = _T_2417 == 1'h0;

  assign _T_2258 = grantIsRefill & !dataArb_io_in_1_ready;
  assign _GEN_200 = _T_2258 ? 1'h0 
		: grantIsCached ? ((!d_first | auto_out_e_ready) & canAcceptCachedGrant) 
		: 1'h1;
  assign _T_2344 = grantIsUncachedData & (blockUncachedGrant | s1_valid);
  assign tl_out__d_ready = _T_2344 ? 1'h0 : _GEN_200;

  assign grantIsUncached = grantIsUncachedData | (auto_out_d_bits_opcode == 3'h0) | (auto_out_d_bits_opcode == 3'h2);

  assign _T_337 = inWriteback ? releaseWay : s1_meta_hit_way;
  assign _T_2227 = tl_out__d_ready & auto_out_d_valid;
  assign s1_data_way = !_T_2227 ? {{1'd0}, _T_337} 
			: grantIsCached ? {{1'd0}, _T_337} 
			: !grantIsUncached ? {{1'd0}, _T_337} 
			: grantIsUncachedData ? 5'h10 
			: {{1'd0}, _T_337};

  assign s2_data_corrected = {s2_data[31:24],s2_data[23:16],s2_data[15:8],s2_data[7:0]};

  assign s2_valid_flush_line = s2_valid_hit_maybe_flush_pre_data_ecc_and_waw & s2_cmd_flush_line & can_acquire_before_release;

  assign s2_valid_miss = s2_valid_masked & s2_readwrite & !s2_hit & can_acquire_before_release;
  assign s2_uncached = s2_tlb_resp_cacheable == 1'h0;

  assign _T_636 = s2_uncached == 1'h0;
  assign _T_639 = uncachedInFlight_0 == 1'h0;
  assign s2_valid_cached_miss = s2_valid_miss & _T_636 & _T_639;

  assign s2_want_victimize = s2_valid_cached_miss | s2_valid_flush_line | s2_flush_valid_pre_tag_ecc;

  assign s2_valid_uncached_pending = s2_valid_miss & s2_uncached & _T_639;

  assign s2_victim_tag = s2_valid_flush_line ? s2_req_addr[31:12] : _T_654;

  assign s2_victim_state_state = s2_hit_valid ? s2_hit_state_state : _T_656_state;

  assign _T_714 = 4'h3 == {probe_bits_param,s2_probe_state_state};
  assign _T_710 = 4'h2 == {probe_bits_param,s2_probe_state_state};
  assign _T_706 = 4'h1 == {probe_bits_param,s2_probe_state_state};
  assign _T_702 = 4'h0 == {probe_bits_param,s2_probe_state_state};
  assign _T_698 = 4'h7 == {probe_bits_param,s2_probe_state_state};
  assign _T_694 = 4'h6 == {probe_bits_param,s2_probe_state_state};
  assign _T_690 = 4'h5 == {probe_bits_param,s2_probe_state_state};
  assign _T_686 = 4'h4 == {probe_bits_param,s2_probe_state_state};
  assign _T_682 = 4'hb == {probe_bits_param,s2_probe_state_state}; 
  assign s2_report_param = _T_714 ? 3'h3 
			: _T_710 ? 3'h3 
			: _T_706 ? 3'h4 
			: _T_702 ? 3'h5 
			: _T_698 ? 3'h0 
			: _T_694 ? 3'h0 
			: _T_690 ? 3'h4 
			: _T_686 ? 3'h5 
			: _T_682 ? 3'h1 
			: (4'ha == {probe_bits_param,s2_probe_state_state}) ? 3'h1 
			: (4'h9 == {probe_bits_param,s2_probe_state_state}) ? 3'h2 
			: (4'h8 == {probe_bits_param,s2_probe_state_state}) ? 3'h5 
			: 3'h0;

  assign probeNewCoh_state = _T_714 ? 2'h2 
			: _T_710 ? 2'h2 
			: _T_706 ? 2'h1 
			: _T_702 ? 2'h0 
			: _T_698 ? 2'h1 
			: _T_694 ? 2'h1 
			: _T_690 ? 2'h1 
			: 2'h0; 

  assign _T_722 = {2'h2,s2_victim_state_state};
  assign _T_775 = 4'h2 == _T_722;
  assign _T_771 = 4'h1 == _T_722;
  assign _T_767 = 4'h0 == _T_722;
  assign _T_763 = 4'h7 == _T_722;
  assign _T_759 = 4'h6 == _T_722;
  assign _T_755 = 4'h5 == _T_722;
  assign _T_751 = 4'h4 == _T_722;
  assign _T_747 = 4'hb == _T_722;
  assign s2_victim_dirty = (4'h3 == _T_722) 
			| (_T_775 ? 1'h0 
			 : _T_771 ? 1'h0 
			 : _T_767 ? 1'h0 
			 : (_T_763 
			  | (_T_759 ? 1'h0 
			   : _T_755 ? 1'h0 
			   : _T_751 ? 1'h0 
			   : _T_747)));
// Passed
  assign _T_779 = 4'h3 == _T_722; 
  assign s2_shrink_param = _T_779 ? 3'h3 
			: _T_775 ? 3'h3 
			: _T_771 ? 3'h4 
			: _T_767 ? 3'h5 
			: _T_763 ? 3'h0 
			: _T_759 ? 3'h0 
			: _T_755 ? 3'h4 
			: _T_751 ? 3'h5 
			: _T_747 ? 3'h1 
			: (4'ha == _T_722) ? 3'h1 
			: (4'h9 == _T_722) ? 3'h2 
			: (4'h8 == _T_722) ? 3'h5 
			: 3'h0;

  assign voluntaryNewCoh_state = _T_779 ? 2'h2 
				: _T_775 ? 2'h2 
				: _T_771 ? 2'h1 
				: _T_767 ? 2'h0 
				: _T_763 ? 2'h1 
				: _T_759 ? 2'h1 
				: _T_755 ? 2'h1 
				: 2'h0;

  assign s2_dont_nack_uncached = s2_valid_uncached_pending & auto_out_a_ready;

  assign s2_dont_nack_misc = s2_valid_masked & (s2_req_cmd == 5'h17);

  assign _T_842 = lrscCount > 7'h0;
  assign lrscBackingOff = _T_842 & !lrscValid;

  assign lrscAddrMatch = lrscAddr == s2_req_addr[31:6];

  assign s2_sc_fail = _T_421 & !(lrscValid & lrscAddrMatch);

  assign pstore_drain_opportunistic = (io_cpu_req_valid & res) == 1'h0;

  assign pstore_drain_on_miss = releaseInFlight | _T_995;

  assign _T_925 = s2_valid_hit_pre_data_ecc_and_waw & s2_write;
  assign pstore1_valid = (_T_925 & !s2_sc_fail) | pstore1_held;

  assign pstore_drain_structural = pstore1_valid_likely & pstore2_valid & ((s1_valid & s1_write) | pstore1_rmw);

  assign _T_1009 = _T_925 | pstore1_held;
  assign _T_1027 = ((_T_1009 & !pstore1_rmw) | pstore2_valid) & (pstore_drain_opportunistic | pstore_drain_on_miss);
  assign pstore_drain = pstore_drain_structural | _T_1027;

  assign advance_pstore1 = pstore1_valid & (pstore2_valid == pstore_drain);

  assign pstore1_storegen_data = amoalu_io_out;

  assign pstore2_storegen_data = {_T_1066,_T_1061,_T_1056,_T_1051};

  assign a_source = 1'h1;

  assign acquire_address = {s2_req_addr[31:6], 6'h0};

  assign a_mask = {{15'd0}, pstore1_mask};

  assign _T_1271 = (2'h1 << s2_req_size[0]) | 2'h1;
  assign _T_1272 = s2_req_size >= 2'h2;
  assign _T_1281 = _T_1272 
		| (_T_1271[1] & s2_req_addr[1]);
  assign _T_1296 = _T_1281 
		| (_T_1271[0] & s2_req_addr[1] & s2_req_addr[0]);
  assign _T_1293 = _T_1281 
		| (_T_1271[0] & s2_req_addr[1] & !s2_req_addr[0]);
  assign _T_1278 = _T_1272 
		| (_T_1271[1] & !s2_req_addr[1]);
  assign _T_1290 = _T_1278 
		| (_T_1271[0] & !s2_req_addr[1] & s2_req_addr[0]);
  assign _T_1287 = _T_1278 
		| (_T_1271[0] & !s2_req_addr[1] & !s2_req_addr[0]);
  assign get_mask = {_T_1296,_T_1293,_T_1290,_T_1287};
// Passed
  assign _T_2091 = 5'hf == s2_req_cmd;
  assign _T_2093 = 5'he == s2_req_cmd;
  assign _T_2095 = 5'hd == s2_req_cmd;
  assign _T_2097 = 5'hc == s2_req_cmd;
  assign _T_2099 = 5'h8 == s2_req_cmd;
  assign _T_2101 = 5'hb == s2_req_cmd;
  assign _T_2103 = 5'ha == s2_req_cmd;
  assign _T_2105 = 5'h9 == s2_req_cmd;
  assign _T_2107 = 5'h4 == s2_req_cmd;
  assign atomics_opcode = _T_2107 ? 3'h3 
			: _T_2105 ? 3'h3 
			: _T_2103 ? 3'h3 
			: _T_2101 ? 3'h3 
			: _T_2099 ? 3'h2 
			: _T_2097 ? 3'h2 
			: _T_2095 ? 3'h2 
			: _T_2093 ? 3'h2 
			: _T_2091 ? 3'h2 
			: 3'h0; 

  assign atomics_param = _T_2107 ? 3'h3 
			: _T_2105 ? 3'h0 
			: _T_2103 ? 3'h1 
			: _T_2101 ? 3'h2 
			: _T_2099 ? 3'h4 
			: _T_2097 ? 3'h0 
			: _T_2095 ? 3'h1 
			: _T_2093 ? 3'h2 
			: _T_2091 ? 3'h3 
			: 3'h0;

  assign atomics_size = _T_2107 ? {{2'd0}, s2_req_size} 
			: _T_2105 ? {{2'd0}, s2_req_size} 
			: _T_2103 ? {{2'd0}, s2_req_size} 
			: _T_2101 ? {{2'd0}, s2_req_size} 
			: _T_2099 ? {{2'd0}, s2_req_size} 
			: _T_2097 ? {{2'd0}, s2_req_size} 
			: _T_2095 ? {{2'd0}, s2_req_size} 
			: _T_2093 ? {{2'd0}, s2_req_size} 
			: _T_2091 ? {{2'd0}, s2_req_size} 
			: 4'h0;

  assign atomics_source = _T_2107 ? a_source 
			: _T_2105 ? a_source 
			: _T_2103 ? a_source 
			: _T_2101 ? a_source 
			: _T_2099 ? a_source 
			: _T_2097 ? a_source 
			: _T_2095 ? a_source 
			: _T_2093 ? a_source 
			: (_T_2091 & a_source); 

  assign atomics_address = _T_2107 ? s2_req_addr 
			: _T_2105 ? s2_req_addr 
			: _T_2103 ? s2_req_addr 
			: _T_2101 ? s2_req_addr 
			: _T_2099 ? s2_req_addr 
			: _T_2097 ? s2_req_addr 
			: _T_2095 ? s2_req_addr 
			: _T_2093 ? s2_req_addr 
			: _T_2091 ? s2_req_addr 
			: 32'h0;

  assign atomics_mask = _T_2107 ? get_mask 
			: _T_2105 ? get_mask 
			: _T_2103 ? get_mask 
			: _T_2101 ? get_mask 
			: _T_2099 ? get_mask 
			: _T_2097 ? get_mask 
			: _T_2095 ? get_mask 
			: _T_2093 ? get_mask 
			: _T_2091 ? get_mask 
			: 4'h0;

  assign atomics_data = _T_2107 ? pstore1_data 
			: _T_2105 ? pstore1_data 
			: _T_2103 ? pstore1_data 
			: _T_2101 ? pstore1_data 
			: _T_2099 ? pstore1_data 
			: _T_2097 ? pstore1_data 
			: _T_2095 ? pstore1_data 
			: _T_2093 ? pstore1_data 
			: _T_2091 ? pstore1_data 
			: 32'h0;

  assign _T_2111 = s2_valid_cached_miss & !s2_victim_dirty;
  assign tl_out_a_valid = _T_2111 | s2_valid_uncached_pending;

  assign putpartial_mask = a_mask[3:0];

  assign _T_2178 = 2'h1 << a_source; 
  assign a_sel = _T_2178[1:1];

  assign _T_2184 = 27'hfff << auto_out_d_bits_size;
  assign _T_2189 = auto_out_d_bits_opcode[0] ? ~ (_T_2184[11:2]) : 10'h0;
  assign d_last = (_T_2190 == 10'h1) | (_T_2189 == 10'h0);

  assign d_done = d_last & _T_2227;

  assign _T_2192 = _T_2190 - 10'h1;
  assign _T_2196 = _T_2189 & (~ _T_2192);
  assign d_address_inc = {_T_2196, 2'h0};

  assign grantIsVoluntary = auto_out_d_bits_opcode == 3'h6;

  assign _T_2224 = 2'h1 << auto_out_d_bits_source;
  assign uncachedRespIdxOH = _T_2224[1:1]; 

  assign dontCareBits = {tlb_io_resp_paddr[31:2], 2'h0};

  assign _T_2245 = auto_out_d_valid & d_first & grantIsCached & canAcceptCachedGrant; 
  assign tl_out__e_valid = _T_2258 ? 1'h0 : _T_2245;

  assign c_first = _T_2372 == 10'h0;

  assign _T_2374 = _T_2372 - 10'h1;
  assign c_count = _T_2371 & (~ _T_2374);

  assign releaseRejected = tl_out__c_valid & !auto_out_c_ready;

  assign _T_2387 = releaseRejected ? 2'h0 : ({{1'd0}, s1_release_data_valid} + {1'h0,s2_release_data_valid});
  assign releaseDataBeat = {1'h0,c_count} + {{9'd0}, _T_2387};

  assign discard_line = s2_valid_flush_line & s2_req_size[1];

  assign res_2_address = {s2_victim_tag, s2_req_addr[11:6], 6'h0};

  assign newCoh_state = _T_2417 ? voluntaryNewCoh_state : probeNewCoh_state;

  assign flushCounterNext = flushCounter + 8'h1;

  assign flushDone = flushCounterNext[8:6] == 3'h4;

  assign auto_out_a_valid = _T_2111 | s2_valid_uncached_pending;

  assign _T_2172 = s2_read == 1'h0;
  assign _T_419 = s2_req_cmd == 5'h11;
  assign _T_2170 = s2_write == 1'h0;
  assign auto_out_a_bits_opcode = _T_636 ? 3'h6 
				: _T_2170 ? 3'h4 
				: _T_419 ? 3'h1 
				: _T_2172 ? 3'h0 
				: atomics_opcode;

  assign auto_out_a_bits_param = _T_636 ? {{1'd0}, s2_grow_param} 
				: _T_2170 ? 3'h0 
				: _T_419 ? 3'h0 
				: _T_2172 ? 3'h0 
				: atomics_param; 

  assign auto_out_a_bits_size = _T_636 ? 4'h6 
				: _T_2170 ? {{2'd0}, s2_req_size} 
				: _T_419 ? {{2'd0}, s2_req_size} 
				: _T_2172 ? {{2'd0}, s2_req_size} 
				: atomics_size;

  assign auto_out_a_bits_source = _T_636 ? 1'h0 
				: _T_2170 ? a_source 
				: _T_419 ? a_source 
				: _T_2172 ? a_source 
				: atomics_source;

  assign auto_out_a_bits_address = _T_636 ? acquire_address 
				: _T_2170 ? s2_req_addr 
				: _T_419 ? s2_req_addr 
				: _T_2172 ? s2_req_addr 
				: atomics_address;

  assign auto_out_a_bits_mask = _T_636 ? 4'hf 
				: _T_2170 ? get_mask 
				: _T_419 ? putpartial_mask 
				: _T_2172 ? get_mask 
				: atomics_mask; 

  assign auto_out_a_bits_data = _T_636 ? 32'h0 
				: _T_2170 ? 32'h0 
				: _T_419 ? pstore1_data 
				: _T_2172 ? pstore1_data 
				: atomics_data;

  assign _T_2359 = _T_2358 == 1'h0;
  assign auto_out_b_ready = tl_out__b_ready;

  assign auto_out_c_valid = tl_out__c_valid;

  assign auto_out_c_bits_opcode = tl_out__c_bits_opcode;
  assign auto_out_c_bits_param = _T_2417 ? s2_shrink_param 
				: _T_2414 ? s2_report_param 
				: _T_2413 ? s2_report_param 
				: !s2_probe ? 3'h5 
				: s2_prb_ack_data ? 3'h5 
				: _T_2404 ? s2_report_param 
				: 3'h5;
  assign auto_out_c_bits_size = _T_2417 ? 4'h6 : probe_bits_size;
  assign auto_out_c_bits_source = probe_bits_source;
  assign auto_out_c_bits_address = probe_bits_address;
  assign auto_out_c_bits_data = {s2_data[31:24],s2_data[23:16],s2_data[15:8],s2_data[7:0]};
  assign auto_out_d_ready = tl_out__d_ready;
  assign auto_out_e_valid = tl_out__e_valid;
  assign auto_out_e_bits_sink = auto_out_d_bits_sink;
// Passed
  assign _T_52 = s1_nack == 1'h0;
  assign _GEN_22 = (!tlb_io_req_ready & !tlb_io_ptw_resp_valid & !io_cpu_req_bits_phys) ? 1'h0 
		: (!metaArb_io_in_7_ready) ? 1'h0 
		: (!dataArb_io_in_3_ready & s0_read) ? 1'h0 
		: ((release_state == 3'h0) & !cached_grant_wait & _T_52);
  assign io_cpu_req_ready = _T_2344 ? (auto_out_d_valid ? 1'h0 : _GEN_22) : _GEN_22;

  assign io_cpu_s2_nack = s2_valid_no_xcpt & !s2_dont_nack_uncached & !s2_dont_nack_misc & !s2_valid_hit_pre_data_ecc_and_waw;

  assign io_cpu_resp_valid = s2_valid_hit_pre_data_ecc_and_waw | doUncachedResp;
  assign io_cpu_resp_bits_addr = doUncachedResp ? s2_uncached_resp_addr : s2_req_addr;
  assign io_cpu_resp_bits_tag = s2_req_tag;
  assign io_cpu_resp_bits_cmd = s2_req_cmd;
  assign io_cpu_resp_bits_size = s2_req_size;
  assign io_cpu_resp_bits_signed = s2_req_signed;

  assign _T_2511 = s2_req_addr[1] ? s2_data_corrected[31:16] : s2_data_corrected[15:0];
  assign _T_2521 = (s2_req_size == 2'h1) ? ((s2_req_signed & _T_2511[15]) ? 16'hffff : 16'h0) : s2_data_corrected[31:16];
  assign _T_2522 = {_T_2521,_T_2511};
  assign _T_2528 = _T_421 ? 8'h0 
		: s2_req_addr[0] ? _T_2522[15:8] 
		: _T_2522[7:0];
  assign _T_2536 = ((s2_req_size == 2'h0) | _T_421) ? ((s2_req_signed & _T_2528[7]) ? 24'hffffff : 24'h0) : _T_2522[31:8];
  assign io_cpu_resp_bits_data = {_T_2536,_T_2528} | {{31'd0}, s2_sc_fail};
  assign io_cpu_resp_bits_mask = 4'h0;
  assign io_cpu_resp_bits_replay = doUncachedResp;

  assign io_cpu_resp_bits_has_data = s2_read;
  assign io_cpu_resp_bits_data_word_bypass = auto_out_c_bits_data;
  assign io_cpu_resp_bits_data_raw = auto_out_c_bits_data;
  assign io_cpu_resp_bits_store_data = pstore1_data;
  assign io_cpu_replay_next = _T_2227 & grantIsUncachedData;
  assign io_cpu_s2_xcpt_ma_ld = _T_2475 & s2_tlb_resp_ma_ld;
  assign io_cpu_s2_xcpt_ma_st = _T_2475 & s2_tlb_resp_ma_st;
  assign io_cpu_s2_xcpt_pf_ld = _T_2475 & s2_tlb_resp_pf_ld;
  assign io_cpu_s2_xcpt_pf_st = _T_2475 & s2_tlb_resp_pf_st;
  assign io_cpu_s2_xcpt_ae_ld = _T_2475 & s2_tlb_resp_ae_ld;
  assign io_cpu_s2_xcpt_ae_st = _T_2475 & s2_tlb_resp_ae_st;
  assign io_cpu_ordered = (s1_valid | s2_valid | cached_grant_wait | uncachedInFlight_0) == 1'h0;
  assign io_cpu_perf_release = (!_T_2618 | _T_2376) & _T_2364;
  assign io_cpu_perf_grant = d_last & _T_2227;
  assign io_ptw_req_valid = tlb_io_ptw_req_valid;
  assign io_ptw_req_bits_bits_addr = tlb_io_ptw_req_bits_bits_addr;

  assign MaxPeriodFibonacciLFSR_clock = gated_clock;
  assign MaxPeriodFibonacciLFSR_reset = reset;
  assign MaxPeriodFibonacciLFSR_io_increment = _T_2227 & grantIsCached & d_last;

  assign metaArb_io_in_0_valid = resetting;
  assign metaArb_io_in_0_bits_addr = metaArb_io_in_5_bits_addr;
  assign metaArb_io_in_0_bits_idx = metaArb_io_in_5_bits_idx;
  assign metaArb_io_in_0_bits_data = {2'h0,s2_req_addr[31:12]};
  assign metaArb_io_in_2_valid = s2_valid_hit_pre_data_ecc_and_waw & s2_update_meta; 
  assign metaArb_io_in_2_bits_addr = {io_cpu_req_bits_addr[31:12],s2_vaddr[11:0]};
  assign metaArb_io_in_2_bits_idx = s2_vaddr[11:6];

  assign _T_650 = 4'h1 << _T_649;
  assign metaArb_io_in_2_bits_way_en = s2_hit_valid ? s2_hit_way : _T_650;

  assign metaArb_io_in_2_bits_data = {s2_grow_param, s2_req_addr[31:12]};

  assign metaArb_io_in_3_valid = grantIsCached & d_done & !auto_out_d_bits_denied;
  assign metaArb_io_in_3_bits_addr = {io_cpu_req_bits_addr[31:12], s2_vaddr[11:0]};
  assign metaArb_io_in_3_bits_idx = s2_vaddr[11:6];
  assign metaArb_io_in_3_bits_way_en = s2_hit_valid ? s2_hit_way : _T_650;

  assign _T_2339 = (4'h1 == {s2_write,_T_542,auto_out_d_bits_param}) ? 2'h1 
		: (4'h0 == {s2_write,_T_542,auto_out_d_bits_param}) ? 2'h2 
		: (4'h4 == {s2_write,_T_542,auto_out_d_bits_param}) ? 2'h2 
		: (4'hc == {s2_write,_T_542,auto_out_d_bits_param}) ? 2'h3 
		: 2'h0;
  assign metaArb_io_in_3_bits_data = {_T_2339,s2_req_addr[31:12]};

  assign metaArb_io_in_4_valid = _T_2416 | (release_state == 3'h7);
  assign metaArb_io_in_4_bits_addr = {io_cpu_req_bits_addr[31:12], probe_bits_address[11:0]};
  assign metaArb_io_in_4_bits_idx = probe_bits_address[11:6];
  assign metaArb_io_in_4_bits_way_en = _T_2417 ? s2_victim_way : s2_probe_way;
  assign metaArb_io_in_4_bits_data = {newCoh_state, probe_bits_address[31:12]};
  assign metaArb_io_in_5_valid = 1'h0;
  assign metaArb_io_in_5_bits_addr = {io_cpu_req_bits_addr[31:12],metaArb_io_in_5_bits_idx, 6'h0};
  assign metaArb_io_in_5_bits_idx = flushCounter[5:0];

  assign _T_2408 = release_state == 3'h4;
  assign metaArb_io_in_6_valid = _T_2408 | (auto_out_b_valid & (!block_probe_for_core_progress | lrscBackingOff));

  assign _GEN_265 = _T_2408 ? {1'h0,probe_bits_address} : {1'h0,auto_out_b_bits_address};
  assign metaArb_io_in_6_bits_addr = _GEN_265[31:0];

  assign metaArb_io_in_6_bits_idx = _T_2408 ? probe_bits_address[11:6] : auto_out_b_bits_address[11:6];
  assign metaArb_io_in_6_bits_way_en = metaArb_io_in_4_bits_way_en;
  assign metaArb_io_in_6_bits_data = metaArb_io_in_4_bits_data;
  assign metaArb_io_in_7_valid = io_cpu_req_valid;
  assign metaArb_io_in_7_bits_addr = io_cpu_req_bits_addr;
  assign metaArb_io_in_7_bits_idx = io_cpu_req_bits_addr[11:6];
  assign metaArb_io_in_7_bits_way_en = metaArb_io_in_4_bits_way_en;
  assign metaArb_io_in_7_bits_data = metaArb_io_in_4_bits_data;

  assign tag_array_RW0_wdata_0 = metaArb_io_out_bits_data;
  assign tag_array_RW0_wdata_1 = metaArb_io_out_bits_data;
  assign tag_array_RW0_wdata_2 = metaArb_io_out_bits_data;
  assign tag_array_RW0_wdata_3 = metaArb_io_out_bits_data;
  assign tag_array_RW0_wmask_0 = metaArb_io_out_bits_way_en[0];
  assign tag_array_RW0_wmask_1 = metaArb_io_out_bits_way_en[1];
  assign tag_array_RW0_wmask_2 = metaArb_io_out_bits_way_en[2];
  assign tag_array_RW0_wmask_3 = metaArb_io_out_bits_way_en[3];

  assign data_clock = gated_clock;
  assign data_io_req_valid = dataArb_io_out_valid;
  assign data_io_req_bits_addr = dataArb_io_out_bits_addr;
  assign data_io_req_bits_write = dataArb_io_out_bits_write;
  assign data_io_req_bits_wdata = dataArb_io_out_bits_wdata;
  assign data_io_req_bits_eccMask = dataArb_io_out_bits_eccMask;
  assign data_io_req_bits_way_en = dataArb_io_out_bits_way_en;

  assign dataArb_io_in_0_valid = pstore_drain;
  assign dataArb_io_in_0_bits_addr = pstore2_valid ? pstore2_addr[11:0] : pstore1_addr[11:0];
  assign dataArb_io_in_0_bits_write = pstore_drain;

  assign _T_1089 = pstore2_valid ? pstore2_storegen_data : pstore1_data;
  assign dataArb_io_in_0_bits_wdata = {_T_1089[31:24],_T_1089[23:16],_T_1089[15:8],_T_1089[7:0]};

  assign _T_1099 = pstore2_valid ? mask : pstore1_mask;
  assign dataArb_io_in_0_bits_eccMask = {_T_1099[3],_T_1099[2],_T_1099[1],_T_1099[0]};

  assign dataArb_io_in_0_bits_way_en = pstore2_valid ? pstore2_way : pstore1_way;

  assign _T_2256 = auto_out_d_valid & grantIsRefill & canAcceptCachedGrant;
  assign dataArb_io_in_1_valid = _T_2344 ? (auto_out_d_valid | _T_2256) : _T_2256;

  assign _T_2261 = {s2_vaddr[31:6], 6'h0} | {{20'd0}, d_address_inc};
  assign dataArb_io_in_1_bits_addr = _T_2261[11:0];

  assign dataArb_io_in_1_bits_write = _T_2344 ? (auto_out_d_valid ? 1'h0 : 1'h1) : 1'h1;

  assign dataArb_io_in_1_bits_wdata = {auto_out_d_bits_data[31:24],auto_out_d_bits_data[23:16],auto_out_d_bits_data[15:8],auto_out_d_bits_data[7:0]};
  assign dataArb_io_in_1_bits_eccMask = 4'hf;
  assign dataArb_io_in_1_bits_way_en = s2_hit_valid ? s2_hit_way : (4'h1 << _T_649);
  assign dataArb_io_in_2_valid = inWriteback & (releaseDataBeat < 11'h10);
  assign dataArb_io_in_2_bits_addr = {probe_bits_address[11:6], 6'h0} | {{6'd0}, releaseDataBeat[3:0], 2'h0}; 
  assign dataArb_io_in_2_bits_wdata = dataArb_io_in_1_bits_wdata;
  assign dataArb_io_in_2_bits_eccMask = dataArb_io_in_1_bits_eccMask;
  assign dataArb_io_in_3_valid = io_cpu_req_valid & res;
  assign dataArb_io_in_3_bits_addr = io_cpu_req_bits_addr[11:0];
  assign dataArb_io_in_3_bits_wdata = dataArb_io_in_1_bits_wdata;
  assign dataArb_io_in_3_bits_eccMask = dataArb_io_in_1_bits_eccMask;

  assign tlb_clock = gated_clock;
  assign tlb_reset = reset;
  assign tlb_io_req_valid = s1_valid_masked & s1_cmd_uses_tlb;
  assign tlb_io_req_bits_vaddr = s1_req_addr;
  assign tlb_io_req_bits_passthrough = s1_req_phys;
  assign tlb_io_req_bits_size = s1_req_size;
  assign tlb_io_req_bits_cmd = s1_req_cmd;
  assign tlb_io_sfence_valid = s1_valid_masked & s1_sfence;
  assign tlb_io_sfence_bits_rs1 = s1_req_size[0];
  assign tlb_io_sfence_bits_rs2 = s1_req_size[1];
  assign tlb_io_sfence_bits_addr = s1_req_addr;
  assign tlb_io_ptw_req_ready = io_ptw_req_ready;
  assign tlb_io_ptw_resp_valid = io_ptw_resp_valid;
  assign tlb_io_ptw_resp_bits_ae = io_ptw_resp_bits_ae;
  assign tlb_io_ptw_resp_bits_pte_ppn = io_ptw_resp_bits_pte_ppn;
  assign tlb_io_ptw_resp_bits_pte_d = io_ptw_resp_bits_pte_d;
  assign tlb_io_ptw_resp_bits_pte_a = io_ptw_resp_bits_pte_a;
  assign tlb_io_ptw_resp_bits_pte_g = io_ptw_resp_bits_pte_g;
  assign tlb_io_ptw_resp_bits_pte_u = io_ptw_resp_bits_pte_u;
  assign tlb_io_ptw_resp_bits_pte_x = io_ptw_resp_bits_pte_x;
  assign tlb_io_ptw_resp_bits_pte_w = io_ptw_resp_bits_pte_w;
  assign tlb_io_ptw_resp_bits_pte_r = io_ptw_resp_bits_pte_r;
  assign tlb_io_ptw_resp_bits_pte_v = io_ptw_resp_bits_pte_v;
  assign tlb_io_ptw_resp_bits_level = io_ptw_resp_bits_level;
  assign tlb_io_ptw_resp_bits_homogeneous = io_ptw_resp_bits_homogeneous;
  assign tlb_io_ptw_ptbr_mode = io_ptw_ptbr_mode;
  assign tlb_io_ptw_status_debug = io_ptw_status_debug;
  assign tlb_io_ptw_status_dprv = io_ptw_status_dprv;
  assign tlb_io_ptw_status_mxr = io_ptw_status_mxr;
  assign tlb_io_ptw_status_sum = io_ptw_status_sum;
  assign tlb_io_ptw_pmp_0_cfg_l = io_ptw_pmp_0_cfg_l;
  assign tlb_io_ptw_pmp_0_cfg_a = io_ptw_pmp_0_cfg_a;
  assign tlb_io_ptw_pmp_0_cfg_x = io_ptw_pmp_0_cfg_x;
  assign tlb_io_ptw_pmp_0_cfg_w = io_ptw_pmp_0_cfg_w;
  assign tlb_io_ptw_pmp_0_cfg_r = io_ptw_pmp_0_cfg_r;
  assign tlb_io_ptw_pmp_0_addr = io_ptw_pmp_0_addr;
  assign tlb_io_ptw_pmp_0_mask = io_ptw_pmp_0_mask;
  assign tlb_io_ptw_pmp_1_cfg_l = io_ptw_pmp_1_cfg_l;
  assign tlb_io_ptw_pmp_1_cfg_a = io_ptw_pmp_1_cfg_a;
  assign tlb_io_ptw_pmp_1_cfg_x = io_ptw_pmp_1_cfg_x;
  assign tlb_io_ptw_pmp_1_cfg_w = io_ptw_pmp_1_cfg_w;
  assign tlb_io_ptw_pmp_1_cfg_r = io_ptw_pmp_1_cfg_r;
  assign tlb_io_ptw_pmp_1_addr = io_ptw_pmp_1_addr;
  assign tlb_io_ptw_pmp_1_mask = io_ptw_pmp_1_mask;
  assign tlb_io_ptw_pmp_2_cfg_l = io_ptw_pmp_2_cfg_l;
  assign tlb_io_ptw_pmp_2_cfg_a = io_ptw_pmp_2_cfg_a;
  assign tlb_io_ptw_pmp_2_cfg_x = io_ptw_pmp_2_cfg_x;
  assign tlb_io_ptw_pmp_2_cfg_w = io_ptw_pmp_2_cfg_w;
  assign tlb_io_ptw_pmp_2_cfg_r = io_ptw_pmp_2_cfg_r;
  assign tlb_io_ptw_pmp_2_addr = io_ptw_pmp_2_addr;
  assign tlb_io_ptw_pmp_2_mask = io_ptw_pmp_2_mask;
  assign tlb_io_ptw_pmp_3_cfg_l = io_ptw_pmp_3_cfg_l;
  assign tlb_io_ptw_pmp_3_cfg_a = io_ptw_pmp_3_cfg_a;
  assign tlb_io_ptw_pmp_3_cfg_x = io_ptw_pmp_3_cfg_x;
  assign tlb_io_ptw_pmp_3_cfg_w = io_ptw_pmp_3_cfg_w;
  assign tlb_io_ptw_pmp_3_cfg_r = io_ptw_pmp_3_cfg_r;
  assign tlb_io_ptw_pmp_3_addr = io_ptw_pmp_3_addr; 
  assign tlb_io_ptw_pmp_3_mask = io_ptw_pmp_3_mask;
  assign tlb_io_ptw_pmp_4_cfg_l = io_ptw_pmp_4_cfg_l;
  assign tlb_io_ptw_pmp_4_cfg_a = io_ptw_pmp_4_cfg_a;
  assign tlb_io_ptw_pmp_4_cfg_x = io_ptw_pmp_4_cfg_x;
  assign tlb_io_ptw_pmp_4_cfg_w = io_ptw_pmp_4_cfg_w;
  assign tlb_io_ptw_pmp_4_cfg_r = io_ptw_pmp_4_cfg_r;
  assign tlb_io_ptw_pmp_4_addr = io_ptw_pmp_4_addr;
  assign tlb_io_ptw_pmp_4_mask = io_ptw_pmp_4_mask;
  assign tlb_io_ptw_pmp_5_cfg_l = io_ptw_pmp_5_cfg_l;
  assign tlb_io_ptw_pmp_5_cfg_a = io_ptw_pmp_5_cfg_a;
  assign tlb_io_ptw_pmp_5_cfg_x = io_ptw_pmp_5_cfg_x;
  assign tlb_io_ptw_pmp_5_cfg_w = io_ptw_pmp_5_cfg_w;
  assign tlb_io_ptw_pmp_5_cfg_r = io_ptw_pmp_5_cfg_r;
  assign tlb_io_ptw_pmp_5_addr = io_ptw_pmp_5_addr;
  assign tlb_io_ptw_pmp_5_mask = io_ptw_pmp_5_mask;
  assign tlb_io_ptw_pmp_6_cfg_l = io_ptw_pmp_6_cfg_l;
  assign tlb_io_ptw_pmp_6_cfg_a = io_ptw_pmp_6_cfg_a;
  assign tlb_io_ptw_pmp_6_cfg_x = io_ptw_pmp_6_cfg_x;
  assign tlb_io_ptw_pmp_6_cfg_w = io_ptw_pmp_6_cfg_w;
  assign tlb_io_ptw_pmp_6_cfg_r = io_ptw_pmp_6_cfg_r;
  assign tlb_io_ptw_pmp_6_addr = io_ptw_pmp_6_addr;
  assign tlb_io_ptw_pmp_6_mask = io_ptw_pmp_6_mask;
  assign tlb_io_ptw_pmp_7_cfg_l = io_ptw_pmp_7_cfg_l;
  assign tlb_io_ptw_pmp_7_cfg_a = io_ptw_pmp_7_cfg_a;
  assign tlb_io_ptw_pmp_7_cfg_x = io_ptw_pmp_7_cfg_x;
  assign tlb_io_ptw_pmp_7_cfg_w = io_ptw_pmp_7_cfg_w;
  assign tlb_io_ptw_pmp_7_cfg_r = io_ptw_pmp_7_cfg_r;
  assign tlb_io_ptw_pmp_7_addr = io_ptw_pmp_7_addr;
  assign tlb_io_ptw_pmp_7_mask = io_ptw_pmp_7_mask;

  assign amoalu_io_mask = pstore1_mask;
  assign amoalu_io_cmd = pstore1_cmd;
  assign amoalu_io_lhs = auto_out_c_bits_data;
  assign amoalu_io_rhs = pstore1_data;

  assign tag_array_RW0_wmode = metaArb_io_out_bits_write;
  assign tag_array_RW0_clk = gated_clock;
  assign tag_array_RW0_en = s0_clk_en | (metaArb_io_out_valid & metaArb_io_out_bits_write);
  assign tag_array_RW0_addr = metaArb_io_out_bits_idx;

always @(posedge gated_clock) begin
	if (reset) begin
		s1_valid <= 1'h0;
	end else begin
		s1_valid <= io_cpu_req_ready & io_cpu_req_valid;
	end
end

always @(posedge gated_clock) begin
	if (reset) begin
	  blockProbeAfterGrantCount <= 3'h0;
	end else begin
		if (_T_2227 & grantIsCached & d_last) begin
			blockProbeAfterGrantCount <= 3'h7;
		end else begin
			if (_T_2348) begin
				blockProbeAfterGrantCount <= blockProbeAfterGrantCount - 3'h1;
			end
		end
	end
end
// Passed
  assign _T_850 = (s2_valid_hit_pre_data_ecc_and_waw & _T_541 & !cached_grant_wait) | s2_valid_cached_miss;
always @(posedge gated_clock) begin
	if (reset) begin
		lrscCount <= 7'h0;
	end else begin
		if (s1_probe) begin
			lrscCount <= 7'h0;
		end else begin
			if (s2_valid_masked & lrscValid) begin
				lrscCount <= 7'h3;
			end else begin
				if (_T_842) begin
					lrscCount <= lrscCount - 7'h1;
				end else begin
					if (_T_850) begin
						if (s2_hit) begin
							lrscCount <= 7'h4f;
						end else begin
							lrscCount <= 7'h0;
						end
					end
				end
			end
		end
	end
end

  assign _T_49 = tl_out__b_ready & auto_out_b_valid;
always @(posedge gated_clock) begin
	if (reset) begin
		s1_probe <= 1'h0;
		s2_probe <= 1'h0;
	end else begin
		if (_T_2408) begin
			s1_probe <= metaArb_io_in_6_ready | _T_49;
		end else begin
			s1_probe <= _T_49;
		end
		s2_probe <= s1_probe;
	end
end

  assign _T_2399 = s2_victim_dirty & !discard_line;
always @(posedge gated_clock) begin
	if (reset) begin
		release_state <= S_READY;
	end else begin
		if (metaArb_io_in_4_ready & metaArb_io_in_4_valid) begin
			release_state <= S_READY;
		end
		else if (_T_2417 & releaseDone) begin
			release_state <= S_VOLUNTARY_WRITE_META;
		end
		else if (_T_2414 & releaseDone) begin
			release_state <= S_PROBE_WRITE_META;
		end
		else if (_T_2413 & releaseDone) begin
			release_state <= S_PROBE_WRITE_META;
		end
		else if (_T_2412 & releaseDone) begin
			release_state <= S_READY;
		end
		else if (_T_2408 & metaArb_io_in_6_ready) begin
			release_state <= S_READY;
		end
		else if (s2_probe & s2_prb_ack_data) begin
			release_state <= S_PROBE_REP_DIRTY;
		end
		else if (s2_probe & _T_2404) begin
			if (releaseDone) release_state <= S_PROBE_WRITE_META;
			else release_state <= S_PROBE_REP_CLEAN;
		end
		else if (s2_probe) begin
			if (releaseDone) release_state <= S_READY;
			else release_state <= S_PROBE_REP_MISS;
		end
		else if (s2_want_victimize) begin
			if (_T_2399) release_state <= S_VOLUNTARY_WRITEBACK;
			else release_state <= S_VOLUNTARY_WRITE_META;
		end
	end
end
// Passed
  assign _T_2439 = _T_2364 & c_first;
always @(posedge gated_clock) begin
	if (reset) begin
	  release_ack_wait <= 1'h0;
	end else begin
		if (_T_2417 & _T_2439) begin
			release_ack_wait <= 1'h1;
			release_ack_addr <= probe_bits_address;
		end else if (_T_2227 & (!grantIsCached) & (!grantIsUncached) & grantIsVoluntary) begin
			release_ack_wait <= 1'h0;
		end
	end
end
// Passed
always @(posedge gated_clock) begin
	if (reset) begin
		grantInProgress <= 1'h0;
	end else begin
		if (_T_2227) begin
			if (grantIsCached) begin
				if (d_last) begin
					grantInProgress <= 1'h0;
				end else begin
					grantInProgress <= 1'h1;
				end
			end
		end
	end
end

always @(posedge gated_clock) begin
	if (reset) begin
		s2_valid <= 1'h0;
	end else begin
		s2_valid <= s1_valid_masked & !s1_sfence;
	end
end

always @(posedge gated_clock) begin
	if (s2_want_victimize) begin
		probe_bits_param <= 2'h0;
		probe_bits_size <= 4'h0;
		probe_bits_source <= 1'h0;
		probe_bits_address <= res_2_address;
	end else begin
		if (_T_49) begin
			probe_bits_param <= auto_out_b_bits_param;
			probe_bits_size <= auto_out_b_bits_size;
			probe_bits_source <= auto_out_b_bits_source;
			probe_bits_address <= auto_out_b_bits_address;
		end
	end
end

always @(posedge gated_clock) begin
	if (s1_probe) begin
		s2_probe_state_state <= s1_meta_hit_state_state;
	end
end
// Passed
always @(posedge gated_clock) begin
	if (reset) begin
		_T_2372 <= 10'h0;
	end else begin
		if (_T_2364) begin
			if (c_first) begin
				if (_T_2370) begin
					_T_2372 <= _T_2369;
				end else begin
					_T_2372 <= 10'h0;
				end
			end else begin
				_T_2372 <= _T_2374;
			end
		end
	end
	s2_release_data_valid <= s1_release_data_valid & _T_2381;
end

  assign _T_391 = s1_valid_not_nacked | s1_flush_valid;
always @(posedge gated_clock) begin
	if (s0_clk_en) begin
		s1_req_cmd <= io_cpu_req_bits_cmd;
	end
	if (_T_2227 & !grantIsCached & grantIsUncached & grantIsUncachedData) begin
		s2_req_cmd <= 5'h0;
	end else begin
		if (_T_391) begin
			s2_req_cmd <= s1_req_cmd;
		end
	end
end
// Passed
  assign _T_866 = s1_valid_not_nacked & s1_write;
  assign _T_81 = s1_req_cmd == 5'h11;
always @(posedge gated_clock) begin
	pstore1_held <= pstore1_valid & pstore2_valid & !pstore_drain;
	if (_T_866) begin
		pstore1_addr <= s1_req_addr;
	end
	if (s0_clk_en) begin
		s1_req_addr <= {metaArb_io_out_bits_addr[31:6], io_cpu_req_bits_addr[5:0]};
	end
	if (_T_866) begin
		if (_T_81) begin
			pstore1_mask <= io_cpu_s1_data_mask;
		end else begin
			pstore1_mask <= s1_mask_xwr;
		end
	end
end

  assign _T_1038 = pstore_drain == 1'h0;
always @(posedge gated_clock) begin
	if (s0_clk_en) begin
		s1_req_size <= io_cpu_req_bits_size;
	end

    	pstore2_valid <= (pstore2_valid & _T_1038) | advance_pstore1;

	if (advance_pstore1) begin
		pstore2_addr <= pstore1_addr;
	end
	if (advance_pstore1) begin
		mask <= ~ (~ pstore1_mask);
	end

	_T_384 <= s1_nack == 1'h0;

	if (_T_391) begin
		s2_hit_state_state <= s1_meta_hit_state_state;
	end
end

  assign _T_57 = metaArb_io_in_7_ready == 1'h0;
  assign _T_643 = s2_flush_valid_pre_tag_ecc == 1'h0;
  assign _T_107 = release_state == 3'h0;
always @(posedge gated_clock) begin
	if (s0_clk_en) begin
		s1_req_tag <= io_cpu_req_bits_tag;
	end
	if (s0_clk_en) begin
		s1_req_signed <= io_cpu_req_bits_signed;
	end
	if (s0_clk_en) begin
		s1_req_phys <= _T_57 | io_cpu_req_bits_phys;;
	end
	s1_flush_valid <= metaArb_io_in_5_ready & metaArb_io_in_5_valid & _T_310 & _T_643 & _T_107 & can_acquire_before_release;
end

  assign _T_2180 = auto_out_a_ready & tl_out_a_valid;
always @(posedge gated_clock) begin
	if (reset) begin
		cached_grant_wait <= 1'h0;
	end else begin
		if (_T_2227 & grantIsCached & d_last) begin
		      cached_grant_wait <= 1'h0;
		end
		else if (_T_2180 & !s2_uncached) begin
			cached_grant_wait <= 1'h1;
		end
	end
end
// Passed
  assign _T_2232 = uncachedRespIdxOH & d_last;
  assign _GEN_114 = a_sel | uncachedInFlight_0;
always @(posedge gated_clock) begin
	if (reset) begin
		uncachedInFlight_0 <= 1'h0;
	end else begin
		if (_T_2227) begin
			if (grantIsCached) begin
				if (_T_2180 & s2_uncached) begin
					uncachedInFlight_0 <= _GEN_114;
				end
			end else begin
				if (grantIsUncached & _T_2232) begin
					uncachedInFlight_0 <= 1'h0;
				end else begin
					if (_T_2180 & s2_uncached) begin
						uncachedInFlight_0 <= _GEN_114;
					end
				end
			end
		end else begin
			if (_T_2180 & s2_uncached) begin
				uncachedInFlight_0 <= _GEN_114;
			end
		end
	end
end

  assign _T_135 = io_cpu_req_bits_cmd == 5'h1;
  assign _T_164 = io_cpu_req_bits_cmd == 5'h11;
  assign _T_116 = io_cpu_req_bits_cmd == 5'h7;
  assign _T_134 = (io_cpu_req_bits_cmd == 5'h4) 
		| (io_cpu_req_bits_cmd == 5'h9) 
		| (io_cpu_req_bits_cmd == 5'ha) 
		| (io_cpu_req_bits_cmd == 5'hb) 
		| (io_cpu_req_bits_cmd == 5'h8) 
		| (io_cpu_req_bits_cmd == 5'hc) 
		| (io_cpu_req_bits_cmd == 5'hd) 
		| (io_cpu_req_bits_cmd == 5'he) 
		| (io_cpu_req_bits_cmd == 5'hf);
always @(posedge gated_clock) begin
	if (_T_2180 & s2_uncached & a_sel) begin
		uncachedReqs_0_addr <= s2_req_addr;
		uncachedReqs_0_tag <= s2_req_tag;
		uncachedReqs_0_size <= s2_req_size;
		uncachedReqs_0_signed <= s2_req_signed;
	end
	if (s0_clk_en) begin
		s1_did_read <= dataArb_io_in_3_ready & io_cpu_req_valid & (s0_read | ((_T_135 | _T_164 | _T_116 | _T_134) & _T_164));
	end
	if (s1_valid_not_nacked) begin
		s2_hit_way <= s1_meta_hit_way;
	end
	if (_T_391) begin
		_T_649 <= s1_victim_way;
	end
	if (s1_probe) begin
		s2_probe_way <= s1_meta_hit_way;
	end
end

always @(posedge gated_clock) begin
	if (_T_2227) begin
		if (grantIsCached) begin
			if (_T_391) begin
				s2_req_addr <= tlb_io_resp_paddr;
				s2_req_tag <= s1_req_tag;
				s2_req_size <= s1_req_size;
				s2_req_signed <= s1_req_signed;
			end
		end else begin
			if (grantIsUncached & grantIsUncachedData) begin
				s2_req_addr <= dontCareBits | {{30'd0}, uncachedReqs_0_addr[1:0]};
				s2_req_tag <= uncachedReqs_0_tag;
				s2_req_size <= uncachedReqs_0_size;
				s2_req_signed <= uncachedReqs_0_signed;
			end else begin
				if (_T_391) begin
					s2_req_addr <= tlb_io_resp_paddr;
					s2_req_tag <= s1_req_tag;
					s2_req_size <= s1_req_size;
					s2_req_signed <= s1_req_signed;
				end
			end
		end
	end else begin
		if (_T_391) begin
			s2_req_addr <= tlb_io_resp_paddr;
			s2_req_tag <= s1_req_tag;
			s2_req_size <= s1_req_size;
			s2_req_signed <= s1_req_signed;
		end
	end
end
// Passed
  assign _T_2257 = dataArb_io_in_1_ready == 1'h0;
always @(posedge gated_clock) begin
	if (_T_391) begin
		s2_tlb_resp_pf_ld <= tlb_io_resp_pf_ld;
		s2_tlb_resp_pf_st <= tlb_io_resp_pf_st;
		s2_tlb_resp_ae_ld <= tlb_io_resp_ae_ld;
		s2_tlb_resp_ae_st <= tlb_io_resp_ae_st;
		s2_tlb_resp_ma_ld <= tlb_io_resp_ma_ld;
		s2_tlb_resp_ma_st <= tlb_io_resp_ma_st;
		s2_tlb_resp_cacheable <= tlb_io_resp_cacheable;
	end
	if (_T_2227 & !(grantIsCached) & grantIsUncached & grantIsUncachedData) begin
		s2_uncached_resp_addr <= uncachedReqs_0_addr;
	end
	if (_T_391) begin
		_T_393 <= s1_req_addr;
	end
	s2_flush_valid_pre_tag_ecc <= s1_flush_valid;
	if (_T_2344 & auto_out_d_valid) begin
		blockUncachedGrant <= _T_2257;
	end else begin
		blockUncachedGrant <= dataArb_io_out_valid;
	end
end

  assign _T_490 = (_T_477 ? s1_all_data_ways_0 : 32'h0) 
		| (_T_478 ? s1_all_data_ways_1 : 32'h0) 
		| (_T_479 ? s1_all_data_ways_2 : 32'h0) 
		| (_T_480 ? s1_all_data_ways_3 : 32'h0) 
		| (_T_481 ? {auto_out_d_bits_data[31:24],auto_out_d_bits_data[23:16],auto_out_d_bits_data[15:8],auto_out_d_bits_data[7:0]} : 32'h0); 
always @(posedge gated_clock) begin
	if (reset) begin
		_T_2190 <= 10'h0;
	end else begin
		if (_T_2227) begin
			if (d_first) begin
				if (auto_out_d_bits_opcode[0]) begin
					_T_2190 <= ~ _T_2184[11:2];
				end else begin
					_T_2190 <= 10'h0;
				end
			end else begin
				_T_2190 <= _T_2192;
			end
		end
	end
	if (en) begin
		s2_data <= _T_490;
	end
end

always @(posedge gated_clock) begin
	if (_T_391) begin
		if (s1_victim_way == 2'h3) begin
			_T_654 <= s1_meta_uncorrected_3_tag;
			_T_656_state <= s1_meta_uncorrected_3_coh_state;
		end else begin
			if (s1_victim_way == 2'h2) begin
				_T_654 <= s1_meta_uncorrected_2_tag;
				_T_656_state <= s1_meta_uncorrected_2_coh_state;
			end else begin
				if (s1_victim_way == 2'h1) begin
					_T_654 <= s1_meta_uncorrected_1_tag;
					_T_656_state <= s1_meta_uncorrected_1_coh_state;
				end else begin
					_T_654 <= s1_meta_uncorrected_0_tag;
					_T_656_state <= s1_meta_uncorrected_0_coh_state;
				end
			end
		end
	end
end

always @(posedge gated_clock) begin
	if (_T_850) begin
		lrscAddr <= s2_req_addr[31:6];
	end
	if (_T_866) begin
		pstore1_cmd <= s1_req_cmd;
		pstore1_data <= io_cpu_s1_data_data;
		pstore1_way <= s1_meta_hit_way;
		pstore1_rmw <= s1_read | (s1_write & _T_81);
	end
	_T_995 <= io_cpu_s2_nack;
	if (advance_pstore1) begin
		pstore2_way <= pstore1_way;
		_T_1051 <= pstore1_storegen_data[7:0];
		_T_1056 <= pstore1_storegen_data[15:8];
		_T_1061 <= pstore1_storegen_data[23:16];
		_T_1066 <= pstore1_storegen_data[31:24];
	end
	s1_release_data_valid <= dataArb_io_in_2_ready & dataArb_io_in_2_valid;
	_T_2475 <= tlb_io_req_valid & _T_52;
	doUncachedResp <= io_cpu_replay_next;
end

always @(posedge gated_clock) begin
	if (reset) begin
		resetting <= 1'h0;
	end else begin
		if (resetting & flushDone) begin
			resetting <= 1'h0;
		end else begin
			resetting <= _T_2540 | resetting;
		end
	end
	_T_2540 <= reset;
	if (reset) begin
		flushCounter <= 8'hc0;
	end else begin
		flushCounter <= resetting ? flushCounterNext[7:0] : flushCounter[7:0];
	end
end

  assign _T_2621 = _T_2618 == 10'h0;
always @(posedge gated_clock) begin
	if (reset) begin
		_T_2618 <= 10'h0;
	end else begin
		if (_T_2364) begin
			if (_T_2621) begin
				if (tl_out__c_bits_opcode[0]) begin
					_T_2618 <= ~ _T_2366[11:2];
				end else begin
					_T_2618 <= 10'h0;
				end
			end else begin
				_T_2618 <= _T_2618 - 10'h1;
			end
		end
	end
end
// Passed
    `ifndef SYNTHESIS
  assign _T_195 = (!(s0_read | ((_T_135 | _T_164 | _T_116 | _T_134) & _T_164)) | res | reset) == 1'h0;
  assign _T_371 = (!(s1_valid_masked & _T_81) | ((s1_mask_xwr | (~ io_cpu_s1_data_mask)) == 4'hf) | reset) == 1'h0;
  assign _T_1014 = (pstore1_rmw | (_T_1009 == pstore1_valid) | reset) == 1'h0;
    `endif // SYNTHESIS
  always @(posedge gated_clock) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_195) begin
          $fwrite(32'h80000002,"Assertion failed\n    at DCache.scala:1008 assert(!needsRead(req) || res)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_195) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_371) begin
          $fwrite(32'h80000002,"Assertion failed\n    at DCache.scala:255 assert(!(s1_valid_masked && s1_req.cmd === M_PWR) || (s1_mask_xwr | ~io.cpu.s1_data.mask).andR)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_371) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_195) begin
          $fwrite(32'h80000002,"Assertion failed\n    at DCache.scala:1008 assert(!needsRead(req) || res)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_195) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1014) begin
          $fwrite(32'h80000002,"Assertion failed\n    at DCache.scala:411 assert(pstore1_rmw || pstore1_valid_not_rmw(io.cpu.s2_kill) === pstore1_valid)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1014) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_324 & _T_2230) begin
          $fwrite(32'h80000002,"Assertion failed: A GrantData was unexpected by the dcache.\n    at DCache.scala:552 assert(cached_grant_wait, \"A GrantData was unexpected by the dcache.\")\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_324 & _T_2230) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_329 & _T_2235) begin
          $fwrite(32'h80000002,"Assertion failed: An AccessAck was unexpected by the dcache.\n    at DCache.scala:562 assert(f, \"An AccessAck was unexpected by the dcache.\") // TODO must handle Ack coming back on same cycle!\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_329 & _T_2235) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_338 & _T_2242) begin
          $fwrite(32'h80000002,"Assertion failed: A ReleaseAck was unexpected by the dcache.\n    at DCache.scala:583 assert(release_ack_wait, \"A ReleaseAck was unexpected by the dcache.\") // TODO should handle Ack coming back on same cycle!\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_338 & _T_2242) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_2254) begin
          $fwrite(32'h80000002,"Assertion failed\n    at DCache.scala:591 assert(tl_out.e.fire() === (tl_out.d.fire() && d_first && grantIsCached))\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_2254) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (s2_want_victimize & _T_2393) begin
          $fwrite(32'h80000002,"Assertion failed\n    at DCache.scala:670 assert(s2_valid_flush_line || s2_flush_valid || io.cpu.s2_nack)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (s2_want_victimize & _T_2393) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (doUncachedResp & _T_2504) begin
          $fwrite(32'h80000002,"Assertion failed\n    at DCache.scala:782 assert(!s2_valid_hit)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (doUncachedResp & _T_2504) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end

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
  blockProbeAfterGrantCount = _RAND_1[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  lrscCount = _RAND_2[6:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  s1_probe = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  s2_probe = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  release_state = _RAND_5[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  release_ack_wait = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  release_ack_addr = _RAND_7[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  grantInProgress = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  s2_valid = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  probe_bits_param = _RAND_10[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  probe_bits_size = _RAND_11[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  probe_bits_source = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  probe_bits_address = _RAND_13[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  s2_probe_state_state = _RAND_14[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  _T_2372 = _RAND_15[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  s2_release_data_valid = _RAND_16[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  s1_req_cmd = _RAND_17[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  s2_req_cmd = _RAND_18[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  pstore1_held = _RAND_19[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  pstore1_addr = _RAND_20[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  s1_req_addr = _RAND_21[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  pstore1_mask = _RAND_22[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  s1_req_size = _RAND_23[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  pstore2_valid = _RAND_24[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  pstore2_addr = _RAND_25[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  mask = _RAND_26[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  _T_384 = _RAND_27[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  s2_hit_state_state = _RAND_28[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  s1_req_tag = _RAND_29[6:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{`RANDOM}};
  s1_req_signed = _RAND_30[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{`RANDOM}};
  s1_req_phys = _RAND_31[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{`RANDOM}};
  s1_flush_valid = _RAND_32[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{`RANDOM}};
  cached_grant_wait = _RAND_33[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{`RANDOM}};
  uncachedInFlight_0 = _RAND_34[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{`RANDOM}};
  uncachedReqs_0_addr = _RAND_35[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{`RANDOM}};
  uncachedReqs_0_tag = _RAND_36[6:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{`RANDOM}};
  uncachedReqs_0_size = _RAND_37[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{`RANDOM}};
  uncachedReqs_0_signed = _RAND_38[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {1{`RANDOM}};
  s1_did_read = _RAND_39[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{`RANDOM}};
  s2_hit_way = _RAND_40[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {1{`RANDOM}};
  _T_649 = _RAND_41[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {1{`RANDOM}};
  s2_probe_way = _RAND_42[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {1{`RANDOM}};
  s2_req_addr = _RAND_43[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {1{`RANDOM}};
  s2_req_tag = _RAND_44[6:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_45 = {1{`RANDOM}};
  s2_req_size = _RAND_45[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_46 = {1{`RANDOM}};
  s2_req_signed = _RAND_46[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_47 = {1{`RANDOM}};
  s2_tlb_resp_pf_ld = _RAND_47[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_48 = {1{`RANDOM}};
  s2_tlb_resp_pf_st = _RAND_48[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_49 = {1{`RANDOM}};
  s2_tlb_resp_ae_ld = _RAND_49[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_50 = {1{`RANDOM}};
  s2_tlb_resp_ae_st = _RAND_50[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_51 = {1{`RANDOM}};
  s2_tlb_resp_ma_ld = _RAND_51[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_52 = {1{`RANDOM}};
  s2_tlb_resp_ma_st = _RAND_52[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_53 = {1{`RANDOM}};
  s2_tlb_resp_cacheable = _RAND_53[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_54 = {1{`RANDOM}};
  s2_uncached_resp_addr = _RAND_54[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_55 = {1{`RANDOM}};
  _T_393 = _RAND_55[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_56 = {1{`RANDOM}};
  s2_flush_valid_pre_tag_ecc = _RAND_56[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_57 = {1{`RANDOM}};
  blockUncachedGrant = _RAND_57[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_58 = {1{`RANDOM}};
  _T_2190 = _RAND_58[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_59 = {1{`RANDOM}};
  s2_data = _RAND_59[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_60 = {1{`RANDOM}};
  _T_654 = _RAND_60[19:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_61 = {1{`RANDOM}};
  _T_656_state = _RAND_61[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_62 = {1{`RANDOM}};
  lrscAddr = _RAND_62[25:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_63 = {1{`RANDOM}};
  pstore1_cmd = _RAND_63[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_64 = {1{`RANDOM}};
  pstore1_data = _RAND_64[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_65 = {1{`RANDOM}};
  pstore1_way = _RAND_65[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_66 = {1{`RANDOM}};
  pstore1_rmw = _RAND_66[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_67 = {1{`RANDOM}};
  _T_995 = _RAND_67[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_68 = {1{`RANDOM}};
  pstore2_way = _RAND_68[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_69 = {1{`RANDOM}};
  _T_1051 = _RAND_69[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_70 = {1{`RANDOM}};
  _T_1056 = _RAND_70[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_71 = {1{`RANDOM}};
  _T_1061 = _RAND_71[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_72 = {1{`RANDOM}};
  _T_1066 = _RAND_72[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_73 = {1{`RANDOM}};
  s1_release_data_valid = _RAND_73[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_74 = {1{`RANDOM}};
  _T_2475 = _RAND_74[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_75 = {1{`RANDOM}};
  doUncachedResp = _RAND_75[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_76 = {1{`RANDOM}};
  resetting = _RAND_76[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_77 = {1{`RANDOM}};
  _T_2540 = _RAND_77[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_78 = {1{`RANDOM}};
  flushCounter = _RAND_78[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_79 = {1{`RANDOM}};
  _T_2618 = _RAND_79[9:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
// Passed
`endif // MY_ASSIGNMENT

`ifndef MY_ASSIGNMENT
  assign lrscValid = lrscCount > 7'h3; // @[DCache.scala 374:29:freechips.rocketchip.system.DefaultRV32Config.fir@124630.4]

  assign _T_2348 = blockProbeAfterGrantCount > 3'h0; // @[DCache.scala 641:65:freechips.rocketchip.system.DefaultRV32Config.fir@126497.4]
  assign block_probe_for_core_progress = _T_2348 | lrscValid; // @[DCache.scala 641:69:freechips.rocketchip.system.DefaultRV32Config.fir@126498.4]

  assign releaseInFlight = _T_381 | _T_382; // @[DCache.scala 260:46:freechips.rocketchip.system.DefaultRV32Config.fir@123968.4]

  assign block_probe_for_pending_release_ack = release_ack_wait & _T_2351; // @[DCache.scala 642:62:freechips.rocketchip.system.DefaultRV32Config.fir@126502.4]

  assign block_probe_for_ordering = _T_2352 | grantInProgress; // @[DCache.scala 643:89:freechips.rocketchip.system.DefaultRV32Config.fir@126504.4]

  assign tl_out__b_ready = metaArb_io_in_6_ready & _T_2359; // @[DCache.scala 645:44:freechips.rocketchip.system.DefaultRV32Config.fir@126513.4]

  assign s1_valid_masked = s1_valid & _T_51; // @[DCache.scala 150:34:freechips.rocketchip.system.DefaultRV32Config.fir@123457.4]

  assign _T_695 = _T_694 ? 1'h0 : _T_691; // @[Misc.scala 36:9:freechips.rocketchip.system.DefaultRV32Config.fir@124439.4]
  assign _T_711 = _T_710 ? 1'h0 : _T_707; // @[Misc.scala 36:9:freechips.rocketchip.system.DefaultRV32Config.fir@124455.4]
  assign s2_prb_ack_data = _T_714 | _T_711; // @[Misc.scala 36:9:freechips.rocketchip.system.DefaultRV32Config.fir@124459.4]

  assign _T_2414 = release_state == 3'h2; // @[DCache.scala 710:25:freechips.rocketchip.system.DefaultRV32Config.fir@126680.4]
  assign _T_2415 = release_state == 3'h1; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@126687.4]
  assign _T_2416 = release_state == 3'h6; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@126688.4]
  assign _T_2417 = _T_2415 | _T_2416; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@126689.4]
  assign tl_out__c_bits_opcode = _T_2417 ? 3'h7 : _GEN_282; // @[DCache.scala 714:81:freechips.rocketchip.system.DefaultRV32Config.fir@126690.4]

  assign tl_out__c_bits_size = _T_2417 ? 4'h6 : probe_bits_size; // @[DCache.scala 714:81:freechips.rocketchip.system.DefaultRV32Config.fir@126690.4]

  assign _T_2366 = 27'hfff << tl_out__c_bits_size; // @[package.scala 189:77:freechips.rocketchip.system.DefaultRV32Config.fir@126525.4]
  assign _T_2371 = _T_2370 ? _T_2369 : 10'h0; // @[Edges.scala 222:14:freechips.rocketchip.system.DefaultRV32Config.fir@126530.4]
  assign _T_2376 = _T_2371 == 10'h0; // @[Edges.scala 233:47:freechips.rocketchip.system.DefaultRV32Config.fir@126536.4]
  assign c_last = _T_2375 | _T_2376; // @[Edges.scala 233:37:freechips.rocketchip.system.DefaultRV32Config.fir@126537.4]

  assign _GEN_231 = s2_prb_ack_data ? s2_release_data_valid : 1'h1; // @[DCache.scala 679:36:freechips.rocketchip.system.DefaultRV32Config.fir@126630.8]
  assign _GEN_252 = s2_probe ? _GEN_231 : s2_release_data_valid; // @[DCache.scala 675:21:freechips.rocketchip.system.DefaultRV32Config.fir@126622.4]
  assign _T_2412 = release_state == 3'h5; // @[DCache.scala 701:25:freechips.rocketchip.system.DefaultRV32Config.fir@126665.4]
  assign _T_2413 = release_state == 3'h3; // @[DCache.scala 705:25:freechips.rocketchip.system.DefaultRV32Config.fir@126672.4]
  assign tl_out__c_valid = _T_2413 | _GEN_269; // @[DCache.scala 705:48:freechips.rocketchip.system.DefaultRV32Config.fir@126673.4]

  assign _T_2364 = auto_out_c_ready & tl_out__c_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@126523.4]
  assign releaseDone = c_last & _T_2364; // @[Edges.scala 234:22:freechips.rocketchip.system.DefaultRV32Config.fir@126538.4]

  assign _T_2404 = s2_probe_state_state > 2'h0; // @[Metadata.scala 50:45:freechips.rocketchip.system.DefaultRV32Config.fir@126634.10]
  assign probeNack = s2_prb_ack_data | _GEN_229; // @[DCache.scala 679:36:freechips.rocketchip.system.DefaultRV32Config.fir@126630.8]

  assign s1_read = _T_62 | _T_79; // @[Consts.scala 82:75:freechips.rocketchip.system.DefaultRV32Config.fir@123496.4]

  assign s2_write = _T_422 | _T_439; // @[Consts.scala 83:76:freechips.rocketchip.system.DefaultRV32Config.fir@124044.4]

  assign pstore1_valid_likely = _T_996 | pstore1_held; // @[DCache.scala 406:51:freechips.rocketchip.system.DefaultRV32Config.fir@124845.4]

  assign s1_write = _T_84 | _T_79; // @[Consts.scala 83:76:freechips.rocketchip.system.DefaultRV32Config.fir@123519.4]

  assign _T_350 = _T_346 | _T_348; // @[AMOALU.scala 17:46:freechips.rocketchip.system.DefaultRV32Config.fir@123924.4]
  assign _T_352 = _T_346 ? 1'h0 : 1'h1; // @[AMOALU.scala 18:22:freechips.rocketchip.system.DefaultRV32Config.fir@123926.4]
  assign _T_353 = {_T_350,_T_352}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@123927.4]
  assign _T_355 = _T_354 ? _T_353 : 2'h0; // @[AMOALU.scala 17:22:freechips.rocketchip.system.DefaultRV32Config.fir@123929.4]
  assign _T_357 = _T_356 ? 2'h3 : 2'h0; // @[AMOALU.scala 17:51:freechips.rocketchip.system.DefaultRV32Config.fir@123931.4]
  assign _T_358 = _T_355 | _T_357; // @[AMOALU.scala 17:46:freechips.rocketchip.system.DefaultRV32Config.fir@123932.4]
  assign _T_360 = _T_354 ? 2'h0 : _T_353; // @[AMOALU.scala 18:22:freechips.rocketchip.system.DefaultRV32Config.fir@123934.4]
  assign s1_mask_xwr = {_T_358,_T_360}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@123935.4]

  assign s1_hazard = _T_1156 | _T_1202; // @[DCache.scala 461:69:freechips.rocketchip.system.DefaultRV32Config.fir@125099.4]

  assign s1_raw_hazard = s1_read & s1_hazard; // @[DCache.scala 463:31:freechips.rocketchip.system.DefaultRV32Config.fir@125100.4]

  assign s2_valid_no_xcpt = s2_valid & _T_380; // @[DCache.scala 258:35:freechips.rocketchip.system.DefaultRV32Config.fir@123963.4]

  assign s2_valid_masked = s2_valid_no_xcpt & _T_384; // @[DCache.scala 261:42:freechips.rocketchip.system.DefaultRV32Config.fir@123972.4]

  assign _T_541 = s2_req_cmd == 5'h6; // @[Consts.scala 84:71:freechips.rocketchip.system.DefaultRV32Config.fir@124251.4]
  assign _T_542 = _T_540 | _T_541; // @[Consts.scala 84:64:freechips.rocketchip.system.DefaultRV32Config.fir@124252.4]
  assign s2_hit = _T_602 | _T_600; // @[Misc.scala 33:9:freechips.rocketchip.system.DefaultRV32Config.fir@124313.4]

  assign s2_valid_hit_maybe_flush_pre_data_ecc_and_waw = s2_valid_masked & s2_hit; // @[DCache.scala 319:89:freechips.rocketchip.system.DefaultRV32Config.fir@124340.4]

  assign _T_421 = s2_req_cmd == 5'h7; // @[Consts.scala 83:66:freechips.rocketchip.system.DefaultRV32Config.fir@124025.4]
  assign s2_read = _T_400 | _T_439; // @[Consts.scala 82:75:freechips.rocketchip.system.DefaultRV32Config.fir@124021.4]

  assign s2_readwrite = s2_read | s2_write; // @[DCache.scala 276:30:freechips.rocketchip.system.DefaultRV32Config.fir@124045.4]
  assign s2_valid_hit_pre_data_ecc_and_waw = s2_valid_hit_maybe_flush_pre_data_ecc_and_waw & s2_readwrite; // @[DCache.scala 320:89:freechips.rocketchip.system.DefaultRV32Config.fir@124341.4]

  assign s2_grow_param = _T_602 ? 2'h3 : _T_601; // @[Misc.scala 33:36:freechips.rocketchip.system.DefaultRV32Config.fir@124314.4]

  assign s2_update_meta = _T_781 == 1'h0; // @[Metadata.scala 47:40:freechips.rocketchip.system.DefaultRV32Config.fir@124536.4]

  assign s1_readwrite = s1_read | s1_write; // @[DCache.scala 161:30:freechips.rocketchip.system.DefaultRV32Config.fir@123520.4]

  assign s1_flush_line = _T_102 & _T_103; // @[DCache.scala 163:50:freechips.rocketchip.system.DefaultRV32Config.fir@123524.4]

  assign s1_cmd_uses_tlb = _T_256 | _T_257; // @[DCache.scala 207:55:freechips.rocketchip.system.DefaultRV32Config.fir@123735.4]

  assign _GEN_113 = _T_1203 | _GEN_93; // @[DCache.scala 468:36:freechips.rocketchip.system.DefaultRV32Config.fir@125103.4]
  assign s1_nack = s2_probe ? _GEN_250 : _GEN_113; // @[DCache.scala 675:21:freechips.rocketchip.system.DefaultRV32Config.fir@126622.4]

  assign s1_valid_not_nacked = s1_valid & _T_52; // @[DCache.scala 151:38:freechips.rocketchip.system.DefaultRV32Config.fir@123459.4]

  assign s0_clk_en = metaArb_io_out_valid & _T_53; // @[DCache.scala 153:40:freechips.rocketchip.system.DefaultRV32Config.fir@123462.4]

  assign s1_sfence = s1_req_cmd == 5'h14; // @[DCache.scala 162:30:freechips.rocketchip.system.DefaultRV32Config.fir@123521.4]
  assign can_acquire_before_release = release_ack_wait == 1'h0; // @[DCache.scala 175:36:freechips.rocketchip.system.DefaultRV32Config.fir@123534.4]
  assign inWriteback = _T_2415 | _T_2414; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@123541.4]

  assign s0_read = _T_117 | _T_134; // @[Consts.scala 82:75:freechips.rocketchip.system.DefaultRV32Config.fir@123580.4]

  assign res = _T_137 == 1'h0; // @[DCache.scala 1007:15:freechips.rocketchip.system.DefaultRV32Config.fir@123584.4]

  assign s1_victim_way = _T_47[1:0]; // @[package.scala 120:13:freechips.rocketchip.system.DefaultRV32Config.fir@123769.4]

  assign s1_meta_uncorrected_0_tag = _T_282[19:0]; // @[DCache.scala 241:80:freechips.rocketchip.system.DefaultRV32Config.fir@123815.4]

  assign s1_meta_uncorrected_0_coh_state = _T_282[21:20]; // @[DCache.scala 241:80:freechips.rocketchip.system.DefaultRV32Config.fir@123817.4]

  assign s1_meta_uncorrected_1_tag = _T_285[19:0]; // @[DCache.scala 241:80:freechips.rocketchip.system.DefaultRV32Config.fir@123824.4]

  assign s1_meta_uncorrected_1_coh_state = _T_285[21:20]; // @[DCache.scala 241:80:freechips.rocketchip.system.DefaultRV32Config.fir@123826.4]

  assign s1_meta_uncorrected_2_tag = _T_288[19:0]; // @[DCache.scala 241:80:freechips.rocketchip.system.DefaultRV32Config.fir@123833.4]
  assign s1_meta_uncorrected_2_coh_state = _T_288[21:20]; // @[DCache.scala 241:80:freechips.rocketchip.system.DefaultRV32Config.fir@123835.4]

  assign s1_meta_uncorrected_3_tag = _T_291[19:0]; // @[DCache.scala 241:80:freechips.rocketchip.system.DefaultRV32Config.fir@123842.4]
  assign s1_meta_uncorrected_3_coh_state = _T_291[21:20]; // @[DCache.scala 241:80:freechips.rocketchip.system.DefaultRV32Config.fir@123844.4]

  assign s1_tag = tlb_io_resp_paddr[31:12]; // @[DCache.scala 242:29:freechips.rocketchip.system.DefaultRV32Config.fir@123846.4]

  assign s1_meta_hit_way = {_T_305,_T_302,_T_299,_T_296}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@123861.4]

  assign _T_310 = s1_flush_valid == 1'h0; // @[DCache.scala 245:62:freechips.rocketchip.system.DefaultRV32Config.fir@123866.4]
  assign s1_meta_hit_state_state = _T_326 | _T_324; // @[DCache.scala 246:19:freechips.rocketchip.system.DefaultRV32Config.fir@123883.4]

  assign s2_hit_valid = s2_hit_state_state > 2'h0; // @[Metadata.scala 50:45:freechips.rocketchip.system.DefaultRV32Config.fir@124202.4]

  assign s2_victim_way = s2_hit_valid ? s2_hit_way : _T_650; // @[DCache.scala 333:26:freechips.rocketchip.system.DefaultRV32Config.fir@124386.4]

  assign releaseWay = _T_2417 ? s2_victim_way : s2_probe_way; // @[DCache.scala 714:81:freechips.rocketchip.system.DefaultRV32Config.fir@126690.4]

  assign s2_cmd_flush_line = _T_386 & _T_387; // @[DCache.scala 265:54:freechips.rocketchip.system.DefaultRV32Config.fir@123982.4]

  assign s2_vaddr = {_T_394,_T_395}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@123998.4]

  assign en = _T_471 | io_cpu_replay_next; // @[DCache.scala 288:38:freechips.rocketchip.system.DefaultRV32Config.fir@124146.4]

  assign word_en = inWriteback | _T_473; // @[DCache.scala 289:22:freechips.rocketchip.system.DefaultRV32Config.fir@124149.4]

  assign s1_all_data_ways_0 = data_io_resp_0; // @[DCache.scala 251:29:freechips.rocketchip.system.DefaultRV32Config.fir@123912.4 DCache.scala 251:29:freechips.rocketchip.system.DefaultRV32Config.fir@123914.4]
  assign s1_all_data_ways_1 = data_io_resp_1; // @[DCache.scala 251:29:freechips.rocketchip.system.DefaultRV32Config.fir@123912.4 DCache.scala 251:29:freechips.rocketchip.system.DefaultRV32Config.fir@123915.4]
  assign s1_all_data_ways_2 = data_io_resp_2; // @[DCache.scala 251:29:freechips.rocketchip.system.DefaultRV32Config.fir@123912.4 DCache.scala 251:29:freechips.rocketchip.system.DefaultRV32Config.fir@123916.4]
  assign s1_all_data_ways_3 = data_io_resp_3; // @[DCache.scala 251:29:freechips.rocketchip.system.DefaultRV32Config.fir@123912.4 DCache.scala 251:29:freechips.rocketchip.system.DefaultRV32Config.fir@123917.4]

  assign s1_word_en = _T_474 ? word_en : 1'h1; // @[DCache.scala 299:27:freechips.rocketchip.system.DefaultRV32Config.fir@124156.4]

  assign grantIsUncachedData = auto_out_d_bits_opcode == 3'h1; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@126253.4]

  assign grantIsRefill = auto_out_d_bits_opcode == 3'h5; // @[DCache.scala 541:29:freechips.rocketchip.system.DefaultRV32Config.fir@126268.4]

  assign grantIsCached = _T_2211 | grantIsRefill; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@126266.4]

  assign d_first = _T_2190 == 10'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@126236.4]

  assign canAcceptCachedGrant = _T_2417 == 1'h0; // @[DCache.scala 545:30:freechips.rocketchip.system.DefaultRV32Config.fir@126280.4]

  assign _T_2258 = grantIsRefill & _T_2257; // @[DCache.scala 597:23:freechips.rocketchip.system.DefaultRV32Config.fir@126375.4]
  assign _GEN_200 = _T_2258 ? 1'h0 : _T_2222; // @[DCache.scala 597:51:freechips.rocketchip.system.DefaultRV32Config.fir@126376.4]
  assign _T_2344 = grantIsUncachedData & _T_2343; // @[DCache.scala 627:31:freechips.rocketchip.system.DefaultRV32Config.fir@126484.4]
  assign tl_out__d_ready = _T_2344 ? 1'h0 : _GEN_200; // @[DCache.scala 627:68:freechips.rocketchip.system.DefaultRV32Config.fir@126485.4]

  assign grantIsUncached = _T_2201 | _T_2200; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@126252.4]

  assign _T_337 = inWriteback ? releaseWay : s1_meta_hit_way; // @[DCache.scala 249:61:freechips.rocketchip.system.DefaultRV32Config.fir@123899.4]
  assign _T_2227 = tl_out__d_ready & auto_out_d_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@126292.4]
  assign s1_data_way = _T_2227 ? _GEN_178 : {{1'd0}, _T_337}; // @[DCache.scala 549:26:freechips.rocketchip.system.DefaultRV32Config.fir@126293.4]

  assign s2_data_corrected = {_T_606,_T_605,_T_604,_T_603}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@124334.4]

  assign s2_valid_flush_line = _T_621 & can_acquire_before_release; // @[DCache.scala 321:96:freechips.rocketchip.system.DefaultRV32Config.fir@124343.4]

  assign s2_valid_miss = _T_630 & can_acquire_before_release; // @[DCache.scala 325:84:freechips.rocketchip.system.DefaultRV32Config.fir@124356.4]
  assign s2_uncached = s2_tlb_resp_cacheable == 1'h0; // @[DCache.scala 326:21:freechips.rocketchip.system.DefaultRV32Config.fir@124357.4]

  assign _T_636 = s2_uncached == 1'h0; // @[DCache.scala 327:47:freechips.rocketchip.system.DefaultRV32Config.fir@124363.4]
  assign _T_639 = uncachedInFlight_0 == 1'h0; // @[DCache.scala 327:63:freechips.rocketchip.system.DefaultRV32Config.fir@124366.4]
  assign s2_valid_cached_miss = _T_637 & _T_639; // @[DCache.scala 327:60:freechips.rocketchip.system.DefaultRV32Config.fir@124367.4]

  assign s2_want_victimize = _T_640 | s2_flush_valid_pre_tag_ecc; // @[DCache.scala 329:125:freechips.rocketchip.system.DefaultRV32Config.fir@124370.4]

  assign s2_valid_uncached_pending = _T_645 & _T_639; // @[DCache.scala 332:64:freechips.rocketchip.system.DefaultRV32Config.fir@124379.4]

  assign s2_victim_tag = s2_valid_flush_line ? _T_652 : _T_654; // @[DCache.scala 334:26:freechips.rocketchip.system.DefaultRV32Config.fir@124394.4]

  assign s2_victim_state_state = s2_hit_valid ? s2_hit_state_state : _T_656_state; // @[DCache.scala 335:28:freechips.rocketchip.system.DefaultRV32Config.fir@124400.4]

  assign _T_714 = 4'h3 == _T_657; // @[Misc.scala 54:20:freechips.rocketchip.system.DefaultRV32Config.fir@124458.4]
  assign _T_710 = 4'h2 == _T_657; // @[Misc.scala 54:20:freechips.rocketchip.system.DefaultRV32Config.fir@124454.4]
  assign _T_706 = 4'h1 == _T_657; // @[Misc.scala 54:20:freechips.rocketchip.system.DefaultRV32Config.fir@124450.4]
  assign _T_702 = 4'h0 == _T_657; // @[Misc.scala 54:20:freechips.rocketchip.system.DefaultRV32Config.fir@124446.4]
  assign _T_698 = 4'h7 == _T_657; // @[Misc.scala 54:20:freechips.rocketchip.system.DefaultRV32Config.fir@124442.4]
  assign _T_694 = 4'h6 == _T_657; // @[Misc.scala 54:20:freechips.rocketchip.system.DefaultRV32Config.fir@124438.4]
  assign _T_690 = 4'h5 == _T_657; // @[Misc.scala 54:20:freechips.rocketchip.system.DefaultRV32Config.fir@124434.4]
  assign _T_686 = 4'h4 == _T_657; // @[Misc.scala 54:20:freechips.rocketchip.system.DefaultRV32Config.fir@124430.4]
  assign _T_682 = 4'hb == _T_657; // @[Misc.scala 54:20:freechips.rocketchip.system.DefaultRV32Config.fir@124426.4]
  assign s2_report_param = _T_714 ? 3'h3 : _T_712; // @[Misc.scala 36:36:freechips.rocketchip.system.DefaultRV32Config.fir@124460.4]

  assign probeNewCoh_state = _T_714 ? 2'h2 : _T_713; // @[Misc.scala 36:63:freechips.rocketchip.system.DefaultRV32Config.fir@124461.4]

  assign _T_722 = {2'h2,s2_victim_state_state}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@124471.4]
  assign _T_775 = 4'h2 == _T_722; // @[Misc.scala 54:20:freechips.rocketchip.system.DefaultRV32Config.fir@124524.4]
  assign _T_771 = 4'h1 == _T_722; // @[Misc.scala 54:20:freechips.rocketchip.system.DefaultRV32Config.fir@124520.4]
  assign _T_767 = 4'h0 == _T_722; // @[Misc.scala 54:20:freechips.rocketchip.system.DefaultRV32Config.fir@124516.4]
  assign _T_763 = 4'h7 == _T_722; // @[Misc.scala 54:20:freechips.rocketchip.system.DefaultRV32Config.fir@124512.4]
  assign _T_759 = 4'h6 == _T_722; // @[Misc.scala 54:20:freechips.rocketchip.system.DefaultRV32Config.fir@124508.4]
  assign _T_755 = 4'h5 == _T_722; // @[Misc.scala 54:20:freechips.rocketchip.system.DefaultRV32Config.fir@124504.4]
  assign _T_751 = 4'h4 == _T_722; // @[Misc.scala 54:20:freechips.rocketchip.system.DefaultRV32Config.fir@124500.4]
  assign _T_747 = 4'hb == _T_722; // @[Misc.scala 54:20:freechips.rocketchip.system.DefaultRV32Config.fir@124496.4]
  assign s2_victim_dirty = _T_779 | _T_776; // @[Misc.scala 36:9:freechips.rocketchip.system.DefaultRV32Config.fir@124529.4]

  assign _T_779 = 4'h3 == _T_722; // @[Misc.scala 54:20:freechips.rocketchip.system.DefaultRV32Config.fir@124528.4]
  assign s2_shrink_param = _T_779 ? 3'h3 : _T_777; // @[Misc.scala 36:36:freechips.rocketchip.system.DefaultRV32Config.fir@124530.4]

  assign voluntaryNewCoh_state = _T_779 ? 2'h2 : _T_778; // @[Misc.scala 36:63:freechips.rocketchip.system.DefaultRV32Config.fir@124531.4]

  assign s2_dont_nack_uncached = s2_valid_uncached_pending & auto_out_a_ready; // @[DCache.scala 341:57:freechips.rocketchip.system.DefaultRV32Config.fir@124537.4]

  assign s2_dont_nack_misc = s2_valid_masked & _T_792; // @[DCache.scala 342:61:freechips.rocketchip.system.DefaultRV32Config.fir@124550.4]

  assign _T_842 = lrscCount > 7'h0; // @[DCache.scala 375:34:freechips.rocketchip.system.DefaultRV32Config.fir@124631.4]
  assign lrscBackingOff = _T_842 & _T_843; // @[DCache.scala 375:38:freechips.rocketchip.system.DefaultRV32Config.fir@124633.4]

  assign lrscAddrMatch = lrscAddr == _T_844; // @[DCache.scala 377:32:freechips.rocketchip.system.DefaultRV32Config.fir@124636.4]

  assign s2_sc_fail = _T_421 & _T_846; // @[DCache.scala 378:26:freechips.rocketchip.system.DefaultRV32Config.fir@124639.4]

  assign pstore_drain_opportunistic = _T_196 == 1'h0; // @[DCache.scala 403:36:freechips.rocketchip.system.DefaultRV32Config.fir@124836.4]

  assign pstore_drain_on_miss = releaseInFlight | _T_995; // @[DCache.scala 404:46:freechips.rocketchip.system.DefaultRV32Config.fir@124842.4]

  assign _T_925 = s2_valid_hit_pre_data_ecc_and_waw & s2_write; // @[DCache.scala 391:46:freechips.rocketchip.system.DefaultRV32Config.fir@124762.4]
  assign pstore1_valid = _T_927 | pstore1_held; // @[DCache.scala 408:38:freechips.rocketchip.system.DefaultRV32Config.fir@124851.4]

  assign pstore_drain_structural = _T_1003 & _T_1005; // @[DCache.scala 410:71:freechips.rocketchip.system.DefaultRV32Config.fir@124857.4]

  assign _T_1009 = _T_925 | pstore1_held; // @[DCache.scala 407:96:freechips.rocketchip.system.DefaultRV32Config.fir@124861.4]
  assign _T_1027 = _T_1025 & _T_1026; // @[DCache.scala 419:76:freechips.rocketchip.system.DefaultRV32Config.fir@124884.4]
  assign pstore_drain = pstore_drain_structural | _T_1027; // @[DCache.scala 418:48:freechips.rocketchip.system.DefaultRV32Config.fir@124885.4]

  assign advance_pstore1 = pstore1_valid & _T_1041; // @[DCache.scala 423:61:freechips.rocketchip.system.DefaultRV32Config.fir@124901.4]

  assign pstore1_storegen_data = amoalu_io_out; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@124700.4 :freechips.rocketchip.system.DefaultRV32Config.fir@124702.4 DCache.scala 816:27:freechips.rocketchip.system.DefaultRV32Config.fir@126911.4]

  assign pstore2_storegen_data = {_T_1066,_T_1061,_T_1056,_T_1051}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@124950.4]

  assign a_source = _T_1211 ? 1'h0 : 1'h1; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@125117.4]

  assign acquire_address = {_T_844, 6'h0}; // @[DCache.scala 475:49:freechips.rocketchip.system.DefaultRV32Config.fir@125119.4]

  assign a_mask = {{15'd0}, pstore1_mask}; // @[DCache.scala 479:29:freechips.rocketchip.system.DefaultRV32Config.fir@125121.4]

  assign _T_1271 = _T_1269 | 2'h1; // @[Misc.scala 200:81:freechips.rocketchip.system.DefaultRV32Config.fir@125185.4]
  assign _T_1272 = s2_req_size >= 2'h2; // @[Misc.scala 204:21:freechips.rocketchip.system.DefaultRV32Config.fir@125186.4]
  assign _T_1281 = _T_1272 | _T_1280; // @[Misc.scala 213:29:freechips.rocketchip.system.DefaultRV32Config.fir@125195.4]
  assign _T_1296 = _T_1281 | _T_1295; // @[Misc.scala 213:29:freechips.rocketchip.system.DefaultRV32Config.fir@125210.4]
  assign _T_1293 = _T_1281 | _T_1292; // @[Misc.scala 213:29:freechips.rocketchip.system.DefaultRV32Config.fir@125207.4]
  assign _T_1278 = _T_1272 | _T_1277; // @[Misc.scala 213:29:freechips.rocketchip.system.DefaultRV32Config.fir@125192.4]
  assign _T_1290 = _T_1278 | _T_1289; // @[Misc.scala 213:29:freechips.rocketchip.system.DefaultRV32Config.fir@125204.4]
  assign _T_1287 = _T_1278 | _T_1286; // @[Misc.scala 213:29:freechips.rocketchip.system.DefaultRV32Config.fir@125201.4]
  assign get_mask = {_T_1296,_T_1293,_T_1290,_T_1287}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@125213.4]

  assign _T_2091 = 5'hf == s2_req_cmd; // @[Mux.scala 68:19:freechips.rocketchip.system.DefaultRV32Config.fir@126110.4]
  assign _T_2093 = 5'he == s2_req_cmd; // @[Mux.scala 68:19:freechips.rocketchip.system.DefaultRV32Config.fir@126112.4]
  assign _T_2095 = 5'hd == s2_req_cmd; // @[Mux.scala 68:19:freechips.rocketchip.system.DefaultRV32Config.fir@126114.4]
  assign _T_2097 = 5'hc == s2_req_cmd; // @[Mux.scala 68:19:freechips.rocketchip.system.DefaultRV32Config.fir@126116.4]
  assign _T_2099 = 5'h8 == s2_req_cmd; // @[Mux.scala 68:19:freechips.rocketchip.system.DefaultRV32Config.fir@126118.4]
  assign _T_2101 = 5'hb == s2_req_cmd; // @[Mux.scala 68:19:freechips.rocketchip.system.DefaultRV32Config.fir@126120.4]
  assign _T_2103 = 5'ha == s2_req_cmd; // @[Mux.scala 68:19:freechips.rocketchip.system.DefaultRV32Config.fir@126122.4]
  assign _T_2105 = 5'h9 == s2_req_cmd; // @[Mux.scala 68:19:freechips.rocketchip.system.DefaultRV32Config.fir@126124.4]
  assign _T_2107 = 5'h4 == s2_req_cmd; // @[Mux.scala 68:19:freechips.rocketchip.system.DefaultRV32Config.fir@126126.4]
  assign atomics_opcode = _T_2107 ? 3'h3 : _T_2106_opcode; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126127.4]

  assign atomics_param = _T_2107 ? 3'h3 : _T_2106_param; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126127.4]

  assign atomics_size = _T_2107 ? _T_2057_size : _T_2106_size; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126127.4]

  assign atomics_source = _T_2107 ? a_source : _T_2106_source; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126127.4]

  assign atomics_address = _T_2107 ? s2_req_addr : _T_2106_address; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126127.4]

  assign atomics_mask = _T_2107 ? get_mask : _T_2106_mask; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126127.4]

  assign atomics_data = _T_2107 ? pstore1_data : _T_2106_data; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126127.4]

  assign _T_2111 = s2_valid_cached_miss & _T_2109; // @[DCache.scala 500:63:freechips.rocketchip.system.DefaultRV32Config.fir@126131.4]
  assign tl_out_a_valid = _T_2111 | s2_valid_uncached_pending; // @[DCache.scala 500:128:freechips.rocketchip.system.DefaultRV32Config.fir@126132.4]

  assign putpartial_mask = a_mask[3:0]; // @[Edges.scala 476:17:freechips.rocketchip.system.DefaultRV32Config.fir@125378.4 Edges.scala 482:15:freechips.rocketchip.system.DefaultRV32Config.fir@125385.4]

  assign _T_2178 = 2'h1 << a_source; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@126209.4]
  assign a_sel = _T_2178[1:1]; // @[DCache.scala 507:66:freechips.rocketchip.system.DefaultRV32Config.fir@126211.4]

  assign _T_2184 = 27'hfff << auto_out_d_bits_size; // @[package.scala 189:77:freechips.rocketchip.system.DefaultRV32Config.fir@126227.4]
  assign _T_2189 = _T_2188 ? _T_2187 : 10'h0; // @[Edges.scala 222:14:freechips.rocketchip.system.DefaultRV32Config.fir@126232.4]
  assign d_last = _T_2193 | _T_2194; // @[Edges.scala 233:37:freechips.rocketchip.system.DefaultRV32Config.fir@126239.4]

  assign d_done = d_last & _T_2227; // @[Edges.scala 234:22:freechips.rocketchip.system.DefaultRV32Config.fir@126240.4]

  assign _T_2192 = _T_2190 - 10'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@126235.4]
  assign _T_2196 = _T_2189 & _T_2195; // @[Edges.scala 235:25:freechips.rocketchip.system.DefaultRV32Config.fir@126242.4]
  assign d_address_inc = {_T_2196, 2'h0}; // @[Edges.scala 270:29:freechips.rocketchip.system.DefaultRV32Config.fir@126247.4]

  assign grantIsVoluntary = auto_out_d_bits_opcode == 3'h6; // @[DCache.scala 540:32:freechips.rocketchip.system.DefaultRV32Config.fir@126267.4]

  assign _T_2224 = 2'h1 << auto_out_d_bits_source; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@126287.4]
  assign uncachedRespIdxOH = _T_2224[1:1]; // @[DCache.scala 547:90:freechips.rocketchip.system.DefaultRV32Config.fir@126289.4]

  assign dontCareBits = {_T_2237, 2'h0}; // @[DCache.scala 576:55:freechips.rocketchip.system.DefaultRV32Config.fir@126332.12]

  assign _T_2245 = _T_2244 & canAcceptCachedGrant; // @[DCache.scala 589:64:freechips.rocketchip.system.DefaultRV32Config.fir@126353.4]
  assign tl_out__e_valid = _T_2258 ? 1'h0 : _T_2245; // @[DCache.scala 597:51:freechips.rocketchip.system.DefaultRV32Config.fir@126376.4]

  assign c_first = _T_2372 == 10'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@126534.4]

  assign _T_2374 = _T_2372 - 10'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@126533.4]
  assign c_count = _T_2371 & _T_2377; // @[Edges.scala 235:25:freechips.rocketchip.system.DefaultRV32Config.fir@126540.4]

  assign releaseRejected = tl_out__c_valid & _T_2379; // @[DCache.scala 654:40:freechips.rocketchip.system.DefaultRV32Config.fir@126546.4]

  assign _T_2387 = releaseRejected ? 2'h0 : _T_2386; // @[DCache.scala 657:52:freechips.rocketchip.system.DefaultRV32Config.fir@126558.4]
  assign releaseDataBeat = _T_2383 + _GEN_318; // @[DCache.scala 657:47:freechips.rocketchip.system.DefaultRV32Config.fir@126560.4]

  assign discard_line = s2_valid_flush_line & _T_2394; // @[DCache.scala 671:46:freechips.rocketchip.system.DefaultRV32Config.fir@126605.6]

  assign res_2_address = {_T_2402, 6'h0}; // @[DCache.scala 673:96:freechips.rocketchip.system.DefaultRV32Config.fir@126615.6]

  assign newCoh_state = _T_2417 ? voluntaryNewCoh_state : probeNewCoh_state; // @[DCache.scala 714:81:freechips.rocketchip.system.DefaultRV32Config.fir@126690.4]

  assign flushCounterNext = flushCounter + 8'h1; // @[DCache.scala 839:39:freechips.rocketchip.system.DefaultRV32Config.fir@126920.4]

  assign flushDone = _T_2541 == 3'h4; // @[DCache.scala 840:57:freechips.rocketchip.system.DefaultRV32Config.fir@126922.4]

  assign auto_out_a_valid = _T_2111 | s2_valid_uncached_pending; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@123312.4]

  assign _T_2172 = s2_read == 1'h0; // @[DCache.scala 504:9:freechips.rocketchip.system.DefaultRV32Config.fir@126202.4]
  assign _T_419 = s2_req_cmd == 5'h11; // @[Consts.scala 83:49:freechips.rocketchip.system.DefaultRV32Config.fir@124023.4]
  assign _T_2170 = s2_write == 1'h0; // @[DCache.scala 502:9:freechips.rocketchip.system.DefaultRV32Config.fir@126200.4]
  assign auto_out_a_bits_opcode = _T_636 ? 3'h6 : _T_2175_opcode; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@123312.4]

  assign auto_out_a_bits_param = _T_636 ? _T_2136_param : _T_2175_param; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@123312.4]

  assign auto_out_a_bits_size = _T_636 ? 4'h6 : _T_2175_size; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@123312.4]

  assign auto_out_a_bits_source = _T_636 ? 1'h0 : _T_2175_source; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@123312.4]

  assign auto_out_a_bits_address = _T_636 ? acquire_address : _T_2175_address; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@123312.4]

  assign auto_out_a_bits_mask = _T_636 ? 4'hf : _T_2175_mask; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@123312.4]

  assign auto_out_a_bits_data = _T_636 ? 32'h0 : _T_2175_data; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@123312.4]

  assign _T_2359 = _T_2358 == 1'h0; // @[DCache.scala 645:47:freechips.rocketchip.system.DefaultRV32Config.fir@126512.4]
  assign auto_out_b_ready = metaArb_io_in_6_ready & _T_2359; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@123312.4]

  assign auto_out_c_valid = _T_2413 | _GEN_269; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@123312.4]

  assign auto_out_c_bits_opcode = _T_2417 ? 3'h7 : _GEN_282; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@123312.4]
  assign auto_out_c_bits_param = _T_2417 ? s2_shrink_param : _GEN_283; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@123312.4]
  assign auto_out_c_bits_size = _T_2417 ? 4'h6 : probe_bits_size; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@123312.4]
  assign auto_out_c_bits_source = probe_bits_source; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@123312.4]
  assign auto_out_c_bits_address = probe_bits_address; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@123312.4]
  assign auto_out_c_bits_data = {_T_616,_T_615}; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@123312.4]
  assign auto_out_d_ready = _T_2344 ? 1'h0 : _GEN_200; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@123312.4]
  assign auto_out_e_valid = _T_2258 ? 1'h0 : _T_2245; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@123312.4]
  assign auto_out_e_bits_sink = auto_out_d_bits_sink; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@123312.4]

  assign _T_52 = s1_nack == 1'h0; // @[DCache.scala 151:41:freechips.rocketchip.system.DefaultRV32Config.fir@123458.4]
  assign _GEN_22 = _T_265 ? 1'h0 : _GEN_21; // @[DCache.scala 215:79:freechips.rocketchip.system.DefaultRV32Config.fir@123751.4]
  assign io_cpu_req_ready = _T_2344 ? _GEN_201 : _GEN_22; // @[DCache.scala 180:20:freechips.rocketchip.system.DefaultRV32Config.fir@123549.4 DCache.scala 195:64:freechips.rocketchip.system.DefaultRV32Config.fir@123659.6 DCache.scala 203:53:freechips.rocketchip.system.DefaultRV32Config.fir@123727.6 DCache.scala 215:98:freechips.rocketchip.system.DefaultRV32Config.fir@123752.6 DCache.scala 631:26:freechips.rocketchip.system.DefaultRV32Config.fir@126488.8]

  assign io_cpu_s2_nack = _T_797 & _T_798; // @[DCache.scala 346:18:freechips.rocketchip.system.DefaultRV32Config.fir@124557.4]

  assign io_cpu_resp_valid = s2_valid_hit_pre_data_ecc_and_waw | doUncachedResp; // @[DCache.scala 779:21:freechips.rocketchip.system.DefaultRV32Config.fir@126845.4]
  assign io_cpu_resp_bits_addr = doUncachedResp ? s2_uncached_resp_addr : s2_req_addr; // @[DCache.scala 750:20:freechips.rocketchip.system.DefaultRV32Config.fir@126775.4 DCache.scala 784:27:freechips.rocketchip.system.DefaultRV32Config.fir@126860.6]
  assign io_cpu_resp_bits_tag = s2_req_tag; // @[DCache.scala 750:20:freechips.rocketchip.system.DefaultRV32Config.fir@126775.4]
  assign io_cpu_resp_bits_cmd = s2_req_cmd; // @[DCache.scala 750:20:freechips.rocketchip.system.DefaultRV32Config.fir@126775.4]
  assign io_cpu_resp_bits_size = s2_req_size; // @[DCache.scala 750:20:freechips.rocketchip.system.DefaultRV32Config.fir@126775.4]
  assign io_cpu_resp_bits_signed = s2_req_signed; // @[DCache.scala 750:20:freechips.rocketchip.system.DefaultRV32Config.fir@126775.4]

  assign _T_2511 = _T_1274 ? _T_2509 : _T_2510; // @[AMOALU.scala 39:24:freechips.rocketchip.system.DefaultRV32Config.fir@126871.4]
  assign _T_2521 = _T_2514 ? _T_2519 : _T_2509; // @[AMOALU.scala 42:20:freechips.rocketchip.system.DefaultRV32Config.fir@126881.4]
  assign _T_2522 = {_T_2521,_T_2511}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@126882.4]
  assign _T_2528 = _T_421 ? 8'h0 : _T_2526; // @[AMOALU.scala 41:23:freechips.rocketchip.system.DefaultRV32Config.fir@126888.4]
  assign _T_2536 = _T_2530 ? _T_2534 : _T_2535; // @[AMOALU.scala 42:20:freechips.rocketchip.system.DefaultRV32Config.fir@126896.4]
  assign io_cpu_resp_bits_data = _T_2537 | _GEN_321; // @[DCache.scala 750:20:freechips.rocketchip.system.DefaultRV32Config.fir@126775.4 DCache.scala 803:25:freechips.rocketchip.system.DefaultRV32Config.fir@126899.4]
  assign io_cpu_resp_bits_mask = 4'h0; // @[DCache.scala 750:20:freechips.rocketchip.system.DefaultRV32Config.fir@126775.4]
  assign io_cpu_resp_bits_replay = doUncachedResp; // @[DCache.scala 752:27:freechips.rocketchip.system.DefaultRV32Config.fir@126777.4 DCache.scala 783:29:freechips.rocketchip.system.DefaultRV32Config.fir@126859.6]

  assign io_cpu_resp_bits_has_data = _T_400 | _T_439; // @[DCache.scala 751:29:freechips.rocketchip.system.DefaultRV32Config.fir@126776.4]
  assign io_cpu_resp_bits_data_word_bypass = {_T_616,_T_615}; // @[DCache.scala 804:37:freechips.rocketchip.system.DefaultRV32Config.fir@126900.4]
  assign io_cpu_resp_bits_data_raw = {_T_616,_T_615}; // @[DCache.scala 805:29:freechips.rocketchip.system.DefaultRV32Config.fir@126901.4]
  assign io_cpu_resp_bits_store_data = pstore1_data; // @[DCache.scala 806:31:freechips.rocketchip.system.DefaultRV32Config.fir@126902.4]
  assign io_cpu_replay_next = _T_2227 & grantIsUncachedData; // @[DCache.scala 780:22:freechips.rocketchip.system.DefaultRV32Config.fir@126849.4]
  assign io_cpu_s2_xcpt_ma_ld = _T_2475 & s2_tlb_resp_ma_ld; // @[DCache.scala 763:18:freechips.rocketchip.system.DefaultRV32Config.fir@126832.4]
  assign io_cpu_s2_xcpt_ma_st = _T_2475 & s2_tlb_resp_ma_st; // @[DCache.scala 763:18:freechips.rocketchip.system.DefaultRV32Config.fir@126832.4]
  assign io_cpu_s2_xcpt_pf_ld = _T_2475 & s2_tlb_resp_pf_ld; // @[DCache.scala 763:18:freechips.rocketchip.system.DefaultRV32Config.fir@126832.4]
  assign io_cpu_s2_xcpt_pf_st = _T_2475 & s2_tlb_resp_pf_st; // @[DCache.scala 763:18:freechips.rocketchip.system.DefaultRV32Config.fir@126832.4]
  assign io_cpu_s2_xcpt_ae_ld = _T_2475 & s2_tlb_resp_ae_ld; // @[DCache.scala 763:18:freechips.rocketchip.system.DefaultRV32Config.fir@126832.4]
  assign io_cpu_s2_xcpt_ae_st = _T_2475 & s2_tlb_resp_ae_st; // @[DCache.scala 763:18:freechips.rocketchip.system.DefaultRV32Config.fir@126832.4]
  assign io_cpu_ordered = _T_2470 == 1'h0; // @[DCache.scala 760:18:freechips.rocketchip.system.DefaultRV32Config.fir@126791.4]
  assign io_cpu_perf_release = _T_2624 & _T_2364; // @[DCache.scala 905:23:freechips.rocketchip.system.DefaultRV32Config.fir@127042.4]
  assign io_cpu_perf_grant = d_last & _T_2227; // @[DCache.scala 906:21:freechips.rocketchip.system.DefaultRV32Config.fir@127043.4]
  assign io_ptw_req_valid = tlb_io_ptw_req_valid; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign io_ptw_req_bits_bits_addr = tlb_io_ptw_req_bits_bits_addr; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]

  assign MaxPeriodFibonacciLFSR_clock = gated_clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123319.4]
  assign MaxPeriodFibonacciLFSR_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123320.4]
  assign MaxPeriodFibonacciLFSR_io_increment = _T_2227 & _GEN_176; // @[PRNG.scala 85:23:freechips.rocketchip.system.DefaultRV32Config.fir@123338.4]

  assign metaArb_io_in_0_valid = resetting; // @[DCache.scala 876:26:freechips.rocketchip.system.DefaultRV32Config.fir@126950.4]
  assign metaArb_io_in_0_bits_addr = metaArb_io_in_5_bits_addr; // @[DCache.scala 877:25:freechips.rocketchip.system.DefaultRV32Config.fir@126951.4]
  assign metaArb_io_in_0_bits_idx = metaArb_io_in_5_bits_idx; // @[DCache.scala 877:25:freechips.rocketchip.system.DefaultRV32Config.fir@126951.4]
  assign metaArb_io_in_0_bits_data = {2'h0,_T_837}; // @[DCache.scala 877:25:freechips.rocketchip.system.DefaultRV32Config.fir@126951.4 DCache.scala 880:30:freechips.rocketchip.system.DefaultRV32Config.fir@126964.4]
  assign metaArb_io_in_2_valid = s2_valid_hit_pre_data_ecc_and_waw & s2_update_meta; // @[DCache.scala 363:26:freechips.rocketchip.system.DefaultRV32Config.fir@124606.4]
  assign metaArb_io_in_2_bits_addr = {_T_824,_T_835}; // @[DCache.scala 367:30:freechips.rocketchip.system.DefaultRV32Config.fir@124617.4]
  assign metaArb_io_in_2_bits_idx = s2_vaddr[11:6]; // @[DCache.scala 366:29:freechips.rocketchip.system.DefaultRV32Config.fir@124613.4]

  assign _T_650 = 4'h1 << _T_649; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@124385.4]
  assign metaArb_io_in_2_bits_way_en = s2_hit_valid ? s2_hit_way : _T_650; // @[DCache.scala 365:32:freechips.rocketchip.system.DefaultRV32Config.fir@124611.4]

  assign metaArb_io_in_2_bits_data = {s2_grow_param,_T_837}; // @[DCache.scala 368:30:freechips.rocketchip.system.DefaultRV32Config.fir@124624.4]

  assign metaArb_io_in_3_valid = _T_2264 & _T_2265; // @[DCache.scala 616:26:freechips.rocketchip.system.DefaultRV32Config.fir@126394.4]
  assign metaArb_io_in_3_bits_addr = {_T_824,_T_835}; // @[DCache.scala 620:30:freechips.rocketchip.system.DefaultRV32Config.fir@126402.4]
  assign metaArb_io_in_3_bits_idx = s2_vaddr[11:6]; // @[DCache.scala 619:29:freechips.rocketchip.system.DefaultRV32Config.fir@126398.4]
  assign metaArb_io_in_3_bits_way_en = s2_hit_valid ? s2_hit_way : _T_650; // @[DCache.scala 618:32:freechips.rocketchip.system.DefaultRV32Config.fir@126396.4]

  assign _T_2339 = _T_2338 ? 2'h1 : _T_2337; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126471.4]
  assign metaArb_io_in_3_bits_data = {_T_2339,_T_837}; // @[DCache.scala 621:30:freechips.rocketchip.system.DefaultRV32Config.fir@126480.4]

  assign metaArb_io_in_4_valid = _T_2416 | _T_2451; // @[DCache.scala 741:26:freechips.rocketchip.system.DefaultRV32Config.fir@126755.4]

  assign metaArb_io_in_4_bits_addr = {_T_824,_T_2455}; // @[DCache.scala 745:30:freechips.rocketchip.system.DefaultRV32Config.fir@126763.4]
  assign metaArb_io_in_4_bits_idx = probe_bits_address[11:6]; // @[DCache.scala 744:29:freechips.rocketchip.system.DefaultRV32Config.fir@126759.4]
  assign metaArb_io_in_4_bits_way_en = _T_2417 ? s2_victim_way : s2_probe_way; // @[DCache.scala 743:32:freechips.rocketchip.system.DefaultRV32Config.fir@126757.4]
  assign metaArb_io_in_4_bits_data = {newCoh_state,_T_2457}; // @[DCache.scala 746:30:freechips.rocketchip.system.DefaultRV32Config.fir@126770.4]
  assign metaArb_io_in_5_valid = 1'h0; // @[DCache.scala 845:26:freechips.rocketchip.system.DefaultRV32Config.fir@126940.4]
  assign metaArb_io_in_5_bits_addr = {_T_824,_T_2559}; // @[DCache.scala 848:30:freechips.rocketchip.system.DefaultRV32Config.fir@126947.4]
  assign metaArb_io_in_5_bits_idx = flushCounter[5:0]; // @[DCache.scala 847:29:freechips.rocketchip.system.DefaultRV32Config.fir@126943.4]

  assign _T_2408 = release_state == 3'h4; // @[DCache.scala 692:25:freechips.rocketchip.system.DefaultRV32Config.fir@126652.4]
  assign metaArb_io_in_6_valid = _T_2408 | _T_2355; // @[DCache.scala 644:26:freechips.rocketchip.system.DefaultRV32Config.fir@126508.4 DCache.scala 693:30:freechips.rocketchip.system.DefaultRV32Config.fir@126654.6]

  assign _GEN_265 = _T_2408 ? _T_2411 : _T_2363; // @[DCache.scala 692:44:freechips.rocketchip.system.DefaultRV32Config.fir@126653.4]
  assign metaArb_io_in_6_bits_addr = _GEN_265[31:0]; // @[DCache.scala 648:30:freechips.rocketchip.system.DefaultRV32Config.fir@126520.4 DCache.scala 695:34:freechips.rocketchip.system.DefaultRV32Config.fir@126659.6]

  assign metaArb_io_in_6_bits_idx = _T_2408 ? _T_821 : _T_2361; // @[DCache.scala 647:29:freechips.rocketchip.system.DefaultRV32Config.fir@126517.4 DCache.scala 694:33:freechips.rocketchip.system.DefaultRV32Config.fir@126656.6]
  assign metaArb_io_in_6_bits_way_en = metaArb_io_in_4_bits_way_en; // @[DCache.scala 649:32:freechips.rocketchip.system.DefaultRV32Config.fir@126521.4]
  assign metaArb_io_in_6_bits_data = metaArb_io_in_4_bits_data; // @[DCache.scala 650:30:freechips.rocketchip.system.DefaultRV32Config.fir@126522.4]
  assign metaArb_io_in_7_valid = io_cpu_req_valid; // @[DCache.scala 197:26:freechips.rocketchip.system.DefaultRV32Config.fir@123718.4]
  assign metaArb_io_in_7_bits_addr = io_cpu_req_bits_addr; // @[DCache.scala 200:30:freechips.rocketchip.system.DefaultRV32Config.fir@123722.4]
  assign metaArb_io_in_7_bits_idx = io_cpu_req_bits_addr[11:6]; // @[DCache.scala 199:29:freechips.rocketchip.system.DefaultRV32Config.fir@123721.4]
  assign metaArb_io_in_7_bits_way_en = metaArb_io_in_4_bits_way_en; // @[DCache.scala 201:32:freechips.rocketchip.system.DefaultRV32Config.fir@123723.4]
  assign metaArb_io_in_7_bits_data = metaArb_io_in_4_bits_data; // @[DCache.scala 202:30:freechips.rocketchip.system.DefaultRV32Config.fir@123724.4]

  assign tag_array_RW0_wdata_0 = metaArb_io_out_bits_data; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123787.8]
  assign tag_array_RW0_wdata_1 = metaArb_io_out_bits_data; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123790.8]
  assign tag_array_RW0_wdata_2 = metaArb_io_out_bits_data; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123793.8]
  assign tag_array_RW0_wdata_3 = metaArb_io_out_bits_data; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123796.8]
  assign tag_array_RW0_wmask_0 = metaArb_io_out_bits_way_en[0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123785.6 :freechips.rocketchip.system.DefaultRV32Config.fir@123787.8]
  assign tag_array_RW0_wmask_1 = metaArb_io_out_bits_way_en[1]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123785.6 :freechips.rocketchip.system.DefaultRV32Config.fir@123790.8]
  assign tag_array_RW0_wmask_2 = metaArb_io_out_bits_way_en[2]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123785.6 :freechips.rocketchip.system.DefaultRV32Config.fir@123793.8]
  assign tag_array_RW0_wmask_3 = metaArb_io_out_bits_way_en[3]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123785.6 :freechips.rocketchip.system.DefaultRV32Config.fir@123796.8]

  assign data_clock = gated_clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123409.4]
  assign data_io_req_valid = dataArb_io_out_valid; // @[DCache.scala 120:15:freechips.rocketchip.system.DefaultRV32Config.fir@123418.4]
  assign data_io_req_bits_addr = dataArb_io_out_bits_addr; // @[DCache.scala 120:15:freechips.rocketchip.system.DefaultRV32Config.fir@123418.4]
  assign data_io_req_bits_write = dataArb_io_out_bits_write; // @[DCache.scala 120:15:freechips.rocketchip.system.DefaultRV32Config.fir@123418.4]
  assign data_io_req_bits_wdata = dataArb_io_out_bits_wdata; // @[DCache.scala 120:15:freechips.rocketchip.system.DefaultRV32Config.fir@123418.4]
  assign data_io_req_bits_eccMask = dataArb_io_out_bits_eccMask; // @[DCache.scala 120:15:freechips.rocketchip.system.DefaultRV32Config.fir@123418.4]
  assign data_io_req_bits_way_en = dataArb_io_out_bits_way_en; // @[DCache.scala 120:15:freechips.rocketchip.system.DefaultRV32Config.fir@123418.4]

  assign dataArb_io_in_0_valid = pstore_drain_structural | _T_1027; // @[DCache.scala 448:26:freechips.rocketchip.system.DefaultRV32Config.fir@124976.4]
  assign dataArb_io_in_0_bits_addr = _T_1087[11:0]; // @[DCache.scala 450:30:freechips.rocketchip.system.DefaultRV32Config.fir@124979.4]
  assign dataArb_io_in_0_bits_write = pstore_drain_structural | _T_1027; // @[DCache.scala 449:31:freechips.rocketchip.system.DefaultRV32Config.fir@124977.4]

  assign _T_1089 = pstore2_valid ? pstore2_storegen_data : pstore1_data; // @[DCache.scala 452:63:freechips.rocketchip.system.DefaultRV32Config.fir@124982.4]
  assign dataArb_io_in_0_bits_wdata = {_T_1095,_T_1094}; // @[DCache.scala 452:31:freechips.rocketchip.system.DefaultRV32Config.fir@124990.4]

  assign _T_1099 = pstore2_valid ? mask : pstore1_mask; // @[DCache.scala 454:47:freechips.rocketchip.system.DefaultRV32Config.fir@124994.4]
  assign dataArb_io_in_0_bits_eccMask = {_T_1109,_T_1108}; // @[DCache.scala 454:33:freechips.rocketchip.system.DefaultRV32Config.fir@125006.4]

  assign dataArb_io_in_0_bits_way_en = pstore2_valid ? pstore2_way : pstore1_way; // @[DCache.scala 451:32:freechips.rocketchip.system.DefaultRV32Config.fir@124981.4]

  assign _T_2256 = _T_2255 & canAcceptCachedGrant; // @[DCache.scala 596:61:freechips.rocketchip.system.DefaultRV32Config.fir@126372.4]
  assign dataArb_io_in_1_valid = _T_2344 ? _GEN_202 : _T_2256; // @[DCache.scala 596:26:freechips.rocketchip.system.DefaultRV32Config.fir@126373.4 DCache.scala 632:32:freechips.rocketchip.system.DefaultRV32Config.fir@126489.8]

  assign _T_2261 = _T_2260 | _GEN_316; // @[DCache.scala 603:67:freechips.rocketchip.system.DefaultRV32Config.fir@126383.4]
  assign dataArb_io_in_1_bits_addr = _T_2261[11:0]; // @[DCache.scala 603:32:freechips.rocketchip.system.DefaultRV32Config.fir@126384.4]

  assign dataArb_io_in_1_bits_write = _T_2344 ? _GEN_203 : 1'h1; // @[DCache.scala 602:33:freechips.rocketchip.system.DefaultRV32Config.fir@126380.4 DCache.scala 633:37:freechips.rocketchip.system.DefaultRV32Config.fir@126490.8]

  assign dataArb_io_in_1_bits_wdata = {_T_343,_T_342}; // @[DCache.scala 119:43:freechips.rocketchip.system.DefaultRV32Config.fir@123415.4 DCache.scala 605:33:freechips.rocketchip.system.DefaultRV32Config.fir@126386.4]
  assign dataArb_io_in_1_bits_eccMask = 4'hf; // @[DCache.scala 607:35:freechips.rocketchip.system.DefaultRV32Config.fir@126390.4]
  assign dataArb_io_in_1_bits_way_en = s2_hit_valid ? s2_hit_way : _T_650; // @[DCache.scala 604:34:freechips.rocketchip.system.DefaultRV32Config.fir@126385.4]
  assign dataArb_io_in_2_valid = inWriteback & _T_2441; // @[DCache.scala 734:26:freechips.rocketchip.system.DefaultRV32Config.fir@126739.4]
  assign dataArb_io_in_2_bits_addr = _T_2444 | _GEN_320; // @[DCache.scala 735:25:freechips.rocketchip.system.DefaultRV32Config.fir@126740.4 DCache.scala 737:30:freechips.rocketchip.system.DefaultRV32Config.fir@126747.4]
  assign dataArb_io_in_2_bits_wdata = dataArb_io_in_1_bits_wdata; // @[DCache.scala 119:43:freechips.rocketchip.system.DefaultRV32Config.fir@123416.4 DCache.scala 735:25:freechips.rocketchip.system.DefaultRV32Config.fir@126740.4]
  assign dataArb_io_in_2_bits_eccMask = dataArb_io_in_1_bits_eccMask; // @[DCache.scala 735:25:freechips.rocketchip.system.DefaultRV32Config.fir@126740.4]
  assign dataArb_io_in_3_valid = io_cpu_req_valid & res; // @[DCache.scala 189:26:freechips.rocketchip.system.DefaultRV32Config.fir@123648.4]
  assign dataArb_io_in_3_bits_addr = io_cpu_req_bits_addr[11:0]; // @[DCache.scala 190:25:freechips.rocketchip.system.DefaultRV32Config.fir@123649.4 DCache.scala 192:30:freechips.rocketchip.system.DefaultRV32Config.fir@123651.4]
  assign dataArb_io_in_3_bits_wdata = dataArb_io_in_1_bits_wdata; // @[DCache.scala 119:43:freechips.rocketchip.system.DefaultRV32Config.fir@123417.4 DCache.scala 190:25:freechips.rocketchip.system.DefaultRV32Config.fir@123649.4]
  assign dataArb_io_in_3_bits_eccMask = dataArb_io_in_1_bits_eccMask; // @[DCache.scala 190:25:freechips.rocketchip.system.DefaultRV32Config.fir@123649.4]

  assign tlb_clock = gated_clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123731.4]
  assign tlb_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123732.4]
  assign tlb_io_req_valid = s1_valid_masked & s1_cmd_uses_tlb; // @[DCache.scala 210:20:freechips.rocketchip.system.DefaultRV32Config.fir@123741.4]
  assign tlb_io_req_bits_vaddr = s1_req_addr; // @[DCache.scala 212:25:freechips.rocketchip.system.DefaultRV32Config.fir@123743.4]
  assign tlb_io_req_bits_passthrough = s1_req_phys; // @[DCache.scala 211:31:freechips.rocketchip.system.DefaultRV32Config.fir@123742.4]
  assign tlb_io_req_bits_size = s1_req_size; // @[DCache.scala 213:24:freechips.rocketchip.system.DefaultRV32Config.fir@123744.4]
  assign tlb_io_req_bits_cmd = s1_req_cmd; // @[DCache.scala 214:23:freechips.rocketchip.system.DefaultRV32Config.fir@123745.4]
  assign tlb_io_sfence_valid = s1_valid_masked & s1_sfence; // @[DCache.scala 218:23:freechips.rocketchip.system.DefaultRV32Config.fir@123762.4]
  assign tlb_io_sfence_bits_rs1 = s1_req_size[0]; // @[DCache.scala 219:26:freechips.rocketchip.system.DefaultRV32Config.fir@123764.4]
  assign tlb_io_sfence_bits_rs2 = s1_req_size[1]; // @[DCache.scala 220:26:freechips.rocketchip.system.DefaultRV32Config.fir@123766.4]
  assign tlb_io_sfence_bits_addr = s1_req_addr; // @[DCache.scala 222:27:freechips.rocketchip.system.DefaultRV32Config.fir@123768.4]
  assign tlb_io_ptw_req_ready = io_ptw_req_ready; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_resp_valid = io_ptw_resp_valid; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_resp_bits_ae = io_ptw_resp_bits_ae; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_resp_bits_pte_ppn = io_ptw_resp_bits_pte_ppn; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_resp_bits_pte_d = io_ptw_resp_bits_pte_d; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_resp_bits_pte_a = io_ptw_resp_bits_pte_a; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_resp_bits_pte_g = io_ptw_resp_bits_pte_g; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_resp_bits_pte_u = io_ptw_resp_bits_pte_u; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_resp_bits_pte_x = io_ptw_resp_bits_pte_x; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_resp_bits_pte_w = io_ptw_resp_bits_pte_w; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_resp_bits_pte_r = io_ptw_resp_bits_pte_r; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_resp_bits_pte_v = io_ptw_resp_bits_pte_v; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_resp_bits_level = io_ptw_resp_bits_level; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_resp_bits_homogeneous = io_ptw_resp_bits_homogeneous; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_ptbr_mode = io_ptw_ptbr_mode; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_status_debug = io_ptw_status_debug; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_status_dprv = io_ptw_status_dprv; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_status_mxr = io_ptw_status_mxr; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_status_sum = io_ptw_status_sum; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_pmp_0_cfg_l = io_ptw_pmp_0_cfg_l; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_pmp_0_cfg_a = io_ptw_pmp_0_cfg_a; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_pmp_0_cfg_x = io_ptw_pmp_0_cfg_x; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_pmp_0_cfg_w = io_ptw_pmp_0_cfg_w; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_pmp_0_cfg_r = io_ptw_pmp_0_cfg_r; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_pmp_0_addr = io_ptw_pmp_0_addr; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_pmp_0_mask = io_ptw_pmp_0_mask; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_pmp_1_cfg_l = io_ptw_pmp_1_cfg_l; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_pmp_1_cfg_a = io_ptw_pmp_1_cfg_a; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_pmp_1_cfg_x = io_ptw_pmp_1_cfg_x; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_pmp_1_cfg_w = io_ptw_pmp_1_cfg_w; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_pmp_1_cfg_r = io_ptw_pmp_1_cfg_r; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_pmp_1_addr = io_ptw_pmp_1_addr; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_pmp_1_mask = io_ptw_pmp_1_mask; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_pmp_2_cfg_l = io_ptw_pmp_2_cfg_l; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_pmp_2_cfg_a = io_ptw_pmp_2_cfg_a; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_pmp_2_cfg_x = io_ptw_pmp_2_cfg_x; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_pmp_2_cfg_w = io_ptw_pmp_2_cfg_w; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_pmp_2_cfg_r = io_ptw_pmp_2_cfg_r; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_pmp_2_addr = io_ptw_pmp_2_addr; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_pmp_2_mask = io_ptw_pmp_2_mask; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_pmp_3_cfg_l = io_ptw_pmp_3_cfg_l; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_pmp_3_cfg_a = io_ptw_pmp_3_cfg_a; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_pmp_3_cfg_x = io_ptw_pmp_3_cfg_x; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_pmp_3_cfg_w = io_ptw_pmp_3_cfg_w; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_pmp_3_cfg_r = io_ptw_pmp_3_cfg_r; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_pmp_3_addr = io_ptw_pmp_3_addr; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_pmp_3_mask = io_ptw_pmp_3_mask; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_pmp_4_cfg_l = io_ptw_pmp_4_cfg_l; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_pmp_4_cfg_a = io_ptw_pmp_4_cfg_a; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_pmp_4_cfg_x = io_ptw_pmp_4_cfg_x; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_pmp_4_cfg_w = io_ptw_pmp_4_cfg_w; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_pmp_4_cfg_r = io_ptw_pmp_4_cfg_r; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_pmp_4_addr = io_ptw_pmp_4_addr; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_pmp_4_mask = io_ptw_pmp_4_mask; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_pmp_5_cfg_l = io_ptw_pmp_5_cfg_l; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_pmp_5_cfg_a = io_ptw_pmp_5_cfg_a; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_pmp_5_cfg_x = io_ptw_pmp_5_cfg_x; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_pmp_5_cfg_w = io_ptw_pmp_5_cfg_w; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_pmp_5_cfg_r = io_ptw_pmp_5_cfg_r; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_pmp_5_addr = io_ptw_pmp_5_addr; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_pmp_5_mask = io_ptw_pmp_5_mask; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_pmp_6_cfg_l = io_ptw_pmp_6_cfg_l; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_pmp_6_cfg_a = io_ptw_pmp_6_cfg_a; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_pmp_6_cfg_x = io_ptw_pmp_6_cfg_x; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_pmp_6_cfg_w = io_ptw_pmp_6_cfg_w; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_pmp_6_cfg_r = io_ptw_pmp_6_cfg_r; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_pmp_6_addr = io_ptw_pmp_6_addr; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_pmp_6_mask = io_ptw_pmp_6_mask; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_pmp_7_cfg_l = io_ptw_pmp_7_cfg_l; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_pmp_7_cfg_a = io_ptw_pmp_7_cfg_a; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_pmp_7_cfg_x = io_ptw_pmp_7_cfg_x; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_pmp_7_cfg_w = io_ptw_pmp_7_cfg_w; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_pmp_7_cfg_r = io_ptw_pmp_7_cfg_r; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_pmp_7_addr = io_ptw_pmp_7_addr; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]
  assign tlb_io_ptw_pmp_7_mask = io_ptw_pmp_7_mask; // @[DCache.scala 208:10:freechips.rocketchip.system.DefaultRV32Config.fir@123736.4]

  assign amoalu_io_mask = pstore1_mask; // @[DCache.scala 812:20:freechips.rocketchip.system.DefaultRV32Config.fir@126907.4]
  assign amoalu_io_cmd = pstore1_cmd; // @[DCache.scala 813:19:freechips.rocketchip.system.DefaultRV32Config.fir@126908.4]
  assign amoalu_io_lhs = {_T_616,_T_615}; // @[DCache.scala 814:19:freechips.rocketchip.system.DefaultRV32Config.fir@126909.4]
  assign amoalu_io_rhs = pstore1_data; // @[DCache.scala 815:19:freechips.rocketchip.system.DefaultRV32Config.fir@126910.4]

  assign tag_array_RW0_wmode = metaArb_io_out_bits_write;
  assign tag_array_RW0_clk = gated_clock;
  assign tag_array_RW0_en = s0_clk_en | _T_274;
  assign tag_array_RW0_addr = _T_274 ? _GEN_32 : _GEN_32;

always @(posedge gated_clock) begin
    if (reset) begin
      s1_valid <= 1'h0;
    end else begin
      s1_valid <= _T_48;
    end
    if (reset) begin
      blockProbeAfterGrantCount <= 3'h0;
    end else begin
      if (_T_2227) begin
        if (grantIsCached) begin
          if (d_last) begin
            blockProbeAfterGrantCount <= 3'h7;
          end else begin
            if (_T_2348) begin
              blockProbeAfterGrantCount <= _T_2215;
            end
          end
        end else begin
          if (_T_2348) begin
            blockProbeAfterGrantCount <= _T_2215;
          end
        end
      end else begin
        if (_T_2348) begin
          blockProbeAfterGrantCount <= _T_2215;
        end
      end
    end
end
always @(posedge gated_clock) begin
    if (reset) begin
      lrscCount <= 7'h0;
    end else begin
      if (s1_probe) begin
        lrscCount <= 7'h0;
      end else begin
        if (_T_858) begin
          lrscCount <= 7'h3;
        end else begin
          if (_T_842) begin
            lrscCount <= _T_857;
          end else begin
            if (_T_850) begin
              if (s2_hit) begin
                lrscCount <= 7'h4f;
              end else begin
                lrscCount <= 7'h0;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      s1_probe <= 1'h0;
    end else begin
      if (_T_2408) begin
        s1_probe <= _GEN_262;
      end else begin
        s1_probe <= _T_49;
      end
    end
    if (reset) begin
      s2_probe <= 1'h0;
    end else begin
      s2_probe <= s1_probe;
    end
end
  assign _T_49 = tl_out__b_ready & auto_out_b_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@123438.4]
  assign _T_850 = _T_849 | s2_valid_cached_miss; // @[DCache.scala 379:54:freechips.rocketchip.system.DefaultRV32Config.fir@124643.4]
always @(posedge gated_clock) begin
    if (reset) begin
      release_state <= 3'h0;
    end else begin
      if (_T_2460) begin
        release_state <= 3'h0;
      end else begin
        if (_T_2417) begin
          if (releaseDone) begin
            release_state <= 3'h6;
          end else begin
            if (_T_2414) begin
              if (releaseDone) begin
                release_state <= 3'h7;
              end else begin
                if (_T_2413) begin
                  if (releaseDone) begin
                    release_state <= 3'h7;
                  end else begin
                    if (_T_2412) begin
                      if (releaseDone) begin
                        release_state <= 3'h0;
                      end else begin
                        if (_T_2408) begin
                          if (metaArb_io_in_6_ready) begin
                            release_state <= 3'h0;
                          end else begin
                            if (s2_probe) begin
                              if (s2_prb_ack_data) begin
                                release_state <= 3'h2;
                              end else begin
                                if (_T_2404) begin
                                  if (releaseDone) begin
                                    release_state <= 3'h7;
                                  end else begin
                                    release_state <= 3'h3;
                                  end
                                end else begin
                                  if (releaseDone) begin
                                    release_state <= 3'h0;
                                  end else begin
                                    release_state <= 3'h5;
                                  end
                                end
                              end
                            end else begin
                              if (s2_want_victimize) begin
                                if (_T_2399) begin
                                  release_state <= 3'h1;
                                end else begin
                                  release_state <= 3'h6;
                                end
                              end
                            end
                          end
                        end else begin
                          if (s2_probe) begin
                            if (s2_prb_ack_data) begin
                              release_state <= 3'h2;
                            end else begin
                              if (_T_2404) begin
                                if (releaseDone) begin
                                  release_state <= 3'h7;
                                end else begin
                                  release_state <= 3'h3;
                                end
                              end else begin
                                if (releaseDone) begin
                                  release_state <= 3'h0;
                                end else begin
                                  release_state <= 3'h5;
                                end
                              end
                            end
                          end else begin
                            if (s2_want_victimize) begin
                              if (_T_2399) begin
                                release_state <= 3'h1;
                              end else begin
                                release_state <= 3'h6;
                              end
                            end
                          end
                        end
                      end
                    end else begin
                      if (_T_2408) begin
                        if (metaArb_io_in_6_ready) begin
                          release_state <= 3'h0;
                        end else begin
                          if (s2_probe) begin
                            if (s2_prb_ack_data) begin
                              release_state <= 3'h2;
                            end else begin
                              if (_T_2404) begin
                                if (releaseDone) begin
                                  release_state <= 3'h7;
                                end else begin
                                  release_state <= 3'h3;
                                end
                              end else begin
                                if (releaseDone) begin
                                  release_state <= 3'h0;
                                end else begin
                                  release_state <= 3'h5;
                                end
                              end
                            end
                          end else begin
                            if (s2_want_victimize) begin
                              if (_T_2399) begin
                                release_state <= 3'h1;
                              end else begin
                                release_state <= 3'h6;
                              end
                            end
                          end
                        end
                      end else begin
                        if (s2_probe) begin
                          if (s2_prb_ack_data) begin
                            release_state <= 3'h2;
                          end else begin
                            if (_T_2404) begin
                              if (releaseDone) begin
                                release_state <= 3'h7;
                              end else begin
                                release_state <= 3'h3;
                              end
                            end else begin
                              if (releaseDone) begin
                                release_state <= 3'h0;
                              end else begin
                                release_state <= 3'h5;
                              end
                            end
                          end
                        end else begin
                          if (s2_want_victimize) begin
                            if (_T_2399) begin
                              release_state <= 3'h1;
                            end else begin
                              release_state <= 3'h6;
                            end
                          end
                        end
                      end
                    end
                  end
                end else begin
                  if (_T_2412) begin
                    if (releaseDone) begin
                      release_state <= 3'h0;
                    end else begin
                      if (_T_2408) begin
                        if (metaArb_io_in_6_ready) begin
                          release_state <= 3'h0;
                        end else begin
                          release_state <= _GEN_251;
                        end
                      end else begin
                        release_state <= _GEN_251;
                      end
                    end
                  end else begin
                    if (_T_2408) begin
                      if (metaArb_io_in_6_ready) begin
                        release_state <= 3'h0;
                      end else begin
                        release_state <= _GEN_251;
                      end
                    end else begin
                      release_state <= _GEN_251;
                    end
                  end
                end
              end
            end else begin
              if (_T_2413) begin
                if (releaseDone) begin
                  release_state <= 3'h7;
                end else begin
                  if (_T_2412) begin
                    if (releaseDone) begin
                      release_state <= 3'h0;
                    end else begin
                      release_state <= _GEN_266;
                    end
                  end else begin
                    release_state <= _GEN_266;
                  end
                end
              end else begin
                if (_T_2412) begin
                  if (releaseDone) begin
                    release_state <= 3'h0;
                  end else begin
                    release_state <= _GEN_266;
                  end
                end else begin
                  release_state <= _GEN_266;
                end
              end
            end
          end
        end else begin
          if (_T_2414) begin
            if (releaseDone) begin
              release_state <= 3'h7;
            end else begin
              if (_T_2413) begin
                if (releaseDone) begin
                  release_state <= 3'h7;
                end else begin
                  release_state <= _GEN_270;
                end
              end else begin
                release_state <= _GEN_270;
              end
            end
          end else begin
            if (_T_2413) begin
              if (releaseDone) begin
                release_state <= 3'h7;
              end else begin
                release_state <= _GEN_270;
              end
            end else begin
              release_state <= _GEN_270;
            end
          end
        end
      end
    end
end
  assign _T_2399 = s2_victim_dirty & _T_2398; // @[DCache.scala 672:44:freechips.rocketchip.system.DefaultRV32Config.fir@126610.6]

always @(posedge gated_clock) begin
    if (reset) begin
      release_ack_wait <= 1'h0;
    end else begin
      if (_T_2417) begin
        release_ack_wait <= _GEN_291;
      end else begin
        if (_T_2227) begin
          if (!(grantIsCached)) begin
            if (!(grantIsUncached)) begin
              if (grantIsVoluntary) begin
                release_ack_wait <= 1'h0;
              end
            end
          end
        end
      end
    end
    if (_T_2417) begin
      if (_T_2439) begin
        release_ack_addr <= probe_bits_address;
      end
    end
    if (reset) begin
      grantInProgress <= 1'h0;
    end else begin
      if (_T_2227) begin
        if (grantIsCached) begin
          if (d_last) begin
            grantInProgress <= 1'h0;
          end else begin
            grantInProgress <= 1'h1;
          end
        end
      end
    end
    if (reset) begin
      s2_valid <= 1'h0;
    end else begin
      s2_valid <= _T_373;
    end
    if (s2_want_victimize) begin
      probe_bits_param <= 2'h0;
    end else begin
      if (_T_49) begin
        probe_bits_param <= auto_out_b_bits_param;
      end
    end
    if (s2_want_victimize) begin
      probe_bits_size <= 4'h0;
    end else begin
      if (_T_49) begin
        probe_bits_size <= auto_out_b_bits_size;
      end
    end
    if (s2_want_victimize) begin
      probe_bits_source <= 1'h0;
    end else begin
      if (_T_49) begin
        probe_bits_source <= auto_out_b_bits_source;
      end
    end
    if (s2_want_victimize) begin
      probe_bits_address <= res_2_address;
    end else begin
      if (_T_49) begin
        probe_bits_address <= auto_out_b_bits_address;
      end
    end
    if (s1_probe) begin
      s2_probe_state_state <= s1_meta_hit_state_state;
    end
    if (reset) begin
      _T_2372 <= 10'h0;
    end else begin
      if (_T_2364) begin
        if (c_first) begin
          if (_T_2370) begin
            _T_2372 <= _T_2369;
          end else begin
            _T_2372 <= 10'h0;
          end
        end else begin
          _T_2372 <= _T_2374;
        end
      end
    end
    s2_release_data_valid <= s1_release_data_valid & _T_2381;
    if (s0_clk_en) begin
      s1_req_cmd <= io_cpu_req_bits_cmd;
    end
    if (_T_2227) begin
      if (grantIsCached) begin
        if (_T_391) begin
          s2_req_cmd <= s1_req_cmd;
        end
      end else begin
        if (grantIsUncached) begin
          if (grantIsUncachedData) begin
            s2_req_cmd <= 5'h0;
          end else begin
            if (_T_391) begin
              s2_req_cmd <= s1_req_cmd;
            end
          end
        end else begin
          if (_T_391) begin
            s2_req_cmd <= s1_req_cmd;
          end
        end
      end
    end else begin
      if (_T_391) begin
        s2_req_cmd <= s1_req_cmd;
      end
    end
    pstore1_held <= _T_1037 & _T_1038;
    if (_T_866) begin
      pstore1_addr <= s1_req_addr;
    end
    if (s0_clk_en) begin
      s1_req_addr <= _T_56;
    end
    if (_T_866) begin
      if (_T_81) begin
        pstore1_mask <= io_cpu_s1_data_mask;
      end else begin
        pstore1_mask <= s1_mask_xwr;
      end
    end
    if (s0_clk_en) begin
      s1_req_size <= io_cpu_req_bits_size;
    end
    pstore2_valid <= _T_1043 | advance_pstore1;
    if (advance_pstore1) begin
      pstore2_addr <= pstore1_addr;
    end
    if (advance_pstore1) begin
      mask <= _T_1073;
    end
    _T_384 <= s1_nack == 1'h0;
    if (_T_391) begin
      s2_hit_state_state <= s1_meta_hit_state_state;
    end
    if (s0_clk_en) begin
      s1_req_tag <= io_cpu_req_bits_tag;
    end
    if (s0_clk_en) begin
      s1_req_signed <= io_cpu_req_bits_signed;
    end
    if (s0_clk_en) begin
      s1_req_phys <= _GEN_8;
    end
    s1_flush_valid <= _T_2552 & can_acquire_before_release;
end
  assign _T_107 = release_state == 3'h0; // @[DCache.scala 180:38:freechips.rocketchip.system.DefaultRV32Config.fir@123544.4]
  assign _T_643 = s2_flush_valid_pre_tag_ecc == 1'h0; // @[DCache.scala 330:29:freechips.rocketchip.system.DefaultRV32Config.fir@124372.4]
  assign _T_57 = metaArb_io_in_7_ready == 1'h0; // @[DCache.scala 157:11:freechips.rocketchip.system.DefaultRV32Config.fir@123469.6]
  assign _T_1038 = pstore_drain == 1'h0; // @[DCache.scala 422:91:freechips.rocketchip.system.DefaultRV32Config.fir@124896.4]
  assign _T_81 = s1_req_cmd == 5'h11; // @[Consts.scala 83:49:freechips.rocketchip.system.DefaultRV32Config.fir@123498.4]
  assign _T_866 = s1_valid_not_nacked & s1_write; // @[DCache.scala 393:63:freechips.rocketchip.system.DefaultRV32Config.fir@124675.4]
  assign _T_391 = s1_valid_not_nacked | s1_flush_valid; // @[DCache.scala 268:29:freechips.rocketchip.system.DefaultRV32Config.fir@123985.4]
  assign _T_2439 = _T_2364 & c_first; // @[DCache.scala 723:29:freechips.rocketchip.system.DefaultRV32Config.fir@126726.6]

always @(posedge gated_clock) begin
    if (reset) begin
      cached_grant_wait <= 1'h0;
    end else begin
      if (_T_2227) begin
        if (grantIsCached) begin
          if (d_last) begin
            cached_grant_wait <= 1'h0;
          end else begin
            if (_T_2180) begin
              if (!(s2_uncached)) begin
                cached_grant_wait <= 1'h1;
              end
            end
          end
        end else begin
          if (_T_2180) begin
            if (!(s2_uncached)) begin
              cached_grant_wait <= 1'h1;
            end
          end
        end
      end else begin
        if (_T_2180) begin
          if (!(s2_uncached)) begin
            cached_grant_wait <= 1'h1;
          end
        end
      end
    end
end
  assign _T_2180 = auto_out_a_ready & tl_out_a_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@126212.4]
always @(posedge gated_clock) begin
    if (reset) begin
      uncachedInFlight_0 <= 1'h0;
    end else begin
      if (_T_2227) begin
        if (grantIsCached) begin
          if (_T_2180) begin
            if (s2_uncached) begin
              uncachedInFlight_0 <= _GEN_114;
            end
          end
        end else begin
          if (grantIsUncached) begin
            if (_T_2232) begin
              uncachedInFlight_0 <= 1'h0;
            end else begin
              if (_T_2180) begin
                if (s2_uncached) begin
                  uncachedInFlight_0 <= _GEN_114;
                end
              end
            end
          end else begin
            if (_T_2180) begin
              if (s2_uncached) begin
                uncachedInFlight_0 <= _GEN_114;
              end
            end
          end
        end
      end else begin
        if (_T_2180) begin
          if (s2_uncached) begin
            uncachedInFlight_0 <= _GEN_114;
          end
        end
      end
    end
    if (_T_2180) begin
      if (s2_uncached) begin
        if (a_sel) begin
          uncachedReqs_0_addr <= s2_req_addr;
        end
      end
    end
    if (_T_2180) begin
      if (s2_uncached) begin
        if (a_sel) begin
          uncachedReqs_0_tag <= s2_req_tag;
        end
      end
    end
    if (_T_2180) begin
      if (s2_uncached) begin
        if (a_sel) begin
          uncachedReqs_0_size <= s2_req_size;
        end
      end
    end
    if (_T_2180) begin
      if (s2_uncached) begin
        if (a_sel) begin
          uncachedReqs_0_signed <= s2_req_signed;
        end
      end
    end
    if (s0_clk_en) begin
      s1_did_read <= _T_253;
    end
    if (s1_valid_not_nacked) begin
      s2_hit_way <= s1_meta_hit_way;
    end
    if (_T_391) begin
      _T_649 <= s1_victim_way;
    end
    if (s1_probe) begin
      s2_probe_way <= s1_meta_hit_way;
    end
    if (_T_2227) begin
      if (grantIsCached) begin
        if (_T_391) begin
          s2_req_addr <= tlb_io_resp_paddr;
        end
      end else begin
        if (grantIsUncached) begin
          if (grantIsUncachedData) begin
            s2_req_addr <= _T_2239;
          end else begin
            if (_T_391) begin
              s2_req_addr <= tlb_io_resp_paddr;
            end
          end
        end else begin
          if (_T_391) begin
            s2_req_addr <= tlb_io_resp_paddr;
          end
        end
      end
    end else begin
      if (_T_391) begin
        s2_req_addr <= tlb_io_resp_paddr;
      end
    end
    if (_T_2227) begin
      if (grantIsCached) begin
        if (_T_391) begin
          s2_req_tag <= s1_req_tag;
        end
      end else begin
        if (grantIsUncached) begin
          if (grantIsUncachedData) begin
            s2_req_tag <= uncachedReqs_0_tag;
          end else begin
            if (_T_391) begin
              s2_req_tag <= s1_req_tag;
            end
          end
        end else begin
          if (_T_391) begin
            s2_req_tag <= s1_req_tag;
          end
        end
      end
    end else begin
      if (_T_391) begin
        s2_req_tag <= s1_req_tag;
      end
    end
    if (_T_2227) begin
      if (grantIsCached) begin
        if (_T_391) begin
          s2_req_size <= s1_req_size;
        end
      end else begin
        if (grantIsUncached) begin
          if (grantIsUncachedData) begin
            s2_req_size <= uncachedReqs_0_size;
          end else begin
            if (_T_391) begin
              s2_req_size <= s1_req_size;
            end
          end
        end else begin
          if (_T_391) begin
            s2_req_size <= s1_req_size;
          end
        end
      end
    end else begin
      if (_T_391) begin
        s2_req_size <= s1_req_size;
      end
    end
    if (_T_2227) begin
      if (grantIsCached) begin
        if (_T_391) begin
          s2_req_signed <= s1_req_signed;
        end
      end else begin
        if (grantIsUncached) begin
          if (grantIsUncachedData) begin
            s2_req_signed <= uncachedReqs_0_signed;
          end else begin
            if (_T_391) begin
              s2_req_signed <= s1_req_signed;
            end
          end
        end else begin
          if (_T_391) begin
            s2_req_signed <= s1_req_signed;
          end
        end
      end
    end else begin
      if (_T_391) begin
        s2_req_signed <= s1_req_signed;
      end
    end
end
  assign _T_134 = _T_124 | _T_133; // @[Consts.scala 80:44:freechips.rocketchip.system.DefaultRV32Config.fir@123579.4]
  assign _T_116 = io_cpu_req_bits_cmd == 5'h7; // @[Consts.scala 82:65:freechips.rocketchip.system.DefaultRV32Config.fir@123561.4]
  assign _T_164 = io_cpu_req_bits_cmd == 5'h11; // @[Consts.scala 83:49:freechips.rocketchip.system.DefaultRV32Config.fir@123611.4]
  assign _T_135 = io_cpu_req_bits_cmd == 5'h1; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@123581.4]
  assign _T_2232 = uncachedRespIdxOH & d_last; // @[DCache.scala 561:17:freechips.rocketchip.system.DefaultRV32Config.fir@126313.10]
  assign _GEN_114 = a_sel | uncachedInFlight_0; // @[DCache.scala 511:18:freechips.rocketchip.system.DefaultRV32Config.fir@126216.8]

always @(posedge gated_clock) begin
    if (_T_391) begin
      s2_tlb_resp_pf_ld <= tlb_io_resp_pf_ld;
    end
    if (_T_391) begin
      s2_tlb_resp_pf_st <= tlb_io_resp_pf_st;
    end
    if (_T_391) begin
      s2_tlb_resp_ae_ld <= tlb_io_resp_ae_ld;
    end
    if (_T_391) begin
      s2_tlb_resp_ae_st <= tlb_io_resp_ae_st;
    end
    if (_T_391) begin
      s2_tlb_resp_ma_ld <= tlb_io_resp_ma_ld;
    end
    if (_T_391) begin
      s2_tlb_resp_ma_st <= tlb_io_resp_ma_st;
    end
    if (_T_391) begin
      s2_tlb_resp_cacheable <= tlb_io_resp_cacheable;
    end
    if (_T_2227) begin
      if (!(grantIsCached)) begin
        if (grantIsUncached) begin
          if (grantIsUncachedData) begin
            s2_uncached_resp_addr <= uncachedReqs_0_addr;
          end
        end
      end
    end
    if (_T_391) begin
      _T_393 <= s1_req_addr;
    end
    s2_flush_valid_pre_tag_ecc <= s1_flush_valid;
    if (_T_2344) begin
      if (auto_out_d_valid) begin
        blockUncachedGrant <= _T_2257;
      end else begin
        blockUncachedGrant <= dataArb_io_out_valid;
      end
    end else begin
      blockUncachedGrant <= dataArb_io_out_valid;
    end
    if (reset) begin
      _T_2190 <= 10'h0;
    end else begin
      if (_T_2227) begin
        if (d_first) begin
          if (_T_2188) begin
            _T_2190 <= _T_2187;
          end else begin
            _T_2190 <= 10'h0;
          end
        end else begin
          _T_2190 <= _T_2192;
        end
      end
    end
    if (en) begin
      s2_data <= _T_490;
    end
    if (_T_391) begin
      if (_T_336) begin
        _T_654 <= s1_meta_uncorrected_3_tag;
      end else begin
        if (_T_334) begin
          _T_654 <= s1_meta_uncorrected_2_tag;
        end else begin
          if (_T_332) begin
            _T_654 <= s1_meta_uncorrected_1_tag;
          end else begin
            _T_654 <= s1_meta_uncorrected_0_tag;
          end
        end
      end
    end
    if (_T_391) begin
      if (_T_336) begin
        _T_656_state <= s1_meta_uncorrected_3_coh_state;
      end else begin
        if (_T_334) begin
          _T_656_state <= s1_meta_uncorrected_2_coh_state;
        end else begin
          if (_T_332) begin
            _T_656_state <= s1_meta_uncorrected_1_coh_state;
          end else begin
            _T_656_state <= s1_meta_uncorrected_0_coh_state;
          end
        end
      end
    end
    if (_T_850) begin
      lrscAddr <= _T_844;
    end
    if (_T_866) begin
      pstore1_cmd <= s1_req_cmd;
    end
    if (_T_866) begin
      pstore1_data <= io_cpu_s1_data_data;
    end
    if (_T_866) begin
      pstore1_way <= s1_meta_hit_way;
    end
    if (_T_866) begin
      pstore1_rmw <= _T_921;
    end
    _T_995 <= io_cpu_s2_nack;
    if (advance_pstore1) begin
      pstore2_way <= pstore1_way;
    end
    if (advance_pstore1) begin
      _T_1051 <= _T_1047;
    end
    if (advance_pstore1) begin
      _T_1056 <= _T_1052;
    end
    if (advance_pstore1) begin
      _T_1061 <= _T_1057;
    end
    if (advance_pstore1) begin
      _T_1066 <= _T_1062;
    end
    s1_release_data_valid <= dataArb_io_in_2_ready & dataArb_io_in_2_valid;
    _T_2475 <= _T_2473 & _T_52;
    doUncachedResp <= io_cpu_replay_next;
    if (reset) begin
      resetting <= 1'h0;
    end else begin
      if (resetting) begin
        if (flushDone) begin
          resetting <= 1'h0;
        end else begin
          resetting <= _GEN_309;
        end
      end else begin
        resetting <= _GEN_309;
      end
    end
    _T_2540 <= reset;
    if (reset) begin
      flushCounter <= 8'hc0;
    end else begin
      flushCounter <= _GEN_311[7:0];
    end
    if (reset) begin
      _T_2618 <= 10'h0;
    end else begin
      if (_T_2364) begin
        if (_T_2621) begin
          if (_T_2370) begin
            _T_2618 <= _T_2369;
          end else begin
            _T_2618 <= 10'h0;
          end
        end else begin
          _T_2618 <= _T_2620;
        end
      end
    end
end
  assign _T_2621 = _T_2618 == 10'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@127031.4]
  assign _T_490 = _T_489 | _T_486; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@124172.4]
  assign _T_2257 = dataArb_io_in_1_ready == 1'h0; // @[DCache.scala 597:26:freechips.rocketchip.system.DefaultRV32Config.fir@126374.4]

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
  blockProbeAfterGrantCount = _RAND_1[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  lrscCount = _RAND_2[6:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  s1_probe = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  s2_probe = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  release_state = _RAND_5[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  release_ack_wait = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  release_ack_addr = _RAND_7[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  grantInProgress = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  s2_valid = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  probe_bits_param = _RAND_10[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  probe_bits_size = _RAND_11[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  probe_bits_source = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  probe_bits_address = _RAND_13[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  s2_probe_state_state = _RAND_14[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  _T_2372 = _RAND_15[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  s2_release_data_valid = _RAND_16[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  s1_req_cmd = _RAND_17[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  s2_req_cmd = _RAND_18[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  pstore1_held = _RAND_19[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  pstore1_addr = _RAND_20[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  s1_req_addr = _RAND_21[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  pstore1_mask = _RAND_22[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  s1_req_size = _RAND_23[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  pstore2_valid = _RAND_24[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  pstore2_addr = _RAND_25[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  mask = _RAND_26[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  _T_384 = _RAND_27[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  s2_hit_state_state = _RAND_28[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  s1_req_tag = _RAND_29[6:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{`RANDOM}};
  s1_req_signed = _RAND_30[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{`RANDOM}};
  s1_req_phys = _RAND_31[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{`RANDOM}};
  s1_flush_valid = _RAND_32[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{`RANDOM}};
  cached_grant_wait = _RAND_33[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{`RANDOM}};
  uncachedInFlight_0 = _RAND_34[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{`RANDOM}};
  uncachedReqs_0_addr = _RAND_35[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{`RANDOM}};
  uncachedReqs_0_tag = _RAND_36[6:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{`RANDOM}};
  uncachedReqs_0_size = _RAND_37[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{`RANDOM}};
  uncachedReqs_0_signed = _RAND_38[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {1{`RANDOM}};
  s1_did_read = _RAND_39[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{`RANDOM}};
  s2_hit_way = _RAND_40[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {1{`RANDOM}};
  _T_649 = _RAND_41[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {1{`RANDOM}};
  s2_probe_way = _RAND_42[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {1{`RANDOM}};
  s2_req_addr = _RAND_43[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {1{`RANDOM}};
  s2_req_tag = _RAND_44[6:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_45 = {1{`RANDOM}};
  s2_req_size = _RAND_45[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_46 = {1{`RANDOM}};
  s2_req_signed = _RAND_46[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_47 = {1{`RANDOM}};
  s2_tlb_resp_pf_ld = _RAND_47[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_48 = {1{`RANDOM}};
  s2_tlb_resp_pf_st = _RAND_48[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_49 = {1{`RANDOM}};
  s2_tlb_resp_ae_ld = _RAND_49[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_50 = {1{`RANDOM}};
  s2_tlb_resp_ae_st = _RAND_50[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_51 = {1{`RANDOM}};
  s2_tlb_resp_ma_ld = _RAND_51[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_52 = {1{`RANDOM}};
  s2_tlb_resp_ma_st = _RAND_52[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_53 = {1{`RANDOM}};
  s2_tlb_resp_cacheable = _RAND_53[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_54 = {1{`RANDOM}};
  s2_uncached_resp_addr = _RAND_54[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_55 = {1{`RANDOM}};
  _T_393 = _RAND_55[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_56 = {1{`RANDOM}};
  s2_flush_valid_pre_tag_ecc = _RAND_56[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_57 = {1{`RANDOM}};
  blockUncachedGrant = _RAND_57[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_58 = {1{`RANDOM}};
  _T_2190 = _RAND_58[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_59 = {1{`RANDOM}};
  s2_data = _RAND_59[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_60 = {1{`RANDOM}};
  _T_654 = _RAND_60[19:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_61 = {1{`RANDOM}};
  _T_656_state = _RAND_61[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_62 = {1{`RANDOM}};
  lrscAddr = _RAND_62[25:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_63 = {1{`RANDOM}};
  pstore1_cmd = _RAND_63[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_64 = {1{`RANDOM}};
  pstore1_data = _RAND_64[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_65 = {1{`RANDOM}};
  pstore1_way = _RAND_65[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_66 = {1{`RANDOM}};
  pstore1_rmw = _RAND_66[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_67 = {1{`RANDOM}};
  _T_995 = _RAND_67[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_68 = {1{`RANDOM}};
  pstore2_way = _RAND_68[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_69 = {1{`RANDOM}};
  _T_1051 = _RAND_69[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_70 = {1{`RANDOM}};
  _T_1056 = _RAND_70[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_71 = {1{`RANDOM}};
  _T_1061 = _RAND_71[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_72 = {1{`RANDOM}};
  _T_1066 = _RAND_72[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_73 = {1{`RANDOM}};
  s1_release_data_valid = _RAND_73[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_74 = {1{`RANDOM}};
  _T_2475 = _RAND_74[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_75 = {1{`RANDOM}};
  doUncachedResp = _RAND_75[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_76 = {1{`RANDOM}};
  resetting = _RAND_76[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_77 = {1{`RANDOM}};
  _T_2540 = _RAND_77[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_78 = {1{`RANDOM}};
  flushCounter = _RAND_78[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_79 = {1{`RANDOM}};
  _T_2618 = _RAND_79[9:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  assign _T_195 = _T_194 == 1'h0; // @[DCache.scala 1008:11:freechips.rocketchip.system.DefaultRV32Config.fir@123642.4]
  assign _T_371 = _T_370 == 1'h0; // @[DCache.scala 255:9:freechips.rocketchip.system.DefaultRV32Config.fir@123947.4]
  assign _T_1014 = _T_1013 == 1'h0; // @[DCache.scala 411:9:freechips.rocketchip.system.DefaultRV32Config.fir@124866.4]
  always @(posedge gated_clock) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_195) begin
          $fwrite(32'h80000002,"Assertion failed\n    at DCache.scala:1008 assert(!needsRead(req) || res)\n"); // @[DCache.scala 1008:11:freechips.rocketchip.system.DefaultRV32Config.fir@123644.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_195) begin
          $fatal; // @[DCache.scala 1008:11:freechips.rocketchip.system.DefaultRV32Config.fir@123645.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_371) begin
          $fwrite(32'h80000002,"Assertion failed\n    at DCache.scala:255 assert(!(s1_valid_masked && s1_req.cmd === M_PWR) || (s1_mask_xwr | ~io.cpu.s1_data.mask).andR)\n"); // @[DCache.scala 255:9:freechips.rocketchip.system.DefaultRV32Config.fir@123949.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_371) begin
          $fatal; // @[DCache.scala 255:9:freechips.rocketchip.system.DefaultRV32Config.fir@123950.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_195) begin
          $fwrite(32'h80000002,"Assertion failed\n    at DCache.scala:1008 assert(!needsRead(req) || res)\n"); // @[DCache.scala 1008:11:freechips.rocketchip.system.DefaultRV32Config.fir@124832.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_195) begin
          $fatal; // @[DCache.scala 1008:11:freechips.rocketchip.system.DefaultRV32Config.fir@124833.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1014) begin
          $fwrite(32'h80000002,"Assertion failed\n    at DCache.scala:411 assert(pstore1_rmw || pstore1_valid_not_rmw(io.cpu.s2_kill) === pstore1_valid)\n"); // @[DCache.scala 411:9:freechips.rocketchip.system.DefaultRV32Config.fir@124868.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1014) begin
          $fatal; // @[DCache.scala 411:9:freechips.rocketchip.system.DefaultRV32Config.fir@124869.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_324 & _T_2230) begin
          $fwrite(32'h80000002,"Assertion failed: A GrantData was unexpected by the dcache.\n    at DCache.scala:552 assert(cached_grant_wait, \"A GrantData was unexpected by the dcache.\")\n"); // @[DCache.scala 552:13:freechips.rocketchip.system.DefaultRV32Config.fir@126300.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_324 & _T_2230) begin
          $fatal; // @[DCache.scala 552:13:freechips.rocketchip.system.DefaultRV32Config.fir@126301.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_329 & _T_2235) begin
          $fwrite(32'h80000002,"Assertion failed: An AccessAck was unexpected by the dcache.\n    at DCache.scala:562 assert(f, \"An AccessAck was unexpected by the dcache.\") // TODO must handle Ack coming back on same cycle!\n"); // @[DCache.scala 562:17:freechips.rocketchip.system.DefaultRV32Config.fir@126319.14]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_329 & _T_2235) begin
          $fatal; // @[DCache.scala 562:17:freechips.rocketchip.system.DefaultRV32Config.fir@126320.14]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_338 & _T_2242) begin
          $fwrite(32'h80000002,"Assertion failed: A ReleaseAck was unexpected by the dcache.\n    at DCache.scala:583 assert(release_ack_wait, \"A ReleaseAck was unexpected by the dcache.\") // TODO should handle Ack coming back on same cycle!\n"); // @[DCache.scala 583:13:freechips.rocketchip.system.DefaultRV32Config.fir@126345.14]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_338 & _T_2242) begin
          $fatal; // @[DCache.scala 583:13:freechips.rocketchip.system.DefaultRV32Config.fir@126346.14]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_2254) begin
          $fwrite(32'h80000002,"Assertion failed\n    at DCache.scala:591 assert(tl_out.e.fire() === (tl_out.d.fire() && d_first && grantIsCached))\n"); // @[DCache.scala 591:9:freechips.rocketchip.system.DefaultRV32Config.fir@126368.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_2254) begin
          $fatal; // @[DCache.scala 591:9:freechips.rocketchip.system.DefaultRV32Config.fir@126369.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (s2_want_victimize & _T_2393) begin
          $fwrite(32'h80000002,"Assertion failed\n    at DCache.scala:670 assert(s2_valid_flush_line || s2_flush_valid || io.cpu.s2_nack)\n"); // @[DCache.scala 670:13:freechips.rocketchip.system.DefaultRV32Config.fir@126601.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (s2_want_victimize & _T_2393) begin
          $fatal; // @[DCache.scala 670:13:freechips.rocketchip.system.DefaultRV32Config.fir@126602.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (doUncachedResp & _T_2504) begin
          $fwrite(32'h80000002,"Assertion failed\n    at DCache.scala:782 assert(!s2_valid_hit)\n"); // @[DCache.scala 782:11:freechips.rocketchip.system.DefaultRV32Config.fir@126856.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (doUncachedResp & _T_2504) begin
          $fatal; // @[DCache.scala 782:11:freechips.rocketchip.system.DefaultRV32Config.fir@126857.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end

`endif // MY_ASSIGNMENT


  assign _T_7 = {MaxPeriodFibonacciLFSR_io_out_7,MaxPeriodFibonacciLFSR_io_out_6,MaxPeriodFibonacciLFSR_io_out_5,MaxPeriodFibonacciLFSR_io_out_4,MaxPeriodFibonacciLFSR_io_out_3,MaxPeriodFibonacciLFSR_io_out_2,MaxPeriodFibonacciLFSR_io_out_1,MaxPeriodFibonacciLFSR_io_out_0}; // @[PRNG.scala 86:17:freechips.rocketchip.system.DefaultRV32Config.fir@123345.4]
  assign _T_15 = {MaxPeriodFibonacciLFSR_io_out_15,MaxPeriodFibonacciLFSR_io_out_14,MaxPeriodFibonacciLFSR_io_out_13,MaxPeriodFibonacciLFSR_io_out_12,MaxPeriodFibonacciLFSR_io_out_11,MaxPeriodFibonacciLFSR_io_out_10,MaxPeriodFibonacciLFSR_io_out_9,MaxPeriodFibonacciLFSR_io_out_8,_T_7}; // @[PRNG.scala 86:17:freechips.rocketchip.system.DefaultRV32Config.fir@123353.4]
  assign _T_16 = _T_15[0]; // @[LFSR.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@123354.4]
  assign _T_17 = _T_15[1]; // @[LFSR.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@123355.4]
  assign _T_18 = _T_15[2]; // @[LFSR.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@123356.4]
  assign _T_19 = _T_15[3]; // @[LFSR.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@123357.4]
  assign _T_20 = _T_15[4]; // @[LFSR.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@123358.4]
  assign _T_21 = _T_15[5]; // @[LFSR.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@123359.4]
  assign _T_22 = _T_15[6]; // @[LFSR.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@123360.4]
  assign _T_23 = _T_15[7]; // @[LFSR.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@123361.4]
  assign _T_24 = _T_15[8]; // @[LFSR.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@123362.4]
  assign _T_25 = _T_15[9]; // @[LFSR.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@123363.4]
  assign _T_26 = _T_15[10]; // @[LFSR.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@123364.4]
  assign _T_27 = _T_15[11]; // @[LFSR.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@123365.4]
  assign _T_28 = _T_15[12]; // @[LFSR.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@123366.4]
  assign _T_29 = _T_15[13]; // @[LFSR.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@123367.4]
  assign _T_30 = _T_15[14]; // @[LFSR.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@123368.4]
  assign _T_31 = _T_15[15]; // @[LFSR.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@123369.4]
  assign _T_39 = {_T_24,_T_25,_T_26,_T_27,_T_28,_T_29,_T_30,_T_31}; // @[LFSR.scala 43:8:freechips.rocketchip.system.DefaultRV32Config.fir@123393.4]
  assign _T_47 = {_T_16,_T_17,_T_18,_T_19,_T_20,_T_21,_T_22,_T_23,_T_39}; // @[LFSR.scala 43:8:freechips.rocketchip.system.DefaultRV32Config.fir@123401.4]
  assign _T_48 = io_cpu_req_ready & io_cpu_req_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@123435.4]
  assign _T_381 = s1_probe | s2_probe; // @[DCache.scala 260:34:freechips.rocketchip.system.DefaultRV32Config.fir@123966.4]
  assign _T_382 = release_state != 3'h0; // @[DCache.scala 260:63:freechips.rocketchip.system.DefaultRV32Config.fir@123967.4]
  assign _T_2349 = auto_out_b_bits_address ^ release_ack_addr; // @[DCache.scala 642:88:freechips.rocketchip.system.DefaultRV32Config.fir@126499.4]
  assign _T_2350 = _T_2349[11:6]; // @[DCache.scala 642:107:freechips.rocketchip.system.DefaultRV32Config.fir@126500.4]
  assign _T_2351 = _T_2350 == 6'h0; // @[DCache.scala 642:124:freechips.rocketchip.system.DefaultRV32Config.fir@126501.4]
  assign _T_2352 = releaseInFlight | block_probe_for_pending_release_ack; // @[DCache.scala 643:50:freechips.rocketchip.system.DefaultRV32Config.fir@126503.4]
  assign _T_2356 = block_probe_for_core_progress | block_probe_for_ordering; // @[DCache.scala 645:79:freechips.rocketchip.system.DefaultRV32Config.fir@126509.4]
  assign _T_2357 = _T_2356 | s1_valid; // @[DCache.scala 645:107:freechips.rocketchip.system.DefaultRV32Config.fir@126510.4]
  assign _T_2358 = _T_2357 | s2_valid; // @[DCache.scala 645:119:freechips.rocketchip.system.DefaultRV32Config.fir@126511.4]
  assign _T_51 = io_cpu_s1_kill == 1'h0; // @[DCache.scala 150:37:freechips.rocketchip.system.DefaultRV32Config.fir@123456.4]
  assign _T_657 = {probe_bits_param,s2_probe_state_state}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@124401.4]
  assign _T_678 = 4'ha == _T_657; // @[Misc.scala 54:20:freechips.rocketchip.system.DefaultRV32Config.fir@124422.4]
  assign _T_674 = 4'h9 == _T_657; // @[Misc.scala 54:20:freechips.rocketchip.system.DefaultRV32Config.fir@124418.4]
  assign _T_670 = 4'h8 == _T_657; // @[Misc.scala 54:20:freechips.rocketchip.system.DefaultRV32Config.fir@124414.4]
  assign _T_687 = _T_686 ? 1'h0 : _T_682; // @[Misc.scala 36:9:freechips.rocketchip.system.DefaultRV32Config.fir@124431.4]
  assign _T_691 = _T_690 ? 1'h0 : _T_687; // @[Misc.scala 36:9:freechips.rocketchip.system.DefaultRV32Config.fir@124435.4]
  assign _T_699 = _T_698 | _T_695; // @[Misc.scala 36:9:freechips.rocketchip.system.DefaultRV32Config.fir@124443.4]
  assign _T_703 = _T_702 ? 1'h0 : _T_699; // @[Misc.scala 36:9:freechips.rocketchip.system.DefaultRV32Config.fir@124447.4]
  assign _T_707 = _T_706 ? 1'h0 : _T_703; // @[Misc.scala 36:9:freechips.rocketchip.system.DefaultRV32Config.fir@124451.4]
  assign _T_2375 = _T_2372 == 10'h1; // @[Edges.scala 233:25:freechips.rocketchip.system.DefaultRV32Config.fir@126535.4]
  assign _GEN_282 = _T_2414 ? 3'h5 : 3'h4; // @[DCache.scala 710:48:freechips.rocketchip.system.DefaultRV32Config.fir@126681.4]
  assign _T_2370 = tl_out__c_bits_opcode[0]; // @[Edges.scala 103:36:freechips.rocketchip.system.DefaultRV32Config.fir@126529.4]
  assign _T_2367 = _T_2366[11:0]; // @[package.scala 189:82:freechips.rocketchip.system.DefaultRV32Config.fir@126526.4]
  assign _T_2368 = ~ _T_2367; // @[package.scala 189:46:freechips.rocketchip.system.DefaultRV32Config.fir@126527.4]
  assign _T_2369 = _T_2368[11:2]; // @[Edges.scala 221:59:freechips.rocketchip.system.DefaultRV32Config.fir@126528.4]
  assign _GEN_269 = _T_2412 | _GEN_252; // @[DCache.scala 701:47:freechips.rocketchip.system.DefaultRV32Config.fir@126666.4]
  assign _T_2406 = releaseDone == 1'h0; // @[DCache.scala 687:22:freechips.rocketchip.system.DefaultRV32Config.fir@126643.12]
  assign _GEN_229 = _T_2404 | _T_2406; // @[DCache.scala 681:45:freechips.rocketchip.system.DefaultRV32Config.fir@126635.10]
  assign _T_58 = s1_req_cmd == 5'h0; // @[Consts.scala 82:31:freechips.rocketchip.system.DefaultRV32Config.fir@123474.4]
  assign _T_59 = s1_req_cmd == 5'h6; // @[Consts.scala 82:48:freechips.rocketchip.system.DefaultRV32Config.fir@123475.4]
  assign _T_60 = _T_58 | _T_59; // @[Consts.scala 82:41:freechips.rocketchip.system.DefaultRV32Config.fir@123476.4]
  assign _T_61 = s1_req_cmd == 5'h7; // @[Consts.scala 82:65:freechips.rocketchip.system.DefaultRV32Config.fir@123477.4]
  assign _T_62 = _T_60 | _T_61; // @[Consts.scala 82:58:freechips.rocketchip.system.DefaultRV32Config.fir@123478.4]
  assign _T_63 = s1_req_cmd == 5'h4; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@123479.4]
  assign _T_64 = s1_req_cmd == 5'h9; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@123480.4]
  assign _T_67 = _T_63 | _T_64; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@123483.4]
  assign _T_65 = s1_req_cmd == 5'ha; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@123481.4]
  assign _T_68 = _T_67 | _T_65; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@123484.4]
  assign _T_66 = s1_req_cmd == 5'hb; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@123482.4]
  assign _T_69 = _T_68 | _T_66; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@123485.4]
  assign _T_70 = s1_req_cmd == 5'h8; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@123486.4]
  assign _T_71 = s1_req_cmd == 5'hc; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@123487.4]
  assign _T_75 = _T_70 | _T_71; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@123491.4]
  assign _T_72 = s1_req_cmd == 5'hd; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@123488.4]
  assign _T_76 = _T_75 | _T_72; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@123492.4]
  assign _T_73 = s1_req_cmd == 5'he; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@123489.4]
  assign _T_77 = _T_76 | _T_73; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@123493.4]
  assign _T_74 = s1_req_cmd == 5'hf; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@123490.4]
  assign _T_78 = _T_77 | _T_74; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@123494.4]
  assign _T_79 = _T_69 | _T_78; // @[Consts.scala 80:44:freechips.rocketchip.system.DefaultRV32Config.fir@123495.4]
  assign _T_418 = s2_req_cmd == 5'h1; // @[Consts.scala 83:32:freechips.rocketchip.system.DefaultRV32Config.fir@124022.4]
  assign _T_420 = _T_418 | _T_419; // @[Consts.scala 83:42:freechips.rocketchip.system.DefaultRV32Config.fir@124024.4]
  assign _T_422 = _T_420 | _T_421; // @[Consts.scala 83:59:freechips.rocketchip.system.DefaultRV32Config.fir@124026.4]
  assign _T_423 = s2_req_cmd == 5'h4; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@124027.4]
  assign _T_424 = s2_req_cmd == 5'h9; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@124028.4]
  assign _T_427 = _T_423 | _T_424; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@124031.4]
  assign _T_425 = s2_req_cmd == 5'ha; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@124029.4]
  assign _T_428 = _T_427 | _T_425; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@124032.4]
  assign _T_426 = s2_req_cmd == 5'hb; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@124030.4]
  assign _T_429 = _T_428 | _T_426; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@124033.4]
  assign _T_430 = s2_req_cmd == 5'h8; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@124034.4]
  assign _T_431 = s2_req_cmd == 5'hc; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@124035.4]
  assign _T_435 = _T_430 | _T_431; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@124039.4]
  assign _T_432 = s2_req_cmd == 5'hd; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@124036.4]
  assign _T_436 = _T_435 | _T_432; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@124040.4]
  assign _T_433 = s2_req_cmd == 5'he; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@124037.4]
  assign _T_437 = _T_436 | _T_433; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@124041.4]
  assign _T_434 = s2_req_cmd == 5'hf; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@124038.4]
  assign _T_438 = _T_437 | _T_434; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@124042.4]
  assign _T_439 = _T_429 | _T_438; // @[Consts.scala 80:44:freechips.rocketchip.system.DefaultRV32Config.fir@124043.4]
  assign _T_996 = s2_valid & s2_write; // @[DCache.scala 406:39:freechips.rocketchip.system.DefaultRV32Config.fir@124844.4]
  assign _T_1111 = pstore1_addr[11:2]; // @[DCache.scala 458:9:freechips.rocketchip.system.DefaultRV32Config.fir@125007.4]
  assign _T_1112 = s1_req_addr[11:2]; // @[DCache.scala 458:46:freechips.rocketchip.system.DefaultRV32Config.fir@125008.4]
  assign _T_1113 = _T_1111 == _T_1112; // @[DCache.scala 458:31:freechips.rocketchip.system.DefaultRV32Config.fir@125009.4]
  assign _T_80 = s1_req_cmd == 5'h1; // @[Consts.scala 83:32:freechips.rocketchip.system.DefaultRV32Config.fir@123497.4]
  assign _T_82 = _T_80 | _T_81; // @[Consts.scala 83:42:freechips.rocketchip.system.DefaultRV32Config.fir@123499.4]
  assign _T_84 = _T_82 | _T_61; // @[Consts.scala 83:59:freechips.rocketchip.system.DefaultRV32Config.fir@123501.4]
  assign _T_1117 = pstore1_mask[3]; // @[package.scala 160:50:freechips.rocketchip.system.DefaultRV32Config.fir@125013.4]
  assign _T_1116 = pstore1_mask[2]; // @[package.scala 160:50:freechips.rocketchip.system.DefaultRV32Config.fir@125012.4]
  assign _T_1115 = pstore1_mask[1]; // @[package.scala 160:50:freechips.rocketchip.system.DefaultRV32Config.fir@125011.4]
  assign _T_1114 = pstore1_mask[0]; // @[package.scala 160:50:freechips.rocketchip.system.DefaultRV32Config.fir@125010.4]
  assign _T_1124 = {_T_1117,_T_1116,_T_1115,_T_1114}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@125020.4]
  assign _T_1128 = _T_1124[3]; // @[Bitwise.scala 26:51:freechips.rocketchip.system.DefaultRV32Config.fir@125024.4]
  assign _T_1127 = _T_1124[2]; // @[Bitwise.scala 26:51:freechips.rocketchip.system.DefaultRV32Config.fir@125023.4]
  assign _T_1126 = _T_1124[1]; // @[Bitwise.scala 26:51:freechips.rocketchip.system.DefaultRV32Config.fir@125022.4]
  assign _T_1125 = _T_1124[0]; // @[Bitwise.scala 26:51:freechips.rocketchip.system.DefaultRV32Config.fir@125021.4]
  assign _T_1131 = {_T_1128,_T_1127,_T_1126,_T_1125}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@125027.4]
  assign _T_354 = s1_req_addr[1]; // @[AMOALU.scala 17:27:freechips.rocketchip.system.DefaultRV32Config.fir@123928.4]
  assign _T_346 = s1_req_addr[0]; // @[AMOALU.scala 17:27:freechips.rocketchip.system.DefaultRV32Config.fir@123920.4]
  assign _T_348 = s1_req_size >= 2'h1; // @[AMOALU.scala 17:57:freechips.rocketchip.system.DefaultRV32Config.fir@123922.4]
  assign _T_356 = s1_req_size >= 2'h2; // @[AMOALU.scala 17:57:freechips.rocketchip.system.DefaultRV32Config.fir@123930.4]
  assign _T_1135 = s1_mask_xwr[3]; // @[package.scala 160:50:freechips.rocketchip.system.DefaultRV32Config.fir@125031.4]
  assign _T_1134 = s1_mask_xwr[2]; // @[package.scala 160:50:freechips.rocketchip.system.DefaultRV32Config.fir@125030.4]
  assign _T_1133 = s1_mask_xwr[1]; // @[package.scala 160:50:freechips.rocketchip.system.DefaultRV32Config.fir@125029.4]
  assign _T_1132 = s1_mask_xwr[0]; // @[package.scala 160:50:freechips.rocketchip.system.DefaultRV32Config.fir@125028.4]
  assign _T_1142 = {_T_1135,_T_1134,_T_1133,_T_1132}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@125038.4]
  assign _T_1146 = _T_1142[3]; // @[Bitwise.scala 26:51:freechips.rocketchip.system.DefaultRV32Config.fir@125042.4]
  assign _T_1145 = _T_1142[2]; // @[Bitwise.scala 26:51:freechips.rocketchip.system.DefaultRV32Config.fir@125041.4]
  assign _T_1144 = _T_1142[1]; // @[Bitwise.scala 26:51:freechips.rocketchip.system.DefaultRV32Config.fir@125040.4]
  assign _T_1143 = _T_1142[0]; // @[Bitwise.scala 26:51:freechips.rocketchip.system.DefaultRV32Config.fir@125039.4]
  assign _T_1149 = {_T_1146,_T_1145,_T_1144,_T_1143}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@125045.4]
  assign _T_1150 = _T_1131 & _T_1149; // @[DCache.scala 459:38:freechips.rocketchip.system.DefaultRV32Config.fir@125046.4]
  assign _T_1151 = _T_1150 != 4'h0; // @[DCache.scala 459:66:freechips.rocketchip.system.DefaultRV32Config.fir@125047.4]
  assign _T_1152 = pstore1_mask & s1_mask_xwr; // @[DCache.scala 459:77:freechips.rocketchip.system.DefaultRV32Config.fir@125048.4]
  assign _T_1153 = _T_1152 != 4'h0; // @[DCache.scala 459:92:freechips.rocketchip.system.DefaultRV32Config.fir@125049.4]
  assign _T_1154 = s1_write ? _T_1151 : _T_1153; // @[DCache.scala 459:8:freechips.rocketchip.system.DefaultRV32Config.fir@125050.4]
  assign _T_1155 = _T_1113 & _T_1154; // @[DCache.scala 458:68:freechips.rocketchip.system.DefaultRV32Config.fir@125051.4]
  assign _T_1156 = pstore1_valid_likely & _T_1155; // @[DCache.scala 461:27:freechips.rocketchip.system.DefaultRV32Config.fir@125052.4]
  assign _T_1157 = pstore2_addr[11:2]; // @[DCache.scala 458:9:freechips.rocketchip.system.DefaultRV32Config.fir@125053.4]
  assign _T_1159 = _T_1157 == _T_1112; // @[DCache.scala 458:31:freechips.rocketchip.system.DefaultRV32Config.fir@125055.4]
  assign _T_1163 = mask[3]; // @[package.scala 160:50:freechips.rocketchip.system.DefaultRV32Config.fir@125059.4]
  assign _T_1162 = mask[2]; // @[package.scala 160:50:freechips.rocketchip.system.DefaultRV32Config.fir@125058.4]
  assign _T_1161 = mask[1]; // @[package.scala 160:50:freechips.rocketchip.system.DefaultRV32Config.fir@125057.4]
  assign _T_1160 = mask[0]; // @[package.scala 160:50:freechips.rocketchip.system.DefaultRV32Config.fir@125056.4]
  assign _T_1170 = {_T_1163,_T_1162,_T_1161,_T_1160}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@125066.4]
  assign _T_1174 = _T_1170[3]; // @[Bitwise.scala 26:51:freechips.rocketchip.system.DefaultRV32Config.fir@125070.4]
  assign _T_1173 = _T_1170[2]; // @[Bitwise.scala 26:51:freechips.rocketchip.system.DefaultRV32Config.fir@125069.4]
  assign _T_1172 = _T_1170[1]; // @[Bitwise.scala 26:51:freechips.rocketchip.system.DefaultRV32Config.fir@125068.4]
  assign _T_1171 = _T_1170[0]; // @[Bitwise.scala 26:51:freechips.rocketchip.system.DefaultRV32Config.fir@125067.4]
  assign _T_1177 = {_T_1174,_T_1173,_T_1172,_T_1171}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@125073.4]
  assign _T_1196 = _T_1177 & _T_1149; // @[DCache.scala 459:38:freechips.rocketchip.system.DefaultRV32Config.fir@125092.4]
  assign _T_1197 = _T_1196 != 4'h0; // @[DCache.scala 459:66:freechips.rocketchip.system.DefaultRV32Config.fir@125093.4]
  assign _T_1198 = mask & s1_mask_xwr; // @[DCache.scala 459:77:freechips.rocketchip.system.DefaultRV32Config.fir@125094.4]
  assign _T_1199 = _T_1198 != 4'h0; // @[DCache.scala 459:92:freechips.rocketchip.system.DefaultRV32Config.fir@125095.4]
  assign _T_1200 = s1_write ? _T_1197 : _T_1199; // @[DCache.scala 459:8:freechips.rocketchip.system.DefaultRV32Config.fir@125096.4]
  assign _T_1201 = _T_1159 & _T_1200; // @[DCache.scala 458:68:freechips.rocketchip.system.DefaultRV32Config.fir@125097.4]
  assign _T_1202 = pstore2_valid & _T_1201; // @[DCache.scala 462:21:freechips.rocketchip.system.DefaultRV32Config.fir@125098.4]
  assign _T_1203 = s1_valid & s1_raw_hazard; // @[DCache.scala 468:18:freechips.rocketchip.system.DefaultRV32Config.fir@125102.4]
  assign _T_378 = {io_cpu_s2_xcpt_ma_ld,io_cpu_s2_xcpt_ma_st,io_cpu_s2_xcpt_pf_ld,io_cpu_s2_xcpt_pf_st,io_cpu_s2_xcpt_ae_ld,io_cpu_s2_xcpt_ae_st}; // @[DCache.scala 258:54:freechips.rocketchip.system.DefaultRV32Config.fir@123960.4]
  assign _T_379 = _T_378 != 6'h0; // @[DCache.scala 258:61:freechips.rocketchip.system.DefaultRV32Config.fir@123961.4]
  assign _T_380 = _T_379 == 1'h0; // @[DCache.scala 258:38:freechips.rocketchip.system.DefaultRV32Config.fir@123962.4]
  assign _T_539 = s2_req_cmd == 5'h3; // @[Consts.scala 84:54:freechips.rocketchip.system.DefaultRV32Config.fir@124249.4]
  assign _T_540 = s2_write | _T_539; // @[Consts.scala 84:47:freechips.rocketchip.system.DefaultRV32Config.fir@124250.4]
  assign _T_544 = {s2_write,_T_542,s2_hit_state_state}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@124254.4]
  assign _T_602 = 4'h3 == _T_544; // @[Misc.scala 47:20:freechips.rocketchip.system.DefaultRV32Config.fir@124312.4]
  assign _T_599 = 4'h2 == _T_544; // @[Misc.scala 47:20:freechips.rocketchip.system.DefaultRV32Config.fir@124309.4]
  assign _T_596 = 4'h1 == _T_544; // @[Misc.scala 47:20:freechips.rocketchip.system.DefaultRV32Config.fir@124306.4]
  assign _T_593 = 4'h7 == _T_544; // @[Misc.scala 47:20:freechips.rocketchip.system.DefaultRV32Config.fir@124303.4]
  assign _T_590 = 4'h6 == _T_544; // @[Misc.scala 47:20:freechips.rocketchip.system.DefaultRV32Config.fir@124300.4]
  assign _T_587 = 4'hf == _T_544; // @[Misc.scala 47:20:freechips.rocketchip.system.DefaultRV32Config.fir@124297.4]
  assign _T_584 = 4'he == _T_544; // @[Misc.scala 47:20:freechips.rocketchip.system.DefaultRV32Config.fir@124294.4]
  assign _T_581 = 4'h0 == _T_544; // @[Misc.scala 47:20:freechips.rocketchip.system.DefaultRV32Config.fir@124291.4]
  assign _T_578 = 4'h5 == _T_544; // @[Misc.scala 47:20:freechips.rocketchip.system.DefaultRV32Config.fir@124288.4]
  assign _T_575 = 4'h4 == _T_544; // @[Misc.scala 47:20:freechips.rocketchip.system.DefaultRV32Config.fir@124285.4]
  assign _T_572 = 4'hd == _T_544; // @[Misc.scala 47:20:freechips.rocketchip.system.DefaultRV32Config.fir@124282.4]
  assign _T_569 = 4'hc == _T_544; // @[Misc.scala 47:20:freechips.rocketchip.system.DefaultRV32Config.fir@124279.4]
  assign _T_588 = _T_587 | _T_584; // @[Misc.scala 33:9:freechips.rocketchip.system.DefaultRV32Config.fir@124298.4]
  assign _T_591 = _T_590 | _T_588; // @[Misc.scala 33:9:freechips.rocketchip.system.DefaultRV32Config.fir@124301.4]
  assign _T_594 = _T_593 | _T_591; // @[Misc.scala 33:9:freechips.rocketchip.system.DefaultRV32Config.fir@124304.4]
  assign _T_597 = _T_596 | _T_594; // @[Misc.scala 33:9:freechips.rocketchip.system.DefaultRV32Config.fir@124307.4]
  assign _T_600 = _T_599 | _T_597; // @[Misc.scala 33:9:freechips.rocketchip.system.DefaultRV32Config.fir@124310.4]
  assign _T_396 = s2_req_cmd == 5'h0; // @[Consts.scala 82:31:freechips.rocketchip.system.DefaultRV32Config.fir@123999.4]
  assign _T_398 = _T_396 | _T_541; // @[Consts.scala 82:41:freechips.rocketchip.system.DefaultRV32Config.fir@124001.4]
  assign _T_400 = _T_398 | _T_421; // @[Consts.scala 82:58:freechips.rocketchip.system.DefaultRV32Config.fir@124003.4]
  assign _T_571 = _T_569 ? 2'h1 : 2'h0; // @[Misc.scala 33:36:freechips.rocketchip.system.DefaultRV32Config.fir@124281.4]
  assign _T_574 = _T_572 ? 2'h2 : _T_571; // @[Misc.scala 33:36:freechips.rocketchip.system.DefaultRV32Config.fir@124284.4]
  assign _T_577 = _T_575 ? 2'h1 : _T_574; // @[Misc.scala 33:36:freechips.rocketchip.system.DefaultRV32Config.fir@124287.4]
  assign _T_580 = _T_578 ? 2'h2 : _T_577; // @[Misc.scala 33:36:freechips.rocketchip.system.DefaultRV32Config.fir@124290.4]
  assign _T_583 = _T_581 ? 2'h0 : _T_580; // @[Misc.scala 33:36:freechips.rocketchip.system.DefaultRV32Config.fir@124293.4]
  assign _T_586 = _T_584 ? 2'h3 : _T_583; // @[Misc.scala 33:36:freechips.rocketchip.system.DefaultRV32Config.fir@124296.4]
  assign _T_589 = _T_587 ? 2'h3 : _T_586; // @[Misc.scala 33:36:freechips.rocketchip.system.DefaultRV32Config.fir@124299.4]
  assign _T_592 = _T_590 ? 2'h2 : _T_589; // @[Misc.scala 33:36:freechips.rocketchip.system.DefaultRV32Config.fir@124302.4]
  assign _T_595 = _T_593 ? 2'h3 : _T_592; // @[Misc.scala 33:36:freechips.rocketchip.system.DefaultRV32Config.fir@124305.4]
  assign _T_598 = _T_596 ? 2'h1 : _T_595; // @[Misc.scala 33:36:freechips.rocketchip.system.DefaultRV32Config.fir@124308.4]
  assign _T_601 = _T_599 ? 2'h2 : _T_598; // @[Misc.scala 33:36:freechips.rocketchip.system.DefaultRV32Config.fir@124311.4]
  assign _T_781 = s2_hit_state_state == s2_grow_param; // @[Metadata.scala 46:46:freechips.rocketchip.system.DefaultRV32Config.fir@124535.4]
  assign _T_800 = s2_valid_hit_pre_data_ecc_and_waw & s2_update_meta; // @[DCache.scala 347:62:freechips.rocketchip.system.DefaultRV32Config.fir@124558.4]
  assign _T_801 = io_cpu_s2_nack | _T_800; // @[DCache.scala 347:24:freechips.rocketchip.system.DefaultRV32Config.fir@124559.4]
  assign _T_102 = s1_req_cmd == 5'h5; // @[DCache.scala 163:34:freechips.rocketchip.system.DefaultRV32Config.fir@123522.4]
  assign _T_103 = s1_req_size[0]; // @[DCache.scala 163:64:freechips.rocketchip.system.DefaultRV32Config.fir@123523.4]
  assign _T_256 = s1_readwrite | s1_flush_line; // @[DCache.scala 207:38:freechips.rocketchip.system.DefaultRV32Config.fir@123733.4]
  assign _T_257 = s1_req_cmd == 5'h17; // @[DCache.scala 207:69:freechips.rocketchip.system.DefaultRV32Config.fir@123734.4]
  assign _T_266 = s1_valid & s1_cmd_uses_tlb; // @[DCache.scala 216:18:freechips.rocketchip.system.DefaultRV32Config.fir@123754.4]
  assign _T_267 = _T_266 & tlb_io_resp_miss; // @[DCache.scala 216:37:freechips.rocketchip.system.DefaultRV32Config.fir@123755.4]
  assign _GEN_93 = _T_801 | _T_267; // @[DCache.scala 347:82:freechips.rocketchip.system.DefaultRV32Config.fir@124560.4]
  assign _GEN_250 = probeNack | _GEN_113; // @[DCache.scala 690:24:freechips.rocketchip.system.DefaultRV32Config.fir@126648.6]
  assign _T_53 = metaArb_io_out_bits_write == 1'h0; // @[DCache.scala 153:43:freechips.rocketchip.system.DefaultRV32Config.fir@123461.4]
  assign _T_54 = metaArb_io_out_bits_addr[31:6]; // @[DCache.scala 156:49:freechips.rocketchip.system.DefaultRV32Config.fir@123465.6]
  assign _T_55 = io_cpu_req_bits_addr[5:0]; // @[DCache.scala 156:86:freechips.rocketchip.system.DefaultRV32Config.fir@123466.6]
  assign _T_56 = {_T_54,_T_55}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@123467.6]
  assign _GEN_8 = _T_57 | io_cpu_req_bits_phys; // @[DCache.scala 157:36:freechips.rocketchip.system.DefaultRV32Config.fir@123470.6]
  assign _T_108 = cached_grant_wait == 1'h0; // @[DCache.scala 180:54:freechips.rocketchip.system.DefaultRV32Config.fir@123545.4]
  assign _T_109 = _T_107 & _T_108; // @[DCache.scala 180:51:freechips.rocketchip.system.DefaultRV32Config.fir@123546.4]
  assign _T_111 = _T_109 & _T_52; // @[DCache.scala 180:73:freechips.rocketchip.system.DefaultRV32Config.fir@123548.4]
  assign _T_113 = io_cpu_req_bits_cmd == 5'h0; // @[Consts.scala 82:31:freechips.rocketchip.system.DefaultRV32Config.fir@123558.4]
  assign _T_114 = io_cpu_req_bits_cmd == 5'h6; // @[Consts.scala 82:48:freechips.rocketchip.system.DefaultRV32Config.fir@123559.4]
  assign _T_115 = _T_113 | _T_114; // @[Consts.scala 82:41:freechips.rocketchip.system.DefaultRV32Config.fir@123560.4]
  assign _T_117 = _T_115 | _T_116; // @[Consts.scala 82:58:freechips.rocketchip.system.DefaultRV32Config.fir@123562.4]
  assign _T_118 = io_cpu_req_bits_cmd == 5'h4; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@123563.4]
  assign _T_119 = io_cpu_req_bits_cmd == 5'h9; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@123564.4]
  assign _T_120 = io_cpu_req_bits_cmd == 5'ha; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@123565.4]
  assign _T_121 = io_cpu_req_bits_cmd == 5'hb; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@123566.4]
  assign _T_122 = _T_118 | _T_119; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@123567.4]
  assign _T_123 = _T_122 | _T_120; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@123568.4]
  assign _T_124 = _T_123 | _T_121; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@123569.4]
  assign _T_125 = io_cpu_req_bits_cmd == 5'h8; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@123570.4]
  assign _T_126 = io_cpu_req_bits_cmd == 5'hc; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@123571.4]
  assign _T_127 = io_cpu_req_bits_cmd == 5'hd; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@123572.4]
  assign _T_128 = io_cpu_req_bits_cmd == 5'he; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@123573.4]
  assign _T_129 = io_cpu_req_bits_cmd == 5'hf; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@123574.4]
  assign _T_130 = _T_125 | _T_126; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@123575.4]
  assign _T_131 = _T_130 | _T_127; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@123576.4]
  assign _T_132 = _T_131 | _T_128; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@123577.4]
  assign _T_133 = _T_132 | _T_129; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@123578.4]
  assign _T_136 = io_cpu_req_bits_cmd == 5'h3; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@123582.4]
  assign _T_137 = _T_135 | _T_136; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@123583.4]
  assign _T_165 = _T_135 | _T_164; // @[Consts.scala 83:42:freechips.rocketchip.system.DefaultRV32Config.fir@123612.4]
  assign _T_167 = _T_165 | _T_116; // @[Consts.scala 83:59:freechips.rocketchip.system.DefaultRV32Config.fir@123614.4]
  assign _T_185 = _T_167 | _T_134; // @[Consts.scala 83:76:freechips.rocketchip.system.DefaultRV32Config.fir@123632.4]
  assign _T_189 = _T_185 & _T_164; // @[DCache.scala 1013:23:freechips.rocketchip.system.DefaultRV32Config.fir@123636.4]
  assign _T_190 = s0_read | _T_189; // @[DCache.scala 1012:21:freechips.rocketchip.system.DefaultRV32Config.fir@123637.4]
  assign _T_191 = _T_190 == 1'h0; // @[DCache.scala 1008:12:freechips.rocketchip.system.DefaultRV32Config.fir@123638.4]
  assign _T_192 = _T_191 | res; // @[DCache.scala 1008:28:freechips.rocketchip.system.DefaultRV32Config.fir@123639.4]
  assign _T_194 = _T_192 | reset; // @[DCache.scala 1008:11:freechips.rocketchip.system.DefaultRV32Config.fir@123641.4]
  assign _T_196 = io_cpu_req_valid & res; // @[DCache.scala 189:46:freechips.rocketchip.system.DefaultRV32Config.fir@123647.4]
  assign _T_199 = dataArb_io_in_3_ready == 1'h0; // @[DCache.scala 195:9:freechips.rocketchip.system.DefaultRV32Config.fir@123656.4]
  assign _T_200 = _T_199 & s0_read; // @[DCache.scala 195:33:freechips.rocketchip.system.DefaultRV32Config.fir@123657.4]
  assign _GEN_19 = _T_200 ? 1'h0 : _T_111; // @[DCache.scala 195:45:freechips.rocketchip.system.DefaultRV32Config.fir@123658.4]
  assign _T_252 = io_cpu_req_valid & _T_190; // @[DCache.scala 196:75:freechips.rocketchip.system.DefaultRV32Config.fir@123712.4]
  assign _T_253 = dataArb_io_in_3_ready & _T_252; // @[DCache.scala 196:54:freechips.rocketchip.system.DefaultRV32Config.fir@123713.4]
  assign _GEN_21 = _T_57 ? 1'h0 : _GEN_19; // @[DCache.scala 203:34:freechips.rocketchip.system.DefaultRV32Config.fir@123726.4]
  assign _T_261 = tlb_io_req_ready == 1'h0; // @[DCache.scala 215:9:freechips.rocketchip.system.DefaultRV32Config.fir@123746.4]
  assign _T_262 = tlb_io_ptw_resp_valid == 1'h0; // @[DCache.scala 215:30:freechips.rocketchip.system.DefaultRV32Config.fir@123747.4]
  assign _T_263 = _T_261 & _T_262; // @[DCache.scala 215:27:freechips.rocketchip.system.DefaultRV32Config.fir@123748.4]
  assign _T_264 = io_cpu_req_bits_phys == 1'h0; // @[DCache.scala 215:56:freechips.rocketchip.system.DefaultRV32Config.fir@123749.4]
  assign _T_265 = _T_263 & _T_264; // @[DCache.scala 215:53:freechips.rocketchip.system.DefaultRV32Config.fir@123750.4]
  assign _T_274 = metaArb_io_out_valid & metaArb_io_out_bits_write; // @[DCache.scala 236:27:freechips.rocketchip.system.DefaultRV32Config.fir@123773.4]
  assign _GEN_32 = metaArb_io_out_bits_idx; // @[DCache.scala 236:50:freechips.rocketchip.system.DefaultRV32Config.fir@123774.4]
  assign _T_282 = tag_array_RW0_rdata_0; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123812.4 :freechips.rocketchip.system.DefaultRV32Config.fir@123814.4]
  assign _T_285 = tag_array_RW0_rdata_1; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123821.4 :freechips.rocketchip.system.DefaultRV32Config.fir@123823.4]
  assign _T_288 = tag_array_RW0_rdata_2; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123830.4 :freechips.rocketchip.system.DefaultRV32Config.fir@123832.4]
  assign _T_291 = tag_array_RW0_rdata_3; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123839.4 :freechips.rocketchip.system.DefaultRV32Config.fir@123841.4]
  assign _T_294 = s1_meta_uncorrected_0_coh_state > 2'h0; // @[Metadata.scala 50:45:freechips.rocketchip.system.DefaultRV32Config.fir@123847.4]
  assign _T_295 = s1_meta_uncorrected_0_tag == s1_tag; // @[DCache.scala 243:83:freechips.rocketchip.system.DefaultRV32Config.fir@123848.4]
  assign _T_296 = _T_294 & _T_295; // @[DCache.scala 243:74:freechips.rocketchip.system.DefaultRV32Config.fir@123849.4]
  assign _T_297 = s1_meta_uncorrected_1_coh_state > 2'h0; // @[Metadata.scala 50:45:freechips.rocketchip.system.DefaultRV32Config.fir@123850.4]
  assign _T_298 = s1_meta_uncorrected_1_tag == s1_tag; // @[DCache.scala 243:83:freechips.rocketchip.system.DefaultRV32Config.fir@123851.4]
  assign _T_299 = _T_297 & _T_298; // @[DCache.scala 243:74:freechips.rocketchip.system.DefaultRV32Config.fir@123852.4]
  assign _T_300 = s1_meta_uncorrected_2_coh_state > 2'h0; // @[Metadata.scala 50:45:freechips.rocketchip.system.DefaultRV32Config.fir@123853.4]
  assign _T_301 = s1_meta_uncorrected_2_tag == s1_tag; // @[DCache.scala 243:83:freechips.rocketchip.system.DefaultRV32Config.fir@123854.4]
  assign _T_302 = _T_300 & _T_301; // @[DCache.scala 243:74:freechips.rocketchip.system.DefaultRV32Config.fir@123855.4]
  assign _T_303 = s1_meta_uncorrected_3_coh_state > 2'h0; // @[Metadata.scala 50:45:freechips.rocketchip.system.DefaultRV32Config.fir@123856.4]
  assign _T_304 = s1_meta_uncorrected_3_tag == s1_tag; // @[DCache.scala 243:83:freechips.rocketchip.system.DefaultRV32Config.fir@123857.4]
  assign _T_305 = _T_303 & _T_304; // @[DCache.scala 243:74:freechips.rocketchip.system.DefaultRV32Config.fir@123858.4]
  assign _T_311 = _T_295 & _T_310; // @[DCache.scala 245:59:freechips.rocketchip.system.DefaultRV32Config.fir@123867.4]
  assign _T_312 = _T_311 ? s1_meta_uncorrected_0_coh_state : 2'h0; // @[DCache.scala 245:41:freechips.rocketchip.system.DefaultRV32Config.fir@123868.4]
  assign _T_315 = _T_298 & _T_310; // @[DCache.scala 245:59:freechips.rocketchip.system.DefaultRV32Config.fir@123871.4]
  assign _T_316 = _T_315 ? s1_meta_uncorrected_1_coh_state : 2'h0; // @[DCache.scala 245:41:freechips.rocketchip.system.DefaultRV32Config.fir@123872.4]
  assign _T_319 = _T_301 & _T_310; // @[DCache.scala 245:59:freechips.rocketchip.system.DefaultRV32Config.fir@123875.4]
  assign _T_320 = _T_319 ? s1_meta_uncorrected_2_coh_state : 2'h0; // @[DCache.scala 245:41:freechips.rocketchip.system.DefaultRV32Config.fir@123876.4]
  assign _T_323 = _T_304 & _T_310; // @[DCache.scala 245:59:freechips.rocketchip.system.DefaultRV32Config.fir@123879.4]
  assign _T_324 = _T_323 ? s1_meta_uncorrected_3_coh_state : 2'h0; // @[DCache.scala 245:41:freechips.rocketchip.system.DefaultRV32Config.fir@123880.4]
  assign _T_325 = _T_312 | _T_316; // @[DCache.scala 246:19:freechips.rocketchip.system.DefaultRV32Config.fir@123881.4]
  assign _T_326 = _T_325 | _T_320; // @[DCache.scala 246:19:freechips.rocketchip.system.DefaultRV32Config.fir@123882.4]
  assign _T_332 = s1_victim_way == 2'h1; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@123893.4]
  assign _T_334 = s1_victim_way == 2'h2; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@123895.4]
  assign _T_336 = s1_victim_way == 2'h3; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@123897.4]
  assign _T_338 = auto_out_d_bits_data[7:0]; // @[package.scala 160:50:freechips.rocketchip.system.DefaultRV32Config.fir@123903.4]
  assign _T_339 = auto_out_d_bits_data[15:8]; // @[package.scala 160:50:freechips.rocketchip.system.DefaultRV32Config.fir@123904.4]
  assign _T_340 = auto_out_d_bits_data[23:16]; // @[package.scala 160:50:freechips.rocketchip.system.DefaultRV32Config.fir@123905.4]
  assign _T_341 = auto_out_d_bits_data[31:24]; // @[package.scala 160:50:freechips.rocketchip.system.DefaultRV32Config.fir@123906.4]
  assign _T_342 = {_T_339,_T_338}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@123907.4]
  assign _T_343 = {_T_341,_T_340}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@123908.4]
  assign _T_344 = {_T_341,_T_340,_T_339,_T_338}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@123909.4]
  assign _T_363 = s1_valid_masked & _T_81; // @[DCache.scala 255:28:freechips.rocketchip.system.DefaultRV32Config.fir@123939.4]
  assign _T_364 = _T_363 == 1'h0; // @[DCache.scala 255:10:freechips.rocketchip.system.DefaultRV32Config.fir@123940.4]
  assign _T_365 = ~ io_cpu_s1_data_mask; // @[DCache.scala 255:71:freechips.rocketchip.system.DefaultRV32Config.fir@123941.4]
  assign _T_366 = s1_mask_xwr | _T_365; // @[DCache.scala 255:69:freechips.rocketchip.system.DefaultRV32Config.fir@123942.4]
  assign _T_367 = _T_366 == 4'hf; // @[DCache.scala 255:93:freechips.rocketchip.system.DefaultRV32Config.fir@123943.4]
  assign _T_368 = _T_364 | _T_367; // @[DCache.scala 255:53:freechips.rocketchip.system.DefaultRV32Config.fir@123944.4]
  assign _T_370 = _T_368 | reset; // @[DCache.scala 255:9:freechips.rocketchip.system.DefaultRV32Config.fir@123946.4]
  assign _T_372 = s1_sfence == 1'h0; // @[DCache.scala 257:46:freechips.rocketchip.system.DefaultRV32Config.fir@123952.4]
  assign _T_373 = s1_valid_masked & _T_372; // @[DCache.scala 257:43:freechips.rocketchip.system.DefaultRV32Config.fir@123953.4]
  assign _T_386 = s2_req_cmd == 5'h5; // @[DCache.scala 264:37:freechips.rocketchip.system.DefaultRV32Config.fir@123976.4]
  assign _T_387 = s2_req_size[0]; // @[DCache.scala 264:68:freechips.rocketchip.system.DefaultRV32Config.fir@123977.4]
  assign _T_394 = _T_393[31:12]; // @[DCache.scala 273:84:freechips.rocketchip.system.DefaultRV32Config.fir@123996.4]
  assign _T_395 = s2_req_addr[11:0]; // @[DCache.scala 273:109:freechips.rocketchip.system.DefaultRV32Config.fir@123997.4]
  assign _T_471 = s1_valid | inWriteback; // @[DCache.scala 288:23:freechips.rocketchip.system.DefaultRV32Config.fir@124145.4]
  assign _T_472 = s1_did_read == 1'h0; // @[DCache.scala 289:64:freechips.rocketchip.system.DefaultRV32Config.fir@124147.4]
  assign _T_473 = _T_472 ? 1'h0 : 1'h1; // @[DCache.scala 289:63:freechips.rocketchip.system.DefaultRV32Config.fir@124148.4]
  assign _T_474 = io_cpu_replay_next == 1'h0; // @[DCache.scala 299:28:freechips.rocketchip.system.DefaultRV32Config.fir@124155.4]
  assign _T_2343 = blockUncachedGrant | s1_valid; // @[DCache.scala 627:54:freechips.rocketchip.system.DefaultRV32Config.fir@126483.4]
  assign _T_2211 = auto_out_d_bits_opcode == 3'h4; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@126264.4]
  assign _T_2219 = d_first == 1'h0; // @[DCache.scala 546:41:freechips.rocketchip.system.DefaultRV32Config.fir@126281.4]
  assign _T_2220 = _T_2219 | auto_out_e_ready; // @[DCache.scala 546:50:freechips.rocketchip.system.DefaultRV32Config.fir@126282.4]
  assign _T_2221 = _T_2220 & canAcceptCachedGrant; // @[DCache.scala 546:69:freechips.rocketchip.system.DefaultRV32Config.fir@126283.4]
  assign _T_2222 = grantIsCached ? _T_2221 : 1'h1; // @[DCache.scala 546:24:freechips.rocketchip.system.DefaultRV32Config.fir@126284.4]
  assign _T_2199 = auto_out_d_bits_opcode == 3'h0; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@126249.4]
  assign _T_2201 = grantIsUncachedData | _T_2199; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@126251.4]
  assign _T_2200 = auto_out_d_bits_opcode == 3'h2; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@126250.4]
  assign _GEN_156 = grantIsUncachedData ? 5'h10 : {{1'd0}, _T_337}; // @[DCache.scala 566:34:freechips.rocketchip.system.DefaultRV32Config.fir@126324.10]
  assign _GEN_165 = grantIsUncached ? _GEN_156 : {{1'd0}, _T_337}; // @[DCache.scala 559:35:freechips.rocketchip.system.DefaultRV32Config.fir@126311.8]
  assign _GEN_178 = grantIsCached ? {{1'd0}, _T_337} : _GEN_165; // @[DCache.scala 550:26:freechips.rocketchip.system.DefaultRV32Config.fir@126294.6]
  assign _T_476 = s1_word_en ? s1_data_way : 5'h0; // @[DCache.scala 301:28:freechips.rocketchip.system.DefaultRV32Config.fir@124158.4]
  assign _T_477 = _T_476[0]; // @[Mux.scala 29:36:freechips.rocketchip.system.DefaultRV32Config.fir@124159.4]
  assign _T_478 = _T_476[1]; // @[Mux.scala 29:36:freechips.rocketchip.system.DefaultRV32Config.fir@124160.4]
  assign _T_479 = _T_476[2]; // @[Mux.scala 29:36:freechips.rocketchip.system.DefaultRV32Config.fir@124161.4]
  assign _T_480 = _T_476[3]; // @[Mux.scala 29:36:freechips.rocketchip.system.DefaultRV32Config.fir@124162.4]
  assign _T_481 = _T_476[4]; // @[Mux.scala 29:36:freechips.rocketchip.system.DefaultRV32Config.fir@124163.4]
  assign _T_482 = _T_477 ? s1_all_data_ways_0 : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@124164.4]
  assign _T_483 = _T_478 ? s1_all_data_ways_1 : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@124165.4]
  assign _T_484 = _T_479 ? s1_all_data_ways_2 : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@124166.4]
  assign _T_485 = _T_480 ? s1_all_data_ways_3 : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@124167.4]
  assign _T_486 = _T_481 ? _T_344 : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@124168.4]
  assign _T_487 = _T_482 | _T_483; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@124169.4]
  assign _T_488 = _T_487 | _T_484; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@124170.4]
  assign _T_489 = _T_488 | _T_485; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@124171.4]
  assign _T_603 = s2_data[7:0]; // @[package.scala 160:50:freechips.rocketchip.system.DefaultRV32Config.fir@124318.4]
  assign _T_604 = s2_data[15:8]; // @[package.scala 160:50:freechips.rocketchip.system.DefaultRV32Config.fir@124319.4]
  assign _T_605 = s2_data[23:16]; // @[package.scala 160:50:freechips.rocketchip.system.DefaultRV32Config.fir@124320.4]
  assign _T_606 = s2_data[31:24]; // @[package.scala 160:50:freechips.rocketchip.system.DefaultRV32Config.fir@124321.4]
  assign _T_615 = {_T_604,_T_603}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@124332.4]
  assign _T_616 = {_T_606,_T_605}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@124333.4]
  assign _T_621 = s2_valid_hit_maybe_flush_pre_data_ecc_and_waw & s2_cmd_flush_line; // @[DCache.scala 321:75:freechips.rocketchip.system.DefaultRV32Config.fir@124342.4]
  assign _T_626 = s2_valid_masked & s2_readwrite; // @[DCache.scala 325:39:freechips.rocketchip.system.DefaultRV32Config.fir@124351.4]
  assign _T_629 = s2_hit == 1'h0; // @[DCache.scala 325:76:freechips.rocketchip.system.DefaultRV32Config.fir@124354.4]
  assign _T_630 = _T_626 & _T_629; // @[DCache.scala 325:73:freechips.rocketchip.system.DefaultRV32Config.fir@124355.4]
  assign _T_637 = s2_valid_miss & _T_636; // @[DCache.scala 327:44:freechips.rocketchip.system.DefaultRV32Config.fir@124364.4]
  assign _T_640 = s2_valid_cached_miss | s2_valid_flush_line; // @[DCache.scala 329:79:freechips.rocketchip.system.DefaultRV32Config.fir@124368.4]
  assign _T_645 = s2_valid_miss & s2_uncached; // @[DCache.scala 332:49:freechips.rocketchip.system.DefaultRV32Config.fir@124376.4]
  assign _T_652 = s2_req_addr[31:12]; // @[DCache.scala 334:82:freechips.rocketchip.system.DefaultRV32Config.fir@124388.4]
  assign _T_672 = _T_670 ? 3'h5 : 3'h0; // @[Misc.scala 36:36:freechips.rocketchip.system.DefaultRV32Config.fir@124416.4]
  assign _T_676 = _T_674 ? 3'h2 : _T_672; // @[Misc.scala 36:36:freechips.rocketchip.system.DefaultRV32Config.fir@124420.4]
  assign _T_680 = _T_678 ? 3'h1 : _T_676; // @[Misc.scala 36:36:freechips.rocketchip.system.DefaultRV32Config.fir@124424.4]
  assign _T_684 = _T_682 ? 3'h1 : _T_680; // @[Misc.scala 36:36:freechips.rocketchip.system.DefaultRV32Config.fir@124428.4]
  assign _T_688 = _T_686 ? 3'h5 : _T_684; // @[Misc.scala 36:36:freechips.rocketchip.system.DefaultRV32Config.fir@124432.4]
  assign _T_692 = _T_690 ? 3'h4 : _T_688; // @[Misc.scala 36:36:freechips.rocketchip.system.DefaultRV32Config.fir@124436.4]
  assign _T_693 = _T_690 ? 2'h1 : 2'h0; // @[Misc.scala 36:63:freechips.rocketchip.system.DefaultRV32Config.fir@124437.4]
  assign _T_696 = _T_694 ? 3'h0 : _T_692; // @[Misc.scala 36:36:freechips.rocketchip.system.DefaultRV32Config.fir@124440.4]
  assign _T_697 = _T_694 ? 2'h1 : _T_693; // @[Misc.scala 36:63:freechips.rocketchip.system.DefaultRV32Config.fir@124441.4]
  assign _T_700 = _T_698 ? 3'h0 : _T_696; // @[Misc.scala 36:36:freechips.rocketchip.system.DefaultRV32Config.fir@124444.4]
  assign _T_701 = _T_698 ? 2'h1 : _T_697; // @[Misc.scala 36:63:freechips.rocketchip.system.DefaultRV32Config.fir@124445.4]
  assign _T_704 = _T_702 ? 3'h5 : _T_700; // @[Misc.scala 36:36:freechips.rocketchip.system.DefaultRV32Config.fir@124448.4]
  assign _T_705 = _T_702 ? 2'h0 : _T_701; // @[Misc.scala 36:63:freechips.rocketchip.system.DefaultRV32Config.fir@124449.4]
  assign _T_708 = _T_706 ? 3'h4 : _T_704; // @[Misc.scala 36:36:freechips.rocketchip.system.DefaultRV32Config.fir@124452.4]
  assign _T_709 = _T_706 ? 2'h1 : _T_705; // @[Misc.scala 36:63:freechips.rocketchip.system.DefaultRV32Config.fir@124453.4]
  assign _T_712 = _T_710 ? 3'h3 : _T_708; // @[Misc.scala 36:36:freechips.rocketchip.system.DefaultRV32Config.fir@124456.4]
  assign _T_713 = _T_710 ? 2'h2 : _T_709; // @[Misc.scala 36:63:freechips.rocketchip.system.DefaultRV32Config.fir@124457.4]
  assign _T_735 = 4'h8 == _T_722; // @[Misc.scala 54:20:freechips.rocketchip.system.DefaultRV32Config.fir@124484.4]
  assign _T_737 = _T_735 ? 3'h5 : 3'h0; // @[Misc.scala 36:36:freechips.rocketchip.system.DefaultRV32Config.fir@124486.4]
  assign _T_739 = 4'h9 == _T_722; // @[Misc.scala 54:20:freechips.rocketchip.system.DefaultRV32Config.fir@124488.4]
  assign _T_741 = _T_739 ? 3'h2 : _T_737; // @[Misc.scala 36:36:freechips.rocketchip.system.DefaultRV32Config.fir@124490.4]
  assign _T_743 = 4'ha == _T_722; // @[Misc.scala 54:20:freechips.rocketchip.system.DefaultRV32Config.fir@124492.4]
  assign _T_745 = _T_743 ? 3'h1 : _T_741; // @[Misc.scala 36:36:freechips.rocketchip.system.DefaultRV32Config.fir@124494.4]
  assign _T_749 = _T_747 ? 3'h1 : _T_745; // @[Misc.scala 36:36:freechips.rocketchip.system.DefaultRV32Config.fir@124498.4]
  assign _T_752 = _T_751 ? 1'h0 : _T_747; // @[Misc.scala 36:9:freechips.rocketchip.system.DefaultRV32Config.fir@124501.4]
  assign _T_753 = _T_751 ? 3'h5 : _T_749; // @[Misc.scala 36:36:freechips.rocketchip.system.DefaultRV32Config.fir@124502.4]
  assign _T_756 = _T_755 ? 1'h0 : _T_752; // @[Misc.scala 36:9:freechips.rocketchip.system.DefaultRV32Config.fir@124505.4]
  assign _T_757 = _T_755 ? 3'h4 : _T_753; // @[Misc.scala 36:36:freechips.rocketchip.system.DefaultRV32Config.fir@124506.4]
  assign _T_758 = _T_755 ? 2'h1 : 2'h0; // @[Misc.scala 36:63:freechips.rocketchip.system.DefaultRV32Config.fir@124507.4]
  assign _T_760 = _T_759 ? 1'h0 : _T_756; // @[Misc.scala 36:9:freechips.rocketchip.system.DefaultRV32Config.fir@124509.4]
  assign _T_761 = _T_759 ? 3'h0 : _T_757; // @[Misc.scala 36:36:freechips.rocketchip.system.DefaultRV32Config.fir@124510.4]
  assign _T_762 = _T_759 ? 2'h1 : _T_758; // @[Misc.scala 36:63:freechips.rocketchip.system.DefaultRV32Config.fir@124511.4]
  assign _T_764 = _T_763 | _T_760; // @[Misc.scala 36:9:freechips.rocketchip.system.DefaultRV32Config.fir@124513.4]
  assign _T_765 = _T_763 ? 3'h0 : _T_761; // @[Misc.scala 36:36:freechips.rocketchip.system.DefaultRV32Config.fir@124514.4]
  assign _T_766 = _T_763 ? 2'h1 : _T_762; // @[Misc.scala 36:63:freechips.rocketchip.system.DefaultRV32Config.fir@124515.4]
  assign _T_768 = _T_767 ? 1'h0 : _T_764; // @[Misc.scala 36:9:freechips.rocketchip.system.DefaultRV32Config.fir@124517.4]
  assign _T_769 = _T_767 ? 3'h5 : _T_765; // @[Misc.scala 36:36:freechips.rocketchip.system.DefaultRV32Config.fir@124518.4]
  assign _T_770 = _T_767 ? 2'h0 : _T_766; // @[Misc.scala 36:63:freechips.rocketchip.system.DefaultRV32Config.fir@124519.4]
  assign _T_772 = _T_771 ? 1'h0 : _T_768; // @[Misc.scala 36:9:freechips.rocketchip.system.DefaultRV32Config.fir@124521.4]
  assign _T_773 = _T_771 ? 3'h4 : _T_769; // @[Misc.scala 36:36:freechips.rocketchip.system.DefaultRV32Config.fir@124522.4]
  assign _T_774 = _T_771 ? 2'h1 : _T_770; // @[Misc.scala 36:63:freechips.rocketchip.system.DefaultRV32Config.fir@124523.4]
  assign _T_776 = _T_775 ? 1'h0 : _T_772; // @[Misc.scala 36:9:freechips.rocketchip.system.DefaultRV32Config.fir@124525.4]
  assign _T_777 = _T_775 ? 3'h3 : _T_773; // @[Misc.scala 36:36:freechips.rocketchip.system.DefaultRV32Config.fir@124526.4]
  assign _T_778 = _T_775 ? 2'h2 : _T_774; // @[Misc.scala 36:63:freechips.rocketchip.system.DefaultRV32Config.fir@124527.4]
  assign _T_792 = s2_req_cmd == 5'h17; // @[DCache.scala 345:17:freechips.rocketchip.system.DefaultRV32Config.fir@124548.4]
  assign _T_794 = s2_dont_nack_uncached == 1'h0; // @[DCache.scala 346:41:freechips.rocketchip.system.DefaultRV32Config.fir@124551.4]
  assign _T_795 = s2_valid_no_xcpt & _T_794; // @[DCache.scala 346:38:freechips.rocketchip.system.DefaultRV32Config.fir@124552.4]
  assign _T_796 = s2_dont_nack_misc == 1'h0; // @[DCache.scala 346:67:freechips.rocketchip.system.DefaultRV32Config.fir@124553.4]
  assign _T_797 = _T_795 & _T_796; // @[DCache.scala 346:64:freechips.rocketchip.system.DefaultRV32Config.fir@124554.4]
  assign _T_798 = s2_valid_hit_pre_data_ecc_and_waw == 1'h0; // @[DCache.scala 346:89:freechips.rocketchip.system.DefaultRV32Config.fir@124555.4]
  assign _T_821 = probe_bits_address[11:6]; // @[DCache.scala 1022:47:freechips.rocketchip.system.DefaultRV32Config.fir@124586.4]
  assign _T_824 = io_cpu_req_bits_addr[31:12]; // @[DCache.scala 355:58:freechips.rocketchip.system.DefaultRV32Config.fir@124590.4]
  assign _T_835 = s2_vaddr[11:0]; // @[DCache.scala 367:80:freechips.rocketchip.system.DefaultRV32Config.fir@124615.4]
  assign _T_837 = s2_req_addr[31:12]; // @[DCache.scala 368:68:freechips.rocketchip.system.DefaultRV32Config.fir@124618.4]
  assign _T_843 = lrscValid == 1'h0; // @[DCache.scala 375:41:freechips.rocketchip.system.DefaultRV32Config.fir@124632.4]
  assign _T_844 = s2_req_addr[31:6]; // @[DCache.scala 377:49:freechips.rocketchip.system.DefaultRV32Config.fir@124635.4]
  assign _T_845 = lrscValid & lrscAddrMatch; // @[DCache.scala 378:41:freechips.rocketchip.system.DefaultRV32Config.fir@124637.4]
  assign _T_846 = _T_845 == 1'h0; // @[DCache.scala 378:29:freechips.rocketchip.system.DefaultRV32Config.fir@124638.4]
  assign _T_847 = s2_valid_hit_pre_data_ecc_and_waw & _T_541; // @[DCache.scala 379:23:freechips.rocketchip.system.DefaultRV32Config.fir@124640.4]
  assign _T_849 = _T_847 & _T_108; // @[DCache.scala 379:32:freechips.rocketchip.system.DefaultRV32Config.fir@124642.4]
  assign _T_857 = lrscCount - 7'h1; // @[DCache.scala 383:49:freechips.rocketchip.system.DefaultRV32Config.fir@124655.6]
  assign _T_858 = s2_valid_masked & lrscValid; // @[DCache.scala 384:29:freechips.rocketchip.system.DefaultRV32Config.fir@124658.4]
  assign _T_920 = s1_write & _T_81; // @[DCache.scala 1013:23:freechips.rocketchip.system.DefaultRV32Config.fir@124752.4]
  assign _T_921 = s1_read | _T_920; // @[DCache.scala 1012:21:freechips.rocketchip.system.DefaultRV32Config.fir@124753.4]
  assign _T_926 = s2_sc_fail == 1'h0; // @[DCache.scala 391:61:freechips.rocketchip.system.DefaultRV32Config.fir@124763.4]
  assign _T_927 = _T_925 & _T_926; // @[DCache.scala 391:58:freechips.rocketchip.system.DefaultRV32Config.fir@124764.4]
  assign _T_1003 = pstore1_valid_likely & pstore2_valid; // @[DCache.scala 410:54:freechips.rocketchip.system.DefaultRV32Config.fir@124854.4]
  assign _T_1004 = s1_valid & s1_write; // @[DCache.scala 410:85:freechips.rocketchip.system.DefaultRV32Config.fir@124855.4]
  assign _T_1005 = _T_1004 | pstore1_rmw; // @[DCache.scala 410:98:freechips.rocketchip.system.DefaultRV32Config.fir@124856.4]
  assign _T_1010 = _T_1009 == pstore1_valid; // @[DCache.scala 411:63:freechips.rocketchip.system.DefaultRV32Config.fir@124862.4]
  assign _T_1011 = pstore1_rmw | _T_1010; // @[DCache.scala 411:22:freechips.rocketchip.system.DefaultRV32Config.fir@124863.4]
  assign _T_1013 = _T_1011 | reset; // @[DCache.scala 411:9:freechips.rocketchip.system.DefaultRV32Config.fir@124865.4]
  assign _T_1023 = pstore1_rmw == 1'h0; // @[DCache.scala 419:44:freechips.rocketchip.system.DefaultRV32Config.fir@124880.4]
  assign _T_1024 = _T_1009 & _T_1023; // @[DCache.scala 419:41:freechips.rocketchip.system.DefaultRV32Config.fir@124881.4]
  assign _T_1025 = _T_1024 | pstore2_valid; // @[DCache.scala 419:58:freechips.rocketchip.system.DefaultRV32Config.fir@124882.4]
  assign _T_1026 = pstore_drain_opportunistic | pstore_drain_on_miss; // @[DCache.scala 419:107:freechips.rocketchip.system.DefaultRV32Config.fir@124883.4]
  assign _T_1037 = pstore1_valid & pstore2_valid; // @[DCache.scala 422:71:freechips.rocketchip.system.DefaultRV32Config.fir@124895.4]
  assign _T_1041 = pstore2_valid == pstore_drain; // @[DCache.scala 423:79:freechips.rocketchip.system.DefaultRV32Config.fir@124900.4]
  assign _T_1043 = pstore2_valid & _T_1038; // @[DCache.scala 424:34:freechips.rocketchip.system.DefaultRV32Config.fir@124903.4]
  assign _T_1047 = pstore1_storegen_data[7:0]; // @[DCache.scala 429:44:freechips.rocketchip.system.DefaultRV32Config.fir@124916.4]
  assign _T_1052 = pstore1_storegen_data[15:8]; // @[DCache.scala 429:44:freechips.rocketchip.system.DefaultRV32Config.fir@124924.4]
  assign _T_1057 = pstore1_storegen_data[23:16]; // @[DCache.scala 429:44:freechips.rocketchip.system.DefaultRV32Config.fir@124932.4]
  assign _T_1062 = pstore1_storegen_data[31:24]; // @[DCache.scala 429:44:freechips.rocketchip.system.DefaultRV32Config.fir@124940.4]
  assign _T_1071 = ~ pstore1_mask; // @[DCache.scala 435:37:freechips.rocketchip.system.DefaultRV32Config.fir@124956.6]
  assign _T_1073 = ~ _T_1071; // @[DCache.scala 435:15:freechips.rocketchip.system.DefaultRV32Config.fir@124958.6]
  assign _T_1087 = pstore2_valid ? pstore2_addr : pstore1_addr; // @[DCache.scala 450:36:freechips.rocketchip.system.DefaultRV32Config.fir@124978.4]
  assign _T_1090 = _T_1089[7:0]; // @[package.scala 160:50:freechips.rocketchip.system.DefaultRV32Config.fir@124983.4]
  assign _T_1091 = _T_1089[15:8]; // @[package.scala 160:50:freechips.rocketchip.system.DefaultRV32Config.fir@124984.4]
  assign _T_1092 = _T_1089[23:16]; // @[package.scala 160:50:freechips.rocketchip.system.DefaultRV32Config.fir@124985.4]
  assign _T_1093 = _T_1089[31:24]; // @[package.scala 160:50:freechips.rocketchip.system.DefaultRV32Config.fir@124986.4]
  assign _T_1094 = {_T_1091,_T_1090}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@124987.4]
  assign _T_1095 = {_T_1093,_T_1092}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@124988.4]
  assign _T_1100 = _T_1099[0]; // @[package.scala 160:50:freechips.rocketchip.system.DefaultRV32Config.fir@124995.4]
  assign _T_1101 = _T_1099[1]; // @[package.scala 160:50:freechips.rocketchip.system.DefaultRV32Config.fir@124996.4]
  assign _T_1102 = _T_1099[2]; // @[package.scala 160:50:freechips.rocketchip.system.DefaultRV32Config.fir@124997.4]
  assign _T_1103 = _T_1099[3]; // @[package.scala 160:50:freechips.rocketchip.system.DefaultRV32Config.fir@124998.4]
  assign _T_1108 = {_T_1101,_T_1100}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@125003.4]
  assign _T_1109 = {_T_1103,_T_1102}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@125004.4]
  assign _T_1209 = ~ uncachedInFlight_0; // @[DCache.scala 474:34:freechips.rocketchip.system.DefaultRV32Config.fir@125113.4]
  assign _T_1210 = {_T_1209, 1'h0}; // @[DCache.scala 474:59:freechips.rocketchip.system.DefaultRV32Config.fir@125114.4]
  assign _T_1211 = _T_1210[0]; // @[OneHot.scala 47:40:freechips.rocketchip.system.DefaultRV32Config.fir@125115.4]
  assign _T_1269 = 2'h1 << _T_387; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@125183.4]
  assign _T_1273 = _T_1271[1]; // @[Misc.scala 207:26:freechips.rocketchip.system.DefaultRV32Config.fir@125187.4]
  assign _T_1274 = s2_req_addr[1]; // @[Misc.scala 208:26:freechips.rocketchip.system.DefaultRV32Config.fir@125188.4]
  assign _T_1275 = _T_1274 == 1'h0; // @[Misc.scala 209:20:freechips.rocketchip.system.DefaultRV32Config.fir@125189.4]
  assign _T_1277 = _T_1273 & _T_1275; // @[Misc.scala 213:38:freechips.rocketchip.system.DefaultRV32Config.fir@125191.4]
  assign _T_1280 = _T_1273 & _T_1274; // @[Misc.scala 213:38:freechips.rocketchip.system.DefaultRV32Config.fir@125194.4]
  assign _T_1282 = _T_1271[0]; // @[Misc.scala 207:26:freechips.rocketchip.system.DefaultRV32Config.fir@125196.4]
  assign _T_1283 = s2_req_addr[0]; // @[Misc.scala 208:26:freechips.rocketchip.system.DefaultRV32Config.fir@125197.4]
  assign _T_1284 = _T_1283 == 1'h0; // @[Misc.scala 209:20:freechips.rocketchip.system.DefaultRV32Config.fir@125198.4]
  assign _T_1285 = _T_1275 & _T_1284; // @[Misc.scala 212:27:freechips.rocketchip.system.DefaultRV32Config.fir@125199.4]
  assign _T_1286 = _T_1282 & _T_1285; // @[Misc.scala 213:38:freechips.rocketchip.system.DefaultRV32Config.fir@125200.4]
  assign _T_1288 = _T_1275 & _T_1283; // @[Misc.scala 212:27:freechips.rocketchip.system.DefaultRV32Config.fir@125202.4]
  assign _T_1289 = _T_1282 & _T_1288; // @[Misc.scala 213:38:freechips.rocketchip.system.DefaultRV32Config.fir@125203.4]
  assign _T_1291 = _T_1274 & _T_1284; // @[Misc.scala 212:27:freechips.rocketchip.system.DefaultRV32Config.fir@125205.4]
  assign _T_1292 = _T_1282 & _T_1291; // @[Misc.scala 213:38:freechips.rocketchip.system.DefaultRV32Config.fir@125206.4]
  assign _T_1294 = _T_1274 & _T_1283; // @[Misc.scala 212:27:freechips.rocketchip.system.DefaultRV32Config.fir@125208.4]
  assign _T_1295 = _T_1282 & _T_1294; // @[Misc.scala 213:38:freechips.rocketchip.system.DefaultRV32Config.fir@125209.4]
  assign _T_2092_opcode = _T_2091 ? 3'h2 : 3'h0; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126111.4]
  assign _T_2092_param = _T_2091 ? 3'h3 : 3'h0; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126111.4]
  assign _T_2057_size = {{2'd0}, s2_req_size}; // @[Edges.scala 491:17:freechips.rocketchip.system.DefaultRV32Config.fir@126067.4 Edges.scala 494:15:freechips.rocketchip.system.DefaultRV32Config.fir@126071.4]
  assign _T_2092_size = _T_2091 ? _T_2057_size : 4'h0; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126111.4]
  assign _T_2092_source = _T_2091 & a_source; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126111.4]
  assign _T_2092_address = _T_2091 ? s2_req_addr : 32'h0; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126111.4]
  assign _T_2092_mask = _T_2091 ? get_mask : 4'h0; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126111.4]
  assign _T_2092_data = _T_2091 ? pstore1_data : 32'h0; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126111.4]
  assign _T_2094_opcode = _T_2093 ? 3'h2 : _T_2092_opcode; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126113.4]
  assign _T_2094_param = _T_2093 ? 3'h2 : _T_2092_param; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126113.4]
  assign _T_2094_size = _T_2093 ? _T_2057_size : _T_2092_size; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126113.4]
  assign _T_2094_source = _T_2093 ? a_source : _T_2092_source; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126113.4]
  assign _T_2094_address = _T_2093 ? s2_req_addr : _T_2092_address; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126113.4]
  assign _T_2094_mask = _T_2093 ? get_mask : _T_2092_mask; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126113.4]
  assign _T_2094_data = _T_2093 ? pstore1_data : _T_2092_data; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126113.4]
  assign _T_2096_opcode = _T_2095 ? 3'h2 : _T_2094_opcode; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126115.4]
  assign _T_2096_param = _T_2095 ? 3'h1 : _T_2094_param; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126115.4]
  assign _T_2096_size = _T_2095 ? _T_2057_size : _T_2094_size; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126115.4]
  assign _T_2096_source = _T_2095 ? a_source : _T_2094_source; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126115.4]
  assign _T_2096_address = _T_2095 ? s2_req_addr : _T_2094_address; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126115.4]
  assign _T_2096_mask = _T_2095 ? get_mask : _T_2094_mask; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126115.4]
  assign _T_2096_data = _T_2095 ? pstore1_data : _T_2094_data; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126115.4]
  assign _T_2098_opcode = _T_2097 ? 3'h2 : _T_2096_opcode; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126117.4]
  assign _T_2098_param = _T_2097 ? 3'h0 : _T_2096_param; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126117.4]
  assign _T_2098_size = _T_2097 ? _T_2057_size : _T_2096_size; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126117.4]
  assign _T_2098_source = _T_2097 ? a_source : _T_2096_source; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126117.4]
  assign _T_2098_address = _T_2097 ? s2_req_addr : _T_2096_address; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126117.4]
  assign _T_2098_mask = _T_2097 ? get_mask : _T_2096_mask; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126117.4]
  assign _T_2098_data = _T_2097 ? pstore1_data : _T_2096_data; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126117.4]
  assign _T_2100_opcode = _T_2099 ? 3'h2 : _T_2098_opcode; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126119.4]
  assign _T_2100_param = _T_2099 ? 3'h4 : _T_2098_param; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126119.4]
  assign _T_2100_size = _T_2099 ? _T_2057_size : _T_2098_size; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126119.4]
  assign _T_2100_source = _T_2099 ? a_source : _T_2098_source; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126119.4]
  assign _T_2100_address = _T_2099 ? s2_req_addr : _T_2098_address; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126119.4]
  assign _T_2100_mask = _T_2099 ? get_mask : _T_2098_mask; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126119.4]
  assign _T_2100_data = _T_2099 ? pstore1_data : _T_2098_data; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126119.4]
  assign _T_2102_opcode = _T_2101 ? 3'h3 : _T_2100_opcode; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126121.4]
  assign _T_2102_param = _T_2101 ? 3'h2 : _T_2100_param; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126121.4]
  assign _T_2102_size = _T_2101 ? _T_2057_size : _T_2100_size; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126121.4]
  assign _T_2102_source = _T_2101 ? a_source : _T_2100_source; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126121.4]
  assign _T_2102_address = _T_2101 ? s2_req_addr : _T_2100_address; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126121.4]
  assign _T_2102_mask = _T_2101 ? get_mask : _T_2100_mask; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126121.4]
  assign _T_2102_data = _T_2101 ? pstore1_data : _T_2100_data; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126121.4]
  assign _T_2104_opcode = _T_2103 ? 3'h3 : _T_2102_opcode; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126123.4]
  assign _T_2104_param = _T_2103 ? 3'h1 : _T_2102_param; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126123.4]
  assign _T_2104_size = _T_2103 ? _T_2057_size : _T_2102_size; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126123.4]
  assign _T_2104_source = _T_2103 ? a_source : _T_2102_source; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126123.4]
  assign _T_2104_address = _T_2103 ? s2_req_addr : _T_2102_address; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126123.4]
  assign _T_2104_mask = _T_2103 ? get_mask : _T_2102_mask; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126123.4]
  assign _T_2104_data = _T_2103 ? pstore1_data : _T_2102_data; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126123.4]
  assign _T_2106_opcode = _T_2105 ? 3'h3 : _T_2104_opcode; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126125.4]
  assign _T_2106_param = _T_2105 ? 3'h0 : _T_2104_param; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126125.4]
  assign _T_2106_size = _T_2105 ? _T_2057_size : _T_2104_size; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126125.4]
  assign _T_2106_source = _T_2105 ? a_source : _T_2104_source; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126125.4]
  assign _T_2106_address = _T_2105 ? s2_req_addr : _T_2104_address; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126125.4]
  assign _T_2106_mask = _T_2105 ? get_mask : _T_2104_mask; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126125.4]
  assign _T_2106_data = _T_2105 ? pstore1_data : _T_2104_data; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126125.4]
  assign _T_2109 = s2_victim_dirty == 1'h0; // @[DCache.scala 500:109:freechips.rocketchip.system.DefaultRV32Config.fir@126129.4]
  assign _T_2173_opcode = _T_2172 ? 3'h0 : atomics_opcode; // @[DCache.scala 504:8:freechips.rocketchip.system.DefaultRV32Config.fir@126203.4]
  assign _T_2173_param = _T_2172 ? 3'h0 : atomics_param; // @[DCache.scala 504:8:freechips.rocketchip.system.DefaultRV32Config.fir@126203.4]
  assign _T_2173_size = _T_2172 ? _T_2057_size : atomics_size; // @[DCache.scala 504:8:freechips.rocketchip.system.DefaultRV32Config.fir@126203.4]
  assign _T_2173_source = _T_2172 ? a_source : atomics_source; // @[DCache.scala 504:8:freechips.rocketchip.system.DefaultRV32Config.fir@126203.4]
  assign _T_2173_address = _T_2172 ? s2_req_addr : atomics_address; // @[DCache.scala 504:8:freechips.rocketchip.system.DefaultRV32Config.fir@126203.4]
  assign _T_2173_mask = _T_2172 ? get_mask : atomics_mask; // @[DCache.scala 504:8:freechips.rocketchip.system.DefaultRV32Config.fir@126203.4]
  assign _T_2173_data = _T_2172 ? pstore1_data : atomics_data; // @[DCache.scala 504:8:freechips.rocketchip.system.DefaultRV32Config.fir@126203.4]
  assign _T_2174_opcode = _T_419 ? 3'h1 : _T_2173_opcode; // @[DCache.scala 503:8:freechips.rocketchip.system.DefaultRV32Config.fir@126204.4]
  assign _T_2174_param = _T_419 ? 3'h0 : _T_2173_param; // @[DCache.scala 503:8:freechips.rocketchip.system.DefaultRV32Config.fir@126204.4]
  assign _T_2174_size = _T_419 ? _T_2057_size : _T_2173_size; // @[DCache.scala 503:8:freechips.rocketchip.system.DefaultRV32Config.fir@126204.4]
  assign _T_2174_source = _T_419 ? a_source : _T_2173_source; // @[DCache.scala 503:8:freechips.rocketchip.system.DefaultRV32Config.fir@126204.4]
  assign _T_2174_address = _T_419 ? s2_req_addr : _T_2173_address; // @[DCache.scala 503:8:freechips.rocketchip.system.DefaultRV32Config.fir@126204.4]
  assign _T_2174_mask = _T_419 ? putpartial_mask : _T_2173_mask; // @[DCache.scala 503:8:freechips.rocketchip.system.DefaultRV32Config.fir@126204.4]
  assign _T_2174_data = _T_419 ? pstore1_data : _T_2173_data; // @[DCache.scala 503:8:freechips.rocketchip.system.DefaultRV32Config.fir@126204.4]
  assign _T_2175_opcode = _T_2170 ? 3'h4 : _T_2174_opcode; // @[DCache.scala 502:8:freechips.rocketchip.system.DefaultRV32Config.fir@126205.4]
  assign _T_2175_param = _T_2170 ? 3'h0 : _T_2174_param; // @[DCache.scala 502:8:freechips.rocketchip.system.DefaultRV32Config.fir@126205.4]
  assign _T_2175_size = _T_2170 ? _T_2057_size : _T_2174_size; // @[DCache.scala 502:8:freechips.rocketchip.system.DefaultRV32Config.fir@126205.4]
  assign _T_2175_source = _T_2170 ? a_source : _T_2174_source; // @[DCache.scala 502:8:freechips.rocketchip.system.DefaultRV32Config.fir@126205.4]
  assign _T_2175_address = _T_2170 ? s2_req_addr : _T_2174_address; // @[DCache.scala 502:8:freechips.rocketchip.system.DefaultRV32Config.fir@126205.4]
  assign _T_2175_mask = _T_2170 ? get_mask : _T_2174_mask; // @[DCache.scala 502:8:freechips.rocketchip.system.DefaultRV32Config.fir@126205.4]
  assign _T_2175_data = _T_2170 ? 32'h0 : _T_2174_data; // @[DCache.scala 502:8:freechips.rocketchip.system.DefaultRV32Config.fir@126205.4]
  assign _T_2136_param = {{1'd0}, s2_grow_param}; // @[Edges.scala 338:17:freechips.rocketchip.system.DefaultRV32Config.fir@126157.4 Edges.scala 340:15:freechips.rocketchip.system.DefaultRV32Config.fir@126160.4]
  assign _T_2185 = _T_2184[11:0]; // @[package.scala 189:82:freechips.rocketchip.system.DefaultRV32Config.fir@126228.4]
  assign _T_2186 = ~ _T_2185; // @[package.scala 189:46:freechips.rocketchip.system.DefaultRV32Config.fir@126229.4]
  assign _T_2187 = _T_2186[11:2]; // @[Edges.scala 221:59:freechips.rocketchip.system.DefaultRV32Config.fir@126230.4]
  assign _T_2188 = auto_out_d_bits_opcode[0]; // @[Edges.scala 107:36:freechips.rocketchip.system.DefaultRV32Config.fir@126231.4]
  assign _T_2193 = _T_2190 == 10'h1; // @[Edges.scala 233:25:freechips.rocketchip.system.DefaultRV32Config.fir@126237.4]
  assign _T_2194 = _T_2189 == 10'h0; // @[Edges.scala 233:47:freechips.rocketchip.system.DefaultRV32Config.fir@126238.4]
  assign _T_2195 = ~ _T_2192; // @[Edges.scala 235:27:freechips.rocketchip.system.DefaultRV32Config.fir@126241.4]
  assign _T_2202 = grantIsUncached == 1'h0; // @[DCache.scala 538:80:freechips.rocketchip.system.DefaultRV32Config.fir@126254.4]
  assign _T_2215 = blockProbeAfterGrantCount - 3'h1; // @[DCache.scala 544:97:freechips.rocketchip.system.DefaultRV32Config.fir@126274.6]
  assign _T_2229 = cached_grant_wait | reset; // @[DCache.scala 552:13:freechips.rocketchip.system.DefaultRV32Config.fir@126297.8]
  assign _T_2230 = _T_2229 == 1'h0; // @[DCache.scala 552:13:freechips.rocketchip.system.DefaultRV32Config.fir@126298.8]
  assign _T_2234 = uncachedInFlight_0 | reset; // @[DCache.scala 562:17:freechips.rocketchip.system.DefaultRV32Config.fir@126316.12]
  assign _T_2235 = _T_2234 == 1'h0; // @[DCache.scala 562:17:freechips.rocketchip.system.DefaultRV32Config.fir@126317.12]
  assign _T_2237 = tlb_io_resp_paddr[31:2]; // @[DCache.scala 576:41:freechips.rocketchip.system.DefaultRV32Config.fir@126331.12]
  assign _T_2238 = uncachedReqs_0_addr[1:0]; // @[DCache.scala 577:45:freechips.rocketchip.system.DefaultRV32Config.fir@126333.12]
  assign _GEN_315 = {{30'd0}, _T_2238}; // @[DCache.scala 577:26:freechips.rocketchip.system.DefaultRV32Config.fir@126334.12]
  assign _T_2239 = dontCareBits | _GEN_315; // @[DCache.scala 577:26:freechips.rocketchip.system.DefaultRV32Config.fir@126334.12]
  assign _T_2241 = release_ack_wait | reset; // @[DCache.scala 583:13:freechips.rocketchip.system.DefaultRV32Config.fir@126342.12]
  assign _T_2242 = _T_2241 == 1'h0; // @[DCache.scala 583:13:freechips.rocketchip.system.DefaultRV32Config.fir@126343.12]
  assign _GEN_163 = grantIsVoluntary ? 1'h0 : release_ack_wait; // @[DCache.scala 582:36:freechips.rocketchip.system.DefaultRV32Config.fir@126340.10]
  assign _GEN_172 = grantIsUncached ? release_ack_wait : _GEN_163; // @[DCache.scala 559:35:freechips.rocketchip.system.DefaultRV32Config.fir@126311.8]
  assign _GEN_176 = grantIsCached & d_last; // @[DCache.scala 550:26:freechips.rocketchip.system.DefaultRV32Config.fir@126294.6]
  assign _GEN_185 = grantIsCached ? release_ack_wait : _GEN_172; // @[DCache.scala 550:26:freechips.rocketchip.system.DefaultRV32Config.fir@126294.6]
  assign _GEN_198 = _T_2227 ? _GEN_185 : release_ack_wait; // @[DCache.scala 549:26:freechips.rocketchip.system.DefaultRV32Config.fir@126293.4]
  assign _T_2243 = auto_out_d_valid & d_first; // @[DCache.scala 589:36:freechips.rocketchip.system.DefaultRV32Config.fir@126351.4]
  assign _T_2244 = _T_2243 & grantIsCached; // @[DCache.scala 589:47:freechips.rocketchip.system.DefaultRV32Config.fir@126352.4]
  assign _T_2247 = auto_out_e_ready & tl_out__e_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@126359.4]
  assign _T_2249 = _T_2227 & d_first; // @[DCache.scala 591:47:freechips.rocketchip.system.DefaultRV32Config.fir@126361.4]
  assign _T_2250 = _T_2249 & grantIsCached; // @[DCache.scala 591:58:freechips.rocketchip.system.DefaultRV32Config.fir@126362.4]
  assign _T_2251 = _T_2247 == _T_2250; // @[DCache.scala 591:26:freechips.rocketchip.system.DefaultRV32Config.fir@126363.4]
  assign _T_2253 = _T_2251 | reset; // @[DCache.scala 591:9:freechips.rocketchip.system.DefaultRV32Config.fir@126365.4]
  assign _T_2254 = _T_2253 == 1'h0; // @[DCache.scala 591:9:freechips.rocketchip.system.DefaultRV32Config.fir@126366.4]
  assign _T_2255 = auto_out_d_valid & grantIsRefill; // @[DCache.scala 596:44:freechips.rocketchip.system.DefaultRV32Config.fir@126371.4]
  assign _T_2259 = s2_vaddr[31:6]; // @[DCache.scala 603:46:freechips.rocketchip.system.DefaultRV32Config.fir@126381.4]
  assign _T_2260 = {_T_2259, 6'h0}; // @[DCache.scala 603:57:freechips.rocketchip.system.DefaultRV32Config.fir@126382.4]
  assign _GEN_316 = {{20'd0}, d_address_inc}; // @[DCache.scala 603:67:freechips.rocketchip.system.DefaultRV32Config.fir@126383.4]
  assign _T_2264 = grantIsCached & d_done; // @[DCache.scala 616:43:freechips.rocketchip.system.DefaultRV32Config.fir@126391.4]
  assign _T_2265 = auto_out_d_bits_denied == 1'h0; // @[DCache.scala 616:56:freechips.rocketchip.system.DefaultRV32Config.fir@126392.4]
  assign _T_2323 = {s2_write,_T_542,auto_out_d_bits_param}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@126455.4]
  assign _T_2332 = 4'hc == _T_2323; // @[Mux.scala 68:19:freechips.rocketchip.system.DefaultRV32Config.fir@126464.4]
  assign _T_2333 = _T_2332 ? 2'h3 : 2'h0; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126465.4]
  assign _T_2334 = 4'h4 == _T_2323; // @[Mux.scala 68:19:freechips.rocketchip.system.DefaultRV32Config.fir@126466.4]
  assign _T_2335 = _T_2334 ? 2'h2 : _T_2333; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126467.4]
  assign _T_2336 = 4'h0 == _T_2323; // @[Mux.scala 68:19:freechips.rocketchip.system.DefaultRV32Config.fir@126468.4]
  assign _T_2337 = _T_2336 ? 2'h2 : _T_2335; // @[Mux.scala 68:16:freechips.rocketchip.system.DefaultRV32Config.fir@126469.4]
  assign _T_2338 = 4'h1 == _T_2323; // @[Mux.scala 68:19:freechips.rocketchip.system.DefaultRV32Config.fir@126470.4]
  assign _GEN_201 = auto_out_d_valid ? 1'h0 : _GEN_22; // @[DCache.scala 630:29:freechips.rocketchip.system.DefaultRV32Config.fir@126487.6]
  assign _GEN_202 = auto_out_d_valid | _T_2256; // @[DCache.scala 630:29:freechips.rocketchip.system.DefaultRV32Config.fir@126487.6]
  assign _GEN_203 = auto_out_d_valid ? 1'h0 : 1'h1; // @[DCache.scala 630:29:freechips.rocketchip.system.DefaultRV32Config.fir@126487.6]
  assign _T_2353 = block_probe_for_core_progress == 1'h0; // @[DCache.scala 644:48:freechips.rocketchip.system.DefaultRV32Config.fir@126505.4]
  assign _T_2354 = _T_2353 | lrscBackingOff; // @[DCache.scala 644:79:freechips.rocketchip.system.DefaultRV32Config.fir@126506.4]
  assign _T_2355 = auto_out_b_valid & _T_2354; // @[DCache.scala 644:44:freechips.rocketchip.system.DefaultRV32Config.fir@126507.4]
  assign _T_2361 = auto_out_b_bits_address[11:6]; // @[DCache.scala 1022:47:freechips.rocketchip.system.DefaultRV32Config.fir@126516.4]
  assign _T_2363 = {1'h0,auto_out_b_bits_address}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@126519.4]
  assign _T_2377 = ~ _T_2374; // @[Edges.scala 235:27:freechips.rocketchip.system.DefaultRV32Config.fir@126539.4]
  assign _T_2379 = auto_out_c_ready == 1'h0; // @[DCache.scala 654:43:freechips.rocketchip.system.DefaultRV32Config.fir@126545.4]
  assign _T_2381 = releaseRejected == 1'h0; // @[DCache.scala 656:67:freechips.rocketchip.system.DefaultRV32Config.fir@126550.4]
  assign _T_2383 = {1'h0,c_count}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@126554.4]
  assign _T_2384 = {1'h0,s2_release_data_valid}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@126555.4]
  assign _GEN_317 = {{1'd0}, s1_release_data_valid}; // @[DCache.scala 657:101:freechips.rocketchip.system.DefaultRV32Config.fir@126556.4]
  assign _T_2386 = _GEN_317 + _T_2384; // @[DCache.scala 657:101:freechips.rocketchip.system.DefaultRV32Config.fir@126557.4]
  assign _GEN_318 = {{9'd0}, _T_2387}; // @[DCache.scala 657:47:freechips.rocketchip.system.DefaultRV32Config.fir@126559.4]
  assign _T_2389 = s2_valid_flush_line | s2_flush_valid_pre_tag_ecc; // @[DCache.scala 670:34:freechips.rocketchip.system.DefaultRV32Config.fir@126595.6]
  assign _T_2390 = _T_2389 | io_cpu_s2_nack; // @[DCache.scala 670:52:freechips.rocketchip.system.DefaultRV32Config.fir@126596.6]
  assign _T_2392 = _T_2390 | reset; // @[DCache.scala 670:13:freechips.rocketchip.system.DefaultRV32Config.fir@126598.6]
  assign _T_2393 = _T_2392 == 1'h0; // @[DCache.scala 670:13:freechips.rocketchip.system.DefaultRV32Config.fir@126599.6]
  assign _T_2394 = s2_req_size[1]; // @[DCache.scala 671:60:freechips.rocketchip.system.DefaultRV32Config.fir@126604.6]
  assign _T_2398 = discard_line == 1'h0; // @[DCache.scala 672:47:freechips.rocketchip.system.DefaultRV32Config.fir@126609.6]
  assign _T_2400 = _T_2399 ? 3'h1 : 3'h6; // @[DCache.scala 672:27:freechips.rocketchip.system.DefaultRV32Config.fir@126611.6]
  assign _T_2401 = s2_req_addr[11:6]; // @[DCache.scala 673:76:freechips.rocketchip.system.DefaultRV32Config.fir@126613.6]
  assign _T_2402 = {s2_victim_tag,_T_2401}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@126614.6]
  assign _GEN_211 = s2_want_victimize ? _T_2400 : release_state; // @[DCache.scala 669:25:freechips.rocketchip.system.DefaultRV32Config.fir@126594.4]
  assign _T_2405 = releaseDone ? 3'h7 : 3'h3; // @[DCache.scala 684:29:freechips.rocketchip.system.DefaultRV32Config.fir@126638.12]
  assign _T_2407 = releaseDone ? 3'h0 : 3'h5; // @[DCache.scala 688:29:freechips.rocketchip.system.DefaultRV32Config.fir@126645.12]
  assign _GEN_222 = _T_2404 ? s2_report_param : 3'h5; // @[DCache.scala 681:45:freechips.rocketchip.system.DefaultRV32Config.fir@126635.10]
  assign _GEN_228 = _T_2404 ? _T_2405 : _T_2407; // @[DCache.scala 681:45:freechips.rocketchip.system.DefaultRV32Config.fir@126635.10]
  assign _GEN_230 = s2_prb_ack_data ? 3'h2 : _GEN_228; // @[DCache.scala 679:36:freechips.rocketchip.system.DefaultRV32Config.fir@126630.8]
  assign _GEN_233 = s2_prb_ack_data ? 3'h5 : _GEN_222; // @[DCache.scala 679:36:freechips.rocketchip.system.DefaultRV32Config.fir@126630.8]
  assign _GEN_251 = s2_probe ? _GEN_230 : _GEN_211; // @[DCache.scala 675:21:freechips.rocketchip.system.DefaultRV32Config.fir@126622.4]
  assign _GEN_254 = s2_probe ? _GEN_233 : 3'h5; // @[DCache.scala 675:21:freechips.rocketchip.system.DefaultRV32Config.fir@126622.4]
  assign _T_2411 = {1'h0,probe_bits_address}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@126658.6]
  assign _GEN_261 = metaArb_io_in_6_ready ? 3'h0 : _GEN_251; // @[DCache.scala 696:37:freechips.rocketchip.system.DefaultRV32Config.fir@126660.6]
  assign _GEN_262 = metaArb_io_in_6_ready | _T_49; // @[DCache.scala 696:37:freechips.rocketchip.system.DefaultRV32Config.fir@126660.6]
  assign _GEN_266 = _T_2408 ? _GEN_261 : _GEN_251; // @[DCache.scala 692:44:freechips.rocketchip.system.DefaultRV32Config.fir@126653.4]
  assign _GEN_268 = releaseDone ? 3'h0 : _GEN_266; // @[DCache.scala 703:26:freechips.rocketchip.system.DefaultRV32Config.fir@126668.6]
  assign _GEN_270 = _T_2412 ? _GEN_268 : _GEN_266; // @[DCache.scala 701:47:freechips.rocketchip.system.DefaultRV32Config.fir@126666.4]
  assign _GEN_274 = _T_2413 ? s2_report_param : _GEN_254; // @[DCache.scala 705:48:freechips.rocketchip.system.DefaultRV32Config.fir@126673.4]
  assign _GEN_283 = _T_2414 ? s2_report_param : _GEN_274; // @[DCache.scala 710:48:freechips.rocketchip.system.DefaultRV32Config.fir@126681.4]
  assign _GEN_291 = _T_2439 | _GEN_198; // @[DCache.scala 723:41:freechips.rocketchip.system.DefaultRV32Config.fir@126727.6]
  assign _T_2441 = releaseDataBeat < 11'h10; // @[DCache.scala 734:60:freechips.rocketchip.system.DefaultRV32Config.fir@126737.4]
  assign _T_2444 = {_T_821, 6'h0}; // @[DCache.scala 737:55:freechips.rocketchip.system.DefaultRV32Config.fir@126743.4]
  assign _T_2445 = releaseDataBeat[3:0]; // @[DCache.scala 737:90:freechips.rocketchip.system.DefaultRV32Config.fir@126744.4]
  assign _T_2446 = {_T_2445, 2'h0}; // @[DCache.scala 737:117:freechips.rocketchip.system.DefaultRV32Config.fir@126745.4]
  assign _GEN_320 = {{6'd0}, _T_2446}; // @[DCache.scala 737:72:freechips.rocketchip.system.DefaultRV32Config.fir@126746.4]
  assign _T_2451 = release_state == 3'h7; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@126753.4]
  assign _T_2455 = probe_bits_address[11:0]; // @[DCache.scala 745:90:freechips.rocketchip.system.DefaultRV32Config.fir@126761.4]
  assign _T_2457 = probe_bits_address[31:12]; // @[DCache.scala 746:78:freechips.rocketchip.system.DefaultRV32Config.fir@126764.4]
  assign _T_2460 = metaArb_io_in_4_ready & metaArb_io_in_4_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@126771.4]
  assign _T_2467 = s1_valid | s2_valid; // @[DCache.scala 760:57:freechips.rocketchip.system.DefaultRV32Config.fir@126786.4]
  assign _T_2468 = _T_2467 | cached_grant_wait; // @[DCache.scala 760:94:freechips.rocketchip.system.DefaultRV32Config.fir@126787.4]
  assign _T_2470 = _T_2468 | uncachedInFlight_0; // @[DCache.scala 760:115:freechips.rocketchip.system.DefaultRV32Config.fir@126789.4]
  assign _T_2473 = tlb_io_req_valid; // @[DCache.scala 762:40:freechips.rocketchip.system.DefaultRV32Config.fir@126793.4]
  assign _T_2503 = _T_798 | reset; // @[DCache.scala 782:11:freechips.rocketchip.system.DefaultRV32Config.fir@126853.6]
  assign _T_2504 = _T_2503 == 1'h0; // @[DCache.scala 782:11:freechips.rocketchip.system.DefaultRV32Config.fir@126854.6]
  assign _T_2509 = s2_data_corrected[31:16]; // @[AMOALU.scala 39:37:freechips.rocketchip.system.DefaultRV32Config.fir@126869.4]
  assign _T_2510 = s2_data_corrected[15:0]; // @[AMOALU.scala 39:55:freechips.rocketchip.system.DefaultRV32Config.fir@126870.4]
  assign _T_2514 = s2_req_size == 2'h1; // @[AMOALU.scala 42:26:freechips.rocketchip.system.DefaultRV32Config.fir@126874.4]
  assign _T_2516 = _T_2511[15]; // @[AMOALU.scala 42:85:freechips.rocketchip.system.DefaultRV32Config.fir@126876.4]
  assign _T_2517 = s2_req_signed & _T_2516; // @[AMOALU.scala 42:76:freechips.rocketchip.system.DefaultRV32Config.fir@126877.4]
  assign _T_2519 = _T_2517 ? 16'hffff : 16'h0; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@126879.4]
  assign _T_2524 = _T_2522[15:8]; // @[AMOALU.scala 39:37:freechips.rocketchip.system.DefaultRV32Config.fir@126884.4]
  assign _T_2525 = _T_2522[7:0]; // @[AMOALU.scala 39:55:freechips.rocketchip.system.DefaultRV32Config.fir@126885.4]
  assign _T_2526 = _T_1283 ? _T_2524 : _T_2525; // @[AMOALU.scala 39:24:freechips.rocketchip.system.DefaultRV32Config.fir@126886.4]
  assign _T_2529 = s2_req_size == 2'h0; // @[AMOALU.scala 42:26:freechips.rocketchip.system.DefaultRV32Config.fir@126889.4]
  assign _T_2530 = _T_2529 | _T_421; // @[AMOALU.scala 42:38:freechips.rocketchip.system.DefaultRV32Config.fir@126890.4]
  assign _T_2531 = _T_2528[7]; // @[AMOALU.scala 42:85:freechips.rocketchip.system.DefaultRV32Config.fir@126891.4]
  assign _T_2532 = s2_req_signed & _T_2531; // @[AMOALU.scala 42:76:freechips.rocketchip.system.DefaultRV32Config.fir@126892.4]
  assign _T_2534 = _T_2532 ? 24'hffffff : 24'h0; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@126894.4]
  assign _T_2535 = _T_2522[31:8]; // @[AMOALU.scala 42:98:freechips.rocketchip.system.DefaultRV32Config.fir@126895.4]
  assign _T_2537 = {_T_2536,_T_2528}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@126897.4]
  assign _GEN_321 = {{31'd0}, s2_sc_fail}; // @[DCache.scala 803:41:freechips.rocketchip.system.DefaultRV32Config.fir@126898.4]
  assign _GEN_309 = _T_2540 | resetting; // @[DCache.scala 837:27:freechips.rocketchip.system.DefaultRV32Config.fir@126916.4]
  assign _T_2541 = flushCounterNext[8:6]; // @[DCache.scala 840:37:freechips.rocketchip.system.DefaultRV32Config.fir@126921.4]
  assign _T_2546 = metaArb_io_in_5_ready & metaArb_io_in_5_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@126928.4]
  assign _T_2548 = _T_2546 & _T_310; // @[DCache.scala 844:45:freechips.rocketchip.system.DefaultRV32Config.fir@126930.4]
  assign _T_2550 = _T_2548 & _T_643; // @[DCache.scala 844:64:freechips.rocketchip.system.DefaultRV32Config.fir@126932.4]
  assign _T_2552 = _T_2550 & _T_107; // @[DCache.scala 844:95:freechips.rocketchip.system.DefaultRV32Config.fir@126934.4]
  assign _T_2559 = {metaArb_io_in_5_bits_idx, 6'h0}; // @[DCache.scala 848:98:freechips.rocketchip.system.DefaultRV32Config.fir@126945.4]
  assign _GEN_311 = resetting ? flushCounterNext : {{1'd0}, flushCounter}; // @[DCache.scala 881:20:freechips.rocketchip.system.DefaultRV32Config.fir@126965.4]
  assign _T_2620 = _T_2618 - 10'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@127030.4]
  assign _T_2622 = _T_2618 == 10'h1; // @[Edges.scala 233:25:freechips.rocketchip.system.DefaultRV32Config.fir@127032.4]
  assign _T_2624 = _T_2622 | _T_2376; // @[Edges.scala 233:37:freechips.rocketchip.system.DefaultRV32Config.fir@127034.4]
  assign _T_2738 = grantIsCached == 1'h0; // @[DCache.scala 955:35:freechips.rocketchip.system.DefaultRV32Config.fir@127167.4]
  assign _GEN_324 = _T_2227 & grantIsCached; // @[DCache.scala 552:13:freechips.rocketchip.system.DefaultRV32Config.fir@126300.10]
  assign _GEN_327 = _T_2227 & _T_2738; // @[DCache.scala 562:17:freechips.rocketchip.system.DefaultRV32Config.fir@126319.14]
  assign _GEN_328 = _GEN_327 & grantIsUncached; // @[DCache.scala 562:17:freechips.rocketchip.system.DefaultRV32Config.fir@126319.14]
  assign _GEN_329 = _GEN_328 & _T_2232; // @[DCache.scala 562:17:freechips.rocketchip.system.DefaultRV32Config.fir@126319.14]
  assign _GEN_337 = _GEN_327 & _T_2202; // @[DCache.scala 583:13:freechips.rocketchip.system.DefaultRV32Config.fir@126345.14]
  assign _GEN_338 = _GEN_337 & grantIsVoluntary; // @[DCache.scala 583:13:freechips.rocketchip.system.DefaultRV32Config.fir@126345.14]
endmodule
`endif // __DCache

