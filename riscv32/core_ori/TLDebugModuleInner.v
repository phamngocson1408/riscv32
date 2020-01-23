`include "include_module.v"
`ifdef __TLDebugModuleInner
module TLDebugModuleInner( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78918.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78919.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78920.4]
  output        auto_tl_in_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78921.4]
  input         auto_tl_in_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78921.4]
  input  [2:0]  auto_tl_in_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78921.4]
  input  [2:0]  auto_tl_in_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78921.4]
  input  [1:0]  auto_tl_in_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78921.4]
  input  [9:0]  auto_tl_in_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78921.4]
  input  [11:0] auto_tl_in_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78921.4]
  input  [3:0]  auto_tl_in_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78921.4]
  input  [31:0] auto_tl_in_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78921.4]
  input         auto_tl_in_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78921.4]
  input         auto_tl_in_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78921.4]
  output        auto_tl_in_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78921.4]
  output [2:0]  auto_tl_in_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78921.4]
  output [1:0]  auto_tl_in_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78921.4]
  output [9:0]  auto_tl_in_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78921.4]
  output [31:0] auto_tl_in_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78921.4]
  output        auto_dmi_in_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78921.4]
  input         auto_dmi_in_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78921.4]
  input  [2:0]  auto_dmi_in_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78921.4]
  input  [2:0]  auto_dmi_in_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78921.4]
  input  [1:0]  auto_dmi_in_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78921.4]
  input         auto_dmi_in_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78921.4]
  input  [8:0]  auto_dmi_in_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78921.4]
  input  [3:0]  auto_dmi_in_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78921.4]
  input  [31:0] auto_dmi_in_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78921.4]
  input         auto_dmi_in_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78921.4]
  input         auto_dmi_in_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78921.4]
  output        auto_dmi_in_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78921.4]
  output [2:0]  auto_dmi_in_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78921.4]
  output [1:0]  auto_dmi_in_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78921.4]
  output        auto_dmi_in_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78921.4]
  output [31:0] auto_dmi_in_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78921.4]
  input         io_dmactive, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78922.4]
  output        io_innerCtrl_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78922.4]
  input         io_innerCtrl_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78922.4]
  input         io_innerCtrl_bits_resumereq, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78922.4]
  input  [9:0]  io_innerCtrl_bits_hartsel, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78922.4]
  input         io_innerCtrl_bits_ackhavereset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78922.4]
  input         io_innerCtrl_bits_hrmask_0, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78922.4]
  output        io_hgDebugInt_0 // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78922.4]
);
  wire  TLMonitor_clock; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@78930.4]
  wire  TLMonitor_reset; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@78930.4]
  wire  TLMonitor_io_in_a_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@78930.4]
  wire  TLMonitor_io_in_a_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@78930.4]
  wire [2:0] TLMonitor_io_in_a_bits_opcode; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@78930.4]
  wire [2:0] TLMonitor_io_in_a_bits_param; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@78930.4]
  wire [1:0] TLMonitor_io_in_a_bits_size; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@78930.4]
  wire  TLMonitor_io_in_a_bits_source; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@78930.4]
  wire [8:0] TLMonitor_io_in_a_bits_address; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@78930.4]
  wire [3:0] TLMonitor_io_in_a_bits_mask; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@78930.4]
  wire  TLMonitor_io_in_a_bits_corrupt; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@78930.4]
  wire  TLMonitor_io_in_d_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@78930.4]
  wire  TLMonitor_io_in_d_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@78930.4]
  wire [2:0] TLMonitor_io_in_d_bits_opcode; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@78930.4]
  wire [1:0] TLMonitor_io_in_d_bits_size; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@78930.4]
  wire  TLMonitor_io_in_d_bits_source; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@78930.4]
  wire  TLMonitor_1_clock; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@78955.4]
  wire  TLMonitor_1_reset; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@78955.4]
  wire  TLMonitor_1_io_in_a_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@78955.4]
  wire  TLMonitor_1_io_in_a_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@78955.4]
  wire [2:0] TLMonitor_1_io_in_a_bits_opcode; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@78955.4]
  wire [2:0] TLMonitor_1_io_in_a_bits_param; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@78955.4]
  wire [1:0] TLMonitor_1_io_in_a_bits_size; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@78955.4]
  wire [9:0] TLMonitor_1_io_in_a_bits_source; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@78955.4]
  wire [11:0] TLMonitor_1_io_in_a_bits_address; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@78955.4]
  wire [3:0] TLMonitor_1_io_in_a_bits_mask; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@78955.4]
  wire  TLMonitor_1_io_in_a_bits_corrupt; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@78955.4]
  wire  TLMonitor_1_io_in_d_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@78955.4]
  wire  TLMonitor_1_io_in_d_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@78955.4]
  wire [2:0] TLMonitor_1_io_in_d_bits_opcode; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@78955.4]
  wire [1:0] TLMonitor_1_io_in_d_bits_size; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@78955.4]
  wire [9:0] TLMonitor_1_io_in_d_bits_source; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@78955.4]
  reg  haltedBitRegs_0; // @[Debug.scala 722:31:freechips.rocketchip.system.DefaultRV32Config.fir@78983.4]
  reg [31:0] _RAND_0;
  reg  resumeReqRegs_0; // @[Debug.scala 723:31:freechips.rocketchip.system.DefaultRV32Config.fir@78984.4]
  reg [31:0] _RAND_1;
  reg  haveResetBitRegs_0; // @[Debug.scala 724:31:freechips.rocketchip.system.DefaultRV32Config.fir@78985.4]
  reg [31:0] _RAND_2;
  wire  hamaskWrSel_0; // @[Debug.scala 782:61:freechips.rocketchip.system.DefaultRV32Config.fir@79182.4]
  reg  hrDebugInt_0; // @[Debug.scala 794:25:freechips.rocketchip.system.DefaultRV32Config.fir@79190.4]
  reg [31:0] _RAND_3;
  reg  hrmaskReg_0; // @[Debug.scala 795:25:freechips.rocketchip.system.DefaultRV32Config.fir@79191.4]
  reg [31:0] _RAND_4;
  wire  _T_12; // @[Debug.scala 803:11:freechips.rocketchip.system.DefaultRV32Config.fir@79195.4]
  wire  _T_15; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@79203.6]
  wire  _T_16; // @[package.scala 62:38:freechips.rocketchip.system.DefaultRV32Config.fir@79207.6]
  wire  _T_17; // @[package.scala 57:72:freechips.rocketchip.system.DefaultRV32Config.fir@79208.6]
  wire  _T_18; // @[package.scala 58:75:freechips.rocketchip.system.DefaultRV32Config.fir@79209.6]
  wire  _T_19; // @[package.scala 57:72:freechips.rocketchip.system.DefaultRV32Config.fir@79210.6]
  wire  resumereq; // @[Debug.scala 826:41:freechips.rocketchip.system.DefaultRV32Config.fir@79264.4]
  wire  DMSTATUSRdData_anyresumeack; // @[package.scala 62:38:freechips.rocketchip.system.DefaultRV32Config.fir@79288.8]
  wire  _T_80; // @[Debug.scala 860:39:freechips.rocketchip.system.DefaultRV32Config.fir@79331.8]
  wire  _T_81; // @[Debug.scala 860:73:freechips.rocketchip.system.DefaultRV32Config.fir@79332.8]
  wire  _GEN_34; // @[Debug.scala 860:100:freechips.rocketchip.system.DefaultRV32Config.fir@79333.8]
  wire  _GEN_35; // @[Debug.scala 858:42:freechips.rocketchip.system.DefaultRV32Config.fir@79326.6]
  wire [31:0] haltedStatus_0; // @[Debug.scala 1009:30:freechips.rocketchip.system.DefaultRV32Config.fir@79417.4 Debug.scala 1013:26:freechips.rocketchip.system.DefaultRV32Config.fir@79420.6 Debug.scala 1015:26:freechips.rocketchip.system.DefaultRV32Config.fir@79423.6]
  wire  haltedSummary; // @[Debug.scala 1019:48:freechips.rocketchip.system.DefaultRV32Config.fir@79425.4]
  wire [31:0] HALTSUM1RdData_haltsum1; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79428.4 :freechips.rocketchip.system.DefaultRV32Config.fir@79430.4]
  reg [2:0] ABSTRACTCSReg_cmderr; // @[Debug.scala 1033:34:freechips.rocketchip.system.DefaultRV32Config.fir@79470.4]
  reg [31:0] _RAND_5;
  wire  _T_440; // @[RegisterRouter.scala 59:36:freechips.rocketchip.system.DefaultRV32Config.fir@80175.4]
  wire [6:0] _T_441; // @[Edges.scala 193:34:freechips.rocketchip.system.DefaultRV32Config.fir@80177.4]
  wire  _T_3112; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83210.4]
  wire  _T_3110; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83208.4]
  wire  _T_3109; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83207.4]
  wire  _T_3108; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83206.4]
  wire  _T_3107; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83205.4]
  wire [4:0] _T_3117; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@83215.4]
  wire [6:0] _T_446; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80189.4]
  wire  _T_494; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80237.4]
  wire  _T_450; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80193.4]
  wire  _T_468; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80211.4]
  wire  _T_3691; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84395.4]
  wire  _T_3692; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84396.4]
  wire  _T_3693; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84397.4]
  wire [31:0] _T_3162; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@83260.4]
  wire  _T_3169; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83267.4]
  wire  _T_3725; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84472.4]
  wire  _T_3726; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84473.4]
  wire  _T_518; // @[Bitwise.scala 26:51:freechips.rocketchip.system.DefaultRV32Config.fir@80265.4]
  wire [7:0] _T_526; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@80273.4]
  wire  _T_517; // @[Bitwise.scala 26:51:freechips.rocketchip.system.DefaultRV32Config.fir@80264.4]
  wire [7:0] _T_524; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@80271.4]
  wire  _T_516; // @[Bitwise.scala 26:51:freechips.rocketchip.system.DefaultRV32Config.fir@80263.4]
  wire [7:0] _T_522; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@80269.4]
  wire  _T_515; // @[Bitwise.scala 26:51:freechips.rocketchip.system.DefaultRV32Config.fir@80262.4]
  wire [7:0] _T_520; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@80267.4]
  wire [31:0] _T_529; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@80276.4]
  wire [2:0] _T_2035; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@81966.4]
  wire  _T_2036; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@81967.4]
  wire  ABSTRACTCSWrEnMaybe; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@81971.4]
  reg [1:0] ctrlStateReg; // @[Debug.scala 1512:27:freechips.rocketchip.system.DefaultRV32Config.fir@108530.4]
  reg [31:0] _RAND_6;
  wire  ABSTRACTCSWrEnLegal; // @[Debug.scala 1522:44:freechips.rocketchip.system.DefaultRV32Config.fir@108536.4]
  wire  ABSTRACTCSWrEn; // @[Debug.scala 1041:51:freechips.rocketchip.system.DefaultRV32Config.fir@79507.4]
  wire [2:0] ABSTRACTCSWrData_cmderr; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@81972.4]
  wire [2:0] _T_136; // @[Debug.scala 1061:58:freechips.rocketchip.system.DefaultRV32Config.fir@79544.16]
  wire [2:0] _T_137; // @[Debug.scala 1061:56:freechips.rocketchip.system.DefaultRV32Config.fir@79545.16]
  wire  _T_19708; // @[Debug.scala 1576:30:freechips.rocketchip.system.DefaultRV32Config.fir@108616.6]
  reg [7:0] COMMANDRdData_cmdtype; // @[Debug.scala 1118:25:freechips.rocketchip.system.DefaultRV32Config.fir@80018.4]
  reg [31:0] _RAND_7;
  wire  commandRegIsAccessRegister; // @[Debug.scala 1537:58:freechips.rocketchip.system.DefaultRV32Config.fir@108565.4]
  reg [23:0] COMMANDRdData_control; // @[Debug.scala 1118:25:freechips.rocketchip.system.DefaultRV32Config.fir@80018.4]
  reg [31:0] _RAND_8;
  wire [31:0] _T_4104; // @[Debug.scala 1372:104:freechips.rocketchip.system.DefaultRV32Config.fir@85414.4]
  wire  accessRegisterCommandReg_transfer; // @[Debug.scala 1372:86:freechips.rocketchip.system.DefaultRV32Config.fir@85424.4]
  wire  accessRegisterCommandReg_write; // @[Debug.scala 1372:86:freechips.rocketchip.system.DefaultRV32Config.fir@85422.4]
  wire  _T_19698; // @[Debug.scala 1555:19:freechips.rocketchip.system.DefaultRV32Config.fir@108585.8]
  wire [15:0] accessRegisterCommandReg_regno; // @[Debug.scala 1372:86:freechips.rocketchip.system.DefaultRV32Config.fir@85420.4]
  wire  _T_19693; // @[Debug.scala 1545:58:freechips.rocketchip.system.DefaultRV32Config.fir@108574.4]
  wire  _T_19694; // @[Debug.scala 1545:104:freechips.rocketchip.system.DefaultRV32Config.fir@108575.4]
  wire  accessRegIsGPR; // @[Debug.scala 1545:70:freechips.rocketchip.system.DefaultRV32Config.fir@108576.4]
  wire  _T_19699; // @[Debug.scala 1555:54:freechips.rocketchip.system.DefaultRV32Config.fir@108586.8]
  wire  _GEN_2691; // @[Debug.scala 1555:73:freechips.rocketchip.system.DefaultRV32Config.fir@108587.8]
  wire  commandRegIsUnsupported; // @[Debug.scala 1552:39:freechips.rocketchip.system.DefaultRV32Config.fir@108577.4]
  wire  _T_19700; // @[Debug.scala 1557:36:freechips.rocketchip.system.DefaultRV32Config.fir@108589.10]
  wire  _GEN_2692; // @[Debug.scala 1555:73:freechips.rocketchip.system.DefaultRV32Config.fir@108587.8]
  wire  commandRegBadHaltResume; // @[Debug.scala 1552:39:freechips.rocketchip.system.DefaultRV32Config.fir@108577.4]
  wire  _GEN_2708; // @[Debug.scala 1583:38:freechips.rocketchip.system.DefaultRV32Config.fir@108618.8]
  wire  _GEN_2721; // @[Debug.scala 1576:59:freechips.rocketchip.system.DefaultRV32Config.fir@108617.6]
  wire  errorHaltResume; // @[Debug.scala 1568:47:freechips.rocketchip.system.DefaultRV32Config.fir@108600.4]
  wire  _T_3170; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83268.4]
  wire  _T_3730; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84486.4]
  wire  _T_3731; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84487.4]
  wire  _T_2774; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82807.4]
  wire  COMMANDWrEnMaybe; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82811.4]
  wire  COMMANDWrEn; // @[Debug.scala 1126:40:freechips.rocketchip.system.DefaultRV32Config.fir@80043.4]
  wire [31:0] COMMANDWrDataVal; // @[Debug.scala 259:24:freechips.rocketchip.system.DefaultRV32Config.fir@82815.4]
  wire [7:0] COMMANDWrData_cmdtype; // @[Debug.scala 1121:73:freechips.rocketchip.system.DefaultRV32Config.fir@80029.4]
  wire  commandWrIsAccessRegister; // @[Debug.scala 1536:60:freechips.rocketchip.system.DefaultRV32Config.fir@108564.4]
  wire  _T_19701; // @[Debug.scala 1561:48:freechips.rocketchip.system.DefaultRV32Config.fir@108593.4]
  wire  _T_19702; // @[Debug.scala 1561:103:freechips.rocketchip.system.DefaultRV32Config.fir@108594.4]
  wire  wrAccessRegisterCommand; // @[Debug.scala 1561:78:freechips.rocketchip.system.DefaultRV32Config.fir@108595.4]
  wire  _T_3167; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83265.4]
  wire  _T_3715; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84454.4]
  wire  _T_3716; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84455.4]
  wire [7:0] _T_2917; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82975.4]
  wire  _T_2918; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82976.4]
  wire  dmiAbstractDataWrEnMaybe_0; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82980.4]
  wire  _T_3527; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84029.4]
  wire  _T_3549; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84086.4]
  wire  _T_3550; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84087.4]
  wire  _T_2916; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82974.4]
  wire  dmiAbstractDataRdEn_0; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82978.4]
  wire  dmiAbstractDataAccessVec_0; // @[Debug.scala 1099:105:freechips.rocketchip.system.DefaultRV32Config.fir@79630.4]
  reg [11:0] ABSTRACTAUTOReg_autoexecdata; // @[Debug.scala 1077:36:freechips.rocketchip.system.DefaultRV32Config.fir@79573.4]
  reg [31:0] _RAND_9;
  wire  _T_292; // @[Debug.scala 1110:54:freechips.rocketchip.system.DefaultRV32Config.fir@79928.4]
  wire  autoexecData_0; // @[Debug.scala 1110:140:freechips.rocketchip.system.DefaultRV32Config.fir@79940.4]
  wire  _T_3179; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83277.4]
  wire  _T_3775; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84553.4]
  wire  _T_3776; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84554.4]
  wire  dmiProgramBufferWrEnMaybe_0; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@81073.4]
  wire  _T_3609; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84185.4]
  wire  _T_3610; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84186.4]
  wire  dmiProgramBufferRdEn_0; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@81071.4]
  wire  dmiProgramBufferAccessVec_0; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79707.4]
  reg [15:0] ABSTRACTAUTOReg_autoexecprogbuf; // @[Debug.scala 1077:36:freechips.rocketchip.system.DefaultRV32Config.fir@79573.4]
  reg [31:0] _RAND_10;
  wire  _T_305; // @[Debug.scala 1111:57:freechips.rocketchip.system.DefaultRV32Config.fir@79942.4]
  wire  autoexecProg_0; // @[Debug.scala 1111:144:freechips.rocketchip.system.DefaultRV32Config.fir@79958.4]
  wire  _T_3180; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83278.4]
  wire  _T_3780; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84564.4]
  wire  _T_3781; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84565.4]
  wire  dmiProgramBufferWrEnMaybe_4; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80837.4]
  wire  _T_3614; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84196.4]
  wire  _T_3615; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84197.4]
  wire  dmiProgramBufferRdEn_4; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80835.4]
  wire  dmiProgramBufferAccessVec_4; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79711.4]
  wire  _T_306; // @[Debug.scala 1111:57:freechips.rocketchip.system.DefaultRV32Config.fir@79943.4]
  wire  autoexecProg_1; // @[Debug.scala 1111:144:freechips.rocketchip.system.DefaultRV32Config.fir@79960.4]
  wire  _T_337; // @[Debug.scala 1113:73:freechips.rocketchip.system.DefaultRV32Config.fir@79990.4]
  wire  _T_3181; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83279.4]
  wire  _T_3785; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84575.4]
  wire  _T_3786; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84576.4]
  wire  dmiProgramBufferWrEnMaybe_8; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@81191.4]
  wire  _T_3619; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84207.4]
  wire  _T_3620; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84208.4]
  wire  dmiProgramBufferRdEn_8; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@81189.4]
  wire  dmiProgramBufferAccessVec_8; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79715.4]
  wire  _T_307; // @[Debug.scala 1111:57:freechips.rocketchip.system.DefaultRV32Config.fir@79944.4]
  wire  autoexecProg_2; // @[Debug.scala 1111:144:freechips.rocketchip.system.DefaultRV32Config.fir@79962.4]
  wire  _T_338; // @[Debug.scala 1113:73:freechips.rocketchip.system.DefaultRV32Config.fir@79991.4]
  wire  _T_3182; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83280.4]
  wire  _T_3790; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84586.4]
  wire  _T_3791; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84587.4]
  wire  dmiProgramBufferWrEnMaybe_12; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82334.4]
  wire  _T_3624; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84218.4]
  wire  _T_3625; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84219.4]
  wire  dmiProgramBufferRdEn_12; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82332.4]
  wire  dmiProgramBufferAccessVec_12; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79719.4]
  wire  _T_308; // @[Debug.scala 1111:57:freechips.rocketchip.system.DefaultRV32Config.fir@79945.4]
  wire  autoexecProg_3; // @[Debug.scala 1111:144:freechips.rocketchip.system.DefaultRV32Config.fir@79964.4]
  wire  _T_339; // @[Debug.scala 1113:73:freechips.rocketchip.system.DefaultRV32Config.fir@79992.4]
  wire  _T_3183; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83281.4]
  wire  _T_3795; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84597.4]
  wire  _T_3796; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84598.4]
  wire  dmiProgramBufferWrEnMaybe_16; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82839.4]
  wire  _T_3629; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84229.4]
  wire  _T_3630; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84230.4]
  wire  dmiProgramBufferRdEn_16; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82837.4]
  wire  dmiProgramBufferAccessVec_16; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79723.4]
  wire  _T_309; // @[Debug.scala 1111:57:freechips.rocketchip.system.DefaultRV32Config.fir@79946.4]
  wire  autoexecProg_4; // @[Debug.scala 1111:144:freechips.rocketchip.system.DefaultRV32Config.fir@79966.4]
  wire  _T_340; // @[Debug.scala 1113:73:freechips.rocketchip.system.DefaultRV32Config.fir@79993.4]
  wire  _T_3184; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83282.4]
  wire  _T_3800; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84608.4]
  wire  _T_3801; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84609.4]
  wire  dmiProgramBufferWrEnMaybe_20; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80483.4]
  wire  _T_3634; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84240.4]
  wire  _T_3635; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84241.4]
  wire  dmiProgramBufferRdEn_20; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80481.4]
  wire  dmiProgramBufferAccessVec_20; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79727.4]
  wire  _T_310; // @[Debug.scala 1111:57:freechips.rocketchip.system.DefaultRV32Config.fir@79947.4]
  wire  autoexecProg_5; // @[Debug.scala 1111:144:freechips.rocketchip.system.DefaultRV32Config.fir@79968.4]
  wire  _T_341; // @[Debug.scala 1113:73:freechips.rocketchip.system.DefaultRV32Config.fir@79994.4]
  wire  _T_3185; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83283.4]
  wire  _T_3805; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84619.4]
  wire  _T_3806; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84620.4]
  wire  dmiProgramBufferWrEnMaybe_24; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80719.4]
  wire  _T_3639; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84251.4]
  wire  _T_3640; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84252.4]
  wire  dmiProgramBufferRdEn_24; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80717.4]
  wire  dmiProgramBufferAccessVec_24; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79731.4]
  wire  _T_311; // @[Debug.scala 1111:57:freechips.rocketchip.system.DefaultRV32Config.fir@79948.4]
  wire  autoexecProg_6; // @[Debug.scala 1111:144:freechips.rocketchip.system.DefaultRV32Config.fir@79970.4]
  wire  _T_342; // @[Debug.scala 1113:73:freechips.rocketchip.system.DefaultRV32Config.fir@79995.4]
  wire  _T_3186; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83284.4]
  wire  _T_3810; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84630.4]
  wire  _T_3811; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84631.4]
  wire  dmiProgramBufferWrEnMaybe_28; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82216.4]
  wire  _T_3644; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84262.4]
  wire  _T_3645; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84263.4]
  wire  dmiProgramBufferRdEn_28; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82214.4]
  wire  dmiProgramBufferAccessVec_28; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79735.4]
  wire  _T_312; // @[Debug.scala 1111:57:freechips.rocketchip.system.DefaultRV32Config.fir@79949.4]
  wire  autoexecProg_7; // @[Debug.scala 1111:144:freechips.rocketchip.system.DefaultRV32Config.fir@79972.4]
  wire  _T_343; // @[Debug.scala 1113:73:freechips.rocketchip.system.DefaultRV32Config.fir@79996.4]
  wire  _T_3187; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83285.4]
  wire  _T_3815; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84641.4]
  wire  _T_3816; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84642.4]
  wire  dmiProgramBufferWrEnMaybe_32; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82693.4]
  wire  _T_3649; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84273.4]
  wire  _T_3650; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84274.4]
  wire  dmiProgramBufferRdEn_32; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82691.4]
  wire  dmiProgramBufferAccessVec_32; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79739.4]
  wire  _T_313; // @[Debug.scala 1111:57:freechips.rocketchip.system.DefaultRV32Config.fir@79950.4]
  wire  autoexecProg_8; // @[Debug.scala 1111:144:freechips.rocketchip.system.DefaultRV32Config.fir@79974.4]
  wire  _T_344; // @[Debug.scala 1113:73:freechips.rocketchip.system.DefaultRV32Config.fir@79997.4]
  wire  _T_3188; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83286.4]
  wire  _T_3820; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84652.4]
  wire  _T_3821; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84653.4]
  wire  dmiProgramBufferWrEnMaybe_36; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80955.4]
  wire  _T_3654; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84284.4]
  wire  _T_3655; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84285.4]
  wire  dmiProgramBufferRdEn_36; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80953.4]
  wire  dmiProgramBufferAccessVec_36; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79743.4]
  wire  _T_314; // @[Debug.scala 1111:57:freechips.rocketchip.system.DefaultRV32Config.fir@79951.4]
  wire  autoexecProg_9; // @[Debug.scala 1111:144:freechips.rocketchip.system.DefaultRV32Config.fir@79976.4]
  wire  _T_345; // @[Debug.scala 1113:73:freechips.rocketchip.system.DefaultRV32Config.fir@79998.4]
  wire  _T_3189; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83287.4]
  wire  _T_3825; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84663.4]
  wire  _T_3826; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84664.4]
  wire  dmiProgramBufferWrEnMaybe_40; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80288.4]
  wire  _T_3659; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84295.4]
  wire  _T_3660; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84296.4]
  wire  dmiProgramBufferRdEn_40; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80286.4]
  wire  dmiProgramBufferAccessVec_40; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79747.4]
  wire  _T_315; // @[Debug.scala 1111:57:freechips.rocketchip.system.DefaultRV32Config.fir@79952.4]
  wire  autoexecProg_10; // @[Debug.scala 1111:144:freechips.rocketchip.system.DefaultRV32Config.fir@79978.4]
  wire  _T_346; // @[Debug.scala 1113:73:freechips.rocketchip.system.DefaultRV32Config.fir@79999.4]
  wire  _T_3190; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83288.4]
  wire  _T_3830; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84674.4]
  wire  _T_3831; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84675.4]
  wire  dmiProgramBufferWrEnMaybe_44; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82575.4]
  wire  _T_3664; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84306.4]
  wire  _T_3665; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84307.4]
  wire  dmiProgramBufferRdEn_44; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82573.4]
  wire  dmiProgramBufferAccessVec_44; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79751.4]
  wire  _T_316; // @[Debug.scala 1111:57:freechips.rocketchip.system.DefaultRV32Config.fir@79953.4]
  wire  autoexecProg_11; // @[Debug.scala 1111:144:freechips.rocketchip.system.DefaultRV32Config.fir@79980.4]
  wire  _T_347; // @[Debug.scala 1113:73:freechips.rocketchip.system.DefaultRV32Config.fir@80000.4]
  wire  _T_3191; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83289.4]
  wire  _T_3835; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84685.4]
  wire  _T_3836; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84686.4]
  wire  dmiProgramBufferWrEnMaybe_48; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82098.4]
  wire  _T_3669; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84317.4]
  wire  _T_3670; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84318.4]
  wire  dmiProgramBufferRdEn_48; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82096.4]
  wire  dmiProgramBufferAccessVec_48; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79755.4]
  wire  _T_317; // @[Debug.scala 1111:57:freechips.rocketchip.system.DefaultRV32Config.fir@79954.4]
  wire  autoexecProg_12; // @[Debug.scala 1111:144:freechips.rocketchip.system.DefaultRV32Config.fir@79982.4]
  wire  _T_348; // @[Debug.scala 1113:73:freechips.rocketchip.system.DefaultRV32Config.fir@80001.4]
  wire  _T_3192; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83290.4]
  wire  _T_3840; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84696.4]
  wire  _T_3841; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84697.4]
  wire  dmiProgramBufferWrEnMaybe_52; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@81309.4]
  wire  _T_3674; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84328.4]
  wire  _T_3675; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84329.4]
  wire  dmiProgramBufferRdEn_52; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@81307.4]
  wire  dmiProgramBufferAccessVec_52; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79759.4]
  wire  _T_318; // @[Debug.scala 1111:57:freechips.rocketchip.system.DefaultRV32Config.fir@79955.4]
  wire  autoexecProg_13; // @[Debug.scala 1111:144:freechips.rocketchip.system.DefaultRV32Config.fir@79984.4]
  wire  _T_349; // @[Debug.scala 1113:73:freechips.rocketchip.system.DefaultRV32Config.fir@80002.4]
  wire  _T_3193; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83291.4]
  wire  _T_3845; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84707.4]
  wire  _T_3846; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84708.4]
  wire  dmiProgramBufferWrEnMaybe_56; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80601.4]
  wire  _T_3679; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84339.4]
  wire  _T_3680; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84340.4]
  wire  dmiProgramBufferRdEn_56; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80599.4]
  wire  dmiProgramBufferAccessVec_56; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79763.4]
  wire  _T_319; // @[Debug.scala 1111:57:freechips.rocketchip.system.DefaultRV32Config.fir@79956.4]
  wire  autoexecProg_14; // @[Debug.scala 1111:144:freechips.rocketchip.system.DefaultRV32Config.fir@79986.4]
  wire  _T_350; // @[Debug.scala 1113:73:freechips.rocketchip.system.DefaultRV32Config.fir@80003.4]
  wire  _T_3194; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83292.4]
  wire  _T_3850; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84718.4]
  wire  _T_3851; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84719.4]
  wire  dmiProgramBufferWrEnMaybe_60; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83098.4]
  wire  _T_3684; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84350.4]
  wire  _T_3685; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84351.4]
  wire  dmiProgramBufferRdEn_60; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83096.4]
  wire  dmiProgramBufferAccessVec_60; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79767.4]
  wire  _T_320; // @[Debug.scala 1111:57:freechips.rocketchip.system.DefaultRV32Config.fir@79957.4]
  wire  autoexecProg_15; // @[Debug.scala 1111:144:freechips.rocketchip.system.DefaultRV32Config.fir@79988.4]
  wire  _T_351; // @[Debug.scala 1113:73:freechips.rocketchip.system.DefaultRV32Config.fir@80004.4]
  wire  autoexec; // @[Debug.scala 1113:48:freechips.rocketchip.system.DefaultRV32Config.fir@80005.4]
  wire  _T_19703; // @[Debug.scala 1562:48:freechips.rocketchip.system.DefaultRV32Config.fir@108596.4]
  wire  regAccessRegisterCommand; // @[Debug.scala 1562:78:freechips.rocketchip.system.DefaultRV32Config.fir@108598.4]
  wire  _T_19706; // @[Debug.scala 1569:37:freechips.rocketchip.system.DefaultRV32Config.fir@108601.6]
  wire  _T_19692; // @[Debug.scala 1539:49:freechips.rocketchip.system.DefaultRV32Config.fir@108566.4]
  wire  commandWrIsUnsupported; // @[Debug.scala 1539:46:freechips.rocketchip.system.DefaultRV32Config.fir@108567.4]
  wire  _T_19707; // @[Debug.scala 1573:28:freechips.rocketchip.system.DefaultRV32Config.fir@108610.10]
  wire  _GEN_2698; // @[Debug.scala 1571:43:freechips.rocketchip.system.DefaultRV32Config.fir@108606.8]
  wire  _GEN_2700; // @[Debug.scala 1569:66:freechips.rocketchip.system.DefaultRV32Config.fir@108602.6]
  wire  _GEN_2719; // @[Debug.scala 1576:59:freechips.rocketchip.system.DefaultRV32Config.fir@108617.6]
  wire  errorUnsupported; // @[Debug.scala 1568:47:freechips.rocketchip.system.DefaultRV32Config.fir@108600.4]
  wire  _T_19709; // @[Debug.scala 1597:30:freechips.rocketchip.system.DefaultRV32Config.fir@108638.8]
  wire  _T_4169; // @[RegisterRouter.scala 59:36:freechips.rocketchip.system.DefaultRV32Config.fir@85545.4]
  wire [9:0] _T_4170; // @[Edges.scala 193:34:freechips.rocketchip.system.DefaultRV32Config.fir@85547.4]
  wire  _T_8245; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@89845.4]
  wire  _T_8243; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@89843.4]
  wire  _T_8242; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@89842.4]
  wire  _T_8241; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@89841.4]
  wire  _T_8240; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@89840.4]
  wire  _T_8239; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@89839.4]
  wire  _T_8238; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@89838.4]
  wire  _T_8237; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@89837.4]
  wire  _T_8236; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@89836.4]
  wire [8:0] _T_8253; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@89853.4]
  wire [9:0] _T_4175; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@85559.4]
  wire  _T_4261; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@85645.4]
  wire  _T_4211; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@85595.4]
  wire  _T_16994; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@103688.4]
  wire  _T_16995; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@103689.4]
  wire  _T_16996; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@103690.4]
  wire [511:0] _T_8785; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@90385.4]
  wire  _T_8853; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@90453.4]
  wire  _T_17333; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@104167.4]
  wire  _T_17334; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@104168.4]
  wire  _T_4291; // @[Bitwise.scala 26:51:freechips.rocketchip.system.DefaultRV32Config.fir@85679.4]
  wire [7:0] _T_4299; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@85687.4]
  wire  _T_4290; // @[Bitwise.scala 26:51:freechips.rocketchip.system.DefaultRV32Config.fir@85678.4]
  wire [7:0] _T_4297; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@85685.4]
  wire  _T_4289; // @[Bitwise.scala 26:51:freechips.rocketchip.system.DefaultRV32Config.fir@85677.4]
  wire [7:0] _T_4295; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@85683.4]
  wire  _T_4288; // @[Bitwise.scala 26:51:freechips.rocketchip.system.DefaultRV32Config.fir@85676.4]
  wire [7:0] _T_4293; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@85681.4]
  wire [31:0] _T_4302; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@85690.4]
  wire [9:0] _T_7314; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@88852.4]
  wire  _T_7315; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@88853.4]
  wire  hartExceptionWrEn; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@88857.4]
  wire  _GEN_2717; // @[Debug.scala 1597:51:freechips.rocketchip.system.DefaultRV32Config.fir@108639.8]
  wire  _GEN_2723; // @[Debug.scala 1576:59:freechips.rocketchip.system.DefaultRV32Config.fir@108617.6]
  wire  errorException; // @[Debug.scala 1568:47:freechips.rocketchip.system.DefaultRV32Config.fir@108600.4]
  wire  _T_19675; // @[Debug.scala 1528:45:freechips.rocketchip.system.DefaultRV32Config.fir@108546.4]
  wire  _T_19676; // @[Debug.scala 1528:42:freechips.rocketchip.system.DefaultRV32Config.fir@108547.4]
  wire  _T_3171; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83269.4]
  wire  _T_3735; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84494.4]
  wire  _T_3736; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84495.4]
  wire  _T_634; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80401.4]
  wire  autoexecdataWrEnMaybe; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80406.4]
  wire  _T_19678; // @[Debug.scala 1529:42:freechips.rocketchip.system.DefaultRV32Config.fir@108549.4]
  wire  _T_19679; // @[Debug.scala 1528:74:freechips.rocketchip.system.DefaultRV32Config.fir@108550.4]
  wire [15:0] _T_682; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80451.4]
  wire  _T_683; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80452.4]
  wire  autoexecprogbufWrEnMaybe; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80456.4]
  wire  _T_19681; // @[Debug.scala 1530:44:freechips.rocketchip.system.DefaultRV32Config.fir@108552.4]
  wire  _T_19682; // @[Debug.scala 1529:74:freechips.rocketchip.system.DefaultRV32Config.fir@108553.4]
  wire  _T_19684; // @[Debug.scala 1531:42:freechips.rocketchip.system.DefaultRV32Config.fir@108555.4]
  wire  _T_19685; // @[Debug.scala 1530:74:freechips.rocketchip.system.DefaultRV32Config.fir@108556.4]
  wire [7:0] _T_2940; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83003.4]
  wire  _T_2941; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83004.4]
  wire  dmiAbstractDataWrEnMaybe_1; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83008.4]
  wire  _T_2939; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83002.4]
  wire  dmiAbstractDataRdEn_1; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83006.4]
  wire  dmiAbstractDataAccessVec_1; // @[Debug.scala 1099:105:freechips.rocketchip.system.DefaultRV32Config.fir@79631.4]
  wire  _T_226; // @[Debug.scala 1104:68:freechips.rocketchip.system.DefaultRV32Config.fir@79835.4]
  wire [7:0] _T_2965; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83033.4]
  wire  _T_2966; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83034.4]
  wire  dmiAbstractDataWrEnMaybe_2; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83038.4]
  wire  _T_2964; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83032.4]
  wire  dmiAbstractDataRdEn_2; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83036.4]
  wire  dmiAbstractDataAccessVec_2; // @[Debug.scala 1099:105:freechips.rocketchip.system.DefaultRV32Config.fir@79632.4]
  wire  _T_227; // @[Debug.scala 1104:68:freechips.rocketchip.system.DefaultRV32Config.fir@79836.4]
  wire [7:0] _T_2990; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83063.4]
  wire  _T_2991; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83064.4]
  wire  dmiAbstractDataWrEnMaybe_3; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83068.4]
  wire  _T_2989; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83062.4]
  wire  dmiAbstractDataRdEn_3; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83066.4]
  wire  dmiAbstractDataAccessVec_3; // @[Debug.scala 1099:105:freechips.rocketchip.system.DefaultRV32Config.fir@79633.4]
  wire  dmiAbstractDataAccess; // @[Debug.scala 1104:68:freechips.rocketchip.system.DefaultRV32Config.fir@79837.4]
  wire  _T_19687; // @[Debug.scala 1532:42:freechips.rocketchip.system.DefaultRV32Config.fir@108558.4]
  wire  _T_19688; // @[Debug.scala 1531:74:freechips.rocketchip.system.DefaultRV32Config.fir@108559.4]
  wire  dmiProgramBufferWrEnMaybe_1; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@81101.4]
  wire  dmiProgramBufferRdEn_1; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@81099.4]
  wire  dmiProgramBufferAccessVec_1; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79708.4]
  wire  _T_228; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79838.4]
  wire  dmiProgramBufferWrEnMaybe_2; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@81131.4]
  wire  dmiProgramBufferRdEn_2; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@81129.4]
  wire  dmiProgramBufferAccessVec_2; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79709.4]
  wire  _T_229; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79839.4]
  wire  dmiProgramBufferWrEnMaybe_3; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@81161.4]
  wire  dmiProgramBufferRdEn_3; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@81159.4]
  wire  dmiProgramBufferAccessVec_3; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79710.4]
  wire  _T_230; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79840.4]
  wire  _T_231; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79841.4]
  wire  dmiProgramBufferWrEnMaybe_5; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80865.4]
  wire  dmiProgramBufferRdEn_5; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80863.4]
  wire  dmiProgramBufferAccessVec_5; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79712.4]
  wire  _T_232; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79842.4]
  wire  dmiProgramBufferWrEnMaybe_6; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80895.4]
  wire  dmiProgramBufferRdEn_6; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80893.4]
  wire  dmiProgramBufferAccessVec_6; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79713.4]
  wire  _T_233; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79843.4]
  wire  dmiProgramBufferWrEnMaybe_7; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80925.4]
  wire  dmiProgramBufferRdEn_7; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80923.4]
  wire  dmiProgramBufferAccessVec_7; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79714.4]
  wire  _T_234; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79844.4]
  wire  _T_235; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79845.4]
  wire  dmiProgramBufferWrEnMaybe_9; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@81219.4]
  wire  dmiProgramBufferRdEn_9; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@81217.4]
  wire  dmiProgramBufferAccessVec_9; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79716.4]
  wire  _T_236; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79846.4]
  wire  dmiProgramBufferWrEnMaybe_10; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@81249.4]
  wire  dmiProgramBufferRdEn_10; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@81247.4]
  wire  dmiProgramBufferAccessVec_10; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79717.4]
  wire  _T_237; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79847.4]
  wire  dmiProgramBufferWrEnMaybe_11; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@81279.4]
  wire  dmiProgramBufferRdEn_11; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@81277.4]
  wire  dmiProgramBufferAccessVec_11; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79718.4]
  wire  _T_238; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79848.4]
  wire  _T_239; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79849.4]
  wire  dmiProgramBufferWrEnMaybe_13; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82362.4]
  wire  dmiProgramBufferRdEn_13; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82360.4]
  wire  dmiProgramBufferAccessVec_13; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79720.4]
  wire  _T_240; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79850.4]
  wire  dmiProgramBufferWrEnMaybe_14; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82392.4]
  wire  dmiProgramBufferRdEn_14; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82390.4]
  wire  dmiProgramBufferAccessVec_14; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79721.4]
  wire  _T_241; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79851.4]
  wire  dmiProgramBufferWrEnMaybe_15; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82422.4]
  wire  dmiProgramBufferRdEn_15; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82420.4]
  wire  dmiProgramBufferAccessVec_15; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79722.4]
  wire  _T_242; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79852.4]
  wire  _T_243; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79853.4]
  wire  dmiProgramBufferWrEnMaybe_17; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82867.4]
  wire  dmiProgramBufferRdEn_17; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82865.4]
  wire  dmiProgramBufferAccessVec_17; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79724.4]
  wire  _T_244; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79854.4]
  wire  dmiProgramBufferWrEnMaybe_18; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82897.4]
  wire  dmiProgramBufferRdEn_18; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82895.4]
  wire  dmiProgramBufferAccessVec_18; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79725.4]
  wire  _T_245; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79855.4]
  wire  dmiProgramBufferWrEnMaybe_19; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82927.4]
  wire  dmiProgramBufferRdEn_19; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82925.4]
  wire  dmiProgramBufferAccessVec_19; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79726.4]
  wire  _T_246; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79856.4]
  wire  _T_247; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79857.4]
  wire  dmiProgramBufferWrEnMaybe_21; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80511.4]
  wire  dmiProgramBufferRdEn_21; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80509.4]
  wire  dmiProgramBufferAccessVec_21; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79728.4]
  wire  _T_248; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79858.4]
  wire  dmiProgramBufferWrEnMaybe_22; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80541.4]
  wire  dmiProgramBufferRdEn_22; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80539.4]
  wire  dmiProgramBufferAccessVec_22; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79729.4]
  wire  _T_249; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79859.4]
  wire  dmiProgramBufferWrEnMaybe_23; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80571.4]
  wire  dmiProgramBufferRdEn_23; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80569.4]
  wire  dmiProgramBufferAccessVec_23; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79730.4]
  wire  _T_250; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79860.4]
  wire  _T_251; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79861.4]
  wire  dmiProgramBufferWrEnMaybe_25; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80747.4]
  wire  dmiProgramBufferRdEn_25; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80745.4]
  wire  dmiProgramBufferAccessVec_25; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79732.4]
  wire  _T_252; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79862.4]
  wire  dmiProgramBufferWrEnMaybe_26; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80777.4]
  wire  dmiProgramBufferRdEn_26; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80775.4]
  wire  dmiProgramBufferAccessVec_26; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79733.4]
  wire  _T_253; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79863.4]
  wire  dmiProgramBufferWrEnMaybe_27; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80807.4]
  wire  dmiProgramBufferRdEn_27; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80805.4]
  wire  dmiProgramBufferAccessVec_27; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79734.4]
  wire  _T_254; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79864.4]
  wire  _T_255; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79865.4]
  wire  dmiProgramBufferWrEnMaybe_29; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82244.4]
  wire  dmiProgramBufferRdEn_29; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82242.4]
  wire  dmiProgramBufferAccessVec_29; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79736.4]
  wire  _T_256; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79866.4]
  wire  dmiProgramBufferWrEnMaybe_30; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82274.4]
  wire  dmiProgramBufferRdEn_30; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82272.4]
  wire  dmiProgramBufferAccessVec_30; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79737.4]
  wire  _T_257; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79867.4]
  wire  dmiProgramBufferWrEnMaybe_31; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82304.4]
  wire  dmiProgramBufferRdEn_31; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82302.4]
  wire  dmiProgramBufferAccessVec_31; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79738.4]
  wire  _T_258; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79868.4]
  wire  _T_259; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79869.4]
  wire  dmiProgramBufferWrEnMaybe_33; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82721.4]
  wire  dmiProgramBufferRdEn_33; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82719.4]
  wire  dmiProgramBufferAccessVec_33; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79740.4]
  wire  _T_260; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79870.4]
  wire  dmiProgramBufferWrEnMaybe_34; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82751.4]
  wire  dmiProgramBufferRdEn_34; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82749.4]
  wire  dmiProgramBufferAccessVec_34; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79741.4]
  wire  _T_261; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79871.4]
  wire  dmiProgramBufferWrEnMaybe_35; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82781.4]
  wire  dmiProgramBufferRdEn_35; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82779.4]
  wire  dmiProgramBufferAccessVec_35; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79742.4]
  wire  _T_262; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79872.4]
  wire  _T_263; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79873.4]
  wire  dmiProgramBufferWrEnMaybe_37; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80983.4]
  wire  dmiProgramBufferRdEn_37; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80981.4]
  wire  dmiProgramBufferAccessVec_37; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79744.4]
  wire  _T_264; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79874.4]
  wire  dmiProgramBufferWrEnMaybe_38; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@81013.4]
  wire  dmiProgramBufferRdEn_38; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@81011.4]
  wire  dmiProgramBufferAccessVec_38; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79745.4]
  wire  _T_265; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79875.4]
  wire  dmiProgramBufferWrEnMaybe_39; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@81043.4]
  wire  dmiProgramBufferRdEn_39; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@81041.4]
  wire  dmiProgramBufferAccessVec_39; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79746.4]
  wire  _T_266; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79876.4]
  wire  _T_267; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79877.4]
  wire  dmiProgramBufferWrEnMaybe_41; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80316.4]
  wire  dmiProgramBufferRdEn_41; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80314.4]
  wire  dmiProgramBufferAccessVec_41; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79748.4]
  wire  _T_268; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79878.4]
  wire  dmiProgramBufferWrEnMaybe_42; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80346.4]
  wire  dmiProgramBufferRdEn_42; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80344.4]
  wire  dmiProgramBufferAccessVec_42; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79749.4]
  wire  _T_269; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79879.4]
  wire  dmiProgramBufferWrEnMaybe_43; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80376.4]
  wire  dmiProgramBufferRdEn_43; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80374.4]
  wire  dmiProgramBufferAccessVec_43; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79750.4]
  wire  _T_270; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79880.4]
  wire  _T_271; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79881.4]
  wire  dmiProgramBufferWrEnMaybe_45; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82603.4]
  wire  dmiProgramBufferRdEn_45; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82601.4]
  wire  dmiProgramBufferAccessVec_45; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79752.4]
  wire  _T_272; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79882.4]
  wire  dmiProgramBufferWrEnMaybe_46; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82633.4]
  wire  dmiProgramBufferRdEn_46; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82631.4]
  wire  dmiProgramBufferAccessVec_46; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79753.4]
  wire  _T_273; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79883.4]
  wire  dmiProgramBufferWrEnMaybe_47; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82663.4]
  wire  dmiProgramBufferRdEn_47; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82661.4]
  wire  dmiProgramBufferAccessVec_47; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79754.4]
  wire  _T_274; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79884.4]
  wire  _T_275; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79885.4]
  wire  dmiProgramBufferWrEnMaybe_49; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82126.4]
  wire  dmiProgramBufferRdEn_49; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82124.4]
  wire  dmiProgramBufferAccessVec_49; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79756.4]
  wire  _T_276; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79886.4]
  wire  dmiProgramBufferWrEnMaybe_50; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82156.4]
  wire  dmiProgramBufferRdEn_50; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82154.4]
  wire  dmiProgramBufferAccessVec_50; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79757.4]
  wire  _T_277; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79887.4]
  wire  dmiProgramBufferWrEnMaybe_51; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82186.4]
  wire  dmiProgramBufferRdEn_51; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82184.4]
  wire  dmiProgramBufferAccessVec_51; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79758.4]
  wire  _T_278; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79888.4]
  wire  _T_279; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79889.4]
  wire  dmiProgramBufferWrEnMaybe_53; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@81337.4]
  wire  dmiProgramBufferRdEn_53; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@81335.4]
  wire  dmiProgramBufferAccessVec_53; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79760.4]
  wire  _T_280; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79890.4]
  wire  dmiProgramBufferWrEnMaybe_54; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@81367.4]
  wire  dmiProgramBufferRdEn_54; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@81365.4]
  wire  dmiProgramBufferAccessVec_54; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79761.4]
  wire  _T_281; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79891.4]
  wire  dmiProgramBufferWrEnMaybe_55; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@81397.4]
  wire  dmiProgramBufferRdEn_55; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@81395.4]
  wire  dmiProgramBufferAccessVec_55; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79762.4]
  wire  _T_282; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79892.4]
  wire  _T_283; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79893.4]
  wire  dmiProgramBufferWrEnMaybe_57; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80629.4]
  wire  dmiProgramBufferRdEn_57; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80627.4]
  wire  dmiProgramBufferAccessVec_57; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79764.4]
  wire  _T_284; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79894.4]
  wire  dmiProgramBufferWrEnMaybe_58; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80659.4]
  wire  dmiProgramBufferRdEn_58; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80657.4]
  wire  dmiProgramBufferAccessVec_58; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79765.4]
  wire  _T_285; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79895.4]
  wire  dmiProgramBufferWrEnMaybe_59; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80689.4]
  wire  dmiProgramBufferRdEn_59; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80687.4]
  wire  dmiProgramBufferAccessVec_59; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79766.4]
  wire  _T_286; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79896.4]
  wire  _T_287; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79897.4]
  wire  dmiProgramBufferWrEnMaybe_61; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83126.4]
  wire  dmiProgramBufferRdEn_61; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83124.4]
  wire  dmiProgramBufferAccessVec_61; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79768.4]
  wire  _T_288; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79898.4]
  wire  dmiProgramBufferWrEnMaybe_62; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83156.4]
  wire  dmiProgramBufferRdEn_62; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83154.4]
  wire  dmiProgramBufferAccessVec_62; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79769.4]
  wire  _T_289; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79899.4]
  wire  dmiProgramBufferWrEnMaybe_63; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83186.4]
  wire  dmiProgramBufferRdEn_63; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83184.4]
  wire  dmiProgramBufferAccessVec_63; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79770.4]
  wire  dmiProgramBufferAccess; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79900.4]
  wire  _T_19690; // @[Debug.scala 1533:42:freechips.rocketchip.system.DefaultRV32Config.fir@108561.4]
  wire  errorBusy; // @[Debug.scala 1532:74:freechips.rocketchip.system.DefaultRV32Config.fir@108562.4]
  wire  _T_152; // @[Debug.scala 1090:38:freechips.rocketchip.system.DefaultRV32Config.fir@79610.6]
  wire [15:0] ABSTRACTAUTOWrData_autoexecprogbuf; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80457.4]
  wire  _T_154; // @[Debug.scala 1093:35:freechips.rocketchip.system.DefaultRV32Config.fir@79615.6]
  wire  _T_640; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80407.4]
  wire [11:0] ABSTRACTAUTOWrData_autoexecdata; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79585.4 :freechips.rocketchip.system.DefaultRV32Config.fir@79587.4 Debug.scala 272:12:freechips.rocketchip.system.DefaultRV32Config.fir@80409.4]
  wire [11:0] _T_155; // @[Debug.scala 1094:73:freechips.rocketchip.system.DefaultRV32Config.fir@79617.8]
  wire [23:0] COMMANDWrData_control; // @[Debug.scala 1121:73:freechips.rocketchip.system.DefaultRV32Config.fir@80027.4]
  reg [7:0] abstractDataMem_0; // @[Debug.scala 1141:36:freechips.rocketchip.system.DefaultRV32Config.fir@80055.4]
  reg [31:0] _RAND_11;
  reg [7:0] abstractDataMem_1; // @[Debug.scala 1141:36:freechips.rocketchip.system.DefaultRV32Config.fir@80055.4]
  reg [31:0] _RAND_12;
  reg [7:0] abstractDataMem_2; // @[Debug.scala 1141:36:freechips.rocketchip.system.DefaultRV32Config.fir@80055.4]
  reg [31:0] _RAND_13;
  reg [7:0] abstractDataMem_3; // @[Debug.scala 1141:36:freechips.rocketchip.system.DefaultRV32Config.fir@80055.4]
  reg [31:0] _RAND_14;
  reg [7:0] programBufferMem_0; // @[Debug.scala 1145:34:freechips.rocketchip.system.DefaultRV32Config.fir@80059.4]
  reg [31:0] _RAND_15;
  reg [7:0] programBufferMem_1; // @[Debug.scala 1145:34:freechips.rocketchip.system.DefaultRV32Config.fir@80059.4]
  reg [31:0] _RAND_16;
  reg [7:0] programBufferMem_2; // @[Debug.scala 1145:34:freechips.rocketchip.system.DefaultRV32Config.fir@80059.4]
  reg [31:0] _RAND_17;
  reg [7:0] programBufferMem_3; // @[Debug.scala 1145:34:freechips.rocketchip.system.DefaultRV32Config.fir@80059.4]
  reg [31:0] _RAND_18;
  reg [7:0] programBufferMem_4; // @[Debug.scala 1145:34:freechips.rocketchip.system.DefaultRV32Config.fir@80059.4]
  reg [31:0] _RAND_19;
  reg [7:0] programBufferMem_5; // @[Debug.scala 1145:34:freechips.rocketchip.system.DefaultRV32Config.fir@80059.4]
  reg [31:0] _RAND_20;
  reg [7:0] programBufferMem_6; // @[Debug.scala 1145:34:freechips.rocketchip.system.DefaultRV32Config.fir@80059.4]
  reg [31:0] _RAND_21;
  reg [7:0] programBufferMem_7; // @[Debug.scala 1145:34:freechips.rocketchip.system.DefaultRV32Config.fir@80059.4]
  reg [31:0] _RAND_22;
  reg [7:0] programBufferMem_8; // @[Debug.scala 1145:34:freechips.rocketchip.system.DefaultRV32Config.fir@80059.4]
  reg [31:0] _RAND_23;
  reg [7:0] programBufferMem_9; // @[Debug.scala 1145:34:freechips.rocketchip.system.DefaultRV32Config.fir@80059.4]
  reg [31:0] _RAND_24;
  reg [7:0] programBufferMem_10; // @[Debug.scala 1145:34:freechips.rocketchip.system.DefaultRV32Config.fir@80059.4]
  reg [31:0] _RAND_25;
  reg [7:0] programBufferMem_11; // @[Debug.scala 1145:34:freechips.rocketchip.system.DefaultRV32Config.fir@80059.4]
  reg [31:0] _RAND_26;
  reg [7:0] programBufferMem_12; // @[Debug.scala 1145:34:freechips.rocketchip.system.DefaultRV32Config.fir@80059.4]
  reg [31:0] _RAND_27;
  reg [7:0] programBufferMem_13; // @[Debug.scala 1145:34:freechips.rocketchip.system.DefaultRV32Config.fir@80059.4]
  reg [31:0] _RAND_28;
  reg [7:0] programBufferMem_14; // @[Debug.scala 1145:34:freechips.rocketchip.system.DefaultRV32Config.fir@80059.4]
  reg [31:0] _RAND_29;
  reg [7:0] programBufferMem_15; // @[Debug.scala 1145:34:freechips.rocketchip.system.DefaultRV32Config.fir@80059.4]
  reg [31:0] _RAND_30;
  reg [7:0] programBufferMem_16; // @[Debug.scala 1145:34:freechips.rocketchip.system.DefaultRV32Config.fir@80059.4]
  reg [31:0] _RAND_31;
  reg [7:0] programBufferMem_17; // @[Debug.scala 1145:34:freechips.rocketchip.system.DefaultRV32Config.fir@80059.4]
  reg [31:0] _RAND_32;
  reg [7:0] programBufferMem_18; // @[Debug.scala 1145:34:freechips.rocketchip.system.DefaultRV32Config.fir@80059.4]
  reg [31:0] _RAND_33;
  reg [7:0] programBufferMem_19; // @[Debug.scala 1145:34:freechips.rocketchip.system.DefaultRV32Config.fir@80059.4]
  reg [31:0] _RAND_34;
  reg [7:0] programBufferMem_20; // @[Debug.scala 1145:34:freechips.rocketchip.system.DefaultRV32Config.fir@80059.4]
  reg [31:0] _RAND_35;
  reg [7:0] programBufferMem_21; // @[Debug.scala 1145:34:freechips.rocketchip.system.DefaultRV32Config.fir@80059.4]
  reg [31:0] _RAND_36;
  reg [7:0] programBufferMem_22; // @[Debug.scala 1145:34:freechips.rocketchip.system.DefaultRV32Config.fir@80059.4]
  reg [31:0] _RAND_37;
  reg [7:0] programBufferMem_23; // @[Debug.scala 1145:34:freechips.rocketchip.system.DefaultRV32Config.fir@80059.4]
  reg [31:0] _RAND_38;
  reg [7:0] programBufferMem_24; // @[Debug.scala 1145:34:freechips.rocketchip.system.DefaultRV32Config.fir@80059.4]
  reg [31:0] _RAND_39;
  reg [7:0] programBufferMem_25; // @[Debug.scala 1145:34:freechips.rocketchip.system.DefaultRV32Config.fir@80059.4]
  reg [31:0] _RAND_40;
  reg [7:0] programBufferMem_26; // @[Debug.scala 1145:34:freechips.rocketchip.system.DefaultRV32Config.fir@80059.4]
  reg [31:0] _RAND_41;
  reg [7:0] programBufferMem_27; // @[Debug.scala 1145:34:freechips.rocketchip.system.DefaultRV32Config.fir@80059.4]
  reg [31:0] _RAND_42;
  reg [7:0] programBufferMem_28; // @[Debug.scala 1145:34:freechips.rocketchip.system.DefaultRV32Config.fir@80059.4]
  reg [31:0] _RAND_43;
  reg [7:0] programBufferMem_29; // @[Debug.scala 1145:34:freechips.rocketchip.system.DefaultRV32Config.fir@80059.4]
  reg [31:0] _RAND_44;
  reg [7:0] programBufferMem_30; // @[Debug.scala 1145:34:freechips.rocketchip.system.DefaultRV32Config.fir@80059.4]
  reg [31:0] _RAND_45;
  reg [7:0] programBufferMem_31; // @[Debug.scala 1145:34:freechips.rocketchip.system.DefaultRV32Config.fir@80059.4]
  reg [31:0] _RAND_46;
  reg [7:0] programBufferMem_32; // @[Debug.scala 1145:34:freechips.rocketchip.system.DefaultRV32Config.fir@80059.4]
  reg [31:0] _RAND_47;
  reg [7:0] programBufferMem_33; // @[Debug.scala 1145:34:freechips.rocketchip.system.DefaultRV32Config.fir@80059.4]
  reg [31:0] _RAND_48;
  reg [7:0] programBufferMem_34; // @[Debug.scala 1145:34:freechips.rocketchip.system.DefaultRV32Config.fir@80059.4]
  reg [31:0] _RAND_49;
  reg [7:0] programBufferMem_35; // @[Debug.scala 1145:34:freechips.rocketchip.system.DefaultRV32Config.fir@80059.4]
  reg [31:0] _RAND_50;
  reg [7:0] programBufferMem_36; // @[Debug.scala 1145:34:freechips.rocketchip.system.DefaultRV32Config.fir@80059.4]
  reg [31:0] _RAND_51;
  reg [7:0] programBufferMem_37; // @[Debug.scala 1145:34:freechips.rocketchip.system.DefaultRV32Config.fir@80059.4]
  reg [31:0] _RAND_52;
  reg [7:0] programBufferMem_38; // @[Debug.scala 1145:34:freechips.rocketchip.system.DefaultRV32Config.fir@80059.4]
  reg [31:0] _RAND_53;
  reg [7:0] programBufferMem_39; // @[Debug.scala 1145:34:freechips.rocketchip.system.DefaultRV32Config.fir@80059.4]
  reg [31:0] _RAND_54;
  reg [7:0] programBufferMem_40; // @[Debug.scala 1145:34:freechips.rocketchip.system.DefaultRV32Config.fir@80059.4]
  reg [31:0] _RAND_55;
  reg [7:0] programBufferMem_41; // @[Debug.scala 1145:34:freechips.rocketchip.system.DefaultRV32Config.fir@80059.4]
  reg [31:0] _RAND_56;
  reg [7:0] programBufferMem_42; // @[Debug.scala 1145:34:freechips.rocketchip.system.DefaultRV32Config.fir@80059.4]
  reg [31:0] _RAND_57;
  reg [7:0] programBufferMem_43; // @[Debug.scala 1145:34:freechips.rocketchip.system.DefaultRV32Config.fir@80059.4]
  reg [31:0] _RAND_58;
  reg [7:0] programBufferMem_44; // @[Debug.scala 1145:34:freechips.rocketchip.system.DefaultRV32Config.fir@80059.4]
  reg [31:0] _RAND_59;
  reg [7:0] programBufferMem_45; // @[Debug.scala 1145:34:freechips.rocketchip.system.DefaultRV32Config.fir@80059.4]
  reg [31:0] _RAND_60;
  reg [7:0] programBufferMem_46; // @[Debug.scala 1145:34:freechips.rocketchip.system.DefaultRV32Config.fir@80059.4]
  reg [31:0] _RAND_61;
  reg [7:0] programBufferMem_47; // @[Debug.scala 1145:34:freechips.rocketchip.system.DefaultRV32Config.fir@80059.4]
  reg [31:0] _RAND_62;
  reg [7:0] programBufferMem_48; // @[Debug.scala 1145:34:freechips.rocketchip.system.DefaultRV32Config.fir@80059.4]
  reg [31:0] _RAND_63;
  reg [7:0] programBufferMem_49; // @[Debug.scala 1145:34:freechips.rocketchip.system.DefaultRV32Config.fir@80059.4]
  reg [31:0] _RAND_64;
  reg [7:0] programBufferMem_50; // @[Debug.scala 1145:34:freechips.rocketchip.system.DefaultRV32Config.fir@80059.4]
  reg [31:0] _RAND_65;
  reg [7:0] programBufferMem_51; // @[Debug.scala 1145:34:freechips.rocketchip.system.DefaultRV32Config.fir@80059.4]
  reg [31:0] _RAND_66;
  reg [7:0] programBufferMem_52; // @[Debug.scala 1145:34:freechips.rocketchip.system.DefaultRV32Config.fir@80059.4]
  reg [31:0] _RAND_67;
  reg [7:0] programBufferMem_53; // @[Debug.scala 1145:34:freechips.rocketchip.system.DefaultRV32Config.fir@80059.4]
  reg [31:0] _RAND_68;
  reg [7:0] programBufferMem_54; // @[Debug.scala 1145:34:freechips.rocketchip.system.DefaultRV32Config.fir@80059.4]
  reg [31:0] _RAND_69;
  reg [7:0] programBufferMem_55; // @[Debug.scala 1145:34:freechips.rocketchip.system.DefaultRV32Config.fir@80059.4]
  reg [31:0] _RAND_70;
  reg [7:0] programBufferMem_56; // @[Debug.scala 1145:34:freechips.rocketchip.system.DefaultRV32Config.fir@80059.4]
  reg [31:0] _RAND_71;
  reg [7:0] programBufferMem_57; // @[Debug.scala 1145:34:freechips.rocketchip.system.DefaultRV32Config.fir@80059.4]
  reg [31:0] _RAND_72;
  reg [7:0] programBufferMem_58; // @[Debug.scala 1145:34:freechips.rocketchip.system.DefaultRV32Config.fir@80059.4]
  reg [31:0] _RAND_73;
  reg [7:0] programBufferMem_59; // @[Debug.scala 1145:34:freechips.rocketchip.system.DefaultRV32Config.fir@80059.4]
  reg [31:0] _RAND_74;
  reg [7:0] programBufferMem_60; // @[Debug.scala 1145:34:freechips.rocketchip.system.DefaultRV32Config.fir@80059.4]
  reg [31:0] _RAND_75;
  reg [7:0] programBufferMem_61; // @[Debug.scala 1145:34:freechips.rocketchip.system.DefaultRV32Config.fir@80059.4]
  reg [31:0] _RAND_76;
  reg [7:0] programBufferMem_62; // @[Debug.scala 1145:34:freechips.rocketchip.system.DefaultRV32Config.fir@80059.4]
  reg [31:0] _RAND_77;
  reg [7:0] programBufferMem_63; // @[Debug.scala 1145:34:freechips.rocketchip.system.DefaultRV32Config.fir@80059.4]
  reg [31:0] _RAND_78;
  wire [9:0] hartHaltedId; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@87768.4]
  wire  _T_366; // @[Debug.scala 1163:60:freechips.rocketchip.system.DefaultRV32Config.fir@80077.10]
  wire  _GEN_66; // @[Debug.scala 1163:77:freechips.rocketchip.system.DefaultRV32Config.fir@80078.10]
  wire  _T_8852; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@90452.4]
  wire  _T_17328; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@104159.4]
  wire  _T_17329; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@104160.4]
  wire  hartResumingWrEn; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@88220.4]
  wire  _T_8850; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@90450.4]
  wire  _T_17318; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@104143.4]
  wire  _T_17319; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@104144.4]
  wire  hartHaltedWrEn; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@87767.4]
  wire  _GEN_71; // @[Debug.scala 1159:38:freechips.rocketchip.system.DefaultRV32Config.fir@80071.6]
  wire  _GEN_72; // @[Debug.scala 1177:79:freechips.rocketchip.system.DefaultRV32Config.fir@80091.8]
  wire  _GEN_73; // @[Debug.scala 1176:33:freechips.rocketchip.system.DefaultRV32Config.fir@80089.6]
  wire  _T_369; // @[Debug.scala 1181:25:freechips.rocketchip.system.DefaultRV32Config.fir@80095.6]
  wire  _GEN_74; // @[Debug.scala 1181:52:freechips.rocketchip.system.DefaultRV32Config.fir@80096.6]
  wire [2:0] _T_442; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@80181.4]
  wire [7:0] _T_542; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80290.4]
  wire [7:0] _T_565; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80318.4]
  wire [7:0] _T_590; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80348.4]
  wire [7:0] _T_615; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80378.4]
  wire [31:0] _T_625; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@80392.4]
  wire [1:0] _T_673; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@80442.4]
  wire [15:0] _T_674; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80443.4]
  wire [31:0] _T_698; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@80469.4]
  wire [31:0] _T_796; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@80587.4]
  wire [31:0] _T_894; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@80705.4]
  wire [31:0] _T_992; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@80823.4]
  wire [31:0] _T_1090; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@80941.4]
  wire [31:0] _T_1188; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@81059.4]
  wire [31:0] _T_1286; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@81177.4]
  wire [31:0] _T_1384; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@81295.4]
  wire [31:0] _T_1482; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@81413.4]
  wire [16:0] _T_1853; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@81784.4]
  wire [20:0] _T_1953; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@81884.4]
  wire [21:0] _T_1954; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@81885.4]
  wire [22:0] _T_1978; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@81909.4]
  wire  abstractCommandBusy; // @[Debug.scala 1520:42:freechips.rocketchip.system.DefaultRV32Config.fir@108534.4]
  wire [13:0] _T_2126; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@82059.4]
  wire [23:0] _T_2127; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82060.4]
  wire [28:0] _T_2151; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@82084.4]
  wire [31:0] _T_2249; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@82202.4]
  wire [31:0] _T_2347; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@82320.4]
  wire [31:0] _T_2445; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@82438.4]
  wire [31:0] _T_2666; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@82679.4]
  wire [31:0] _T_2764; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@82797.4]
  wire [31:0] _T_2885; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@82943.4]
  wire [31:0] _T_3006; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@83084.4]
  wire [31:0] _T_3104; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@83202.4]
  wire  _GEN_275; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  wire  _GEN_276; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  wire  _GEN_277; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  wire  _GEN_278; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  wire  _GEN_2732; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  wire  _GEN_279; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  wire  _GEN_280; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  wire  _GEN_281; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  wire  _GEN_282; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  wire  _GEN_2733; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  wire  _GEN_283; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  wire  _GEN_2734; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  wire  _GEN_284; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  wire  _GEN_2735; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  wire  _GEN_285; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  wire  _GEN_2736; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  wire  _GEN_286; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  wire  _GEN_2737; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  wire  _GEN_287; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  wire  _GEN_2738; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  wire  _GEN_288; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  wire  _GEN_2739; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  wire  _GEN_289; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  wire  _GEN_290; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  wire  _GEN_291; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  wire  _GEN_292; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  wire  _GEN_293; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  wire  _GEN_294; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  wire  _GEN_295; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  wire  _GEN_296; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  wire  _GEN_297; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  wire  _GEN_298; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  wire  _GEN_299; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  wire  _GEN_300; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  wire  _GEN_301; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  wire  _GEN_302; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  wire  _GEN_303; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  wire  _GEN_304; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  wire  _GEN_305; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  wire [31:0] _T_3867_1; // @[MuxLiteral.scala 48:48:freechips.rocketchip.system.DefaultRV32Config.fir@84811.4 MuxLiteral.scala 48:48:freechips.rocketchip.system.DefaultRV32Config.fir@84814.4]
  wire [31:0] _GEN_307; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84845.4]
  wire [31:0] _GEN_308; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84845.4]
  wire [31:0] _GEN_309; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84845.4]
  wire [31:0] _GEN_310; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84845.4]
  wire [31:0] _GEN_311; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84845.4]
  wire [31:0] _T_3867_6; // @[MuxLiteral.scala 48:48:freechips.rocketchip.system.DefaultRV32Config.fir@84811.4 MuxLiteral.scala 48:48:freechips.rocketchip.system.DefaultRV32Config.fir@84819.4]
  wire [31:0] _GEN_312; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84845.4]
  wire [31:0] _GEN_313; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84845.4]
  wire [31:0] _GEN_314; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84845.4]
  wire [31:0] _GEN_315; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84845.4]
  wire [31:0] _GEN_316; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84845.4]
  wire [31:0] _GEN_317; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84845.4]
  wire [31:0] _GEN_318; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84845.4]
  wire [31:0] _GEN_319; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84845.4]
  wire [31:0] _GEN_320; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84845.4]
  wire [31:0] _GEN_321; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84845.4]
  wire [31:0] _GEN_322; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84845.4]
  wire [31:0] _GEN_323; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84845.4]
  wire [31:0] _GEN_324; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84845.4]
  wire [31:0] _GEN_325; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84845.4]
  wire [31:0] _GEN_326; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84845.4]
  wire [31:0] _GEN_327; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84845.4]
  wire [31:0] _GEN_328; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84845.4]
  wire [31:0] _GEN_329; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84845.4]
  wire [31:0] _GEN_330; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84845.4]
  wire [31:0] _GEN_331; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84845.4]
  wire [31:0] _GEN_332; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84845.4]
  wire [31:0] _GEN_333; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84845.4]
  wire [31:0] _GEN_334; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84845.4]
  wire [31:0] _GEN_335; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84845.4]
  wire [31:0] _GEN_336; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84845.4]
  wire [31:0] _GEN_337; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84845.4]
  wire  _T_3878; // @[Debug.scala 1303:60:freechips.rocketchip.system.DefaultRV32Config.fir@84879.4]
  wire  _T_3880; // @[Debug.scala 1303:60:freechips.rocketchip.system.DefaultRV32Config.fir@84884.4]
  wire  _T_3882; // @[Debug.scala 1303:60:freechips.rocketchip.system.DefaultRV32Config.fir@84889.4]
  wire  _T_3884; // @[Debug.scala 1303:60:freechips.rocketchip.system.DefaultRV32Config.fir@84894.4]
  wire  _T_3886; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@84899.4]
  wire  _T_3888; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@84904.4]
  wire  _T_3890; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@84909.4]
  wire  _T_3892; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@84914.4]
  wire  _T_3894; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@84919.4]
  wire  _T_3896; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@84924.4]
  wire  _T_3898; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@84929.4]
  wire  _T_3900; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@84934.4]
  wire  _T_3902; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@84939.4]
  wire  _T_3904; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@84944.4]
  wire  _T_3906; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@84949.4]
  wire  _T_3908; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@84954.4]
  wire  _T_3910; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@84959.4]
  wire  _T_3912; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@84964.4]
  wire  _T_3914; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@84969.4]
  wire  _T_3916; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@84974.4]
  wire  _T_3918; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@84979.4]
  wire  _T_3920; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@84984.4]
  wire  _T_3922; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@84989.4]
  wire  _T_3924; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@84994.4]
  wire  _T_3926; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@84999.4]
  wire  _T_3928; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85004.4]
  wire  _T_3930; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85009.4]
  wire  _T_3932; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85014.4]
  wire  _T_3934; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85019.4]
  wire  _T_3936; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85024.4]
  wire  _T_3938; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85029.4]
  wire  _T_3940; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85034.4]
  wire  _T_3942; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85039.4]
  wire  _T_3944; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85044.4]
  wire  _T_3946; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85049.4]
  wire  _T_3948; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85054.4]
  wire  _T_3950; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85059.4]
  wire  _T_3952; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85064.4]
  wire  _T_3954; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85069.4]
  wire  _T_3956; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85074.4]
  wire  _T_3958; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85079.4]
  wire  _T_3960; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85084.4]
  wire  _T_3962; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85089.4]
  wire  _T_3964; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85094.4]
  wire  _T_3966; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85099.4]
  wire  _T_3968; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85104.4]
  wire  _T_3970; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85109.4]
  wire  _T_3972; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85114.4]
  wire  _T_3974; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85119.4]
  wire  _T_3976; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85124.4]
  wire  _T_3978; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85129.4]
  wire  _T_3980; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85134.4]
  wire  _T_3982; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85139.4]
  wire  _T_3984; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85144.4]
  wire  _T_3986; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85149.4]
  wire  _T_3988; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85154.4]
  wire  _T_3990; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85159.4]
  wire  _T_3992; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85164.4]
  wire  _T_3994; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85169.4]
  wire  _T_3996; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85174.4]
  wire  _T_3998; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85179.4]
  wire  _T_4000; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85184.4]
  wire  _T_4002; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85189.4]
  wire  _T_4004; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85194.4]
  wire  _T_4006; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85199.4]
  wire  _T_4008; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85204.4]
  wire  _T_4010; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85209.4]
  wire  _T_4012; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85214.4]
  reg  goReg; // @[Debug.scala 1334:27:freechips.rocketchip.system.DefaultRV32Config.fir@85218.4]
  reg [31:0] _RAND_79;
  wire  _T_4073; // @[Debug.scala 1346:15:freechips.rocketchip.system.DefaultRV32Config.fir@85336.10]
  wire  _T_4074; // @[Debug.scala 1346:15:freechips.rocketchip.system.DefaultRV32Config.fir@85337.10]
  wire  _T_8851; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@90451.4]
  wire  _T_17323; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@104151.4]
  wire  _T_17324; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@104152.4]
  wire  hartGoingWrEn; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@86886.4]
  wire  _GEN_406; // @[Debug.scala 1345:33:freechips.rocketchip.system.DefaultRV32Config.fir@85333.8]
  wire  _GEN_2705; // @[Debug.scala 1586:43:freechips.rocketchip.system.DefaultRV32Config.fir@108623.10]
  wire  _GEN_2709; // @[Debug.scala 1583:38:freechips.rocketchip.system.DefaultRV32Config.fir@108618.8]
  wire  _GEN_2722; // @[Debug.scala 1576:59:freechips.rocketchip.system.DefaultRV32Config.fir@108617.6]
  wire  goAbstract; // @[Debug.scala 1568:47:freechips.rocketchip.system.DefaultRV32Config.fir@108600.4]
  wire  _GEN_407; // @[Debug.scala 1343:25:freechips.rocketchip.system.DefaultRV32Config.fir@85329.6]
  wire  accessRegisterCommandReg_postexec; // @[Debug.scala 1372:86:freechips.rocketchip.system.DefaultRV32Config.fir@85426.4]
  wire [2:0] accessRegisterCommandReg_size; // @[Debug.scala 1372:86:freechips.rocketchip.system.DefaultRV32Config.fir@85430.4]
  reg [31:0] abstractGeneratedMem_0; // @[Debug.scala 1415:35:freechips.rocketchip.system.DefaultRV32Config.fir@85439.4]
  reg [31:0] _RAND_80;
  reg [31:0] abstractGeneratedMem_1; // @[Debug.scala 1415:35:freechips.rocketchip.system.DefaultRV32Config.fir@85439.4]
  reg [31:0] _RAND_81;
  wire [15:0] _T_4122; // @[Debug.scala 1421:66:freechips.rocketchip.system.DefaultRV32Config.fir@85462.4]
  wire [4:0] abstractGeneratedI_rd; // @[Debug.scala 1416:34:freechips.rocketchip.system.DefaultRV32Config.fir@85440.4 Debug.scala 1421:31:freechips.rocketchip.system.DefaultRV32Config.fir@85463.4]
  wire [31:0] _T_4142; // @[Debug.scala 1442:36:freechips.rocketchip.system.DefaultRV32Config.fir@85514.6]
  wire [31:0] _T_4147; // @[Debug.scala 1444:36:freechips.rocketchip.system.DefaultRV32Config.fir@85519.6]
  wire [11:0] _T_4171; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@85551.4]
  wire [7:0] _T_4303; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@85691.4]
  wire  _T_4306; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@85694.4]
  wire [7:0] _T_4315; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@85703.4]
  wire [7:0] _T_4326; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@85714.4]
  wire  _T_4329; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@85717.4]
  wire [7:0] _T_4338; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@85726.4]
  wire [7:0] _T_4351; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@85739.4]
  wire  _T_4354; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@85742.4]
  wire [7:0] _T_4363; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@85751.4]
  wire [7:0] _T_4376; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@85764.4]
  wire  _T_4379; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@85767.4]
  wire [7:0] _T_4388; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@85776.4]
  wire  _T_8490; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@90090.4]
  wire  _T_12952; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96730.4]
  wire  _T_12953; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96731.4]
  wire  _T_4509; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@85897.4]
  wire  _T_4532; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@85923.4]
  wire  _T_4557; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@85951.4]
  wire  _T_4582; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@85979.4]
  wire  _T_8489; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@90089.4]
  wire  _T_12947; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96719.4]
  wire  _T_12948; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96720.4]
  wire  _T_4607; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@86007.4]
  wire  _T_4630; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@86033.4]
  wire  _T_4655; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@86061.4]
  wire  _T_4680; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@86089.4]
  wire  _T_8484; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@90084.4]
  wire  _T_12922; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96664.4]
  wire  _T_12923; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96665.4]
  wire  _T_4705; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@86117.4]
  wire  _T_4728; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@86143.4]
  wire  _T_4753; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@86171.4]
  wire  _T_4778; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@86199.4]
  wire  _T_8494; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@90094.4]
  wire  _T_12972; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96774.4]
  wire  _T_12973; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96775.4]
  wire  _T_4901; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@86325.4]
  wire  _T_4924; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@86351.4]
  wire  _T_4949; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@86379.4]
  wire  _T_4974; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@86407.4]
  wire  _T_8493; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@90093.4]
  wire  _T_12967; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96763.4]
  wire  _T_12968; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96764.4]
  wire  _T_5316; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@86752.4]
  wire  _T_5339; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@86778.4]
  wire  _T_5364; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@86806.4]
  wire  _T_5389; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@86834.4]
  wire  _T_8497; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@90097.4]
  wire  _T_12987; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96807.4]
  wire  _T_12988; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96808.4]
  wire  _T_5558; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@87008.4]
  wire  _T_5581; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@87034.4]
  wire  _T_5606; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@87062.4]
  wire  _T_5631; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@87090.4]
  wire [15:0] _T_5789; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@87251.4]
  wire  _T_8485; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@90085.4]
  wire  _T_12927; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96675.4]
  wire  _T_12928; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96676.4]
  wire  _T_5900; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@87362.4]
  wire  _T_5923; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@87388.4]
  wire  _T_5948; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@87416.4]
  wire  _T_5973; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@87444.4]
  wire  _T_8492; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@90092.4]
  wire  _T_12962; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96752.4]
  wire  _T_12963; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96753.4]
  wire  _T_6315; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@87791.4]
  wire  _T_6338; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@87817.4]
  wire  _T_6363; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@87845.4]
  wire  _T_6388; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@87873.4]
  wire  _T_8481; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@90081.4]
  wire  _T_12907; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96631.4]
  wire  _T_12908; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96632.4]
  wire  _T_6413; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@87901.4]
  wire  _T_6436; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@87927.4]
  wire  _T_6461; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@87955.4]
  wire  _T_6486; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@87983.4]
  wire  _T_8486; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@90086.4]
  wire  _T_12932; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96686.4]
  wire  _T_12933; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96687.4]
  wire  _T_6511; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@88011.4]
  wire  _T_6534; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@88037.4]
  wire  _T_6559; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@88065.4]
  wire  _T_6584; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@88093.4]
  wire  _T_8496; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@90096.4]
  wire  _T_12982; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96796.4]
  wire  _T_12983; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96797.4]
  wire  _T_6828; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@88342.4]
  wire  _T_6851; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@88368.4]
  wire  _T_6876; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@88396.4]
  wire  _T_6901; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@88424.4]
  wire  _T_8482; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@90082.4]
  wire  _T_12912; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96642.4]
  wire  _T_12913; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96643.4]
  wire  _T_7024; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@88550.4]
  wire  _T_7047; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@88576.4]
  wire  _T_7072; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@88604.4]
  wire  _T_7097; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@88632.4]
  wire  _T_8491; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@90091.4]
  wire  _T_12957; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96741.4]
  wire  _T_12958; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96742.4]
  wire  _T_7439; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@88979.4]
  wire  _T_7462; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@89005.4]
  wire  _T_7487; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@89033.4]
  wire  _T_7512; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@89061.4]
  wire  _T_8487; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@90087.4]
  wire  _T_12937; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96697.4]
  wire  _T_12938; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96698.4]
  wire  _T_7658; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@89210.4]
  wire  _T_7681; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@89236.4]
  wire  _T_7706; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@89264.4]
  wire  _T_7731; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@89292.4]
  wire  _T_8483; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@90083.4]
  wire  _T_12917; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96653.4]
  wire  _T_12918; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96654.4]
  wire  _T_7756; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@89320.4]
  wire  _T_7779; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@89346.4]
  wire  _T_7804; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@89374.4]
  wire  _T_7829; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@89402.4]
  wire  _T_8488; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@90088.4]
  wire  _T_12942; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96708.4]
  wire  _T_12943; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96709.4]
  wire  _T_8050; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@89626.4]
  wire  _T_8073; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@89652.4]
  wire  _T_8098; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@89680.4]
  wire  _T_8123; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@89708.4]
  wire  _T_8495; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@90095.4]
  wire  _T_12977; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96785.4]
  wire  _T_12978; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96786.4]
  wire  _T_8148; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@89736.4]
  wire  _T_8171; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@89762.4]
  wire  _T_8196; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@89790.4]
  wire  _T_8221; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@89818.4]
  wire  _T_19567; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@107966.4]
  wire  _T_19568; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@107971.6]
  wire  _T_19569; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@107976.8]
  wire  _T_19570; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@107981.10]
  wire  _T_19571; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@107986.12]
  wire  _T_19572; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@107991.14]
  wire  _T_19573; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@107996.16]
  wire  _T_19574; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108001.18]
  wire  _T_19575; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108006.20]
  wire  _T_19576; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108011.22]
  wire  _T_19577; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108016.24]
  wire  _T_19578; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108021.26]
  wire  _T_19579; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108026.28]
  wire  _T_19580; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108031.30]
  wire  _T_19581; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108036.32]
  wire  _T_19582; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108041.34]
  wire  _T_19583; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108046.36]
  wire  _T_19584; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108051.38]
  wire  _T_19585; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108056.40]
  wire  _T_19586; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108061.42]
  wire  _T_19587; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108066.44]
  wire  _T_19588; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108071.46]
  wire  _T_19589; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108076.48]
  wire  _T_19590; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108081.50]
  wire  _T_19591; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108086.52]
  wire  _T_19592; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108091.54]
  wire  _T_19593; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108096.56]
  wire  _T_19594; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108101.58]
  wire  _T_19595; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108106.60]
  wire  _T_19596; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108111.62]
  wire  _T_19597; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108116.64]
  wire  _T_19598; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108121.66]
  wire  _T_19599; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108126.68]
  wire  _T_19600; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108131.70]
  wire  _T_19601; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108136.72]
  wire  _T_19602; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108141.74]
  wire  _T_19603; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108146.76]
  wire  _T_19604; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108151.78]
  wire  _T_19605; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108156.80]
  wire  _T_19606; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108161.82]
  wire  _T_19607; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108166.84]
  wire  _T_19608; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108171.86]
  wire  _T_19609; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108176.88]
  wire  _T_19610; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108181.90]
  wire  _T_19611; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108186.92]
  wire  _T_19612; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108191.94]
  wire  _GEN_2531; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108192.94]
  wire  _GEN_2532; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108187.92]
  wire  _GEN_2533; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108182.90]
  wire  _GEN_2534; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108177.88]
  wire  _GEN_2535; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108172.86]
  wire  _GEN_2536; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108167.84]
  wire  _GEN_2537; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108162.82]
  wire  _GEN_2538; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108157.80]
  wire  _GEN_2539; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108152.78]
  wire  _GEN_2540; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108147.76]
  wire  _GEN_2541; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108142.74]
  wire  _GEN_2542; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108137.72]
  wire  _GEN_2543; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108132.70]
  wire  _GEN_2544; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108127.68]
  wire  _GEN_2545; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108122.66]
  wire  _GEN_2546; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108117.64]
  wire  _GEN_2547; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108112.62]
  wire  _GEN_2548; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108107.60]
  wire  _GEN_2549; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108102.58]
  wire  _GEN_2550; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108097.56]
  wire  _GEN_2551; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108092.54]
  wire  _GEN_2552; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108087.52]
  wire  _GEN_2553; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108082.50]
  wire  _GEN_2554; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108077.48]
  wire  _GEN_2555; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108072.46]
  wire  _GEN_2556; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108067.44]
  wire  _GEN_2557; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108062.42]
  wire  _GEN_2558; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108057.40]
  wire  _GEN_2559; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108052.38]
  wire  _GEN_2560; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108047.36]
  wire  _GEN_2561; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108042.34]
  wire  _GEN_2562; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108037.32]
  wire  _GEN_2563; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108032.30]
  wire  _GEN_2564; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108027.28]
  wire  _GEN_2565; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108022.26]
  wire  _GEN_2566; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108017.24]
  wire  _GEN_2567; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108012.22]
  wire  _GEN_2568; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108007.20]
  wire  _GEN_2569; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108002.18]
  wire  _GEN_2570; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@107997.16]
  wire  _GEN_2571; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@107992.14]
  wire  _GEN_2572; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@107987.12]
  wire  _GEN_2573; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@107982.10]
  wire  _GEN_2574; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@107977.8]
  wire  _GEN_2575; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@107972.6]
  wire  _GEN_2576; // @[Conditional.scala 40:58:freechips.rocketchip.system.DefaultRV32Config.fir@107967.4]
  wire [31:0] _GEN_2577; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108424.94]
  wire [31:0] _GEN_2578; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108419.92]
  wire [31:0] _GEN_2579; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108414.90]
  wire [31:0] _GEN_2580; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108409.88]
  wire [31:0] _GEN_2581; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108404.86]
  wire [31:0] _GEN_2582; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108399.84]
  wire [31:0] _GEN_2583; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108394.82]
  wire [31:0] _GEN_2584; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108389.80]
  wire [31:0] _GEN_2585; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108384.78]
  wire [31:0] _GEN_2586; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108379.76]
  wire [31:0] _GEN_2587; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108374.74]
  wire [31:0] _GEN_2588; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108369.72]
  wire [31:0] _GEN_2589; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108364.70]
  wire [31:0] _GEN_2590; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108359.68]
  wire [31:0] _GEN_2591; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108354.66]
  wire [31:0] _GEN_2592; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108349.64]
  wire [31:0] _GEN_2593; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108344.62]
  wire [31:0] _GEN_2594; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108339.60]
  wire [31:0] _GEN_2595; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108334.58]
  wire [31:0] _GEN_2596; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108329.56]
  wire [31:0] _GEN_2597; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108324.54]
  wire [31:0] _GEN_2598; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108319.52]
  wire [31:0] _GEN_2599; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108314.50]
  wire [31:0] _GEN_2600; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108309.48]
  wire [31:0] _GEN_2601; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108304.46]
  wire [31:0] _GEN_2602; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108299.44]
  wire [31:0] _GEN_2603; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108294.42]
  wire [31:0] _GEN_2604; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108289.40]
  wire [31:0] _GEN_2605; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108284.38]
  wire [31:0] _GEN_2606; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108279.36]
  wire [31:0] _GEN_2607; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108274.34]
  wire [31:0] _GEN_2608; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108269.32]
  wire [31:0] _GEN_2609; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108264.30]
  wire [31:0] _GEN_2610; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108259.28]
  wire [31:0] _GEN_2611; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108254.26]
  wire [31:0] _GEN_2612; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108249.24]
  wire [31:0] _GEN_2613; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108244.22]
  wire [31:0] _GEN_2614; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108239.20]
  wire [31:0] _GEN_2615; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108234.18]
  wire [31:0] _GEN_2616; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108229.16]
  wire [31:0] _GEN_2617; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108224.14]
  wire [31:0] _GEN_2618; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108219.12]
  wire [31:0] _GEN_2619; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108214.10]
  wire [31:0] _GEN_2620; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108209.8]
  wire [31:0] _GEN_2621; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108204.6]
  wire [31:0] _GEN_2622; // @[Conditional.scala 40:58:freechips.rocketchip.system.DefaultRV32Config.fir@108199.4]
  wire  _T_19710; // @[Debug.scala 1602:18:freechips.rocketchip.system.DefaultRV32Config.fir@108640.10]
  wire  _T_19711; // @[Debug.scala 1602:30:freechips.rocketchip.system.DefaultRV32Config.fir@108641.10]
  wire  _T_19713; // @[Debug.scala 1602:48:freechips.rocketchip.system.DefaultRV32Config.fir@108643.10]
  wire  _T_19718; // @[Debug.scala 1610:30:freechips.rocketchip.system.DefaultRV32Config.fir@108661.10]
  wire  _T_19721; // @[Debug.scala 1611:13:freechips.rocketchip.system.DefaultRV32Config.fir@108665.12]
  wire  _T_19726; // @[Debug.scala 1624:14:freechips.rocketchip.system.DefaultRV32Config.fir@108685.4]
  wire  _T_19727; // @[Debug.scala 1624:30:freechips.rocketchip.system.DefaultRV32Config.fir@108686.4]
  wire  _T_19728; // @[Debug.scala 1624:27:freechips.rocketchip.system.DefaultRV32Config.fir@108687.4]
  wire  _T_19730; // @[Debug.scala 1624:49:freechips.rocketchip.system.DefaultRV32Config.fir@108689.4]
  wire  _T_19732; // @[Debug.scala 1624:12:freechips.rocketchip.system.DefaultRV32Config.fir@108691.4]
  wire  _T_19733; // @[Debug.scala 1624:12:freechips.rocketchip.system.DefaultRV32Config.fir@108692.4]
  wire  _GEN_2740; // @[Debug.scala 1346:15:freechips.rocketchip.system.DefaultRV32Config.fir@85339.12]
  wire  _GEN_2741; // @[Debug.scala 1346:15:freechips.rocketchip.system.DefaultRV32Config.fir@85339.12]
  wire  _GEN_2742; // @[Debug.scala 1346:15:freechips.rocketchip.system.DefaultRV32Config.fir@85339.12]
  wire  _GEN_2743; // @[Debug.scala 1346:15:freechips.rocketchip.system.DefaultRV32Config.fir@85339.12]
  wire  _GEN_2748; // @[Debug.scala 1606:15:freechips.rocketchip.system.DefaultRV32Config.fir@108653.14]
  wire  _GEN_2749; // @[Debug.scala 1606:15:freechips.rocketchip.system.DefaultRV32Config.fir@108653.14]
  wire  _GEN_2750; // @[Debug.scala 1606:15:freechips.rocketchip.system.DefaultRV32Config.fir@108653.14]
  wire  _GEN_2751; // @[Debug.scala 1606:15:freechips.rocketchip.system.DefaultRV32Config.fir@108653.14]
  wire  _GEN_2752; // @[Debug.scala 1606:15:freechips.rocketchip.system.DefaultRV32Config.fir@108653.14]
  wire  _GEN_2761; // @[Debug.scala 1611:13:freechips.rocketchip.system.DefaultRV32Config.fir@108667.14]
  wire  _GEN_2762; // @[Debug.scala 1611:13:freechips.rocketchip.system.DefaultRV32Config.fir@108667.14]
  wire  _GEN_2763; // @[Debug.scala 1611:13:freechips.rocketchip.system.DefaultRV32Config.fir@108667.14]
  TLMonitor_37 TLMonitor ( // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@78930.4]
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
  TLMonitor_38 TLMonitor_1 ( // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@78955.4]
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
  assign hamaskWrSel_0 = io_innerCtrl_bits_hartsel == 10'h0; // @[Debug.scala 782:61:freechips.rocketchip.system.DefaultRV32Config.fir@79182.4]
  assign _T_12 = ~ io_dmactive; // @[Debug.scala 803:11:freechips.rocketchip.system.DefaultRV32Config.fir@79195.4]
  assign _T_15 = io_innerCtrl_ready & io_innerCtrl_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@79203.6]
  assign _T_16 = haltedBitRegs_0 == 1'h0; // @[package.scala 62:38:freechips.rocketchip.system.DefaultRV32Config.fir@79207.6]
  assign _T_17 = hrDebugInt_0 & _T_16; // @[package.scala 57:72:freechips.rocketchip.system.DefaultRV32Config.fir@79208.6]
  assign _T_18 = reset | _T_17; // @[package.scala 58:75:freechips.rocketchip.system.DefaultRV32Config.fir@79209.6]
  assign _T_19 = hrmaskReg_0 & _T_18; // @[package.scala 57:72:freechips.rocketchip.system.DefaultRV32Config.fir@79210.6]
  assign resumereq = _T_15 & io_innerCtrl_bits_resumereq; // @[Debug.scala 826:41:freechips.rocketchip.system.DefaultRV32Config.fir@79264.4]
  assign DMSTATUSRdData_anyresumeack = resumeReqRegs_0 == 1'h0; // @[package.scala 62:38:freechips.rocketchip.system.DefaultRV32Config.fir@79288.8]
  assign _T_80 = _T_15 & io_innerCtrl_bits_ackhavereset; // @[Debug.scala 860:39:freechips.rocketchip.system.DefaultRV32Config.fir@79331.8]
  assign _T_81 = _T_80 & hamaskWrSel_0; // @[Debug.scala 860:73:freechips.rocketchip.system.DefaultRV32Config.fir@79332.8]
  assign _GEN_34 = _T_81 ? 1'h0 : haveResetBitRegs_0; // @[Debug.scala 860:100:freechips.rocketchip.system.DefaultRV32Config.fir@79333.8]
  assign _GEN_35 = reset | _GEN_34; // @[Debug.scala 858:42:freechips.rocketchip.system.DefaultRV32Config.fir@79326.6]
  assign haltedStatus_0 = {{31'd0}, haltedBitRegs_0}; // @[Debug.scala 1009:30:freechips.rocketchip.system.DefaultRV32Config.fir@79417.4 Debug.scala 1013:26:freechips.rocketchip.system.DefaultRV32Config.fir@79420.6 Debug.scala 1015:26:freechips.rocketchip.system.DefaultRV32Config.fir@79423.6]
  assign haltedSummary = haltedStatus_0 != 32'h0; // @[Debug.scala 1019:48:freechips.rocketchip.system.DefaultRV32Config.fir@79425.4]
  assign HALTSUM1RdData_haltsum1 = {{31'd0}, haltedSummary}; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79428.4 :freechips.rocketchip.system.DefaultRV32Config.fir@79430.4]
  assign _T_440 = auto_dmi_in_a_bits_opcode == 3'h4; // @[RegisterRouter.scala 59:36:freechips.rocketchip.system.DefaultRV32Config.fir@80175.4]
  assign _T_441 = auto_dmi_in_a_bits_address[8:2]; // @[Edges.scala 193:34:freechips.rocketchip.system.DefaultRV32Config.fir@80177.4]
  assign _T_3112 = _T_441[5]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83210.4]
  assign _T_3110 = _T_441[3]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83208.4]
  assign _T_3109 = _T_441[2]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83207.4]
  assign _T_3108 = _T_441[1]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83206.4]
  assign _T_3107 = _T_441[0]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83205.4]
  assign _T_3117 = {_T_3112,_T_3110,_T_3109,_T_3108,_T_3107}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@83215.4]
  assign _T_446 = _T_441 & 7'h50; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80189.4]
  assign _T_494 = _T_446 == 7'h0; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80237.4]
  assign _T_450 = _T_446 == 7'h10; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80193.4]
  assign _T_468 = _T_446 == 7'h40; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80211.4]
  assign _T_3691 = auto_dmi_in_a_valid & auto_dmi_in_d_ready; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84395.4]
  assign _T_3692 = _T_440 == 1'h0; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84396.4]
  assign _T_3693 = _T_3691 & _T_3692; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84397.4]
  assign _T_3162 = 32'h1 << _T_3117; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@83260.4]
  assign _T_3169 = _T_3162[6]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83267.4]
  assign _T_3725 = _T_3693 & _T_3169; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84472.4]
  assign _T_3726 = _T_3725 & _T_450; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84473.4]
  assign _T_518 = auto_dmi_in_a_bits_mask[3]; // @[Bitwise.scala 26:51:freechips.rocketchip.system.DefaultRV32Config.fir@80265.4]
  assign _T_526 = _T_518 ? 8'hff : 8'h0; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@80273.4]
  assign _T_517 = auto_dmi_in_a_bits_mask[2]; // @[Bitwise.scala 26:51:freechips.rocketchip.system.DefaultRV32Config.fir@80264.4]
  assign _T_524 = _T_517 ? 8'hff : 8'h0; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@80271.4]
  assign _T_516 = auto_dmi_in_a_bits_mask[1]; // @[Bitwise.scala 26:51:freechips.rocketchip.system.DefaultRV32Config.fir@80263.4]
  assign _T_522 = _T_516 ? 8'hff : 8'h0; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@80269.4]
  assign _T_515 = auto_dmi_in_a_bits_mask[0]; // @[Bitwise.scala 26:51:freechips.rocketchip.system.DefaultRV32Config.fir@80262.4]
  assign _T_520 = _T_515 ? 8'hff : 8'h0; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@80267.4]
  assign _T_529 = {_T_526,_T_524,_T_522,_T_520}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@80276.4]
  assign _T_2035 = _T_529[10:8]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@81966.4]
  assign _T_2036 = _T_2035 == 3'h7; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@81967.4]
  assign ABSTRACTCSWrEnMaybe = _T_3726 & _T_2036; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@81971.4]
  assign ABSTRACTCSWrEnLegal = ctrlStateReg == 2'h0; // @[Debug.scala 1522:44:freechips.rocketchip.system.DefaultRV32Config.fir@108536.4]
  assign ABSTRACTCSWrEn = ABSTRACTCSWrEnMaybe & ABSTRACTCSWrEnLegal; // @[Debug.scala 1041:51:freechips.rocketchip.system.DefaultRV32Config.fir@79507.4]
  assign ABSTRACTCSWrData_cmderr = auto_dmi_in_a_bits_data[10:8]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@81972.4]
  assign _T_136 = ~ ABSTRACTCSWrData_cmderr; // @[Debug.scala 1061:58:freechips.rocketchip.system.DefaultRV32Config.fir@79544.16]
  assign _T_137 = ABSTRACTCSReg_cmderr & _T_136; // @[Debug.scala 1061:56:freechips.rocketchip.system.DefaultRV32Config.fir@79545.16]
  assign _T_19708 = ctrlStateReg == 2'h1; // @[Debug.scala 1576:30:freechips.rocketchip.system.DefaultRV32Config.fir@108616.6]
  assign commandRegIsAccessRegister = COMMANDRdData_cmdtype == 8'h0; // @[Debug.scala 1537:58:freechips.rocketchip.system.DefaultRV32Config.fir@108565.4]
  assign _T_4104 = {COMMANDRdData_cmdtype,COMMANDRdData_control}; // @[Debug.scala 1372:104:freechips.rocketchip.system.DefaultRV32Config.fir@85414.4]
  assign accessRegisterCommandReg_transfer = _T_4104[17]; // @[Debug.scala 1372:86:freechips.rocketchip.system.DefaultRV32Config.fir@85424.4]
  assign accessRegisterCommandReg_write = _T_4104[16]; // @[Debug.scala 1372:86:freechips.rocketchip.system.DefaultRV32Config.fir@85422.4]
  assign _T_19698 = accessRegisterCommandReg_transfer == 1'h0; // @[Debug.scala 1555:19:freechips.rocketchip.system.DefaultRV32Config.fir@108585.8]
  assign accessRegisterCommandReg_regno = _T_4104[15:0]; // @[Debug.scala 1372:86:freechips.rocketchip.system.DefaultRV32Config.fir@85420.4]
  assign _T_19693 = accessRegisterCommandReg_regno >= 16'h1000; // @[Debug.scala 1545:58:freechips.rocketchip.system.DefaultRV32Config.fir@108574.4]
  assign _T_19694 = accessRegisterCommandReg_regno <= 16'h101f; // @[Debug.scala 1545:104:freechips.rocketchip.system.DefaultRV32Config.fir@108575.4]
  assign accessRegIsGPR = _T_19693 & _T_19694; // @[Debug.scala 1545:70:freechips.rocketchip.system.DefaultRV32Config.fir@108576.4]
  assign _T_19699 = _T_19698 | accessRegIsGPR; // @[Debug.scala 1555:54:freechips.rocketchip.system.DefaultRV32Config.fir@108586.8]
  assign _GEN_2691 = _T_19699 ? 1'h0 : 1'h1; // @[Debug.scala 1555:73:freechips.rocketchip.system.DefaultRV32Config.fir@108587.8]
  assign commandRegIsUnsupported = commandRegIsAccessRegister ? _GEN_2691 : 1'h1; // @[Debug.scala 1552:39:freechips.rocketchip.system.DefaultRV32Config.fir@108577.4]
  assign _T_19700 = ~ haltedBitRegs_0; // @[Debug.scala 1557:36:freechips.rocketchip.system.DefaultRV32Config.fir@108589.10]
  assign _GEN_2692 = _T_19699 & _T_19700; // @[Debug.scala 1555:73:freechips.rocketchip.system.DefaultRV32Config.fir@108587.8]
  assign commandRegBadHaltResume = commandRegIsAccessRegister & _GEN_2692; // @[Debug.scala 1552:39:freechips.rocketchip.system.DefaultRV32Config.fir@108577.4]
  assign _GEN_2708 = commandRegIsUnsupported ? 1'h0 : commandRegBadHaltResume; // @[Debug.scala 1583:38:freechips.rocketchip.system.DefaultRV32Config.fir@108618.8]
  assign _GEN_2721 = _T_19708 & _GEN_2708; // @[Debug.scala 1576:59:freechips.rocketchip.system.DefaultRV32Config.fir@108617.6]
  assign errorHaltResume = ABSTRACTCSWrEnLegal ? 1'h0 : _GEN_2721; // @[Debug.scala 1568:47:freechips.rocketchip.system.DefaultRV32Config.fir@108600.4]
  assign _T_3170 = _T_3162[7]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83268.4]
  assign _T_3730 = _T_3693 & _T_3170; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84486.4]
  assign _T_3731 = _T_3730 & _T_450; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84487.4]
  assign _T_2774 = _T_529 == 32'hffffffff; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82807.4]
  assign COMMANDWrEnMaybe = _T_3731 & _T_2774; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82811.4]
  assign COMMANDWrEn = COMMANDWrEnMaybe & ABSTRACTCSWrEnLegal; // @[Debug.scala 1126:40:freechips.rocketchip.system.DefaultRV32Config.fir@80043.4]
  assign COMMANDWrDataVal = COMMANDWrEnMaybe ? auto_dmi_in_a_bits_data : 32'h0; // @[Debug.scala 259:24:freechips.rocketchip.system.DefaultRV32Config.fir@82815.4]
  assign COMMANDWrData_cmdtype = COMMANDWrDataVal[31:24]; // @[Debug.scala 1121:73:freechips.rocketchip.system.DefaultRV32Config.fir@80029.4]
  assign commandWrIsAccessRegister = COMMANDWrData_cmdtype == 8'h0; // @[Debug.scala 1536:60:freechips.rocketchip.system.DefaultRV32Config.fir@108564.4]
  assign _T_19701 = COMMANDWrEn & commandWrIsAccessRegister; // @[Debug.scala 1561:48:freechips.rocketchip.system.DefaultRV32Config.fir@108593.4]
  assign _T_19702 = ABSTRACTCSReg_cmderr == 3'h0; // @[Debug.scala 1561:103:freechips.rocketchip.system.DefaultRV32Config.fir@108594.4]
  assign wrAccessRegisterCommand = _T_19701 & _T_19702; // @[Debug.scala 1561:78:freechips.rocketchip.system.DefaultRV32Config.fir@108595.4]
  assign _T_3167 = _T_3162[4]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83265.4]
  assign _T_3715 = _T_3693 & _T_3167; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84454.4]
  assign _T_3716 = _T_3715 & _T_494; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84455.4]
  assign _T_2917 = _T_529[7:0]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82975.4]
  assign _T_2918 = _T_2917 == 8'hff; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82976.4]
  assign dmiAbstractDataWrEnMaybe_0 = _T_3716 & _T_2918; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82980.4]
  assign _T_3527 = _T_3691 & _T_440; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84029.4]
  assign _T_3549 = _T_3527 & _T_3167; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84086.4]
  assign _T_3550 = _T_3549 & _T_494; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84087.4]
  assign _T_2916 = _T_2917 != 8'h0; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82974.4]
  assign dmiAbstractDataRdEn_0 = _T_3550 & _T_2916; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82978.4]
  assign dmiAbstractDataAccessVec_0 = dmiAbstractDataWrEnMaybe_0 | dmiAbstractDataRdEn_0; // @[Debug.scala 1099:105:freechips.rocketchip.system.DefaultRV32Config.fir@79630.4]
  assign _T_292 = ABSTRACTAUTOReg_autoexecdata[0]; // @[Debug.scala 1110:54:freechips.rocketchip.system.DefaultRV32Config.fir@79928.4]
  assign autoexecData_0 = dmiAbstractDataAccessVec_0 & _T_292; // @[Debug.scala 1110:140:freechips.rocketchip.system.DefaultRV32Config.fir@79940.4]
  assign _T_3179 = _T_3162[16]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83277.4]
  assign _T_3775 = _T_3693 & _T_3179; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84553.4]
  assign _T_3776 = _T_3775 & _T_494; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84554.4]
  assign dmiProgramBufferWrEnMaybe_0 = _T_3776 & _T_2918; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@81073.4]
  assign _T_3609 = _T_3527 & _T_3179; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84185.4]
  assign _T_3610 = _T_3609 & _T_494; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84186.4]
  assign dmiProgramBufferRdEn_0 = _T_3610 & _T_2916; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@81071.4]
  assign dmiProgramBufferAccessVec_0 = dmiProgramBufferWrEnMaybe_0 | dmiProgramBufferRdEn_0; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79707.4]
  assign _T_305 = ABSTRACTAUTOReg_autoexecprogbuf[0]; // @[Debug.scala 1111:57:freechips.rocketchip.system.DefaultRV32Config.fir@79942.4]
  assign autoexecProg_0 = dmiProgramBufferAccessVec_0 & _T_305; // @[Debug.scala 1111:144:freechips.rocketchip.system.DefaultRV32Config.fir@79958.4]
  assign _T_3180 = _T_3162[17]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83278.4]
  assign _T_3780 = _T_3693 & _T_3180; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84564.4]
  assign _T_3781 = _T_3780 & _T_494; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84565.4]
  assign dmiProgramBufferWrEnMaybe_4 = _T_3781 & _T_2918; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80837.4]
  assign _T_3614 = _T_3527 & _T_3180; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84196.4]
  assign _T_3615 = _T_3614 & _T_494; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84197.4]
  assign dmiProgramBufferRdEn_4 = _T_3615 & _T_2916; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80835.4]
  assign dmiProgramBufferAccessVec_4 = dmiProgramBufferWrEnMaybe_4 | dmiProgramBufferRdEn_4; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79711.4]
  assign _T_306 = ABSTRACTAUTOReg_autoexecprogbuf[1]; // @[Debug.scala 1111:57:freechips.rocketchip.system.DefaultRV32Config.fir@79943.4]
  assign autoexecProg_1 = dmiProgramBufferAccessVec_4 & _T_306; // @[Debug.scala 1111:144:freechips.rocketchip.system.DefaultRV32Config.fir@79960.4]
  assign _T_337 = autoexecProg_0 | autoexecProg_1; // @[Debug.scala 1113:73:freechips.rocketchip.system.DefaultRV32Config.fir@79990.4]
  assign _T_3181 = _T_3162[18]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83279.4]
  assign _T_3785 = _T_3693 & _T_3181; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84575.4]
  assign _T_3786 = _T_3785 & _T_494; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84576.4]
  assign dmiProgramBufferWrEnMaybe_8 = _T_3786 & _T_2918; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@81191.4]
  assign _T_3619 = _T_3527 & _T_3181; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84207.4]
  assign _T_3620 = _T_3619 & _T_494; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84208.4]
  assign dmiProgramBufferRdEn_8 = _T_3620 & _T_2916; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@81189.4]
  assign dmiProgramBufferAccessVec_8 = dmiProgramBufferWrEnMaybe_8 | dmiProgramBufferRdEn_8; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79715.4]
  assign _T_307 = ABSTRACTAUTOReg_autoexecprogbuf[2]; // @[Debug.scala 1111:57:freechips.rocketchip.system.DefaultRV32Config.fir@79944.4]
  assign autoexecProg_2 = dmiProgramBufferAccessVec_8 & _T_307; // @[Debug.scala 1111:144:freechips.rocketchip.system.DefaultRV32Config.fir@79962.4]
  assign _T_338 = _T_337 | autoexecProg_2; // @[Debug.scala 1113:73:freechips.rocketchip.system.DefaultRV32Config.fir@79991.4]
  assign _T_3182 = _T_3162[19]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83280.4]
  assign _T_3790 = _T_3693 & _T_3182; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84586.4]
  assign _T_3791 = _T_3790 & _T_494; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84587.4]
  assign dmiProgramBufferWrEnMaybe_12 = _T_3791 & _T_2918; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82334.4]
  assign _T_3624 = _T_3527 & _T_3182; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84218.4]
  assign _T_3625 = _T_3624 & _T_494; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84219.4]
  assign dmiProgramBufferRdEn_12 = _T_3625 & _T_2916; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82332.4]
  assign dmiProgramBufferAccessVec_12 = dmiProgramBufferWrEnMaybe_12 | dmiProgramBufferRdEn_12; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79719.4]
  assign _T_308 = ABSTRACTAUTOReg_autoexecprogbuf[3]; // @[Debug.scala 1111:57:freechips.rocketchip.system.DefaultRV32Config.fir@79945.4]
  assign autoexecProg_3 = dmiProgramBufferAccessVec_12 & _T_308; // @[Debug.scala 1111:144:freechips.rocketchip.system.DefaultRV32Config.fir@79964.4]
  assign _T_339 = _T_338 | autoexecProg_3; // @[Debug.scala 1113:73:freechips.rocketchip.system.DefaultRV32Config.fir@79992.4]
  assign _T_3183 = _T_3162[20]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83281.4]
  assign _T_3795 = _T_3693 & _T_3183; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84597.4]
  assign _T_3796 = _T_3795 & _T_494; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84598.4]
  assign dmiProgramBufferWrEnMaybe_16 = _T_3796 & _T_2918; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82839.4]
  assign _T_3629 = _T_3527 & _T_3183; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84229.4]
  assign _T_3630 = _T_3629 & _T_494; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84230.4]
  assign dmiProgramBufferRdEn_16 = _T_3630 & _T_2916; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82837.4]
  assign dmiProgramBufferAccessVec_16 = dmiProgramBufferWrEnMaybe_16 | dmiProgramBufferRdEn_16; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79723.4]
  assign _T_309 = ABSTRACTAUTOReg_autoexecprogbuf[4]; // @[Debug.scala 1111:57:freechips.rocketchip.system.DefaultRV32Config.fir@79946.4]
  assign autoexecProg_4 = dmiProgramBufferAccessVec_16 & _T_309; // @[Debug.scala 1111:144:freechips.rocketchip.system.DefaultRV32Config.fir@79966.4]
  assign _T_340 = _T_339 | autoexecProg_4; // @[Debug.scala 1113:73:freechips.rocketchip.system.DefaultRV32Config.fir@79993.4]
  assign _T_3184 = _T_3162[21]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83282.4]
  assign _T_3800 = _T_3693 & _T_3184; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84608.4]
  assign _T_3801 = _T_3800 & _T_494; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84609.4]
  assign dmiProgramBufferWrEnMaybe_20 = _T_3801 & _T_2918; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80483.4]
  assign _T_3634 = _T_3527 & _T_3184; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84240.4]
  assign _T_3635 = _T_3634 & _T_494; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84241.4]
  assign dmiProgramBufferRdEn_20 = _T_3635 & _T_2916; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80481.4]
  assign dmiProgramBufferAccessVec_20 = dmiProgramBufferWrEnMaybe_20 | dmiProgramBufferRdEn_20; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79727.4]
  assign _T_310 = ABSTRACTAUTOReg_autoexecprogbuf[5]; // @[Debug.scala 1111:57:freechips.rocketchip.system.DefaultRV32Config.fir@79947.4]
  assign autoexecProg_5 = dmiProgramBufferAccessVec_20 & _T_310; // @[Debug.scala 1111:144:freechips.rocketchip.system.DefaultRV32Config.fir@79968.4]
  assign _T_341 = _T_340 | autoexecProg_5; // @[Debug.scala 1113:73:freechips.rocketchip.system.DefaultRV32Config.fir@79994.4]
  assign _T_3185 = _T_3162[22]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83283.4]
  assign _T_3805 = _T_3693 & _T_3185; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84619.4]
  assign _T_3806 = _T_3805 & _T_494; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84620.4]
  assign dmiProgramBufferWrEnMaybe_24 = _T_3806 & _T_2918; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80719.4]
  assign _T_3639 = _T_3527 & _T_3185; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84251.4]
  assign _T_3640 = _T_3639 & _T_494; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84252.4]
  assign dmiProgramBufferRdEn_24 = _T_3640 & _T_2916; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80717.4]
  assign dmiProgramBufferAccessVec_24 = dmiProgramBufferWrEnMaybe_24 | dmiProgramBufferRdEn_24; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79731.4]
  assign _T_311 = ABSTRACTAUTOReg_autoexecprogbuf[6]; // @[Debug.scala 1111:57:freechips.rocketchip.system.DefaultRV32Config.fir@79948.4]
  assign autoexecProg_6 = dmiProgramBufferAccessVec_24 & _T_311; // @[Debug.scala 1111:144:freechips.rocketchip.system.DefaultRV32Config.fir@79970.4]
  assign _T_342 = _T_341 | autoexecProg_6; // @[Debug.scala 1113:73:freechips.rocketchip.system.DefaultRV32Config.fir@79995.4]
  assign _T_3186 = _T_3162[23]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83284.4]
  assign _T_3810 = _T_3693 & _T_3186; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84630.4]
  assign _T_3811 = _T_3810 & _T_494; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84631.4]
  assign dmiProgramBufferWrEnMaybe_28 = _T_3811 & _T_2918; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82216.4]
  assign _T_3644 = _T_3527 & _T_3186; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84262.4]
  assign _T_3645 = _T_3644 & _T_494; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84263.4]
  assign dmiProgramBufferRdEn_28 = _T_3645 & _T_2916; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82214.4]
  assign dmiProgramBufferAccessVec_28 = dmiProgramBufferWrEnMaybe_28 | dmiProgramBufferRdEn_28; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79735.4]
  assign _T_312 = ABSTRACTAUTOReg_autoexecprogbuf[7]; // @[Debug.scala 1111:57:freechips.rocketchip.system.DefaultRV32Config.fir@79949.4]
  assign autoexecProg_7 = dmiProgramBufferAccessVec_28 & _T_312; // @[Debug.scala 1111:144:freechips.rocketchip.system.DefaultRV32Config.fir@79972.4]
  assign _T_343 = _T_342 | autoexecProg_7; // @[Debug.scala 1113:73:freechips.rocketchip.system.DefaultRV32Config.fir@79996.4]
  assign _T_3187 = _T_3162[24]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83285.4]
  assign _T_3815 = _T_3693 & _T_3187; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84641.4]
  assign _T_3816 = _T_3815 & _T_494; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84642.4]
  assign dmiProgramBufferWrEnMaybe_32 = _T_3816 & _T_2918; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82693.4]
  assign _T_3649 = _T_3527 & _T_3187; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84273.4]
  assign _T_3650 = _T_3649 & _T_494; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84274.4]
  assign dmiProgramBufferRdEn_32 = _T_3650 & _T_2916; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82691.4]
  assign dmiProgramBufferAccessVec_32 = dmiProgramBufferWrEnMaybe_32 | dmiProgramBufferRdEn_32; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79739.4]
  assign _T_313 = ABSTRACTAUTOReg_autoexecprogbuf[8]; // @[Debug.scala 1111:57:freechips.rocketchip.system.DefaultRV32Config.fir@79950.4]
  assign autoexecProg_8 = dmiProgramBufferAccessVec_32 & _T_313; // @[Debug.scala 1111:144:freechips.rocketchip.system.DefaultRV32Config.fir@79974.4]
  assign _T_344 = _T_343 | autoexecProg_8; // @[Debug.scala 1113:73:freechips.rocketchip.system.DefaultRV32Config.fir@79997.4]
  assign _T_3188 = _T_3162[25]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83286.4]
  assign _T_3820 = _T_3693 & _T_3188; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84652.4]
  assign _T_3821 = _T_3820 & _T_494; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84653.4]
  assign dmiProgramBufferWrEnMaybe_36 = _T_3821 & _T_2918; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80955.4]
  assign _T_3654 = _T_3527 & _T_3188; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84284.4]
  assign _T_3655 = _T_3654 & _T_494; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84285.4]
  assign dmiProgramBufferRdEn_36 = _T_3655 & _T_2916; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80953.4]
  assign dmiProgramBufferAccessVec_36 = dmiProgramBufferWrEnMaybe_36 | dmiProgramBufferRdEn_36; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79743.4]
  assign _T_314 = ABSTRACTAUTOReg_autoexecprogbuf[9]; // @[Debug.scala 1111:57:freechips.rocketchip.system.DefaultRV32Config.fir@79951.4]
  assign autoexecProg_9 = dmiProgramBufferAccessVec_36 & _T_314; // @[Debug.scala 1111:144:freechips.rocketchip.system.DefaultRV32Config.fir@79976.4]
  assign _T_345 = _T_344 | autoexecProg_9; // @[Debug.scala 1113:73:freechips.rocketchip.system.DefaultRV32Config.fir@79998.4]
  assign _T_3189 = _T_3162[26]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83287.4]
  assign _T_3825 = _T_3693 & _T_3189; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84663.4]
  assign _T_3826 = _T_3825 & _T_494; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84664.4]
  assign dmiProgramBufferWrEnMaybe_40 = _T_3826 & _T_2918; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80288.4]
  assign _T_3659 = _T_3527 & _T_3189; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84295.4]
  assign _T_3660 = _T_3659 & _T_494; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84296.4]
  assign dmiProgramBufferRdEn_40 = _T_3660 & _T_2916; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80286.4]
  assign dmiProgramBufferAccessVec_40 = dmiProgramBufferWrEnMaybe_40 | dmiProgramBufferRdEn_40; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79747.4]
  assign _T_315 = ABSTRACTAUTOReg_autoexecprogbuf[10]; // @[Debug.scala 1111:57:freechips.rocketchip.system.DefaultRV32Config.fir@79952.4]
  assign autoexecProg_10 = dmiProgramBufferAccessVec_40 & _T_315; // @[Debug.scala 1111:144:freechips.rocketchip.system.DefaultRV32Config.fir@79978.4]
  assign _T_346 = _T_345 | autoexecProg_10; // @[Debug.scala 1113:73:freechips.rocketchip.system.DefaultRV32Config.fir@79999.4]
  assign _T_3190 = _T_3162[27]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83288.4]
  assign _T_3830 = _T_3693 & _T_3190; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84674.4]
  assign _T_3831 = _T_3830 & _T_494; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84675.4]
  assign dmiProgramBufferWrEnMaybe_44 = _T_3831 & _T_2918; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82575.4]
  assign _T_3664 = _T_3527 & _T_3190; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84306.4]
  assign _T_3665 = _T_3664 & _T_494; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84307.4]
  assign dmiProgramBufferRdEn_44 = _T_3665 & _T_2916; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82573.4]
  assign dmiProgramBufferAccessVec_44 = dmiProgramBufferWrEnMaybe_44 | dmiProgramBufferRdEn_44; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79751.4]
  assign _T_316 = ABSTRACTAUTOReg_autoexecprogbuf[11]; // @[Debug.scala 1111:57:freechips.rocketchip.system.DefaultRV32Config.fir@79953.4]
  assign autoexecProg_11 = dmiProgramBufferAccessVec_44 & _T_316; // @[Debug.scala 1111:144:freechips.rocketchip.system.DefaultRV32Config.fir@79980.4]
  assign _T_347 = _T_346 | autoexecProg_11; // @[Debug.scala 1113:73:freechips.rocketchip.system.DefaultRV32Config.fir@80000.4]
  assign _T_3191 = _T_3162[28]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83289.4]
  assign _T_3835 = _T_3693 & _T_3191; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84685.4]
  assign _T_3836 = _T_3835 & _T_494; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84686.4]
  assign dmiProgramBufferWrEnMaybe_48 = _T_3836 & _T_2918; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82098.4]
  assign _T_3669 = _T_3527 & _T_3191; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84317.4]
  assign _T_3670 = _T_3669 & _T_494; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84318.4]
  assign dmiProgramBufferRdEn_48 = _T_3670 & _T_2916; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82096.4]
  assign dmiProgramBufferAccessVec_48 = dmiProgramBufferWrEnMaybe_48 | dmiProgramBufferRdEn_48; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79755.4]
  assign _T_317 = ABSTRACTAUTOReg_autoexecprogbuf[12]; // @[Debug.scala 1111:57:freechips.rocketchip.system.DefaultRV32Config.fir@79954.4]
  assign autoexecProg_12 = dmiProgramBufferAccessVec_48 & _T_317; // @[Debug.scala 1111:144:freechips.rocketchip.system.DefaultRV32Config.fir@79982.4]
  assign _T_348 = _T_347 | autoexecProg_12; // @[Debug.scala 1113:73:freechips.rocketchip.system.DefaultRV32Config.fir@80001.4]
  assign _T_3192 = _T_3162[29]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83290.4]
  assign _T_3840 = _T_3693 & _T_3192; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84696.4]
  assign _T_3841 = _T_3840 & _T_494; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84697.4]
  assign dmiProgramBufferWrEnMaybe_52 = _T_3841 & _T_2918; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@81309.4]
  assign _T_3674 = _T_3527 & _T_3192; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84328.4]
  assign _T_3675 = _T_3674 & _T_494; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84329.4]
  assign dmiProgramBufferRdEn_52 = _T_3675 & _T_2916; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@81307.4]
  assign dmiProgramBufferAccessVec_52 = dmiProgramBufferWrEnMaybe_52 | dmiProgramBufferRdEn_52; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79759.4]
  assign _T_318 = ABSTRACTAUTOReg_autoexecprogbuf[13]; // @[Debug.scala 1111:57:freechips.rocketchip.system.DefaultRV32Config.fir@79955.4]
  assign autoexecProg_13 = dmiProgramBufferAccessVec_52 & _T_318; // @[Debug.scala 1111:144:freechips.rocketchip.system.DefaultRV32Config.fir@79984.4]
  assign _T_349 = _T_348 | autoexecProg_13; // @[Debug.scala 1113:73:freechips.rocketchip.system.DefaultRV32Config.fir@80002.4]
  assign _T_3193 = _T_3162[30]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83291.4]
  assign _T_3845 = _T_3693 & _T_3193; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84707.4]
  assign _T_3846 = _T_3845 & _T_494; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84708.4]
  assign dmiProgramBufferWrEnMaybe_56 = _T_3846 & _T_2918; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80601.4]
  assign _T_3679 = _T_3527 & _T_3193; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84339.4]
  assign _T_3680 = _T_3679 & _T_494; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84340.4]
  assign dmiProgramBufferRdEn_56 = _T_3680 & _T_2916; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80599.4]
  assign dmiProgramBufferAccessVec_56 = dmiProgramBufferWrEnMaybe_56 | dmiProgramBufferRdEn_56; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79763.4]
  assign _T_319 = ABSTRACTAUTOReg_autoexecprogbuf[14]; // @[Debug.scala 1111:57:freechips.rocketchip.system.DefaultRV32Config.fir@79956.4]
  assign autoexecProg_14 = dmiProgramBufferAccessVec_56 & _T_319; // @[Debug.scala 1111:144:freechips.rocketchip.system.DefaultRV32Config.fir@79986.4]
  assign _T_350 = _T_349 | autoexecProg_14; // @[Debug.scala 1113:73:freechips.rocketchip.system.DefaultRV32Config.fir@80003.4]
  assign _T_3194 = _T_3162[31]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83292.4]
  assign _T_3850 = _T_3693 & _T_3194; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84718.4]
  assign _T_3851 = _T_3850 & _T_494; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84719.4]
  assign dmiProgramBufferWrEnMaybe_60 = _T_3851 & _T_2918; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83098.4]
  assign _T_3684 = _T_3527 & _T_3194; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84350.4]
  assign _T_3685 = _T_3684 & _T_494; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84351.4]
  assign dmiProgramBufferRdEn_60 = _T_3685 & _T_2916; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83096.4]
  assign dmiProgramBufferAccessVec_60 = dmiProgramBufferWrEnMaybe_60 | dmiProgramBufferRdEn_60; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79767.4]
  assign _T_320 = ABSTRACTAUTOReg_autoexecprogbuf[15]; // @[Debug.scala 1111:57:freechips.rocketchip.system.DefaultRV32Config.fir@79957.4]
  assign autoexecProg_15 = dmiProgramBufferAccessVec_60 & _T_320; // @[Debug.scala 1111:144:freechips.rocketchip.system.DefaultRV32Config.fir@79988.4]
  assign _T_351 = _T_350 | autoexecProg_15; // @[Debug.scala 1113:73:freechips.rocketchip.system.DefaultRV32Config.fir@80004.4]
  assign autoexec = autoexecData_0 | _T_351; // @[Debug.scala 1113:48:freechips.rocketchip.system.DefaultRV32Config.fir@80005.4]
  assign _T_19703 = autoexec & commandRegIsAccessRegister; // @[Debug.scala 1562:48:freechips.rocketchip.system.DefaultRV32Config.fir@108596.4]
  assign regAccessRegisterCommand = _T_19703 & _T_19702; // @[Debug.scala 1562:78:freechips.rocketchip.system.DefaultRV32Config.fir@108598.4]
  assign _T_19706 = wrAccessRegisterCommand | regAccessRegisterCommand; // @[Debug.scala 1569:37:freechips.rocketchip.system.DefaultRV32Config.fir@108601.6]
  assign _T_19692 = commandWrIsAccessRegister == 1'h0; // @[Debug.scala 1539:49:freechips.rocketchip.system.DefaultRV32Config.fir@108566.4]
  assign commandWrIsUnsupported = COMMANDWrEn & _T_19692; // @[Debug.scala 1539:46:freechips.rocketchip.system.DefaultRV32Config.fir@108567.4]
  assign _T_19707 = autoexec & commandRegIsUnsupported; // @[Debug.scala 1573:28:freechips.rocketchip.system.DefaultRV32Config.fir@108610.10]
  assign _GEN_2698 = commandWrIsUnsupported | _T_19707; // @[Debug.scala 1571:43:freechips.rocketchip.system.DefaultRV32Config.fir@108606.8]
  assign _GEN_2700 = _T_19706 ? 1'h0 : _GEN_2698; // @[Debug.scala 1569:66:freechips.rocketchip.system.DefaultRV32Config.fir@108602.6]
  assign _GEN_2719 = _T_19708 & commandRegIsUnsupported; // @[Debug.scala 1576:59:freechips.rocketchip.system.DefaultRV32Config.fir@108617.6]
  assign errorUnsupported = ABSTRACTCSWrEnLegal ? _GEN_2700 : _GEN_2719; // @[Debug.scala 1568:47:freechips.rocketchip.system.DefaultRV32Config.fir@108600.4]
  assign _T_19709 = ctrlStateReg == 2'h2; // @[Debug.scala 1597:30:freechips.rocketchip.system.DefaultRV32Config.fir@108638.8]
  assign _T_4169 = auto_tl_in_a_bits_opcode == 3'h4; // @[RegisterRouter.scala 59:36:freechips.rocketchip.system.DefaultRV32Config.fir@85545.4]
  assign _T_4170 = auto_tl_in_a_bits_address[11:2]; // @[Edges.scala 193:34:freechips.rocketchip.system.DefaultRV32Config.fir@85547.4]
  assign _T_8245 = _T_4170[9]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@89845.4]
  assign _T_8243 = _T_4170[7]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@89843.4]
  assign _T_8242 = _T_4170[6]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@89842.4]
  assign _T_8241 = _T_4170[5]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@89841.4]
  assign _T_8240 = _T_4170[4]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@89840.4]
  assign _T_8239 = _T_4170[3]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@89839.4]
  assign _T_8238 = _T_4170[2]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@89838.4]
  assign _T_8237 = _T_4170[1]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@89837.4]
  assign _T_8236 = _T_4170[0]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@89836.4]
  assign _T_8253 = {_T_8245,_T_8243,_T_8242,_T_8241,_T_8240,_T_8239,_T_8238,_T_8237,_T_8236}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@89853.4]
  assign _T_4175 = _T_4170 & 10'h100; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@85559.4]
  assign _T_4261 = _T_4175 == 10'h0; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@85645.4]
  assign _T_4211 = _T_4175 == 10'h100; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@85595.4]
  assign _T_16994 = auto_tl_in_a_valid & auto_tl_in_d_ready; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@103688.4]
  assign _T_16995 = _T_4169 == 1'h0; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@103689.4]
  assign _T_16996 = _T_16994 & _T_16995; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@103690.4]
  assign _T_8785 = 512'h1 << _T_8253; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@90385.4]
  assign _T_8853 = _T_8785[67]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@90453.4]
  assign _T_17333 = _T_16996 & _T_8853; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@104167.4]
  assign _T_17334 = _T_17333 & _T_4261; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@104168.4]
  assign _T_4291 = auto_tl_in_a_bits_mask[3]; // @[Bitwise.scala 26:51:freechips.rocketchip.system.DefaultRV32Config.fir@85679.4]
  assign _T_4299 = _T_4291 ? 8'hff : 8'h0; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@85687.4]
  assign _T_4290 = auto_tl_in_a_bits_mask[2]; // @[Bitwise.scala 26:51:freechips.rocketchip.system.DefaultRV32Config.fir@85678.4]
  assign _T_4297 = _T_4290 ? 8'hff : 8'h0; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@85685.4]
  assign _T_4289 = auto_tl_in_a_bits_mask[1]; // @[Bitwise.scala 26:51:freechips.rocketchip.system.DefaultRV32Config.fir@85677.4]
  assign _T_4295 = _T_4289 ? 8'hff : 8'h0; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@85683.4]
  assign _T_4288 = auto_tl_in_a_bits_mask[0]; // @[Bitwise.scala 26:51:freechips.rocketchip.system.DefaultRV32Config.fir@85676.4]
  assign _T_4293 = _T_4288 ? 8'hff : 8'h0; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@85681.4]
  assign _T_4302 = {_T_4299,_T_4297,_T_4295,_T_4293}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@85690.4]
  assign _T_7314 = _T_4302[9:0]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@88852.4]
  assign _T_7315 = _T_7314 == 10'h3ff; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@88853.4]
  assign hartExceptionWrEn = _T_17334 & _T_7315; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@88857.4]
  assign _GEN_2717 = _T_19709 & hartExceptionWrEn; // @[Debug.scala 1597:51:freechips.rocketchip.system.DefaultRV32Config.fir@108639.8]
  assign _GEN_2723 = _T_19708 ? 1'h0 : _GEN_2717; // @[Debug.scala 1576:59:freechips.rocketchip.system.DefaultRV32Config.fir@108617.6]
  assign errorException = ABSTRACTCSWrEnLegal ? 1'h0 : _GEN_2723; // @[Debug.scala 1568:47:freechips.rocketchip.system.DefaultRV32Config.fir@108600.4]
  assign _T_19675 = ~ ABSTRACTCSWrEnLegal; // @[Debug.scala 1528:45:freechips.rocketchip.system.DefaultRV32Config.fir@108546.4]
  assign _T_19676 = ABSTRACTCSWrEnMaybe & _T_19675; // @[Debug.scala 1528:42:freechips.rocketchip.system.DefaultRV32Config.fir@108547.4]
  assign _T_3171 = _T_3162[8]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83269.4]
  assign _T_3735 = _T_3693 & _T_3171; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84494.4]
  assign _T_3736 = _T_3735 & _T_450; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@84495.4]
  assign _T_634 = _T_529[0]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80401.4]
  assign autoexecdataWrEnMaybe = _T_3736 & _T_634; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80406.4]
  assign _T_19678 = autoexecdataWrEnMaybe & _T_19675; // @[Debug.scala 1529:42:freechips.rocketchip.system.DefaultRV32Config.fir@108549.4]
  assign _T_19679 = _T_19676 | _T_19678; // @[Debug.scala 1528:74:freechips.rocketchip.system.DefaultRV32Config.fir@108550.4]
  assign _T_682 = _T_529[31:16]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80451.4]
  assign _T_683 = _T_682 == 16'hffff; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80452.4]
  assign autoexecprogbufWrEnMaybe = _T_3736 & _T_683; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80456.4]
  assign _T_19681 = autoexecprogbufWrEnMaybe & _T_19675; // @[Debug.scala 1530:44:freechips.rocketchip.system.DefaultRV32Config.fir@108552.4]
  assign _T_19682 = _T_19679 | _T_19681; // @[Debug.scala 1529:74:freechips.rocketchip.system.DefaultRV32Config.fir@108553.4]
  assign _T_19684 = COMMANDWrEnMaybe & _T_19675; // @[Debug.scala 1531:42:freechips.rocketchip.system.DefaultRV32Config.fir@108555.4]
  assign _T_19685 = _T_19682 | _T_19684; // @[Debug.scala 1530:74:freechips.rocketchip.system.DefaultRV32Config.fir@108556.4]
  assign _T_2940 = _T_529[15:8]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83003.4]
  assign _T_2941 = _T_2940 == 8'hff; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83004.4]
  assign dmiAbstractDataWrEnMaybe_1 = _T_3716 & _T_2941; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83008.4]
  assign _T_2939 = _T_2940 != 8'h0; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83002.4]
  assign dmiAbstractDataRdEn_1 = _T_3550 & _T_2939; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83006.4]
  assign dmiAbstractDataAccessVec_1 = dmiAbstractDataWrEnMaybe_1 | dmiAbstractDataRdEn_1; // @[Debug.scala 1099:105:freechips.rocketchip.system.DefaultRV32Config.fir@79631.4]
  assign _T_226 = dmiAbstractDataAccessVec_0 | dmiAbstractDataAccessVec_1; // @[Debug.scala 1104:68:freechips.rocketchip.system.DefaultRV32Config.fir@79835.4]
  assign _T_2965 = _T_529[23:16]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83033.4]
  assign _T_2966 = _T_2965 == 8'hff; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83034.4]
  assign dmiAbstractDataWrEnMaybe_2 = _T_3716 & _T_2966; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83038.4]
  assign _T_2964 = _T_2965 != 8'h0; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83032.4]
  assign dmiAbstractDataRdEn_2 = _T_3550 & _T_2964; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83036.4]
  assign dmiAbstractDataAccessVec_2 = dmiAbstractDataWrEnMaybe_2 | dmiAbstractDataRdEn_2; // @[Debug.scala 1099:105:freechips.rocketchip.system.DefaultRV32Config.fir@79632.4]
  assign _T_227 = _T_226 | dmiAbstractDataAccessVec_2; // @[Debug.scala 1104:68:freechips.rocketchip.system.DefaultRV32Config.fir@79836.4]
  assign _T_2990 = _T_529[31:24]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83063.4]
  assign _T_2991 = _T_2990 == 8'hff; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83064.4]
  assign dmiAbstractDataWrEnMaybe_3 = _T_3716 & _T_2991; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83068.4]
  assign _T_2989 = _T_2990 != 8'h0; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83062.4]
  assign dmiAbstractDataRdEn_3 = _T_3550 & _T_2989; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83066.4]
  assign dmiAbstractDataAccessVec_3 = dmiAbstractDataWrEnMaybe_3 | dmiAbstractDataRdEn_3; // @[Debug.scala 1099:105:freechips.rocketchip.system.DefaultRV32Config.fir@79633.4]
  assign dmiAbstractDataAccess = _T_227 | dmiAbstractDataAccessVec_3; // @[Debug.scala 1104:68:freechips.rocketchip.system.DefaultRV32Config.fir@79837.4]
  assign _T_19687 = dmiAbstractDataAccess & _T_19675; // @[Debug.scala 1532:42:freechips.rocketchip.system.DefaultRV32Config.fir@108558.4]
  assign _T_19688 = _T_19685 | _T_19687; // @[Debug.scala 1531:74:freechips.rocketchip.system.DefaultRV32Config.fir@108559.4]
  assign dmiProgramBufferWrEnMaybe_1 = _T_3776 & _T_2941; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@81101.4]
  assign dmiProgramBufferRdEn_1 = _T_3610 & _T_2939; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@81099.4]
  assign dmiProgramBufferAccessVec_1 = dmiProgramBufferWrEnMaybe_1 | dmiProgramBufferRdEn_1; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79708.4]
  assign _T_228 = dmiProgramBufferAccessVec_0 | dmiProgramBufferAccessVec_1; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79838.4]
  assign dmiProgramBufferWrEnMaybe_2 = _T_3776 & _T_2966; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@81131.4]
  assign dmiProgramBufferRdEn_2 = _T_3610 & _T_2964; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@81129.4]
  assign dmiProgramBufferAccessVec_2 = dmiProgramBufferWrEnMaybe_2 | dmiProgramBufferRdEn_2; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79709.4]
  assign _T_229 = _T_228 | dmiProgramBufferAccessVec_2; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79839.4]
  assign dmiProgramBufferWrEnMaybe_3 = _T_3776 & _T_2991; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@81161.4]
  assign dmiProgramBufferRdEn_3 = _T_3610 & _T_2989; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@81159.4]
  assign dmiProgramBufferAccessVec_3 = dmiProgramBufferWrEnMaybe_3 | dmiProgramBufferRdEn_3; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79710.4]
  assign _T_230 = _T_229 | dmiProgramBufferAccessVec_3; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79840.4]
  assign _T_231 = _T_230 | dmiProgramBufferAccessVec_4; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79841.4]
  assign dmiProgramBufferWrEnMaybe_5 = _T_3781 & _T_2941; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80865.4]
  assign dmiProgramBufferRdEn_5 = _T_3615 & _T_2939; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80863.4]
  assign dmiProgramBufferAccessVec_5 = dmiProgramBufferWrEnMaybe_5 | dmiProgramBufferRdEn_5; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79712.4]
  assign _T_232 = _T_231 | dmiProgramBufferAccessVec_5; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79842.4]
  assign dmiProgramBufferWrEnMaybe_6 = _T_3781 & _T_2966; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80895.4]
  assign dmiProgramBufferRdEn_6 = _T_3615 & _T_2964; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80893.4]
  assign dmiProgramBufferAccessVec_6 = dmiProgramBufferWrEnMaybe_6 | dmiProgramBufferRdEn_6; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79713.4]
  assign _T_233 = _T_232 | dmiProgramBufferAccessVec_6; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79843.4]
  assign dmiProgramBufferWrEnMaybe_7 = _T_3781 & _T_2991; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80925.4]
  assign dmiProgramBufferRdEn_7 = _T_3615 & _T_2989; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80923.4]
  assign dmiProgramBufferAccessVec_7 = dmiProgramBufferWrEnMaybe_7 | dmiProgramBufferRdEn_7; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79714.4]
  assign _T_234 = _T_233 | dmiProgramBufferAccessVec_7; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79844.4]
  assign _T_235 = _T_234 | dmiProgramBufferAccessVec_8; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79845.4]
  assign dmiProgramBufferWrEnMaybe_9 = _T_3786 & _T_2941; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@81219.4]
  assign dmiProgramBufferRdEn_9 = _T_3620 & _T_2939; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@81217.4]
  assign dmiProgramBufferAccessVec_9 = dmiProgramBufferWrEnMaybe_9 | dmiProgramBufferRdEn_9; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79716.4]
  assign _T_236 = _T_235 | dmiProgramBufferAccessVec_9; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79846.4]
  assign dmiProgramBufferWrEnMaybe_10 = _T_3786 & _T_2966; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@81249.4]
  assign dmiProgramBufferRdEn_10 = _T_3620 & _T_2964; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@81247.4]
  assign dmiProgramBufferAccessVec_10 = dmiProgramBufferWrEnMaybe_10 | dmiProgramBufferRdEn_10; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79717.4]
  assign _T_237 = _T_236 | dmiProgramBufferAccessVec_10; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79847.4]
  assign dmiProgramBufferWrEnMaybe_11 = _T_3786 & _T_2991; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@81279.4]
  assign dmiProgramBufferRdEn_11 = _T_3620 & _T_2989; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@81277.4]
  assign dmiProgramBufferAccessVec_11 = dmiProgramBufferWrEnMaybe_11 | dmiProgramBufferRdEn_11; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79718.4]
  assign _T_238 = _T_237 | dmiProgramBufferAccessVec_11; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79848.4]
  assign _T_239 = _T_238 | dmiProgramBufferAccessVec_12; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79849.4]
  assign dmiProgramBufferWrEnMaybe_13 = _T_3791 & _T_2941; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82362.4]
  assign dmiProgramBufferRdEn_13 = _T_3625 & _T_2939; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82360.4]
  assign dmiProgramBufferAccessVec_13 = dmiProgramBufferWrEnMaybe_13 | dmiProgramBufferRdEn_13; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79720.4]
  assign _T_240 = _T_239 | dmiProgramBufferAccessVec_13; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79850.4]
  assign dmiProgramBufferWrEnMaybe_14 = _T_3791 & _T_2966; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82392.4]
  assign dmiProgramBufferRdEn_14 = _T_3625 & _T_2964; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82390.4]
  assign dmiProgramBufferAccessVec_14 = dmiProgramBufferWrEnMaybe_14 | dmiProgramBufferRdEn_14; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79721.4]
  assign _T_241 = _T_240 | dmiProgramBufferAccessVec_14; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79851.4]
  assign dmiProgramBufferWrEnMaybe_15 = _T_3791 & _T_2991; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82422.4]
  assign dmiProgramBufferRdEn_15 = _T_3625 & _T_2989; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82420.4]
  assign dmiProgramBufferAccessVec_15 = dmiProgramBufferWrEnMaybe_15 | dmiProgramBufferRdEn_15; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79722.4]
  assign _T_242 = _T_241 | dmiProgramBufferAccessVec_15; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79852.4]
  assign _T_243 = _T_242 | dmiProgramBufferAccessVec_16; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79853.4]
  assign dmiProgramBufferWrEnMaybe_17 = _T_3796 & _T_2941; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82867.4]
  assign dmiProgramBufferRdEn_17 = _T_3630 & _T_2939; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82865.4]
  assign dmiProgramBufferAccessVec_17 = dmiProgramBufferWrEnMaybe_17 | dmiProgramBufferRdEn_17; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79724.4]
  assign _T_244 = _T_243 | dmiProgramBufferAccessVec_17; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79854.4]
  assign dmiProgramBufferWrEnMaybe_18 = _T_3796 & _T_2966; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82897.4]
  assign dmiProgramBufferRdEn_18 = _T_3630 & _T_2964; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82895.4]
  assign dmiProgramBufferAccessVec_18 = dmiProgramBufferWrEnMaybe_18 | dmiProgramBufferRdEn_18; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79725.4]
  assign _T_245 = _T_244 | dmiProgramBufferAccessVec_18; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79855.4]
  assign dmiProgramBufferWrEnMaybe_19 = _T_3796 & _T_2991; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82927.4]
  assign dmiProgramBufferRdEn_19 = _T_3630 & _T_2989; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82925.4]
  assign dmiProgramBufferAccessVec_19 = dmiProgramBufferWrEnMaybe_19 | dmiProgramBufferRdEn_19; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79726.4]
  assign _T_246 = _T_245 | dmiProgramBufferAccessVec_19; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79856.4]
  assign _T_247 = _T_246 | dmiProgramBufferAccessVec_20; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79857.4]
  assign dmiProgramBufferWrEnMaybe_21 = _T_3801 & _T_2941; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80511.4]
  assign dmiProgramBufferRdEn_21 = _T_3635 & _T_2939; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80509.4]
  assign dmiProgramBufferAccessVec_21 = dmiProgramBufferWrEnMaybe_21 | dmiProgramBufferRdEn_21; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79728.4]
  assign _T_248 = _T_247 | dmiProgramBufferAccessVec_21; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79858.4]
  assign dmiProgramBufferWrEnMaybe_22 = _T_3801 & _T_2966; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80541.4]
  assign dmiProgramBufferRdEn_22 = _T_3635 & _T_2964; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80539.4]
  assign dmiProgramBufferAccessVec_22 = dmiProgramBufferWrEnMaybe_22 | dmiProgramBufferRdEn_22; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79729.4]
  assign _T_249 = _T_248 | dmiProgramBufferAccessVec_22; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79859.4]
  assign dmiProgramBufferWrEnMaybe_23 = _T_3801 & _T_2991; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80571.4]
  assign dmiProgramBufferRdEn_23 = _T_3635 & _T_2989; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80569.4]
  assign dmiProgramBufferAccessVec_23 = dmiProgramBufferWrEnMaybe_23 | dmiProgramBufferRdEn_23; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79730.4]
  assign _T_250 = _T_249 | dmiProgramBufferAccessVec_23; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79860.4]
  assign _T_251 = _T_250 | dmiProgramBufferAccessVec_24; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79861.4]
  assign dmiProgramBufferWrEnMaybe_25 = _T_3806 & _T_2941; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80747.4]
  assign dmiProgramBufferRdEn_25 = _T_3640 & _T_2939; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80745.4]
  assign dmiProgramBufferAccessVec_25 = dmiProgramBufferWrEnMaybe_25 | dmiProgramBufferRdEn_25; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79732.4]
  assign _T_252 = _T_251 | dmiProgramBufferAccessVec_25; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79862.4]
  assign dmiProgramBufferWrEnMaybe_26 = _T_3806 & _T_2966; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80777.4]
  assign dmiProgramBufferRdEn_26 = _T_3640 & _T_2964; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80775.4]
  assign dmiProgramBufferAccessVec_26 = dmiProgramBufferWrEnMaybe_26 | dmiProgramBufferRdEn_26; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79733.4]
  assign _T_253 = _T_252 | dmiProgramBufferAccessVec_26; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79863.4]
  assign dmiProgramBufferWrEnMaybe_27 = _T_3806 & _T_2991; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80807.4]
  assign dmiProgramBufferRdEn_27 = _T_3640 & _T_2989; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80805.4]
  assign dmiProgramBufferAccessVec_27 = dmiProgramBufferWrEnMaybe_27 | dmiProgramBufferRdEn_27; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79734.4]
  assign _T_254 = _T_253 | dmiProgramBufferAccessVec_27; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79864.4]
  assign _T_255 = _T_254 | dmiProgramBufferAccessVec_28; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79865.4]
  assign dmiProgramBufferWrEnMaybe_29 = _T_3811 & _T_2941; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82244.4]
  assign dmiProgramBufferRdEn_29 = _T_3645 & _T_2939; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82242.4]
  assign dmiProgramBufferAccessVec_29 = dmiProgramBufferWrEnMaybe_29 | dmiProgramBufferRdEn_29; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79736.4]
  assign _T_256 = _T_255 | dmiProgramBufferAccessVec_29; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79866.4]
  assign dmiProgramBufferWrEnMaybe_30 = _T_3811 & _T_2966; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82274.4]
  assign dmiProgramBufferRdEn_30 = _T_3645 & _T_2964; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82272.4]
  assign dmiProgramBufferAccessVec_30 = dmiProgramBufferWrEnMaybe_30 | dmiProgramBufferRdEn_30; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79737.4]
  assign _T_257 = _T_256 | dmiProgramBufferAccessVec_30; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79867.4]
  assign dmiProgramBufferWrEnMaybe_31 = _T_3811 & _T_2991; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82304.4]
  assign dmiProgramBufferRdEn_31 = _T_3645 & _T_2989; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82302.4]
  assign dmiProgramBufferAccessVec_31 = dmiProgramBufferWrEnMaybe_31 | dmiProgramBufferRdEn_31; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79738.4]
  assign _T_258 = _T_257 | dmiProgramBufferAccessVec_31; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79868.4]
  assign _T_259 = _T_258 | dmiProgramBufferAccessVec_32; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79869.4]
  assign dmiProgramBufferWrEnMaybe_33 = _T_3816 & _T_2941; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82721.4]
  assign dmiProgramBufferRdEn_33 = _T_3650 & _T_2939; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82719.4]
  assign dmiProgramBufferAccessVec_33 = dmiProgramBufferWrEnMaybe_33 | dmiProgramBufferRdEn_33; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79740.4]
  assign _T_260 = _T_259 | dmiProgramBufferAccessVec_33; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79870.4]
  assign dmiProgramBufferWrEnMaybe_34 = _T_3816 & _T_2966; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82751.4]
  assign dmiProgramBufferRdEn_34 = _T_3650 & _T_2964; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82749.4]
  assign dmiProgramBufferAccessVec_34 = dmiProgramBufferWrEnMaybe_34 | dmiProgramBufferRdEn_34; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79741.4]
  assign _T_261 = _T_260 | dmiProgramBufferAccessVec_34; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79871.4]
  assign dmiProgramBufferWrEnMaybe_35 = _T_3816 & _T_2991; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82781.4]
  assign dmiProgramBufferRdEn_35 = _T_3650 & _T_2989; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82779.4]
  assign dmiProgramBufferAccessVec_35 = dmiProgramBufferWrEnMaybe_35 | dmiProgramBufferRdEn_35; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79742.4]
  assign _T_262 = _T_261 | dmiProgramBufferAccessVec_35; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79872.4]
  assign _T_263 = _T_262 | dmiProgramBufferAccessVec_36; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79873.4]
  assign dmiProgramBufferWrEnMaybe_37 = _T_3821 & _T_2941; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80983.4]
  assign dmiProgramBufferRdEn_37 = _T_3655 & _T_2939; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80981.4]
  assign dmiProgramBufferAccessVec_37 = dmiProgramBufferWrEnMaybe_37 | dmiProgramBufferRdEn_37; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79744.4]
  assign _T_264 = _T_263 | dmiProgramBufferAccessVec_37; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79874.4]
  assign dmiProgramBufferWrEnMaybe_38 = _T_3821 & _T_2966; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@81013.4]
  assign dmiProgramBufferRdEn_38 = _T_3655 & _T_2964; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@81011.4]
  assign dmiProgramBufferAccessVec_38 = dmiProgramBufferWrEnMaybe_38 | dmiProgramBufferRdEn_38; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79745.4]
  assign _T_265 = _T_264 | dmiProgramBufferAccessVec_38; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79875.4]
  assign dmiProgramBufferWrEnMaybe_39 = _T_3821 & _T_2991; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@81043.4]
  assign dmiProgramBufferRdEn_39 = _T_3655 & _T_2989; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@81041.4]
  assign dmiProgramBufferAccessVec_39 = dmiProgramBufferWrEnMaybe_39 | dmiProgramBufferRdEn_39; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79746.4]
  assign _T_266 = _T_265 | dmiProgramBufferAccessVec_39; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79876.4]
  assign _T_267 = _T_266 | dmiProgramBufferAccessVec_40; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79877.4]
  assign dmiProgramBufferWrEnMaybe_41 = _T_3826 & _T_2941; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80316.4]
  assign dmiProgramBufferRdEn_41 = _T_3660 & _T_2939; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80314.4]
  assign dmiProgramBufferAccessVec_41 = dmiProgramBufferWrEnMaybe_41 | dmiProgramBufferRdEn_41; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79748.4]
  assign _T_268 = _T_267 | dmiProgramBufferAccessVec_41; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79878.4]
  assign dmiProgramBufferWrEnMaybe_42 = _T_3826 & _T_2966; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80346.4]
  assign dmiProgramBufferRdEn_42 = _T_3660 & _T_2964; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80344.4]
  assign dmiProgramBufferAccessVec_42 = dmiProgramBufferWrEnMaybe_42 | dmiProgramBufferRdEn_42; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79749.4]
  assign _T_269 = _T_268 | dmiProgramBufferAccessVec_42; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79879.4]
  assign dmiProgramBufferWrEnMaybe_43 = _T_3826 & _T_2991; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80376.4]
  assign dmiProgramBufferRdEn_43 = _T_3660 & _T_2989; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80374.4]
  assign dmiProgramBufferAccessVec_43 = dmiProgramBufferWrEnMaybe_43 | dmiProgramBufferRdEn_43; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79750.4]
  assign _T_270 = _T_269 | dmiProgramBufferAccessVec_43; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79880.4]
  assign _T_271 = _T_270 | dmiProgramBufferAccessVec_44; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79881.4]
  assign dmiProgramBufferWrEnMaybe_45 = _T_3831 & _T_2941; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82603.4]
  assign dmiProgramBufferRdEn_45 = _T_3665 & _T_2939; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82601.4]
  assign dmiProgramBufferAccessVec_45 = dmiProgramBufferWrEnMaybe_45 | dmiProgramBufferRdEn_45; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79752.4]
  assign _T_272 = _T_271 | dmiProgramBufferAccessVec_45; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79882.4]
  assign dmiProgramBufferWrEnMaybe_46 = _T_3831 & _T_2966; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82633.4]
  assign dmiProgramBufferRdEn_46 = _T_3665 & _T_2964; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82631.4]
  assign dmiProgramBufferAccessVec_46 = dmiProgramBufferWrEnMaybe_46 | dmiProgramBufferRdEn_46; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79753.4]
  assign _T_273 = _T_272 | dmiProgramBufferAccessVec_46; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79883.4]
  assign dmiProgramBufferWrEnMaybe_47 = _T_3831 & _T_2991; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82663.4]
  assign dmiProgramBufferRdEn_47 = _T_3665 & _T_2989; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82661.4]
  assign dmiProgramBufferAccessVec_47 = dmiProgramBufferWrEnMaybe_47 | dmiProgramBufferRdEn_47; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79754.4]
  assign _T_274 = _T_273 | dmiProgramBufferAccessVec_47; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79884.4]
  assign _T_275 = _T_274 | dmiProgramBufferAccessVec_48; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79885.4]
  assign dmiProgramBufferWrEnMaybe_49 = _T_3836 & _T_2941; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82126.4]
  assign dmiProgramBufferRdEn_49 = _T_3670 & _T_2939; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82124.4]
  assign dmiProgramBufferAccessVec_49 = dmiProgramBufferWrEnMaybe_49 | dmiProgramBufferRdEn_49; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79756.4]
  assign _T_276 = _T_275 | dmiProgramBufferAccessVec_49; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79886.4]
  assign dmiProgramBufferWrEnMaybe_50 = _T_3836 & _T_2966; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82156.4]
  assign dmiProgramBufferRdEn_50 = _T_3670 & _T_2964; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82154.4]
  assign dmiProgramBufferAccessVec_50 = dmiProgramBufferWrEnMaybe_50 | dmiProgramBufferRdEn_50; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79757.4]
  assign _T_277 = _T_276 | dmiProgramBufferAccessVec_50; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79887.4]
  assign dmiProgramBufferWrEnMaybe_51 = _T_3836 & _T_2991; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82186.4]
  assign dmiProgramBufferRdEn_51 = _T_3670 & _T_2989; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82184.4]
  assign dmiProgramBufferAccessVec_51 = dmiProgramBufferWrEnMaybe_51 | dmiProgramBufferRdEn_51; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79758.4]
  assign _T_278 = _T_277 | dmiProgramBufferAccessVec_51; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79888.4]
  assign _T_279 = _T_278 | dmiProgramBufferAccessVec_52; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79889.4]
  assign dmiProgramBufferWrEnMaybe_53 = _T_3841 & _T_2941; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@81337.4]
  assign dmiProgramBufferRdEn_53 = _T_3675 & _T_2939; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@81335.4]
  assign dmiProgramBufferAccessVec_53 = dmiProgramBufferWrEnMaybe_53 | dmiProgramBufferRdEn_53; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79760.4]
  assign _T_280 = _T_279 | dmiProgramBufferAccessVec_53; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79890.4]
  assign dmiProgramBufferWrEnMaybe_54 = _T_3841 & _T_2966; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@81367.4]
  assign dmiProgramBufferRdEn_54 = _T_3675 & _T_2964; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@81365.4]
  assign dmiProgramBufferAccessVec_54 = dmiProgramBufferWrEnMaybe_54 | dmiProgramBufferRdEn_54; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79761.4]
  assign _T_281 = _T_280 | dmiProgramBufferAccessVec_54; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79891.4]
  assign dmiProgramBufferWrEnMaybe_55 = _T_3841 & _T_2991; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@81397.4]
  assign dmiProgramBufferRdEn_55 = _T_3675 & _T_2989; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@81395.4]
  assign dmiProgramBufferAccessVec_55 = dmiProgramBufferWrEnMaybe_55 | dmiProgramBufferRdEn_55; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79762.4]
  assign _T_282 = _T_281 | dmiProgramBufferAccessVec_55; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79892.4]
  assign _T_283 = _T_282 | dmiProgramBufferAccessVec_56; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79893.4]
  assign dmiProgramBufferWrEnMaybe_57 = _T_3846 & _T_2941; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80629.4]
  assign dmiProgramBufferRdEn_57 = _T_3680 & _T_2939; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80627.4]
  assign dmiProgramBufferAccessVec_57 = dmiProgramBufferWrEnMaybe_57 | dmiProgramBufferRdEn_57; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79764.4]
  assign _T_284 = _T_283 | dmiProgramBufferAccessVec_57; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79894.4]
  assign dmiProgramBufferWrEnMaybe_58 = _T_3846 & _T_2966; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80659.4]
  assign dmiProgramBufferRdEn_58 = _T_3680 & _T_2964; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80657.4]
  assign dmiProgramBufferAccessVec_58 = dmiProgramBufferWrEnMaybe_58 | dmiProgramBufferRdEn_58; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79765.4]
  assign _T_285 = _T_284 | dmiProgramBufferAccessVec_58; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79895.4]
  assign dmiProgramBufferWrEnMaybe_59 = _T_3846 & _T_2991; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80689.4]
  assign dmiProgramBufferRdEn_59 = _T_3680 & _T_2989; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80687.4]
  assign dmiProgramBufferAccessVec_59 = dmiProgramBufferWrEnMaybe_59 | dmiProgramBufferRdEn_59; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79766.4]
  assign _T_286 = _T_285 | dmiProgramBufferAccessVec_59; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79896.4]
  assign _T_287 = _T_286 | dmiProgramBufferAccessVec_60; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79897.4]
  assign dmiProgramBufferWrEnMaybe_61 = _T_3851 & _T_2941; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83126.4]
  assign dmiProgramBufferRdEn_61 = _T_3685 & _T_2939; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83124.4]
  assign dmiProgramBufferAccessVec_61 = dmiProgramBufferWrEnMaybe_61 | dmiProgramBufferRdEn_61; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79768.4]
  assign _T_288 = _T_287 | dmiProgramBufferAccessVec_61; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79898.4]
  assign dmiProgramBufferWrEnMaybe_62 = _T_3851 & _T_2966; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83156.4]
  assign dmiProgramBufferRdEn_62 = _T_3685 & _T_2964; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83154.4]
  assign dmiProgramBufferAccessVec_62 = dmiProgramBufferWrEnMaybe_62 | dmiProgramBufferRdEn_62; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79769.4]
  assign _T_289 = _T_288 | dmiProgramBufferAccessVec_62; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79899.4]
  assign dmiProgramBufferWrEnMaybe_63 = _T_3851 & _T_2991; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83186.4]
  assign dmiProgramBufferRdEn_63 = _T_3685 & _T_2989; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@83184.4]
  assign dmiProgramBufferAccessVec_63 = dmiProgramBufferWrEnMaybe_63 | dmiProgramBufferRdEn_63; // @[Debug.scala 1102:108:freechips.rocketchip.system.DefaultRV32Config.fir@79770.4]
  assign dmiProgramBufferAccess = _T_289 | dmiProgramBufferAccessVec_63; // @[Debug.scala 1105:69:freechips.rocketchip.system.DefaultRV32Config.fir@79900.4]
  assign _T_19690 = dmiProgramBufferAccess & _T_19675; // @[Debug.scala 1533:42:freechips.rocketchip.system.DefaultRV32Config.fir@108561.4]
  assign errorBusy = _T_19688 | _T_19690; // @[Debug.scala 1532:74:freechips.rocketchip.system.DefaultRV32Config.fir@108562.4]
  assign _T_152 = autoexecprogbufWrEnMaybe & ABSTRACTCSWrEnLegal; // @[Debug.scala 1090:38:freechips.rocketchip.system.DefaultRV32Config.fir@79610.6]
  assign ABSTRACTAUTOWrData_autoexecprogbuf = auto_dmi_in_a_bits_data[31:16]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80457.4]
  assign _T_154 = autoexecdataWrEnMaybe & ABSTRACTCSWrEnLegal; // @[Debug.scala 1093:35:freechips.rocketchip.system.DefaultRV32Config.fir@79615.6]
  assign _T_640 = auto_dmi_in_a_bits_data[0]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80407.4]
  assign ABSTRACTAUTOWrData_autoexecdata = {{11'd0}, _T_640}; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@79585.4 :freechips.rocketchip.system.DefaultRV32Config.fir@79587.4 Debug.scala 272:12:freechips.rocketchip.system.DefaultRV32Config.fir@80409.4]
  assign _T_155 = ABSTRACTAUTOWrData_autoexecdata & 12'h1; // @[Debug.scala 1094:73:freechips.rocketchip.system.DefaultRV32Config.fir@79617.8]
  assign COMMANDWrData_control = COMMANDWrDataVal[23:0]; // @[Debug.scala 1121:73:freechips.rocketchip.system.DefaultRV32Config.fir@80027.4]
  assign hartHaltedId = auto_tl_in_a_bits_data[9:0]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@87768.4]
  assign _T_366 = hartHaltedId == 10'h0; // @[Debug.scala 1163:60:freechips.rocketchip.system.DefaultRV32Config.fir@80077.10]
  assign _GEN_66 = _T_366 | haltedBitRegs_0; // @[Debug.scala 1163:77:freechips.rocketchip.system.DefaultRV32Config.fir@80078.10]
  assign _T_8852 = _T_8785[66]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@90452.4]
  assign _T_17328 = _T_16996 & _T_8852; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@104159.4]
  assign _T_17329 = _T_17328 & _T_4261; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@104160.4]
  assign hartResumingWrEn = _T_17329 & _T_7315; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@88220.4]
  assign _T_8850 = _T_8785[64]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@90450.4]
  assign _T_17318 = _T_16996 & _T_8850; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@104143.4]
  assign _T_17319 = _T_17318 & _T_4261; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@104144.4]
  assign hartHaltedWrEn = _T_17319 & _T_7315; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@87767.4]
  assign _GEN_71 = reset ? 1'h0 : resumeReqRegs_0; // @[Debug.scala 1159:38:freechips.rocketchip.system.DefaultRV32Config.fir@80071.6]
  assign _GEN_72 = _T_366 ? 1'h0 : _GEN_71; // @[Debug.scala 1177:79:freechips.rocketchip.system.DefaultRV32Config.fir@80091.8]
  assign _GEN_73 = hartResumingWrEn ? _GEN_72 : _GEN_71; // @[Debug.scala 1176:33:freechips.rocketchip.system.DefaultRV32Config.fir@80089.6]
  assign _T_369 = resumereq & hamaskWrSel_0; // @[Debug.scala 1181:25:freechips.rocketchip.system.DefaultRV32Config.fir@80095.6]
  assign _GEN_74 = _T_369 | _GEN_73; // @[Debug.scala 1181:52:freechips.rocketchip.system.DefaultRV32Config.fir@80096.6]
  assign _T_442 = {auto_dmi_in_a_bits_source,auto_dmi_in_a_bits_size}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@80181.4]
  assign _T_542 = auto_dmi_in_a_bits_data[7:0]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80290.4]
  assign _T_565 = auto_dmi_in_a_bits_data[15:8]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80318.4]
  assign _T_590 = auto_dmi_in_a_bits_data[23:16]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80348.4]
  assign _T_615 = auto_dmi_in_a_bits_data[31:24]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80378.4]
  assign _T_625 = {programBufferMem_43,programBufferMem_42,programBufferMem_41,programBufferMem_40}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@80392.4]
  assign _T_673 = {1'h0,_T_292}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@80442.4]
  assign _T_674 = {{14'd0}, _T_673}; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@80443.4]
  assign _T_698 = {ABSTRACTAUTOReg_autoexecprogbuf,_T_674}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@80469.4]
  assign _T_796 = {programBufferMem_23,programBufferMem_22,programBufferMem_21,programBufferMem_20}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@80587.4]
  assign _T_894 = {programBufferMem_59,programBufferMem_58,programBufferMem_57,programBufferMem_56}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@80705.4]
  assign _T_992 = {programBufferMem_27,programBufferMem_26,programBufferMem_25,programBufferMem_24}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@80823.4]
  assign _T_1090 = {programBufferMem_7,programBufferMem_6,programBufferMem_5,programBufferMem_4}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@80941.4]
  assign _T_1188 = {programBufferMem_39,programBufferMem_38,programBufferMem_37,programBufferMem_36}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@81059.4]
  assign _T_1286 = {programBufferMem_3,programBufferMem_2,programBufferMem_1,programBufferMem_0}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@81177.4]
  assign _T_1384 = {programBufferMem_11,programBufferMem_10,programBufferMem_9,programBufferMem_8}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@81295.4]
  assign _T_1482 = {programBufferMem_55,programBufferMem_54,programBufferMem_53,programBufferMem_52}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@81413.4]
  assign _T_1853 = {DMSTATUSRdData_anyresumeack,1'h0,1'h0,1'h0,1'h0,_T_16,_T_16,haltedBitRegs_0,haltedBitRegs_0,8'ha2}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@81784.4]
  assign _T_1953 = {1'h0,haveResetBitRegs_0,haveResetBitRegs_0,DMSTATUSRdData_anyresumeack,_T_1853}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@81884.4]
  assign _T_1954 = {{1'd0}, _T_1953}; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@81885.4]
  assign _T_1978 = {1'h0,_T_1954}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@81909.4]
  assign abstractCommandBusy = ctrlStateReg != 2'h0; // @[Debug.scala 1520:42:freechips.rocketchip.system.DefaultRV32Config.fir@108534.4]
  assign _T_2126 = {1'h0,abstractCommandBusy,1'h0,ABSTRACTCSReg_cmderr,8'h1}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@82059.4]
  assign _T_2127 = {{10'd0}, _T_2126}; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@82060.4]
  assign _T_2151 = {5'h10,_T_2127}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@82084.4]
  assign _T_2249 = {programBufferMem_51,programBufferMem_50,programBufferMem_49,programBufferMem_48}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@82202.4]
  assign _T_2347 = {programBufferMem_31,programBufferMem_30,programBufferMem_29,programBufferMem_28}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@82320.4]
  assign _T_2445 = {programBufferMem_15,programBufferMem_14,programBufferMem_13,programBufferMem_12}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@82438.4]
  assign _T_2666 = {programBufferMem_47,programBufferMem_46,programBufferMem_45,programBufferMem_44}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@82679.4]
  assign _T_2764 = {programBufferMem_35,programBufferMem_34,programBufferMem_33,programBufferMem_32}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@82797.4]
  assign _T_2885 = {programBufferMem_19,programBufferMem_18,programBufferMem_17,programBufferMem_16}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@82943.4]
  assign _T_3006 = {abstractDataMem_3,abstractDataMem_2,abstractDataMem_1,abstractDataMem_0}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@83084.4]
  assign _T_3104 = {programBufferMem_63,programBufferMem_62,programBufferMem_61,programBufferMem_60}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@83202.4]
  assign _GEN_275 = 5'h1 == _T_3117 ? _T_450 : _T_468; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  assign _GEN_276 = 5'h2 == _T_3117 ? _T_450 : _GEN_275; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  assign _GEN_277 = 5'h3 == _T_3117 ? _T_450 : _GEN_276; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  assign _GEN_278 = 5'h4 == _T_3117 ? _T_494 : _GEN_277; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  assign _GEN_2732 = 5'h5 == _T_3117; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  assign _GEN_279 = _GEN_2732 | _GEN_278; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  assign _GEN_280 = 5'h6 == _T_3117 ? _T_450 : _GEN_279; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  assign _GEN_281 = 5'h7 == _T_3117 ? _T_450 : _GEN_280; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  assign _GEN_282 = 5'h8 == _T_3117 ? _T_450 : _GEN_281; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  assign _GEN_2733 = 5'h9 == _T_3117; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  assign _GEN_283 = _GEN_2733 | _GEN_282; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  assign _GEN_2734 = 5'ha == _T_3117; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  assign _GEN_284 = _GEN_2734 | _GEN_283; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  assign _GEN_2735 = 5'hb == _T_3117; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  assign _GEN_285 = _GEN_2735 | _GEN_284; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  assign _GEN_2736 = 5'hc == _T_3117; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  assign _GEN_286 = _GEN_2736 | _GEN_285; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  assign _GEN_2737 = 5'hd == _T_3117; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  assign _GEN_287 = _GEN_2737 | _GEN_286; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  assign _GEN_2738 = 5'he == _T_3117; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  assign _GEN_288 = _GEN_2738 | _GEN_287; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  assign _GEN_2739 = 5'hf == _T_3117; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  assign _GEN_289 = _GEN_2739 | _GEN_288; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  assign _GEN_290 = 5'h10 == _T_3117 ? _T_494 : _GEN_289; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  assign _GEN_291 = 5'h11 == _T_3117 ? _T_494 : _GEN_290; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  assign _GEN_292 = 5'h12 == _T_3117 ? _T_494 : _GEN_291; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  assign _GEN_293 = 5'h13 == _T_3117 ? _T_494 : _GEN_292; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  assign _GEN_294 = 5'h14 == _T_3117 ? _T_494 : _GEN_293; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  assign _GEN_295 = 5'h15 == _T_3117 ? _T_494 : _GEN_294; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  assign _GEN_296 = 5'h16 == _T_3117 ? _T_494 : _GEN_295; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  assign _GEN_297 = 5'h17 == _T_3117 ? _T_494 : _GEN_296; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  assign _GEN_298 = 5'h18 == _T_3117 ? _T_494 : _GEN_297; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  assign _GEN_299 = 5'h19 == _T_3117 ? _T_494 : _GEN_298; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  assign _GEN_300 = 5'h1a == _T_3117 ? _T_494 : _GEN_299; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  assign _GEN_301 = 5'h1b == _T_3117 ? _T_494 : _GEN_300; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  assign _GEN_302 = 5'h1c == _T_3117 ? _T_494 : _GEN_301; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  assign _GEN_303 = 5'h1d == _T_3117 ? _T_494 : _GEN_302; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  assign _GEN_304 = 5'h1e == _T_3117 ? _T_494 : _GEN_303; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  assign _GEN_305 = 5'h1f == _T_3117 ? _T_494 : _GEN_304; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84809.4]
  assign _T_3867_1 = {{9'd0}, _T_1978}; // @[MuxLiteral.scala 48:48:freechips.rocketchip.system.DefaultRV32Config.fir@84811.4 MuxLiteral.scala 48:48:freechips.rocketchip.system.DefaultRV32Config.fir@84814.4]
  assign _GEN_307 = 5'h1 == _T_3117 ? _T_3867_1 : haltedStatus_0; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84845.4]
  assign _GEN_308 = 5'h2 == _T_3117 ? 32'h111380 : _GEN_307; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84845.4]
  assign _GEN_309 = 5'h3 == _T_3117 ? HALTSUM1RdData_haltsum1 : _GEN_308; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84845.4]
  assign _GEN_310 = 5'h4 == _T_3117 ? _T_3006 : _GEN_309; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84845.4]
  assign _GEN_311 = 5'h5 == _T_3117 ? 32'h0 : _GEN_310; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84845.4]
  assign _T_3867_6 = {{3'd0}, _T_2151}; // @[MuxLiteral.scala 48:48:freechips.rocketchip.system.DefaultRV32Config.fir@84811.4 MuxLiteral.scala 48:48:freechips.rocketchip.system.DefaultRV32Config.fir@84819.4]
  assign _GEN_312 = 5'h6 == _T_3117 ? _T_3867_6 : _GEN_311; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84845.4]
  assign _GEN_313 = 5'h7 == _T_3117 ? _T_4104 : _GEN_312; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84845.4]
  assign _GEN_314 = 5'h8 == _T_3117 ? _T_698 : _GEN_313; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84845.4]
  assign _GEN_315 = 5'h9 == _T_3117 ? 32'h0 : _GEN_314; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84845.4]
  assign _GEN_316 = 5'ha == _T_3117 ? 32'h0 : _GEN_315; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84845.4]
  assign _GEN_317 = 5'hb == _T_3117 ? 32'h0 : _GEN_316; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84845.4]
  assign _GEN_318 = 5'hc == _T_3117 ? 32'h0 : _GEN_317; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84845.4]
  assign _GEN_319 = 5'hd == _T_3117 ? 32'h0 : _GEN_318; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84845.4]
  assign _GEN_320 = 5'he == _T_3117 ? 32'h0 : _GEN_319; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84845.4]
  assign _GEN_321 = 5'hf == _T_3117 ? 32'h0 : _GEN_320; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84845.4]
  assign _GEN_322 = 5'h10 == _T_3117 ? _T_1286 : _GEN_321; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84845.4]
  assign _GEN_323 = 5'h11 == _T_3117 ? _T_1090 : _GEN_322; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84845.4]
  assign _GEN_324 = 5'h12 == _T_3117 ? _T_1384 : _GEN_323; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84845.4]
  assign _GEN_325 = 5'h13 == _T_3117 ? _T_2445 : _GEN_324; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84845.4]
  assign _GEN_326 = 5'h14 == _T_3117 ? _T_2885 : _GEN_325; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84845.4]
  assign _GEN_327 = 5'h15 == _T_3117 ? _T_796 : _GEN_326; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84845.4]
  assign _GEN_328 = 5'h16 == _T_3117 ? _T_992 : _GEN_327; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84845.4]
  assign _GEN_329 = 5'h17 == _T_3117 ? _T_2347 : _GEN_328; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84845.4]
  assign _GEN_330 = 5'h18 == _T_3117 ? _T_2764 : _GEN_329; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84845.4]
  assign _GEN_331 = 5'h19 == _T_3117 ? _T_1188 : _GEN_330; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84845.4]
  assign _GEN_332 = 5'h1a == _T_3117 ? _T_625 : _GEN_331; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84845.4]
  assign _GEN_333 = 5'h1b == _T_3117 ? _T_2666 : _GEN_332; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84845.4]
  assign _GEN_334 = 5'h1c == _T_3117 ? _T_2249 : _GEN_333; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84845.4]
  assign _GEN_335 = 5'h1d == _T_3117 ? _T_1482 : _GEN_334; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84845.4]
  assign _GEN_336 = 5'h1e == _T_3117 ? _T_894 : _GEN_335; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84845.4]
  assign _GEN_337 = 5'h1f == _T_3117 ? _T_3104 : _GEN_336; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@84845.4]
  assign _T_3878 = dmiAbstractDataWrEnMaybe_0 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1303:60:freechips.rocketchip.system.DefaultRV32Config.fir@84879.4]
  assign _T_3880 = dmiAbstractDataWrEnMaybe_1 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1303:60:freechips.rocketchip.system.DefaultRV32Config.fir@84884.4]
  assign _T_3882 = dmiAbstractDataWrEnMaybe_2 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1303:60:freechips.rocketchip.system.DefaultRV32Config.fir@84889.4]
  assign _T_3884 = dmiAbstractDataWrEnMaybe_3 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1303:60:freechips.rocketchip.system.DefaultRV32Config.fir@84894.4]
  assign _T_3886 = dmiProgramBufferWrEnMaybe_0 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@84899.4]
  assign _T_3888 = dmiProgramBufferWrEnMaybe_1 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@84904.4]
  assign _T_3890 = dmiProgramBufferWrEnMaybe_2 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@84909.4]
  assign _T_3892 = dmiProgramBufferWrEnMaybe_3 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@84914.4]
  assign _T_3894 = dmiProgramBufferWrEnMaybe_4 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@84919.4]
  assign _T_3896 = dmiProgramBufferWrEnMaybe_5 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@84924.4]
  assign _T_3898 = dmiProgramBufferWrEnMaybe_6 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@84929.4]
  assign _T_3900 = dmiProgramBufferWrEnMaybe_7 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@84934.4]
  assign _T_3902 = dmiProgramBufferWrEnMaybe_8 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@84939.4]
  assign _T_3904 = dmiProgramBufferWrEnMaybe_9 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@84944.4]
  assign _T_3906 = dmiProgramBufferWrEnMaybe_10 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@84949.4]
  assign _T_3908 = dmiProgramBufferWrEnMaybe_11 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@84954.4]
  assign _T_3910 = dmiProgramBufferWrEnMaybe_12 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@84959.4]
  assign _T_3912 = dmiProgramBufferWrEnMaybe_13 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@84964.4]
  assign _T_3914 = dmiProgramBufferWrEnMaybe_14 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@84969.4]
  assign _T_3916 = dmiProgramBufferWrEnMaybe_15 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@84974.4]
  assign _T_3918 = dmiProgramBufferWrEnMaybe_16 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@84979.4]
  assign _T_3920 = dmiProgramBufferWrEnMaybe_17 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@84984.4]
  assign _T_3922 = dmiProgramBufferWrEnMaybe_18 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@84989.4]
  assign _T_3924 = dmiProgramBufferWrEnMaybe_19 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@84994.4]
  assign _T_3926 = dmiProgramBufferWrEnMaybe_20 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@84999.4]
  assign _T_3928 = dmiProgramBufferWrEnMaybe_21 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85004.4]
  assign _T_3930 = dmiProgramBufferWrEnMaybe_22 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85009.4]
  assign _T_3932 = dmiProgramBufferWrEnMaybe_23 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85014.4]
  assign _T_3934 = dmiProgramBufferWrEnMaybe_24 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85019.4]
  assign _T_3936 = dmiProgramBufferWrEnMaybe_25 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85024.4]
  assign _T_3938 = dmiProgramBufferWrEnMaybe_26 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85029.4]
  assign _T_3940 = dmiProgramBufferWrEnMaybe_27 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85034.4]
  assign _T_3942 = dmiProgramBufferWrEnMaybe_28 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85039.4]
  assign _T_3944 = dmiProgramBufferWrEnMaybe_29 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85044.4]
  assign _T_3946 = dmiProgramBufferWrEnMaybe_30 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85049.4]
  assign _T_3948 = dmiProgramBufferWrEnMaybe_31 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85054.4]
  assign _T_3950 = dmiProgramBufferWrEnMaybe_32 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85059.4]
  assign _T_3952 = dmiProgramBufferWrEnMaybe_33 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85064.4]
  assign _T_3954 = dmiProgramBufferWrEnMaybe_34 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85069.4]
  assign _T_3956 = dmiProgramBufferWrEnMaybe_35 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85074.4]
  assign _T_3958 = dmiProgramBufferWrEnMaybe_36 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85079.4]
  assign _T_3960 = dmiProgramBufferWrEnMaybe_37 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85084.4]
  assign _T_3962 = dmiProgramBufferWrEnMaybe_38 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85089.4]
  assign _T_3964 = dmiProgramBufferWrEnMaybe_39 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85094.4]
  assign _T_3966 = dmiProgramBufferWrEnMaybe_40 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85099.4]
  assign _T_3968 = dmiProgramBufferWrEnMaybe_41 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85104.4]
  assign _T_3970 = dmiProgramBufferWrEnMaybe_42 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85109.4]
  assign _T_3972 = dmiProgramBufferWrEnMaybe_43 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85114.4]
  assign _T_3974 = dmiProgramBufferWrEnMaybe_44 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85119.4]
  assign _T_3976 = dmiProgramBufferWrEnMaybe_45 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85124.4]
  assign _T_3978 = dmiProgramBufferWrEnMaybe_46 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85129.4]
  assign _T_3980 = dmiProgramBufferWrEnMaybe_47 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85134.4]
  assign _T_3982 = dmiProgramBufferWrEnMaybe_48 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85139.4]
  assign _T_3984 = dmiProgramBufferWrEnMaybe_49 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85144.4]
  assign _T_3986 = dmiProgramBufferWrEnMaybe_50 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85149.4]
  assign _T_3988 = dmiProgramBufferWrEnMaybe_51 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85154.4]
  assign _T_3990 = dmiProgramBufferWrEnMaybe_52 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85159.4]
  assign _T_3992 = dmiProgramBufferWrEnMaybe_53 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85164.4]
  assign _T_3994 = dmiProgramBufferWrEnMaybe_54 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85169.4]
  assign _T_3996 = dmiProgramBufferWrEnMaybe_55 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85174.4]
  assign _T_3998 = dmiProgramBufferWrEnMaybe_56 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85179.4]
  assign _T_4000 = dmiProgramBufferWrEnMaybe_57 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85184.4]
  assign _T_4002 = dmiProgramBufferWrEnMaybe_58 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85189.4]
  assign _T_4004 = dmiProgramBufferWrEnMaybe_59 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85194.4]
  assign _T_4006 = dmiProgramBufferWrEnMaybe_60 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85199.4]
  assign _T_4008 = dmiProgramBufferWrEnMaybe_61 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85204.4]
  assign _T_4010 = dmiProgramBufferWrEnMaybe_62 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85209.4]
  assign _T_4012 = dmiProgramBufferWrEnMaybe_63 & ABSTRACTCSWrEnLegal; // @[Debug.scala 1325:61:freechips.rocketchip.system.DefaultRV32Config.fir@85214.4]
  assign _T_4073 = _T_366 | reset; // @[Debug.scala 1346:15:freechips.rocketchip.system.DefaultRV32Config.fir@85336.10]
  assign _T_4074 = _T_4073 == 1'h0; // @[Debug.scala 1346:15:freechips.rocketchip.system.DefaultRV32Config.fir@85337.10]
  assign _T_8851 = _T_8785[65]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@90451.4]
  assign _T_17323 = _T_16996 & _T_8851; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@104151.4]
  assign _T_17324 = _T_17323 & _T_4261; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@104152.4]
  assign hartGoingWrEn = _T_17324 & _T_7315; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@86886.4]
  assign _GEN_406 = hartGoingWrEn ? 1'h0 : goReg; // @[Debug.scala 1345:33:freechips.rocketchip.system.DefaultRV32Config.fir@85333.8]
  assign _GEN_2705 = commandRegBadHaltResume ? 1'h0 : 1'h1; // @[Debug.scala 1586:43:freechips.rocketchip.system.DefaultRV32Config.fir@108623.10]
  assign _GEN_2709 = commandRegIsUnsupported ? 1'h0 : _GEN_2705; // @[Debug.scala 1583:38:freechips.rocketchip.system.DefaultRV32Config.fir@108618.8]
  assign _GEN_2722 = _T_19708 & _GEN_2709; // @[Debug.scala 1576:59:freechips.rocketchip.system.DefaultRV32Config.fir@108617.6]
  assign goAbstract = ABSTRACTCSWrEnLegal ? 1'h0 : _GEN_2722; // @[Debug.scala 1568:47:freechips.rocketchip.system.DefaultRV32Config.fir@108600.4]
  assign _GEN_407 = goAbstract | _GEN_406; // @[Debug.scala 1343:25:freechips.rocketchip.system.DefaultRV32Config.fir@85329.6]
  assign accessRegisterCommandReg_postexec = _T_4104[18]; // @[Debug.scala 1372:86:freechips.rocketchip.system.DefaultRV32Config.fir@85426.4]
  assign accessRegisterCommandReg_size = _T_4104[22:20]; // @[Debug.scala 1372:86:freechips.rocketchip.system.DefaultRV32Config.fir@85430.4]
  assign _T_4122 = accessRegisterCommandReg_regno & 16'h1f; // @[Debug.scala 1421:66:freechips.rocketchip.system.DefaultRV32Config.fir@85462.4]
  assign abstractGeneratedI_rd = _T_4122[4:0]; // @[Debug.scala 1416:34:freechips.rocketchip.system.DefaultRV32Config.fir@85440.4 Debug.scala 1421:31:freechips.rocketchip.system.DefaultRV32Config.fir@85463.4]
  assign _T_4142 = {17'h7000,accessRegisterCommandReg_size,abstractGeneratedI_rd,7'h3}; // @[Debug.scala 1442:36:freechips.rocketchip.system.DefaultRV32Config.fir@85514.6]
  assign _T_4147 = {7'h1c,abstractGeneratedI_rd,5'h0,accessRegisterCommandReg_size,5'h0,7'h23}; // @[Debug.scala 1444:36:freechips.rocketchip.system.DefaultRV32Config.fir@85519.6]
  assign _T_4171 = {auto_tl_in_a_bits_source,auto_tl_in_a_bits_size}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@85551.4]
  assign _T_4303 = _T_4302[7:0]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@85691.4]
  assign _T_4306 = _T_4303 == 8'hff; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@85694.4]
  assign _T_4315 = auto_tl_in_a_bits_data[7:0]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@85703.4]
  assign _T_4326 = _T_4302[15:8]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@85714.4]
  assign _T_4329 = _T_4326 == 8'hff; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@85717.4]
  assign _T_4338 = auto_tl_in_a_bits_data[15:8]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@85726.4]
  assign _T_4351 = _T_4302[23:16]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@85739.4]
  assign _T_4354 = _T_4351 == 8'hff; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@85742.4]
  assign _T_4363 = auto_tl_in_a_bits_data[23:16]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@85751.4]
  assign _T_4376 = _T_4302[31:24]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@85764.4]
  assign _T_4379 = _T_4376 == 8'hff; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@85767.4]
  assign _T_4388 = auto_tl_in_a_bits_data[31:24]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@85776.4]
  assign _T_8490 = _T_8785[217]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@90090.4]
  assign _T_12952 = _T_16996 & _T_8490; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96730.4]
  assign _T_12953 = _T_12952 & _T_4261; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96731.4]
  assign _T_4509 = _T_12953 & _T_4306; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@85897.4]
  assign _T_4532 = _T_12953 & _T_4329; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@85923.4]
  assign _T_4557 = _T_12953 & _T_4354; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@85951.4]
  assign _T_4582 = _T_12953 & _T_4379; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@85979.4]
  assign _T_8489 = _T_8785[216]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@90089.4]
  assign _T_12947 = _T_16996 & _T_8489; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96719.4]
  assign _T_12948 = _T_12947 & _T_4261; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96720.4]
  assign _T_4607 = _T_12948 & _T_4306; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@86007.4]
  assign _T_4630 = _T_12948 & _T_4329; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@86033.4]
  assign _T_4655 = _T_12948 & _T_4354; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@86061.4]
  assign _T_4680 = _T_12948 & _T_4379; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@86089.4]
  assign _T_8484 = _T_8785[211]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@90084.4]
  assign _T_12922 = _T_16996 & _T_8484; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96664.4]
  assign _T_12923 = _T_12922 & _T_4261; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96665.4]
  assign _T_4705 = _T_12923 & _T_4306; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@86117.4]
  assign _T_4728 = _T_12923 & _T_4329; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@86143.4]
  assign _T_4753 = _T_12923 & _T_4354; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@86171.4]
  assign _T_4778 = _T_12923 & _T_4379; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@86199.4]
  assign _T_8494 = _T_8785[221]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@90094.4]
  assign _T_12972 = _T_16996 & _T_8494; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96774.4]
  assign _T_12973 = _T_12972 & _T_4261; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96775.4]
  assign _T_4901 = _T_12973 & _T_4306; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@86325.4]
  assign _T_4924 = _T_12973 & _T_4329; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@86351.4]
  assign _T_4949 = _T_12973 & _T_4354; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@86379.4]
  assign _T_4974 = _T_12973 & _T_4379; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@86407.4]
  assign _T_8493 = _T_8785[220]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@90093.4]
  assign _T_12967 = _T_16996 & _T_8493; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96763.4]
  assign _T_12968 = _T_12967 & _T_4261; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96764.4]
  assign _T_5316 = _T_12968 & _T_4306; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@86752.4]
  assign _T_5339 = _T_12968 & _T_4329; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@86778.4]
  assign _T_5364 = _T_12968 & _T_4354; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@86806.4]
  assign _T_5389 = _T_12968 & _T_4379; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@86834.4]
  assign _T_8497 = _T_8785[224]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@90097.4]
  assign _T_12987 = _T_16996 & _T_8497; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96807.4]
  assign _T_12988 = _T_12987 & _T_4261; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96808.4]
  assign _T_5558 = _T_12988 & _T_4306; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@87008.4]
  assign _T_5581 = _T_12988 & _T_4329; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@87034.4]
  assign _T_5606 = _T_12988 & _T_4354; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@87062.4]
  assign _T_5631 = _T_12988 & _T_4379; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@87090.4]
  assign _T_5789 = {8'h0,6'h0,resumeReqRegs_0,goReg}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@87251.4]
  assign _T_8485 = _T_8785[212]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@90085.4]
  assign _T_12927 = _T_16996 & _T_8485; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96675.4]
  assign _T_12928 = _T_12927 & _T_4261; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96676.4]
  assign _T_5900 = _T_12928 & _T_4306; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@87362.4]
  assign _T_5923 = _T_12928 & _T_4329; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@87388.4]
  assign _T_5948 = _T_12928 & _T_4354; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@87416.4]
  assign _T_5973 = _T_12928 & _T_4379; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@87444.4]
  assign _T_8492 = _T_8785[219]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@90092.4]
  assign _T_12962 = _T_16996 & _T_8492; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96752.4]
  assign _T_12963 = _T_12962 & _T_4261; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96753.4]
  assign _T_6315 = _T_12963 & _T_4306; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@87791.4]
  assign _T_6338 = _T_12963 & _T_4329; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@87817.4]
  assign _T_6363 = _T_12963 & _T_4354; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@87845.4]
  assign _T_6388 = _T_12963 & _T_4379; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@87873.4]
  assign _T_8481 = _T_8785[208]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@90081.4]
  assign _T_12907 = _T_16996 & _T_8481; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96631.4]
  assign _T_12908 = _T_12907 & _T_4261; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96632.4]
  assign _T_6413 = _T_12908 & _T_4306; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@87901.4]
  assign _T_6436 = _T_12908 & _T_4329; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@87927.4]
  assign _T_6461 = _T_12908 & _T_4354; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@87955.4]
  assign _T_6486 = _T_12908 & _T_4379; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@87983.4]
  assign _T_8486 = _T_8785[213]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@90086.4]
  assign _T_12932 = _T_16996 & _T_8486; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96686.4]
  assign _T_12933 = _T_12932 & _T_4261; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96687.4]
  assign _T_6511 = _T_12933 & _T_4306; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@88011.4]
  assign _T_6534 = _T_12933 & _T_4329; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@88037.4]
  assign _T_6559 = _T_12933 & _T_4354; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@88065.4]
  assign _T_6584 = _T_12933 & _T_4379; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@88093.4]
  assign _T_8496 = _T_8785[223]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@90096.4]
  assign _T_12982 = _T_16996 & _T_8496; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96796.4]
  assign _T_12983 = _T_12982 & _T_4261; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96797.4]
  assign _T_6828 = _T_12983 & _T_4306; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@88342.4]
  assign _T_6851 = _T_12983 & _T_4329; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@88368.4]
  assign _T_6876 = _T_12983 & _T_4354; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@88396.4]
  assign _T_6901 = _T_12983 & _T_4379; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@88424.4]
  assign _T_8482 = _T_8785[209]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@90082.4]
  assign _T_12912 = _T_16996 & _T_8482; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96642.4]
  assign _T_12913 = _T_12912 & _T_4261; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96643.4]
  assign _T_7024 = _T_12913 & _T_4306; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@88550.4]
  assign _T_7047 = _T_12913 & _T_4329; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@88576.4]
  assign _T_7072 = _T_12913 & _T_4354; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@88604.4]
  assign _T_7097 = _T_12913 & _T_4379; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@88632.4]
  assign _T_8491 = _T_8785[218]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@90091.4]
  assign _T_12957 = _T_16996 & _T_8491; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96741.4]
  assign _T_12958 = _T_12957 & _T_4261; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96742.4]
  assign _T_7439 = _T_12958 & _T_4306; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@88979.4]
  assign _T_7462 = _T_12958 & _T_4329; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@89005.4]
  assign _T_7487 = _T_12958 & _T_4354; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@89033.4]
  assign _T_7512 = _T_12958 & _T_4379; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@89061.4]
  assign _T_8487 = _T_8785[214]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@90087.4]
  assign _T_12937 = _T_16996 & _T_8487; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96697.4]
  assign _T_12938 = _T_12937 & _T_4261; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96698.4]
  assign _T_7658 = _T_12938 & _T_4306; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@89210.4]
  assign _T_7681 = _T_12938 & _T_4329; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@89236.4]
  assign _T_7706 = _T_12938 & _T_4354; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@89264.4]
  assign _T_7731 = _T_12938 & _T_4379; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@89292.4]
  assign _T_8483 = _T_8785[210]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@90083.4]
  assign _T_12917 = _T_16996 & _T_8483; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96653.4]
  assign _T_12918 = _T_12917 & _T_4261; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96654.4]
  assign _T_7756 = _T_12918 & _T_4306; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@89320.4]
  assign _T_7779 = _T_12918 & _T_4329; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@89346.4]
  assign _T_7804 = _T_12918 & _T_4354; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@89374.4]
  assign _T_7829 = _T_12918 & _T_4379; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@89402.4]
  assign _T_8488 = _T_8785[215]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@90088.4]
  assign _T_12942 = _T_16996 & _T_8488; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96708.4]
  assign _T_12943 = _T_12942 & _T_4261; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96709.4]
  assign _T_8050 = _T_12943 & _T_4306; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@89626.4]
  assign _T_8073 = _T_12943 & _T_4329; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@89652.4]
  assign _T_8098 = _T_12943 & _T_4354; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@89680.4]
  assign _T_8123 = _T_12943 & _T_4379; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@89708.4]
  assign _T_8495 = _T_8785[222]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@90095.4]
  assign _T_12977 = _T_16996 & _T_8495; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96785.4]
  assign _T_12978 = _T_12977 & _T_4261; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@96786.4]
  assign _T_8148 = _T_12978 & _T_4306; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@89736.4]
  assign _T_8171 = _T_12978 & _T_4329; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@89762.4]
  assign _T_8196 = _T_12978 & _T_4354; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@89790.4]
  assign _T_8221 = _T_12978 & _T_4379; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@89818.4]
  assign _T_19567 = 9'h0 == _T_8253; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@107966.4]
  assign _T_19568 = 9'h40 == _T_8253; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@107971.6]
  assign _T_19569 = 9'h41 == _T_8253; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@107976.8]
  assign _T_19570 = 9'h42 == _T_8253; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@107981.10]
  assign _T_19571 = 9'h43 == _T_8253; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@107986.12]
  assign _T_19572 = 9'hc0 == _T_8253; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@107991.14]
  assign _T_19573 = 9'hce == _T_8253; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@107996.16]
  assign _T_19574 = 9'hcf == _T_8253; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108001.18]
  assign _T_19575 = 9'hd0 == _T_8253; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108006.20]
  assign _T_19576 = 9'hd1 == _T_8253; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108011.22]
  assign _T_19577 = 9'hd2 == _T_8253; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108016.24]
  assign _T_19578 = 9'hd3 == _T_8253; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108021.26]
  assign _T_19579 = 9'hd4 == _T_8253; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108026.28]
  assign _T_19580 = 9'hd5 == _T_8253; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108031.30]
  assign _T_19581 = 9'hd6 == _T_8253; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108036.32]
  assign _T_19582 = 9'hd7 == _T_8253; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108041.34]
  assign _T_19583 = 9'hd8 == _T_8253; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108046.36]
  assign _T_19584 = 9'hd9 == _T_8253; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108051.38]
  assign _T_19585 = 9'hda == _T_8253; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108056.40]
  assign _T_19586 = 9'hdb == _T_8253; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108061.42]
  assign _T_19587 = 9'hdc == _T_8253; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108066.44]
  assign _T_19588 = 9'hdd == _T_8253; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108071.46]
  assign _T_19589 = 9'hde == _T_8253; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108076.48]
  assign _T_19590 = 9'hdf == _T_8253; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108081.50]
  assign _T_19591 = 9'he0 == _T_8253; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108086.52]
  assign _T_19592 = 9'h100 == _T_8253; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108091.54]
  assign _T_19593 = 9'h101 == _T_8253; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108096.56]
  assign _T_19594 = 9'h102 == _T_8253; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108101.58]
  assign _T_19595 = 9'h103 == _T_8253; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108106.60]
  assign _T_19596 = 9'h104 == _T_8253; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108111.62]
  assign _T_19597 = 9'h105 == _T_8253; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108116.64]
  assign _T_19598 = 9'h106 == _T_8253; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108121.66]
  assign _T_19599 = 9'h107 == _T_8253; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108126.68]
  assign _T_19600 = 9'h108 == _T_8253; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108131.70]
  assign _T_19601 = 9'h109 == _T_8253; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108136.72]
  assign _T_19602 = 9'h10a == _T_8253; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108141.74]
  assign _T_19603 = 9'h10b == _T_8253; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108146.76]
  assign _T_19604 = 9'h10c == _T_8253; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108151.78]
  assign _T_19605 = 9'h10d == _T_8253; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108156.80]
  assign _T_19606 = 9'h10e == _T_8253; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108161.82]
  assign _T_19607 = 9'h10f == _T_8253; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108166.84]
  assign _T_19608 = 9'h110 == _T_8253; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108171.86]
  assign _T_19609 = 9'h111 == _T_8253; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108176.88]
  assign _T_19610 = 9'h112 == _T_8253; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108181.90]
  assign _T_19611 = 9'h113 == _T_8253; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108186.92]
  assign _T_19612 = 9'h114 == _T_8253; // @[Conditional.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@108191.94]
  assign _GEN_2531 = _T_19612 ? _T_4261 : 1'h1; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108192.94]
  assign _GEN_2532 = _T_19611 ? _T_4261 : _GEN_2531; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108187.92]
  assign _GEN_2533 = _T_19610 ? _T_4261 : _GEN_2532; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108182.90]
  assign _GEN_2534 = _T_19609 ? _T_4261 : _GEN_2533; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108177.88]
  assign _GEN_2535 = _T_19608 ? _T_4261 : _GEN_2534; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108172.86]
  assign _GEN_2536 = _T_19607 ? _T_4261 : _GEN_2535; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108167.84]
  assign _GEN_2537 = _T_19606 ? _T_4261 : _GEN_2536; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108162.82]
  assign _GEN_2538 = _T_19605 ? _T_4261 : _GEN_2537; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108157.80]
  assign _GEN_2539 = _T_19604 ? _T_4261 : _GEN_2538; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108152.78]
  assign _GEN_2540 = _T_19603 ? _T_4261 : _GEN_2539; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108147.76]
  assign _GEN_2541 = _T_19602 ? _T_4261 : _GEN_2540; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108142.74]
  assign _GEN_2542 = _T_19601 ? _T_4261 : _GEN_2541; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108137.72]
  assign _GEN_2543 = _T_19600 ? _T_4261 : _GEN_2542; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108132.70]
  assign _GEN_2544 = _T_19599 ? _T_4261 : _GEN_2543; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108127.68]
  assign _GEN_2545 = _T_19598 ? _T_4261 : _GEN_2544; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108122.66]
  assign _GEN_2546 = _T_19597 ? _T_4261 : _GEN_2545; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108117.64]
  assign _GEN_2547 = _T_19596 ? _T_4261 : _GEN_2546; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108112.62]
  assign _GEN_2548 = _T_19595 ? _T_4261 : _GEN_2547; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108107.60]
  assign _GEN_2549 = _T_19594 ? _T_4261 : _GEN_2548; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108102.58]
  assign _GEN_2550 = _T_19593 ? _T_4261 : _GEN_2549; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108097.56]
  assign _GEN_2551 = _T_19592 ? _T_4261 : _GEN_2550; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108092.54]
  assign _GEN_2552 = _T_19591 ? _T_4261 : _GEN_2551; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108087.52]
  assign _GEN_2553 = _T_19590 ? _T_4261 : _GEN_2552; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108082.50]
  assign _GEN_2554 = _T_19589 ? _T_4261 : _GEN_2553; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108077.48]
  assign _GEN_2555 = _T_19588 ? _T_4261 : _GEN_2554; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108072.46]
  assign _GEN_2556 = _T_19587 ? _T_4261 : _GEN_2555; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108067.44]
  assign _GEN_2557 = _T_19586 ? _T_4261 : _GEN_2556; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108062.42]
  assign _GEN_2558 = _T_19585 ? _T_4261 : _GEN_2557; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108057.40]
  assign _GEN_2559 = _T_19584 ? _T_4261 : _GEN_2558; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108052.38]
  assign _GEN_2560 = _T_19583 ? _T_4261 : _GEN_2559; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108047.36]
  assign _GEN_2561 = _T_19582 ? _T_4261 : _GEN_2560; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108042.34]
  assign _GEN_2562 = _T_19581 ? _T_4261 : _GEN_2561; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108037.32]
  assign _GEN_2563 = _T_19580 ? _T_4261 : _GEN_2562; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108032.30]
  assign _GEN_2564 = _T_19579 ? _T_4261 : _GEN_2563; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108027.28]
  assign _GEN_2565 = _T_19578 ? _T_4261 : _GEN_2564; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108022.26]
  assign _GEN_2566 = _T_19577 ? _T_4261 : _GEN_2565; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108017.24]
  assign _GEN_2567 = _T_19576 ? _T_4261 : _GEN_2566; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108012.22]
  assign _GEN_2568 = _T_19575 ? _T_4261 : _GEN_2567; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108007.20]
  assign _GEN_2569 = _T_19574 ? _T_4261 : _GEN_2568; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108002.18]
  assign _GEN_2570 = _T_19573 ? _T_4261 : _GEN_2569; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@107997.16]
  assign _GEN_2571 = _T_19572 ? _T_4261 : _GEN_2570; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@107992.14]
  assign _GEN_2572 = _T_19571 ? _T_4261 : _GEN_2571; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@107987.12]
  assign _GEN_2573 = _T_19570 ? _T_4261 : _GEN_2572; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@107982.10]
  assign _GEN_2574 = _T_19569 ? _T_4261 : _GEN_2573; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@107977.8]
  assign _GEN_2575 = _T_19568 ? _T_4261 : _GEN_2574; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@107972.6]
  assign _GEN_2576 = _T_19567 ? _T_4211 : _GEN_2575; // @[Conditional.scala 40:58:freechips.rocketchip.system.DefaultRV32Config.fir@107967.4]
  assign _GEN_2577 = _T_19612 ? 32'h100073 : 32'h0; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108424.94]
  assign _GEN_2578 = _T_19611 ? 32'h10002623 : _GEN_2577; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108419.92]
  assign _GEN_2579 = _T_19610 ? 32'h7b200073 : _GEN_2578; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108414.90]
  assign _GEN_2580 = _T_19609 ? 32'h7b202473 : _GEN_2579; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108409.88]
  assign _GEN_2581 = _T_19608 ? 32'h10802423 : _GEN_2580; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108404.86]
  assign _GEN_2582 = _T_19607 ? 32'hf1402473 : _GEN_2581; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108399.84]
  assign _GEN_2583 = _T_19606 ? 32'h30000067 : _GEN_2582; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108394.82]
  assign _GEN_2584 = _T_19605 ? 32'h10002223 : _GEN_2583; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108389.80]
  assign _GEN_2585 = _T_19604 ? 32'h7b202473 : _GEN_2584; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108384.78]
  assign _GEN_2586 = _T_19603 ? 32'h40863 : _GEN_2585; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108379.76]
  assign _GEN_2587 = _T_19602 ? 32'h147413 : _GEN_2586; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108374.74]
  assign _GEN_2588 = _T_19601 ? 32'hfe0408e3 : _GEN_2587; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108369.72]
  assign _GEN_2589 = _T_19600 ? 32'h347413 : _GEN_2588; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108364.70]
  assign _GEN_2590 = _T_19599 ? 32'h40044403 : _GEN_2589; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108359.68]
  assign _GEN_2591 = _T_19598 ? 32'h10802023 : _GEN_2590; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108354.66]
  assign _GEN_2592 = _T_19597 ? 32'hf1402473 : _GEN_2591; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108349.64]
  assign _GEN_2593 = _T_19596 ? 32'h7b241073 : _GEN_2592; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108344.62]
  assign _GEN_2594 = _T_19595 ? 32'hff0000f : _GEN_2593; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108339.60]
  assign _GEN_2595 = _T_19594 ? 32'h440006f : _GEN_2594; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108334.58]
  assign _GEN_2596 = _T_19593 ? 32'h380006f : _GEN_2595; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108329.56]
  assign _GEN_2597 = _T_19592 ? 32'hc0006f : _GEN_2596; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108324.54]
  assign _GEN_2598 = _T_19591 ? _T_3006 : _GEN_2597; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108319.52]
  assign _GEN_2599 = _T_19590 ? _T_3104 : _GEN_2598; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108314.50]
  assign _GEN_2600 = _T_19589 ? _T_894 : _GEN_2599; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108309.48]
  assign _GEN_2601 = _T_19588 ? _T_1482 : _GEN_2600; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108304.46]
  assign _GEN_2602 = _T_19587 ? _T_2249 : _GEN_2601; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108299.44]
  assign _GEN_2603 = _T_19586 ? _T_2666 : _GEN_2602; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108294.42]
  assign _GEN_2604 = _T_19585 ? _T_625 : _GEN_2603; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108289.40]
  assign _GEN_2605 = _T_19584 ? _T_1188 : _GEN_2604; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108284.38]
  assign _GEN_2606 = _T_19583 ? _T_2764 : _GEN_2605; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108279.36]
  assign _GEN_2607 = _T_19582 ? _T_2347 : _GEN_2606; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108274.34]
  assign _GEN_2608 = _T_19581 ? _T_992 : _GEN_2607; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108269.32]
  assign _GEN_2609 = _T_19580 ? _T_796 : _GEN_2608; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108264.30]
  assign _GEN_2610 = _T_19579 ? _T_2885 : _GEN_2609; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108259.28]
  assign _GEN_2611 = _T_19578 ? _T_2445 : _GEN_2610; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108254.26]
  assign _GEN_2612 = _T_19577 ? _T_1384 : _GEN_2611; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108249.24]
  assign _GEN_2613 = _T_19576 ? _T_1090 : _GEN_2612; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108244.22]
  assign _GEN_2614 = _T_19575 ? _T_1286 : _GEN_2613; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108239.20]
  assign _GEN_2615 = _T_19574 ? abstractGeneratedMem_1 : _GEN_2614; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108234.18]
  assign _GEN_2616 = _T_19573 ? abstractGeneratedMem_0 : _GEN_2615; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108229.16]
  assign _GEN_2617 = _T_19572 ? 32'h380006f : _GEN_2616; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108224.14]
  assign _GEN_2618 = _T_19571 ? 32'h0 : _GEN_2617; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108219.12]
  assign _GEN_2619 = _T_19570 ? 32'h0 : _GEN_2618; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108214.10]
  assign _GEN_2620 = _T_19569 ? 32'h0 : _GEN_2619; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108209.8]
  assign _GEN_2621 = _T_19568 ? 32'h0 : _GEN_2620; // @[Conditional.scala 39:67:freechips.rocketchip.system.DefaultRV32Config.fir@108204.6]
  assign _GEN_2622 = _T_19567 ? {{16'd0}, _T_5789} : _GEN_2621; // @[Conditional.scala 40:58:freechips.rocketchip.system.DefaultRV32Config.fir@108199.4]
  assign _T_19710 = goReg == 1'h0; // @[Debug.scala 1602:18:freechips.rocketchip.system.DefaultRV32Config.fir@108640.10]
  assign _T_19711 = _T_19710 & hartHaltedWrEn; // @[Debug.scala 1602:30:freechips.rocketchip.system.DefaultRV32Config.fir@108641.10]
  assign _T_19713 = _T_19711 & _T_366; // @[Debug.scala 1602:48:freechips.rocketchip.system.DefaultRV32Config.fir@108643.10]
  assign _T_19718 = ctrlStateReg == 2'h3; // @[Debug.scala 1610:30:freechips.rocketchip.system.DefaultRV32Config.fir@108661.10]
  assign _T_19721 = reset == 1'h0; // @[Debug.scala 1611:13:freechips.rocketchip.system.DefaultRV32Config.fir@108665.12]
  assign _T_19726 = io_dmactive == 1'h0; // @[Debug.scala 1624:14:freechips.rocketchip.system.DefaultRV32Config.fir@108685.4]
  assign _T_19727 = hartExceptionWrEn == 1'h0; // @[Debug.scala 1624:30:freechips.rocketchip.system.DefaultRV32Config.fir@108686.4]
  assign _T_19728 = _T_19726 | _T_19727; // @[Debug.scala 1624:27:freechips.rocketchip.system.DefaultRV32Config.fir@108687.4]
  assign _T_19730 = _T_19728 | _T_19709; // @[Debug.scala 1624:49:freechips.rocketchip.system.DefaultRV32Config.fir@108689.4]
  assign _T_19732 = _T_19730 | reset; // @[Debug.scala 1624:12:freechips.rocketchip.system.DefaultRV32Config.fir@108691.4]
  assign _T_19733 = _T_19732 == 1'h0; // @[Debug.scala 1624:12:freechips.rocketchip.system.DefaultRV32Config.fir@108692.4]
  assign auto_tl_in_a_ready = auto_tl_in_d_ready; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@78981.4]
  assign auto_tl_in_d_valid = auto_tl_in_a_valid; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@78981.4]
  assign auto_tl_in_d_bits_opcode = {{2'd0}, _T_4169}; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@78981.4]
  assign auto_tl_in_d_bits_size = _T_4171[1:0]; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@78981.4]
  assign auto_tl_in_d_bits_source = _T_4171[11:2]; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@78981.4]
  assign auto_tl_in_d_bits_data = _GEN_2576 ? _GEN_2622 : 32'h0; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@78981.4]
  assign auto_dmi_in_a_ready = auto_dmi_in_d_ready; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@78980.4]
  assign auto_dmi_in_d_valid = auto_dmi_in_a_valid; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@78980.4]
  assign auto_dmi_in_d_bits_opcode = {{2'd0}, _T_440}; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@78980.4]
  assign auto_dmi_in_d_bits_size = _T_442[1:0]; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@78980.4]
  assign auto_dmi_in_d_bits_source = _T_442[2]; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@78980.4]
  assign auto_dmi_in_d_bits_data = _GEN_305 ? _GEN_337 : 32'h0; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@78980.4]
  assign io_innerCtrl_ready = 1'h1; // @[Debug.scala 776:24:freechips.rocketchip.system.DefaultRV32Config.fir@79175.4]
  assign io_hgDebugInt_0 = hrDebugInt_0; // @[Debug.scala 994:19:freechips.rocketchip.system.DefaultRV32Config.fir@79390.4]
  assign TLMonitor_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78931.4]
  assign TLMonitor_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78932.4]
  assign TLMonitor_io_in_a_ready = auto_dmi_in_d_ready; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@78952.4]
  assign TLMonitor_io_in_a_valid = auto_dmi_in_a_valid; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@78951.4]
  assign TLMonitor_io_in_a_bits_opcode = auto_dmi_in_a_bits_opcode; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@78950.4]
  assign TLMonitor_io_in_a_bits_param = auto_dmi_in_a_bits_param; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@78949.4]
  assign TLMonitor_io_in_a_bits_size = auto_dmi_in_a_bits_size; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@78948.4]
  assign TLMonitor_io_in_a_bits_source = auto_dmi_in_a_bits_source; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@78947.4]
  assign TLMonitor_io_in_a_bits_address = auto_dmi_in_a_bits_address; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@78946.4]
  assign TLMonitor_io_in_a_bits_mask = auto_dmi_in_a_bits_mask; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@78945.4]
  assign TLMonitor_io_in_a_bits_corrupt = auto_dmi_in_a_bits_corrupt; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@78943.4]
  assign TLMonitor_io_in_d_ready = auto_dmi_in_d_ready; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@78942.4]
  assign TLMonitor_io_in_d_valid = auto_dmi_in_a_valid; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@78941.4]
  assign TLMonitor_io_in_d_bits_opcode = {{2'd0}, _T_440}; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@78940.4]
  assign TLMonitor_io_in_d_bits_size = _T_442[1:0]; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@78938.4]
  assign TLMonitor_io_in_d_bits_source = _T_442[2]; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@78937.4]
  assign TLMonitor_1_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78956.4]
  assign TLMonitor_1_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@78957.4]
  assign TLMonitor_1_io_in_a_ready = auto_tl_in_d_ready; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@78977.4]
  assign TLMonitor_1_io_in_a_valid = auto_tl_in_a_valid; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@78976.4]
  assign TLMonitor_1_io_in_a_bits_opcode = auto_tl_in_a_bits_opcode; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@78975.4]
  assign TLMonitor_1_io_in_a_bits_param = auto_tl_in_a_bits_param; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@78974.4]
  assign TLMonitor_1_io_in_a_bits_size = auto_tl_in_a_bits_size; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@78973.4]
  assign TLMonitor_1_io_in_a_bits_source = auto_tl_in_a_bits_source; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@78972.4]
  assign TLMonitor_1_io_in_a_bits_address = auto_tl_in_a_bits_address; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@78971.4]
  assign TLMonitor_1_io_in_a_bits_mask = auto_tl_in_a_bits_mask; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@78970.4]
  assign TLMonitor_1_io_in_a_bits_corrupt = auto_tl_in_a_bits_corrupt; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@78968.4]
  assign TLMonitor_1_io_in_d_ready = auto_tl_in_d_ready; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@78967.4]
  assign TLMonitor_1_io_in_d_valid = auto_tl_in_a_valid; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@78966.4]
  assign TLMonitor_1_io_in_d_bits_opcode = {{2'd0}, _T_4169}; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@78965.4]
  assign TLMonitor_1_io_in_d_bits_size = _T_4171[1:0]; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@78963.4]
  assign TLMonitor_1_io_in_d_bits_source = _T_4171[11:2]; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@78962.4]
  assign _GEN_2740 = _T_12 == 1'h0; // @[Debug.scala 1346:15:freechips.rocketchip.system.DefaultRV32Config.fir@85339.12]
  assign _GEN_2741 = goAbstract == 1'h0; // @[Debug.scala 1346:15:freechips.rocketchip.system.DefaultRV32Config.fir@85339.12]
  assign _GEN_2742 = _GEN_2740 & _GEN_2741; // @[Debug.scala 1346:15:freechips.rocketchip.system.DefaultRV32Config.fir@85339.12]
  assign _GEN_2743 = _GEN_2742 & hartGoingWrEn; // @[Debug.scala 1346:15:freechips.rocketchip.system.DefaultRV32Config.fir@85339.12]
  assign _GEN_2748 = ABSTRACTCSWrEnLegal == 1'h0; // @[Debug.scala 1606:15:freechips.rocketchip.system.DefaultRV32Config.fir@108653.14]
  assign _GEN_2749 = _T_19708 == 1'h0; // @[Debug.scala 1606:15:freechips.rocketchip.system.DefaultRV32Config.fir@108653.14]
  assign _GEN_2750 = _GEN_2748 & _GEN_2749; // @[Debug.scala 1606:15:freechips.rocketchip.system.DefaultRV32Config.fir@108653.14]
  assign _GEN_2751 = _GEN_2750 & _T_19709; // @[Debug.scala 1606:15:freechips.rocketchip.system.DefaultRV32Config.fir@108653.14]
  assign _GEN_2752 = _GEN_2751 & hartExceptionWrEn; // @[Debug.scala 1606:15:freechips.rocketchip.system.DefaultRV32Config.fir@108653.14]
  assign _GEN_2761 = _T_19709 == 1'h0; // @[Debug.scala 1611:13:freechips.rocketchip.system.DefaultRV32Config.fir@108667.14]
  assign _GEN_2762 = _GEN_2750 & _GEN_2761; // @[Debug.scala 1611:13:freechips.rocketchip.system.DefaultRV32Config.fir@108667.14]
  assign _GEN_2763 = _GEN_2762 & _T_19718; // @[Debug.scala 1611:13:freechips.rocketchip.system.DefaultRV32Config.fir@108667.14]
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
  always @(posedge clock) begin
    if (_T_12) begin
      haltedBitRegs_0 <= 1'h0;
    end else begin
      if (reset) begin
        haltedBitRegs_0 <= 1'h0;
      end else begin
        if (hartHaltedWrEn) begin
          haltedBitRegs_0 <= _GEN_66;
        end else begin
          if (hartResumingWrEn) begin
            if (_T_366) begin
              haltedBitRegs_0 <= 1'h0;
            end
          end
        end
      end
    end
    if (_T_12) begin
      resumeReqRegs_0 <= 1'h0;
    end else begin
      resumeReqRegs_0 <= _GEN_74;
    end
    if (_T_12) begin
      haveResetBitRegs_0 <= 1'h0;
    end else begin
      haveResetBitRegs_0 <= _GEN_35;
    end
    if (_T_12) begin
      hrDebugInt_0 <= 1'h0;
    end else begin
      hrDebugInt_0 <= _T_19;
    end
    if (_T_12) begin
      hrmaskReg_0 <= 1'h0;
    end else begin
      if (_T_15) begin
        hrmaskReg_0 <= io_innerCtrl_bits_hrmask_0;
      end
    end
    if (_T_12) begin
      ABSTRACTCSReg_cmderr <= 3'h0;
    end else begin
      if (errorBusy) begin
        ABSTRACTCSReg_cmderr <= 3'h1;
      end else begin
        if (errorException) begin
          ABSTRACTCSReg_cmderr <= 3'h3;
        end else begin
          if (errorUnsupported) begin
            ABSTRACTCSReg_cmderr <= 3'h2;
          end else begin
            if (errorHaltResume) begin
              ABSTRACTCSReg_cmderr <= 3'h4;
            end else begin
              if (ABSTRACTCSWrEn) begin
                ABSTRACTCSReg_cmderr <= _T_137;
              end
            end
          end
        end
      end
    end
    if (_T_12) begin
      ctrlStateReg <= 2'h0;
    end else begin
      if (ABSTRACTCSWrEnLegal) begin
        if (_T_19706) begin
          ctrlStateReg <= 2'h1;
        end
      end else begin
        if (_T_19708) begin
          if (commandRegIsUnsupported) begin
            ctrlStateReg <= 2'h0;
          end else begin
            if (commandRegBadHaltResume) begin
              ctrlStateReg <= 2'h0;
            end else begin
              ctrlStateReg <= 2'h2;
            end
          end
        end else begin
          if (_T_19709) begin
            if (hartExceptionWrEn) begin
              ctrlStateReg <= 2'h0;
            end else begin
              if (_T_19713) begin
                ctrlStateReg <= 2'h0;
              end
            end
          end
        end
      end
    end
    if (_T_12) begin
      COMMANDRdData_cmdtype <= 8'h0;
    end else begin
      if (COMMANDWrEn) begin
        COMMANDRdData_cmdtype <= COMMANDWrData_cmdtype;
      end
    end
    if (_T_12) begin
      COMMANDRdData_control <= 24'h0;
    end else begin
      if (COMMANDWrEn) begin
        COMMANDRdData_control <= COMMANDWrData_control;
      end
    end
    if (_T_12) begin
      ABSTRACTAUTOReg_autoexecdata <= 12'h0;
    end else begin
      if (_T_154) begin
        ABSTRACTAUTOReg_autoexecdata <= _T_155;
      end
    end
    if (_T_12) begin
      ABSTRACTAUTOReg_autoexecprogbuf <= 16'h0;
    end else begin
      if (_T_152) begin
        ABSTRACTAUTOReg_autoexecprogbuf <= ABSTRACTAUTOWrData_autoexecprogbuf;
      end
    end
    if (_T_12) begin
      abstractDataMem_0 <= 8'h0;
    end else begin
      if (_T_5558) begin
        abstractDataMem_0 <= _T_4315;
      end else begin
        if (_T_3878) begin
          if (dmiAbstractDataWrEnMaybe_0) begin
            abstractDataMem_0 <= _T_542;
          end
        end
      end
    end
    if (_T_12) begin
      abstractDataMem_1 <= 8'h0;
    end else begin
      if (_T_5581) begin
        abstractDataMem_1 <= _T_4338;
      end else begin
        if (_T_3880) begin
          if (dmiAbstractDataWrEnMaybe_1) begin
            abstractDataMem_1 <= _T_565;
          end
        end
      end
    end
    if (_T_12) begin
      abstractDataMem_2 <= 8'h0;
    end else begin
      if (_T_5606) begin
        abstractDataMem_2 <= _T_4363;
      end else begin
        if (_T_3882) begin
          if (dmiAbstractDataWrEnMaybe_2) begin
            abstractDataMem_2 <= _T_590;
          end
        end
      end
    end
    if (_T_12) begin
      abstractDataMem_3 <= 8'h0;
    end else begin
      if (_T_5631) begin
        abstractDataMem_3 <= _T_4388;
      end else begin
        if (_T_3884) begin
          if (dmiAbstractDataWrEnMaybe_3) begin
            abstractDataMem_3 <= _T_615;
          end
        end
      end
    end
    if (_T_12) begin
      programBufferMem_0 <= 8'h0;
    end else begin
      if (_T_6413) begin
        programBufferMem_0 <= _T_4315;
      end else begin
        if (_T_3886) begin
          if (dmiProgramBufferWrEnMaybe_0) begin
            programBufferMem_0 <= _T_542;
          end
        end
      end
    end
    if (_T_12) begin
      programBufferMem_1 <= 8'h0;
    end else begin
      if (_T_6436) begin
        programBufferMem_1 <= _T_4338;
      end else begin
        if (_T_3888) begin
          if (dmiProgramBufferWrEnMaybe_1) begin
            programBufferMem_1 <= _T_565;
          end
        end
      end
    end
    if (_T_12) begin
      programBufferMem_2 <= 8'h0;
    end else begin
      if (_T_6461) begin
        programBufferMem_2 <= _T_4363;
      end else begin
        if (_T_3890) begin
          if (dmiProgramBufferWrEnMaybe_2) begin
            programBufferMem_2 <= _T_590;
          end
        end
      end
    end
    if (_T_12) begin
      programBufferMem_3 <= 8'h0;
    end else begin
      if (_T_6486) begin
        programBufferMem_3 <= _T_4388;
      end else begin
        if (_T_3892) begin
          if (dmiProgramBufferWrEnMaybe_3) begin
            programBufferMem_3 <= _T_615;
          end
        end
      end
    end
    if (_T_12) begin
      programBufferMem_4 <= 8'h0;
    end else begin
      if (_T_7024) begin
        programBufferMem_4 <= _T_4315;
      end else begin
        if (_T_3894) begin
          if (dmiProgramBufferWrEnMaybe_4) begin
            programBufferMem_4 <= _T_542;
          end
        end
      end
    end
    if (_T_12) begin
      programBufferMem_5 <= 8'h0;
    end else begin
      if (_T_7047) begin
        programBufferMem_5 <= _T_4338;
      end else begin
        if (_T_3896) begin
          if (dmiProgramBufferWrEnMaybe_5) begin
            programBufferMem_5 <= _T_565;
          end
        end
      end
    end
    if (_T_12) begin
      programBufferMem_6 <= 8'h0;
    end else begin
      if (_T_7072) begin
        programBufferMem_6 <= _T_4363;
      end else begin
        if (_T_3898) begin
          if (dmiProgramBufferWrEnMaybe_6) begin
            programBufferMem_6 <= _T_590;
          end
        end
      end
    end
    if (_T_12) begin
      programBufferMem_7 <= 8'h0;
    end else begin
      if (_T_7097) begin
        programBufferMem_7 <= _T_4388;
      end else begin
        if (_T_3900) begin
          if (dmiProgramBufferWrEnMaybe_7) begin
            programBufferMem_7 <= _T_615;
          end
        end
      end
    end
    if (_T_12) begin
      programBufferMem_8 <= 8'h0;
    end else begin
      if (_T_7756) begin
        programBufferMem_8 <= _T_4315;
      end else begin
        if (_T_3902) begin
          if (dmiProgramBufferWrEnMaybe_8) begin
            programBufferMem_8 <= _T_542;
          end
        end
      end
    end
    if (_T_12) begin
      programBufferMem_9 <= 8'h0;
    end else begin
      if (_T_7779) begin
        programBufferMem_9 <= _T_4338;
      end else begin
        if (_T_3904) begin
          if (dmiProgramBufferWrEnMaybe_9) begin
            programBufferMem_9 <= _T_565;
          end
        end
      end
    end
    if (_T_12) begin
      programBufferMem_10 <= 8'h0;
    end else begin
      if (_T_7804) begin
        programBufferMem_10 <= _T_4363;
      end else begin
        if (_T_3906) begin
          if (dmiProgramBufferWrEnMaybe_10) begin
            programBufferMem_10 <= _T_590;
          end
        end
      end
    end
    if (_T_12) begin
      programBufferMem_11 <= 8'h0;
    end else begin
      if (_T_7829) begin
        programBufferMem_11 <= _T_4388;
      end else begin
        if (_T_3908) begin
          if (dmiProgramBufferWrEnMaybe_11) begin
            programBufferMem_11 <= _T_615;
          end
        end
      end
    end
    if (_T_12) begin
      programBufferMem_12 <= 8'h0;
    end else begin
      if (_T_4705) begin
        programBufferMem_12 <= _T_4315;
      end else begin
        if (_T_3910) begin
          if (dmiProgramBufferWrEnMaybe_12) begin
            programBufferMem_12 <= _T_542;
          end
        end
      end
    end
    if (_T_12) begin
      programBufferMem_13 <= 8'h0;
    end else begin
      if (_T_4728) begin
        programBufferMem_13 <= _T_4338;
      end else begin
        if (_T_3912) begin
          if (dmiProgramBufferWrEnMaybe_13) begin
            programBufferMem_13 <= _T_565;
          end
        end
      end
    end
    if (_T_12) begin
      programBufferMem_14 <= 8'h0;
    end else begin
      if (_T_4753) begin
        programBufferMem_14 <= _T_4363;
      end else begin
        if (_T_3914) begin
          if (dmiProgramBufferWrEnMaybe_14) begin
            programBufferMem_14 <= _T_590;
          end
        end
      end
    end
    if (_T_12) begin
      programBufferMem_15 <= 8'h0;
    end else begin
      if (_T_4778) begin
        programBufferMem_15 <= _T_4388;
      end else begin
        if (_T_3916) begin
          if (dmiProgramBufferWrEnMaybe_15) begin
            programBufferMem_15 <= _T_615;
          end
        end
      end
    end
    if (_T_12) begin
      programBufferMem_16 <= 8'h0;
    end else begin
      if (_T_5900) begin
        programBufferMem_16 <= _T_4315;
      end else begin
        if (_T_3918) begin
          if (dmiProgramBufferWrEnMaybe_16) begin
            programBufferMem_16 <= _T_542;
          end
        end
      end
    end
    if (_T_12) begin
      programBufferMem_17 <= 8'h0;
    end else begin
      if (_T_5923) begin
        programBufferMem_17 <= _T_4338;
      end else begin
        if (_T_3920) begin
          if (dmiProgramBufferWrEnMaybe_17) begin
            programBufferMem_17 <= _T_565;
          end
        end
      end
    end
    if (_T_12) begin
      programBufferMem_18 <= 8'h0;
    end else begin
      if (_T_5948) begin
        programBufferMem_18 <= _T_4363;
      end else begin
        if (_T_3922) begin
          if (dmiProgramBufferWrEnMaybe_18) begin
            programBufferMem_18 <= _T_590;
          end
        end
      end
    end
    if (_T_12) begin
      programBufferMem_19 <= 8'h0;
    end else begin
      if (_T_5973) begin
        programBufferMem_19 <= _T_4388;
      end else begin
        if (_T_3924) begin
          if (dmiProgramBufferWrEnMaybe_19) begin
            programBufferMem_19 <= _T_615;
          end
        end
      end
    end
    if (_T_12) begin
      programBufferMem_20 <= 8'h0;
    end else begin
      if (_T_6511) begin
        programBufferMem_20 <= _T_4315;
      end else begin
        if (_T_3926) begin
          if (dmiProgramBufferWrEnMaybe_20) begin
            programBufferMem_20 <= _T_542;
          end
        end
      end
    end
    if (_T_12) begin
      programBufferMem_21 <= 8'h0;
    end else begin
      if (_T_6534) begin
        programBufferMem_21 <= _T_4338;
      end else begin
        if (_T_3928) begin
          if (dmiProgramBufferWrEnMaybe_21) begin
            programBufferMem_21 <= _T_565;
          end
        end
      end
    end
    if (_T_12) begin
      programBufferMem_22 <= 8'h0;
    end else begin
      if (_T_6559) begin
        programBufferMem_22 <= _T_4363;
      end else begin
        if (_T_3930) begin
          if (dmiProgramBufferWrEnMaybe_22) begin
            programBufferMem_22 <= _T_590;
          end
        end
      end
    end
    if (_T_12) begin
      programBufferMem_23 <= 8'h0;
    end else begin
      if (_T_6584) begin
        programBufferMem_23 <= _T_4388;
      end else begin
        if (_T_3932) begin
          if (dmiProgramBufferWrEnMaybe_23) begin
            programBufferMem_23 <= _T_615;
          end
        end
      end
    end
    if (_T_12) begin
      programBufferMem_24 <= 8'h0;
    end else begin
      if (_T_7658) begin
        programBufferMem_24 <= _T_4315;
      end else begin
        if (_T_3934) begin
          if (dmiProgramBufferWrEnMaybe_24) begin
            programBufferMem_24 <= _T_542;
          end
        end
      end
    end
    if (_T_12) begin
      programBufferMem_25 <= 8'h0;
    end else begin
      if (_T_7681) begin
        programBufferMem_25 <= _T_4338;
      end else begin
        if (_T_3936) begin
          if (dmiProgramBufferWrEnMaybe_25) begin
            programBufferMem_25 <= _T_565;
          end
        end
      end
    end
    if (_T_12) begin
      programBufferMem_26 <= 8'h0;
    end else begin
      if (_T_7706) begin
        programBufferMem_26 <= _T_4363;
      end else begin
        if (_T_3938) begin
          if (dmiProgramBufferWrEnMaybe_26) begin
            programBufferMem_26 <= _T_590;
          end
        end
      end
    end
    if (_T_12) begin
      programBufferMem_27 <= 8'h0;
    end else begin
      if (_T_7731) begin
        programBufferMem_27 <= _T_4388;
      end else begin
        if (_T_3940) begin
          if (dmiProgramBufferWrEnMaybe_27) begin
            programBufferMem_27 <= _T_615;
          end
        end
      end
    end
    if (_T_12) begin
      programBufferMem_28 <= 8'h0;
    end else begin
      if (_T_8050) begin
        programBufferMem_28 <= _T_4315;
      end else begin
        if (_T_3942) begin
          if (dmiProgramBufferWrEnMaybe_28) begin
            programBufferMem_28 <= _T_542;
          end
        end
      end
    end
    if (_T_12) begin
      programBufferMem_29 <= 8'h0;
    end else begin
      if (_T_8073) begin
        programBufferMem_29 <= _T_4338;
      end else begin
        if (_T_3944) begin
          if (dmiProgramBufferWrEnMaybe_29) begin
            programBufferMem_29 <= _T_565;
          end
        end
      end
    end
    if (_T_12) begin
      programBufferMem_30 <= 8'h0;
    end else begin
      if (_T_8098) begin
        programBufferMem_30 <= _T_4363;
      end else begin
        if (_T_3946) begin
          if (dmiProgramBufferWrEnMaybe_30) begin
            programBufferMem_30 <= _T_590;
          end
        end
      end
    end
    if (_T_12) begin
      programBufferMem_31 <= 8'h0;
    end else begin
      if (_T_8123) begin
        programBufferMem_31 <= _T_4388;
      end else begin
        if (_T_3948) begin
          if (dmiProgramBufferWrEnMaybe_31) begin
            programBufferMem_31 <= _T_615;
          end
        end
      end
    end
    if (_T_12) begin
      programBufferMem_32 <= 8'h0;
    end else begin
      if (_T_4607) begin
        programBufferMem_32 <= _T_4315;
      end else begin
        if (_T_3950) begin
          if (dmiProgramBufferWrEnMaybe_32) begin
            programBufferMem_32 <= _T_542;
          end
        end
      end
    end
    if (_T_12) begin
      programBufferMem_33 <= 8'h0;
    end else begin
      if (_T_4630) begin
        programBufferMem_33 <= _T_4338;
      end else begin
        if (_T_3952) begin
          if (dmiProgramBufferWrEnMaybe_33) begin
            programBufferMem_33 <= _T_565;
          end
        end
      end
    end
    if (_T_12) begin
      programBufferMem_34 <= 8'h0;
    end else begin
      if (_T_4655) begin
        programBufferMem_34 <= _T_4363;
      end else begin
        if (_T_3954) begin
          if (dmiProgramBufferWrEnMaybe_34) begin
            programBufferMem_34 <= _T_590;
          end
        end
      end
    end
    if (_T_12) begin
      programBufferMem_35 <= 8'h0;
    end else begin
      if (_T_4680) begin
        programBufferMem_35 <= _T_4388;
      end else begin
        if (_T_3956) begin
          if (dmiProgramBufferWrEnMaybe_35) begin
            programBufferMem_35 <= _T_615;
          end
        end
      end
    end
    if (_T_12) begin
      programBufferMem_36 <= 8'h0;
    end else begin
      if (_T_4509) begin
        programBufferMem_36 <= _T_4315;
      end else begin
        if (_T_3958) begin
          if (dmiProgramBufferWrEnMaybe_36) begin
            programBufferMem_36 <= _T_542;
          end
        end
      end
    end
    if (_T_12) begin
      programBufferMem_37 <= 8'h0;
    end else begin
      if (_T_4532) begin
        programBufferMem_37 <= _T_4338;
      end else begin
        if (_T_3960) begin
          if (dmiProgramBufferWrEnMaybe_37) begin
            programBufferMem_37 <= _T_565;
          end
        end
      end
    end
    if (_T_12) begin
      programBufferMem_38 <= 8'h0;
    end else begin
      if (_T_4557) begin
        programBufferMem_38 <= _T_4363;
      end else begin
        if (_T_3962) begin
          if (dmiProgramBufferWrEnMaybe_38) begin
            programBufferMem_38 <= _T_590;
          end
        end
      end
    end
    if (_T_12) begin
      programBufferMem_39 <= 8'h0;
    end else begin
      if (_T_4582) begin
        programBufferMem_39 <= _T_4388;
      end else begin
        if (_T_3964) begin
          if (dmiProgramBufferWrEnMaybe_39) begin
            programBufferMem_39 <= _T_615;
          end
        end
      end
    end
    if (_T_12) begin
      programBufferMem_40 <= 8'h0;
    end else begin
      if (_T_7439) begin
        programBufferMem_40 <= _T_4315;
      end else begin
        if (_T_3966) begin
          if (dmiProgramBufferWrEnMaybe_40) begin
            programBufferMem_40 <= _T_542;
          end
        end
      end
    end
    if (_T_12) begin
      programBufferMem_41 <= 8'h0;
    end else begin
      if (_T_7462) begin
        programBufferMem_41 <= _T_4338;
      end else begin
        if (_T_3968) begin
          if (dmiProgramBufferWrEnMaybe_41) begin
            programBufferMem_41 <= _T_565;
          end
        end
      end
    end
    if (_T_12) begin
      programBufferMem_42 <= 8'h0;
    end else begin
      if (_T_7487) begin
        programBufferMem_42 <= _T_4363;
      end else begin
        if (_T_3970) begin
          if (dmiProgramBufferWrEnMaybe_42) begin
            programBufferMem_42 <= _T_590;
          end
        end
      end
    end
    if (_T_12) begin
      programBufferMem_43 <= 8'h0;
    end else begin
      if (_T_7512) begin
        programBufferMem_43 <= _T_4388;
      end else begin
        if (_T_3972) begin
          if (dmiProgramBufferWrEnMaybe_43) begin
            programBufferMem_43 <= _T_615;
          end
        end
      end
    end
    if (_T_12) begin
      programBufferMem_44 <= 8'h0;
    end else begin
      if (_T_6315) begin
        programBufferMem_44 <= _T_4315;
      end else begin
        if (_T_3974) begin
          if (dmiProgramBufferWrEnMaybe_44) begin
            programBufferMem_44 <= _T_542;
          end
        end
      end
    end
    if (_T_12) begin
      programBufferMem_45 <= 8'h0;
    end else begin
      if (_T_6338) begin
        programBufferMem_45 <= _T_4338;
      end else begin
        if (_T_3976) begin
          if (dmiProgramBufferWrEnMaybe_45) begin
            programBufferMem_45 <= _T_565;
          end
        end
      end
    end
    if (_T_12) begin
      programBufferMem_46 <= 8'h0;
    end else begin
      if (_T_6363) begin
        programBufferMem_46 <= _T_4363;
      end else begin
        if (_T_3978) begin
          if (dmiProgramBufferWrEnMaybe_46) begin
            programBufferMem_46 <= _T_590;
          end
        end
      end
    end
    if (_T_12) begin
      programBufferMem_47 <= 8'h0;
    end else begin
      if (_T_6388) begin
        programBufferMem_47 <= _T_4388;
      end else begin
        if (_T_3980) begin
          if (dmiProgramBufferWrEnMaybe_47) begin
            programBufferMem_47 <= _T_615;
          end
        end
      end
    end
    if (_T_12) begin
      programBufferMem_48 <= 8'h0;
    end else begin
      if (_T_5316) begin
        programBufferMem_48 <= _T_4315;
      end else begin
        if (_T_3982) begin
          if (dmiProgramBufferWrEnMaybe_48) begin
            programBufferMem_48 <= _T_542;
          end
        end
      end
    end
    if (_T_12) begin
      programBufferMem_49 <= 8'h0;
    end else begin
      if (_T_5339) begin
        programBufferMem_49 <= _T_4338;
      end else begin
        if (_T_3984) begin
          if (dmiProgramBufferWrEnMaybe_49) begin
            programBufferMem_49 <= _T_565;
          end
        end
      end
    end
    if (_T_12) begin
      programBufferMem_50 <= 8'h0;
    end else begin
      if (_T_5364) begin
        programBufferMem_50 <= _T_4363;
      end else begin
        if (_T_3986) begin
          if (dmiProgramBufferWrEnMaybe_50) begin
            programBufferMem_50 <= _T_590;
          end
        end
      end
    end
    if (_T_12) begin
      programBufferMem_51 <= 8'h0;
    end else begin
      if (_T_5389) begin
        programBufferMem_51 <= _T_4388;
      end else begin
        if (_T_3988) begin
          if (dmiProgramBufferWrEnMaybe_51) begin
            programBufferMem_51 <= _T_615;
          end
        end
      end
    end
    if (_T_12) begin
      programBufferMem_52 <= 8'h0;
    end else begin
      if (_T_4901) begin
        programBufferMem_52 <= _T_4315;
      end else begin
        if (_T_3990) begin
          if (dmiProgramBufferWrEnMaybe_52) begin
            programBufferMem_52 <= _T_542;
          end
        end
      end
    end
    if (_T_12) begin
      programBufferMem_53 <= 8'h0;
    end else begin
      if (_T_4924) begin
        programBufferMem_53 <= _T_4338;
      end else begin
        if (_T_3992) begin
          if (dmiProgramBufferWrEnMaybe_53) begin
            programBufferMem_53 <= _T_565;
          end
        end
      end
    end
    if (_T_12) begin
      programBufferMem_54 <= 8'h0;
    end else begin
      if (_T_4949) begin
        programBufferMem_54 <= _T_4363;
      end else begin
        if (_T_3994) begin
          if (dmiProgramBufferWrEnMaybe_54) begin
            programBufferMem_54 <= _T_590;
          end
        end
      end
    end
    if (_T_12) begin
      programBufferMem_55 <= 8'h0;
    end else begin
      if (_T_4974) begin
        programBufferMem_55 <= _T_4388;
      end else begin
        if (_T_3996) begin
          if (dmiProgramBufferWrEnMaybe_55) begin
            programBufferMem_55 <= _T_615;
          end
        end
      end
    end
    if (_T_12) begin
      programBufferMem_56 <= 8'h0;
    end else begin
      if (_T_8148) begin
        programBufferMem_56 <= _T_4315;
      end else begin
        if (_T_3998) begin
          if (dmiProgramBufferWrEnMaybe_56) begin
            programBufferMem_56 <= _T_542;
          end
        end
      end
    end
    if (_T_12) begin
      programBufferMem_57 <= 8'h0;
    end else begin
      if (_T_8171) begin
        programBufferMem_57 <= _T_4338;
      end else begin
        if (_T_4000) begin
          if (dmiProgramBufferWrEnMaybe_57) begin
            programBufferMem_57 <= _T_565;
          end
        end
      end
    end
    if (_T_12) begin
      programBufferMem_58 <= 8'h0;
    end else begin
      if (_T_8196) begin
        programBufferMem_58 <= _T_4363;
      end else begin
        if (_T_4002) begin
          if (dmiProgramBufferWrEnMaybe_58) begin
            programBufferMem_58 <= _T_590;
          end
        end
      end
    end
    if (_T_12) begin
      programBufferMem_59 <= 8'h0;
    end else begin
      if (_T_8221) begin
        programBufferMem_59 <= _T_4388;
      end else begin
        if (_T_4004) begin
          if (dmiProgramBufferWrEnMaybe_59) begin
            programBufferMem_59 <= _T_615;
          end
        end
      end
    end
    if (_T_12) begin
      programBufferMem_60 <= 8'h0;
    end else begin
      if (_T_6828) begin
        programBufferMem_60 <= _T_4315;
      end else begin
        if (_T_4006) begin
          if (dmiProgramBufferWrEnMaybe_60) begin
            programBufferMem_60 <= _T_542;
          end
        end
      end
    end
    if (_T_12) begin
      programBufferMem_61 <= 8'h0;
    end else begin
      if (_T_6851) begin
        programBufferMem_61 <= _T_4338;
      end else begin
        if (_T_4008) begin
          if (dmiProgramBufferWrEnMaybe_61) begin
            programBufferMem_61 <= _T_565;
          end
        end
      end
    end
    if (_T_12) begin
      programBufferMem_62 <= 8'h0;
    end else begin
      if (_T_6876) begin
        programBufferMem_62 <= _T_4363;
      end else begin
        if (_T_4010) begin
          if (dmiProgramBufferWrEnMaybe_62) begin
            programBufferMem_62 <= _T_590;
          end
        end
      end
    end
    if (_T_12) begin
      programBufferMem_63 <= 8'h0;
    end else begin
      if (_T_6901) begin
        programBufferMem_63 <= _T_4388;
      end else begin
        if (_T_4012) begin
          if (dmiProgramBufferWrEnMaybe_63) begin
            programBufferMem_63 <= _T_615;
          end
        end
      end
    end
    if (_T_12) begin
      goReg <= 1'h0;
    end else begin
      goReg <= _GEN_407;
    end
    if (goAbstract) begin
      if (accessRegisterCommandReg_transfer) begin
        if (accessRegisterCommandReg_write) begin
          abstractGeneratedMem_0 <= _T_4142;
        end else begin
          abstractGeneratedMem_0 <= _T_4147;
        end
      end else begin
        abstractGeneratedMem_0 <= 32'h13;
      end
    end
    if (goAbstract) begin
      if (accessRegisterCommandReg_postexec) begin
        abstractGeneratedMem_1 <= 32'h13;
      end else begin
        abstractGeneratedMem_1 <= 32'h100073;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_2743 & _T_4074) begin
          $fwrite(32'h80000002,"Assertion failed: Unexpected 'GOING' hart.\n    at Debug.scala:1346 assert(hartGoingId === 0.U, \"Unexpected 'GOING' hart.\")//Chisel3 #540 %%x, expected %%x\", hartGoingId, 0.U)\n"); // @[Debug.scala 1346:15:freechips.rocketchip.system.DefaultRV32Config.fir@85339.12]
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
          $fatal; // @[Debug.scala 1346:15:freechips.rocketchip.system.DefaultRV32Config.fir@85340.12]
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
          $fwrite(32'h80000002,"Assertion failed: Unexpected 'EXCEPTION' hart\n    at Debug.scala:1606 assert(hartExceptionId === 0.U, \"Unexpected 'EXCEPTION' hart\")//Chisel3 #540, %%x, expected %%x\", hartExceptionId, 0.U)\n"); // @[Debug.scala 1606:15:freechips.rocketchip.system.DefaultRV32Config.fir@108653.14]
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
          $fatal; // @[Debug.scala 1606:15:freechips.rocketchip.system.DefaultRV32Config.fir@108654.14]
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
          $fwrite(32'h80000002,"Assertion failed: Should not be in custom state unless we need it.\n    at Debug.scala:1611 assert(needCustom.B, \"Should not be in custom state unless we need it.\")\n"); // @[Debug.scala 1611:13:freechips.rocketchip.system.DefaultRV32Config.fir@108667.14]
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
          $fatal; // @[Debug.scala 1611:13:freechips.rocketchip.system.DefaultRV32Config.fir@108668.14]
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
          $fwrite(32'h80000002,"Assertion failed: Unexpected EXCEPTION write: should only get it in Debug Module EXEC state\n    at Debug.scala:1624 assert ((!io.dmactive || !hartExceptionWrEn || ctrlStateReg === CtrlState(Exec)),\n"); // @[Debug.scala 1624:12:freechips.rocketchip.system.DefaultRV32Config.fir@108694.6]
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
          $fatal; // @[Debug.scala 1624:12:freechips.rocketchip.system.DefaultRV32Config.fir@108695.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
`endif // __TLDebugModuleInner

