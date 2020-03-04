`include "include_module.v"
`ifdef __TLDebugModuleInner
module TLDebugModuleInner(
  input         clock,
  input         reset,
  output        auto_tl_in_a_ready,
  input         auto_tl_in_a_valid,
  input  [2:0]  auto_tl_in_a_bits_opcode,
  input  [2:0]  auto_tl_in_a_bits_param,
  input  [1:0]  auto_tl_in_a_bits_size,
  input  [9:0]  auto_tl_in_a_bits_source,
  input  [11:0] auto_tl_in_a_bits_address,
  input  [3:0]  auto_tl_in_a_bits_mask,
  input  [31:0] auto_tl_in_a_bits_data,
  input         auto_tl_in_a_bits_corrupt,
  input         auto_tl_in_d_ready,
  output        auto_tl_in_d_valid,
  output [2:0]  auto_tl_in_d_bits_opcode,
  output [1:0]  auto_tl_in_d_bits_size,
  output [9:0]  auto_tl_in_d_bits_source,
  output [31:0] auto_tl_in_d_bits_data,
  output        auto_dmi_in_a_ready,
  input         auto_dmi_in_a_valid,
  input  [2:0]  auto_dmi_in_a_bits_opcode,
  input  [2:0]  auto_dmi_in_a_bits_param,
  input  [1:0]  auto_dmi_in_a_bits_size,
  input         auto_dmi_in_a_bits_source,
  input  [8:0]  auto_dmi_in_a_bits_address,
  input  [3:0]  auto_dmi_in_a_bits_mask,
  input  [31:0] auto_dmi_in_a_bits_data,
  input         auto_dmi_in_a_bits_corrupt,
  input         auto_dmi_in_d_ready,
  output        auto_dmi_in_d_valid,
  output [2:0]  auto_dmi_in_d_bits_opcode,
  output [1:0]  auto_dmi_in_d_bits_size,
  output        auto_dmi_in_d_bits_source,
  output [31:0] auto_dmi_in_d_bits_data,
  input         io_dmactive,
  output        io_innerCtrl_ready,
  input         io_innerCtrl_valid,
  input         io_innerCtrl_bits_resumereq,
  input  [9:0]  io_innerCtrl_bits_hartsel,
  input         io_innerCtrl_bits_ackhavereset,
  input         io_innerCtrl_bits_hrmask_0,
  output        io_hgDebugInt_0
);

  wire  TLMonitor_clock;
  wire  TLMonitor_reset;
  wire  TLMonitor_io_in_a_ready;
  wire  TLMonitor_io_in_a_valid;
  wire [2:0] TLMonitor_io_in_a_bits_opcode;
  wire [2:0] TLMonitor_io_in_a_bits_param;
  wire [1:0] TLMonitor_io_in_a_bits_size;
  wire  TLMonitor_io_in_a_bits_source;
  wire [8:0] TLMonitor_io_in_a_bits_address;
  wire [3:0] TLMonitor_io_in_a_bits_mask;
  wire  TLMonitor_io_in_a_bits_corrupt;
  wire  TLMonitor_io_in_d_ready;
  wire  TLMonitor_io_in_d_valid;
  wire [2:0] TLMonitor_io_in_d_bits_opcode;
  wire [1:0] TLMonitor_io_in_d_bits_size;
  wire  TLMonitor_io_in_d_bits_source;
  wire  TLMonitor_1_clock;
  wire  TLMonitor_1_reset;
  wire  TLMonitor_1_io_in_a_ready;
  wire  TLMonitor_1_io_in_a_valid;
  wire [2:0] TLMonitor_1_io_in_a_bits_opcode;
  wire [2:0] TLMonitor_1_io_in_a_bits_param;
  wire [1:0] TLMonitor_1_io_in_a_bits_size;
  wire [9:0] TLMonitor_1_io_in_a_bits_source;
  wire [11:0] TLMonitor_1_io_in_a_bits_address;
  wire [3:0] TLMonitor_1_io_in_a_bits_mask;
  wire  TLMonitor_1_io_in_a_bits_corrupt;
  wire  TLMonitor_1_io_in_d_ready;
  wire  TLMonitor_1_io_in_d_valid;
  wire [2:0] TLMonitor_1_io_in_d_bits_opcode;
  wire [1:0] TLMonitor_1_io_in_d_bits_size;
  wire [9:0] TLMonitor_1_io_in_d_bits_source;
  reg  haltedBitRegs_0; 
  reg  resumeReqRegs_0;
  reg  haveResetBitRegs_0;
  wire  hamaskWrSel_0;
  reg  hrDebugInt_0;
  reg  hrmaskReg_0;
  wire  resumereq;
  wire  DMSTATUSRdData_anyresumeack;
  wire [31:0] haltedStatus_0;
  wire  haltedSummary;
  wire [31:0] HALTSUM1RdData_haltsum1;
  reg [2:0] ABSTRACTCSReg_cmderr;
  wire  ABSTRACTCSWrEnMaybe;
  reg [1:0] ctrlStateReg;
  wire  ABSTRACTCSWrEnLegal;
  wire  ABSTRACTCSWrEn;
  wire [2:0] ABSTRACTCSWrData_cmderr;
  reg [7:0] COMMANDRdData_cmdtype;
  wire  commandRegIsAccessRegister;
  reg [23:0] COMMANDRdData_control;
  wire  accessRegisterCommandReg_transfer;
  wire  accessRegisterCommandReg_write;
  wire [15:0] accessRegisterCommandReg_regno;
  wire  accessRegIsGPR; 
  wire  commandRegIsUnsupported;
  wire  commandRegBadHaltResume;
  wire  errorHaltResume;
  wire  COMMANDWrEnMaybe;
  wire  COMMANDWrEn;
  wire [31:0] COMMANDWrDataVal;
  wire [7:0] COMMANDWrData_cmdtype;
  wire  commandWrIsAccessRegister;
  wire  wrAccessRegisterCommand;
  wire  dmiAbstractDataWrEnMaybe_0;
  wire  dmiAbstractDataRdEn_0;
  wire  dmiAbstractDataAccessVec_0;
  reg [11:0] ABSTRACTAUTOReg_autoexecdata;
  wire  autoexecData_0;
  wire  dmiProgramBufferWrEnMaybe_0;
  wire  dmiProgramBufferRdEn_0;
  wire  dmiProgramBufferAccessVec_0;
  reg [15:0] ABSTRACTAUTOReg_autoexecprogbuf;
  wire  autoexecProg_0;
  wire  dmiProgramBufferWrEnMaybe_4;
  wire  dmiProgramBufferRdEn_4;
  wire  dmiProgramBufferAccessVec_4;
  wire  autoexecProg_1;
  wire  dmiProgramBufferWrEnMaybe_8;
  wire  dmiProgramBufferRdEn_8;
  wire  dmiProgramBufferAccessVec_8;
  wire  autoexecProg_2;
  wire  dmiProgramBufferWrEnMaybe_12;
  wire  dmiProgramBufferRdEn_12;
  wire  dmiProgramBufferAccessVec_12;
  wire  autoexecProg_3;
  wire  dmiProgramBufferWrEnMaybe_16;
  wire  dmiProgramBufferRdEn_16;
  wire  dmiProgramBufferAccessVec_16;
  wire  autoexecProg_4;
  wire  dmiProgramBufferWrEnMaybe_20;
  wire  dmiProgramBufferRdEn_20;
  wire  dmiProgramBufferAccessVec_20;
  wire  autoexecProg_5;
  wire  dmiProgramBufferWrEnMaybe_24;
  wire  dmiProgramBufferRdEn_24;
  wire  dmiProgramBufferAccessVec_24;
  wire  autoexecProg_6;
  wire  dmiProgramBufferWrEnMaybe_28;
  wire  dmiProgramBufferRdEn_28;
  wire  dmiProgramBufferAccessVec_28;
  wire  autoexecProg_7;
  wire  dmiProgramBufferWrEnMaybe_32;
  wire  dmiProgramBufferRdEn_32;
  wire  dmiProgramBufferAccessVec_32;
  wire  autoexecProg_8;
  wire  dmiProgramBufferWrEnMaybe_36;
  wire  dmiProgramBufferRdEn_36;
  wire  dmiProgramBufferAccessVec_36;
  wire  autoexecProg_9;
  wire  dmiProgramBufferWrEnMaybe_40;
  wire  dmiProgramBufferRdEn_40;
  wire  dmiProgramBufferAccessVec_40;
  wire  autoexecProg_10;
  wire  dmiProgramBufferWrEnMaybe_44;
  wire  dmiProgramBufferRdEn_44;
  wire  dmiProgramBufferAccessVec_44;
  wire  autoexecProg_11;
  wire  dmiProgramBufferWrEnMaybe_48;
  wire  dmiProgramBufferRdEn_48;
  wire  dmiProgramBufferAccessVec_48;
  wire  autoexecProg_12;
  wire  dmiProgramBufferWrEnMaybe_52;
  wire  dmiProgramBufferRdEn_52;
  wire  dmiProgramBufferAccessVec_52;
  wire  autoexecProg_13;
  wire  dmiProgramBufferWrEnMaybe_56;
  wire  dmiProgramBufferRdEn_56;
  wire  dmiProgramBufferAccessVec_56;
  wire  autoexecProg_14;
  wire  dmiProgramBufferWrEnMaybe_60;
  wire  dmiProgramBufferRdEn_60;
  wire  dmiProgramBufferAccessVec_60;
  wire  autoexecProg_15;
  wire  autoexec;
  wire  regAccessRegisterCommand;
  wire  commandWrIsUnsupported;
  wire  errorUnsupported;
  wire  hartExceptionWrEn;
  wire  errorException;
  wire  autoexecdataWrEnMaybe;
  wire  autoexecprogbufWrEnMaybe;
  wire  dmiAbstractDataWrEnMaybe_1;
  wire  dmiAbstractDataRdEn_1;
  wire  dmiAbstractDataAccessVec_1; 
  wire  dmiAbstractDataWrEnMaybe_2;
  wire  dmiAbstractDataRdEn_2;
  wire  dmiAbstractDataAccessVec_2;
  wire  dmiAbstractDataWrEnMaybe_3;
  wire  dmiAbstractDataRdEn_3;
  wire  dmiAbstractDataAccessVec_3;
  wire  dmiAbstractDataAccess;
  wire  dmiProgramBufferWrEnMaybe_1;
  wire  dmiProgramBufferRdEn_1;
  wire  dmiProgramBufferAccessVec_1;
  wire  dmiProgramBufferWrEnMaybe_2;
  wire  dmiProgramBufferRdEn_2;
  wire  dmiProgramBufferAccessVec_2;
  wire  dmiProgramBufferWrEnMaybe_3;
  wire  dmiProgramBufferRdEn_3;
  wire  dmiProgramBufferAccessVec_3;
  wire  dmiProgramBufferWrEnMaybe_5;
  wire  dmiProgramBufferRdEn_5;
  wire  dmiProgramBufferAccessVec_5;
  wire  dmiProgramBufferWrEnMaybe_6;
  wire  dmiProgramBufferRdEn_6;
  wire  dmiProgramBufferAccessVec_6;
  wire  dmiProgramBufferWrEnMaybe_7;
  wire  dmiProgramBufferRdEn_7;
  wire  dmiProgramBufferAccessVec_7;
  wire  dmiProgramBufferWrEnMaybe_9;
  wire  dmiProgramBufferRdEn_9;
  wire  dmiProgramBufferAccessVec_9;
  wire  dmiProgramBufferWrEnMaybe_10;
  wire  dmiProgramBufferRdEn_10;
  wire  dmiProgramBufferAccessVec_10;
  wire  dmiProgramBufferWrEnMaybe_11;
  wire  dmiProgramBufferRdEn_11;
  wire  dmiProgramBufferAccessVec_11;
  wire  dmiProgramBufferWrEnMaybe_13;
  wire  dmiProgramBufferRdEn_13;
  wire  dmiProgramBufferAccessVec_13;
  wire  dmiProgramBufferWrEnMaybe_14;
  wire  dmiProgramBufferRdEn_14;
  wire  dmiProgramBufferAccessVec_14;
  wire  dmiProgramBufferWrEnMaybe_15;
  wire  dmiProgramBufferRdEn_15;
  wire  dmiProgramBufferAccessVec_15;
  wire  dmiProgramBufferWrEnMaybe_17;
  wire  dmiProgramBufferRdEn_17;
  wire  dmiProgramBufferAccessVec_17;
  wire  dmiProgramBufferWrEnMaybe_18; 
  wire  dmiProgramBufferRdEn_18;
  wire  dmiProgramBufferAccessVec_18;
  wire  dmiProgramBufferWrEnMaybe_19;
  wire  dmiProgramBufferRdEn_19;
  wire  dmiProgramBufferAccessVec_19;
  wire  dmiProgramBufferWrEnMaybe_21;
  wire  dmiProgramBufferRdEn_21;
  wire  dmiProgramBufferAccessVec_21;
  wire  dmiProgramBufferWrEnMaybe_22;
  wire  dmiProgramBufferRdEn_22;
  wire  dmiProgramBufferAccessVec_22;
  wire  dmiProgramBufferWrEnMaybe_23;
  wire  dmiProgramBufferRdEn_23;
  wire  dmiProgramBufferAccessVec_23;
  wire  dmiProgramBufferWrEnMaybe_25;
  wire  dmiProgramBufferRdEn_25;
  wire  dmiProgramBufferAccessVec_25;
  wire  dmiProgramBufferWrEnMaybe_26;
  wire  dmiProgramBufferRdEn_26; 
  wire  dmiProgramBufferAccessVec_26;
  wire  dmiProgramBufferWrEnMaybe_27;
  wire  dmiProgramBufferRdEn_27;
  wire  dmiProgramBufferAccessVec_27;
  wire  dmiProgramBufferWrEnMaybe_29;
  wire  dmiProgramBufferRdEn_29;
  wire  dmiProgramBufferAccessVec_29;
  wire  dmiProgramBufferWrEnMaybe_30;
  wire  dmiProgramBufferRdEn_30;
  wire  dmiProgramBufferAccessVec_30;
  wire  dmiProgramBufferWrEnMaybe_31;
  wire  dmiProgramBufferRdEn_31;
  wire  dmiProgramBufferAccessVec_31;
  wire  dmiProgramBufferWrEnMaybe_33;
  wire  dmiProgramBufferRdEn_33;
  wire  dmiProgramBufferAccessVec_33;
  wire  dmiProgramBufferWrEnMaybe_34;
  wire  dmiProgramBufferRdEn_34;
  wire  dmiProgramBufferAccessVec_34;
  wire  dmiProgramBufferWrEnMaybe_35;
  wire  dmiProgramBufferRdEn_35;
  wire  dmiProgramBufferAccessVec_35;
  wire  dmiProgramBufferWrEnMaybe_37;
  wire  dmiProgramBufferRdEn_37;
  wire  dmiProgramBufferAccessVec_37;
  wire  dmiProgramBufferWrEnMaybe_38;
  wire  dmiProgramBufferRdEn_38;
  wire  dmiProgramBufferAccessVec_38;
  wire  dmiProgramBufferWrEnMaybe_39;
  wire  dmiProgramBufferRdEn_39;
  wire  dmiProgramBufferAccessVec_39;
  wire  dmiProgramBufferWrEnMaybe_41;
  wire  dmiProgramBufferRdEn_41;
  wire  dmiProgramBufferAccessVec_41;
  wire  dmiProgramBufferWrEnMaybe_42;
  wire  dmiProgramBufferRdEn_42;
  wire  dmiProgramBufferAccessVec_42;
  wire  dmiProgramBufferWrEnMaybe_43;
  wire  dmiProgramBufferRdEn_43;
  wire  dmiProgramBufferAccessVec_43;
  wire  dmiProgramBufferWrEnMaybe_45;
  wire  dmiProgramBufferRdEn_45;
  wire  dmiProgramBufferAccessVec_45;
  wire  dmiProgramBufferWrEnMaybe_46;
  wire  dmiProgramBufferRdEn_46;
  wire  dmiProgramBufferAccessVec_46;
  wire  dmiProgramBufferWrEnMaybe_47;
  wire  dmiProgramBufferRdEn_47;
  wire  dmiProgramBufferAccessVec_47;
  wire  dmiProgramBufferWrEnMaybe_49;
  wire  dmiProgramBufferRdEn_49;
  wire  dmiProgramBufferAccessVec_49;
  wire  dmiProgramBufferWrEnMaybe_50;
  wire  dmiProgramBufferRdEn_50;
  wire  dmiProgramBufferAccessVec_50;
  wire  dmiProgramBufferWrEnMaybe_51;
  wire  dmiProgramBufferRdEn_51;
  wire  dmiProgramBufferAccessVec_51;
  wire  dmiProgramBufferWrEnMaybe_53;
  wire  dmiProgramBufferRdEn_53;
  wire  dmiProgramBufferAccessVec_53;
  wire  dmiProgramBufferWrEnMaybe_54;
  wire  dmiProgramBufferRdEn_54;
  wire  dmiProgramBufferAccessVec_54;
  wire  dmiProgramBufferWrEnMaybe_55;
  wire  dmiProgramBufferRdEn_55;
  wire  dmiProgramBufferAccessVec_55;
  wire  dmiProgramBufferWrEnMaybe_57;
  wire  dmiProgramBufferRdEn_57;
  wire  dmiProgramBufferAccessVec_57;
  wire  dmiProgramBufferWrEnMaybe_58;
  wire  dmiProgramBufferRdEn_58;
  wire  dmiProgramBufferAccessVec_58;
  wire  dmiProgramBufferWrEnMaybe_59;
  wire  dmiProgramBufferRdEn_59;
  wire  dmiProgramBufferAccessVec_59;
  wire  dmiProgramBufferWrEnMaybe_61;
  wire  dmiProgramBufferRdEn_61;
  wire  dmiProgramBufferAccessVec_61;
  wire  dmiProgramBufferWrEnMaybe_62;
  wire  dmiProgramBufferRdEn_62;
  wire  dmiProgramBufferAccessVec_62;
  wire  dmiProgramBufferWrEnMaybe_63;
  wire  dmiProgramBufferRdEn_63;
  wire  dmiProgramBufferAccessVec_63;
  wire  dmiProgramBufferAccess;
  wire  errorBusy;
  wire [15:0] ABSTRACTAUTOWrData_autoexecprogbuf; 
  wire [11:0] ABSTRACTAUTOWrData_autoexecdata;
  wire [23:0] COMMANDWrData_control;
  reg [7:0] abstractDataMem_0;
  reg [7:0] abstractDataMem_1;
  reg [7:0] abstractDataMem_2;
  reg [7:0] abstractDataMem_3;
  reg [7:0] programBufferMem_0;
  reg [7:0] programBufferMem_1;
  reg [7:0] programBufferMem_2;
  reg [7:0] programBufferMem_3; 
  reg [7:0] programBufferMem_4;
  reg [7:0] programBufferMem_5;
  reg [7:0] programBufferMem_6;
  reg [7:0] programBufferMem_7;
  reg [7:0] programBufferMem_8;
  reg [7:0] programBufferMem_9;
  reg [7:0] programBufferMem_10;
  reg [7:0] programBufferMem_11;
  reg [7:0] programBufferMem_12;
  reg [7:0] programBufferMem_13;
  reg [7:0] programBufferMem_14;
  reg [7:0] programBufferMem_15;
  reg [7:0] programBufferMem_16;
  reg [7:0] programBufferMem_17;
  reg [7:0] programBufferMem_18;
  reg [7:0] programBufferMem_19;
  reg [7:0] programBufferMem_20;
  reg [7:0] programBufferMem_21;
  reg [7:0] programBufferMem_22;
  reg [7:0] programBufferMem_23;
  reg [7:0] programBufferMem_24;
  reg [7:0] programBufferMem_25;
  reg [7:0] programBufferMem_26;
  reg [7:0] programBufferMem_27;
  reg [7:0] programBufferMem_28;
  reg [7:0] programBufferMem_29;
  reg [7:0] programBufferMem_30;
  reg [7:0] programBufferMem_31;
  reg [7:0] programBufferMem_32;
  reg [7:0] programBufferMem_33;
  reg [7:0] programBufferMem_34;
  reg [7:0] programBufferMem_35;
  reg [7:0] programBufferMem_36;
  reg [7:0] programBufferMem_37;
  reg [7:0] programBufferMem_38;
  reg [7:0] programBufferMem_39;
  reg [7:0] programBufferMem_40;
  reg [7:0] programBufferMem_41;
  reg [7:0] programBufferMem_42;
  reg [7:0] programBufferMem_43;
  reg [7:0] programBufferMem_44;
  reg [7:0] programBufferMem_45;
  reg [7:0] programBufferMem_46;
  reg [7:0] programBufferMem_47;
  reg [7:0] programBufferMem_48;
  reg [7:0] programBufferMem_49;
  reg [7:0] programBufferMem_50;
  reg [7:0] programBufferMem_51;
  reg [7:0] programBufferMem_52;
  reg [7:0] programBufferMem_53;
  reg [7:0] programBufferMem_54;
  reg [7:0] programBufferMem_55;
  reg [7:0] programBufferMem_56;
  reg [7:0] programBufferMem_57;
  reg [7:0] programBufferMem_58;
  reg [7:0] programBufferMem_59;
  reg [7:0] programBufferMem_60;
  reg [7:0] programBufferMem_61;
  reg [7:0] programBufferMem_62;
  reg [7:0] programBufferMem_63;
  wire [9:0] hartHaltedId;
  wire  hartResumingWrEn;
  wire  hartHaltedWrEn;
  wire  abstractCommandBusy;
  reg  goReg;
  wire  hartGoingWrEn;
  wire  goAbstract;
  wire  accessRegisterCommandReg_postexec;
  wire [2:0] accessRegisterCommandReg_size;
  reg [31:0] abstractGeneratedMem_0;
  reg [31:0] abstractGeneratedMem_1;
  wire [4:0] abstractGeneratedI_rd;

  TLMonitor_37 TLMonitor (
    .clock(TLMonitor_clock),
    .reset(TLMonitor_reset),
    .io_in_a_ready(TLMonitor_io_in_a_ready),
    .io_in_a_valid(TLMonitor_io_in_a_valid),
    .io_in_a_bits_opcode(TLMonitor_io_in_a_bits_opcode),
    .io_in_a_bits_param(TLMonitor_io_in_a_bits_param),
    .io_in_a_bits_size(TLMonitor_io_in_a_bits_size),
    .io_in_a_bits_source(TLMonitor_io_in_a_bits_source),
    .io_in_a_bits_address(TLMonitor_io_in_a_bits_address),
    .io_in_a_bits_mask(TLMonitor_io_in_a_bits_mask),
    .io_in_a_bits_corrupt(TLMonitor_io_in_a_bits_corrupt),
    .io_in_d_ready(TLMonitor_io_in_d_ready),
    .io_in_d_valid(TLMonitor_io_in_d_valid),
    .io_in_d_bits_opcode(TLMonitor_io_in_d_bits_opcode),
    .io_in_d_bits_size(TLMonitor_io_in_d_bits_size),
    .io_in_d_bits_source(TLMonitor_io_in_d_bits_source)
  );
  TLMonitor_38 TLMonitor_1 (
    .clock(TLMonitor_1_clock),
    .reset(TLMonitor_1_reset),
    .io_in_a_ready(TLMonitor_1_io_in_a_ready),
    .io_in_a_valid(TLMonitor_1_io_in_a_valid),
    .io_in_a_bits_opcode(TLMonitor_1_io_in_a_bits_opcode),
    .io_in_a_bits_param(TLMonitor_1_io_in_a_bits_param),
    .io_in_a_bits_size(TLMonitor_1_io_in_a_bits_size),
    .io_in_a_bits_source(TLMonitor_1_io_in_a_bits_source),
    .io_in_a_bits_address(TLMonitor_1_io_in_a_bits_address),
    .io_in_a_bits_mask(TLMonitor_1_io_in_a_bits_mask),
    .io_in_a_bits_corrupt(TLMonitor_1_io_in_a_bits_corrupt),
    .io_in_d_ready(TLMonitor_1_io_in_d_ready),
    .io_in_d_valid(TLMonitor_1_io_in_d_valid),
    .io_in_d_bits_opcode(TLMonitor_1_io_in_d_bits_opcode),
    .io_in_d_bits_size(TLMonitor_1_io_in_d_bits_size),
    .io_in_d_bits_source(TLMonitor_1_io_in_d_bits_source)
  );

`define MY_ASSIGNMENT
`ifdef MY_ASSIGNMENT
  assign hamaskWrSel_0 = io_innerCtrl_bits_hartsel == 10'h0;

  wire _T_15 = io_innerCtrl_ready & io_innerCtrl_valid;
  assign resumereq = _T_15 & io_innerCtrl_bits_resumereq;

  assign DMSTATUSRdData_anyresumeack = resumeReqRegs_0 == 1'h0;

  assign haltedStatus_0 = {{31'd0}, haltedBitRegs_0};
  assign haltedSummary = haltedStatus_0 != 32'h0;

  assign HALTSUM1RdData_haltsum1 = {{31'd0}, haltedSummary};

  wire _T_440 = auto_dmi_in_a_bits_opcode == 3'h4;
  wire _T_450 = (auto_dmi_in_a_bits_address[8:2] & 7'h50) == 7'h10;
  wire [7:0] _T_520 = auto_dmi_in_a_bits_mask[0] ? 8'hff : 8'h0;
  wire [7:0] _T_522 = auto_dmi_in_a_bits_mask[1] ? 8'hff : 8'h0;
  wire [7:0] _T_524 = auto_dmi_in_a_bits_mask[2] ? 8'hff : 8'h0;
  wire [7:0] _T_526 = auto_dmi_in_a_bits_mask[3] ? 8'hff : 8'h0;
  wire [31:0] _T_529 = {_T_526,_T_524,_T_522,_T_520};
  wire [4:0] _T_3117 = {auto_dmi_in_a_bits_address[7]
		,auto_dmi_in_a_bits_address[5]
		,auto_dmi_in_a_bits_address[4]
		,auto_dmi_in_a_bits_address[3]
		,auto_dmi_in_a_bits_address[2]};
  wire [31:0] _T_3162 = 32'h1 << _T_3117;
  wire _T_3691 = auto_dmi_in_a_valid & auto_dmi_in_d_ready;
  wire _T_3693 = _T_3691 & !_T_440;
  assign ABSTRACTCSWrEnMaybe = _T_3693 & _T_3162[6] & _T_450 & (_T_529[10:8] == 3'h7);
  assign ABSTRACTCSWrEnLegal = ctrlStateReg == 2'h0;
  assign ABSTRACTCSWrEn = ABSTRACTCSWrEnMaybe & ABSTRACTCSWrEnLegal;
  assign ABSTRACTCSWrData_cmderr = auto_dmi_in_a_bits_data[10:8];

  assign commandRegIsAccessRegister = COMMANDRdData_cmdtype == 8'h0;

  wire [31:0] _T_4104 = {COMMANDRdData_cmdtype,COMMANDRdData_control};
  assign accessRegisterCommandReg_transfer = _T_4104[17];
  assign accessRegisterCommandReg_write = _T_4104[16];
  assign accessRegisterCommandReg_regno = _T_4104[15:0];
  assign accessRegIsGPR = (accessRegisterCommandReg_regno >= 16'h1000) & (accessRegisterCommandReg_regno <= 16'h101f);

  wire _GEN_2691 = (!accessRegisterCommandReg_transfer | accessRegIsGPR) ? 1'h0 : 1'h1;
  assign commandRegIsUnsupported = commandRegIsAccessRegister ? _GEN_2691 : 1'h1;
  assign commandRegBadHaltResume = commandRegIsAccessRegister & (!accessRegisterCommandReg_transfer | accessRegIsGPR) & (~ haltedBitRegs_0);

  wire _GEN_2708 = commandRegIsUnsupported ? 1'h0 : commandRegBadHaltResume;
  wire _T_19708 = ctrlStateReg == 2'h1;
  assign errorHaltResume = ABSTRACTCSWrEnLegal ? 1'h0 : (_T_19708 & _GEN_2708);

  assign COMMANDWrEnMaybe = _T_3693 & _T_3162[7] & _T_450 & (_T_529 == 32'hffffffff);
  assign COMMANDWrEn = COMMANDWrEnMaybe & ABSTRACTCSWrEnLegal;
  assign COMMANDWrDataVal = COMMANDWrEnMaybe ? auto_dmi_in_a_bits_data : 32'h0;
  assign COMMANDWrData_cmdtype = COMMANDWrDataVal[31:24];

  assign commandWrIsAccessRegister = COMMANDWrData_cmdtype == 8'h0;

  assign wrAccessRegisterCommand = COMMANDWrEn & commandWrIsAccessRegister & (ABSTRACTCSReg_cmderr == 3'h0);

  wire _T_494 = (auto_dmi_in_a_bits_address[8:2] & 7'h50) == 7'h0;
  wire _T_2918 = _T_529[7:0] == 8'hff;
  wire _T_3716 = _T_3693 & _T_3162[4] & _T_494;
  assign dmiAbstractDataWrEnMaybe_0 = _T_3716 & _T_2918;
  wire _T_2916 = _T_529[7:0] != 8'h0;
  wire _T_3527 = _T_3691 & _T_440;
  wire _T_3550 = _T_3527 & _T_3162[4] & _T_494;
  assign dmiAbstractDataRdEn_0 = _T_3550 & _T_2916;
  assign dmiAbstractDataAccessVec_0 = dmiAbstractDataWrEnMaybe_0 | dmiAbstractDataRdEn_0;

  assign autoexecData_0 = dmiAbstractDataAccessVec_0 & ABSTRACTAUTOReg_autoexecdata[0];

  wire _T_3776 = _T_3693 & _T_3162[16] & _T_494;
  assign dmiProgramBufferWrEnMaybe_0 = _T_3776 & _T_2918;
  wire _T_3610 = _T_3527 & _T_3162[16] & _T_494;
  assign dmiProgramBufferRdEn_0 = _T_3610 & _T_2916;
  assign dmiProgramBufferAccessVec_0 = dmiProgramBufferWrEnMaybe_0 | dmiProgramBufferRdEn_0;

  assign autoexecProg_0 = dmiProgramBufferAccessVec_0 & ABSTRACTAUTOReg_autoexecprogbuf[0];

  wire _T_3781 = _T_3693 & _T_3162[17] & _T_494;
  assign dmiProgramBufferWrEnMaybe_4 = _T_3781 & _T_2918;
  wire _T_3615 = _T_3527 & _T_3162[17] & _T_494;
  assign dmiProgramBufferRdEn_4 = _T_3615 & _T_2916;
  assign dmiProgramBufferAccessVec_4 = dmiProgramBufferWrEnMaybe_4 | dmiProgramBufferRdEn_4;

  assign autoexecProg_1 = dmiProgramBufferAccessVec_4 & ABSTRACTAUTOReg_autoexecprogbuf[1];

  wire _T_3786 = _T_3693 & _T_3162[18] & _T_494;
  assign dmiProgramBufferWrEnMaybe_8 = _T_3786 & _T_2918;
  wire _T_3620 = _T_3527 & _T_3162[18] & _T_494;
  assign dmiProgramBufferRdEn_8 = _T_3620 & _T_2916;
  assign dmiProgramBufferAccessVec_8 = dmiProgramBufferWrEnMaybe_8 | dmiProgramBufferRdEn_8;

  assign autoexecProg_2 = dmiProgramBufferAccessVec_8 & ABSTRACTAUTOReg_autoexecprogbuf[2];

  wire _T_3791 = _T_3693 & _T_3162[19] & _T_494;
  assign dmiProgramBufferWrEnMaybe_12 = _T_3791 & _T_2918;
  wire _T_3625 = _T_3527 & _T_3162[19] & _T_494;
  assign dmiProgramBufferRdEn_12 = _T_3625 & _T_2916;
  assign dmiProgramBufferAccessVec_12 = dmiProgramBufferWrEnMaybe_12 | dmiProgramBufferRdEn_12;

  assign autoexecProg_3 = dmiProgramBufferAccessVec_12 & ABSTRACTAUTOReg_autoexecprogbuf[3];

  wire _T_3796 = _T_3693 & _T_3162[20] & _T_494;
  assign dmiProgramBufferWrEnMaybe_16 = _T_3796 & _T_2918;
  wire _T_3630 = _T_3527 & _T_3162[20] & _T_494;
  assign dmiProgramBufferRdEn_16 = _T_3630 & _T_2916;
  assign dmiProgramBufferAccessVec_16 = dmiProgramBufferWrEnMaybe_16 | dmiProgramBufferRdEn_16;

  assign autoexecProg_4 = dmiProgramBufferAccessVec_16 & ABSTRACTAUTOReg_autoexecprogbuf[4];

  wire _T_3801 = _T_3693 & _T_3162[21] & _T_494;
  assign dmiProgramBufferWrEnMaybe_20 = _T_3801 & _T_2918;
  wire _T_3635 = _T_3527 & _T_3162[21] & _T_494;
  assign dmiProgramBufferRdEn_20 = _T_3635 & _T_2916;
  assign dmiProgramBufferAccessVec_20 = dmiProgramBufferWrEnMaybe_20 | dmiProgramBufferRdEn_20;

  assign autoexecProg_5 = dmiProgramBufferAccessVec_20 & ABSTRACTAUTOReg_autoexecprogbuf[5];

  wire _T_3806 = _T_3693 & _T_3162[22] & _T_494;
  assign dmiProgramBufferWrEnMaybe_24 = _T_3806 & _T_2918;
  wire _T_3640 = _T_3527 & _T_3162[22] & _T_494;
  assign dmiProgramBufferRdEn_24 = _T_3640 & _T_2916;
  assign dmiProgramBufferAccessVec_24 = dmiProgramBufferWrEnMaybe_24 | dmiProgramBufferRdEn_24;

  assign autoexecProg_6 = dmiProgramBufferAccessVec_24 & ABSTRACTAUTOReg_autoexecprogbuf[6];

  wire _T_3811 = _T_3693 & _T_3162[23] & _T_494;
  assign dmiProgramBufferWrEnMaybe_28 = _T_3811 & _T_2918;
  wire _T_3645 = _T_3527 & _T_3162[23] & _T_494;
  assign dmiProgramBufferRdEn_28 = _T_3645 & _T_2916;
  assign dmiProgramBufferAccessVec_28 = dmiProgramBufferWrEnMaybe_28 | dmiProgramBufferRdEn_28;

  assign autoexecProg_7 = dmiProgramBufferAccessVec_28 & ABSTRACTAUTOReg_autoexecprogbuf[7];

  wire _T_3816 = _T_3693 & _T_3162[24] & _T_494;
  assign dmiProgramBufferWrEnMaybe_32 = _T_3816 & _T_2918;
  wire _T_3650 = _T_3527 & _T_3162[24] & _T_494;
  assign dmiProgramBufferRdEn_32 = _T_3650 & _T_2916;
  assign dmiProgramBufferAccessVec_32 = dmiProgramBufferWrEnMaybe_32 | dmiProgramBufferRdEn_32;

  assign autoexecProg_8 = dmiProgramBufferAccessVec_32 & ABSTRACTAUTOReg_autoexecprogbuf[8];

  wire _T_3821 = _T_3693 & _T_3162[25] & _T_494;
  assign dmiProgramBufferWrEnMaybe_36 = _T_3821 & _T_2918;
  wire _T_3655 = _T_3527 & _T_3162[25] & _T_494;
  assign dmiProgramBufferRdEn_36 = _T_3655 & _T_2916;
  assign dmiProgramBufferAccessVec_36 = dmiProgramBufferWrEnMaybe_36 | dmiProgramBufferRdEn_36;

  assign autoexecProg_9 = dmiProgramBufferAccessVec_36 & ABSTRACTAUTOReg_autoexecprogbuf[9];

  wire _T_3826 = _T_3693 & _T_3162[26] & _T_494;
  assign dmiProgramBufferWrEnMaybe_40 = _T_3826 & _T_2918;
  wire _T_3660 = _T_3527 & _T_3162[26] & _T_494;
  assign dmiProgramBufferRdEn_40 = _T_3660 & _T_2916;
  assign dmiProgramBufferAccessVec_40 = dmiProgramBufferWrEnMaybe_40 | dmiProgramBufferRdEn_40;

  assign autoexecProg_10 = dmiProgramBufferAccessVec_40 & ABSTRACTAUTOReg_autoexecprogbuf[10];

  wire _T_3831 = _T_3693 & _T_3162[27] & _T_494;
  assign dmiProgramBufferWrEnMaybe_44 = _T_3831 & _T_2918;
  wire _T_3665 = _T_3527 & _T_3162[27] & _T_494;
  assign dmiProgramBufferRdEn_44 = _T_3665 & _T_2916;
  assign dmiProgramBufferAccessVec_44 = dmiProgramBufferWrEnMaybe_44 | dmiProgramBufferRdEn_44;

  assign autoexecProg_11 = dmiProgramBufferAccessVec_44 & ABSTRACTAUTOReg_autoexecprogbuf[11];

  wire _T_3836 = _T_3693 & _T_3162[28] & _T_494;
  assign dmiProgramBufferWrEnMaybe_48 = _T_3836 & _T_2918;
  wire _T_3670 = _T_3527 & _T_3162[28] & _T_494;
  assign dmiProgramBufferRdEn_48 = _T_3670 & _T_2916;
  assign dmiProgramBufferAccessVec_48 = dmiProgramBufferWrEnMaybe_48 | dmiProgramBufferRdEn_48;

  assign autoexecProg_12 = dmiProgramBufferAccessVec_48 & ABSTRACTAUTOReg_autoexecprogbuf[12];

  wire _T_3841 = _T_3693 & _T_3162[29] & _T_494;
  assign dmiProgramBufferWrEnMaybe_52 = _T_3841 & _T_2918;
  wire _T_3675 = _T_3527 & _T_3162[29] & _T_494;
  assign dmiProgramBufferRdEn_52 = _T_3675 & _T_2916;
  assign dmiProgramBufferAccessVec_52 = dmiProgramBufferWrEnMaybe_52 | dmiProgramBufferRdEn_52;

  assign autoexecProg_13 = dmiProgramBufferAccessVec_52 & ABSTRACTAUTOReg_autoexecprogbuf[13];

  wire _T_3846 = _T_3693 & _T_3162[30] & _T_494;
  assign dmiProgramBufferWrEnMaybe_56 = _T_3846 & _T_2918;
  wire _T_3680 = _T_3527 & _T_3162[30] & _T_494;
  assign dmiProgramBufferRdEn_56 = _T_3680 & _T_2916;
  assign dmiProgramBufferAccessVec_56 = dmiProgramBufferWrEnMaybe_56 | dmiProgramBufferRdEn_56;

  assign autoexecProg_14 = dmiProgramBufferAccessVec_56 & ABSTRACTAUTOReg_autoexecprogbuf[14];

  wire _T_3851 = _T_3693 & _T_3162[31] & _T_494;
  assign dmiProgramBufferWrEnMaybe_60 = _T_3851 & _T_2918;
  wire _T_3685 = _T_3527 & _T_3162[31] & _T_494;
  assign dmiProgramBufferRdEn_60 = _T_3685 & _T_2916;
  assign dmiProgramBufferAccessVec_60 = dmiProgramBufferWrEnMaybe_60 | dmiProgramBufferRdEn_60;

  assign autoexecProg_15 = dmiProgramBufferAccessVec_60 & ABSTRACTAUTOReg_autoexecprogbuf[15];

  assign autoexec = autoexecData_0 
		| autoexecProg_0 
		| autoexecProg_1 
		| autoexecProg_2 
		| autoexecProg_3 
		| autoexecProg_4 
		| autoexecProg_5 
		| autoexecProg_6 
		| autoexecProg_7 
		| autoexecProg_8 
		| autoexecProg_9 
		| autoexecProg_10 
		| autoexecProg_11 
		| autoexecProg_12 
		| autoexecProg_13 
		| autoexecProg_14 
		| autoexecProg_15;

  assign regAccessRegisterCommand = autoexec & commandRegIsAccessRegister & (ABSTRACTCSReg_cmderr == 3'h0);

  assign commandWrIsUnsupported = COMMANDWrEn & !commandWrIsAccessRegister;

  wire _T_19706 = wrAccessRegisterCommand | regAccessRegisterCommand;
  wire _GEN_2700 = _T_19706 ? 1'h0 : (commandWrIsUnsupported | (autoexec & commandRegIsUnsupported));
  assign errorUnsupported = ABSTRACTCSWrEnLegal ? _GEN_2700 : (_T_19708 & commandRegIsUnsupported);

  wire [8:0] _T_8253 = {	auto_tl_in_a_bits_address[11]
			,auto_tl_in_a_bits_address[9]
			,auto_tl_in_a_bits_address[8]
			,auto_tl_in_a_bits_address[7]
			,auto_tl_in_a_bits_address[6]
			,auto_tl_in_a_bits_address[5]
			,auto_tl_in_a_bits_address[4]
			,auto_tl_in_a_bits_address[3]
			,auto_tl_in_a_bits_address[2]
			};
  wire [511:0] _T_8785 = 512'h1 << _T_8253;
  wire _T_4169 = auto_tl_in_a_bits_opcode == 3'h4;
  wire _T_16996 = auto_tl_in_a_valid & auto_tl_in_d_ready & !_T_4169;
  wire _T_4261 = (auto_tl_in_a_bits_address[11:2] & 10'h100) == 10'h0;
  wire [7:0] _T_4293 = auto_tl_in_a_bits_mask[0] ? 8'hff : 8'h0;
  wire [7:0] _T_4295 = auto_tl_in_a_bits_mask[1] ? 8'hff : 8'h0;
  wire [7:0] _T_4297 = auto_tl_in_a_bits_mask[2] ? 8'hff : 8'h0;
  wire [7:0] _T_4299 = auto_tl_in_a_bits_mask[3] ? 8'hff : 8'h0;
  wire [31:0] _T_4302 = {_T_4299,_T_4297,_T_4295,_T_4293};
  wire _T_7315 = _T_4302[9:0] == 10'h3ff;
  assign hartExceptionWrEn = _T_16996 & _T_8785[67] & _T_4261 & _T_7315;

  wire _T_19709 = ctrlStateReg == 2'h2;
  assign errorException = ABSTRACTCSWrEnLegal ? 1'h0 
			: _T_19708 ? 1'h0 
			: (_T_19709 & hartExceptionWrEn);

  assign autoexecdataWrEnMaybe = _T_3693 & _T_3162[8] & _T_450 & _T_529[0];
  assign autoexecprogbufWrEnMaybe = _T_3693 & _T_3162[8] & _T_450 & (_T_529[31:16] == 16'hffff);

  wire _T_2941 = _T_529[15:8] == 8'hff;
  assign dmiAbstractDataWrEnMaybe_1 = _T_3716 & _T_2941;
  wire _T_2939 = _T_529[15:8] != 8'h0;
  assign dmiAbstractDataRdEn_1 = _T_3550 & _T_2939;
  assign dmiAbstractDataAccessVec_1 = dmiAbstractDataWrEnMaybe_1 | dmiAbstractDataRdEn_1;
  wire _T_2966 = _T_529[23:16] == 8'hff;
  assign dmiAbstractDataWrEnMaybe_2 = _T_3716 & _T_2966;
  wire _T_2964 = _T_529[23:16] != 8'h0;
  assign dmiAbstractDataRdEn_2 = _T_3550 & _T_2964;
  assign dmiAbstractDataAccessVec_2 = dmiAbstractDataWrEnMaybe_2 | dmiAbstractDataRdEn_2;
  wire _T_2991 = _T_529[31:24] == 8'hff;
  assign dmiAbstractDataWrEnMaybe_3 = _T_3716 & _T_2991;
  wire _T_2989 = _T_529[31:24] != 8'h0;
  assign dmiAbstractDataRdEn_3 = _T_3550 & _T_2989;
  assign dmiAbstractDataAccessVec_3 = dmiAbstractDataWrEnMaybe_3 | dmiAbstractDataRdEn_3;
  assign dmiAbstractDataAccess = dmiAbstractDataAccessVec_0 
				| dmiAbstractDataAccessVec_1 
				| dmiAbstractDataAccessVec_2 
				| dmiAbstractDataAccessVec_3;

  assign dmiProgramBufferWrEnMaybe_1 = _T_3776 & _T_2941;
  assign dmiProgramBufferRdEn_1 = _T_3610 & _T_2939;
  assign dmiProgramBufferAccessVec_1 = dmiProgramBufferWrEnMaybe_1 | dmiProgramBufferRdEn_1;
  assign dmiProgramBufferWrEnMaybe_2 = _T_3776 & _T_2966;
  assign dmiProgramBufferRdEn_2 = _T_3610 & _T_2964;
  assign dmiProgramBufferAccessVec_2 = dmiProgramBufferWrEnMaybe_2 | dmiProgramBufferRdEn_2;
  assign dmiProgramBufferWrEnMaybe_3 = _T_3776 & _T_2991;
  assign dmiProgramBufferRdEn_3 = _T_3610 & _T_2989;
  assign dmiProgramBufferAccessVec_3 = dmiProgramBufferWrEnMaybe_3 | dmiProgramBufferRdEn_3;
  assign dmiProgramBufferWrEnMaybe_5 = _T_3781 & _T_2941;
  assign dmiProgramBufferRdEn_5 = _T_3615 & _T_2939;
  assign dmiProgramBufferAccessVec_5 = dmiProgramBufferWrEnMaybe_5 | dmiProgramBufferRdEn_5;
  assign dmiProgramBufferWrEnMaybe_6 = _T_3781 & _T_2966;
  assign dmiProgramBufferRdEn_6 = _T_3615 & _T_2964;
  assign dmiProgramBufferAccessVec_6 = dmiProgramBufferWrEnMaybe_6 | dmiProgramBufferRdEn_6;
  assign dmiProgramBufferWrEnMaybe_7 = _T_3781 & _T_2991;
  assign dmiProgramBufferRdEn_7 = _T_3615 & _T_2989;
  assign dmiProgramBufferAccessVec_7 = dmiProgramBufferWrEnMaybe_7 | dmiProgramBufferRdEn_7;
  assign dmiProgramBufferWrEnMaybe_9 = _T_3786 & _T_2941;
  assign dmiProgramBufferRdEn_9 = _T_3620 & _T_2939;
  assign dmiProgramBufferAccessVec_9 = dmiProgramBufferWrEnMaybe_9 | dmiProgramBufferRdEn_9;
  assign dmiProgramBufferWrEnMaybe_10 = _T_3786 & _T_2966;
  assign dmiProgramBufferRdEn_10 = _T_3620 & _T_2964;
  assign dmiProgramBufferAccessVec_10 = dmiProgramBufferWrEnMaybe_10 | dmiProgramBufferRdEn_10;
  assign dmiProgramBufferWrEnMaybe_11 = _T_3786 & _T_2991;
  assign dmiProgramBufferRdEn_11 = _T_3620 & _T_2989;
  assign dmiProgramBufferAccessVec_11 = dmiProgramBufferWrEnMaybe_11 | dmiProgramBufferRdEn_11;
  assign dmiProgramBufferWrEnMaybe_13 = _T_3791 & _T_2941;
  assign dmiProgramBufferRdEn_13 = _T_3625 & _T_2939;
  assign dmiProgramBufferAccessVec_13 = dmiProgramBufferWrEnMaybe_13 | dmiProgramBufferRdEn_13;
  assign dmiProgramBufferWrEnMaybe_14 = _T_3791 & _T_2966;
  assign dmiProgramBufferRdEn_14 = _T_3625 & _T_2964;
  assign dmiProgramBufferAccessVec_14 = dmiProgramBufferWrEnMaybe_14 | dmiProgramBufferRdEn_14;
  assign dmiProgramBufferWrEnMaybe_15 = _T_3791 & _T_2991;
  assign dmiProgramBufferRdEn_15 = _T_3625 & _T_2989;
  assign dmiProgramBufferAccessVec_15 = dmiProgramBufferWrEnMaybe_15 | dmiProgramBufferRdEn_15;
  assign dmiProgramBufferWrEnMaybe_17 = _T_3796 & _T_2941;
  assign dmiProgramBufferRdEn_17 = _T_3630 & _T_2939;
  assign dmiProgramBufferAccessVec_17 = dmiProgramBufferWrEnMaybe_17 | dmiProgramBufferRdEn_17;
  assign dmiProgramBufferWrEnMaybe_18 = _T_3796 & _T_2966;
  assign dmiProgramBufferRdEn_18 = _T_3630 & _T_2964;
  assign dmiProgramBufferAccessVec_18 = dmiProgramBufferWrEnMaybe_18 | dmiProgramBufferRdEn_18;
  assign dmiProgramBufferWrEnMaybe_19 = _T_3796 & _T_2991;
  assign dmiProgramBufferRdEn_19 = _T_3630 & _T_2989;
  assign dmiProgramBufferAccessVec_19 = dmiProgramBufferWrEnMaybe_19 | dmiProgramBufferRdEn_19;
  assign dmiProgramBufferWrEnMaybe_21 = _T_3801 & _T_2941;
  assign dmiProgramBufferRdEn_21 = _T_3635 & _T_2939;
  assign dmiProgramBufferAccessVec_21 = dmiProgramBufferWrEnMaybe_21 | dmiProgramBufferRdEn_21;
  assign dmiProgramBufferWrEnMaybe_22 = _T_3801 & _T_2966;
  assign dmiProgramBufferRdEn_22 = _T_3635 & _T_2964;
  assign dmiProgramBufferAccessVec_22 = dmiProgramBufferWrEnMaybe_22 | dmiProgramBufferRdEn_22;
  assign dmiProgramBufferWrEnMaybe_23 = _T_3801 & _T_2991;
  assign dmiProgramBufferRdEn_23 = _T_3635 & _T_2989;
  assign dmiProgramBufferAccessVec_23 = dmiProgramBufferWrEnMaybe_23 | dmiProgramBufferRdEn_23;
  assign dmiProgramBufferWrEnMaybe_25 = _T_3806 & _T_2941;
  assign dmiProgramBufferRdEn_25 = _T_3640 & _T_2939;
  assign dmiProgramBufferAccessVec_25 = dmiProgramBufferWrEnMaybe_25 | dmiProgramBufferRdEn_25;
  assign dmiProgramBufferWrEnMaybe_26 = _T_3806 & _T_2966;
  assign dmiProgramBufferRdEn_26 = _T_3640 & _T_2964;
  assign dmiProgramBufferAccessVec_26 = dmiProgramBufferWrEnMaybe_26 | dmiProgramBufferRdEn_26;
  assign dmiProgramBufferWrEnMaybe_27 = _T_3806 & _T_2991;
  assign dmiProgramBufferRdEn_27 = _T_3640 & _T_2989;
  assign dmiProgramBufferAccessVec_27 = dmiProgramBufferWrEnMaybe_27 | dmiProgramBufferRdEn_27;
  assign dmiProgramBufferWrEnMaybe_29 = _T_3811 & _T_2941;
  assign dmiProgramBufferRdEn_29 = _T_3645 & _T_2939;
  assign dmiProgramBufferAccessVec_29 = dmiProgramBufferWrEnMaybe_29 | dmiProgramBufferRdEn_29;
  assign dmiProgramBufferWrEnMaybe_30 = _T_3811 & _T_2966;
  assign dmiProgramBufferRdEn_30 = _T_3645 & _T_2964;
  assign dmiProgramBufferAccessVec_30 = dmiProgramBufferWrEnMaybe_30 | dmiProgramBufferRdEn_30;
  assign dmiProgramBufferWrEnMaybe_31 = _T_3811 & _T_2991;
  assign dmiProgramBufferRdEn_31 = _T_3645 & _T_2989;
  assign dmiProgramBufferAccessVec_31 = dmiProgramBufferWrEnMaybe_31 | dmiProgramBufferRdEn_31;
  assign dmiProgramBufferWrEnMaybe_33 = _T_3816 & _T_2941;
  assign dmiProgramBufferRdEn_33 = _T_3650 & _T_2939;
  assign dmiProgramBufferAccessVec_33 = dmiProgramBufferWrEnMaybe_33 | dmiProgramBufferRdEn_33;
  assign dmiProgramBufferWrEnMaybe_34 = _T_3816 & _T_2966;
  assign dmiProgramBufferRdEn_34 = _T_3650 & _T_2964;
  assign dmiProgramBufferAccessVec_34 = dmiProgramBufferWrEnMaybe_34 | dmiProgramBufferRdEn_34;
  assign dmiProgramBufferWrEnMaybe_35 = _T_3816 & _T_2991;
  assign dmiProgramBufferRdEn_35 = _T_3650 & _T_2989;
  assign dmiProgramBufferAccessVec_35 = dmiProgramBufferWrEnMaybe_35 | dmiProgramBufferRdEn_35;
  assign dmiProgramBufferWrEnMaybe_37 = _T_3821 & _T_2941;
  assign dmiProgramBufferRdEn_37 = _T_3655 & _T_2939;
  assign dmiProgramBufferAccessVec_37 = dmiProgramBufferWrEnMaybe_37 | dmiProgramBufferRdEn_37;
  assign dmiProgramBufferWrEnMaybe_38 = _T_3821 & _T_2966;
  assign dmiProgramBufferRdEn_38 = _T_3655 & _T_2964;
  assign dmiProgramBufferAccessVec_38 = dmiProgramBufferWrEnMaybe_38 | dmiProgramBufferRdEn_38;
  assign dmiProgramBufferWrEnMaybe_39 = _T_3821 & _T_2991;
  assign dmiProgramBufferRdEn_39 = _T_3655 & _T_2989;
  assign dmiProgramBufferAccessVec_39 = dmiProgramBufferWrEnMaybe_39 | dmiProgramBufferRdEn_39;
  assign dmiProgramBufferWrEnMaybe_41 = _T_3826 & _T_2941;
  assign dmiProgramBufferRdEn_41 = _T_3660 & _T_2939;
  assign dmiProgramBufferAccessVec_41 = dmiProgramBufferWrEnMaybe_41 | dmiProgramBufferRdEn_41;
  assign dmiProgramBufferWrEnMaybe_42 = _T_3826 & _T_2966;
  assign dmiProgramBufferRdEn_42 = _T_3660 & _T_2964;
  assign dmiProgramBufferAccessVec_42 = dmiProgramBufferWrEnMaybe_42 | dmiProgramBufferRdEn_42;
  assign dmiProgramBufferWrEnMaybe_43 = _T_3826 & _T_2991;
  assign dmiProgramBufferRdEn_43 = _T_3660 & _T_2989;
  assign dmiProgramBufferAccessVec_43 = dmiProgramBufferWrEnMaybe_43 | dmiProgramBufferRdEn_43;
  assign dmiProgramBufferWrEnMaybe_45 = _T_3831 & _T_2941;
  assign dmiProgramBufferRdEn_45 = _T_3665 & _T_2939;
  assign dmiProgramBufferAccessVec_45 = dmiProgramBufferWrEnMaybe_45 | dmiProgramBufferRdEn_45;
  assign dmiProgramBufferWrEnMaybe_46 = _T_3831 & _T_2966;
  assign dmiProgramBufferRdEn_46 = _T_3665 & _T_2964;
  assign dmiProgramBufferAccessVec_46 = dmiProgramBufferWrEnMaybe_46 | dmiProgramBufferRdEn_46;
  assign dmiProgramBufferWrEnMaybe_47 = _T_3831 & _T_2991;
  assign dmiProgramBufferRdEn_47 = _T_3665 & _T_2989;
  assign dmiProgramBufferAccessVec_47 = dmiProgramBufferWrEnMaybe_47 | dmiProgramBufferRdEn_47;
  assign dmiProgramBufferWrEnMaybe_49 = _T_3836 & _T_2941;
  assign dmiProgramBufferRdEn_49 = _T_3670 & _T_2939;
  assign dmiProgramBufferAccessVec_49 = dmiProgramBufferWrEnMaybe_49 | dmiProgramBufferRdEn_49;
  assign dmiProgramBufferWrEnMaybe_50 = _T_3836 & _T_2966;
  assign dmiProgramBufferRdEn_50 = _T_3670 & _T_2964;
  assign dmiProgramBufferAccessVec_50 = dmiProgramBufferWrEnMaybe_50 | dmiProgramBufferRdEn_50;
  assign dmiProgramBufferWrEnMaybe_51 = _T_3836 & _T_2991;
  assign dmiProgramBufferRdEn_51 = _T_3670 & _T_2989;
  assign dmiProgramBufferAccessVec_51 = dmiProgramBufferWrEnMaybe_51 | dmiProgramBufferRdEn_51;
  assign dmiProgramBufferWrEnMaybe_53 = _T_3841 & _T_2941;
  assign dmiProgramBufferRdEn_53 = _T_3675 & _T_2939;
  assign dmiProgramBufferAccessVec_53 = dmiProgramBufferWrEnMaybe_53 | dmiProgramBufferRdEn_53;
  assign dmiProgramBufferWrEnMaybe_54 = _T_3841 & _T_2966;
  assign dmiProgramBufferRdEn_54 = _T_3675 & _T_2964;
  assign dmiProgramBufferAccessVec_54 = dmiProgramBufferWrEnMaybe_54 | dmiProgramBufferRdEn_54;
  assign dmiProgramBufferWrEnMaybe_55 = _T_3841 & _T_2991;
  assign dmiProgramBufferRdEn_55 = _T_3675 & _T_2989;
  assign dmiProgramBufferAccessVec_55 = dmiProgramBufferWrEnMaybe_55 | dmiProgramBufferRdEn_55;
  assign dmiProgramBufferWrEnMaybe_57 = _T_3846 & _T_2941;
  assign dmiProgramBufferRdEn_57 = _T_3680 & _T_2939;
  assign dmiProgramBufferAccessVec_57 = dmiProgramBufferWrEnMaybe_57 | dmiProgramBufferRdEn_57;
  assign dmiProgramBufferWrEnMaybe_58 = _T_3846 & _T_2966;
  assign dmiProgramBufferRdEn_58 = _T_3680 & _T_2964;
  assign dmiProgramBufferAccessVec_58 = dmiProgramBufferWrEnMaybe_58 | dmiProgramBufferRdEn_58;
  assign dmiProgramBufferWrEnMaybe_59 = _T_3846 & _T_2991;
  assign dmiProgramBufferRdEn_59 = _T_3680 & _T_2989;
  assign dmiProgramBufferAccessVec_59 = dmiProgramBufferWrEnMaybe_59 | dmiProgramBufferRdEn_59;
  assign dmiProgramBufferWrEnMaybe_61 = _T_3851 & _T_2941;
  assign dmiProgramBufferRdEn_61 = _T_3685 & _T_2939;
  assign dmiProgramBufferAccessVec_61 = dmiProgramBufferWrEnMaybe_61 | dmiProgramBufferRdEn_61;
  assign dmiProgramBufferWrEnMaybe_62 = _T_3851 & _T_2966;
  assign dmiProgramBufferRdEn_62 = _T_3685 & _T_2964;
  assign dmiProgramBufferAccessVec_62 = dmiProgramBufferWrEnMaybe_62 | dmiProgramBufferRdEn_62;
  assign dmiProgramBufferWrEnMaybe_63 = _T_3851 & _T_2991;
  assign dmiProgramBufferRdEn_63 = _T_3685 & _T_2989;
  assign dmiProgramBufferAccessVec_63 = dmiProgramBufferWrEnMaybe_63 | dmiProgramBufferRdEn_63;
  assign dmiProgramBufferAccess = dmiProgramBufferAccessVec_0 
  				| dmiProgramBufferAccessVec_1
  				| dmiProgramBufferAccessVec_2
  				| dmiProgramBufferAccessVec_3
  				| dmiProgramBufferAccessVec_4
  				| dmiProgramBufferAccessVec_5
  				| dmiProgramBufferAccessVec_6
  				| dmiProgramBufferAccessVec_7
  				| dmiProgramBufferAccessVec_8
  				| dmiProgramBufferAccessVec_9
  				| dmiProgramBufferAccessVec_10
  				| dmiProgramBufferAccessVec_11
  				| dmiProgramBufferAccessVec_12
  				| dmiProgramBufferAccessVec_13
  				| dmiProgramBufferAccessVec_14
  				| dmiProgramBufferAccessVec_15
  				| dmiProgramBufferAccessVec_16
  				| dmiProgramBufferAccessVec_17
  				| dmiProgramBufferAccessVec_18
  				| dmiProgramBufferAccessVec_19
  				| dmiProgramBufferAccessVec_20
  				| dmiProgramBufferAccessVec_21
  				| dmiProgramBufferAccessVec_22
  				| dmiProgramBufferAccessVec_23
  				| dmiProgramBufferAccessVec_24
  				| dmiProgramBufferAccessVec_25
  				| dmiProgramBufferAccessVec_26
  				| dmiProgramBufferAccessVec_27
  				| dmiProgramBufferAccessVec_28
  				| dmiProgramBufferAccessVec_29
  				| dmiProgramBufferAccessVec_30
  				| dmiProgramBufferAccessVec_31
  				| dmiProgramBufferAccessVec_32
  				| dmiProgramBufferAccessVec_33
  				| dmiProgramBufferAccessVec_34
  				| dmiProgramBufferAccessVec_35
  				| dmiProgramBufferAccessVec_36
  				| dmiProgramBufferAccessVec_37
  				| dmiProgramBufferAccessVec_38
  				| dmiProgramBufferAccessVec_39
  				| dmiProgramBufferAccessVec_40
  				| dmiProgramBufferAccessVec_41
  				| dmiProgramBufferAccessVec_42
  				| dmiProgramBufferAccessVec_43
  				| dmiProgramBufferAccessVec_44
  				| dmiProgramBufferAccessVec_45
  				| dmiProgramBufferAccessVec_46
  				| dmiProgramBufferAccessVec_47
  				| dmiProgramBufferAccessVec_48
  				| dmiProgramBufferAccessVec_49
  				| dmiProgramBufferAccessVec_50
  				| dmiProgramBufferAccessVec_51
  				| dmiProgramBufferAccessVec_52
  				| dmiProgramBufferAccessVec_53
  				| dmiProgramBufferAccessVec_54
  				| dmiProgramBufferAccessVec_55
  				| dmiProgramBufferAccessVec_56
  				| dmiProgramBufferAccessVec_57
  				| dmiProgramBufferAccessVec_58
  				| dmiProgramBufferAccessVec_59
  				| dmiProgramBufferAccessVec_60
  				| dmiProgramBufferAccessVec_61
  				| dmiProgramBufferAccessVec_62
				| dmiProgramBufferAccessVec_63;

  wire _T_19675 = ~ ABSTRACTCSWrEnLegal;
  assign errorBusy = (ABSTRACTCSWrEnMaybe & _T_19675) 
			| (autoexecdataWrEnMaybe & _T_19675) 
			| (autoexecprogbufWrEnMaybe & _T_19675) 
			| (COMMANDWrEnMaybe & _T_19675) 
			| (dmiAbstractDataAccess & _T_19675) 
			| (dmiProgramBufferAccess & _T_19675);

  assign ABSTRACTAUTOWrData_autoexecprogbuf = auto_dmi_in_a_bits_data[31:16];
  assign ABSTRACTAUTOWrData_autoexecdata = {{11'd0}, auto_dmi_in_a_bits_data[0]};

  assign COMMANDWrData_control = COMMANDWrDataVal[23:0];

  assign hartHaltedId = auto_tl_in_a_bits_data[9:0];
  assign hartResumingWrEn = _T_16996 & _T_8785[66] & _T_4261 & _T_7315;
  assign hartHaltedWrEn = _T_16996 & _T_8785[64] & _T_4261 & _T_7315;

  assign abstractCommandBusy = ctrlStateReg != 2'h0;

  assign hartGoingWrEn = _T_16996 & _T_8785[65] & _T_4261 & _T_7315;

  wire _GEN_2709 = commandRegIsUnsupported ? 1'h0 
			: commandRegBadHaltResume ? 1'h0 
			: 1'h1;
  assign goAbstract = ABSTRACTCSWrEnLegal ? 1'h0 : (_T_19708 & _GEN_2709);

  assign accessRegisterCommandReg_postexec = _T_4104[18];
  assign accessRegisterCommandReg_size = _T_4104[22:20];

  assign abstractGeneratedI_rd = accessRegisterCommandReg_regno[4:0] & 5'h1f;

  assign auto_tl_in_a_ready = auto_tl_in_d_ready;
  assign auto_tl_in_d_valid = auto_tl_in_a_valid;
  assign auto_tl_in_d_bits_opcode = {{2'd0}, _T_4169};
  wire [11:0] _T_4171 = {auto_tl_in_a_bits_source,auto_tl_in_a_bits_size};
  assign auto_tl_in_d_bits_size = _T_4171[1:0];
  assign auto_tl_in_d_bits_source = _T_4171[11:2];
  wire _GEN_2576 = (9'h0 == _T_8253) ? ((auto_tl_in_a_bits_address[11:2] & 10'h100) == 10'h100) 
			: (9'h40 == _T_8253) ? _T_4261 
			: (9'h41 == _T_8253) ? _T_4261 
			: (9'h42 == _T_8253) ? _T_4261 
			: (9'h43 == _T_8253) ? _T_4261 
			: (9'hc0 == _T_8253) ? _T_4261 
			: (9'hce == _T_8253) ? _T_4261 
			: (9'hcf == _T_8253) ? _T_4261 
			: (9'hd0 == _T_8253) ? _T_4261 
			: (9'hd1 == _T_8253) ? _T_4261 
			: (9'hd2 == _T_8253) ? _T_4261 
			: (9'hd3 == _T_8253) ? _T_4261 
			: (9'hd4 == _T_8253) ? _T_4261 
			: (9'hd5 == _T_8253) ? _T_4261 
			: (9'hd6 == _T_8253) ? _T_4261 
			: (9'hd7 == _T_8253) ? _T_4261 
			: (9'hd8 == _T_8253) ? _T_4261 
			: (9'hd9 == _T_8253) ? _T_4261 
			: (9'hda == _T_8253) ? _T_4261 
			: (9'hdb == _T_8253) ? _T_4261 
			: (9'hdc == _T_8253) ? _T_4261 
			: (9'hdd == _T_8253) ? _T_4261 
			: (9'hde == _T_8253) ? _T_4261 
			: (9'hdf == _T_8253) ? _T_4261 
			: (9'he0 == _T_8253) ? _T_4261 
			: (9'h100 == _T_8253) ? _T_4261 
			: (9'h101 == _T_8253) ? _T_4261 
			: (9'h102 == _T_8253) ? _T_4261 
			: (9'h103 == _T_8253) ? _T_4261 
			: (9'h104 == _T_8253) ? _T_4261 
			: (9'h105 == _T_8253) ? _T_4261 
			: (9'h106 == _T_8253) ? _T_4261 
			: (9'h107 == _T_8253) ? _T_4261 
			: (9'h108 == _T_8253) ? _T_4261 
			: (9'h109 == _T_8253) ? _T_4261 
			: (9'h10a == _T_8253) ? _T_4261 
			: (9'h10b == _T_8253) ? _T_4261 
			: (9'h10c == _T_8253) ? _T_4261 
			: (9'h10d == _T_8253) ? _T_4261 
			: (9'h10e == _T_8253) ? _T_4261 
			: (9'h10f == _T_8253) ? _T_4261 
			: (9'h110 == _T_8253) ? _T_4261 
			: (9'h111 == _T_8253) ? _T_4261 
			: (9'h112 == _T_8253) ? _T_4261 
			: (9'h113 == _T_8253) ? _T_4261 
			: (9'h114 == _T_8253) ? _T_4261 
			: 1'h1;

  wire [31:0] _GEN_2622 = (9'h0 == _T_8253) ? {{16'd0}, 8'h0,6'h0,resumeReqRegs_0,goReg} 
			: (9'h40 == _T_8253) ? 32'h0 
			: (9'h41 == _T_8253) ? 32'h0 
			: (9'h42 == _T_8253) ? 32'h0 
			: (9'h43 == _T_8253) ? 32'h0 
			: (9'hc0 == _T_8253) ? 32'h380006f 
			: (9'hce == _T_8253) ? abstractGeneratedMem_0 
			: (9'hcf == _T_8253) ? abstractGeneratedMem_1 
			: (9'hd0 == _T_8253) ? {programBufferMem_3,programBufferMem_2,programBufferMem_1,programBufferMem_0} 
			: (9'hd1 == _T_8253) ? {programBufferMem_7,programBufferMem_6,programBufferMem_5,programBufferMem_4} 
			: (9'hd2 == _T_8253) ? {programBufferMem_11,programBufferMem_10,programBufferMem_9,programBufferMem_8} 
			: (9'hd3 == _T_8253) ? {programBufferMem_15,programBufferMem_14,programBufferMem_13,programBufferMem_12} 
			: (9'hd4 == _T_8253) ? {programBufferMem_19,programBufferMem_18,programBufferMem_17,programBufferMem_16} 
			: (9'hd5 == _T_8253) ? {programBufferMem_23,programBufferMem_22,programBufferMem_21,programBufferMem_20} 
			: (9'hd6 == _T_8253) ? {programBufferMem_27,programBufferMem_26,programBufferMem_25,programBufferMem_24} 
			: (9'hd7 == _T_8253) ? {programBufferMem_31,programBufferMem_30,programBufferMem_29,programBufferMem_28} 
			: (9'hd8 == _T_8253) ? {programBufferMem_35,programBufferMem_34,programBufferMem_33,programBufferMem_32} 
			: (9'hd9 == _T_8253) ? {programBufferMem_39,programBufferMem_38,programBufferMem_37,programBufferMem_36} 
			: (9'hda == _T_8253) ? {programBufferMem_43,programBufferMem_42,programBufferMem_41,programBufferMem_40} 
			: (9'hdb == _T_8253) ? {programBufferMem_47,programBufferMem_46,programBufferMem_45,programBufferMem_44} 
			: (9'hdc == _T_8253) ? {programBufferMem_51,programBufferMem_50,programBufferMem_49,programBufferMem_48} 
			: (9'hdd == _T_8253) ? {programBufferMem_55,programBufferMem_54,programBufferMem_53,programBufferMem_52} 
			: (9'hde == _T_8253) ? {programBufferMem_59,programBufferMem_58,programBufferMem_57,programBufferMem_56} 
			: (9'hdf == _T_8253) ? {programBufferMem_63,programBufferMem_62,programBufferMem_61,programBufferMem_60} 
			: (9'he0 == _T_8253) ? {abstractDataMem_3,abstractDataMem_2,abstractDataMem_1,abstractDataMem_0} 
			: (9'h100 == _T_8253) ? 32'hc0006f 
			: (9'h101 == _T_8253) ? 32'h380006f 
			: (9'h102 == _T_8253) ? 32'h440006f 
			: (9'h103 == _T_8253) ? 32'hff0000f 
			: (9'h104 == _T_8253) ? 32'h7b241073 
			: (9'h105 == _T_8253) ? 32'hf1402473 
			: (9'h106 == _T_8253) ? 32'h10802023 
			: (9'h107 == _T_8253) ? 32'h40044403 
			: (9'h108 == _T_8253) ? 32'h347413 
			: (9'h109 == _T_8253) ? 32'hfe0408e3 
			: (9'h10a == _T_8253) ? 32'h147413 
			: (9'h10b == _T_8253) ? 32'h40863 
			: (9'h10c == _T_8253) ? 32'h7b202473 
			: (9'h10d == _T_8253) ? 32'h10002223 
			: (9'h10e == _T_8253) ? 32'h30000067 
			: (9'h10f == _T_8253) ? 32'hf1402473 
			: (9'h110 == _T_8253) ? 32'h10802423 
			: (9'h111 == _T_8253) ? 32'h7b202473 
			: (9'h112 == _T_8253) ? 32'h7b200073 
			: (9'h113 == _T_8253) ? 32'h10002623 
			: (9'h114 == _T_8253) ? 32'h100073 
			: 32'h0;
  assign auto_tl_in_d_bits_data = _GEN_2576 ? _GEN_2622 : 32'h0;

  assign auto_dmi_in_a_ready = auto_dmi_in_d_ready;
  assign auto_dmi_in_d_valid = auto_dmi_in_a_valid;
  assign auto_dmi_in_d_bits_opcode = {{2'd0}, _T_440};
  wire [2:0] _T_442 = {auto_dmi_in_a_bits_source,auto_dmi_in_a_bits_size};
  assign auto_dmi_in_d_bits_size = _T_442[1:0];
  assign auto_dmi_in_d_bits_source = _T_442[2];
  wire _GEN_278 = 5'h4 == _T_3117 ? _T_494 
		: 5'h3 == _T_3117 ? _T_450 
		: 5'h2 == _T_3117 ? _T_450 
		: 5'h1 == _T_3117 ? _T_450 
		: ((auto_dmi_in_a_bits_address[8:2] & 7'h50) == 7'h40)
		;
  wire _GEN_279 = (5'h5 == _T_3117) 
		| _GEN_278
		;
  wire _GEN_282 = (5'h8 == _T_3117) ? _T_450 
		: (5'h7 == _T_3117) ? _T_450 
		: (5'h6 == _T_3117) ? _T_450 
		: _GEN_279
		;
  wire _GEN_289 = (5'hf == _T_3117) 
		| (5'he == _T_3117)
		| (5'hd == _T_3117)
		| (5'hc == _T_3117)
		| (5'hb == _T_3117)
		| (5'ha == _T_3117)
		| (5'h9 == _T_3117)
		| _GEN_282
		;
  wire _GEN_305 = (5'h1f == _T_3117) ? _T_494 
		: (5'h1e == _T_3117) ? _T_494 
		: (5'h1d == _T_3117) ? _T_494 
		: (5'h1c == _T_3117) ? _T_494 
		: (5'h1b == _T_3117) ? _T_494 
		: (5'h1a == _T_3117) ? _T_494 
		: (5'h19 == _T_3117) ? _T_494 
		: (5'h18 == _T_3117) ? _T_494 
		: (5'h17 == _T_3117) ? _T_494 
		: (5'h16 == _T_3117) ? _T_494 
		: (5'h15 == _T_3117) ? _T_494 
		: (5'h14 == _T_3117) ? _T_494 
		: (5'h13 == _T_3117) ? _T_494 
		: (5'h12 == _T_3117) ? _T_494 
		: (5'h11 == _T_3117) ? _T_494 
		: (5'h10 == _T_3117) ? _T_494 
		: _GEN_289
		;
  wire [31:0] _GEN_337 = (5'h1f == _T_3117) ? {programBufferMem_63,programBufferMem_62,programBufferMem_61,programBufferMem_60} 
		: (5'h1e == _T_3117) ? {programBufferMem_59,programBufferMem_58,programBufferMem_57,programBufferMem_56} 
		: (5'h1d == _T_3117) ? {programBufferMem_55,programBufferMem_54,programBufferMem_53,programBufferMem_52} 
		: (5'h1c == _T_3117) ? {programBufferMem_51,programBufferMem_50,programBufferMem_49,programBufferMem_48} 
		: (5'h1b == _T_3117) ? {programBufferMem_47,programBufferMem_46,programBufferMem_45,programBufferMem_44} 
		: (5'h1a == _T_3117) ? {programBufferMem_43,programBufferMem_42,programBufferMem_41,programBufferMem_40} 
		: (5'h19 == _T_3117) ? {programBufferMem_39,programBufferMem_38,programBufferMem_37,programBufferMem_36} 
		: (5'h18 == _T_3117) ? {programBufferMem_35,programBufferMem_34,programBufferMem_33,programBufferMem_32} 
		: (5'h17 == _T_3117) ? {programBufferMem_31,programBufferMem_30,programBufferMem_29,programBufferMem_28} 
		: (5'h16 == _T_3117) ? {programBufferMem_27,programBufferMem_26,programBufferMem_25,programBufferMem_24} 
		: (5'h15 == _T_3117) ? {programBufferMem_23,programBufferMem_22,programBufferMem_21,programBufferMem_20} 
		: (5'h14 == _T_3117) ? {programBufferMem_19,programBufferMem_18,programBufferMem_17,programBufferMem_16} 
		: (5'h13 == _T_3117) ? {programBufferMem_15,programBufferMem_14,programBufferMem_13,programBufferMem_12} 
		: (5'h12 == _T_3117) ? {programBufferMem_11,programBufferMem_10,programBufferMem_9,programBufferMem_8} 
		: (5'h11 == _T_3117) ? {programBufferMem_7,programBufferMem_6,programBufferMem_5,programBufferMem_4} 
		: (5'h10 == _T_3117) ? {programBufferMem_3,programBufferMem_2,programBufferMem_1,programBufferMem_0} 
		: (5'hf == _T_3117) ? 32'h0 
		: (5'he == _T_3117) ? 32'h0 
		: (5'hd == _T_3117) ? 32'h0 
		: (5'hc == _T_3117) ? 32'h0 
		: (5'hb == _T_3117) ? 32'h0 
		: (5'ha == _T_3117) ? 32'h0 
		: (5'h9 == _T_3117) ? 32'h0 
		: (5'h8 == _T_3117) ? {ABSTRACTAUTOReg_autoexecprogbuf,{14'd0}, 1'h0,ABSTRACTAUTOReg_autoexecdata[0]} 
		: (5'h7 == _T_3117) ? _T_4104 
		: (5'h6 == _T_3117) ? {{3'd0}, 5'h10,{10'd0}, 1'h0,abstractCommandBusy,1'h0,ABSTRACTCSReg_cmderr,8'h1} 
		: (5'h5 == _T_3117) ? 32'h0 
		: (5'h4 == _T_3117) ? {abstractDataMem_3,abstractDataMem_2,abstractDataMem_1,abstractDataMem_0} 
		: (5'h3 == _T_3117) ? HALTSUM1RdData_haltsum1 
		: (5'h2 == _T_3117) ? 32'h111380 
		: (5'h1 == _T_3117) ? {{9'd0}, 1'h0,{1'd0}, 1'h0,haveResetBitRegs_0,haveResetBitRegs_0,DMSTATUSRdData_anyresumeack,DMSTATUSRdData_anyresumeack,1'h0,1'h0,1'h0,1'h0,!haltedBitRegs_0,!haltedBitRegs_0,haltedBitRegs_0,haltedBitRegs_0,8'ha2} 
		: haltedStatus_0
		;
  assign auto_dmi_in_d_bits_data = _GEN_305 ? _GEN_337 : 32'h0;

  assign io_innerCtrl_ready = 1'h1;
  assign io_hgDebugInt_0 = hrDebugInt_0;

  assign TLMonitor_clock = clock;
  assign TLMonitor_reset = reset;
  assign TLMonitor_io_in_a_ready = auto_dmi_in_d_ready;
  assign TLMonitor_io_in_a_valid = auto_dmi_in_a_valid;
  assign TLMonitor_io_in_a_bits_opcode = auto_dmi_in_a_bits_opcode;
  assign TLMonitor_io_in_a_bits_param = auto_dmi_in_a_bits_param;
  assign TLMonitor_io_in_a_bits_size = auto_dmi_in_a_bits_size;
  assign TLMonitor_io_in_a_bits_source = auto_dmi_in_a_bits_source;
  assign TLMonitor_io_in_a_bits_address = auto_dmi_in_a_bits_address;
  assign TLMonitor_io_in_a_bits_mask = auto_dmi_in_a_bits_mask;
  assign TLMonitor_io_in_a_bits_corrupt = auto_dmi_in_a_bits_corrupt;
  assign TLMonitor_io_in_d_ready = auto_dmi_in_d_ready;
  assign TLMonitor_io_in_d_valid = auto_dmi_in_a_valid;
  assign TLMonitor_io_in_d_bits_opcode = {{2'd0}, _T_440};
  assign TLMonitor_io_in_d_bits_size = _T_442[1:0];
  assign TLMonitor_io_in_d_bits_source = _T_442[2];
  assign TLMonitor_1_clock = clock;
  assign TLMonitor_1_reset = reset;
  assign TLMonitor_1_io_in_a_ready = auto_tl_in_d_ready;
  assign TLMonitor_1_io_in_a_valid = auto_tl_in_a_valid;
  assign TLMonitor_1_io_in_a_bits_opcode = auto_tl_in_a_bits_opcode;
  assign TLMonitor_1_io_in_a_bits_param = auto_tl_in_a_bits_param;
  assign TLMonitor_1_io_in_a_bits_size = auto_tl_in_a_bits_size;
  assign TLMonitor_1_io_in_a_bits_source = auto_tl_in_a_bits_source;
  assign TLMonitor_1_io_in_a_bits_address = auto_tl_in_a_bits_address;
  assign TLMonitor_1_io_in_a_bits_mask = auto_tl_in_a_bits_mask;
  assign TLMonitor_1_io_in_a_bits_corrupt = auto_tl_in_a_bits_corrupt;
  assign TLMonitor_1_io_in_d_ready = auto_tl_in_d_ready;
  assign TLMonitor_1_io_in_d_valid = auto_tl_in_a_valid;
  assign TLMonitor_1_io_in_d_bits_opcode = {{2'd0}, _T_4169};
  assign TLMonitor_1_io_in_d_bits_size = _T_4171[1:0];
  assign TLMonitor_1_io_in_d_bits_source = _T_4171[11:2];

  wire _T_12 = ~ io_dmactive;

always @(posedge clock) begin
	if (~ io_dmactive) begin
		haltedBitRegs_0 <= 1'h0;
		resumeReqRegs_0 <= 1'h0;
	end
	else begin
		if (reset) haltedBitRegs_0 <= 1'h0;
		else if (hartHaltedWrEn) haltedBitRegs_0 <= (hartHaltedId == 10'h0) | haltedBitRegs_0;
		else if (hartResumingWrEn) begin
	        	if (hartHaltedId == 10'h0) haltedBitRegs_0 <= 1'h0;
	        end

		if (resumereq & hamaskWrSel_0) resumeReqRegs_0 <= 1'h1;
		else if (hartResumingWrEn & (hartHaltedId == 10'h0)) resumeReqRegs_0 <= 1'h0;
		else if (reset) resumeReqRegs_0 <= 1'h0;
	end
end

always @(posedge clock) begin
	if (~ io_dmactive) begin
		haveResetBitRegs_0 <= 1'h0;
	end
	else begin
		if (reset) haveResetBitRegs_0 <= 1'h1;
		else if (_T_15 & io_innerCtrl_bits_ackhavereset & hamaskWrSel_0) haveResetBitRegs_0 <= 1'h0;
	end
end

always @(posedge clock) begin
	if (~ io_dmactive) begin
		hrDebugInt_0 <= 1'h0;
		hrmaskReg_0 <= 1'h0;
	end
	else begin
		hrDebugInt_0 <= hrmaskReg_0 & (reset | (hrDebugInt_0 & !haltedBitRegs_0));
		if (_T_15) begin
			hrmaskReg_0 <= io_innerCtrl_bits_hrmask_0;
		end
	end
end

always @(posedge clock) begin
	if (~ io_dmactive) begin
		ABSTRACTCSReg_cmderr <= 3'h0;
	end
	else begin
		if (errorBusy) ABSTRACTCSReg_cmderr <= 3'h1;
		else if (errorException) ABSTRACTCSReg_cmderr <= 3'h3;
		else if (errorUnsupported) ABSTRACTCSReg_cmderr <= 3'h2;
		else if (errorHaltResume) ABSTRACTCSReg_cmderr <= 3'h4;
	        else if (ABSTRACTCSWrEn) ABSTRACTCSReg_cmderr <= ABSTRACTCSReg_cmderr & (~ ABSTRACTCSWrData_cmderr);
	end
end

always @(posedge clock) begin
	if (_T_12) begin
		ctrlStateReg <= 2'h0;
	end
	else begin
		if (ABSTRACTCSWrEnLegal) begin
	    		if (_T_19706) begin
	     			 ctrlStateReg <= 2'h1;
	    		end
	  	end
		else begin
	    		if (_T_19708) begin
	      			if (commandRegIsUnsupported) ctrlStateReg <= 2'h0;
				else begin
	        			if (commandRegBadHaltResume) ctrlStateReg <= 2'h0;
					else ctrlStateReg <= 2'h2;
	      			end
	    		end
			else begin
	      			if (_T_19709) begin
	        			if (hartExceptionWrEn) ctrlStateReg <= 2'h0;
					else if (!goReg & hartHaltedWrEn & (hartHaltedId == 10'h0)) ctrlStateReg <= 2'h0;
				end
	      		end
	    	end
	end
end

always @(posedge clock) begin
	if (_T_12) begin
		COMMANDRdData_cmdtype <= 8'h0;
		COMMANDRdData_control <= 24'h0;
	end
	else if (COMMANDWrEn) begin
        COMMANDRdData_cmdtype <= COMMANDWrData_cmdtype;
        COMMANDRdData_control <= COMMANDWrData_control;
	end
end

always @(posedge clock) begin
	if (_T_12) begin
	  ABSTRACTAUTOReg_autoexecdata <= 12'h0;
	  ABSTRACTAUTOReg_autoexecprogbuf <= 16'h0;
	end else begin
		if (autoexecdataWrEnMaybe & ABSTRACTCSWrEnLegal) ABSTRACTAUTOReg_autoexecdata <= ABSTRACTAUTOWrData_autoexecdata & 12'h1;

		if (autoexecprogbufWrEnMaybe & ABSTRACTCSWrEnLegal) ABSTRACTAUTOReg_autoexecprogbuf <= ABSTRACTAUTOWrData_autoexecprogbuf;
	end
end

  wire _T_4306 = _T_4302[7:0] == 8'hff;
  wire _T_4329 = _T_4302[15:8] == 8'hff;
  wire _T_4354 = _T_4302[23:16] == 8'hff;
  wire _T_4379 = _T_4302[31:24] == 8'hff;
  wire _T_12988 = _T_16996 & _T_8785[224] & _T_4261;
always @(posedge clock) begin
	if (_T_12) begin
		abstractDataMem_0 <= 8'h0;
		abstractDataMem_1 <= 8'h0;
		abstractDataMem_2 <= 8'h0;
		abstractDataMem_3 <= 8'h0;
	end
	else begin
		if (_T_12988 & _T_4306) begin
			abstractDataMem_0 <= auto_tl_in_a_bits_data[7:0];
		end
		else if (dmiAbstractDataWrEnMaybe_0 & ABSTRACTCSWrEnLegal) begin
			abstractDataMem_0 <= auto_dmi_in_a_bits_data[7:0];
		end

		if (_T_12988 & _T_4329) begin
			abstractDataMem_1 <= auto_tl_in_a_bits_data[15:8];
	  	end
		else if (dmiAbstractDataWrEnMaybe_1 & ABSTRACTCSWrEnLegal) begin
			abstractDataMem_1 <= auto_dmi_in_a_bits_data[15:8];
		end

		if (_T_12988 & _T_4354) begin
			abstractDataMem_2 <= auto_tl_in_a_bits_data[23:16];
		end
		else if (dmiAbstractDataWrEnMaybe_2 & ABSTRACTCSWrEnLegal) begin
	        		abstractDataMem_2 <= auto_dmi_in_a_bits_data[23:16];
	    	end

		if (_T_12988 & _T_4379) begin
			abstractDataMem_3 <= auto_tl_in_a_bits_data[31:24];
		end
		else if (dmiAbstractDataWrEnMaybe_3 & ABSTRACTCSWrEnLegal) begin
		      abstractDataMem_3 <= auto_dmi_in_a_bits_data[31:24];
		end
	end
end

  wire _T_12908 = _T_16996 & _T_8785[208] & _T_4261;
  wire _T_12913 = _T_16996 & _T_8785[209] & _T_4261;
  wire _T_12918 = _T_16996 & _T_8785[210] & _T_4261;
  wire _T_12923 = _T_16996 & _T_8785[211] & _T_4261;
  wire _T_12928 = _T_16996 & _T_8785[212] & _T_4261;
  wire _T_12933 = _T_16996 & _T_8785[213] & _T_4261;
  wire _T_12938 = _T_16996 & _T_8785[214] & _T_4261;
  wire _T_12943 = _T_16996 & _T_8785[215] & _T_4261;
  wire _T_12948 = _T_16996 & _T_8785[216] & _T_4261;
  wire _T_12953 = _T_16996 & _T_8785[217] & _T_4261;
  wire _T_12958 = _T_16996 & _T_8785[218] & _T_4261;
  wire _T_12963 = _T_16996 & _T_8785[219] & _T_4261;
  wire _T_12968 = _T_16996 & _T_8785[220] & _T_4261;
  wire _T_12973 = _T_16996 & _T_8785[221] & _T_4261;
  wire _T_12978 = _T_16996 & _T_8785[222] & _T_4261;
  wire _T_12983 = _T_16996 & _T_8785[223] & _T_4261;
always @(posedge clock) begin
	if (_T_12) begin
		programBufferMem_0 <= 8'h0;
		programBufferMem_1 <= 8'h0;
		programBufferMem_2 <= 8'h0;
		programBufferMem_3 <= 8'h0;
		programBufferMem_4 <= 8'h0;
		programBufferMem_5 <= 8'h0;
		programBufferMem_6 <= 8'h0;
		programBufferMem_7 <= 8'h0;
		programBufferMem_8 <= 8'h0;
		programBufferMem_9 <= 8'h0;
		programBufferMem_10 <= 8'h0;
		programBufferMem_11 <= 8'h0;
		programBufferMem_12 <= 8'h0;
		programBufferMem_13 <= 8'h0;
		programBufferMem_14 <= 8'h0;
		programBufferMem_15 <= 8'h0;
		programBufferMem_16 <= 8'h0;
		programBufferMem_17 <= 8'h0;
		programBufferMem_18 <= 8'h0;
		programBufferMem_19 <= 8'h0;
		programBufferMem_20 <= 8'h0;
		programBufferMem_21 <= 8'h0;
		programBufferMem_22 <= 8'h0;
		programBufferMem_23 <= 8'h0;
		programBufferMem_24 <= 8'h0;
		programBufferMem_25 <= 8'h0;
		programBufferMem_26 <= 8'h0;
		programBufferMem_27 <= 8'h0;
		programBufferMem_28 <= 8'h0;
		programBufferMem_29 <= 8'h0;
		programBufferMem_30 <= 8'h0;
		programBufferMem_31 <= 8'h0;
		programBufferMem_32 <= 8'h0;
		programBufferMem_33 <= 8'h0;
		programBufferMem_34 <= 8'h0;
		programBufferMem_35 <= 8'h0;
		programBufferMem_36 <= 8'h0;
		programBufferMem_37 <= 8'h0;
		programBufferMem_38 <= 8'h0;
		programBufferMem_39 <= 8'h0;
		programBufferMem_40 <= 8'h0;
		programBufferMem_41 <= 8'h0;
		programBufferMem_42 <= 8'h0;
		programBufferMem_43 <= 8'h0;
		programBufferMem_44 <= 8'h0;
		programBufferMem_45 <= 8'h0;
		programBufferMem_46 <= 8'h0;
		programBufferMem_47 <= 8'h0;
		programBufferMem_48 <= 8'h0;
		programBufferMem_49 <= 8'h0;
		programBufferMem_50 <= 8'h0;
		programBufferMem_51 <= 8'h0;
		programBufferMem_52 <= 8'h0;
		programBufferMem_53 <= 8'h0;
		programBufferMem_54 <= 8'h0;
		programBufferMem_55 <= 8'h0;
		programBufferMem_56 <= 8'h0;
		programBufferMem_57 <= 8'h0;
		programBufferMem_58 <= 8'h0;
		programBufferMem_59 <= 8'h0;
		programBufferMem_60 <= 8'h0;
		programBufferMem_61 <= 8'h0;
		programBufferMem_62 <= 8'h0;
		programBufferMem_63 <= 8'h0;
	end
	else begin
		if (_T_12908 & _T_4306) begin
			programBufferMem_0 <= auto_tl_in_a_bits_data[7:0];
		end
		else begin
			if (dmiProgramBufferWrEnMaybe_0 & ABSTRACTCSWrEnLegal) begin
				programBufferMem_0 <= auto_dmi_in_a_bits_data[7:0];
			end
		end

		if (_T_12908 & _T_4329) begin
			programBufferMem_1 <= auto_tl_in_a_bits_data[15:8];
		end
		else begin
			if (dmiProgramBufferWrEnMaybe_1 & ABSTRACTCSWrEnLegal) begin
				programBufferMem_1 <= auto_dmi_in_a_bits_data[15:8];
			end
		end

		if (_T_12908 & _T_4354) begin
			programBufferMem_2 <= auto_tl_in_a_bits_data[23:16];
		end
		else begin
			if (dmiProgramBufferWrEnMaybe_2 & ABSTRACTCSWrEnLegal) begin
				programBufferMem_2 <= auto_dmi_in_a_bits_data[23:16];
			end
		end

		if (_T_12908 & _T_4379) begin
			programBufferMem_3 <= auto_tl_in_a_bits_data[31:24];
		end
		else begin
			if (dmiProgramBufferWrEnMaybe_3 & ABSTRACTCSWrEnLegal) begin
			    programBufferMem_3 <= auto_dmi_in_a_bits_data[31:24];
			end
		end

		if (_T_12913 & _T_4306) begin
			programBufferMem_4 <= auto_tl_in_a_bits_data[7:0];
		end else begin
			if (dmiProgramBufferWrEnMaybe_4 & ABSTRACTCSWrEnLegal) begin
				programBufferMem_4 <= auto_dmi_in_a_bits_data[7:0];
			end
		end

		if (_T_12913 & _T_4329) begin
			programBufferMem_5 <= auto_tl_in_a_bits_data[15:8];
		end
		else begin
			if (dmiProgramBufferWrEnMaybe_5 & ABSTRACTCSWrEnLegal) begin
				programBufferMem_5 <= auto_dmi_in_a_bits_data[15:8];
			end
		end

		if (_T_12913 & _T_4354) begin
			programBufferMem_6 <= auto_tl_in_a_bits_data[23:16];
		end
		else begin
			if (dmiProgramBufferWrEnMaybe_6 & ABSTRACTCSWrEnLegal) begin
				programBufferMem_6 <= auto_dmi_in_a_bits_data[23:16];
			end
		end

		if (_T_12913 & _T_4379) begin
			programBufferMem_7 <= auto_tl_in_a_bits_data[31:24];
		end
		else begin
			if (dmiProgramBufferWrEnMaybe_7 & ABSTRACTCSWrEnLegal) begin
			    programBufferMem_7 <= auto_dmi_in_a_bits_data[31:24];
			end
		end

		if (_T_12918 & _T_4306) begin
			programBufferMem_8 <= auto_tl_in_a_bits_data[7:0];
		end else begin
			if (dmiProgramBufferWrEnMaybe_8 & ABSTRACTCSWrEnLegal) begin
				programBufferMem_8 <= auto_dmi_in_a_bits_data[7:0];
			end
		end

		if (_T_12918 & _T_4329) begin
			programBufferMem_9 <= auto_tl_in_a_bits_data[15:8];
		end
		else begin
			if (dmiProgramBufferWrEnMaybe_9 & ABSTRACTCSWrEnLegal) begin
				programBufferMem_9 <= auto_dmi_in_a_bits_data[15:8];
			end
		end

		if (_T_12918 & _T_4354) begin
			programBufferMem_10 <= auto_tl_in_a_bits_data[23:16];
		end
		else begin
			if (dmiProgramBufferWrEnMaybe_10 & ABSTRACTCSWrEnLegal) begin
				programBufferMem_10 <= auto_dmi_in_a_bits_data[23:16];
			end
		end

		if (_T_12918 & _T_4379) begin
			programBufferMem_11 <= auto_tl_in_a_bits_data[31:24];
		end
		else begin
			if (dmiProgramBufferWrEnMaybe_11 & ABSTRACTCSWrEnLegal) begin
			    programBufferMem_11 <= auto_dmi_in_a_bits_data[31:24];
			end
		end

		if (_T_12923 & _T_4306) begin
			programBufferMem_12 <= auto_tl_in_a_bits_data[7:0];
		end else begin
			if (dmiProgramBufferWrEnMaybe_12 & ABSTRACTCSWrEnLegal) begin
				programBufferMem_12 <= auto_dmi_in_a_bits_data[7:0];
			end
		end

		if (_T_12923 & _T_4329) begin
			programBufferMem_13 <= auto_tl_in_a_bits_data[15:8];
		end
		else begin
			if (dmiProgramBufferWrEnMaybe_13 & ABSTRACTCSWrEnLegal) begin
				programBufferMem_13 <= auto_dmi_in_a_bits_data[15:8];
			end
		end

		if (_T_12923 & _T_4354) begin
			programBufferMem_14 <= auto_tl_in_a_bits_data[23:16];
		end
		else begin
			if (dmiProgramBufferWrEnMaybe_14 & ABSTRACTCSWrEnLegal) begin
				programBufferMem_14 <= auto_dmi_in_a_bits_data[23:16];
			end
		end

		if (_T_12923 & _T_4379) begin
			programBufferMem_15 <= auto_tl_in_a_bits_data[31:24];
		end
		else begin
			if (dmiProgramBufferWrEnMaybe_15 & ABSTRACTCSWrEnLegal) begin
			    programBufferMem_15 <= auto_dmi_in_a_bits_data[31:24];
			end
		end

		if (_T_12928 & _T_4306) begin
			programBufferMem_16 <= auto_tl_in_a_bits_data[7:0];
		end else begin
			if (dmiProgramBufferWrEnMaybe_16 & ABSTRACTCSWrEnLegal) begin
				programBufferMem_16 <= auto_dmi_in_a_bits_data[7:0];
			end
		end

		if (_T_12928 & _T_4329) begin
			programBufferMem_17 <= auto_tl_in_a_bits_data[15:8];
		end
		else begin
			if (dmiProgramBufferWrEnMaybe_17 & ABSTRACTCSWrEnLegal) begin
				programBufferMem_17 <= auto_dmi_in_a_bits_data[15:8];
			end
		end

		if (_T_12928 & _T_4354) begin
			programBufferMem_18 <= auto_tl_in_a_bits_data[23:16];
		end
		else begin
			if (dmiProgramBufferWrEnMaybe_18 & ABSTRACTCSWrEnLegal) begin
				programBufferMem_18 <= auto_dmi_in_a_bits_data[23:16];
			end
		end

		if (_T_12928 & _T_4379) begin
			programBufferMem_19 <= auto_tl_in_a_bits_data[31:24];
		end
		else begin
			if (dmiProgramBufferWrEnMaybe_19 & ABSTRACTCSWrEnLegal) begin
			    programBufferMem_19 <= auto_dmi_in_a_bits_data[31:24];
			end
		end

		if (_T_12933 & _T_4306) begin
			programBufferMem_20 <= auto_tl_in_a_bits_data[7:0];
		end else begin
			if (dmiProgramBufferWrEnMaybe_20 & ABSTRACTCSWrEnLegal) begin
				programBufferMem_20 <= auto_dmi_in_a_bits_data[7:0];
			end
		end

		if (_T_12933 & _T_4329) begin
			programBufferMem_21 <= auto_tl_in_a_bits_data[15:8];
		end
		else begin
			if (dmiProgramBufferWrEnMaybe_21 & ABSTRACTCSWrEnLegal) begin
				programBufferMem_21 <= auto_dmi_in_a_bits_data[15:8];
			end
		end

		if (_T_12933 & _T_4354) begin
			programBufferMem_22 <= auto_tl_in_a_bits_data[23:16];
		end
		else begin
			if (dmiProgramBufferWrEnMaybe_22 & ABSTRACTCSWrEnLegal) begin
				programBufferMem_22 <= auto_dmi_in_a_bits_data[23:16];
			end
		end

		if (_T_12933 & _T_4379) begin
			programBufferMem_23 <= auto_tl_in_a_bits_data[31:24];
		end
		else begin
			if (dmiProgramBufferWrEnMaybe_23 & ABSTRACTCSWrEnLegal) begin
			    programBufferMem_23 <= auto_dmi_in_a_bits_data[31:24];
			end
		end

		if (_T_12938 & _T_4306) begin
			programBufferMem_24 <= auto_tl_in_a_bits_data[7:0];
		end else begin
			if (dmiProgramBufferWrEnMaybe_24 & ABSTRACTCSWrEnLegal) begin
				programBufferMem_24 <= auto_dmi_in_a_bits_data[7:0];
			end
		end

		if (_T_12938 & _T_4329) begin
			programBufferMem_25 <= auto_tl_in_a_bits_data[15:8];
		end
		else begin
			if (dmiProgramBufferWrEnMaybe_25 & ABSTRACTCSWrEnLegal) begin
				programBufferMem_25 <= auto_dmi_in_a_bits_data[15:8];
			end
		end

		if (_T_12938 & _T_4354) begin
			programBufferMem_26 <= auto_tl_in_a_bits_data[23:16];
		end
		else begin
			if (dmiProgramBufferWrEnMaybe_26 & ABSTRACTCSWrEnLegal) begin
				programBufferMem_26 <= auto_dmi_in_a_bits_data[23:16];
			end
		end

		if (_T_12938 & _T_4379) begin
			programBufferMem_27 <= auto_tl_in_a_bits_data[31:24];
		end
		else begin
			if (dmiProgramBufferWrEnMaybe_27 & ABSTRACTCSWrEnLegal) begin
			    programBufferMem_27 <= auto_dmi_in_a_bits_data[31:24];
			end
		end

		if (_T_12943 & _T_4306) begin
			programBufferMem_28 <= auto_tl_in_a_bits_data[7:0];
		end else begin
			if (dmiProgramBufferWrEnMaybe_28 & ABSTRACTCSWrEnLegal) begin
				programBufferMem_28 <= auto_dmi_in_a_bits_data[7:0];
			end
		end

		if (_T_12943 & _T_4329) begin
			programBufferMem_29 <= auto_tl_in_a_bits_data[15:8];
		end
		else begin
			if (dmiProgramBufferWrEnMaybe_29 & ABSTRACTCSWrEnLegal) begin
				programBufferMem_29 <= auto_dmi_in_a_bits_data[15:8];
			end
		end

		if (_T_12943 & _T_4354) begin
			programBufferMem_30 <= auto_tl_in_a_bits_data[23:16];
		end
		else begin
			if (dmiProgramBufferWrEnMaybe_30 & ABSTRACTCSWrEnLegal) begin
				programBufferMem_30 <= auto_dmi_in_a_bits_data[23:16];
			end
		end

		if (_T_12943 & _T_4379) begin
			programBufferMem_31 <= auto_tl_in_a_bits_data[31:24];
		end
		else begin
			if (dmiProgramBufferWrEnMaybe_31 & ABSTRACTCSWrEnLegal) begin
			    programBufferMem_31 <= auto_dmi_in_a_bits_data[31:24];
			end
		end

		if (_T_12948 & _T_4306) begin
			programBufferMem_32 <= auto_tl_in_a_bits_data[7:0];
		end else begin
			if (dmiProgramBufferWrEnMaybe_32 & ABSTRACTCSWrEnLegal) begin
				programBufferMem_32 <= auto_dmi_in_a_bits_data[7:0];
			end
		end

		if (_T_12948 & _T_4329) begin
			programBufferMem_33 <= auto_tl_in_a_bits_data[15:8];
		end
		else begin
			if (dmiProgramBufferWrEnMaybe_33 & ABSTRACTCSWrEnLegal) begin
				programBufferMem_33 <= auto_dmi_in_a_bits_data[15:8];
			end
		end

		if (_T_12948 & _T_4354) begin
			programBufferMem_34 <= auto_tl_in_a_bits_data[23:16];
		end
		else begin
			if (dmiProgramBufferWrEnMaybe_34 & ABSTRACTCSWrEnLegal) begin
				programBufferMem_34 <= auto_dmi_in_a_bits_data[23:16];
			end
		end

		if (_T_12948 & _T_4379) begin
			programBufferMem_35 <= auto_tl_in_a_bits_data[31:24];
		end
		else begin
			if (dmiProgramBufferWrEnMaybe_35 & ABSTRACTCSWrEnLegal) begin
			    programBufferMem_35 <= auto_dmi_in_a_bits_data[31:24];
			end
		end

		if (_T_12953 & _T_4306) begin
			programBufferMem_36 <= auto_tl_in_a_bits_data[7:0];
		end else begin
			if (dmiProgramBufferWrEnMaybe_36 & ABSTRACTCSWrEnLegal) begin
				programBufferMem_36 <= auto_dmi_in_a_bits_data[7:0];
			end
		end

		if (_T_12953 & _T_4329) begin
			programBufferMem_37 <= auto_tl_in_a_bits_data[15:8];
		end
		else begin
			if (dmiProgramBufferWrEnMaybe_37 & ABSTRACTCSWrEnLegal) begin
				programBufferMem_37 <= auto_dmi_in_a_bits_data[15:8];
			end
		end

		if (_T_12953 & _T_4354) begin
			programBufferMem_38 <= auto_tl_in_a_bits_data[23:16];
		end
		else begin
			if (dmiProgramBufferWrEnMaybe_38 & ABSTRACTCSWrEnLegal) begin
				programBufferMem_38 <= auto_dmi_in_a_bits_data[23:16];
			end
		end

		if (_T_12953 & _T_4379) begin
			programBufferMem_39 <= auto_tl_in_a_bits_data[31:24];
		end
		else begin
			if (dmiProgramBufferWrEnMaybe_39 & ABSTRACTCSWrEnLegal) begin
			    programBufferMem_39 <= auto_dmi_in_a_bits_data[31:24];
			end
		end

		if (_T_12958 & _T_4306) begin
			programBufferMem_40 <= auto_tl_in_a_bits_data[7:0];
		end else begin
			if (dmiProgramBufferWrEnMaybe_40 & ABSTRACTCSWrEnLegal) begin
				programBufferMem_40 <= auto_dmi_in_a_bits_data[7:0];
			end
		end

		if (_T_12958 & _T_4329) begin
			programBufferMem_41 <= auto_tl_in_a_bits_data[15:8];
		end
		else begin
			if (dmiProgramBufferWrEnMaybe_41 & ABSTRACTCSWrEnLegal) begin
				programBufferMem_41 <= auto_dmi_in_a_bits_data[15:8];
			end
		end

		if (_T_12958 & _T_4354) begin
			programBufferMem_42 <= auto_tl_in_a_bits_data[23:16];
		end
		else begin
			if (dmiProgramBufferWrEnMaybe_42 & ABSTRACTCSWrEnLegal) begin
				programBufferMem_42 <= auto_dmi_in_a_bits_data[23:16];
			end
		end

		if (_T_12958 & _T_4379) begin
			programBufferMem_43 <= auto_tl_in_a_bits_data[31:24];
		end
		else begin
			if (dmiProgramBufferWrEnMaybe_43 & ABSTRACTCSWrEnLegal) begin
			    programBufferMem_43 <= auto_dmi_in_a_bits_data[31:24];
			end
		end

		if (_T_12963 & _T_4306) begin
			programBufferMem_44 <= auto_tl_in_a_bits_data[7:0];
		end else begin
			if (dmiProgramBufferWrEnMaybe_44 & ABSTRACTCSWrEnLegal) begin
				programBufferMem_44 <= auto_dmi_in_a_bits_data[7:0];
			end
		end

		if (_T_12963 & _T_4329) begin
			programBufferMem_45 <= auto_tl_in_a_bits_data[15:8];
		end
		else begin
			if (dmiProgramBufferWrEnMaybe_45 & ABSTRACTCSWrEnLegal) begin
				programBufferMem_45 <= auto_dmi_in_a_bits_data[15:8];
			end
		end

		if (_T_12963 & _T_4354) begin
			programBufferMem_46 <= auto_tl_in_a_bits_data[23:16];
		end
		else begin
			if (dmiProgramBufferWrEnMaybe_46 & ABSTRACTCSWrEnLegal) begin
				programBufferMem_46 <= auto_dmi_in_a_bits_data[23:16];
			end
		end

		if (_T_12963 & _T_4379) begin
			programBufferMem_47 <= auto_tl_in_a_bits_data[31:24];
		end
		else begin
			if (dmiProgramBufferWrEnMaybe_47 & ABSTRACTCSWrEnLegal) begin
			    programBufferMem_47 <= auto_dmi_in_a_bits_data[31:24];
			end
		end

		if (_T_12968 & _T_4306) begin
			programBufferMem_48 <= auto_tl_in_a_bits_data[7:0];
		end else begin
			if (dmiProgramBufferWrEnMaybe_48 & ABSTRACTCSWrEnLegal) begin
				programBufferMem_48 <= auto_dmi_in_a_bits_data[7:0];
			end
		end

		if (_T_12968 & _T_4329) begin
			programBufferMem_49 <= auto_tl_in_a_bits_data[15:8];
		end
		else begin
			if (dmiProgramBufferWrEnMaybe_49 & ABSTRACTCSWrEnLegal) begin
				programBufferMem_49 <= auto_dmi_in_a_bits_data[15:8];
			end
		end

		if (_T_12968 & _T_4354) begin
			programBufferMem_50 <= auto_tl_in_a_bits_data[23:16];
		end
		else begin
			if (dmiProgramBufferWrEnMaybe_50 & ABSTRACTCSWrEnLegal) begin
				programBufferMem_50 <= auto_dmi_in_a_bits_data[23:16];
			end
		end

		if (_T_12968 & _T_4379) begin
			programBufferMem_51 <= auto_tl_in_a_bits_data[31:24];
		end
		else begin
			if (dmiProgramBufferWrEnMaybe_51 & ABSTRACTCSWrEnLegal) begin
			    programBufferMem_51 <= auto_dmi_in_a_bits_data[31:24];
			end
		end

		if (_T_12973 & _T_4306) begin
			programBufferMem_52 <= auto_tl_in_a_bits_data[7:0];
		end else begin
			if (dmiProgramBufferWrEnMaybe_52 & ABSTRACTCSWrEnLegal) begin
				programBufferMem_52 <= auto_dmi_in_a_bits_data[7:0];
			end
		end

		if (_T_12973 & _T_4329) begin
			programBufferMem_53 <= auto_tl_in_a_bits_data[15:8];
		end
		else begin
			if (dmiProgramBufferWrEnMaybe_53 & ABSTRACTCSWrEnLegal) begin
				programBufferMem_53 <= auto_dmi_in_a_bits_data[15:8];
			end
		end

		if (_T_12973 & _T_4354) begin
			programBufferMem_54 <= auto_tl_in_a_bits_data[23:16];
		end
		else begin
			if (dmiProgramBufferWrEnMaybe_54 & ABSTRACTCSWrEnLegal) begin
				programBufferMem_54 <= auto_dmi_in_a_bits_data[23:16];
			end
		end

		if (_T_12973 & _T_4379) begin
			programBufferMem_55 <= auto_tl_in_a_bits_data[31:24];
		end
		else begin
			if (dmiProgramBufferWrEnMaybe_55 & ABSTRACTCSWrEnLegal) begin
			    programBufferMem_55 <= auto_dmi_in_a_bits_data[31:24];
			end
		end

		if (_T_12978 & _T_4306) begin
			programBufferMem_56 <= auto_tl_in_a_bits_data[7:0];
		end else begin
			if (dmiProgramBufferWrEnMaybe_56 & ABSTRACTCSWrEnLegal) begin
				programBufferMem_56 <= auto_dmi_in_a_bits_data[7:0];
			end
		end

		if (_T_12978 & _T_4329) begin
			programBufferMem_57 <= auto_tl_in_a_bits_data[15:8];
		end
		else begin
			if (dmiProgramBufferWrEnMaybe_57 & ABSTRACTCSWrEnLegal) begin
				programBufferMem_57 <= auto_dmi_in_a_bits_data[15:8];
			end
		end

		if (_T_12978 & _T_4354) begin
			programBufferMem_58 <= auto_tl_in_a_bits_data[23:16];
		end
		else begin
			if (dmiProgramBufferWrEnMaybe_58 & ABSTRACTCSWrEnLegal) begin
				programBufferMem_58 <= auto_dmi_in_a_bits_data[23:16];
			end
		end

		if (_T_12978 & _T_4379) begin
			programBufferMem_59 <= auto_tl_in_a_bits_data[31:24];
		end
		else begin
			if (dmiProgramBufferWrEnMaybe_59 & ABSTRACTCSWrEnLegal) begin
			    programBufferMem_59 <= auto_dmi_in_a_bits_data[31:24];
			end
		end

		if (_T_12983 & _T_4306) begin
			programBufferMem_60 <= auto_tl_in_a_bits_data[7:0];
		end else begin
			if (dmiProgramBufferWrEnMaybe_60 & ABSTRACTCSWrEnLegal) begin
				programBufferMem_60 <= auto_dmi_in_a_bits_data[7:0];
			end
		end

		if (_T_12983 & _T_4329) begin
			programBufferMem_61 <= auto_tl_in_a_bits_data[15:8];
		end
		else begin
			if (dmiProgramBufferWrEnMaybe_61 & ABSTRACTCSWrEnLegal) begin
				programBufferMem_61 <= auto_dmi_in_a_bits_data[15:8];
			end
		end

		if (_T_12983 & _T_4354) begin
			programBufferMem_62 <= auto_tl_in_a_bits_data[23:16];
		end
		else begin
			if (dmiProgramBufferWrEnMaybe_62 & ABSTRACTCSWrEnLegal) begin
				programBufferMem_62 <= auto_dmi_in_a_bits_data[23:16];
			end
		end

		if (_T_12983 & _T_4379) begin
			programBufferMem_63 <= auto_tl_in_a_bits_data[31:24];
		end
		else begin
			if (dmiProgramBufferWrEnMaybe_63 & ABSTRACTCSWrEnLegal) begin
			    programBufferMem_63 <= auto_dmi_in_a_bits_data[31:24];
			end
		end
	end
end

always @(posedge clock) begin
	if (_T_12) begin
		goReg <= 1'h0;
	end
	else begin
		if (goAbstract) goReg <= 1'h1;
		else if (hartGoingWrEn) goReg <= 1'h0;
	end
end

always @(posedge clock) begin
	if (goAbstract) begin
		if (accessRegisterCommandReg_transfer) begin
			if (accessRegisterCommandReg_write) begin
				abstractGeneratedMem_0 <= {17'h7000,accessRegisterCommandReg_size,abstractGeneratedI_rd,7'h3};
			end
			else begin
				abstractGeneratedMem_0 <= {7'h1c,abstractGeneratedI_rd,5'h0,accessRegisterCommandReg_size,5'h0,7'h23};
			end
		end
		else begin
			abstractGeneratedMem_0 <= 32'h13;
		end

		if (accessRegisterCommandReg_postexec) begin
			abstractGeneratedMem_1 <= 32'h13;
		end
		else begin
			abstractGeneratedMem_1 <= 32'h100073;
		end
	end
end

`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`ifdef RANDOMIZE
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_51;
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_53;
  reg [31:0] _RAND_54;
  reg [31:0] _RAND_55;
  reg [31:0] _RAND_56;
  reg [31:0] _RAND_57;
  reg [31:0] _RAND_58;
  reg [31:0] _RAND_59;
  reg [31:0] _RAND_60;
  reg [31:0] _RAND_61;
  reg [31:0] _RAND_62;
  reg [31:0] _RAND_63;
  reg [31:0] _RAND_64;
  reg [31:0] _RAND_65;
  reg [31:0] _RAND_66;
  reg [31:0] _RAND_67;
  reg [31:0] _RAND_68;
  reg [31:0] _RAND_69;
  reg [31:0] _RAND_70;
  reg [31:0] _RAND_71;
  reg [31:0] _RAND_72;
  reg [31:0] _RAND_73;
  reg [31:0] _RAND_74;
  reg [31:0] _RAND_75;
  reg [31:0] _RAND_76;
  reg [31:0] _RAND_77;
  reg [31:0] _RAND_78;
  reg [31:0] _RAND_79;
  reg [31:0] _RAND_80;
  reg [31:0] _RAND_81;
`endif
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
  haltedBitRegs_0 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  resumeReqRegs_0 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  haveResetBitRegs_0 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  hrDebugInt_0 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  hrmaskReg_0 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  ABSTRACTCSReg_cmderr = _RAND_5[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  ctrlStateReg = _RAND_6[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  COMMANDRdData_cmdtype = _RAND_7[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  COMMANDRdData_control = _RAND_8[23:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  ABSTRACTAUTOReg_autoexecdata = _RAND_9[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  ABSTRACTAUTOReg_autoexecprogbuf = _RAND_10[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  abstractDataMem_0 = _RAND_11[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  abstractDataMem_1 = _RAND_12[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  abstractDataMem_2 = _RAND_13[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  abstractDataMem_3 = _RAND_14[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  programBufferMem_0 = _RAND_15[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  programBufferMem_1 = _RAND_16[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  programBufferMem_2 = _RAND_17[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  programBufferMem_3 = _RAND_18[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  programBufferMem_4 = _RAND_19[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  programBufferMem_5 = _RAND_20[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  programBufferMem_6 = _RAND_21[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  programBufferMem_7 = _RAND_22[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  programBufferMem_8 = _RAND_23[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  programBufferMem_9 = _RAND_24[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  programBufferMem_10 = _RAND_25[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  programBufferMem_11 = _RAND_26[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  programBufferMem_12 = _RAND_27[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  programBufferMem_13 = _RAND_28[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  programBufferMem_14 = _RAND_29[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{`RANDOM}};
  programBufferMem_15 = _RAND_30[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{`RANDOM}};
  programBufferMem_16 = _RAND_31[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{`RANDOM}};
  programBufferMem_17 = _RAND_32[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{`RANDOM}};
  programBufferMem_18 = _RAND_33[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{`RANDOM}};
  programBufferMem_19 = _RAND_34[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{`RANDOM}};
  programBufferMem_20 = _RAND_35[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{`RANDOM}};
  programBufferMem_21 = _RAND_36[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{`RANDOM}};
  programBufferMem_22 = _RAND_37[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{`RANDOM}};
  programBufferMem_23 = _RAND_38[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {1{`RANDOM}};
  programBufferMem_24 = _RAND_39[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{`RANDOM}};
  programBufferMem_25 = _RAND_40[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {1{`RANDOM}};
  programBufferMem_26 = _RAND_41[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {1{`RANDOM}};
  programBufferMem_27 = _RAND_42[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {1{`RANDOM}};
  programBufferMem_28 = _RAND_43[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {1{`RANDOM}};
  programBufferMem_29 = _RAND_44[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_45 = {1{`RANDOM}};
  programBufferMem_30 = _RAND_45[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_46 = {1{`RANDOM}};
  programBufferMem_31 = _RAND_46[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_47 = {1{`RANDOM}};
  programBufferMem_32 = _RAND_47[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_48 = {1{`RANDOM}};
  programBufferMem_33 = _RAND_48[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_49 = {1{`RANDOM}};
  programBufferMem_34 = _RAND_49[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_50 = {1{`RANDOM}};
  programBufferMem_35 = _RAND_50[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_51 = {1{`RANDOM}};
  programBufferMem_36 = _RAND_51[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_52 = {1{`RANDOM}};
  programBufferMem_37 = _RAND_52[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_53 = {1{`RANDOM}};
  programBufferMem_38 = _RAND_53[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_54 = {1{`RANDOM}};
  programBufferMem_39 = _RAND_54[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_55 = {1{`RANDOM}};
  programBufferMem_40 = _RAND_55[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_56 = {1{`RANDOM}};
  programBufferMem_41 = _RAND_56[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_57 = {1{`RANDOM}};
  programBufferMem_42 = _RAND_57[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_58 = {1{`RANDOM}};
  programBufferMem_43 = _RAND_58[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_59 = {1{`RANDOM}};
  programBufferMem_44 = _RAND_59[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_60 = {1{`RANDOM}};
  programBufferMem_45 = _RAND_60[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_61 = {1{`RANDOM}};
  programBufferMem_46 = _RAND_61[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_62 = {1{`RANDOM}};
  programBufferMem_47 = _RAND_62[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_63 = {1{`RANDOM}};
  programBufferMem_48 = _RAND_63[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_64 = {1{`RANDOM}};
  programBufferMem_49 = _RAND_64[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_65 = {1{`RANDOM}};
  programBufferMem_50 = _RAND_65[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_66 = {1{`RANDOM}};
  programBufferMem_51 = _RAND_66[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_67 = {1{`RANDOM}};
  programBufferMem_52 = _RAND_67[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_68 = {1{`RANDOM}};
  programBufferMem_53 = _RAND_68[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_69 = {1{`RANDOM}};
  programBufferMem_54 = _RAND_69[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_70 = {1{`RANDOM}};
  programBufferMem_55 = _RAND_70[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_71 = {1{`RANDOM}};
  programBufferMem_56 = _RAND_71[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_72 = {1{`RANDOM}};
  programBufferMem_57 = _RAND_72[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_73 = {1{`RANDOM}};
  programBufferMem_58 = _RAND_73[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_74 = {1{`RANDOM}};
  programBufferMem_59 = _RAND_74[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_75 = {1{`RANDOM}};
  programBufferMem_60 = _RAND_75[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_76 = {1{`RANDOM}};
  programBufferMem_61 = _RAND_76[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_77 = {1{`RANDOM}};
  programBufferMem_62 = _RAND_77[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_78 = {1{`RANDOM}};
  programBufferMem_63 = _RAND_78[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_79 = {1{`RANDOM}};
  goReg = _RAND_79[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_80 = {1{`RANDOM}};
  abstractGeneratedMem_0 = _RAND_80[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_81 = {1{`RANDOM}};
  abstractGeneratedMem_1 = _RAND_81[31:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end

`ifndef SYNTHESIS
  wire _GEN_2743 = !_T_12 & !goAbstract & hartGoingWrEn;
  wire _T_4074 = ((hartHaltedId == 10'h0) | reset) == 1'h0;
  wire _GEN_2752 = !ABSTRACTCSWrEnLegal & !(ctrlStateReg == 2'h1) & (ctrlStateReg == 2'h2) & hartExceptionWrEn;
  wire _GEN_2763 = !ABSTRACTCSWrEnLegal & !(ctrlStateReg == 2'h1) & !(ctrlStateReg == 2'h2) & (ctrlStateReg == 2'h3);
  wire _T_19721 = reset == 1'h0;
  wire _T_19733 = (!io_dmactive | !hartExceptionWrEn | (ctrlStateReg == 2'h2) | reset) == 1'h0;
`endif // SYNTHESIS

  always @(posedge clock) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_2743 & _T_4074) begin
          $fwrite(32'h80000002,"Assertion failed: Unexpected 'GOING' hart.\n    at Debug.scala:1346 assert(hartGoingId === 0.U, \"Unexpected 'GOING' hart.\")//Chisel3 #540 %%x, expected %%x\", hartGoingId, 0.U)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_2743 & _T_4074) begin
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
        if (_GEN_2752 & _T_4074) begin
          $fwrite(32'h80000002,"Assertion failed: Unexpected 'EXCEPTION' hart\n    at Debug.scala:1606 assert(hartExceptionId === 0.U, \"Unexpected 'EXCEPTION' hart\")//Chisel3 #540, %%x, expected %%x\", hartExceptionId, 0.U)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_2752 & _T_4074) begin
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
        if (_GEN_2763 & _T_19721) begin
          $fwrite(32'h80000002,"Assertion failed: Should not be in custom state unless we need it.\n    at Debug.scala:1611 assert(needCustom.B, \"Should not be in custom state unless we need it.\")\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_2763 & _T_19721) begin
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
        if (_T_19733) begin
          $fwrite(32'h80000002,"Assertion failed: Unexpected EXCEPTION write: should only get it in Debug Module EXEC state\n    at Debug.scala:1624 assert ((!io.dmactive || !hartExceptionWrEn || ctrlStateReg === CtrlState(Exec)),\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_19733) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end

`endif // MY_ASSIGNMENT

endmodule
`endif // __TLDebugModuleInner
