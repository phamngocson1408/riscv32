`include "include_module.v"
`ifdef __Rocket
module Rocket(
  input         clock,
  input         reset,
  input         io_interrupts_debug,
  input         io_interrupts_mtip,
  input         io_interrupts_msip,
  input         io_interrupts_meip,
  input         io_interrupts_seip,
  output        io_imem_might_request,
  output        io_imem_req_valid,
  output [31:0] io_imem_req_bits_pc,
  output        io_imem_req_bits_speculative,
  output        io_imem_sfence_valid,
  output        io_imem_sfence_bits_rs1,
  output        io_imem_sfence_bits_rs2,
  output [31:0] io_imem_sfence_bits_addr,
  output        io_imem_resp_ready,
  input         io_imem_resp_valid,
  input         io_imem_resp_bits_btb_taken,
  input         io_imem_resp_bits_btb_bridx,
  input  [4:0]  io_imem_resp_bits_btb_entry,
  input  [7:0]  io_imem_resp_bits_btb_bht_history,
  input  [31:0] io_imem_resp_bits_pc,
  input  [31:0] io_imem_resp_bits_data,
  input         io_imem_resp_bits_xcpt_pf_inst,
  input         io_imem_resp_bits_xcpt_ae_inst,
  input         io_imem_resp_bits_replay,
  output        io_imem_btb_update_valid,
  output [4:0]  io_imem_btb_update_bits_prediction_entry,
  output [31:0] io_imem_btb_update_bits_pc,
  output        io_imem_btb_update_bits_isValid,
  output [31:0] io_imem_btb_update_bits_br_pc,
  output [1:0]  io_imem_btb_update_bits_cfiType,
  output        io_imem_bht_update_valid,
  output [7:0]  io_imem_bht_update_bits_prediction_history,
  output [31:0] io_imem_bht_update_bits_pc,
  output        io_imem_bht_update_bits_branch,
  output        io_imem_bht_update_bits_taken,
  output        io_imem_bht_update_bits_mispredict,
  output        io_imem_flush_icache,
  input         io_dmem_req_ready,
  output        io_dmem_req_valid,
  output [31:0] io_dmem_req_bits_addr,
  output [6:0]  io_dmem_req_bits_tag, 
  output [4:0]  io_dmem_req_bits_cmd,
  output [1:0]  io_dmem_req_bits_size,
  output        io_dmem_req_bits_signed,
  output        io_dmem_s1_kill,
  output [31:0] io_dmem_s1_data_data,
  input         io_dmem_s2_nack,
  input         io_dmem_resp_valid,
  input  [6:0]  io_dmem_resp_bits_tag,
  input  [31:0] io_dmem_resp_bits_data,
  input         io_dmem_resp_bits_replay,
  input         io_dmem_resp_bits_has_data,
  input  [31:0] io_dmem_resp_bits_data_word_bypass,
  input         io_dmem_replay_next,
  input         io_dmem_s2_xcpt_ma_ld,
  input         io_dmem_s2_xcpt_ma_st,
  input         io_dmem_s2_xcpt_pf_ld,
  input         io_dmem_s2_xcpt_pf_st,
  input         io_dmem_s2_xcpt_ae_ld,
  input         io_dmem_s2_xcpt_ae_st,
  input         io_dmem_ordered,
  input         io_dmem_perf_release,
  input         io_dmem_perf_grant,
  output        io_ptw_ptbr_mode,
  output [21:0] io_ptw_ptbr_ppn,
  output        io_ptw_sfence_valid,
  output        io_ptw_sfence_bits_rs1,
  output        io_ptw_status_debug,
  output [1:0]  io_ptw_status_dprv,
  output [1:0]  io_ptw_status_prv,
  output        io_ptw_status_mxr,
  output        io_ptw_status_sum,
  output        io_ptw_pmp_0_cfg_l,
  output [1:0]  io_ptw_pmp_0_cfg_a,
  output        io_ptw_pmp_0_cfg_x,
  output        io_ptw_pmp_0_cfg_w,
  output        io_ptw_pmp_0_cfg_r,
  output [29:0] io_ptw_pmp_0_addr,
  output [31:0] io_ptw_pmp_0_mask,
  output        io_ptw_pmp_1_cfg_l,
  output [1:0]  io_ptw_pmp_1_cfg_a,
  output        io_ptw_pmp_1_cfg_x,
  output        io_ptw_pmp_1_cfg_w,
  output        io_ptw_pmp_1_cfg_r,
  output [29:0] io_ptw_pmp_1_addr,
  output [31:0] io_ptw_pmp_1_mask,
  output        io_ptw_pmp_2_cfg_l,
  output [1:0]  io_ptw_pmp_2_cfg_a,
  output        io_ptw_pmp_2_cfg_x,
  output        io_ptw_pmp_2_cfg_w,
  output        io_ptw_pmp_2_cfg_r,
  output [29:0] io_ptw_pmp_2_addr,
  output [31:0] io_ptw_pmp_2_mask,
  output        io_ptw_pmp_3_cfg_l,
  output [1:0]  io_ptw_pmp_3_cfg_a,
  output        io_ptw_pmp_3_cfg_x,
  output        io_ptw_pmp_3_cfg_w,
  output        io_ptw_pmp_3_cfg_r,
  output [29:0] io_ptw_pmp_3_addr,
  output [31:0] io_ptw_pmp_3_mask,
  output        io_ptw_pmp_4_cfg_l,
  output [1:0]  io_ptw_pmp_4_cfg_a,
  output        io_ptw_pmp_4_cfg_x,
  output        io_ptw_pmp_4_cfg_w,
  output        io_ptw_pmp_4_cfg_r,
  output [29:0] io_ptw_pmp_4_addr,
  output [31:0] io_ptw_pmp_4_mask,
  output        io_ptw_pmp_5_cfg_l,
  output [1:0]  io_ptw_pmp_5_cfg_a,
  output        io_ptw_pmp_5_cfg_x,
  output        io_ptw_pmp_5_cfg_w,
  output        io_ptw_pmp_5_cfg_r,
  output [29:0] io_ptw_pmp_5_addr,
  output [31:0] io_ptw_pmp_5_mask,
  output        io_ptw_pmp_6_cfg_l,
  output [1:0]  io_ptw_pmp_6_cfg_a,
  output        io_ptw_pmp_6_cfg_x,
  output        io_ptw_pmp_6_cfg_w,
  output        io_ptw_pmp_6_cfg_r,
  output [29:0] io_ptw_pmp_6_addr,
  output [31:0] io_ptw_pmp_6_mask,
  output        io_ptw_pmp_7_cfg_l,
  output [1:0]  io_ptw_pmp_7_cfg_a,
  output        io_ptw_pmp_7_cfg_x,
  output        io_ptw_pmp_7_cfg_w,
  output        io_ptw_pmp_7_cfg_r,
  output [29:0] io_ptw_pmp_7_addr,
  output [31:0] io_ptw_pmp_7_mask,
  output [31:0] io_ptw_customCSRs_csrs_0_value,
  output [31:0] io_fpu_inst,
  output [31:0] io_fpu_fromint_data,
  output [2:0]  io_fpu_fcsr_rm,
  input         io_fpu_fcsr_flags_valid,
  input  [4:0]  io_fpu_fcsr_flags_bits, 
  input  [31:0] io_fpu_store_data,
  input  [31:0] io_fpu_toint_data,
  output        io_fpu_dmem_resp_val,
  output [4:0]  io_fpu_dmem_resp_tag,
  output [31:0] io_fpu_dmem_resp_data,
  output        io_fpu_valid,
  input         io_fpu_fcsr_rdy,
  input         io_fpu_nack_mem,
  input         io_fpu_illegal_rm,
  output        io_fpu_killx,
  output        io_fpu_killm,
  input         io_fpu_dec_wen,
  input         io_fpu_dec_ren1,
  input         io_fpu_dec_ren2,
  input         io_fpu_dec_ren3,
  input         io_fpu_sboard_set,
  input         io_fpu_sboard_clr,
  input  [4:0]  io_fpu_sboard_clra
);
  wire  ibuf_clock;
  wire  ibuf_reset;
  wire  ibuf_io_imem_ready;
  wire  ibuf_io_imem_valid;
  wire  ibuf_io_imem_bits_btb_taken; 
  wire  ibuf_io_imem_bits_btb_bridx; 
  wire [4:0] ibuf_io_imem_bits_btb_entry; 
  wire [7:0] ibuf_io_imem_bits_btb_bht_history;
  wire [31:0] ibuf_io_imem_bits_pc; 
  wire [31:0] ibuf_io_imem_bits_data;
  wire  ibuf_io_imem_bits_xcpt_pf_inst;
  wire  ibuf_io_imem_bits_xcpt_ae_inst;
  wire  ibuf_io_imem_bits_replay;
  wire  ibuf_io_kill; 
  wire [31:0] ibuf_io_pc;
  wire [4:0] ibuf_io_btb_resp_entry; 
  wire [7:0] ibuf_io_btb_resp_bht_history; 
  wire  ibuf_io_inst_0_ready;
  wire  ibuf_io_inst_0_valid;
  wire  ibuf_io_inst_0_bits_xcpt0_pf_inst;
  wire  ibuf_io_inst_0_bits_xcpt0_ae_inst;
  wire  ibuf_io_inst_0_bits_xcpt1_pf_inst;
  wire  ibuf_io_inst_0_bits_xcpt1_ae_inst;
  wire  ibuf_io_inst_0_bits_replay;
  wire  ibuf_io_inst_0_bits_rvc;
  wire [31:0] ibuf_io_inst_0_bits_inst_bits;
  wire [4:0] ibuf_io_inst_0_bits_inst_rd;
  wire [4:0] ibuf_io_inst_0_bits_inst_rs1;
  wire [4:0] ibuf_io_inst_0_bits_inst_rs2;
  wire [4:0] ibuf_io_inst_0_bits_inst_rs3;
  wire [31:0] ibuf_io_inst_0_bits_raw;

// General registers
  reg [31:0] rf [0:30];
  reg [31:0] _RAND_0;
  wire [31:0] rf_rdata1; 
  reg [31:0] _RAND_1;
  wire [31:0] rf_rdata2; 
  reg [31:0] _RAND_2;
  wire [31:0] rf_wdata; 
  wire  csr_clock; 
  wire  csr_reset;
  wire  csr_io_ungated_clock; 
  wire  csr_io_interrupts_debug;
  wire  csr_io_interrupts_mtip;
  wire  csr_io_interrupts_msip;
  wire  csr_io_interrupts_meip;
  wire  csr_io_interrupts_seip;
  wire [11:0] csr_io_rw_addr; 
  wire [2:0] csr_io_rw_cmd;
  wire [31:0] csr_io_rw_rdata;
  wire [31:0] csr_io_rw_wdata;
  wire [11:0] csr_io_decode_0_csr;
  wire  csr_io_decode_0_fp_illegal;
  wire  csr_io_decode_0_fp_csr; 
  wire  csr_io_decode_0_read_illegal;
  wire  csr_io_decode_0_write_illegal;
  wire  csr_io_decode_0_write_flush;
  wire  csr_io_decode_0_system_illegal;
  wire  csr_io_csr_stall;
  wire  csr_io_eret;
  wire  csr_io_singleStep; 
  wire  csr_io_status_debug;
  wire  csr_io_status_cease;
  wire [31:0] csr_io_status_isa;
  wire [1:0] csr_io_status_dprv;
  wire [1:0] csr_io_status_prv; 
  wire  csr_io_status_sd;
  wire [26:0] csr_io_status_zero2; 
  wire [1:0] csr_io_status_sxl; 
  wire [1:0] csr_io_status_uxl;
  wire  csr_io_status_sd_rv32; 
  wire [5:0] csr_io_status_zero1; 
  wire [1:0] csr_io_status_vs;
  wire  csr_io_status_tsr;
  wire  csr_io_status_tw; 
  wire  csr_io_status_tvm;
  wire  csr_io_status_mxr;
  wire  csr_io_status_sum;
  wire  csr_io_status_mprv;
  wire [1:0] csr_io_status_xs; 
  wire [1:0] csr_io_status_fs;
  wire [1:0] csr_io_status_mpp; 
  wire [1:0] csr_io_status_hpp; 
  wire  csr_io_status_spp; 
  wire  csr_io_status_mpie;
  wire  csr_io_status_hpie;
  wire  csr_io_status_spie;
  wire  csr_io_status_upie;
  wire  csr_io_status_mie;
  wire  csr_io_status_hie;
  wire  csr_io_status_sie;
  wire  csr_io_status_uie; 
  wire  csr_io_ptbr_mode;
  wire [21:0] csr_io_ptbr_ppn; 
  wire [31:0] csr_io_evec;
  wire  csr_io_exception;
  wire  csr_io_retire; 
  wire [31:0] csr_io_cause; 
  wire [31:0] csr_io_pc; 
  wire [31:0] csr_io_tval;
  wire [31:0] csr_io_time;
  wire [2:0] csr_io_fcsr_rm;
  wire  csr_io_fcsr_flags_valid;
  wire [4:0] csr_io_fcsr_flags_bits; 
  wire  csr_io_interrupt;
  wire [31:0] csr_io_interrupt_cause;
  wire  csr_io_bp_0_control_action;
  wire [1:0] csr_io_bp_0_control_tmatch; 
  wire  csr_io_bp_0_control_m;
  wire  csr_io_bp_0_control_s; 
  wire  csr_io_bp_0_control_u;
  wire  csr_io_bp_0_control_x;
  wire  csr_io_bp_0_control_w;
  wire  csr_io_bp_0_control_r;
  wire [31:0] csr_io_bp_0_address; 
  wire  csr_io_pmp_0_cfg_l; 
  wire [1:0] csr_io_pmp_0_cfg_a;
  wire  csr_io_pmp_0_cfg_x; 
  wire  csr_io_pmp_0_cfg_w;
  wire  csr_io_pmp_0_cfg_r;
  wire [29:0] csr_io_pmp_0_addr;
  wire [31:0] csr_io_pmp_0_mask;
  wire  csr_io_pmp_1_cfg_l;
  wire [1:0] csr_io_pmp_1_cfg_a;
  wire  csr_io_pmp_1_cfg_x;
  wire  csr_io_pmp_1_cfg_w;
  wire  csr_io_pmp_1_cfg_r;
  wire [29:0] csr_io_pmp_1_addr;
  wire [31:0] csr_io_pmp_1_mask;
  wire  csr_io_pmp_2_cfg_l; 
  wire [1:0] csr_io_pmp_2_cfg_a;
  wire  csr_io_pmp_2_cfg_x;
  wire  csr_io_pmp_2_cfg_w;
  wire  csr_io_pmp_2_cfg_r;
  wire [29:0] csr_io_pmp_2_addr; 
  wire [31:0] csr_io_pmp_2_mask; 
  wire  csr_io_pmp_3_cfg_l;
  wire [1:0] csr_io_pmp_3_cfg_a;
  wire  csr_io_pmp_3_cfg_x;
  wire  csr_io_pmp_3_cfg_w;
  wire  csr_io_pmp_3_cfg_r;
  wire [29:0] csr_io_pmp_3_addr; 
  wire [31:0] csr_io_pmp_3_mask;
  wire  csr_io_pmp_4_cfg_l;
  wire [1:0] csr_io_pmp_4_cfg_a; 
  wire  csr_io_pmp_4_cfg_x; 
  wire  csr_io_pmp_4_cfg_w; 
  wire  csr_io_pmp_4_cfg_r; 
  wire [29:0] csr_io_pmp_4_addr; 
  wire [31:0] csr_io_pmp_4_mask; 
  wire  csr_io_pmp_5_cfg_l;
  wire [1:0] csr_io_pmp_5_cfg_a;
  wire  csr_io_pmp_5_cfg_x; 
  wire  csr_io_pmp_5_cfg_w; 
  wire  csr_io_pmp_5_cfg_r;
  wire [29:0] csr_io_pmp_5_addr;
  wire [31:0] csr_io_pmp_5_mask;
  wire  csr_io_pmp_6_cfg_l;
  wire [1:0] csr_io_pmp_6_cfg_a;
  wire  csr_io_pmp_6_cfg_x;
  wire  csr_io_pmp_6_cfg_w;
  wire  csr_io_pmp_6_cfg_r;
  wire [29:0] csr_io_pmp_6_addr; 
  wire [31:0] csr_io_pmp_6_mask; 
  wire  csr_io_pmp_7_cfg_l; 
  wire [1:0] csr_io_pmp_7_cfg_a; 
  wire  csr_io_pmp_7_cfg_x;
  wire  csr_io_pmp_7_cfg_w;
  wire  csr_io_pmp_7_cfg_r;
  wire [29:0] csr_io_pmp_7_addr;
  wire [31:0] csr_io_pmp_7_mask;
  wire [31:0] csr_io_inst_0; 
  wire  csr_io_trace_0_valid; 
  wire [31:0] csr_io_trace_0_iaddr; 
  wire [31:0] csr_io_trace_0_insn;
  wire  csr_io_trace_0_exception;
  wire  bpu_io_status_debug; 
  wire [1:0] bpu_io_status_prv; 
  wire  bpu_io_bp_0_control_action;
  wire [1:0] bpu_io_bp_0_control_tmatch;
  wire  bpu_io_bp_0_control_m;
  wire  bpu_io_bp_0_control_s;
  wire  bpu_io_bp_0_control_u;
  wire  bpu_io_bp_0_control_x;
  wire  bpu_io_bp_0_control_w;
  wire  bpu_io_bp_0_control_r;
  wire [31:0] bpu_io_bp_0_address; 
  wire [31:0] bpu_io_pc; 
  wire [31:0] bpu_io_ea;
  wire  bpu_io_xcpt_if; 
  wire  bpu_io_xcpt_ld;
  wire  bpu_io_xcpt_st;
  wire  bpu_io_debug_if;
  wire  bpu_io_debug_ld; 
  wire  bpu_io_debug_st; 
  wire [3:0] alu_io_fn;
  wire [31:0] alu_io_in2;
  wire [31:0] alu_io_in1; 
  wire [31:0] alu_io_out; 
  wire [31:0] alu_io_adder_out; 
  wire  alu_io_cmp_out;
  wire  div_clock;
  wire  div_reset;
  wire  div_io_req_ready;
  wire  div_io_req_valid;
  wire [3:0] div_io_req_bits_fn;
  wire [31:0] div_io_req_bits_in1;
  wire [31:0] div_io_req_bits_in2;
  wire [4:0] div_io_req_bits_tag; 
  wire  div_io_kill; 
  wire  div_io_resp_ready; 
  wire  div_io_resp_valid; 
  wire [31:0] div_io_resp_bits_data; 
  wire [4:0] div_io_resp_bits_tag;
  wire  PlusArgTimeout_clock;
  wire  PlusArgTimeout_reset;
  wire [31:0] PlusArgTimeout_io_count;
  reg  id_reg_pause;
  reg [31:0] _RAND_3;
  reg  imem_might_request_reg; 
  reg [31:0] _RAND_4;
  reg  ex_ctrl_fp;
  reg [31:0] _RAND_5;
  reg  ex_ctrl_branch;
  reg [31:0] _RAND_6;
  reg  ex_ctrl_jal;
  reg [31:0] _RAND_7;
  reg  ex_ctrl_jalr;
  reg [31:0] _RAND_8;
  reg  ex_ctrl_rxs2;
  reg [31:0] _RAND_9;
  reg [1:0] ex_ctrl_sel_alu2;
  reg [31:0] _RAND_10;
  reg [1:0] ex_ctrl_sel_alu1;
  reg [31:0] _RAND_11;
  reg [2:0] ex_ctrl_sel_imm;
  reg [31:0] _RAND_12;
  reg [3:0] ex_ctrl_alu_fn;
  reg [31:0] _RAND_13;
  reg  ex_ctrl_mem; 
  reg [31:0] _RAND_14;
  reg [4:0] ex_ctrl_mem_cmd;
  reg [31:0] _RAND_15;
  reg  ex_ctrl_wfd; 
  reg [31:0] _RAND_16;
  reg  ex_ctrl_div;
  reg [31:0] _RAND_17;
  reg  ex_ctrl_wxd;
  reg [31:0] _RAND_18;
  reg [2:0] ex_ctrl_csr;
  reg [31:0] _RAND_19;
  reg  ex_ctrl_fence_i;
  reg [31:0] _RAND_20;
  reg  mem_ctrl_fp;
  reg [31:0] _RAND_21;
  reg  mem_ctrl_branch;
  reg [31:0] _RAND_22;
  reg  mem_ctrl_jal;
  reg [31:0] _RAND_23;
  reg  mem_ctrl_jalr;
  reg [31:0] _RAND_24;
  reg  mem_ctrl_mem;
  reg [31:0] _RAND_25;
  reg  mem_ctrl_wfd;
  reg [31:0] _RAND_26;
  reg  mem_ctrl_div;
  reg [31:0] _RAND_27;
  reg  mem_ctrl_wxd;
  reg [31:0] _RAND_28;
  reg [2:0] mem_ctrl_csr;
  reg [31:0] _RAND_29;
  reg  mem_ctrl_fence_i;
  reg [31:0] _RAND_30;
  reg  wb_ctrl_mem;
  reg [31:0] _RAND_31;
  reg  wb_ctrl_wfd; 
  reg [31:0] _RAND_32;
  reg  wb_ctrl_div;
  reg [31:0] _RAND_33;
  reg  wb_ctrl_wxd;
  reg [31:0] _RAND_34;
  reg [2:0] wb_ctrl_csr;
  reg [31:0] _RAND_35;
  reg  wb_ctrl_fence_i;
  reg [31:0] _RAND_36;
  reg  ex_reg_xcpt_interrupt;
  reg [31:0] _RAND_37;
  reg  ex_reg_valid;
  reg [31:0] _RAND_38;
  reg  ex_reg_rvc;
  reg [31:0] _RAND_39;
  reg [4:0] ex_reg_btb_resp_entry;
  reg [31:0] _RAND_40;
  reg [7:0] ex_reg_btb_resp_bht_history;
  reg [31:0] _RAND_41;
  reg  ex_reg_xcpt;
  reg [31:0] _RAND_42;
  reg  ex_reg_flush_pipe;
  reg [31:0] _RAND_43;
  reg  ex_reg_load_use;
  reg [31:0] _RAND_44;
  reg [31:0] ex_reg_cause;
  reg [31:0] _RAND_45;
  reg  ex_reg_replay;
  reg [31:0] _RAND_46;
  reg [31:0] ex_reg_pc;
  reg [31:0] _RAND_47;
  reg [1:0] ex_reg_mem_size;
  reg [31:0] _RAND_48;
  reg [31:0] ex_reg_inst;
  reg [31:0] _RAND_49;
  reg [31:0] ex_reg_raw_inst;
  reg [31:0] _RAND_50;
  reg  mem_reg_xcpt_interrupt;
  reg [31:0] _RAND_51;
  reg  mem_reg_valid;
  reg [31:0] _RAND_52;
  reg  mem_reg_rvc;
  reg [31:0] _RAND_53;
  reg [4:0] mem_reg_btb_resp_entry;
  reg [31:0] _RAND_54;
  reg [7:0] mem_reg_btb_resp_bht_history;
  reg [31:0] _RAND_55;
  reg  mem_reg_xcpt; 
  reg [31:0] _RAND_56;
  reg  mem_reg_replay;
  reg [31:0] _RAND_57;
  reg  mem_reg_flush_pipe;
  reg [31:0] _RAND_58;
  reg [31:0] mem_reg_cause;
  reg [31:0] _RAND_59;
  reg  mem_reg_slow_bypass; 
  reg [31:0] _RAND_60;
  reg  mem_reg_load;
  reg [31:0] _RAND_61;
  reg  mem_reg_store;
  reg [31:0] _RAND_62;
  reg  mem_reg_sfence;
  reg [31:0] _RAND_63;
  reg [31:0] mem_reg_pc;
  reg [31:0] _RAND_64;
  reg [31:0] mem_reg_inst;
  reg [31:0] _RAND_65;
  reg [1:0] mem_reg_mem_size;
  reg [31:0] _RAND_66;
  reg [31:0] mem_reg_raw_inst;
  reg [31:0] _RAND_67;
  reg [31:0] mem_reg_wdata;
  reg [31:0] _RAND_68;
  reg [31:0] mem_reg_rs2;
  reg [31:0] _RAND_69;
  reg  mem_br_taken;
  reg [31:0] _RAND_70;
  reg  wb_reg_valid;
  reg [31:0] _RAND_71;
  reg  wb_reg_xcpt;
  reg [31:0] _RAND_72;
  reg  wb_reg_replay;
  reg [31:0] _RAND_73;
  reg  wb_reg_flush_pipe;
  reg [31:0] _RAND_74;
  reg [31:0] wb_reg_cause;
  reg [31:0] _RAND_75;
  reg  wb_reg_sfence;
  reg [31:0] _RAND_76;
  reg [31:0] wb_reg_pc;
  reg [31:0] _RAND_77;
  reg [1:0] wb_reg_mem_size;
  reg [31:0] _RAND_78;
  reg [31:0] wb_reg_inst;
  reg [31:0] _RAND_79;
  reg [31:0] wb_reg_raw_inst;
  reg [31:0] _RAND_80;
  reg [31:0] wb_reg_wdata;
  reg [31:0] _RAND_81;
  wire  replay_wb_common;
  wire  wb_xcpt;
  wire  take_pc_wb; 
  wire  ex_pc_valid;
  wire [31:0] mem_br_target;
  wire [31:0] mem_npc;
  wire  mem_wrong_npc;
  wire  take_pc_mem;
  wire  take_pc_mem_wb; 
  wire  id_ctrl_legal; 
  wire  id_ctrl_fp;
  wire  id_ctrl_branch;
  wire  id_ctrl_jal; 
  wire  id_ctrl_jalr;
  wire  id_ctrl_amo; 
  wire  id_ctrl_rxs2; 
  wire  id_ctrl_rxs1;
  wire [1:0] id_ctrl_sel_alu2; 
  wire [1:0] id_ctrl_sel_alu1;
  wire [2:0] id_ctrl_sel_imm;
  wire [3:0] id_ctrl_alu_fn;
  wire  id_ctrl_mem; 
  wire [4:0] id_ctrl_mem_cmd;
  wire  id_ctrl_rfs3; 
  wire  id_ctrl_wfd;
  wire  id_ctrl_div;
  wire  id_ctrl_wxd;
  wire [2:0] id_ctrl_csr;
  wire  id_ctrl_fence_i;
  wire  id_ctrl_fence; 
  wire [4:0] id_raddr3;
  wire [4:0] id_raddr2;
  wire [4:0] id_raddr1;
  wire [4:0] id_waddr;
  reg  id_reg_fence;
  reg [31:0] _RAND_82;
  wire  id_csr_en;
  wire  id_system_insn;
  wire  id_csr_ren;
  wire  id_sfence;
  wire  id_csr_flush;
  wire  id_illegal_insn;
  wire  id_amo_aq;
  wire  id_amo_rl;
  wire [3:0] id_fence_succ;
  wire  id_fence_next;
  wire  id_mem_busy; 
  wire  id_do_fence;
  wire  id_xcpt;
  wire [4:0] ex_waddr;
  wire [4:0] mem_waddr;
  wire [4:0] wb_waddr;
  wire  id_bypass_src_0_0;
  wire  id_bypass_src_0_1;
  wire  id_bypass_src_0_2; 
  wire  id_bypass_src_0_3;
  wire  id_bypass_src_1_0;
  wire  id_bypass_src_1_1;
  wire  id_bypass_src_1_2;
  wire  id_bypass_src_1_3;
  reg  ex_reg_rs_bypass_0;
  reg [31:0] _RAND_83;
  reg  ex_reg_rs_bypass_1;
  reg [31:0] _RAND_84;
  reg [1:0] ex_reg_rs_lsb_0;
  reg [31:0] _RAND_85;
  reg [1:0] ex_reg_rs_lsb_1;
  reg [31:0] _RAND_86;
  reg [29:0] ex_reg_rs_msb_0;
  reg [31:0] _RAND_87;
  reg [29:0] ex_reg_rs_msb_1;
  reg [31:0] _RAND_88;
  wire [31:0] ex_rs_0;
  wire [31:0] ex_rs_1; 
  wire [31:0] ex_imm; 
  wire [31:0] ex_op1; 
  wire [31:0] ex_op2;
  wire  data_hazard_ex;
  wire  ex_cannot_bypass;
  wire  fp_data_hazard_ex;
  wire  id_ex_hazard;
  wire  data_hazard_mem;
  wire  mem_cannot_bypass;
  wire  fp_data_hazard_mem;
  wire  id_mem_hazard;
  wire  data_hazard_wb;
  wire  wb_dcache_miss;
  wire  wb_set_sboard;
  wire  fp_data_hazard_wb;
  wire  id_wb_hazard;
  reg [31:0] sboard_reg;	// _T_1114
  reg [31:0] _RAND_89;
  wire  dmem_resp_valid;
  wire  dmem_resp_replay;
  wire  dmem_resp_xpu; 
  wire  ll_wen;
  wire [4:0] dmem_resp_waddr;
  wire [4:0] ll_waddr;
  wire  id_sboard_hazard;
  reg [31:0] _RAND_90;
  wire  id_stall_fpu; 
  reg  blocked;
  reg [31:0] _RAND_91;
  wire  dcache_blocked;
  wire  wb_wxd;
  wire  ctrl_stalld;
  wire  ctrl_killd;
  wire  do_bypass;
  wire  wb_valid;
  wire  wb_wen;
  wire  rf_wen; 
  wire [4:0] rf_waddr;
  wire [31:0] ll_wdata; 
  wire [31:0] id_rs_0;
  wire  do_bypass_1;
  wire [31:0] id_rs_1;
  wire [31:0] inst;
  wire  id_load_use;
  wire  replay_ex_structural;
  wire  replay_ex_load_use;
  wire  replay_ex;
  wire  ctrl_killx;
  wire  ex_slow_bypass;
  wire  ex_sfence;
  wire  ex_xcpt;
  wire  mem_pc_valid;
  wire  mem_npc_misaligned;
  wire [31:0] mem_int_wdata;
  wire  mem_cfi;
  wire  mem_cfi_taken;
  wire  mem_breakpoint;
  wire  mem_debug_breakpoint;
  wire  mem_ldst_xcpt;
  wire [3:0] mem_ldst_cause;
  wire  mem_xcpt;
  wire  dcache_kill_mem;
  wire  fpu_kill_mem;
  wire  replay_mem; 
  wire  killm_common;
  reg [31:0] _RAND_92;
  wire  ctrl_killm;
  wire [31:0] wb_cause;
  wire  tval_valid; 
  wire [5:0] ex_dcache_tag;
  wire  unpause;
  wire [31:0] coreMonitorBundle_timer;
  wire  coreMonitorBundle_valid;
  wire [31:0] coreMonitorBundle_pc;
  wire [4:0] coreMonitorBundle_wrdst;
  reg [31:0] _T_1388;
  reg [31:0] _RAND_93;
  reg [31:0] coreMonitorBundle_rd0val; 
  reg [31:0] _RAND_94;
  reg [31:0] _T_1391;
  reg [31:0] _RAND_95;
  reg [31:0] coreMonitorBundle_rd1val;
  reg [31:0] _RAND_96;
  wire [31:0] coreMonitorBundle_inst;
  reg [31:0] fp_sboard_reg;	// _T_1227
  reg  div_io_kill_reg;

// CSR commands
parameter CSR_N = 3'h0;
parameter CSR_R = 3'h2;
parameter CSR_I = 3'h4;
parameter CSR_W = 3'h5;
parameter CSR_S = 3'h6;
parameter CSR_C = 3'h7;
parameter CSR_debugIntCause = 4'he;
parameter CSR_debugTriggerCause = 32'he;

// MemoryOpConstants
//parameter M_XSC = 5'b00111;
//parameter M_SFENCE = 5'b10100;
//parameter M_FLUSH_ALL = 5'b00101;
parameter M_XRD     	= 5'b00000; // int load
parameter M_XWR     	= 5'b00001; // int store
parameter M_PFR     	= 5'b00010; // prefetch with intent to read
parameter M_PFW     	= 5'b00011; // prefetch with intent to write
parameter M_XA_SWAP 	= 5'b00100;
parameter M_FLUSH_ALL 	= 5'b00101;  // flush all lines
parameter M_XLR    	= 5'b00110;
parameter M_XSC    	= 5'b00111;
parameter M_XA_ADD 	= 5'b01000;
parameter M_XA_XOR 	= 5'b01001;
parameter M_XA_OR  	= 5'b01010;
parameter M_XA_AND 	= 5'b01011;
parameter M_XA_MIN 	= 5'b01100;
parameter M_XA_MAX 	= 5'b01101;
parameter M_XA_MINU	= 5'b01110;
parameter M_XA_MAXU	= 5'b01111;
parameter M_FLUSH  	= 5'b10000; // write back dirty data and cede R/W permissions
parameter M_PWR    	= 5'b10001; // partial (masked) store
parameter M_PRODUCE	= 5'b10010; // write back dirty data and cede W permissions
parameter M_CLEAN  	= 5'b10011; // write back dirty data and retain R/W permissions
parameter M_SFENCE 	= 5'b10100; // flush TLB
parameter M_WOK    	= 5'b10111; // check write permissions but don't perform a write


// Causes
parameter Causes_misaligned_fetch 	= 32'h0;
parameter Causes_illegal_instruction 	= 32'h2;
parameter Causes_breakpoint 		= 32'h3;
parameter Causes_fetch_access		= 32'h1;
parameter Causes_fetch_page_fault	= 32'hc;
parameter Causes_misaligned_store 	= 32'h6;
parameter Causes_misaligned_load 	= 32'h4;
parameter Causes_store_page_fault 	= 32'hf;
parameter Causes_load_page_fault 	= 32'hd;
parameter Causes_store_access 		= 32'h7;
parameter Causes_load_access 		= 32'h5;

// CFIType
parameter CFIType_call 		= 2'h2;
parameter CFIType_ret 		= 2'h3;
parameter CFIType_jump 		= 2'h1;
parameter CFIType_branch	= 2'h0;

// ScalarOpConstants
parameter A1_RS1	= 2'h1;
parameter A1_PC		= 2'h2;

parameter A2_ZERO	= 2'h0;
parameter A2_SIZE	= 2'h1;

parameter IMM_Z 	= 3'h5;
parameter IMM_UJ 	= 3'h3;
parameter IMM_U 	= 3'h2;
parameter IMM_SB 	= 3'h1;
parameter IMM_S 	= 3'h0;

// ALU
parameter ALU_FN_ADD	= 4'h0;

  IBuf ibuf (
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
  CSRFile csr (
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
  BreakpointUnit bpu (
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
  ALU alu (
    .io_fn(alu_io_fn),
    .io_in2(alu_io_in2),
    .io_in1(alu_io_in1),
    .io_out(alu_io_out),
    .io_adder_out(alu_io_adder_out),
    .io_cmp_out(alu_io_cmp_out)
  );
  MulDiv div (
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
  PlusArgTimeout PlusArgTimeout (
    .clock(PlusArgTimeout_clock),
    .reset(PlusArgTimeout_reset),
    .io_count(PlusArgTimeout_io_count)
  );

`define MY_ASSIGNMENT
`ifdef MY_ASSIGNMENT
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign rf_rdata1 = rf[(~ id_raddr1)];
  `else
  assign rf_rdata1 = (~ id_raddr1) >= 5'h1f ? _RAND_1[31:0] : rf[(~ id_raddr1)];
  `endif // RANDOMIZE_GARBAGE_ASSIGN
  `ifndef RANDOMIZE_GARBAGE_ASSIGN
  assign rf_rdata2 = rf[(~ id_raddr2)];
  `else
  assign rf_rdata2 = (~ id_raddr2) >= 5'h1f ? _RAND_2[31:0] : rf[(~ id_raddr2)];
  `endif // RANDOMIZE_GARBAGE_ASSIGN

  assign rf_wdata = (dmem_resp_valid & dmem_resp_xpu) ? io_dmem_resp_bits_data 
		: ll_wen ? ll_wdata
		: (wb_ctrl_csr != 3'h0) ? csr_io_rw_rdata 
		: wb_reg_wdata;
  wire rf_waddr_valid = rf_waddr != 5'h0;
  assign replay_wb_common = io_dmem_s2_nack | wb_reg_replay;

  wire wb_reg_valid_ctrl_mem = wb_reg_valid & wb_ctrl_mem;	// _T_1015
  wire wb_xcpt_ma_st = wb_reg_valid_ctrl_mem & io_dmem_s2_xcpt_ma_st;
  wire wb_xcpt_ma_ld = wb_reg_valid_ctrl_mem & io_dmem_s2_xcpt_ma_ld;
  wire wb_xcpt_pf_st = wb_reg_valid_ctrl_mem & io_dmem_s2_xcpt_pf_st;
  wire wb_xcpt_pf_ld = wb_reg_valid_ctrl_mem & io_dmem_s2_xcpt_pf_ld;
  wire wb_xcpt_ae_st = wb_reg_valid_ctrl_mem & io_dmem_s2_xcpt_ae_st;
  wire wb_xcpt_ae_ld = wb_reg_valid_ctrl_mem & io_dmem_s2_xcpt_ae_ld;

  assign wb_xcpt = wb_reg_xcpt 
		| wb_xcpt_ma_st 
		| wb_xcpt_ma_ld 
		| wb_xcpt_pf_st 
		| wb_xcpt_pf_ld 
		| wb_xcpt_ae_st
		| wb_xcpt_ae_ld;

  assign take_pc_wb = replay_wb_common | wb_xcpt | csr_io_eret | wb_reg_flush_pipe;

  assign ex_pc_valid = ex_reg_valid | ex_reg_replay | ex_reg_xcpt_interrupt;

  wire [31:0] Imm_SB_Gen = {$signed(mem_reg_inst[31]),$unsigned({11{$signed(mem_reg_inst[31])}}),$unsigned({8{$signed(mem_reg_inst[31])}}),$unsigned($signed(mem_reg_inst[7])),mem_reg_inst[30:25],mem_reg_inst[11:8],1'h0};
  wire [31:0] Imm_UJ_Gen = {$signed(mem_reg_inst[31]),$unsigned({11{$signed(mem_reg_inst[31])}}),$unsigned($signed(mem_reg_inst[19:12])),$unsigned($signed(mem_reg_inst[20])),mem_reg_inst[30:25],mem_reg_inst[24:21],1'h0};
  wire [3:0] _T_868 = mem_reg_rvc ? $signed(4'sh2) : $signed(4'sh4);
  wire [31:0] Mux_Imm_UJ_Gen = mem_ctrl_jal ? $signed(Imm_UJ_Gen) : $signed({{28{_T_868[3]}},_T_868});
  wire [31:0] Mux_Imm_SB_Gen = (mem_ctrl_branch & mem_br_taken) ? $signed(Imm_SB_Gen) : $signed(Mux_Imm_UJ_Gen);
  assign mem_br_target = $signed($signed(mem_reg_pc) + $signed(Mux_Imm_SB_Gen));

  wire [31:0] Mux_mem_reg_wdata = (mem_ctrl_jalr | mem_reg_sfence) ? $signed(mem_reg_wdata) : $signed(mem_br_target);
  assign mem_npc = $unsigned($signed($signed(Mux_mem_reg_wdata) & $signed(-32'sh2)));

  assign mem_wrong_npc = ex_pc_valid ? (mem_npc != ex_reg_pc) 
			: (ibuf_io_inst_0_valid | ibuf_io_imem_valid) ? (mem_npc != ibuf_io_pc) 
			: 1'h1;

  assign take_pc_mem = mem_reg_valid & (mem_wrong_npc | mem_reg_sfence);
  assign take_pc_mem_wb = take_pc_wb | take_pc_mem;

//  wire [31:0] _T = ibuf_io_inst_0_bits_inst_bits & 32'h207f;
//  wire _T_1 = (ibuf_io_inst_0_bits_inst_bits & 32'h207f) == 32'h3;
//  wire _T_23 = (ibuf_io_inst_0_bits_inst_bits & 32'h705b) == 32'h2003;
//  wire _T_27 = (ibuf_io_inst_0_bits_inst_bits & 32'h1800707f) == 32'h202f;
//  wire _T_33 = (ibuf_io_inst_0_bits_inst_bits & 32'he800707f) == 32'h800202f;
//  wire _T_35 = (ibuf_io_inst_0_bits_inst_bits & 32'hf9f0707f) == 32'h1000202f;
//  wire [31:0] _T_36 = ibuf_io_inst_0_bits_inst_bits & 32'hdfffffff; 
//  wire _T_41 = (ibuf_io_inst_0_bits_inst_bits & 32'hfe007fff) == 32'h12000073;
//  wire [31:0] _T_57 = ibuf_io_inst_0_bits_inst_bits & 32'h306f;
//  wire _T_62 = (ibuf_io_inst_0_bits_inst_bits & 32'h605f) == 32'h3;
  assign id_ctrl_legal = ((ibuf_io_inst_0_bits_inst_bits & 32'h207f) == 32'h3) 
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h607f) == 32'hf)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h5f) == 32'h17) 
			| ((ibuf_io_inst_0_bits_inst_bits & 32'hfc00007f) == 32'h33) 
			| ((ibuf_io_inst_0_bits_inst_bits & 32'hbe00707f) == 32'h33) 
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h6000073) == 32'h43) 
			| ((ibuf_io_inst_0_bits_inst_bits & 32'he600007f) == 32'h53) 
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h707b) == 32'h63) 
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h7f) == 32'h6f) 
			| ((ibuf_io_inst_0_bits_inst_bits & 32'hffefffff) == 32'h73) 
			| ((ibuf_io_inst_0_bits_inst_bits & 32'hfe00305f) == 32'h1013) 
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h705b) == 32'h2003) 
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h207f) == 32'h2013) 
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h1800707f) == 32'h202f) 
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h207f) == 32'h2073) 
			| ((ibuf_io_inst_0_bits_inst_bits & 32'hbe00705f) == 32'h5013) 
			| ((ibuf_io_inst_0_bits_inst_bits & 32'he800707f) == 32'h800202f) 
			| ((ibuf_io_inst_0_bits_inst_bits & 32'hf9f0707f) == 32'h1000202f) 
			| ((ibuf_io_inst_0_bits_inst_bits & 32'hdfffffff) == 32'h10200073) 
			| ((ibuf_io_inst_0_bits_inst_bits & 32'hdfffffff) == 32'h10500073) 
			| ((ibuf_io_inst_0_bits_inst_bits & 32'hfe007fff) == 32'h12000073) 
			| ((ibuf_io_inst_0_bits_inst_bits & 32'hf600607f) == 32'h20000053) 
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h7e00607f) == 32'h20000053) 
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h7e00507f) == 32'h20000053) 
			| ((ibuf_io_inst_0_bits_inst_bits & 32'hfff0007f) == 32'h58000053) 
			| (ibuf_io_inst_0_bits_inst_bits == 32'h7b200073) 
			| ((ibuf_io_inst_0_bits_inst_bits & 32'hefe0007f) == 32'hc0000053) 
			| ((ibuf_io_inst_0_bits_inst_bits & 32'hfff0607f) == 32'he0000053) 
			| ((ibuf_io_inst_0_bits_inst_bits & 32'heff0707f) == 32'he0000053) 
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h306f) == 32'h1063) 
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h407f) == 32'h4063) 
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h605f) == 32'h3) 
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h306f) == 32'h3);

  assign id_ctrl_fp = ((ibuf_io_inst_0_bits_inst_bits & 32'h5c) == 32'h4) 
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h60) == 32'h40);

  assign id_ctrl_branch = (ibuf_io_inst_0_bits_inst_bits & 32'h74) == 32'h60;

//  wire [31:0] _T_107 = ibuf_io_inst_0_bits_inst_bits & 32'h68; 
  assign id_ctrl_jal = (ibuf_io_inst_0_bits_inst_bits & 32'h68) == 32'h68;

  assign id_ctrl_jalr = (ibuf_io_inst_0_bits_inst_bits & 32'h203c) == 32'h24;

//  wire [31:0] _T_117 = ibuf_io_inst_0_bits_inst_bits & 32'h2048;
  assign id_ctrl_amo = (ibuf_io_inst_0_bits_inst_bits & 32'h2048) == 32'h2008;

//  wire [31:0] _T_113 = ibuf_io_inst_0_bits_inst_bits & 32'h64;
//  wire [31:0] _T_115 = ibuf_io_inst_0_bits_inst_bits & 32'h34;
  assign id_ctrl_rxs2 = ((ibuf_io_inst_0_bits_inst_bits & 32'h64) == 32'h20) 
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h34) == 32'h20) 
			| id_ctrl_amo 
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h42003044) == 32'h2000040);

//  wire [31:0] _T_125 = ibuf_io_inst_0_bits_inst_bits & 32'h44;
//  wire _T_126 = _T_125 == 32'h0;
  assign id_ctrl_rxs1 = ((ibuf_io_inst_0_bits_inst_bits & 32'h44) == 32'h0) 
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h4024) == 32'h20) 
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h38) == 32'h20) 
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h2050) == 32'h2000) 
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h90000034) == 32'h90000010);

//  wire [31:0] _T_146 = ibuf_io_inst_0_bits_inst_bits & 32'h48;
//  wire _T_147 = _T_146 == 32'h48;
  wire id_ctrl_sel_alu2_1 = ((ibuf_io_inst_0_bits_inst_bits & 32'h58) == 32'h0)	// _T_154 
		| ((ibuf_io_inst_0_bits_inst_bits & 32'h20) == 32'h0) 
		| ((ibuf_io_inst_0_bits_inst_bits & 32'hc) == 32'h4) 
		| ((ibuf_io_inst_0_bits_inst_bits & 32'h48) == 32'h48) 
		| ((ibuf_io_inst_0_bits_inst_bits & 32'h4050) == 32'h4050);
//  wire _T_158 = (ibuf_io_inst_0_bits_inst_bits & 32'h18) == 32'h0;
  wire id_ctrl_sel_alu2_0 = ((ibuf_io_inst_0_bits_inst_bits & 32'h48) == 32'h0)	// _T_163 
		| ((ibuf_io_inst_0_bits_inst_bits & 32'h18) == 32'h0) 
		| ((ibuf_io_inst_0_bits_inst_bits & 32'h4008) == 32'h4000);
  assign id_ctrl_sel_alu2 = {id_ctrl_sel_alu2_0,id_ctrl_sel_alu2_1};

//  wire [31:0]  _T_167 = ibuf_io_inst_0_bits_inst_bits & 32'h50;
  wire id_ctrl_sel_alu1_1 = ((ibuf_io_inst_0_bits_inst_bits & 32'h4004) == 32'h0)		// _T_175 
		| ((ibuf_io_inst_0_bits_inst_bits & 32'h50) == 32'h0) 
		| ((ibuf_io_inst_0_bits_inst_bits & 32'h44) == 32'h0) 
		| ((ibuf_io_inst_0_bits_inst_bits & 32'h24) == 32'h0) 
		| ((ibuf_io_inst_0_bits_inst_bits & 32'h18) == 32'h0);
  wire id_ctrl_sel_alu1_0 = ((ibuf_io_inst_0_bits_inst_bits & 32'h34) == 32'h14)		// _T_179 
		| ((ibuf_io_inst_0_bits_inst_bits & 32'h48) == 32'h48);
  assign id_ctrl_sel_alu1 = {id_ctrl_sel_alu1_0,id_ctrl_sel_alu1_1};

//  wire _T_182 = (ibuf_io_inst_0_bits_inst_bits & 32'h8) == 32'h8;
  wire id_ctrl_sel_imm_2 = ((ibuf_io_inst_0_bits_inst_bits & 32'h8) == 32'h8) 		// _T_186
		| ((ibuf_io_inst_0_bits_inst_bits & 32'h44) == 32'h40);
//  wire [31:0] _T_187 = ibuf_io_inst_0_bits_inst_bits & 32'h14; 
  wire id_ctrl_sel_imm_1 = ((ibuf_io_inst_0_bits_inst_bits & 32'h8) == 32'h8) 		// _T_190
		| ((ibuf_io_inst_0_bits_inst_bits & 32'h14) == 32'h14);
  wire id_ctrl_sel_imm_0 = ((ibuf_io_inst_0_bits_inst_bits & 32'h30) == 32'h0)		// _T_199 
		| ((ibuf_io_inst_0_bits_inst_bits & 32'h201c) == 32'h4) 
		| ((ibuf_io_inst_0_bits_inst_bits & 32'h14) == 32'h10);
  assign id_ctrl_sel_imm = {id_ctrl_sel_imm_0,id_ctrl_sel_imm_1,id_ctrl_sel_imm_2};

  wire id_ctrl_alu_fn_3 = ((ibuf_io_inst_0_bits_inst_bits & 32'h3054) == 32'h1010) 	// _T_216
		| ((ibuf_io_inst_0_bits_inst_bits & 32'h1058) == 32'h1040) 
		| ((ibuf_io_inst_0_bits_inst_bits & 32'h7044) == 32'h7000) 
		| ((ibuf_io_inst_0_bits_inst_bits & 32'h2001074) == 32'h2001030);
//  wire _T_228 = (ibuf_io_inst_0_bits_inst_bits & 32'h40003034) == 32'h40000030;
  wire id_ctrl_alu_fn_2 = ((ibuf_io_inst_0_bits_inst_bits & 32'h4054) == 32'h40) 		// _T_237
		| ((ibuf_io_inst_0_bits_inst_bits & 32'h3044) == 32'h3000) 
		| ((ibuf_io_inst_0_bits_inst_bits & 32'h6044) == 32'h6000) 
		| ((ibuf_io_inst_0_bits_inst_bits & 32'h6018) == 32'h6000) 
		| ((ibuf_io_inst_0_bits_inst_bits & 32'h2002074) == 32'h2002030) 
		| ((ibuf_io_inst_0_bits_inst_bits & 32'h40003034) == 32'h40000030) 
		| ((ibuf_io_inst_0_bits_inst_bits & 32'h40001054) == 32'h40001010); 
//  wire _T_247 = (ibuf_io_inst_0_bits_inst_bits & 32'h4058) == 32'h4040;
  wire id_ctrl_alu_fn_1 = ((ibuf_io_inst_0_bits_inst_bits & 32'h2002054) == 32'h2010) 	// _T_252
		| ((ibuf_io_inst_0_bits_inst_bits & 32'h2034) == 32'h2010) 
		| ((ibuf_io_inst_0_bits_inst_bits & 32'h40004054) == 32'h4010) 
		| ((ibuf_io_inst_0_bits_inst_bits & 32'h5054) == 32'h4010) 
		| ((ibuf_io_inst_0_bits_inst_bits & 32'h4058) == 32'h4040);
  wire id_ctrl_alu_fn_0 = ((ibuf_io_inst_0_bits_inst_bits & 32'h2006054) == 32'h2010) 	// _T_263
		| ((ibuf_io_inst_0_bits_inst_bits & 32'h6034) == 32'h2010) 
		| ((ibuf_io_inst_0_bits_inst_bits & 32'h4058) == 32'h4040) 
		| ((ibuf_io_inst_0_bits_inst_bits & 32'h40003034) == 32'h40000030) 
		| ((ibuf_io_inst_0_bits_inst_bits & 32'h40003054) == 32'h40001010);
  assign id_ctrl_alu_fn = {id_ctrl_alu_fn_0,id_ctrl_alu_fn_1,id_ctrl_alu_fn_2,id_ctrl_alu_fn_3};

  assign id_ctrl_mem = ((ibuf_io_inst_0_bits_inst_bits & 32'h605f) == 32'h3) 
		| ((ibuf_io_inst_0_bits_inst_bits & 32'h207f) == 32'h3) 
		| ((ibuf_io_inst_0_bits_inst_bits & 32'h705b) == 32'h2003) 
		| ((ibuf_io_inst_0_bits_inst_bits & 32'h1800707f) == 32'h202f) 
		| ((ibuf_io_inst_0_bits_inst_bits & 32'he800707f) == 32'h800202f) 
		| ((ibuf_io_inst_0_bits_inst_bits & 32'hf9f0707f) == 32'h1000202f) 
		| ((ibuf_io_inst_0_bits_inst_bits & 32'hfe007fff) == 32'h12000073);

  wire id_ctrl_mem_cmd_4 = ((ibuf_io_inst_0_bits_inst_bits & 32'h68) == 32'h20) 		// _T_282
		| ((ibuf_io_inst_0_bits_inst_bits & 32'h18000020) == 32'h18000020) 
		| ((ibuf_io_inst_0_bits_inst_bits & 32'h20000020) == 32'h20000020);
//  wire _T_284 = (ibuf_io_inst_0_bits_inst_bits & 32'h10000008) == 32'h10000008;
  wire id_ctrl_mem_cmd_3 = ((ibuf_io_inst_0_bits_inst_bits & 32'h10000008) == 32'h10000008) 	// _T_288
		| ((ibuf_io_inst_0_bits_inst_bits & 32'h40000008) == 32'h40000008);
  wire id_ctrl_mem_cmd_0 = (ibuf_io_inst_0_bits_inst_bits & 32'h40) == 32'h40;		// _T_290
  wire id_ctrl_mem_cmd_2 = ((ibuf_io_inst_0_bits_inst_bits & 32'h40) == 32'h40)		// _T_298 
		| ((ibuf_io_inst_0_bits_inst_bits & 32'h8000008) == 32'h8000008) 
		| ((ibuf_io_inst_0_bits_inst_bits & 32'h10000008) == 32'h10000008) 
		| ((ibuf_io_inst_0_bits_inst_bits & 32'h80000008) == 32'h80000008);
  wire id_ctrl_mem_cmd_1 = (ibuf_io_inst_0_bits_inst_bits & 32'h18000008) == 32'h8;	// _T_300
  assign id_ctrl_mem_cmd = {id_ctrl_mem_cmd_0,id_ctrl_mem_cmd_1,id_ctrl_mem_cmd_2,id_ctrl_mem_cmd_3,id_ctrl_mem_cmd_4};

  assign id_ctrl_rfs3 = (ibuf_io_inst_0_bits_inst_bits & 32'h70) == 32'h40;

  assign id_ctrl_wfd = ((ibuf_io_inst_0_bits_inst_bits & 32'h3c) == 32'h4) 
		| ((ibuf_io_inst_0_bits_inst_bits & 32'h80000060) == 32'h40) 
		| id_ctrl_rfs3 
		| ((ibuf_io_inst_0_bits_inst_bits & 32'h10000060) == 32'h10000040);

  assign id_ctrl_div = (ibuf_io_inst_0_bits_inst_bits & 32'h2000074) == 32'h2000030;

  assign id_ctrl_wxd = ((ibuf_io_inst_0_bits_inst_bits & 32'h64) == 32'h0) 
		| ((ibuf_io_inst_0_bits_inst_bits & 32'h50) == 32'h10) 
		| ((ibuf_io_inst_0_bits_inst_bits & 32'h2024) == 32'h24) 
		| ((ibuf_io_inst_0_bits_inst_bits & 32'h28) == 32'h28) 
		| ((ibuf_io_inst_0_bits_inst_bits & 32'h1030) == 32'h1030) 
		| ((ibuf_io_inst_0_bits_inst_bits & 32'h2030) == 32'h2030) 
		| ((ibuf_io_inst_0_bits_inst_bits & 32'h90000010) == 32'h80000010);

  wire id_ctrl_csr_2 = (ibuf_io_inst_0_bits_inst_bits & 32'h1070) == 32'h1070;	// _T_358
  wire id_ctrl_csr_1 = (ibuf_io_inst_0_bits_inst_bits & 32'h2070) == 32'h2070;	// _T_361
  wire id_ctrl_csr_0 = ((ibuf_io_inst_0_bits_inst_bits & 32'h10000070) == 32'h70) 	// _T_373
		| id_ctrl_csr_2 
		| id_ctrl_csr_1 
		| ((ibuf_io_inst_0_bits_inst_bits & 32'h12000034) == 32'h10000030) 
		| ((ibuf_io_inst_0_bits_inst_bits & 32'he0000050) == 32'h60000050);
  assign id_ctrl_csr = {id_ctrl_csr_0,id_ctrl_csr_1,id_ctrl_csr_2};

  assign id_ctrl_fence_i = (ibuf_io_inst_0_bits_inst_bits & 32'h1048) == 32'h1008;
  assign id_ctrl_fence = (ibuf_io_inst_0_bits_inst_bits & 32'h2048) == 32'h8;
  assign id_raddr3 = ibuf_io_inst_0_bits_inst_rs3;
  assign id_raddr2 = ibuf_io_inst_0_bits_inst_rs2;
  assign id_raddr1 = ibuf_io_inst_0_bits_inst_rs1;
  assign id_waddr = ibuf_io_inst_0_bits_inst_rd;

  assign id_csr_en = (id_ctrl_csr == CSR_S)
		| (id_ctrl_csr == CSR_C)
		| (id_ctrl_csr == CSR_W);

  assign id_system_insn = id_ctrl_csr == CSR_I;

  assign id_csr_ren = ((id_ctrl_csr == CSR_S) | (id_ctrl_csr == CSR_C)) & (id_raddr1 == 5'h0);

//  wire _T_470 = id_ctrl_mem_cmd == M_SFENCE;
  assign id_sfence = id_ctrl_mem & (id_ctrl_mem_cmd == M_SFENCE);

  assign id_csr_flush = id_sfence
		| id_system_insn
		| (id_csr_en & !id_csr_ren & csr_io_decode_0_write_flush);

  assign id_illegal_insn = !id_ctrl_legal		// TODO: verify 
		| (id_ctrl_div & !csr_io_status_isa[12]) 
		| (id_ctrl_amo & !csr_io_status_isa[0]) 
		| (id_ctrl_fp & (csr_io_decode_0_fp_illegal | io_fpu_illegal_rm)) 
		| (ibuf_io_inst_0_bits_rvc & !csr_io_status_isa[2]) 
		| (id_csr_en & (csr_io_decode_0_read_illegal | (!id_csr_ren & csr_io_decode_0_write_illegal))) 
		| (!ibuf_io_inst_0_bits_rvc & (id_sfence | id_system_insn) & csr_io_decode_0_system_illegal);

  assign id_amo_aq = ibuf_io_inst_0_bits_inst_bits[26];
  assign id_amo_rl = ibuf_io_inst_0_bits_inst_bits[25];
  assign id_fence_succ = ibuf_io_inst_0_bits_inst_bits[23:20];

  assign id_fence_next = id_ctrl_fence | (id_ctrl_amo & id_amo_aq);

  assign id_mem_busy = !io_dmem_ordered | io_dmem_req_valid;
// Passed
  assign id_do_fence = id_mem_busy & ((id_ctrl_amo & id_amo_rl) | id_ctrl_fence_i | (id_reg_fence & id_ctrl_mem));

  assign id_xcpt = csr_io_interrupt 
		| bpu_io_debug_if 
		| bpu_io_xcpt_if 
		| ibuf_io_inst_0_bits_xcpt0_pf_inst 
		| ibuf_io_inst_0_bits_xcpt0_ae_inst 
		| ibuf_io_inst_0_bits_xcpt1_pf_inst 
		| ibuf_io_inst_0_bits_xcpt1_ae_inst 
		| id_illegal_insn;

  assign ex_waddr = ex_reg_inst[11:7];
  assign mem_waddr = mem_reg_inst[11:7];
  assign wb_waddr = wb_reg_inst[11:7];

  assign id_bypass_src_0_0 = 5'h0 == id_raddr1;

  assign id_bypass_src_0_1 = ex_reg_valid & ex_ctrl_wxd & (ex_waddr == id_raddr1);

//  wire _T_566 = mem_reg_valid & mem_ctrl_wxd; 
//  wire _T_568 = mem_reg_valid & mem_ctrl_wxd & !mem_ctrl_mem;
//  wire _T_572 = mem_waddr == id_raddr1;
  assign id_bypass_src_0_2 = mem_reg_valid & mem_ctrl_wxd & !mem_ctrl_mem & (mem_waddr == id_raddr1);

  assign id_bypass_src_0_3 = mem_reg_valid & mem_ctrl_wxd & (mem_waddr == id_raddr1);

  assign id_bypass_src_1_0 = 5'h0 == id_raddr2;

  assign id_bypass_src_1_1 = ex_reg_valid & ex_ctrl_wxd & (ex_waddr == id_raddr2); 

//  wire _T_576 = mem_waddr == id_raddr2;
  assign id_bypass_src_1_2 = mem_reg_valid & mem_ctrl_wxd & !mem_ctrl_mem & (mem_waddr == id_raddr2);
  assign id_bypass_src_1_3 = mem_reg_valid & mem_ctrl_wxd & (mem_waddr == id_raddr2);

  wire [31:0] bypass_mux_1 = (ex_reg_rs_lsb_0 == 2'h3) ? io_dmem_resp_bits_data_word_bypass 
		: (ex_reg_rs_lsb_0 == 2'h2) ? wb_reg_wdata 
		: (ex_reg_rs_lsb_0 == 2'h1) ? mem_reg_wdata 
		: 32'h0;
  assign ex_rs_0 = ex_reg_rs_bypass_0 ? bypass_mux_1 : {ex_reg_rs_msb_0,ex_reg_rs_lsb_0};

  wire [31:0] bypass_mux_2 = (ex_reg_rs_lsb_1 == 2'h3) ? io_dmem_resp_bits_data_word_bypass 
		: (ex_reg_rs_lsb_1 == 2'h2) ? wb_reg_wdata 
		: (ex_reg_rs_lsb_1 == 2'h1) ? mem_reg_wdata 
		: 32'h0; 
  assign ex_rs_1 = ex_reg_rs_bypass_1 ? bypass_mux_2 : {ex_reg_rs_msb_1,ex_reg_rs_lsb_1}; 

  wire ex_ctrl_sel_imm_Z = ex_ctrl_sel_imm == IMM_Z;
  wire ex_ctrl_sel_imm_UJ = ex_ctrl_sel_imm == IMM_UJ;
  wire ex_ctrl_sel_imm_U = ex_ctrl_sel_imm == IMM_U;
  wire ex_ctrl_sel_imm_SB = ex_ctrl_sel_imm == IMM_SB;
  wire ex_ctrl_sel_imm_S = ex_ctrl_sel_imm == IMM_S;

  wire ex_imm_sign = ex_ctrl_sel_imm_Z ? $signed(1'sh0) : $signed(ex_reg_inst[31]);
  wire [10:0] ex_imm_b30_20 = ex_ctrl_sel_imm_U ? $signed(ex_reg_inst[30:20]) : $signed({11{ex_imm_sign}});
  wire [7:0] ex_imm_b19_12 = ((!ex_ctrl_sel_imm_U) & (!ex_ctrl_sel_imm_UJ)) ? $signed({8{ex_imm_sign}}) : $signed(ex_reg_inst[19:12]);
  wire ex_imm_b11 = (ex_ctrl_sel_imm_U | ex_ctrl_sel_imm_Z) ? $signed(1'sh0) 
		: (ex_ctrl_sel_imm_UJ) ? $signed(ex_reg_inst[20]) 
		: ex_ctrl_sel_imm_SB ? $signed(ex_reg_inst[7]) 
		: $signed(ex_imm_sign);
  wire [5:0] ex_imm_b10_5 = (ex_ctrl_sel_imm_U | ex_ctrl_sel_imm_Z) ? 6'h0 : ex_reg_inst[30:25];
  wire [3:0] ex_imm_b4_1 = ex_ctrl_sel_imm_U ? 4'h0 
			: (ex_ctrl_sel_imm_S | ex_ctrl_sel_imm_SB) ? ex_reg_inst[11:8] 
			: ex_ctrl_sel_imm_Z ? ex_reg_inst[19:16] 
			: ex_reg_inst[24:21];
  wire ex_imm_b0 = ex_ctrl_sel_imm_S ? ex_reg_inst[7] 
		: (ex_ctrl_sel_imm == 3'h4) ? ex_reg_inst[20] 
		: (ex_ctrl_sel_imm_Z & ex_reg_inst[15]);
  assign ex_imm = $signed({$unsigned(ex_imm_sign),$unsigned(ex_imm_b30_20),$unsigned(ex_imm_b19_12),$unsigned(ex_imm_b11),ex_imm_b10_5,ex_imm_b4_1,ex_imm_b0});

  assign ex_op1 = (2'h1 == ex_ctrl_sel_alu1) ? $signed(ex_rs_0) 
		: (2'h2 == ex_ctrl_sel_alu1) ? $signed(ex_reg_pc) 
		: $signed(32'sh0);

  wire [3:0] _T_661 = (2'h1 == ex_ctrl_sel_alu2) ? $signed((ex_reg_rvc) ? $signed(4'sh2) : $signed(4'sh4)) : $signed(4'sh0);
  assign ex_op2 = (2'h2 == ex_ctrl_sel_alu2) ? $signed(ex_rs_1) 
		: (2'h3 == ex_ctrl_sel_alu2) ? $signed(ex_imm) 
		: $signed({{28{_T_661[3]}},_T_661});
// Passed 
  wire id_raddr1_not_0 = id_raddr1 != 5'h0;
  wire hazard_targets_rxs1 = id_ctrl_rxs1 & id_raddr1_not_0;
  wire hazard_targets_rxs2 = id_ctrl_rxs2 & (id_raddr2 != 5'h0);
  wire hazard_targets_wxd = id_ctrl_wxd & (id_waddr != 5'h0);
  wire checkHazards_ex = (hazard_targets_rxs1 & (id_raddr1 == ex_waddr))
			| (hazard_targets_rxs2 & (id_raddr2 == ex_waddr))
			| (hazard_targets_wxd & (id_waddr == ex_waddr));
  assign data_hazard_ex = ex_ctrl_wxd &  checkHazards_ex;

  assign ex_cannot_bypass = (ex_ctrl_csr != CSR_N) 
			| ex_ctrl_jalr 
			| ex_ctrl_mem 
			| ex_ctrl_div 
			| ex_ctrl_fp;

  assign fp_data_hazard_ex = ex_ctrl_wfd & ((io_fpu_dec_ren1 & (id_raddr1 == ex_waddr)) 
					| (io_fpu_dec_ren2 & (id_raddr2 == ex_waddr)) 
					| (io_fpu_dec_ren3 & (id_raddr3 == ex_waddr)) 
					| (io_fpu_dec_wen & (id_waddr == ex_waddr))
					);

  assign id_ex_hazard = ex_reg_valid & ((data_hazard_ex & ex_cannot_bypass) | fp_data_hazard_ex);

  assign data_hazard_mem = mem_ctrl_wxd & ((hazard_targets_rxs1 & (id_raddr1 == mem_waddr)) 
					| (hazard_targets_rxs2 & (id_raddr2 == mem_waddr)) 
					| (hazard_targets_wxd & (id_waddr == mem_waddr)));

  assign mem_cannot_bypass = (mem_ctrl_csr != CSR_N) | (mem_ctrl_mem & mem_reg_slow_bypass) | mem_ctrl_div | mem_ctrl_fp;

  assign fp_data_hazard_mem = mem_ctrl_wfd & ((io_fpu_dec_ren1 & (id_raddr1 == mem_waddr)) 
					| (io_fpu_dec_ren2 & (id_raddr2 == mem_waddr)) 
					| (io_fpu_dec_ren3 & (id_raddr3 == mem_waddr)) 
					| (io_fpu_dec_wen & (id_waddr == mem_waddr)));

  assign id_mem_hazard = mem_reg_valid & ((data_hazard_mem & mem_cannot_bypass) | fp_data_hazard_mem);

  assign data_hazard_wb = wb_ctrl_wxd & ((hazard_targets_rxs1 & (id_raddr1 == wb_waddr)) 
					| (hazard_targets_rxs2 & (id_raddr2 == wb_waddr)) 
					| (hazard_targets_wxd & (id_waddr == wb_waddr)));

  assign wb_dcache_miss = wb_ctrl_mem & !io_dmem_resp_valid;
  assign wb_set_sboard = wb_ctrl_div | wb_dcache_miss;

  assign fp_data_hazard_wb = wb_ctrl_wfd & ((io_fpu_dec_ren1 & (id_raddr1 == wb_waddr)) 
					| (io_fpu_dec_ren2 & (id_raddr2 == wb_waddr)) 
					| (io_fpu_dec_ren3 & (id_raddr3 == wb_waddr)) 
					| (io_fpu_dec_wen & (id_waddr == wb_waddr)));

  assign id_wb_hazard = wb_reg_valid & ((data_hazard_wb & wb_set_sboard) | fp_data_hazard_wb);

  assign dmem_resp_valid = io_dmem_resp_valid & io_dmem_resp_bits_has_data;
  assign dmem_resp_replay = dmem_resp_valid & io_dmem_resp_bits_replay;

  assign dmem_resp_xpu = io_dmem_resp_bits_tag[0] == 1'h0;

//  wire _T_1061 = dmem_resp_replay & dmem_resp_xpu;
  assign ll_wen = (dmem_resp_replay & dmem_resp_xpu) | (div_io_resp_ready & div_io_resp_valid);

  assign dmem_resp_waddr = io_dmem_resp_bits_tag[5:1];
  assign ll_waddr = (dmem_resp_replay & dmem_resp_xpu) ? dmem_resp_waddr : div_io_resp_bits_tag;

  wire [31:0] sboard_r = {sboard_reg[31:1], 1'h0};
//  wire [31:0] _T_1122 = sboard_r >> id_raddr1; 
//  wire [31:0] _T_1129 = sboard_r >> id_raddr2;
//  wire [31:0] _T_1136 = sboard_r >> id_waddr;
  assign id_sboard_hazard = (hazard_targets_rxs1 & sboard_r[id_raddr1] & !(ll_wen & (ll_waddr == id_raddr1))) 
			| (hazard_targets_rxs2 & sboard_r[id_raddr2] & !(ll_wen & (ll_waddr == id_raddr2))) 
			| (hazard_targets_wxd & sboard_r[id_waddr] & !(ll_wen & (ll_waddr == id_waddr)));
// Passed 
  assign id_stall_fpu = (io_fpu_dec_ren1 & fp_sboard_reg[id_raddr1]) 
			| (io_fpu_dec_ren2 & fp_sboard_reg[id_raddr2]) 
			| (io_fpu_dec_ren3 & fp_sboard_reg[id_raddr3]) 
			| (io_fpu_dec_wen & fp_sboard_reg[id_waddr]);

  assign dcache_blocked = blocked & !io_dmem_perf_grant;

  assign wb_wxd = wb_reg_valid & wb_ctrl_wxd;

  assign ctrl_stalld = id_ex_hazard 
			| id_mem_hazard 
			| id_wb_hazard 
			| id_sboard_hazard 
			| (csr_io_singleStep & (ex_reg_valid | mem_reg_valid | wb_reg_valid)) 
			| (id_csr_en & csr_io_decode_0_fp_csr & !io_fpu_fcsr_rdy) 
			| (id_ctrl_fp & id_stall_fpu) 
			| (id_ctrl_mem & dcache_blocked) 
			| (id_ctrl_div & (!(div_io_req_ready | (div_io_resp_valid & !wb_wxd)) | div_io_req_valid)) 
			| id_do_fence 
			| csr_io_csr_stall 
			| id_reg_pause;

  assign ctrl_killd = !ibuf_io_inst_0_valid 
			| ibuf_io_inst_0_bits_replay 
			| take_pc_mem_wb 
			| ctrl_stalld 
			| csr_io_interrupt;

  assign do_bypass = id_bypass_src_0_0 
			| id_bypass_src_0_1 
			| id_bypass_src_0_2 
			| id_bypass_src_0_3;

  assign wb_valid = wb_reg_valid & !replay_wb_common & !wb_xcpt;
  assign wb_wen = wb_valid & wb_ctrl_wxd;
  assign rf_wen = wb_wen | ll_wen;
  assign rf_waddr = ll_wen ? ll_waddr : wb_waddr;
  assign ll_wdata = div_io_resp_bits_data;

  assign id_rs_0 = !rf_wen ? rf_rdata1 
			: !rf_waddr_valid ? rf_rdata1
			: !(rf_waddr == id_raddr1) ? rf_rdata1 
			: rf_wdata;

  assign do_bypass_1 = id_bypass_src_1_0 
			| id_bypass_src_1_1 
			| id_bypass_src_1_2 
			| id_bypass_src_1_3;

  assign id_rs_1 = !rf_wen ? rf_rdata2
		: ! rf_waddr_valid ? rf_rdata2
		: !(rf_waddr == id_raddr2) ? rf_rdata2
		: rf_wdata;

  assign inst = ibuf_io_inst_0_bits_rvc ? {{16'd0}, ibuf_io_inst_0_bits_raw[15:0]} : ibuf_io_inst_0_bits_raw;

  assign id_load_use = mem_reg_valid & data_hazard_mem & mem_ctrl_mem;

  assign replay_ex_structural = (ex_ctrl_mem & !io_dmem_req_ready) 
				| (ex_ctrl_div & !div_io_req_ready);

  assign replay_ex_load_use = wb_dcache_miss & ex_reg_load_use;

  assign replay_ex = ex_reg_replay | (ex_reg_valid & (replay_ex_structural | replay_ex_load_use));

  assign ctrl_killx = take_pc_mem_wb | replay_ex | !ex_reg_valid;

  assign ex_slow_bypass = (ex_ctrl_mem_cmd == M_XSC) | (ex_reg_mem_size < 2'h2);

  assign ex_sfence = ex_ctrl_mem & (ex_ctrl_mem_cmd == M_SFENCE);
  assign ex_xcpt = ex_reg_xcpt_interrupt | ex_reg_xcpt;

  assign mem_pc_valid = (mem_reg_valid | mem_reg_replay) | mem_reg_xcpt_interrupt;

  assign mem_npc_misaligned = !csr_io_status_isa[2] & mem_npc[1] & !mem_reg_sfence;
// Passed 
  assign mem_int_wdata = (!mem_reg_xcpt & (mem_ctrl_jalr ^ mem_npc_misaligned)) ? $signed(mem_br_target) : $signed(mem_reg_wdata);

  assign mem_cfi = mem_ctrl_branch | mem_ctrl_jalr | mem_ctrl_jal;

  assign mem_cfi_taken = (mem_ctrl_branch & mem_br_taken) | mem_ctrl_jalr | mem_ctrl_jal;

  assign mem_breakpoint = (mem_reg_load & bpu_io_xcpt_ld) | (mem_reg_store & bpu_io_xcpt_st);

  assign mem_debug_breakpoint = (mem_reg_load & bpu_io_debug_ld) | (mem_reg_store & bpu_io_debug_st);

  assign mem_ldst_xcpt = mem_debug_breakpoint | mem_breakpoint;
  assign mem_ldst_cause = mem_debug_breakpoint ? CSR_debugIntCause : Causes_breakpoint[3:0];

  assign mem_xcpt = mem_reg_xcpt_interrupt | mem_reg_xcpt | (mem_reg_valid & mem_npc_misaligned) | (mem_reg_valid & mem_ldst_xcpt); 

  assign dcache_kill_mem = mem_reg_valid & mem_ctrl_wxd & io_dmem_replay_next;

  assign fpu_kill_mem = mem_reg_valid & mem_ctrl_fp & io_fpu_nack_mem;

  assign replay_mem = dcache_kill_mem | mem_reg_replay | fpu_kill_mem;

  assign killm_common = dcache_kill_mem | take_pc_wb | mem_reg_xcpt | !mem_reg_valid;

  assign ctrl_killm = killm_common | mem_xcpt | fpu_kill_mem;

  assign wb_cause = wb_reg_xcpt ? wb_reg_cause 
  		: wb_xcpt_ma_st ? Causes_misaligned_store
		: wb_xcpt_ma_ld ? Causes_misaligned_load
		: wb_xcpt_pf_st ? Causes_store_page_fault
		: wb_xcpt_pf_ld ? Causes_load_page_fault
		: wb_xcpt_ae_st ? Causes_store_access
		: Causes_load_access;

  assign tval_valid = wb_xcpt & ((wb_cause == Causes_illegal_instruction) 
				| (wb_cause == Causes_breakpoint) 
				| (wb_cause == Causes_misaligned_load) 
				| (wb_cause == Causes_misaligned_store) 
				| (wb_cause == Causes_load_access) 
				| (wb_cause == Causes_store_access) 
				| (wb_cause == Causes_fetch_access) 
				| (wb_cause == Causes_load_page_fault) 
				| (wb_cause == Causes_store_page_fault) 
				| (wb_cause == Causes_fetch_page_fault));

  assign ex_dcache_tag = {ex_waddr,ex_ctrl_fp};

  assign unpause = !csr_io_time[4:0] | io_dmem_perf_release | take_pc_mem_wb;
  assign coreMonitorBundle_timer = csr_io_time;

  assign coreMonitorBundle_valid = csr_io_trace_0_valid & !csr_io_trace_0_exception;
  assign coreMonitorBundle_pc = csr_io_trace_0_iaddr;

  assign coreMonitorBundle_wrdst = (rf_wen & !(wb_set_sboard & wb_wen)) ? rf_waddr : 5'h0;

  assign coreMonitorBundle_inst = csr_io_trace_0_insn;

  assign io_imem_might_request = imem_might_request_reg;
  assign io_imem_req_valid = take_pc_wb | take_pc_mem;
  assign io_imem_req_bits_pc = (wb_xcpt | csr_io_eret) ? csr_io_evec 
			: replay_wb_common ? wb_reg_pc 
			: mem_npc;
  assign io_imem_req_bits_speculative = !take_pc_wb;
  assign io_imem_sfence_valid = wb_reg_valid & wb_reg_sfence;
  assign io_imem_sfence_bits_rs1 = wb_reg_mem_size[0];
  assign io_imem_sfence_bits_rs2 = wb_reg_mem_size[1];
  assign io_imem_sfence_bits_addr = wb_reg_wdata;
  assign io_imem_resp_ready = ibuf_io_imem_ready;
  assign io_imem_btb_update_valid = mem_reg_valid & !take_pc_wb & mem_wrong_npc & (!mem_cfi | mem_cfi_taken);
  assign io_imem_btb_update_bits_prediction_entry = mem_reg_btb_resp_entry;
parameter coreInstBytes_mul_fetchWidth_sub_1 = 32'h3; 	// coreInstBytes = 2
							// fetchWidth = 2
  assign io_imem_btb_update_bits_pc = ~ ((~ io_imem_btb_update_bits_br_pc) | coreInstBytes_mul_fetchWidth_sub_1);
  assign io_imem_btb_update_bits_isValid = mem_cfi;
  assign io_imem_btb_update_bits_br_pc = mem_reg_pc + (mem_reg_rvc ? 32'h0 : 32'h2);
parameter regAddrMask = 5'h1b;
  assign io_imem_btb_update_bits_cfiType = ((mem_ctrl_jal | mem_ctrl_jalr) & mem_waddr[0]) ? CFIType_call
					: (mem_ctrl_jalr & (5'h1 == (mem_reg_inst[19:15] & regAddrMask))) ? CFIType_ret
					: (mem_ctrl_jal | mem_ctrl_jalr) ? CFIType_jump
					: CFIType_branch;
  assign io_imem_bht_update_valid = mem_reg_valid & !take_pc_wb;
  assign io_imem_bht_update_bits_prediction_history = mem_reg_btb_resp_bht_history;
  assign io_imem_bht_update_bits_pc = io_imem_btb_update_bits_pc;
  assign io_imem_bht_update_bits_branch = mem_ctrl_branch;
  assign io_imem_bht_update_bits_taken = mem_br_taken;
  assign io_imem_bht_update_bits_mispredict = mem_wrong_npc;
  assign io_imem_flush_icache = wb_reg_valid & wb_ctrl_fence_i & !io_dmem_s2_nack;
  assign io_dmem_req_valid = ex_reg_valid & ex_ctrl_mem;
  assign io_dmem_req_bits_addr = alu_io_adder_out; 
  assign io_dmem_req_bits_tag = {{1'd0}, ex_dcache_tag};
  assign io_dmem_req_bits_cmd = ex_ctrl_mem_cmd;
  assign io_dmem_req_bits_size = ex_reg_mem_size;
  assign io_dmem_req_bits_signed = !ex_reg_inst[14];
  assign io_dmem_s1_kill = killm_common | mem_ldst_xcpt | fpu_kill_mem;
  assign io_dmem_s1_data_data = mem_ctrl_fp ? io_fpu_store_data : mem_reg_rs2;
  assign io_ptw_ptbr_mode = csr_io_ptbr_mode;
  assign io_ptw_ptbr_ppn = csr_io_ptbr_ppn;
  assign io_ptw_sfence_valid = io_imem_sfence_valid;
  assign io_ptw_sfence_bits_rs1 = io_imem_sfence_bits_rs1; 
  assign io_ptw_status_debug = csr_io_status_debug;
  assign io_ptw_status_dprv = csr_io_status_dprv;
  assign io_ptw_status_prv = csr_io_status_prv;
  assign io_ptw_status_mxr = csr_io_status_mxr;
  assign io_ptw_status_sum = csr_io_status_sum;
  assign io_ptw_pmp_0_cfg_l = csr_io_pmp_0_cfg_l;
  assign io_ptw_pmp_0_cfg_a = csr_io_pmp_0_cfg_a;
  assign io_ptw_pmp_0_cfg_x = csr_io_pmp_0_cfg_x;
  assign io_ptw_pmp_0_cfg_w = csr_io_pmp_0_cfg_w;
  assign io_ptw_pmp_0_cfg_r = csr_io_pmp_0_cfg_r;
  assign io_ptw_pmp_0_addr = csr_io_pmp_0_addr;
  assign io_ptw_pmp_0_mask = csr_io_pmp_0_mask;
  assign io_ptw_pmp_1_cfg_l = csr_io_pmp_1_cfg_l;
  assign io_ptw_pmp_1_cfg_a = csr_io_pmp_1_cfg_a;
  assign io_ptw_pmp_1_cfg_x = csr_io_pmp_1_cfg_x;
  assign io_ptw_pmp_1_cfg_w = csr_io_pmp_1_cfg_w;
  assign io_ptw_pmp_1_cfg_r = csr_io_pmp_1_cfg_r;
  assign io_ptw_pmp_1_addr = csr_io_pmp_1_addr; 
  assign io_ptw_pmp_1_mask = csr_io_pmp_1_mask; 
  assign io_ptw_pmp_2_cfg_l = csr_io_pmp_2_cfg_l;
  assign io_ptw_pmp_2_cfg_a = csr_io_pmp_2_cfg_a;
  assign io_ptw_pmp_2_cfg_x = csr_io_pmp_2_cfg_x;
  assign io_ptw_pmp_2_cfg_w = csr_io_pmp_2_cfg_w;
  assign io_ptw_pmp_2_cfg_r = csr_io_pmp_2_cfg_r;
  assign io_ptw_pmp_2_addr = csr_io_pmp_2_addr; 
  assign io_ptw_pmp_2_mask = csr_io_pmp_2_mask; 
  assign io_ptw_pmp_3_cfg_l = csr_io_pmp_3_cfg_l;
  assign io_ptw_pmp_3_cfg_a = csr_io_pmp_3_cfg_a;
  assign io_ptw_pmp_3_cfg_x = csr_io_pmp_3_cfg_x;
  assign io_ptw_pmp_3_cfg_w = csr_io_pmp_3_cfg_w;
  assign io_ptw_pmp_3_cfg_r = csr_io_pmp_3_cfg_r;
  assign io_ptw_pmp_3_addr = csr_io_pmp_3_addr; 
  assign io_ptw_pmp_3_mask = csr_io_pmp_3_mask; 
  assign io_ptw_pmp_4_cfg_l = csr_io_pmp_4_cfg_l;
  assign io_ptw_pmp_4_cfg_a = csr_io_pmp_4_cfg_a;
  assign io_ptw_pmp_4_cfg_x = csr_io_pmp_4_cfg_x;
  assign io_ptw_pmp_4_cfg_w = csr_io_pmp_4_cfg_w;
  assign io_ptw_pmp_4_cfg_r = csr_io_pmp_4_cfg_r;
  assign io_ptw_pmp_4_addr = csr_io_pmp_4_addr;
  assign io_ptw_pmp_4_mask = csr_io_pmp_4_mask; 
  assign io_ptw_pmp_5_cfg_l = csr_io_pmp_5_cfg_l;
  assign io_ptw_pmp_5_cfg_a = csr_io_pmp_5_cfg_a;
  assign io_ptw_pmp_5_cfg_x = csr_io_pmp_5_cfg_x;
  assign io_ptw_pmp_5_cfg_w = csr_io_pmp_5_cfg_w;
  assign io_ptw_pmp_5_cfg_r = csr_io_pmp_5_cfg_r;
  assign io_ptw_pmp_5_addr = csr_io_pmp_5_addr; 
  assign io_ptw_pmp_5_mask = csr_io_pmp_5_mask; 
  assign io_ptw_pmp_6_cfg_l = csr_io_pmp_6_cfg_l;
  assign io_ptw_pmp_6_cfg_a = csr_io_pmp_6_cfg_a;
  assign io_ptw_pmp_6_cfg_x = csr_io_pmp_6_cfg_x;
  assign io_ptw_pmp_6_cfg_w = csr_io_pmp_6_cfg_w;
  assign io_ptw_pmp_6_cfg_r = csr_io_pmp_6_cfg_r;
  assign io_ptw_pmp_6_addr = csr_io_pmp_6_addr; 
  assign io_ptw_pmp_6_mask = csr_io_pmp_6_mask; 
  assign io_ptw_pmp_7_cfg_l = csr_io_pmp_7_cfg_l;
  assign io_ptw_pmp_7_cfg_a = csr_io_pmp_7_cfg_a;
  assign io_ptw_pmp_7_cfg_x = csr_io_pmp_7_cfg_x;
  assign io_ptw_pmp_7_cfg_w = csr_io_pmp_7_cfg_w;
  assign io_ptw_pmp_7_cfg_r = csr_io_pmp_7_cfg_r;
  assign io_ptw_pmp_7_addr = csr_io_pmp_7_addr; 
  assign io_ptw_pmp_7_mask = csr_io_pmp_7_mask; 
  assign io_ptw_customCSRs_csrs_0_value = 32'h0; 
  assign io_fpu_inst = ibuf_io_inst_0_bits_inst_bits; 
  assign io_fpu_fromint_data = ex_reg_rs_bypass_0 ? bypass_mux_1 : {ex_reg_rs_msb_0,ex_reg_rs_lsb_0};
  assign io_fpu_fcsr_rm = csr_io_fcsr_rm;
  assign io_fpu_dmem_resp_val = dmem_resp_valid & io_dmem_resp_bits_tag[0];
  assign io_fpu_dmem_resp_tag = io_dmem_resp_bits_tag[5:1];
  assign io_fpu_dmem_resp_data = io_dmem_resp_bits_data_word_bypass; 
  wire ctrl_killd_not_0 = ctrl_killd == 1'h0;
  assign io_fpu_valid = ctrl_killd_not_0 & id_ctrl_fp;
  assign io_fpu_killx = ctrl_killx;
  assign io_fpu_killm = killm_common;
// Passed
  assign ibuf_clock = clock;
  assign ibuf_reset = reset;
  assign ibuf_io_imem_valid = io_imem_resp_valid;
  assign ibuf_io_imem_bits_btb_taken = io_imem_resp_bits_btb_taken;
  assign ibuf_io_imem_bits_btb_bridx = io_imem_resp_bits_btb_bridx;
  assign ibuf_io_imem_bits_btb_entry = io_imem_resp_bits_btb_entry;
  assign ibuf_io_imem_bits_btb_bht_history = io_imem_resp_bits_btb_bht_history;
  assign ibuf_io_imem_bits_pc = io_imem_resp_bits_pc;
  assign ibuf_io_imem_bits_data = io_imem_resp_bits_data;
  assign ibuf_io_imem_bits_xcpt_pf_inst = io_imem_resp_bits_xcpt_pf_inst;
  assign ibuf_io_imem_bits_xcpt_ae_inst = io_imem_resp_bits_xcpt_ae_inst;
  assign ibuf_io_imem_bits_replay = io_imem_resp_bits_replay;
  assign ibuf_io_kill = take_pc_wb | take_pc_mem;
  assign ibuf_io_inst_0_ready = ctrl_stalld == 1'h0;
  assign csr_clock = clock;
  assign csr_reset = reset;
  assign csr_io_ungated_clock = clock;
  assign csr_io_interrupts_debug = io_interrupts_debug;
  assign csr_io_interrupts_mtip = io_interrupts_mtip;
  assign csr_io_interrupts_msip = io_interrupts_msip;
  assign csr_io_interrupts_meip = io_interrupts_meip;
  assign csr_io_interrupts_seip = io_interrupts_seip;
  assign csr_io_rw_addr = wb_reg_inst[31:20];
  assign csr_io_rw_cmd = wb_ctrl_csr & (~ (wb_reg_valid ? 3'h0 : CSR_I));
  assign csr_io_rw_wdata = wb_reg_wdata;
  assign csr_io_decode_0_csr = ibuf_io_inst_0_bits_raw[31:20];
  assign csr_io_exception = wb_xcpt;
  assign csr_io_retire = wb_valid;
  assign csr_io_cause = wb_cause;
  assign csr_io_pc = wb_reg_pc;
  assign csr_io_tval = tval_valid ? wb_reg_wdata : 32'h0;
  assign csr_io_fcsr_flags_valid = io_fpu_fcsr_flags_valid;
  assign csr_io_fcsr_flags_bits = io_fpu_fcsr_flags_bits;
  wire [15:0] _T_1081 = (wb_reg_raw_inst[1:0] == 2'h3) ? wb_reg_inst[31:16] : 16'h0;
  assign csr_io_inst_0 = {_T_1081,wb_reg_raw_inst[15:0]};

  assign bpu_io_status_debug = csr_io_status_debug;
  assign bpu_io_status_prv = csr_io_status_prv;
  assign bpu_io_bp_0_control_action = csr_io_bp_0_control_action;
  assign bpu_io_bp_0_control_tmatch = csr_io_bp_0_control_tmatch;
  assign bpu_io_bp_0_control_m = csr_io_bp_0_control_m;
  assign bpu_io_bp_0_control_s = csr_io_bp_0_control_s;
  assign bpu_io_bp_0_control_u = csr_io_bp_0_control_u;
  assign bpu_io_bp_0_control_x = csr_io_bp_0_control_x;
  assign bpu_io_bp_0_control_w = csr_io_bp_0_control_w;
  assign bpu_io_bp_0_control_r = csr_io_bp_0_control_r;
  assign bpu_io_bp_0_address = csr_io_bp_0_address;
  assign bpu_io_pc = ibuf_io_pc;
  assign bpu_io_ea = mem_reg_wdata;
  assign alu_io_fn = ex_ctrl_alu_fn;
  assign alu_io_in2 = $unsigned(ex_op2);
  assign alu_io_in1 = $unsigned(ex_op1);
  assign div_clock = clock;
  assign div_reset = reset;
  assign div_io_req_valid = ex_reg_valid & ex_ctrl_div;
  assign div_io_req_bits_fn = ex_ctrl_alu_fn;
  assign div_io_req_bits_in1 = ex_reg_rs_bypass_0 ? bypass_mux_1 : {ex_reg_rs_msb_0,ex_reg_rs_lsb_0};
  assign div_io_req_bits_in2 = ex_reg_rs_bypass_1 ? bypass_mux_2 : {ex_reg_rs_msb_1,ex_reg_rs_lsb_1};
  assign div_io_req_bits_tag = ex_reg_inst[11:7]; 
  assign div_io_kill = killm_common & div_io_kill_reg; 
  assign div_io_resp_ready = (dmem_resp_replay & dmem_resp_xpu) ? 1'h0 : !wb_wxd;
  assign PlusArgTimeout_clock = clock;
  assign PlusArgTimeout_reset = reset;
  assign PlusArgTimeout_io_count = csr_io_time;
// Passed
// Write general registers
always @(posedge clock) begin
	if(rf_wen & rf_waddr_valid) begin
		rf[(~ rf_waddr)] <= rf_wdata;
	end
end

always @(posedge clock) begin
	if (unpause) begin
		id_reg_pause <= 1'h0;
	end else begin
		if (ctrl_killd_not_0) begin
			id_reg_pause <= (id_ctrl_fence & (id_fence_succ == 4'h0)) | id_reg_pause;
		end
	end
	imem_might_request_reg <= ex_pc_valid | mem_pc_valid | io_ptw_customCSRs_csrs_0_value[1];
end

always @(posedge clock) begin
	if (ctrl_killd_not_0) begin
		ex_ctrl_fp <= id_ctrl_fp;
		ex_ctrl_branch <= id_ctrl_branch;
		ex_ctrl_jal <= id_ctrl_jal;
		ex_ctrl_jalr <= id_ctrl_jalr;
		ex_ctrl_rxs2 <= id_ctrl_rxs2;

		if (id_xcpt) begin
			if (bpu_io_xcpt_if | ({ibuf_io_inst_0_bits_xcpt0_pf_inst,ibuf_io_inst_0_bits_xcpt0_ae_inst} != 2'h0)) begin
				ex_ctrl_sel_alu2 <= A2_ZERO;
				ex_ctrl_sel_alu1 <= A1_PC;
			end else begin
				if ({ibuf_io_inst_0_bits_xcpt1_pf_inst,ibuf_io_inst_0_bits_xcpt1_ae_inst} != 2'h0) begin
					ex_ctrl_sel_alu2 <= A2_SIZE;
					ex_ctrl_sel_alu1 <= A1_PC;
				end else begin
					ex_ctrl_sel_alu2 <= A2_ZERO;
					ex_ctrl_sel_alu1 <= A1_RS1;
				end
			end
		end else begin
			ex_ctrl_sel_alu2 <= id_ctrl_sel_alu2;
			ex_ctrl_sel_alu1 <= id_ctrl_sel_alu1;
		end

		ex_ctrl_sel_imm <= id_ctrl_sel_imm;

		if (id_xcpt) begin
			ex_ctrl_alu_fn <= ALU_FN_ADD;
		end else begin
			ex_ctrl_alu_fn <= id_ctrl_alu_fn;
		end

		ex_ctrl_mem <= id_ctrl_mem;
		ex_ctrl_mem_cmd <= id_ctrl_mem_cmd;
		ex_ctrl_wfd <= id_ctrl_wfd;
		ex_ctrl_div <= id_ctrl_div;
		ex_ctrl_wxd <= id_ctrl_wxd;

		if (id_csr_ren) begin
			ex_ctrl_csr <= CSR_R;
		end else begin
			ex_ctrl_csr <= id_ctrl_csr;
		end

		ex_ctrl_fence_i <= id_ctrl_fence_i;
	end
end

  wire mem_reg_valid_and_flush_pipe = mem_reg_valid & mem_reg_flush_pipe;
always @(posedge clock) begin
	if (!(mem_reg_valid_and_flush_pipe)) begin
		if (ex_pc_valid) begin
			mem_ctrl_fp <= ex_ctrl_fp;
			mem_ctrl_branch <= ex_ctrl_branch;
			mem_ctrl_jal <= ex_ctrl_jal;
			mem_ctrl_jalr <= ex_ctrl_jalr;
			mem_ctrl_mem <= ex_ctrl_mem;
			mem_ctrl_wfd <= ex_ctrl_wfd;
			mem_ctrl_div <= ex_ctrl_div;
			mem_ctrl_wxd <= ex_ctrl_wxd;
			mem_ctrl_csr <= ex_ctrl_csr;
			mem_ctrl_fence_i <= (ex_ctrl_jalr & csr_io_status_debug) | ex_ctrl_fence_i;
		end
	end
end
// Passed

always @(posedge clock) begin
	if (mem_pc_valid) begin
		wb_ctrl_mem <= mem_ctrl_mem;
		wb_ctrl_wfd <= mem_ctrl_wfd;
		wb_ctrl_div <= mem_ctrl_div;
		wb_ctrl_wxd <= mem_ctrl_wxd;
		wb_ctrl_csr <= mem_ctrl_csr;
		wb_ctrl_fence_i <= mem_ctrl_fence_i;
	end
end

  wire ctrl_killd_inv_or_csr_io_interrupt_or_ibuf_io_inst_0_bits_replay = ctrl_killd_not_0 | csr_io_interrupt | ibuf_io_inst_0_bits_replay;
always @(posedge clock) begin
	ex_reg_xcpt_interrupt <= !take_pc_mem_wb & ibuf_io_inst_0_valid & csr_io_interrupt;
	ex_reg_valid <= ctrl_killd == 1'h0;

	if (ctrl_killd_not_0) begin
		if (id_xcpt) begin
			ex_reg_rvc <= ({ibuf_io_inst_0_bits_xcpt1_pf_inst,ibuf_io_inst_0_bits_xcpt1_ae_inst} != 2'h0) | ibuf_io_inst_0_bits_rvc;
		end else begin
			ex_reg_rvc <= ibuf_io_inst_0_bits_rvc;
		end
	end

	if (ctrl_killd_inv_or_csr_io_interrupt_or_ibuf_io_inst_0_bits_replay) begin
		ex_reg_btb_resp_entry <= ibuf_io_btb_resp_entry;
	end

	if (ctrl_killd_inv_or_csr_io_interrupt_or_ibuf_io_inst_0_bits_replay) begin
		ex_reg_btb_resp_bht_history <= ibuf_io_btb_resp_bht_history;
	end

	ex_reg_xcpt <= ctrl_killd_not_0 & id_xcpt;

	if (ctrl_killd_not_0) begin
		ex_reg_flush_pipe <= id_ctrl_fence_i | id_csr_flush;
	end

	if (ctrl_killd_not_0) begin
		ex_reg_load_use <= id_load_use;
	end

	if (ctrl_killd_inv_or_csr_io_interrupt_or_ibuf_io_inst_0_bits_replay) begin
		if (csr_io_interrupt) begin
			ex_reg_cause <= csr_io_interrupt_cause;
		end else begin
			ex_reg_cause <= bpu_io_debug_if ? CSR_debugTriggerCause
					: bpu_io_xcpt_if ? Causes_breakpoint 
					: ibuf_io_inst_0_bits_xcpt0_pf_inst ? Causes_fetch_page_fault
					: ibuf_io_inst_0_bits_xcpt0_ae_inst ? Causes_fetch_access 
					: ibuf_io_inst_0_bits_xcpt1_pf_inst ? Causes_fetch_page_fault
					: ibuf_io_inst_0_bits_xcpt1_ae_inst ? Causes_fetch_access
					: Causes_illegal_instruction;
		end
	end

	ex_reg_replay <= !take_pc_mem_wb & ibuf_io_inst_0_valid & ibuf_io_inst_0_bits_replay;

	if (ctrl_killd_inv_or_csr_io_interrupt_or_ibuf_io_inst_0_bits_replay) begin
		ex_reg_pc <= ibuf_io_pc;
	end

	if (ctrl_killd_not_0) begin
		if ((id_ctrl_mem_cmd == M_SFENCE) | (id_ctrl_mem_cmd == M_FLUSH_ALL)) begin
			ex_reg_mem_size <= {(id_raddr2 != 5'h0),id_raddr1_not_0};
		end else begin
			ex_reg_mem_size <= ibuf_io_inst_0_bits_inst_bits[13:12];
		end
	end

	if (ctrl_killd_inv_or_csr_io_interrupt_or_ibuf_io_inst_0_bits_replay) begin
		ex_reg_inst <= ibuf_io_inst_0_bits_inst_bits;
	end

	if (ctrl_killd_inv_or_csr_io_interrupt_or_ibuf_io_inst_0_bits_replay) begin
	  ex_reg_raw_inst <= ibuf_io_inst_0_bits_raw;
	end
end

  wire isAMO_ex_ctrl_mem_cmd = (ex_ctrl_mem_cmd == M_XA_SWAP) 
		| (ex_ctrl_mem_cmd == M_XA_XOR) 
		| (ex_ctrl_mem_cmd == M_XA_OR) 
		| (ex_ctrl_mem_cmd == M_XA_AND) 
		| (ex_ctrl_mem_cmd == M_XA_ADD) 
		| (ex_ctrl_mem_cmd == M_XA_MIN) 
		| (ex_ctrl_mem_cmd == M_XA_MAX) 
		| (ex_ctrl_mem_cmd == M_XA_MINU) 
		| (ex_ctrl_mem_cmd == M_XA_MAXU);
  wire isRead_ex_ctrl_mem_cmd = (ex_ctrl_mem_cmd == M_XRD) 
		| (ex_ctrl_mem_cmd == M_XLR) 
		| (ex_ctrl_mem_cmd == M_XSC) 
		| isAMO_ex_ctrl_mem_cmd;
  wire isWrite_ex_ctrl_mem_cmd = (ex_ctrl_mem_cmd == M_XWR) 
		| (ex_ctrl_mem_cmd == M_PWR) 
		| (ex_ctrl_mem_cmd == M_XSC) 
		| isAMO_ex_ctrl_mem_cmd;
always @(posedge clock) begin
	mem_reg_xcpt_interrupt <= !take_pc_mem_wb & ex_reg_xcpt_interrupt;
	mem_reg_valid <= ctrl_killx == 1'h0;

	if (!(mem_reg_valid_and_flush_pipe)) begin
		if (ex_pc_valid) begin
			mem_reg_rvc <= ex_reg_rvc;
			mem_reg_btb_resp_entry <= ex_reg_btb_resp_entry;
			mem_reg_btb_resp_bht_history <= ex_reg_btb_resp_bht_history;
			mem_reg_flush_pipe <= (ex_ctrl_jalr & csr_io_status_debug) | ex_reg_flush_pipe;
			mem_reg_cause <= ex_reg_cause;
			mem_reg_slow_bypass <= ex_slow_bypass;
			mem_reg_load <= ex_ctrl_mem & isRead_ex_ctrl_mem_cmd;
			mem_reg_store <= ex_ctrl_mem & isWrite_ex_ctrl_mem_cmd;
			mem_reg_pc <= ex_reg_pc;
			mem_reg_inst <= ex_reg_inst;
	   		mem_reg_mem_size <= ex_reg_mem_size;
	   		mem_reg_raw_inst <= ex_reg_raw_inst;
	   		mem_reg_wdata <= alu_io_out;
			mem_br_taken <= alu_io_cmp_out;
		end
	end

	mem_reg_xcpt <= !ctrl_killx & ex_xcpt;
	mem_reg_replay <= !take_pc_mem_wb & replay_ex;

	if (mem_reg_valid_and_flush_pipe) begin
		mem_reg_sfence <= 1'h0;
	end else begin
		if (ex_pc_valid) begin
			mem_reg_sfence <= ex_sfence;
		end
	end

	if (!(mem_reg_valid_and_flush_pipe)) begin
		if (ex_pc_valid) begin
			if (ex_ctrl_rxs2 & (ex_ctrl_mem | ex_sfence)) begin
				if (ex_reg_mem_size == 2'h0) begin
					mem_reg_rs2 <= {ex_rs_1[7:0],ex_rs_1[7:0],ex_rs_1[7:0],ex_rs_1[7:0]};
				end else begin
					if (ex_reg_mem_size == 2'h1) begin
						mem_reg_rs2 <= {ex_rs_1[15:0],ex_rs_1[15:0]};
					end else begin
						if (ex_reg_rs_bypass_1) begin
							if ((ex_reg_rs_lsb_1 == 2'h3)) begin
								mem_reg_rs2 <= io_dmem_resp_bits_data_word_bypass;
							end else begin
								if ((ex_reg_rs_lsb_1 == 2'h2)) begin
									mem_reg_rs2 <= wb_reg_wdata;
								end else begin
									if (ex_reg_rs_lsb_1 == 2'h1) begin
										mem_reg_rs2 <= mem_reg_wdata;
									end else begin
										mem_reg_rs2 <= 32'h0;
									end
								end
							end
						end else begin
							mem_reg_rs2 <= {ex_reg_rs_msb_1,ex_reg_rs_lsb_1};
						end
					end
				end
			end
		end
	end
end
// Passed

  wire [31:0] mem_cause = (mem_reg_xcpt_interrupt | mem_reg_xcpt) ? mem_reg_cause
			: (mem_reg_valid & mem_npc_misaligned) ? Causes_misaligned_fetch
			: {{28'd0}, mem_ldst_cause};
always @(posedge clock) begin
	wb_reg_valid <= ctrl_killm == 1'h0;
	wb_reg_xcpt <= mem_xcpt & !take_pc_wb;
	wb_reg_replay <= replay_mem & !take_pc_wb;
	wb_reg_flush_pipe <= !ctrl_killm & mem_reg_flush_pipe;

	if (mem_pc_valid) begin
		wb_reg_cause <= mem_cause;
		wb_reg_sfence <= mem_reg_sfence;
		wb_reg_pc <= mem_reg_pc;
		wb_reg_mem_size <= mem_reg_mem_size;
		wb_reg_inst <= mem_reg_inst;
		wb_reg_raw_inst <= mem_reg_raw_inst;
		if (!mem_reg_xcpt & mem_ctrl_fp & mem_ctrl_wxd) begin
		  wb_reg_wdata <= io_fpu_toint_data;
		end else begin
		  wb_reg_wdata <= mem_int_wdata;
		end
	end
end

always @(posedge clock) begin
	if (reset) begin
		id_reg_fence <= 1'h0;
	end else begin
		if (ctrl_killd_not_0) begin
			id_reg_fence <= id_fence_next | (!id_mem_busy ? 1'h0 : id_reg_fence);
		end else begin
			if (!id_mem_busy) begin
				id_reg_fence <= 1'h0;
			end
		end
	end
end

//  wire _T_700 = id_ctrl_rxs1 & !do_bypass;
//  wire _T_708 = id_ctrl_rxs2 & !do_bypass_1;
always @(posedge clock) begin
	if (ctrl_killd_not_0) begin
		if (id_illegal_insn) begin
			ex_reg_rs_bypass_0 <= 1'h0;
		end else begin
			ex_reg_rs_bypass_0 <= do_bypass;
		end
		ex_reg_rs_bypass_1 <= do_bypass_1;

		if (id_illegal_insn) begin
			ex_reg_rs_lsb_0 <= inst[1:0];
		end else begin
			if (id_ctrl_rxs1 & !do_bypass) begin
				ex_reg_rs_lsb_0 <= id_rs_0[1:0];
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

		if (id_ctrl_rxs2 & !do_bypass_1) begin
			ex_reg_rs_lsb_1 <= id_rs_1[1:0];
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

		if (id_illegal_insn) begin
			ex_reg_rs_msb_0 <= inst[31:2];
		end else begin
			if (id_ctrl_rxs1 & !do_bypass) begin
				ex_reg_rs_msb_0 <= id_rs_0[31:2];
			end
		end

		if (id_ctrl_rxs2 & !do_bypass_1) begin
			ex_reg_rs_msb_1 <= id_rs_1[31:2];
		end
	end
end

  wire [31:0] sboard_clear_mask = ll_wen ? (32'h1 << ll_waddr) : 32'h0;
  wire [31:0] sboard_clear_update = sboard_r & (~ sboard_clear_mask);
  wire sboard_set_en = wb_set_sboard & wb_wen;
  wire [31:0] sboard_set_mask = sboard_set_en ? (32'h1 << wb_waddr) : 32'h0; 
always @(posedge clock) begin
	if (reset) begin
		sboard_reg <= 32'h0;
	end else begin
		if (ll_wen | sboard_set_en) begin
			sboard_reg <= sboard_clear_update | sboard_set_mask;
		end else begin
			if (ll_wen) begin
				sboard_reg <= sboard_clear_update;
			end
		end
	end
end

  wire fp_sboard_set_en = ((wb_dcache_miss & wb_ctrl_wfd) | io_fpu_sboard_set) & wb_valid;
  wire fp_sboard_clear_en1 = dmem_resp_replay & io_dmem_resp_bits_tag[0];
  wire [31:0] fp_sboard_set_mask = fp_sboard_set_en ? (32'h1 << wb_waddr) : 32'h0;
  wire [31:0] fp_sboard_set_update = fp_sboard_reg | fp_sboard_set_mask;
  wire [31:0] fp_sboard_clear_mask1 = fp_sboard_clear_en1 ? (32'h1 << dmem_resp_waddr) : 32'h0;
  wire [31:0] fp_sboard_clear_update1 = fp_sboard_set_update & (~ fp_sboard_clear_mask1);
  wire fp_sboard_clear_en2 = fp_sboard_set_en | fp_sboard_clear_en1;
  wire [31:0] fp_sboard_clear_mask2 = io_fpu_sboard_clr ? (32'h1 << io_fpu_sboard_clra) : 32'h0;
always @(posedge clock) begin
	if (reset) begin
		fp_sboard_reg <= 32'h0;
	end else begin
		if (fp_sboard_clear_en2 | io_fpu_sboard_clr) begin
			fp_sboard_reg <= fp_sboard_clear_update1 & (~ fp_sboard_clear_mask2);
		end else begin
			if (fp_sboard_clear_en2) begin
				fp_sboard_reg <= fp_sboard_clear_update1;
			end else begin
				if (fp_sboard_set_en) begin
					fp_sboard_reg <= fp_sboard_set_update;
				end
			end
		end
	end
	blocked <= !io_dmem_req_ready & !io_dmem_perf_grant & (blocked | io_dmem_req_valid | io_dmem_s2_nack);
	div_io_kill_reg <= div_io_req_ready & div_io_req_valid;
end

always @(posedge clock) begin
	if (ex_reg_rs_bypass_0) begin
		if ((ex_reg_rs_lsb_0 == 2'h3)) begin
			_T_1388 <= io_dmem_resp_bits_data_word_bypass;
		end else begin
			if ((ex_reg_rs_lsb_0 == 2'h2)) begin
				_T_1388 <= wb_reg_wdata;
			end else begin
				if ((ex_reg_rs_lsb_0 == 2'h1)) begin
					_T_1388 <= mem_reg_wdata;
				end else begin
					_T_1388 <= 32'h0;
				end
			end
		end
	end else begin
		_T_1388 <= {ex_reg_rs_msb_0,ex_reg_rs_lsb_0};
	end
	coreMonitorBundle_rd0val <= _T_1388;
end

always @(posedge clock) begin
	if (ex_reg_rs_bypass_1) begin
		if ((ex_reg_rs_lsb_1 == 2'h3)) begin
			_T_1391 <= io_dmem_resp_bits_data_word_bypass;
		end else begin
			if ((ex_reg_rs_lsb_1 == 2'h2)) begin
				_T_1391 <= wb_reg_wdata;
			end else begin
				if (ex_reg_rs_lsb_1 == 2'h1) begin
					_T_1391 <= mem_reg_wdata;
				end else begin
					_T_1391 <= 32'h0;
				end
			end
		end
	end else begin
	  _T_1391 <= {ex_reg_rs_msb_1,ex_reg_rs_lsb_1};
	end
	coreMonitorBundle_rd1val <= _T_1391;
end

    `ifndef SYNTHESIS
  wire [4:0] _T_1393 = rf_wen ? coreMonitorBundle_wrdst : 5'h0;
  wire [4:0] _T_1369 = wb_reg_inst[19:15];
  wire [4:0] _T_1370 = wb_reg_inst[24:20]; 
  wire [31:0] reg_sp = rf[2];
  wire [31:0] reg_a4 = rf[17];
  wire [31:0] reg_a5 = rf[16];
    `endif
always @(posedge clock) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (!reset) begin
          $fwrite(32'h80000002,"C%d: %d [%d] pc=[%x] W[r%d=%x] R[r%d=%x] R[r%d=%x] inst=[%x] DASM(%x)\n",1'h0,coreMonitorBundle_timer,coreMonitorBundle_valid,coreMonitorBundle_pc,_T_1393,rf_wdata,_T_1369,coreMonitorBundle_rd0val,_T_1370,coreMonitorBundle_rd1val,coreMonitorBundle_inst,coreMonitorBundle_inst);
        end
    `ifdef PRINTF_COND
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
  _RAND_0 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 31; initvar = initvar+1)
    rf[initvar] = _RAND_0[31:0];
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
  sboard_reg = _RAND_89[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_90 = {1{`RANDOM}};
  fp_sboard_reg = _RAND_90[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_91 = {1{`RANDOM}};
  blocked = _RAND_91[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_92 = {1{`RANDOM}};
  div_io_kill_reg = _RAND_92[0:0];
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
// Passed
`endif // MY_ASSIGNMENT
endmodule
`endif // __Rocket

