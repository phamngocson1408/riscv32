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
  reg [1:0] reg_mstatus_prv; // @[CSR.scala 295:24:freechips.rocketchip.system.DefaultRV32Config.fir@147640.4]
  reg [31:0] _RAND_0;
  reg  reg_mstatus_tsr; // @[CSR.scala 295:24:freechips.rocketchip.system.DefaultRV32Config.fir@147640.4]
  reg [31:0] _RAND_1;
  reg  reg_mstatus_tw; // @[CSR.scala 295:24:freechips.rocketchip.system.DefaultRV32Config.fir@147640.4]
  reg [31:0] _RAND_2;
  reg  reg_mstatus_tvm; // @[CSR.scala 295:24:freechips.rocketchip.system.DefaultRV32Config.fir@147640.4]
  reg [31:0] _RAND_3;
  reg  reg_mstatus_mxr; // @[CSR.scala 295:24:freechips.rocketchip.system.DefaultRV32Config.fir@147640.4]
  reg [31:0] _RAND_4;
  reg  reg_mstatus_sum; // @[CSR.scala 295:24:freechips.rocketchip.system.DefaultRV32Config.fir@147640.4]
  reg [31:0] _RAND_5;
  reg  reg_mstatus_mprv; // @[CSR.scala 295:24:freechips.rocketchip.system.DefaultRV32Config.fir@147640.4]
  reg [31:0] _RAND_6;
  reg [1:0] reg_mstatus_fs; // @[CSR.scala 295:24:freechips.rocketchip.system.DefaultRV32Config.fir@147640.4]
  reg [31:0] _RAND_7;
  reg [1:0] reg_mstatus_mpp; // @[CSR.scala 295:24:freechips.rocketchip.system.DefaultRV32Config.fir@147640.4]
  reg [31:0] _RAND_8;
  reg  reg_mstatus_spp; // @[CSR.scala 295:24:freechips.rocketchip.system.DefaultRV32Config.fir@147640.4]
  reg [31:0] _RAND_9;
  reg  reg_mstatus_mpie; // @[CSR.scala 295:24:freechips.rocketchip.system.DefaultRV32Config.fir@147640.4]
  reg [31:0] _RAND_10;
  reg  reg_mstatus_spie; // @[CSR.scala 295:24:freechips.rocketchip.system.DefaultRV32Config.fir@147640.4]
  reg [31:0] _RAND_11;
  reg  reg_mstatus_mie; // @[CSR.scala 295:24:freechips.rocketchip.system.DefaultRV32Config.fir@147640.4]
  reg [31:0] _RAND_12;
  reg  reg_mstatus_sie; // @[CSR.scala 295:24:freechips.rocketchip.system.DefaultRV32Config.fir@147640.4]
  reg [31:0] _RAND_13;
  wire  system_insn; // @[CSR.scala 569:31:freechips.rocketchip.system.DefaultRV32Config.fir@148707.4]
  wire [31:0] _T_890; // @[CSR.scala 581:28:freechips.rocketchip.system.DefaultRV32Config.fir@148708.4]
  wire [31:0] _T_897; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@148715.4]
  wire  _T_898; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@148716.4]
  wire [31:0] _T_899; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@148717.4]
  wire  _T_900; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@148718.4]
  wire  _T_902; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@148720.4]
  wire  insn_ret; // @[CSR.scala 581:95:freechips.rocketchip.system.DefaultRV32Config.fir@148735.4]
  wire  _T_1871; // @[CSR.scala 718:39:freechips.rocketchip.system.DefaultRV32Config.fir@149788.6]
  wire  _T_1872; // @[CSR.scala 718:28:freechips.rocketchip.system.DefaultRV32Config.fir@149789.6]
  wire  _T_1879; // @[CSR.scala 724:47:freechips.rocketchip.system.DefaultRV32Config.fir@149804.8]
  reg [1:0] reg_dcsr_prv; // @[CSR.scala 303:21:freechips.rocketchip.system.DefaultRV32Config.fir@147685.4]
  reg [31:0] _RAND_14;
  wire [1:0] _GEN_93; // @[CSR.scala 724:53:freechips.rocketchip.system.DefaultRV32Config.fir@149806.8]
  wire [1:0] _GEN_102; // @[CSR.scala 718:44:freechips.rocketchip.system.DefaultRV32Config.fir@149791.6]
  wire [31:0] _T_891; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@148709.4]
  wire  _T_892; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@148710.4]
  wire  insn_call; // @[CSR.scala 581:95:freechips.rocketchip.system.DefaultRV32Config.fir@148731.4]
  wire  _T_895; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@148713.4]
  wire  insn_break; // @[CSR.scala 581:95:freechips.rocketchip.system.DefaultRV32Config.fir@148733.4]
  wire  _T_1512; // @[CSR.scala 653:29:freechips.rocketchip.system.DefaultRV32Config.fir@149367.4]
  wire  exception; // @[CSR.scala 653:43:freechips.rocketchip.system.DefaultRV32Config.fir@149368.4]
  reg  reg_singleStepped; // @[CSR.scala 347:30:freechips.rocketchip.system.DefaultRV32Config.fir@147744.4]
  reg [31:0] _RAND_15;
  wire [3:0] _GEN_494; // @[CSR.scala 617:36:freechips.rocketchip.system.DefaultRV32Config.fir@149289.4]
  wire [3:0] _T_1458; // @[CSR.scala 617:36:freechips.rocketchip.system.DefaultRV32Config.fir@149290.4]
  wire [31:0] _T_1459; // @[CSR.scala 618:14:freechips.rocketchip.system.DefaultRV32Config.fir@149291.4]
  wire [31:0] cause; // @[CSR.scala 617:8:freechips.rocketchip.system.DefaultRV32Config.fir@149292.4]
  wire  _T_1460; // @[CSR.scala 620:30:freechips.rocketchip.system.DefaultRV32Config.fir@149294.4]
  wire [7:0] cause_lsbs; // @[CSR.scala 619:25:freechips.rocketchip.system.DefaultRV32Config.fir@149293.4]
  wire  _T_1461; // @[CSR.scala 620:53:freechips.rocketchip.system.DefaultRV32Config.fir@149295.4]
  wire  causeIsDebugInt; // @[CSR.scala 620:39:freechips.rocketchip.system.DefaultRV32Config.fir@149296.4]
  wire  _T_1473; // @[CSR.scala 623:60:freechips.rocketchip.system.DefaultRV32Config.fir@149310.4]
  wire  _T_1463; // @[CSR.scala 621:29:freechips.rocketchip.system.DefaultRV32Config.fir@149298.4]
  wire  causeIsDebugTrigger; // @[CSR.scala 621:44:freechips.rocketchip.system.DefaultRV32Config.fir@149300.4]
  wire  _T_1474; // @[CSR.scala 623:79:freechips.rocketchip.system.DefaultRV32Config.fir@149311.4]
  wire  _T_1467; // @[CSR.scala 622:42:freechips.rocketchip.system.DefaultRV32Config.fir@149303.4]
  reg  reg_dcsr_ebreakm; // @[CSR.scala 303:21:freechips.rocketchip.system.DefaultRV32Config.fir@147685.4]
  reg [31:0] _RAND_16;
  reg  reg_dcsr_ebreaks; // @[CSR.scala 303:21:freechips.rocketchip.system.DefaultRV32Config.fir@147685.4]
  reg [31:0] _RAND_17;
  reg  reg_dcsr_ebreaku; // @[CSR.scala 303:21:freechips.rocketchip.system.DefaultRV32Config.fir@147685.4]
  reg [31:0] _RAND_18;
  wire [3:0] _T_1470; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@149306.4]
  wire [3:0] _T_1471; // @[CSR.scala 622:134:freechips.rocketchip.system.DefaultRV32Config.fir@149307.4]
  wire  _T_1472; // @[CSR.scala 622:134:freechips.rocketchip.system.DefaultRV32Config.fir@149308.4]
  wire  causeIsDebugBreak; // @[CSR.scala 622:56:freechips.rocketchip.system.DefaultRV32Config.fir@149309.4]
  wire  _T_1475; // @[CSR.scala 623:102:freechips.rocketchip.system.DefaultRV32Config.fir@149312.4]
  reg  reg_debug; // @[CSR.scala 344:22:freechips.rocketchip.system.DefaultRV32Config.fir@147741.4]
  reg [31:0] _RAND_19;
  wire  trapToDebug; // @[CSR.scala 623:123:freechips.rocketchip.system.DefaultRV32Config.fir@149313.4]
  wire  _T_1547; // @[CSR.scala 670:13:freechips.rocketchip.system.DefaultRV32Config.fir@149433.8]
  wire [1:0] _GEN_42; // @[CSR.scala 670:25:freechips.rocketchip.system.DefaultRV32Config.fir@149434.8]
  wire  _T_1478; // @[CSR.scala 625:51:freechips.rocketchip.system.DefaultRV32Config.fir@149317.4]
  reg [31:0] reg_mideleg; // @[CSR.scala 355:18:freechips.rocketchip.system.DefaultRV32Config.fir@147749.4]
  reg [31:0] _RAND_20;
  wire [31:0] read_mideleg; // @[CSR.scala 356:28:freechips.rocketchip.system.DefaultRV32Config.fir@147750.4]
  wire [31:0] _T_1481; // @[CSR.scala 625:94:freechips.rocketchip.system.DefaultRV32Config.fir@149320.4]
  wire  _T_1482; // @[CSR.scala 625:94:freechips.rocketchip.system.DefaultRV32Config.fir@149321.4]
  reg [31:0] reg_medeleg; // @[CSR.scala 359:18:freechips.rocketchip.system.DefaultRV32Config.fir@147752.4]
  reg [31:0] _RAND_21;
  wire [31:0] read_medeleg; // @[CSR.scala 360:28:freechips.rocketchip.system.DefaultRV32Config.fir@147753.4]
  wire [31:0] _T_1483; // @[CSR.scala 625:120:freechips.rocketchip.system.DefaultRV32Config.fir@149322.4]
  wire  _T_1484; // @[CSR.scala 625:120:freechips.rocketchip.system.DefaultRV32Config.fir@149323.4]
  wire  _T_1485; // @[CSR.scala 625:66:freechips.rocketchip.system.DefaultRV32Config.fir@149324.4]
  wire  delegate; // @[CSR.scala 625:60:freechips.rocketchip.system.DefaultRV32Config.fir@149325.4]
  wire [1:0] _GEN_50; // @[CSR.scala 677:27:freechips.rocketchip.system.DefaultRV32Config.fir@149446.8]
  wire [1:0] _GEN_61; // @[CSR.scala 669:24:freechips.rocketchip.system.DefaultRV32Config.fir@149432.6]
  wire [1:0] _GEN_79; // @[CSR.scala 668:20:freechips.rocketchip.system.DefaultRV32Config.fir@149431.4]
  wire [1:0] new_prv; // @[CSR.scala 717:19:freechips.rocketchip.system.DefaultRV32Config.fir@149787.4]
  wire  _T_33; // @[CSR.scala 1042:27:freechips.rocketchip.system.DefaultRV32Config.fir@147644.4]
  reg [2:0] reg_dcsr_cause; // @[CSR.scala 303:21:freechips.rocketchip.system.DefaultRV32Config.fir@147685.4]
  reg [31:0] _RAND_22;
  reg  reg_dcsr_step; // @[CSR.scala 303:21:freechips.rocketchip.system.DefaultRV32Config.fir@147685.4]
  reg [31:0] _RAND_23;
  reg [31:0] reg_dpc; // @[CSR.scala 345:20:freechips.rocketchip.system.DefaultRV32Config.fir@147742.4]
  reg [31:0] _RAND_24;
  reg [31:0] reg_dscratch; // @[CSR.scala 346:25:freechips.rocketchip.system.DefaultRV32Config.fir@147743.4]
  reg [31:0] _RAND_25;
  reg  reg_bp_0_control_dmode; // @[CSR.scala 350:19:freechips.rocketchip.system.DefaultRV32Config.fir@147746.4]
  reg [31:0] _RAND_26;
  reg  reg_bp_0_control_action; // @[CSR.scala 350:19:freechips.rocketchip.system.DefaultRV32Config.fir@147746.4]
  reg [31:0] _RAND_27;
  reg [1:0] reg_bp_0_control_tmatch; // @[CSR.scala 350:19:freechips.rocketchip.system.DefaultRV32Config.fir@147746.4]
  reg [31:0] _RAND_28;
  reg  reg_bp_0_control_m; // @[CSR.scala 350:19:freechips.rocketchip.system.DefaultRV32Config.fir@147746.4]
  reg [31:0] _RAND_29;
  reg  reg_bp_0_control_s; // @[CSR.scala 350:19:freechips.rocketchip.system.DefaultRV32Config.fir@147746.4]
  reg [31:0] _RAND_30;
  reg  reg_bp_0_control_u; // @[CSR.scala 350:19:freechips.rocketchip.system.DefaultRV32Config.fir@147746.4]
  reg [31:0] _RAND_31;
  reg  reg_bp_0_control_x; // @[CSR.scala 350:19:freechips.rocketchip.system.DefaultRV32Config.fir@147746.4]
  reg [31:0] _RAND_32;
  reg  reg_bp_0_control_w; // @[CSR.scala 350:19:freechips.rocketchip.system.DefaultRV32Config.fir@147746.4]
  reg [31:0] _RAND_33;
  reg  reg_bp_0_control_r; // @[CSR.scala 350:19:freechips.rocketchip.system.DefaultRV32Config.fir@147746.4]
  reg [31:0] _RAND_34;
  reg [31:0] reg_bp_0_address; // @[CSR.scala 350:19:freechips.rocketchip.system.DefaultRV32Config.fir@147746.4]
  reg [31:0] _RAND_35;
  reg  reg_pmp_0_cfg_l; // @[CSR.scala 351:20:freechips.rocketchip.system.DefaultRV32Config.fir@147747.4]
  reg [31:0] _RAND_36;
  reg [1:0] reg_pmp_0_cfg_a; // @[CSR.scala 351:20:freechips.rocketchip.system.DefaultRV32Config.fir@147747.4]
  reg [31:0] _RAND_37;
  reg  reg_pmp_0_cfg_x; // @[CSR.scala 351:20:freechips.rocketchip.system.DefaultRV32Config.fir@147747.4]
  reg [31:0] _RAND_38;
  reg  reg_pmp_0_cfg_w; // @[CSR.scala 351:20:freechips.rocketchip.system.DefaultRV32Config.fir@147747.4]
  reg [31:0] _RAND_39;
  reg  reg_pmp_0_cfg_r; // @[CSR.scala 351:20:freechips.rocketchip.system.DefaultRV32Config.fir@147747.4]
  reg [31:0] _RAND_40;
  reg [29:0] reg_pmp_0_addr; // @[CSR.scala 351:20:freechips.rocketchip.system.DefaultRV32Config.fir@147747.4]
  reg [31:0] _RAND_41;
  reg  reg_pmp_1_cfg_l; // @[CSR.scala 351:20:freechips.rocketchip.system.DefaultRV32Config.fir@147747.4]
  reg [31:0] _RAND_42;
  reg [1:0] reg_pmp_1_cfg_a; // @[CSR.scala 351:20:freechips.rocketchip.system.DefaultRV32Config.fir@147747.4]
  reg [31:0] _RAND_43;
  reg  reg_pmp_1_cfg_x; // @[CSR.scala 351:20:freechips.rocketchip.system.DefaultRV32Config.fir@147747.4]
  reg [31:0] _RAND_44;
  reg  reg_pmp_1_cfg_w; // @[CSR.scala 351:20:freechips.rocketchip.system.DefaultRV32Config.fir@147747.4]
  reg [31:0] _RAND_45;
  reg  reg_pmp_1_cfg_r; // @[CSR.scala 351:20:freechips.rocketchip.system.DefaultRV32Config.fir@147747.4]
  reg [31:0] _RAND_46;
  reg [29:0] reg_pmp_1_addr; // @[CSR.scala 351:20:freechips.rocketchip.system.DefaultRV32Config.fir@147747.4]
  reg [31:0] _RAND_47;
  reg  reg_pmp_2_cfg_l; // @[CSR.scala 351:20:freechips.rocketchip.system.DefaultRV32Config.fir@147747.4]
  reg [31:0] _RAND_48;
  reg [1:0] reg_pmp_2_cfg_a; // @[CSR.scala 351:20:freechips.rocketchip.system.DefaultRV32Config.fir@147747.4]
  reg [31:0] _RAND_49;
  reg  reg_pmp_2_cfg_x; // @[CSR.scala 351:20:freechips.rocketchip.system.DefaultRV32Config.fir@147747.4]
  reg [31:0] _RAND_50;
  reg  reg_pmp_2_cfg_w; // @[CSR.scala 351:20:freechips.rocketchip.system.DefaultRV32Config.fir@147747.4]
  reg [31:0] _RAND_51;
  reg  reg_pmp_2_cfg_r; // @[CSR.scala 351:20:freechips.rocketchip.system.DefaultRV32Config.fir@147747.4]
  reg [31:0] _RAND_52;
  reg [29:0] reg_pmp_2_addr; // @[CSR.scala 351:20:freechips.rocketchip.system.DefaultRV32Config.fir@147747.4]
  reg [31:0] _RAND_53;
  reg  reg_pmp_3_cfg_l; // @[CSR.scala 351:20:freechips.rocketchip.system.DefaultRV32Config.fir@147747.4]
  reg [31:0] _RAND_54;
  reg [1:0] reg_pmp_3_cfg_a; // @[CSR.scala 351:20:freechips.rocketchip.system.DefaultRV32Config.fir@147747.4]
  reg [31:0] _RAND_55;
  reg  reg_pmp_3_cfg_x; // @[CSR.scala 351:20:freechips.rocketchip.system.DefaultRV32Config.fir@147747.4]
  reg [31:0] _RAND_56;
  reg  reg_pmp_3_cfg_w; // @[CSR.scala 351:20:freechips.rocketchip.system.DefaultRV32Config.fir@147747.4]
  reg [31:0] _RAND_57;
  reg  reg_pmp_3_cfg_r; // @[CSR.scala 351:20:freechips.rocketchip.system.DefaultRV32Config.fir@147747.4]
  reg [31:0] _RAND_58;
  reg [29:0] reg_pmp_3_addr; // @[CSR.scala 351:20:freechips.rocketchip.system.DefaultRV32Config.fir@147747.4]
  reg [31:0] _RAND_59;
  reg  reg_pmp_4_cfg_l; // @[CSR.scala 351:20:freechips.rocketchip.system.DefaultRV32Config.fir@147747.4]
  reg [31:0] _RAND_60;
  reg [1:0] reg_pmp_4_cfg_a; // @[CSR.scala 351:20:freechips.rocketchip.system.DefaultRV32Config.fir@147747.4]
  reg [31:0] _RAND_61;
  reg  reg_pmp_4_cfg_x; // @[CSR.scala 351:20:freechips.rocketchip.system.DefaultRV32Config.fir@147747.4]
  reg [31:0] _RAND_62;
  reg  reg_pmp_4_cfg_w; // @[CSR.scala 351:20:freechips.rocketchip.system.DefaultRV32Config.fir@147747.4]
  reg [31:0] _RAND_63;
  reg  reg_pmp_4_cfg_r; // @[CSR.scala 351:20:freechips.rocketchip.system.DefaultRV32Config.fir@147747.4]
  reg [31:0] _RAND_64;
  reg [29:0] reg_pmp_4_addr; // @[CSR.scala 351:20:freechips.rocketchip.system.DefaultRV32Config.fir@147747.4]
  reg [31:0] _RAND_65;
  reg  reg_pmp_5_cfg_l; // @[CSR.scala 351:20:freechips.rocketchip.system.DefaultRV32Config.fir@147747.4]
  reg [31:0] _RAND_66;
  reg [1:0] reg_pmp_5_cfg_a; // @[CSR.scala 351:20:freechips.rocketchip.system.DefaultRV32Config.fir@147747.4]
  reg [31:0] _RAND_67;
  reg  reg_pmp_5_cfg_x; // @[CSR.scala 351:20:freechips.rocketchip.system.DefaultRV32Config.fir@147747.4]
  reg [31:0] _RAND_68;
  reg  reg_pmp_5_cfg_w; // @[CSR.scala 351:20:freechips.rocketchip.system.DefaultRV32Config.fir@147747.4]
  reg [31:0] _RAND_69;
  reg  reg_pmp_5_cfg_r; // @[CSR.scala 351:20:freechips.rocketchip.system.DefaultRV32Config.fir@147747.4]
  reg [31:0] _RAND_70;
  reg [29:0] reg_pmp_5_addr; // @[CSR.scala 351:20:freechips.rocketchip.system.DefaultRV32Config.fir@147747.4]
  reg [31:0] _RAND_71;
  reg  reg_pmp_6_cfg_l; // @[CSR.scala 351:20:freechips.rocketchip.system.DefaultRV32Config.fir@147747.4]
  reg [31:0] _RAND_72;
  reg [1:0] reg_pmp_6_cfg_a; // @[CSR.scala 351:20:freechips.rocketchip.system.DefaultRV32Config.fir@147747.4]
  reg [31:0] _RAND_73;
  reg  reg_pmp_6_cfg_x; // @[CSR.scala 351:20:freechips.rocketchip.system.DefaultRV32Config.fir@147747.4]
  reg [31:0] _RAND_74;
  reg  reg_pmp_6_cfg_w; // @[CSR.scala 351:20:freechips.rocketchip.system.DefaultRV32Config.fir@147747.4]
  reg [31:0] _RAND_75;
  reg  reg_pmp_6_cfg_r; // @[CSR.scala 351:20:freechips.rocketchip.system.DefaultRV32Config.fir@147747.4]
  reg [31:0] _RAND_76;
  reg [29:0] reg_pmp_6_addr; // @[CSR.scala 351:20:freechips.rocketchip.system.DefaultRV32Config.fir@147747.4]
  reg [31:0] _RAND_77;
  reg  reg_pmp_7_cfg_l; // @[CSR.scala 351:20:freechips.rocketchip.system.DefaultRV32Config.fir@147747.4]
  reg [31:0] _RAND_78;
  reg [1:0] reg_pmp_7_cfg_a; // @[CSR.scala 351:20:freechips.rocketchip.system.DefaultRV32Config.fir@147747.4]
  reg [31:0] _RAND_79;
  reg  reg_pmp_7_cfg_x; // @[CSR.scala 351:20:freechips.rocketchip.system.DefaultRV32Config.fir@147747.4]
  reg [31:0] _RAND_80;
  reg  reg_pmp_7_cfg_w; // @[CSR.scala 351:20:freechips.rocketchip.system.DefaultRV32Config.fir@147747.4]
  reg [31:0] _RAND_81;
  reg  reg_pmp_7_cfg_r; // @[CSR.scala 351:20:freechips.rocketchip.system.DefaultRV32Config.fir@147747.4]
  reg [31:0] _RAND_82;
  reg [29:0] reg_pmp_7_addr; // @[CSR.scala 351:20:freechips.rocketchip.system.DefaultRV32Config.fir@147747.4]
  reg [31:0] _RAND_83;
  reg [31:0] reg_mie; // @[CSR.scala 353:20:freechips.rocketchip.system.DefaultRV32Config.fir@147748.4]
  reg [31:0] _RAND_84;
  reg  reg_mip_seip; // @[CSR.scala 362:20:freechips.rocketchip.system.DefaultRV32Config.fir@147755.4]
  reg [31:0] _RAND_85;
  reg  reg_mip_stip; // @[CSR.scala 362:20:freechips.rocketchip.system.DefaultRV32Config.fir@147755.4]
  reg [31:0] _RAND_86;
  reg  reg_mip_ssip; // @[CSR.scala 362:20:freechips.rocketchip.system.DefaultRV32Config.fir@147755.4]
  reg [31:0] _RAND_87;
  reg [31:0] reg_mepc; // @[CSR.scala 363:21:freechips.rocketchip.system.DefaultRV32Config.fir@147756.4]
  reg [31:0] _RAND_88;
  reg [31:0] reg_mcause; // @[CSR.scala 364:23:freechips.rocketchip.system.DefaultRV32Config.fir@147757.4]
  reg [31:0] _RAND_89;
  reg [31:0] reg_mtval; // @[CSR.scala 365:22:freechips.rocketchip.system.DefaultRV32Config.fir@147758.4]
  reg [31:0] _RAND_90;
  reg [31:0] reg_mscratch; // @[CSR.scala 366:25:freechips.rocketchip.system.DefaultRV32Config.fir@147759.4]
  reg [31:0] _RAND_91;
  reg [31:0] reg_mtvec; // @[CSR.scala 369:27:freechips.rocketchip.system.DefaultRV32Config.fir@147760.4]
  reg [31:0] _RAND_92;
  reg [31:0] reg_mcounteren; // @[CSR.scala 375:18:freechips.rocketchip.system.DefaultRV32Config.fir@147761.4]
  reg [31:0] _RAND_93;
  wire [31:0] read_mcounteren; // @[CSR.scala 376:30:freechips.rocketchip.system.DefaultRV32Config.fir@147762.4]
  reg [31:0] reg_scounteren; // @[CSR.scala 379:18:freechips.rocketchip.system.DefaultRV32Config.fir@147764.4]
  reg [31:0] _RAND_94;
  wire [31:0] read_scounteren; // @[CSR.scala 380:28:freechips.rocketchip.system.DefaultRV32Config.fir@147765.4]
  reg [31:0] reg_sepc; // @[CSR.scala 383:21:freechips.rocketchip.system.DefaultRV32Config.fir@147767.4]
  reg [31:0] _RAND_95;
  reg [31:0] reg_scause; // @[CSR.scala 384:23:freechips.rocketchip.system.DefaultRV32Config.fir@147768.4]
  reg [31:0] _RAND_96;
  reg [31:0] reg_stval; // @[CSR.scala 385:22:freechips.rocketchip.system.DefaultRV32Config.fir@147769.4]
  reg [31:0] _RAND_97;
  reg [31:0] reg_sscratch; // @[CSR.scala 386:25:freechips.rocketchip.system.DefaultRV32Config.fir@147770.4]
  reg [31:0] _RAND_98;
  reg [31:0] reg_stvec; // @[CSR.scala 387:22:freechips.rocketchip.system.DefaultRV32Config.fir@147771.4]
  reg [31:0] _RAND_99;
  reg  reg_satp_mode; // @[CSR.scala 388:21:freechips.rocketchip.system.DefaultRV32Config.fir@147772.4]
  reg [31:0] _RAND_100;
  reg [21:0] reg_satp_ppn; // @[CSR.scala 388:21:freechips.rocketchip.system.DefaultRV32Config.fir@147772.4]
  reg [31:0] _RAND_101;
  reg  reg_wfi; // @[CSR.scala 389:50:freechips.rocketchip.system.DefaultRV32Config.fir@147773.4]
  reg [31:0] _RAND_102;
  reg [4:0] reg_fflags; // @[CSR.scala 391:23:freechips.rocketchip.system.DefaultRV32Config.fir@147774.4]
  reg [31:0] _RAND_103;
  reg [2:0] reg_frm; // @[CSR.scala 392:20:freechips.rocketchip.system.DefaultRV32Config.fir@147775.4]
  reg [31:0] _RAND_104;
  reg [5:0] _T_86; // @[Counters.scala 46:37:freechips.rocketchip.system.DefaultRV32Config.fir@147776.4]
  reg [31:0] _RAND_105;
  wire [5:0] _GEN_495; // @[Counters.scala 47:33:freechips.rocketchip.system.DefaultRV32Config.fir@147777.4]
  wire [6:0] _T_87; // @[Counters.scala 47:33:freechips.rocketchip.system.DefaultRV32Config.fir@147777.4]
  reg [57:0] _T_88; // @[Counters.scala 51:27:freechips.rocketchip.system.DefaultRV32Config.fir@147779.4]
  reg [63:0] _RAND_106;
  wire  _T_89; // @[Counters.scala 52:20:freechips.rocketchip.system.DefaultRV32Config.fir@147780.4]
  wire [57:0] _T_91; // @[Counters.scala 52:43:freechips.rocketchip.system.DefaultRV32Config.fir@147783.6]
  wire [63:0] _T_92; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@147786.4]
  wire  _T_93; // @[CSR.scala 399:103:freechips.rocketchip.system.DefaultRV32Config.fir@147787.4]
  reg [5:0] _T_94; // @[Counters.scala 46:37:freechips.rocketchip.system.DefaultRV32Config.fir@147788.4]
  reg [31:0] _RAND_107;
  wire [5:0] _GEN_496; // @[Counters.scala 47:33:freechips.rocketchip.system.DefaultRV32Config.fir@147789.4]
  wire [6:0] _T_95; // @[Counters.scala 47:33:freechips.rocketchip.system.DefaultRV32Config.fir@147789.4]
  reg [57:0] _T_96; // @[Counters.scala 51:27:freechips.rocketchip.system.DefaultRV32Config.fir@147791.4]
  reg [63:0] _RAND_108;
  wire  _T_97; // @[Counters.scala 52:20:freechips.rocketchip.system.DefaultRV32Config.fir@147792.4]
  wire [57:0] _T_99; // @[Counters.scala 52:43:freechips.rocketchip.system.DefaultRV32Config.fir@147795.6]
  wire [63:0] _T_100; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@147798.4]
  wire  mip_seip; // @[CSR.scala 410:57:freechips.rocketchip.system.DefaultRV32Config.fir@147805.4]
  wire [7:0] _T_108; // @[CSR.scala 412:22:freechips.rocketchip.system.DefaultRV32Config.fir@147814.4]
  wire [15:0] _T_116; // @[CSR.scala 412:22:freechips.rocketchip.system.DefaultRV32Config.fir@147822.4]
  wire [15:0] read_mip; // @[CSR.scala 412:29:freechips.rocketchip.system.DefaultRV32Config.fir@147823.4]
  wire [31:0] _GEN_497; // @[CSR.scala 415:56:freechips.rocketchip.system.DefaultRV32Config.fir@147824.4]
  wire [31:0] pending_interrupts; // @[CSR.scala 415:56:freechips.rocketchip.system.DefaultRV32Config.fir@147824.4]
  wire [14:0] d_interrupts; // @[CSR.scala 416:42:freechips.rocketchip.system.DefaultRV32Config.fir@147826.4]
  wire  _T_119; // @[CSR.scala 417:51:freechips.rocketchip.system.DefaultRV32Config.fir@147828.4]
  wire [31:0] _T_120; // @[CSR.scala 417:73:freechips.rocketchip.system.DefaultRV32Config.fir@147829.4]
  wire [31:0] _T_121; // @[CSR.scala 417:93:freechips.rocketchip.system.DefaultRV32Config.fir@147830.4]
  wire [31:0] _T_122; // @[CSR.scala 417:71:freechips.rocketchip.system.DefaultRV32Config.fir@147831.4]
  wire [31:0] m_interrupts; // @[CSR.scala 417:25:freechips.rocketchip.system.DefaultRV32Config.fir@147832.4]
  wire  _T_123; // @[CSR.scala 418:42:freechips.rocketchip.system.DefaultRV32Config.fir@147833.4]
  wire  _T_124; // @[CSR.scala 418:70:freechips.rocketchip.system.DefaultRV32Config.fir@147834.4]
  wire  _T_125; // @[CSR.scala 418:80:freechips.rocketchip.system.DefaultRV32Config.fir@147835.4]
  wire  _T_126; // @[CSR.scala 418:50:freechips.rocketchip.system.DefaultRV32Config.fir@147836.4]
  wire [31:0] _T_127; // @[CSR.scala 418:120:freechips.rocketchip.system.DefaultRV32Config.fir@147837.4]
  wire [31:0] s_interrupts; // @[CSR.scala 418:25:freechips.rocketchip.system.DefaultRV32Config.fir@147838.4]
  wire  _T_128; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147839.4]
  wire  _T_129; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147840.4]
  wire  _T_130; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147841.4]
  wire  _T_131; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147842.4]
  wire  _T_132; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147843.4]
  wire  _T_133; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147844.4]
  wire  _T_134; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147845.4]
  wire  _T_135; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147846.4]
  wire  _T_136; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147847.4]
  wire  _T_137; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147848.4]
  wire  _T_138; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147849.4]
  wire  _T_139; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147850.4]
  wire  _T_140; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147851.4]
  wire  _T_141; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147852.4]
  wire  _T_142; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147853.4]
  wire  _T_143; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147854.4]
  wire  _T_144; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147855.4]
  wire  _T_145; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147856.4]
  wire  _T_146; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147857.4]
  wire  _T_147; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147858.4]
  wire  _T_148; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147859.4]
  wire  _T_149; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147860.4]
  wire  _T_150; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147861.4]
  wire  _T_151; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147862.4]
  wire  _T_152; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147863.4]
  wire  _T_153; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147864.4]
  wire  _T_154; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147865.4]
  wire  _T_155; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147866.4]
  wire  _T_156; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147867.4]
  wire  _T_157; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147868.4]
  wire  _T_158; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147869.4]
  wire  _T_159; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147870.4]
  wire  _T_160; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147871.4]
  wire  _T_161; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147872.4]
  wire  _T_162; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147873.4]
  wire  _T_163; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147874.4]
  wire  _T_164; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147875.4]
  wire  _T_165; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147876.4]
  wire  _T_166; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147877.4]
  wire  _T_167; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147878.4]
  wire  _T_168; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147879.4]
  wire  _T_169; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147880.4]
  wire  _T_170; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147881.4]
  wire  _T_171; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147882.4]
  wire  _T_172; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147883.4]
  wire  _T_173; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147884.4]
  wire  _T_174; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147885.4]
  wire  _T_175; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147886.4]
  wire  _T_176; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147887.4]
  wire  _T_177; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147888.4]
  wire  _T_178; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147889.4]
  wire  _T_179; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147890.4]
  wire  _T_180; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147891.4]
  wire  _T_181; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147892.4]
  wire  _T_182; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147893.4]
  wire  _T_183; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147894.4]
  wire  _T_184; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147895.4]
  wire  _T_185; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147896.4]
  wire  _T_186; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147897.4]
  wire  _T_187; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147898.4]
  wire  _T_188; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147899.4]
  wire  _T_189; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147900.4]
  wire  _T_190; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147901.4]
  wire  _T_191; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147902.4]
  wire  _T_192; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147903.4]
  wire  _T_193; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147904.4]
  wire  _T_194; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147905.4]
  wire  _T_195; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147906.4]
  wire  _T_196; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147907.4]
  wire  _T_197; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147908.4]
  wire  _T_198; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147909.4]
  wire  _T_199; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147910.4]
  wire  _T_200; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147911.4]
  wire  _T_201; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147912.4]
  wire  anyInterrupt; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147913.4]
  wire [2:0] _T_240; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147952.4]
  wire [3:0] _T_241; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147953.4]
  wire [3:0] _T_242; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147954.4]
  wire [3:0] _T_243; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147955.4]
  wire [3:0] _T_244; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147956.4]
  wire [3:0] _T_245; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147957.4]
  wire [3:0] _T_246; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147958.4]
  wire [3:0] _T_247; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147959.4]
  wire [3:0] _T_248; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147960.4]
  wire [3:0] _T_249; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147961.4]
  wire [3:0] _T_250; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147962.4]
  wire [3:0] _T_251; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147963.4]
  wire [3:0] _T_252; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147964.4]
  wire [3:0] _T_253; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147965.4]
  wire [3:0] _T_254; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147966.4]
  wire [3:0] _T_255; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147967.4]
  wire [3:0] _T_256; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147968.4]
  wire [3:0] _T_257; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147969.4]
  wire [3:0] _T_258; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147970.4]
  wire [3:0] _T_259; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147971.4]
  wire [3:0] _T_260; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147972.4]
  wire [3:0] _T_261; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147973.4]
  wire [3:0] _T_262; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147974.4]
  wire [3:0] _T_263; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147975.4]
  wire [3:0] _T_264; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147976.4]
  wire [3:0] _T_265; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147977.4]
  wire [3:0] _T_266; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147978.4]
  wire [3:0] _T_267; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147979.4]
  wire [3:0] _T_268; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147980.4]
  wire [3:0] _T_269; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147981.4]
  wire [3:0] _T_270; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147982.4]
  wire [3:0] _T_271; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147983.4]
  wire [3:0] _T_272; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147984.4]
  wire [3:0] _T_273; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147985.4]
  wire [3:0] _T_274; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147986.4]
  wire [3:0] _T_275; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147987.4]
  wire [3:0] whichInterrupt; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147988.4]
  wire [31:0] _GEN_498; // @[CSR.scala 421:43:freechips.rocketchip.system.DefaultRV32Config.fir@147989.4]
  wire  _T_277; // @[CSR.scala 422:36:freechips.rocketchip.system.DefaultRV32Config.fir@147991.4]
  wire  _T_278; // @[CSR.scala 422:33:freechips.rocketchip.system.DefaultRV32Config.fir@147992.4]
  wire  _T_279; // @[CSR.scala 422:51:freechips.rocketchip.system.DefaultRV32Config.fir@147993.4]
  wire  _T_280; // @[CSR.scala 422:88:freechips.rocketchip.system.DefaultRV32Config.fir@147994.4]
  wire  _T_281; // @[CSR.scala 422:76:freechips.rocketchip.system.DefaultRV32Config.fir@147995.4]
  wire  _T_284; // @[PMP.scala 57:31:freechips.rocketchip.system.DefaultRV32Config.fir@148003.4]
  wire [30:0] _T_285; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@148004.4]
  wire [30:0] _T_288; // @[PMP.scala 58:23:freechips.rocketchip.system.DefaultRV32Config.fir@148007.4]
  wire [30:0] _T_289; // @[PMP.scala 58:16:freechips.rocketchip.system.DefaultRV32Config.fir@148008.4]
  wire [30:0] _T_290; // @[PMP.scala 58:14:freechips.rocketchip.system.DefaultRV32Config.fir@148009.4]
  wire [32:0] _T_291; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@148010.4]
  wire  _T_293; // @[PMP.scala 57:31:freechips.rocketchip.system.DefaultRV32Config.fir@148015.4]
  wire [30:0] _T_294; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@148016.4]
  wire [30:0] _T_297; // @[PMP.scala 58:23:freechips.rocketchip.system.DefaultRV32Config.fir@148019.4]
  wire [30:0] _T_298; // @[PMP.scala 58:16:freechips.rocketchip.system.DefaultRV32Config.fir@148020.4]
  wire [30:0] _T_299; // @[PMP.scala 58:14:freechips.rocketchip.system.DefaultRV32Config.fir@148021.4]
  wire [32:0] _T_300; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@148022.4]
  wire  _T_302; // @[PMP.scala 57:31:freechips.rocketchip.system.DefaultRV32Config.fir@148027.4]
  wire [30:0] _T_303; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@148028.4]
  wire [30:0] _T_306; // @[PMP.scala 58:23:freechips.rocketchip.system.DefaultRV32Config.fir@148031.4]
  wire [30:0] _T_307; // @[PMP.scala 58:16:freechips.rocketchip.system.DefaultRV32Config.fir@148032.4]
  wire [30:0] _T_308; // @[PMP.scala 58:14:freechips.rocketchip.system.DefaultRV32Config.fir@148033.4]
  wire [32:0] _T_309; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@148034.4]
  wire  _T_311; // @[PMP.scala 57:31:freechips.rocketchip.system.DefaultRV32Config.fir@148039.4]
  wire [30:0] _T_312; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@148040.4]
  wire [30:0] _T_315; // @[PMP.scala 58:23:freechips.rocketchip.system.DefaultRV32Config.fir@148043.4]
  wire [30:0] _T_316; // @[PMP.scala 58:16:freechips.rocketchip.system.DefaultRV32Config.fir@148044.4]
  wire [30:0] _T_317; // @[PMP.scala 58:14:freechips.rocketchip.system.DefaultRV32Config.fir@148045.4]
  wire [32:0] _T_318; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@148046.4]
  wire  _T_320; // @[PMP.scala 57:31:freechips.rocketchip.system.DefaultRV32Config.fir@148051.4]
  wire [30:0] _T_321; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@148052.4]
  wire [30:0] _T_324; // @[PMP.scala 58:23:freechips.rocketchip.system.DefaultRV32Config.fir@148055.4]
  wire [30:0] _T_325; // @[PMP.scala 58:16:freechips.rocketchip.system.DefaultRV32Config.fir@148056.4]
  wire [30:0] _T_326; // @[PMP.scala 58:14:freechips.rocketchip.system.DefaultRV32Config.fir@148057.4]
  wire [32:0] _T_327; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@148058.4]
  wire  _T_329; // @[PMP.scala 57:31:freechips.rocketchip.system.DefaultRV32Config.fir@148063.4]
  wire [30:0] _T_330; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@148064.4]
  wire [30:0] _T_333; // @[PMP.scala 58:23:freechips.rocketchip.system.DefaultRV32Config.fir@148067.4]
  wire [30:0] _T_334; // @[PMP.scala 58:16:freechips.rocketchip.system.DefaultRV32Config.fir@148068.4]
  wire [30:0] _T_335; // @[PMP.scala 58:14:freechips.rocketchip.system.DefaultRV32Config.fir@148069.4]
  wire [32:0] _T_336; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@148070.4]
  wire  _T_338; // @[PMP.scala 57:31:freechips.rocketchip.system.DefaultRV32Config.fir@148075.4]
  wire [30:0] _T_339; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@148076.4]
  wire [30:0] _T_342; // @[PMP.scala 58:23:freechips.rocketchip.system.DefaultRV32Config.fir@148079.4]
  wire [30:0] _T_343; // @[PMP.scala 58:16:freechips.rocketchip.system.DefaultRV32Config.fir@148080.4]
  wire [30:0] _T_344; // @[PMP.scala 58:14:freechips.rocketchip.system.DefaultRV32Config.fir@148081.4]
  wire [32:0] _T_345; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@148082.4]
  wire  _T_347; // @[PMP.scala 57:31:freechips.rocketchip.system.DefaultRV32Config.fir@148087.4]
  wire [30:0] _T_348; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@148088.4]
  wire [30:0] _T_351; // @[PMP.scala 58:23:freechips.rocketchip.system.DefaultRV32Config.fir@148091.4]
  wire [30:0] _T_352; // @[PMP.scala 58:16:freechips.rocketchip.system.DefaultRV32Config.fir@148092.4]
  wire [30:0] _T_353; // @[PMP.scala 58:14:freechips.rocketchip.system.DefaultRV32Config.fir@148093.4]
  wire [32:0] _T_354; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@148094.4]
  reg [31:0] reg_misa; // @[CSR.scala 440:21:freechips.rocketchip.system.DefaultRV32Config.fir@148104.4]
  reg [31:0] _RAND_109;
  wire [6:0] _T_360; // @[CSR.scala 441:38:freechips.rocketchip.system.DefaultRV32Config.fir@148110.4]
  wire [18:0] _T_368; // @[CSR.scala 441:38:freechips.rocketchip.system.DefaultRV32Config.fir@148118.4]
  wire [14:0] _T_375; // @[CSR.scala 441:38:freechips.rocketchip.system.DefaultRV32Config.fir@148125.4]
  wire [101:0] _T_384; // @[CSR.scala 441:38:freechips.rocketchip.system.DefaultRV32Config.fir@148134.4]
  wire [31:0] read_mstatus; // @[CSR.scala 441:40:freechips.rocketchip.system.DefaultRV32Config.fir@148135.4]
  wire  _T_385; // @[CSR.scala 1061:41:freechips.rocketchip.system.DefaultRV32Config.fir@148136.4]
  wire [6:0] _T_386; // @[CSR.scala 1061:39:freechips.rocketchip.system.DefaultRV32Config.fir@148137.4]
  wire [31:0] _T_388; // @[package.scala 131:41:freechips.rocketchip.system.DefaultRV32Config.fir@148139.4]
  wire [31:0] _T_389; // @[package.scala 131:37:freechips.rocketchip.system.DefaultRV32Config.fir@148140.4]
  wire [31:0] read_mtvec; // @[package.scala 131:35:freechips.rocketchip.system.DefaultRV32Config.fir@148141.4]
  wire  _T_390; // @[CSR.scala 1061:41:freechips.rocketchip.system.DefaultRV32Config.fir@148142.4]
  wire [6:0] _T_391; // @[CSR.scala 1061:39:freechips.rocketchip.system.DefaultRV32Config.fir@148143.4]
  wire [31:0] _T_393; // @[package.scala 131:41:freechips.rocketchip.system.DefaultRV32Config.fir@148145.4]
  wire [31:0] _T_394; // @[package.scala 131:37:freechips.rocketchip.system.DefaultRV32Config.fir@148146.4]
  wire [31:0] read_stvec; // @[package.scala 131:35:freechips.rocketchip.system.DefaultRV32Config.fir@148147.4]
  wire [6:0] _T_400; // @[CSR.scala 447:48:freechips.rocketchip.system.DefaultRV32Config.fir@148153.4]
  wire [31:0] _T_408; // @[CSR.scala 447:48:freechips.rocketchip.system.DefaultRV32Config.fir@148161.4]
  wire [31:0] _T_409; // @[CSR.scala 1060:28:freechips.rocketchip.system.DefaultRV32Config.fir@148162.4]
  wire  _T_410; // @[CSR.scala 1060:45:freechips.rocketchip.system.DefaultRV32Config.fir@148163.4]
  wire [1:0] _T_411; // @[CSR.scala 1060:36:freechips.rocketchip.system.DefaultRV32Config.fir@148164.4]
  wire [31:0] _GEN_499; // @[CSR.scala 1060:31:freechips.rocketchip.system.DefaultRV32Config.fir@148165.4]
  wire [31:0] _T_412; // @[CSR.scala 1060:31:freechips.rocketchip.system.DefaultRV32Config.fir@148165.4]
  wire [31:0] _T_413; // @[CSR.scala 1060:26:freechips.rocketchip.system.DefaultRV32Config.fir@148166.4]
  wire [11:0] _T_419; // @[CSR.scala 461:27:freechips.rocketchip.system.DefaultRV32Config.fir@148172.4]
  wire [31:0] _T_426; // @[CSR.scala 461:27:freechips.rocketchip.system.DefaultRV32Config.fir@148179.4]
  wire [31:0] _T_427; // @[CSR.scala 1060:28:freechips.rocketchip.system.DefaultRV32Config.fir@148180.4]
  wire [31:0] _T_430; // @[CSR.scala 1060:31:freechips.rocketchip.system.DefaultRV32Config.fir@148183.4]
  wire [31:0] _T_431; // @[CSR.scala 1060:26:freechips.rocketchip.system.DefaultRV32Config.fir@148184.4]
  wire [7:0] _T_432; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@148185.4]
  wire [8:0] _T_434; // @[CSR.scala 465:44:freechips.rocketchip.system.DefaultRV32Config.fir@148187.4]
  wire [9:0] read_fcsr; // @[CSR.scala 465:78:freechips.rocketchip.system.DefaultRV32Config.fir@148189.4]
  wire [31:0] _T_494; // @[CSR.scala 504:50:freechips.rocketchip.system.DefaultRV32Config.fir@148248.4]
  wire [31:0] _T_495; // @[CSR.scala 505:54:freechips.rocketchip.system.DefaultRV32Config.fir@148249.4]
  wire [31:0] _T_498; // @[CSR.scala 514:28:freechips.rocketchip.system.DefaultRV32Config.fir@148252.4]
  wire [31:0] _T_499; // @[CSR.scala 515:29:freechips.rocketchip.system.DefaultRV32Config.fir@148253.4]
  wire [6:0] _T_539; // @[CSR.scala 529:57:freechips.rocketchip.system.DefaultRV32Config.fir@148340.4]
  wire [18:0] _T_547; // @[CSR.scala 529:57:freechips.rocketchip.system.DefaultRV32Config.fir@148348.4]
  wire [14:0] _T_554; // @[CSR.scala 529:57:freechips.rocketchip.system.DefaultRV32Config.fir@148355.4]
  wire [101:0] _T_563; // @[CSR.scala 529:57:freechips.rocketchip.system.DefaultRV32Config.fir@148364.4]
  wire [31:0] _T_564; // @[CSR.scala 529:60:freechips.rocketchip.system.DefaultRV32Config.fir@148365.4]
  wire [31:0] _T_566; // @[CSR.scala 535:43:freechips.rocketchip.system.DefaultRV32Config.fir@148367.4]
  wire [31:0] _T_567; // @[CSR.scala 1060:28:freechips.rocketchip.system.DefaultRV32Config.fir@148368.4]
  wire [31:0] _T_570; // @[CSR.scala 1060:31:freechips.rocketchip.system.DefaultRV32Config.fir@148371.4]
  wire [31:0] _T_571; // @[CSR.scala 1060:26:freechips.rocketchip.system.DefaultRV32Config.fir@148372.4]
  wire [7:0] _T_586; // @[package.scala 36:38:freechips.rocketchip.system.DefaultRV32Config.fir@148398.4]
  wire [7:0] _T_596; // @[package.scala 36:38:freechips.rocketchip.system.DefaultRV32Config.fir@148408.4]
  wire [15:0] _T_602; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@148414.4]
  wire [31:0] _T_604; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@148416.4]
  wire [7:0] _T_609; // @[package.scala 36:38:freechips.rocketchip.system.DefaultRV32Config.fir@148421.4]
  wire [7:0] _T_619; // @[package.scala 36:38:freechips.rocketchip.system.DefaultRV32Config.fir@148431.4]
  wire [15:0] _T_625; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@148437.4]
  wire [31:0] _T_627; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@148439.4]
  wire  sel_tdata1; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148491.4]
  wire  sel_tdata2; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148492.4]
  wire  sel_misa; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148493.4]
  wire  sel_mstatus; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148494.4]
  wire  sel_mtvec; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148495.4]
  wire  sel_mip; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148496.4]
  wire  sel_mie; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148497.4]
  wire  sel_mscratch; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148498.4]
  wire  sel_mepc; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148499.4]
  wire  sel_mtval; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148500.4]
  wire  sel_mcause; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148501.4]
  wire  sel_dcsr; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148503.4]
  wire  sel_dpc; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148504.4]
  wire  sel_dscratch; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148505.4]
  wire  sel_fflags; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148506.4]
  wire  sel_frm; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148507.4]
  wire  sel_fcsr; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148508.4]
  wire  sel_mcycle; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148509.4]
  wire  sel_minstret; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148510.4]
  wire  sel_mcounteren; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148656.4]
  wire  _T_841; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148657.4]
  wire  _T_842; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148658.4]
  wire  sel_mcycleh; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148659.4]
  wire  sel_minstreth; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148660.4]
  wire  _T_845; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148661.4]
  wire  _T_846; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148662.4]
  wire  sel_sstatus; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148663.4]
  wire  sel_sip; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148664.4]
  wire  sel_sie; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148665.4]
  wire  sel_sscratch; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148666.4]
  wire  sel_scause; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148667.4]
  wire  sel_stval; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148668.4]
  wire  sel_satp; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148669.4]
  wire  sel_sepc; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148670.4]
  wire  sel_stvec; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148671.4]
  wire  sel_scounteren; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148672.4]
  wire  sel_mideleg; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148673.4]
  wire  sel_medeleg; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148674.4]
  wire  sel_pmp_cfg_0; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148675.4]
  wire  sel_pmp_cfg_1; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148676.4]
  wire  sel_pmp_addr_0; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148679.4]
  wire  sel_pmp_addr_1; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148680.4]
  wire  sel_pmp_addr_2; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148681.4]
  wire  sel_pmp_addr_3; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148682.4]
  wire  sel_pmp_addr_4; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148683.4]
  wire  sel_pmp_addr_5; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148684.4]
  wire  sel_pmp_addr_6; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148685.4]
  wire  sel_pmp_addr_7; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148686.4]
  wire  _T_880; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148696.4]
  wire  _T_882; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148698.4]
  wire  _T_883; // @[CSR.scala 1038:13:freechips.rocketchip.system.DefaultRV32Config.fir@148699.4]
  wire [31:0] _T_884; // @[CSR.scala 1038:9:freechips.rocketchip.system.DefaultRV32Config.fir@148700.4]
  wire [31:0] _T_885; // @[CSR.scala 1038:34:freechips.rocketchip.system.DefaultRV32Config.fir@148701.4]
  wire [1:0] _T_886; // @[CSR.scala 1038:53:freechips.rocketchip.system.DefaultRV32Config.fir@148702.4]
  wire  _T_887; // @[CSR.scala 1038:59:freechips.rocketchip.system.DefaultRV32Config.fir@148703.4]
  wire [31:0] _T_888; // @[CSR.scala 1038:49:freechips.rocketchip.system.DefaultRV32Config.fir@148704.4]
  wire [31:0] _T_889; // @[CSR.scala 1038:45:freechips.rocketchip.system.DefaultRV32Config.fir@148705.4]
  wire [31:0] wdata; // @[CSR.scala 1038:43:freechips.rocketchip.system.DefaultRV32Config.fir@148706.4]
  wire [31:0] _T_903; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@148721.4]
  wire  _T_904; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@148722.4]
  wire [31:0] _T_906; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@148724.4]
  wire  _T_907; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@148725.4]
  wire  insn_cease; // @[CSR.scala 581:95:freechips.rocketchip.system.DefaultRV32Config.fir@148737.4]
  wire  insn_wfi; // @[CSR.scala 581:95:freechips.rocketchip.system.DefaultRV32Config.fir@148739.4]
  wire [31:0] _T_918; // @[CSR.scala 588:30:freechips.rocketchip.system.DefaultRV32Config.fir@148742.4]
  wire [31:0] _T_925; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@148749.4]
  wire  _T_926; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@148750.4]
  wire [31:0] _T_927; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@148751.4]
  wire  _T_928; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@148752.4]
  wire  _T_930; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@148754.4]
  wire [31:0] _T_934; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@148758.4]
  wire  _T_935; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@148759.4]
  wire [31:0] _T_937; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@148761.4]
  wire  _T_938; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@148762.4]
  wire  _T_946; // @[CSR.scala 590:55:freechips.rocketchip.system.DefaultRV32Config.fir@148770.4]
  wire  _T_948; // @[CSR.scala 590:66:freechips.rocketchip.system.DefaultRV32Config.fir@148772.4]
  wire  _T_949; // @[CSR.scala 590:63:freechips.rocketchip.system.DefaultRV32Config.fir@148773.4]
  wire  _T_952; // @[CSR.scala 591:73:freechips.rocketchip.system.DefaultRV32Config.fir@148776.4]
  wire  _T_953; // @[CSR.scala 591:70:freechips.rocketchip.system.DefaultRV32Config.fir@148777.4]
  wire  _T_956; // @[CSR.scala 592:67:freechips.rocketchip.system.DefaultRV32Config.fir@148780.4]
  wire  _T_957; // @[CSR.scala 592:64:freechips.rocketchip.system.DefaultRV32Config.fir@148781.4]
  wire [4:0] _T_958; // @[CSR.scala 593:34:freechips.rocketchip.system.DefaultRV32Config.fir@148782.4]
  wire [31:0] _T_960; // @[CSR.scala 594:68:freechips.rocketchip.system.DefaultRV32Config.fir@148784.4]
  wire  _T_961; // @[CSR.scala 594:68:freechips.rocketchip.system.DefaultRV32Config.fir@148785.4]
  wire  _T_962; // @[CSR.scala 594:50:freechips.rocketchip.system.DefaultRV32Config.fir@148786.4]
  wire  _T_963; // @[CSR.scala 595:36:freechips.rocketchip.system.DefaultRV32Config.fir@148787.4]
  wire [31:0] _T_965; // @[CSR.scala 595:63:freechips.rocketchip.system.DefaultRV32Config.fir@148789.4]
  wire  _T_966; // @[CSR.scala 595:63:freechips.rocketchip.system.DefaultRV32Config.fir@148790.4]
  wire  _T_967; // @[CSR.scala 595:45:freechips.rocketchip.system.DefaultRV32Config.fir@148791.4]
  wire  _T_968; // @[CSR.scala 594:84:freechips.rocketchip.system.DefaultRV32Config.fir@148792.4]
  wire  _T_969; // @[CSR.scala 596:39:freechips.rocketchip.system.DefaultRV32Config.fir@148793.4]
  wire  _T_970; // @[CSR.scala 596:57:freechips.rocketchip.system.DefaultRV32Config.fir@148794.4]
  wire  _T_971; // @[CSR.scala 596:48:freechips.rocketchip.system.DefaultRV32Config.fir@148795.4]
  wire [11:0] _T_977; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@148803.4]
  wire [1:0] _T_985; // @[CSR.scala 600:56:freechips.rocketchip.system.DefaultRV32Config.fir@148813.4]
  wire  _T_986; // @[CSR.scala 600:44:freechips.rocketchip.system.DefaultRV32Config.fir@148814.4]
  wire  _T_987; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148815.4]
  wire  _T_988; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148816.4]
  wire  _T_989; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148817.4]
  wire  _T_990; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148818.4]
  wire  _T_991; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148819.4]
  wire  _T_992; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148820.4]
  wire  _T_993; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148821.4]
  wire  _T_994; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148822.4]
  wire  _T_995; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148823.4]
  wire  _T_996; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148824.4]
  wire  _T_997; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148825.4]
  wire  _T_998; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148826.4]
  wire  _T_999; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148827.4]
  wire  _T_1000; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148828.4]
  wire  _T_1001; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148829.4]
  wire  _T_1002; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148830.4]
  wire  _T_1003; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148831.4]
  wire  _T_1004; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148832.4]
  wire  _T_1005; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148833.4]
  wire  _T_1006; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148834.4]
  wire  _T_1007; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148835.4]
  wire  _T_1008; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148836.4]
  wire  _T_1009; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148837.4]
  wire  _T_1010; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148838.4]
  wire  _T_1011; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148839.4]
  wire  _T_1012; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148840.4]
  wire  _T_1013; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148841.4]
  wire  _T_1014; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148842.4]
  wire  _T_1015; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148843.4]
  wire  _T_1016; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148844.4]
  wire  _T_1017; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148845.4]
  wire  _T_1018; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148846.4]
  wire  _T_1019; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148847.4]
  wire  _T_1020; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148848.4]
  wire  _T_1021; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148849.4]
  wire  _T_1022; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148850.4]
  wire  _T_1023; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148851.4]
  wire  _T_1024; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148852.4]
  wire  _T_1025; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148853.4]
  wire  _T_1026; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148854.4]
  wire  _T_1027; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148855.4]
  wire  _T_1028; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148856.4]
  wire  _T_1029; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148857.4]
  wire  _T_1030; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148858.4]
  wire  _T_1031; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148859.4]
  wire  _T_1032; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148860.4]
  wire  _T_1033; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148861.4]
  wire  _T_1034; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148862.4]
  wire  _T_1035; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148863.4]
  wire  _T_1036; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148864.4]
  wire  _T_1037; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148865.4]
  wire  _T_1038; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148866.4]
  wire  _T_1039; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148867.4]
  wire  _T_1040; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148868.4]
  wire  _T_1041; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148869.4]
  wire  _T_1042; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148870.4]
  wire  _T_1043; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148871.4]
  wire  _T_1044; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148872.4]
  wire  _T_1045; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148873.4]
  wire  _T_1046; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148874.4]
  wire  _T_1047; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148875.4]
  wire  _T_1048; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148876.4]
  wire  _T_1049; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148877.4]
  wire  _T_1050; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148878.4]
  wire  _T_1051; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148879.4]
  wire  _T_1052; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148880.4]
  wire  _T_1053; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148881.4]
  wire  _T_1054; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148882.4]
  wire  _T_1055; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148883.4]
  wire  _T_1056; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148884.4]
  wire  _T_1057; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148885.4]
  wire  _T_1058; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148886.4]
  wire  _T_1059; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148887.4]
  wire  _T_1060; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148888.4]
  wire  _T_1061; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148889.4]
  wire  _T_1062; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148890.4]
  wire  _T_1063; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148891.4]
  wire  _T_1064; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148892.4]
  wire  _T_1065; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148893.4]
  wire  _T_1066; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148894.4]
  wire  _T_1067; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148895.4]
  wire  _T_1068; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148896.4]
  wire  _T_1069; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148897.4]
  wire  _T_1070; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148898.4]
  wire  _T_1071; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148899.4]
  wire  _T_1072; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148900.4]
  wire  _T_1073; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148901.4]
  wire  _T_1074; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148902.4]
  wire  _T_1075; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148903.4]
  wire  _T_1076; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148904.4]
  wire  _T_1077; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148905.4]
  wire  _T_1078; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148906.4]
  wire  _T_1079; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148907.4]
  wire  _T_1080; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148908.4]
  wire  _T_1081; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148909.4]
  wire  _T_1082; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148910.4]
  wire  _T_1083; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148911.4]
  wire  _T_1084; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148912.4]
  wire  _T_1085; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148913.4]
  wire  _T_1086; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148914.4]
  wire  _T_1087; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148915.4]
  wire  _T_1088; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148916.4]
  wire  _T_1089; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148917.4]
  wire  _T_1090; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148918.4]
  wire  _T_1091; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148919.4]
  wire  _T_1092; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148920.4]
  wire  _T_1093; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148921.4]
  wire  _T_1094; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148922.4]
  wire  _T_1095; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148923.4]
  wire  _T_1096; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148924.4]
  wire  _T_1097; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148925.4]
  wire  _T_1098; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148926.4]
  wire  _T_1099; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148927.4]
  wire  _T_1100; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148928.4]
  wire  _T_1101; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148929.4]
  wire  _T_1102; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148930.4]
  wire  _T_1103; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148931.4]
  wire  _T_1104; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148932.4]
  wire  _T_1105; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148933.4]
  wire  _T_1106; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148934.4]
  wire  _T_1107; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148935.4]
  wire  _T_1108; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148936.4]
  wire  _T_1109; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148937.4]
  wire  _T_1110; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148938.4]
  wire  _T_1111; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148939.4]
  wire  _T_1112; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148940.4]
  wire  _T_1113; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148941.4]
  wire  _T_1114; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148942.4]
  wire  _T_1115; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148943.4]
  wire  _T_1116; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148944.4]
  wire  _T_1117; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148945.4]
  wire  _T_1118; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148946.4]
  wire  _T_1119; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148947.4]
  wire  _T_1120; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148948.4]
  wire  _T_1121; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148949.4]
  wire  _T_1122; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148950.4]
  wire  _T_1123; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148951.4]
  wire  _T_1124; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148952.4]
  wire  _T_1125; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148953.4]
  wire  _T_1126; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148954.4]
  wire  _T_1127; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148955.4]
  wire  _T_1128; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148956.4]
  wire  _T_1129; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148957.4]
  wire  _T_1130; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148958.4]
  wire  _T_1131; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148959.4]
  wire  _T_1132; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148960.4]
  wire  _T_1133; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148961.4]
  wire  _T_1134; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148962.4]
  wire  _T_1135; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148963.4]
  wire  _T_1136; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148964.4]
  wire  _T_1137; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148965.4]
  wire  _T_1138; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148966.4]
  wire  _T_1139; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148967.4]
  wire  _T_1140; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148968.4]
  wire  _T_1141; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148969.4]
  wire  _T_1142; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148970.4]
  wire  _T_1143; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148971.4]
  wire  _T_1144; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148972.4]
  wire  _T_1145; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148973.4]
  wire  _T_1146; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148974.4]
  wire  _T_1147; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148975.4]
  wire  _T_1148; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148976.4]
  wire  _T_1149; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148977.4]
  wire  _T_1150; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148978.4]
  wire  _T_1151; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148979.4]
  wire  _T_1152; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148980.4]
  wire  _T_1153; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148981.4]
  wire  _T_1154; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148982.4]
  wire  _T_1155; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148983.4]
  wire  _T_1156; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148984.4]
  wire  _T_1157; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148985.4]
  wire  _T_1158; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148986.4]
  wire  _T_1159; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148987.4]
  wire  _T_1160; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148988.4]
  wire  _T_1161; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148989.4]
  wire  _T_1162; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148990.4]
  wire  _T_1163; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148991.4]
  wire  _T_1164; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148992.4]
  wire  _T_1165; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148993.4]
  wire  _T_1166; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148994.4]
  wire  _T_1167; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148995.4]
  wire  _T_1168; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148996.4]
  wire  _T_1169; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148997.4]
  wire  _T_1170; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148998.4]
  wire  _T_1171; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148999.4]
  wire  _T_1172; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@149000.4]
  wire  _T_1173; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@149001.4]
  wire  _T_1174; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@149002.4]
  wire  _T_1175; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@149003.4]
  wire  _T_1176; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@149004.4]
  wire  _T_1177; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@149005.4]
  wire  _T_1178; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@149006.4]
  wire  _T_1179; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@149007.4]
  wire  _T_1180; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@149008.4]
  wire  _T_1181; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@149009.4]
  wire  _T_1182; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@149010.4]
  wire  _T_1183; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@149011.4]
  wire  _T_1184; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@149012.4]
  wire  _T_1185; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@149013.4]
  wire  _T_1186; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@149014.4]
  wire  _T_1187; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@149015.4]
  wire  _T_1188; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@149016.4]
  wire  _T_1189; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@149017.4]
  wire  _T_1190; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@149018.4]
  wire  _T_1191; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@149019.4]
  wire  _T_1192; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@149020.4]
  wire  _T_1193; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@149021.4]
  wire  _T_1194; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@149022.4]
  wire  _T_1195; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@149023.4]
  wire  _T_1196; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149024.4]
  wire  _T_1197; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149025.4]
  wire  _T_1198; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149026.4]
  wire  _T_1199; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149027.4]
  wire  _T_1200; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149028.4]
  wire  _T_1201; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149029.4]
  wire  _T_1202; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149030.4]
  wire  _T_1203; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149031.4]
  wire  _T_1204; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149032.4]
  wire  _T_1205; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149033.4]
  wire  _T_1206; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149034.4]
  wire  _T_1207; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149035.4]
  wire  _T_1208; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149036.4]
  wire  _T_1209; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149037.4]
  wire  _T_1210; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149038.4]
  wire  _T_1211; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149039.4]
  wire  _T_1212; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149040.4]
  wire  _T_1213; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149041.4]
  wire  _T_1214; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149042.4]
  wire  _T_1215; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149043.4]
  wire  _T_1216; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149044.4]
  wire  _T_1217; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149045.4]
  wire  _T_1218; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149046.4]
  wire  _T_1219; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149047.4]
  wire  _T_1220; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149048.4]
  wire  _T_1221; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149049.4]
  wire  _T_1222; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149050.4]
  wire  _T_1223; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149051.4]
  wire  _T_1224; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149052.4]
  wire  _T_1225; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149053.4]
  wire  _T_1226; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149054.4]
  wire  _T_1227; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149055.4]
  wire  _T_1228; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149056.4]
  wire  _T_1229; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149057.4]
  wire  _T_1230; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149058.4]
  wire  _T_1231; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149059.4]
  wire  _T_1232; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149060.4]
  wire  _T_1233; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149061.4]
  wire  _T_1234; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149062.4]
  wire  _T_1235; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149063.4]
  wire  _T_1236; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149064.4]
  wire  _T_1237; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149065.4]
  wire  _T_1238; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149066.4]
  wire  _T_1239; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149067.4]
  wire  _T_1240; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149068.4]
  wire  _T_1241; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149069.4]
  wire  _T_1242; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149070.4]
  wire  _T_1243; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149071.4]
  wire  _T_1244; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149072.4]
  wire  _T_1245; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149073.4]
  wire  _T_1246; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149074.4]
  wire  _T_1247; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149075.4]
  wire  _T_1248; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149076.4]
  wire  _T_1249; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149077.4]
  wire  _T_1250; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149078.4]
  wire  _T_1251; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149079.4]
  wire  _T_1252; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149080.4]
  wire  _T_1253; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149081.4]
  wire  _T_1254; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149082.4]
  wire  _T_1255; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149083.4]
  wire  _T_1256; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149084.4]
  wire  _T_1257; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149085.4]
  wire  _T_1258; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149086.4]
  wire  _T_1259; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149087.4]
  wire  _T_1260; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149088.4]
  wire  _T_1261; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149089.4]
  wire  _T_1262; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149090.4]
  wire  _T_1263; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149091.4]
  wire  _T_1264; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149092.4]
  wire  _T_1265; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149093.4]
  wire  _T_1266; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149094.4]
  wire  _T_1267; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149095.4]
  wire  _T_1268; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149096.4]
  wire  _T_1269; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149097.4]
  wire  _T_1270; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149098.4]
  wire  _T_1271; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149099.4]
  wire  _T_1272; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149100.4]
  wire  _T_1273; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149101.4]
  wire  _T_1274; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149102.4]
  wire  _T_1275; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149103.4]
  wire  _T_1276; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149104.4]
  wire  _T_1277; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149105.4]
  wire  _T_1278; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149106.4]
  wire  _T_1279; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149107.4]
  wire  _T_1280; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149108.4]
  wire  _T_1281; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149109.4]
  wire  _T_1282; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149110.4]
  wire  _T_1283; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149111.4]
  wire  _T_1284; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149112.4]
  wire  _T_1285; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149113.4]
  wire  _T_1286; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149114.4]
  wire  _T_1287; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149115.4]
  wire  _T_1288; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149116.4]
  wire  _T_1289; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149117.4]
  wire  _T_1290; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149118.4]
  wire  _T_1291; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149119.4]
  wire  _T_1292; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149120.4]
  wire  _T_1293; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149121.4]
  wire  _T_1294; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149122.4]
  wire  _T_1295; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149123.4]
  wire  _T_1296; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149124.4]
  wire  _T_1297; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149125.4]
  wire  _T_1298; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149126.4]
  wire  _T_1299; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149127.4]
  wire  _T_1300; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149128.4]
  wire  _T_1301; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149129.4]
  wire  _T_1302; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149130.4]
  wire  _T_1303; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149131.4]
  wire  _T_1304; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149132.4]
  wire  _T_1305; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149133.4]
  wire  _T_1306; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149134.4]
  wire  _T_1307; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149135.4]
  wire  _T_1308; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149136.4]
  wire  _T_1309; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149137.4]
  wire  _T_1310; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149138.4]
  wire  _T_1311; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149139.4]
  wire  _T_1312; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149140.4]
  wire  _T_1313; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149141.4]
  wire  _T_1314; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149142.4]
  wire  _T_1315; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149143.4]
  wire  _T_1316; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149144.4]
  wire  _T_1317; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149145.4]
  wire  _T_1318; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149146.4]
  wire  _T_1319; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149147.4]
  wire  _T_1320; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149148.4]
  wire  _T_1321; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149149.4]
  wire  _T_1322; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149150.4]
  wire  _T_1323; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149151.4]
  wire  _T_1324; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149152.4]
  wire  _T_1325; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149153.4]
  wire  _T_1326; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149154.4]
  wire  _T_1327; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149155.4]
  wire  _T_1328; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149156.4]
  wire  _T_1329; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149157.4]
  wire  _T_1330; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149158.4]
  wire  _T_1331; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149159.4]
  wire  _T_1332; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149160.4]
  wire  _T_1333; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149161.4]
  wire  _T_1334; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149162.4]
  wire  _T_1335; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149163.4]
  wire  _T_1336; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149164.4]
  wire  _T_1337; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149165.4]
  wire  _T_1338; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149166.4]
  wire  _T_1339; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149167.4]
  wire  _T_1340; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149168.4]
  wire  _T_1341; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149169.4]
  wire  _T_1342; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149170.4]
  wire  _T_1343; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149171.4]
  wire  _T_1344; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149172.4]
  wire  _T_1345; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149173.4]
  wire  _T_1346; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149174.4]
  wire  _T_1347; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149175.4]
  wire  _T_1348; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149176.4]
  wire  _T_1349; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149177.4]
  wire  _T_1350; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149178.4]
  wire  _T_1351; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149179.4]
  wire  _T_1352; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149180.4]
  wire  _T_1353; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149181.4]
  wire  _T_1354; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149182.4]
  wire  _T_1355; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149183.4]
  wire  _T_1356; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149184.4]
  wire  _T_1357; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149185.4]
  wire  _T_1358; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149186.4]
  wire  _T_1359; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149187.4]
  wire  _T_1360; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149188.4]
  wire  _T_1361; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149189.4]
  wire  _T_1362; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149190.4]
  wire  _T_1363; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149191.4]
  wire  _T_1364; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149192.4]
  wire  _T_1365; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149193.4]
  wire  _T_1366; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149194.4]
  wire  _T_1367; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149195.4]
  wire  _T_1368; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149196.4]
  wire  _T_1369; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149197.4]
  wire  _T_1370; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149198.4]
  wire  _T_1371; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149199.4]
  wire  _T_1372; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149200.4]
  wire  _T_1373; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149201.4]
  wire  _T_1374; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149202.4]
  wire  _T_1375; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149203.4]
  wire  _T_1376; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149204.4]
  wire  _T_1377; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149205.4]
  wire  _T_1378; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149206.4]
  wire  _T_1379; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149207.4]
  wire  _T_1380; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149208.4]
  wire  _T_1381; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149209.4]
  wire  _T_1382; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149210.4]
  wire  _T_1383; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149211.4]
  wire  _T_1384; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149212.4]
  wire  _T_1385; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149213.4]
  wire  _T_1386; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149214.4]
  wire  _T_1387; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149215.4]
  wire  _T_1388; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149216.4]
  wire  _T_1389; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149217.4]
  wire  _T_1390; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149218.4]
  wire  _T_1391; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149219.4]
  wire  _T_1392; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149220.4]
  wire  _T_1393; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149221.4]
  wire  _T_1394; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149222.4]
  wire  _T_1395; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149223.4]
  wire  _T_1396; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149224.4]
  wire  _T_1397; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149225.4]
  wire  _T_1398; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149226.4]
  wire  _T_1399; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149227.4]
  wire  _T_1400; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149228.4]
  wire  _T_1401; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149229.4]
  wire  _T_1402; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149230.4]
  wire  _T_1403; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149231.4]
  wire  _T_1404; // @[CSR.scala 601:7:freechips.rocketchip.system.DefaultRV32Config.fir@149232.4]
  wire  _T_1405; // @[CSR.scala 600:62:freechips.rocketchip.system.DefaultRV32Config.fir@149233.4]
  wire  _T_1407; // @[CSR.scala 602:35:freechips.rocketchip.system.DefaultRV32Config.fir@149235.4]
  wire  _T_1408; // @[CSR.scala 602:32:freechips.rocketchip.system.DefaultRV32Config.fir@149236.4]
  wire  _T_1409; // @[CSR.scala 601:32:freechips.rocketchip.system.DefaultRV32Config.fir@149237.4]
  wire  _T_1410; // @[package.scala 162:47:freechips.rocketchip.system.DefaultRV32Config.fir@149238.4]
  wire  _T_1411; // @[package.scala 162:60:freechips.rocketchip.system.DefaultRV32Config.fir@149239.4]
  wire  _T_1412; // @[package.scala 162:55:freechips.rocketchip.system.DefaultRV32Config.fir@149240.4]
  wire  _T_1413; // @[package.scala 162:47:freechips.rocketchip.system.DefaultRV32Config.fir@149241.4]
  wire  _T_1414; // @[package.scala 162:60:freechips.rocketchip.system.DefaultRV32Config.fir@149242.4]
  wire  _T_1415; // @[package.scala 162:55:freechips.rocketchip.system.DefaultRV32Config.fir@149243.4]
  wire  _T_1416; // @[CSR.scala 603:66:freechips.rocketchip.system.DefaultRV32Config.fir@149244.4]
  wire  _T_1417; // @[CSR.scala 603:133:freechips.rocketchip.system.DefaultRV32Config.fir@149245.4]
  wire  _T_1418; // @[CSR.scala 603:130:freechips.rocketchip.system.DefaultRV32Config.fir@149246.4]
  wire  _T_1419; // @[CSR.scala 602:53:freechips.rocketchip.system.DefaultRV32Config.fir@149247.4]
  wire [11:0] _T_1420; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@149248.4]
  wire  _T_1421; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@149249.4]
  wire  _T_1425; // @[CSR.scala 604:42:freechips.rocketchip.system.DefaultRV32Config.fir@149253.4]
  wire  _T_1426; // @[CSR.scala 603:148:freechips.rocketchip.system.DefaultRV32Config.fir@149254.4]
  wire  _T_1429; // @[CSR.scala 606:21:freechips.rocketchip.system.DefaultRV32Config.fir@149257.4]
  wire [1:0] _T_1431; // @[CSR.scala 607:39:freechips.rocketchip.system.DefaultRV32Config.fir@149260.4]
  wire  _T_1433; // @[CSR.scala 608:40:freechips.rocketchip.system.DefaultRV32Config.fir@149263.4]
  wire  _T_1434; // @[CSR.scala 608:71:freechips.rocketchip.system.DefaultRV32Config.fir@149264.4]
  wire  _T_1435; // @[CSR.scala 608:57:freechips.rocketchip.system.DefaultRV32Config.fir@149265.4]
  wire  _T_1436; // @[CSR.scala 608:99:freechips.rocketchip.system.DefaultRV32Config.fir@149266.4]
  wire  _T_1437; // @[CSR.scala 608:130:freechips.rocketchip.system.DefaultRV32Config.fir@149267.4]
  wire  _T_1438; // @[CSR.scala 608:116:freechips.rocketchip.system.DefaultRV32Config.fir@149268.4]
  wire  _T_1439; // @[CSR.scala 608:85:freechips.rocketchip.system.DefaultRV32Config.fir@149269.4]
  wire  _T_1443; // @[CSR.scala 610:17:freechips.rocketchip.system.DefaultRV32Config.fir@149274.4]
  wire  _T_1444; // @[CSR.scala 610:14:freechips.rocketchip.system.DefaultRV32Config.fir@149275.4]
  wire  _T_1445; // @[CSR.scala 609:64:freechips.rocketchip.system.DefaultRV32Config.fir@149276.4]
  wire  _T_1446; // @[CSR.scala 611:17:freechips.rocketchip.system.DefaultRV32Config.fir@149277.4]
  wire  _T_1447; // @[CSR.scala 611:14:freechips.rocketchip.system.DefaultRV32Config.fir@149278.4]
  wire  _T_1448; // @[CSR.scala 610:28:freechips.rocketchip.system.DefaultRV32Config.fir@149279.4]
  wire  _T_1449; // @[CSR.scala 612:27:freechips.rocketchip.system.DefaultRV32Config.fir@149280.4]
  wire  _T_1450; // @[CSR.scala 612:14:freechips.rocketchip.system.DefaultRV32Config.fir@149281.4]
  wire  _T_1452; // @[CSR.scala 612:32:freechips.rocketchip.system.DefaultRV32Config.fir@149283.4]
  wire  _T_1453; // @[CSR.scala 611:29:freechips.rocketchip.system.DefaultRV32Config.fir@149284.4]
  wire  _T_1455; // @[CSR.scala 613:17:freechips.rocketchip.system.DefaultRV32Config.fir@149286.4]
  wire [11:0] _T_1477; // @[CSR.scala 624:37:freechips.rocketchip.system.DefaultRV32Config.fir@149315.4]
  wire [11:0] debugTVec; // @[CSR.scala 624:22:freechips.rocketchip.system.DefaultRV32Config.fir@149316.4]
  wire [31:0] _T_1486; // @[CSR.scala 632:19:freechips.rocketchip.system.DefaultRV32Config.fir@149326.4]
  wire [4:0] _T_1487; // @[CSR.scala 633:32:freechips.rocketchip.system.DefaultRV32Config.fir@149327.4]
  wire [6:0] _T_1488; // @[CSR.scala 633:59:freechips.rocketchip.system.DefaultRV32Config.fir@149328.4]
  wire [24:0] _T_1489; // @[CSR.scala 634:33:freechips.rocketchip.system.DefaultRV32Config.fir@149329.4]
  wire [31:0] _T_1490; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@149330.4]
  wire  _T_1491; // @[CSR.scala 635:24:freechips.rocketchip.system.DefaultRV32Config.fir@149331.4]
  wire  _T_1493; // @[CSR.scala 635:28:freechips.rocketchip.system.DefaultRV32Config.fir@149333.4]
  wire [2:0] _T_1494; // @[CSR.scala 635:70:freechips.rocketchip.system.DefaultRV32Config.fir@149334.4]
  wire  _T_1495; // @[CSR.scala 635:94:freechips.rocketchip.system.DefaultRV32Config.fir@149335.4]
  wire  _T_1496; // @[CSR.scala 635:55:freechips.rocketchip.system.DefaultRV32Config.fir@149336.4]
  wire [29:0] _T_1497; // @[CSR.scala 636:38:freechips.rocketchip.system.DefaultRV32Config.fir@149337.4]
  wire [31:0] _T_1498; // @[CSR.scala 636:56:freechips.rocketchip.system.DefaultRV32Config.fir@149338.4]
  wire [31:0] notDebugTVec; // @[CSR.scala 636:8:freechips.rocketchip.system.DefaultRV32Config.fir@149339.4]
  wire [31:0] tvec; // @[CSR.scala 638:17:freechips.rocketchip.system.DefaultRV32Config.fir@149340.4]
  wire  _T_1503; // @[CSR.scala 644:32:freechips.rocketchip.system.DefaultRV32Config.fir@149350.4]
  wire  _T_1504; // @[CSR.scala 644:53:freechips.rocketchip.system.DefaultRV32Config.fir@149351.4]
  wire  _T_1505; // @[CSR.scala 644:37:freechips.rocketchip.system.DefaultRV32Config.fir@149352.4]
  wire  _T_1506; // @[CSR.scala 644:74:freechips.rocketchip.system.DefaultRV32Config.fir@149353.4]
  wire  _T_1509; // @[CSR.scala 649:53:freechips.rocketchip.system.DefaultRV32Config.fir@149361.4]
  reg [1:0] _T_1511; // @[CSR.scala 649:24:freechips.rocketchip.system.DefaultRV32Config.fir@149363.4]
  reg [31:0] _RAND_110;
  wire [1:0] _T_1513; // @[Bitwise.scala 47:55:freechips.rocketchip.system.DefaultRV32Config.fir@149369.4]
  wire [1:0] _T_1515; // @[Bitwise.scala 47:55:freechips.rocketchip.system.DefaultRV32Config.fir@149371.4]
  wire [2:0] _T_1517; // @[Bitwise.scala 47:55:freechips.rocketchip.system.DefaultRV32Config.fir@149373.4]
  wire  _T_1519; // @[CSR.scala 654:79:freechips.rocketchip.system.DefaultRV32Config.fir@149375.4]
  wire  _T_1521; // @[CSR.scala 654:9:freechips.rocketchip.system.DefaultRV32Config.fir@149377.4]
  wire  _T_1522; // @[CSR.scala 654:9:freechips.rocketchip.system.DefaultRV32Config.fir@149378.4]
  wire  _T_1524; // @[CSR.scala 656:18:freechips.rocketchip.system.DefaultRV32Config.fir@149384.4]
  wire  _T_1526; // @[CSR.scala 656:36:freechips.rocketchip.system.DefaultRV32Config.fir@149386.4]
  wire  _GEN_34; // @[CSR.scala 656:51:freechips.rocketchip.system.DefaultRV32Config.fir@149387.4]
  wire  _T_1527; // @[CSR.scala 657:28:freechips.rocketchip.system.DefaultRV32Config.fir@149390.4]
  wire  _T_1528; // @[CSR.scala 657:32:freechips.rocketchip.system.DefaultRV32Config.fir@149391.4]
  wire  _T_1529; // @[CSR.scala 657:55:freechips.rocketchip.system.DefaultRV32Config.fir@149392.4]
  wire  _T_1531; // @[CSR.scala 659:22:freechips.rocketchip.system.DefaultRV32Config.fir@149397.4]
  wire  _GEN_36; // @[CSR.scala 659:36:freechips.rocketchip.system.DefaultRV32Config.fir@149398.4]
  wire  _T_1539; // @[CSR.scala 662:10:freechips.rocketchip.system.DefaultRV32Config.fir@149415.4]
  wire  _T_1540; // @[CSR.scala 662:42:freechips.rocketchip.system.DefaultRV32Config.fir@149416.4]
  wire  _T_1541; // @[CSR.scala 662:29:freechips.rocketchip.system.DefaultRV32Config.fir@149417.4]
  wire  _T_1543; // @[CSR.scala 662:9:freechips.rocketchip.system.DefaultRV32Config.fir@149419.4]
  wire  _T_1544; // @[CSR.scala 662:9:freechips.rocketchip.system.DefaultRV32Config.fir@149420.4]
  wire [31:0] _T_1545; // @[CSR.scala 1059:28:freechips.rocketchip.system.DefaultRV32Config.fir@149425.4]
  wire [31:0] _T_1546; // @[CSR.scala 1059:31:freechips.rocketchip.system.DefaultRV32Config.fir@149426.4]
  wire [31:0] epc; // @[CSR.scala 1059:26:freechips.rocketchip.system.DefaultRV32Config.fir@149427.4]
  wire [1:0] _T_1548; // @[CSR.scala 673:86:freechips.rocketchip.system.DefaultRV32Config.fir@149437.10]
  wire [1:0] _T_1549; // @[CSR.scala 673:56:freechips.rocketchip.system.DefaultRV32Config.fir@149438.10]
  wire  _GEN_38; // @[CSR.scala 670:25:freechips.rocketchip.system.DefaultRV32Config.fir@149434.8]
  wire  _GEN_47; // @[CSR.scala 677:27:freechips.rocketchip.system.DefaultRV32Config.fir@149446.8]
  wire [1:0] _GEN_48; // @[CSR.scala 677:27:freechips.rocketchip.system.DefaultRV32Config.fir@149446.8]
  wire  _GEN_54; // @[CSR.scala 677:27:freechips.rocketchip.system.DefaultRV32Config.fir@149446.8]
  wire [1:0] _GEN_55; // @[CSR.scala 677:27:freechips.rocketchip.system.DefaultRV32Config.fir@149446.8]
  wire  _GEN_56; // @[CSR.scala 677:27:freechips.rocketchip.system.DefaultRV32Config.fir@149446.8]
  wire  _GEN_66; // @[CSR.scala 669:24:freechips.rocketchip.system.DefaultRV32Config.fir@149432.6]
  wire [1:0] _GEN_67; // @[CSR.scala 669:24:freechips.rocketchip.system.DefaultRV32Config.fir@149432.6]
  wire  _GEN_72; // @[CSR.scala 669:24:freechips.rocketchip.system.DefaultRV32Config.fir@149432.6]
  wire [1:0] _GEN_73; // @[CSR.scala 669:24:freechips.rocketchip.system.DefaultRV32Config.fir@149432.6]
  wire  _GEN_74; // @[CSR.scala 669:24:freechips.rocketchip.system.DefaultRV32Config.fir@149432.6]
  wire  _GEN_84; // @[CSR.scala 668:20:freechips.rocketchip.system.DefaultRV32Config.fir@149431.4]
  wire [1:0] _GEN_85; // @[CSR.scala 668:20:freechips.rocketchip.system.DefaultRV32Config.fir@149431.4]
  wire  _GEN_90; // @[CSR.scala 668:20:freechips.rocketchip.system.DefaultRV32Config.fir@149431.4]
  wire [1:0] _GEN_91; // @[CSR.scala 668:20:freechips.rocketchip.system.DefaultRV32Config.fir@149431.4]
  wire  _GEN_92; // @[CSR.scala 668:20:freechips.rocketchip.system.DefaultRV32Config.fir@149431.4]
  wire [31:0] _GEN_95; // @[CSR.scala 724:53:freechips.rocketchip.system.DefaultRV32Config.fir@149806.8]
  wire  _GEN_100; // @[CSR.scala 718:44:freechips.rocketchip.system.DefaultRV32Config.fir@149791.6]
  wire [1:0] _GEN_101; // @[CSR.scala 718:44:freechips.rocketchip.system.DefaultRV32Config.fir@149791.6]
  wire [31:0] _GEN_103; // @[CSR.scala 718:44:freechips.rocketchip.system.DefaultRV32Config.fir@149791.6]
  wire [1:0] _GEN_110; // @[CSR.scala 717:19:freechips.rocketchip.system.DefaultRV32Config.fir@149787.4]
  reg  _T_1894; // @[Reg.scala 27:20:freechips.rocketchip.system.DefaultRV32Config.fir@149834.4]
  reg [31:0] _RAND_111;
  wire  _GEN_117; // @[Reg.scala 28:19:freechips.rocketchip.system.DefaultRV32Config.fir@149835.4]
  wire [31:0] _T_1896; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@149852.4]
  wire [31:0] _T_1897; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@149853.4]
  wire [31:0] _T_1898; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@149854.4]
  wire [31:0] _T_1899; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@149855.4]
  wire [31:0] _T_1900; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@149856.4]
  wire [15:0] _T_1901; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@149857.4]
  wire [31:0] _T_1902; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@149858.4]
  wire [31:0] _T_1903; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@149859.4]
  wire [31:0] _T_1904; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@149860.4]
  wire [31:0] _T_1905; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@149861.4]
  wire [31:0] _T_1906; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@149862.4]
  wire [31:0] _T_1908; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@149864.4]
  wire [31:0] _T_1909; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@149865.4]
  wire [31:0] _T_1910; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@149866.4]
  wire [4:0] _T_1911; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@149867.4]
  wire [2:0] _T_1912; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@149868.4]
  wire [9:0] _T_1913; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@149869.4]
  wire [63:0] _T_1914; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@149870.4]
  wire [63:0] _T_1915; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@149871.4]
  wire [31:0] _T_2061; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150017.4]
  wire [63:0] _T_2062; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150018.4]
  wire [63:0] _T_2063; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150019.4]
  wire [31:0] _T_2064; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150020.4]
  wire [31:0] _T_2065; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150021.4]
  wire [31:0] _T_2066; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150022.4]
  wire [31:0] _T_2067; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150023.4]
  wire [31:0] _T_2068; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150024.4]
  wire [31:0] _T_2069; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150025.4]
  wire [31:0] _T_2070; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150026.4]
  wire [31:0] _T_2071; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150027.4]
  wire [31:0] _T_2072; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150028.4]
  wire [31:0] _T_2073; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150029.4]
  wire [31:0] _T_2074; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150030.4]
  wire [31:0] _T_2075; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150031.4]
  wire [31:0] _T_2076; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150032.4]
  wire [31:0] _T_2077; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150033.4]
  wire [31:0] _T_2078; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150034.4]
  wire [31:0] _T_2079; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150035.4]
  wire [31:0] _T_2080; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150036.4]
  wire [31:0] _T_2081; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150037.4]
  wire [29:0] _T_2084; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150040.4]
  wire [29:0] _T_2085; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150041.4]
  wire [29:0] _T_2086; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150042.4]
  wire [29:0] _T_2087; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150043.4]
  wire [29:0] _T_2088; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150044.4]
  wire [29:0] _T_2089; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150045.4]
  wire [29:0] _T_2090; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150046.4]
  wire [29:0] _T_2091; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150047.4]
  wire [31:0] _T_2101; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150057.4]
  wire [31:0] _T_2103; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150059.4]
  wire [31:0] _T_2105; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150061.4]
  wire [31:0] _T_2106; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150062.4]
  wire [31:0] _T_2107; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150063.4]
  wire [31:0] _T_2108; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150064.4]
  wire [31:0] _GEN_506; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150065.4]
  wire [31:0] _T_2109; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150065.4]
  wire [31:0] _T_2110; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150066.4]
  wire [31:0] _T_2111; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150067.4]
  wire [31:0] _T_2112; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150068.4]
  wire [31:0] _T_2113; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150069.4]
  wire [31:0] _T_2114; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150070.4]
  wire [31:0] _T_2116; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150072.4]
  wire [31:0] _T_2117; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150073.4]
  wire [31:0] _T_2118; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150074.4]
  wire [31:0] _GEN_507; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150075.4]
  wire [31:0] _T_2119; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150075.4]
  wire [31:0] _GEN_508; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150076.4]
  wire [31:0] _T_2120; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150076.4]
  wire [31:0] _GEN_509; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150077.4]
  wire [31:0] _T_2121; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150077.4]
  wire [63:0] _GEN_510; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150078.4]
  wire [63:0] _T_2122; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150078.4]
  wire [63:0] _T_2123; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150079.4]
  wire [63:0] _GEN_511; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150225.4]
  wire [63:0] _T_2269; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150225.4]
  wire [63:0] _T_2270; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150226.4]
  wire [63:0] _T_2271; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150227.4]
  wire [63:0] _GEN_512; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150228.4]
  wire [63:0] _T_2272; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150228.4]
  wire [63:0] _GEN_513; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150229.4]
  wire [63:0] _T_2273; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150229.4]
  wire [63:0] _GEN_514; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150230.4]
  wire [63:0] _T_2274; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150230.4]
  wire [63:0] _GEN_515; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150231.4]
  wire [63:0] _T_2275; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150231.4]
  wire [63:0] _GEN_516; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150232.4]
  wire [63:0] _T_2276; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150232.4]
  wire [63:0] _GEN_517; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150233.4]
  wire [63:0] _T_2277; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150233.4]
  wire [63:0] _GEN_518; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150234.4]
  wire [63:0] _T_2278; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150234.4]
  wire [63:0] _GEN_519; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150235.4]
  wire [63:0] _T_2279; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150235.4]
  wire [63:0] _GEN_520; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150236.4]
  wire [63:0] _T_2280; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150236.4]
  wire [63:0] _GEN_521; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150237.4]
  wire [63:0] _T_2281; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150237.4]
  wire [63:0] _GEN_522; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150238.4]
  wire [63:0] _T_2282; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150238.4]
  wire [63:0] _GEN_523; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150239.4]
  wire [63:0] _T_2283; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150239.4]
  wire [63:0] _GEN_524; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150240.4]
  wire [63:0] _T_2284; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150240.4]
  wire [63:0] _GEN_525; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150241.4]
  wire [63:0] _T_2285; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150241.4]
  wire [63:0] _GEN_526; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150242.4]
  wire [63:0] _T_2286; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150242.4]
  wire [63:0] _GEN_527; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150243.4]
  wire [63:0] _T_2287; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150243.4]
  wire [63:0] _GEN_528; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150244.4]
  wire [63:0] _T_2288; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150244.4]
  wire [63:0] _GEN_529; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150245.4]
  wire [63:0] _T_2289; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150245.4]
  wire [63:0] _GEN_530; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150248.4]
  wire [63:0] _T_2292; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150248.4]
  wire [63:0] _GEN_531; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150249.4]
  wire [63:0] _T_2293; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150249.4]
  wire [63:0] _GEN_532; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150250.4]
  wire [63:0] _T_2294; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150250.4]
  wire [63:0] _GEN_533; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150251.4]
  wire [63:0] _T_2295; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150251.4]
  wire [63:0] _GEN_534; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150252.4]
  wire [63:0] _T_2296; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150252.4]
  wire [63:0] _GEN_535; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150253.4]
  wire [63:0] _T_2297; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150253.4]
  wire [63:0] _GEN_536; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150254.4]
  wire [63:0] _T_2298; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150254.4]
  wire [63:0] _GEN_537; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150255.4]
  wire [63:0] _T_2299; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150255.4]
  wire [63:0] _GEN_538; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150265.4]
  wire [63:0] _T_2309; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150265.4]
  wire [63:0] _GEN_539; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150267.4]
  wire [63:0] _T_2311; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150267.4]
  wire  _T_2315; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@150274.6]
  wire  _T_2316; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@150275.6]
  wire  _T_2317; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@150276.6]
  wire [4:0] _T_4821; // @[CSR.scala 776:30:freechips.rocketchip.system.DefaultRV32Config.fir@153623.6]
  wire [4:0] _GEN_118; // @[CSR.scala 775:30:freechips.rocketchip.system.DefaultRV32Config.fir@153622.4]
  wire  _T_4825; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@153630.4]
  wire  csr_wen; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@153631.4]
  wire [101:0] _T_4839; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@153649.8 :freechips.rocketchip.system.DefaultRV32Config.fir@153651.8]
  wire  _T_4841; // @[CSR.scala 791:47:freechips.rocketchip.system.DefaultRV32Config.fir@153654.8]
  wire  _T_4843; // @[CSR.scala 791:47:freechips.rocketchip.system.DefaultRV32Config.fir@153658.8]
  wire  _T_4845; // @[CSR.scala 791:47:freechips.rocketchip.system.DefaultRV32Config.fir@153662.8]
  wire  _T_4847; // @[CSR.scala 791:47:freechips.rocketchip.system.DefaultRV32Config.fir@153666.8]
  wire  _T_4848; // @[CSR.scala 791:47:freechips.rocketchip.system.DefaultRV32Config.fir@153668.8]
  wire [1:0] _T_4850; // @[CSR.scala 791:47:freechips.rocketchip.system.DefaultRV32Config.fir@153672.8]
  wire [1:0] _T_4851; // @[CSR.scala 791:47:freechips.rocketchip.system.DefaultRV32Config.fir@153674.8]
  wire  _T_4853; // @[CSR.scala 791:47:freechips.rocketchip.system.DefaultRV32Config.fir@153678.8]
  wire  _T_4854; // @[CSR.scala 791:47:freechips.rocketchip.system.DefaultRV32Config.fir@153680.8]
  wire  _T_4855; // @[CSR.scala 791:47:freechips.rocketchip.system.DefaultRV32Config.fir@153682.8]
  wire  _T_4856; // @[CSR.scala 791:47:freechips.rocketchip.system.DefaultRV32Config.fir@153684.8]
  wire  _T_4857; // @[CSR.scala 791:47:freechips.rocketchip.system.DefaultRV32Config.fir@153686.8]
  wire  _T_4858; // @[CSR.scala 791:47:freechips.rocketchip.system.DefaultRV32Config.fir@153688.8]
  wire  _T_4871; // @[CSR.scala 1042:27:freechips.rocketchip.system.DefaultRV32Config.fir@153717.8]
  wire  _T_4873; // @[CSR.scala 1063:73:freechips.rocketchip.system.DefaultRV32Config.fir@153728.8]
  wire [1:0] _GEN_126; // @[CSR.scala 790:39:freechips.rocketchip.system.DefaultRV32Config.fir@153646.6]
  wire  _T_4876; // @[CSR.scala 816:20:freechips.rocketchip.system.DefaultRV32Config.fir@153735.8]
  wire  _T_4877; // @[CSR.scala 818:39:freechips.rocketchip.system.DefaultRV32Config.fir@153736.8]
  wire  _T_4878; // @[CSR.scala 818:33:freechips.rocketchip.system.DefaultRV32Config.fir@153737.8]
  wire  _T_4880; // @[CSR.scala 818:51:freechips.rocketchip.system.DefaultRV32Config.fir@153739.8]
  wire  _T_4881; // @[CSR.scala 818:43:freechips.rocketchip.system.DefaultRV32Config.fir@153740.8]
  wire [31:0] _T_4882; // @[CSR.scala 820:25:freechips.rocketchip.system.DefaultRV32Config.fir@153742.10]
  wire  _T_4883; // @[CSR.scala 820:35:freechips.rocketchip.system.DefaultRV32Config.fir@153743.10]
  wire [3:0] _T_4884; // @[CSR.scala 820:38:freechips.rocketchip.system.DefaultRV32Config.fir@153744.10]
  wire [31:0] _GEN_540; // @[CSR.scala 820:32:freechips.rocketchip.system.DefaultRV32Config.fir@153745.10]
  wire [31:0] _T_4885; // @[CSR.scala 820:32:freechips.rocketchip.system.DefaultRV32Config.fir@153745.10]
  wire [31:0] _T_4886; // @[CSR.scala 820:23:freechips.rocketchip.system.DefaultRV32Config.fir@153746.10]
  wire [31:0] _T_4887; // @[CSR.scala 820:55:freechips.rocketchip.system.DefaultRV32Config.fir@153747.10]
  wire [31:0] _T_4889; // @[CSR.scala 820:73:freechips.rocketchip.system.DefaultRV32Config.fir@153749.10]
  wire [31:0] _T_4890; // @[CSR.scala 820:62:freechips.rocketchip.system.DefaultRV32Config.fir@153750.10]
  wire [15:0] _T_4905; // @[CSR.scala 828:59:freechips.rocketchip.system.DefaultRV32Config.fir@153769.8]
  wire [15:0] _T_4907; // @[CSR.scala 1038:9:freechips.rocketchip.system.DefaultRV32Config.fir@153771.8]
  wire [31:0] _GEN_541; // @[CSR.scala 1038:34:freechips.rocketchip.system.DefaultRV32Config.fir@153772.8]
  wire [31:0] _T_4908; // @[CSR.scala 1038:34:freechips.rocketchip.system.DefaultRV32Config.fir@153772.8]
  wire [31:0] _T_4913; // @[CSR.scala 1038:43:freechips.rocketchip.system.DefaultRV32Config.fir@153777.8]
  wire [15:0] _T_4915; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@153780.8 :freechips.rocketchip.system.DefaultRV32Config.fir@153782.8]
  wire  _T_4917; // @[CSR.scala 828:88:freechips.rocketchip.system.DefaultRV32Config.fir@153785.8]
  wire  _T_4921; // @[CSR.scala 828:88:freechips.rocketchip.system.DefaultRV32Config.fir@153793.8]
  wire  _T_4925; // @[CSR.scala 828:88:freechips.rocketchip.system.DefaultRV32Config.fir@153801.8]
  wire [31:0] _T_4932; // @[CSR.scala 835:59:freechips.rocketchip.system.DefaultRV32Config.fir@153820.8]
  wire [31:0] _T_4934; // @[CSR.scala 1059:31:freechips.rocketchip.system.DefaultRV32Config.fir@153825.8]
  wire [31:0] _T_4935; // @[CSR.scala 1059:26:freechips.rocketchip.system.DefaultRV32Config.fir@153826.8]
  wire [31:0] _T_4936; // @[CSR.scala 840:62:freechips.rocketchip.system.DefaultRV32Config.fir@153836.8]
  wire [31:0] _T_4938; // @[CSR.scala 1053:47:freechips.rocketchip.system.DefaultRV32Config.fir@153844.8]
  wire [63:0] _T_4939; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@153845.8]
  wire [57:0] _T_4940; // @[Counters.scala 67:28:freechips.rocketchip.system.DefaultRV32Config.fir@153847.8]
  wire [63:0] _GEN_145; // @[CSR.scala 1053:31:freechips.rocketchip.system.DefaultRV32Config.fir@153843.6]
  wire [31:0] _T_4942; // @[CSR.scala 1054:74:freechips.rocketchip.system.DefaultRV32Config.fir@153852.8]
  wire [63:0] _T_4943; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@153853.8]
  wire [57:0] _T_4944; // @[Counters.scala 67:28:freechips.rocketchip.system.DefaultRV32Config.fir@153855.8]
  wire [63:0] _GEN_147; // @[CSR.scala 1054:31:freechips.rocketchip.system.DefaultRV32Config.fir@153850.6]
  wire [31:0] _T_4945; // @[CSR.scala 1053:47:freechips.rocketchip.system.DefaultRV32Config.fir@153859.8]
  wire [63:0] _T_4946; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@153860.8]
  wire [57:0] _T_4947; // @[Counters.scala 67:28:freechips.rocketchip.system.DefaultRV32Config.fir@153862.8]
  wire [63:0] _GEN_149; // @[CSR.scala 1053:31:freechips.rocketchip.system.DefaultRV32Config.fir@153858.6]
  wire [31:0] _T_4949; // @[CSR.scala 1054:74:freechips.rocketchip.system.DefaultRV32Config.fir@153867.8]
  wire [63:0] _T_4950; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@153868.8]
  wire [57:0] _T_4951; // @[Counters.scala 67:28:freechips.rocketchip.system.DefaultRV32Config.fir@153870.8]
  wire [63:0] _GEN_151; // @[CSR.scala 1054:31:freechips.rocketchip.system.DefaultRV32Config.fir@153865.6]
  wire [31:0] _GEN_154; // @[CSR.scala 853:40:freechips.rocketchip.system.DefaultRV32Config.fir@153873.6]
  wire [31:0] _GEN_156; // @[CSR.scala 854:40:freechips.rocketchip.system.DefaultRV32Config.fir@153877.6]
  wire [26:0] _T_4952; // @[CSR.scala 860:26:freechips.rocketchip.system.DefaultRV32Config.fir@153884.8]
  wire [31:0] _GEN_158; // @[CSR.scala 857:38:freechips.rocketchip.system.DefaultRV32Config.fir@153881.6]
  wire [31:0] _GEN_159; // @[CSR.scala 857:38:freechips.rocketchip.system.DefaultRV32Config.fir@153881.6]
  wire [1:0] _T_4955; // @[CSR.scala 867:43:freechips.rocketchip.system.DefaultRV32Config.fir@153893.8]
  wire  _T_4962; // @[CSR.scala 867:43:freechips.rocketchip.system.DefaultRV32Config.fir@153907.8]
  wire  _T_4963; // @[CSR.scala 867:43:freechips.rocketchip.system.DefaultRV32Config.fir@153909.8]
  wire  _T_4965; // @[CSR.scala 867:43:freechips.rocketchip.system.DefaultRV32Config.fir@153913.8]
  wire  _T_4969; // @[CSR.scala 1042:27:freechips.rocketchip.system.DefaultRV32Config.fir@153925.8]
  wire [1:0] _GEN_169; // @[CSR.scala 878:41:freechips.rocketchip.system.DefaultRV32Config.fir@153938.6]
  wire [31:0] _T_5010; // @[CSR.scala 890:54:freechips.rocketchip.system.DefaultRV32Config.fir@154018.8]
  wire [31:0] _T_5011; // @[CSR.scala 890:52:freechips.rocketchip.system.DefaultRV32Config.fir@154019.8]
  wire [31:0] _T_5012; // @[CSR.scala 890:78:freechips.rocketchip.system.DefaultRV32Config.fir@154020.8]
  wire [31:0] _T_5013; // @[CSR.scala 890:69:freechips.rocketchip.system.DefaultRV32Config.fir@154021.8]
  wire [15:0] _T_5015; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@154024.8 :freechips.rocketchip.system.DefaultRV32Config.fir@154026.8]
  wire  _T_5017; // @[CSR.scala 890:41:freechips.rocketchip.system.DefaultRV32Config.fir@154029.8]
  wire [21:0] _T_5034; // @[CSR.scala 894:43:freechips.rocketchip.system.DefaultRV32Config.fir@154067.8]
  wire  _T_5036; // @[CSR.scala 894:43:freechips.rocketchip.system.DefaultRV32Config.fir@154071.8]
  wire  _T_5037; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@154073.8]
  wire  _T_5039; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@154075.8]
  wire [19:0] _T_5041; // @[CSR.scala 898:39:freechips.rocketchip.system.DefaultRV32Config.fir@154079.10]
  wire [31:0] _T_5043; // @[CSR.scala 902:64:freechips.rocketchip.system.DefaultRV32Config.fir@154085.8]
  wire [31:0] _T_5045; // @[CSR.scala 902:81:freechips.rocketchip.system.DefaultRV32Config.fir@154087.8]
  wire [31:0] _T_5049; // @[CSR.scala 906:64:freechips.rocketchip.system.DefaultRV32Config.fir@154103.8]
  wire  _T_5052; // @[CSR.scala 919:37:freechips.rocketchip.system.DefaultRV32Config.fir@154126.6]
  wire  _T_5053; // @[CSR.scala 919:55:freechips.rocketchip.system.DefaultRV32Config.fir@154127.6]
  wire  _T_5057; // @[CSR.scala 922:41:freechips.rocketchip.system.DefaultRV32Config.fir@154139.10]
  wire  _T_5058; // @[CSR.scala 922:41:freechips.rocketchip.system.DefaultRV32Config.fir@154141.10]
  wire  _T_5060; // @[CSR.scala 922:41:freechips.rocketchip.system.DefaultRV32Config.fir@154145.10]
  wire  _T_5061; // @[CSR.scala 922:41:freechips.rocketchip.system.DefaultRV32Config.fir@154147.10]
  wire  _T_5063; // @[CSR.scala 922:41:freechips.rocketchip.system.DefaultRV32Config.fir@154151.10]
  wire [1:0] _T_5064; // @[CSR.scala 922:41:freechips.rocketchip.system.DefaultRV32Config.fir@154153.10]
  wire [31:0] _T_5087; // @[CSR.scala 1038:9:freechips.rocketchip.system.DefaultRV32Config.fir@154185.10]
  wire [31:0] _T_5088; // @[CSR.scala 1038:34:freechips.rocketchip.system.DefaultRV32Config.fir@154186.10]
  wire [31:0] _T_5093; // @[CSR.scala 1038:43:freechips.rocketchip.system.DefaultRV32Config.fir@154191.10]
  wire  _T_5106; // @[CSR.scala 928:96:freechips.rocketchip.system.DefaultRV32Config.fir@154217.10]
  wire  _T_5109; // @[CSR.scala 928:96:freechips.rocketchip.system.DefaultRV32Config.fir@154223.10]
  wire  _T_5111; // @[CSR.scala 929:38:freechips.rocketchip.system.DefaultRV32Config.fir@154227.10]
  wire  _GEN_191; // @[CSR.scala 931:51:freechips.rocketchip.system.DefaultRV32Config.fir@154234.10]
  wire  _T_5195; // @[CSR.scala 939:60:freechips.rocketchip.system.DefaultRV32Config.fir@154373.6]
  wire  _T_5196; // @[CSR.scala 939:57:freechips.rocketchip.system.DefaultRV32Config.fir@154374.6]
  wire [7:0] _T_5199; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@154379.8 :freechips.rocketchip.system.DefaultRV32Config.fir@154381.8]
  wire  _T_5200; // @[CSR.scala 940:46:freechips.rocketchip.system.DefaultRV32Config.fir@154382.8]
  wire  _T_5201; // @[CSR.scala 940:46:freechips.rocketchip.system.DefaultRV32Config.fir@154384.8]
  wire  _T_5202; // @[CSR.scala 940:46:freechips.rocketchip.system.DefaultRV32Config.fir@154386.8]
  wire [1:0] _T_5203; // @[CSR.scala 940:46:freechips.rocketchip.system.DefaultRV32Config.fir@154388.8]
  wire  _T_5205; // @[CSR.scala 940:46:freechips.rocketchip.system.DefaultRV32Config.fir@154392.8]
  wire  _T_5206; // @[CSR.scala 943:31:freechips.rocketchip.system.DefaultRV32Config.fir@154395.8]
  wire  _T_5207; // @[PMP.scala 45:20:freechips.rocketchip.system.DefaultRV32Config.fir@154398.6]
  wire  _T_5208; // @[PMP.scala 47:13:freechips.rocketchip.system.DefaultRV32Config.fir@154399.6]
  wire  _T_5210; // @[PMP.scala 47:20:freechips.rocketchip.system.DefaultRV32Config.fir@154401.6]
  wire  _T_5211; // @[PMP.scala 49:62:freechips.rocketchip.system.DefaultRV32Config.fir@154402.6]
  wire  _T_5212; // @[PMP.scala 49:44:freechips.rocketchip.system.DefaultRV32Config.fir@154403.6]
  wire  _T_5213; // @[CSR.scala 948:48:freechips.rocketchip.system.DefaultRV32Config.fir@154404.6]
  wire  _T_5214; // @[CSR.scala 948:45:freechips.rocketchip.system.DefaultRV32Config.fir@154405.6]
  wire [31:0] _GEN_262; // @[CSR.scala 948:71:freechips.rocketchip.system.DefaultRV32Config.fir@154406.6]
  wire  _T_5215; // @[CSR.scala 939:60:freechips.rocketchip.system.DefaultRV32Config.fir@154409.6]
  wire  _T_5216; // @[CSR.scala 939:57:freechips.rocketchip.system.DefaultRV32Config.fir@154410.6]
  wire [23:0] _T_5217; // @[CSR.scala 940:53:freechips.rocketchip.system.DefaultRV32Config.fir@154412.8]
  wire [7:0] _T_5219; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@154415.8 :freechips.rocketchip.system.DefaultRV32Config.fir@154417.8]
  wire  _T_5220; // @[CSR.scala 940:46:freechips.rocketchip.system.DefaultRV32Config.fir@154418.8]
  wire  _T_5221; // @[CSR.scala 940:46:freechips.rocketchip.system.DefaultRV32Config.fir@154420.8]
  wire  _T_5222; // @[CSR.scala 940:46:freechips.rocketchip.system.DefaultRV32Config.fir@154422.8]
  wire [1:0] _T_5223; // @[CSR.scala 940:46:freechips.rocketchip.system.DefaultRV32Config.fir@154424.8]
  wire  _T_5225; // @[CSR.scala 940:46:freechips.rocketchip.system.DefaultRV32Config.fir@154428.8]
  wire  _T_5226; // @[CSR.scala 943:31:freechips.rocketchip.system.DefaultRV32Config.fir@154431.8]
  wire  _T_5227; // @[PMP.scala 45:20:freechips.rocketchip.system.DefaultRV32Config.fir@154434.6]
  wire  _T_5228; // @[PMP.scala 47:13:freechips.rocketchip.system.DefaultRV32Config.fir@154435.6]
  wire  _T_5230; // @[PMP.scala 47:20:freechips.rocketchip.system.DefaultRV32Config.fir@154437.6]
  wire  _T_5231; // @[PMP.scala 49:62:freechips.rocketchip.system.DefaultRV32Config.fir@154438.6]
  wire  _T_5232; // @[PMP.scala 49:44:freechips.rocketchip.system.DefaultRV32Config.fir@154439.6]
  wire  _T_5233; // @[CSR.scala 948:48:freechips.rocketchip.system.DefaultRV32Config.fir@154440.6]
  wire  _T_5234; // @[CSR.scala 948:45:freechips.rocketchip.system.DefaultRV32Config.fir@154441.6]
  wire [31:0] _GEN_269; // @[CSR.scala 948:71:freechips.rocketchip.system.DefaultRV32Config.fir@154442.6]
  wire  _T_5235; // @[CSR.scala 939:60:freechips.rocketchip.system.DefaultRV32Config.fir@154445.6]
  wire  _T_5236; // @[CSR.scala 939:57:freechips.rocketchip.system.DefaultRV32Config.fir@154446.6]
  wire [15:0] _T_5237; // @[CSR.scala 940:53:freechips.rocketchip.system.DefaultRV32Config.fir@154448.8]
  wire [7:0] _T_5239; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@154451.8 :freechips.rocketchip.system.DefaultRV32Config.fir@154453.8]
  wire  _T_5240; // @[CSR.scala 940:46:freechips.rocketchip.system.DefaultRV32Config.fir@154454.8]
  wire  _T_5241; // @[CSR.scala 940:46:freechips.rocketchip.system.DefaultRV32Config.fir@154456.8]
  wire  _T_5242; // @[CSR.scala 940:46:freechips.rocketchip.system.DefaultRV32Config.fir@154458.8]
  wire [1:0] _T_5243; // @[CSR.scala 940:46:freechips.rocketchip.system.DefaultRV32Config.fir@154460.8]
  wire  _T_5245; // @[CSR.scala 940:46:freechips.rocketchip.system.DefaultRV32Config.fir@154464.8]
  wire  _T_5246; // @[CSR.scala 943:31:freechips.rocketchip.system.DefaultRV32Config.fir@154467.8]
  wire  _T_5247; // @[PMP.scala 45:20:freechips.rocketchip.system.DefaultRV32Config.fir@154470.6]
  wire  _T_5248; // @[PMP.scala 47:13:freechips.rocketchip.system.DefaultRV32Config.fir@154471.6]
  wire  _T_5250; // @[PMP.scala 47:20:freechips.rocketchip.system.DefaultRV32Config.fir@154473.6]
  wire  _T_5251; // @[PMP.scala 49:62:freechips.rocketchip.system.DefaultRV32Config.fir@154474.6]
  wire  _T_5252; // @[PMP.scala 49:44:freechips.rocketchip.system.DefaultRV32Config.fir@154475.6]
  wire  _T_5253; // @[CSR.scala 948:48:freechips.rocketchip.system.DefaultRV32Config.fir@154476.6]
  wire  _T_5254; // @[CSR.scala 948:45:freechips.rocketchip.system.DefaultRV32Config.fir@154477.6]
  wire [31:0] _GEN_276; // @[CSR.scala 948:71:freechips.rocketchip.system.DefaultRV32Config.fir@154478.6]
  wire  _T_5255; // @[CSR.scala 939:60:freechips.rocketchip.system.DefaultRV32Config.fir@154481.6]
  wire  _T_5256; // @[CSR.scala 939:57:freechips.rocketchip.system.DefaultRV32Config.fir@154482.6]
  wire [7:0] _T_5257; // @[CSR.scala 940:53:freechips.rocketchip.system.DefaultRV32Config.fir@154484.8]
  wire  _T_5260; // @[CSR.scala 940:46:freechips.rocketchip.system.DefaultRV32Config.fir@154490.8]
  wire  _T_5261; // @[CSR.scala 940:46:freechips.rocketchip.system.DefaultRV32Config.fir@154492.8]
  wire  _T_5262; // @[CSR.scala 940:46:freechips.rocketchip.system.DefaultRV32Config.fir@154494.8]
  wire [1:0] _T_5263; // @[CSR.scala 940:46:freechips.rocketchip.system.DefaultRV32Config.fir@154496.8]
  wire  _T_5265; // @[CSR.scala 940:46:freechips.rocketchip.system.DefaultRV32Config.fir@154500.8]
  wire  _T_5266; // @[CSR.scala 943:31:freechips.rocketchip.system.DefaultRV32Config.fir@154503.8]
  wire  _T_5267; // @[PMP.scala 45:20:freechips.rocketchip.system.DefaultRV32Config.fir@154506.6]
  wire  _T_5268; // @[PMP.scala 47:13:freechips.rocketchip.system.DefaultRV32Config.fir@154507.6]
  wire  _T_5270; // @[PMP.scala 47:20:freechips.rocketchip.system.DefaultRV32Config.fir@154509.6]
  wire  _T_5271; // @[PMP.scala 49:62:freechips.rocketchip.system.DefaultRV32Config.fir@154510.6]
  wire  _T_5272; // @[PMP.scala 49:44:freechips.rocketchip.system.DefaultRV32Config.fir@154511.6]
  wire  _T_5273; // @[CSR.scala 948:48:freechips.rocketchip.system.DefaultRV32Config.fir@154512.6]
  wire  _T_5274; // @[CSR.scala 948:45:freechips.rocketchip.system.DefaultRV32Config.fir@154513.6]
  wire [31:0] _GEN_283; // @[CSR.scala 948:71:freechips.rocketchip.system.DefaultRV32Config.fir@154514.6]
  wire  _T_5275; // @[CSR.scala 939:60:freechips.rocketchip.system.DefaultRV32Config.fir@154517.6]
  wire  _T_5276; // @[CSR.scala 939:57:freechips.rocketchip.system.DefaultRV32Config.fir@154518.6]
  wire  _T_5287; // @[PMP.scala 45:20:freechips.rocketchip.system.DefaultRV32Config.fir@154542.6]
  wire  _T_5288; // @[PMP.scala 47:13:freechips.rocketchip.system.DefaultRV32Config.fir@154543.6]
  wire  _T_5290; // @[PMP.scala 47:20:freechips.rocketchip.system.DefaultRV32Config.fir@154545.6]
  wire  _T_5291; // @[PMP.scala 49:62:freechips.rocketchip.system.DefaultRV32Config.fir@154546.6]
  wire  _T_5292; // @[PMP.scala 49:44:freechips.rocketchip.system.DefaultRV32Config.fir@154547.6]
  wire  _T_5293; // @[CSR.scala 948:48:freechips.rocketchip.system.DefaultRV32Config.fir@154548.6]
  wire  _T_5294; // @[CSR.scala 948:45:freechips.rocketchip.system.DefaultRV32Config.fir@154549.6]
  wire [31:0] _GEN_290; // @[CSR.scala 948:71:freechips.rocketchip.system.DefaultRV32Config.fir@154550.6]
  wire  _T_5295; // @[CSR.scala 939:60:freechips.rocketchip.system.DefaultRV32Config.fir@154553.6]
  wire  _T_5296; // @[CSR.scala 939:57:freechips.rocketchip.system.DefaultRV32Config.fir@154554.6]
  wire  _T_5307; // @[PMP.scala 45:20:freechips.rocketchip.system.DefaultRV32Config.fir@154578.6]
  wire  _T_5308; // @[PMP.scala 47:13:freechips.rocketchip.system.DefaultRV32Config.fir@154579.6]
  wire  _T_5310; // @[PMP.scala 47:20:freechips.rocketchip.system.DefaultRV32Config.fir@154581.6]
  wire  _T_5311; // @[PMP.scala 49:62:freechips.rocketchip.system.DefaultRV32Config.fir@154582.6]
  wire  _T_5312; // @[PMP.scala 49:44:freechips.rocketchip.system.DefaultRV32Config.fir@154583.6]
  wire  _T_5313; // @[CSR.scala 948:48:freechips.rocketchip.system.DefaultRV32Config.fir@154584.6]
  wire  _T_5314; // @[CSR.scala 948:45:freechips.rocketchip.system.DefaultRV32Config.fir@154585.6]
  wire [31:0] _GEN_297; // @[CSR.scala 948:71:freechips.rocketchip.system.DefaultRV32Config.fir@154586.6]
  wire  _T_5315; // @[CSR.scala 939:60:freechips.rocketchip.system.DefaultRV32Config.fir@154589.6]
  wire  _T_5316; // @[CSR.scala 939:57:freechips.rocketchip.system.DefaultRV32Config.fir@154590.6]
  wire  _T_5327; // @[PMP.scala 45:20:freechips.rocketchip.system.DefaultRV32Config.fir@154614.6]
  wire  _T_5328; // @[PMP.scala 47:13:freechips.rocketchip.system.DefaultRV32Config.fir@154615.6]
  wire  _T_5330; // @[PMP.scala 47:20:freechips.rocketchip.system.DefaultRV32Config.fir@154617.6]
  wire  _T_5331; // @[PMP.scala 49:62:freechips.rocketchip.system.DefaultRV32Config.fir@154618.6]
  wire  _T_5332; // @[PMP.scala 49:44:freechips.rocketchip.system.DefaultRV32Config.fir@154619.6]
  wire  _T_5333; // @[CSR.scala 948:48:freechips.rocketchip.system.DefaultRV32Config.fir@154620.6]
  wire  _T_5334; // @[CSR.scala 948:45:freechips.rocketchip.system.DefaultRV32Config.fir@154621.6]
  wire [31:0] _GEN_304; // @[CSR.scala 948:71:freechips.rocketchip.system.DefaultRV32Config.fir@154622.6]
  wire  _T_5335; // @[CSR.scala 939:60:freechips.rocketchip.system.DefaultRV32Config.fir@154625.6]
  wire  _T_5336; // @[CSR.scala 939:57:freechips.rocketchip.system.DefaultRV32Config.fir@154626.6]
  wire  _T_5352; // @[PMP.scala 49:44:freechips.rocketchip.system.DefaultRV32Config.fir@154655.6]
  wire  _T_5353; // @[CSR.scala 948:48:freechips.rocketchip.system.DefaultRV32Config.fir@154656.6]
  wire  _T_5354; // @[CSR.scala 948:45:freechips.rocketchip.system.DefaultRV32Config.fir@154657.6]
  wire [31:0] _GEN_311; // @[CSR.scala 948:71:freechips.rocketchip.system.DefaultRV32Config.fir@154658.6]
  wire [1:0] _GEN_326; // @[CSR.scala 789:18:freechips.rocketchip.system.DefaultRV32Config.fir@153645.4]
  wire [63:0] _GEN_344; // @[CSR.scala 789:18:freechips.rocketchip.system.DefaultRV32Config.fir@153645.4]
  wire [63:0] _GEN_346; // @[CSR.scala 789:18:freechips.rocketchip.system.DefaultRV32Config.fir@153645.4]
  wire [31:0] _GEN_349; // @[CSR.scala 789:18:freechips.rocketchip.system.DefaultRV32Config.fir@153645.4]
  wire [31:0] _GEN_350; // @[CSR.scala 789:18:freechips.rocketchip.system.DefaultRV32Config.fir@153645.4]
  wire [31:0] _GEN_408; // @[CSR.scala 789:18:freechips.rocketchip.system.DefaultRV32Config.fir@153645.4]
  wire [31:0] _GEN_415; // @[CSR.scala 789:18:freechips.rocketchip.system.DefaultRV32Config.fir@153645.4]
  wire [31:0] _GEN_422; // @[CSR.scala 789:18:freechips.rocketchip.system.DefaultRV32Config.fir@153645.4]
  wire [31:0] _GEN_429; // @[CSR.scala 789:18:freechips.rocketchip.system.DefaultRV32Config.fir@153645.4]
  wire [31:0] _GEN_436; // @[CSR.scala 789:18:freechips.rocketchip.system.DefaultRV32Config.fir@153645.4]
  wire [31:0] _GEN_443; // @[CSR.scala 789:18:freechips.rocketchip.system.DefaultRV32Config.fir@153645.4]
  wire [31:0] _GEN_450; // @[CSR.scala 789:18:freechips.rocketchip.system.DefaultRV32Config.fir@153645.4]
  wire [31:0] _GEN_457; // @[CSR.scala 789:18:freechips.rocketchip.system.DefaultRV32Config.fir@153645.4]
  wire  _T_5401; // @[CSR.scala 1017:26:freechips.rocketchip.system.DefaultRV32Config.fir@154815.4]
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

  assign _T_1458 = {{2'd0}, reg_mstatus_prv} + 4'h8;
  assign cause = insn_call ? _T_1458
		: insn_break ? 32'h3
		: io_cause;
  assign cause_lsbs = cause[7:0];
  assign causeIsDebugInt = cause[31] && (cause_lsbs == 8'he);
  assign causeIsDebugTrigger = (cause[31] == 1'b0) & (cause_lsbs == 8'he);
  assign _T_1471 = {reg_dcsr_ebreakm,1'h0,reg_dcsr_ebreaks,reg_dcsr_ebreaku} >> reg_mstatus_prv;
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
  assign _T_384 = {io_status_debug
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
  assign _T_386 = reg_mtvec[0] ? 7'h7e : 7'h2;
  assign read_mtvec = reg_mtvec & (~ {{25'd0}, _T_386});
  assign _T_391 = reg_stvec[0] ? 7'h7e : 7'h2;
  assign read_stvec = reg_stvec & (~ {{25'd0}, _T_391});
  assign read_fcsr = {{1'd0}, {1'd0}, reg_frm,reg_fflags};

  assign _T_1483 = read_medeleg >> cause_lsbs;
  assign _T_1481 = read_mideleg >> cause_lsbs;
  assign _T_1485 = cause[31] ? _T_1481[0] : _T_1483[0];
  assign delegate = (reg_mstatus_prv <= 2'h1) & _T_1485;

  assign _GEN_42 = !reg_debug ? 2'h3 : reg_mstatus_prv;
  assign _GEN_61 = trapToDebug ? _GEN_42 
		: delegate ? 2'h1 
		: 2'h3;
  assign _GEN_102 = !io_rw_addr[9] ? {{1'd0}, reg_mstatus_spp} 
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

  assign _T_884 = io_rw_cmd[1] ? io_rw_rdata : 32'h0;
  assign _T_888 = (io_rw_cmd[1:0] == 2'h3) ? io_rw_wdata : 32'h0;
  assign wdata = (_T_884 | io_rw_wdata) & (~ _T_888);

  assign insn_cease = system_insn & (({io_rw_addr, 20'h0} & 32'h20200000) == 32'h20000000);
  assign insn_wfi = system_insn & (({io_rw_addr, 20'h0} & 32'h32200000) == 32'h10000000);

  assign _T_1477 = insn_break ? 12'h800 : 12'h808;
  assign debugTVec = reg_debug ? _T_1477 : 12'h800;
  assign _T_1486 = delegate ? read_stvec : read_mtvec;
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
  assign _T_841 = io_rw_addr == 12'hc00;
  assign _T_842 = io_rw_addr == 12'hc02;
  assign sel_mcycleh = io_rw_addr == 12'hb80;
  assign sel_minstreth = io_rw_addr == 12'hb82;
  assign _T_845 = io_rw_addr == 12'hc80;
  assign _T_846 = io_rw_addr == 12'hc82;
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
  assign _T_880 = io_rw_addr == 12'hf12;
  assign _T_882 = io_rw_addr == 12'hf13;
  assign _T_411 = reg_misa[2] ? 2'h1 : 2'h3;
  assign _T_563 = {36'h0,2'h0,io_status_sd,29'h0,io_status_uxl,io_status_sd_rv32,6'h0,io_status_vs,2'h0,1'h0,io_status_mxr,io_status_sum,1'h0,io_status_xs,io_status_fs,4'h0,io_status_spp,1'h0,1'h0,io_status_spie,2'h0,1'h0,io_status_sie,1'h0};
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
			: _T_841 ? reg_cycle[31:0]
			: _T_842 ? reg_instret[31:0]
			: sel_mcycleh ? reg_cycle[63:32]
			: sel_minstreth ? reg_instret[63:32]
			: _T_845 ? reg_cycle[63:32]
			: _T_846 ? reg_instret[63:32]
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

  assign _GEN_103 = !io_rw_addr[9] ? (~ ((~ reg_sepc) | {{30'd0}, _T_411})) 
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
			//reg_mip_ssip <= _T_5017;
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
  assign _T_1522 = (((insn_ret + insn_call + insn_break + io_exception) <= 3'h1) | reset) == 1'h0;
  assign _T_1544 = (!reg_singleStepped | !io_retire | reset) == 1'h0;
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

`ifndef MY_ASSIGNMENT
  assign system_insn = io_rw_cmd == 3'h4; // @[CSR.scala 569:31:freechips.rocketchip.system.DefaultRV32Config.fir@148707.4]

  assign insn_ret = system_insn & _T_902; // @[CSR.scala 581:95:freechips.rocketchip.system.DefaultRV32Config.fir@148735.4]
  assign insn_call = system_insn & _T_892; // @[CSR.scala 581:95:freechips.rocketchip.system.DefaultRV32Config.fir@148731.4]
  assign insn_break = system_insn & _T_895; // @[CSR.scala 581:95:freechips.rocketchip.system.DefaultRV32Config.fir@148733.4]

  assign exception = _T_1512 | io_exception; // @[CSR.scala 653:43:freechips.rocketchip.system.DefaultRV32Config.fir@149368.4]

  assign _T_1458 = _GEN_494 + 4'h8; // @[CSR.scala 617:36:freechips.rocketchip.system.DefaultRV32Config.fir@149290.4]
  assign cause = insn_call ? {{28'd0}, _T_1458} : _T_1459; // @[CSR.scala 617:8:freechips.rocketchip.system.DefaultRV32Config.fir@149292.4]
  assign cause_lsbs = cause[7:0]; // @[CSR.scala 619:25:freechips.rocketchip.system.DefaultRV32Config.fir@149293.4]
  assign causeIsDebugInt = _T_1460 & _T_1461; // @[CSR.scala 620:39:freechips.rocketchip.system.DefaultRV32Config.fir@149296.4]
  assign causeIsDebugTrigger = _T_1463 & _T_1461; // @[CSR.scala 621:44:freechips.rocketchip.system.DefaultRV32Config.fir@149300.4]
  assign _T_1471 = _T_1470 >> reg_mstatus_prv; // @[CSR.scala 622:134:freechips.rocketchip.system.DefaultRV32Config.fir@149307.4]
  assign causeIsDebugBreak = _T_1467 & _T_1472; // @[CSR.scala 622:56:freechips.rocketchip.system.DefaultRV32Config.fir@149309.4]

  assign trapToDebug = _T_1475 | reg_debug; // @[CSR.scala 623:123:freechips.rocketchip.system.DefaultRV32Config.fir@149313.4]

  assign read_mideleg = reg_mideleg & 32'h222; // @[CSR.scala 356:28:freechips.rocketchip.system.DefaultRV32Config.fir@147750.4]
  assign read_medeleg = reg_medeleg & 32'hb15d; // @[CSR.scala 360:28:freechips.rocketchip.system.DefaultRV32Config.fir@147753.4]
  assign read_mcounteren = reg_mcounteren & 32'h7; // @[CSR.scala 376:30:freechips.rocketchip.system.DefaultRV32Config.fir@147762.4]
  assign read_scounteren = reg_scounteren & 32'h7; // @[CSR.scala 380:28:freechips.rocketchip.system.DefaultRV32Config.fir@147765.4]
  assign read_mip = _T_116 & 16'haaa; // @[CSR.scala 412:29:freechips.rocketchip.system.DefaultRV32Config.fir@147823.4]
  assign _T_384 = {io_status_debug,io_status_cease,io_status_isa,io_status_dprv,io_status_prv,io_status_sd,io_status_zero2,io_status_sxl,_T_375,_T_368}; // @[CSR.scala 441:38:freechips.rocketchip.system.DefaultRV32Config.fir@148134.4]
  assign read_mstatus = _T_384[31:0]; // @[CSR.scala 441:40:freechips.rocketchip.system.DefaultRV32Config.fir@148135.4]
  assign _T_386 = _T_385 ? 7'h7e : 7'h2; // @[CSR.scala 1061:39:freechips.rocketchip.system.DefaultRV32Config.fir@148137.4]
  assign read_mtvec = reg_mtvec & _T_389; // @[package.scala 131:35:freechips.rocketchip.system.DefaultRV32Config.fir@148141.4]
  assign _T_391 = _T_390 ? 7'h7e : 7'h2; // @[CSR.scala 1061:39:freechips.rocketchip.system.DefaultRV32Config.fir@148143.4]
  assign read_stvec = reg_stvec & _T_394; // @[package.scala 131:35:freechips.rocketchip.system.DefaultRV32Config.fir@148147.4]
  assign read_fcsr = {{1'd0}, _T_434}; // @[CSR.scala 465:78:freechips.rocketchip.system.DefaultRV32Config.fir@148189.4]

  assign _T_1483 = read_medeleg >> cause_lsbs; // @[CSR.scala 625:120:freechips.rocketchip.system.DefaultRV32Config.fir@149322.4]
  assign _T_1481 = read_mideleg >> cause_lsbs; // @[CSR.scala 625:94:freechips.rocketchip.system.DefaultRV32Config.fir@149320.4]
  assign _T_1485 = _T_1460 ? _T_1482 : _T_1484; // @[CSR.scala 625:66:freechips.rocketchip.system.DefaultRV32Config.fir@149324.4]
  assign delegate = _T_1478 & _T_1485; // @[CSR.scala 625:60:freechips.rocketchip.system.DefaultRV32Config.fir@149325.4]

  assign _GEN_42 = _T_1547 ? 2'h3 : reg_mstatus_prv; // @[CSR.scala 670:25:freechips.rocketchip.system.DefaultRV32Config.fir@149434.8]
  assign _GEN_61 = trapToDebug ? _GEN_42 : _GEN_50; // @[CSR.scala 669:24:freechips.rocketchip.system.DefaultRV32Config.fir@149432.6]
  assign _GEN_102 = _T_1872 ? {{1'd0}, reg_mstatus_spp} : _GEN_93; // @[CSR.scala 718:44:freechips.rocketchip.system.DefaultRV32Config.fir@149791.6]
  assign new_prv = insn_ret ? _GEN_102 : _GEN_79; // @[CSR.scala 717:19:freechips.rocketchip.system.DefaultRV32Config.fir@149787.4]

  assign mip_seip = reg_mip_seip | io_interrupts_seip; // @[CSR.scala 410:57:freechips.rocketchip.system.DefaultRV32Config.fir@147805.4]

  assign pending_interrupts = _GEN_497 & reg_mie; // @[CSR.scala 415:56:freechips.rocketchip.system.DefaultRV32Config.fir@147824.4]

  assign d_interrupts = {io_interrupts_debug, 14'h0}; // @[CSR.scala 416:42:freechips.rocketchip.system.DefaultRV32Config.fir@147826.4]
  assign m_interrupts = _T_119 ? _T_122 : 32'h0; // @[CSR.scala 417:25:freechips.rocketchip.system.DefaultRV32Config.fir@147832.4]
  assign s_interrupts = _T_126 ? _T_127 : 32'h0; // @[CSR.scala 418:25:freechips.rocketchip.system.DefaultRV32Config.fir@147838.4]

  assign anyInterrupt = _T_201 | _T_165; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147913.4]

  assign whichInterrupt = _T_128 ? 4'he : _T_275; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147988.4]

  assign _T_884 = _T_883 ? io_rw_rdata : 32'h0; // @[CSR.scala 1038:9:freechips.rocketchip.system.DefaultRV32Config.fir@148700.4]
  assign _T_888 = _T_887 ? io_rw_wdata : 32'h0; // @[CSR.scala 1038:49:freechips.rocketchip.system.DefaultRV32Config.fir@148704.4]
  assign wdata = _T_885 & _T_889; // @[CSR.scala 1038:43:freechips.rocketchip.system.DefaultRV32Config.fir@148706.4]

  assign insn_cease = system_insn & _T_904; // @[CSR.scala 581:95:freechips.rocketchip.system.DefaultRV32Config.fir@148737.4]
  assign insn_wfi = system_insn & _T_907; // @[CSR.scala 581:95:freechips.rocketchip.system.DefaultRV32Config.fir@148739.4]

  assign _T_1477 = insn_break ? 12'h800 : 12'h808; // @[CSR.scala 624:37:freechips.rocketchip.system.DefaultRV32Config.fir@149315.4]
  assign debugTVec = reg_debug ? _T_1477 : 12'h800; // @[CSR.scala 624:22:freechips.rocketchip.system.DefaultRV32Config.fir@149316.4]
  assign _T_1486 = delegate ? read_stvec : read_mtvec; // @[CSR.scala 632:19:freechips.rocketchip.system.DefaultRV32Config.fir@149326.4]
  assign notDebugTVec = _T_1496 ? _T_1490 : _T_1498; // @[CSR.scala 636:8:freechips.rocketchip.system.DefaultRV32Config.fir@149339.4]
  assign tvec = trapToDebug ? {{20'd0}, debugTVec} : notDebugTVec; // @[CSR.scala 638:17:freechips.rocketchip.system.DefaultRV32Config.fir@149340.4]

  assign epc = ~ _T_1546; // @[CSR.scala 1059:26:freechips.rocketchip.system.DefaultRV32Config.fir@149427.4]

  assign csr_wen = _T_4825 | _T_2315; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@153631.4]

  assign sel_tdata1 = io_rw_addr == 12'h7a1; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148491.4]
  assign sel_tdata2 = io_rw_addr == 12'h7a2; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148492.4]
  assign sel_misa = io_rw_addr == 12'h301; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148493.4]
  assign sel_mstatus = io_rw_addr == 12'h300; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148494.4]
  assign sel_mtvec = io_rw_addr == 12'h305; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148495.4]
  assign sel_mip = io_rw_addr == 12'h344; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148496.4]
  assign sel_mie = io_rw_addr == 12'h304; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148497.4]
  assign sel_mscratch = io_rw_addr == 12'h340; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148498.4]
  assign sel_mepc = io_rw_addr == 12'h341; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148499.4]
  assign sel_mtval = io_rw_addr == 12'h343; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148500.4]
  assign sel_mcause = io_rw_addr == 12'h342; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148501.4]
  assign sel_dcsr = io_rw_addr == 12'h7b0; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148503.4]
  assign sel_dpc = io_rw_addr == 12'h7b1; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148504.4]
  assign sel_dscratch = io_rw_addr == 12'h7b2; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148505.4]
  assign sel_fflags = io_rw_addr == 12'h1; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148506.4]
  assign sel_frm = io_rw_addr == 12'h2; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148507.4]
  assign sel_fcsr = io_rw_addr == 12'h3; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148508.4]
  assign sel_mcycle = io_rw_addr == 12'hb00; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148509.4]
  assign sel_minstret = io_rw_addr == 12'hb02; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148510.4]
  assign sel_mcounteren = io_rw_addr == 12'h306; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148656.4]
  assign _T_841 = io_rw_addr == 12'hc00; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148657.4]
  assign _T_842 = io_rw_addr == 12'hc02; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148658.4]
  assign sel_mcycleh = io_rw_addr == 12'hb80; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148659.4]
  assign sel_minstreth = io_rw_addr == 12'hb82; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148660.4]
  assign _T_845 = io_rw_addr == 12'hc80; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148661.4]
  assign _T_846 = io_rw_addr == 12'hc82; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148662.4]
  assign sel_sstatus = io_rw_addr == 12'h100; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148663.4]
  assign sel_sip = io_rw_addr == 12'h144; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148664.4]
  assign sel_sie = io_rw_addr == 12'h104; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148665.4]
  assign sel_sscratch = io_rw_addr == 12'h140; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148666.4]
  assign sel_scause = io_rw_addr == 12'h142; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148667.4]
  assign sel_stval = io_rw_addr == 12'h143; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148668.4]
  assign sel_satp = io_rw_addr == 12'h180; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148669.4]
  assign sel_sepc = io_rw_addr == 12'h141; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148670.4]
  assign sel_stvec = io_rw_addr == 12'h105; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148671.4]
  assign sel_scounteren = io_rw_addr == 12'h106; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148672.4]
  assign sel_mideleg = io_rw_addr == 12'h303; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148673.4]
  assign sel_medeleg = io_rw_addr == 12'h302; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148674.4]
  assign sel_pmp_cfg_0 = io_rw_addr == 12'h3a0; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148675.4]
  assign sel_pmp_cfg_1 = io_rw_addr == 12'h3a1; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148676.4]
  assign sel_pmp_addr_0 = io_rw_addr == 12'h3b0; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148679.4]
  assign sel_pmp_addr_1 = io_rw_addr == 12'h3b1; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148680.4]
  assign sel_pmp_addr_2 = io_rw_addr == 12'h3b2; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148681.4]
  assign sel_pmp_addr_3 = io_rw_addr == 12'h3b3; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148682.4]
  assign sel_pmp_addr_4 = io_rw_addr == 12'h3b4; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148683.4]
  assign sel_pmp_addr_5 = io_rw_addr == 12'h3b5; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148684.4]
  assign sel_pmp_addr_6 = io_rw_addr == 12'h3b6; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148685.4]
  assign sel_pmp_addr_7 = io_rw_addr == 12'h3b7; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148686.4]
  assign _T_880 = io_rw_addr == 12'hf12; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148696.4]
  assign _T_882 = io_rw_addr == 12'hf13; // @[CSR.scala 566:73:freechips.rocketchip.system.DefaultRV32Config.fir@148698.4]
  assign _T_411 = _T_410 ? 2'h1 : 2'h3; // @[CSR.scala 1060:36:freechips.rocketchip.system.DefaultRV32Config.fir@148164.4]
  assign _T_563 = {36'h0,2'h0,io_status_sd,29'h0,_T_554,_T_547}; // @[CSR.scala 529:57:freechips.rocketchip.system.DefaultRV32Config.fir@148364.4]
  assign io_rw_rdata = _T_2311[31:0]; // @[CSR.scala 747:15:freechips.rocketchip.system.DefaultRV32Config.fir@150270.4]

  assign io_decode_0_fp_illegal = _T_969 | _T_971; // @[CSR.scala 596:23:freechips.rocketchip.system.DefaultRV32Config.fir@148797.4]
  assign io_decode_0_read_illegal = _T_1426 | _T_1429; // @[CSR.scala 600:25:freechips.rocketchip.system.DefaultRV32Config.fir@149259.4]
  assign io_decode_0_fp_csr = _T_977 == 12'h0; // @[CSR.scala 598:19:freechips.rocketchip.system.DefaultRV32Config.fir@148807.4]
  assign io_decode_0_write_illegal = _T_1431 == 2'h3; // @[CSR.scala 607:26:freechips.rocketchip.system.DefaultRV32Config.fir@149262.4]
  assign io_decode_0_write_flush = _T_1439 == 1'h0; // @[CSR.scala 608:24:freechips.rocketchip.system.DefaultRV32Config.fir@149271.4]
  assign io_decode_0_system_illegal = _T_1453 | _T_1455; // @[CSR.scala 609:27:freechips.rocketchip.system.DefaultRV32Config.fir@149288.4]

  assign io_csr_stall = reg_wfi | io_status_cease; // @[CSR.scala 738:16:freechips.rocketchip.system.DefaultRV32Config.fir@149833.4]
  assign io_eret = _T_1512 | insn_ret; // @[CSR.scala 641:11:freechips.rocketchip.system.DefaultRV32Config.fir@149345.4]
  assign io_singleStep = reg_dcsr_step & _T_1547; // @[CSR.scala 642:17:freechips.rocketchip.system.DefaultRV32Config.fir@149348.4]
  assign io_status_debug = reg_debug; // @[CSR.scala 643:13:freechips.rocketchip.system.DefaultRV32Config.fir@149349.4 CSR.scala 645:19:freechips.rocketchip.system.DefaultRV32Config.fir@149356.4]
  assign io_status_cease = _T_1894; // @[CSR.scala 643:13:freechips.rocketchip.system.DefaultRV32Config.fir@149349.4 CSR.scala 739:19:freechips.rocketchip.system.DefaultRV32Config.fir@149838.4]
  assign io_status_isa = reg_misa; // @[CSR.scala 643:13:freechips.rocketchip.system.DefaultRV32Config.fir@149349.4 CSR.scala 646:17:freechips.rocketchip.system.DefaultRV32Config.fir@149357.4]
  assign io_status_dprv = _T_1511; // @[CSR.scala 643:13:freechips.rocketchip.system.DefaultRV32Config.fir@149349.4 CSR.scala 649:18:freechips.rocketchip.system.DefaultRV32Config.fir@149365.4]
  assign io_status_prv = reg_mstatus_prv; // @[CSR.scala 643:13:freechips.rocketchip.system.DefaultRV32Config.fir@149349.4]
  assign io_status_sd = _T_1505 | _T_1506; // @[CSR.scala 643:13:freechips.rocketchip.system.DefaultRV32Config.fir@149349.4 CSR.scala 644:16:freechips.rocketchip.system.DefaultRV32Config.fir@149355.4]
  assign io_status_zero2 = 27'h0; // @[CSR.scala 643:13:freechips.rocketchip.system.DefaultRV32Config.fir@149349.4]
  assign io_status_sxl = 2'h1; // @[CSR.scala 643:13:freechips.rocketchip.system.DefaultRV32Config.fir@149349.4 CSR.scala 648:17:freechips.rocketchip.system.DefaultRV32Config.fir@149359.4]
  assign io_status_uxl = 2'h1; // @[CSR.scala 643:13:freechips.rocketchip.system.DefaultRV32Config.fir@149349.4 CSR.scala 647:17:freechips.rocketchip.system.DefaultRV32Config.fir@149358.4]
  assign io_status_sd_rv32 = io_status_sd; // @[CSR.scala 643:13:freechips.rocketchip.system.DefaultRV32Config.fir@149349.4 CSR.scala 651:23:freechips.rocketchip.system.DefaultRV32Config.fir@149366.4]
  assign io_status_zero1 = 6'h0; // @[CSR.scala 643:13:freechips.rocketchip.system.DefaultRV32Config.fir@149349.4]
  assign io_status_vs = 2'h0; // @[CSR.scala 643:13:freechips.rocketchip.system.DefaultRV32Config.fir@149349.4]
  assign io_status_tsr = reg_mstatus_tsr; // @[CSR.scala 643:13:freechips.rocketchip.system.DefaultRV32Config.fir@149349.4]
  assign io_status_tw = reg_mstatus_tw; // @[CSR.scala 643:13:freechips.rocketchip.system.DefaultRV32Config.fir@149349.4]
  assign io_status_tvm = reg_mstatus_tvm; // @[CSR.scala 643:13:freechips.rocketchip.system.DefaultRV32Config.fir@149349.4]
  assign io_status_mxr = reg_mstatus_mxr; // @[CSR.scala 643:13:freechips.rocketchip.system.DefaultRV32Config.fir@149349.4]
  assign io_status_sum = reg_mstatus_sum; // @[CSR.scala 643:13:freechips.rocketchip.system.DefaultRV32Config.fir@149349.4]
  assign io_status_mprv = reg_mstatus_mprv; // @[CSR.scala 643:13:freechips.rocketchip.system.DefaultRV32Config.fir@149349.4]
  assign io_status_xs = 2'h0; // @[CSR.scala 643:13:freechips.rocketchip.system.DefaultRV32Config.fir@149349.4]
  assign io_status_fs = reg_mstatus_fs; // @[CSR.scala 643:13:freechips.rocketchip.system.DefaultRV32Config.fir@149349.4]
  assign io_status_mpp = reg_mstatus_mpp; // @[CSR.scala 643:13:freechips.rocketchip.system.DefaultRV32Config.fir@149349.4]
  assign io_status_hpp = 2'h0; // @[CSR.scala 643:13:freechips.rocketchip.system.DefaultRV32Config.fir@149349.4]
  assign io_status_spp = reg_mstatus_spp; // @[CSR.scala 643:13:freechips.rocketchip.system.DefaultRV32Config.fir@149349.4]
  assign io_status_mpie = reg_mstatus_mpie; // @[CSR.scala 643:13:freechips.rocketchip.system.DefaultRV32Config.fir@149349.4]
  assign io_status_hpie = 1'h0; // @[CSR.scala 643:13:freechips.rocketchip.system.DefaultRV32Config.fir@149349.4]
  assign io_status_spie = reg_mstatus_spie; // @[CSR.scala 643:13:freechips.rocketchip.system.DefaultRV32Config.fir@149349.4]
  assign io_status_upie = 1'h0; // @[CSR.scala 643:13:freechips.rocketchip.system.DefaultRV32Config.fir@149349.4]
  assign io_status_mie = reg_mstatus_mie; // @[CSR.scala 643:13:freechips.rocketchip.system.DefaultRV32Config.fir@149349.4]
  assign io_status_hie = 1'h0; // @[CSR.scala 643:13:freechips.rocketchip.system.DefaultRV32Config.fir@149349.4]
  assign io_status_sie = reg_mstatus_sie; // @[CSR.scala 643:13:freechips.rocketchip.system.DefaultRV32Config.fir@149349.4]
  assign io_status_uie = 1'h0; // @[CSR.scala 643:13:freechips.rocketchip.system.DefaultRV32Config.fir@149349.4]

  assign io_ptbr_mode = reg_satp_mode; // @[CSR.scala 640:11:freechips.rocketchip.system.DefaultRV32Config.fir@149342.4]
  assign io_ptbr_ppn = reg_satp_ppn; // @[CSR.scala 640:11:freechips.rocketchip.system.DefaultRV32Config.fir@149342.4]

  assign _GEN_103 = _T_1872 ? _T_571 : _GEN_95; // @[CSR.scala 718:44:freechips.rocketchip.system.DefaultRV32Config.fir@149791.6]
  assign io_evec = insn_ret ? _GEN_103 : tvec; // @[CSR.scala 639:11:freechips.rocketchip.system.DefaultRV32Config.fir@149341.4 CSR.scala 723:15:freechips.rocketchip.system.DefaultRV32Config.fir@149801.8 CSR.scala 727:15:freechips.rocketchip.system.DefaultRV32Config.fir@149814.10 CSR.scala 733:15:freechips.rocketchip.system.DefaultRV32Config.fir@149828.10]

  assign io_time = _T_100[31:0]; // @[CSR.scala 737:11:freechips.rocketchip.system.DefaultRV32Config.fir@149831.4]

  assign io_fcsr_rm = reg_frm; // @[CSR.scala 774:14:freechips.rocketchip.system.DefaultRV32Config.fir@153621.4]

  assign io_interrupt = _T_279 & _T_281; // @[CSR.scala 422:16:freechips.rocketchip.system.DefaultRV32Config.fir@147997.4]
  assign io_interrupt_cause = 32'h80000000 + _GEN_498; // @[CSR.scala 423:22:freechips.rocketchip.system.DefaultRV32Config.fir@147998.4]

  assign io_bp_0_control_action = reg_bp_0_control_action; // @[CSR.scala 424:9:freechips.rocketchip.system.DefaultRV32Config.fir@147999.4]
  assign io_bp_0_control_tmatch = reg_bp_0_control_tmatch; // @[CSR.scala 424:9:freechips.rocketchip.system.DefaultRV32Config.fir@147999.4]
  assign io_bp_0_control_m = reg_bp_0_control_m; // @[CSR.scala 424:9:freechips.rocketchip.system.DefaultRV32Config.fir@147999.4]
  assign io_bp_0_control_s = reg_bp_0_control_s; // @[CSR.scala 424:9:freechips.rocketchip.system.DefaultRV32Config.fir@147999.4]
  assign io_bp_0_control_u = reg_bp_0_control_u; // @[CSR.scala 424:9:freechips.rocketchip.system.DefaultRV32Config.fir@147999.4]
  assign io_bp_0_control_x = reg_bp_0_control_x; // @[CSR.scala 424:9:freechips.rocketchip.system.DefaultRV32Config.fir@147999.4]
  assign io_bp_0_control_w = reg_bp_0_control_w; // @[CSR.scala 424:9:freechips.rocketchip.system.DefaultRV32Config.fir@147999.4]
  assign io_bp_0_control_r = reg_bp_0_control_r; // @[CSR.scala 424:9:freechips.rocketchip.system.DefaultRV32Config.fir@147999.4]
  assign io_bp_0_address = reg_bp_0_address; // @[CSR.scala 424:9:freechips.rocketchip.system.DefaultRV32Config.fir@147999.4]
  assign io_pmp_0_cfg_l = reg_pmp_0_cfg_l; // @[CSR.scala 425:10:freechips.rocketchip.system.DefaultRV32Config.fir@148096.4]
  assign io_pmp_0_cfg_a = reg_pmp_0_cfg_a; // @[CSR.scala 425:10:freechips.rocketchip.system.DefaultRV32Config.fir@148096.4]
  assign io_pmp_0_cfg_x = reg_pmp_0_cfg_x; // @[CSR.scala 425:10:freechips.rocketchip.system.DefaultRV32Config.fir@148096.4]
  assign io_pmp_0_cfg_w = reg_pmp_0_cfg_w; // @[CSR.scala 425:10:freechips.rocketchip.system.DefaultRV32Config.fir@148096.4]
  assign io_pmp_0_cfg_r = reg_pmp_0_cfg_r; // @[CSR.scala 425:10:freechips.rocketchip.system.DefaultRV32Config.fir@148096.4]
  assign io_pmp_0_addr = reg_pmp_0_addr; // @[CSR.scala 425:10:freechips.rocketchip.system.DefaultRV32Config.fir@148096.4]
  assign io_pmp_0_mask = _T_291[31:0]; // @[CSR.scala 425:10:freechips.rocketchip.system.DefaultRV32Config.fir@148096.4]
  assign io_pmp_1_cfg_l = reg_pmp_1_cfg_l; // @[CSR.scala 425:10:freechips.rocketchip.system.DefaultRV32Config.fir@148097.4]
  assign io_pmp_1_cfg_a = reg_pmp_1_cfg_a; // @[CSR.scala 425:10:freechips.rocketchip.system.DefaultRV32Config.fir@148097.4]
  assign io_pmp_1_cfg_x = reg_pmp_1_cfg_x; // @[CSR.scala 425:10:freechips.rocketchip.system.DefaultRV32Config.fir@148097.4]
  assign io_pmp_1_cfg_w = reg_pmp_1_cfg_w; // @[CSR.scala 425:10:freechips.rocketchip.system.DefaultRV32Config.fir@148097.4]
  assign io_pmp_1_cfg_r = reg_pmp_1_cfg_r; // @[CSR.scala 425:10:freechips.rocketchip.system.DefaultRV32Config.fir@148097.4]
  assign io_pmp_1_addr = reg_pmp_1_addr; // @[CSR.scala 425:10:freechips.rocketchip.system.DefaultRV32Config.fir@148097.4]
  assign io_pmp_1_mask = _T_300[31:0]; // @[CSR.scala 425:10:freechips.rocketchip.system.DefaultRV32Config.fir@148097.4]
  assign io_pmp_2_cfg_l = reg_pmp_2_cfg_l; // @[CSR.scala 425:10:freechips.rocketchip.system.DefaultRV32Config.fir@148098.4]
  assign io_pmp_2_cfg_a = reg_pmp_2_cfg_a; // @[CSR.scala 425:10:freechips.rocketchip.system.DefaultRV32Config.fir@148098.4]
  assign io_pmp_2_cfg_x = reg_pmp_2_cfg_x; // @[CSR.scala 425:10:freechips.rocketchip.system.DefaultRV32Config.fir@148098.4]
  assign io_pmp_2_cfg_w = reg_pmp_2_cfg_w; // @[CSR.scala 425:10:freechips.rocketchip.system.DefaultRV32Config.fir@148098.4]
  assign io_pmp_2_cfg_r = reg_pmp_2_cfg_r; // @[CSR.scala 425:10:freechips.rocketchip.system.DefaultRV32Config.fir@148098.4]
  assign io_pmp_2_addr = reg_pmp_2_addr; // @[CSR.scala 425:10:freechips.rocketchip.system.DefaultRV32Config.fir@148098.4]
  assign io_pmp_2_mask = _T_309[31:0]; // @[CSR.scala 425:10:freechips.rocketchip.system.DefaultRV32Config.fir@148098.4]
  assign io_pmp_3_cfg_l = reg_pmp_3_cfg_l; // @[CSR.scala 425:10:freechips.rocketchip.system.DefaultRV32Config.fir@148099.4]
  assign io_pmp_3_cfg_a = reg_pmp_3_cfg_a; // @[CSR.scala 425:10:freechips.rocketchip.system.DefaultRV32Config.fir@148099.4]
  assign io_pmp_3_cfg_x = reg_pmp_3_cfg_x; // @[CSR.scala 425:10:freechips.rocketchip.system.DefaultRV32Config.fir@148099.4]
  assign io_pmp_3_cfg_w = reg_pmp_3_cfg_w; // @[CSR.scala 425:10:freechips.rocketchip.system.DefaultRV32Config.fir@148099.4]
  assign io_pmp_3_cfg_r = reg_pmp_3_cfg_r; // @[CSR.scala 425:10:freechips.rocketchip.system.DefaultRV32Config.fir@148099.4]
  assign io_pmp_3_addr = reg_pmp_3_addr; // @[CSR.scala 425:10:freechips.rocketchip.system.DefaultRV32Config.fir@148099.4]
  assign io_pmp_3_mask = _T_318[31:0]; // @[CSR.scala 425:10:freechips.rocketchip.system.DefaultRV32Config.fir@148099.4]
  assign io_pmp_4_cfg_l = reg_pmp_4_cfg_l; // @[CSR.scala 425:10:freechips.rocketchip.system.DefaultRV32Config.fir@148100.4]
  assign io_pmp_4_cfg_a = reg_pmp_4_cfg_a; // @[CSR.scala 425:10:freechips.rocketchip.system.DefaultRV32Config.fir@148100.4]
  assign io_pmp_4_cfg_x = reg_pmp_4_cfg_x; // @[CSR.scala 425:10:freechips.rocketchip.system.DefaultRV32Config.fir@148100.4]
  assign io_pmp_4_cfg_w = reg_pmp_4_cfg_w; // @[CSR.scala 425:10:freechips.rocketchip.system.DefaultRV32Config.fir@148100.4]
  assign io_pmp_4_cfg_r = reg_pmp_4_cfg_r; // @[CSR.scala 425:10:freechips.rocketchip.system.DefaultRV32Config.fir@148100.4]
  assign io_pmp_4_addr = reg_pmp_4_addr; // @[CSR.scala 425:10:freechips.rocketchip.system.DefaultRV32Config.fir@148100.4]
  assign io_pmp_4_mask = _T_327[31:0]; // @[CSR.scala 425:10:freechips.rocketchip.system.DefaultRV32Config.fir@148100.4]
  assign io_pmp_5_cfg_l = reg_pmp_5_cfg_l; // @[CSR.scala 425:10:freechips.rocketchip.system.DefaultRV32Config.fir@148101.4]
  assign io_pmp_5_cfg_a = reg_pmp_5_cfg_a; // @[CSR.scala 425:10:freechips.rocketchip.system.DefaultRV32Config.fir@148101.4]
  assign io_pmp_5_cfg_x = reg_pmp_5_cfg_x; // @[CSR.scala 425:10:freechips.rocketchip.system.DefaultRV32Config.fir@148101.4]
  assign io_pmp_5_cfg_w = reg_pmp_5_cfg_w; // @[CSR.scala 425:10:freechips.rocketchip.system.DefaultRV32Config.fir@148101.4]
  assign io_pmp_5_cfg_r = reg_pmp_5_cfg_r; // @[CSR.scala 425:10:freechips.rocketchip.system.DefaultRV32Config.fir@148101.4]
  assign io_pmp_5_addr = reg_pmp_5_addr; // @[CSR.scala 425:10:freechips.rocketchip.system.DefaultRV32Config.fir@148101.4]
  assign io_pmp_5_mask = _T_336[31:0]; // @[CSR.scala 425:10:freechips.rocketchip.system.DefaultRV32Config.fir@148101.4]
  assign io_pmp_6_cfg_l = reg_pmp_6_cfg_l; // @[CSR.scala 425:10:freechips.rocketchip.system.DefaultRV32Config.fir@148102.4]
  assign io_pmp_6_cfg_a = reg_pmp_6_cfg_a; // @[CSR.scala 425:10:freechips.rocketchip.system.DefaultRV32Config.fir@148102.4]
  assign io_pmp_6_cfg_x = reg_pmp_6_cfg_x; // @[CSR.scala 425:10:freechips.rocketchip.system.DefaultRV32Config.fir@148102.4]
  assign io_pmp_6_cfg_w = reg_pmp_6_cfg_w; // @[CSR.scala 425:10:freechips.rocketchip.system.DefaultRV32Config.fir@148102.4]
  assign io_pmp_6_cfg_r = reg_pmp_6_cfg_r; // @[CSR.scala 425:10:freechips.rocketchip.system.DefaultRV32Config.fir@148102.4]
  assign io_pmp_6_addr = reg_pmp_6_addr; // @[CSR.scala 425:10:freechips.rocketchip.system.DefaultRV32Config.fir@148102.4]
  assign io_pmp_6_mask = _T_345[31:0]; // @[CSR.scala 425:10:freechips.rocketchip.system.DefaultRV32Config.fir@148102.4]
  assign io_pmp_7_cfg_l = reg_pmp_7_cfg_l; // @[CSR.scala 425:10:freechips.rocketchip.system.DefaultRV32Config.fir@148103.4]
  assign io_pmp_7_cfg_a = reg_pmp_7_cfg_a; // @[CSR.scala 425:10:freechips.rocketchip.system.DefaultRV32Config.fir@148103.4]
  assign io_pmp_7_cfg_x = reg_pmp_7_cfg_x; // @[CSR.scala 425:10:freechips.rocketchip.system.DefaultRV32Config.fir@148103.4]
  assign io_pmp_7_cfg_w = reg_pmp_7_cfg_w; // @[CSR.scala 425:10:freechips.rocketchip.system.DefaultRV32Config.fir@148103.4]
  assign io_pmp_7_cfg_r = reg_pmp_7_cfg_r; // @[CSR.scala 425:10:freechips.rocketchip.system.DefaultRV32Config.fir@148103.4]
  assign io_pmp_7_addr = reg_pmp_7_addr; // @[CSR.scala 425:10:freechips.rocketchip.system.DefaultRV32Config.fir@148103.4]
  assign io_pmp_7_mask = _T_354[31:0]; // @[CSR.scala 425:10:freechips.rocketchip.system.DefaultRV32Config.fir@148103.4]

  assign io_trace_0_valid = _T_5401 | io_trace_0_exception; // @[CSR.scala 1017:13:freechips.rocketchip.system.DefaultRV32Config.fir@154817.4]
  assign io_trace_0_iaddr = io_pc; // @[CSR.scala 1019:13:freechips.rocketchip.system.DefaultRV32Config.fir@154819.4]
  assign io_trace_0_insn = io_inst_0; // @[CSR.scala 1018:12:freechips.rocketchip.system.DefaultRV32Config.fir@154818.4]
  assign io_trace_0_exception = _T_1512 | io_exception; // @[CSR.scala 1016:17:freechips.rocketchip.system.DefaultRV32Config.fir@154814.4]

always @(posedge clock) begin
    if (reset) begin
      reg_mstatus_prv <= 2'h3;
    end else begin
      if (_T_33) begin
        reg_mstatus_prv <= 2'h0;
      end else begin
        if (insn_ret) begin
          if (_T_1872) begin
            reg_mstatus_prv <= {{1'd0}, reg_mstatus_spp};
          end else begin
            if (_T_1879) begin
              reg_mstatus_prv <= reg_dcsr_prv;
            end else begin
              reg_mstatus_prv <= reg_mstatus_mpp;
            end
          end
        end else begin
          if (exception) begin
            if (trapToDebug) begin
              if (_T_1547) begin
                reg_mstatus_prv <= 2'h3;
              end
            end else begin
              if (delegate) begin
                reg_mstatus_prv <= 2'h1;
              end else begin
                reg_mstatus_prv <= 2'h3;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      reg_mstatus_tsr <= 1'h0;
    end else begin
      if (csr_wen) begin
        if (sel_mstatus) begin
          reg_mstatus_tsr <= _T_4858;
        end
      end
    end
    if (reset) begin
      reg_mstatus_tw <= 1'h0;
    end else begin
      if (csr_wen) begin
        if (sel_mstatus) begin
          reg_mstatus_tw <= _T_4857;
        end
      end
    end
    if (reset) begin
      reg_mstatus_tvm <= 1'h0;
    end else begin
      if (csr_wen) begin
        if (sel_mstatus) begin
          reg_mstatus_tvm <= _T_4856;
        end
      end
    end
    if (reset) begin
      reg_mstatus_mxr <= 1'h0;
    end else begin
      if (csr_wen) begin
        if (sel_sstatus) begin
          reg_mstatus_mxr <= _T_4855;
        end else begin
          if (sel_mstatus) begin
            reg_mstatus_mxr <= _T_4855;
          end
        end
      end
    end
    if (reset) begin
      reg_mstatus_sum <= 1'h0;
    end else begin
      if (csr_wen) begin
        if (sel_sstatus) begin
          reg_mstatus_sum <= _T_4854;
        end else begin
          if (sel_mstatus) begin
            reg_mstatus_sum <= _T_4854;
          end
        end
      end
    end
    if (reset) begin
      reg_mstatus_mprv <= 1'h0;
    end else begin
      if (csr_wen) begin
        if (sel_mstatus) begin
          reg_mstatus_mprv <= _T_4853;
        end
      end
    end
    if (reset) begin
      reg_mstatus_fs <= 2'h0;
    end else begin
      if (csr_wen) begin
        if (sel_sstatus) begin
          if (_T_4873) begin
            reg_mstatus_fs <= 2'h3;
          end else begin
            reg_mstatus_fs <= 2'h0;
          end
        end else begin
          if (sel_mstatus) begin
            if (_T_4873) begin
              reg_mstatus_fs <= 2'h3;
            end else begin
              reg_mstatus_fs <= 2'h0;
            end
          end
        end
      end
    end
    if (reset) begin
      reg_mstatus_mpp <= 2'h3;
    end else begin
      if (csr_wen) begin
        if (sel_mstatus) begin
          if (_T_4871) begin
            reg_mstatus_mpp <= 2'h0;
          end else begin
            reg_mstatus_mpp <= _T_4850;
          end
        end else begin
          if (insn_ret) begin
            if (_T_1872) begin
              if (exception) begin
                if (!(trapToDebug)) begin
                  if (!(delegate)) begin
                    reg_mstatus_mpp <= reg_mstatus_prv;
                  end
                end
              end
            end else begin
              if (_T_1879) begin
                if (exception) begin
                  if (!(trapToDebug)) begin
                    if (!(delegate)) begin
                      reg_mstatus_mpp <= reg_mstatus_prv;
                    end
                  end
                end
              end else begin
                reg_mstatus_mpp <= 2'h0;
              end
            end
          end else begin
            if (exception) begin
              if (!(trapToDebug)) begin
                if (!(delegate)) begin
                  reg_mstatus_mpp <= reg_mstatus_prv;
                end
              end
            end
          end
        end
      end else begin
        if (insn_ret) begin
          if (_T_1872) begin
            if (exception) begin
              if (!(trapToDebug)) begin
                if (!(delegate)) begin
                  reg_mstatus_mpp <= reg_mstatus_prv;
                end
              end
            end
          end else begin
            if (_T_1879) begin
              reg_mstatus_mpp <= _GEN_91;
            end else begin
              reg_mstatus_mpp <= 2'h0;
            end
          end
        end else begin
          reg_mstatus_mpp <= _GEN_91;
        end
      end
    end
    if (reset) begin
      reg_mstatus_spp <= 1'h0;
    end else begin
      reg_mstatus_spp <= _GEN_326[0];
    end
    if (reset) begin
      reg_mstatus_mpie <= 1'h0;
    end else begin
      if (csr_wen) begin
        if (sel_mstatus) begin
          reg_mstatus_mpie <= _T_4847;
        end else begin
          if (insn_ret) begin
            if (_T_1872) begin
              if (exception) begin
                if (!(trapToDebug)) begin
                  if (!(delegate)) begin
                    reg_mstatus_mpie <= reg_mstatus_mie;
                  end
                end
              end
            end else begin
              if (_T_1879) begin
                if (exception) begin
                  if (!(trapToDebug)) begin
                    if (!(delegate)) begin
                      reg_mstatus_mpie <= reg_mstatus_mie;
                    end
                  end
                end
              end else begin
                reg_mstatus_mpie <= 1'h1;
              end
            end
          end else begin
            if (exception) begin
              if (!(trapToDebug)) begin
                if (!(delegate)) begin
                  reg_mstatus_mpie <= reg_mstatus_mie;
                end
              end
            end
          end
        end
      end else begin
        if (insn_ret) begin
          if (_T_1872) begin
            if (exception) begin
              if (!(trapToDebug)) begin
                if (!(delegate)) begin
                  reg_mstatus_mpie <= reg_mstatus_mie;
                end
              end
            end
          end else begin
            if (_T_1879) begin
              reg_mstatus_mpie <= _GEN_90;
            end else begin
              reg_mstatus_mpie <= 1'h1;
            end
          end
        end else begin
          reg_mstatus_mpie <= _GEN_90;
        end
      end
    end
    if (reset) begin
      reg_mstatus_spie <= 1'h0;
    end else begin
      if (csr_wen) begin
        if (sel_sstatus) begin
          reg_mstatus_spie <= _T_4845;
        end else begin
          if (sel_mstatus) begin
            reg_mstatus_spie <= _T_4845;
          end else begin
            if (insn_ret) begin
              reg_mstatus_spie <= _GEN_100;
            end else begin
              if (exception) begin
                if (!(trapToDebug)) begin
                  if (delegate) begin
                    reg_mstatus_spie <= reg_mstatus_sie;
                  end
                end
              end
            end
          end
        end
      end else begin
        if (insn_ret) begin
          reg_mstatus_spie <= _GEN_100;
        end else begin
          if (exception) begin
            if (!(trapToDebug)) begin
              if (delegate) begin
                reg_mstatus_spie <= reg_mstatus_sie;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      reg_mstatus_mie <= 1'h0;
    end else begin
      if (csr_wen) begin
        if (sel_mstatus) begin
          reg_mstatus_mie <= _T_4843;
        end else begin
          if (insn_ret) begin
            if (_T_1872) begin
              if (exception) begin
                if (!(trapToDebug)) begin
                  reg_mstatus_mie <= _GEN_56;
                end
              end
            end else begin
              if (_T_1879) begin
                if (exception) begin
                  if (!(trapToDebug)) begin
                    reg_mstatus_mie <= _GEN_56;
                  end
                end
              end else begin
                reg_mstatus_mie <= reg_mstatus_mpie;
              end
            end
          end else begin
            if (exception) begin
              if (!(trapToDebug)) begin
                reg_mstatus_mie <= _GEN_56;
              end
            end
          end
        end
      end else begin
        if (insn_ret) begin
          if (_T_1872) begin
            if (exception) begin
              if (!(trapToDebug)) begin
                reg_mstatus_mie <= _GEN_56;
              end
            end
          end else begin
            if (_T_1879) begin
              reg_mstatus_mie <= _GEN_92;
            end else begin
              reg_mstatus_mie <= reg_mstatus_mpie;
            end
          end
        end else begin
          reg_mstatus_mie <= _GEN_92;
        end
      end
    end
    if (reset) begin
      reg_mstatus_sie <= 1'h0;
    end else begin
      if (csr_wen) begin
        if (sel_sstatus) begin
          reg_mstatus_sie <= _T_4841;
        end else begin
          if (sel_mstatus) begin
            reg_mstatus_sie <= _T_4841;
          end else begin
            if (insn_ret) begin
              if (_T_1872) begin
                reg_mstatus_sie <= reg_mstatus_spie;
              end else begin
                if (exception) begin
                  if (!(trapToDebug)) begin
                    if (delegate) begin
                      reg_mstatus_sie <= 1'h0;
                    end
                  end
                end
              end
            end else begin
              if (exception) begin
                if (!(trapToDebug)) begin
                  if (delegate) begin
                    reg_mstatus_sie <= 1'h0;
                  end
                end
              end
            end
          end
        end
      end else begin
        if (insn_ret) begin
          if (_T_1872) begin
            reg_mstatus_sie <= reg_mstatus_spie;
          end else begin
            if (exception) begin
              if (!(trapToDebug)) begin
                if (delegate) begin
                  reg_mstatus_sie <= 1'h0;
                end
              end
            end
          end
        end else begin
          if (exception) begin
            if (!(trapToDebug)) begin
              if (delegate) begin
                reg_mstatus_sie <= 1'h0;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      reg_dcsr_prv <= 2'h3;
    end else begin
      if (csr_wen) begin
        if (sel_dcsr) begin
          if (_T_4969) begin
            reg_dcsr_prv <= 2'h0;
          end else begin
            reg_dcsr_prv <= _T_4955;
          end
        end else begin
          if (exception) begin
            if (trapToDebug) begin
              if (_T_1547) begin
                reg_dcsr_prv <= reg_mstatus_prv;
              end
            end
          end
        end
      end else begin
        if (exception) begin
          if (trapToDebug) begin
            if (_T_1547) begin
              reg_dcsr_prv <= reg_mstatus_prv;
            end
          end
        end
      end
    end
    if (reset) begin
      reg_dcsr_ebreakm <= 1'h0;
    end else begin
      if (csr_wen) begin
        if (sel_dcsr) begin
          reg_dcsr_ebreakm <= _T_4965;
        end
      end
    end
    if (reset) begin
      reg_dcsr_ebreaks <= 1'h0;
    end else begin
      if (csr_wen) begin
        if (sel_dcsr) begin
          reg_dcsr_ebreaks <= _T_4963;
        end
      end
    end
    if (reset) begin
      reg_dcsr_ebreaku <= 1'h0;
    end else begin
      if (csr_wen) begin
        if (sel_dcsr) begin
          reg_dcsr_ebreaku <= _T_4962;
        end
      end
    end
    if (reset) begin
      reg_dcsr_cause <= 3'h0;
    end else begin
      if (exception) begin
        if (trapToDebug) begin
          if (_T_1547) begin
            if (reg_singleStepped) begin
              reg_dcsr_cause <= 3'h4;
            end else begin
              reg_dcsr_cause <= {{1'd0}, _T_1549};
            end
          end
        end
      end
    end
    if (reset) begin
      reg_dcsr_step <= 1'h0;
    end else begin
      if (csr_wen) begin
        if (sel_dcsr) begin
          reg_dcsr_step <= _T_4880;
        end
      end
    end
    if (reset) begin
      reg_debug <= 1'h0;
    end else begin
      if (insn_ret) begin
        if (_T_1872) begin
          if (exception) begin
            if (trapToDebug) begin
              reg_debug <= _GEN_38;
            end
          end
        end else begin
          if (_T_1879) begin
            reg_debug <= 1'h0;
          end else begin
            if (exception) begin
              if (trapToDebug) begin
                reg_debug <= _GEN_38;
              end
            end
          end
        end
      end else begin
        if (exception) begin
          if (trapToDebug) begin
            reg_debug <= _GEN_38;
          end
        end
      end
    end
    if (reset) begin
      reg_misa <= 32'h40941125;
    end else begin
      if (csr_wen) begin
        if (sel_misa) begin
          if (_T_4881) begin
            reg_misa <= _T_4890;
          end
        end
      end
    end
    if (_T_277) begin
      reg_singleStepped <= 1'h0;
    end else begin
      reg_singleStepped <= _GEN_36;
    end
    if (csr_wen) begin
      if (sel_satp) begin
        if (_T_5039) begin
          reg_satp_mode <= _T_5036;
        end
      end
    end
    if (csr_wen) begin
      if (sel_satp) begin
        if (_T_5039) begin
          reg_satp_ppn <= {{2'd0}, _T_5041};
        end
      end
    end
    if (reset) begin
      reg_bp_0_control_dmode <= 1'h0;
    end else begin
      if (csr_wen) begin
        if (_T_5053) begin
          if (sel_tdata1) begin
            reg_bp_0_control_dmode <= _T_5111;
          end
        end
      end
    end
    if (reset) begin
      reg_bp_0_control_action <= 1'h0;
    end else begin
      if (csr_wen) begin
        if (_T_5053) begin
          if (sel_tdata1) begin
            reg_bp_0_control_action <= _GEN_191;
          end
        end
      end
    end
    if (csr_wen) begin
      if (_T_5053) begin
        if (sel_tdata1) begin
          reg_bp_0_control_tmatch <= _T_5064;
        end
      end
    end
    if (csr_wen) begin
      if (_T_5053) begin
        if (sel_tdata1) begin
          reg_bp_0_control_m <= _T_5063;
        end
      end
    end
    if (csr_wen) begin
      if (_T_5053) begin
        if (sel_tdata1) begin
          reg_bp_0_control_s <= _T_5061;
        end
      end
    end
    if (csr_wen) begin
      if (_T_5053) begin
        if (sel_tdata1) begin
          reg_bp_0_control_u <= _T_5060;
        end
      end
    end
    if (reset) begin
      reg_bp_0_control_x <= 1'h0;
    end else begin
      if (csr_wen) begin
        if (_T_5053) begin
          if (sel_tdata1) begin
            reg_bp_0_control_x <= _T_4880;
          end
        end
      end
    end
    if (reset) begin
      reg_bp_0_control_w <= 1'h0;
    end else begin
      if (csr_wen) begin
        if (_T_5053) begin
          if (sel_tdata1) begin
            reg_bp_0_control_w <= _T_5058;
          end
        end
      end
    end
    if (reset) begin
      reg_bp_0_control_r <= 1'h0;
    end else begin
      if (csr_wen) begin
        if (_T_5053) begin
          if (sel_tdata1) begin
            reg_bp_0_control_r <= _T_5057;
          end
        end
      end
    end
    if (csr_wen) begin
      if (_T_5053) begin
        if (sel_tdata2) begin
          reg_bp_0_address <= wdata;
        end
      end
    end
    if (reset) begin
      reg_mtvec <= 32'h0;
    end else begin
      if (csr_wen) begin
        if (sel_mtvec) begin
          reg_mtvec <= wdata;
        end
      end
    end
    if (csr_wen) begin
      if (sel_stvec) begin
        reg_stvec <= wdata;
      end
    end
    if (csr_wen) begin
      if (sel_sie) begin
        reg_mie <= _T_5045;
      end else begin
        if (sel_mie) begin
          reg_mie <= _T_4932;
        end
      end
    end
    if (csr_wen) begin
      if (sel_mscratch) begin
        reg_mscratch <= wdata;
      end
    end
    if (csr_wen) begin
      if (sel_sscratch) begin
        reg_sscratch <= wdata;
      end
    end
    if (csr_wen) begin
      if (sel_mcounteren) begin
        reg_mcounteren <= wdata;
      end
    end
    if (csr_wen) begin
      if (sel_scounteren) begin
        reg_scounteren <= wdata;
      end
    end
    if (csr_wen) begin
      if (sel_mip) begin
        reg_mip_seip <= _T_4925;
      end
    end
    if (csr_wen) begin
      if (sel_mip) begin
        reg_mip_stip <= _T_4921;
      end
    end
    if (csr_wen) begin
      if (sel_sip) begin
        reg_mip_ssip <= _T_5017;
      end else begin
        if (sel_mip) begin
          reg_mip_ssip <= _T_4917;
        end
      end
    end
    if (csr_wen) begin
      if (sel_dpc) begin
        reg_dpc <= _T_4935;
      end else begin
        if (exception) begin
          if (trapToDebug) begin
            if (_T_1547) begin
              reg_dpc <= epc;
            end
          end
        end
      end
    end else begin
      if (exception) begin
        if (trapToDebug) begin
          if (_T_1547) begin
            reg_dpc <= epc;
          end
        end
      end
    end
    if (csr_wen) begin
      if (sel_dscratch) begin
        reg_dscratch <= wdata;
      end
    end
    if (csr_wen) begin
      if (sel_mideleg) begin
        reg_mideleg <= wdata;
      end
    end
    if (csr_wen) begin
      if (sel_medeleg) begin
        reg_medeleg <= wdata;
      end
    end
    if (csr_wen) begin
      if (sel_sepc) begin
        reg_sepc <= _T_4935;
      end else begin
        if (exception) begin
          if (!(trapToDebug)) begin
            if (delegate) begin
              reg_sepc <= epc;
            end
          end
        end
      end
    end else begin
      if (exception) begin
        if (!(trapToDebug)) begin
          if (delegate) begin
            reg_sepc <= epc;
          end
        end
      end
    end
    if (csr_wen) begin
      if (sel_mepc) begin
        reg_mepc <= _T_4935;
      end else begin
        if (exception) begin
          if (!(trapToDebug)) begin
            if (!(delegate)) begin
              reg_mepc <= epc;
            end
          end
        end
      end
    end else begin
      if (exception) begin
        if (!(trapToDebug)) begin
          if (!(delegate)) begin
            reg_mepc <= epc;
          end
        end
      end
    end
    if (csr_wen) begin
      if (sel_mcause) begin
        reg_mcause <= _T_4936;
      end else begin
        if (exception) begin
          if (!(trapToDebug)) begin
            if (!(delegate)) begin
              if (insn_call) begin
                reg_mcause <= {{28'd0}, _T_1458};
              end else begin
                if (insn_break) begin
                  reg_mcause <= 32'h3;
                end else begin
                  reg_mcause <= io_cause;
                end
              end
            end
          end
        end
      end
    end else begin
      if (exception) begin
        if (!(trapToDebug)) begin
          if (!(delegate)) begin
            if (insn_call) begin
              reg_mcause <= {{28'd0}, _T_1458};
            end else begin
              if (insn_break) begin
                reg_mcause <= 32'h3;
              end else begin
                reg_mcause <= io_cause;
              end
            end
          end
        end
      end
    end
    if (csr_wen) begin
      if (sel_mtval) begin
        reg_mtval <= wdata;
      end else begin
        if (exception) begin
          if (!(trapToDebug)) begin
            if (!(delegate)) begin
              reg_mtval <= io_tval;
            end
          end
        end
      end
    end else begin
      if (exception) begin
        if (!(trapToDebug)) begin
          if (!(delegate)) begin
            reg_mtval <= io_tval;
          end
        end
      end
    end
    if (csr_wen) begin
      if (sel_scause) begin
        reg_scause <= _T_5049;
      end else begin
        if (exception) begin
          if (!(trapToDebug)) begin
            if (delegate) begin
              if (insn_call) begin
                reg_scause <= {{28'd0}, _T_1458};
              end else begin
                if (insn_break) begin
                  reg_scause <= 32'h3;
                end else begin
                  reg_scause <= io_cause;
                end
              end
            end
          end
        end
      end
    end else begin
      if (exception) begin
        if (!(trapToDebug)) begin
          if (delegate) begin
            if (insn_call) begin
              reg_scause <= {{28'd0}, _T_1458};
            end else begin
              if (insn_break) begin
                reg_scause <= 32'h3;
              end else begin
                reg_scause <= io_cause;
              end
            end
          end
        end
      end
    end
    if (csr_wen) begin
      if (sel_stval) begin
        reg_stval <= wdata;
      end else begin
        if (exception) begin
          if (!(trapToDebug)) begin
            if (delegate) begin
              reg_stval <= io_tval;
            end
          end
        end
      end
    end else begin
      if (exception) begin
        if (!(trapToDebug)) begin
          if (delegate) begin
            reg_stval <= io_tval;
          end
        end
      end
    end
    reg_fflags <= _GEN_349[4:0];
    reg_frm <= _GEN_350[2:0];
    if (reset) begin
      reg_pmp_0_cfg_l <= 1'h0;
    end else begin
      if (csr_wen) begin
        if (_T_5196) begin
          reg_pmp_0_cfg_l <= _T_5205;
        end
      end
    end
    if (reset) begin
      reg_pmp_0_cfg_a <= 2'h0;
    end else begin
      if (csr_wen) begin
        if (_T_5196) begin
          reg_pmp_0_cfg_a <= _T_5203;
        end
      end
    end
    if (csr_wen) begin
      if (_T_5196) begin
        reg_pmp_0_cfg_x <= _T_5202;
      end
    end
    if (csr_wen) begin
      if (_T_5196) begin
        reg_pmp_0_cfg_w <= _T_5206;
      end
    end
    if (csr_wen) begin
      if (_T_5196) begin
        reg_pmp_0_cfg_r <= _T_5200;
      end
    end
    reg_pmp_0_addr <= _GEN_408[29:0];
    if (reset) begin
      reg_pmp_1_cfg_l <= 1'h0;
    end else begin
      if (csr_wen) begin
        if (_T_5216) begin
          reg_pmp_1_cfg_l <= _T_5225;
        end
      end
    end
    if (reset) begin
      reg_pmp_1_cfg_a <= 2'h0;
    end else begin
      if (csr_wen) begin
        if (_T_5216) begin
          reg_pmp_1_cfg_a <= _T_5223;
        end
      end
    end
    if (csr_wen) begin
      if (_T_5216) begin
        reg_pmp_1_cfg_x <= _T_5222;
      end
    end
    if (csr_wen) begin
      if (_T_5216) begin
        reg_pmp_1_cfg_w <= _T_5226;
      end
    end
    if (csr_wen) begin
      if (_T_5216) begin
        reg_pmp_1_cfg_r <= _T_5220;
      end
    end
    reg_pmp_1_addr <= _GEN_415[29:0];
    if (reset) begin
      reg_pmp_2_cfg_l <= 1'h0;
    end else begin
      if (csr_wen) begin
        if (_T_5236) begin
          reg_pmp_2_cfg_l <= _T_5245;
        end
      end
    end
    if (reset) begin
      reg_pmp_2_cfg_a <= 2'h0;
    end else begin
      if (csr_wen) begin
        if (_T_5236) begin
          reg_pmp_2_cfg_a <= _T_5243;
        end
      end
    end
    if (csr_wen) begin
      if (_T_5236) begin
        reg_pmp_2_cfg_x <= _T_5242;
      end
    end
    if (csr_wen) begin
      if (_T_5236) begin
        reg_pmp_2_cfg_w <= _T_5246;
      end
    end
    if (csr_wen) begin
      if (_T_5236) begin
        reg_pmp_2_cfg_r <= _T_5240;
      end
    end
    reg_pmp_2_addr <= _GEN_422[29:0];
    if (reset) begin
      reg_pmp_3_cfg_l <= 1'h0;
    end else begin
      if (csr_wen) begin
        if (_T_5256) begin
          reg_pmp_3_cfg_l <= _T_5265;
        end
      end
    end
    if (reset) begin
      reg_pmp_3_cfg_a <= 2'h0;
    end else begin
      if (csr_wen) begin
        if (_T_5256) begin
          reg_pmp_3_cfg_a <= _T_5263;
        end
      end
    end
    if (csr_wen) begin
      if (_T_5256) begin
        reg_pmp_3_cfg_x <= _T_5262;
      end
    end
    if (csr_wen) begin
      if (_T_5256) begin
        reg_pmp_3_cfg_w <= _T_5266;
      end
    end
    if (csr_wen) begin
      if (_T_5256) begin
        reg_pmp_3_cfg_r <= _T_5260;
      end
    end
    reg_pmp_3_addr <= _GEN_429[29:0];
    if (reset) begin
      reg_pmp_4_cfg_l <= 1'h0;
    end else begin
      if (csr_wen) begin
        if (_T_5276) begin
          reg_pmp_4_cfg_l <= _T_5205;
        end
      end
    end
    if (reset) begin
      reg_pmp_4_cfg_a <= 2'h0;
    end else begin
      if (csr_wen) begin
        if (_T_5276) begin
          reg_pmp_4_cfg_a <= _T_5203;
        end
      end
    end
    if (csr_wen) begin
      if (_T_5276) begin
        reg_pmp_4_cfg_x <= _T_5202;
      end
    end
    if (csr_wen) begin
      if (_T_5276) begin
        reg_pmp_4_cfg_w <= _T_5206;
      end
    end
    if (csr_wen) begin
      if (_T_5276) begin
        reg_pmp_4_cfg_r <= _T_5200;
      end
    end
    reg_pmp_4_addr <= _GEN_436[29:0];
    if (reset) begin
      reg_pmp_5_cfg_l <= 1'h0;
    end else begin
      if (csr_wen) begin
        if (_T_5296) begin
          reg_pmp_5_cfg_l <= _T_5225;
        end
      end
    end
    if (reset) begin
      reg_pmp_5_cfg_a <= 2'h0;
    end else begin
      if (csr_wen) begin
        if (_T_5296) begin
          reg_pmp_5_cfg_a <= _T_5223;
        end
      end
    end
    if (csr_wen) begin
      if (_T_5296) begin
        reg_pmp_5_cfg_x <= _T_5222;
      end
    end
    if (csr_wen) begin
      if (_T_5296) begin
        reg_pmp_5_cfg_w <= _T_5226;
      end
    end
    if (csr_wen) begin
      if (_T_5296) begin
        reg_pmp_5_cfg_r <= _T_5220;
      end
    end
    reg_pmp_5_addr <= _GEN_443[29:0];
    if (reset) begin
      reg_pmp_6_cfg_l <= 1'h0;
    end else begin
      if (csr_wen) begin
        if (_T_5316) begin
          reg_pmp_6_cfg_l <= _T_5245;
        end
      end
    end
    if (reset) begin
      reg_pmp_6_cfg_a <= 2'h0;
    end else begin
      if (csr_wen) begin
        if (_T_5316) begin
          reg_pmp_6_cfg_a <= _T_5243;
        end
      end
    end
    if (csr_wen) begin
      if (_T_5316) begin
        reg_pmp_6_cfg_x <= _T_5242;
      end
    end
    if (csr_wen) begin
      if (_T_5316) begin
        reg_pmp_6_cfg_w <= _T_5246;
      end
    end
    if (csr_wen) begin
      if (_T_5316) begin
        reg_pmp_6_cfg_r <= _T_5240;
      end
    end
    reg_pmp_6_addr <= _GEN_450[29:0];
    if (reset) begin
      reg_pmp_7_cfg_l <= 1'h0;
    end else begin
      if (csr_wen) begin
        if (_T_5336) begin
          reg_pmp_7_cfg_l <= _T_5265;
        end
      end
    end
    if (reset) begin
      reg_pmp_7_cfg_a <= 2'h0;
    end else begin
      if (csr_wen) begin
        if (_T_5336) begin
          reg_pmp_7_cfg_a <= _T_5263;
        end
      end
    end
    if (csr_wen) begin
      if (_T_5336) begin
        reg_pmp_7_cfg_x <= _T_5262;
      end
    end
    if (csr_wen) begin
      if (_T_5336) begin
        reg_pmp_7_cfg_w <= _T_5266;
      end
    end
    if (csr_wen) begin
      if (_T_5336) begin
        reg_pmp_7_cfg_r <= _T_5260;
      end
    end
    reg_pmp_7_addr <= _GEN_457[29:0];
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1522) begin
          $fwrite(32'h80000002,"Assertion failed: these conditions must be mutually exclusive\n    at CSR.scala:654 assert(PopCount(insn_ret :: insn_call :: insn_break :: io.exception :: Nil) <= 1, \"these conditions must be mutually exclusive\")\n"); // @[CSR.scala 654:9:freechips.rocketchip.system.DefaultRV32Config.fir@149380.6]
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
          $fatal; // @[CSR.scala 654:9:freechips.rocketchip.system.DefaultRV32Config.fir@149381.6]
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
          $fwrite(32'h80000002,"Assertion failed\n    at CSR.scala:662 assert(!reg_singleStepped || io.retire === UInt(0))\n"); // @[CSR.scala 662:9:freechips.rocketchip.system.DefaultRV32Config.fir@149422.6]
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
          $fatal; // @[CSR.scala 662:9:freechips.rocketchip.system.DefaultRV32Config.fir@149423.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
end

  assign _T_1522 = _T_1521 == 1'h0; // @[CSR.scala 654:9:freechips.rocketchip.system.DefaultRV32Config.fir@149378.4]
  assign _T_1544 = _T_1543 == 1'h0; // @[CSR.scala 662:9:freechips.rocketchip.system.DefaultRV32Config.fir@149420.4]

always @(posedge clock) begin
    if (reset) begin
      _T_1894 <= 1'h0;
    end else begin
      _T_1894 <= _GEN_117;
    end
end

always @(posedge clock) begin
    if (_T_1509) begin
      _T_1511 <= reg_mstatus_mpp;
    end else begin
      _T_1511 <= reg_mstatus_prv;
    end
end

always @(posedge io_ungated_clock) begin
    if (reset) begin
      reg_wfi <= 1'h0;
    end else begin
      if (_T_1529) begin
        reg_wfi <= 1'h0;
      end else begin
        reg_wfi <= _GEN_34;
      end
    end
end

`endif // MY_ASSIGNMENT

  assign _T_946 = reg_mstatus_prv > 2'h1; // @[CSR.scala 590:55:freechips.rocketchip.system.DefaultRV32Config.fir@148770.4]
  assign _T_890 = {io_rw_addr, 20'h0}; // @[CSR.scala 581:28:freechips.rocketchip.system.DefaultRV32Config.fir@148708.4]
  assign _T_897 = _T_890 & 32'h12400000; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@148715.4]
  assign _T_898 = _T_897 == 32'h10000000; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@148716.4]
  assign _T_899 = _T_890 & 32'h40000000; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@148717.4]
  assign _T_900 = _T_899 == 32'h40000000; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@148718.4]
  assign _T_902 = _T_898 | _T_900; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@148720.4]
  assign _T_1871 = io_rw_addr[9]; // @[CSR.scala 718:39:freechips.rocketchip.system.DefaultRV32Config.fir@149788.6]
  assign _T_1872 = _T_1871 == 1'h0; // @[CSR.scala 718:28:freechips.rocketchip.system.DefaultRV32Config.fir@149789.6]
  assign _T_1879 = io_rw_addr[10]; // @[CSR.scala 724:47:freechips.rocketchip.system.DefaultRV32Config.fir@149804.8]
  assign _GEN_93 = _T_1879 ? reg_dcsr_prv : reg_mstatus_mpp; // @[CSR.scala 724:53:freechips.rocketchip.system.DefaultRV32Config.fir@149806.8]
  assign _T_891 = _T_890 & 32'h10100000; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@148709.4]
  assign _T_892 = _T_891 == 32'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@148710.4]
  assign _T_895 = _T_891 == 32'h100000; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@148713.4]
  assign _T_1512 = insn_call | insn_break; // @[CSR.scala 653:29:freechips.rocketchip.system.DefaultRV32Config.fir@149367.4]
  assign _GEN_494 = {{2'd0}, reg_mstatus_prv}; // @[CSR.scala 617:36:freechips.rocketchip.system.DefaultRV32Config.fir@149289.4]
  assign _T_1459 = insn_break ? 32'h3 : io_cause; // @[CSR.scala 618:14:freechips.rocketchip.system.DefaultRV32Config.fir@149291.4]
  assign _T_1460 = cause[31]; // @[CSR.scala 620:30:freechips.rocketchip.system.DefaultRV32Config.fir@149294.4]
  assign _T_1461 = cause_lsbs == 8'he; // @[CSR.scala 620:53:freechips.rocketchip.system.DefaultRV32Config.fir@149295.4]
  assign _T_1473 = reg_singleStepped | causeIsDebugInt; // @[CSR.scala 623:60:freechips.rocketchip.system.DefaultRV32Config.fir@149310.4]
  assign _T_1463 = _T_1460 == 1'h0; // @[CSR.scala 621:29:freechips.rocketchip.system.DefaultRV32Config.fir@149298.4]
  assign _T_1474 = _T_1473 | causeIsDebugTrigger; // @[CSR.scala 623:79:freechips.rocketchip.system.DefaultRV32Config.fir@149311.4]
  assign _T_1467 = _T_1463 & insn_break; // @[CSR.scala 622:42:freechips.rocketchip.system.DefaultRV32Config.fir@149303.4]
  assign _T_1470 = {reg_dcsr_ebreakm,1'h0,reg_dcsr_ebreaks,reg_dcsr_ebreaku}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@149306.4]
  assign _T_1472 = _T_1471[0]; // @[CSR.scala 622:134:freechips.rocketchip.system.DefaultRV32Config.fir@149308.4]
  assign _T_1475 = _T_1474 | causeIsDebugBreak; // @[CSR.scala 623:102:freechips.rocketchip.system.DefaultRV32Config.fir@149312.4]
  assign _T_1547 = reg_debug == 1'h0; // @[CSR.scala 670:13:freechips.rocketchip.system.DefaultRV32Config.fir@149433.8]
  assign _T_1478 = reg_mstatus_prv <= 2'h1; // @[CSR.scala 625:51:freechips.rocketchip.system.DefaultRV32Config.fir@149317.4]
  assign _T_1482 = _T_1481[0]; // @[CSR.scala 625:94:freechips.rocketchip.system.DefaultRV32Config.fir@149321.4]
  assign _T_1484 = _T_1483[0]; // @[CSR.scala 625:120:freechips.rocketchip.system.DefaultRV32Config.fir@149323.4]
  assign _GEN_50 = delegate ? 2'h1 : 2'h3; // @[CSR.scala 677:27:freechips.rocketchip.system.DefaultRV32Config.fir@149446.8]
  assign _GEN_79 = exception ? _GEN_61 : reg_mstatus_prv; // @[CSR.scala 668:20:freechips.rocketchip.system.DefaultRV32Config.fir@149431.4]
  assign _T_33 = new_prv == 2'h2; // @[CSR.scala 1042:27:freechips.rocketchip.system.DefaultRV32Config.fir@147644.4]
  assign _GEN_495 = {{5'd0}, io_retire}; // @[Counters.scala 47:33:freechips.rocketchip.system.DefaultRV32Config.fir@147777.4]
  assign _T_87 = _T_86 + _GEN_495; // @[Counters.scala 47:33:freechips.rocketchip.system.DefaultRV32Config.fir@147777.4]
  assign _T_89 = _T_87[6]; // @[Counters.scala 52:20:freechips.rocketchip.system.DefaultRV32Config.fir@147780.4]
  assign _T_91 = _T_88 + 58'h1; // @[Counters.scala 52:43:freechips.rocketchip.system.DefaultRV32Config.fir@147783.6]
  assign _T_92 = {_T_88,_T_86}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@147786.4]
  assign _T_93 = io_csr_stall == 1'h0; // @[CSR.scala 399:103:freechips.rocketchip.system.DefaultRV32Config.fir@147787.4]
  assign _GEN_496 = {{5'd0}, _T_93}; // @[Counters.scala 47:33:freechips.rocketchip.system.DefaultRV32Config.fir@147789.4]
  assign _T_95 = _T_94 + _GEN_496; // @[Counters.scala 47:33:freechips.rocketchip.system.DefaultRV32Config.fir@147789.4]
  assign _T_97 = _T_95[6]; // @[Counters.scala 52:20:freechips.rocketchip.system.DefaultRV32Config.fir@147792.4]
  assign _T_99 = _T_96 + 58'h1; // @[Counters.scala 52:43:freechips.rocketchip.system.DefaultRV32Config.fir@147795.6]
  assign _T_100 = {_T_96,_T_94}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@147798.4]
  assign _T_108 = {io_interrupts_mtip,1'h0,reg_mip_stip,1'h0,io_interrupts_msip,1'h0,reg_mip_ssip,1'h0}; // @[CSR.scala 412:22:freechips.rocketchip.system.DefaultRV32Config.fir@147814.4]
  assign _T_116 = {4'h0,io_interrupts_meip,1'h0,mip_seip,1'h0,_T_108}; // @[CSR.scala 412:22:freechips.rocketchip.system.DefaultRV32Config.fir@147822.4]
  assign _GEN_497 = {{16'd0}, read_mip}; // @[CSR.scala 415:56:freechips.rocketchip.system.DefaultRV32Config.fir@147824.4]
  assign _T_119 = _T_1478 | reg_mstatus_mie; // @[CSR.scala 417:51:freechips.rocketchip.system.DefaultRV32Config.fir@147828.4]
  assign _T_120 = ~ pending_interrupts; // @[CSR.scala 417:73:freechips.rocketchip.system.DefaultRV32Config.fir@147829.4]
  assign _T_121 = _T_120 | read_mideleg; // @[CSR.scala 417:93:freechips.rocketchip.system.DefaultRV32Config.fir@147830.4]
  assign _T_122 = ~ _T_121; // @[CSR.scala 417:71:freechips.rocketchip.system.DefaultRV32Config.fir@147831.4]
  assign _T_123 = reg_mstatus_prv < 2'h1; // @[CSR.scala 418:42:freechips.rocketchip.system.DefaultRV32Config.fir@147833.4]
  assign _T_124 = reg_mstatus_prv == 2'h1; // @[CSR.scala 418:70:freechips.rocketchip.system.DefaultRV32Config.fir@147834.4]
  assign _T_125 = _T_124 & reg_mstatus_sie; // @[CSR.scala 418:80:freechips.rocketchip.system.DefaultRV32Config.fir@147835.4]
  assign _T_126 = _T_123 | _T_125; // @[CSR.scala 418:50:freechips.rocketchip.system.DefaultRV32Config.fir@147836.4]
  assign _T_127 = pending_interrupts & read_mideleg; // @[CSR.scala 418:120:freechips.rocketchip.system.DefaultRV32Config.fir@147837.4]
  assign _T_128 = d_interrupts[14]; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147839.4]
  assign _T_129 = d_interrupts[13]; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147840.4]
  assign _T_130 = d_interrupts[12]; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147841.4]
  assign _T_131 = d_interrupts[11]; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147842.4]
  assign _T_132 = d_interrupts[3]; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147843.4]
  assign _T_133 = d_interrupts[7]; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147844.4]
  assign _T_134 = d_interrupts[9]; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147845.4]
  assign _T_135 = d_interrupts[1]; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147846.4]
  assign _T_136 = d_interrupts[5]; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147847.4]
  assign _T_137 = d_interrupts[8]; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147848.4]
  assign _T_138 = d_interrupts[0]; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147849.4]
  assign _T_139 = d_interrupts[4]; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147850.4]
  assign _T_140 = m_interrupts[15]; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147851.4]
  assign _T_141 = m_interrupts[14]; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147852.4]
  assign _T_142 = m_interrupts[13]; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147853.4]
  assign _T_143 = m_interrupts[12]; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147854.4]
  assign _T_144 = m_interrupts[11]; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147855.4]
  assign _T_145 = m_interrupts[3]; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147856.4]
  assign _T_146 = m_interrupts[7]; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147857.4]
  assign _T_147 = m_interrupts[9]; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147858.4]
  assign _T_148 = m_interrupts[1]; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147859.4]
  assign _T_149 = m_interrupts[5]; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147860.4]
  assign _T_150 = m_interrupts[8]; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147861.4]
  assign _T_151 = m_interrupts[0]; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147862.4]
  assign _T_152 = m_interrupts[4]; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147863.4]
  assign _T_153 = s_interrupts[15]; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147864.4]
  assign _T_154 = s_interrupts[14]; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147865.4]
  assign _T_155 = s_interrupts[13]; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147866.4]
  assign _T_156 = s_interrupts[12]; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147867.4]
  assign _T_157 = s_interrupts[11]; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147868.4]
  assign _T_158 = s_interrupts[3]; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147869.4]
  assign _T_159 = s_interrupts[7]; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147870.4]
  assign _T_160 = s_interrupts[9]; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147871.4]
  assign _T_161 = s_interrupts[1]; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147872.4]
  assign _T_162 = s_interrupts[5]; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147873.4]
  assign _T_163 = s_interrupts[8]; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147874.4]
  assign _T_164 = s_interrupts[0]; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147875.4]
  assign _T_165 = s_interrupts[4]; // @[CSR.scala 1032:76:freechips.rocketchip.system.DefaultRV32Config.fir@147876.4]
  assign _T_166 = _T_128 | _T_129; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147877.4]
  assign _T_167 = _T_166 | _T_130; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147878.4]
  assign _T_168 = _T_167 | _T_131; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147879.4]
  assign _T_169 = _T_168 | _T_132; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147880.4]
  assign _T_170 = _T_169 | _T_133; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147881.4]
  assign _T_171 = _T_170 | _T_134; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147882.4]
  assign _T_172 = _T_171 | _T_135; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147883.4]
  assign _T_173 = _T_172 | _T_136; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147884.4]
  assign _T_174 = _T_173 | _T_137; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147885.4]
  assign _T_175 = _T_174 | _T_138; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147886.4]
  assign _T_176 = _T_175 | _T_139; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147887.4]
  assign _T_177 = _T_176 | _T_140; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147888.4]
  assign _T_178 = _T_177 | _T_141; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147889.4]
  assign _T_179 = _T_178 | _T_142; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147890.4]
  assign _T_180 = _T_179 | _T_143; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147891.4]
  assign _T_181 = _T_180 | _T_144; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147892.4]
  assign _T_182 = _T_181 | _T_145; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147893.4]
  assign _T_183 = _T_182 | _T_146; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147894.4]
  assign _T_184 = _T_183 | _T_147; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147895.4]
  assign _T_185 = _T_184 | _T_148; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147896.4]
  assign _T_186 = _T_185 | _T_149; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147897.4]
  assign _T_187 = _T_186 | _T_150; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147898.4]
  assign _T_188 = _T_187 | _T_151; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147899.4]
  assign _T_189 = _T_188 | _T_152; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147900.4]
  assign _T_190 = _T_189 | _T_153; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147901.4]
  assign _T_191 = _T_190 | _T_154; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147902.4]
  assign _T_192 = _T_191 | _T_155; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147903.4]
  assign _T_193 = _T_192 | _T_156; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147904.4]
  assign _T_194 = _T_193 | _T_157; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147905.4]
  assign _T_195 = _T_194 | _T_158; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147906.4]
  assign _T_196 = _T_195 | _T_159; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147907.4]
  assign _T_197 = _T_196 | _T_160; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147908.4]
  assign _T_198 = _T_197 | _T_161; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147909.4]
  assign _T_199 = _T_198 | _T_162; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147910.4]
  assign _T_200 = _T_199 | _T_163; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147911.4]
  assign _T_201 = _T_200 | _T_164; // @[CSR.scala 1032:90:freechips.rocketchip.system.DefaultRV32Config.fir@147912.4]
  assign _T_240 = _T_164 ? 3'h0 : 3'h4; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147952.4]
  assign _T_241 = _T_163 ? 4'h8 : {{1'd0}, _T_240}; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147953.4]
  assign _T_242 = _T_162 ? 4'h5 : _T_241; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147954.4]
  assign _T_243 = _T_161 ? 4'h1 : _T_242; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147955.4]
  assign _T_244 = _T_160 ? 4'h9 : _T_243; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147956.4]
  assign _T_245 = _T_159 ? 4'h7 : _T_244; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147957.4]
  assign _T_246 = _T_158 ? 4'h3 : _T_245; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147958.4]
  assign _T_247 = _T_157 ? 4'hb : _T_246; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147959.4]
  assign _T_248 = _T_156 ? 4'hc : _T_247; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147960.4]
  assign _T_249 = _T_155 ? 4'hd : _T_248; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147961.4]
  assign _T_250 = _T_154 ? 4'he : _T_249; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147962.4]
  assign _T_251 = _T_153 ? 4'hf : _T_250; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147963.4]
  assign _T_252 = _T_152 ? 4'h4 : _T_251; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147964.4]
  assign _T_253 = _T_151 ? 4'h0 : _T_252; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147965.4]
  assign _T_254 = _T_150 ? 4'h8 : _T_253; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147966.4]
  assign _T_255 = _T_149 ? 4'h5 : _T_254; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147967.4]
  assign _T_256 = _T_148 ? 4'h1 : _T_255; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147968.4]
  assign _T_257 = _T_147 ? 4'h9 : _T_256; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147969.4]
  assign _T_258 = _T_146 ? 4'h7 : _T_257; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147970.4]
  assign _T_259 = _T_145 ? 4'h3 : _T_258; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147971.4]
  assign _T_260 = _T_144 ? 4'hb : _T_259; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147972.4]
  assign _T_261 = _T_143 ? 4'hc : _T_260; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147973.4]
  assign _T_262 = _T_142 ? 4'hd : _T_261; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147974.4]
  assign _T_263 = _T_141 ? 4'he : _T_262; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147975.4]
  assign _T_264 = _T_140 ? 4'hf : _T_263; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147976.4]
  assign _T_265 = _T_139 ? 4'h4 : _T_264; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147977.4]
  assign _T_266 = _T_138 ? 4'h0 : _T_265; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147978.4]
  assign _T_267 = _T_137 ? 4'h8 : _T_266; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147979.4]
  assign _T_268 = _T_136 ? 4'h5 : _T_267; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147980.4]
  assign _T_269 = _T_135 ? 4'h1 : _T_268; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147981.4]
  assign _T_270 = _T_134 ? 4'h9 : _T_269; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147982.4]
  assign _T_271 = _T_133 ? 4'h7 : _T_270; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147983.4]
  assign _T_272 = _T_132 ? 4'h3 : _T_271; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147984.4]
  assign _T_273 = _T_131 ? 4'hb : _T_272; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147985.4]
  assign _T_274 = _T_130 ? 4'hc : _T_273; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147986.4]
  assign _T_275 = _T_129 ? 4'hd : _T_274; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@147987.4]
  assign _GEN_498 = {{28'd0}, whichInterrupt}; // @[CSR.scala 421:43:freechips.rocketchip.system.DefaultRV32Config.fir@147989.4]
  assign _T_277 = io_singleStep == 1'h0; // @[CSR.scala 422:36:freechips.rocketchip.system.DefaultRV32Config.fir@147991.4]
  assign _T_278 = anyInterrupt & _T_277; // @[CSR.scala 422:33:freechips.rocketchip.system.DefaultRV32Config.fir@147992.4]
  assign _T_279 = _T_278 | reg_singleStepped; // @[CSR.scala 422:51:freechips.rocketchip.system.DefaultRV32Config.fir@147993.4]
  assign _T_280 = reg_debug | io_status_cease; // @[CSR.scala 422:88:freechips.rocketchip.system.DefaultRV32Config.fir@147994.4]
  assign _T_281 = _T_280 == 1'h0; // @[CSR.scala 422:76:freechips.rocketchip.system.DefaultRV32Config.fir@147995.4]
  assign _T_284 = reg_pmp_0_cfg_a[0]; // @[PMP.scala 57:31:freechips.rocketchip.system.DefaultRV32Config.fir@148003.4]
  assign _T_285 = {reg_pmp_0_addr,_T_284}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@148004.4]
  assign _T_288 = _T_285 + 31'h1; // @[PMP.scala 58:23:freechips.rocketchip.system.DefaultRV32Config.fir@148007.4]
  assign _T_289 = ~ _T_288; // @[PMP.scala 58:16:freechips.rocketchip.system.DefaultRV32Config.fir@148008.4]
  assign _T_290 = _T_285 & _T_289; // @[PMP.scala 58:14:freechips.rocketchip.system.DefaultRV32Config.fir@148009.4]
  assign _T_291 = {_T_290,2'h3}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@148010.4]
  assign _T_293 = reg_pmp_1_cfg_a[0]; // @[PMP.scala 57:31:freechips.rocketchip.system.DefaultRV32Config.fir@148015.4]
  assign _T_294 = {reg_pmp_1_addr,_T_293}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@148016.4]
  assign _T_297 = _T_294 + 31'h1; // @[PMP.scala 58:23:freechips.rocketchip.system.DefaultRV32Config.fir@148019.4]
  assign _T_298 = ~ _T_297; // @[PMP.scala 58:16:freechips.rocketchip.system.DefaultRV32Config.fir@148020.4]
  assign _T_299 = _T_294 & _T_298; // @[PMP.scala 58:14:freechips.rocketchip.system.DefaultRV32Config.fir@148021.4]
  assign _T_300 = {_T_299,2'h3}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@148022.4]
  assign _T_302 = reg_pmp_2_cfg_a[0]; // @[PMP.scala 57:31:freechips.rocketchip.system.DefaultRV32Config.fir@148027.4]
  assign _T_303 = {reg_pmp_2_addr,_T_302}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@148028.4]
  assign _T_306 = _T_303 + 31'h1; // @[PMP.scala 58:23:freechips.rocketchip.system.DefaultRV32Config.fir@148031.4]
  assign _T_307 = ~ _T_306; // @[PMP.scala 58:16:freechips.rocketchip.system.DefaultRV32Config.fir@148032.4]
  assign _T_308 = _T_303 & _T_307; // @[PMP.scala 58:14:freechips.rocketchip.system.DefaultRV32Config.fir@148033.4]
  assign _T_309 = {_T_308,2'h3}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@148034.4]
  assign _T_311 = reg_pmp_3_cfg_a[0]; // @[PMP.scala 57:31:freechips.rocketchip.system.DefaultRV32Config.fir@148039.4]
  assign _T_312 = {reg_pmp_3_addr,_T_311}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@148040.4]
  assign _T_315 = _T_312 + 31'h1; // @[PMP.scala 58:23:freechips.rocketchip.system.DefaultRV32Config.fir@148043.4]
  assign _T_316 = ~ _T_315; // @[PMP.scala 58:16:freechips.rocketchip.system.DefaultRV32Config.fir@148044.4]
  assign _T_317 = _T_312 & _T_316; // @[PMP.scala 58:14:freechips.rocketchip.system.DefaultRV32Config.fir@148045.4]
  assign _T_318 = {_T_317,2'h3}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@148046.4]
  assign _T_320 = reg_pmp_4_cfg_a[0]; // @[PMP.scala 57:31:freechips.rocketchip.system.DefaultRV32Config.fir@148051.4]
  assign _T_321 = {reg_pmp_4_addr,_T_320}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@148052.4]
  assign _T_324 = _T_321 + 31'h1; // @[PMP.scala 58:23:freechips.rocketchip.system.DefaultRV32Config.fir@148055.4]
  assign _T_325 = ~ _T_324; // @[PMP.scala 58:16:freechips.rocketchip.system.DefaultRV32Config.fir@148056.4]
  assign _T_326 = _T_321 & _T_325; // @[PMP.scala 58:14:freechips.rocketchip.system.DefaultRV32Config.fir@148057.4]
  assign _T_327 = {_T_326,2'h3}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@148058.4]
  assign _T_329 = reg_pmp_5_cfg_a[0]; // @[PMP.scala 57:31:freechips.rocketchip.system.DefaultRV32Config.fir@148063.4]
  assign _T_330 = {reg_pmp_5_addr,_T_329}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@148064.4]
  assign _T_333 = _T_330 + 31'h1; // @[PMP.scala 58:23:freechips.rocketchip.system.DefaultRV32Config.fir@148067.4]
  assign _T_334 = ~ _T_333; // @[PMP.scala 58:16:freechips.rocketchip.system.DefaultRV32Config.fir@148068.4]
  assign _T_335 = _T_330 & _T_334; // @[PMP.scala 58:14:freechips.rocketchip.system.DefaultRV32Config.fir@148069.4]
  assign _T_336 = {_T_335,2'h3}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@148070.4]
  assign _T_338 = reg_pmp_6_cfg_a[0]; // @[PMP.scala 57:31:freechips.rocketchip.system.DefaultRV32Config.fir@148075.4]
  assign _T_339 = {reg_pmp_6_addr,_T_338}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@148076.4]
  assign _T_342 = _T_339 + 31'h1; // @[PMP.scala 58:23:freechips.rocketchip.system.DefaultRV32Config.fir@148079.4]
  assign _T_343 = ~ _T_342; // @[PMP.scala 58:16:freechips.rocketchip.system.DefaultRV32Config.fir@148080.4]
  assign _T_344 = _T_339 & _T_343; // @[PMP.scala 58:14:freechips.rocketchip.system.DefaultRV32Config.fir@148081.4]
  assign _T_345 = {_T_344,2'h3}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@148082.4]
  assign _T_347 = reg_pmp_7_cfg_a[0]; // @[PMP.scala 57:31:freechips.rocketchip.system.DefaultRV32Config.fir@148087.4]
  assign _T_348 = {reg_pmp_7_addr,_T_347}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@148088.4]
  assign _T_351 = _T_348 + 31'h1; // @[PMP.scala 58:23:freechips.rocketchip.system.DefaultRV32Config.fir@148091.4]
  assign _T_352 = ~ _T_351; // @[PMP.scala 58:16:freechips.rocketchip.system.DefaultRV32Config.fir@148092.4]
  assign _T_353 = _T_348 & _T_352; // @[PMP.scala 58:14:freechips.rocketchip.system.DefaultRV32Config.fir@148093.4]
  assign _T_354 = {_T_353,2'h3}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@148094.4]
  assign _T_360 = {io_status_hpie,io_status_spie,io_status_upie,io_status_mie,io_status_hie,io_status_sie,io_status_uie}; // @[CSR.scala 441:38:freechips.rocketchip.system.DefaultRV32Config.fir@148110.4]
  assign _T_368 = {io_status_sum,io_status_mprv,io_status_xs,io_status_fs,io_status_mpp,io_status_hpp,io_status_spp,io_status_mpie,_T_360}; // @[CSR.scala 441:38:freechips.rocketchip.system.DefaultRV32Config.fir@148118.4]
  assign _T_375 = {io_status_uxl,io_status_sd_rv32,io_status_zero1,io_status_vs,io_status_tsr,io_status_tw,io_status_tvm,io_status_mxr}; // @[CSR.scala 441:38:freechips.rocketchip.system.DefaultRV32Config.fir@148125.4]
  assign _T_385 = reg_mtvec[0]; // @[CSR.scala 1061:41:freechips.rocketchip.system.DefaultRV32Config.fir@148136.4]
  assign _T_388 = {{25'd0}, _T_386}; // @[package.scala 131:41:freechips.rocketchip.system.DefaultRV32Config.fir@148139.4]
  assign _T_389 = ~ _T_388; // @[package.scala 131:37:freechips.rocketchip.system.DefaultRV32Config.fir@148140.4]
  assign _T_390 = reg_stvec[0]; // @[CSR.scala 1061:41:freechips.rocketchip.system.DefaultRV32Config.fir@148142.4]
  assign _T_393 = {{25'd0}, _T_391}; // @[package.scala 131:41:freechips.rocketchip.system.DefaultRV32Config.fir@148145.4]
  assign _T_394 = ~ _T_393; // @[package.scala 131:37:freechips.rocketchip.system.DefaultRV32Config.fir@148146.4]
  assign _T_400 = {reg_bp_0_control_m,1'h0,reg_bp_0_control_s,reg_bp_0_control_u,reg_bp_0_control_x,reg_bp_0_control_w,reg_bp_0_control_r}; // @[CSR.scala 447:48:freechips.rocketchip.system.DefaultRV32Config.fir@148153.4]
  assign _T_408 = {4'h2,reg_bp_0_control_dmode,14'h400,reg_bp_0_control_action,1'h0,2'h0,reg_bp_0_control_tmatch,_T_400}; // @[CSR.scala 447:48:freechips.rocketchip.system.DefaultRV32Config.fir@148161.4]
  assign _T_409 = ~ reg_mepc; // @[CSR.scala 1060:28:freechips.rocketchip.system.DefaultRV32Config.fir@148162.4]
  assign _T_410 = reg_misa[2]; // @[CSR.scala 1060:45:freechips.rocketchip.system.DefaultRV32Config.fir@148163.4]
  assign _GEN_499 = {{30'd0}, _T_411}; // @[CSR.scala 1060:31:freechips.rocketchip.system.DefaultRV32Config.fir@148165.4]
  assign _T_412 = _T_409 | _GEN_499; // @[CSR.scala 1060:31:freechips.rocketchip.system.DefaultRV32Config.fir@148165.4]
  assign _T_413 = ~ _T_412; // @[CSR.scala 1060:26:freechips.rocketchip.system.DefaultRV32Config.fir@148166.4]
  assign _T_419 = {2'h0,1'h0,reg_dcsr_cause,3'h0,reg_dcsr_step,reg_dcsr_prv}; // @[CSR.scala 461:27:freechips.rocketchip.system.DefaultRV32Config.fir@148172.4]
  assign _T_426 = {4'h4,12'h0,reg_dcsr_ebreakm,1'h0,reg_dcsr_ebreaks,reg_dcsr_ebreaku,_T_419}; // @[CSR.scala 461:27:freechips.rocketchip.system.DefaultRV32Config.fir@148179.4]
  assign _T_427 = ~ reg_dpc; // @[CSR.scala 1060:28:freechips.rocketchip.system.DefaultRV32Config.fir@148180.4]
  assign _T_430 = _T_427 | _GEN_499; // @[CSR.scala 1060:31:freechips.rocketchip.system.DefaultRV32Config.fir@148183.4]
  assign _T_431 = ~ _T_430; // @[CSR.scala 1060:26:freechips.rocketchip.system.DefaultRV32Config.fir@148184.4]
  assign _T_432 = {reg_frm,reg_fflags}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@148185.4]
  assign _T_434 = {{1'd0}, _T_432}; // @[CSR.scala 465:44:freechips.rocketchip.system.DefaultRV32Config.fir@148187.4]
  assign _T_494 = _T_100[63:32]; // @[CSR.scala 504:50:freechips.rocketchip.system.DefaultRV32Config.fir@148248.4]
  assign _T_495 = _T_92[63:32]; // @[CSR.scala 505:54:freechips.rocketchip.system.DefaultRV32Config.fir@148249.4]
  assign _T_498 = reg_mie & read_mideleg; // @[CSR.scala 514:28:freechips.rocketchip.system.DefaultRV32Config.fir@148252.4]
  assign _T_499 = _GEN_497 & read_mideleg; // @[CSR.scala 515:29:freechips.rocketchip.system.DefaultRV32Config.fir@148253.4]
  assign _T_539 = {1'h0,io_status_spie,2'h0,1'h0,io_status_sie,1'h0}; // @[CSR.scala 529:57:freechips.rocketchip.system.DefaultRV32Config.fir@148340.4]
  assign _T_547 = {io_status_sum,1'h0,io_status_xs,io_status_fs,4'h0,io_status_spp,1'h0,_T_539}; // @[CSR.scala 529:57:freechips.rocketchip.system.DefaultRV32Config.fir@148348.4]
  assign _T_554 = {io_status_uxl,io_status_sd_rv32,6'h0,io_status_vs,2'h0,1'h0,io_status_mxr}; // @[CSR.scala 529:57:freechips.rocketchip.system.DefaultRV32Config.fir@148355.4]
  assign _T_564 = _T_563[31:0]; // @[CSR.scala 529:60:freechips.rocketchip.system.DefaultRV32Config.fir@148365.4]
  assign _T_566 = {reg_satp_mode,9'h0,reg_satp_ppn}; // @[CSR.scala 535:43:freechips.rocketchip.system.DefaultRV32Config.fir@148367.4]
  assign _T_567 = ~ reg_sepc; // @[CSR.scala 1060:28:freechips.rocketchip.system.DefaultRV32Config.fir@148368.4]
  assign _T_570 = _T_567 | _GEN_499; // @[CSR.scala 1060:31:freechips.rocketchip.system.DefaultRV32Config.fir@148371.4]
  assign _T_571 = ~ _T_570; // @[CSR.scala 1060:26:freechips.rocketchip.system.DefaultRV32Config.fir@148372.4]
  assign _T_586 = {reg_pmp_0_cfg_l,2'h0,reg_pmp_0_cfg_a,reg_pmp_0_cfg_x,reg_pmp_0_cfg_w,reg_pmp_0_cfg_r}; // @[package.scala 36:38:freechips.rocketchip.system.DefaultRV32Config.fir@148398.4]
  assign _T_596 = {reg_pmp_2_cfg_l,2'h0,reg_pmp_2_cfg_a,reg_pmp_2_cfg_x,reg_pmp_2_cfg_w,reg_pmp_2_cfg_r}; // @[package.scala 36:38:freechips.rocketchip.system.DefaultRV32Config.fir@148408.4]
  assign _T_602 = {reg_pmp_1_cfg_l,2'h0,reg_pmp_1_cfg_a,reg_pmp_1_cfg_x,reg_pmp_1_cfg_w,reg_pmp_1_cfg_r,_T_586}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@148414.4]
  assign _T_604 = {reg_pmp_3_cfg_l,2'h0,reg_pmp_3_cfg_a,reg_pmp_3_cfg_x,reg_pmp_3_cfg_w,reg_pmp_3_cfg_r,_T_596,_T_602}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@148416.4]
  assign _T_609 = {reg_pmp_4_cfg_l,2'h0,reg_pmp_4_cfg_a,reg_pmp_4_cfg_x,reg_pmp_4_cfg_w,reg_pmp_4_cfg_r}; // @[package.scala 36:38:freechips.rocketchip.system.DefaultRV32Config.fir@148421.4]
  assign _T_619 = {reg_pmp_6_cfg_l,2'h0,reg_pmp_6_cfg_a,reg_pmp_6_cfg_x,reg_pmp_6_cfg_w,reg_pmp_6_cfg_r}; // @[package.scala 36:38:freechips.rocketchip.system.DefaultRV32Config.fir@148431.4]
  assign _T_625 = {reg_pmp_5_cfg_l,2'h0,reg_pmp_5_cfg_a,reg_pmp_5_cfg_x,reg_pmp_5_cfg_w,reg_pmp_5_cfg_r,_T_609}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@148437.4]
  assign _T_627 = {reg_pmp_7_cfg_l,2'h0,reg_pmp_7_cfg_a,reg_pmp_7_cfg_x,reg_pmp_7_cfg_w,reg_pmp_7_cfg_r,_T_619,_T_625}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@148439.4]
  assign _T_883 = io_rw_cmd[1]; // @[CSR.scala 1038:13:freechips.rocketchip.system.DefaultRV32Config.fir@148699.4]
  assign _T_885 = _T_884 | io_rw_wdata; // @[CSR.scala 1038:34:freechips.rocketchip.system.DefaultRV32Config.fir@148701.4]
  assign _T_886 = io_rw_cmd[1:0]; // @[CSR.scala 1038:53:freechips.rocketchip.system.DefaultRV32Config.fir@148702.4]
  assign _T_887 = _T_886 == 2'h3; // @[CSR.scala 1038:59:freechips.rocketchip.system.DefaultRV32Config.fir@148703.4]
  assign _T_889 = ~ _T_888; // @[CSR.scala 1038:45:freechips.rocketchip.system.DefaultRV32Config.fir@148705.4]
  assign _T_903 = _T_890 & 32'h20200000; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@148721.4]
  assign _T_904 = _T_903 == 32'h20000000; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@148722.4]
  assign _T_906 = _T_890 & 32'h32200000; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@148724.4]
  assign _T_907 = _T_906 == 32'h10000000; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@148725.4]
  assign _T_918 = {io_decode_0_csr, 20'h0}; // @[CSR.scala 588:30:freechips.rocketchip.system.DefaultRV32Config.fir@148742.4]
  assign _T_925 = _T_918 & 32'h12400000; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@148749.4]
  assign _T_926 = _T_925 == 32'h10000000; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@148750.4]
  assign _T_927 = _T_918 & 32'h40000000; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@148751.4]
  assign _T_928 = _T_927 == 32'h40000000; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@148752.4]
  assign _T_930 = _T_926 | _T_928; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@148754.4]
  assign _T_934 = _T_918 & 32'h32200000; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@148758.4]
  assign _T_935 = _T_934 == 32'h10000000; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@148759.4]
  assign _T_937 = _T_918 & 32'h42000000; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@148761.4]
  assign _T_938 = _T_937 == 32'h2000000; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@148762.4]
  assign _T_948 = reg_mstatus_tw == 1'h0; // @[CSR.scala 590:66:freechips.rocketchip.system.DefaultRV32Config.fir@148772.4]
  assign _T_949 = _T_946 | _T_948; // @[CSR.scala 590:63:freechips.rocketchip.system.DefaultRV32Config.fir@148773.4]
  assign _T_952 = reg_mstatus_tvm == 1'h0; // @[CSR.scala 591:73:freechips.rocketchip.system.DefaultRV32Config.fir@148776.4]
  assign _T_953 = _T_946 | _T_952; // @[CSR.scala 591:70:freechips.rocketchip.system.DefaultRV32Config.fir@148777.4]
  assign _T_956 = reg_mstatus_tsr == 1'h0; // @[CSR.scala 592:67:freechips.rocketchip.system.DefaultRV32Config.fir@148780.4]
  assign _T_957 = _T_946 | _T_956; // @[CSR.scala 592:64:freechips.rocketchip.system.DefaultRV32Config.fir@148781.4]
  assign _T_958 = io_decode_0_csr[4:0]; // @[CSR.scala 593:34:freechips.rocketchip.system.DefaultRV32Config.fir@148782.4]
  assign _T_960 = read_mcounteren >> _T_958; // @[CSR.scala 594:68:freechips.rocketchip.system.DefaultRV32Config.fir@148784.4]
  assign _T_961 = _T_960[0]; // @[CSR.scala 594:68:freechips.rocketchip.system.DefaultRV32Config.fir@148785.4]
  assign _T_962 = _T_946 | _T_961; // @[CSR.scala 594:50:freechips.rocketchip.system.DefaultRV32Config.fir@148786.4]
  assign _T_963 = reg_mstatus_prv >= 2'h1; // @[CSR.scala 595:36:freechips.rocketchip.system.DefaultRV32Config.fir@148787.4]
  assign _T_965 = read_scounteren >> _T_958; // @[CSR.scala 595:63:freechips.rocketchip.system.DefaultRV32Config.fir@148789.4]
  assign _T_966 = _T_965[0]; // @[CSR.scala 595:63:freechips.rocketchip.system.DefaultRV32Config.fir@148790.4]
  assign _T_967 = _T_963 | _T_966; // @[CSR.scala 595:45:freechips.rocketchip.system.DefaultRV32Config.fir@148791.4]
  assign _T_968 = _T_962 & _T_967; // @[CSR.scala 594:84:freechips.rocketchip.system.DefaultRV32Config.fir@148792.4]
  assign _T_969 = io_status_fs == 2'h0; // @[CSR.scala 596:39:freechips.rocketchip.system.DefaultRV32Config.fir@148793.4]
  assign _T_970 = reg_misa[5]; // @[CSR.scala 596:57:freechips.rocketchip.system.DefaultRV32Config.fir@148794.4]
  assign _T_971 = _T_970 == 1'h0; // @[CSR.scala 596:48:freechips.rocketchip.system.DefaultRV32Config.fir@148795.4]
  assign _T_977 = io_decode_0_csr & 12'h900; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@148803.4]
  assign _T_985 = io_decode_0_csr[9:8]; // @[CSR.scala 600:56:freechips.rocketchip.system.DefaultRV32Config.fir@148813.4]
  assign _T_986 = reg_mstatus_prv < _T_985; // @[CSR.scala 600:44:freechips.rocketchip.system.DefaultRV32Config.fir@148814.4]
  assign _T_987 = io_decode_0_csr == 12'h7a0; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148815.4]
  assign _T_988 = io_decode_0_csr == 12'h7a1; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148816.4]
  assign _T_989 = io_decode_0_csr == 12'h7a2; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148817.4]
  assign _T_990 = io_decode_0_csr == 12'h301; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148818.4]
  assign _T_991 = io_decode_0_csr == 12'h300; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148819.4]
  assign _T_992 = io_decode_0_csr == 12'h305; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148820.4]
  assign _T_993 = io_decode_0_csr == 12'h344; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148821.4]
  assign _T_994 = io_decode_0_csr == 12'h304; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148822.4]
  assign _T_995 = io_decode_0_csr == 12'h340; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148823.4]
  assign _T_996 = io_decode_0_csr == 12'h341; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148824.4]
  assign _T_997 = io_decode_0_csr == 12'h343; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148825.4]
  assign _T_998 = io_decode_0_csr == 12'h342; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148826.4]
  assign _T_999 = io_decode_0_csr == 12'hf14; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148827.4]
  assign _T_1000 = io_decode_0_csr == 12'h7b0; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148828.4]
  assign _T_1001 = io_decode_0_csr == 12'h7b1; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148829.4]
  assign _T_1002 = io_decode_0_csr == 12'h7b2; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148830.4]
  assign _T_1003 = io_decode_0_csr == 12'h1; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148831.4]
  assign _T_1004 = io_decode_0_csr == 12'h2; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148832.4]
  assign _T_1005 = io_decode_0_csr == 12'h3; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148833.4]
  assign _T_1006 = io_decode_0_csr == 12'hb00; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148834.4]
  assign _T_1007 = io_decode_0_csr == 12'hb02; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148835.4]
  assign _T_1008 = io_decode_0_csr == 12'h323; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148836.4]
  assign _T_1009 = io_decode_0_csr == 12'hb03; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148837.4]
  assign _T_1010 = io_decode_0_csr == 12'hc03; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148838.4]
  assign _T_1011 = io_decode_0_csr == 12'hb83; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148839.4]
  assign _T_1012 = io_decode_0_csr == 12'hc83; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148840.4]
  assign _T_1013 = io_decode_0_csr == 12'h324; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148841.4]
  assign _T_1014 = io_decode_0_csr == 12'hb04; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148842.4]
  assign _T_1015 = io_decode_0_csr == 12'hc04; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148843.4]
  assign _T_1016 = io_decode_0_csr == 12'hb84; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148844.4]
  assign _T_1017 = io_decode_0_csr == 12'hc84; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148845.4]
  assign _T_1018 = io_decode_0_csr == 12'h325; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148846.4]
  assign _T_1019 = io_decode_0_csr == 12'hb05; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148847.4]
  assign _T_1020 = io_decode_0_csr == 12'hc05; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148848.4]
  assign _T_1021 = io_decode_0_csr == 12'hb85; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148849.4]
  assign _T_1022 = io_decode_0_csr == 12'hc85; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148850.4]
  assign _T_1023 = io_decode_0_csr == 12'h326; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148851.4]
  assign _T_1024 = io_decode_0_csr == 12'hb06; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148852.4]
  assign _T_1025 = io_decode_0_csr == 12'hc06; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148853.4]
  assign _T_1026 = io_decode_0_csr == 12'hb86; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148854.4]
  assign _T_1027 = io_decode_0_csr == 12'hc86; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148855.4]
  assign _T_1028 = io_decode_0_csr == 12'h327; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148856.4]
  assign _T_1029 = io_decode_0_csr == 12'hb07; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148857.4]
  assign _T_1030 = io_decode_0_csr == 12'hc07; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148858.4]
  assign _T_1031 = io_decode_0_csr == 12'hb87; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148859.4]
  assign _T_1032 = io_decode_0_csr == 12'hc87; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148860.4]
  assign _T_1033 = io_decode_0_csr == 12'h328; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148861.4]
  assign _T_1034 = io_decode_0_csr == 12'hb08; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148862.4]
  assign _T_1035 = io_decode_0_csr == 12'hc08; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148863.4]
  assign _T_1036 = io_decode_0_csr == 12'hb88; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148864.4]
  assign _T_1037 = io_decode_0_csr == 12'hc88; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148865.4]
  assign _T_1038 = io_decode_0_csr == 12'h329; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148866.4]
  assign _T_1039 = io_decode_0_csr == 12'hb09; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148867.4]
  assign _T_1040 = io_decode_0_csr == 12'hc09; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148868.4]
  assign _T_1041 = io_decode_0_csr == 12'hb89; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148869.4]
  assign _T_1042 = io_decode_0_csr == 12'hc89; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148870.4]
  assign _T_1043 = io_decode_0_csr == 12'h32a; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148871.4]
  assign _T_1044 = io_decode_0_csr == 12'hb0a; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148872.4]
  assign _T_1045 = io_decode_0_csr == 12'hc0a; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148873.4]
  assign _T_1046 = io_decode_0_csr == 12'hb8a; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148874.4]
  assign _T_1047 = io_decode_0_csr == 12'hc8a; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148875.4]
  assign _T_1048 = io_decode_0_csr == 12'h32b; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148876.4]
  assign _T_1049 = io_decode_0_csr == 12'hb0b; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148877.4]
  assign _T_1050 = io_decode_0_csr == 12'hc0b; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148878.4]
  assign _T_1051 = io_decode_0_csr == 12'hb8b; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148879.4]
  assign _T_1052 = io_decode_0_csr == 12'hc8b; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148880.4]
  assign _T_1053 = io_decode_0_csr == 12'h32c; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148881.4]
  assign _T_1054 = io_decode_0_csr == 12'hb0c; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148882.4]
  assign _T_1055 = io_decode_0_csr == 12'hc0c; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148883.4]
  assign _T_1056 = io_decode_0_csr == 12'hb8c; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148884.4]
  assign _T_1057 = io_decode_0_csr == 12'hc8c; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148885.4]
  assign _T_1058 = io_decode_0_csr == 12'h32d; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148886.4]
  assign _T_1059 = io_decode_0_csr == 12'hb0d; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148887.4]
  assign _T_1060 = io_decode_0_csr == 12'hc0d; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148888.4]
  assign _T_1061 = io_decode_0_csr == 12'hb8d; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148889.4]
  assign _T_1062 = io_decode_0_csr == 12'hc8d; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148890.4]
  assign _T_1063 = io_decode_0_csr == 12'h32e; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148891.4]
  assign _T_1064 = io_decode_0_csr == 12'hb0e; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148892.4]
  assign _T_1065 = io_decode_0_csr == 12'hc0e; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148893.4]
  assign _T_1066 = io_decode_0_csr == 12'hb8e; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148894.4]
  assign _T_1067 = io_decode_0_csr == 12'hc8e; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148895.4]
  assign _T_1068 = io_decode_0_csr == 12'h32f; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148896.4]
  assign _T_1069 = io_decode_0_csr == 12'hb0f; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148897.4]
  assign _T_1070 = io_decode_0_csr == 12'hc0f; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148898.4]
  assign _T_1071 = io_decode_0_csr == 12'hb8f; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148899.4]
  assign _T_1072 = io_decode_0_csr == 12'hc8f; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148900.4]
  assign _T_1073 = io_decode_0_csr == 12'h330; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148901.4]
  assign _T_1074 = io_decode_0_csr == 12'hb10; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148902.4]
  assign _T_1075 = io_decode_0_csr == 12'hc10; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148903.4]
  assign _T_1076 = io_decode_0_csr == 12'hb90; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148904.4]
  assign _T_1077 = io_decode_0_csr == 12'hc90; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148905.4]
  assign _T_1078 = io_decode_0_csr == 12'h331; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148906.4]
  assign _T_1079 = io_decode_0_csr == 12'hb11; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148907.4]
  assign _T_1080 = io_decode_0_csr == 12'hc11; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148908.4]
  assign _T_1081 = io_decode_0_csr == 12'hb91; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148909.4]
  assign _T_1082 = io_decode_0_csr == 12'hc91; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148910.4]
  assign _T_1083 = io_decode_0_csr == 12'h332; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148911.4]
  assign _T_1084 = io_decode_0_csr == 12'hb12; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148912.4]
  assign _T_1085 = io_decode_0_csr == 12'hc12; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148913.4]
  assign _T_1086 = io_decode_0_csr == 12'hb92; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148914.4]
  assign _T_1087 = io_decode_0_csr == 12'hc92; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148915.4]
  assign _T_1088 = io_decode_0_csr == 12'h333; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148916.4]
  assign _T_1089 = io_decode_0_csr == 12'hb13; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148917.4]
  assign _T_1090 = io_decode_0_csr == 12'hc13; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148918.4]
  assign _T_1091 = io_decode_0_csr == 12'hb93; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148919.4]
  assign _T_1092 = io_decode_0_csr == 12'hc93; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148920.4]
  assign _T_1093 = io_decode_0_csr == 12'h334; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148921.4]
  assign _T_1094 = io_decode_0_csr == 12'hb14; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148922.4]
  assign _T_1095 = io_decode_0_csr == 12'hc14; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148923.4]
  assign _T_1096 = io_decode_0_csr == 12'hb94; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148924.4]
  assign _T_1097 = io_decode_0_csr == 12'hc94; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148925.4]
  assign _T_1098 = io_decode_0_csr == 12'h335; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148926.4]
  assign _T_1099 = io_decode_0_csr == 12'hb15; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148927.4]
  assign _T_1100 = io_decode_0_csr == 12'hc15; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148928.4]
  assign _T_1101 = io_decode_0_csr == 12'hb95; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148929.4]
  assign _T_1102 = io_decode_0_csr == 12'hc95; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148930.4]
  assign _T_1103 = io_decode_0_csr == 12'h336; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148931.4]
  assign _T_1104 = io_decode_0_csr == 12'hb16; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148932.4]
  assign _T_1105 = io_decode_0_csr == 12'hc16; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148933.4]
  assign _T_1106 = io_decode_0_csr == 12'hb96; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148934.4]
  assign _T_1107 = io_decode_0_csr == 12'hc96; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148935.4]
  assign _T_1108 = io_decode_0_csr == 12'h337; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148936.4]
  assign _T_1109 = io_decode_0_csr == 12'hb17; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148937.4]
  assign _T_1110 = io_decode_0_csr == 12'hc17; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148938.4]
  assign _T_1111 = io_decode_0_csr == 12'hb97; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148939.4]
  assign _T_1112 = io_decode_0_csr == 12'hc97; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148940.4]
  assign _T_1113 = io_decode_0_csr == 12'h338; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148941.4]
  assign _T_1114 = io_decode_0_csr == 12'hb18; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148942.4]
  assign _T_1115 = io_decode_0_csr == 12'hc18; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148943.4]
  assign _T_1116 = io_decode_0_csr == 12'hb98; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148944.4]
  assign _T_1117 = io_decode_0_csr == 12'hc98; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148945.4]
  assign _T_1118 = io_decode_0_csr == 12'h339; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148946.4]
  assign _T_1119 = io_decode_0_csr == 12'hb19; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148947.4]
  assign _T_1120 = io_decode_0_csr == 12'hc19; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148948.4]
  assign _T_1121 = io_decode_0_csr == 12'hb99; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148949.4]
  assign _T_1122 = io_decode_0_csr == 12'hc99; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148950.4]
  assign _T_1123 = io_decode_0_csr == 12'h33a; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148951.4]
  assign _T_1124 = io_decode_0_csr == 12'hb1a; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148952.4]
  assign _T_1125 = io_decode_0_csr == 12'hc1a; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148953.4]
  assign _T_1126 = io_decode_0_csr == 12'hb9a; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148954.4]
  assign _T_1127 = io_decode_0_csr == 12'hc9a; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148955.4]
  assign _T_1128 = io_decode_0_csr == 12'h33b; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148956.4]
  assign _T_1129 = io_decode_0_csr == 12'hb1b; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148957.4]
  assign _T_1130 = io_decode_0_csr == 12'hc1b; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148958.4]
  assign _T_1131 = io_decode_0_csr == 12'hb9b; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148959.4]
  assign _T_1132 = io_decode_0_csr == 12'hc9b; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148960.4]
  assign _T_1133 = io_decode_0_csr == 12'h33c; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148961.4]
  assign _T_1134 = io_decode_0_csr == 12'hb1c; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148962.4]
  assign _T_1135 = io_decode_0_csr == 12'hc1c; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148963.4]
  assign _T_1136 = io_decode_0_csr == 12'hb9c; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148964.4]
  assign _T_1137 = io_decode_0_csr == 12'hc9c; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148965.4]
  assign _T_1138 = io_decode_0_csr == 12'h33d; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148966.4]
  assign _T_1139 = io_decode_0_csr == 12'hb1d; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148967.4]
  assign _T_1140 = io_decode_0_csr == 12'hc1d; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148968.4]
  assign _T_1141 = io_decode_0_csr == 12'hb9d; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148969.4]
  assign _T_1142 = io_decode_0_csr == 12'hc9d; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148970.4]
  assign _T_1143 = io_decode_0_csr == 12'h33e; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148971.4]
  assign _T_1144 = io_decode_0_csr == 12'hb1e; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148972.4]
  assign _T_1145 = io_decode_0_csr == 12'hc1e; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148973.4]
  assign _T_1146 = io_decode_0_csr == 12'hb9e; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148974.4]
  assign _T_1147 = io_decode_0_csr == 12'hc9e; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148975.4]
  assign _T_1148 = io_decode_0_csr == 12'h33f; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148976.4]
  assign _T_1149 = io_decode_0_csr == 12'hb1f; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148977.4]
  assign _T_1150 = io_decode_0_csr == 12'hc1f; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148978.4]
  assign _T_1151 = io_decode_0_csr == 12'hb9f; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148979.4]
  assign _T_1152 = io_decode_0_csr == 12'hc9f; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148980.4]
  assign _T_1153 = io_decode_0_csr == 12'h306; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148981.4]
  assign _T_1154 = io_decode_0_csr == 12'hc00; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148982.4]
  assign _T_1155 = io_decode_0_csr == 12'hc02; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148983.4]
  assign _T_1156 = io_decode_0_csr == 12'hb80; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148984.4]
  assign _T_1157 = io_decode_0_csr == 12'hb82; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148985.4]
  assign _T_1158 = io_decode_0_csr == 12'hc80; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148986.4]
  assign _T_1159 = io_decode_0_csr == 12'hc82; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148987.4]
  assign _T_1160 = io_decode_0_csr == 12'h100; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148988.4]
  assign _T_1161 = io_decode_0_csr == 12'h144; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148989.4]
  assign _T_1162 = io_decode_0_csr == 12'h104; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148990.4]
  assign _T_1163 = io_decode_0_csr == 12'h140; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148991.4]
  assign _T_1164 = io_decode_0_csr == 12'h142; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148992.4]
  assign _T_1165 = io_decode_0_csr == 12'h143; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148993.4]
  assign _T_1166 = io_decode_0_csr == 12'h180; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148994.4]
  assign _T_1167 = io_decode_0_csr == 12'h141; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148995.4]
  assign _T_1168 = io_decode_0_csr == 12'h105; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148996.4]
  assign _T_1169 = io_decode_0_csr == 12'h106; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148997.4]
  assign _T_1170 = io_decode_0_csr == 12'h303; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148998.4]
  assign _T_1171 = io_decode_0_csr == 12'h302; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@148999.4]
  assign _T_1172 = io_decode_0_csr == 12'h3a0; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@149000.4]
  assign _T_1173 = io_decode_0_csr == 12'h3a1; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@149001.4]
  assign _T_1174 = io_decode_0_csr == 12'h3a2; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@149002.4]
  assign _T_1175 = io_decode_0_csr == 12'h3a3; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@149003.4]
  assign _T_1176 = io_decode_0_csr == 12'h3b0; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@149004.4]
  assign _T_1177 = io_decode_0_csr == 12'h3b1; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@149005.4]
  assign _T_1178 = io_decode_0_csr == 12'h3b2; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@149006.4]
  assign _T_1179 = io_decode_0_csr == 12'h3b3; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@149007.4]
  assign _T_1180 = io_decode_0_csr == 12'h3b4; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@149008.4]
  assign _T_1181 = io_decode_0_csr == 12'h3b5; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@149009.4]
  assign _T_1182 = io_decode_0_csr == 12'h3b6; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@149010.4]
  assign _T_1183 = io_decode_0_csr == 12'h3b7; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@149011.4]
  assign _T_1184 = io_decode_0_csr == 12'h3b8; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@149012.4]
  assign _T_1185 = io_decode_0_csr == 12'h3b9; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@149013.4]
  assign _T_1186 = io_decode_0_csr == 12'h3ba; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@149014.4]
  assign _T_1187 = io_decode_0_csr == 12'h3bb; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@149015.4]
  assign _T_1188 = io_decode_0_csr == 12'h3bc; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@149016.4]
  assign _T_1189 = io_decode_0_csr == 12'h3bd; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@149017.4]
  assign _T_1190 = io_decode_0_csr == 12'h3be; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@149018.4]
  assign _T_1191 = io_decode_0_csr == 12'h3bf; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@149019.4]
  assign _T_1192 = io_decode_0_csr == 12'h7c1; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@149020.4]
  assign _T_1193 = io_decode_0_csr == 12'hf12; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@149021.4]
  assign _T_1194 = io_decode_0_csr == 12'hf11; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@149022.4]
  assign _T_1195 = io_decode_0_csr == 12'hf13; // @[CSR.scala 584:99:freechips.rocketchip.system.DefaultRV32Config.fir@149023.4]
  assign _T_1196 = _T_987 | _T_988; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149024.4]
  assign _T_1197 = _T_1196 | _T_989; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149025.4]
  assign _T_1198 = _T_1197 | _T_990; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149026.4]
  assign _T_1199 = _T_1198 | _T_991; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149027.4]
  assign _T_1200 = _T_1199 | _T_992; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149028.4]
  assign _T_1201 = _T_1200 | _T_993; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149029.4]
  assign _T_1202 = _T_1201 | _T_994; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149030.4]
  assign _T_1203 = _T_1202 | _T_995; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149031.4]
  assign _T_1204 = _T_1203 | _T_996; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149032.4]
  assign _T_1205 = _T_1204 | _T_997; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149033.4]
  assign _T_1206 = _T_1205 | _T_998; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149034.4]
  assign _T_1207 = _T_1206 | _T_999; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149035.4]
  assign _T_1208 = _T_1207 | _T_1000; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149036.4]
  assign _T_1209 = _T_1208 | _T_1001; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149037.4]
  assign _T_1210 = _T_1209 | _T_1002; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149038.4]
  assign _T_1211 = _T_1210 | _T_1003; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149039.4]
  assign _T_1212 = _T_1211 | _T_1004; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149040.4]
  assign _T_1213 = _T_1212 | _T_1005; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149041.4]
  assign _T_1214 = _T_1213 | _T_1006; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149042.4]
  assign _T_1215 = _T_1214 | _T_1007; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149043.4]
  assign _T_1216 = _T_1215 | _T_1008; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149044.4]
  assign _T_1217 = _T_1216 | _T_1009; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149045.4]
  assign _T_1218 = _T_1217 | _T_1010; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149046.4]
  assign _T_1219 = _T_1218 | _T_1011; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149047.4]
  assign _T_1220 = _T_1219 | _T_1012; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149048.4]
  assign _T_1221 = _T_1220 | _T_1013; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149049.4]
  assign _T_1222 = _T_1221 | _T_1014; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149050.4]
  assign _T_1223 = _T_1222 | _T_1015; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149051.4]
  assign _T_1224 = _T_1223 | _T_1016; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149052.4]
  assign _T_1225 = _T_1224 | _T_1017; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149053.4]
  assign _T_1226 = _T_1225 | _T_1018; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149054.4]
  assign _T_1227 = _T_1226 | _T_1019; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149055.4]
  assign _T_1228 = _T_1227 | _T_1020; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149056.4]
  assign _T_1229 = _T_1228 | _T_1021; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149057.4]
  assign _T_1230 = _T_1229 | _T_1022; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149058.4]
  assign _T_1231 = _T_1230 | _T_1023; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149059.4]
  assign _T_1232 = _T_1231 | _T_1024; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149060.4]
  assign _T_1233 = _T_1232 | _T_1025; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149061.4]
  assign _T_1234 = _T_1233 | _T_1026; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149062.4]
  assign _T_1235 = _T_1234 | _T_1027; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149063.4]
  assign _T_1236 = _T_1235 | _T_1028; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149064.4]
  assign _T_1237 = _T_1236 | _T_1029; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149065.4]
  assign _T_1238 = _T_1237 | _T_1030; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149066.4]
  assign _T_1239 = _T_1238 | _T_1031; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149067.4]
  assign _T_1240 = _T_1239 | _T_1032; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149068.4]
  assign _T_1241 = _T_1240 | _T_1033; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149069.4]
  assign _T_1242 = _T_1241 | _T_1034; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149070.4]
  assign _T_1243 = _T_1242 | _T_1035; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149071.4]
  assign _T_1244 = _T_1243 | _T_1036; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149072.4]
  assign _T_1245 = _T_1244 | _T_1037; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149073.4]
  assign _T_1246 = _T_1245 | _T_1038; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149074.4]
  assign _T_1247 = _T_1246 | _T_1039; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149075.4]
  assign _T_1248 = _T_1247 | _T_1040; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149076.4]
  assign _T_1249 = _T_1248 | _T_1041; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149077.4]
  assign _T_1250 = _T_1249 | _T_1042; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149078.4]
  assign _T_1251 = _T_1250 | _T_1043; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149079.4]
  assign _T_1252 = _T_1251 | _T_1044; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149080.4]
  assign _T_1253 = _T_1252 | _T_1045; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149081.4]
  assign _T_1254 = _T_1253 | _T_1046; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149082.4]
  assign _T_1255 = _T_1254 | _T_1047; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149083.4]
  assign _T_1256 = _T_1255 | _T_1048; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149084.4]
  assign _T_1257 = _T_1256 | _T_1049; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149085.4]
  assign _T_1258 = _T_1257 | _T_1050; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149086.4]
  assign _T_1259 = _T_1258 | _T_1051; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149087.4]
  assign _T_1260 = _T_1259 | _T_1052; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149088.4]
  assign _T_1261 = _T_1260 | _T_1053; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149089.4]
  assign _T_1262 = _T_1261 | _T_1054; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149090.4]
  assign _T_1263 = _T_1262 | _T_1055; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149091.4]
  assign _T_1264 = _T_1263 | _T_1056; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149092.4]
  assign _T_1265 = _T_1264 | _T_1057; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149093.4]
  assign _T_1266 = _T_1265 | _T_1058; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149094.4]
  assign _T_1267 = _T_1266 | _T_1059; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149095.4]
  assign _T_1268 = _T_1267 | _T_1060; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149096.4]
  assign _T_1269 = _T_1268 | _T_1061; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149097.4]
  assign _T_1270 = _T_1269 | _T_1062; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149098.4]
  assign _T_1271 = _T_1270 | _T_1063; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149099.4]
  assign _T_1272 = _T_1271 | _T_1064; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149100.4]
  assign _T_1273 = _T_1272 | _T_1065; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149101.4]
  assign _T_1274 = _T_1273 | _T_1066; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149102.4]
  assign _T_1275 = _T_1274 | _T_1067; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149103.4]
  assign _T_1276 = _T_1275 | _T_1068; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149104.4]
  assign _T_1277 = _T_1276 | _T_1069; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149105.4]
  assign _T_1278 = _T_1277 | _T_1070; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149106.4]
  assign _T_1279 = _T_1278 | _T_1071; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149107.4]
  assign _T_1280 = _T_1279 | _T_1072; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149108.4]
  assign _T_1281 = _T_1280 | _T_1073; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149109.4]
  assign _T_1282 = _T_1281 | _T_1074; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149110.4]
  assign _T_1283 = _T_1282 | _T_1075; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149111.4]
  assign _T_1284 = _T_1283 | _T_1076; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149112.4]
  assign _T_1285 = _T_1284 | _T_1077; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149113.4]
  assign _T_1286 = _T_1285 | _T_1078; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149114.4]
  assign _T_1287 = _T_1286 | _T_1079; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149115.4]
  assign _T_1288 = _T_1287 | _T_1080; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149116.4]
  assign _T_1289 = _T_1288 | _T_1081; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149117.4]
  assign _T_1290 = _T_1289 | _T_1082; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149118.4]
  assign _T_1291 = _T_1290 | _T_1083; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149119.4]
  assign _T_1292 = _T_1291 | _T_1084; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149120.4]
  assign _T_1293 = _T_1292 | _T_1085; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149121.4]
  assign _T_1294 = _T_1293 | _T_1086; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149122.4]
  assign _T_1295 = _T_1294 | _T_1087; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149123.4]
  assign _T_1296 = _T_1295 | _T_1088; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149124.4]
  assign _T_1297 = _T_1296 | _T_1089; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149125.4]
  assign _T_1298 = _T_1297 | _T_1090; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149126.4]
  assign _T_1299 = _T_1298 | _T_1091; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149127.4]
  assign _T_1300 = _T_1299 | _T_1092; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149128.4]
  assign _T_1301 = _T_1300 | _T_1093; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149129.4]
  assign _T_1302 = _T_1301 | _T_1094; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149130.4]
  assign _T_1303 = _T_1302 | _T_1095; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149131.4]
  assign _T_1304 = _T_1303 | _T_1096; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149132.4]
  assign _T_1305 = _T_1304 | _T_1097; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149133.4]
  assign _T_1306 = _T_1305 | _T_1098; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149134.4]
  assign _T_1307 = _T_1306 | _T_1099; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149135.4]
  assign _T_1308 = _T_1307 | _T_1100; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149136.4]
  assign _T_1309 = _T_1308 | _T_1101; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149137.4]
  assign _T_1310 = _T_1309 | _T_1102; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149138.4]
  assign _T_1311 = _T_1310 | _T_1103; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149139.4]
  assign _T_1312 = _T_1311 | _T_1104; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149140.4]
  assign _T_1313 = _T_1312 | _T_1105; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149141.4]
  assign _T_1314 = _T_1313 | _T_1106; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149142.4]
  assign _T_1315 = _T_1314 | _T_1107; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149143.4]
  assign _T_1316 = _T_1315 | _T_1108; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149144.4]
  assign _T_1317 = _T_1316 | _T_1109; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149145.4]
  assign _T_1318 = _T_1317 | _T_1110; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149146.4]
  assign _T_1319 = _T_1318 | _T_1111; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149147.4]
  assign _T_1320 = _T_1319 | _T_1112; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149148.4]
  assign _T_1321 = _T_1320 | _T_1113; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149149.4]
  assign _T_1322 = _T_1321 | _T_1114; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149150.4]
  assign _T_1323 = _T_1322 | _T_1115; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149151.4]
  assign _T_1324 = _T_1323 | _T_1116; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149152.4]
  assign _T_1325 = _T_1324 | _T_1117; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149153.4]
  assign _T_1326 = _T_1325 | _T_1118; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149154.4]
  assign _T_1327 = _T_1326 | _T_1119; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149155.4]
  assign _T_1328 = _T_1327 | _T_1120; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149156.4]
  assign _T_1329 = _T_1328 | _T_1121; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149157.4]
  assign _T_1330 = _T_1329 | _T_1122; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149158.4]
  assign _T_1331 = _T_1330 | _T_1123; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149159.4]
  assign _T_1332 = _T_1331 | _T_1124; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149160.4]
  assign _T_1333 = _T_1332 | _T_1125; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149161.4]
  assign _T_1334 = _T_1333 | _T_1126; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149162.4]
  assign _T_1335 = _T_1334 | _T_1127; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149163.4]
  assign _T_1336 = _T_1335 | _T_1128; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149164.4]
  assign _T_1337 = _T_1336 | _T_1129; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149165.4]
  assign _T_1338 = _T_1337 | _T_1130; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149166.4]
  assign _T_1339 = _T_1338 | _T_1131; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149167.4]
  assign _T_1340 = _T_1339 | _T_1132; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149168.4]
  assign _T_1341 = _T_1340 | _T_1133; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149169.4]
  assign _T_1342 = _T_1341 | _T_1134; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149170.4]
  assign _T_1343 = _T_1342 | _T_1135; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149171.4]
  assign _T_1344 = _T_1343 | _T_1136; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149172.4]
  assign _T_1345 = _T_1344 | _T_1137; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149173.4]
  assign _T_1346 = _T_1345 | _T_1138; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149174.4]
  assign _T_1347 = _T_1346 | _T_1139; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149175.4]
  assign _T_1348 = _T_1347 | _T_1140; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149176.4]
  assign _T_1349 = _T_1348 | _T_1141; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149177.4]
  assign _T_1350 = _T_1349 | _T_1142; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149178.4]
  assign _T_1351 = _T_1350 | _T_1143; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149179.4]
  assign _T_1352 = _T_1351 | _T_1144; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149180.4]
  assign _T_1353 = _T_1352 | _T_1145; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149181.4]
  assign _T_1354 = _T_1353 | _T_1146; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149182.4]
  assign _T_1355 = _T_1354 | _T_1147; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149183.4]
  assign _T_1356 = _T_1355 | _T_1148; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149184.4]
  assign _T_1357 = _T_1356 | _T_1149; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149185.4]
  assign _T_1358 = _T_1357 | _T_1150; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149186.4]
  assign _T_1359 = _T_1358 | _T_1151; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149187.4]
  assign _T_1360 = _T_1359 | _T_1152; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149188.4]
  assign _T_1361 = _T_1360 | _T_1153; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149189.4]
  assign _T_1362 = _T_1361 | _T_1154; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149190.4]
  assign _T_1363 = _T_1362 | _T_1155; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149191.4]
  assign _T_1364 = _T_1363 | _T_1156; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149192.4]
  assign _T_1365 = _T_1364 | _T_1157; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149193.4]
  assign _T_1366 = _T_1365 | _T_1158; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149194.4]
  assign _T_1367 = _T_1366 | _T_1159; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149195.4]
  assign _T_1368 = _T_1367 | _T_1160; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149196.4]
  assign _T_1369 = _T_1368 | _T_1161; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149197.4]
  assign _T_1370 = _T_1369 | _T_1162; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149198.4]
  assign _T_1371 = _T_1370 | _T_1163; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149199.4]
  assign _T_1372 = _T_1371 | _T_1164; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149200.4]
  assign _T_1373 = _T_1372 | _T_1165; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149201.4]
  assign _T_1374 = _T_1373 | _T_1166; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149202.4]
  assign _T_1375 = _T_1374 | _T_1167; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149203.4]
  assign _T_1376 = _T_1375 | _T_1168; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149204.4]
  assign _T_1377 = _T_1376 | _T_1169; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149205.4]
  assign _T_1378 = _T_1377 | _T_1170; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149206.4]
  assign _T_1379 = _T_1378 | _T_1171; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149207.4]
  assign _T_1380 = _T_1379 | _T_1172; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149208.4]
  assign _T_1381 = _T_1380 | _T_1173; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149209.4]
  assign _T_1382 = _T_1381 | _T_1174; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149210.4]
  assign _T_1383 = _T_1382 | _T_1175; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149211.4]
  assign _T_1384 = _T_1383 | _T_1176; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149212.4]
  assign _T_1385 = _T_1384 | _T_1177; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149213.4]
  assign _T_1386 = _T_1385 | _T_1178; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149214.4]
  assign _T_1387 = _T_1386 | _T_1179; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149215.4]
  assign _T_1388 = _T_1387 | _T_1180; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149216.4]
  assign _T_1389 = _T_1388 | _T_1181; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149217.4]
  assign _T_1390 = _T_1389 | _T_1182; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149218.4]
  assign _T_1391 = _T_1390 | _T_1183; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149219.4]
  assign _T_1392 = _T_1391 | _T_1184; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149220.4]
  assign _T_1393 = _T_1392 | _T_1185; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149221.4]
  assign _T_1394 = _T_1393 | _T_1186; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149222.4]
  assign _T_1395 = _T_1394 | _T_1187; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149223.4]
  assign _T_1396 = _T_1395 | _T_1188; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149224.4]
  assign _T_1397 = _T_1396 | _T_1189; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149225.4]
  assign _T_1398 = _T_1397 | _T_1190; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149226.4]
  assign _T_1399 = _T_1398 | _T_1191; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149227.4]
  assign _T_1400 = _T_1399 | _T_1192; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149228.4]
  assign _T_1401 = _T_1400 | _T_1193; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149229.4]
  assign _T_1402 = _T_1401 | _T_1194; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149230.4]
  assign _T_1403 = _T_1402 | _T_1195; // @[CSR.scala 584:115:freechips.rocketchip.system.DefaultRV32Config.fir@149231.4]
  assign _T_1404 = _T_1403 == 1'h0; // @[CSR.scala 601:7:freechips.rocketchip.system.DefaultRV32Config.fir@149232.4]
  assign _T_1405 = _T_986 | _T_1404; // @[CSR.scala 600:62:freechips.rocketchip.system.DefaultRV32Config.fir@149233.4]
  assign _T_1407 = _T_953 == 1'h0; // @[CSR.scala 602:35:freechips.rocketchip.system.DefaultRV32Config.fir@149235.4]
  assign _T_1408 = _T_1166 & _T_1407; // @[CSR.scala 602:32:freechips.rocketchip.system.DefaultRV32Config.fir@149236.4]
  assign _T_1409 = _T_1405 | _T_1408; // @[CSR.scala 601:32:freechips.rocketchip.system.DefaultRV32Config.fir@149237.4]
  assign _T_1410 = io_decode_0_csr >= 12'hc00; // @[package.scala 162:47:freechips.rocketchip.system.DefaultRV32Config.fir@149238.4]
  assign _T_1411 = io_decode_0_csr < 12'hc20; // @[package.scala 162:60:freechips.rocketchip.system.DefaultRV32Config.fir@149239.4]
  assign _T_1412 = _T_1410 & _T_1411; // @[package.scala 162:55:freechips.rocketchip.system.DefaultRV32Config.fir@149240.4]
  assign _T_1413 = io_decode_0_csr >= 12'hc80; // @[package.scala 162:47:freechips.rocketchip.system.DefaultRV32Config.fir@149241.4]
  assign _T_1414 = io_decode_0_csr < 12'hca0; // @[package.scala 162:60:freechips.rocketchip.system.DefaultRV32Config.fir@149242.4]
  assign _T_1415 = _T_1413 & _T_1414; // @[package.scala 162:55:freechips.rocketchip.system.DefaultRV32Config.fir@149243.4]
  assign _T_1416 = _T_1412 | _T_1415; // @[CSR.scala 603:66:freechips.rocketchip.system.DefaultRV32Config.fir@149244.4]
  assign _T_1417 = _T_968 == 1'h0; // @[CSR.scala 603:133:freechips.rocketchip.system.DefaultRV32Config.fir@149245.4]
  assign _T_1418 = _T_1416 & _T_1417; // @[CSR.scala 603:130:freechips.rocketchip.system.DefaultRV32Config.fir@149246.4]
  assign _T_1419 = _T_1409 | _T_1418; // @[CSR.scala 602:53:freechips.rocketchip.system.DefaultRV32Config.fir@149247.4]
  assign _T_1420 = io_decode_0_csr & 12'hc10; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@149248.4]
  assign _T_1421 = _T_1420 == 12'h410; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@149249.4]
  assign _T_1425 = _T_1421 & _T_1547; // @[CSR.scala 604:42:freechips.rocketchip.system.DefaultRV32Config.fir@149253.4]
  assign _T_1426 = _T_1419 | _T_1425; // @[CSR.scala 603:148:freechips.rocketchip.system.DefaultRV32Config.fir@149254.4]
  assign _T_1429 = io_decode_0_fp_csr & io_decode_0_fp_illegal; // @[CSR.scala 606:21:freechips.rocketchip.system.DefaultRV32Config.fir@149257.4]
  assign _T_1431 = io_decode_0_csr[11:10]; // @[CSR.scala 607:39:freechips.rocketchip.system.DefaultRV32Config.fir@149260.4]
  assign _T_1433 = io_decode_0_csr >= 12'h340; // @[CSR.scala 608:40:freechips.rocketchip.system.DefaultRV32Config.fir@149263.4]
  assign _T_1434 = io_decode_0_csr <= 12'h343; // @[CSR.scala 608:71:freechips.rocketchip.system.DefaultRV32Config.fir@149264.4]
  assign _T_1435 = _T_1433 & _T_1434; // @[CSR.scala 608:57:freechips.rocketchip.system.DefaultRV32Config.fir@149265.4]
  assign _T_1436 = io_decode_0_csr >= 12'h140; // @[CSR.scala 608:99:freechips.rocketchip.system.DefaultRV32Config.fir@149266.4]
  assign _T_1437 = io_decode_0_csr <= 12'h143; // @[CSR.scala 608:130:freechips.rocketchip.system.DefaultRV32Config.fir@149267.4]
  assign _T_1438 = _T_1436 & _T_1437; // @[CSR.scala 608:116:freechips.rocketchip.system.DefaultRV32Config.fir@149268.4]
  assign _T_1439 = _T_1435 | _T_1438; // @[CSR.scala 608:85:freechips.rocketchip.system.DefaultRV32Config.fir@149269.4]
  assign _T_1443 = _T_949 == 1'h0; // @[CSR.scala 610:17:freechips.rocketchip.system.DefaultRV32Config.fir@149274.4]
  assign _T_1444 = _T_935 & _T_1443; // @[CSR.scala 610:14:freechips.rocketchip.system.DefaultRV32Config.fir@149275.4]
  assign _T_1445 = _T_986 | _T_1444; // @[CSR.scala 609:64:freechips.rocketchip.system.DefaultRV32Config.fir@149276.4]
  assign _T_1446 = _T_957 == 1'h0; // @[CSR.scala 611:17:freechips.rocketchip.system.DefaultRV32Config.fir@149277.4]
  assign _T_1447 = _T_930 & _T_1446; // @[CSR.scala 611:14:freechips.rocketchip.system.DefaultRV32Config.fir@149278.4]
  assign _T_1448 = _T_1445 | _T_1447; // @[CSR.scala 610:28:freechips.rocketchip.system.DefaultRV32Config.fir@149279.4]
  assign _T_1449 = io_decode_0_csr[10]; // @[CSR.scala 612:27:freechips.rocketchip.system.DefaultRV32Config.fir@149280.4]
  assign _T_1450 = _T_930 & _T_1449; // @[CSR.scala 612:14:freechips.rocketchip.system.DefaultRV32Config.fir@149281.4]
  assign _T_1452 = _T_1450 & _T_1547; // @[CSR.scala 612:32:freechips.rocketchip.system.DefaultRV32Config.fir@149283.4]
  assign _T_1453 = _T_1448 | _T_1452; // @[CSR.scala 611:29:freechips.rocketchip.system.DefaultRV32Config.fir@149284.4]
  assign _T_1455 = _T_938 & _T_1407; // @[CSR.scala 613:17:freechips.rocketchip.system.DefaultRV32Config.fir@149286.4]
  assign _T_1487 = cause[4:0]; // @[CSR.scala 633:32:freechips.rocketchip.system.DefaultRV32Config.fir@149327.4]
  assign _T_1488 = {_T_1487, 2'h0}; // @[CSR.scala 633:59:freechips.rocketchip.system.DefaultRV32Config.fir@149328.4]
  assign _T_1489 = _T_1486[31:7]; // @[CSR.scala 634:33:freechips.rocketchip.system.DefaultRV32Config.fir@149329.4]
  assign _T_1490 = {_T_1489,_T_1488}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@149330.4]
  assign _T_1491 = _T_1486[0]; // @[CSR.scala 635:24:freechips.rocketchip.system.DefaultRV32Config.fir@149331.4]
  assign _T_1493 = _T_1491 & _T_1460; // @[CSR.scala 635:28:freechips.rocketchip.system.DefaultRV32Config.fir@149333.4]
  assign _T_1494 = cause_lsbs[7:5]; // @[CSR.scala 635:70:freechips.rocketchip.system.DefaultRV32Config.fir@149334.4]
  assign _T_1495 = _T_1494 == 3'h0; // @[CSR.scala 635:94:freechips.rocketchip.system.DefaultRV32Config.fir@149335.4]
  assign _T_1496 = _T_1493 & _T_1495; // @[CSR.scala 635:55:freechips.rocketchip.system.DefaultRV32Config.fir@149336.4]
  assign _T_1497 = _T_1486[31:2]; // @[CSR.scala 636:38:freechips.rocketchip.system.DefaultRV32Config.fir@149337.4]
  assign _T_1498 = {_T_1497, 2'h0}; // @[CSR.scala 636:56:freechips.rocketchip.system.DefaultRV32Config.fir@149338.4]
  assign _T_1503 = io_status_fs == 2'h3; // @[CSR.scala 644:32:freechips.rocketchip.system.DefaultRV32Config.fir@149350.4]
  assign _T_1504 = io_status_xs == 2'h3; // @[CSR.scala 644:53:freechips.rocketchip.system.DefaultRV32Config.fir@149351.4]
  assign _T_1505 = _T_1503 | _T_1504; // @[CSR.scala 644:37:freechips.rocketchip.system.DefaultRV32Config.fir@149352.4]
  assign _T_1506 = io_status_vs == 2'h3; // @[CSR.scala 644:74:freechips.rocketchip.system.DefaultRV32Config.fir@149353.4]
  assign _T_1509 = reg_mstatus_mprv & _T_1547; // @[CSR.scala 649:53:freechips.rocketchip.system.DefaultRV32Config.fir@149361.4]
  assign _T_1513 = insn_ret + insn_call; // @[Bitwise.scala 47:55:freechips.rocketchip.system.DefaultRV32Config.fir@149369.4]
  assign _T_1515 = insn_break + io_exception; // @[Bitwise.scala 47:55:freechips.rocketchip.system.DefaultRV32Config.fir@149371.4]
  assign _T_1517 = _T_1513 + _T_1515; // @[Bitwise.scala 47:55:freechips.rocketchip.system.DefaultRV32Config.fir@149373.4]
  assign _T_1519 = _T_1517 <= 3'h1; // @[CSR.scala 654:79:freechips.rocketchip.system.DefaultRV32Config.fir@149375.4]
  assign _T_1521 = _T_1519 | reset; // @[CSR.scala 654:9:freechips.rocketchip.system.DefaultRV32Config.fir@149377.4]
  assign _T_1524 = insn_wfi & _T_277; // @[CSR.scala 656:18:freechips.rocketchip.system.DefaultRV32Config.fir@149384.4]
  assign _T_1526 = _T_1524 & _T_1547; // @[CSR.scala 656:36:freechips.rocketchip.system.DefaultRV32Config.fir@149386.4]
  assign _GEN_34 = _T_1526 | reg_wfi; // @[CSR.scala 656:51:freechips.rocketchip.system.DefaultRV32Config.fir@149387.4]
  assign _T_1527 = pending_interrupts != 32'h0; // @[CSR.scala 657:28:freechips.rocketchip.system.DefaultRV32Config.fir@149390.4]
  assign _T_1528 = _T_1527 | io_interrupts_debug; // @[CSR.scala 657:32:freechips.rocketchip.system.DefaultRV32Config.fir@149391.4]
  assign _T_1529 = _T_1528 | exception; // @[CSR.scala 657:55:freechips.rocketchip.system.DefaultRV32Config.fir@149392.4]
  assign _T_1531 = io_retire | exception; // @[CSR.scala 659:22:freechips.rocketchip.system.DefaultRV32Config.fir@149397.4]
  assign _GEN_36 = _T_1531 | reg_singleStepped; // @[CSR.scala 659:36:freechips.rocketchip.system.DefaultRV32Config.fir@149398.4]
  assign _T_1539 = reg_singleStepped == 1'h0; // @[CSR.scala 662:10:freechips.rocketchip.system.DefaultRV32Config.fir@149415.4]
  assign _T_1540 = io_retire == 1'h0; // @[CSR.scala 662:42:freechips.rocketchip.system.DefaultRV32Config.fir@149416.4]
  assign _T_1541 = _T_1539 | _T_1540; // @[CSR.scala 662:29:freechips.rocketchip.system.DefaultRV32Config.fir@149417.4]
  assign _T_1543 = _T_1541 | reset; // @[CSR.scala 662:9:freechips.rocketchip.system.DefaultRV32Config.fir@149419.4]
  assign _T_1545 = ~ io_pc; // @[CSR.scala 1059:28:freechips.rocketchip.system.DefaultRV32Config.fir@149425.4]
  assign _T_1546 = _T_1545 | 32'h1; // @[CSR.scala 1059:31:freechips.rocketchip.system.DefaultRV32Config.fir@149426.4]
  assign _T_1548 = causeIsDebugTrigger ? 2'h2 : 2'h1; // @[CSR.scala 673:86:freechips.rocketchip.system.DefaultRV32Config.fir@149437.10]
  assign _T_1549 = causeIsDebugInt ? 2'h3 : _T_1548; // @[CSR.scala 673:56:freechips.rocketchip.system.DefaultRV32Config.fir@149438.10]
  assign _GEN_38 = _T_1547 | reg_debug; // @[CSR.scala 670:25:freechips.rocketchip.system.DefaultRV32Config.fir@149434.8]
  assign _GEN_47 = delegate ? reg_mstatus_sie : reg_mstatus_spie; // @[CSR.scala 677:27:freechips.rocketchip.system.DefaultRV32Config.fir@149446.8]
  assign _GEN_48 = delegate ? reg_mstatus_prv : {{1'd0}, reg_mstatus_spp}; // @[CSR.scala 677:27:freechips.rocketchip.system.DefaultRV32Config.fir@149446.8]
  assign _GEN_54 = delegate ? reg_mstatus_mpie : reg_mstatus_mie; // @[CSR.scala 677:27:freechips.rocketchip.system.DefaultRV32Config.fir@149446.8]
  assign _GEN_55 = delegate ? reg_mstatus_mpp : reg_mstatus_prv; // @[CSR.scala 677:27:freechips.rocketchip.system.DefaultRV32Config.fir@149446.8]
  assign _GEN_56 = delegate & reg_mstatus_mie; // @[CSR.scala 677:27:freechips.rocketchip.system.DefaultRV32Config.fir@149446.8]
  assign _GEN_66 = trapToDebug ? reg_mstatus_spie : _GEN_47; // @[CSR.scala 669:24:freechips.rocketchip.system.DefaultRV32Config.fir@149432.6]
  assign _GEN_67 = trapToDebug ? {{1'd0}, reg_mstatus_spp} : _GEN_48; // @[CSR.scala 669:24:freechips.rocketchip.system.DefaultRV32Config.fir@149432.6]
  assign _GEN_72 = trapToDebug ? reg_mstatus_mpie : _GEN_54; // @[CSR.scala 669:24:freechips.rocketchip.system.DefaultRV32Config.fir@149432.6]
  assign _GEN_73 = trapToDebug ? reg_mstatus_mpp : _GEN_55; // @[CSR.scala 669:24:freechips.rocketchip.system.DefaultRV32Config.fir@149432.6]
  assign _GEN_74 = trapToDebug ? reg_mstatus_mie : _GEN_56; // @[CSR.scala 669:24:freechips.rocketchip.system.DefaultRV32Config.fir@149432.6]
  assign _GEN_84 = exception ? _GEN_66 : reg_mstatus_spie; // @[CSR.scala 668:20:freechips.rocketchip.system.DefaultRV32Config.fir@149431.4]
  assign _GEN_85 = exception ? _GEN_67 : {{1'd0}, reg_mstatus_spp}; // @[CSR.scala 668:20:freechips.rocketchip.system.DefaultRV32Config.fir@149431.4]
  assign _GEN_90 = exception ? _GEN_72 : reg_mstatus_mpie; // @[CSR.scala 668:20:freechips.rocketchip.system.DefaultRV32Config.fir@149431.4]
  assign _GEN_91 = exception ? _GEN_73 : reg_mstatus_mpp; // @[CSR.scala 668:20:freechips.rocketchip.system.DefaultRV32Config.fir@149431.4]
  assign _GEN_92 = exception ? _GEN_74 : reg_mstatus_mie; // @[CSR.scala 668:20:freechips.rocketchip.system.DefaultRV32Config.fir@149431.4]
  assign _GEN_95 = _T_1879 ? _T_431 : _T_413; // @[CSR.scala 724:53:freechips.rocketchip.system.DefaultRV32Config.fir@149806.8]
  assign _GEN_100 = _T_1872 | _GEN_84; // @[CSR.scala 718:44:freechips.rocketchip.system.DefaultRV32Config.fir@149791.6]
  assign _GEN_101 = _T_1872 ? 2'h0 : _GEN_85; // @[CSR.scala 718:44:freechips.rocketchip.system.DefaultRV32Config.fir@149791.6]
  assign _GEN_110 = insn_ret ? _GEN_101 : _GEN_85; // @[CSR.scala 717:19:freechips.rocketchip.system.DefaultRV32Config.fir@149787.4]
  assign _GEN_117 = insn_cease | _T_1894; // @[Reg.scala 28:19:freechips.rocketchip.system.DefaultRV32Config.fir@149835.4]
  assign _T_1896 = sel_tdata1 ? _T_408 : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@149852.4]
  assign _T_1897 = sel_tdata2 ? reg_bp_0_address : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@149853.4]
  assign _T_1898 = sel_misa ? reg_misa : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@149854.4]
  assign _T_1899 = sel_mstatus ? read_mstatus : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@149855.4]
  assign _T_1900 = sel_mtvec ? read_mtvec : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@149856.4]
  assign _T_1901 = sel_mip ? read_mip : 16'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@149857.4]
  assign _T_1902 = sel_mie ? reg_mie : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@149858.4]
  assign _T_1903 = sel_mscratch ? reg_mscratch : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@149859.4]
  assign _T_1904 = sel_mepc ? _T_413 : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@149860.4]
  assign _T_1905 = sel_mtval ? reg_mtval : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@149861.4]
  assign _T_1906 = sel_mcause ? reg_mcause : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@149862.4]
  assign _T_1908 = sel_dcsr ? _T_426 : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@149864.4]
  assign _T_1909 = sel_dpc ? _T_431 : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@149865.4]
  assign _T_1910 = sel_dscratch ? reg_dscratch : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@149866.4]
  assign _T_1911 = sel_fflags ? reg_fflags : 5'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@149867.4]
  assign _T_1912 = sel_frm ? reg_frm : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@149868.4]
  assign _T_1913 = sel_fcsr ? read_fcsr : 10'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@149869.4]
  assign _T_1914 = sel_mcycle ? _T_100 : 64'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@149870.4]
  assign _T_1915 = sel_minstret ? _T_92 : 64'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@149871.4]
  assign _T_2061 = sel_mcounteren ? read_mcounteren : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150017.4]
  assign _T_2062 = _T_841 ? _T_100 : 64'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150018.4]
  assign _T_2063 = _T_842 ? _T_92 : 64'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150019.4]
  assign _T_2064 = sel_mcycleh ? _T_494 : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150020.4]
  assign _T_2065 = sel_minstreth ? _T_495 : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150021.4]
  assign _T_2066 = _T_845 ? _T_494 : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150022.4]
  assign _T_2067 = _T_846 ? _T_495 : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150023.4]
  assign _T_2068 = sel_sstatus ? _T_564 : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150024.4]
  assign _T_2069 = sel_sip ? _T_499 : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150025.4]
  assign _T_2070 = sel_sie ? _T_498 : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150026.4]
  assign _T_2071 = sel_sscratch ? reg_sscratch : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150027.4]
  assign _T_2072 = sel_scause ? reg_scause : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150028.4]
  assign _T_2073 = sel_stval ? reg_stval : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150029.4]
  assign _T_2074 = sel_satp ? _T_566 : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150030.4]
  assign _T_2075 = sel_sepc ? _T_571 : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150031.4]
  assign _T_2076 = sel_stvec ? read_stvec : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150032.4]
  assign _T_2077 = sel_scounteren ? read_scounteren : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150033.4]
  assign _T_2078 = sel_mideleg ? read_mideleg : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150034.4]
  assign _T_2079 = sel_medeleg ? read_medeleg : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150035.4]
  assign _T_2080 = sel_pmp_cfg_0 ? _T_604 : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150036.4]
  assign _T_2081 = sel_pmp_cfg_1 ? _T_627 : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150037.4]
  assign _T_2084 = sel_pmp_addr_0 ? reg_pmp_0_addr : 30'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150040.4]
  assign _T_2085 = sel_pmp_addr_1 ? reg_pmp_1_addr : 30'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150041.4]
  assign _T_2086 = sel_pmp_addr_2 ? reg_pmp_2_addr : 30'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150042.4]
  assign _T_2087 = sel_pmp_addr_3 ? reg_pmp_3_addr : 30'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150043.4]
  assign _T_2088 = sel_pmp_addr_4 ? reg_pmp_4_addr : 30'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150044.4]
  assign _T_2089 = sel_pmp_addr_5 ? reg_pmp_5_addr : 30'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150045.4]
  assign _T_2090 = sel_pmp_addr_6 ? reg_pmp_6_addr : 30'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150046.4]
  assign _T_2091 = sel_pmp_addr_7 ? reg_pmp_7_addr : 30'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150047.4]
  assign _T_2101 = _T_880 ? 32'h1 : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150057.4]
  assign _T_2103 = _T_882 ? 32'h20181004 : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150059.4]
  assign _T_2105 = _T_1896 | _T_1897; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150061.4]
  assign _T_2106 = _T_2105 | _T_1898; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150062.4]
  assign _T_2107 = _T_2106 | _T_1899; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150063.4]
  assign _T_2108 = _T_2107 | _T_1900; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150064.4]
  assign _GEN_506 = {{16'd0}, _T_1901}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150065.4]
  assign _T_2109 = _T_2108 | _GEN_506; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150065.4]
  assign _T_2110 = _T_2109 | _T_1902; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150066.4]
  assign _T_2111 = _T_2110 | _T_1903; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150067.4]
  assign _T_2112 = _T_2111 | _T_1904; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150068.4]
  assign _T_2113 = _T_2112 | _T_1905; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150069.4]
  assign _T_2114 = _T_2113 | _T_1906; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150070.4]
  assign _T_2116 = _T_2114 | _T_1908; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150072.4]
  assign _T_2117 = _T_2116 | _T_1909; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150073.4]
  assign _T_2118 = _T_2117 | _T_1910; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150074.4]
  assign _GEN_507 = {{27'd0}, _T_1911}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150075.4]
  assign _T_2119 = _T_2118 | _GEN_507; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150075.4]
  assign _GEN_508 = {{29'd0}, _T_1912}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150076.4]
  assign _T_2120 = _T_2119 | _GEN_508; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150076.4]
  assign _GEN_509 = {{22'd0}, _T_1913}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150077.4]
  assign _T_2121 = _T_2120 | _GEN_509; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150077.4]
  assign _GEN_510 = {{32'd0}, _T_2121}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150078.4]
  assign _T_2122 = _GEN_510 | _T_1914; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150078.4]
  assign _T_2123 = _T_2122 | _T_1915; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150079.4]
  assign _GEN_511 = {{32'd0}, _T_2061}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150225.4]
  assign _T_2269 = _T_2123 | _GEN_511; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150225.4]
  assign _T_2270 = _T_2269 | _T_2062; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150226.4]
  assign _T_2271 = _T_2270 | _T_2063; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150227.4]
  assign _GEN_512 = {{32'd0}, _T_2064}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150228.4]
  assign _T_2272 = _T_2271 | _GEN_512; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150228.4]
  assign _GEN_513 = {{32'd0}, _T_2065}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150229.4]
  assign _T_2273 = _T_2272 | _GEN_513; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150229.4]
  assign _GEN_514 = {{32'd0}, _T_2066}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150230.4]
  assign _T_2274 = _T_2273 | _GEN_514; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150230.4]
  assign _GEN_515 = {{32'd0}, _T_2067}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150231.4]
  assign _T_2275 = _T_2274 | _GEN_515; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150231.4]
  assign _GEN_516 = {{32'd0}, _T_2068}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150232.4]
  assign _T_2276 = _T_2275 | _GEN_516; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150232.4]
  assign _GEN_517 = {{32'd0}, _T_2069}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150233.4]
  assign _T_2277 = _T_2276 | _GEN_517; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150233.4]
  assign _GEN_518 = {{32'd0}, _T_2070}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150234.4]
  assign _T_2278 = _T_2277 | _GEN_518; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150234.4]
  assign _GEN_519 = {{32'd0}, _T_2071}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150235.4]
  assign _T_2279 = _T_2278 | _GEN_519; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150235.4]
  assign _GEN_520 = {{32'd0}, _T_2072}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150236.4]
  assign _T_2280 = _T_2279 | _GEN_520; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150236.4]
  assign _GEN_521 = {{32'd0}, _T_2073}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150237.4]
  assign _T_2281 = _T_2280 | _GEN_521; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150237.4]
  assign _GEN_522 = {{32'd0}, _T_2074}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150238.4]
  assign _T_2282 = _T_2281 | _GEN_522; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150238.4]
  assign _GEN_523 = {{32'd0}, _T_2075}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150239.4]
  assign _T_2283 = _T_2282 | _GEN_523; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150239.4]
  assign _GEN_524 = {{32'd0}, _T_2076}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150240.4]
  assign _T_2284 = _T_2283 | _GEN_524; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150240.4]
  assign _GEN_525 = {{32'd0}, _T_2077}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150241.4]
  assign _T_2285 = _T_2284 | _GEN_525; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150241.4]
  assign _GEN_526 = {{32'd0}, _T_2078}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150242.4]
  assign _T_2286 = _T_2285 | _GEN_526; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150242.4]
  assign _GEN_527 = {{32'd0}, _T_2079}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150243.4]
  assign _T_2287 = _T_2286 | _GEN_527; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150243.4]
  assign _GEN_528 = {{32'd0}, _T_2080}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150244.4]
  assign _T_2288 = _T_2287 | _GEN_528; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150244.4]
  assign _GEN_529 = {{32'd0}, _T_2081}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150245.4]
  assign _T_2289 = _T_2288 | _GEN_529; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150245.4]
  assign _GEN_530 = {{34'd0}, _T_2084}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150248.4]
  assign _T_2292 = _T_2289 | _GEN_530; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150248.4]
  assign _GEN_531 = {{34'd0}, _T_2085}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150249.4]
  assign _T_2293 = _T_2292 | _GEN_531; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150249.4]
  assign _GEN_532 = {{34'd0}, _T_2086}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150250.4]
  assign _T_2294 = _T_2293 | _GEN_532; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150250.4]
  assign _GEN_533 = {{34'd0}, _T_2087}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150251.4]
  assign _T_2295 = _T_2294 | _GEN_533; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150251.4]
  assign _GEN_534 = {{34'd0}, _T_2088}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150252.4]
  assign _T_2296 = _T_2295 | _GEN_534; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150252.4]
  assign _GEN_535 = {{34'd0}, _T_2089}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150253.4]
  assign _T_2297 = _T_2296 | _GEN_535; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150253.4]
  assign _GEN_536 = {{34'd0}, _T_2090}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150254.4]
  assign _T_2298 = _T_2297 | _GEN_536; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150254.4]
  assign _GEN_537 = {{34'd0}, _T_2091}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150255.4]
  assign _T_2299 = _T_2298 | _GEN_537; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150255.4]
  assign _GEN_538 = {{32'd0}, _T_2101}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150265.4]
  assign _T_2309 = _T_2299 | _GEN_538; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150265.4]
  assign _GEN_539 = {{32'd0}, _T_2103}; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150267.4]
  assign _T_2311 = _T_2309 | _GEN_539; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@150267.4]
  assign _T_2315 = io_rw_cmd == 3'h5; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@150274.6]
  assign _T_2316 = io_rw_cmd == 3'h6; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@150275.6]
  assign _T_2317 = io_rw_cmd == 3'h7; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@150276.6]
  assign _T_4821 = reg_fflags | io_fcsr_flags_bits; // @[CSR.scala 776:30:freechips.rocketchip.system.DefaultRV32Config.fir@153623.6]
  assign _GEN_118 = io_fcsr_flags_valid ? _T_4821 : reg_fflags; // @[CSR.scala 775:30:freechips.rocketchip.system.DefaultRV32Config.fir@153622.4]
  assign _T_4825 = _T_2316 | _T_2317; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@153630.4]
  assign _T_4839 = {{70'd0}, wdata}; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@153649.8 :freechips.rocketchip.system.DefaultRV32Config.fir@153651.8]
  assign _T_4841 = _T_4839[1]; // @[CSR.scala 791:47:freechips.rocketchip.system.DefaultRV32Config.fir@153654.8]
  assign _T_4843 = _T_4839[3]; // @[CSR.scala 791:47:freechips.rocketchip.system.DefaultRV32Config.fir@153658.8]
  assign _T_4845 = _T_4839[5]; // @[CSR.scala 791:47:freechips.rocketchip.system.DefaultRV32Config.fir@153662.8]
  assign _T_4847 = _T_4839[7]; // @[CSR.scala 791:47:freechips.rocketchip.system.DefaultRV32Config.fir@153666.8]
  assign _T_4848 = _T_4839[8]; // @[CSR.scala 791:47:freechips.rocketchip.system.DefaultRV32Config.fir@153668.8]
  assign _T_4850 = _T_4839[12:11]; // @[CSR.scala 791:47:freechips.rocketchip.system.DefaultRV32Config.fir@153672.8]
  assign _T_4851 = _T_4839[14:13]; // @[CSR.scala 791:47:freechips.rocketchip.system.DefaultRV32Config.fir@153674.8]
  assign _T_4853 = _T_4839[17]; // @[CSR.scala 791:47:freechips.rocketchip.system.DefaultRV32Config.fir@153678.8]
  assign _T_4854 = _T_4839[18]; // @[CSR.scala 791:47:freechips.rocketchip.system.DefaultRV32Config.fir@153680.8]
  assign _T_4855 = _T_4839[19]; // @[CSR.scala 791:47:freechips.rocketchip.system.DefaultRV32Config.fir@153682.8]
  assign _T_4856 = _T_4839[20]; // @[CSR.scala 791:47:freechips.rocketchip.system.DefaultRV32Config.fir@153684.8]
  assign _T_4857 = _T_4839[21]; // @[CSR.scala 791:47:freechips.rocketchip.system.DefaultRV32Config.fir@153686.8]
  assign _T_4858 = _T_4839[22]; // @[CSR.scala 791:47:freechips.rocketchip.system.DefaultRV32Config.fir@153688.8]
  assign _T_4871 = _T_4850 == 2'h2; // @[CSR.scala 1042:27:freechips.rocketchip.system.DefaultRV32Config.fir@153717.8]
  assign _T_4873 = _T_4851 != 2'h0; // @[CSR.scala 1063:73:freechips.rocketchip.system.DefaultRV32Config.fir@153728.8]
  assign _GEN_126 = sel_mstatus ? {{1'd0}, _T_4848} : _GEN_110; // @[CSR.scala 790:39:freechips.rocketchip.system.DefaultRV32Config.fir@153646.6]
  assign _T_4876 = wdata[5]; // @[CSR.scala 816:20:freechips.rocketchip.system.DefaultRV32Config.fir@153735.8]
  assign _T_4877 = io_pc[1]; // @[CSR.scala 818:39:freechips.rocketchip.system.DefaultRV32Config.fir@153736.8]
  assign _T_4878 = _T_4877 == 1'h0; // @[CSR.scala 818:33:freechips.rocketchip.system.DefaultRV32Config.fir@153737.8]
  assign _T_4880 = wdata[2]; // @[CSR.scala 818:51:freechips.rocketchip.system.DefaultRV32Config.fir@153739.8]
  assign _T_4881 = _T_4878 | _T_4880; // @[CSR.scala 818:43:freechips.rocketchip.system.DefaultRV32Config.fir@153740.8]
  assign _T_4882 = ~ wdata; // @[CSR.scala 820:25:freechips.rocketchip.system.DefaultRV32Config.fir@153742.10]
  assign _T_4883 = _T_4876 == 1'h0; // @[CSR.scala 820:35:freechips.rocketchip.system.DefaultRV32Config.fir@153743.10]
  assign _T_4884 = {_T_4883, 3'h0}; // @[CSR.scala 820:38:freechips.rocketchip.system.DefaultRV32Config.fir@153744.10]
  assign _GEN_540 = {{28'd0}, _T_4884}; // @[CSR.scala 820:32:freechips.rocketchip.system.DefaultRV32Config.fir@153745.10]
  assign _T_4885 = _T_4882 | _GEN_540; // @[CSR.scala 820:32:freechips.rocketchip.system.DefaultRV32Config.fir@153745.10]
  assign _T_4886 = ~ _T_4885; // @[CSR.scala 820:23:freechips.rocketchip.system.DefaultRV32Config.fir@153746.10]
  assign _T_4887 = _T_4886 & 32'h1025; // @[CSR.scala 820:55:freechips.rocketchip.system.DefaultRV32Config.fir@153747.10]
  assign _T_4889 = reg_misa & 32'hffffefda; // @[CSR.scala 820:73:freechips.rocketchip.system.DefaultRV32Config.fir@153749.10]
  assign _T_4890 = _T_4887 | _T_4889; // @[CSR.scala 820:62:freechips.rocketchip.system.DefaultRV32Config.fir@153750.10]
  assign _T_4905 = {4'h0,2'h0,reg_mip_seip,1'h0,2'h0,reg_mip_stip,1'h0,2'h0,reg_mip_ssip,1'h0}; // @[CSR.scala 828:59:freechips.rocketchip.system.DefaultRV32Config.fir@153769.8]
  assign _T_4907 = _T_883 ? _T_4905 : 16'h0; // @[CSR.scala 1038:9:freechips.rocketchip.system.DefaultRV32Config.fir@153771.8]
  assign _GEN_541 = {{16'd0}, _T_4907}; // @[CSR.scala 1038:34:freechips.rocketchip.system.DefaultRV32Config.fir@153772.8]
  assign _T_4908 = _GEN_541 | io_rw_wdata; // @[CSR.scala 1038:34:freechips.rocketchip.system.DefaultRV32Config.fir@153772.8]
  assign _T_4913 = _T_4908 & _T_889; // @[CSR.scala 1038:43:freechips.rocketchip.system.DefaultRV32Config.fir@153777.8]
  assign _T_4915 = _T_4913[15:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@153780.8 :freechips.rocketchip.system.DefaultRV32Config.fir@153782.8]
  assign _T_4917 = _T_4915[1]; // @[CSR.scala 828:88:freechips.rocketchip.system.DefaultRV32Config.fir@153785.8]
  assign _T_4921 = _T_4915[5]; // @[CSR.scala 828:88:freechips.rocketchip.system.DefaultRV32Config.fir@153793.8]
  assign _T_4925 = _T_4915[9]; // @[CSR.scala 828:88:freechips.rocketchip.system.DefaultRV32Config.fir@153801.8]
  assign _T_4932 = wdata & 32'haaa; // @[CSR.scala 835:59:freechips.rocketchip.system.DefaultRV32Config.fir@153820.8]
  assign _T_4934 = _T_4882 | 32'h1; // @[CSR.scala 1059:31:freechips.rocketchip.system.DefaultRV32Config.fir@153825.8]
  assign _T_4935 = ~ _T_4934; // @[CSR.scala 1059:26:freechips.rocketchip.system.DefaultRV32Config.fir@153826.8]
  assign _T_4936 = wdata & 32'h8000000f; // @[CSR.scala 840:62:freechips.rocketchip.system.DefaultRV32Config.fir@153836.8]
  assign _T_4938 = _T_100[63:32]; // @[CSR.scala 1053:47:freechips.rocketchip.system.DefaultRV32Config.fir@153844.8]
  assign _T_4939 = {_T_4938,wdata}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@153845.8]
  assign _T_4940 = _T_4939[63:6]; // @[Counters.scala 67:28:freechips.rocketchip.system.DefaultRV32Config.fir@153847.8]
  assign _GEN_145 = sel_mcycle ? _T_4939 : {{57'd0}, _T_95}; // @[CSR.scala 1053:31:freechips.rocketchip.system.DefaultRV32Config.fir@153843.6]
  assign _T_4942 = _T_100[31:0]; // @[CSR.scala 1054:74:freechips.rocketchip.system.DefaultRV32Config.fir@153852.8]
  assign _T_4943 = {wdata,_T_4942}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@153853.8]
  assign _T_4944 = _T_4943[63:6]; // @[Counters.scala 67:28:freechips.rocketchip.system.DefaultRV32Config.fir@153855.8]
  assign _GEN_147 = sel_mcycleh ? _T_4943 : _GEN_145; // @[CSR.scala 1054:31:freechips.rocketchip.system.DefaultRV32Config.fir@153850.6]
  assign _T_4945 = _T_92[63:32]; // @[CSR.scala 1053:47:freechips.rocketchip.system.DefaultRV32Config.fir@153859.8]
  assign _T_4946 = {_T_4945,wdata}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@153860.8]
  assign _T_4947 = _T_4946[63:6]; // @[Counters.scala 67:28:freechips.rocketchip.system.DefaultRV32Config.fir@153862.8]
  assign _GEN_149 = sel_minstret ? _T_4946 : {{57'd0}, _T_87}; // @[CSR.scala 1053:31:freechips.rocketchip.system.DefaultRV32Config.fir@153858.6]
  assign _T_4949 = _T_92[31:0]; // @[CSR.scala 1054:74:freechips.rocketchip.system.DefaultRV32Config.fir@153867.8]
  assign _T_4950 = {wdata,_T_4949}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@153868.8]
  assign _T_4951 = _T_4950[63:6]; // @[Counters.scala 67:28:freechips.rocketchip.system.DefaultRV32Config.fir@153870.8]
  assign _GEN_151 = sel_minstreth ? _T_4950 : _GEN_149; // @[CSR.scala 1054:31:freechips.rocketchip.system.DefaultRV32Config.fir@153865.6]
  assign _GEN_154 = sel_fflags ? wdata : {{27'd0}, _GEN_118}; // @[CSR.scala 853:40:freechips.rocketchip.system.DefaultRV32Config.fir@153873.6]
  assign _GEN_156 = sel_frm ? wdata : {{29'd0}, reg_frm}; // @[CSR.scala 854:40:freechips.rocketchip.system.DefaultRV32Config.fir@153877.6]
  assign _T_4952 = wdata[31:5]; // @[CSR.scala 860:26:freechips.rocketchip.system.DefaultRV32Config.fir@153884.8]
  assign _GEN_158 = sel_fcsr ? wdata : _GEN_154; // @[CSR.scala 857:38:freechips.rocketchip.system.DefaultRV32Config.fir@153881.6]
  assign _GEN_159 = sel_fcsr ? {{5'd0}, _T_4952} : _GEN_156; // @[CSR.scala 857:38:freechips.rocketchip.system.DefaultRV32Config.fir@153881.6]
  assign _T_4955 = wdata[1:0]; // @[CSR.scala 867:43:freechips.rocketchip.system.DefaultRV32Config.fir@153893.8]
  assign _T_4962 = wdata[12]; // @[CSR.scala 867:43:freechips.rocketchip.system.DefaultRV32Config.fir@153907.8]
  assign _T_4963 = wdata[13]; // @[CSR.scala 867:43:freechips.rocketchip.system.DefaultRV32Config.fir@153909.8]
  assign _T_4965 = wdata[15]; // @[CSR.scala 867:43:freechips.rocketchip.system.DefaultRV32Config.fir@153913.8]
  assign _T_4969 = _T_4955 == 2'h2; // @[CSR.scala 1042:27:freechips.rocketchip.system.DefaultRV32Config.fir@153925.8]
  assign _GEN_169 = sel_sstatus ? {{1'd0}, _T_4848} : _GEN_126; // @[CSR.scala 878:41:freechips.rocketchip.system.DefaultRV32Config.fir@153938.6]
  assign _T_5010 = ~ read_mideleg; // @[CSR.scala 890:54:freechips.rocketchip.system.DefaultRV32Config.fir@154018.8]
  assign _T_5011 = _GEN_497 & _T_5010; // @[CSR.scala 890:52:freechips.rocketchip.system.DefaultRV32Config.fir@154019.8]
  assign _T_5012 = wdata & read_mideleg; // @[CSR.scala 890:78:freechips.rocketchip.system.DefaultRV32Config.fir@154020.8]
  assign _T_5013 = _T_5011 | _T_5012; // @[CSR.scala 890:69:freechips.rocketchip.system.DefaultRV32Config.fir@154021.8]
  assign _T_5015 = _T_5013[15:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@154024.8 :freechips.rocketchip.system.DefaultRV32Config.fir@154026.8]
  assign _T_5017 = _T_5015[1]; // @[CSR.scala 890:41:freechips.rocketchip.system.DefaultRV32Config.fir@154029.8]
  assign _T_5034 = wdata[21:0]; // @[CSR.scala 894:43:freechips.rocketchip.system.DefaultRV32Config.fir@154067.8]
  assign _T_5036 = wdata[31]; // @[CSR.scala 894:43:freechips.rocketchip.system.DefaultRV32Config.fir@154071.8]
  assign _T_5037 = _T_5036 == 1'h0; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@154073.8]
  assign _T_5039 = _T_5037 | _T_5036; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@154075.8]
  assign _T_5041 = _T_5034[19:0]; // @[CSR.scala 898:39:freechips.rocketchip.system.DefaultRV32Config.fir@154079.10]
  assign _T_5043 = reg_mie & _T_5010; // @[CSR.scala 902:64:freechips.rocketchip.system.DefaultRV32Config.fir@154085.8]
  assign _T_5045 = _T_5043 | _T_5012; // @[CSR.scala 902:81:freechips.rocketchip.system.DefaultRV32Config.fir@154087.8]
  assign _T_5049 = wdata & 32'h8000001f; // @[CSR.scala 906:64:freechips.rocketchip.system.DefaultRV32Config.fir@154103.8]
  assign _T_5052 = reg_bp_0_control_dmode == 1'h0; // @[CSR.scala 919:37:freechips.rocketchip.system.DefaultRV32Config.fir@154126.6]
  assign _T_5053 = _T_5052 | reg_debug; // @[CSR.scala 919:55:freechips.rocketchip.system.DefaultRV32Config.fir@154127.6]
  assign _T_5057 = wdata[0]; // @[CSR.scala 922:41:freechips.rocketchip.system.DefaultRV32Config.fir@154139.10]
  assign _T_5058 = wdata[1]; // @[CSR.scala 922:41:freechips.rocketchip.system.DefaultRV32Config.fir@154141.10]
  assign _T_5060 = wdata[3]; // @[CSR.scala 922:41:freechips.rocketchip.system.DefaultRV32Config.fir@154145.10]
  assign _T_5061 = wdata[4]; // @[CSR.scala 922:41:freechips.rocketchip.system.DefaultRV32Config.fir@154147.10]
  assign _T_5063 = wdata[6]; // @[CSR.scala 922:41:freechips.rocketchip.system.DefaultRV32Config.fir@154151.10]
  assign _T_5064 = wdata[8:7]; // @[CSR.scala 922:41:freechips.rocketchip.system.DefaultRV32Config.fir@154153.10]
  assign _T_5087 = _T_883 ? _T_408 : 32'h0; // @[CSR.scala 1038:9:freechips.rocketchip.system.DefaultRV32Config.fir@154185.10]
  assign _T_5088 = _T_5087 | io_rw_wdata; // @[CSR.scala 1038:34:freechips.rocketchip.system.DefaultRV32Config.fir@154186.10]
  assign _T_5093 = _T_5088 & _T_889; // @[CSR.scala 1038:43:freechips.rocketchip.system.DefaultRV32Config.fir@154191.10]
  assign _T_5106 = _T_5093[12]; // @[CSR.scala 928:96:freechips.rocketchip.system.DefaultRV32Config.fir@154217.10]
  assign _T_5109 = _T_5093[27]; // @[CSR.scala 928:96:freechips.rocketchip.system.DefaultRV32Config.fir@154223.10]
  assign _T_5111 = _T_5109 & reg_debug; // @[CSR.scala 929:38:freechips.rocketchip.system.DefaultRV32Config.fir@154227.10]
  assign _GEN_191 = _T_5111 & _T_5106; // @[CSR.scala 931:51:freechips.rocketchip.system.DefaultRV32Config.fir@154234.10]
  assign _T_5195 = reg_pmp_0_cfg_l == 1'h0; // @[CSR.scala 939:60:freechips.rocketchip.system.DefaultRV32Config.fir@154373.6]
  assign _T_5196 = sel_pmp_cfg_0 & _T_5195; // @[CSR.scala 939:57:freechips.rocketchip.system.DefaultRV32Config.fir@154374.6]
  assign _T_5199 = wdata[7:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@154379.8 :freechips.rocketchip.system.DefaultRV32Config.fir@154381.8]
  assign _T_5200 = _T_5199[0]; // @[CSR.scala 940:46:freechips.rocketchip.system.DefaultRV32Config.fir@154382.8]
  assign _T_5201 = _T_5199[1]; // @[CSR.scala 940:46:freechips.rocketchip.system.DefaultRV32Config.fir@154384.8]
  assign _T_5202 = _T_5199[2]; // @[CSR.scala 940:46:freechips.rocketchip.system.DefaultRV32Config.fir@154386.8]
  assign _T_5203 = _T_5199[4:3]; // @[CSR.scala 940:46:freechips.rocketchip.system.DefaultRV32Config.fir@154388.8]
  assign _T_5205 = _T_5199[7]; // @[CSR.scala 940:46:freechips.rocketchip.system.DefaultRV32Config.fir@154392.8]
  assign _T_5206 = _T_5201 & _T_5200; // @[CSR.scala 943:31:freechips.rocketchip.system.DefaultRV32Config.fir@154395.8]
  assign _T_5207 = reg_pmp_1_cfg_a[1]; // @[PMP.scala 45:20:freechips.rocketchip.system.DefaultRV32Config.fir@154398.6]
  assign _T_5208 = _T_5207 == 1'h0; // @[PMP.scala 47:13:freechips.rocketchip.system.DefaultRV32Config.fir@154399.6]
  assign _T_5210 = _T_5208 & _T_293; // @[PMP.scala 47:20:freechips.rocketchip.system.DefaultRV32Config.fir@154401.6]
  assign _T_5211 = reg_pmp_1_cfg_l & _T_5210; // @[PMP.scala 49:62:freechips.rocketchip.system.DefaultRV32Config.fir@154402.6]
  assign _T_5212 = reg_pmp_0_cfg_l | _T_5211; // @[PMP.scala 49:44:freechips.rocketchip.system.DefaultRV32Config.fir@154403.6]
  assign _T_5213 = _T_5212 == 1'h0; // @[CSR.scala 948:48:freechips.rocketchip.system.DefaultRV32Config.fir@154404.6]
  assign _T_5214 = sel_pmp_addr_0 & _T_5213; // @[CSR.scala 948:45:freechips.rocketchip.system.DefaultRV32Config.fir@154405.6]
  assign _GEN_262 = _T_5214 ? wdata : {{2'd0}, reg_pmp_0_addr}; // @[CSR.scala 948:71:freechips.rocketchip.system.DefaultRV32Config.fir@154406.6]
  assign _T_5215 = reg_pmp_1_cfg_l == 1'h0; // @[CSR.scala 939:60:freechips.rocketchip.system.DefaultRV32Config.fir@154409.6]
  assign _T_5216 = sel_pmp_cfg_0 & _T_5215; // @[CSR.scala 939:57:freechips.rocketchip.system.DefaultRV32Config.fir@154410.6]
  assign _T_5217 = wdata[31:8]; // @[CSR.scala 940:53:freechips.rocketchip.system.DefaultRV32Config.fir@154412.8]
  assign _T_5219 = _T_5217[7:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@154415.8 :freechips.rocketchip.system.DefaultRV32Config.fir@154417.8]
  assign _T_5220 = _T_5219[0]; // @[CSR.scala 940:46:freechips.rocketchip.system.DefaultRV32Config.fir@154418.8]
  assign _T_5221 = _T_5219[1]; // @[CSR.scala 940:46:freechips.rocketchip.system.DefaultRV32Config.fir@154420.8]
  assign _T_5222 = _T_5219[2]; // @[CSR.scala 940:46:freechips.rocketchip.system.DefaultRV32Config.fir@154422.8]
  assign _T_5223 = _T_5219[4:3]; // @[CSR.scala 940:46:freechips.rocketchip.system.DefaultRV32Config.fir@154424.8]
  assign _T_5225 = _T_5219[7]; // @[CSR.scala 940:46:freechips.rocketchip.system.DefaultRV32Config.fir@154428.8]
  assign _T_5226 = _T_5221 & _T_5220; // @[CSR.scala 943:31:freechips.rocketchip.system.DefaultRV32Config.fir@154431.8]
  assign _T_5227 = reg_pmp_2_cfg_a[1]; // @[PMP.scala 45:20:freechips.rocketchip.system.DefaultRV32Config.fir@154434.6]
  assign _T_5228 = _T_5227 == 1'h0; // @[PMP.scala 47:13:freechips.rocketchip.system.DefaultRV32Config.fir@154435.6]
  assign _T_5230 = _T_5228 & _T_302; // @[PMP.scala 47:20:freechips.rocketchip.system.DefaultRV32Config.fir@154437.6]
  assign _T_5231 = reg_pmp_2_cfg_l & _T_5230; // @[PMP.scala 49:62:freechips.rocketchip.system.DefaultRV32Config.fir@154438.6]
  assign _T_5232 = reg_pmp_1_cfg_l | _T_5231; // @[PMP.scala 49:44:freechips.rocketchip.system.DefaultRV32Config.fir@154439.6]
  assign _T_5233 = _T_5232 == 1'h0; // @[CSR.scala 948:48:freechips.rocketchip.system.DefaultRV32Config.fir@154440.6]
  assign _T_5234 = sel_pmp_addr_1 & _T_5233; // @[CSR.scala 948:45:freechips.rocketchip.system.DefaultRV32Config.fir@154441.6]
  assign _GEN_269 = _T_5234 ? wdata : {{2'd0}, reg_pmp_1_addr}; // @[CSR.scala 948:71:freechips.rocketchip.system.DefaultRV32Config.fir@154442.6]
  assign _T_5235 = reg_pmp_2_cfg_l == 1'h0; // @[CSR.scala 939:60:freechips.rocketchip.system.DefaultRV32Config.fir@154445.6]
  assign _T_5236 = sel_pmp_cfg_0 & _T_5235; // @[CSR.scala 939:57:freechips.rocketchip.system.DefaultRV32Config.fir@154446.6]
  assign _T_5237 = wdata[31:16]; // @[CSR.scala 940:53:freechips.rocketchip.system.DefaultRV32Config.fir@154448.8]
  assign _T_5239 = _T_5237[7:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@154451.8 :freechips.rocketchip.system.DefaultRV32Config.fir@154453.8]
  assign _T_5240 = _T_5239[0]; // @[CSR.scala 940:46:freechips.rocketchip.system.DefaultRV32Config.fir@154454.8]
  assign _T_5241 = _T_5239[1]; // @[CSR.scala 940:46:freechips.rocketchip.system.DefaultRV32Config.fir@154456.8]
  assign _T_5242 = _T_5239[2]; // @[CSR.scala 940:46:freechips.rocketchip.system.DefaultRV32Config.fir@154458.8]
  assign _T_5243 = _T_5239[4:3]; // @[CSR.scala 940:46:freechips.rocketchip.system.DefaultRV32Config.fir@154460.8]
  assign _T_5245 = _T_5239[7]; // @[CSR.scala 940:46:freechips.rocketchip.system.DefaultRV32Config.fir@154464.8]
  assign _T_5246 = _T_5241 & _T_5240; // @[CSR.scala 943:31:freechips.rocketchip.system.DefaultRV32Config.fir@154467.8]
  assign _T_5247 = reg_pmp_3_cfg_a[1]; // @[PMP.scala 45:20:freechips.rocketchip.system.DefaultRV32Config.fir@154470.6]
  assign _T_5248 = _T_5247 == 1'h0; // @[PMP.scala 47:13:freechips.rocketchip.system.DefaultRV32Config.fir@154471.6]
  assign _T_5250 = _T_5248 & _T_311; // @[PMP.scala 47:20:freechips.rocketchip.system.DefaultRV32Config.fir@154473.6]
  assign _T_5251 = reg_pmp_3_cfg_l & _T_5250; // @[PMP.scala 49:62:freechips.rocketchip.system.DefaultRV32Config.fir@154474.6]
  assign _T_5252 = reg_pmp_2_cfg_l | _T_5251; // @[PMP.scala 49:44:freechips.rocketchip.system.DefaultRV32Config.fir@154475.6]
  assign _T_5253 = _T_5252 == 1'h0; // @[CSR.scala 948:48:freechips.rocketchip.system.DefaultRV32Config.fir@154476.6]
  assign _T_5254 = sel_pmp_addr_2 & _T_5253; // @[CSR.scala 948:45:freechips.rocketchip.system.DefaultRV32Config.fir@154477.6]
  assign _GEN_276 = _T_5254 ? wdata : {{2'd0}, reg_pmp_2_addr}; // @[CSR.scala 948:71:freechips.rocketchip.system.DefaultRV32Config.fir@154478.6]
  assign _T_5255 = reg_pmp_3_cfg_l == 1'h0; // @[CSR.scala 939:60:freechips.rocketchip.system.DefaultRV32Config.fir@154481.6]
  assign _T_5256 = sel_pmp_cfg_0 & _T_5255; // @[CSR.scala 939:57:freechips.rocketchip.system.DefaultRV32Config.fir@154482.6]
  assign _T_5257 = wdata[31:24]; // @[CSR.scala 940:53:freechips.rocketchip.system.DefaultRV32Config.fir@154484.8]
  assign _T_5260 = _T_5257[0]; // @[CSR.scala 940:46:freechips.rocketchip.system.DefaultRV32Config.fir@154490.8]
  assign _T_5261 = _T_5257[1]; // @[CSR.scala 940:46:freechips.rocketchip.system.DefaultRV32Config.fir@154492.8]
  assign _T_5262 = _T_5257[2]; // @[CSR.scala 940:46:freechips.rocketchip.system.DefaultRV32Config.fir@154494.8]
  assign _T_5263 = _T_5257[4:3]; // @[CSR.scala 940:46:freechips.rocketchip.system.DefaultRV32Config.fir@154496.8]
  assign _T_5265 = _T_5257[7]; // @[CSR.scala 940:46:freechips.rocketchip.system.DefaultRV32Config.fir@154500.8]
  assign _T_5266 = _T_5261 & _T_5260; // @[CSR.scala 943:31:freechips.rocketchip.system.DefaultRV32Config.fir@154503.8]
  assign _T_5267 = reg_pmp_4_cfg_a[1]; // @[PMP.scala 45:20:freechips.rocketchip.system.DefaultRV32Config.fir@154506.6]
  assign _T_5268 = _T_5267 == 1'h0; // @[PMP.scala 47:13:freechips.rocketchip.system.DefaultRV32Config.fir@154507.6]
  assign _T_5270 = _T_5268 & _T_320; // @[PMP.scala 47:20:freechips.rocketchip.system.DefaultRV32Config.fir@154509.6]
  assign _T_5271 = reg_pmp_4_cfg_l & _T_5270; // @[PMP.scala 49:62:freechips.rocketchip.system.DefaultRV32Config.fir@154510.6]
  assign _T_5272 = reg_pmp_3_cfg_l | _T_5271; // @[PMP.scala 49:44:freechips.rocketchip.system.DefaultRV32Config.fir@154511.6]
  assign _T_5273 = _T_5272 == 1'h0; // @[CSR.scala 948:48:freechips.rocketchip.system.DefaultRV32Config.fir@154512.6]
  assign _T_5274 = sel_pmp_addr_3 & _T_5273; // @[CSR.scala 948:45:freechips.rocketchip.system.DefaultRV32Config.fir@154513.6]
  assign _GEN_283 = _T_5274 ? wdata : {{2'd0}, reg_pmp_3_addr}; // @[CSR.scala 948:71:freechips.rocketchip.system.DefaultRV32Config.fir@154514.6]
  assign _T_5275 = reg_pmp_4_cfg_l == 1'h0; // @[CSR.scala 939:60:freechips.rocketchip.system.DefaultRV32Config.fir@154517.6]
  assign _T_5276 = sel_pmp_cfg_1 & _T_5275; // @[CSR.scala 939:57:freechips.rocketchip.system.DefaultRV32Config.fir@154518.6]
  assign _T_5287 = reg_pmp_5_cfg_a[1]; // @[PMP.scala 45:20:freechips.rocketchip.system.DefaultRV32Config.fir@154542.6]
  assign _T_5288 = _T_5287 == 1'h0; // @[PMP.scala 47:13:freechips.rocketchip.system.DefaultRV32Config.fir@154543.6]
  assign _T_5290 = _T_5288 & _T_329; // @[PMP.scala 47:20:freechips.rocketchip.system.DefaultRV32Config.fir@154545.6]
  assign _T_5291 = reg_pmp_5_cfg_l & _T_5290; // @[PMP.scala 49:62:freechips.rocketchip.system.DefaultRV32Config.fir@154546.6]
  assign _T_5292 = reg_pmp_4_cfg_l | _T_5291; // @[PMP.scala 49:44:freechips.rocketchip.system.DefaultRV32Config.fir@154547.6]
  assign _T_5293 = _T_5292 == 1'h0; // @[CSR.scala 948:48:freechips.rocketchip.system.DefaultRV32Config.fir@154548.6]
  assign _T_5294 = sel_pmp_addr_4 & _T_5293; // @[CSR.scala 948:45:freechips.rocketchip.system.DefaultRV32Config.fir@154549.6]
  assign _GEN_290 = _T_5294 ? wdata : {{2'd0}, reg_pmp_4_addr}; // @[CSR.scala 948:71:freechips.rocketchip.system.DefaultRV32Config.fir@154550.6]
  assign _T_5295 = reg_pmp_5_cfg_l == 1'h0; // @[CSR.scala 939:60:freechips.rocketchip.system.DefaultRV32Config.fir@154553.6]
  assign _T_5296 = sel_pmp_cfg_1 & _T_5295; // @[CSR.scala 939:57:freechips.rocketchip.system.DefaultRV32Config.fir@154554.6]
  assign _T_5307 = reg_pmp_6_cfg_a[1]; // @[PMP.scala 45:20:freechips.rocketchip.system.DefaultRV32Config.fir@154578.6]
  assign _T_5308 = _T_5307 == 1'h0; // @[PMP.scala 47:13:freechips.rocketchip.system.DefaultRV32Config.fir@154579.6]
  assign _T_5310 = _T_5308 & _T_338; // @[PMP.scala 47:20:freechips.rocketchip.system.DefaultRV32Config.fir@154581.6]
  assign _T_5311 = reg_pmp_6_cfg_l & _T_5310; // @[PMP.scala 49:62:freechips.rocketchip.system.DefaultRV32Config.fir@154582.6]
  assign _T_5312 = reg_pmp_5_cfg_l | _T_5311; // @[PMP.scala 49:44:freechips.rocketchip.system.DefaultRV32Config.fir@154583.6]
  assign _T_5313 = _T_5312 == 1'h0; // @[CSR.scala 948:48:freechips.rocketchip.system.DefaultRV32Config.fir@154584.6]
  assign _T_5314 = sel_pmp_addr_5 & _T_5313; // @[CSR.scala 948:45:freechips.rocketchip.system.DefaultRV32Config.fir@154585.6]
  assign _GEN_297 = _T_5314 ? wdata : {{2'd0}, reg_pmp_5_addr}; // @[CSR.scala 948:71:freechips.rocketchip.system.DefaultRV32Config.fir@154586.6]
  assign _T_5315 = reg_pmp_6_cfg_l == 1'h0; // @[CSR.scala 939:60:freechips.rocketchip.system.DefaultRV32Config.fir@154589.6]
  assign _T_5316 = sel_pmp_cfg_1 & _T_5315; // @[CSR.scala 939:57:freechips.rocketchip.system.DefaultRV32Config.fir@154590.6]
  assign _T_5327 = reg_pmp_7_cfg_a[1]; // @[PMP.scala 45:20:freechips.rocketchip.system.DefaultRV32Config.fir@154614.6]
  assign _T_5328 = _T_5327 == 1'h0; // @[PMP.scala 47:13:freechips.rocketchip.system.DefaultRV32Config.fir@154615.6]
  assign _T_5330 = _T_5328 & _T_347; // @[PMP.scala 47:20:freechips.rocketchip.system.DefaultRV32Config.fir@154617.6]
  assign _T_5331 = reg_pmp_7_cfg_l & _T_5330; // @[PMP.scala 49:62:freechips.rocketchip.system.DefaultRV32Config.fir@154618.6]
  assign _T_5332 = reg_pmp_6_cfg_l | _T_5331; // @[PMP.scala 49:44:freechips.rocketchip.system.DefaultRV32Config.fir@154619.6]
  assign _T_5333 = _T_5332 == 1'h0; // @[CSR.scala 948:48:freechips.rocketchip.system.DefaultRV32Config.fir@154620.6]
  assign _T_5334 = sel_pmp_addr_6 & _T_5333; // @[CSR.scala 948:45:freechips.rocketchip.system.DefaultRV32Config.fir@154621.6]
  assign _GEN_304 = _T_5334 ? wdata : {{2'd0}, reg_pmp_6_addr}; // @[CSR.scala 948:71:freechips.rocketchip.system.DefaultRV32Config.fir@154622.6]
  assign _T_5335 = reg_pmp_7_cfg_l == 1'h0; // @[CSR.scala 939:60:freechips.rocketchip.system.DefaultRV32Config.fir@154625.6]
  assign _T_5336 = sel_pmp_cfg_1 & _T_5335; // @[CSR.scala 939:57:freechips.rocketchip.system.DefaultRV32Config.fir@154626.6]
  assign _T_5352 = reg_pmp_7_cfg_l | _T_5331; // @[PMP.scala 49:44:freechips.rocketchip.system.DefaultRV32Config.fir@154655.6]
  assign _T_5353 = _T_5352 == 1'h0; // @[CSR.scala 948:48:freechips.rocketchip.system.DefaultRV32Config.fir@154656.6]
  assign _T_5354 = sel_pmp_addr_7 & _T_5353; // @[CSR.scala 948:45:freechips.rocketchip.system.DefaultRV32Config.fir@154657.6]
  assign _GEN_311 = _T_5354 ? wdata : {{2'd0}, reg_pmp_7_addr}; // @[CSR.scala 948:71:freechips.rocketchip.system.DefaultRV32Config.fir@154658.6]
  assign _GEN_326 = csr_wen ? _GEN_169 : _GEN_110; // @[CSR.scala 789:18:freechips.rocketchip.system.DefaultRV32Config.fir@153645.4]
  assign _GEN_344 = csr_wen ? _GEN_147 : {{57'd0}, _T_95}; // @[CSR.scala 789:18:freechips.rocketchip.system.DefaultRV32Config.fir@153645.4]
  assign _GEN_346 = csr_wen ? _GEN_151 : {{57'd0}, _T_87}; // @[CSR.scala 789:18:freechips.rocketchip.system.DefaultRV32Config.fir@153645.4]
  assign _GEN_349 = csr_wen ? _GEN_158 : {{27'd0}, _GEN_118}; // @[CSR.scala 789:18:freechips.rocketchip.system.DefaultRV32Config.fir@153645.4]
  assign _GEN_350 = csr_wen ? _GEN_159 : {{29'd0}, reg_frm}; // @[CSR.scala 789:18:freechips.rocketchip.system.DefaultRV32Config.fir@153645.4]
  assign _GEN_408 = csr_wen ? _GEN_262 : {{2'd0}, reg_pmp_0_addr}; // @[CSR.scala 789:18:freechips.rocketchip.system.DefaultRV32Config.fir@153645.4]
  assign _GEN_415 = csr_wen ? _GEN_269 : {{2'd0}, reg_pmp_1_addr}; // @[CSR.scala 789:18:freechips.rocketchip.system.DefaultRV32Config.fir@153645.4]
  assign _GEN_422 = csr_wen ? _GEN_276 : {{2'd0}, reg_pmp_2_addr}; // @[CSR.scala 789:18:freechips.rocketchip.system.DefaultRV32Config.fir@153645.4]
  assign _GEN_429 = csr_wen ? _GEN_283 : {{2'd0}, reg_pmp_3_addr}; // @[CSR.scala 789:18:freechips.rocketchip.system.DefaultRV32Config.fir@153645.4]
  assign _GEN_436 = csr_wen ? _GEN_290 : {{2'd0}, reg_pmp_4_addr}; // @[CSR.scala 789:18:freechips.rocketchip.system.DefaultRV32Config.fir@153645.4]
  assign _GEN_443 = csr_wen ? _GEN_297 : {{2'd0}, reg_pmp_5_addr}; // @[CSR.scala 789:18:freechips.rocketchip.system.DefaultRV32Config.fir@153645.4]
  assign _GEN_450 = csr_wen ? _GEN_304 : {{2'd0}, reg_pmp_6_addr}; // @[CSR.scala 789:18:freechips.rocketchip.system.DefaultRV32Config.fir@153645.4]
  assign _GEN_457 = csr_wen ? _GEN_311 : {{2'd0}, reg_pmp_7_addr}; // @[CSR.scala 789:18:freechips.rocketchip.system.DefaultRV32Config.fir@153645.4]
  assign _T_5401 = io_retire > 1'h0; // @[CSR.scala 1017:26:freechips.rocketchip.system.DefaultRV32Config.fir@154815.4]
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
  reg_mstatus_prv = _RAND_0[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  reg_mstatus_tsr = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  reg_mstatus_tw = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  reg_mstatus_tvm = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  reg_mstatus_mxr = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  reg_mstatus_sum = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  reg_mstatus_mprv = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  reg_mstatus_fs = _RAND_7[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  reg_mstatus_mpp = _RAND_8[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  reg_mstatus_spp = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  reg_mstatus_mpie = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  reg_mstatus_spie = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  reg_mstatus_mie = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  reg_mstatus_sie = _RAND_13[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  reg_dcsr_prv = _RAND_14[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  reg_singleStepped = _RAND_15[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  reg_dcsr_ebreakm = _RAND_16[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  reg_dcsr_ebreaks = _RAND_17[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  reg_dcsr_ebreaku = _RAND_18[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  reg_debug = _RAND_19[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  reg_mideleg = _RAND_20[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  reg_medeleg = _RAND_21[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  reg_dcsr_cause = _RAND_22[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  reg_dcsr_step = _RAND_23[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  reg_dpc = _RAND_24[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  reg_dscratch = _RAND_25[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  reg_bp_0_control_dmode = _RAND_26[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  reg_bp_0_control_action = _RAND_27[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  reg_bp_0_control_tmatch = _RAND_28[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  reg_bp_0_control_m = _RAND_29[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{`RANDOM}};
  reg_bp_0_control_s = _RAND_30[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{`RANDOM}};
  reg_bp_0_control_u = _RAND_31[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{`RANDOM}};
  reg_bp_0_control_x = _RAND_32[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{`RANDOM}};
  reg_bp_0_control_w = _RAND_33[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{`RANDOM}};
  reg_bp_0_control_r = _RAND_34[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{`RANDOM}};
  reg_bp_0_address = _RAND_35[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{`RANDOM}};
  reg_pmp_0_cfg_l = _RAND_36[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{`RANDOM}};
  reg_pmp_0_cfg_a = _RAND_37[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{`RANDOM}};
  reg_pmp_0_cfg_x = _RAND_38[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {1{`RANDOM}};
  reg_pmp_0_cfg_w = _RAND_39[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{`RANDOM}};
  reg_pmp_0_cfg_r = _RAND_40[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {1{`RANDOM}};
  reg_pmp_0_addr = _RAND_41[29:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {1{`RANDOM}};
  reg_pmp_1_cfg_l = _RAND_42[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {1{`RANDOM}};
  reg_pmp_1_cfg_a = _RAND_43[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {1{`RANDOM}};
  reg_pmp_1_cfg_x = _RAND_44[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_45 = {1{`RANDOM}};
  reg_pmp_1_cfg_w = _RAND_45[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_46 = {1{`RANDOM}};
  reg_pmp_1_cfg_r = _RAND_46[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_47 = {1{`RANDOM}};
  reg_pmp_1_addr = _RAND_47[29:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_48 = {1{`RANDOM}};
  reg_pmp_2_cfg_l = _RAND_48[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_49 = {1{`RANDOM}};
  reg_pmp_2_cfg_a = _RAND_49[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_50 = {1{`RANDOM}};
  reg_pmp_2_cfg_x = _RAND_50[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_51 = {1{`RANDOM}};
  reg_pmp_2_cfg_w = _RAND_51[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_52 = {1{`RANDOM}};
  reg_pmp_2_cfg_r = _RAND_52[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_53 = {1{`RANDOM}};
  reg_pmp_2_addr = _RAND_53[29:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_54 = {1{`RANDOM}};
  reg_pmp_3_cfg_l = _RAND_54[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_55 = {1{`RANDOM}};
  reg_pmp_3_cfg_a = _RAND_55[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_56 = {1{`RANDOM}};
  reg_pmp_3_cfg_x = _RAND_56[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_57 = {1{`RANDOM}};
  reg_pmp_3_cfg_w = _RAND_57[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_58 = {1{`RANDOM}};
  reg_pmp_3_cfg_r = _RAND_58[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_59 = {1{`RANDOM}};
  reg_pmp_3_addr = _RAND_59[29:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_60 = {1{`RANDOM}};
  reg_pmp_4_cfg_l = _RAND_60[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_61 = {1{`RANDOM}};
  reg_pmp_4_cfg_a = _RAND_61[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_62 = {1{`RANDOM}};
  reg_pmp_4_cfg_x = _RAND_62[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_63 = {1{`RANDOM}};
  reg_pmp_4_cfg_w = _RAND_63[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_64 = {1{`RANDOM}};
  reg_pmp_4_cfg_r = _RAND_64[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_65 = {1{`RANDOM}};
  reg_pmp_4_addr = _RAND_65[29:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_66 = {1{`RANDOM}};
  reg_pmp_5_cfg_l = _RAND_66[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_67 = {1{`RANDOM}};
  reg_pmp_5_cfg_a = _RAND_67[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_68 = {1{`RANDOM}};
  reg_pmp_5_cfg_x = _RAND_68[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_69 = {1{`RANDOM}};
  reg_pmp_5_cfg_w = _RAND_69[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_70 = {1{`RANDOM}};
  reg_pmp_5_cfg_r = _RAND_70[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_71 = {1{`RANDOM}};
  reg_pmp_5_addr = _RAND_71[29:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_72 = {1{`RANDOM}};
  reg_pmp_6_cfg_l = _RAND_72[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_73 = {1{`RANDOM}};
  reg_pmp_6_cfg_a = _RAND_73[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_74 = {1{`RANDOM}};
  reg_pmp_6_cfg_x = _RAND_74[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_75 = {1{`RANDOM}};
  reg_pmp_6_cfg_w = _RAND_75[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_76 = {1{`RANDOM}};
  reg_pmp_6_cfg_r = _RAND_76[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_77 = {1{`RANDOM}};
  reg_pmp_6_addr = _RAND_77[29:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_78 = {1{`RANDOM}};
  reg_pmp_7_cfg_l = _RAND_78[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_79 = {1{`RANDOM}};
  reg_pmp_7_cfg_a = _RAND_79[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_80 = {1{`RANDOM}};
  reg_pmp_7_cfg_x = _RAND_80[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_81 = {1{`RANDOM}};
  reg_pmp_7_cfg_w = _RAND_81[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_82 = {1{`RANDOM}};
  reg_pmp_7_cfg_r = _RAND_82[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_83 = {1{`RANDOM}};
  reg_pmp_7_addr = _RAND_83[29:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_84 = {1{`RANDOM}};
  reg_mie = _RAND_84[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_85 = {1{`RANDOM}};
  reg_mip_seip = _RAND_85[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_86 = {1{`RANDOM}};
  reg_mip_stip = _RAND_86[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_87 = {1{`RANDOM}};
  reg_mip_ssip = _RAND_87[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_88 = {1{`RANDOM}};
  reg_mepc = _RAND_88[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_89 = {1{`RANDOM}};
  reg_mcause = _RAND_89[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_90 = {1{`RANDOM}};
  reg_mtval = _RAND_90[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_91 = {1{`RANDOM}};
  reg_mscratch = _RAND_91[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_92 = {1{`RANDOM}};
  reg_mtvec = _RAND_92[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_93 = {1{`RANDOM}};
  reg_mcounteren = _RAND_93[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_94 = {1{`RANDOM}};
  reg_scounteren = _RAND_94[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_95 = {1{`RANDOM}};
  reg_sepc = _RAND_95[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_96 = {1{`RANDOM}};
  reg_scause = _RAND_96[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_97 = {1{`RANDOM}};
  reg_stval = _RAND_97[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_98 = {1{`RANDOM}};
  reg_sscratch = _RAND_98[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_99 = {1{`RANDOM}};
  reg_stvec = _RAND_99[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_100 = {1{`RANDOM}};
  reg_satp_mode = _RAND_100[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_101 = {1{`RANDOM}};
  reg_satp_ppn = _RAND_101[21:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_102 = {1{`RANDOM}};
  reg_wfi = _RAND_102[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_103 = {1{`RANDOM}};
  reg_fflags = _RAND_103[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_104 = {1{`RANDOM}};
  reg_frm = _RAND_104[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_105 = {1{`RANDOM}};
  _T_86 = _RAND_105[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_106 = {2{`RANDOM}};
  _T_88 = _RAND_106[57:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_107 = {1{`RANDOM}};
  _T_94 = _RAND_107[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_108 = {2{`RANDOM}};
  _T_96 = _RAND_108[57:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_109 = {1{`RANDOM}};
  reg_misa = _RAND_109[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_110 = {1{`RANDOM}};
  _T_1511 = _RAND_110[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_111 = {1{`RANDOM}};
  _T_1894 = _RAND_111[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge clock) begin
    if (reset) begin
      _T_86 <= 6'h0;
    end else begin
      _T_86 <= _GEN_346[5:0];
    end
    if (reset) begin
      _T_88 <= 58'h0;
    end else begin
      if (csr_wen) begin
        if (sel_minstreth) begin
          _T_88 <= _T_4951;
        end else begin
          if (sel_minstret) begin
            _T_88 <= _T_4947;
          end else begin
            if (_T_89) begin
              _T_88 <= _T_91;
            end
          end
        end
      end else begin
        if (_T_89) begin
          _T_88 <= _T_91;
        end
      end
    end
  end
  always @(posedge io_ungated_clock) begin
    if (reset) begin
      _T_94 <= 6'h0;
    end else begin
      _T_94 <= _GEN_344[5:0];
    end
    if (reset) begin
      _T_96 <= 58'h0;
    end else begin
      if (csr_wen) begin
        if (sel_mcycleh) begin
          _T_96 <= _T_4944;
        end else begin
          if (sel_mcycle) begin
            _T_96 <= _T_4940;
          end else begin
            if (_T_97) begin
              _T_96 <= _T_99;
            end
          end
        end
      end else begin
        if (_T_97) begin
          _T_96 <= _T_99;
        end
      end
    end
  end
endmodule
