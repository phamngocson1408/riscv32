`include "include_module.v"
`ifdef __DCache
module DCache(
  input         gated_clock,
  input         reset,
  input         auto_out_a_ready,
  output        auto_out_a_valid,
  output [2:0]  auto_out_a_bits_opcode,
  output [2:0]  auto_out_a_bits_param,
  output [3:0]  auto_out_a_bits_size,
  output        auto_out_a_bits_source,
  output [31:0] auto_out_a_bits_address,
  output [3:0]  auto_out_a_bits_mask,
  output [31:0] auto_out_a_bits_data,
  output        auto_out_b_ready,
  input         auto_out_b_valid,
  input  [1:0]  auto_out_b_bits_param,
  input  [3:0]  auto_out_b_bits_size,
  input         auto_out_b_bits_source,
  input  [31:0] auto_out_b_bits_address,
  input         auto_out_c_ready,
  output        auto_out_c_valid,
  output [2:0]  auto_out_c_bits_opcode,
  output [2:0]  auto_out_c_bits_param,
  output [3:0]  auto_out_c_bits_size,
  output        auto_out_c_bits_source,
  output [31:0] auto_out_c_bits_address,
  output [31:0] auto_out_c_bits_data,
  output        auto_out_d_ready,
  input         auto_out_d_valid,
  input  [2:0]  auto_out_d_bits_opcode,
  input  [1:0]  auto_out_d_bits_param,
  input  [3:0]  auto_out_d_bits_size,
  input         auto_out_d_bits_source,
  input  [1:0]  auto_out_d_bits_sink,
  input         auto_out_d_bits_denied,
  input  [31:0] auto_out_d_bits_data,
  input         auto_out_e_ready,
  output        auto_out_e_valid,
  output [1:0]  auto_out_e_bits_sink,
  output        io_cpu_req_ready,
  input         io_cpu_req_valid,
  input  [31:0] io_cpu_req_bits_addr,
  input  [6:0]  io_cpu_req_bits_tag,
  input  [4:0]  io_cpu_req_bits_cmd,
  input  [1:0]  io_cpu_req_bits_size,
  input         io_cpu_req_bits_signed,
  input         io_cpu_req_bits_phys,
  input         io_cpu_s1_kill,
  input  [31:0] io_cpu_s1_data_data,
  input  [3:0]  io_cpu_s1_data_mask,
  output        io_cpu_s2_nack, 
  output        io_cpu_resp_valid, 
  output [31:0] io_cpu_resp_bits_addr,
  output [6:0]  io_cpu_resp_bits_tag,
  output [4:0]  io_cpu_resp_bits_cmd,
  output [1:0]  io_cpu_resp_bits_size,
  output        io_cpu_resp_bits_signed,
  output [31:0] io_cpu_resp_bits_data,
  output [3:0]  io_cpu_resp_bits_mask,
  output        io_cpu_resp_bits_replay,
  output        io_cpu_resp_bits_has_data,
  output [31:0] io_cpu_resp_bits_data_word_bypass,
  output [31:0] io_cpu_resp_bits_data_raw,
  output [31:0] io_cpu_resp_bits_store_data,
  output        io_cpu_replay_next,
  output        io_cpu_s2_xcpt_ma_ld,
  output        io_cpu_s2_xcpt_ma_st,
  output        io_cpu_s2_xcpt_pf_ld,
  output        io_cpu_s2_xcpt_pf_st,
  output        io_cpu_s2_xcpt_ae_ld,
  output        io_cpu_s2_xcpt_ae_st,
  output        io_cpu_ordered,
  output        io_cpu_perf_release,
  output        io_cpu_perf_grant,
  input         io_ptw_req_ready,
  output        io_ptw_req_valid,
  output [19:0] io_ptw_req_bits_bits_addr,
  input         io_ptw_resp_valid,
  input         io_ptw_resp_bits_ae,
  input  [53:0] io_ptw_resp_bits_pte_ppn,
  input         io_ptw_resp_bits_pte_d,
  input         io_ptw_resp_bits_pte_a,
  input         io_ptw_resp_bits_pte_g,
  input         io_ptw_resp_bits_pte_u,
  input         io_ptw_resp_bits_pte_x,
  input         io_ptw_resp_bits_pte_w,
  input         io_ptw_resp_bits_pte_r,
  input         io_ptw_resp_bits_pte_v,
  input         io_ptw_resp_bits_level,
  input         io_ptw_resp_bits_homogeneous,
  input         io_ptw_ptbr_mode,
  input         io_ptw_status_debug,
  input  [1:0]  io_ptw_status_dprv,
  input         io_ptw_status_mxr,
  input         io_ptw_status_sum,
  input         io_ptw_pmp_0_cfg_l,
  input  [1:0]  io_ptw_pmp_0_cfg_a,
  input         io_ptw_pmp_0_cfg_x,
  input         io_ptw_pmp_0_cfg_w,
  input         io_ptw_pmp_0_cfg_r,
  input  [29:0] io_ptw_pmp_0_addr,
  input  [31:0] io_ptw_pmp_0_mask,
  input         io_ptw_pmp_1_cfg_l,
  input  [1:0]  io_ptw_pmp_1_cfg_a,
  input         io_ptw_pmp_1_cfg_x,
  input         io_ptw_pmp_1_cfg_w,
  input         io_ptw_pmp_1_cfg_r,
  input  [29:0] io_ptw_pmp_1_addr,
  input  [31:0] io_ptw_pmp_1_mask,
  input         io_ptw_pmp_2_cfg_l,
  input  [1:0]  io_ptw_pmp_2_cfg_a,
  input         io_ptw_pmp_2_cfg_x,
  input         io_ptw_pmp_2_cfg_w,
  input         io_ptw_pmp_2_cfg_r,
  input  [29:0] io_ptw_pmp_2_addr,
  input  [31:0] io_ptw_pmp_2_mask,
  input         io_ptw_pmp_3_cfg_l,
  input  [1:0]  io_ptw_pmp_3_cfg_a,
  input         io_ptw_pmp_3_cfg_x,
  input         io_ptw_pmp_3_cfg_w,
  input         io_ptw_pmp_3_cfg_r,
  input  [29:0] io_ptw_pmp_3_addr,
  input  [31:0] io_ptw_pmp_3_mask,
  input         io_ptw_pmp_4_cfg_l,
  input  [1:0]  io_ptw_pmp_4_cfg_a,
  input         io_ptw_pmp_4_cfg_x,
  input         io_ptw_pmp_4_cfg_w,
  input         io_ptw_pmp_4_cfg_r,
  input  [29:0] io_ptw_pmp_4_addr,
  input  [31:0] io_ptw_pmp_4_mask,
  input         io_ptw_pmp_5_cfg_l,
  input  [1:0]  io_ptw_pmp_5_cfg_a,
  input         io_ptw_pmp_5_cfg_x,
  input         io_ptw_pmp_5_cfg_w,
  input         io_ptw_pmp_5_cfg_r,
  input  [29:0] io_ptw_pmp_5_addr,
  input  [31:0] io_ptw_pmp_5_mask,
  input         io_ptw_pmp_6_cfg_l,
  input  [1:0]  io_ptw_pmp_6_cfg_a,
  input         io_ptw_pmp_6_cfg_x,
  input         io_ptw_pmp_6_cfg_w, 
  input         io_ptw_pmp_6_cfg_r,
  input  [29:0] io_ptw_pmp_6_addr,
  input  [31:0] io_ptw_pmp_6_mask,
  input         io_ptw_pmp_7_cfg_l,
  input  [1:0]  io_ptw_pmp_7_cfg_a,
  input         io_ptw_pmp_7_cfg_x,
  input         io_ptw_pmp_7_cfg_w,
  input         io_ptw_pmp_7_cfg_r,
  input  [29:0] io_ptw_pmp_7_addr,
  input  [31:0] io_ptw_pmp_7_mask 
);
  wire  MaxPeriodFibonacciLFSR_clock;
  wire  MaxPeriodFibonacciLFSR_reset;
  wire  MaxPeriodFibonacciLFSR_io_increment;
  wire  MaxPeriodFibonacciLFSR_io_out_0; 
  wire  MaxPeriodFibonacciLFSR_io_out_1; 
  wire  MaxPeriodFibonacciLFSR_io_out_2; 
  wire  MaxPeriodFibonacciLFSR_io_out_3; 
  wire  MaxPeriodFibonacciLFSR_io_out_4; 
  wire  MaxPeriodFibonacciLFSR_io_out_5; 
  wire  MaxPeriodFibonacciLFSR_io_out_6; 
  wire  MaxPeriodFibonacciLFSR_io_out_7; 
  wire  MaxPeriodFibonacciLFSR_io_out_8; 
  wire  MaxPeriodFibonacciLFSR_io_out_9; 
  wire  MaxPeriodFibonacciLFSR_io_out_10;
  wire  MaxPeriodFibonacciLFSR_io_out_11;
  wire  MaxPeriodFibonacciLFSR_io_out_12;
  wire  MaxPeriodFibonacciLFSR_io_out_13;
  wire  MaxPeriodFibonacciLFSR_io_out_14;
  wire  MaxPeriodFibonacciLFSR_io_out_15;
  wire  metaArb_io_in_0_valid;
  wire [31:0] metaArb_io_in_0_bits_addr;
  wire [5:0] metaArb_io_in_0_bits_idx;
  wire [21:0] metaArb_io_in_0_bits_data; 
  wire  metaArb_io_in_2_valid;
  wire [31:0] metaArb_io_in_2_bits_addr; 
  wire [5:0] metaArb_io_in_2_bits_idx; 
  wire [3:0] metaArb_io_in_2_bits_way_en;
  wire [21:0] metaArb_io_in_2_bits_data;
  wire  metaArb_io_in_3_valid;
  wire [31:0] metaArb_io_in_3_bits_addr;
  wire [5:0] metaArb_io_in_3_bits_idx;
  wire [3:0] metaArb_io_in_3_bits_way_en; 
  wire [21:0] metaArb_io_in_3_bits_data;
  wire  metaArb_io_in_4_ready;
  wire  metaArb_io_in_4_valid;
  wire [31:0] metaArb_io_in_4_bits_addr;
  wire [5:0] metaArb_io_in_4_bits_idx;
  wire [3:0] metaArb_io_in_4_bits_way_en;
  wire [21:0] metaArb_io_in_4_bits_data;
  wire  metaArb_io_in_5_ready;
  wire  metaArb_io_in_5_valid;
  wire [31:0] metaArb_io_in_5_bits_addr;
  wire [5:0] metaArb_io_in_5_bits_idx;
  wire  metaArb_io_in_6_ready;
  wire  metaArb_io_in_6_valid;
  wire [31:0] metaArb_io_in_6_bits_addr;
  wire [5:0] metaArb_io_in_6_bits_idx;
  wire [3:0] metaArb_io_in_6_bits_way_en;
  wire [21:0] metaArb_io_in_6_bits_data;
  wire  metaArb_io_in_7_ready;
  wire  metaArb_io_in_7_valid;
  wire [31:0] metaArb_io_in_7_bits_addr; 
  wire [5:0] metaArb_io_in_7_bits_idx; 
  wire [3:0] metaArb_io_in_7_bits_way_en;
  wire [21:0] metaArb_io_in_7_bits_data; 
  wire  metaArb_io_out_valid;
  wire  metaArb_io_out_bits_write;
  wire [31:0] metaArb_io_out_bits_addr;
  wire [5:0] metaArb_io_out_bits_idx;
  wire [3:0] metaArb_io_out_bits_way_en; 
  wire [21:0] metaArb_io_out_bits_data; 
  wire [5:0] tag_array_RW0_addr;
  wire  tag_array_RW0_en;
  wire  tag_array_RW0_clk;
  wire  tag_array_RW0_wmode;
  wire [21:0] tag_array_RW0_wdata_0;
  wire [21:0] tag_array_RW0_wdata_1;
  wire [21:0] tag_array_RW0_wdata_2;
  wire [21:0] tag_array_RW0_wdata_3;
  wire [21:0] tag_array_RW0_rdata_0;
  wire [21:0] tag_array_RW0_rdata_1;
  wire [21:0] tag_array_RW0_rdata_2;
  wire [21:0] tag_array_RW0_rdata_3;
  wire  tag_array_RW0_wmask_0;
  wire  tag_array_RW0_wmask_1;
  wire  tag_array_RW0_wmask_2;
  wire  tag_array_RW0_wmask_3;
  wire  data_clock;
  wire  data_io_req_valid;
  wire [11:0] data_io_req_bits_addr;
  wire  data_io_req_bits_write;
  wire [31:0] data_io_req_bits_wdata;
  wire [3:0] data_io_req_bits_eccMask;
  wire [3:0] data_io_req_bits_way_en;
  wire [31:0] data_io_resp_0;
  wire [31:0] data_io_resp_1;
  wire [31:0] data_io_resp_2;
  wire [31:0] data_io_resp_3;
  wire  dataArb_io_in_0_valid;
  wire [11:0] dataArb_io_in_0_bits_addr;
  wire  dataArb_io_in_0_bits_write;
  wire [31:0] dataArb_io_in_0_bits_wdata;
  wire [3:0] dataArb_io_in_0_bits_eccMask;
  wire [3:0] dataArb_io_in_0_bits_way_en;
  wire  dataArb_io_in_1_ready; 
  wire  dataArb_io_in_1_valid;
  wire [11:0] dataArb_io_in_1_bits_addr;
  wire  dataArb_io_in_1_bits_write;
  wire [31:0] dataArb_io_in_1_bits_wdata;
  wire [3:0] dataArb_io_in_1_bits_eccMask;
  wire [3:0] dataArb_io_in_1_bits_way_en;
  wire  dataArb_io_in_2_ready;
  wire  dataArb_io_in_2_valid;
  wire [11:0] dataArb_io_in_2_bits_addr;
  wire [31:0] dataArb_io_in_2_bits_wdata;
  wire [3:0] dataArb_io_in_2_bits_eccMask;
  wire  dataArb_io_in_3_ready;
  wire  dataArb_io_in_3_valid;
  wire [11:0] dataArb_io_in_3_bits_addr;
  wire [31:0] dataArb_io_in_3_bits_wdata;
  wire [3:0] dataArb_io_in_3_bits_eccMask; 
  wire  dataArb_io_out_valid;
  wire [11:0] dataArb_io_out_bits_addr;
  wire  dataArb_io_out_bits_write;
  wire [31:0] dataArb_io_out_bits_wdata;
  wire [3:0] dataArb_io_out_bits_eccMask;
  wire [3:0] dataArb_io_out_bits_way_en;
  wire  tlb_clock;
  wire  tlb_reset;
  wire  tlb_io_req_ready;
  wire  tlb_io_req_valid;
  wire [31:0] tlb_io_req_bits_vaddr;
  wire  tlb_io_req_bits_passthrough;
  wire [1:0] tlb_io_req_bits_size;
  wire [4:0] tlb_io_req_bits_cmd;
  wire  tlb_io_resp_miss;
  wire [31:0] tlb_io_resp_paddr;
  wire  tlb_io_resp_pf_ld;
  wire  tlb_io_resp_pf_st;
  wire  tlb_io_resp_ae_ld;
  wire  tlb_io_resp_ae_st;
  wire  tlb_io_resp_ma_ld;
  wire  tlb_io_resp_ma_st;
  wire  tlb_io_resp_cacheable;
  wire  tlb_io_sfence_valid;
  wire  tlb_io_sfence_bits_rs1;
  wire  tlb_io_sfence_bits_rs2;
  wire [31:0] tlb_io_sfence_bits_addr;
  wire  tlb_io_ptw_req_ready; 
  wire  tlb_io_ptw_req_valid;
  wire [19:0] tlb_io_ptw_req_bits_bits_addr;
  wire  tlb_io_ptw_resp_valid;
  wire  tlb_io_ptw_resp_bits_ae; 
  wire [53:0] tlb_io_ptw_resp_bits_pte_ppn;
  wire  tlb_io_ptw_resp_bits_pte_d;
  wire  tlb_io_ptw_resp_bits_pte_a;
  wire  tlb_io_ptw_resp_bits_pte_g;
  wire  tlb_io_ptw_resp_bits_pte_u;
  wire  tlb_io_ptw_resp_bits_pte_x;
  wire  tlb_io_ptw_resp_bits_pte_w;
  wire  tlb_io_ptw_resp_bits_pte_r;
  wire  tlb_io_ptw_resp_bits_pte_v;
  wire  tlb_io_ptw_resp_bits_level;
  wire  tlb_io_ptw_resp_bits_homogeneous;
  wire  tlb_io_ptw_ptbr_mode;
  wire  tlb_io_ptw_status_debug;
  wire [1:0] tlb_io_ptw_status_dprv;
  wire  tlb_io_ptw_status_mxr;
  wire  tlb_io_ptw_status_sum;
  wire  tlb_io_ptw_pmp_0_cfg_l;
  wire [1:0] tlb_io_ptw_pmp_0_cfg_a; 
  wire  tlb_io_ptw_pmp_0_cfg_x;
  wire  tlb_io_ptw_pmp_0_cfg_w;
  wire  tlb_io_ptw_pmp_0_cfg_r;
  wire [29:0] tlb_io_ptw_pmp_0_addr;
  wire [31:0] tlb_io_ptw_pmp_0_mask;
  wire  tlb_io_ptw_pmp_1_cfg_l;
  wire [1:0] tlb_io_ptw_pmp_1_cfg_a;
  wire  tlb_io_ptw_pmp_1_cfg_x;
  wire  tlb_io_ptw_pmp_1_cfg_w;
  wire  tlb_io_ptw_pmp_1_cfg_r;
  wire [29:0] tlb_io_ptw_pmp_1_addr; 
  wire [31:0] tlb_io_ptw_pmp_1_mask; 
  wire  tlb_io_ptw_pmp_2_cfg_l;
  wire [1:0] tlb_io_ptw_pmp_2_cfg_a;
  wire  tlb_io_ptw_pmp_2_cfg_x;
  wire  tlb_io_ptw_pmp_2_cfg_w;
  wire  tlb_io_ptw_pmp_2_cfg_r;
  wire [29:0] tlb_io_ptw_pmp_2_addr;
  wire [31:0] tlb_io_ptw_pmp_2_mask; 
  wire  tlb_io_ptw_pmp_3_cfg_l;
  wire [1:0] tlb_io_ptw_pmp_3_cfg_a;
  wire  tlb_io_ptw_pmp_3_cfg_x;
  wire  tlb_io_ptw_pmp_3_cfg_w;
  wire  tlb_io_ptw_pmp_3_cfg_r;
  wire [29:0] tlb_io_ptw_pmp_3_addr;
  wire [31:0] tlb_io_ptw_pmp_3_mask;
  wire  tlb_io_ptw_pmp_4_cfg_l;
  wire [1:0] tlb_io_ptw_pmp_4_cfg_a;
  wire  tlb_io_ptw_pmp_4_cfg_x;
  wire  tlb_io_ptw_pmp_4_cfg_w;
  wire  tlb_io_ptw_pmp_4_cfg_r;
  wire [29:0] tlb_io_ptw_pmp_4_addr;
  wire [31:0] tlb_io_ptw_pmp_4_mask;
  wire  tlb_io_ptw_pmp_5_cfg_l;
  wire [1:0] tlb_io_ptw_pmp_5_cfg_a; 
  wire  tlb_io_ptw_pmp_5_cfg_x; 
  wire  tlb_io_ptw_pmp_5_cfg_w;
  wire  tlb_io_ptw_pmp_5_cfg_r;
  wire [29:0] tlb_io_ptw_pmp_5_addr; 
  wire [31:0] tlb_io_ptw_pmp_5_mask; 
  wire  tlb_io_ptw_pmp_6_cfg_l; 
  wire [1:0] tlb_io_ptw_pmp_6_cfg_a;
  wire  tlb_io_ptw_pmp_6_cfg_x;
  wire  tlb_io_ptw_pmp_6_cfg_w;
  wire  tlb_io_ptw_pmp_6_cfg_r;
  wire [29:0] tlb_io_ptw_pmp_6_addr;
  wire [31:0] tlb_io_ptw_pmp_6_mask;
  wire  tlb_io_ptw_pmp_7_cfg_l;
  wire [1:0] tlb_io_ptw_pmp_7_cfg_a;
  wire  tlb_io_ptw_pmp_7_cfg_x;
  wire  tlb_io_ptw_pmp_7_cfg_w;
  wire  tlb_io_ptw_pmp_7_cfg_r;
  wire [29:0] tlb_io_ptw_pmp_7_addr;
  wire [31:0] tlb_io_ptw_pmp_7_mask;
  wire [3:0] amoalu_io_mask;
  wire [4:0] amoalu_io_cmd;
  wire [31:0] amoalu_io_lhs; 
  wire [31:0] amoalu_io_rhs;
  wire [31:0] amoalu_io_out;

  reg  s1_valid;
  reg [31:0] _RAND_0;
  reg [2:0] blockProbeAfterGrantCount;
  reg [31:0] _RAND_1;
  reg [6:0] lrscCount;
  reg [31:0] _RAND_2;
  wire  lrscValid;
  wire  block_probe_for_core_progress;
  reg  s1_probe;
  reg [31:0] _RAND_3;
  reg  s2_probe;
  reg [31:0] _RAND_4;
  reg [2:0] release_state;
  reg [31:0] _RAND_5;
  wire  releaseInFlight;
  reg  release_ack_wait;
  reg [31:0] _RAND_6;
  reg [31:0] release_ack_addr;
  reg [31:0] _RAND_7;
  wire  block_probe_for_pending_release_ack;
  reg  grantInProgress;
  reg [31:0] _RAND_8;
  wire  block_probe_for_ordering;
  reg  s2_valid;
  reg [31:0] _RAND_9;
  wire  tl_out__b_ready;
  reg [1:0] probe_bits_param;
  reg [31:0] _RAND_10;
  reg [3:0] probe_bits_size;
  reg [31:0] _RAND_11;
  reg  probe_bits_source;
  reg [31:0] _RAND_12;
  reg [31:0] probe_bits_address;
  reg [31:0] _RAND_13;
  wire  s1_valid_masked;
  reg [1:0] s2_probe_state_state;
  reg [31:0] _RAND_14;
  wire  s2_prb_ack_data;
  reg [31:0] _RAND_15;
  wire [2:0] _GEN_282;
  wire [2:0] tl_out__c_bits_opcode;
  wire [3:0] tl_out__c_bits_size;
  wire  c_last;
  reg  s2_release_data_valid;
  reg [31:0] _RAND_16;
  wire  tl_out__c_valid; 
  wire  releaseDone; 
  wire  probeNack;
  reg [4:0] s1_req_cmd;
  reg [31:0] _RAND_17;
  wire  s1_read; 
  reg [4:0] s2_req_cmd;
  reg [31:0] _RAND_18;
  wire  s2_write;
  reg  pstore1_held;
  reg [31:0] _RAND_19;
  wire  pstore1_valid_likely;
  reg [31:0] pstore1_addr;
  reg [31:0] _RAND_20;
  reg [31:0] s1_req_addr;
  reg [31:0] _RAND_21;
  wire  s1_write;
  reg [3:0] pstore1_mask;
  reg [31:0] _RAND_22;
  reg [1:0] s1_req_size;
  reg [31:0] _RAND_23;
  wire [3:0] s1_mask_xwr;
  reg  pstore2_valid;
  reg [31:0] _RAND_24;
  reg [31:0] pstore2_addr;
  reg [31:0] _RAND_25;
  reg [3:0] mask;
  reg [31:0] _RAND_26;
  wire  s1_hazard;
  wire  s1_raw_hazard;
  wire  s2_valid_no_xcpt;
  reg [31:0] _RAND_27;
  wire  s2_valid_masked;
  reg [1:0] s2_hit_state_state;
  reg [31:0] _RAND_28;
  wire  s2_hit;
  wire  s2_valid_hit_maybe_flush_pre_data_ecc_and_waw;
  wire  s2_read;
  wire  s2_readwrite;
  wire  s2_valid_hit_pre_data_ecc_and_waw;
  wire [1:0] s2_grow_param;
  wire  s2_update_meta;
  wire  s1_readwrite;
  wire  s1_flush_line;
  wire  s1_cmd_uses_tlb;
  wire  s1_nack;
  wire  s1_valid_not_nacked;
  reg [6:0] s1_req_tag;
  reg [31:0] _RAND_29;
  reg  s1_req_signed;
  reg [31:0] _RAND_30;
  reg  s1_req_phys;
  reg [31:0] _RAND_31;
  wire  s0_clk_en;
  wire  s1_sfence;
  reg  s1_flush_valid;
  reg [31:0] _RAND_32;
  reg  cached_grant_wait;
  reg [31:0] _RAND_33;
  wire  can_acquire_before_release;
  wire  inWriteback;
  reg  uncachedInFlight_0;
  reg [31:0] _RAND_34;
  reg [31:0] uncachedReqs_0_addr;
  reg [31:0] _RAND_35;
  reg [6:0] uncachedReqs_0_tag;
  reg [31:0] _RAND_36;
  reg [1:0] uncachedReqs_0_size;
  reg [31:0] _RAND_37;
  reg  uncachedReqs_0_signed;
  reg [31:0] _RAND_38;
  wire  s0_read;
  wire  res;
  reg  s1_did_read;
  reg [31:0] _RAND_39;
  wire [1:0] s1_victim_way; 
  wire [19:0] s1_meta_uncorrected_0_tag;
  wire [1:0] s1_meta_uncorrected_0_coh_state; 
  wire [19:0] s1_meta_uncorrected_1_tag;
  wire [1:0] s1_meta_uncorrected_1_coh_state;
  wire [19:0] s1_meta_uncorrected_2_tag;
  wire [1:0] s1_meta_uncorrected_2_coh_state;
  wire [19:0] s1_meta_uncorrected_3_tag;
  wire [1:0] s1_meta_uncorrected_3_coh_state;
  wire [19:0] s1_tag;
  wire [3:0] s1_meta_hit_way;
  wire [1:0] s1_meta_hit_state_state;
  wire  s2_hit_valid;
  reg [3:0] s2_hit_way;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
  wire [3:0] s2_victim_way;
  reg [3:0] s2_probe_way;
  reg [31:0] _RAND_42;
  wire [3:0] releaseWay;
  reg [31:0] s2_req_addr;
  reg [31:0] _RAND_43;
  reg [6:0] s2_req_tag;
  reg [31:0] _RAND_44;
  reg [1:0] s2_req_size;
  reg [31:0] _RAND_45;
  reg  s2_req_signed;
  reg [31:0] _RAND_46;
  wire  s2_cmd_flush_line;
  reg  s2_tlb_resp_pf_ld;
  reg [31:0] _RAND_47;
  reg  s2_tlb_resp_pf_st;
  reg [31:0] _RAND_48;
  reg  s2_tlb_resp_ae_ld;
  reg [31:0] _RAND_49;
  reg  s2_tlb_resp_ae_st;
  reg [31:0] _RAND_50;
  reg  s2_tlb_resp_ma_ld;
  reg [31:0] _RAND_51;
  reg  s2_tlb_resp_ma_st;
  reg [31:0] _RAND_52;
  reg  s2_tlb_resp_cacheable;
  reg [31:0] _RAND_53;
  reg [31:0] s2_uncached_resp_addr;
  reg [31:0] _RAND_54;
  reg [31:0] _RAND_55;
  wire [31:0] s2_vaddr;
  reg  s2_flush_valid_pre_tag_ecc;
  reg [31:0] _RAND_56;
  wire  en;
  wire  word_en;
  wire [31:0] s1_all_data_ways_0;
  wire [31:0] s1_all_data_ways_1;
  wire [31:0] s1_all_data_ways_2;
  wire [31:0] s1_all_data_ways_3;
  wire  s1_word_en;
  wire  grantIsUncachedData;
  reg  blockUncachedGrant;
  reg [31:0] _RAND_57;
  wire  grantIsRefill;
  wire  grantIsCached;
  reg [31:0] _RAND_58;
  wire  d_first;
  wire  canAcceptCachedGrant;
  wire  tl_out__d_ready;
  wire  grantIsUncached;
  wire [4:0] s1_data_way;
  reg [31:0] s2_data;
  reg [31:0] _RAND_59;
  wire [31:0] s2_data_corrected;
  wire  s2_valid_flush_line;
  wire  s2_valid_miss;
  wire  s2_uncached;
  wire  s2_valid_cached_miss;
  wire  s2_want_victimize;
  wire  s2_valid_uncached_pending;
  reg [31:0] _RAND_60;
  wire [19:0] s2_victim_tag;
  reg [1:0] _T_656_state;
  reg [31:0] _RAND_61;
  wire [1:0] s2_victim_state_state;
  wire [2:0] s2_report_param;
  wire [1:0] probeNewCoh_state;
  wire  s2_victim_dirty;
  wire [2:0] s2_shrink_param;
  wire [1:0] voluntaryNewCoh_state;
  wire  s2_dont_nack_uncached;
  wire  s2_dont_nack_misc;
  wire  lrscBackingOff;
  reg [25:0] lrscAddr;
  reg [31:0] _RAND_62;
  wire  lrscAddrMatch;
  wire  s2_sc_fail;
  reg [4:0] pstore1_cmd;
  reg [31:0] _RAND_63;
  reg [31:0] pstore1_data;
  reg [31:0] _RAND_64;
  reg [3:0] pstore1_way;
  reg [31:0] _RAND_65;
  reg  pstore1_rmw;
  reg [31:0] _RAND_66;
  wire  pstore_drain_opportunistic;
  reg [31:0] _RAND_67;
  wire  pstore_drain_on_miss;
  wire  pstore1_valid;
  wire  pstore_drain_structural;
  wire  pstore_drain;
  wire  advance_pstore1;
  reg [3:0] pstore2_way;
  reg [31:0] _RAND_68;
  wire [31:0] pstore1_storegen_data;
  reg [31:0] _RAND_69;
  reg [31:0] _RAND_70;
  reg [31:0] _RAND_71;
  reg [31:0] _RAND_72;
  wire [31:0] pstore2_storegen_data;
  wire  a_source;
  wire [31:0] acquire_address;
  wire [18:0] a_mask;
  wire [3:0] get_mask;
  wire [2:0] atomics_opcode;
  wire [2:0] atomics_param;
  wire [3:0] atomics_size;
  wire  atomics_source;
  wire [31:0] atomics_address;
  wire [3:0] atomics_mask;
  wire [31:0] atomics_data;
  wire  tl_out_a_valid;
  wire [3:0] putpartial_mask;
  wire  a_sel;
  wire  d_last;
  wire  d_done;
  wire [11:0] d_address_inc;
  wire  grantIsVoluntary;
  wire  uncachedRespIdxOH;
  wire [31:0] dontCareBits;
  wire  tl_out__e_valid;
  wire  c_first;
  wire [9:0] c_count;
  wire  releaseRejected;
  reg  s1_release_data_valid;
  reg [31:0] _RAND_73;
  wire [10:0] releaseDataBeat;
  wire  discard_line;
  wire [31:0] res_2_address;
  wire [1:0] newCoh_state;
  reg [31:0] _RAND_74;
  reg  doUncachedResp;
  reg [31:0] _RAND_75;
  reg  resetting;
  reg [31:0] _RAND_76;
  reg [31:0] _RAND_77;
  reg [7:0] flushCounter;
  reg [31:0] _RAND_78;
  wire [8:0] flushCounterNext;
  wire  flushDone;
  reg [31:0] _RAND_79;
  reg [9:0] _T_2372;
  reg  _T_384;
  reg [1:0] _T_649;
  reg [31:0] _T_393;
  reg [9:0] _T_2190;
  reg [19:0] _T_654;
  reg  _T_995;
  reg [7:0] _T_1066;
  reg [7:0] _T_1061;
  reg  _T_2475;
  reg [9:0] _T_2618;
  reg [7:0] _T_1056;
  reg [7:0] _T_1051;
  reg  _T_2540;
  MaxPeriodFibonacciLFSR MaxPeriodFibonacciLFSR (
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
  _2 metaArb (
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
  tag_array tag_array (
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
  DCacheDataArray data (
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
  _3 dataArb (
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
  TLB tlb (
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
  AMOALU amoalu (
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

// HasL1HellaCacheParameters

  assign lrscValid = lrscCount > 7'h3; 

  wire _T_2348 = blockProbeAfterGrantCount > 3'h0;
  assign block_probe_for_core_progress = _T_2348 | lrscValid;

  assign releaseInFlight = s1_probe | s2_probe | (release_state != 3'h0);

  assign block_probe_for_pending_release_ack = release_ack_wait & ((auto_out_b_bits_address[11:6] ^ release_ack_addr[11:6]) == 6'h0);

  assign block_probe_for_ordering = releaseInFlight | block_probe_for_pending_release_ack | grantInProgress;

  assign tl_out__b_ready = metaArb_io_in_6_ready & ((block_probe_for_core_progress | block_probe_for_ordering | s1_valid | s2_valid) == 1'h0);

  assign s1_valid_masked = s1_valid & !io_cpu_s1_kill;

  wire _T_695 = (4'h6 == {probe_bits_param,s2_probe_state_state}) ? 1'h0 
		: (4'h5 == {probe_bits_param,s2_probe_state_state}) ? 1'h0 
		: (4'h4 == {probe_bits_param,s2_probe_state_state}) ? 1'h0 
		: (4'hb == {probe_bits_param,s2_probe_state_state});
  wire _T_711 = (4'h2 == {probe_bits_param,s2_probe_state_state}) ? 1'h0 
		: (4'h1 == {probe_bits_param,s2_probe_state_state}) ? 1'h0 
		: (4'h0 == {probe_bits_param,s2_probe_state_state}) ? 1'h0 
		: (4'h7 == {probe_bits_param,s2_probe_state_state}) | _T_695;
  assign s2_prb_ack_data = (4'h3 == {probe_bits_param,s2_probe_state_state}) | _T_711;

  wire _T_2414 = release_state == 3'h2;
  wire _T_2415 = release_state == 3'h1;
  wire _T_2416 = release_state == 3'h6;
  wire _T_2417 = _T_2415 | _T_2416;
  assign tl_out__c_bits_opcode = _T_2417 ? 3'h7 
				: _T_2414 ? 3'h5 
				: 3'h4;

  assign tl_out__c_bits_size = _T_2417 ? 4'h6 : probe_bits_size;

  wire [26:0] _T_2366 = 27'hfff << tl_out__c_bits_size;
  wire [9:0] _T_2371 = tl_out__c_bits_opcode[0] ? ~ _T_2366[11:2] : 10'h0;
  wire _T_2376 = _T_2371 == 10'h0; 
  assign c_last = (_T_2372 == 10'h1) | _T_2376;

  wire _GEN_231 = s2_prb_ack_data ? s2_release_data_valid : 1'h1;
  wire _GEN_252 = s2_probe ? _GEN_231 : s2_release_data_valid;
  wire _T_2412 = release_state == 3'h5;
  wire _T_2413 = release_state == 3'h3;
  assign tl_out__c_valid = _T_2413 | _T_2412 | _GEN_252;

  wire _T_2364 = auto_out_c_ready & tl_out__c_valid;
  assign releaseDone = c_last & _T_2364;

  wire _T_2404 = s2_probe_state_state > 2'h0;
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

  assign pstore1_valid_likely = (s2_valid & s2_write) | pstore1_held;

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

  wire _T_350 = s1_req_addr[0] | (s1_req_size >= 2'h1);
  wire _T_352 = s1_req_addr[0] ? 1'h0 : 1'h1;
  wire [1:0] _T_353 = {_T_350,_T_352};
  wire [1:0] _T_355 = s1_req_addr[1] ? _T_353 : 2'h0;
  wire [1:0] _T_357 = (s1_req_size >= 2'h2) ? 2'h3 : 2'h0;
  wire [1:0] _T_358 = _T_355 | _T_357;
  wire [1:0] _T_360 = s1_req_addr[1] ? 2'h0 : _T_353;
  assign s1_mask_xwr = {_T_358,_T_360};

  assign s1_hazard = (pstore1_valid_likely & (pstore1_addr[11:2] == s1_req_addr[11:2]) & ((pstore1_mask & s1_mask_xwr) != 4'h0)) | (pstore2_valid & (pstore2_addr[11:2] == s1_req_addr[11:2]) & ((mask & s1_mask_xwr) != 4'h0));

  assign s1_raw_hazard = s1_read & s1_hazard;

  assign s2_valid_no_xcpt = s2_valid & !({io_cpu_s2_xcpt_ma_ld,io_cpu_s2_xcpt_ma_st,io_cpu_s2_xcpt_pf_ld,io_cpu_s2_xcpt_pf_st,io_cpu_s2_xcpt_ae_ld,io_cpu_s2_xcpt_ae_st} != 6'h0);

  assign s2_valid_masked = s2_valid_no_xcpt & _T_384;

  wire _T_541 = s2_req_cmd == 5'h6;
  wire _T_542 = s2_write 
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

  wire _T_421 = s2_req_cmd == 5'h7;
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

  wire _GEN_113 = (s1_valid & s1_raw_hazard) | io_cpu_s2_nack | (s2_valid_hit_pre_data_ecc_and_waw & s2_update_meta) | (s1_valid & s1_cmd_uses_tlb & tlb_io_resp_miss);
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

  wire _T_310 = s1_flush_valid == 1'h0;
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

  wire _T_2258 = grantIsRefill & !dataArb_io_in_1_ready;
  wire _GEN_200 = _T_2258 ? 1'h0 
		: grantIsCached ? ((!d_first | auto_out_e_ready) & canAcceptCachedGrant) 
		: 1'h1;
  wire _T_2344 = grantIsUncachedData & (blockUncachedGrant | s1_valid);
  assign tl_out__d_ready = _T_2344 ? 1'h0 : _GEN_200;

  assign grantIsUncached = grantIsUncachedData | (auto_out_d_bits_opcode == 3'h0) | (auto_out_d_bits_opcode == 3'h2);

  wire [3:0] _T_337 = inWriteback ? releaseWay : s1_meta_hit_way;
  wire _T_2227 = tl_out__d_ready & auto_out_d_valid;
  assign s1_data_way = !_T_2227 ? {{1'd0}, _T_337} 
			: grantIsCached ? {{1'd0}, _T_337} 
			: !grantIsUncached ? {{1'd0}, _T_337} 
			: grantIsUncachedData ? 5'h10 
			: {{1'd0}, _T_337};

  assign s2_data_corrected = {s2_data[31:24],s2_data[23:16],s2_data[15:8],s2_data[7:0]};

  assign s2_valid_flush_line = s2_valid_hit_maybe_flush_pre_data_ecc_and_waw & s2_cmd_flush_line & can_acquire_before_release;

  assign s2_valid_miss = s2_valid_masked & s2_readwrite & !s2_hit & can_acquire_before_release;
  assign s2_uncached = s2_tlb_resp_cacheable == 1'h0;

  wire _T_636 = s2_uncached == 1'h0;
  wire _T_639 = uncachedInFlight_0 == 1'h0;
  assign s2_valid_cached_miss = s2_valid_miss & _T_636 & _T_639;

  assign s2_want_victimize = s2_valid_cached_miss | s2_valid_flush_line | s2_flush_valid_pre_tag_ecc;

  assign s2_valid_uncached_pending = s2_valid_miss & s2_uncached & _T_639;

  assign s2_victim_tag = s2_valid_flush_line ? s2_req_addr[31:12] : _T_654;

  assign s2_victim_state_state = s2_hit_valid ? s2_hit_state_state : _T_656_state;

  wire _T_714 = 4'h3 == {probe_bits_param,s2_probe_state_state};
  wire _T_710 = 4'h2 == {probe_bits_param,s2_probe_state_state};
  wire _T_706 = 4'h1 == {probe_bits_param,s2_probe_state_state};
  wire _T_702 = 4'h0 == {probe_bits_param,s2_probe_state_state};
  wire _T_698 = 4'h7 == {probe_bits_param,s2_probe_state_state};
  wire _T_694 = 4'h6 == {probe_bits_param,s2_probe_state_state};
  wire _T_690 = 4'h5 == {probe_bits_param,s2_probe_state_state};
  wire _T_686 = 4'h4 == {probe_bits_param,s2_probe_state_state};
  wire _T_682 = 4'hb == {probe_bits_param,s2_probe_state_state}; 
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

  wire [3:0] _T_722 = {2'h2,s2_victim_state_state};
  wire _T_775 = 4'h2 == _T_722;
  wire _T_771 = 4'h1 == _T_722;
  wire _T_767 = 4'h0 == _T_722;
  wire _T_763 = 4'h7 == _T_722;
  wire _T_759 = 4'h6 == _T_722;
  wire _T_755 = 4'h5 == _T_722;
  wire _T_751 = 4'h4 == _T_722;
  wire _T_747 = 4'hb == _T_722;
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
  wire _T_779 = 4'h3 == _T_722; 
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

  wire _T_842 = lrscCount > 7'h0;
  assign lrscBackingOff = _T_842 & !lrscValid;

  assign lrscAddrMatch = lrscAddr == s2_req_addr[31:6];

  assign s2_sc_fail = _T_421 & !(lrscValid & lrscAddrMatch);

  assign pstore_drain_opportunistic = (io_cpu_req_valid & res) == 1'h0;

  assign pstore_drain_on_miss = releaseInFlight | _T_995;

  wire _T_925 = s2_valid_hit_pre_data_ecc_and_waw & s2_write;
  assign pstore1_valid = (_T_925 & !s2_sc_fail) | pstore1_held;

  assign pstore_drain_structural = pstore1_valid_likely & pstore2_valid & ((s1_valid & s1_write) | pstore1_rmw);

  wire _T_1009 = _T_925 | pstore1_held;
  wire _T_1027 = ((_T_1009 & !pstore1_rmw) | pstore2_valid) & (pstore_drain_opportunistic | pstore_drain_on_miss);
  assign pstore_drain = pstore_drain_structural | _T_1027;

  assign advance_pstore1 = pstore1_valid & (pstore2_valid == pstore_drain);

  assign pstore1_storegen_data = amoalu_io_out;

  assign pstore2_storegen_data = {_T_1066,_T_1061,_T_1056,_T_1051};

  assign a_source = 1'h1;

  assign acquire_address = {s2_req_addr[31:6], 6'h0};

  assign a_mask = {{15'd0}, pstore1_mask};

  wire [1:0] _T_1271 = (2'h1 << s2_req_size[0]) | 2'h1;
  wire _T_1272 = s2_req_size >= 2'h2;
  wire _T_1281 = _T_1272 
		| (_T_1271[1] & s2_req_addr[1]);
  wire _T_1296 = _T_1281 
		| (_T_1271[0] & s2_req_addr[1] & s2_req_addr[0]);
  wire _T_1293 = _T_1281 
		| (_T_1271[0] & s2_req_addr[1] & !s2_req_addr[0]);
  wire _T_1278 = _T_1272 
		| (_T_1271[1] & !s2_req_addr[1]);
  wire _T_1290 = _T_1278 
		| (_T_1271[0] & !s2_req_addr[1] & s2_req_addr[0]);
  wire _T_1287 = _T_1278 
		| (_T_1271[0] & !s2_req_addr[1] & !s2_req_addr[0]);
  assign get_mask = {_T_1296,_T_1293,_T_1290,_T_1287};
// Passed
  wire _T_2091 = 5'hf == s2_req_cmd;
  wire _T_2093 = 5'he == s2_req_cmd;
  wire _T_2095 = 5'hd == s2_req_cmd;
  wire _T_2097 = 5'hc == s2_req_cmd;
  wire _T_2099 = 5'h8 == s2_req_cmd;
  wire _T_2101 = 5'hb == s2_req_cmd;
  wire _T_2103 = 5'ha == s2_req_cmd;
  wire _T_2105 = 5'h9 == s2_req_cmd;
  wire _T_2107 = 5'h4 == s2_req_cmd;
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

  wire _T_2111 = s2_valid_cached_miss & !s2_victim_dirty;
  assign tl_out_a_valid = _T_2111 | s2_valid_uncached_pending;

  assign putpartial_mask = a_mask[3:0];

  wire [1:0] _T_2178 = 2'h1 << a_source; 
  assign a_sel = _T_2178[1:1];

  wire [26:0] _T_2184 = 27'hfff << auto_out_d_bits_size;
  wire [9:0] _T_2189 = auto_out_d_bits_opcode[0] ? ~ (_T_2184[11:2]) : 10'h0;
  assign d_last = (_T_2190 == 10'h1) | (_T_2189 == 10'h0);

  assign d_done = d_last & _T_2227;

  wire [9:0] _T_2192 = _T_2190 - 10'h1;
  wire [9:0] _T_2196 = _T_2189 & (~ _T_2192);
  assign d_address_inc = {_T_2196, 2'h0};

  assign grantIsVoluntary = auto_out_d_bits_opcode == 3'h6;

  wire [1:0] _T_2224 = 2'h1 << auto_out_d_bits_source;
  assign uncachedRespIdxOH = _T_2224[1:1]; 

  assign dontCareBits = {tlb_io_resp_paddr[31:2], 2'h0};

  wire _T_2245 = auto_out_d_valid & d_first & grantIsCached & canAcceptCachedGrant; 
  assign tl_out__e_valid = _T_2258 ? 1'h0 : _T_2245;

  assign c_first = _T_2372 == 10'h0;

  wire [9:0] _T_2374 = _T_2372 - 10'h1;
  assign c_count = _T_2371 & (~ _T_2374);

  assign releaseRejected = tl_out__c_valid & !auto_out_c_ready;

  wire [1:0] _T_2387 = releaseRejected ? 2'h0 : ({{1'd0}, s1_release_data_valid} + {1'h0,s2_release_data_valid});
  assign releaseDataBeat = {1'h0,c_count} + {{9'd0}, _T_2387};

  assign discard_line = s2_valid_flush_line & s2_req_size[1];

  assign res_2_address = {s2_victim_tag, s2_req_addr[11:6], 6'h0};

  assign newCoh_state = _T_2417 ? voluntaryNewCoh_state : probeNewCoh_state;

  assign flushCounterNext = flushCounter + 8'h1;

  assign flushDone = flushCounterNext[8:6] == 3'h4;

  assign auto_out_a_valid = _T_2111 | s2_valid_uncached_pending;

  wire _T_2172 = s2_read == 1'h0;
  wire _T_419 = s2_req_cmd == 5'h11;
  wire _T_2170 = s2_write == 1'h0;
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

  wire _T_2359 = (block_probe_for_core_progress | block_probe_for_ordering | s1_valid | s2_valid) == 1'h0;
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
  wire _T_52 = s1_nack == 1'h0;
  wire _GEN_22 = (!tlb_io_req_ready & !tlb_io_ptw_resp_valid & !io_cpu_req_bits_phys) ? 1'h0 
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

  wire [15:0] _T_2511 = s2_req_addr[1] ? s2_data_corrected[31:16] : s2_data_corrected[15:0];
  wire [15:0] _T_2521 = (s2_req_size == 2'h1) ? ((s2_req_signed & _T_2511[15]) ? 16'hffff : 16'h0) : s2_data_corrected[31:16];
  wire [31:0] _T_2522 = {_T_2521,_T_2511};
  wire [7:0] _T_2528 = _T_421 ? 8'h0 
		: s2_req_addr[0] ? _T_2522[15:8] 
		: _T_2522[7:0];
  wire [23:0] _T_2536 = ((s2_req_size == 2'h0) | _T_421) ? ((s2_req_signed & _T_2528[7]) ? 24'hffffff : 24'h0) : _T_2522[31:8];
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

  wire [3:0] _T_650 = 4'h1 << _T_649;
  assign metaArb_io_in_2_bits_way_en = s2_hit_valid ? s2_hit_way : _T_650;

  assign metaArb_io_in_2_bits_data = {s2_grow_param, s2_req_addr[31:12]};

  assign metaArb_io_in_3_valid = grantIsCached & d_done & !auto_out_d_bits_denied;
  assign metaArb_io_in_3_bits_addr = {io_cpu_req_bits_addr[31:12], s2_vaddr[11:0]};
  assign metaArb_io_in_3_bits_idx = s2_vaddr[11:6];
  assign metaArb_io_in_3_bits_way_en = s2_hit_valid ? s2_hit_way : _T_650;

  wire [1:0] _T_2339 = (4'h1 == {s2_write,_T_542,auto_out_d_bits_param}) ? 2'h1 
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

  wire _T_2408 = release_state == 3'h4;
  assign metaArb_io_in_6_valid = _T_2408 | (auto_out_b_valid & (!block_probe_for_core_progress | lrscBackingOff));

  wire [32:0] _GEN_265 = _T_2408 ? {1'h0,probe_bits_address} : {1'h0,auto_out_b_bits_address};
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

  wire [31:0] _T_1089 = pstore2_valid ? pstore2_storegen_data : pstore1_data;
  assign dataArb_io_in_0_bits_wdata = {_T_1089[31:24],_T_1089[23:16],_T_1089[15:8],_T_1089[7:0]};

  wire [3:0] _T_1099 = pstore2_valid ? mask : pstore1_mask;
  assign dataArb_io_in_0_bits_eccMask = {_T_1099[3],_T_1099[2],_T_1099[1],_T_1099[0]};

  assign dataArb_io_in_0_bits_way_en = pstore2_valid ? pstore2_way : pstore1_way;

  wire _T_2256 = auto_out_d_valid & grantIsRefill & canAcceptCachedGrant;
  assign dataArb_io_in_1_valid = _T_2344 ? (auto_out_d_valid | _T_2256) : _T_2256;

  wire [31:0] _T_2261 = {s2_vaddr[31:6], 6'h0} | {{20'd0}, d_address_inc};
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
  wire _T_850 = (s2_valid_hit_pre_data_ecc_and_waw & _T_541 & !cached_grant_wait) | s2_valid_cached_miss;
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

  wire _T_49 = tl_out__b_ready & auto_out_b_valid;
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

  wire _T_2399 = s2_victim_dirty & !discard_line;
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
  wire _T_2439 = _T_2364 & c_first;
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
				if (tl_out__c_bits_opcode[0]) begin
					_T_2372 <= ~ _T_2366[11:2];
				end else begin
					_T_2372 <= 10'h0;
				end
			end else begin
				_T_2372 <= _T_2374;
			end
		end
	end
	s2_release_data_valid <= s1_release_data_valid & !releaseRejected;
end

  wire _T_391 = s1_valid_not_nacked | s1_flush_valid;
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
  wire _T_866 = s1_valid_not_nacked & s1_write;
  wire _T_81 = s1_req_cmd == 5'h11;
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

  wire _T_1038 = pstore_drain == 1'h0;
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

  wire _T_57 = metaArb_io_in_7_ready == 1'h0;
  wire _T_643 = s2_flush_valid_pre_tag_ecc == 1'h0;
  wire _T_107 = release_state == 3'h0;
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

  wire _T_2180 = auto_out_a_ready & tl_out_a_valid;
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
  wire _T_2232 = uncachedRespIdxOH & d_last;
  wire _GEN_114 = a_sel | uncachedInFlight_0;
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

  wire _T_135 = io_cpu_req_bits_cmd == 5'h1;
  wire _T_164 = io_cpu_req_bits_cmd == 5'h11;
  wire _T_116 = io_cpu_req_bits_cmd == 5'h7;
  wire _T_134 = (io_cpu_req_bits_cmd == 5'h4) 
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
  wire _T_2257 = dataArb_io_in_1_ready == 1'h0;
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

  wire [4:0] _T_476 = s1_word_en ? s1_data_way : 5'h0;
  wire [31:0] _T_490 = (_T_476[0] ? s1_all_data_ways_0 : 32'h0) 
		| (_T_476[1] ? s1_all_data_ways_1 : 32'h0) 
		| (_T_476[2] ? s1_all_data_ways_2 : 32'h0) 
		| (_T_476[3] ? s1_all_data_ways_3 : 32'h0) 
		| (_T_476[4] ? {auto_out_d_bits_data[31:24],auto_out_d_bits_data[23:16],auto_out_d_bits_data[15:8],auto_out_d_bits_data[7:0]} : 32'h0); 
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

  wire _T_2621 = _T_2618 == 10'h0;
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
  wire _T_195 = (!(s0_read | ((_T_135 | _T_164 | _T_116 | _T_134) & _T_164)) | res | reset) == 1'h0;
  wire _T_371 = (!(s1_valid_masked & _T_81) | ((s1_mask_xwr | (~ io_cpu_s1_data_mask)) == 4'hf) | reset) == 1'h0;
  wire _T_1014 = (pstore1_rmw | (_T_1009 == pstore1_valid) | reset) == 1'h0;
  wire _GEN_324 = _T_2227 & grantIsCached;
  wire _GEN_329 = _T_2227 & !grantIsCached & grantIsUncached & _T_2232;
  wire _GEN_338 = _T_2227 & !grantIsCached & !grantIsUncached & grantIsVoluntary;
  wire _T_2230 = (cached_grant_wait | reset) == 1'h0;
  wire _T_2235 = (uncachedInFlight_0 | reset) == 1'h0;
  wire _T_2242 = (release_ack_wait | reset) == 1'h0;
  wire _T_2254 = (((auto_out_e_ready & tl_out__e_valid) == (_T_2227 & d_first & grantIsCached)) | reset) == 1'h0;
  wire _T_2393 = (s2_valid_flush_line | s2_flush_valid_pre_tag_ecc | io_cpu_s2_nack | reset) == 1'h0;
  wire _T_2504 = (!s2_valid_hit_pre_data_ecc_and_waw | reset) == 1'h0;
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
//
`endif // MY_ASSIGNMENT
endmodule
`endif // __DCache

