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

`define MY_DEFINE
`ifdef MY_DEFINE
//*****************************************************************************
// Registers Declarations
//*****************************************************************************
reg  		id_reg_pause;
reg  		imem_might_request_reg;
reg  		ex_ctrl_fp;
reg  		ex_ctrl_branch;
reg  		ex_ctrl_jal;
reg  		ex_ctrl_jalr;
reg  		ex_ctrl_rxs2;
reg [1:0]	ex_ctrl_sel_alu2;
reg [1:0] 	ex_ctrl_sel_alu1;
reg [2:0] 	ex_ctrl_sel_imm;
reg [3:0] 	ex_ctrl_alu_fn;
reg  		ex_ctrl_mem;
reg [4:0] 	ex_ctrl_mem_cmd;
reg  		ex_ctrl_wfd;
reg  		ex_ctrl_div;
reg  		ex_ctrl_wxd;
reg [2:0] 	ex_ctrl_csr;
reg  		ex_ctrl_fence_i;
reg		mem_ctrl_fp;
reg		mem_ctrl_branch;
reg		mem_ctrl_jal;
reg		mem_ctrl_jalr;
reg		mem_ctrl_mem;
reg		mem_ctrl_wfd;
reg		mem_ctrl_div;
reg		mem_ctrl_wxd;
reg [2:0] 	mem_ctrl_csr;
reg		mem_ctrl_fence_i;
reg		wb_ctrl_mem;
reg		wb_ctrl_wfd;
reg		wb_ctrl_div;
reg		wb_ctrl_wxd;
reg [2:0]	wb_ctrl_csr;
reg  		wb_ctrl_fence_i;
reg  		ex_reg_xcpt_interrupt;
reg  		ex_reg_valid;
reg  		ex_reg_rvc;
reg [4:0] 	ex_reg_btb_resp_entry;
reg [7:0] 	ex_reg_btb_resp_bht_history;
reg  		ex_reg_xcpt;
reg  		ex_reg_flush_pipe;
reg  		ex_reg_load_use;
reg [31:0] 	ex_reg_cause;
reg  		ex_reg_replay;
reg [31:0] 	ex_reg_pc;
reg [1:0] 	ex_reg_mem_size;
reg [31:0] 	ex_reg_inst;
reg [31:0] 	ex_reg_raw_inst;
reg  		mem_reg_xcpt_interrupt;
reg  		mem_reg_valid;
reg  		mem_reg_rvc;
reg [4:0] 	mem_reg_btb_resp_entry;
reg [7:0] 	mem_reg_btb_resp_bht_history;
reg  		mem_reg_xcpt;
reg  		mem_reg_replay;
reg  		mem_reg_flush_pipe;
reg [31:0] 	mem_reg_cause;
reg  		mem_reg_slow_bypass;
reg  		mem_reg_load;
reg  		mem_reg_store;
reg  		mem_reg_sfence;
reg [31:0] 	mem_reg_pc;
reg [31:0] 	mem_reg_inst;
reg [1:0] 	mem_reg_mem_size;
reg [31:0] 	mem_reg_raw_inst;
reg [31:0] 	mem_reg_wdata;
reg [31:0] 	mem_reg_rs2;
reg  		mem_br_taken;
reg  		wb_reg_valid;
reg  		wb_reg_xcpt;
reg  		wb_reg_replay;
reg  		wb_reg_flush_pipe;
reg [31:0] 	wb_reg_cause;
reg  		wb_reg_sfence;
reg [31:0] 	wb_reg_pc;
reg [1:0] 	wb_reg_mem_size;
reg [31:0] 	wb_reg_inst;
reg [31:0] 	wb_reg_raw_inst;
reg [31:0] 	wb_reg_wdata;

// decode stage
reg  id_reg_fence;

//*****************************************************************************
// Wires Declarations
//*****************************************************************************

// ibuf
wire		ibuf_clock;
wire		ibuf_reset;
wire		ibuf_io_imem_ready;
wire		ibuf_io_imem_valid;
wire		ibuf_io_imem_bits_btb_taken;
wire		ibuf_io_imem_bits_btb_bridx;
wire [4:0] 	ibuf_io_imem_bits_btb_entry;
wire [7:0] 	ibuf_io_imem_bits_btb_bht_history;
wire [31:0] 	ibuf_io_imem_bits_pc;
wire [31:0] 	ibuf_io_imem_bits_data;
wire		ibuf_io_imem_bits_xcpt_pf_inst;
wire		ibuf_io_imem_bits_xcpt_ae_inst;
wire		ibuf_io_imem_bits_replay;
wire		ibuf_io_kill;
wire [31:0] 	ibuf_io_pc;
wire [4:0] 	ibuf_io_btb_resp_entry;
wire [7:0] 	ibuf_io_btb_resp_bht_history;
wire		ibuf_io_inst_0_ready;
wire		ibuf_io_inst_0_valid;
wire		ibuf_io_inst_0_bits_xcpt0_pf_inst;
wire		ibuf_io_inst_0_bits_xcpt0_ae_inst;
wire		ibuf_io_inst_0_bits_xcpt1_pf_inst;
wire		ibuf_io_inst_0_bits_xcpt1_ae_inst;
wire		ibuf_io_inst_0_bits_replay;
wire		ibuf_io_inst_0_bits_rvc;
wire [31:0] 	ibuf_io_inst_0_bits_inst_bits;
wire [4:0] 	ibuf_io_inst_0_bits_inst_rd;
wire [4:0] 	ibuf_io_inst_0_bits_inst_rs1;
wire [4:0] 	ibuf_io_inst_0_bits_inst_rs2;
wire [4:0] 	ibuf_io_inst_0_bits_inst_rs3;
wire [31:0] 	ibuf_io_inst_0_bits_raw;

// csr
wire		csr_clock;
wire		csr_reset;
wire		csr_io_ungated_clock;
wire		csr_io_interrupts_debug;
wire		csr_io_interrupts_mtip;
wire		csr_io_interrupts_msip;
wire		csr_io_interrupts_meip;
wire		csr_io_interrupts_seip;
wire [11:0] 	csr_io_rw_addr;
wire [2:0] 	csr_io_rw_cmd;
wire [31:0] 	csr_io_rw_rdata;
wire [31:0] 	csr_io_rw_wdata;
wire [11:0] 	csr_io_decode_0_csr;
wire		csr_io_decode_0_fp_illegal;
wire		csr_io_decode_0_fp_csr;
wire		csr_io_decode_0_read_illegal;
wire		csr_io_decode_0_write_illegal;
wire		csr_io_decode_0_write_flush;
wire		csr_io_decode_0_system_illegal;
wire		csr_io_csr_stall;
wire		csr_io_eret;
wire		csr_io_singleStep;
wire		csr_io_status_debug;
wire		csr_io_status_cease;
wire [31:0] 	csr_io_status_isa;
wire [1:0] 	csr_io_status_dprv;
wire [1:0] 	csr_io_status_prv;
wire  		csr_io_status_sd;
wire [26:0] 	csr_io_status_zero2;
wire [1:0] 	csr_io_status_sxl;
wire [1:0] 	csr_io_status_uxl;
wire  		csr_io_status_sd_rv32;
wire [5:0] 	csr_io_status_zero1;
wire [1:0] 	csr_io_status_vs;
wire		csr_io_status_tsr;
wire		csr_io_status_tw;
wire		csr_io_status_tvm;
wire		csr_io_status_mxr;
wire		csr_io_status_sum;
wire		csr_io_status_mprv;
wire [1:0] 	csr_io_status_xs;
wire [1:0]	csr_io_status_fs;
wire [1:0]	csr_io_status_mpp;
wire [1:0]	csr_io_status_hpp;
wire		csr_io_status_spp;
wire		csr_io_status_mpie;
wire		csr_io_status_hpie;
wire		csr_io_status_spie;
wire		csr_io_status_upie;
wire		csr_io_status_mie;
wire		csr_io_status_hie;
wire		csr_io_status_sie;
wire		csr_io_status_uie;
wire		csr_io_ptbr_mode;
wire [21:0] 	csr_io_ptbr_ppn;
wire [31:0] 	csr_io_evec;
wire  		csr_io_exception;
wire  		csr_io_retire;
wire [31:0]	csr_io_cause;
wire [31:0]	csr_io_pc;
wire [31:0]	csr_io_tval;
wire [31:0]	csr_io_time;
wire [2:0] 	csr_io_fcsr_rm;
wire  		csr_io_fcsr_flags_valid;
wire [4:0] 	csr_io_fcsr_flags_bits;
wire  		csr_io_interrupt;
wire [31:0] 	csr_io_interrupt_cause;
wire  		csr_io_bp_0_control_action;
wire [1:0] 	csr_io_bp_0_control_tmatch;
wire		csr_io_bp_0_control_m;
wire		csr_io_bp_0_control_s;
wire		csr_io_bp_0_control_u;
wire		csr_io_bp_0_control_x;
wire		csr_io_bp_0_control_w;
wire		csr_io_bp_0_control_r;
wire [31:0] 	csr_io_bp_0_address;
wire  		csr_io_pmp_0_cfg_l;
wire [1:0] 	csr_io_pmp_0_cfg_a;
wire		csr_io_pmp_0_cfg_x;
wire		csr_io_pmp_0_cfg_w;
wire		csr_io_pmp_0_cfg_r;
wire [29:0]	csr_io_pmp_0_addr;
wire [31:0]	csr_io_pmp_0_mask;
wire  		csr_io_pmp_1_cfg_l;
wire [1:0] 	csr_io_pmp_1_cfg_a;
wire		csr_io_pmp_1_cfg_x;
wire		csr_io_pmp_1_cfg_w;
wire		csr_io_pmp_1_cfg_r;
wire [29:0]	csr_io_pmp_1_addr;
wire [31:0]	csr_io_pmp_1_mask;
wire  		csr_io_pmp_2_cfg_l;
wire [1:0] 	csr_io_pmp_2_cfg_a;
wire		csr_io_pmp_2_cfg_x;
wire		csr_io_pmp_2_cfg_w;
wire		csr_io_pmp_2_cfg_r;
wire [29:0] 	csr_io_pmp_2_addr;
wire [31:0] 	csr_io_pmp_2_mask;
wire  		csr_io_pmp_3_cfg_l;
wire [1:0] 	csr_io_pmp_3_cfg_a;
wire		csr_io_pmp_3_cfg_x;
wire		csr_io_pmp_3_cfg_w;
wire		csr_io_pmp_3_cfg_r;
wire [29:0]	csr_io_pmp_3_addr;
wire [31:0]	csr_io_pmp_3_mask;
wire  		csr_io_pmp_4_cfg_l;
wire [1:0] 	csr_io_pmp_4_cfg_a;
wire		csr_io_pmp_4_cfg_x;
wire		csr_io_pmp_4_cfg_w;
wire		csr_io_pmp_4_cfg_r;
wire [29:0]	csr_io_pmp_4_addr;
wire [31:0]	csr_io_pmp_4_mask;
wire  		csr_io_pmp_5_cfg_l;
wire [1:0] 	csr_io_pmp_5_cfg_a;
wire		csr_io_pmp_5_cfg_x;
wire		csr_io_pmp_5_cfg_w;
wire		csr_io_pmp_5_cfg_r;
wire [29:0]	csr_io_pmp_5_addr;
wire [31:0]	csr_io_pmp_5_mask;
wire 		csr_io_pmp_6_cfg_l;
wire [1:0] 	csr_io_pmp_6_cfg_a;
wire		csr_io_pmp_6_cfg_x;
wire		csr_io_pmp_6_cfg_w;
wire		csr_io_pmp_6_cfg_r;
wire [29:0]	csr_io_pmp_6_addr;
wire [31:0]	csr_io_pmp_6_mask;
wire  		csr_io_pmp_7_cfg_l;
wire [1:0] 	csr_io_pmp_7_cfg_a;
wire		csr_io_pmp_7_cfg_x;
wire		csr_io_pmp_7_cfg_w;
wire		csr_io_pmp_7_cfg_r;
wire [29:0]	csr_io_pmp_7_addr;
wire [31:0]	csr_io_pmp_7_mask;
wire [31:0]	csr_io_inst_0;
wire  		csr_io_trace_0_valid;
wire [31:0]	csr_io_trace_0_iaddr;
wire [31:0]	csr_io_trace_0_insn;
wire  		csr_io_trace_0_exception;

//bpu
wire  		bpu_io_status_debug;
wire [1:0] 	bpu_io_status_prv;
wire  		bpu_io_bp_0_control_action;
wire [1:0] 	bpu_io_bp_0_control_tmatch;
wire		bpu_io_bp_0_control_m;
wire		bpu_io_bp_0_control_s;
wire		bpu_io_bp_0_control_u;
wire		bpu_io_bp_0_control_x;
wire		bpu_io_bp_0_control_w;
wire		bpu_io_bp_0_control_r;
wire [31:0]	bpu_io_bp_0_address;
wire [31:0]	bpu_io_pc;
wire [31:0]	bpu_io_ea;
wire		bpu_io_xcpt_if;
wire		bpu_io_xcpt_ld;
wire		bpu_io_xcpt_st;
wire		bpu_io_debug_if;
wire		bpu_io_debug_ld;
wire		bpu_io_debug_st;

// alu
wire [3:0] 	alu_io_fn;
wire [31:0]	alu_io_in2;
wire [31:0]	alu_io_in1;
wire [31:0]	alu_io_out;
wire [31:0]	alu_io_adder_out;
wire  		alu_io_cmp_out;

// div
wire		div_clock;
wire		div_reset;
wire		div_io_req_ready;
wire		div_io_req_valid;
wire [3:0] 	div_io_req_bits_fn;
wire [31:0] 	div_io_req_bits_in1;
wire [31:0] 	div_io_req_bits_in2;
wire [4:0] 	div_io_req_bits_tag;
wire		div_io_kill;
wire		div_io_resp_ready;
wire		div_io_resp_valid;
wire [31:0] 	div_io_resp_bits_data;
wire [4:0] 	div_io_resp_bits_tag;

// PlusArgTimeout
wire  		PlusArgTimeout_clock;
wire  		PlusArgTimeout_reset;
wire [31:0] 	PlusArgTimeout_io_count;

// Other Wires

// General_Wires
wire  take_pc_mem_wb;

// decode_stage
wire  id_ctrl_legal;
wire  id_ctrl_fp;
wire  id_ctrl_branch;
wire  id_ctrl_jal;
wire  id_ctrl_jalr;
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
wire  id_ctrl_amo;
wire [4:0] id_raddr3;
wire [4:0] id_raddr2;
wire [4:0] id_raddr1;
wire [4:0] id_waddr;
wire id_load_use;
reg [31:0] reg_file [0:30]; //RegFile
wire [31:0] id_rs_0;
wire [31:0] id_rs_1;
wire [4:0] id_raddr_0;
wire [4:0] id_raddr_1;
wire  ctrl_killd;
wire  id_csr_en;
wire  id_system_insn;
wire  id_csr_ren;
wire  id_sfence;
wire  id_csr_flush;
wire  id_illegal_insn;

// stall decode for fences (now, for AMO.rl; later, for AMO.aq and FENCE)
wire  id_amo_aq;
wire  id_amo_rl;
wire [3:0] id_fence_succ;
wire  id_fence_next;
wire  id_mem_busy;
wire  id_do_fence;

wire  id_xcpt;

// detect bypass opportunities
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

// execute_stage
reg  ex_reg_rs_bypass_0;
reg  ex_reg_rs_bypass_1;
reg [1:0] ex_reg_rs_lsb_0;
reg [1:0] ex_reg_rs_lsb_1;
reg [29:0] ex_reg_rs_msb_0;
reg [29:0] ex_reg_rs_msb_1;
wire [31:0] ex_rs_0;
wire [31:0] ex_rs_1;
wire [31:0] ex_imm;
wire [31:0] ex_op1;
wire [31:0] ex_op2;

// replay inst in ex stage?
wire  ex_pc_valid;
wire  wb_dcache_miss;
wire  replay_ex_structural;
wire  replay_ex_load_use;
wire  replay_ex;
wire  ctrl_killx;

// detect 2-cycle load-use delay for LB/LH/SC
wire  ex_slow_bypass;
wire  ex_sfence;
wire  ex_xcpt;

// mem_stage
wire  mem_pc_valid;
wire [31:0] mem_br_target;
wire [31:0] mem_npc;
wire mem_wrong_npc;
wire mem_npc_misaligned;
wire [31:0] mem_int_wdata;
wire  mem_cfi;
wire  mem_cfi_taken;
wire take_pc_mem;
wire  mem_breakpoint;
wire  mem_debug_breakpoint;
wire  mem_ldst_xcpt;
wire [3:0] mem_ldst_cause;
wire  mem_xcpt;
wire  dcache_kill_mem;
wire  fpu_kill_mem;
wire  replay_mem;
wire  killm_common;
wire  ctrl_killm;

// writeback_stage
wire take_pc_wb;
wire wb_xcpt;
wire [31:0] wb_cause;
wire  wb_wxd;
wire  wb_set_sboard;
wire  replay_wb_common;

// writeback_arbitration
wire  dmem_resp_xpu;
wire [4:0] dmem_resp_waddr;
wire  dmem_resp_valid;
wire  dmem_resp_replay;
wire [31:0] ll_wdata;
wire [4:0] ll_waddr;
wire ll_wen;
wire wb_valid; 
wire wb_wen;
wire rf_wen;
wire [4:0] rf_waddr;
wire [31:0] rf_wdata;

// hook up control/status regfile
wire  id_sboard_hazard;

// stall_for RAW/WAW hazards on CSRs, loads, AMOs, and mul/div in execute stage.
wire  ex_cannot_bypass;
wire  data_hazard_ex;
wire  fp_data_hazard_ex;
wire  id_ex_hazard;

// stall_for RAW/WAW hazards on CSRs, LB/LH, and mul/div in memory stage.
wire  mem_cannot_bypass;
wire  data_hazard_mem;
wire  fp_data_hazard_mem;
wire  id_mem_hazard;

// stall_for RAW/WAW hazards on load/AMO misses and mul/div in writeback.
wire  data_hazard_wb;
wire  fp_data_hazard_wb;
wire  id_wb_hazard;


wire  id_stall_fpu;
wire  dcache_blocked;
wire  ctrl_stalld;

// gate the clock
wire  unpause;


//*****************************************************************************
// Submodules Innitiations
//*****************************************************************************
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
`endif //MY_DEFINE 

//*****************************************************************************
// Wires Assignments
//*****************************************************************************
`define GENERAL_WIRES
`ifdef GENERAL_WIRES
// General_Wires
assign take_pc_mem_wb = take_pc_wb | take_pc_mem;
`endif // GENERAL_WIRES

`define DECODE_STAGE
`ifdef DECODE_STAGE
// decode_stage

assign id_ctrl_legal = ((ibuf_io_inst_0_bits_inst_bits & 32'h306f) == 32'h3)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h605f) == 32'h3)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h407f) == 32'h4063)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h306f) == 32'h1063)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'heff0707f) == 32'he0000053)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'hfff0607f) == 32'he0000053)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'hefe0007f) == 32'hc0000053)
			| (ibuf_io_inst_0_bits_inst_bits  == 32'h7b200073)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'hfff0007f) == 32'h58000053)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h7e00507f) == 32'h20000053)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h7e00607f) == 32'h20000053)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'hf600607f) == 32'h20000053)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'hfe007fff) == 32'h12000073)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'hdfffffff) == 32'h10500073)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'hdfffffff) == 32'h10200073)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'hf9f0707f) == 32'h1000202f)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'he800707f) == 32'h800202f)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'hbe00705f) == 32'h5013)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h207f) == 32'h2073)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h1800707f) == 32'h202f)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h207f) == 32'h2013)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h705b) == 32'h2003)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'hfe00305f) == 32'h1013)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'hffefffff) == 32'h73)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h7f) == 32'h6f)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h707b) == 32'h63)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'he600007f) == 32'h53)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h6000073) == 32'h43)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'hbe00707f) == 32'h33)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'hfc00007f) == 32'h33)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h5f) == 32'h17)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h607f) == 32'hf)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h207f) == 32'h3)
			;
assign id_ctrl_fp = ((ibuf_io_inst_0_bits_inst_bits & 32'h5c) == 32'h4)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h60) == 32'h40)
			;
assign id_ctrl_branch = ((ibuf_io_inst_0_bits_inst_bits & 32'h74) == 32'h60)
			;
assign id_ctrl_jal = ((ibuf_io_inst_0_bits_inst_bits & 32'h68) == 32'h68)
			;
assign id_ctrl_jalr = ((ibuf_io_inst_0_bits_inst_bits & 32'h203c) == 32'h24)
			;
assign id_ctrl_rxs2 = 	((ibuf_io_inst_0_bits_inst_bits & 32'h64) == 32'h20)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h34) == 32'h20)
			| id_ctrl_amo
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h42003044) == 32'h2000040)
			;
assign id_ctrl_rxs1 = 	((ibuf_io_inst_0_bits_inst_bits & 32'h90000034) == 32'h90000010)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h2050) == 32'h2000)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h38) == 32'h20)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h4024) == 32'h20)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h44) == 32'h0)
			;
wire id_ctrl_sel_alu2_0 = ((ibuf_io_inst_0_bits_inst_bits & 32'h4050) == 32'h4050)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h48) == 32'h48)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'hc) == 32'h4)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h20) == 32'h0)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h58) == 32'h0)
			;
wire id_ctrl_sel_alu2_1 = ((ibuf_io_inst_0_bits_inst_bits & 32'h4008) == 32'h4000)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h18) == 32'h0)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h48) == 32'h0)
			;
assign id_ctrl_sel_alu2 = {id_ctrl_sel_alu2_1, id_ctrl_sel_alu2_0};

wire id_ctrl_sel_alu1_0 = ((ibuf_io_inst_0_bits_inst_bits & 32'h18) == 32'h0)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h24) == 32'h0)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h44) == 32'h0)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h50) == 32'h0)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h4004) == 32'h0)
			;
wire id_ctrl_sel_alu1_1 = ((ibuf_io_inst_0_bits_inst_bits & 32'h48) == 32'h48)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h34) == 32'h14)
			;
assign id_ctrl_sel_alu1 = {id_ctrl_sel_alu1_1, id_ctrl_sel_alu1_0};

wire id_ctrl_sel_imm_0 = ((ibuf_io_inst_0_bits_inst_bits & 32'h44) == 32'h40)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h8) == 32'h8)
			;
wire id_ctrl_sel_imm_1 = ((ibuf_io_inst_0_bits_inst_bits & 32'h14) == 32'h14)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h8) == 32'h8)
			;
wire id_ctrl_sel_imm_2 = ((ibuf_io_inst_0_bits_inst_bits & 32'h14) == 32'h10)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h201c) == 32'h4)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h30) == 32'h0)
			;
assign id_ctrl_sel_imm = {id_ctrl_sel_imm_2, id_ctrl_sel_imm_1, id_ctrl_sel_imm_0};

// _T_216
wire id_ctrl_alu_fn_0 = ((ibuf_io_inst_0_bits_inst_bits & 32'h2001074) == 32'h2001030)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h7044) == 32'h7000)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h1058) == 32'h1040)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h3054) == 32'h1010)
			;
// _T_237
wire id_ctrl_alu_fn_1 = ((ibuf_io_inst_0_bits_inst_bits & 32'h40001054) == 32'h40001010)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h40003034) == 32'h40000030)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h2002074) == 32'h2002030)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h6018) == 32'h6000)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h6044) == 32'h6000)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h3044) == 32'h3000)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h4054) == 32'h40)
			;
// _T_252
wire id_ctrl_alu_fn_2 = ((ibuf_io_inst_0_bits_inst_bits & 32'h4058) == 32'h4040)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h5054) == 32'h4010)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h40004054) == 32'h4010)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h2034) == 32'h2010)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h2002054) == 32'h2010)
			;
// _T_263
wire id_ctrl_alu_fn_3 = ((ibuf_io_inst_0_bits_inst_bits & 32'h40003054) == 32'h40001010)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h40003034) == 32'h40000030)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h4058) == 32'h4040)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h6034) == 32'h2010)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h2006054) == 32'h2010)
			;
assign id_ctrl_alu_fn = {id_ctrl_alu_fn_3, id_ctrl_alu_fn_2, id_ctrl_alu_fn_1, id_ctrl_alu_fn_0};

assign id_ctrl_mem = ((ibuf_io_inst_0_bits_inst_bits & 32'hfe007fff) == 32'h12000073)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'hf9f0707f) == 32'h1000202f)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'he800707f) == 32'h800202f)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h1800707f) == 32'h202f)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h705b) == 32'h2003)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h207f) == 32'h3)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h605f) == 32'h3)
			;
// _T_282
wire id_ctrl_mem_cmd_0 = ((ibuf_io_inst_0_bits_inst_bits & 32'h20000020) == 32'h20000020)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h18000020) == 32'h18000020)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h68) == 32'h20)
			;
// _T_288
wire id_ctrl_mem_cmd_1 = ((ibuf_io_inst_0_bits_inst_bits & 32'h40000008) == 32'h40000008)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h10000008) == 32'h10000008)
			;
// _T_298
wire id_ctrl_mem_cmd_2 = ((ibuf_io_inst_0_bits_inst_bits & 32'h80000008) == 32'h80000008)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h10000008) == 32'h10000008)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h8000008) == 32'h8000008)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h40) == 32'h40)
			;
// _T_300
wire id_ctrl_mem_cmd_3 = ((ibuf_io_inst_0_bits_inst_bits & 32'h18000008) == 32'h8);
// _T_290
wire id_ctrl_mem_cmd_4 = ((ibuf_io_inst_0_bits_inst_bits & 32'h40) == 32'h40);

assign id_ctrl_mem_cmd = {
			id_ctrl_mem_cmd_4,
			id_ctrl_mem_cmd_3,
			id_ctrl_mem_cmd_2,
			id_ctrl_mem_cmd_1,
			id_ctrl_mem_cmd_0
			};
assign id_ctrl_rfs3 = ((ibuf_io_inst_0_bits_inst_bits & 32'h70) == 32'h40);

assign id_ctrl_wfd = ((ibuf_io_inst_0_bits_inst_bits & 32'h10000060) == 32'h10000040)
			| id_ctrl_rfs3
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h80000060) == 32'h40)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h3c) == 32'h4)
			;
assign id_ctrl_div = ((ibuf_io_inst_0_bits_inst_bits & 32'h2000074) == 32'h2000030);

assign id_ctrl_wxd = ((ibuf_io_inst_0_bits_inst_bits & 32'h90000010) == 32'h80000010)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h2030) == 32'h2030)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h1030) == 32'h1030)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h28) == 32'h28)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h2024) == 32'h24)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h50) == 32'h10)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h64) == 32'h0)
			;
// _T_358
wire id_ctrl_csr_0 = ((ibuf_io_inst_0_bits_inst_bits & 32'h1070) == 32'h1070);
// _T_361
wire id_ctrl_csr_1 = ((ibuf_io_inst_0_bits_inst_bits & 32'h2070) == 32'h2070);
// _T_373
wire id_ctrl_csr_2 = ((ibuf_io_inst_0_bits_inst_bits & 32'he0000050) == 32'h60000050)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h12000034) == 32'h10000030)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h2070) == 32'h2070)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h1070) == 32'h1070)
			| ((ibuf_io_inst_0_bits_inst_bits & 32'h10000070) == 32'h70)
			;
assign id_ctrl_csr = {id_ctrl_csr_2, id_ctrl_csr_1, id_ctrl_csr_0};

assign id_ctrl_fence_i = ((ibuf_io_inst_0_bits_inst_bits & 32'h1048) == 32'h1008);

assign id_ctrl_fence = ((ibuf_io_inst_0_bits_inst_bits & 32'h2048) == 32'h8);

assign id_ctrl_amo = ((ibuf_io_inst_0_bits_inst_bits & 32'h2048) == 32'h2008);

assign id_raddr3 = ibuf_io_inst_0_bits_inst_rs3;
assign id_raddr2 = ibuf_io_inst_0_bits_inst_rs2;
assign id_raddr1 = ibuf_io_inst_0_bits_inst_rs1;
assign id_waddr = ibuf_io_inst_0_bits_inst_rd;

assign id_load_use = mem_reg_valid & data_hazard_mem & mem_ctrl_mem;

assign id_raddr_0 = ~ id_raddr1;

//wire [31:0] id_rs_0_1 = reg_file[id_raddr_0];
//wire [31:0] id_rs_0_2 = (rf_waddr == id_raddr1) ? rf_wdata : id_rs_0_1;
//wire [31:0] id_rs_0_0 = (rf_waddr != 5'h0) ? id_rs_0_2 : id_rs_0_1;
//assign id_rs_0 = rf_wen ? id_rs_0_0 : id_rs_0_1;
assign id_rs_0 = (rf_wen & (rf_waddr != 5'h0) & (rf_waddr == id_raddr1)) ? rf_wdata : reg_file[id_raddr_0];

assign id_raddr_1 = ~ id_raddr2;

//wire [31:0] id_rs_1_1 = reg_file[id_raddr_1];
//wire [31:0] id_rs_1_2 = (rf_waddr == id_raddr2) ? rf_wdata : id_rs_1_1;
//wire [31:0] id_rs_1_0 = (rf_waddr != 5'h0) ? id_rs_1_2 : id_rs_1_1;
assign id_rs_1 = (rf_wen & (rf_waddr != 5'h0) & (rf_waddr == id_raddr2)) ? rf_wdata : reg_file[id_raddr_1];

assign ctrl_killd = !ibuf_io_inst_0_valid | ibuf_io_inst_0_bits_replay | take_pc_mem_wb | ctrl_stalld | csr_io_interrupt;

assign id_csr_en = (id_ctrl_csr == 3'h6) | (id_ctrl_csr == 3'h7) | (id_ctrl_csr == 3'h5);
assign id_system_insn = id_ctrl_csr == 3'h4;
assign id_csr_ren = ((id_ctrl_csr == 3'h6) | (id_ctrl_csr == 3'h7)) & (id_raddr1 == 5'h0);
assign id_sfence = id_ctrl_mem & (id_ctrl_mem_cmd == 5'h14);
assign id_csr_flush = id_sfence | id_system_insn | (id_csr_en & (id_csr_ren == 1'h0) & csr_io_decode_0_write_flush);

assign id_illegal_insn = !id_ctrl_legal
			| (id_ctrl_div & !csr_io_status_isa[12])
			| (id_ctrl_amo & !csr_io_status_isa[0])
			| (id_ctrl_fp & (csr_io_decode_0_fp_illegal | io_fpu_illegal_rm))
			| (ibuf_io_inst_0_bits_rvc & !csr_io_status_isa[2])
			| (id_csr_en & (csr_io_decode_0_read_illegal | !id_csr_ren & csr_io_decode_0_write_illegal))
			| (!ibuf_io_inst_0_bits_rvc & ((id_sfence | id_system_insn) & csr_io_decode_0_system_illegal));

// stall decode for fences (now, for AMO.rl; later, for AMO.aq and FENCE)
assign id_amo_aq = ibuf_io_inst_0_bits_inst_bits[26];
assign id_amo_rl = ibuf_io_inst_0_bits_inst_bits[25];
assign id_fence_succ = ibuf_io_inst_0_bits_inst_bits[23:20];
assign id_fence_next = id_ctrl_fence | (id_ctrl_amo & id_amo_aq);
assign id_mem_busy = !io_dmem_ordered | io_dmem_req_valid;
assign id_do_fence = id_mem_busy & (((id_ctrl_amo & id_amo_rl) | id_ctrl_fence_i) | (id_reg_fence & id_ctrl_mem));

assign id_xcpt = csr_io_interrupt 
		| bpu_io_debug_if 
		| bpu_io_xcpt_if 
		| ibuf_io_inst_0_bits_xcpt0_pf_inst 
		| ibuf_io_inst_0_bits_xcpt0_ae_inst 
		| ibuf_io_inst_0_bits_xcpt1_pf_inst 
		| ibuf_io_inst_0_bits_xcpt1_ae_inst 
		| id_illegal_insn;

`endif //DECODE_STAGE

`define DETECT_BYPASS
`ifdef DETECT_BYPASS
// detect_bypass_opportunities
assign ex_waddr = ex_reg_inst[11:7];
assign mem_waddr = mem_reg_inst[11:7];
assign wb_waddr = wb_reg_inst[11:7];
assign id_bypass_src_0_0 = 5'h0 == id_raddr1;
assign id_bypass_src_0_1 = (ex_reg_valid & ex_ctrl_wxd) & (ex_waddr == id_raddr1);
assign id_bypass_src_0_2 = ((mem_reg_valid & mem_ctrl_wxd) & !mem_ctrl_mem) & (mem_waddr == id_raddr1);
assign id_bypass_src_0_3 = (mem_reg_valid & mem_ctrl_wxd) & (mem_waddr == id_raddr1);
assign id_bypass_src_1_0 = 5'h0 == id_raddr2;
assign id_bypass_src_1_1 = (ex_reg_valid & ex_ctrl_wxd) & (ex_waddr == id_raddr2);
assign id_bypass_src_1_2 = ((mem_reg_valid & mem_ctrl_wxd) & !mem_ctrl_mem) & (mem_waddr == id_raddr2);
assign id_bypass_src_1_3 = (mem_reg_valid & mem_ctrl_wxd) & (mem_waddr == id_raddr2);

`endif // DETECT_BYPASS

`define EXECUTE_STAGE
`ifdef EXECUTE_STAGE
// execute_stage
wire [31:0] ex_rs_0_3 = (ex_reg_rs_lsb_0 == 2'h1) ? mem_reg_wdata : 32'h0;
wire [31:0] ex_rs_0_2 = (ex_reg_rs_lsb_0 == 2'h2) ? wb_reg_wdata : ex_rs_0_3;
wire [31:0] ex_rs_0_1 = {ex_reg_rs_msb_0, ex_reg_rs_lsb_0};
wire [31:0] ex_rs_0_0 = (ex_reg_rs_lsb_0 == 2'h3) ? io_dmem_resp_bits_data_word_bypass : ex_rs_0_2;
assign ex_rs_0 = ex_reg_rs_bypass_0 ? ex_rs_0_0 : ex_rs_0_1;

wire [31:0] ex_rs_1_3 = (ex_reg_rs_lsb_1 == 2'h1) ? mem_reg_wdata : 32'h0;
wire [31:0] ex_rs_1_2 = (ex_reg_rs_lsb_1 == 2'h2) ? wb_reg_wdata : ex_rs_1_3;
wire [31:0] ex_rs_1_1 = {ex_reg_rs_msb_1,ex_reg_rs_lsb_1};
wire [31:0] ex_rs_1_0 = (ex_reg_rs_lsb_1 == 2'h3) ? io_dmem_resp_bits_data_word_bypass : ex_rs_1_2;
assign ex_rs_1 = ex_reg_rs_bypass_1 ? ex_rs_1_0 : ex_rs_1_1;

wire ex_imm_6_1 = (ex_ctrl_sel_imm == 3'h5) & ex_reg_inst[15];
wire ex_imm_6_0 = (ex_ctrl_sel_imm == 3'h4) ? ex_reg_inst[20] : ex_imm_6_1;
wire ex_imm_6 = (ex_ctrl_sel_imm == 3'h0) ? ex_reg_inst[7] : ex_imm_6_0;
wire [3:0] ex_imm_5_1 = (ex_ctrl_sel_imm == 3'h5) ? ex_reg_inst[19:16] : ex_reg_inst[24:21];
wire [3:0] ex_imm_5_0 = ((ex_ctrl_sel_imm == 3'h0) | (ex_ctrl_sel_imm == 3'h1)) ? ex_reg_inst[11:8] : ex_imm_5_1;
wire [3:0] ex_imm_5 = (ex_ctrl_sel_imm == 3'h2) ? 4'h0 : ex_imm_5_0;
wire [5:0] ex_imm_4 = ((ex_ctrl_sel_imm == 3'h2) | (ex_ctrl_sel_imm == 3'h5)) ? 6'h0 : ex_reg_inst[30:25];
wire ex_imm_3_3 = (ex_ctrl_sel_imm == 3'h5) ? $signed(1'sh0) : $signed(ex_reg_inst[31]);
wire ex_imm_3_2 = (ex_ctrl_sel_imm == 3'h1) ? $signed(ex_reg_inst[7]) : $signed(ex_imm_3_3);
wire ex_imm_3_1 = (ex_ctrl_sel_imm == 3'h3) ? $signed(ex_reg_inst[20]) : $signed(ex_imm_3_2);
wire ex_imm_3_0 = ((ex_ctrl_sel_imm == 3'h2) | (ex_ctrl_sel_imm == 3'h5)) ? $signed(1'sh0) : $signed(ex_imm_3_1);
wire ex_imm_3 = $unsigned(ex_imm_3_0);
wire ex_imm_2_1 = (ex_ctrl_sel_imm == 3'h5) ? $signed(1'sh0) : $signed(ex_reg_inst[31]);
wire [7:0] ex_imm_2_0 = ((ex_ctrl_sel_imm != 3'h2) & (ex_ctrl_sel_imm != 3'h3)) ? $signed({8{ex_imm_2_1}}) : $signed(ex_reg_inst[19:12]); 
wire [7:0] ex_imm_2 = $unsigned(ex_imm_2_0);
wire ex_imm_1_0_0 = (ex_ctrl_sel_imm == 3'h5) ? $signed(1'sh0) : $signed(ex_reg_inst[31]);
wire [10:0] ex_imm_1_0 = (ex_ctrl_sel_imm == 3'h2) ? $signed(ex_reg_inst[30:20]) : $signed({11{ex_imm_1_0_0}});
wire [10:0] ex_imm_1 = $unsigned(ex_imm_1_0);
wire ex_imm_0_0 = (ex_ctrl_sel_imm == 3'h5) ? $signed(1'sh0) : $signed(ex_reg_inst[31]);
wire ex_imm_0 = $unsigned(ex_imm_0_0);
assign ex_imm = $signed({ex_imm_0, ex_imm_1, ex_imm_2, ex_imm_3, ex_imm_4, ex_imm_5, ex_imm_6});

wire [31:0] ex_op1_0 = (2'h2 == ex_ctrl_sel_alu1) ? $signed(ex_reg_pc) : $signed(32'sh0);
assign ex_op1 = (2'h1 == ex_ctrl_sel_alu1) ? $signed(ex_rs_0) : $signed(ex_op1_0);

wire [3:0] ex_op2_2 = ex_reg_rvc ? $signed(4'sh2) : $signed(4'sh4);
wire [3:0] ex_op2_1 = (2'h1 == ex_ctrl_sel_alu2) ? $signed(ex_op2_2) : $signed(4'sh0);
wire [31:0] ex_op2_0 = (2'h3 == ex_ctrl_sel_alu2) ? $signed(ex_imm) : $signed({{28{ex_op2_1[3]}},ex_op2_1});
assign ex_op2 = (2'h2 == ex_ctrl_sel_alu2) ? $signed(ex_rs_1) : $signed(ex_op2_0);

// multiplier and divider
reg div_io_req_fire; //_T_998
always @(posedge clock) begin
	if (reset) begin
		div_io_req_fire <= 1'h0;
	end
	else begin
		div_io_req_fire <= div_io_req_ready & div_io_req_valid;
	end
end

always @(posedge clock) begin
	if (reset) begin
		ex_reg_valid <= 1'h0;
		ex_reg_replay <= 1'h0;
		ex_reg_xcpt <= 1'h0;
		ex_reg_xcpt_interrupt <= 1'h0;
	end
	else begin
		ex_reg_valid <= ctrl_killd == 1'h0;
		ex_reg_replay <= !take_pc_mem_wb & ibuf_io_inst_0_valid & ibuf_io_inst_0_bits_replay;
		ex_reg_xcpt <= !ctrl_killd & id_xcpt;
		ex_reg_xcpt_interrupt <= !take_pc_mem_wb & ibuf_io_inst_0_valid & csr_io_interrupt;
	end
end

always @(posedge clock) begin
	if (reset) begin
		ex_ctrl_sel_alu1 <= 2'h0;
		ex_ctrl_sel_alu2 <= 2'h0;
		ex_ctrl_alu_fn <= 4'h0;
		ex_ctrl_fp <= 1'h0;
		ex_ctrl_branch <= 1'h0;
		ex_ctrl_jal <= 1'h0;
		ex_ctrl_jalr <= 1'h0;
		ex_ctrl_rxs2 <= 1'h0;
		ex_ctrl_sel_imm <= 3'h0;
		ex_ctrl_mem <= 1'h0;
		ex_ctrl_mem_cmd <= 5'h0;
		ex_ctrl_wfd <= 1'h0;
		ex_ctrl_div <= 1'h0;
		ex_ctrl_wxd <= 1'h0;
		ex_ctrl_fence_i <= 1'h0;
		ex_ctrl_csr <= 3'h0;
	end
	else if (!ctrl_killd) begin
		if (id_xcpt) begin
			if (bpu_io_xcpt_if | ({ibuf_io_inst_0_bits_xcpt0_pf_inst, ibuf_io_inst_0_bits_xcpt0_ae_inst} != 2'h0)) begin
				ex_ctrl_sel_alu1 <= 2'h2;
				ex_ctrl_sel_alu2 <= 2'h0;
			end
			else if ({ibuf_io_inst_0_bits_xcpt1_pf_inst, ibuf_io_inst_0_bits_xcpt1_ae_inst} != 2'h0) begin
				ex_ctrl_sel_alu1 <= 2'h2;
				ex_ctrl_sel_alu2 <= 2'h1;
			end
			else begin
				ex_ctrl_sel_alu1 <= 2'h1;
				ex_ctrl_sel_alu2 <= 2'h0;
			end
			ex_ctrl_alu_fn <= 4'h0;
		end
		else begin
			ex_ctrl_sel_alu1 <= id_ctrl_sel_alu1;
			ex_ctrl_sel_alu2 <= id_ctrl_sel_alu2;
			ex_ctrl_alu_fn <= id_ctrl_alu_fn;
		end
		ex_ctrl_fp <= id_ctrl_fp;
		ex_ctrl_branch <= id_ctrl_branch;
		ex_ctrl_jal <= id_ctrl_jal;
		ex_ctrl_jalr <= id_ctrl_jalr;
		ex_ctrl_rxs2 <= id_ctrl_rxs2;
		ex_ctrl_sel_imm <= id_ctrl_sel_imm;
		ex_ctrl_mem <= id_ctrl_mem;
		ex_ctrl_mem_cmd <= id_ctrl_mem_cmd;
		ex_ctrl_wfd <= id_ctrl_wfd;
		ex_ctrl_div <= id_ctrl_div;
		ex_ctrl_wxd <= id_ctrl_wxd;
		ex_ctrl_fence_i <= id_ctrl_fence_i;
		if (id_csr_ren) ex_ctrl_csr <= 3'h2;
		else ex_ctrl_csr <= id_ctrl_csr;
	end
end

always @(posedge clock) begin
	if (reset) begin
		ex_reg_rvc <= 1'h0;
	end
	else if (!ctrl_killd) begin
		if (id_xcpt & ({ibuf_io_inst_0_bits_xcpt1_pf_inst, ibuf_io_inst_0_bits_xcpt1_ae_inst} != 2'h0)) ex_reg_rvc <= 1'h1;
		else ex_reg_rvc <= ibuf_io_inst_0_bits_rvc;
	end
end

always @(posedge clock) begin
	if (reset)  begin
		id_reg_pause <= 1'h0;
		id_reg_fence <= 1'h0;
	end
	else begin
		if (unpause) id_reg_pause <= 1'h0;
		else if (!ctrl_killd & id_ctrl_fence & (id_fence_succ == 4'h0)) id_reg_pause <= 1'h1;
		
		if (!ctrl_killd & id_fence_next) id_reg_fence <= 1'h1;
		else if (!id_mem_busy) id_reg_fence <= 1'h0;
	end
end

wire do_bypass = id_bypass_src_0_0 | id_bypass_src_0_1 | id_bypass_src_0_2 | id_bypass_src_0_3;
wire do_bypass_1 = id_bypass_src_1_0 | id_bypass_src_1_1 | id_bypass_src_1_2 | id_bypass_src_1_3;
wire [31:0] inst = ibuf_io_inst_0_bits_rvc ? {{16'd0}, ibuf_io_inst_0_bits_raw[15:0]} : ibuf_io_inst_0_bits_raw;
always @(posedge clock) begin
	if (reset) begin
		ex_reg_flush_pipe <= 1'h0;
		ex_reg_load_use <= 1'h0;
		ex_reg_mem_size <= 2'h0;
		ex_reg_rs_bypass_0 <= 1'h0;
		ex_reg_rs_bypass_1 <= 1'h0;
		ex_reg_rs_lsb_0 <= 2'h0;
		ex_reg_rs_lsb_1 <= 2'h0;
		ex_reg_rs_msb_0 = 30'h00;
		ex_reg_rs_msb_1 = 30'h00;
	end
	else if (!ctrl_killd) begin
		ex_reg_flush_pipe <= id_ctrl_fence_i | id_csr_flush;
		ex_reg_load_use <= id_load_use;

		if ((id_ctrl_mem_cmd == 5'h14) | (id_ctrl_mem_cmd == 5'h5)) ex_reg_mem_size <= {id_raddr2 != 5'h0, id_raddr1 != 5'h0};
		else ex_reg_mem_size <= ibuf_io_inst_0_bits_inst_bits[13:12];

		if (id_illegal_insn) ex_reg_rs_bypass_0 <= 1'h0;
		else ex_reg_rs_bypass_0 <= do_bypass;

		ex_reg_rs_bypass_1 <= do_bypass_1;

		if (id_illegal_insn) ex_reg_rs_lsb_0 <= inst[1:0];
		else if (id_ctrl_rxs1 & (do_bypass == 1'h0)) ex_reg_rs_lsb_0 <= id_rs_0[1:0];
		else begin
			if (id_bypass_src_0_0) ex_reg_rs_lsb_0 <= 2'h0;
			else if (id_bypass_src_0_1) ex_reg_rs_lsb_0 <= 2'h1;
			else if (id_bypass_src_0_2) ex_reg_rs_lsb_0 <= 2'h2;
			else ex_reg_rs_lsb_0 <= 2'h3;
		end	

		if (id_ctrl_rxs2 & (do_bypass_1 == 1'h0)) ex_reg_rs_lsb_1 <= id_rs_1[1:0];
		else begin
			if (id_bypass_src_1_0) ex_reg_rs_lsb_1 <= 2'h0;
			else if (id_bypass_src_1_1) ex_reg_rs_lsb_1 <= 2'h1;
			else if (id_bypass_src_1_2) ex_reg_rs_lsb_1 <= 2'h2;
			else ex_reg_rs_lsb_1 <= 2'h3;
		end	

		if (id_illegal_insn) ex_reg_rs_msb_0 <= inst[31:2];
		else if (id_ctrl_rxs1 & (do_bypass == 1'h0)) ex_reg_rs_msb_0 <= id_rs_0[31:2];

		if (id_ctrl_rxs2 & (do_bypass_1 == 1'h0)) ex_reg_rs_msb_1 <= id_rs_1[31:2];
	end
end

wire [31:0] id_cause = csr_io_interrupt ? csr_io_interrupt_cause
			: bpu_io_debug_if ? 32'he
			: bpu_io_xcpt_if ? 32'h3
			: ibuf_io_inst_0_bits_xcpt0_pf_inst ? 32'hc
			: ibuf_io_inst_0_bits_xcpt0_ae_inst ? 32'h1
			: ibuf_io_inst_0_bits_xcpt1_pf_inst ? 32'hc
			: ibuf_io_inst_0_bits_xcpt1_ae_inst ? 32'h1
			: 32'h2;

always @(posedge clock) begin
	if (reset) begin
		ex_reg_cause <= 32'h00;
		ex_reg_inst <= 32'h00;
		ex_reg_raw_inst <= 32'h00;
		ex_reg_pc <= 32'h00;
		ex_reg_btb_resp_entry <= 5'h0;
		ex_reg_btb_resp_bht_history <= 8'h0;
	end
	else if (!ctrl_killd | csr_io_interrupt | ibuf_io_inst_0_bits_replay) begin
		ex_reg_cause <= id_cause;
		ex_reg_inst <= ibuf_io_inst_0_bits_inst_bits;
		ex_reg_raw_inst <= ibuf_io_inst_0_bits_raw;
		ex_reg_pc <= ibuf_io_pc;
		ex_reg_btb_resp_entry <= ibuf_io_btb_resp_entry;
		ex_reg_btb_resp_bht_history <= ibuf_io_btb_resp_bht_history;
	end
end

// replay inst in ex stage?
assign ex_pc_valid = ex_reg_valid | ex_reg_replay | ex_reg_xcpt_interrupt;
assign wb_dcache_miss = wb_ctrl_mem & !io_dmem_resp_valid;
assign replay_ex_structural = (ex_ctrl_mem & !io_dmem_req_ready) | (ex_ctrl_div & !div_io_req_ready);
assign replay_ex_load_use = wb_dcache_miss & ex_reg_load_use;
assign replay_ex = ex_reg_replay | (ex_reg_valid & (replay_ex_structural | replay_ex_load_use));
assign ctrl_killx = take_pc_mem_wb | replay_ex | !ex_reg_valid;

// detect 2-cycle load-use delay for LB/LH/SC
assign ex_slow_bypass = (ex_ctrl_mem_cmd == 5'h7) | (ex_reg_mem_size < 2'h2);
assign ex_sfence = ex_ctrl_mem & (ex_ctrl_mem_cmd == 5'h14);
assign ex_xcpt = ex_reg_xcpt_interrupt | ex_reg_xcpt;

`endif // EXECUTE_STAGE

`define MEM_STAGE
`ifdef MEM_STAGE
// mem_stage
assign mem_pc_valid = mem_reg_valid | mem_reg_replay | mem_reg_xcpt_interrupt;

wire [31:0] mem_br_target_5 = mem_reg_rvc ? $signed(32'sh2) : $signed(32'sh4);
wire [31:0] mem_br_target_4 = {{12{mem_reg_inst[31]}},  mem_reg_inst[19:12], mem_reg_inst[20], mem_reg_inst[30:25], mem_reg_inst[24:21], 1'b0};
wire [31:0] mem_br_target_3 = mem_ctrl_jal ? $signed(mem_br_target_4) : $signed(mem_br_target_5);
wire [31:0] mem_br_target_2 = {{20{mem_reg_inst[31]}},  mem_reg_inst[7], mem_reg_inst[30:25], mem_reg_inst[11:8], 1'b0};
wire [31:0] mem_br_target_1 = (mem_ctrl_branch & mem_br_taken) ? $signed(mem_br_target_2) : $signed(mem_br_target_3);
wire [31:0] mem_br_target_0 = $signed(mem_reg_pc) + $signed(mem_br_target_1);
assign mem_br_target = $signed(mem_br_target_0);

wire [31:0] mem_npc_2 = (mem_ctrl_jalr | mem_reg_sfence) ? $signed(mem_reg_wdata) : $signed(mem_br_target);
wire [31:0] mem_npc_1 = $signed(mem_npc_2) & $signed(-32'sh2);
wire [31:0] mem_npc_0 = $signed(mem_npc_1);
assign mem_npc = $unsigned(mem_npc_0);

assign mem_wrong_npc = ex_pc_valid ? (mem_npc != ex_reg_pc)
				: ((ibuf_io_inst_0_valid | ibuf_io_imem_valid) ? (mem_npc != ibuf_io_pc) : 1'h1);

assign mem_npc_misaligned = !csr_io_status_isa[2] & mem_npc[1] & !mem_reg_sfence;

wire [31:0] mem_int_wdata_0 = (!mem_reg_xcpt & (mem_ctrl_jalr ^ mem_npc_misaligned)) ? $signed(mem_br_target) : $signed(mem_reg_wdata);
assign mem_int_wdata = $unsigned(mem_int_wdata_0);

assign mem_cfi = mem_ctrl_branch | mem_ctrl_jalr | mem_ctrl_jal;
assign mem_cfi_taken = (mem_ctrl_branch & mem_br_taken) | mem_ctrl_jalr | mem_ctrl_jal;

assign take_pc_mem = mem_reg_valid & (mem_wrong_npc | mem_reg_sfence);

assign mem_breakpoint = (mem_reg_load & bpu_io_xcpt_ld) | (mem_reg_store & bpu_io_xcpt_st);
assign mem_debug_breakpoint = (mem_reg_load & bpu_io_debug_ld) | (mem_reg_store & bpu_io_debug_st);
assign mem_ldst_xcpt = mem_debug_breakpoint | mem_breakpoint;
assign mem_ldst_cause = mem_debug_breakpoint ? 4'he : 4'h3;
assign mem_xcpt = (mem_reg_xcpt_interrupt | mem_reg_xcpt) 
		| (mem_reg_valid & mem_npc_misaligned) 
		| (mem_reg_valid & mem_ldst_xcpt);
assign dcache_kill_mem = mem_reg_valid & mem_ctrl_wxd & io_dmem_replay_next;
assign fpu_kill_mem = mem_reg_valid & mem_ctrl_fp & io_fpu_nack_mem;
assign replay_mem = dcache_kill_mem | mem_reg_replay | fpu_kill_mem;
assign killm_common = dcache_kill_mem | take_pc_wb | mem_reg_xcpt | !mem_reg_valid;
assign ctrl_killm = killm_common | mem_xcpt | fpu_kill_mem;

always @(posedge clock) begin
	if (reset) begin
		mem_reg_valid <= 1'h0;
		mem_reg_replay <= 1'h0;
		mem_reg_xcpt <= 1'h0;
		mem_reg_xcpt_interrupt <= 1'h0;
	end
	else begin
		mem_reg_valid <= ctrl_killx == 1'h0;
		mem_reg_replay <= !take_pc_mem_wb & replay_ex;
		mem_reg_xcpt <= !ctrl_killx & ex_xcpt;
		mem_reg_xcpt_interrupt <= !take_pc_mem_wb & ex_reg_xcpt_interrupt;
	end
end

wire isRead_ex_ctrl_mem_cmd = (ex_ctrl_mem_cmd == 5'h0)
				| (ex_ctrl_mem_cmd == 5'h6) 
				| (ex_ctrl_mem_cmd == 5'h7) 
				| (ex_ctrl_mem_cmd == 5'hb) 
				| (ex_ctrl_mem_cmd == 5'ha) 
				| (ex_ctrl_mem_cmd == 5'h9) 
				| (ex_ctrl_mem_cmd == 5'h4) 
				| (ex_ctrl_mem_cmd == 5'h8) 
				| (ex_ctrl_mem_cmd == 5'hc) 
				| (ex_ctrl_mem_cmd == 5'hd) 
				| (ex_ctrl_mem_cmd == 5'he) 
				| (ex_ctrl_mem_cmd == 5'hf)
				;
wire isWrite_ex_ctrl_mem_cmd = (ex_ctrl_mem_cmd == 5'h1) 
				| (ex_ctrl_mem_cmd == 5'h11) 
				| (ex_ctrl_mem_cmd == 5'h7) 
				| (ex_ctrl_mem_cmd == 5'h4) 
				| (ex_ctrl_mem_cmd == 5'h9) 
				| (ex_ctrl_mem_cmd == 5'ha) 
				| (ex_ctrl_mem_cmd == 5'hb) 
				| (ex_ctrl_mem_cmd == 5'h8) 
				| (ex_ctrl_mem_cmd == 5'hc) 
				| (ex_ctrl_mem_cmd == 5'hd) 
				| (ex_ctrl_mem_cmd == 5'he) 
				| (ex_ctrl_mem_cmd == 5'hf)
				;

always @(posedge clock) begin
	if (reset) begin
		mem_reg_sfence <= 1'h0;

		mem_ctrl_fence_i <= 1'h0;
        	mem_ctrl_fp <= 1'h0;
        	mem_ctrl_branch <= 1'h0;
        	mem_ctrl_jal <= 1'h0;
        	mem_ctrl_jalr <= 1'h0;
        	mem_ctrl_mem <= 1'h0;
        	mem_ctrl_wfd <= 1'h0;
        	mem_ctrl_div <= 1'h0;
        	mem_ctrl_wxd <= 1'h0;
        	mem_ctrl_csr <= 3'h0;

        	mem_reg_rvc <= 1'h0;
        	mem_reg_load <= 1'h0;
        	mem_reg_store <= 1'h0;
		mem_reg_btb_resp_entry <= 5'h00;
		mem_reg_btb_resp_bht_history <= 8'h00;

        	mem_reg_flush_pipe <= 1'h0;
        	mem_reg_slow_bypass <= 1'h0;

		mem_reg_cause <= 32'h00;
		mem_reg_inst <= 32'h00;
		mem_reg_raw_inst <= 32'h00;
		mem_reg_mem_size <= 2'h0;
		mem_reg_pc <= 32'h00;
		mem_reg_wdata <= 32'h00;
		mem_br_taken <= 1'h0;
	
		mem_reg_rs2 <= 32'h00;
	end
	else if (mem_reg_valid && mem_reg_flush_pipe) begin
		mem_reg_sfence <= 1'h0;
	end
	else if (ex_pc_valid) begin
		mem_reg_sfence <= ex_sfence;

		if (ex_ctrl_jalr & csr_io_status_debug) mem_ctrl_fence_i <= 1'h1;
		else mem_ctrl_fence_i <= ex_ctrl_fence_i;

        	mem_ctrl_fp <= ex_ctrl_fp;
        	mem_ctrl_branch <= ex_ctrl_branch;
        	mem_ctrl_jal <= ex_ctrl_jal;
        	mem_ctrl_jalr <= ex_ctrl_jalr;
        	mem_ctrl_mem <= ex_ctrl_mem;
        	mem_ctrl_wfd <= ex_ctrl_wfd;
        	mem_ctrl_div <= ex_ctrl_div;
        	mem_ctrl_wxd <= ex_ctrl_wxd;
        	mem_ctrl_csr <= ex_ctrl_csr;

		mem_reg_rvc <= ex_reg_rvc;
		mem_reg_load <= ex_ctrl_mem & isRead_ex_ctrl_mem_cmd;
		mem_reg_store <= ex_ctrl_mem & isWrite_ex_ctrl_mem_cmd;
		mem_reg_btb_resp_entry <= ex_reg_btb_resp_entry;
		mem_reg_btb_resp_bht_history <= ex_reg_btb_resp_bht_history;

		if (ex_ctrl_jalr & csr_io_status_debug) mem_reg_flush_pipe <= 1'h1;
		else mem_reg_flush_pipe <= ex_reg_flush_pipe;

		mem_reg_slow_bypass <= ex_slow_bypass;	

		mem_reg_cause <= ex_reg_cause;
		mem_reg_inst <= ex_reg_inst;
		mem_reg_raw_inst <= ex_reg_raw_inst;
		mem_reg_mem_size <= ex_reg_mem_size;
		mem_reg_pc <= ex_reg_pc;
		mem_reg_wdata <= alu_io_out;
		mem_br_taken <= alu_io_cmp_out;

        	if (ex_ctrl_rxs2 & (ex_ctrl_mem | ex_sfence)) begin
          		if (ex_reg_mem_size == 2'h0) begin
            			mem_reg_rs2 <= {ex_rs_1[7:0], ex_rs_1[7:0], ex_rs_1[7:0], ex_rs_1[7:0]};
          		end 
			else begin
            			if (ex_reg_mem_size == 2'h1) begin
            				mem_reg_rs2 <= {ex_rs_1[15:0],ex_rs_1[15:0]};
            			end 
				else begin
              				if (ex_reg_rs_bypass_1) begin
                				if (ex_reg_rs_lsb_1 == 2'h3) begin
                  					mem_reg_rs2 <= io_dmem_resp_bits_data_word_bypass;
                				end 
						else begin
                  					if (ex_reg_rs_lsb_1 == 2'h2) begin
                    						mem_reg_rs2 <= wb_reg_wdata;
                  					end
							else begin
                    						if (ex_reg_rs_lsb_1 == 2'h1) begin
                      							mem_reg_rs2 <= mem_reg_wdata;
                    						end
								else begin
                      							mem_reg_rs2 <= 32'h0;
                    						end
                  					end
                				end
              				end
					else begin
                				mem_reg_rs2 <= {ex_reg_rs_msb_1, ex_reg_rs_lsb_1};
              				end
            			end
          		end
        	end
	end
end

`endif //MEM_STAGE

// writeback_stage
`define WRITEBACK_STAGE
`ifdef WRITEBACK_STAGE
assign wb_xcpt = wb_reg_xcpt 
		| (wb_reg_valid & wb_ctrl_mem & io_dmem_s2_xcpt_ma_st)
		| (wb_reg_valid & wb_ctrl_mem & io_dmem_s2_xcpt_ma_ld) 
		| (wb_reg_valid & wb_ctrl_mem & io_dmem_s2_xcpt_pf_st) 
		| (wb_reg_valid & wb_ctrl_mem & io_dmem_s2_xcpt_pf_ld) 
		| (wb_reg_valid & wb_ctrl_mem & io_dmem_s2_xcpt_ae_st) 
		| (wb_reg_valid & wb_ctrl_mem & io_dmem_s2_xcpt_ae_ld)
		;

assign wb_cause = wb_reg_xcpt ? wb_reg_cause 
		: (wb_reg_valid & wb_ctrl_mem & io_dmem_s2_xcpt_ma_st) ? 32'h6 
		: (wb_reg_valid & wb_ctrl_mem & io_dmem_s2_xcpt_ma_ld) ? 32'h4 
		: (wb_reg_valid & wb_ctrl_mem & io_dmem_s2_xcpt_pf_st) ? 32'hf 
		: (wb_reg_valid & wb_ctrl_mem & io_dmem_s2_xcpt_pf_ld) ? 32'hd 
		: (wb_reg_valid & wb_ctrl_mem & io_dmem_s2_xcpt_ae_st) ? 32'h7 
		: 32'h5
		;
assign wb_wxd = wb_reg_valid & wb_ctrl_wxd;
assign wb_set_sboard = wb_ctrl_div | wb_dcache_miss;
assign replay_wb_common = io_dmem_s2_nack | wb_reg_replay;
assign take_pc_wb = replay_wb_common | wb_xcpt | csr_io_eret | wb_reg_flush_pipe;

always @(posedge clock) begin
	if (reset) begin
		wb_reg_valid <= 1'h0;
		wb_reg_xcpt <= 1'h0;
		wb_reg_replay <= 1'h0;
		wb_reg_flush_pipe <= 1'h0;
	end
	else begin
		wb_reg_valid <= !ctrl_killm;
		wb_reg_xcpt <= mem_xcpt & !take_pc_wb;
		wb_reg_replay <= replay_mem & !take_pc_wb;
		wb_reg_flush_pipe <= !ctrl_killm & mem_reg_flush_pipe;
	end
end

wire [31:0] mem_cause = (mem_reg_valid & mem_npc_misaligned) ? 32'h00 : {28'h00, mem_ldst_cause};
always @(posedge clock) begin
	if (reset) begin
      		wb_ctrl_mem <= 1'h0;
		wb_ctrl_wfd <= 1'h0;
		wb_ctrl_div <= 1'h0;
		wb_ctrl_wxd <= 1'h0;
		wb_ctrl_csr <= 3'h0;
		wb_ctrl_fence_i <= 1'h0;
		wb_reg_sfence <= 1'h0;
		wb_reg_cause <= 32'h00;
		wb_reg_inst <= 32'h00;
		wb_reg_raw_inst <= 32'h00;
		wb_reg_mem_size <= 2'h0;
		wb_reg_pc <= 32'h00;
	end
	else if (mem_pc_valid) begin
      		wb_ctrl_mem <= mem_ctrl_mem;
		wb_ctrl_wfd <= mem_ctrl_wfd;
		wb_ctrl_div <= mem_ctrl_div;
		wb_ctrl_wxd <= mem_ctrl_wxd;
		wb_ctrl_csr <= mem_ctrl_csr;
		wb_ctrl_fence_i <= mem_ctrl_fence_i;
		wb_reg_sfence <= mem_reg_sfence;
		
		if (!mem_reg_xcpt & mem_ctrl_fp & mem_ctrl_wxd) begin
        		wb_reg_wdata <= io_fpu_toint_data;
      		end 
		else begin
        		wb_reg_wdata <= mem_int_wdata;
      		end

		if (mem_reg_xcpt_interrupt | mem_reg_xcpt) begin
        		wb_reg_cause <= mem_reg_cause;
      		end
		else begin
        		wb_reg_cause <= mem_cause;
      		end

		wb_reg_inst <= mem_reg_inst;
		wb_reg_raw_inst <= mem_reg_raw_inst;
		wb_reg_mem_size <= mem_reg_mem_size;
		wb_reg_pc <= mem_reg_pc;
	end
end

// writeback_arbitration
assign dmem_resp_xpu = io_dmem_resp_bits_tag[0] == 1'h0;
assign dmem_resp_waddr = io_dmem_resp_bits_tag[5:1];
assign dmem_resp_valid = io_dmem_resp_valid & io_dmem_resp_bits_has_data;
assign dmem_resp_replay = dmem_resp_valid & io_dmem_resp_bits_replay;
assign ll_wdata = div_io_resp_bits_data;
assign ll_waddr = (dmem_resp_replay & dmem_resp_xpu) ? dmem_resp_waddr : div_io_resp_bits_tag;
assign ll_wen = (dmem_resp_replay & dmem_resp_xpu) | (div_io_resp_ready & div_io_resp_valid);
assign wb_valid = wb_reg_valid & !replay_wb_common & !wb_xcpt;
assign wb_wen = wb_valid & wb_ctrl_wxd;
assign rf_wen = wb_wen | ll_wen;
assign rf_waddr = ll_wen ? ll_waddr : wb_waddr;

assign rf_wdata = (dmem_resp_valid & dmem_resp_xpu) ? io_dmem_resp_bits_data 
		: ll_wen ? ll_wdata 
		: (wb_ctrl_csr != 3'h0) ? csr_io_rw_rdata 
		: wb_reg_wdata
		;

always @(posedge clock) begin
	if (rf_wen & (rf_waddr != 5'h0) & 1'h1) begin
		reg_file[~ rf_waddr] <= rf_wdata;
	end
end

`endif // WRITEBACK_STAGE

// hook up control/status regfile
`define HOOK_UP_CSR
`ifdef HOOK_UP_CSR

wire tval_valid = wb_xcpt & ((wb_cause == 32'h2) 
				| (wb_cause == 32'h3) 
				| (wb_cause == 32'h4) 
				| (wb_cause == 32'h6) 
				| (wb_cause == 32'h5) 
				| (wb_cause == 32'h7) 
				| (wb_cause == 32'h1) 
				| (wb_cause == 32'hd) 
				| (wb_cause == 32'hf) 
				| (wb_cause == 32'hc))
				;
reg [31:0] reg_sboard; //_T_1114
wire [31:0] reg_sboard_3 = (wb_set_sboard & wb_wen) ? (32'h1 << wb_waddr) : 32'h0;
wire [31:0] reg_sboard_2 = ll_wen ? (32'h1 << ll_waddr) : 32'h0;
wire [31:0] reg_sboard_1 = {reg_sboard[31:1], 1'h0} & (~ reg_sboard_2);
wire [31:0] reg_sboard_0 = reg_sboard_1 | reg_sboard_3;
always @(posedge clock) begin
	if (reset) begin
		reg_sboard <= 32'h0;
	end 
	else if (ll_wen | (wb_set_sboard & wb_wen)) begin
		reg_sboard <= reg_sboard_0;
	end 
	else if (ll_wen) begin
		reg_sboard <= reg_sboard_1;
        end
end
wire [31:0] id_sboard_hazard_0 = {reg_sboard[31:1], 1'h0} >> id_waddr;
wire [31:0] id_sboard_hazard_2 = {reg_sboard[31:1], 1'h0} >> id_raddr1;
wire [31:0] id_sboard_hazard_3 = {reg_sboard[31:1], 1'h0} >> id_raddr2;
wire id_sboard_hazard_1 = ((id_ctrl_rxs1 & (id_raddr1 != 5'h0)) & (id_sboard_hazard_2[0] & !(ll_wen & (ll_waddr == id_raddr1)))) 
			| (id_ctrl_rxs2 & (id_raddr2 != 5'h0) & id_sboard_hazard_3[0] & !(ll_wen & (ll_waddr == id_raddr2)));
assign id_sboard_hazard = id_sboard_hazard_1 
			| (id_ctrl_wxd & (id_waddr != 5'h0) & id_sboard_hazard_0[0] & ((ll_wen & (ll_waddr == id_waddr)) == 1'h0));
`endif // HOOK_UP_CSR

`define STALL
`ifdef STALL
// stall_for RAW/WAW hazards on CSRs, loads, AMOs, and mul/div in execute stage.
assign ex_cannot_bypass = (ex_ctrl_csr != 3'h0)
			| ex_ctrl_jalr 
			| ex_ctrl_mem 
			| ex_ctrl_div 
			| ex_ctrl_fp
			;

wire data_hazard_ex_0 = id_ctrl_rxs1 & (id_raddr1 != 5'h0) & (id_raddr1 == ex_waddr) 
			| id_ctrl_rxs2 & (id_raddr2 != 5'h0) & (id_raddr2 == ex_waddr) 
			| id_ctrl_wxd & (id_waddr != 5'h0) & (id_waddr == ex_waddr)
			;
assign data_hazard_ex = ex_ctrl_wxd & data_hazard_ex_0;

wire fp_data_hazard_ex_0 = (io_fpu_dec_ren1 & (id_raddr1 == ex_waddr)) 
			| (io_fpu_dec_ren2 & (id_raddr2 == ex_waddr)) 
			| (io_fpu_dec_ren3 & (id_raddr3 == ex_waddr)) 
			| (io_fpu_dec_wen & (id_waddr == ex_waddr))
			;
assign fp_data_hazard_ex = ex_ctrl_wfd & fp_data_hazard_ex_0;

assign id_ex_hazard = ex_reg_valid & ((data_hazard_ex & ex_cannot_bypass) | fp_data_hazard_ex);

// stall_for RAW/WAW hazards on CSRs, LB/LH, and mul/div in memory stage.
assign mem_cannot_bypass = (mem_ctrl_csr != 3'h0) | (mem_ctrl_mem & mem_reg_slow_bypass) | mem_ctrl_div | mem_ctrl_fp;

assign data_hazard_mem = mem_ctrl_wxd & ((((id_ctrl_rxs1 & (id_raddr1 != 5'h0)) & (id_raddr1 == mem_waddr)) 
					| ((id_ctrl_rxs2 & (id_raddr2 != 5'h0)) & (id_raddr2 == mem_waddr))) 
					| ((id_ctrl_wxd & (id_waddr != 5'h0)) & (id_waddr == mem_waddr)));

wire fp_data_hazard_mem_0 = (io_fpu_dec_ren1 & (id_raddr1 == mem_waddr)) 
			| (io_fpu_dec_ren2 & (id_raddr2 == mem_waddr)) 
			| (io_fpu_dec_ren3 & (id_raddr3 == mem_waddr)) 
			| (io_fpu_dec_wen & (id_waddr == mem_waddr))
			;
assign fp_data_hazard_mem = mem_ctrl_wfd & fp_data_hazard_mem_0;
assign id_mem_hazard = mem_reg_valid & ((data_hazard_mem & mem_cannot_bypass) | fp_data_hazard_mem);

// stall_for RAW/WAW hazards on load/AMO misses and mul/div in writeback.

wire data_hazard_wb_0 = ((id_ctrl_rxs1 & (id_raddr1 != 5'h0)) & (id_raddr1 == wb_waddr)) 
			| ((id_ctrl_rxs2 & (id_raddr2 != 5'h0)) & (id_raddr2 == wb_waddr)) 
			| ((id_ctrl_wxd & (id_waddr != 5'h0)) & (id_waddr == wb_waddr))
			;
assign data_hazard_wb = wb_ctrl_wxd & data_hazard_wb_0;

wire fp_data_hazard_wb_0 = (io_fpu_dec_ren1 & (id_raddr1 == wb_waddr)) 
			| (io_fpu_dec_ren2 & (id_raddr2 == wb_waddr)) 
			| (io_fpu_dec_ren3 & (id_raddr3 == wb_waddr)) 
			| (io_fpu_dec_wen & (id_waddr == wb_waddr))
			;
assign fp_data_hazard_wb = wb_ctrl_wfd & fp_data_hazard_wb_0;

assign id_wb_hazard = wb_reg_valid & ((data_hazard_wb & wb_set_sboard) | fp_data_hazard_wb);


reg [31:0] id_stall_fpu_reg; //_T_1227
wire [31:0] id_stall_fpu_reg_5 = io_fpu_sboard_clr ? (32'h1 << io_fpu_sboard_clra) : 32'h0;
wire [31:0] id_stall_fpu_reg_4 = (dmem_resp_replay & io_dmem_resp_bits_tag[0]) ? (32'h1 << dmem_resp_waddr) : 32'h0;
wire [31:0] id_stall_fpu_reg_3 = (((wb_dcache_miss & wb_ctrl_wfd) | io_fpu_sboard_set) & wb_valid) ? (32'h1 << wb_waddr) : 32'h0;
wire [31:0] id_stall_fpu_reg_2 = id_stall_fpu_reg | id_stall_fpu_reg_3;
wire [31:0] id_stall_fpu_reg_1 = id_stall_fpu_reg_2 & (~ id_stall_fpu_reg_4);
wire [31:0] id_stall_fpu_reg_0 = id_stall_fpu_reg_1 & (~ id_stall_fpu_reg_5);
always @(posedge clock) begin
	if (reset) begin
		id_stall_fpu_reg <= 32'h0;
	end
	else if ((((wb_dcache_miss & wb_ctrl_wfd) | io_fpu_sboard_set) & wb_valid) | (dmem_resp_replay & io_dmem_resp_bits_tag[0]) | io_fpu_sboard_clr) begin
		id_stall_fpu_reg <= id_stall_fpu_reg_0;
	end
	else if ((((wb_dcache_miss & wb_ctrl_wfd) | io_fpu_sboard_set) & wb_valid) | (dmem_resp_replay & io_dmem_resp_bits_tag[0])) begin
		id_stall_fpu_reg <= id_stall_fpu_reg_1;
	end
	else if (((wb_dcache_miss & wb_ctrl_wfd) | io_fpu_sboard_set) & wb_valid) begin
	        id_stall_fpu_reg <= id_stall_fpu_reg_2;
	end
end

wire [31:0] id_stall_fpu_3 = id_stall_fpu_reg >> id_raddr1;
wire [31:0] id_stall_fpu_2 = id_stall_fpu_reg >> id_raddr2;
wire [31:0] id_stall_fpu_1 = id_stall_fpu_reg >> id_raddr3;
wire [31:0] id_stall_fpu_0 = id_stall_fpu_reg >> id_waddr;
assign id_stall_fpu = (io_fpu_dec_ren1 & id_stall_fpu_3[0]) 
			| (io_fpu_dec_ren2 & id_stall_fpu_2[0]) 
			| (io_fpu_dec_ren3 & id_stall_fpu_1[0]) 
			| (io_fpu_dec_wen & id_stall_fpu_0[0])
			;

reg blocked;
always @(posedge clock) begin
	if (reset) begin
		blocked <= 1'h0;
	end
	else blocked <= !io_dmem_req_ready & !io_dmem_perf_grant & (blocked | io_dmem_req_valid | io_dmem_s2_nack);
end
assign dcache_blocked = blocked & (io_dmem_perf_grant == 1'h0);

assign ctrl_stalld = id_ex_hazard 
			| id_mem_hazard 
			| id_wb_hazard 
			| id_sboard_hazard 
			| (csr_io_singleStep & (ex_reg_valid | mem_reg_valid | wb_reg_valid)) 
			| (id_csr_en & csr_io_decode_0_fp_csr & !io_fpu_fcsr_rdy) 
			| (id_ctrl_fp & id_stall_fpu) 
			| (id_ctrl_mem & dcache_blocked) 
			| (id_ctrl_div & (((div_io_req_ready | (div_io_resp_valid & !wb_wxd)) == 1'h0) | div_io_req_valid)) 
			| id_do_fence 
			| csr_io_csr_stall 
			| id_reg_pause
			;

`endif //STALL

`define MAIN_IO
`ifdef MAIN_IO
// main_IO
always @(posedge clock) begin
	if (reset) imem_might_request_reg <= 1'h0;
	else imem_might_request_reg <= ex_pc_valid | mem_pc_valid | io_ptw_customCSRs_csrs_0_value[1];
end
assign io_imem_might_request = imem_might_request_reg;
assign io_imem_req_valid = take_pc_wb | take_pc_mem;
assign io_imem_req_bits_pc = (wb_xcpt | csr_io_eret) ? csr_io_evec : (replay_wb_common ? wb_reg_pc : mem_npc);
assign io_imem_req_bits_speculative = take_pc_wb == 1'h0;
assign io_imem_sfence_valid = wb_reg_valid & wb_reg_sfence;
assign io_imem_sfence_bits_rs1 = wb_reg_mem_size[0];
assign io_imem_sfence_bits_rs2 = wb_reg_mem_size[1];
assign io_imem_sfence_bits_addr = wb_reg_wdata;
assign io_imem_resp_ready = ibuf_io_imem_ready;
assign io_imem_btb_update_valid = (mem_reg_valid & !take_pc_wb & mem_wrong_npc) & (!mem_cfi | mem_cfi_taken);
assign io_imem_btb_update_bits_prediction_entry = mem_reg_btb_resp_entry;
assign io_imem_btb_update_bits_pc = ~ ((~ io_imem_btb_update_bits_br_pc) | 32'h3);
assign io_imem_btb_update_bits_isValid = mem_ctrl_branch | mem_ctrl_jalr | mem_ctrl_jal;
wire [1:0] io_imem_btb_update_bits_br_pc_0 = mem_reg_rvc ? 2'h0 : 2'h2;
assign io_imem_btb_update_bits_br_pc = mem_reg_pc + {{30'd0}, io_imem_btb_update_bits_br_pc_0};

wire [1:0] io_imem_btb_update_bits_cfiType_0 = (mem_ctrl_jalr & (5'h1 == (mem_reg_inst[19:15] & 5'h1b))) ? 2'h3 : {{1'd0}, (mem_ctrl_jal | mem_ctrl_jalr)};
assign io_imem_btb_update_bits_cfiType = ((mem_ctrl_jal | mem_ctrl_jalr) & mem_waddr[0]) ? 2'h2 : io_imem_btb_update_bits_cfiType_0;
assign io_imem_bht_update_valid = mem_reg_valid & !take_pc_wb;
assign io_imem_bht_update_bits_prediction_history = mem_reg_btb_resp_bht_history;
assign io_imem_bht_update_bits_pc = io_imem_btb_update_bits_pc;
assign io_imem_bht_update_bits_branch = mem_ctrl_branch;
assign io_imem_bht_update_bits_taken = mem_br_taken;

wire io_imem_bht_update_bits_mispredict_0 = (ibuf_io_inst_0_valid | ibuf_io_imem_valid) ? (mem_npc != ibuf_io_pc) : 1'h1;
assign io_imem_bht_update_bits_mispredict = ex_pc_valid ? (mem_npc != ex_reg_pc) : io_imem_bht_update_bits_mispredict_0;
assign io_imem_flush_icache = wb_reg_valid & wb_ctrl_fence_i & !io_dmem_s2_nack;
assign io_dmem_req_valid = ex_reg_valid & ex_ctrl_mem;
assign io_dmem_req_bits_addr = alu_io_adder_out;

wire [5:0] ex_dcache_tag = {ex_waddr, ex_ctrl_fp};
assign io_dmem_req_bits_tag = {{1'd0}, ex_dcache_tag};
assign io_dmem_req_bits_cmd = ex_ctrl_mem_cmd;
assign io_dmem_req_bits_size = ex_reg_mem_size;
assign io_dmem_req_bits_signed = ex_reg_inst[14] == 1'h0;
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

wire [31:0] io_fpu_fromint_data_2 = (ex_reg_rs_lsb_0 == 2'h1) ? mem_reg_wdata : 32'h0;
wire [31:0] io_fpu_fromint_data_1 = (ex_reg_rs_lsb_0 == 2'h2) ? wb_reg_wdata : io_fpu_fromint_data_2;
wire [31:0] io_fpu_fromint_data_0 = (ex_reg_rs_lsb_0 == 2'h3) ? io_dmem_resp_bits_data_word_bypass : io_fpu_fromint_data_1;
assign io_fpu_fromint_data = ex_reg_rs_bypass_0 ? io_fpu_fromint_data_0 : {ex_reg_rs_msb_0, ex_reg_rs_lsb_0};
assign io_fpu_fcsr_rm = csr_io_fcsr_rm;
assign io_fpu_dmem_resp_val = dmem_resp_valid & io_dmem_resp_bits_tag[0];
assign io_fpu_dmem_resp_tag = io_dmem_resp_bits_tag[5:1];
assign io_fpu_dmem_resp_data = io_dmem_resp_bits_data_word_bypass;
assign io_fpu_valid = !ctrl_killd & id_ctrl_fp;
assign io_fpu_killx = take_pc_mem_wb | replay_ex | !ex_reg_valid;
assign io_fpu_killm = dcache_kill_mem | take_pc_wb | mem_reg_xcpt | !mem_reg_valid;
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
assign csr_io_rw_cmd = wb_ctrl_csr & ~(wb_reg_valid ? 3'h0 : 3'h4);
assign csr_io_rw_wdata = wb_reg_wdata;
assign csr_io_decode_0_csr = ibuf_io_inst_0_bits_raw[31:20];
assign csr_io_exception = wb_xcpt;
assign csr_io_retire = wb_valid;
assign csr_io_cause = wb_cause;
assign csr_io_pc = wb_reg_pc;
assign csr_io_tval = tval_valid ? wb_reg_wdata : 32'h0;
assign csr_io_fcsr_flags_valid = io_fpu_fcsr_flags_valid;
assign csr_io_fcsr_flags_bits = io_fpu_fcsr_flags_bits;
wire [15:0] csr_io_inst_0_0 = (wb_reg_raw_inst[1:0] == 2'h3) ? wb_reg_inst[31:16] : 16'h0;
assign csr_io_inst_0 = {csr_io_inst_0_0, wb_reg_raw_inst[15:0]};
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
wire [31:0] div_io_req_bits_in1_2 = (ex_reg_rs_lsb_0 == 2'h1) ? mem_reg_wdata : 32'h0;
wire [31:0] div_io_req_bits_in1_1 = (ex_reg_rs_lsb_0 == 2'h2) ? wb_reg_wdata : div_io_req_bits_in1_2;
wire [31:0] div_io_req_bits_in1_0 = (ex_reg_rs_lsb_0 == 2'h3) ? io_dmem_resp_bits_data_word_bypass : div_io_req_bits_in1_1;
assign div_io_req_bits_in1 = ex_reg_rs_bypass_0 ? div_io_req_bits_in1_0 : {ex_reg_rs_msb_0, ex_reg_rs_lsb_0};

wire [31:0] div_io_req_bits_in2_2 = (ex_reg_rs_lsb_1 == 2'h1) ? mem_reg_wdata : 32'h0;
wire [31:0] div_io_req_bits_in2_1 = (ex_reg_rs_lsb_1 == 2'h2) ? wb_reg_wdata : div_io_req_bits_in2_2;
wire [31:0] div_io_req_bits_in2_0 = (ex_reg_rs_lsb_1 == 2'h3) ? io_dmem_resp_bits_data_word_bypass : div_io_req_bits_in2_1;
assign div_io_req_bits_in2 = ex_reg_rs_bypass_1 ? div_io_req_bits_in2_0 : {ex_reg_rs_msb_1, ex_reg_rs_lsb_1};;
assign div_io_req_bits_tag = ex_reg_inst[11:7];
assign div_io_kill = killm_common & div_io_req_fire;
assign div_io_resp_ready = (dmem_resp_replay & dmem_resp_xpu) ? 1'h0 : !wb_wxd;
assign PlusArgTimeout_clock = clock;
assign PlusArgTimeout_reset = reset;
assign PlusArgTimeout_io_count = csr_io_time;

`endif //MAIN_IO

// gate the clock
assign unpause = (csr_io_time[4:0] == 5'h0) | io_dmem_perf_release | take_pc_mem_wb;

// evaluate performance counters
`define EVALUATE
`ifdef EVALUATE
reg [31:0] _T_1388;
reg [31:0] _T_1391;
reg [31:0] coreMonitorBundle_rd0val;
reg [31:0] coreMonitorBundle_rd1val;
wire [31:0] coreMonitorBundle_timer = csr_io_time;
wire coreMonitorBundle_valid = csr_io_trace_0_valid & !csr_io_trace_0_exception;
wire [31:0] coreMonitorBundle_pc = csr_io_trace_0_iaddr;
wire [4:0] coreMonitorBundle_wrdst = (rf_wen & !(wb_set_sboard & wb_wen)) ? rf_waddr : 5'h0;
wire [4:0] _T_1393 = rf_wen ? coreMonitorBundle_wrdst : 5'h0;
wire [4:0] _T_1369 = wb_reg_inst[19:15];
wire [4:0] _T_1370 = wb_reg_inst[24:20];
wire [31:0] coreMonitorBundle_inst = csr_io_trace_0_insn;
always @(posedge clock) begin
	if (reset) begin
		_T_1388 <= 32'h0;
		_T_1391 <= 32'h0;
		coreMonitorBundle_rd0val <= 32'h0;
		coreMonitorBundle_rd1val <= 32'h0;
	end
	else begin
		if (ex_reg_rs_bypass_0) begin
			if (ex_reg_rs_lsb_0 == 2'h3) begin
				_T_1388 <= io_dmem_resp_bits_data_word_bypass;
			end
			else if (ex_reg_rs_lsb_0 == 2'h2) begin
          			_T_1388 <= wb_reg_wdata;
        		end 
			else if (ex_reg_rs_lsb_0 == 2'h1) begin
            			_T_1388 <= mem_reg_wdata;
          		end
			else begin
            			_T_1388 <= 32'h0;
          		end
    		end 
		else begin
      			_T_1388 <= {ex_reg_rs_msb_0, ex_reg_rs_lsb_0};
    		end
    		coreMonitorBundle_rd0val <= _T_1388;
    		if (ex_reg_rs_bypass_1) begin
      			if (ex_reg_rs_lsb_1 == 2'h3) begin
        			_T_1391 <= io_dmem_resp_bits_data_word_bypass;
      			end
			else if (ex_reg_rs_lsb_1 == 2'h2) begin
          			_T_1391 <= wb_reg_wdata;
        		end
			else if (ex_reg_rs_lsb_1 == 2'h1) begin
            			_T_1391 <= mem_reg_wdata;
          		end
			else begin
            			_T_1391 <= 32'h0;
          		end
    		end
		else begin
      			_T_1391 <= {ex_reg_rs_msb_1, ex_reg_rs_lsb_1};
    		end
    		coreMonitorBundle_rd1val <= _T_1391;
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
end
`endif // EVALUATE

endmodule

