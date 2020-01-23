`include "include_module.v"
`ifdef __RoundAnyRawFNToRecFN
module RoundAnyRawFNToRecFN(
  input         io_invalidExc,
  input         io_infiniteExc,
  input         io_in_isNaN,
  input         io_in_isInf,
  input         io_in_isZero,
  input         io_in_sign,
  input  [9:0]  io_in_sExp,
  input  [26:0] io_in_sig,
  input  [2:0]  io_roundingMode,
  input         io_detectTininess,
  output [32:0] io_out,
  output [4:0]  io_exceptionFlags
);

  wire  roundingMode_near_even; // @[RoundAnyRawFNToRecFN.scala 88:53:freechips.rocketchip.system.DefaultRV32Config.fir@142212.4]
  wire  roundingMode_min; // @[RoundAnyRawFNToRecFN.scala 90:53:freechips.rocketchip.system.DefaultRV32Config.fir@142214.4]
  wire  roundingMode_max; // @[RoundAnyRawFNToRecFN.scala 91:53:freechips.rocketchip.system.DefaultRV32Config.fir@142215.4]
  wire  roundingMode_near_maxMag; // @[RoundAnyRawFNToRecFN.scala 92:53:freechips.rocketchip.system.DefaultRV32Config.fir@142216.4]
  wire  roundingMode_odd; // @[RoundAnyRawFNToRecFN.scala 93:53:freechips.rocketchip.system.DefaultRV32Config.fir@142217.4]
  wire  _T; // @[RoundAnyRawFNToRecFN.scala 96:27:freechips.rocketchip.system.DefaultRV32Config.fir@142218.4]
  wire  _T_1; // @[RoundAnyRawFNToRecFN.scala 96:66:freechips.rocketchip.system.DefaultRV32Config.fir@142219.4]
  wire  _T_2; // @[RoundAnyRawFNToRecFN.scala 96:63:freechips.rocketchip.system.DefaultRV32Config.fir@142220.4]
  wire  roundMagUp; // @[RoundAnyRawFNToRecFN.scala 96:42:freechips.rocketchip.system.DefaultRV32Config.fir@142221.4]
  wire  doShiftSigDown1; // @[RoundAnyRawFNToRecFN.scala 118:61:freechips.rocketchip.system.DefaultRV32Config.fir@142223.4]
  wire [8:0] _T_3; // @[RoundAnyRawFNToRecFN.scala 154:37:freechips.rocketchip.system.DefaultRV32Config.fir@142236.4]
  wire  _T_5; // @[primitives.scala 57:25:freechips.rocketchip.system.DefaultRV32Config.fir@142238.4]
  wire [7:0] _T_6; // @[primitives.scala 58:26:freechips.rocketchip.system.DefaultRV32Config.fir@142239.4]
  wire  _T_7; // @[primitives.scala 57:25:freechips.rocketchip.system.DefaultRV32Config.fir@142240.4]
  wire [6:0] _T_8; // @[primitives.scala 58:26:freechips.rocketchip.system.DefaultRV32Config.fir@142241.4]
  wire  _T_9; // @[primitives.scala 57:25:freechips.rocketchip.system.DefaultRV32Config.fir@142242.4]
  wire [5:0] _T_10; // @[primitives.scala 58:26:freechips.rocketchip.system.DefaultRV32Config.fir@142243.4]
  wire [15:0] _T_13; // @[Bitwise.scala 108:18:freechips.rocketchip.system.DefaultRV32Config.fir@142246.4]
  wire [7:0] _T_16; // @[Bitwise.scala 102:21:freechips.rocketchip.system.DefaultRV32Config.fir@142249.4]
  wire [15:0] _T_17; // @[Bitwise.scala 102:31:freechips.rocketchip.system.DefaultRV32Config.fir@142250.4]
  wire [7:0] _T_18; // @[Bitwise.scala 102:46:freechips.rocketchip.system.DefaultRV32Config.fir@142251.4]
  wire [15:0] _T_19; // @[Bitwise.scala 102:65:freechips.rocketchip.system.DefaultRV32Config.fir@142252.4]
  wire [15:0] _T_21; // @[Bitwise.scala 102:75:freechips.rocketchip.system.DefaultRV32Config.fir@142254.4]
  wire [11:0] _T_26; // @[Bitwise.scala 102:21:freechips.rocketchip.system.DefaultRV32Config.fir@142259.4]
  wire [15:0] _GEN_0; // @[Bitwise.scala 102:31:freechips.rocketchip.system.DefaultRV32Config.fir@142260.4]
  wire [15:0] _T_27; // @[Bitwise.scala 102:31:freechips.rocketchip.system.DefaultRV32Config.fir@142260.4]
  wire [11:0] _T_28; // @[Bitwise.scala 102:46:freechips.rocketchip.system.DefaultRV32Config.fir@142261.4]
  wire [15:0] _T_29; // @[Bitwise.scala 102:65:freechips.rocketchip.system.DefaultRV32Config.fir@142262.4]
  wire [15:0] _T_31; // @[Bitwise.scala 102:75:freechips.rocketchip.system.DefaultRV32Config.fir@142264.4]
  wire [13:0] _T_36; // @[Bitwise.scala 102:21:freechips.rocketchip.system.DefaultRV32Config.fir@142269.4]
  wire [15:0] _GEN_1; // @[Bitwise.scala 102:31:freechips.rocketchip.system.DefaultRV32Config.fir@142270.4]
  wire [15:0] _T_37; // @[Bitwise.scala 102:31:freechips.rocketchip.system.DefaultRV32Config.fir@142270.4]
  wire [13:0] _T_38; // @[Bitwise.scala 102:46:freechips.rocketchip.system.DefaultRV32Config.fir@142271.4]
  wire [15:0] _T_39; // @[Bitwise.scala 102:65:freechips.rocketchip.system.DefaultRV32Config.fir@142272.4]
  wire [15:0] _T_41; // @[Bitwise.scala 102:75:freechips.rocketchip.system.DefaultRV32Config.fir@142274.4]
  wire [14:0] _T_46; // @[Bitwise.scala 102:21:freechips.rocketchip.system.DefaultRV32Config.fir@142279.4]
  wire [15:0] _GEN_2; // @[Bitwise.scala 102:31:freechips.rocketchip.system.DefaultRV32Config.fir@142280.4]
  wire [15:0] _T_47; // @[Bitwise.scala 102:31:freechips.rocketchip.system.DefaultRV32Config.fir@142280.4]
  wire [14:0] _T_48; // @[Bitwise.scala 102:46:freechips.rocketchip.system.DefaultRV32Config.fir@142281.4]
  wire [15:0] _T_49; // @[Bitwise.scala 102:65:freechips.rocketchip.system.DefaultRV32Config.fir@142282.4]
  wire [15:0] _T_51; // @[Bitwise.scala 102:75:freechips.rocketchip.system.DefaultRV32Config.fir@142284.4]
  wire [5:0] _T_53; // @[Bitwise.scala 108:44:freechips.rocketchip.system.DefaultRV32Config.fir@142286.4]
  wire [3:0] _T_54; // @[Bitwise.scala 108:18:freechips.rocketchip.system.DefaultRV32Config.fir@142287.4]
  wire [1:0] _T_55; // @[Bitwise.scala 108:18:freechips.rocketchip.system.DefaultRV32Config.fir@142288.4]
  wire  _T_56; // @[Bitwise.scala 108:18:freechips.rocketchip.system.DefaultRV32Config.fir@142289.4]
  wire  _T_57; // @[Bitwise.scala 108:44:freechips.rocketchip.system.DefaultRV32Config.fir@142290.4]
  wire [1:0] _T_59; // @[Bitwise.scala 108:44:freechips.rocketchip.system.DefaultRV32Config.fir@142292.4]
  wire  _T_60; // @[Bitwise.scala 108:18:freechips.rocketchip.system.DefaultRV32Config.fir@142293.4]
  wire  _T_61; // @[Bitwise.scala 108:44:freechips.rocketchip.system.DefaultRV32Config.fir@142294.4]
  wire [1:0] _T_64; // @[Bitwise.scala 108:44:freechips.rocketchip.system.DefaultRV32Config.fir@142297.4]
  wire  _T_65; // @[Bitwise.scala 108:18:freechips.rocketchip.system.DefaultRV32Config.fir@142298.4]
  wire  _T_66; // @[Bitwise.scala 108:44:freechips.rocketchip.system.DefaultRV32Config.fir@142299.4]
  wire [21:0] _T_70; // @[primitives.scala 74:36:freechips.rocketchip.system.DefaultRV32Config.fir@142303.4]
  wire [21:0] _T_72; // @[primitives.scala 74:17:freechips.rocketchip.system.DefaultRV32Config.fir@142305.4]
  wire [24:0] _T_73; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@142306.4]
  wire [2:0] _T_77; // @[primitives.scala 79:22:freechips.rocketchip.system.DefaultRV32Config.fir@142310.4]
  wire [1:0] _T_78; // @[Bitwise.scala 108:18:freechips.rocketchip.system.DefaultRV32Config.fir@142311.4]
  wire  _T_79; // @[Bitwise.scala 108:18:freechips.rocketchip.system.DefaultRV32Config.fir@142312.4]
  wire  _T_80; // @[Bitwise.scala 108:44:freechips.rocketchip.system.DefaultRV32Config.fir@142313.4]
  wire  _T_82; // @[Bitwise.scala 108:44:freechips.rocketchip.system.DefaultRV32Config.fir@142315.4]
  wire [2:0] _T_83; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@142316.4]
  wire [24:0] _GEN_3; // @[RoundAnyRawFNToRecFN.scala 157:23:freechips.rocketchip.system.DefaultRV32Config.fir@142320.4]
  wire [24:0] _T_87; // @[RoundAnyRawFNToRecFN.scala 157:23:freechips.rocketchip.system.DefaultRV32Config.fir@142320.4]
  wire [25:0] _T_89; // @[RoundAnyRawFNToRecFN.scala 160:57:freechips.rocketchip.system.DefaultRV32Config.fir@142322.4]
  wire [26:0] _T_90; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@142323.4]
  wire [26:0] _T_91; // @[RoundAnyRawFNToRecFN.scala 161:28:freechips.rocketchip.system.DefaultRV32Config.fir@142324.4]
  wire  _T_94; // @[RoundAnyRawFNToRecFN.scala 162:56:freechips.rocketchip.system.DefaultRV32Config.fir@142327.4]
  wire  _T_96; // @[RoundAnyRawFNToRecFN.scala 163:62:freechips.rocketchip.system.DefaultRV32Config.fir@142329.4]
  wire  _T_98; // @[RoundAnyRawFNToRecFN.scala 167:38:freechips.rocketchip.system.DefaultRV32Config.fir@142331.4]
  wire  _T_99; // @[RoundAnyRawFNToRecFN.scala 167:67:freechips.rocketchip.system.DefaultRV32Config.fir@142332.4]
  wire  _T_100; // @[RoundAnyRawFNToRecFN.scala 169:29:freechips.rocketchip.system.DefaultRV32Config.fir@142333.4]
  wire  _T_101; // @[RoundAnyRawFNToRecFN.scala 168:31:freechips.rocketchip.system.DefaultRV32Config.fir@142334.4]
  wire [24:0] _T_103; // @[RoundAnyRawFNToRecFN.scala 172:44:freechips.rocketchip.system.DefaultRV32Config.fir@142336.4]
  wire  _T_105; // @[RoundAnyRawFNToRecFN.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@142338.4]
  wire  _T_106; // @[RoundAnyRawFNToRecFN.scala 174:30:freechips.rocketchip.system.DefaultRV32Config.fir@142339.4]
  wire  _T_107; // @[RoundAnyRawFNToRecFN.scala 173:64:freechips.rocketchip.system.DefaultRV32Config.fir@142340.4]
  wire [25:0] _T_110; // @[RoundAnyRawFNToRecFN.scala 173:21:freechips.rocketchip.system.DefaultRV32Config.fir@142343.4]
  wire [26:0] _T_112; // @[RoundAnyRawFNToRecFN.scala 178:32:freechips.rocketchip.system.DefaultRV32Config.fir@142345.4]
  wire [24:0] _T_114; // @[RoundAnyRawFNToRecFN.scala 178:43:freechips.rocketchip.system.DefaultRV32Config.fir@142347.4]
  wire  _T_115; // @[RoundAnyRawFNToRecFN.scala 179:42:freechips.rocketchip.system.DefaultRV32Config.fir@142348.4]
  wire [25:0] _T_116; // @[RoundAnyRawFNToRecFN.scala 179:67:freechips.rocketchip.system.DefaultRV32Config.fir@142349.4]
  wire [25:0] _GEN_4; // @[RoundAnyRawFNToRecFN.scala 178:47:freechips.rocketchip.system.DefaultRV32Config.fir@142351.4]
  wire [1:0] _T_120; // @[RoundAnyRawFNToRecFN.scala 183:54:freechips.rocketchip.system.DefaultRV32Config.fir@142353.4]
  wire [2:0] _T_121; // @[RoundAnyRawFNToRecFN.scala 183:69:freechips.rocketchip.system.DefaultRV32Config.fir@142354.4]
  wire [9:0] _GEN_5; // @[RoundAnyRawFNToRecFN.scala 183:40:freechips.rocketchip.system.DefaultRV32Config.fir@142355.4]
  wire [8:0] common_expOut; // @[RoundAnyRawFNToRecFN.scala 185:37:freechips.rocketchip.system.DefaultRV32Config.fir@142356.4]
  wire [22:0] _T_124; // @[RoundAnyRawFNToRecFN.scala 188:27:freechips.rocketchip.system.DefaultRV32Config.fir@142358.4]
  wire [22:0] _T_125; // @[RoundAnyRawFNToRecFN.scala 189:27:freechips.rocketchip.system.DefaultRV32Config.fir@142359.4]
  wire [22:0] common_fractOut; // @[RoundAnyRawFNToRecFN.scala 187:16:freechips.rocketchip.system.DefaultRV32Config.fir@142360.4]
  wire [3:0] _T_127; // @[RoundAnyRawFNToRecFN.scala 194:30:freechips.rocketchip.system.DefaultRV32Config.fir@142362.4]
  wire  common_overflow; // @[RoundAnyRawFNToRecFN.scala 194:50:freechips.rocketchip.system.DefaultRV32Config.fir@142363.4]
  wire  common_totalUnderflow; // @[RoundAnyRawFNToRecFN.scala 198:31:freechips.rocketchip.system.DefaultRV32Config.fir@142365.4]
  wire  _T_130; // @[RoundAnyRawFNToRecFN.scala 201:45:freechips.rocketchip.system.DefaultRV32Config.fir@142367.4]
  wire  _T_131; // @[RoundAnyRawFNToRecFN.scala 201:61:freechips.rocketchip.system.DefaultRV32Config.fir@142368.4]
  wire  _T_134; // @[RoundAnyRawFNToRecFN.scala 203:30:freechips.rocketchip.system.DefaultRV32Config.fir@142371.4]
  wire [1:0] _T_135; // @[RoundAnyRawFNToRecFN.scala 203:63:freechips.rocketchip.system.DefaultRV32Config.fir@142372.4]
  wire  _T_136; // @[RoundAnyRawFNToRecFN.scala 203:70:freechips.rocketchip.system.DefaultRV32Config.fir@142373.4]
  wire  _T_137; // @[RoundAnyRawFNToRecFN.scala 203:49:freechips.rocketchip.system.DefaultRV32Config.fir@142374.4]
  wire  _T_139; // @[RoundAnyRawFNToRecFN.scala 205:67:freechips.rocketchip.system.DefaultRV32Config.fir@142376.4]
  wire  _T_140; // @[RoundAnyRawFNToRecFN.scala 207:29:freechips.rocketchip.system.DefaultRV32Config.fir@142377.4]
  wire  _T_142; // @[RoundAnyRawFNToRecFN.scala 210:27:freechips.rocketchip.system.DefaultRV32Config.fir@142379.4]
  wire  _T_143; // @[RoundAnyRawFNToRecFN.scala 211:27:freechips.rocketchip.system.DefaultRV32Config.fir@142380.4]
  wire [1:0] _T_145; // @[RoundAnyRawFNToRecFN.scala 218:48:freechips.rocketchip.system.DefaultRV32Config.fir@142382.4]
  wire  _T_147; // @[RoundAnyRawFNToRecFN.scala 218:32:freechips.rocketchip.system.DefaultRV32Config.fir@142384.4]
  wire  _T_148; // @[RoundAnyRawFNToRecFN.scala 219:57:freechips.rocketchip.system.DefaultRV32Config.fir@142385.4]
  wire  _T_149; // @[RoundAnyRawFNToRecFN.scala 219:71:freechips.rocketchip.system.DefaultRV32Config.fir@142386.4]
  wire  _T_151; // @[RoundAnyRawFNToRecFN.scala 218:74:freechips.rocketchip.system.DefaultRV32Config.fir@142388.4]
  wire  _T_153; // @[RoundAnyRawFNToRecFN.scala 222:49:freechips.rocketchip.system.DefaultRV32Config.fir@142390.4]
  wire  _T_156; // @[RoundAnyRawFNToRecFN.scala 221:34:freechips.rocketchip.system.DefaultRV32Config.fir@142393.4]
  wire  _T_157; // @[RoundAnyRawFNToRecFN.scala 220:77:freechips.rocketchip.system.DefaultRV32Config.fir@142394.4]
  wire  _T_158; // @[RoundAnyRawFNToRecFN.scala 224:38:freechips.rocketchip.system.DefaultRV32Config.fir@142395.4]
  wire  _T_159; // @[RoundAnyRawFNToRecFN.scala 225:45:freechips.rocketchip.system.DefaultRV32Config.fir@142396.4]
  wire  _T_161; // @[RoundAnyRawFNToRecFN.scala 220:27:freechips.rocketchip.system.DefaultRV32Config.fir@142398.4]
  wire  _T_162; // @[RoundAnyRawFNToRecFN.scala 219:76:freechips.rocketchip.system.DefaultRV32Config.fir@142399.4]
  wire  common_underflow; // @[RoundAnyRawFNToRecFN.scala 215:40:freechips.rocketchip.system.DefaultRV32Config.fir@142400.4]
  wire  common_inexact; // @[RoundAnyRawFNToRecFN.scala 228:49:freechips.rocketchip.system.DefaultRV32Config.fir@142402.4]
  wire  isNaNOut; // @[RoundAnyRawFNToRecFN.scala 233:34:freechips.rocketchip.system.DefaultRV32Config.fir@142404.4]
  wire  notNaN_isSpecialInfOut; // @[RoundAnyRawFNToRecFN.scala 234:49:freechips.rocketchip.system.DefaultRV32Config.fir@142405.4]
  wire  _T_165; // @[RoundAnyRawFNToRecFN.scala 235:22:freechips.rocketchip.system.DefaultRV32Config.fir@142406.4]
  wire  _T_166; // @[RoundAnyRawFNToRecFN.scala 235:36:freechips.rocketchip.system.DefaultRV32Config.fir@142407.4]
  wire  _T_167; // @[RoundAnyRawFNToRecFN.scala 235:33:freechips.rocketchip.system.DefaultRV32Config.fir@142408.4]
  wire  _T_168; // @[RoundAnyRawFNToRecFN.scala 235:64:freechips.rocketchip.system.DefaultRV32Config.fir@142409.4]
  wire  commonCase; // @[RoundAnyRawFNToRecFN.scala 235:61:freechips.rocketchip.system.DefaultRV32Config.fir@142410.4]
  wire  overflow; // @[RoundAnyRawFNToRecFN.scala 236:32:freechips.rocketchip.system.DefaultRV32Config.fir@142411.4]
  wire  underflow; // @[RoundAnyRawFNToRecFN.scala 237:32:freechips.rocketchip.system.DefaultRV32Config.fir@142412.4]
  wire  _T_169; // @[RoundAnyRawFNToRecFN.scala 238:43:freechips.rocketchip.system.DefaultRV32Config.fir@142413.4]
  wire  inexact; // @[RoundAnyRawFNToRecFN.scala 238:28:freechips.rocketchip.system.DefaultRV32Config.fir@142414.4]
  wire  overflow_roundMagUp; // @[RoundAnyRawFNToRecFN.scala 241:60:freechips.rocketchip.system.DefaultRV32Config.fir@142416.4]
  wire  _T_171; // @[RoundAnyRawFNToRecFN.scala 243:20:freechips.rocketchip.system.DefaultRV32Config.fir@142417.4]
  wire  _T_172; // @[RoundAnyRawFNToRecFN.scala 243:60:freechips.rocketchip.system.DefaultRV32Config.fir@142418.4]
  wire  pegMinNonzeroMagOut; // @[RoundAnyRawFNToRecFN.scala 243:45:freechips.rocketchip.system.DefaultRV32Config.fir@142419.4]
  wire  _T_173; // @[RoundAnyRawFNToRecFN.scala 244:42:freechips.rocketchip.system.DefaultRV32Config.fir@142420.4]
  wire  pegMaxFiniteMagOut; // @[RoundAnyRawFNToRecFN.scala 244:39:freechips.rocketchip.system.DefaultRV32Config.fir@142421.4]
  wire  _T_174; // @[RoundAnyRawFNToRecFN.scala 246:45:freechips.rocketchip.system.DefaultRV32Config.fir@142422.4]
  wire  notNaN_isInfOut; // @[RoundAnyRawFNToRecFN.scala 246:32:freechips.rocketchip.system.DefaultRV32Config.fir@142423.4]
  wire  signOut; // @[RoundAnyRawFNToRecFN.scala 248:22:freechips.rocketchip.system.DefaultRV32Config.fir@142424.4]
  wire  _T_175; // @[RoundAnyRawFNToRecFN.scala 251:32:freechips.rocketchip.system.DefaultRV32Config.fir@142425.4]
  wire [8:0] _T_176; // @[RoundAnyRawFNToRecFN.scala 251:18:freechips.rocketchip.system.DefaultRV32Config.fir@142426.4]
  wire [8:0] _T_177; // @[RoundAnyRawFNToRecFN.scala 251:14:freechips.rocketchip.system.DefaultRV32Config.fir@142427.4]
  wire [8:0] _T_178; // @[RoundAnyRawFNToRecFN.scala 250:24:freechips.rocketchip.system.DefaultRV32Config.fir@142428.4]
  wire [8:0] _T_180; // @[RoundAnyRawFNToRecFN.scala 255:18:freechips.rocketchip.system.DefaultRV32Config.fir@142430.4]
  wire [8:0] _T_181; // @[RoundAnyRawFNToRecFN.scala 255:14:freechips.rocketchip.system.DefaultRV32Config.fir@142431.4]
  wire [8:0] _T_182; // @[RoundAnyRawFNToRecFN.scala 254:17:freechips.rocketchip.system.DefaultRV32Config.fir@142432.4]
  wire [8:0] _T_183; // @[RoundAnyRawFNToRecFN.scala 259:18:freechips.rocketchip.system.DefaultRV32Config.fir@142433.4]
  wire [8:0] _T_184; // @[RoundAnyRawFNToRecFN.scala 259:14:freechips.rocketchip.system.DefaultRV32Config.fir@142434.4]
  wire [8:0] _T_185; // @[RoundAnyRawFNToRecFN.scala 258:17:freechips.rocketchip.system.DefaultRV32Config.fir@142435.4]
  wire [8:0] _T_186; // @[RoundAnyRawFNToRecFN.scala 263:18:freechips.rocketchip.system.DefaultRV32Config.fir@142436.4]
  wire [8:0] _T_187; // @[RoundAnyRawFNToRecFN.scala 263:14:freechips.rocketchip.system.DefaultRV32Config.fir@142437.4]
  wire [8:0] _T_189; // @[RoundAnyRawFNToRecFN.scala 267:16:freechips.rocketchip.system.DefaultRV32Config.fir@142439.4]
  wire [8:0] _T_190; // @[RoundAnyRawFNToRecFN.scala 266:18:freechips.rocketchip.system.DefaultRV32Config.fir@142440.4]
  wire [8:0] _T_191; // @[RoundAnyRawFNToRecFN.scala 271:16:freechips.rocketchip.system.DefaultRV32Config.fir@142441.4]
  wire [8:0] _T_192; // @[RoundAnyRawFNToRecFN.scala 270:15:freechips.rocketchip.system.DefaultRV32Config.fir@142442.4]
  wire [8:0] _T_193; // @[RoundAnyRawFNToRecFN.scala 275:16:freechips.rocketchip.system.DefaultRV32Config.fir@142443.4]
  wire [8:0] _T_194; // @[RoundAnyRawFNToRecFN.scala 274:15:freechips.rocketchip.system.DefaultRV32Config.fir@142444.4]
  wire [8:0] _T_195; // @[RoundAnyRawFNToRecFN.scala 276:16:freechips.rocketchip.system.DefaultRV32Config.fir@142445.4]
  wire [8:0] expOut; // @[RoundAnyRawFNToRecFN.scala 275:77:freechips.rocketchip.system.DefaultRV32Config.fir@142446.4]
  wire  _T_196; // @[RoundAnyRawFNToRecFN.scala 278:22:freechips.rocketchip.system.DefaultRV32Config.fir@142447.4]
  wire  _T_197; // @[RoundAnyRawFNToRecFN.scala 278:38:freechips.rocketchip.system.DefaultRV32Config.fir@142448.4]
  wire [22:0] _T_199; // @[RoundAnyRawFNToRecFN.scala 278:12:freechips.rocketchip.system.DefaultRV32Config.fir@142450.4]
  wire [22:0] _T_201; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@142452.4]
  wire [22:0] fractOut; // @[RoundAnyRawFNToRecFN.scala 281:11:freechips.rocketchip.system.DefaultRV32Config.fir@142453.4]
  wire [9:0] _T_202; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@142454.4]
  wire [1:0] _T_204; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@142457.4]
  wire [2:0] _T_206; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@142459.4]

`define MY_ASSIGNMENT
`ifdef MY_ASSIGNMENT
  assign roundingMode_near_even = io_roundingMode == 3'h0;
  assign roundingMode_min = io_roundingMode == 3'h2;
  assign roundingMode_max = io_roundingMode == 3'h3;
  assign roundingMode_near_maxMag = io_roundingMode == 3'h4;
  assign roundingMode_odd = io_roundingMode == 3'h6;
  assign roundMagUp = (roundingMode_min & io_in_sign) | (roundingMode_max & !io_in_sign);
  assign doShiftSigDown1 = io_in_sig[26];

  wire [8:0] _T_4 = ~ io_in_sExp[8:0];
  wire [64:0] _T_11 = $signed(-65'sh10000000000000000) >>> _T_4[5:0];
  wire [21:0] _T_12 = _T_11[63:42];
  wire [15:0] _T_22 = ({{8'd0}, _T_12[15:8]}) | ({_T_12[7:0], 8'h0} & 16'hff00);
  wire [15:0] _T_32 = ({{4'd0}, _T_22[15:4]} & 16'hf0f) | ({_T_22[11:0], 4'h0} & 16'hf0f0);
  wire [15:0] _T_42 = ({{2'd0}, _T_32[15:2]} & 16'h3333) | ({_T_32[13:0], 2'h0} & 16'hcccc);
  wire [15:0] _T_52 = ({{1'd0}, _T_42[15:1]} & 16'h5555) | ({_T_42[14:0], 1'h0} & 16'haaaa);
  wire [21:0] _T_69 = {_T_52,_T_12[16],_T_12[17],_T_12[18],_T_12[19],_T_12[20],_T_12[21]};
  wire [21:0] _T_71 = _T_4[6] ? 22'h0 : (~ _T_69);
  wire [2:0] _T_84 = _T_4[6] ? {_T_11[0],_T_11[1],_T_11[2]} : 3'h0;
  wire [24:0] _T_85 = _T_4[7] ? {(~ _T_71), 3'h7} : {{22'd0}, _T_84};
  wire [24:0] _T_86 = _T_4[8] ? _T_85 : 25'h0;
  wire [26:0] _T_88 = {(_T_86 | {{24'd0}, doShiftSigDown1}), 2'h3};
  wire [26:0] _T_92 = (~ {1'h0, _T_88[26:1]}) & _T_88;
  wire [26:0] _T_93 = io_in_sig & _T_92;
  wire [26:0] _T_102 = io_in_sig | _T_88;
  wire [25:0] _T_104 = _T_102[26:2] + 25'h1;
  wire [25:0] _T_109 = (roundingMode_near_even & (_T_93 != 27'h0) & !((io_in_sig & {1'h0, _T_88[26:1]}) != 27'h0)) ? _T_88[26:1] : 26'h0;
  wire [25:0] _T_111 = _T_104 & (~ _T_109);
  wire [26:0] _T_113 = io_in_sig & (~ _T_88);
  wire [26:0] _T_95 = io_in_sig & {1'h0, _T_88[26:1]};
  wire [25:0] _T_117 = (roundingMode_odd & ((_T_93 != 27'h0) | (_T_95 != 27'h0))) ? _T_92[26:1] : 26'h0;
  wire [25:0] _T_118 = {{1'd0}, _T_113[26:2]} | _T_117;
  wire [25:0] _T_119 = (((roundingMode_near_even | roundingMode_near_maxMag) & (_T_93 != 27'h0)) | (roundMagUp & ((_T_93 != 27'h0) | ((io_in_sig & {1'h0, _T_88[26:1]}) != 27'h0)))) ? _T_111 : _T_118;
  wire [10:0] _T_122 = $signed(io_in_sExp) + $signed({8'h00, $signed(_T_119[25:24])});
  assign common_expOut = _T_122[8:0];

  assign common_fractOut = doShiftSigDown1 ? _T_119[23:1] : _T_119[22:0];
  assign common_overflow = $signed(_T_122[10:7]) >= $signed(4'sh3);
  assign common_totalUnderflow = $signed(_T_122) < $signed(11'sh6b);

  wire _T_144 = doShiftSigDown1 ? _T_119[25] : _T_119[24];
  wire _T_155 = doShiftSigDown1 ? _T_88[4] : _T_88[3];
  wire _T_132 = doShiftSigDown1 ? io_in_sig[2] : io_in_sig[1];
  wire _T_141 = ((roundingMode_near_even | roundingMode_near_maxMag) & _T_132) | (roundMagUp & ((doShiftSigDown1 & io_in_sig[2]) | (io_in_sig[1:0] != 2'h0)));
  wire _T_160 = io_detectTininess & !_T_155 & _T_144 & (_T_93 != 27'h0) & _T_141;
  wire _T_150 = doShiftSigDown1 ? _T_88[3] : _T_88[2];
  wire _T_146 = $signed(io_in_sExp[9:8]) <= $signed(2'sh0);
  wire _T_97 = ((io_in_sig & (~ {1'h0,_T_88[26:1]}) & _T_88) != 27'h0) | ((io_in_sig & {1'h0, _T_88[26:1]}) != 27'h0);
  assign common_underflow = common_totalUnderflow | (_T_97 & _T_146 & _T_150 & !_T_160);

  assign common_inexact = common_totalUnderflow | _T_97;
  assign isNaNOut = io_invalidExc | io_in_isNaN;
  assign notNaN_isSpecialInfOut = io_infiniteExc | io_in_isInf;
  assign commonCase = !isNaNOut & !notNaN_isSpecialInfOut & !io_in_isZero;
  assign overflow = commonCase & common_overflow;
  assign underflow = commonCase & common_underflow;
  assign inexact = overflow | (commonCase & common_inexact);
  assign overflow_roundMagUp = roundingMode_near_even | roundingMode_near_maxMag | roundMagUp;
  assign pegMinNonzeroMagOut = commonCase & common_totalUnderflow & (roundMagUp | roundingMode_odd);
  assign pegMaxFiniteMagOut = overflow & !overflow_roundMagUp;
  assign notNaN_isInfOut = notNaN_isSpecialInfOut | (overflow & overflow_roundMagUp);
  assign signOut = isNaNOut ? 1'h0 : io_in_sign;

  wire [8:0] _T_188 = common_expOut 
			& (~ (io_in_isZero | common_totalUnderflow ? 9'h1c0 : 9'h0)) 
			& (~ (pegMinNonzeroMagOut ? 9'h194 : 9'h0)) 
			& (~ (pegMaxFiniteMagOut ? 9'h80 : 9'h0)) 
			& (~ (notNaN_isInfOut ? 9'h40 : 9'h0))
			;
  assign expOut = _T_188 
		| (pegMinNonzeroMagOut ? 9'h6b : 9'h0) 
		| (pegMaxFiniteMagOut ? 9'h17f : 9'h0) 
		| (notNaN_isInfOut ? 9'h180 : 9'h0) 
		| (isNaNOut ? 9'h1c0 : 9'h0)
		;
  wire [22:0] _T_198 = isNaNOut ? 23'h400000 : 23'h0;
  assign fractOut = ((isNaNOut | io_in_isZero | common_totalUnderflow) ? _T_198 : common_fractOut) 
			| (pegMaxFiniteMagOut ? 23'h7fffff : 23'h0)
			;
  assign io_out = {signOut, expOut, fractOut};
  assign io_exceptionFlags = {io_invalidExc, io_infiniteExc, overflow, underflow, inexact};

`endif // MY_ASSIGNMENT

`ifndef MY_ASSIGNMENT
  assign roundingMode_near_even = io_roundingMode == 3'h0; // @[RoundAnyRawFNToRecFN.scala 88:53:freechips.rocketchip.system.DefaultRV32Config.fir@142212.4]
  assign roundingMode_min = io_roundingMode == 3'h2; // @[RoundAnyRawFNToRecFN.scala 90:53:freechips.rocketchip.system.DefaultRV32Config.fir@142214.4]
  assign roundingMode_max = io_roundingMode == 3'h3; // @[RoundAnyRawFNToRecFN.scala 91:53:freechips.rocketchip.system.DefaultRV32Config.fir@142215.4]
  assign roundingMode_near_maxMag = io_roundingMode == 3'h4; // @[RoundAnyRawFNToRecFN.scala 92:53:freechips.rocketchip.system.DefaultRV32Config.fir@142216.4]
  assign roundingMode_odd = io_roundingMode == 3'h6; // @[RoundAnyRawFNToRecFN.scala 93:53:freechips.rocketchip.system.DefaultRV32Config.fir@142217.4]
  assign roundMagUp = _T | _T_2; // @[RoundAnyRawFNToRecFN.scala 96:42:freechips.rocketchip.system.DefaultRV32Config.fir@142221.4]
  assign doShiftSigDown1 = io_in_sig[26]; // @[RoundAnyRawFNToRecFN.scala 118:61:freechips.rocketchip.system.DefaultRV32Config.fir@142223.4]
  wire [8:0] _T_4; // @[primitives.scala 51:21:freechips.rocketchip.system.DefaultRV32Config.fir@142237.4]
  assign _T_4 = ~ _T_3; // @[primitives.scala 51:21:freechips.rocketchip.system.DefaultRV32Config.fir@142237.4]
  wire [64:0] _T_11; // @[primitives.scala 77:58:freechips.rocketchip.system.DefaultRV32Config.fir@142244.4]
  assign _T_11 = $signed(-65'sh10000000000000000) >>> _T_10; // @[primitives.scala 77:58:freechips.rocketchip.system.DefaultRV32Config.fir@142244.4]
  wire [21:0] _T_12; // @[primitives.scala 79:22:freechips.rocketchip.system.DefaultRV32Config.fir@142245.4]
  assign _T_12 = _T_11[63:42]; // @[primitives.scala 79:22:freechips.rocketchip.system.DefaultRV32Config.fir@142245.4]
  wire [15:0] _T_22; // @[Bitwise.scala 102:39:freechips.rocketchip.system.DefaultRV32Config.fir@142255.4]
  assign _T_22 = _T_17 | _T_21; // @[Bitwise.scala 102:39:freechips.rocketchip.system.DefaultRV32Config.fir@142255.4]
  wire [15:0] _T_32; // @[Bitwise.scala 102:39:freechips.rocketchip.system.DefaultRV32Config.fir@142265.4]
  assign _T_32 = _T_27 | _T_31; // @[Bitwise.scala 102:39:freechips.rocketchip.system.DefaultRV32Config.fir@142265.4]
  wire [15:0] _T_42; // @[Bitwise.scala 102:39:freechips.rocketchip.system.DefaultRV32Config.fir@142275.4]
  assign _T_42 = _T_37 | _T_41; // @[Bitwise.scala 102:39:freechips.rocketchip.system.DefaultRV32Config.fir@142275.4]
  wire [15:0] _T_52; // @[Bitwise.scala 102:39:freechips.rocketchip.system.DefaultRV32Config.fir@142285.4]
  assign _T_52 = _T_47 | _T_51; // @[Bitwise.scala 102:39:freechips.rocketchip.system.DefaultRV32Config.fir@142285.4]
  wire [21:0] _T_69; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@142302.4]
  assign _T_69 = {_T_52,_T_56,_T_57,_T_60,_T_61,_T_65,_T_66}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@142302.4]
  wire [21:0] _T_71; // @[primitives.scala 74:21:freechips.rocketchip.system.DefaultRV32Config.fir@142304.4]
  assign _T_71 = _T_9 ? 22'h0 : _T_70; // @[primitives.scala 74:21:freechips.rocketchip.system.DefaultRV32Config.fir@142304.4]
  wire [24:0] _T_85; // @[primitives.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@142318.4]
  wire [2:0] _T_84; // @[primitives.scala 61:24:freechips.rocketchip.system.DefaultRV32Config.fir@142317.4]
  assign _T_84 = _T_9 ? _T_83 : 3'h0; // @[primitives.scala 61:24:freechips.rocketchip.system.DefaultRV32Config.fir@142317.4]
  assign _T_85 = _T_7 ? _T_73 : {{22'd0}, _T_84}; // @[primitives.scala 66:24:freechips.rocketchip.system.DefaultRV32Config.fir@142318.4]
  wire [24:0] _T_86; // @[primitives.scala 61:24:freechips.rocketchip.system.DefaultRV32Config.fir@142319.4]
  assign _T_86 = _T_5 ? _T_85 : 25'h0; // @[primitives.scala 61:24:freechips.rocketchip.system.DefaultRV32Config.fir@142319.4]
  wire [26:0] _T_88; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@142321.4]
  assign _T_88 = {_T_87,2'h3}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@142321.4]
  wire [26:0] _T_92; // @[RoundAnyRawFNToRecFN.scala 161:46:freechips.rocketchip.system.DefaultRV32Config.fir@142325.4]
  assign _T_92 = _T_91 & _T_88; // @[RoundAnyRawFNToRecFN.scala 161:46:freechips.rocketchip.system.DefaultRV32Config.fir@142325.4]
  wire [26:0] _T_93; // @[RoundAnyRawFNToRecFN.scala 162:40:freechips.rocketchip.system.DefaultRV32Config.fir@142326.4]
  assign _T_93 = io_in_sig & _T_92; // @[RoundAnyRawFNToRecFN.scala 162:40:freechips.rocketchip.system.DefaultRV32Config.fir@142326.4]
  wire [26:0] _T_102; // @[RoundAnyRawFNToRecFN.scala 172:32:freechips.rocketchip.system.DefaultRV32Config.fir@142335.4]
  wire [25:0] _T_109; // @[RoundAnyRawFNToRecFN.scala 173:25:freechips.rocketchip.system.DefaultRV32Config.fir@142342.4]
  assign _T_109 = _T_107 ? _T_89 : 26'h0; // @[RoundAnyRawFNToRecFN.scala 173:25:freechips.rocketchip.system.DefaultRV32Config.fir@142342.4]
  assign _T_102 = io_in_sig | _T_88; // @[RoundAnyRawFNToRecFN.scala 172:32:freechips.rocketchip.system.DefaultRV32Config.fir@142335.4]
  wire [25:0] _T_104; // @[RoundAnyRawFNToRecFN.scala 172:49:freechips.rocketchip.system.DefaultRV32Config.fir@142337.4]
  assign _T_104 = _T_103 + 25'h1; // @[RoundAnyRawFNToRecFN.scala 172:49:freechips.rocketchip.system.DefaultRV32Config.fir@142337.4]
  wire [25:0] _T_111; // @[RoundAnyRawFNToRecFN.scala 172:61:freechips.rocketchip.system.DefaultRV32Config.fir@142344.4]
  assign _T_111 = _T_104 & _T_110; // @[RoundAnyRawFNToRecFN.scala 172:61:freechips.rocketchip.system.DefaultRV32Config.fir@142344.4]
  wire [25:0] _T_119; // @[RoundAnyRawFNToRecFN.scala 171:16:freechips.rocketchip.system.DefaultRV32Config.fir@142352.4]
  wire [26:0] _T_113; // @[RoundAnyRawFNToRecFN.scala 178:30:freechips.rocketchip.system.DefaultRV32Config.fir@142346.4]
  assign _T_113 = io_in_sig & _T_112; // @[RoundAnyRawFNToRecFN.scala 178:30:freechips.rocketchip.system.DefaultRV32Config.fir@142346.4]
  wire [26:0] _T_95; // @[RoundAnyRawFNToRecFN.scala 163:42:freechips.rocketchip.system.DefaultRV32Config.fir@142328.4]
  assign _T_95 = io_in_sig & _T_90; // @[RoundAnyRawFNToRecFN.scala 163:42:freechips.rocketchip.system.DefaultRV32Config.fir@142328.4]
  wire [25:0] _T_117; // @[RoundAnyRawFNToRecFN.scala 179:24:freechips.rocketchip.system.DefaultRV32Config.fir@142350.4]
  assign _T_117 = _T_115 ? _T_116 : 26'h0; // @[RoundAnyRawFNToRecFN.scala 179:24:freechips.rocketchip.system.DefaultRV32Config.fir@142350.4]
  wire [25:0] _T_118; // @[RoundAnyRawFNToRecFN.scala 178:47:freechips.rocketchip.system.DefaultRV32Config.fir@142351.4]
  assign _T_118 = _GEN_4 | _T_117; // @[RoundAnyRawFNToRecFN.scala 178:47:freechips.rocketchip.system.DefaultRV32Config.fir@142351.4]
  assign _T_119 = _T_101 ? _T_111 : _T_118; // @[RoundAnyRawFNToRecFN.scala 171:16:freechips.rocketchip.system.DefaultRV32Config.fir@142352.4]
  wire [10:0] _T_122; // @[RoundAnyRawFNToRecFN.scala 183:40:freechips.rocketchip.system.DefaultRV32Config.fir@142355.4]
  assign _T_122 = $signed(io_in_sExp) + $signed(_GEN_5); // @[RoundAnyRawFNToRecFN.scala 183:40:freechips.rocketchip.system.DefaultRV32Config.fir@142355.4]
  assign common_expOut = _T_122[8:0]; // @[RoundAnyRawFNToRecFN.scala 185:37:freechips.rocketchip.system.DefaultRV32Config.fir@142356.4]
  assign common_fractOut = doShiftSigDown1 ? _T_124 : _T_125; // @[RoundAnyRawFNToRecFN.scala 187:16:freechips.rocketchip.system.DefaultRV32Config.fir@142360.4]
  assign common_overflow = $signed(_T_127) >= $signed(4'sh3); // @[RoundAnyRawFNToRecFN.scala 194:50:freechips.rocketchip.system.DefaultRV32Config.fir@142363.4]
  assign common_totalUnderflow = $signed(_T_122) < $signed(11'sh6b); // @[RoundAnyRawFNToRecFN.scala 198:31:freechips.rocketchip.system.DefaultRV32Config.fir@142365.4]
  wire  _T_144; // @[RoundAnyRawFNToRecFN.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@142381.4]
  assign _T_144 = doShiftSigDown1 ? _T_142 : _T_143; // @[RoundAnyRawFNToRecFN.scala 209:16:freechips.rocketchip.system.DefaultRV32Config.fir@142381.4]
  wire  _T_155; // @[RoundAnyRawFNToRecFN.scala 221:39:freechips.rocketchip.system.DefaultRV32Config.fir@142392.4]
  assign _T_155 = doShiftSigDown1 ? _T_153 : _T_148; // @[RoundAnyRawFNToRecFN.scala 221:39:freechips.rocketchip.system.DefaultRV32Config.fir@142392.4]
  wire  _T_132; // @[RoundAnyRawFNToRecFN.scala 201:16:freechips.rocketchip.system.DefaultRV32Config.fir@142369.4]
  assign _T_132 = doShiftSigDown1 ? _T_130 : _T_131; // @[RoundAnyRawFNToRecFN.scala 201:16:freechips.rocketchip.system.DefaultRV32Config.fir@142369.4]
  wire  _T_141; // @[RoundAnyRawFNToRecFN.scala 206:46:freechips.rocketchip.system.DefaultRV32Config.fir@142378.4]
  assign _T_141 = _T_139 | _T_140; // @[RoundAnyRawFNToRecFN.scala 206:46:freechips.rocketchip.system.DefaultRV32Config.fir@142378.4]
  wire  _T_160; // @[RoundAnyRawFNToRecFN.scala 225:60:freechips.rocketchip.system.DefaultRV32Config.fir@142397.4]
  assign _T_160 = _T_159 & _T_141; // @[RoundAnyRawFNToRecFN.scala 225:60:freechips.rocketchip.system.DefaultRV32Config.fir@142397.4]
  wire  _T_150; // @[RoundAnyRawFNToRecFN.scala 219:30:freechips.rocketchip.system.DefaultRV32Config.fir@142387.4]
  assign _T_150 = doShiftSigDown1 ? _T_148 : _T_149; // @[RoundAnyRawFNToRecFN.scala 219:30:freechips.rocketchip.system.DefaultRV32Config.fir@142387.4]
  wire  _T_146; // @[RoundAnyRawFNToRecFN.scala 218:62:freechips.rocketchip.system.DefaultRV32Config.fir@142383.4]
  assign _T_146 = $signed(_T_145) <= $signed(2'sh0); // @[RoundAnyRawFNToRecFN.scala 218:62:freechips.rocketchip.system.DefaultRV32Config.fir@142383.4]
  wire  _T_97; // @[RoundAnyRawFNToRecFN.scala 164:36:freechips.rocketchip.system.DefaultRV32Config.fir@142330.4]
  assign _T_97 = _T_94 | _T_96; // @[RoundAnyRawFNToRecFN.scala 164:36:freechips.rocketchip.system.DefaultRV32Config.fir@142330.4]
  assign common_underflow = common_totalUnderflow | _T_162; // @[RoundAnyRawFNToRecFN.scala 215:40:freechips.rocketchip.system.DefaultRV32Config.fir@142400.4]
  assign common_inexact = common_totalUnderflow | _T_97; // @[RoundAnyRawFNToRecFN.scala 228:49:freechips.rocketchip.system.DefaultRV32Config.fir@142402.4]
  assign isNaNOut = io_invalidExc | io_in_isNaN; // @[RoundAnyRawFNToRecFN.scala 233:34:freechips.rocketchip.system.DefaultRV32Config.fir@142404.4]
  assign notNaN_isSpecialInfOut = io_infiniteExc | io_in_isInf; // @[RoundAnyRawFNToRecFN.scala 234:49:freechips.rocketchip.system.DefaultRV32Config.fir@142405.4]
  assign commonCase = _T_167 & _T_168; // @[RoundAnyRawFNToRecFN.scala 235:61:freechips.rocketchip.system.DefaultRV32Config.fir@142410.4]
  assign overflow = commonCase & common_overflow; // @[RoundAnyRawFNToRecFN.scala 236:32:freechips.rocketchip.system.DefaultRV32Config.fir@142411.4]
  assign underflow = commonCase & common_underflow; // @[RoundAnyRawFNToRecFN.scala 237:32:freechips.rocketchip.system.DefaultRV32Config.fir@142412.4]
  assign inexact = overflow | _T_169; // @[RoundAnyRawFNToRecFN.scala 238:28:freechips.rocketchip.system.DefaultRV32Config.fir@142414.4]
  assign overflow_roundMagUp = _T_98 | roundMagUp; // @[RoundAnyRawFNToRecFN.scala 241:60:freechips.rocketchip.system.DefaultRV32Config.fir@142416.4]
  assign pegMinNonzeroMagOut = _T_171 & _T_172; // @[RoundAnyRawFNToRecFN.scala 243:45:freechips.rocketchip.system.DefaultRV32Config.fir@142419.4]
  assign pegMaxFiniteMagOut = overflow & _T_173; // @[RoundAnyRawFNToRecFN.scala 244:39:freechips.rocketchip.system.DefaultRV32Config.fir@142421.4]
  assign notNaN_isInfOut = notNaN_isSpecialInfOut | _T_174; // @[RoundAnyRawFNToRecFN.scala 246:32:freechips.rocketchip.system.DefaultRV32Config.fir@142423.4]
  assign signOut = isNaNOut ? 1'h0 : io_in_sign; // @[RoundAnyRawFNToRecFN.scala 248:22:freechips.rocketchip.system.DefaultRV32Config.fir@142424.4]
  wire [8:0] _T_188; // @[RoundAnyRawFNToRecFN.scala 262:17:freechips.rocketchip.system.DefaultRV32Config.fir@142438.4]
  assign _T_188 = _T_185 & _T_187; // @[RoundAnyRawFNToRecFN.scala 262:17:freechips.rocketchip.system.DefaultRV32Config.fir@142438.4]
  assign expOut = _T_194 | _T_195; // @[RoundAnyRawFNToRecFN.scala 275:77:freechips.rocketchip.system.DefaultRV32Config.fir@142446.4]
  wire [22:0] _T_198; // @[RoundAnyRawFNToRecFN.scala 279:16:freechips.rocketchip.system.DefaultRV32Config.fir@142449.4]
  assign _T_198 = isNaNOut ? 23'h400000 : 23'h0; // @[RoundAnyRawFNToRecFN.scala 279:16:freechips.rocketchip.system.DefaultRV32Config.fir@142449.4]
  assign fractOut = _T_199 | _T_201; // @[RoundAnyRawFNToRecFN.scala 281:11:freechips.rocketchip.system.DefaultRV32Config.fir@142453.4]
  assign io_out = {_T_202,fractOut}; // @[RoundAnyRawFNToRecFN.scala 284:12:freechips.rocketchip.system.DefaultRV32Config.fir@142456.4]
  assign io_exceptionFlags = {_T_206,_T_204}; // @[RoundAnyRawFNToRecFN.scala 285:23:freechips.rocketchip.system.DefaultRV32Config.fir@142461.4]

`endif // MY_ASSIGNMENT

  assign _T = roundingMode_min & io_in_sign; // @[RoundAnyRawFNToRecFN.scala 96:27:freechips.rocketchip.system.DefaultRV32Config.fir@142218.4]
  assign _T_1 = io_in_sign == 1'h0; // @[RoundAnyRawFNToRecFN.scala 96:66:freechips.rocketchip.system.DefaultRV32Config.fir@142219.4]
  assign _T_2 = roundingMode_max & _T_1; // @[RoundAnyRawFNToRecFN.scala 96:63:freechips.rocketchip.system.DefaultRV32Config.fir@142220.4]
  assign _T_3 = io_in_sExp[8:0]; // @[RoundAnyRawFNToRecFN.scala 154:37:freechips.rocketchip.system.DefaultRV32Config.fir@142236.4]
  assign _T_5 = _T_4[8]; // @[primitives.scala 57:25:freechips.rocketchip.system.DefaultRV32Config.fir@142238.4]
  assign _T_6 = _T_4[7:0]; // @[primitives.scala 58:26:freechips.rocketchip.system.DefaultRV32Config.fir@142239.4]
  assign _T_7 = _T_6[7]; // @[primitives.scala 57:25:freechips.rocketchip.system.DefaultRV32Config.fir@142240.4]
  assign _T_8 = _T_6[6:0]; // @[primitives.scala 58:26:freechips.rocketchip.system.DefaultRV32Config.fir@142241.4]
  assign _T_9 = _T_8[6]; // @[primitives.scala 57:25:freechips.rocketchip.system.DefaultRV32Config.fir@142242.4]
  assign _T_10 = _T_8[5:0]; // @[primitives.scala 58:26:freechips.rocketchip.system.DefaultRV32Config.fir@142243.4]
  assign _T_13 = _T_12[15:0]; // @[Bitwise.scala 108:18:freechips.rocketchip.system.DefaultRV32Config.fir@142246.4]
  assign _T_16 = _T_13[15:8]; // @[Bitwise.scala 102:21:freechips.rocketchip.system.DefaultRV32Config.fir@142249.4]
  assign _T_17 = {{8'd0}, _T_16}; // @[Bitwise.scala 102:31:freechips.rocketchip.system.DefaultRV32Config.fir@142250.4]
  assign _T_18 = _T_13[7:0]; // @[Bitwise.scala 102:46:freechips.rocketchip.system.DefaultRV32Config.fir@142251.4]
  assign _T_19 = {_T_18, 8'h0}; // @[Bitwise.scala 102:65:freechips.rocketchip.system.DefaultRV32Config.fir@142252.4]
  assign _T_21 = _T_19 & 16'hff00; // @[Bitwise.scala 102:75:freechips.rocketchip.system.DefaultRV32Config.fir@142254.4]
  assign _T_26 = _T_22[15:4]; // @[Bitwise.scala 102:21:freechips.rocketchip.system.DefaultRV32Config.fir@142259.4]
  assign _GEN_0 = {{4'd0}, _T_26}; // @[Bitwise.scala 102:31:freechips.rocketchip.system.DefaultRV32Config.fir@142260.4]
  assign _T_27 = _GEN_0 & 16'hf0f; // @[Bitwise.scala 102:31:freechips.rocketchip.system.DefaultRV32Config.fir@142260.4]
  assign _T_28 = _T_22[11:0]; // @[Bitwise.scala 102:46:freechips.rocketchip.system.DefaultRV32Config.fir@142261.4]
  assign _T_29 = {_T_28, 4'h0}; // @[Bitwise.scala 102:65:freechips.rocketchip.system.DefaultRV32Config.fir@142262.4]
  assign _T_31 = _T_29 & 16'hf0f0; // @[Bitwise.scala 102:75:freechips.rocketchip.system.DefaultRV32Config.fir@142264.4]
  assign _T_36 = _T_32[15:2]; // @[Bitwise.scala 102:21:freechips.rocketchip.system.DefaultRV32Config.fir@142269.4]
  assign _GEN_1 = {{2'd0}, _T_36}; // @[Bitwise.scala 102:31:freechips.rocketchip.system.DefaultRV32Config.fir@142270.4]
  assign _T_37 = _GEN_1 & 16'h3333; // @[Bitwise.scala 102:31:freechips.rocketchip.system.DefaultRV32Config.fir@142270.4]
  assign _T_38 = _T_32[13:0]; // @[Bitwise.scala 102:46:freechips.rocketchip.system.DefaultRV32Config.fir@142271.4]
  assign _T_39 = {_T_38, 2'h0}; // @[Bitwise.scala 102:65:freechips.rocketchip.system.DefaultRV32Config.fir@142272.4]
  assign _T_41 = _T_39 & 16'hcccc; // @[Bitwise.scala 102:75:freechips.rocketchip.system.DefaultRV32Config.fir@142274.4]
  assign _T_46 = _T_42[15:1]; // @[Bitwise.scala 102:21:freechips.rocketchip.system.DefaultRV32Config.fir@142279.4]
  assign _GEN_2 = {{1'd0}, _T_46}; // @[Bitwise.scala 102:31:freechips.rocketchip.system.DefaultRV32Config.fir@142280.4]
  assign _T_47 = _GEN_2 & 16'h5555; // @[Bitwise.scala 102:31:freechips.rocketchip.system.DefaultRV32Config.fir@142280.4]
  assign _T_48 = _T_42[14:0]; // @[Bitwise.scala 102:46:freechips.rocketchip.system.DefaultRV32Config.fir@142281.4]
  assign _T_49 = {_T_48, 1'h0}; // @[Bitwise.scala 102:65:freechips.rocketchip.system.DefaultRV32Config.fir@142282.4]
  assign _T_51 = _T_49 & 16'haaaa; // @[Bitwise.scala 102:75:freechips.rocketchip.system.DefaultRV32Config.fir@142284.4]
  assign _T_53 = _T_12[21:16]; // @[Bitwise.scala 108:44:freechips.rocketchip.system.DefaultRV32Config.fir@142286.4]
  assign _T_54 = _T_53[3:0]; // @[Bitwise.scala 108:18:freechips.rocketchip.system.DefaultRV32Config.fir@142287.4]
  assign _T_55 = _T_54[1:0]; // @[Bitwise.scala 108:18:freechips.rocketchip.system.DefaultRV32Config.fir@142288.4]
  assign _T_56 = _T_55[0]; // @[Bitwise.scala 108:18:freechips.rocketchip.system.DefaultRV32Config.fir@142289.4]
  assign _T_57 = _T_55[1]; // @[Bitwise.scala 108:44:freechips.rocketchip.system.DefaultRV32Config.fir@142290.4]
  assign _T_59 = _T_54[3:2]; // @[Bitwise.scala 108:44:freechips.rocketchip.system.DefaultRV32Config.fir@142292.4]
  assign _T_60 = _T_59[0]; // @[Bitwise.scala 108:18:freechips.rocketchip.system.DefaultRV32Config.fir@142293.4]
  assign _T_61 = _T_59[1]; // @[Bitwise.scala 108:44:freechips.rocketchip.system.DefaultRV32Config.fir@142294.4]
  assign _T_64 = _T_53[5:4]; // @[Bitwise.scala 108:44:freechips.rocketchip.system.DefaultRV32Config.fir@142297.4]
  assign _T_65 = _T_64[0]; // @[Bitwise.scala 108:18:freechips.rocketchip.system.DefaultRV32Config.fir@142298.4]
  assign _T_66 = _T_64[1]; // @[Bitwise.scala 108:44:freechips.rocketchip.system.DefaultRV32Config.fir@142299.4]
  assign _T_70 = ~ _T_69; // @[primitives.scala 74:36:freechips.rocketchip.system.DefaultRV32Config.fir@142303.4]
  assign _T_72 = ~ _T_71; // @[primitives.scala 74:17:freechips.rocketchip.system.DefaultRV32Config.fir@142305.4]
  assign _T_73 = {_T_72,3'h7}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@142306.4]
  assign _T_77 = _T_11[2:0]; // @[primitives.scala 79:22:freechips.rocketchip.system.DefaultRV32Config.fir@142310.4]
  assign _T_78 = _T_77[1:0]; // @[Bitwise.scala 108:18:freechips.rocketchip.system.DefaultRV32Config.fir@142311.4]
  assign _T_79 = _T_78[0]; // @[Bitwise.scala 108:18:freechips.rocketchip.system.DefaultRV32Config.fir@142312.4]
  assign _T_80 = _T_78[1]; // @[Bitwise.scala 108:44:freechips.rocketchip.system.DefaultRV32Config.fir@142313.4]
  assign _T_82 = _T_77[2]; // @[Bitwise.scala 108:44:freechips.rocketchip.system.DefaultRV32Config.fir@142315.4]
  assign _T_83 = {_T_79,_T_80,_T_82}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@142316.4]
  assign _GEN_3 = {{24'd0}, doShiftSigDown1}; // @[RoundAnyRawFNToRecFN.scala 157:23:freechips.rocketchip.system.DefaultRV32Config.fir@142320.4]
  assign _T_87 = _T_86 | _GEN_3; // @[RoundAnyRawFNToRecFN.scala 157:23:freechips.rocketchip.system.DefaultRV32Config.fir@142320.4]
  assign _T_89 = _T_88[26:1]; // @[RoundAnyRawFNToRecFN.scala 160:57:freechips.rocketchip.system.DefaultRV32Config.fir@142322.4]
  assign _T_90 = {1'h0,_T_89}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@142323.4]
  assign _T_91 = ~ _T_90; // @[RoundAnyRawFNToRecFN.scala 161:28:freechips.rocketchip.system.DefaultRV32Config.fir@142324.4]
  assign _T_94 = _T_93 != 27'h0; // @[RoundAnyRawFNToRecFN.scala 162:56:freechips.rocketchip.system.DefaultRV32Config.fir@142327.4]
  assign _T_96 = _T_95 != 27'h0; // @[RoundAnyRawFNToRecFN.scala 163:62:freechips.rocketchip.system.DefaultRV32Config.fir@142329.4]
  assign _T_98 = roundingMode_near_even | roundingMode_near_maxMag; // @[RoundAnyRawFNToRecFN.scala 167:38:freechips.rocketchip.system.DefaultRV32Config.fir@142331.4]
  assign _T_99 = _T_98 & _T_94; // @[RoundAnyRawFNToRecFN.scala 167:67:freechips.rocketchip.system.DefaultRV32Config.fir@142332.4]
  assign _T_100 = roundMagUp & _T_97; // @[RoundAnyRawFNToRecFN.scala 169:29:freechips.rocketchip.system.DefaultRV32Config.fir@142333.4]
  assign _T_101 = _T_99 | _T_100; // @[RoundAnyRawFNToRecFN.scala 168:31:freechips.rocketchip.system.DefaultRV32Config.fir@142334.4]
  assign _T_103 = _T_102[26:2]; // @[RoundAnyRawFNToRecFN.scala 172:44:freechips.rocketchip.system.DefaultRV32Config.fir@142336.4]
  assign _T_105 = roundingMode_near_even & _T_94; // @[RoundAnyRawFNToRecFN.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@142338.4]
  assign _T_106 = _T_96 == 1'h0; // @[RoundAnyRawFNToRecFN.scala 174:30:freechips.rocketchip.system.DefaultRV32Config.fir@142339.4]
  assign _T_107 = _T_105 & _T_106; // @[RoundAnyRawFNToRecFN.scala 173:64:freechips.rocketchip.system.DefaultRV32Config.fir@142340.4]
  assign _T_110 = ~ _T_109; // @[RoundAnyRawFNToRecFN.scala 173:21:freechips.rocketchip.system.DefaultRV32Config.fir@142343.4]
  assign _T_112 = ~ _T_88; // @[RoundAnyRawFNToRecFN.scala 178:32:freechips.rocketchip.system.DefaultRV32Config.fir@142345.4]
  assign _T_114 = _T_113[26:2]; // @[RoundAnyRawFNToRecFN.scala 178:43:freechips.rocketchip.system.DefaultRV32Config.fir@142347.4]
  assign _T_115 = roundingMode_odd & _T_97; // @[RoundAnyRawFNToRecFN.scala 179:42:freechips.rocketchip.system.DefaultRV32Config.fir@142348.4]
  assign _T_116 = _T_92[26:1]; // @[RoundAnyRawFNToRecFN.scala 179:67:freechips.rocketchip.system.DefaultRV32Config.fir@142349.4]
  assign _GEN_4 = {{1'd0}, _T_114}; // @[RoundAnyRawFNToRecFN.scala 178:47:freechips.rocketchip.system.DefaultRV32Config.fir@142351.4]
  assign _T_120 = _T_119[25:24]; // @[RoundAnyRawFNToRecFN.scala 183:54:freechips.rocketchip.system.DefaultRV32Config.fir@142353.4]
  assign _T_121 = {1'b0,$signed(_T_120)}; // @[RoundAnyRawFNToRecFN.scala 183:69:freechips.rocketchip.system.DefaultRV32Config.fir@142354.4]
  assign _GEN_5 = {{7{_T_121[2]}},_T_121}; // @[RoundAnyRawFNToRecFN.scala 183:40:freechips.rocketchip.system.DefaultRV32Config.fir@142355.4]
  assign _T_124 = _T_119[23:1]; // @[RoundAnyRawFNToRecFN.scala 188:27:freechips.rocketchip.system.DefaultRV32Config.fir@142358.4]
  assign _T_125 = _T_119[22:0]; // @[RoundAnyRawFNToRecFN.scala 189:27:freechips.rocketchip.system.DefaultRV32Config.fir@142359.4]
  assign _T_127 = _T_122[10:7]; // @[RoundAnyRawFNToRecFN.scala 194:30:freechips.rocketchip.system.DefaultRV32Config.fir@142362.4]
  assign _T_130 = io_in_sig[2]; // @[RoundAnyRawFNToRecFN.scala 201:45:freechips.rocketchip.system.DefaultRV32Config.fir@142367.4]
  assign _T_131 = io_in_sig[1]; // @[RoundAnyRawFNToRecFN.scala 201:61:freechips.rocketchip.system.DefaultRV32Config.fir@142368.4]
  assign _T_134 = doShiftSigDown1 & _T_130; // @[RoundAnyRawFNToRecFN.scala 203:30:freechips.rocketchip.system.DefaultRV32Config.fir@142371.4]
  assign _T_135 = io_in_sig[1:0]; // @[RoundAnyRawFNToRecFN.scala 203:63:freechips.rocketchip.system.DefaultRV32Config.fir@142372.4]
  assign _T_136 = _T_135 != 2'h0; // @[RoundAnyRawFNToRecFN.scala 203:70:freechips.rocketchip.system.DefaultRV32Config.fir@142373.4]
  assign _T_137 = _T_134 | _T_136; // @[RoundAnyRawFNToRecFN.scala 203:49:freechips.rocketchip.system.DefaultRV32Config.fir@142374.4]
  assign _T_139 = _T_98 & _T_132; // @[RoundAnyRawFNToRecFN.scala 205:67:freechips.rocketchip.system.DefaultRV32Config.fir@142376.4]
  assign _T_140 = roundMagUp & _T_137; // @[RoundAnyRawFNToRecFN.scala 207:29:freechips.rocketchip.system.DefaultRV32Config.fir@142377.4]
  assign _T_142 = _T_119[25]; // @[RoundAnyRawFNToRecFN.scala 210:27:freechips.rocketchip.system.DefaultRV32Config.fir@142379.4]
  assign _T_143 = _T_119[24]; // @[RoundAnyRawFNToRecFN.scala 211:27:freechips.rocketchip.system.DefaultRV32Config.fir@142380.4]
  assign _T_145 = io_in_sExp[9:8]; // @[RoundAnyRawFNToRecFN.scala 218:48:freechips.rocketchip.system.DefaultRV32Config.fir@142382.4]
  assign _T_147 = _T_97 & _T_146; // @[RoundAnyRawFNToRecFN.scala 218:32:freechips.rocketchip.system.DefaultRV32Config.fir@142384.4]
  assign _T_148 = _T_88[3]; // @[RoundAnyRawFNToRecFN.scala 219:57:freechips.rocketchip.system.DefaultRV32Config.fir@142385.4]
  assign _T_149 = _T_88[2]; // @[RoundAnyRawFNToRecFN.scala 219:71:freechips.rocketchip.system.DefaultRV32Config.fir@142386.4]
  assign _T_151 = _T_147 & _T_150; // @[RoundAnyRawFNToRecFN.scala 218:74:freechips.rocketchip.system.DefaultRV32Config.fir@142388.4]
  assign _T_153 = _T_88[4]; // @[RoundAnyRawFNToRecFN.scala 222:49:freechips.rocketchip.system.DefaultRV32Config.fir@142390.4]
  assign _T_156 = _T_155 == 1'h0; // @[RoundAnyRawFNToRecFN.scala 221:34:freechips.rocketchip.system.DefaultRV32Config.fir@142393.4]
  assign _T_157 = io_detectTininess & _T_156; // @[RoundAnyRawFNToRecFN.scala 220:77:freechips.rocketchip.system.DefaultRV32Config.fir@142394.4]
  assign _T_158 = _T_157 & _T_144; // @[RoundAnyRawFNToRecFN.scala 224:38:freechips.rocketchip.system.DefaultRV32Config.fir@142395.4]
  assign _T_159 = _T_158 & _T_94; // @[RoundAnyRawFNToRecFN.scala 225:45:freechips.rocketchip.system.DefaultRV32Config.fir@142396.4]
  assign _T_161 = _T_160 == 1'h0; // @[RoundAnyRawFNToRecFN.scala 220:27:freechips.rocketchip.system.DefaultRV32Config.fir@142398.4]
  assign _T_162 = _T_151 & _T_161; // @[RoundAnyRawFNToRecFN.scala 219:76:freechips.rocketchip.system.DefaultRV32Config.fir@142399.4]
  assign _T_165 = isNaNOut == 1'h0; // @[RoundAnyRawFNToRecFN.scala 235:22:freechips.rocketchip.system.DefaultRV32Config.fir@142406.4]
  assign _T_166 = notNaN_isSpecialInfOut == 1'h0; // @[RoundAnyRawFNToRecFN.scala 235:36:freechips.rocketchip.system.DefaultRV32Config.fir@142407.4]
  assign _T_167 = _T_165 & _T_166; // @[RoundAnyRawFNToRecFN.scala 235:33:freechips.rocketchip.system.DefaultRV32Config.fir@142408.4]
  assign _T_168 = io_in_isZero == 1'h0; // @[RoundAnyRawFNToRecFN.scala 235:64:freechips.rocketchip.system.DefaultRV32Config.fir@142409.4]
  assign _T_169 = commonCase & common_inexact; // @[RoundAnyRawFNToRecFN.scala 238:43:freechips.rocketchip.system.DefaultRV32Config.fir@142413.4]
  assign _T_171 = commonCase & common_totalUnderflow; // @[RoundAnyRawFNToRecFN.scala 243:20:freechips.rocketchip.system.DefaultRV32Config.fir@142417.4]
  assign _T_172 = roundMagUp | roundingMode_odd; // @[RoundAnyRawFNToRecFN.scala 243:60:freechips.rocketchip.system.DefaultRV32Config.fir@142418.4]
  assign _T_173 = overflow_roundMagUp == 1'h0; // @[RoundAnyRawFNToRecFN.scala 244:42:freechips.rocketchip.system.DefaultRV32Config.fir@142420.4]
  assign _T_174 = overflow & overflow_roundMagUp; // @[RoundAnyRawFNToRecFN.scala 246:45:freechips.rocketchip.system.DefaultRV32Config.fir@142422.4]
  assign _T_175 = io_in_isZero | common_totalUnderflow; // @[RoundAnyRawFNToRecFN.scala 251:32:freechips.rocketchip.system.DefaultRV32Config.fir@142425.4]
  assign _T_176 = _T_175 ? 9'h1c0 : 9'h0; // @[RoundAnyRawFNToRecFN.scala 251:18:freechips.rocketchip.system.DefaultRV32Config.fir@142426.4]
  assign _T_177 = ~ _T_176; // @[RoundAnyRawFNToRecFN.scala 251:14:freechips.rocketchip.system.DefaultRV32Config.fir@142427.4]
  assign _T_178 = common_expOut & _T_177; // @[RoundAnyRawFNToRecFN.scala 250:24:freechips.rocketchip.system.DefaultRV32Config.fir@142428.4]
  assign _T_180 = pegMinNonzeroMagOut ? 9'h194 : 9'h0; // @[RoundAnyRawFNToRecFN.scala 255:18:freechips.rocketchip.system.DefaultRV32Config.fir@142430.4]
  assign _T_181 = ~ _T_180; // @[RoundAnyRawFNToRecFN.scala 255:14:freechips.rocketchip.system.DefaultRV32Config.fir@142431.4]
  assign _T_182 = _T_178 & _T_181; // @[RoundAnyRawFNToRecFN.scala 254:17:freechips.rocketchip.system.DefaultRV32Config.fir@142432.4]
  assign _T_183 = pegMaxFiniteMagOut ? 9'h80 : 9'h0; // @[RoundAnyRawFNToRecFN.scala 259:18:freechips.rocketchip.system.DefaultRV32Config.fir@142433.4]
  assign _T_184 = ~ _T_183; // @[RoundAnyRawFNToRecFN.scala 259:14:freechips.rocketchip.system.DefaultRV32Config.fir@142434.4]
  assign _T_185 = _T_182 & _T_184; // @[RoundAnyRawFNToRecFN.scala 258:17:freechips.rocketchip.system.DefaultRV32Config.fir@142435.4]
  assign _T_186 = notNaN_isInfOut ? 9'h40 : 9'h0; // @[RoundAnyRawFNToRecFN.scala 263:18:freechips.rocketchip.system.DefaultRV32Config.fir@142436.4]
  assign _T_187 = ~ _T_186; // @[RoundAnyRawFNToRecFN.scala 263:14:freechips.rocketchip.system.DefaultRV32Config.fir@142437.4]
  assign _T_189 = pegMinNonzeroMagOut ? 9'h6b : 9'h0; // @[RoundAnyRawFNToRecFN.scala 267:16:freechips.rocketchip.system.DefaultRV32Config.fir@142439.4]
  assign _T_190 = _T_188 | _T_189; // @[RoundAnyRawFNToRecFN.scala 266:18:freechips.rocketchip.system.DefaultRV32Config.fir@142440.4]
  assign _T_191 = pegMaxFiniteMagOut ? 9'h17f : 9'h0; // @[RoundAnyRawFNToRecFN.scala 271:16:freechips.rocketchip.system.DefaultRV32Config.fir@142441.4]
  assign _T_192 = _T_190 | _T_191; // @[RoundAnyRawFNToRecFN.scala 270:15:freechips.rocketchip.system.DefaultRV32Config.fir@142442.4]
  assign _T_193 = notNaN_isInfOut ? 9'h180 : 9'h0; // @[RoundAnyRawFNToRecFN.scala 275:16:freechips.rocketchip.system.DefaultRV32Config.fir@142443.4]
  assign _T_194 = _T_192 | _T_193; // @[RoundAnyRawFNToRecFN.scala 274:15:freechips.rocketchip.system.DefaultRV32Config.fir@142444.4]
  assign _T_195 = isNaNOut ? 9'h1c0 : 9'h0; // @[RoundAnyRawFNToRecFN.scala 276:16:freechips.rocketchip.system.DefaultRV32Config.fir@142445.4]
  assign _T_196 = isNaNOut | io_in_isZero; // @[RoundAnyRawFNToRecFN.scala 278:22:freechips.rocketchip.system.DefaultRV32Config.fir@142447.4]
  assign _T_197 = _T_196 | common_totalUnderflow; // @[RoundAnyRawFNToRecFN.scala 278:38:freechips.rocketchip.system.DefaultRV32Config.fir@142448.4]
  assign _T_199 = _T_197 ? _T_198 : common_fractOut; // @[RoundAnyRawFNToRecFN.scala 278:12:freechips.rocketchip.system.DefaultRV32Config.fir@142450.4]
  assign _T_201 = pegMaxFiniteMagOut ? 23'h7fffff : 23'h0; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@142452.4]
  assign _T_202 = {signOut,expOut}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@142454.4]
  assign _T_204 = {underflow,inexact}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@142457.4]
  assign _T_206 = {io_invalidExc,io_infiniteExc,overflow}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@142459.4]
endmodule
`endif // __RoundAnyRawFNToRecFN
