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

  wire  TLMonitor_clock;
  wire  TLMonitor_reset;
  wire  TLMonitor_io_in_a_ready;
  wire  TLMonitor_io_in_a_valid;
  wire [2:0] TLMonitor_io_in_a_bits_opcode;
  wire [6:0] TLMonitor_io_in_a_bits_address;
  wire [3:0] TLMonitor_io_in_a_bits_mask;
  wire  TLMonitor_io_in_d_ready;
  wire  TLMonitor_io_in_d_valid;
  wire [2:0] TLMonitor_io_in_d_bits_opcode;
  wire  DMCONTROL_clock;
  wire  DMCONTROL_reset;
  wire [31:0] DMCONTROL_io_d;
  wire [31:0] DMCONTROL_io_q;
  wire  HAWINDOWSELReg_clock;
  wire  HAWINDOWSELReg_reset;
  wire [31:0] HAWINDOWSELReg_io_d;
  wire [31:0] HAWINDOWSELReg_io_q;
  wire  hrmaskReg_clock;
  wire  hrmaskReg_reset;
  wire  hrmaskReg_io_d;
  wire  hrmaskReg_io_q;
  wire  debugInterrupts_clock;
  wire  debugInterrupts_reset;
  wire  debugInterrupts_io_d;
  wire  debugInterrupts_io_q;
  wire  DMCONTROLReg_dmactive;
  wire  DMCONTROLReg_clrresethaltreq;
  wire  DMCONTROLNxt_clrresethaltreq;
  wire  ndmresetWrEn;
  wire  DMCONTROLWrData_ndmreset;
  wire  DMCONTROLReg_ndmreset;
  wire  DMCONTROLNxt_ndmreset;
  wire  dmactiveWrEn;
  wire  DMCONTROLWrData_dmactive;
  wire  DMCONTROLNxt_dmactive;
  wire [9:0] DMCONTROLReg_hartselhi;
  wire [9:0] DMCONTROLNxt_hartselhi;
  wire [1:0] DMCONTROLReg_reserved1;
  wire [1:0] DMCONTROLNxt_reserved1;
  wire  DMCONTROLReg_setresethaltreq;
  wire  DMCONTROLNxt_setresethaltreq;
  wire  DMCONTROLReg_reserved0;
  wire  DMCONTROLNxt_reserved0;
  wire  DMCONTROLReg_hasel;
  wire  DMCONTROLNxt_hasel;
  wire [9:0] DMCONTROLReg_hartsello;
  wire [9:0] DMCONTROLNxt_hartsello;
  wire  DMCONTROLReg_hartreset;
  wire  DMCONTROLNxt_hartreset;
  wire  DMCONTROLReg_ackhavereset;
  wire  DMCONTROLNxt_ackhavereset;
  wire  haltreqWrEn;
  wire  DMCONTROLWrData_haltreq;
  wire  DMCONTROLReg_haltreq;
  wire  DMCONTROLNxt_haltreq;
  wire  DMCONTROLReg_resumereq;
  wire  DMCONTROLNxt_resumereq;
  wire  hrmaskReg_1_0;
  wire  clrresethaltreqWrEn;
  wire  DMCONTROLWrData_clrresethaltreq;
  wire  setresethaltreqWrEn;
  wire  DMCONTROLWrData_setresethaltreq;
  wire  hrmaskNxt_0;
  wire  DMCONTROLWrData_ackhavereset;
  wire  DMCONTROLWrData_resumereq;
  wire  debugIntRegs_0;

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
  wire [7:0] _T_148 = auto_dmi_in_a_bits_mask[0] ? 8'hff : 8'h0;
  wire [7:0] _T_150 = auto_dmi_in_a_bits_mask[1] ? 8'hff : 8'h0;
  wire [7:0] _T_152 = auto_dmi_in_a_bits_mask[2] ? 8'hff : 8'h0;
  wire [7:0] _T_154 = auto_dmi_in_a_bits_mask[3] ? 8'hff : 8'h0;
  wire [31:0] _T_157 = {_T_154,_T_152,_T_150,_T_148};
  wire _T_523 = auto_dmi_in_a_valid & auto_dmi_in_d_ready & !(auto_dmi_in_a_bits_opcode == 3'h4) & (auto_dmi_in_a_bits_address[4:2] == 3'h0);
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

endmodule

