`include "include_module.v"
`ifdef __TLDebugModuleOuter
module TLDebugModuleOuter(
  input         clock,
  input         reset,
  output        auto_dmi_in_a_ready,
  input         auto_dmi_in_a_valid,
  input  [2:0]  auto_dmi_in_a_bits_opcode,
  input  [6:0]  auto_dmi_in_a_bits_address,
  input  [3:0]  auto_dmi_in_a_bits_mask,
  input  [31:0] auto_dmi_in_a_bits_data,
  input         auto_dmi_in_d_ready,
  output        auto_dmi_in_d_valid,
  output [2:0]  auto_dmi_in_d_bits_opcode,
  output [31:0] auto_dmi_in_d_bits_data,
  output        auto_int_out_0,
  output        io_ctrl_ndreset,
  output        io_ctrl_dmactive,
  output        io_innerCtrl_valid,
  output        io_innerCtrl_bits_resumereq,
  output [9:0]  io_innerCtrl_bits_hartsel,
  output        io_innerCtrl_bits_ackhavereset,
  output        io_innerCtrl_bits_hrmask_0,
  input         io_hgDebugInt_0
);

  wire  TLMonitor_clock; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@72461.4]
  wire  TLMonitor_reset; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@72461.4]
  wire  TLMonitor_io_in_a_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@72461.4]
  wire  TLMonitor_io_in_a_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@72461.4]
  wire [2:0] TLMonitor_io_in_a_bits_opcode; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@72461.4]
  wire [6:0] TLMonitor_io_in_a_bits_address; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@72461.4]
  wire [3:0] TLMonitor_io_in_a_bits_mask; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@72461.4]
  wire  TLMonitor_io_in_d_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@72461.4]
  wire  TLMonitor_io_in_d_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@72461.4]
  wire [2:0] TLMonitor_io_in_d_bits_opcode; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@72461.4]
  wire  DMCONTROL_clock; // @[AsyncResetReg.scala 87:21:freechips.rocketchip.system.DefaultRV32Config.fir@72566.4]
  wire  DMCONTROL_reset; // @[AsyncResetReg.scala 87:21:freechips.rocketchip.system.DefaultRV32Config.fir@72566.4]
  wire [31:0] DMCONTROL_io_d; // @[AsyncResetReg.scala 87:21:freechips.rocketchip.system.DefaultRV32Config.fir@72566.4]
  wire [31:0] DMCONTROL_io_q; // @[AsyncResetReg.scala 87:21:freechips.rocketchip.system.DefaultRV32Config.fir@72566.4]
  wire  HAWINDOWSELReg_clock; // @[AsyncResetReg.scala 87:21:freechips.rocketchip.system.DefaultRV32Config.fir@72758.4]
  wire  HAWINDOWSELReg_reset; // @[AsyncResetReg.scala 87:21:freechips.rocketchip.system.DefaultRV32Config.fir@72758.4]
  wire [31:0] HAWINDOWSELReg_io_d; // @[AsyncResetReg.scala 87:21:freechips.rocketchip.system.DefaultRV32Config.fir@72758.4]
  wire [31:0] HAWINDOWSELReg_io_q; // @[AsyncResetReg.scala 87:21:freechips.rocketchip.system.DefaultRV32Config.fir@72758.4]
  wire  hrmaskReg_clock; // @[AsyncResetReg.scala 87:21:freechips.rocketchip.system.DefaultRV32Config.fir@72780.4]
  wire  hrmaskReg_reset; // @[AsyncResetReg.scala 87:21:freechips.rocketchip.system.DefaultRV32Config.fir@72780.4]
  wire  hrmaskReg_io_d; // @[AsyncResetReg.scala 87:21:freechips.rocketchip.system.DefaultRV32Config.fir@72780.4]
  wire  hrmaskReg_io_q; // @[AsyncResetReg.scala 87:21:freechips.rocketchip.system.DefaultRV32Config.fir@72780.4]
  wire  debugInterrupts_clock; // @[AsyncResetReg.scala 87:21:freechips.rocketchip.system.DefaultRV32Config.fir@73387.4]
  wire  debugInterrupts_reset; // @[AsyncResetReg.scala 87:21:freechips.rocketchip.system.DefaultRV32Config.fir@73387.4]
  wire  debugInterrupts_io_d; // @[AsyncResetReg.scala 87:21:freechips.rocketchip.system.DefaultRV32Config.fir@73387.4]
  wire  debugInterrupts_io_q; // @[AsyncResetReg.scala 87:21:freechips.rocketchip.system.DefaultRV32Config.fir@73387.4]
  wire [31:0] _T_44; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72574.4 :freechips.rocketchip.system.DefaultRV32Config.fir@72576.4]
  wire  DMCONTROLReg_dmactive; // @[Debug.scala 327:66:freechips.rocketchip.system.DefaultRV32Config.fir@72577.4]
  wire  _T_73; // @[Debug.scala 349:11:freechips.rocketchip.system.DefaultRV32Config.fir@72671.4]
  wire  DMCONTROLReg_clrresethaltreq; // @[Debug.scala 327:66:freechips.rocketchip.system.DefaultRV32Config.fir@72581.4]
  wire  DMCONTROLNxt_clrresethaltreq; // @[Debug.scala 349:22:freechips.rocketchip.system.DefaultRV32Config.fir@72672.4]
  wire  _T_114; // @[RegisterRouter.scala 59:36:freechips.rocketchip.system.DefaultRV32Config.fir@72819.4]
  wire [4:0] _T_115; // @[Edges.scala 193:34:freechips.rocketchip.system.DefaultRV32Config.fir@72821.4]
  wire [2:0] _T_113_bits_index; // @[RegisterRouter.scala 58:18:freechips.rocketchip.system.DefaultRV32Config.fir@72817.4 RegisterRouter.scala 60:19:freechips.rocketchip.system.DefaultRV32Config.fir@72822.4]
  wire  _T_122; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@72835.4]
  wire  _T_518; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@73300.4]
  wire  _T_519; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@73301.4]
  wire  _T_520; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@73302.4]
  wire  _T_523; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@73306.4]
  wire  _T_146; // @[Bitwise.scala 26:51:freechips.rocketchip.system.DefaultRV32Config.fir@72863.4]
  wire [7:0] _T_154; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@72871.4]
  wire  _T_145; // @[Bitwise.scala 26:51:freechips.rocketchip.system.DefaultRV32Config.fir@72862.4]
  wire [7:0] _T_152; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@72869.4]
  wire  _T_144; // @[Bitwise.scala 26:51:freechips.rocketchip.system.DefaultRV32Config.fir@72861.4]
  wire [7:0] _T_150; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@72867.4]
  wire  _T_143; // @[Bitwise.scala 26:51:freechips.rocketchip.system.DefaultRV32Config.fir@72860.4]
  wire [7:0] _T_148; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@72865.4]
  wire [31:0] _T_157; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@72874.4]
  wire  _T_187; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@72906.4]
  wire  ndmresetWrEn; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@72911.4]
  wire  DMCONTROLWrData_ndmreset; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@72912.4]
  wire  DMCONTROLReg_ndmreset; // @[Debug.scala 327:66:freechips.rocketchip.system.DefaultRV32Config.fir@72579.4]
  wire  _GEN_0; // @[Debug.scala 352:47:freechips.rocketchip.system.DefaultRV32Config.fir@72677.6]
  wire  DMCONTROLNxt_ndmreset; // @[Debug.scala 349:22:freechips.rocketchip.system.DefaultRV32Config.fir@72672.4]
  wire  _T_164; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@72881.4]
  wire  dmactiveWrEn; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@72886.4]
  wire  DMCONTROLWrData_dmactive; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@72887.4]
  wire  _GEN_17; // @[Debug.scala 349:22:freechips.rocketchip.system.DefaultRV32Config.fir@72672.4]
  wire  DMCONTROLNxt_dmactive; // @[Debug.scala 360:25:freechips.rocketchip.system.DefaultRV32Config.fir@72698.4]
  wire [9:0] DMCONTROLReg_hartselhi; // @[Debug.scala 327:66:freechips.rocketchip.system.DefaultRV32Config.fir@72587.4]
  wire [9:0] DMCONTROLNxt_hartselhi; // @[Debug.scala 349:22:freechips.rocketchip.system.DefaultRV32Config.fir@72672.4]
  wire [1:0] DMCONTROLReg_reserved1; // @[Debug.scala 327:66:freechips.rocketchip.system.DefaultRV32Config.fir@72585.4]
  wire [1:0] DMCONTROLNxt_reserved1; // @[Debug.scala 349:22:freechips.rocketchip.system.DefaultRV32Config.fir@72672.4]
  wire  DMCONTROLReg_setresethaltreq; // @[Debug.scala 327:66:freechips.rocketchip.system.DefaultRV32Config.fir@72583.4]
  wire  DMCONTROLNxt_setresethaltreq; // @[Debug.scala 349:22:freechips.rocketchip.system.DefaultRV32Config.fir@72672.4]
  wire [15:0] _T_35; // @[Debug.scala 327:107:freechips.rocketchip.system.DefaultRV32Config.fir@72558.4]
  wire  DMCONTROLReg_reserved0; // @[Debug.scala 327:66:freechips.rocketchip.system.DefaultRV32Config.fir@72593.4]
  wire  DMCONTROLNxt_reserved0; // @[Debug.scala 349:22:freechips.rocketchip.system.DefaultRV32Config.fir@72672.4]
  wire  DMCONTROLReg_hasel; // @[Debug.scala 327:66:freechips.rocketchip.system.DefaultRV32Config.fir@72591.4]
  wire  DMCONTROLNxt_hasel; // @[Debug.scala 349:22:freechips.rocketchip.system.DefaultRV32Config.fir@72672.4]
  wire [9:0] DMCONTROLReg_hartsello; // @[Debug.scala 327:66:freechips.rocketchip.system.DefaultRV32Config.fir@72589.4]
  wire [9:0] DMCONTROLNxt_hartsello; // @[Debug.scala 349:22:freechips.rocketchip.system.DefaultRV32Config.fir@72672.4]
  wire  DMCONTROLReg_hartreset; // @[Debug.scala 327:66:freechips.rocketchip.system.DefaultRV32Config.fir@72597.4]
  wire  DMCONTROLNxt_hartreset; // @[Debug.scala 349:22:freechips.rocketchip.system.DefaultRV32Config.fir@72672.4]
  wire  DMCONTROLReg_ackhavereset; // @[Debug.scala 327:66:freechips.rocketchip.system.DefaultRV32Config.fir@72595.4]
  wire  DMCONTROLNxt_ackhavereset; // @[Debug.scala 349:22:freechips.rocketchip.system.DefaultRV32Config.fir@72672.4]
  wire  _T_462; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@73191.4]
  wire  haltreqWrEn; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@73196.4]
  wire  DMCONTROLWrData_haltreq; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@73197.4]
  wire  DMCONTROLReg_haltreq; // @[Debug.scala 327:66:freechips.rocketchip.system.DefaultRV32Config.fir@72601.4]
  wire  _GEN_4; // @[Debug.scala 356:47:freechips.rocketchip.system.DefaultRV32Config.fir@72694.6]
  wire  DMCONTROLNxt_haltreq; // @[Debug.scala 349:22:freechips.rocketchip.system.DefaultRV32Config.fir@72672.4]
  wire  DMCONTROLReg_resumereq; // @[Debug.scala 327:66:freechips.rocketchip.system.DefaultRV32Config.fir@72599.4]
  wire  DMCONTROLNxt_resumereq; // @[Debug.scala 349:22:freechips.rocketchip.system.DefaultRV32Config.fir@72672.4]
  wire [15:0] _T_41; // @[Debug.scala 327:107:freechips.rocketchip.system.DefaultRV32Config.fir@72564.4]
  wire  hrmaskReg_1_0; // @[Debug.scala 463:27:freechips.rocketchip.system.DefaultRV32Config.fir@72786.4]
  wire  _T_212; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@72933.4]
  wire  clrresethaltreqWrEn; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@72938.4]
  wire  DMCONTROLWrData_clrresethaltreq; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@72939.4]
  wire  _T_103; // @[Debug.scala 469:39:freechips.rocketchip.system.DefaultRV32Config.fir@72799.6]
  wire  _T_104; // @[Debug.scala 382:35:freechips.rocketchip.system.DefaultRV32Config.fir@72800.6]
  wire  _T_106; // @[Debug.scala 469:74:freechips.rocketchip.system.DefaultRV32Config.fir@72802.6]
  wire  _T_237; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@72960.4]
  wire  setresethaltreqWrEn; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@72965.4]
  wire  DMCONTROLWrData_setresethaltreq; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@72966.4]
  wire  _T_107; // @[Debug.scala 471:39:freechips.rocketchip.system.DefaultRV32Config.fir@72807.8]
  wire  _T_110; // @[Debug.scala 471:74:freechips.rocketchip.system.DefaultRV32Config.fir@72810.8]
  wire  _GEN_19; // @[Debug.scala 471:102:freechips.rocketchip.system.DefaultRV32Config.fir@72811.8]
  wire  hrmaskNxt_0; // @[Debug.scala 469:102:freechips.rocketchip.system.DefaultRV32Config.fir@72803.6]
  wire  _T_111; // @[Debug.scala 475:39:freechips.rocketchip.system.DefaultRV32Config.fir@72814.4]
  wire [4:0] _T_278; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@73003.4]
  wire [15:0] _T_279; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@73004.4]
  wire [17:0] _T_328; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@73053.4]
  wire [25:0] _T_329; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@73054.4]
  wire  _T_381; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@73106.4]
  wire  _T_391; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@73116.4]
  wire  DMCONTROLWrData_ackhavereset; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@73118.4]
  wire  _T_431; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@73158.4]
  wire  _T_441; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@73168.4]
  wire  DMCONTROLWrData_resumereq; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@73170.4]
  wire [31:0] _T_478; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@73209.4]
  wire  debugIntRegs_0; // @[Debug.scala 538:33:freechips.rocketchip.system.DefaultRV32Config.fir@73393.4]
  wire  _GEN_22; // @[Debug.scala 560:96:freechips.rocketchip.system.DefaultRV32Config.fir@73413.6]
  wire  _T_560; // @[Debug.scala 566:77:freechips.rocketchip.system.DefaultRV32Config.fir@73418.4]
  wire  _T_561; // @[Debug.scala 566:96:freechips.rocketchip.system.DefaultRV32Config.fir@73419.4]

  TLMonitor_35 TLMonitor (
    .clock(TLMonitor_clock),
    .reset(TLMonitor_reset),
    .io_in_a_ready(TLMonitor_io_in_a_ready),
    .io_in_a_valid(TLMonitor_io_in_a_valid),
    .io_in_a_bits_opcode(TLMonitor_io_in_a_bits_opcode),
    .io_in_a_bits_address(TLMonitor_io_in_a_bits_address),
    .io_in_a_bits_mask(TLMonitor_io_in_a_bits_mask),
    .io_in_d_ready(TLMonitor_io_in_d_ready),
    .io_in_d_valid(TLMonitor_io_in_d_valid),
    .io_in_d_bits_opcode(TLMonitor_io_in_d_bits_opcode)
  );

  AsyncResetRegVec_w32_i0 DMCONTROL (
    .clock(DMCONTROL_clock),
    .reset(DMCONTROL_reset),
    .io_d(DMCONTROL_io_d),
    .io_q(DMCONTROL_io_q)
  );

  AsyncResetRegVec_w32_i0 HAWINDOWSELReg (
    .clock(HAWINDOWSELReg_clock),
    .reset(HAWINDOWSELReg_reset),
    .io_d(HAWINDOWSELReg_io_d),
    .io_q(HAWINDOWSELReg_io_q)
  );

  AsyncResetRegVec_w1_i0 hrmaskReg (
    .clock(hrmaskReg_clock),
    .reset(hrmaskReg_reset),
    .io_d(hrmaskReg_io_d),
    .io_q(hrmaskReg_io_q)
  );

  AsyncResetRegVec_w1_i0 debugInterrupts (
    .clock(debugInterrupts_clock),
    .reset(debugInterrupts_reset),
    .io_d(debugInterrupts_io_d),
    .io_q(debugInterrupts_io_q)
  );

`define MY_ASSIGNMENT
`ifdef MY_ASSIGNMENT
  assign DMCONTROLReg_dmactive = DMCONTROL_io_q[0];
  assign DMCONTROLReg_clrresethaltreq = DMCONTROL_io_q[2];
  assign DMCONTROLNxt_clrresethaltreq = (~DMCONTROLReg_dmactive) ? 1'h0 : DMCONTROLReg_clrresethaltreq;
  assign _T_148 = auto_dmi_in_a_bits_mask[0] ? 8'hff : 8'h0;
  assign _T_150 = auto_dmi_in_a_bits_mask[1] ? 8'hff : 8'h0;
  assign _T_152 = auto_dmi_in_a_bits_mask[2] ? 8'hff : 8'h0;
  assign _T_154 = auto_dmi_in_a_bits_mask[3] ? 8'hff : 8'h0;
  assign _T_157 = {_T_154,_T_152,_T_150,_T_148};
  assign _T_523 = auto_dmi_in_a_valid & auto_dmi_in_d_ready & !(auto_dmi_in_a_bits_opcode == 3'h4) & (auto_dmi_in_a_bits_address[4:2] == 3'h0);
  assign ndmresetWrEn = _T_523 & _T_157[1];
  assign DMCONTROLWrData_ndmreset = auto_dmi_in_a_bits_data[1];
  assign DMCONTROLReg_ndmreset = DMCONTROL_io_q[1];
  assign DMCONTROLNxt_ndmreset = (~ DMCONTROLReg_dmactive) ? 1'h0 
				: ndmresetWrEn ? DMCONTROLWrData_ndmreset 
				: DMCONTROLReg_ndmreset
				;
  assign dmactiveWrEn = _T_523 & _T_157[0];
  assign DMCONTROLWrData_dmactive = auto_dmi_in_a_bits_data[0];
  assign DMCONTROLNxt_dmactive = dmactiveWrEn ? DMCONTROLWrData_dmactive 
				: (~ DMCONTROLReg_dmactive) ? 1'h0 
				: DMCONTROLReg_dmactive
				;
  assign DMCONTROLReg_hartselhi = DMCONTROL_io_q[15:6];
  assign DMCONTROLNxt_hartselhi = (~ DMCONTROLReg_dmactive) ? 10'h0 : DMCONTROLReg_hartselhi;
  assign DMCONTROLReg_reserved1 = DMCONTROL_io_q[5:4];
  assign DMCONTROLNxt_reserved1 = (~ DMCONTROLReg_dmactive) ? 2'h0 : DMCONTROLReg_reserved1;
  assign DMCONTROLReg_setresethaltreq = DMCONTROL_io_q[3];
  assign DMCONTROLNxt_setresethaltreq = (~ DMCONTROLReg_dmactive) ? 1'h0 : DMCONTROLReg_setresethaltreq;
  assign DMCONTROLReg_reserved0 = DMCONTROL_io_q[27];
  assign DMCONTROLNxt_reserved0 = (~ DMCONTROLReg_dmactive) ? 1'h0 : DMCONTROLReg_reserved0;
  assign DMCONTROLReg_hasel = DMCONTROL_io_q[26];
  assign DMCONTROLNxt_hasel = (~ DMCONTROLReg_dmactive) ? 1'h0 : DMCONTROLReg_hasel;
  assign DMCONTROLReg_hartsello = DMCONTROL_io_q[25:16];
  assign DMCONTROLNxt_hartsello = (~ DMCONTROLReg_dmactive) ? 10'h0 : DMCONTROLReg_hartsello;
  assign DMCONTROLReg_hartreset = DMCONTROL_io_q[29];
  assign DMCONTROLNxt_hartreset = (~ DMCONTROLReg_dmactive) ? 1'h0 : DMCONTROLReg_hartreset;
  assign DMCONTROLReg_ackhavereset = DMCONTROL_io_q[28];
  assign DMCONTROLNxt_ackhavereset = (~ DMCONTROLReg_dmactive) ? 1'h0 : DMCONTROLReg_ackhavereset;
  assign haltreqWrEn = _T_523 & _T_157[31];
  assign DMCONTROLWrData_haltreq = auto_dmi_in_a_bits_data[31];
  assign DMCONTROLReg_haltreq = DMCONTROL_io_q[31];
  assign DMCONTROLNxt_haltreq = (~ DMCONTROLReg_dmactive) ? 1'h0 
				: haltreqWrEn ? DMCONTROLWrData_haltreq 
				: DMCONTROLReg_haltreq
				;
  assign DMCONTROLReg_resumereq = DMCONTROL_io_q[30];
  assign DMCONTROLNxt_resumereq = (~ DMCONTROLReg_dmactive) ? 1'h0 : DMCONTROLReg_resumereq;
  assign hrmaskReg_1_0 = hrmaskReg_io_q;
  assign clrresethaltreqWrEn = _T_523 & _T_157[2];
  assign DMCONTROLWrData_clrresethaltreq = auto_dmi_in_a_bits_data[2];
  assign setresethaltreqWrEn = _T_523 & _T_157[3];
  assign DMCONTROLWrData_setresethaltreq = auto_dmi_in_a_bits_data[3];
  assign hrmaskNxt_0 = (clrresethaltreqWrEn & DMCONTROLWrData_clrresethaltreq & (io_innerCtrl_bits_hartsel == 10'h0)) ? 1'h0 : ((setresethaltreqWrEn & DMCONTROLWrData_setresethaltreq & (io_innerCtrl_bits_hartsel == 10'h0)) | hrmaskReg_1_0);
  assign DMCONTROLWrData_ackhavereset = auto_dmi_in_a_bits_data[28];
  assign DMCONTROLWrData_resumereq = auto_dmi_in_a_bits_data[30];
  assign debugIntRegs_0 = debugInterrupts_io_q;
  assign auto_dmi_in_a_ready = auto_dmi_in_d_ready;
  assign auto_dmi_in_d_valid = auto_dmi_in_a_valid;
  assign auto_dmi_in_d_bits_opcode = {{2'd0}, (auto_dmi_in_a_bits_opcode == 3'h4)}; 
  assign auto_dmi_in_d_bits_data = (auto_dmi_in_a_bits_address[4:2] == 3'h0) ? {DMCONTROLReg_haltreq,1'h0,1'h0,1'h0,1'h0,1'h0,8'd0,1'h0,1'h0,11'd0,1'h0,1'h0,1'h0,DMCONTROLReg_ndmreset,DMCONTROLReg_dmactive} : 32'h0;
  assign auto_int_out_0 = debugIntRegs_0 | io_hgDebugInt_0;
  assign io_ctrl_ndreset = DMCONTROL_io_q[1];
  assign io_ctrl_dmactive = DMCONTROL_io_q[0];
  assign io_innerCtrl_valid = (_T_523 & _T_157[30]) 
				| (_T_523 & _T_157[28]) 
				| setresethaltreqWrEn 
				| clrresethaltreqWrEn
				;
  assign io_innerCtrl_bits_resumereq = _T_523 & _T_157[30] & DMCONTROLWrData_resumereq;
  assign io_innerCtrl_bits_hartsel = DMCONTROL_io_q[25:16];
  assign io_innerCtrl_bits_ackhavereset = (_T_523 & _T_157[28]) & DMCONTROLWrData_ackhavereset;
  assign io_innerCtrl_bits_hrmask_0 = (clrresethaltreqWrEn | setresethaltreqWrEn) ? hrmaskNxt_0 : hrmaskReg_1_0;

  assign TLMonitor_clock = clock;
  assign TLMonitor_reset = reset;
  assign TLMonitor_io_in_a_ready = auto_dmi_in_d_ready;
  assign TLMonitor_io_in_a_valid = auto_dmi_in_a_valid;
  assign TLMonitor_io_in_a_bits_opcode = auto_dmi_in_a_bits_opcode;
  assign TLMonitor_io_in_a_bits_address = auto_dmi_in_a_bits_address;
  assign TLMonitor_io_in_a_bits_mask = auto_dmi_in_a_bits_mask;
  assign TLMonitor_io_in_d_ready = auto_dmi_in_d_ready;
  assign TLMonitor_io_in_d_valid = auto_dmi_in_a_valid;
  assign TLMonitor_io_in_d_bits_opcode = {{2'd0}, (auto_dmi_in_a_bits_opcode == 3'h4)};
  assign DMCONTROL_clock = clock;
  assign DMCONTROL_reset = reset;
  assign DMCONTROL_io_d = {DMCONTROLNxt_haltreq
			,DMCONTROLNxt_resumereq
			,DMCONTROLNxt_hartreset
			,DMCONTROLNxt_ackhavereset
			,DMCONTROLNxt_reserved0
			,DMCONTROLNxt_hasel
			,DMCONTROLNxt_hartsello
			,DMCONTROLNxt_hartselhi
			,DMCONTROLNxt_reserved1
			,DMCONTROLNxt_setresethaltreq
			,DMCONTROLNxt_clrresethaltreq
			,DMCONTROLNxt_ndmreset
			,DMCONTROLNxt_dmactive};
  assign HAWINDOWSELReg_clock = clock;
  assign HAWINDOWSELReg_reset = reset;
  assign HAWINDOWSELReg_io_d = 32'h0;
  assign hrmaskReg_clock = clock;
  assign hrmaskReg_reset = reset;
  assign hrmaskReg_io_d = (clrresethaltreqWrEn & DMCONTROLWrData_clrresethaltreq & (io_innerCtrl_bits_hartsel == 10'h0)) ? 1'h0 : ((setresethaltreqWrEn & DMCONTROLWrData_setresethaltreq & (io_innerCtrl_bits_hartsel == 10'h0)) | hrmaskReg_1_0);
  assign debugInterrupts_clock = clock;
  assign debugInterrupts_reset = reset;
  assign debugInterrupts_io_d = (~ DMCONTROLReg_dmactive) ? 1'h0 
				: haltreqWrEn ? DMCONTROLWrData_haltreq 
				: debugIntRegs_0;

`endif // MY_ASSIGNMENT

`ifndef MY_ASSIGNMENT
  assign DMCONTROLReg_dmactive = _T_44[0]; // @[Debug.scala 327:66:freechips.rocketchip.system.DefaultRV32Config.fir@72577.4]
  assign DMCONTROLReg_clrresethaltreq = _T_44[2]; // @[Debug.scala 327:66:freechips.rocketchip.system.DefaultRV32Config.fir@72581.4]
  assign DMCONTROLNxt_clrresethaltreq = _T_73 ? 1'h0 : DMCONTROLReg_clrresethaltreq; // @[Debug.scala 349:22:freechips.rocketchip.system.DefaultRV32Config.fir@72672.4]
  assign _T_523 = _T_520 & _T_122; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@73306.4]
  assign _T_148 = _T_143 ? 8'hff : 8'h0; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@72865.4]
  assign _T_150 = _T_144 ? 8'hff : 8'h0; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@72867.4]
  assign _T_154 = _T_146 ? 8'hff : 8'h0; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@72871.4]
  assign _T_152 = _T_145 ? 8'hff : 8'h0; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@72869.4]
  assign _T_157 = {_T_154,_T_152,_T_150,_T_148}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@72874.4]
  assign ndmresetWrEn = _T_523 & _T_187; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@72911.4]
  assign DMCONTROLWrData_ndmreset = auto_dmi_in_a_bits_data[1]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@72912.4]
  assign DMCONTROLReg_ndmreset = _T_44[1]; // @[Debug.scala 327:66:freechips.rocketchip.system.DefaultRV32Config.fir@72579.4]
  assign DMCONTROLNxt_ndmreset = _T_73 ? 1'h0 : _GEN_0; // @[Debug.scala 349:22:freechips.rocketchip.system.DefaultRV32Config.fir@72672.4]
  assign dmactiveWrEn = _T_523 & _T_164; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@72886.4]
  assign DMCONTROLWrData_dmactive = auto_dmi_in_a_bits_data[0]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@72887.4]
  assign DMCONTROLNxt_dmactive = dmactiveWrEn ? DMCONTROLWrData_dmactive : _GEN_17; // @[Debug.scala 360:25:freechips.rocketchip.system.DefaultRV32Config.fir@72698.4]
  assign DMCONTROLReg_hartselhi = _T_44[15:6]; // @[Debug.scala 327:66:freechips.rocketchip.system.DefaultRV32Config.fir@72587.4]
  assign DMCONTROLNxt_hartselhi = _T_73 ? 10'h0 : DMCONTROLReg_hartselhi; // @[Debug.scala 349:22:freechips.rocketchip.system.DefaultRV32Config.fir@72672.4]
  assign DMCONTROLReg_reserved1 = _T_44[5:4]; // @[Debug.scala 327:66:freechips.rocketchip.system.DefaultRV32Config.fir@72585.4]
  assign DMCONTROLNxt_reserved1 = _T_73 ? 2'h0 : DMCONTROLReg_reserved1; // @[Debug.scala 349:22:freechips.rocketchip.system.DefaultRV32Config.fir@72672.4]
  assign DMCONTROLReg_setresethaltreq = _T_44[3]; // @[Debug.scala 327:66:freechips.rocketchip.system.DefaultRV32Config.fir@72583.4]
  assign DMCONTROLNxt_setresethaltreq = _T_73 ? 1'h0 : DMCONTROLReg_setresethaltreq; // @[Debug.scala 349:22:freechips.rocketchip.system.DefaultRV32Config.fir@72672.4]
  assign DMCONTROLReg_reserved0 = _T_44[27]; // @[Debug.scala 327:66:freechips.rocketchip.system.DefaultRV32Config.fir@72593.4]
  assign DMCONTROLNxt_reserved0 = _T_73 ? 1'h0 : DMCONTROLReg_reserved0; // @[Debug.scala 349:22:freechips.rocketchip.system.DefaultRV32Config.fir@72672.4]
  assign DMCONTROLReg_hasel = _T_44[26]; // @[Debug.scala 327:66:freechips.rocketchip.system.DefaultRV32Config.fir@72591.4]
  assign DMCONTROLNxt_hasel = _T_73 ? 1'h0 : DMCONTROLReg_hasel; // @[Debug.scala 349:22:freechips.rocketchip.system.DefaultRV32Config.fir@72672.4]
  assign DMCONTROLReg_hartsello = _T_44[25:16]; // @[Debug.scala 327:66:freechips.rocketchip.system.DefaultRV32Config.fir@72589.4]
  assign DMCONTROLNxt_hartsello = _T_73 ? 10'h0 : DMCONTROLReg_hartsello; // @[Debug.scala 349:22:freechips.rocketchip.system.DefaultRV32Config.fir@72672.4]
  assign DMCONTROLReg_hartreset = _T_44[29]; // @[Debug.scala 327:66:freechips.rocketchip.system.DefaultRV32Config.fir@72597.4]
  assign DMCONTROLNxt_hartreset = _T_73 ? 1'h0 : DMCONTROLReg_hartreset; // @[Debug.scala 349:22:freechips.rocketchip.system.DefaultRV32Config.fir@72672.4]
  assign DMCONTROLReg_ackhavereset = _T_44[28]; // @[Debug.scala 327:66:freechips.rocketchip.system.DefaultRV32Config.fir@72595.4]
  assign DMCONTROLNxt_ackhavereset = _T_73 ? 1'h0 : DMCONTROLReg_ackhavereset; // @[Debug.scala 349:22:freechips.rocketchip.system.DefaultRV32Config.fir@72672.4]
  assign haltreqWrEn = _T_523 & _T_462; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@73196.4]
  assign DMCONTROLWrData_haltreq = auto_dmi_in_a_bits_data[31]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@73197.4]
  assign DMCONTROLReg_haltreq = _T_44[31]; // @[Debug.scala 327:66:freechips.rocketchip.system.DefaultRV32Config.fir@72601.4]
  assign DMCONTROLNxt_haltreq = _T_73 ? 1'h0 : _GEN_4; // @[Debug.scala 349:22:freechips.rocketchip.system.DefaultRV32Config.fir@72672.4]
  assign DMCONTROLReg_resumereq = _T_44[30]; // @[Debug.scala 327:66:freechips.rocketchip.system.DefaultRV32Config.fir@72599.4]
  assign DMCONTROLNxt_resumereq = _T_73 ? 1'h0 : DMCONTROLReg_resumereq; // @[Debug.scala 349:22:freechips.rocketchip.system.DefaultRV32Config.fir@72672.4]
  assign hrmaskReg_1_0 = hrmaskReg_io_q; // @[Debug.scala 463:27:freechips.rocketchip.system.DefaultRV32Config.fir@72786.4]
  assign clrresethaltreqWrEn = _T_523 & _T_212; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@72938.4]
  assign DMCONTROLWrData_clrresethaltreq = auto_dmi_in_a_bits_data[2]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@72939.4]
  assign setresethaltreqWrEn = _T_523 & _T_237; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@72965.4]
  assign DMCONTROLWrData_setresethaltreq = auto_dmi_in_a_bits_data[3]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@72966.4]
  assign hrmaskNxt_0 = _T_106 ? 1'h0 : _GEN_19; // @[Debug.scala 469:102:freechips.rocketchip.system.DefaultRV32Config.fir@72803.6]
  assign DMCONTROLWrData_ackhavereset = auto_dmi_in_a_bits_data[28]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@73118.4]
  assign DMCONTROLWrData_resumereq = auto_dmi_in_a_bits_data[30]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@73170.4]
  assign debugIntRegs_0 = debugInterrupts_io_q; // @[Debug.scala 538:33:freechips.rocketchip.system.DefaultRV32Config.fir@73393.4]
  assign auto_dmi_in_a_ready = auto_dmi_in_d_ready; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@72485.4]
  assign auto_dmi_in_d_valid = auto_dmi_in_a_valid; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@72485.4]
  assign auto_dmi_in_d_bits_opcode = {{2'd0}, _T_114}; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@72485.4]
  assign auto_dmi_in_d_bits_data = _T_122 ? _T_478 : 32'h0; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@72485.4]
  assign auto_int_out_0 = debugIntRegs_0 | io_hgDebugInt_0; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@72484.4]
  assign io_ctrl_ndreset = _T_44[1]; // @[Debug.scala 577:21:freechips.rocketchip.system.DefaultRV32Config.fir@73433.4]
  assign io_ctrl_dmactive = _T_44[0]; // @[Debug.scala 578:22:freechips.rocketchip.system.DefaultRV32Config.fir@73434.4]
  assign io_innerCtrl_valid = _T_561 | clrresethaltreqWrEn; // @[Debug.scala 566:24:freechips.rocketchip.system.DefaultRV32Config.fir@73425.4]
  assign io_innerCtrl_bits_resumereq = _T_441 & DMCONTROLWrData_resumereq; // @[Debug.scala 569:36:freechips.rocketchip.system.DefaultRV32Config.fir@73429.4]
  assign io_innerCtrl_bits_hartsel = _T_44[25:16]; // @[Debug.scala 568:36:freechips.rocketchip.system.DefaultRV32Config.fir@73427.4]
  assign io_innerCtrl_bits_ackhavereset = _T_391 & DMCONTROLWrData_ackhavereset; // @[Debug.scala 570:36:freechips.rocketchip.system.DefaultRV32Config.fir@73431.4]
  assign io_innerCtrl_bits_hrmask_0 = _T_111 ? hrmaskNxt_0 : hrmaskReg_1_0; // @[Debug.scala 571:36:freechips.rocketchip.system.DefaultRV32Config.fir@73432.4]
  assign TLMonitor_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72462.4]
  assign TLMonitor_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72463.4]
  assign TLMonitor_io_in_a_ready = auto_dmi_in_d_ready; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@72483.4]
  assign TLMonitor_io_in_a_valid = auto_dmi_in_a_valid; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@72482.4]
  assign TLMonitor_io_in_a_bits_opcode = auto_dmi_in_a_bits_opcode; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@72481.4]
  assign TLMonitor_io_in_a_bits_address = auto_dmi_in_a_bits_address; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@72477.4]
  assign TLMonitor_io_in_a_bits_mask = auto_dmi_in_a_bits_mask; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@72476.4]
  assign TLMonitor_io_in_d_ready = auto_dmi_in_d_ready; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@72473.4]
  assign TLMonitor_io_in_d_valid = auto_dmi_in_a_valid; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@72472.4]
  assign TLMonitor_io_in_d_bits_opcode = {{2'd0}, _T_114}; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@72471.4]
  assign DMCONTROL_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72568.4]
  assign DMCONTROL_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72569.4]
  assign DMCONTROL_io_d = {_T_41,_T_35}; // @[AsyncResetReg.scala 89:14:freechips.rocketchip.system.DefaultRV32Config.fir@72570.4]
  assign HAWINDOWSELReg_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72760.4]
  assign HAWINDOWSELReg_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72761.4]
  assign HAWINDOWSELReg_io_d = 32'h0; // @[AsyncResetReg.scala 89:14:freechips.rocketchip.system.DefaultRV32Config.fir@72762.4]
  assign hrmaskReg_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72782.4]
  assign hrmaskReg_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72783.4]
  assign hrmaskReg_io_d = _T_106 ? 1'h0 : _GEN_19; // @[AsyncResetReg.scala 89:14:freechips.rocketchip.system.DefaultRV32Config.fir@72784.4]
  assign debugInterrupts_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@73389.4]
  assign debugInterrupts_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@73390.4]
  assign debugInterrupts_io_d = _T_73 ? 1'h0 : _GEN_22; // @[AsyncResetReg.scala 89:14:freechips.rocketchip.system.DefaultRV32Config.fir@73391.4]

`endif // MY_ASSIGNMENT

  assign _T_44 = DMCONTROL_io_q; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72574.4 :freechips.rocketchip.system.DefaultRV32Config.fir@72576.4]
  assign _T_73 = ~ DMCONTROLReg_dmactive; // @[Debug.scala 349:11:freechips.rocketchip.system.DefaultRV32Config.fir@72671.4]
  assign _T_114 = auto_dmi_in_a_bits_opcode == 3'h4; // @[RegisterRouter.scala 59:36:freechips.rocketchip.system.DefaultRV32Config.fir@72819.4]
  assign _T_115 = auto_dmi_in_a_bits_address[6:2]; // @[Edges.scala 193:34:freechips.rocketchip.system.DefaultRV32Config.fir@72821.4]
  assign _T_113_bits_index = _T_115[2:0]; // @[RegisterRouter.scala 58:18:freechips.rocketchip.system.DefaultRV32Config.fir@72817.4 RegisterRouter.scala 60:19:freechips.rocketchip.system.DefaultRV32Config.fir@72822.4]
  assign _T_122 = _T_113_bits_index == 3'h0; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@72835.4]
  assign _T_518 = auto_dmi_in_a_valid & auto_dmi_in_d_ready; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@73300.4]
  assign _T_519 = _T_114 == 1'h0; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@73301.4]
  assign _T_520 = _T_518 & _T_519; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@73302.4]
  assign _T_146 = auto_dmi_in_a_bits_mask[3]; // @[Bitwise.scala 26:51:freechips.rocketchip.system.DefaultRV32Config.fir@72863.4]
  assign _T_145 = auto_dmi_in_a_bits_mask[2]; // @[Bitwise.scala 26:51:freechips.rocketchip.system.DefaultRV32Config.fir@72862.4]
  assign _T_144 = auto_dmi_in_a_bits_mask[1]; // @[Bitwise.scala 26:51:freechips.rocketchip.system.DefaultRV32Config.fir@72861.4]
  assign _T_143 = auto_dmi_in_a_bits_mask[0]; // @[Bitwise.scala 26:51:freechips.rocketchip.system.DefaultRV32Config.fir@72860.4]
  assign _T_187 = _T_157[1]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@72906.4]
  assign _GEN_0 = ndmresetWrEn ? DMCONTROLWrData_ndmreset : DMCONTROLReg_ndmreset; // @[Debug.scala 352:47:freechips.rocketchip.system.DefaultRV32Config.fir@72677.6]
  assign _T_164 = _T_157[0]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@72881.4]
  assign _GEN_17 = _T_73 ? 1'h0 : DMCONTROLReg_dmactive; // @[Debug.scala 349:22:freechips.rocketchip.system.DefaultRV32Config.fir@72672.4]
  assign _T_35 = {DMCONTROLNxt_hartselhi,DMCONTROLNxt_reserved1,DMCONTROLNxt_setresethaltreq,DMCONTROLNxt_clrresethaltreq,DMCONTROLNxt_ndmreset,DMCONTROLNxt_dmactive}; // @[Debug.scala 327:107:freechips.rocketchip.system.DefaultRV32Config.fir@72558.4]
  assign _T_462 = _T_157[31]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@73191.4]
  assign _GEN_4 = haltreqWrEn ? DMCONTROLWrData_haltreq : DMCONTROLReg_haltreq; // @[Debug.scala 356:47:freechips.rocketchip.system.DefaultRV32Config.fir@72694.6]
  assign _T_41 = {DMCONTROLNxt_haltreq,DMCONTROLNxt_resumereq,DMCONTROLNxt_hartreset,DMCONTROLNxt_ackhavereset,DMCONTROLNxt_reserved0,DMCONTROLNxt_hasel,DMCONTROLNxt_hartsello}; // @[Debug.scala 327:107:freechips.rocketchip.system.DefaultRV32Config.fir@72564.4]
  assign _T_212 = _T_157[2]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@72933.4]
  assign _T_103 = clrresethaltreqWrEn & DMCONTROLWrData_clrresethaltreq; // @[Debug.scala 469:39:freechips.rocketchip.system.DefaultRV32Config.fir@72799.6]
  assign _T_104 = io_innerCtrl_bits_hartsel == 10'h0; // @[Debug.scala 382:35:freechips.rocketchip.system.DefaultRV32Config.fir@72800.6]
  assign _T_106 = _T_103 & _T_104; // @[Debug.scala 469:74:freechips.rocketchip.system.DefaultRV32Config.fir@72802.6]
  assign _T_237 = _T_157[3]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@72960.4]
  assign _T_107 = setresethaltreqWrEn & DMCONTROLWrData_setresethaltreq; // @[Debug.scala 471:39:freechips.rocketchip.system.DefaultRV32Config.fir@72807.8]
  assign _T_110 = _T_107 & _T_104; // @[Debug.scala 471:74:freechips.rocketchip.system.DefaultRV32Config.fir@72810.8]
  assign _GEN_19 = _T_110 | hrmaskReg_1_0; // @[Debug.scala 471:102:freechips.rocketchip.system.DefaultRV32Config.fir@72811.8]
  assign _T_111 = clrresethaltreqWrEn | setresethaltreqWrEn; // @[Debug.scala 475:39:freechips.rocketchip.system.DefaultRV32Config.fir@72814.4]
  assign _T_278 = {1'h0,1'h0,1'h0,DMCONTROLReg_ndmreset,DMCONTROLReg_dmactive}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@73003.4]
  assign _T_279 = {{11'd0}, _T_278}; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@73004.4]
  assign _T_328 = {1'h0,1'h0,_T_279}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@73053.4]
  assign _T_329 = {{8'd0}, _T_328}; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@73054.4]
  assign _T_381 = _T_157[28]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@73106.4]
  assign _T_391 = _T_523 & _T_381; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@73116.4]
  assign _T_431 = _T_157[30]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@73158.4]
  assign _T_441 = _T_523 & _T_431; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@73168.4]
  assign _T_478 = {DMCONTROLReg_haltreq,1'h0,1'h0,1'h0,1'h0,1'h0,_T_329}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@73209.4]
  assign _GEN_22 = haltreqWrEn ? DMCONTROLWrData_haltreq : debugIntRegs_0; // @[Debug.scala 560:96:freechips.rocketchip.system.DefaultRV32Config.fir@73413.6]
  assign _T_560 = _T_441 | _T_391; // @[Debug.scala 566:77:freechips.rocketchip.system.DefaultRV32Config.fir@73418.4]
  assign _T_561 = _T_560 | setresethaltreqWrEn; // @[Debug.scala 566:96:freechips.rocketchip.system.DefaultRV32Config.fir@73419.4]
endmodule
`endif // __TLDebugModuleOuter
