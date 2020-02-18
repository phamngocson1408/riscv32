`include "include_module.v"
`ifdef __CLINT
module CLINT( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@68187.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@68188.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@68189.4]
  output        auto_int_out_0, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@68190.4]
  output        auto_int_out_1, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@68190.4]
  output        auto_in_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@68190.4]
  input         auto_in_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@68190.4]
  input  [2:0]  auto_in_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@68190.4]
  input  [2:0]  auto_in_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@68190.4]
  input  [1:0]  auto_in_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@68190.4]
  input  [9:0]  auto_in_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@68190.4]
  input  [25:0] auto_in_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@68190.4]
  input  [3:0]  auto_in_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@68190.4]
  input  [31:0] auto_in_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@68190.4]
  input         auto_in_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@68190.4]
  input         auto_in_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@68190.4]
  output        auto_in_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@68190.4]
  output [2:0]  auto_in_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@68190.4]
  output [1:0]  auto_in_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@68190.4]
  output [9:0]  auto_in_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@68190.4]
  output [31:0] auto_in_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@68190.4]
  input         io_rtcTick // @[:freechips.rocketchip.system.DefaultRV32Config.fir@68191.4]
);
  wire  TLMonitor_clock; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@68199.4]
  wire  TLMonitor_reset; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@68199.4]
  wire  TLMonitor_io_in_a_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@68199.4]
  wire  TLMonitor_io_in_a_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@68199.4]
  wire [2:0] TLMonitor_io_in_a_bits_opcode; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@68199.4]
  wire [2:0] TLMonitor_io_in_a_bits_param; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@68199.4]
  wire [1:0] TLMonitor_io_in_a_bits_size; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@68199.4]
  wire [9:0] TLMonitor_io_in_a_bits_source; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@68199.4]
  wire [25:0] TLMonitor_io_in_a_bits_address; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@68199.4]
  wire [3:0] TLMonitor_io_in_a_bits_mask; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@68199.4]
  wire  TLMonitor_io_in_a_bits_corrupt; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@68199.4]
  wire  TLMonitor_io_in_d_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@68199.4]
  wire  TLMonitor_io_in_d_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@68199.4]
  wire [2:0] TLMonitor_io_in_d_bits_opcode; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@68199.4]
  wire [1:0] TLMonitor_io_in_d_bits_size; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@68199.4]
  wire [9:0] TLMonitor_io_in_d_bits_source; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@68199.4]
  reg [63:0] time_; // @[CLINT.scala 69:23:freechips.rocketchip.system.DefaultRV32Config.fir@68226.4]
  reg [63:0] _RAND_0;
  wire [63:0] _T_2; // @[CLINT.scala 70:38:freechips.rocketchip.system.DefaultRV32Config.fir@68229.6]
  reg [63:0] timecmp_0; // @[CLINT.scala 73:41:freechips.rocketchip.system.DefaultRV32Config.fir@68232.4]
  reg [63:0] _RAND_1;
  reg  ipi_0; // @[CLINT.scala 74:41:freechips.rocketchip.system.DefaultRV32Config.fir@68233.4]
  reg [31:0] _RAND_2;
  wire [7:0] _T_6; // @[RegField.scala 211:53:freechips.rocketchip.system.DefaultRV32Config.fir@68239.4]
  wire [7:0] _T_7; // @[RegField.scala 211:53:freechips.rocketchip.system.DefaultRV32Config.fir@68240.4]
  wire [7:0] _T_8; // @[RegField.scala 211:53:freechips.rocketchip.system.DefaultRV32Config.fir@68241.4]
  wire [7:0] _T_9; // @[RegField.scala 211:53:freechips.rocketchip.system.DefaultRV32Config.fir@68242.4]
  wire [7:0] _T_10; // @[RegField.scala 211:53:freechips.rocketchip.system.DefaultRV32Config.fir@68243.4]
  wire [7:0] _T_11; // @[RegField.scala 211:53:freechips.rocketchip.system.DefaultRV32Config.fir@68244.4]
  wire [7:0] _T_12; // @[RegField.scala 211:53:freechips.rocketchip.system.DefaultRV32Config.fir@68245.4]
  wire [7:0] _T_13; // @[RegField.scala 211:53:freechips.rocketchip.system.DefaultRV32Config.fir@68246.4]
  wire  _T_60; // @[RegisterRouter.scala 59:36:freechips.rocketchip.system.DefaultRV32Config.fir@68344.4]
  wire [23:0] _T_61; // @[Edges.scala 193:34:freechips.rocketchip.system.DefaultRV32Config.fir@68346.4]
  wire [13:0] _T_59_bits_index; // @[RegisterRouter.scala 58:18:freechips.rocketchip.system.DefaultRV32Config.fir@68342.4 RegisterRouter.scala 60:19:freechips.rocketchip.system.DefaultRV32Config.fir@68347.4]
  wire  _T_565; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68928.4]
  wire  _T_564; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68927.4]
  wire  _T_552; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68915.4]
  wire [2:0] _T_567; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@68930.4]
  wire [13:0] _T_66; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68358.4]
  wire  _T_74; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68366.4]
  wire  _T_70; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68362.4]
  wire  _T_738; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@69230.4]
  wire  _T_739; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@69231.4]
  wire  _T_740; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@69232.4]
  wire [7:0] _T_593; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@68956.4]
  wire  _T_596; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68959.4]
  wire  _T_752; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@69251.4]
  wire  _T_753; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@69252.4]
  wire  _T_100; // @[Bitwise.scala 26:51:freechips.rocketchip.system.DefaultRV32Config.fir@68396.4]
  wire [7:0] _T_108; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@68404.4]
  wire  _T_99; // @[Bitwise.scala 26:51:freechips.rocketchip.system.DefaultRV32Config.fir@68395.4]
  wire [7:0] _T_106; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@68402.4]
  wire  _T_98; // @[Bitwise.scala 26:51:freechips.rocketchip.system.DefaultRV32Config.fir@68394.4]
  wire [7:0] _T_104; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@68400.4]
  wire  _T_97; // @[Bitwise.scala 26:51:freechips.rocketchip.system.DefaultRV32Config.fir@68393.4]
  wire [7:0] _T_102; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@68398.4]
  wire [31:0] _T_111; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@68407.4]
  wire [7:0] _T_460; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68807.4]
  wire  _T_461; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68808.4]
  wire  _T_465; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68812.4]
  wire [7:0] _T_483; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68834.4]
  wire  _T_484; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68835.4]
  wire  _T_488; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68839.4]
  wire  _T_18; // @[RegField.scala 214:27:freechips.rocketchip.system.DefaultRV32Config.fir@68273.4]
  wire [7:0] _T_508; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68863.4]
  wire  _T_509; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68864.4]
  wire  _T_513; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68868.4]
  wire  _T_19; // @[RegField.scala 214:27:freechips.rocketchip.system.DefaultRV32Config.fir@68274.4]
  wire [7:0] _T_533; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68892.4]
  wire  _T_534; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68893.4]
  wire  _T_538; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68897.4]
  wire  _T_20; // @[RegField.scala 214:27:freechips.rocketchip.system.DefaultRV32Config.fir@68275.4]
  wire  _T_597; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68960.4]
  wire  _T_757; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@69262.4]
  wire  _T_758; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@69263.4]
  wire  _T_171; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68470.4]
  wire  _T_21; // @[RegField.scala 214:27:freechips.rocketchip.system.DefaultRV32Config.fir@68276.4]
  wire  _T_194; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68497.4]
  wire  _T_22; // @[RegField.scala 214:27:freechips.rocketchip.system.DefaultRV32Config.fir@68277.4]
  wire  _T_219; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68526.4]
  wire  _T_23; // @[RegField.scala 214:27:freechips.rocketchip.system.DefaultRV32Config.fir@68278.4]
  wire  _T_244; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68555.4]
  wire  _T_24; // @[RegField.scala 214:27:freechips.rocketchip.system.DefaultRV32Config.fir@68279.4]
  wire [7:0] _T_489; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68840.4]
  wire [7:0] _GEN_17; // @[RegField.scala 218:20:freechips.rocketchip.system.DefaultRV32Config.fir@68842.4]
  wire [7:0] _T_466; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68813.4]
  wire [7:0] _GEN_16; // @[RegField.scala 218:20:freechips.rocketchip.system.DefaultRV32Config.fir@68815.4]
  wire [7:0] _T_539; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68898.4]
  wire [7:0] _GEN_19; // @[RegField.scala 218:20:freechips.rocketchip.system.DefaultRV32Config.fir@68900.4]
  wire [7:0] _T_514; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68869.4]
  wire [7:0] _GEN_18; // @[RegField.scala 218:20:freechips.rocketchip.system.DefaultRV32Config.fir@68871.4]
  wire [7:0] _GEN_5; // @[RegField.scala 218:20:freechips.rocketchip.system.DefaultRV32Config.fir@68500.4]
  wire [7:0] _GEN_4; // @[RegField.scala 218:20:freechips.rocketchip.system.DefaultRV32Config.fir@68473.4]
  wire [7:0] _GEN_7; // @[RegField.scala 218:20:freechips.rocketchip.system.DefaultRV32Config.fir@68558.4]
  wire [7:0] _GEN_6; // @[RegField.scala 218:20:freechips.rocketchip.system.DefaultRV32Config.fir@68529.4]
  wire [63:0] _T_31; // @[RegField.scala 214:52:freechips.rocketchip.system.DefaultRV32Config.fir@68287.6]
  wire [7:0] _T_33; // @[RegField.scala 211:53:freechips.rocketchip.system.DefaultRV32Config.fir@68291.4]
  wire [7:0] _T_34; // @[RegField.scala 211:53:freechips.rocketchip.system.DefaultRV32Config.fir@68292.4]
  wire [7:0] _T_35; // @[RegField.scala 211:53:freechips.rocketchip.system.DefaultRV32Config.fir@68293.4]
  wire [7:0] _T_36; // @[RegField.scala 211:53:freechips.rocketchip.system.DefaultRV32Config.fir@68294.4]
  wire [7:0] _T_37; // @[RegField.scala 211:53:freechips.rocketchip.system.DefaultRV32Config.fir@68295.4]
  wire [7:0] _T_38; // @[RegField.scala 211:53:freechips.rocketchip.system.DefaultRV32Config.fir@68296.4]
  wire [7:0] _T_39; // @[RegField.scala 211:53:freechips.rocketchip.system.DefaultRV32Config.fir@68297.4]
  wire [7:0] _T_40; // @[RegField.scala 211:53:freechips.rocketchip.system.DefaultRV32Config.fir@68298.4]
  wire  _T_598; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68961.4]
  wire  _T_762; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@69273.4]
  wire  _T_763; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@69274.4]
  wire  _T_269; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68584.4]
  wire  _T_292; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68611.4]
  wire  _T_45; // @[RegField.scala 214:27:freechips.rocketchip.system.DefaultRV32Config.fir@68325.4]
  wire  _T_317; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68640.4]
  wire  _T_46; // @[RegField.scala 214:27:freechips.rocketchip.system.DefaultRV32Config.fir@68326.4]
  wire  _T_342; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68669.4]
  wire  _T_47; // @[RegField.scala 214:27:freechips.rocketchip.system.DefaultRV32Config.fir@68327.4]
  wire  _T_599; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68962.4]
  wire  _T_767; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@69284.4]
  wire  _T_768; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@69285.4]
  wire  _T_367; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68698.4]
  wire  _T_48; // @[RegField.scala 214:27:freechips.rocketchip.system.DefaultRV32Config.fir@68328.4]
  wire  _T_390; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68725.4]
  wire  _T_49; // @[RegField.scala 214:27:freechips.rocketchip.system.DefaultRV32Config.fir@68329.4]
  wire  _T_415; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68754.4]
  wire  _T_50; // @[RegField.scala 214:27:freechips.rocketchip.system.DefaultRV32Config.fir@68330.4]
  wire  _T_440; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68783.4]
  wire  _T_51; // @[RegField.scala 214:27:freechips.rocketchip.system.DefaultRV32Config.fir@68331.4]
  wire [7:0] _GEN_9; // @[RegField.scala 218:20:freechips.rocketchip.system.DefaultRV32Config.fir@68614.4]
  wire [7:0] _GEN_8; // @[RegField.scala 218:20:freechips.rocketchip.system.DefaultRV32Config.fir@68587.4]
  wire [7:0] _GEN_11; // @[RegField.scala 218:20:freechips.rocketchip.system.DefaultRV32Config.fir@68672.4]
  wire [7:0] _GEN_10; // @[RegField.scala 218:20:freechips.rocketchip.system.DefaultRV32Config.fir@68643.4]
  wire [7:0] _GEN_13; // @[RegField.scala 218:20:freechips.rocketchip.system.DefaultRV32Config.fir@68728.4]
  wire [7:0] _GEN_12; // @[RegField.scala 218:20:freechips.rocketchip.system.DefaultRV32Config.fir@68701.4]
  wire [7:0] _GEN_15; // @[RegField.scala 218:20:freechips.rocketchip.system.DefaultRV32Config.fir@68786.4]
  wire [7:0] _GEN_14; // @[RegField.scala 218:20:freechips.rocketchip.system.DefaultRV32Config.fir@68757.4]
  wire [63:0] _T_58; // @[RegField.scala 214:52:freechips.rocketchip.system.DefaultRV32Config.fir@68339.6]
  wire [11:0] _T_62; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@68350.4]
  wire  _T_112; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68408.4]
  wire  _T_585; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68948.4]
  wire  _T_651; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@69058.4]
  wire  _T_652; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@69059.4]
  wire  _T_122; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68418.4]
  wire  _T_124; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68420.4]
  wire [1:0] _T_157; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@68456.4]
  wire [31:0] _T_158; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68457.4]
  wire [31:0] _T_255; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@68570.4]
  wire [31:0] _T_353; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@68684.4]
  wire [31:0] _T_451; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@68798.4]
  wire [31:0] _T_549; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@68912.4]
  wire  _GEN_68; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@69341.4]
  wire  _GEN_53; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@69341.4]
  wire  _GEN_54; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@69341.4]
  wire  _GEN_55; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@69341.4]
  wire  _GEN_56; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@69341.4]
  wire  _GEN_57; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@69341.4]
  wire  _GEN_69; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@69341.4]
  wire  _GEN_58; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@69341.4]
  wire  _GEN_70; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@69341.4]
  wire  _GEN_59; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@69341.4]
  wire [31:0] _GEN_61; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@69353.4]
  wire [31:0] _GEN_62; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@69353.4]
  wire [31:0] _GEN_63; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@69353.4]
  wire [31:0] _GEN_64; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@69353.4]
  wire [31:0] _GEN_65; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@69353.4]
  wire [31:0] _GEN_66; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@69353.4]
  wire [31:0] _GEN_67; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@69353.4]
  TLMonitor_33 TLMonitor ( // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@68199.4]
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
  assign _T_2 = time_ + 64'h1; // @[CLINT.scala 70:38:freechips.rocketchip.system.DefaultRV32Config.fir@68229.6]
  assign _T_6 = timecmp_0[7:0]; // @[RegField.scala 211:53:freechips.rocketchip.system.DefaultRV32Config.fir@68239.4]
  assign _T_7 = timecmp_0[15:8]; // @[RegField.scala 211:53:freechips.rocketchip.system.DefaultRV32Config.fir@68240.4]
  assign _T_8 = timecmp_0[23:16]; // @[RegField.scala 211:53:freechips.rocketchip.system.DefaultRV32Config.fir@68241.4]
  assign _T_9 = timecmp_0[31:24]; // @[RegField.scala 211:53:freechips.rocketchip.system.DefaultRV32Config.fir@68242.4]
  assign _T_10 = timecmp_0[39:32]; // @[RegField.scala 211:53:freechips.rocketchip.system.DefaultRV32Config.fir@68243.4]
  assign _T_11 = timecmp_0[47:40]; // @[RegField.scala 211:53:freechips.rocketchip.system.DefaultRV32Config.fir@68244.4]
  assign _T_12 = timecmp_0[55:48]; // @[RegField.scala 211:53:freechips.rocketchip.system.DefaultRV32Config.fir@68245.4]
  assign _T_13 = timecmp_0[63:56]; // @[RegField.scala 211:53:freechips.rocketchip.system.DefaultRV32Config.fir@68246.4]
  assign _T_60 = auto_in_a_bits_opcode == 3'h4; // @[RegisterRouter.scala 59:36:freechips.rocketchip.system.DefaultRV32Config.fir@68344.4]
  assign _T_61 = auto_in_a_bits_address[25:2]; // @[Edges.scala 193:34:freechips.rocketchip.system.DefaultRV32Config.fir@68346.4]
  assign _T_59_bits_index = _T_61[13:0]; // @[RegisterRouter.scala 58:18:freechips.rocketchip.system.DefaultRV32Config.fir@68342.4 RegisterRouter.scala 60:19:freechips.rocketchip.system.DefaultRV32Config.fir@68347.4]
  assign _T_565 = _T_59_bits_index[13]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68928.4]
  assign _T_564 = _T_59_bits_index[12]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68927.4]
  assign _T_552 = _T_59_bits_index[0]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68915.4]
  assign _T_567 = {_T_565,_T_564,_T_552}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@68930.4]
  assign _T_66 = _T_59_bits_index & 14'hffe; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68358.4]
  assign _T_74 = _T_66 == 14'hffe; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68366.4]
  assign _T_70 = _T_66 == 14'h0; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68362.4]
  assign _T_738 = auto_in_a_valid & auto_in_d_ready; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@69230.4]
  assign _T_739 = _T_60 == 1'h0; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@69231.4]
  assign _T_740 = _T_738 & _T_739; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@69232.4]
  assign _T_593 = 8'h1 << _T_567; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@68956.4]
  assign _T_596 = _T_593[2]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68959.4]
  assign _T_752 = _T_740 & _T_596; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@69251.4]
  assign _T_753 = _T_752 & _T_70; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@69252.4]
  assign _T_100 = auto_in_a_bits_mask[3]; // @[Bitwise.scala 26:51:freechips.rocketchip.system.DefaultRV32Config.fir@68396.4]
  assign _T_108 = _T_100 ? 8'hff : 8'h0; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@68404.4]
  assign _T_99 = auto_in_a_bits_mask[2]; // @[Bitwise.scala 26:51:freechips.rocketchip.system.DefaultRV32Config.fir@68395.4]
  assign _T_106 = _T_99 ? 8'hff : 8'h0; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@68402.4]
  assign _T_98 = auto_in_a_bits_mask[1]; // @[Bitwise.scala 26:51:freechips.rocketchip.system.DefaultRV32Config.fir@68394.4]
  assign _T_104 = _T_98 ? 8'hff : 8'h0; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@68400.4]
  assign _T_97 = auto_in_a_bits_mask[0]; // @[Bitwise.scala 26:51:freechips.rocketchip.system.DefaultRV32Config.fir@68393.4]
  assign _T_102 = _T_97 ? 8'hff : 8'h0; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@68398.4]
  assign _T_111 = {_T_108,_T_106,_T_104,_T_102}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@68407.4]
  assign _T_460 = _T_111[7:0]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68807.4]
  assign _T_461 = _T_460 == 8'hff; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68808.4]
  assign _T_465 = _T_753 & _T_461; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68812.4]
  assign _T_483 = _T_111[15:8]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68834.4]
  assign _T_484 = _T_483 == 8'hff; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68835.4]
  assign _T_488 = _T_753 & _T_484; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68839.4]
  assign _T_18 = _T_465 | _T_488; // @[RegField.scala 214:27:freechips.rocketchip.system.DefaultRV32Config.fir@68273.4]
  assign _T_508 = _T_111[23:16]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68863.4]
  assign _T_509 = _T_508 == 8'hff; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68864.4]
  assign _T_513 = _T_753 & _T_509; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68868.4]
  assign _T_19 = _T_18 | _T_513; // @[RegField.scala 214:27:freechips.rocketchip.system.DefaultRV32Config.fir@68274.4]
  assign _T_533 = _T_111[31:24]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68892.4]
  assign _T_534 = _T_533 == 8'hff; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68893.4]
  assign _T_538 = _T_753 & _T_534; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68897.4]
  assign _T_20 = _T_19 | _T_538; // @[RegField.scala 214:27:freechips.rocketchip.system.DefaultRV32Config.fir@68275.4]
  assign _T_597 = _T_593[3]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68960.4]
  assign _T_757 = _T_740 & _T_597; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@69262.4]
  assign _T_758 = _T_757 & _T_70; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@69263.4]
  assign _T_171 = _T_758 & _T_461; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68470.4]
  assign _T_21 = _T_20 | _T_171; // @[RegField.scala 214:27:freechips.rocketchip.system.DefaultRV32Config.fir@68276.4]
  assign _T_194 = _T_758 & _T_484; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68497.4]
  assign _T_22 = _T_21 | _T_194; // @[RegField.scala 214:27:freechips.rocketchip.system.DefaultRV32Config.fir@68277.4]
  assign _T_219 = _T_758 & _T_509; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68526.4]
  assign _T_23 = _T_22 | _T_219; // @[RegField.scala 214:27:freechips.rocketchip.system.DefaultRV32Config.fir@68278.4]
  assign _T_244 = _T_758 & _T_534; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68555.4]
  assign _T_24 = _T_23 | _T_244; // @[RegField.scala 214:27:freechips.rocketchip.system.DefaultRV32Config.fir@68279.4]
  assign _T_489 = auto_in_a_bits_data[15:8]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68840.4]
  assign _GEN_17 = _T_488 ? _T_489 : _T_7; // @[RegField.scala 218:20:freechips.rocketchip.system.DefaultRV32Config.fir@68842.4]
  assign _T_466 = auto_in_a_bits_data[7:0]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68813.4]
  assign _GEN_16 = _T_465 ? _T_466 : _T_6; // @[RegField.scala 218:20:freechips.rocketchip.system.DefaultRV32Config.fir@68815.4]
  assign _T_539 = auto_in_a_bits_data[31:24]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68898.4]
  assign _GEN_19 = _T_538 ? _T_539 : _T_9; // @[RegField.scala 218:20:freechips.rocketchip.system.DefaultRV32Config.fir@68900.4]
  assign _T_514 = auto_in_a_bits_data[23:16]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68869.4]
  assign _GEN_18 = _T_513 ? _T_514 : _T_8; // @[RegField.scala 218:20:freechips.rocketchip.system.DefaultRV32Config.fir@68871.4]
  assign _GEN_5 = _T_194 ? _T_489 : _T_11; // @[RegField.scala 218:20:freechips.rocketchip.system.DefaultRV32Config.fir@68500.4]
  assign _GEN_4 = _T_171 ? _T_466 : _T_10; // @[RegField.scala 218:20:freechips.rocketchip.system.DefaultRV32Config.fir@68473.4]
  assign _GEN_7 = _T_244 ? _T_539 : _T_13; // @[RegField.scala 218:20:freechips.rocketchip.system.DefaultRV32Config.fir@68558.4]
  assign _GEN_6 = _T_219 ? _T_514 : _T_12; // @[RegField.scala 218:20:freechips.rocketchip.system.DefaultRV32Config.fir@68529.4]
  assign _T_31 = {_GEN_7,_GEN_6,_GEN_5,_GEN_4,_GEN_19,_GEN_18,_GEN_17,_GEN_16}; // @[RegField.scala 214:52:freechips.rocketchip.system.DefaultRV32Config.fir@68287.6]
  assign _T_33 = time_[7:0]; // @[RegField.scala 211:53:freechips.rocketchip.system.DefaultRV32Config.fir@68291.4]
  assign _T_34 = time_[15:8]; // @[RegField.scala 211:53:freechips.rocketchip.system.DefaultRV32Config.fir@68292.4]
  assign _T_35 = time_[23:16]; // @[RegField.scala 211:53:freechips.rocketchip.system.DefaultRV32Config.fir@68293.4]
  assign _T_36 = time_[31:24]; // @[RegField.scala 211:53:freechips.rocketchip.system.DefaultRV32Config.fir@68294.4]
  assign _T_37 = time_[39:32]; // @[RegField.scala 211:53:freechips.rocketchip.system.DefaultRV32Config.fir@68295.4]
  assign _T_38 = time_[47:40]; // @[RegField.scala 211:53:freechips.rocketchip.system.DefaultRV32Config.fir@68296.4]
  assign _T_39 = time_[55:48]; // @[RegField.scala 211:53:freechips.rocketchip.system.DefaultRV32Config.fir@68297.4]
  assign _T_40 = time_[63:56]; // @[RegField.scala 211:53:freechips.rocketchip.system.DefaultRV32Config.fir@68298.4]
  assign _T_598 = _T_593[4]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68961.4]
  assign _T_762 = _T_740 & _T_598; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@69273.4]
  assign _T_763 = _T_762 & _T_74; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@69274.4]
  assign _T_269 = _T_763 & _T_461; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68584.4]
  assign _T_292 = _T_763 & _T_484; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68611.4]
  assign _T_45 = _T_269 | _T_292; // @[RegField.scala 214:27:freechips.rocketchip.system.DefaultRV32Config.fir@68325.4]
  assign _T_317 = _T_763 & _T_509; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68640.4]
  assign _T_46 = _T_45 | _T_317; // @[RegField.scala 214:27:freechips.rocketchip.system.DefaultRV32Config.fir@68326.4]
  assign _T_342 = _T_763 & _T_534; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68669.4]
  assign _T_47 = _T_46 | _T_342; // @[RegField.scala 214:27:freechips.rocketchip.system.DefaultRV32Config.fir@68327.4]
  assign _T_599 = _T_593[5]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68962.4]
  assign _T_767 = _T_740 & _T_599; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@69284.4]
  assign _T_768 = _T_767 & _T_74; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@69285.4]
  assign _T_367 = _T_768 & _T_461; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68698.4]
  assign _T_48 = _T_47 | _T_367; // @[RegField.scala 214:27:freechips.rocketchip.system.DefaultRV32Config.fir@68328.4]
  assign _T_390 = _T_768 & _T_484; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68725.4]
  assign _T_49 = _T_48 | _T_390; // @[RegField.scala 214:27:freechips.rocketchip.system.DefaultRV32Config.fir@68329.4]
  assign _T_415 = _T_768 & _T_509; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68754.4]
  assign _T_50 = _T_49 | _T_415; // @[RegField.scala 214:27:freechips.rocketchip.system.DefaultRV32Config.fir@68330.4]
  assign _T_440 = _T_768 & _T_534; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68783.4]
  assign _T_51 = _T_50 | _T_440; // @[RegField.scala 214:27:freechips.rocketchip.system.DefaultRV32Config.fir@68331.4]
  assign _GEN_9 = _T_292 ? _T_489 : _T_34; // @[RegField.scala 218:20:freechips.rocketchip.system.DefaultRV32Config.fir@68614.4]
  assign _GEN_8 = _T_269 ? _T_466 : _T_33; // @[RegField.scala 218:20:freechips.rocketchip.system.DefaultRV32Config.fir@68587.4]
  assign _GEN_11 = _T_342 ? _T_539 : _T_36; // @[RegField.scala 218:20:freechips.rocketchip.system.DefaultRV32Config.fir@68672.4]
  assign _GEN_10 = _T_317 ? _T_514 : _T_35; // @[RegField.scala 218:20:freechips.rocketchip.system.DefaultRV32Config.fir@68643.4]
  assign _GEN_13 = _T_390 ? _T_489 : _T_38; // @[RegField.scala 218:20:freechips.rocketchip.system.DefaultRV32Config.fir@68728.4]
  assign _GEN_12 = _T_367 ? _T_466 : _T_37; // @[RegField.scala 218:20:freechips.rocketchip.system.DefaultRV32Config.fir@68701.4]
  assign _GEN_15 = _T_440 ? _T_539 : _T_40; // @[RegField.scala 218:20:freechips.rocketchip.system.DefaultRV32Config.fir@68786.4]
  assign _GEN_14 = _T_415 ? _T_514 : _T_39; // @[RegField.scala 218:20:freechips.rocketchip.system.DefaultRV32Config.fir@68757.4]
  assign _T_58 = {_GEN_15,_GEN_14,_GEN_13,_GEN_12,_GEN_11,_GEN_10,_GEN_9,_GEN_8}; // @[RegField.scala 214:52:freechips.rocketchip.system.DefaultRV32Config.fir@68339.6]
  assign _T_62 = {auto_in_a_bits_source,auto_in_a_bits_size}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@68350.4]
  assign _T_112 = _T_111[0]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68408.4]
  assign _T_585 = _T_593[0]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68948.4]
  assign _T_651 = _T_740 & _T_585; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@69058.4]
  assign _T_652 = _T_651 & _T_70; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@69059.4]
  assign _T_122 = _T_652 & _T_112; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68418.4]
  assign _T_124 = auto_in_a_bits_data[0]; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68420.4]
  assign _T_157 = {1'h0,ipi_0}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@68456.4]
  assign _T_158 = {{30'd0}, _T_157}; // @[RegisterRouter.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@68457.4]
  assign _T_255 = {_T_13,_T_12,_T_11,_T_10}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@68570.4]
  assign _T_353 = {_T_36,_T_35,_T_34,_T_33}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@68684.4]
  assign _T_451 = {_T_40,_T_39,_T_38,_T_37}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@68798.4]
  assign _T_549 = {_T_9,_T_8,_T_7,_T_6}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@68912.4]
  assign _GEN_68 = 3'h1 == _T_567; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@69341.4]
  assign _GEN_53 = _GEN_68 | _T_70; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@69341.4]
  assign _GEN_54 = 3'h2 == _T_567 ? _T_70 : _GEN_53; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@69341.4]
  assign _GEN_55 = 3'h3 == _T_567 ? _T_70 : _GEN_54; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@69341.4]
  assign _GEN_56 = 3'h4 == _T_567 ? _T_74 : _GEN_55; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@69341.4]
  assign _GEN_57 = 3'h5 == _T_567 ? _T_74 : _GEN_56; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@69341.4]
  assign _GEN_69 = 3'h6 == _T_567; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@69341.4]
  assign _GEN_58 = _GEN_69 | _GEN_57; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@69341.4]
  assign _GEN_70 = 3'h7 == _T_567; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@69341.4]
  assign _GEN_59 = _GEN_70 | _GEN_58; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@69341.4]
  assign _GEN_61 = 3'h1 == _T_567 ? 32'h0 : _T_158; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@69353.4]
  assign _GEN_62 = 3'h2 == _T_567 ? _T_549 : _GEN_61; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@69353.4]
  assign _GEN_63 = 3'h3 == _T_567 ? _T_255 : _GEN_62; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@69353.4]
  assign _GEN_64 = 3'h4 == _T_567 ? _T_353 : _GEN_63; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@69353.4]
  assign _GEN_65 = 3'h5 == _T_567 ? _T_451 : _GEN_64; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@69353.4]
  assign _GEN_66 = 3'h6 == _T_567 ? 32'h0 : _GEN_65; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@69353.4]
  assign _GEN_67 = 3'h7 == _T_567 ? 32'h0 : _GEN_66; // @[MuxLiteral.scala 48:10:freechips.rocketchip.system.DefaultRV32Config.fir@69353.4]
  assign auto_int_out_0 = ipi_0; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@68225.4]
  assign auto_int_out_1 = time_ >= timecmp_0; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@68225.4]
  assign auto_in_a_ready = auto_in_d_ready; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@68224.4]
  assign auto_in_d_valid = auto_in_a_valid; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@68224.4]
  assign auto_in_d_bits_opcode = {{2'd0}, _T_60}; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@68224.4]
  assign auto_in_d_bits_size = _T_62[1:0]; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@68224.4]
  assign auto_in_d_bits_source = _T_62[11:2]; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@68224.4]
  assign auto_in_d_bits_data = _GEN_59 ? _GEN_67 : 32'h0; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@68224.4]
  assign TLMonitor_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@68200.4]
  assign TLMonitor_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@68201.4]
  assign TLMonitor_io_in_a_ready = auto_in_d_ready; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@68221.4]
  assign TLMonitor_io_in_a_valid = auto_in_a_valid; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@68220.4]
  assign TLMonitor_io_in_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@68219.4]
  assign TLMonitor_io_in_a_bits_param = auto_in_a_bits_param; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@68218.4]
  assign TLMonitor_io_in_a_bits_size = auto_in_a_bits_size; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@68217.4]
  assign TLMonitor_io_in_a_bits_source = auto_in_a_bits_source; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@68216.4]
  assign TLMonitor_io_in_a_bits_address = auto_in_a_bits_address; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@68215.4]
  assign TLMonitor_io_in_a_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@68214.4]
  assign TLMonitor_io_in_a_bits_corrupt = auto_in_a_bits_corrupt; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@68212.4]
  assign TLMonitor_io_in_d_ready = auto_in_d_ready; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@68211.4]
  assign TLMonitor_io_in_d_valid = auto_in_a_valid; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@68210.4]
  assign TLMonitor_io_in_d_bits_opcode = {{2'd0}, _T_60}; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@68209.4]
  assign TLMonitor_io_in_d_bits_size = _T_62[1:0]; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@68207.4]
  assign TLMonitor_io_in_d_bits_source = _T_62[11:2]; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@68206.4]
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
  _RAND_0 = {2{`RANDOM}};
  time_ = _RAND_0[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {2{`RANDOM}};
  timecmp_0 = _RAND_1[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  ipi_0 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge clock) begin
    if (reset) begin
      time_ <= 64'h0;
    end else begin
      if (_T_51) begin
        time_ <= _T_58;
      end else begin
        if (io_rtcTick) begin
          time_ <= _T_2;
        end
      end
    end
    if (_T_24) begin
      timecmp_0 <= _T_31;
    end
    if (reset) begin
      ipi_0 <= 1'h0;
    end else begin
      if (_T_122) begin
        ipi_0 <= _T_124;
      end
    end
  end
endmodule
`endif // __CLINT

