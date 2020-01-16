module CSRFile(
  input         clock,
  input         reset,
  input         io_ungated_clock,
  input         io_interrupts_debug,
  input         io_interrupts_mtip,
  input         io_interrupts_msip,
  input         io_interrupts_meip,
  input         io_interrupts_seip,
  input  [11:0] io_rw_addr,
  input  [2:0]  io_rw_cmd,
  output [31:0] io_rw_rdata,
  input  [31:0] io_rw_wdata,
  input  [11:0] io_decode_0_csr,
  output        io_decode_0_fp_illegal,
  output        io_decode_0_fp_csr,
  output        io_decode_0_read_illegal,
  output        io_decode_0_write_illegal,
  output        io_decode_0_write_flush,
  output        io_decode_0_system_illegal,
  output        io_csr_stall,
  output        io_eret,
  output        io_singleStep,
  output        io_status_debug,
  output        io_status_cease,
  output [31:0] io_status_isa,
  output [1:0]  io_status_dprv,
  output [1:0]  io_status_prv,
  output        io_status_sd,
  output [26:0] io_status_zero2,
  output [1:0]  io_status_sxl,
  output [1:0]  io_status_uxl,
  output        io_status_sd_rv32,
  output [5:0]  io_status_zero1,
  output [1:0]  io_status_vs,
  output        io_status_tsr,
  output        io_status_tw,
  output        io_status_tvm,
  output        io_status_mxr,
  output        io_status_sum,
  output        io_status_mprv,
  output [1:0]  io_status_xs,
  output [1:0]  io_status_fs,
  output [1:0]  io_status_mpp,
  output [1:0]  io_status_hpp,
  output        io_status_spp,
  output        io_status_mpie,
  output        io_status_hpie,
  output        io_status_spie,
  output        io_status_upie,
  output        io_status_mie,
  output        io_status_hie,
  output        io_status_sie,
  output        io_status_uie,
  output        io_ptbr_mode,
  output [21:0] io_ptbr_ppn,
  output [31:0] io_evec,
  input         io_exception,
  input         io_retire,
  input  [31:0] io_cause,
  input  [31:0] io_pc,
  input  [31:0] io_tval,
  output [31:0] io_time,
  output [2:0]  io_fcsr_rm,
  input         io_fcsr_flags_valid,
  input  [4:0]  io_fcsr_flags_bits,
  output        io_interrupt,
  output [31:0] io_interrupt_cause,
  output        io_bp_0_control_action,
  output [1:0]  io_bp_0_control_tmatch,
  output        io_bp_0_control_m,
  output        io_bp_0_control_s,
  output        io_bp_0_control_u,
  output        io_bp_0_control_x,
  output        io_bp_0_control_w,
  output        io_bp_0_control_r,
  output [31:0] io_bp_0_address,
  output        io_pmp_0_cfg_l,
  output [1:0]  io_pmp_0_cfg_a,
  output        io_pmp_0_cfg_x,
  output        io_pmp_0_cfg_w,
  output        io_pmp_0_cfg_r,
  output [29:0] io_pmp_0_addr,
  output [31:0] io_pmp_0_mask,
  output        io_pmp_1_cfg_l,
  output [1:0]  io_pmp_1_cfg_a,
  output        io_pmp_1_cfg_x,
  output        io_pmp_1_cfg_w,
  output        io_pmp_1_cfg_r,
  output [29:0] io_pmp_1_addr,
  output [31:0] io_pmp_1_mask,
  output        io_pmp_2_cfg_l,
  output [1:0]  io_pmp_2_cfg_a,
  output        io_pmp_2_cfg_x,
  output        io_pmp_2_cfg_w,
  output        io_pmp_2_cfg_r,
  output [29:0] io_pmp_2_addr,
  output [31:0] io_pmp_2_mask,
  output        io_pmp_3_cfg_l, 
  output [1:0]  io_pmp_3_cfg_a,
  output        io_pmp_3_cfg_x,
  output        io_pmp_3_cfg_w,
  output        io_pmp_3_cfg_r,
  output [29:0] io_pmp_3_addr,
  output [31:0] io_pmp_3_mask,
  output        io_pmp_4_cfg_l,
  output [1:0]  io_pmp_4_cfg_a,
  output        io_pmp_4_cfg_x,
  output        io_pmp_4_cfg_w,
  output        io_pmp_4_cfg_r,
  output [29:0] io_pmp_4_addr,
  output [31:0] io_pmp_4_mask,
  output        io_pmp_5_cfg_l,
  output [1:0]  io_pmp_5_cfg_a,
  output        io_pmp_5_cfg_x,
  output        io_pmp_5_cfg_w, 
  output        io_pmp_5_cfg_r,
  output [29:0] io_pmp_5_addr,
  output [31:0] io_pmp_5_mask,
  output        io_pmp_6_cfg_l,
  output [1:0]  io_pmp_6_cfg_a,
  output        io_pmp_6_cfg_x,
  output        io_pmp_6_cfg_w,
  output        io_pmp_6_cfg_r,
  output [29:0] io_pmp_6_addr,
  output [31:0] io_pmp_6_mask,
  output        io_pmp_7_cfg_l,
  output [1:0]  io_pmp_7_cfg_a,
  output        io_pmp_7_cfg_x,
  output        io_pmp_7_cfg_w,
  output        io_pmp_7_cfg_r,
  output [29:0] io_pmp_7_addr,
  output [31:0] io_pmp_7_mask,
  input  [31:0] io_inst_0,
  output        io_trace_0_valid,
  output [31:0] io_trace_0_iaddr,
  output [31:0] io_trace_0_insn,
  output        io_trace_0_exception
);
  reg [1:0] reg_mstatus_prv;
  reg  reg_mstatus_tsr;
  reg  reg_mstatus_tw;
  reg  reg_mstatus_tvm;
  reg  reg_mstatus_mxr;
  reg  reg_mstatus_sum; 
  reg  reg_mstatus_mprv;
  reg [1:0] reg_mstatus_fs;
  reg [1:0] reg_mstatus_mpp;
  reg  reg_mstatus_spp;
  reg  reg_mstatus_mpie;
  reg  reg_mstatus_spie;
  reg  reg_mstatus_mie;
  reg  reg_mstatus_sie; 
  wire  system_insn; 
  wire  insn_ret;
  reg [1:0] reg_dcsr_prv;
  wire  insn_call;
  wire  insn_break;
  wire  exception;
  reg  reg_singleStepped;
  wire [31:0] cause;
  wire [7:0] cause_lsbs;
  wire  causeIsDebugInt;
  wire  causeIsDebugTrigger;
  reg  reg_dcsr_ebreakm;
  reg  reg_dcsr_ebreaks;
  reg  reg_dcsr_ebreaku;
  wire  causeIsDebugBreak;
  reg  reg_debug;
  wire  trapToDebug;
  reg [31:0] reg_mideleg;
  wire [31:0] read_mideleg;
  reg [31:0] reg_medeleg;
  wire [31:0] read_medeleg;
  wire  delegate;
  wire [1:0] new_prv;
  reg [2:0] reg_dcsr_cause;
  reg  reg_dcsr_step;
  reg [31:0] reg_dpc;
  reg [31:0] reg_dscratch;
  reg  reg_bp_0_control_dmode;
  reg  reg_bp_0_control_action;
  reg [1:0] reg_bp_0_control_tmatch;
  reg  reg_bp_0_control_m;
  reg  reg_bp_0_control_s;
  reg  reg_bp_0_control_u;
  reg  reg_bp_0_control_x;
  reg  reg_bp_0_control_w;
  reg  reg_bp_0_control_r;
  reg [31:0] reg_bp_0_address;
  reg  reg_pmp_0_cfg_l;
  reg [1:0] reg_pmp_0_cfg_a;
  reg  reg_pmp_0_cfg_x;
  reg  reg_pmp_0_cfg_w;
  reg  reg_pmp_0_cfg_r;
  reg [29:0] reg_pmp_0_addr;
  reg  reg_pmp_1_cfg_l;
  reg [1:0] reg_pmp_1_cfg_a;
  reg  reg_pmp_1_cfg_x;
  reg  reg_pmp_1_cfg_w;
  reg  reg_pmp_1_cfg_r;
  reg [29:0] reg_pmp_1_addr;
  reg  reg_pmp_2_cfg_l;
  reg [1:0] reg_pmp_2_cfg_a;
  reg  reg_pmp_2_cfg_x;
  reg  reg_pmp_2_cfg_w;
  reg  reg_pmp_2_cfg_r;
  reg [29:0] reg_pmp_2_addr;
  reg  reg_pmp_3_cfg_l;
  reg [1:0] reg_pmp_3_cfg_a;
  reg  reg_pmp_3_cfg_x;
  reg  reg_pmp_3_cfg_w;
  reg  reg_pmp_3_cfg_r;
  reg [29:0] reg_pmp_3_addr;
  reg  reg_pmp_4_cfg_l;
  reg [1:0] reg_pmp_4_cfg_a;
  reg  reg_pmp_4_cfg_x;
  reg  reg_pmp_4_cfg_w;
  reg  reg_pmp_4_cfg_r;
  reg [29:0] reg_pmp_4_addr;
  reg  reg_pmp_5_cfg_l;
  reg [1:0] reg_pmp_5_cfg_a;
  reg  reg_pmp_5_cfg_x;
  reg  reg_pmp_5_cfg_w;
  reg  reg_pmp_5_cfg_r;
  reg [29:0] reg_pmp_5_addr;
  reg  reg_pmp_6_cfg_l;
  reg [1:0] reg_pmp_6_cfg_a;
  reg  reg_pmp_6_cfg_x;
  reg  reg_pmp_6_cfg_w;
  reg  reg_pmp_6_cfg_r;
  reg [29:0] reg_pmp_6_addr; 
  reg  reg_pmp_7_cfg_l; 
  reg [1:0] reg_pmp_7_cfg_a;
  reg  reg_pmp_7_cfg_x; 
  reg  reg_pmp_7_cfg_w;
  reg  reg_pmp_7_cfg_r;
  reg [29:0] reg_pmp_7_addr;
  reg [31:0] reg_mie;
  reg  reg_mip_seip; 
  reg  reg_mip_stip;
  reg  reg_mip_ssip;
  reg [31:0] reg_mepc;
  reg [31:0] reg_mcause;
  reg [31:0] reg_mtval;
  reg [31:0] reg_mscratch; 
  reg [31:0] reg_mtvec;
  reg [31:0] reg_mcounteren;
  wire [31:0] read_mcounteren;
  reg [31:0] reg_scounteren;
  wire [31:0] read_scounteren;
  reg [31:0] reg_sepc;
  reg [31:0] reg_scause;
  reg [31:0] reg_stval;
  reg [31:0] reg_sscratch;
  reg [31:0] reg_stvec;
  reg  reg_satp_mode;
  reg [21:0] reg_satp_ppn;
  reg  reg_wfi;
  reg [4:0] reg_fflags;
  reg [2:0] reg_frm;
  wire  mip_seip; 
  wire [15:0] read_mip;
  wire [31:0] pending_interrupts;
  wire [14:0] d_interrupts;
  wire [31:0] m_interrupts;
  wire [31:0] s_interrupts;
  wire  anyInterrupt;
  wire [3:0] whichInterrupt;
  reg [31:0] reg_misa;
  wire [31:0] read_mstatus;
  wire [31:0] read_mtvec;
  wire [31:0] read_stvec;
  wire [9:0] read_fcsr;
  wire  sel_tdata1;
  wire  sel_tdata2;
  wire  sel_misa;
  wire  sel_mstatus;
  wire  sel_mtvec;
  wire  sel_mip;
  wire  sel_mie;
  wire  sel_mscratch;
  wire  sel_mepc;
  wire  sel_mtval;
  wire  sel_mcause;
  wire  sel_dcsr;
  wire  sel_dpc;
  wire  sel_dscratch;
  wire  sel_fflags;
  wire  sel_frm;
  wire  sel_fcsr;
  wire  sel_mcycle;
  wire  sel_minstret;
  wire  sel_mcounteren;
  wire  sel_cycle;
  wire  sel_instret;
  wire  sel_mcycleh;
  wire  sel_minstreth;
  wire  sel_cycleh;
  wire  sel_instreth;
  wire  sel_sstatus;
  wire  sel_sip;
  wire  sel_sie;
  wire  sel_sscratch;
  wire  sel_scause;
  wire  sel_stval;
  wire  sel_satp;
  wire  sel_sepc; 
  wire  sel_stvec;
  wire  sel_scounteren; 
  wire  sel_mideleg;
  wire  sel_medeleg;
  wire  sel_pmp_cfg_0;
  wire  sel_pmp_cfg_1;
  wire  sel_pmp_addr_0;
  wire  sel_pmp_addr_1;
  wire  sel_pmp_addr_2;
  wire  sel_pmp_addr_3;
  wire  sel_pmp_addr_4;
  wire  sel_pmp_addr_5;
  wire  sel_pmp_addr_6; 
  wire  sel_pmp_addr_7;
  wire [31:0] wdata;
  wire  insn_cease;
  wire  insn_wfi;
  wire [11:0] debugTVec;
  wire [31:0] notDebugTVec;
  wire [31:0] tvec;
  wire [31:0] epc;
  wire  csr_wen;
  wire [6:0] nextSmall;
  wire [59:0] nextLarge;
  reg [5:0] reg_cycle_small;
  reg [57:0] reg_cycle_large;
  wire [63:0] reg_cycle;
  reg [57:0] reg_instret_large;
  reg [5:0] reg_instret_small;
  wire [6:0] nextInstretSmall;
  wire [59:0] nextInstretLarge;
  wire [63:0] reg_instret;
  reg reg_mstatus_cease; //_T_1894
  reg [1:0] reg_status_dprv; //_T_1511
  wire [31:0] read_dp_control;


`define MY_ASSIGNMENT
`ifdef MY_ASSIGNMENT
  assign system_insn = io_rw_cmd == 3'h4;

  assign insn_ret = system_insn & ((({io_rw_addr, 20'h0} & 32'h12400000) == 32'h10000000) | (({io_rw_addr, 20'h0} & 32'h40000000) == 32'h40000000));
  assign insn_call = system_insn & (({io_rw_addr, 20'h0} & 32'h10100000) == 32'h0);
  assign insn_break = system_insn & (({io_rw_addr, 20'h0} & 32'h10100000) == 32'h100000);

  assign exception = insn_call || insn_break || io_exception;

  wire [3:0] _T_1458 = {{2'd0}, reg_mstatus_prv} + 4'h8;
  assign cause = insn_call ? _T_1458
		: insn_break ? 32'h3
		: io_cause;
  assign cause_lsbs = cause[7:0];
  assign causeIsDebugInt = cause[31] && (cause_lsbs == 8'he);
  assign causeIsDebugTrigger = (cause[31] == 1'b0) & (cause_lsbs == 8'he);
  wire [3:0] _T_1471 = {reg_dcsr_ebreakm,1'h0,reg_dcsr_ebreaks,reg_dcsr_ebreaku} >> reg_mstatus_prv;
  assign causeIsDebugBreak = !cause[31] & insn_break & _T_1471[0];

  assign trapToDebug = reg_singleStepped 
			| causeIsDebugInt 
			| causeIsDebugTrigger 
			| causeIsDebugBreak 
			| reg_debug;

  assign read_mideleg = reg_mideleg & 32'h222;
  assign read_medeleg = reg_medeleg & 32'hb15d;
  assign read_mcounteren = reg_mcounteren & 32'h7;
  assign read_scounteren = reg_scounteren & 32'h7;
  assign read_mip = {4'h0,io_interrupts_meip,1'h0,mip_seip,1'h0,io_interrupts_mtip,1'h0,reg_mip_stip,1'h0,io_interrupts_msip,1'h0,reg_mip_ssip,1'h0} & 16'haaa;
  wire [101:0] _T_384 = {io_status_debug
		,io_status_cease
		,io_status_isa
		,io_status_dprv
		,io_status_prv
		,io_status_sd
		,io_status_zero2
		,io_status_sxl
		,io_status_uxl
		,io_status_sd_rv32
		,io_status_zero1
		,io_status_vs
		,io_status_tsr
		,io_status_tw
		,io_status_tvm
		,io_status_mxr
		,io_status_sum
		,io_status_mprv
		,io_status_xs
		,io_status_fs
		,io_status_mpp
		,io_status_hpp
		,io_status_spp
		,io_status_mpie
		,io_status_hpie
		,io_status_spie
		,io_status_upie
		,io_status_mie
		,io_status_hie
		,io_status_sie
		,io_status_uie};
  assign read_mstatus = _T_384[31:0];
  wire [6:0] _T_386 = reg_mtvec[0] ? 7'h7e : 7'h2;
  assign read_mtvec = reg_mtvec & (~ {{25'd0}, _T_386});
  wire [6:0] _T_391 = reg_stvec[0] ? 7'h7e : 7'h2;
  assign read_stvec = reg_stvec & (~ {{25'd0}, _T_391});
  assign read_fcsr = {{1'd0}, {1'd0}, reg_frm,reg_fflags};

  wire [31:0] _T_1483 = read_medeleg >> cause_lsbs;
  wire [31:0] _T_1481 = read_mideleg >> cause_lsbs;
  wire _T_1485 = cause[31] ? _T_1481[0] : _T_1483[0];
  assign delegate = (reg_mstatus_prv <= 2'h1) & _T_1485;

  wire [1:0] _GEN_42 = !reg_debug ? 2'h3 : reg_mstatus_prv;
  wire [1:0] _GEN_61 = trapToDebug ? _GEN_42 
		: delegate ? 2'h1 
		: 2'h3;
  wire [1:0] _GEN_102 = !io_rw_addr[9] ? {{1'd0}, reg_mstatus_spp} 
		: io_rw_addr[10] ? reg_dcsr_prv 
		: reg_mstatus_mpp;
  assign new_prv = insn_ret ? _GEN_102 
		: exception ? _GEN_61 
		: reg_mstatus_prv;

  assign mip_seip = reg_mip_seip | io_interrupts_seip;

  assign pending_interrupts = {{16'd0}, read_mip} & reg_mie;

  assign d_interrupts = {io_interrupts_debug, 14'h0};
  assign m_interrupts = ((reg_mstatus_prv <= 2'h1) | reg_mstatus_mie) ? (~ ((~ pending_interrupts) | read_mideleg)) : 32'h0;
  assign s_interrupts = ((reg_mstatus_prv < 2'h1) | ((reg_mstatus_prv == 2'h1) & reg_mstatus_sie)) ? (pending_interrupts & read_mideleg) : 32'h0;

  assign anyInterrupt = (d_interrupts[14]
			| d_interrupts[13]
			| d_interrupts[12]
			| d_interrupts[11]
			| d_interrupts[3]
			| d_interrupts[7]
			| d_interrupts[9]
			| d_interrupts[1]
			| d_interrupts[5]
			| d_interrupts[8]
			| d_interrupts[0]
			| d_interrupts[4]
			| m_interrupts[15]
			| m_interrupts[14]
			| m_interrupts[13]
			| m_interrupts[12]
			| m_interrupts[11]
			| m_interrupts[3]
			| m_interrupts[7]
			| m_interrupts[9]
			| m_interrupts[1]
			| m_interrupts[5]
			| m_interrupts[8]
			| m_interrupts[0]
			| m_interrupts[4]
			| s_interrupts[15]
			| s_interrupts[14]
			| s_interrupts[13]
			| s_interrupts[12]
			| s_interrupts[11]
			| s_interrupts[3]
			| s_interrupts[7]
			| s_interrupts[9]
			| s_interrupts[1]
			| s_interrupts[5]
			| s_interrupts[8]
			| s_interrupts[0]
			| s_interrupts[4]
			);

  assign whichInterrupt = d_interrupts[14] ? 4'he
			: d_interrupts[13] ? 4'hd
			: d_interrupts[12] ? 4'hc
			: d_interrupts[11] ? 4'hb
			: d_interrupts[3] ? 4'h3
			: d_interrupts[7] ? 4'h7
			: d_interrupts[9] ? 4'h9
			: d_interrupts[1] ? 4'h1
			: d_interrupts[5] ? 4'h5
			: d_interrupts[8] ? 4'h8
			: d_interrupts[0] ? 4'h0
			: d_interrupts[4] ? 4'h4
			: m_interrupts[15] ? 4'hf
			: m_interrupts[14] ? 4'he
			: m_interrupts[13] ? 4'hd
			: m_interrupts[12] ? 4'hc
			: m_interrupts[11] ? 4'hb
			: m_interrupts[3] ? 4'h3
			: m_interrupts[7] ? 4'h7
			: m_interrupts[9] ? 4'h9
			: m_interrupts[1] ? 4'h1
			: m_interrupts[5] ? 4'h5
			: m_interrupts[8] ? 4'h8
			: m_interrupts[0] ? 4'h0
			: m_interrupts[4] ? 4'h4
			: s_interrupts[15] ? 4'hf
			: s_interrupts[14] ? 4'he
			: s_interrupts[13] ? 4'hd
			: s_interrupts[12] ? 4'hc
			: s_interrupts[11] ? 4'hb
			: s_interrupts[3] ? 4'h3
			: s_interrupts[7] ? 4'h7
			: s_interrupts[9] ? 4'h9
			: s_interrupts[1] ? 4'h1
			: s_interrupts[5] ? 4'h5
			: s_interrupts[8] ? 4'h8
			: s_interrupts[0] ? 4'h0
			: 4'h4;

  wire [31:0] _T_884 = io_rw_cmd[1] ? io_rw_rdata : 32'h0;
  wire [31:0] _T_888 = (io_rw_cmd[1:0] == 2'h3) ? io_rw_wdata : 32'h0;
  assign wdata = (_T_884 | io_rw_wdata) & (~ _T_888);

  assign insn_cease = system_insn & (({io_rw_addr, 20'h0} & 32'h20200000) == 32'h20000000);
  assign insn_wfi = system_insn & (({io_rw_addr, 20'h0} & 32'h32200000) == 32'h10000000);

  wire [11:0] _T_1477 = insn_break ? 12'h800 : 12'h808;
  assign debugTVec = reg_debug ? _T_1477 : 12'h800;
  wire [31:0] _T_1486 = delegate ? read_stvec : read_mtvec;
  assign notDebugTVec = (_T_1486[0] & cause[31] & (cause_lsbs[7:5] == 3'h0)) ? {_T_1486[31:7],cause[4:0], 2'h0} : {_T_1486[31:2], 2'h0};
  assign tvec = trapToDebug ? {{20'd0}, debugTVec} : notDebugTVec;

  assign epc = ~ ((~ io_pc) | 32'h1);

  assign csr_wen = (io_rw_cmd == 3'h6) 
		| (io_rw_cmd == 3'h7) 
		| (io_rw_cmd == 3'h5);

  assign read_dp_control = {4'h2,reg_bp_0_control_dmode,14'h400,reg_bp_0_control_action,1'h0,2'h0,reg_bp_0_control_tmatch,reg_bp_0_control_m,1'h0,reg_bp_0_control_s,reg_bp_0_control_u,reg_bp_0_control_x,reg_bp_0_control_w,reg_bp_0_control_r};

  assign sel_tdata1 = io_rw_addr == 12'h7a1;
  assign sel_tdata2 = io_rw_addr == 12'h7a2;
  assign sel_misa = io_rw_addr == 12'h301;
  assign sel_mstatus = io_rw_addr == 12'h300;
  assign sel_mtvec = io_rw_addr == 12'h305;
  assign sel_mip = io_rw_addr == 12'h344;
  assign sel_mie = io_rw_addr == 12'h304;
  assign sel_mscratch = io_rw_addr == 12'h340;
  assign sel_mepc = io_rw_addr == 12'h341;
  assign sel_mtval = io_rw_addr == 12'h343;
  assign sel_mcause = io_rw_addr == 12'h342;
  assign sel_dcsr = io_rw_addr == 12'h7b0;
  assign sel_dpc = io_rw_addr == 12'h7b1;
  assign sel_dscratch = io_rw_addr == 12'h7b2;
  assign sel_fflags = io_rw_addr == 12'h1;
  assign sel_frm = io_rw_addr == 12'h2;
  assign sel_fcsr = io_rw_addr == 12'h3;
  assign sel_mcycle = io_rw_addr == 12'hb00;
  assign sel_minstret = io_rw_addr == 12'hb02;
  assign sel_mcounteren = io_rw_addr == 12'h306;
  assign sel_cycle = io_rw_addr == 12'hc00;
  assign sel_instret = io_rw_addr == 12'hc02;
  assign sel_mcycleh = io_rw_addr == 12'hb80;
  assign sel_minstreth = io_rw_addr == 12'hb82;
  assign sel_cycleh = io_rw_addr == 12'hc80;
  assign sel_instreth = io_rw_addr == 12'hc82;
  assign sel_sstatus = io_rw_addr == 12'h100;
  assign sel_sip = io_rw_addr == 12'h144;
  assign sel_sie = io_rw_addr == 12'h104;
  assign sel_sscratch = io_rw_addr == 12'h140;
  assign sel_scause = io_rw_addr == 12'h142;
  assign sel_stval = io_rw_addr == 12'h143;
  assign sel_satp = io_rw_addr == 12'h180;
  assign sel_sepc = io_rw_addr == 12'h141;
  assign sel_stvec = io_rw_addr == 12'h105;
  assign sel_scounteren = io_rw_addr == 12'h106;
  assign sel_mideleg = io_rw_addr == 12'h303;
  assign sel_medeleg = io_rw_addr == 12'h302;
  assign sel_pmp_cfg_0 = io_rw_addr == 12'h3a0;
  assign sel_pmp_cfg_1 = io_rw_addr == 12'h3a1;
  assign sel_pmp_addr_0 = io_rw_addr == 12'h3b0;
  assign sel_pmp_addr_1 = io_rw_addr == 12'h3b1;
  assign sel_pmp_addr_2 = io_rw_addr == 12'h3b2;
  assign sel_pmp_addr_3 = io_rw_addr == 12'h3b3;
  assign sel_pmp_addr_4 = io_rw_addr == 12'h3b4;
  assign sel_pmp_addr_5 = io_rw_addr == 12'h3b5;
  assign sel_pmp_addr_6 = io_rw_addr == 12'h3b6; 
  assign sel_pmp_addr_7 = io_rw_addr == 12'h3b7;
  wire _T_880 = io_rw_addr == 12'hf12;
  wire _T_882 = io_rw_addr == 12'hf13;
  wire [1:0] _T_411 = reg_misa[2] ? 2'h1 : 2'h3;
  wire [101:0] _T_563 = {36'h0,2'h0,io_status_sd,29'h0,io_status_uxl,io_status_sd_rv32,6'h0,io_status_vs,2'h0,1'h0,io_status_mxr,io_status_sum,1'h0,io_status_xs,io_status_fs,4'h0,io_status_spp,1'h0,1'h0,io_status_spie,2'h0,1'h0,io_status_sie,1'h0};
  assign io_rw_rdata = sel_tdata1 ? read_dp_control
			: sel_tdata2 ? reg_bp_0_address
			: sel_misa ? reg_misa
			: sel_mstatus ? read_mstatus
			: sel_mtvec ? read_mtvec
			: sel_mip ? {{16'd0}, read_mip}
			: sel_mie ? reg_mie
			: sel_mscratch ? reg_mscratch
			: sel_mepc ? (~ ((~ reg_mepc) | {{30'd0}, _T_411}))
			: sel_mtval ? reg_mtval
			: sel_mcause ? reg_mcause
			: sel_dcsr ? {4'h4,12'h0,reg_dcsr_ebreakm,1'h0,reg_dcsr_ebreaks,reg_dcsr_ebreaku,2'h0,1'h0,reg_dcsr_cause,3'h0,reg_dcsr_step,reg_dcsr_prv}
			: sel_dpc ? (~ ((~ reg_dpc) | {{30'd0}, _T_411}))
			: sel_dscratch ? reg_dscratch
			: sel_fflags ? {{27'd0}, reg_fflags}
			: sel_frm ? {{29'd0}, reg_frm}
			: sel_fcsr ? {{22'd0}, read_fcsr}
			: sel_mcycle ? reg_cycle[31:0]
			: sel_minstret ? reg_instret[31:0]
			: sel_mcounteren ? read_mcounteren
			: sel_cycle ? reg_cycle[31:0]
			: sel_instret ? reg_instret[31:0]
			: sel_mcycleh ? reg_cycle[63:32]
			: sel_minstreth ? reg_instret[63:32]
			: sel_cycleh ? reg_cycle[63:32]
			: sel_instreth ? reg_instret[63:32]
			: sel_sstatus ? _T_563[31:0]
			: sel_sip ? ({{16'd0}, read_mip} & read_mideleg)
			: sel_sie ? (reg_mie & read_mideleg)
			: sel_sscratch ? reg_sscratch
			: sel_scause ? reg_scause
			: sel_stval ? reg_stval
			: sel_satp ? {reg_satp_mode,9'h0,reg_satp_ppn}
			: sel_sepc ? (~ ((~ reg_sepc) | {{30'd0}, _T_411}))
			: sel_stvec ? read_stvec
			: sel_scounteren ? read_scounteren
			: sel_mideleg ? read_mideleg
			: sel_medeleg ? read_medeleg
			: sel_pmp_cfg_0 ? {reg_pmp_3_cfg_l,2'h0,reg_pmp_3_cfg_a,reg_pmp_3_cfg_x,reg_pmp_3_cfg_w,reg_pmp_3_cfg_r,reg_pmp_2_cfg_l,2'h0,reg_pmp_2_cfg_a,reg_pmp_2_cfg_x,reg_pmp_2_cfg_w,reg_pmp_2_cfg_r,reg_pmp_1_cfg_l,2'h0,reg_pmp_1_cfg_a,reg_pmp_1_cfg_x,reg_pmp_1_cfg_w,reg_pmp_1_cfg_r,reg_pmp_0_cfg_l,2'h0,reg_pmp_0_cfg_a,reg_pmp_0_cfg_x,reg_pmp_0_cfg_w,reg_pmp_0_cfg_r}
			: sel_pmp_cfg_1 ? {reg_pmp_7_cfg_l,2'h0,reg_pmp_7_cfg_a,reg_pmp_7_cfg_x,reg_pmp_7_cfg_w,reg_pmp_7_cfg_r,reg_pmp_6_cfg_l,2'h0,reg_pmp_6_cfg_a,reg_pmp_6_cfg_x,reg_pmp_6_cfg_w,reg_pmp_6_cfg_r,reg_pmp_5_cfg_l,2'h0,reg_pmp_5_cfg_a,reg_pmp_5_cfg_x,reg_pmp_5_cfg_w,reg_pmp_5_cfg_r,reg_pmp_4_cfg_l,2'h0,reg_pmp_4_cfg_a,reg_pmp_4_cfg_x,reg_pmp_4_cfg_w,reg_pmp_4_cfg_r}
			: sel_pmp_addr_0 ? {2'h0, reg_pmp_0_addr}
			: sel_pmp_addr_1 ? {2'h0, reg_pmp_1_addr}
			: sel_pmp_addr_2 ? {2'h0, reg_pmp_2_addr}
			: sel_pmp_addr_3 ? {2'h0, reg_pmp_3_addr}
			: sel_pmp_addr_4 ? {2'h0, reg_pmp_4_addr}
			: sel_pmp_addr_5 ? {2'h0, reg_pmp_5_addr}
			: sel_pmp_addr_6 ? {2'h0, reg_pmp_6_addr}
			: sel_pmp_addr_7 ? {2'h0, reg_pmp_7_addr}
			: _T_880 ? 32'h1
			: _T_882 ? 32'h20181004
			: 32'h0;

  assign io_decode_0_fp_illegal = (io_status_fs == 2'h0) | !reg_misa[5];

  wire decodeAny =  io_decode_0_csr == 12'h7a0
		| io_decode_0_csr == 12'h7a1
		| io_decode_0_csr == 12'h7a2
		| io_decode_0_csr == 12'h301
		| io_decode_0_csr == 12'h300
		| io_decode_0_csr == 12'h305
		| io_decode_0_csr == 12'h344
		| io_decode_0_csr == 12'h304
		| io_decode_0_csr == 12'h340
		| io_decode_0_csr == 12'h341
		| io_decode_0_csr == 12'h343
		| io_decode_0_csr == 12'h342
		| io_decode_0_csr == 12'hf14
		| io_decode_0_csr == 12'h7b0
		| io_decode_0_csr == 12'h7b1
		| io_decode_0_csr == 12'h7b2
		| io_decode_0_csr == 12'h1 
		| io_decode_0_csr == 12'h2 
		| io_decode_0_csr == 12'h3 
		| io_decode_0_csr == 12'hb00
		| io_decode_0_csr == 12'hb02
		| io_decode_0_csr == 12'h323
		| io_decode_0_csr == 12'hb03
		| io_decode_0_csr == 12'hc03
		| io_decode_0_csr == 12'hb83
		| io_decode_0_csr == 12'hc83
		| io_decode_0_csr == 12'h324
		| io_decode_0_csr == 12'hb04
		| io_decode_0_csr == 12'hc04
		| io_decode_0_csr == 12'hb84
		| io_decode_0_csr == 12'hc84
		| io_decode_0_csr == 12'h325
		| io_decode_0_csr == 12'hb05
		| io_decode_0_csr == 12'hc05
		| io_decode_0_csr == 12'hb85
		| io_decode_0_csr == 12'hc85
		| io_decode_0_csr == 12'h326
		| io_decode_0_csr == 12'hb06
		| io_decode_0_csr == 12'hc06
		| io_decode_0_csr == 12'hb86
		| io_decode_0_csr == 12'hc86
		| io_decode_0_csr == 12'h327
		| io_decode_0_csr == 12'hb07
		| io_decode_0_csr == 12'hc07
		| io_decode_0_csr == 12'hb87
		| io_decode_0_csr == 12'hc87
		| io_decode_0_csr == 12'h328
		| io_decode_0_csr == 12'hb08
		| io_decode_0_csr == 12'hc08
		| io_decode_0_csr == 12'hb88
		| io_decode_0_csr == 12'hc88
		| io_decode_0_csr == 12'h329
		| io_decode_0_csr == 12'hb09
		| io_decode_0_csr == 12'hc09
		| io_decode_0_csr == 12'hb89
		| io_decode_0_csr == 12'hc89
		| io_decode_0_csr == 12'h32a
		| io_decode_0_csr == 12'hb0a
		| io_decode_0_csr == 12'hc0a
		| io_decode_0_csr == 12'hb8a
		| io_decode_0_csr == 12'hc8a
		| io_decode_0_csr == 12'h32b
		| io_decode_0_csr == 12'hb0b
		| io_decode_0_csr == 12'hc0b
		| io_decode_0_csr == 12'hb8b
		| io_decode_0_csr == 12'hc8b
		| io_decode_0_csr == 12'h32c
		| io_decode_0_csr == 12'hb0c
		| io_decode_0_csr == 12'hc0c
		| io_decode_0_csr == 12'hb8c
		| io_decode_0_csr == 12'hc8c
		| io_decode_0_csr == 12'h32d
		| io_decode_0_csr == 12'hb0d
		| io_decode_0_csr == 12'hc0d
		| io_decode_0_csr == 12'hb8d
		| io_decode_0_csr == 12'hc8d
		| io_decode_0_csr == 12'h32e
		| io_decode_0_csr == 12'hb0e
		| io_decode_0_csr == 12'hc0e
		| io_decode_0_csr == 12'hb8e
		| io_decode_0_csr == 12'hc8e
		| io_decode_0_csr == 12'h32f
		| io_decode_0_csr == 12'hb0f
		| io_decode_0_csr == 12'hc0f
		| io_decode_0_csr == 12'hb8f
		| io_decode_0_csr == 12'hc8f
		| io_decode_0_csr == 12'h330
		| io_decode_0_csr == 12'hb10
		| io_decode_0_csr == 12'hc10
		| io_decode_0_csr == 12'hb90
		| io_decode_0_csr == 12'hc90
		| io_decode_0_csr == 12'h331
		| io_decode_0_csr == 12'hb11
		| io_decode_0_csr == 12'hc11
		| io_decode_0_csr == 12'hb91
		| io_decode_0_csr == 12'hc91
		| io_decode_0_csr == 12'h332
		| io_decode_0_csr == 12'hb12
		| io_decode_0_csr == 12'hc12
		| io_decode_0_csr == 12'hb92
		| io_decode_0_csr == 12'hc92
		| io_decode_0_csr == 12'h333
		| io_decode_0_csr == 12'hb13
		| io_decode_0_csr == 12'hc13
		| io_decode_0_csr == 12'hb93
		| io_decode_0_csr == 12'hc93
		| io_decode_0_csr == 12'h334
		| io_decode_0_csr == 12'hb14
		| io_decode_0_csr == 12'hc14
		| io_decode_0_csr == 12'hb94
		| io_decode_0_csr == 12'hc94
		| io_decode_0_csr == 12'h335
		| io_decode_0_csr == 12'hb15
		| io_decode_0_csr == 12'hc15
		| io_decode_0_csr == 12'hb95
		| io_decode_0_csr == 12'hc95
		| io_decode_0_csr == 12'h336
		| io_decode_0_csr == 12'hb16
		| io_decode_0_csr == 12'hc16
		| io_decode_0_csr == 12'hb96
		| io_decode_0_csr == 12'hc96
		| io_decode_0_csr == 12'h337
		| io_decode_0_csr == 12'hb17
		| io_decode_0_csr == 12'hc17
		| io_decode_0_csr == 12'hb97
		| io_decode_0_csr == 12'hc97
		| io_decode_0_csr == 12'h338
		| io_decode_0_csr == 12'hb18
		| io_decode_0_csr == 12'hc18
		| io_decode_0_csr == 12'hb98
		| io_decode_0_csr == 12'hc98
		| io_decode_0_csr == 12'h339
		| io_decode_0_csr == 12'hb19
		| io_decode_0_csr == 12'hc19
		| io_decode_0_csr == 12'hb99
		| io_decode_0_csr == 12'hc99
		| io_decode_0_csr == 12'h33a
		| io_decode_0_csr == 12'hb1a
		| io_decode_0_csr == 12'hc1a
		| io_decode_0_csr == 12'hb9a
		| io_decode_0_csr == 12'hc9a
		| io_decode_0_csr == 12'h33b
		| io_decode_0_csr == 12'hb1b
		| io_decode_0_csr == 12'hc1b
		| io_decode_0_csr == 12'hb9b
		| io_decode_0_csr == 12'hc9b
		| io_decode_0_csr == 12'h33c
		| io_decode_0_csr == 12'hb1c
		| io_decode_0_csr == 12'hc1c
		| io_decode_0_csr == 12'hb9c
		| io_decode_0_csr == 12'hc9c
		| io_decode_0_csr == 12'h33d
		| io_decode_0_csr == 12'hb1d
		| io_decode_0_csr == 12'hc1d
		| io_decode_0_csr == 12'hb9d
		| io_decode_0_csr == 12'hc9d
		| io_decode_0_csr == 12'h33e
		| io_decode_0_csr == 12'hb1e
		| io_decode_0_csr == 12'hc1e
		| io_decode_0_csr == 12'hb9e
		| io_decode_0_csr == 12'hc9e
		| io_decode_0_csr == 12'h33f
		| io_decode_0_csr == 12'hb1f
		| io_decode_0_csr == 12'hc1f
		| io_decode_0_csr == 12'hb9f
		| io_decode_0_csr == 12'hc9f
		| io_decode_0_csr == 12'h306
		| io_decode_0_csr == 12'hc00
		| io_decode_0_csr == 12'hc02
		| io_decode_0_csr == 12'hb80
		| io_decode_0_csr == 12'hb82
		| io_decode_0_csr == 12'hc80
		| io_decode_0_csr == 12'hc82
		| io_decode_0_csr == 12'h100
		| io_decode_0_csr == 12'h144
		| io_decode_0_csr == 12'h104
		| io_decode_0_csr == 12'h140
		| io_decode_0_csr == 12'h142
		| io_decode_0_csr == 12'h143
		| io_decode_0_csr == 12'h180
		| io_decode_0_csr == 12'h141
		| io_decode_0_csr == 12'h105
		| io_decode_0_csr == 12'h106
		| io_decode_0_csr == 12'h303
		| io_decode_0_csr == 12'h302
		| io_decode_0_csr == 12'h3a0
		| io_decode_0_csr == 12'h3a1
		| io_decode_0_csr == 12'h3a2
		| io_decode_0_csr == 12'h3a3
		| io_decode_0_csr == 12'h3b0
		| io_decode_0_csr == 12'h3b1
		| io_decode_0_csr == 12'h3b2
		| io_decode_0_csr == 12'h3b3
		| io_decode_0_csr == 12'h3b4
		| io_decode_0_csr == 12'h3b5
		| io_decode_0_csr == 12'h3b6
		| io_decode_0_csr == 12'h3b7
		| io_decode_0_csr == 12'h3b8
		| io_decode_0_csr == 12'h3b9
		| io_decode_0_csr == 12'h3ba
		| io_decode_0_csr == 12'h3bb
		| io_decode_0_csr == 12'h3bc
		| io_decode_0_csr == 12'h3bd
		| io_decode_0_csr == 12'h3be
		| io_decode_0_csr == 12'h3bf
		| io_decode_0_csr == 12'h7c1
		| io_decode_0_csr == 12'hf12
		| io_decode_0_csr == 12'hf11
		| io_decode_0_csr == 12'hf13;
  wire allow_sfence_vma = (reg_mstatus_prv > 2'h1) | !reg_mstatus_tvm;
  wire [31:0] read_mcounteren_counter_addr = read_mcounteren >> io_decode_0_csr[4:0];
  wire [31:0] read_scounteren_counter_addr = read_scounteren >> io_decode_0_csr[4:0];
  wire allow_counter = ((reg_mstatus_prv > 2'h1) | read_mcounteren_counter_addr[0]) & ((reg_mstatus_prv >= 2'h1) | read_scounteren_counter_addr[0]);
  wire allow_wfi = (reg_mstatus_prv > 2'h1) | !reg_mstatus_tw;
  wire allow_sret = (reg_mstatus_prv > 2'h1) | !reg_mstatus_tsr;
  assign io_decode_0_read_illegal = (reg_mstatus_prv < io_decode_0_csr[9:8])
				| !decodeAny
				| (io_decode_0_csr == 12'h180) & !allow_sfence_vma
				| ((io_decode_0_csr >= 12'hc00 & io_decode_0_csr < 12'hc20) | (io_decode_0_csr >= 12'hc80 & io_decode_0_csr < 12'hca0)) & (!allow_counter)
				| ((io_decode_0_csr & 12'hc10) == 12'h410) & (!reg_debug)
				| io_decode_0_fp_csr & io_decode_0_fp_illegal;

  assign io_decode_0_fp_csr = (io_decode_0_csr & 12'h900) == 12'h0;
  assign io_decode_0_write_illegal = io_decode_0_csr[11:10] == 2'h3;
  assign io_decode_0_write_flush = (((io_decode_0_csr >= 12'h340) & (io_decode_0_csr <= 12'h343)) | ((io_decode_0_csr >= 12'h140) & (io_decode_0_csr <= 12'h143))) == 1'h0;
  wire is_sfence = ({io_decode_0_csr, 20'h0} & 32'h42000000) == 32'h2000000;
  wire is_ret = (({io_decode_0_csr, 20'h0} & 32'h40000000) == 32'h40000000) | (({io_decode_0_csr, 20'h0} & 32'h12400000) == 32'h10000000);
  wire is_wfi = ({io_decode_0_csr, 20'h0} & 32'h32200000) == 32'h10000000;
  assign io_decode_0_system_illegal = reg_mstatus_prv < io_decode_0_csr[9:8]
				| is_wfi & !allow_wfi
				| is_ret & !allow_sret
				| is_ret & io_decode_0_csr[10] & !reg_debug
				| is_sfence & !allow_sfence_vma;

  assign io_csr_stall = reg_wfi | io_status_cease;

  assign io_eret = insn_call | insn_break | insn_ret;

  assign io_singleStep = reg_dcsr_step & !reg_debug;

  assign io_status_debug = reg_debug;
  assign io_status_cease = reg_mstatus_cease;
  assign io_status_isa = reg_misa;
  assign io_status_dprv = reg_status_dprv;
  assign io_status_prv = reg_mstatus_prv;
  assign io_status_sd = (io_status_fs == 2'h3) | (io_status_xs == 2'h3) | (io_status_vs == 2'h3);
  assign io_status_zero2 = 27'h0;
  assign io_status_sxl = 2'h1;
  assign io_status_uxl = 2'h1;
  assign io_status_sd_rv32 = io_status_sd;
  assign io_status_zero1 = 6'h0;
  assign io_status_vs = 2'h0;
  assign io_status_tsr = reg_mstatus_tsr;
  assign io_status_tw = reg_mstatus_tw;
  assign io_status_tvm = reg_mstatus_tvm;
  assign io_status_mxr = reg_mstatus_mxr;
  assign io_status_sum = reg_mstatus_sum;
  assign io_status_mprv = reg_mstatus_mprv;
  assign io_status_xs = 2'h0;
  assign io_status_fs = reg_mstatus_fs;
  assign io_status_mpp = reg_mstatus_mpp;
  assign io_status_hpp = 2'h0;
  assign io_status_spp = reg_mstatus_spp;
  assign io_status_mpie = reg_mstatus_mpie;
  assign io_status_hpie = 1'h0;
  assign io_status_spie = reg_mstatus_spie;
  assign io_status_upie = 1'h0;
  assign io_status_mie = reg_mstatus_mie;
  assign io_status_hie = 1'h0;
  assign io_status_sie = reg_mstatus_sie;
  assign io_status_uie = 1'h0;

  assign io_ptbr_mode = reg_satp_mode;
  assign io_ptbr_ppn = reg_satp_ppn;

  wire [31:0] _GEN_103 = !io_rw_addr[9] ? (~ ((~ reg_sepc) | {{30'd0}, _T_411})) 
			: io_rw_addr[10] ? ~ ((~ reg_dpc) | {{30'd0}, _T_411}) 
			: ~ ((~ reg_mepc) | {{30'd0}, _T_411});
  assign io_evec = insn_ret ? _GEN_103 : tvec;

  assign io_time = reg_cycle[31:0];

  assign io_fcsr_rm = reg_frm;

  assign io_interrupt = ((anyInterrupt & !io_singleStep) | reg_singleStepped) & !(reg_debug | io_status_cease);
  assign io_interrupt_cause = 32'h80000000 + {{28'd0}, whichInterrupt};

  wire [30:0] base_0 = {reg_pmp_0_addr, reg_pmp_0_cfg_a[0]};
  wire [33:0] base_0_cat = {base_0 & ~(base_0 + 1), 2'h3};
  wire [30:0] base_1 = {reg_pmp_1_addr, reg_pmp_1_cfg_a[0]};
  wire [33:0] base_1_cat = {base_1 & ~(base_1 + 1), 2'h3};
  wire [30:0] base_2 = {reg_pmp_2_addr, reg_pmp_2_cfg_a[0]};
  wire [33:0] base_2_cat = {base_2 & ~(base_2 + 1), 2'h3};
  wire [30:0] base_3 = {reg_pmp_3_addr, reg_pmp_3_cfg_a[0]};
  wire [33:0] base_3_cat = {base_3 & ~(base_3 + 1), 2'h3};
  wire [30:0] base_4 = {reg_pmp_4_addr, reg_pmp_4_cfg_a[0]};
  wire [33:0] base_4_cat = {base_4 & ~(base_4 + 1), 2'h3};
  wire [30:0] base_5 = {reg_pmp_5_addr, reg_pmp_5_cfg_a[0]};
  wire [33:0] base_5_cat = {base_5 & ~(base_5 + 1), 2'h3};
  wire [30:0] base_6 = {reg_pmp_6_addr, reg_pmp_6_cfg_a[0]};
  wire [33:0] base_6_cat = {base_6 & ~(base_6 + 1), 2'h3};
  wire [30:0] base_7 = {reg_pmp_7_addr, reg_pmp_7_cfg_a[0]};
  wire [33:0] base_7_cat = {base_7 & ~(base_7 + 1), 2'h3};

  assign io_bp_0_control_action = reg_bp_0_control_action;
  assign io_bp_0_control_tmatch = reg_bp_0_control_tmatch;
  assign io_bp_0_control_m = reg_bp_0_control_m;
  assign io_bp_0_control_s = reg_bp_0_control_s;
  assign io_bp_0_control_u = reg_bp_0_control_u;
  assign io_bp_0_control_x = reg_bp_0_control_x;
  assign io_bp_0_control_w = reg_bp_0_control_w;
  assign io_bp_0_control_r = reg_bp_0_control_r;
  assign io_bp_0_address = reg_bp_0_address;
  assign io_pmp_0_cfg_l = reg_pmp_0_cfg_l;
  assign io_pmp_0_cfg_a = reg_pmp_0_cfg_a;
  assign io_pmp_0_cfg_x = reg_pmp_0_cfg_x;
  assign io_pmp_0_cfg_w = reg_pmp_0_cfg_w;
  assign io_pmp_0_cfg_r = reg_pmp_0_cfg_r;
  assign io_pmp_0_addr = reg_pmp_0_addr; 
  assign io_pmp_0_mask = base_0_cat[31:0];
  assign io_pmp_1_cfg_l = reg_pmp_1_cfg_l;
  assign io_pmp_1_cfg_a = reg_pmp_1_cfg_a;
  assign io_pmp_1_cfg_x = reg_pmp_1_cfg_x;
  assign io_pmp_1_cfg_w = reg_pmp_1_cfg_w;
  assign io_pmp_1_cfg_r = reg_pmp_1_cfg_r;
  assign io_pmp_1_addr = reg_pmp_1_addr;
  assign io_pmp_1_mask = base_1_cat[31:0];
  assign io_pmp_2_cfg_l = reg_pmp_2_cfg_l;
  assign io_pmp_2_cfg_a = reg_pmp_2_cfg_a;
  assign io_pmp_2_cfg_x = reg_pmp_2_cfg_x;
  assign io_pmp_2_cfg_w = reg_pmp_2_cfg_w;
  assign io_pmp_2_cfg_r = reg_pmp_2_cfg_r;
  assign io_pmp_2_addr = reg_pmp_2_addr;
  assign io_pmp_2_mask = base_2_cat[31:0];
  assign io_pmp_3_cfg_l = reg_pmp_3_cfg_l;
  assign io_pmp_3_cfg_a = reg_pmp_3_cfg_a; 
  assign io_pmp_3_cfg_x = reg_pmp_3_cfg_x;
  assign io_pmp_3_cfg_w = reg_pmp_3_cfg_w;
  assign io_pmp_3_cfg_r = reg_pmp_3_cfg_r;
  assign io_pmp_3_addr = reg_pmp_3_addr;
  assign io_pmp_3_mask = base_3_cat[31:0];
  assign io_pmp_4_cfg_l = reg_pmp_4_cfg_l;
  assign io_pmp_4_cfg_a = reg_pmp_4_cfg_a;
  assign io_pmp_4_cfg_x = reg_pmp_4_cfg_x;
  assign io_pmp_4_cfg_w = reg_pmp_4_cfg_w;
  assign io_pmp_4_cfg_r = reg_pmp_4_cfg_r; 
  assign io_pmp_4_addr = reg_pmp_4_addr;
  assign io_pmp_4_mask = base_4_cat[31:0];
  assign io_pmp_5_cfg_l = reg_pmp_5_cfg_l;
  assign io_pmp_5_cfg_a = reg_pmp_5_cfg_a;
  assign io_pmp_5_cfg_x = reg_pmp_5_cfg_x;
  assign io_pmp_5_cfg_w = reg_pmp_5_cfg_w;
  assign io_pmp_5_cfg_r = reg_pmp_5_cfg_r;
  assign io_pmp_5_addr = reg_pmp_5_addr;
  assign io_pmp_5_mask = base_5_cat[31:0];
  assign io_pmp_6_cfg_l = reg_pmp_6_cfg_l;
  assign io_pmp_6_cfg_a = reg_pmp_6_cfg_a;
  assign io_pmp_6_cfg_x = reg_pmp_6_cfg_x;
  assign io_pmp_6_cfg_w = reg_pmp_6_cfg_w;
  assign io_pmp_6_cfg_r = reg_pmp_6_cfg_r;
  assign io_pmp_6_addr = reg_pmp_6_addr;
  assign io_pmp_6_mask = base_6_cat[31:0];
  assign io_pmp_7_cfg_l = reg_pmp_7_cfg_l;
  assign io_pmp_7_cfg_a = reg_pmp_7_cfg_a;
  assign io_pmp_7_cfg_x = reg_pmp_7_cfg_x;
  assign io_pmp_7_cfg_w = reg_pmp_7_cfg_w;
  assign io_pmp_7_cfg_r = reg_pmp_7_cfg_r;
  assign io_pmp_7_addr = reg_pmp_7_addr;
  assign io_pmp_7_mask = base_7_cat[31:0];

  assign io_trace_0_valid = (io_retire > 1'h0) | io_trace_0_exception;
  assign io_trace_0_iaddr = io_pc;
  assign io_trace_0_insn = io_inst_0;
  assign io_trace_0_exception = insn_call | insn_break | io_exception;

// MSTATUS register
always @(posedge clock) begin
	if (reset) begin
		reg_mstatus_cease	<=  1'b0;
		reg_mstatus_prv		<=  2'h3;
		reg_mstatus_tsr		<=  1'h0;
		reg_mstatus_tw		<=  1'h0;
		reg_mstatus_tvm		<=  1'h0;
		reg_mstatus_mxr		<=  1'h0;
		reg_mstatus_sum		<=  1'h0;
		reg_mstatus_mprv	<=  1'h0;
		reg_mstatus_fs		<=  2'h0;
	end
	else begin
		if (new_prv == 2'h2) reg_mstatus_prv <= 2'h0;
		else if (insn_ret & !io_rw_addr[9]) reg_mstatus_prv <= {1'd0, reg_mstatus_spp};
		else if (insn_ret & io_rw_addr[9] & io_rw_addr[10]) reg_mstatus_prv <= reg_dcsr_prv;
		else if (insn_ret & io_rw_addr[9] & !io_rw_addr[10]) reg_mstatus_prv <= reg_mstatus_mpp;
		else if (exception & trapToDebug & !reg_debug) reg_mstatus_prv <= 2'h3;
		else if (exception & !trapToDebug & delegate) reg_mstatus_prv <= 2'h1;
		else if (exception & !trapToDebug & !delegate) reg_mstatus_prv <= 2'h3;

		if (csr_wen & sel_sstatus) begin
			reg_mstatus_mxr <=  wdata[19];
			reg_mstatus_sum <=  wdata[18];
			if (wdata[14:13] != 2'h0) reg_mstatus_fs <= 2'h3;
			else reg_mstatus_fs <= 2'h0;
		end
		else if (csr_wen & sel_mstatus) begin
			reg_mstatus_mprv <=  wdata[17];
			reg_mstatus_mxr <=  wdata[19];
			reg_mstatus_sum <=  wdata[18];
			reg_mstatus_tw <=  wdata[21];
			reg_mstatus_tvm <=  wdata[20];
			reg_mstatus_tsr <=  wdata[22];
			if (wdata[14:13] != 2'h0) reg_mstatus_fs <= 2'h3;
			else reg_mstatus_fs <= 2'h0;
		end 
		if (insn_cease) reg_mstatus_cease <= 1;
	end
end 

// MSTATUS register
always @(posedge clock) begin
	if (reset) begin
		reg_mstatus_spp		<=  1'h0;
		reg_mstatus_spie	<=  1'h0;
		reg_mstatus_sie		<=  1'h0;
	end
	else begin
		if (csr_wen & (sel_sstatus | sel_mstatus)) begin
			reg_mstatus_sie <=  wdata[1];
			reg_mstatus_spie <=  wdata[5];
			reg_mstatus_spp <=  wdata[8];
		end
		else if (insn_ret & !io_rw_addr[9]) begin
			reg_mstatus_sie <=  reg_mstatus_spie;
			reg_mstatus_spie <=  1'h1;
			reg_mstatus_spp <=  1'h0;
		end
		else if (exception & !trapToDebug & delegate) begin
			reg_mstatus_spie <=  reg_mstatus_sie;
			reg_mstatus_spp <=  reg_mstatus_prv[0];
			reg_mstatus_sie <=  1'h0;
		end
	end
end

// MSTATUS register
always @(posedge clock) begin
	if (reset) begin
		reg_mstatus_mpp		<=  2'h3;
		reg_mstatus_mpie	<=  1'h0;
		reg_mstatus_mie		<=  1'h0;
	end
	else begin
		if (csr_wen & sel_mstatus) begin
			reg_mstatus_mie <=  wdata[3];
			reg_mstatus_mpie <=  wdata[7];
			reg_mstatus_mpp <=  (wdata[12:11] == 2'h2) ? 2'h0 : wdata[12:11];
		end
		else if (insn_ret & io_rw_addr[9] & !io_rw_addr[10]) begin
			reg_mstatus_mie <=  reg_mstatus_mpie;
			reg_mstatus_mpie <=  1'h1;
			reg_mstatus_mpp <=  2'h0;
		end
		else if (exception & !trapToDebug & !delegate) begin
			reg_mstatus_mpie <=  reg_mstatus_mie;
			reg_mstatus_mpp <=  reg_mstatus_prv;
			reg_mstatus_mie <=  1'h0;
		end
	end
end

// DCSR register
always @(posedge clock) begin
	if (reset) begin
		reg_dcsr_ebreakm	<= 1'h0;
		reg_dcsr_ebreaks	<= 1'h0;
		reg_dcsr_ebreaku	<= 1'h0;
		reg_dcsr_cause		<= 3'h0;
		reg_dcsr_step		<= 1'h0;
		reg_dcsr_prv		<= 2'h3;
	end
	else if (csr_wen & sel_dcsr) begin
		reg_dcsr_step <= wdata[2]; 
		reg_dcsr_ebreakm <= wdata[15]; 
		reg_dcsr_ebreaks <= wdata[13]; 
		reg_dcsr_ebreaku <= wdata[12]; 
		if (wdata[1:0] == 2'h2) reg_dcsr_prv <= 2'h0;
		else reg_dcsr_prv <= wdata[1:0];
	end
	else if (exception & trapToDebug & !reg_debug) begin
		reg_dcsr_cause <= reg_singleStepped ? 3'h4
				: causeIsDebugInt ? 3'h3
				: causeIsDebugTrigger ? 3'h2
				: 3'h1;
		reg_dcsr_prv <= reg_mstatus_prv;
	end
end

// reg_debug
always @(posedge clock) begin
	if (reset) reg_debug <= 1'h0;
	else if (insn_ret & io_rw_addr[9] & io_rw_addr[10]) reg_debug <= 1'h0;
	else if (exception & trapToDebug) reg_debug <= (reg_debug == 1'h0) | reg_debug;
end	

// WFI register
always @(posedge io_ungated_clock) begin
	if (reset) reg_wfi <= 1'h0;
	else if ((pending_interrupts != 32'h00) | io_interrupts_debug | exception) reg_wfi <= 1'h0;
	else if (insn_wfi & !io_singleStep & !reg_debug) reg_wfi <= 1'h1;
end

// reg_misa register
parameter isaMask = 32'h1025;
always @(posedge clock) begin
	if (reset)
		reg_misa <= 32'h40941125;
	else if (csr_wen & sel_misa) begin
		if (!io_pc[1] | wdata[2]) begin
			reg_misa <= (~(~wdata | { 28'd0, !wdata[5] , 3'h0}) & isaMask) | (reg_misa & ~isaMask); 
		end
	end
end

// reg_singleStepped
always @(posedge clock) begin
	if (reset) reg_singleStepped <= 1'h0;
	else if (!io_singleStep) reg_singleStepped <= 1'h0;
	else if (io_retire || exception) reg_singleStepped <= 1'h1;
end	

// reg_satp
always @(posedge clock) begin
	if (reset) begin
		reg_satp_mode <= 1'h0;
		reg_satp_ppn <= 22'h00;
	end
	else if (csr_wen) begin
		if (sel_satp) begin
			reg_satp_mode <= wdata[31];
			reg_satp_ppn <= {2'd0, wdata[19:0]};
		end
	end
end

wire [31:0] newBPC = ((io_rw_cmd[1] ? read_dp_control : 32'h00) | io_rw_wdata) & (~((io_rw_cmd[1:0] == 2'h3) ? io_rw_wdata : 32'h00));
wire dMode = newBPC[27] & reg_debug;
// reg_bp
always @(posedge clock) begin
	if (reset) begin
		reg_bp_0_control_dmode <= 1'h0;
		reg_bp_0_control_action <= 1'h0;
		reg_bp_0_control_tmatch <= 2'h0;
		reg_bp_0_control_m <= 1'h0;
		reg_bp_0_control_s <= 1'h0;
		reg_bp_0_control_u <= 1'h0;
		reg_bp_0_control_x <= 1'h0;
		reg_bp_0_control_w <= 1'h0;
		reg_bp_0_control_r <= 1'h0;
		reg_bp_0_address <= 32'h00;
	end
	else begin
		if (csr_wen & (!reg_bp_0_control_dmode | reg_debug) & sel_tdata1) begin
			reg_bp_0_control_dmode <= dMode;
			reg_bp_0_control_tmatch <= wdata[8:7];
			reg_bp_0_control_m <= wdata[6];
			reg_bp_0_control_s <= wdata[4];
			reg_bp_0_control_u <= wdata[3];
			reg_bp_0_control_x <= wdata[2];
			reg_bp_0_control_w <= wdata[1];
			reg_bp_0_control_r <= wdata[0];				
			reg_bp_0_control_action <= (dMode & newBPC[12]);
		end 
		if (csr_wen & (!reg_bp_0_control_dmode | reg_debug) & sel_tdata2)
			reg_bp_0_address <= wdata;
	end
end

// reg_mtvec
// reg_mie
// reg_mscratch
// reg_sscratch
// reg_stvec
// reg_mcounteren
// reg_scounteren
parameter supported_interrupts = 16'haaa;
always @(posedge clock) begin
	if (reset) begin
		reg_mtvec <= 32'h00;
		reg_stvec <= 32'h00;
		reg_mie <= 32'h00;
		reg_mscratch <= 32'h00;
		reg_sscratch <= 32'h00;
		reg_mcounteren <= 32'h00;
		reg_scounteren <= 32'h00;
	end
	else if (csr_wen) begin
		if (sel_mtvec) reg_mtvec <= wdata;
		if (sel_stvec) reg_stvec <= wdata;
		if (sel_sie) reg_mie <= (reg_mie & ~(read_mideleg)) | (wdata & read_mideleg);
		else if (sel_mie) reg_mie <= wdata & {16'h00, supported_interrupts};
		if (sel_mscratch) reg_mscratch <= wdata;
		if (sel_sscratch) reg_sscratch <= wdata;
		if (sel_mcounteren) reg_mcounteren <= wdata;
		if (sel_scounteren) reg_scounteren <= wdata;
	end
end

// reg_mip
wire [15:0] new_mip = ((io_rw_cmd[1] ? {4'h0,2'h0,reg_mip_seip,1'h0,2'h0,reg_mip_stip,1'h0,2'h0,reg_mip_ssip,1'h0} : 16'h00) | io_rw_wdata[15:0]) & (~((io_rw_cmd[1:0] == 2'h3) ? io_rw_wdata[15:0] : 16'h00));
always @(posedge clock) begin
	if (reset) begin
		reg_mip_seip <= 1'h0;
		reg_mip_stip <= 1'h0;
		reg_mip_ssip <= 1'h0;
	end
	else if (csr_wen) begin
		if (sel_mip) begin
			reg_mip_stip <= new_mip[5];
			reg_mip_seip <= new_mip[9];
		end

		if (sel_sip) begin
			reg_mip_ssip <= (read_mip[1] & ~(read_mideleg[1])) | (wdata[1] & read_mideleg[1]);
		end
		else if (sel_mip) begin
			reg_mip_ssip <= new_mip[1];
		end
	end
end

// reg_dpc
// reg_dscratch
// reg_mideleg
// reg_medeleg
// reg_sepc
// reg_mepc
// reg_mcause
// reg_mtval
// reg_scause
// reg_stval
// reg_fflags
// reg_frm
always @(posedge clock) begin
	if (reset) begin
		reg_dpc <= 32'h00;
		reg_dscratch <= 32'h00;
		reg_mideleg <= 32'h00;
		reg_medeleg <= 32'h00;
		reg_sepc <= 32'h00;
		reg_mepc <= 32'h00;
		reg_mcause <= 32'h00;
		reg_mtval <= 32'h00;
		reg_scause <= 32'h00;
		reg_stval <= 32'h00;
		reg_fflags <= 5'h0;
		reg_frm <= 3'h0;
	end
	else begin
		if (csr_wen & sel_dpc) reg_dpc <= ~((~ wdata) | 32'h1);
		else if (exception & trapToDebug & !reg_debug) reg_dpc <= epc;

		if (csr_wen & sel_dscratch) reg_dscratch <= wdata;
		if (csr_wen & sel_mideleg) reg_mideleg <= wdata;
		if (csr_wen & sel_medeleg) reg_medeleg <= wdata;

		if (csr_wen & sel_sepc) reg_sepc <= ~((~ wdata) | 32'h1);
		else if (exception & delegate) reg_sepc <= epc;

		if (csr_wen & sel_mepc) reg_mepc <= ~((~ wdata) | 32'h1);
		else if (exception & !trapToDebug & !delegate) reg_mepc <= epc;

		if (csr_wen & sel_mcause) reg_mcause <= wdata & 32'h8000000f;
		else if (exception & !trapToDebug & !delegate) reg_mcause <= cause;

		if (csr_wen & sel_mtval) reg_mtval <= wdata;
		else if (exception & !trapToDebug & !delegate) reg_mtval <= io_tval;

		if (csr_wen & sel_scause) reg_scause <= wdata & 32'h8000001f;
		else if (exception & !trapToDebug & delegate) reg_scause <= cause;

		if (csr_wen & sel_stval) reg_stval <= wdata;
		else if (exception & !trapToDebug & delegate) reg_stval <= io_tval;

		if (csr_wen & (sel_fflags | sel_fcsr)) reg_fflags <= wdata[4:0];
		else if (io_fcsr_flags_valid) reg_fflags <= reg_fflags | io_fcsr_flags_bits;

		if (csr_wen & sel_fcsr) reg_frm <= wdata[7:5];
		else if (csr_wen & sel_frm) reg_frm <= wdata[2:0];
	end
end

// reg_pmp
always @(posedge clock) begin
	if (reset) begin
		reg_pmp_0_cfg_l <= 1'h0;
		reg_pmp_0_cfg_a <= 2'h0;
		reg_pmp_0_cfg_x <= 1'h0;
		reg_pmp_0_cfg_w <= 1'h0;
		reg_pmp_0_cfg_r <= 1'h0;
		reg_pmp_1_cfg_l <= 1'h0;
		reg_pmp_1_cfg_a <= 2'h0;
		reg_pmp_1_cfg_x <= 1'h0;
		reg_pmp_1_cfg_w <= 1'h0;
		reg_pmp_1_cfg_r <= 1'h0;
		reg_pmp_2_cfg_l <= 1'h0;
		reg_pmp_2_cfg_a <= 2'h0;
		reg_pmp_2_cfg_x <= 1'h0;
		reg_pmp_2_cfg_w <= 1'h0;
		reg_pmp_2_cfg_r <= 1'h0;
		reg_pmp_3_cfg_l <= 1'h0;
		reg_pmp_3_cfg_a <= 2'h0;
		reg_pmp_3_cfg_x <= 1'h0;
		reg_pmp_3_cfg_w <= 1'h0;
		reg_pmp_3_cfg_r <= 1'h0;
		reg_pmp_4_cfg_l <= 1'h0;
		reg_pmp_4_cfg_a <= 2'h0;
		reg_pmp_4_cfg_x <= 1'h0;
		reg_pmp_4_cfg_w <= 1'h0;
		reg_pmp_4_cfg_r <= 1'h0;
		reg_pmp_5_cfg_l <= 1'h0;
		reg_pmp_5_cfg_a <= 2'h0;
		reg_pmp_5_cfg_x <= 1'h0;
		reg_pmp_5_cfg_w <= 1'h0;
		reg_pmp_5_cfg_r <= 1'h0;
		reg_pmp_6_cfg_l <= 1'h0;
		reg_pmp_6_cfg_a <= 2'h0;
		reg_pmp_6_cfg_x <= 1'h0;
		reg_pmp_6_cfg_w <= 1'h0;
		reg_pmp_6_cfg_r <= 1'h0;
		reg_pmp_7_cfg_l <= 1'h0;
		reg_pmp_7_cfg_a <= 2'h0;
		reg_pmp_7_cfg_x <= 1'h0;
		reg_pmp_7_cfg_w <= 1'h0;
		reg_pmp_7_cfg_r <= 1'h0;
	end
	if (csr_wen) begin
		if (sel_pmp_cfg_0 & !reg_pmp_0_cfg_l) begin
			reg_pmp_0_cfg_l <= wdata[7];
			reg_pmp_0_cfg_a <= wdata[4:3];
			reg_pmp_0_cfg_x <= wdata[2];
			reg_pmp_0_cfg_w <= wdata[1] & wdata[0];
			reg_pmp_0_cfg_r <= wdata[0];
		end
		if (sel_pmp_cfg_0 & !reg_pmp_1_cfg_l) begin
			reg_pmp_1_cfg_l <= wdata[15];
			reg_pmp_1_cfg_a <= wdata[12:11];
			reg_pmp_1_cfg_x <= wdata[10];
			reg_pmp_1_cfg_w <= wdata[9] & wdata[8];
			reg_pmp_1_cfg_r <= wdata[8];
		end
		if (sel_pmp_cfg_0 & !reg_pmp_2_cfg_l) begin
			reg_pmp_2_cfg_l <= wdata[23];
			reg_pmp_2_cfg_a <= wdata[20:19];
			reg_pmp_2_cfg_x <= wdata[18];
			reg_pmp_2_cfg_w <= wdata[17] & wdata[16];
			reg_pmp_2_cfg_r <= wdata[16];
		end
		if (sel_pmp_cfg_0 & !reg_pmp_3_cfg_l) begin
			reg_pmp_3_cfg_l <= wdata[31];
			reg_pmp_3_cfg_a <= wdata[28:27];
			reg_pmp_3_cfg_x <= wdata[26];
			reg_pmp_3_cfg_w <= wdata[25] & wdata[24];
			reg_pmp_3_cfg_r <= wdata[24];
		end
		if (sel_pmp_cfg_1 & !reg_pmp_4_cfg_l) begin
			reg_pmp_4_cfg_l <= wdata[7];
			reg_pmp_4_cfg_a <= wdata[4:3];
			reg_pmp_4_cfg_x <= wdata[2];
			reg_pmp_4_cfg_w <= wdata[1] & wdata[0];
			reg_pmp_4_cfg_r <= wdata[0];
		end
		if (sel_pmp_cfg_1 & !reg_pmp_5_cfg_l) begin
			reg_pmp_5_cfg_l <= wdata[15];
			reg_pmp_5_cfg_a <= wdata[12:11];
			reg_pmp_5_cfg_x <= wdata[10];
			reg_pmp_5_cfg_w <= wdata[9] & wdata[8];
			reg_pmp_5_cfg_r <= wdata[8];
		end
		if (sel_pmp_cfg_1 & !reg_pmp_6_cfg_l) begin
			reg_pmp_6_cfg_l <= wdata[23];
			reg_pmp_6_cfg_a <= wdata[20:19];
			reg_pmp_6_cfg_x <= wdata[18];
			reg_pmp_6_cfg_w <= wdata[17] & wdata[16];
			reg_pmp_6_cfg_r <= wdata[16];
		end
		if (sel_pmp_cfg_1 & !reg_pmp_7_cfg_l) begin
			reg_pmp_7_cfg_l <= wdata[31];
			reg_pmp_7_cfg_a <= wdata[28:27];
			reg_pmp_7_cfg_x <= wdata[26];
			reg_pmp_7_cfg_w <= wdata[25] & wdata[24];
			reg_pmp_7_cfg_r <= wdata[24];
		end
		if (sel_pmp_addr_0 & !(reg_pmp_0_cfg_l | (reg_pmp_1_cfg_l & ( !reg_pmp_1_cfg_a[1] & reg_pmp_1_cfg_a[0])))) begin
			reg_pmp_0_addr <= wdata[29:0];
		end 
		if (sel_pmp_addr_1 & !(reg_pmp_1_cfg_l | (reg_pmp_2_cfg_l & ( !reg_pmp_2_cfg_a[1] & reg_pmp_2_cfg_a[0])))) begin
			reg_pmp_1_addr <= wdata[29:0];
		end 
		if (sel_pmp_addr_2 & !(reg_pmp_2_cfg_l | (reg_pmp_3_cfg_l & ( !reg_pmp_3_cfg_a[1] & reg_pmp_3_cfg_a[0])))) begin
			reg_pmp_2_addr <= wdata[29:0];
		end 
		if (sel_pmp_addr_3 & !(reg_pmp_3_cfg_l | (reg_pmp_4_cfg_l & ( !reg_pmp_4_cfg_a[1] & reg_pmp_4_cfg_a[0])))) begin
			reg_pmp_3_addr <= wdata[29:0];
		end 
		if (sel_pmp_addr_4 & !(reg_pmp_4_cfg_l | (reg_pmp_5_cfg_l & ( !reg_pmp_5_cfg_a[1] & reg_pmp_5_cfg_a[0])))) begin
			reg_pmp_4_addr <= wdata[29:0];
		end 
		if (sel_pmp_addr_5 & !(reg_pmp_5_cfg_l | (reg_pmp_6_cfg_l & ( !reg_pmp_6_cfg_a[1] & reg_pmp_6_cfg_a[0])))) begin
			reg_pmp_5_addr <= wdata[29:0];
		end 
		if (sel_pmp_addr_6 & !(reg_pmp_6_cfg_l | (reg_pmp_7_cfg_l & ( !reg_pmp_7_cfg_a[1] & reg_pmp_7_cfg_a[0])))) begin
			reg_pmp_6_addr <= wdata[29:0];
		end 
		if (sel_pmp_addr_7 & !(reg_pmp_7_cfg_l | (reg_pmp_7_cfg_l & ( !reg_pmp_7_cfg_a[1] & reg_pmp_7_cfg_a[0])))) begin
			reg_pmp_7_addr <= wdata[29:0];
		end 
	end
end

// reg_cycle
assign nextSmall = (io_csr_stall == 1'h0) ? (reg_cycle_small + 6'd1) : {1'b0, reg_cycle_small};
assign nextLarge = reg_cycle_large + 58'd1;
assign reg_cycle = {reg_cycle_large, reg_cycle_small};
//assign _T_100 = {reg_cycle_large, reg_cycle_small}; 
always @(posedge io_ungated_clock) begin
	if (reset) begin
		reg_cycle_small <= 6'h00;
		reg_cycle_large <= 58'h00;
	end
	else begin
		if (csr_wen & sel_mcycle) begin
			reg_cycle_small <= wdata[5:0];
			reg_cycle_large <= {reg_cycle[63:32], wdata[31:6]};
		end
		else
			reg_cycle_small <= nextSmall[5:0];
		
		if (csr_wen & sel_mcycleh) begin
			reg_cycle_large <= {wdata[31:0], reg_cycle[31:6]};
		end
		else if (nextSmall[6])
			reg_cycle_large <= nextLarge;
	end
end

// reg_instret register
assign nextInstretSmall = (io_retire) ? (reg_instret_small + 6'd1) : {1'b0, reg_instret_small};
assign nextInstretLarge = reg_instret_large + 58'd1;
assign reg_instret = {reg_instret_large, reg_instret_small}; 
always @(posedge clock) begin
	if (reset) begin
		reg_instret_small <= 6'h00;
		reg_instret_large <= 58'h00;
	end
	else begin
		if (csr_wen & sel_minstret) begin
			reg_instret_small <= wdata[5:0];
			reg_instret_large <= {reg_instret[63:32], wdata[31:6]};
		end
		else
			reg_instret_small <= nextInstretSmall[5:0];
		
		if (csr_wen & sel_minstreth) begin
			reg_instret_large <= {wdata[31:0], reg_instret[31:6]};
		end
		else if (nextInstretSmall[6])
			reg_instret_large <= nextInstretLarge;
	end
end

always @(posedge clock) begin
	if (reset) begin
		reg_mstatus_cease <= 1'h0;
	end
	else begin
		if (insn_cease) reg_mstatus_cease <= 1'h1;
	end
end

// reg_status_dprv
always @(posedge clock) begin
	if (reset) reg_status_dprv <= 0;
	else if (reg_mstatus_mprv & !reg_debug) reg_status_dprv <= reg_mstatus_mpp;
	else reg_status_dprv <= reg_mstatus_prv;
end

`ifndef SYNTHESIS
  wire _T_1522 = (((insn_ret + insn_call + insn_break + io_exception) <= 3'h1) | reset) == 1'h0;
  wire _T_1544 = (!reg_singleStepped | !io_retire | reset) == 1'h0;
`endif // SYNTHESIS
always @(posedge clock) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1522) begin
          $fwrite(32'h80000002,"Assertion failed: these conditions must be mutually exclusive\n    at CSR.scala:654 assert(PopCount(insn_ret :: insn_call :: insn_break :: io.exception :: Nil) <= 1, \"these conditions must be mutually exclusive\")\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1522) begin
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
        if (_T_1544) begin
          $fwrite(32'h80000002,"Assertion failed\n    at CSR.scala:662 assert(!reg_singleStepped || io.retire === UInt(0))\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1544) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
end

`endif // MY_ASSIGNMENT

endmodule
