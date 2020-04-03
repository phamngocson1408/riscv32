`include "include_module.v"
`ifdef __FPToInt
module FPToInt( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@173076.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@173077.4]
  input         io_in_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@173079.4]
  input         io_in_bits_ren2, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@173079.4]
  input         io_in_bits_wflags, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@173079.4]
  input  [2:0]  io_in_bits_rm, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@173079.4]
  input  [1:0]  io_in_bits_typ, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@173079.4]
  input  [32:0] io_in_bits_in1, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@173079.4]
  input  [32:0] io_in_bits_in2, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@173079.4]
  output [2:0]  io_out_bits_in_rm, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@173079.4]
  output [32:0] io_out_bits_in_in1, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@173079.4]
  output [32:0] io_out_bits_in_in2, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@173079.4]
  output        io_out_bits_lt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@173079.4]
  output [31:0] io_out_bits_store, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@173079.4]
  output [31:0] io_out_bits_toint, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@173079.4]
  output [4:0]  io_out_bits_exc // @[:freechips.rocketchip.system.DefaultRV32Config.fir@173079.4]
);
  wire [32:0] dcmp_io_a; // @[FPU.scala 428:20:freechips.rocketchip.system.DefaultRV32Config.fir@173111.4]
  wire [32:0] dcmp_io_b; // @[FPU.scala 428:20:freechips.rocketchip.system.DefaultRV32Config.fir@173111.4]
  wire  dcmp_io_signaling; // @[FPU.scala 428:20:freechips.rocketchip.system.DefaultRV32Config.fir@173111.4]
  wire  dcmp_io_lt; // @[FPU.scala 428:20:freechips.rocketchip.system.DefaultRV32Config.fir@173111.4]
  wire  dcmp_io_eq; // @[FPU.scala 428:20:freechips.rocketchip.system.DefaultRV32Config.fir@173111.4]
  wire [4:0] dcmp_io_exceptionFlags; // @[FPU.scala 428:20:freechips.rocketchip.system.DefaultRV32Config.fir@173111.4]
  wire [32:0] RecFNToIN_io_in; // @[FPU.scala 460:24:freechips.rocketchip.system.DefaultRV32Config.fir@173244.8]
  wire [2:0] RecFNToIN_io_roundingMode; // @[FPU.scala 460:24:freechips.rocketchip.system.DefaultRV32Config.fir@173244.8]
  wire  RecFNToIN_io_signedOut; // @[FPU.scala 460:24:freechips.rocketchip.system.DefaultRV32Config.fir@173244.8]
  wire [31:0] RecFNToIN_io_out; // @[FPU.scala 460:24:freechips.rocketchip.system.DefaultRV32Config.fir@173244.8]
  wire [2:0] RecFNToIN_io_intExceptionFlags; // @[FPU.scala 460:24:freechips.rocketchip.system.DefaultRV32Config.fir@173244.8]
  reg  in_ren2; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@173084.4]
  reg [31:0] _RAND_0;
  reg  in_wflags; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@173084.4]
  reg [31:0] _RAND_1;
  reg [2:0] in_rm; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@173084.4]
  reg [31:0] _RAND_2;
  reg [1:0] in_typ; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@173084.4]
  reg [31:0] _RAND_3;
  reg [32:0] in_in1; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@173084.4]
  reg [63:0] _RAND_4;
  reg [32:0] in_in2; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@173084.4]
  reg [63:0] _RAND_5;
  wire  _T; // @[FPU.scala 431:30:freechips.rocketchip.system.DefaultRV32Config.fir@173117.4]
  wire [8:0] _T_2; // @[rawFloatFromRecFN.scala 50:21:freechips.rocketchip.system.DefaultRV32Config.fir@173121.4]
  wire [2:0] _T_3; // @[rawFloatFromRecFN.scala 51:29:freechips.rocketchip.system.DefaultRV32Config.fir@173122.4]
  wire  rawIn_isZero; // @[rawFloatFromRecFN.scala 51:54:freechips.rocketchip.system.DefaultRV32Config.fir@173123.4]
  wire [1:0] _T_5; // @[rawFloatFromRecFN.scala 52:29:freechips.rocketchip.system.DefaultRV32Config.fir@173124.4]
  wire  _T_6; // @[rawFloatFromRecFN.scala 52:54:freechips.rocketchip.system.DefaultRV32Config.fir@173125.4]
  wire  _T_7; // @[rawFloatFromRecFN.scala 55:41:freechips.rocketchip.system.DefaultRV32Config.fir@173128.4]
  wire  rawIn_isNaN; // @[rawFloatFromRecFN.scala 55:33:freechips.rocketchip.system.DefaultRV32Config.fir@173129.4]
  wire  _T_10; // @[rawFloatFromRecFN.scala 56:36:freechips.rocketchip.system.DefaultRV32Config.fir@173132.4]
  wire  rawIn_isInf; // @[rawFloatFromRecFN.scala 56:33:freechips.rocketchip.system.DefaultRV32Config.fir@173133.4]
  wire  rawIn_sign; // @[rawFloatFromRecFN.scala 58:25:freechips.rocketchip.system.DefaultRV32Config.fir@173136.4]
  wire [9:0] rawIn_sExp; // @[rawFloatFromRecFN.scala 59:27:freechips.rocketchip.system.DefaultRV32Config.fir@173138.4]
  wire  _T_14; // @[rawFloatFromRecFN.scala 60:39:freechips.rocketchip.system.DefaultRV32Config.fir@173140.4]
  wire [22:0] _T_15; // @[rawFloatFromRecFN.scala 60:51:freechips.rocketchip.system.DefaultRV32Config.fir@173141.4]
  wire [24:0] rawIn_sig; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@173143.4]
  wire  isSubnormal; // @[fNFromRecFN.scala 51:39:freechips.rocketchip.system.DefaultRV32Config.fir@173145.4]
  wire [4:0] _T_18; // @[fNFromRecFN.scala 53:51:freechips.rocketchip.system.DefaultRV32Config.fir@173146.4]
  wire [4:0] denormShiftDist; // @[fNFromRecFN.scala 53:39:freechips.rocketchip.system.DefaultRV32Config.fir@173148.4]
  wire [23:0] _T_20; // @[fNFromRecFN.scala 55:38:freechips.rocketchip.system.DefaultRV32Config.fir@173149.4]
  wire [23:0] _T_21; // @[fNFromRecFN.scala 55:42:freechips.rocketchip.system.DefaultRV32Config.fir@173150.4]
  wire [22:0] denormFract; // @[fNFromRecFN.scala 55:60:freechips.rocketchip.system.DefaultRV32Config.fir@173151.4]
  wire [7:0] _T_22; // @[fNFromRecFN.scala 61:27:freechips.rocketchip.system.DefaultRV32Config.fir@173152.4]
  wire [7:0] _T_24; // @[fNFromRecFN.scala 61:45:freechips.rocketchip.system.DefaultRV32Config.fir@173154.4]
  wire [7:0] _T_25; // @[fNFromRecFN.scala 59:16:freechips.rocketchip.system.DefaultRV32Config.fir@173155.4]
  wire  _T_26; // @[fNFromRecFN.scala 63:44:freechips.rocketchip.system.DefaultRV32Config.fir@173156.4]
  wire [7:0] _T_28; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@173158.4]
  wire [7:0] expOut; // @[fNFromRecFN.scala 63:15:freechips.rocketchip.system.DefaultRV32Config.fir@173159.4]
  wire [22:0] _T_29; // @[fNFromRecFN.scala 68:52:freechips.rocketchip.system.DefaultRV32Config.fir@173160.4]
  wire [22:0] _T_30; // @[fNFromRecFN.scala 68:20:freechips.rocketchip.system.DefaultRV32Config.fir@173161.4]
  wire [22:0] fractOut; // @[fNFromRecFN.scala 66:16:freechips.rocketchip.system.DefaultRV32Config.fir@173162.4]
  wire [8:0] _T_31; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@173163.4]
  wire [31:0] store; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@173164.4]
  wire  _T_78; // @[FPU.scala 455:11:freechips.rocketchip.system.DefaultRV32Config.fir@173241.6]
  wire [2:0] _T_71; // @[FPU.scala 451:15:freechips.rocketchip.system.DefaultRV32Config.fir@173231.6]
  wire [1:0] _T_72; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@173232.6]
  wire [2:0] _GEN_30; // @[FPU.scala 451:22:freechips.rocketchip.system.DefaultRV32Config.fir@173233.6]
  wire [2:0] _T_73; // @[FPU.scala 451:22:freechips.rocketchip.system.DefaultRV32Config.fir@173233.6]
  wire  _T_74; // @[FPU.scala 451:53:freechips.rocketchip.system.DefaultRV32Config.fir@173234.6]
  wire [32:0] _T_77; // @[FPU.scala 451:57:freechips.rocketchip.system.DefaultRV32Config.fir@173237.6]
  wire [32:0] _GEN_25; // @[FPU.scala 455:21:freechips.rocketchip.system.DefaultRV32Config.fir@173242.6]
  wire  _T_34; // @[FPU.scala 443:14:freechips.rocketchip.system.DefaultRV32Config.fir@173176.4]
  wire [2:0] code; // @[FPU.scala 204:17:freechips.rocketchip.system.DefaultRV32Config.fir@173179.6]
  wire  isNaN; // @[FPU.scala 221:22:freechips.rocketchip.system.DefaultRV32Config.fir@173197.6]
  wire  _T_47; // @[FPU.scala 225:28:freechips.rocketchip.system.DefaultRV32Config.fir@173201.6]
  wire  isQNaN; // @[FPU.scala 225:24:freechips.rocketchip.system.DefaultRV32Config.fir@173202.6]
  wire  _T_46; // @[FPU.scala 223:27:freechips.rocketchip.system.DefaultRV32Config.fir@173199.6]
  wire  isSNaN; // @[FPU.scala 223:24:freechips.rocketchip.system.DefaultRV32Config.fir@173200.6]
  wire [1:0] codeHi; // @[FPU.scala 206:22:freechips.rocketchip.system.DefaultRV32Config.fir@173180.6]
  wire  isSpecial; // @[FPU.scala 208:28:freechips.rocketchip.system.DefaultRV32Config.fir@173181.6]
  wire  _T_43; // @[FPU.scala 219:35:freechips.rocketchip.system.DefaultRV32Config.fir@173194.6]
  wire  _T_44; // @[FPU.scala 219:30:freechips.rocketchip.system.DefaultRV32Config.fir@173195.6]
  wire  isInf; // @[FPU.scala 219:27:freechips.rocketchip.system.DefaultRV32Config.fir@173196.6]
  wire  _T_48; // @[FPU.scala 228:34:freechips.rocketchip.system.DefaultRV32Config.fir@173203.6]
  wire  _T_49; // @[FPU.scala 228:31:freechips.rocketchip.system.DefaultRV32Config.fir@173204.6]
  wire  _T_39; // @[FPU.scala 215:27:freechips.rocketchip.system.DefaultRV32Config.fir@173188.6]
  wire [6:0] _T_35; // @[FPU.scala 211:30:freechips.rocketchip.system.DefaultRV32Config.fir@173182.6]
  wire  isHighSubnormalIn; // @[FPU.scala 211:55:freechips.rocketchip.system.DefaultRV32Config.fir@173183.6]
  wire  _T_40; // @[FPU.scala 215:42:freechips.rocketchip.system.DefaultRV32Config.fir@173189.6]
  wire  _T_41; // @[FPU.scala 215:39:freechips.rocketchip.system.DefaultRV32Config.fir@173190.6]
  wire  _T_42; // @[FPU.scala 215:71:freechips.rocketchip.system.DefaultRV32Config.fir@173191.6]
  wire  isNormal; // @[FPU.scala 215:61:freechips.rocketchip.system.DefaultRV32Config.fir@173192.6]
  wire  _T_51; // @[FPU.scala 228:50:freechips.rocketchip.system.DefaultRV32Config.fir@173206.6]
  wire  _T_36; // @[FPU.scala 213:28:freechips.rocketchip.system.DefaultRV32Config.fir@173184.6]
  wire  _T_38; // @[FPU.scala 213:62:freechips.rocketchip.system.DefaultRV32Config.fir@173186.6]
  wire  isSubnormal_1; // @[FPU.scala 213:40:freechips.rocketchip.system.DefaultRV32Config.fir@173187.6]
  wire  _T_53; // @[FPU.scala 229:21:freechips.rocketchip.system.DefaultRV32Config.fir@173208.6]
  wire  isZero; // @[FPU.scala 217:23:freechips.rocketchip.system.DefaultRV32Config.fir@173193.6]
  wire  _T_55; // @[FPU.scala 229:38:freechips.rocketchip.system.DefaultRV32Config.fir@173210.6]
  wire  _T_56; // @[FPU.scala 229:55:freechips.rocketchip.system.DefaultRV32Config.fir@173211.6]
  wire  _T_57; // @[FPU.scala 230:21:freechips.rocketchip.system.DefaultRV32Config.fir@173212.6]
  wire  _T_58; // @[FPU.scala 230:39:freechips.rocketchip.system.DefaultRV32Config.fir@173213.6]
  wire  _T_59; // @[FPU.scala 230:54:freechips.rocketchip.system.DefaultRV32Config.fir@173214.6]
  wire [9:0] classify_out; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@173223.6]
  wire [32:0] _T_70; // @[FPU.scala 446:27:freechips.rocketchip.system.DefaultRV32Config.fir@173226.6]
  wire [32:0] _GEN_22; // @[FPU.scala 443:19:freechips.rocketchip.system.DefaultRV32Config.fir@173177.4]
  wire [32:0] toint; // @[FPU.scala 450:20:freechips.rocketchip.system.DefaultRV32Config.fir@173230.4]
  wire  _T_79; // @[FPU.scala 463:35:freechips.rocketchip.system.DefaultRV32Config.fir@173250.8]
  wire [1:0] _T_81; // @[FPU.scala 465:55:freechips.rocketchip.system.DefaultRV32Config.fir@173254.8]
  wire  _T_82; // @[FPU.scala 465:62:freechips.rocketchip.system.DefaultRV32Config.fir@173255.8]
  wire  _T_83; // @[FPU.scala 465:104:freechips.rocketchip.system.DefaultRV32Config.fir@173256.8]
  wire [4:0] _T_85; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@173258.8]
  wire [4:0] _GEN_26; // @[FPU.scala 455:21:freechips.rocketchip.system.DefaultRV32Config.fir@173242.6]
  wire [32:0] _T_86; // @[FPU.scala 490:46:freechips.rocketchip.system.DefaultRV32Config.fir@173263.4]
  wire  _T_87; // @[FPU.scala 490:53:freechips.rocketchip.system.DefaultRV32Config.fir@173264.4]
  wire [32:0] _T_88; // @[FPU.scala 490:72:freechips.rocketchip.system.DefaultRV32Config.fir@173265.4]
  wire  _T_89; // @[FPU.scala 490:79:freechips.rocketchip.system.DefaultRV32Config.fir@173266.4]
  wire  _T_90; // @[FPU.scala 490:59:freechips.rocketchip.system.DefaultRV32Config.fir@173267.4]
  CompareRecFN dcmp ( // @[FPU.scala 428:20:freechips.rocketchip.system.DefaultRV32Config.fir@173111.4]
    .io_a(dcmp_io_a),
    .io_b(dcmp_io_b),
    .io_signaling(dcmp_io_signaling),
    .io_lt(dcmp_io_lt),
    .io_eq(dcmp_io_eq),
    .io_exceptionFlags(dcmp_io_exceptionFlags)
  );
  RecFNToIN RecFNToIN ( // @[FPU.scala 460:24:freechips.rocketchip.system.DefaultRV32Config.fir@173244.8]
    .io_in(RecFNToIN_io_in),
    .io_roundingMode(RecFNToIN_io_roundingMode),
    .io_signedOut(RecFNToIN_io_signedOut),
    .io_out(RecFNToIN_io_out),
    .io_intExceptionFlags(RecFNToIN_io_intExceptionFlags)
  );
  assign _T = in_rm[1]; // @[FPU.scala 431:30:freechips.rocketchip.system.DefaultRV32Config.fir@173117.4]
  assign _T_2 = in_in1[31:23]; // @[rawFloatFromRecFN.scala 50:21:freechips.rocketchip.system.DefaultRV32Config.fir@173121.4]
  assign _T_3 = _T_2[8:6]; // @[rawFloatFromRecFN.scala 51:29:freechips.rocketchip.system.DefaultRV32Config.fir@173122.4]
  assign rawIn_isZero = _T_3 == 3'h0; // @[rawFloatFromRecFN.scala 51:54:freechips.rocketchip.system.DefaultRV32Config.fir@173123.4]
  assign _T_5 = _T_2[8:7]; // @[rawFloatFromRecFN.scala 52:29:freechips.rocketchip.system.DefaultRV32Config.fir@173124.4]
  assign _T_6 = _T_5 == 2'h3; // @[rawFloatFromRecFN.scala 52:54:freechips.rocketchip.system.DefaultRV32Config.fir@173125.4]
  assign _T_7 = _T_2[6]; // @[rawFloatFromRecFN.scala 55:41:freechips.rocketchip.system.DefaultRV32Config.fir@173128.4]
  assign rawIn_isNaN = _T_6 & _T_7; // @[rawFloatFromRecFN.scala 55:33:freechips.rocketchip.system.DefaultRV32Config.fir@173129.4]
  assign _T_10 = _T_7 == 1'h0; // @[rawFloatFromRecFN.scala 56:36:freechips.rocketchip.system.DefaultRV32Config.fir@173132.4]
  assign rawIn_isInf = _T_6 & _T_10; // @[rawFloatFromRecFN.scala 56:33:freechips.rocketchip.system.DefaultRV32Config.fir@173133.4]
  assign rawIn_sign = in_in1[32]; // @[rawFloatFromRecFN.scala 58:25:freechips.rocketchip.system.DefaultRV32Config.fir@173136.4]
  assign rawIn_sExp = {1'b0,$signed(_T_2)}; // @[rawFloatFromRecFN.scala 59:27:freechips.rocketchip.system.DefaultRV32Config.fir@173138.4]
  assign _T_14 = rawIn_isZero == 1'h0; // @[rawFloatFromRecFN.scala 60:39:freechips.rocketchip.system.DefaultRV32Config.fir@173140.4]
  assign _T_15 = in_in1[22:0]; // @[rawFloatFromRecFN.scala 60:51:freechips.rocketchip.system.DefaultRV32Config.fir@173141.4]
  assign rawIn_sig = {1'h0,_T_14,_T_15}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@173143.4]
  assign isSubnormal = $signed(rawIn_sExp) < $signed(10'sh82); // @[fNFromRecFN.scala 51:39:freechips.rocketchip.system.DefaultRV32Config.fir@173145.4]
  assign _T_18 = rawIn_sExp[4:0]; // @[fNFromRecFN.scala 53:51:freechips.rocketchip.system.DefaultRV32Config.fir@173146.4]
  assign denormShiftDist = 5'h1 - _T_18; // @[fNFromRecFN.scala 53:39:freechips.rocketchip.system.DefaultRV32Config.fir@173148.4]
  assign _T_20 = rawIn_sig[24:1]; // @[fNFromRecFN.scala 55:38:freechips.rocketchip.system.DefaultRV32Config.fir@173149.4]
  assign _T_21 = _T_20 >> denormShiftDist; // @[fNFromRecFN.scala 55:42:freechips.rocketchip.system.DefaultRV32Config.fir@173150.4]
  assign denormFract = _T_21[22:0]; // @[fNFromRecFN.scala 55:60:freechips.rocketchip.system.DefaultRV32Config.fir@173151.4]
  assign _T_22 = rawIn_sExp[7:0]; // @[fNFromRecFN.scala 61:27:freechips.rocketchip.system.DefaultRV32Config.fir@173152.4]
  assign _T_24 = _T_22 - 8'h81; // @[fNFromRecFN.scala 61:45:freechips.rocketchip.system.DefaultRV32Config.fir@173154.4]
  assign _T_25 = isSubnormal ? 8'h0 : _T_24; // @[fNFromRecFN.scala 59:16:freechips.rocketchip.system.DefaultRV32Config.fir@173155.4]
  assign _T_26 = rawIn_isNaN | rawIn_isInf; // @[fNFromRecFN.scala 63:44:freechips.rocketchip.system.DefaultRV32Config.fir@173156.4]
  assign _T_28 = _T_26 ? 8'hff : 8'h0; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@173158.4]
  assign expOut = _T_25 | _T_28; // @[fNFromRecFN.scala 63:15:freechips.rocketchip.system.DefaultRV32Config.fir@173159.4]
  assign _T_29 = rawIn_sig[22:0]; // @[fNFromRecFN.scala 68:52:freechips.rocketchip.system.DefaultRV32Config.fir@173160.4]
  assign _T_30 = rawIn_isInf ? 23'h0 : _T_29; // @[fNFromRecFN.scala 68:20:freechips.rocketchip.system.DefaultRV32Config.fir@173161.4]
  assign fractOut = isSubnormal ? denormFract : _T_30; // @[fNFromRecFN.scala 66:16:freechips.rocketchip.system.DefaultRV32Config.fir@173162.4]
  assign _T_31 = {rawIn_sign,expOut}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@173163.4]
  assign store = {rawIn_sign,expOut,fractOut}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@173164.4]
  assign _T_78 = in_ren2 == 1'h0; // @[FPU.scala 455:11:freechips.rocketchip.system.DefaultRV32Config.fir@173241.6]
  assign _T_71 = ~ in_rm; // @[FPU.scala 451:15:freechips.rocketchip.system.DefaultRV32Config.fir@173231.6]
  assign _T_72 = {dcmp_io_lt,dcmp_io_eq}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@173232.6]
  assign _GEN_30 = {{1'd0}, _T_72}; // @[FPU.scala 451:22:freechips.rocketchip.system.DefaultRV32Config.fir@173233.6]
  assign _T_73 = _T_71 & _GEN_30; // @[FPU.scala 451:22:freechips.rocketchip.system.DefaultRV32Config.fir@173233.6]
  assign _T_74 = _T_73 != 3'h0; // @[FPU.scala 451:53:freechips.rocketchip.system.DefaultRV32Config.fir@173234.6]
  assign _T_77 = {{32'd0}, _T_74}; // @[FPU.scala 451:57:freechips.rocketchip.system.DefaultRV32Config.fir@173237.6]
  assign _GEN_25 = _T_78 ? {{1'd0}, RecFNToIN_io_out} : _T_77; // @[FPU.scala 455:21:freechips.rocketchip.system.DefaultRV32Config.fir@173242.6]
  assign _T_34 = in_rm[0]; // @[FPU.scala 443:14:freechips.rocketchip.system.DefaultRV32Config.fir@173176.4]
  assign code = in_in1[31:29]; // @[FPU.scala 204:17:freechips.rocketchip.system.DefaultRV32Config.fir@173179.6]
  assign isNaN = code == 3'h7; // @[FPU.scala 221:22:freechips.rocketchip.system.DefaultRV32Config.fir@173197.6]
  assign _T_47 = in_in1[22]; // @[FPU.scala 225:28:freechips.rocketchip.system.DefaultRV32Config.fir@173201.6]
  assign isQNaN = isNaN & _T_47; // @[FPU.scala 225:24:freechips.rocketchip.system.DefaultRV32Config.fir@173202.6]
  assign _T_46 = _T_47 == 1'h0; // @[FPU.scala 223:27:freechips.rocketchip.system.DefaultRV32Config.fir@173199.6]
  assign isSNaN = isNaN & _T_46; // @[FPU.scala 223:24:freechips.rocketchip.system.DefaultRV32Config.fir@173200.6]
  assign codeHi = code[2:1]; // @[FPU.scala 206:22:freechips.rocketchip.system.DefaultRV32Config.fir@173180.6]
  assign isSpecial = codeHi == 2'h3; // @[FPU.scala 208:28:freechips.rocketchip.system.DefaultRV32Config.fir@173181.6]
  assign _T_43 = code[0]; // @[FPU.scala 219:35:freechips.rocketchip.system.DefaultRV32Config.fir@173194.6]
  assign _T_44 = _T_43 == 1'h0; // @[FPU.scala 219:30:freechips.rocketchip.system.DefaultRV32Config.fir@173195.6]
  assign isInf = isSpecial & _T_44; // @[FPU.scala 219:27:freechips.rocketchip.system.DefaultRV32Config.fir@173196.6]
  assign _T_48 = rawIn_sign == 1'h0; // @[FPU.scala 228:34:freechips.rocketchip.system.DefaultRV32Config.fir@173203.6]
  assign _T_49 = isInf & _T_48; // @[FPU.scala 228:31:freechips.rocketchip.system.DefaultRV32Config.fir@173204.6]
  assign _T_39 = codeHi == 2'h1; // @[FPU.scala 215:27:freechips.rocketchip.system.DefaultRV32Config.fir@173188.6]
  assign _T_35 = in_in1[29:23]; // @[FPU.scala 211:30:freechips.rocketchip.system.DefaultRV32Config.fir@173182.6]
  assign isHighSubnormalIn = _T_35 < 7'h2; // @[FPU.scala 211:55:freechips.rocketchip.system.DefaultRV32Config.fir@173183.6]
  assign _T_40 = isHighSubnormalIn == 1'h0; // @[FPU.scala 215:42:freechips.rocketchip.system.DefaultRV32Config.fir@173189.6]
  assign _T_41 = _T_39 & _T_40; // @[FPU.scala 215:39:freechips.rocketchip.system.DefaultRV32Config.fir@173190.6]
  assign _T_42 = codeHi == 2'h2; // @[FPU.scala 215:71:freechips.rocketchip.system.DefaultRV32Config.fir@173191.6]
  assign isNormal = _T_41 | _T_42; // @[FPU.scala 215:61:freechips.rocketchip.system.DefaultRV32Config.fir@173192.6]
  assign _T_51 = isNormal & _T_48; // @[FPU.scala 228:50:freechips.rocketchip.system.DefaultRV32Config.fir@173206.6]
  assign _T_36 = code == 3'h1; // @[FPU.scala 213:28:freechips.rocketchip.system.DefaultRV32Config.fir@173184.6]
  assign _T_38 = _T_39 & isHighSubnormalIn; // @[FPU.scala 213:62:freechips.rocketchip.system.DefaultRV32Config.fir@173186.6]
  assign isSubnormal_1 = _T_36 | _T_38; // @[FPU.scala 213:40:freechips.rocketchip.system.DefaultRV32Config.fir@173187.6]
  assign _T_53 = isSubnormal_1 & _T_48; // @[FPU.scala 229:21:freechips.rocketchip.system.DefaultRV32Config.fir@173208.6]
  assign isZero = code == 3'h0; // @[FPU.scala 217:23:freechips.rocketchip.system.DefaultRV32Config.fir@173193.6]
  assign _T_55 = isZero & _T_48; // @[FPU.scala 229:38:freechips.rocketchip.system.DefaultRV32Config.fir@173210.6]
  assign _T_56 = isZero & rawIn_sign; // @[FPU.scala 229:55:freechips.rocketchip.system.DefaultRV32Config.fir@173211.6]
  assign _T_57 = isSubnormal_1 & rawIn_sign; // @[FPU.scala 230:21:freechips.rocketchip.system.DefaultRV32Config.fir@173212.6]
  assign _T_58 = isNormal & rawIn_sign; // @[FPU.scala 230:39:freechips.rocketchip.system.DefaultRV32Config.fir@173213.6]
  assign _T_59 = isInf & rawIn_sign; // @[FPU.scala 230:54:freechips.rocketchip.system.DefaultRV32Config.fir@173214.6]
  assign classify_out = {isQNaN,isSNaN,_T_49,_T_51,_T_53,_T_55,_T_56,_T_57,_T_58,_T_59}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@173223.6]
  assign _T_70 = {{23'd0}, classify_out}; // @[FPU.scala 446:27:freechips.rocketchip.system.DefaultRV32Config.fir@173226.6]
  assign _GEN_22 = _T_34 ? _T_70 : {{1'd0}, store}; // @[FPU.scala 443:19:freechips.rocketchip.system.DefaultRV32Config.fir@173177.4]
  assign toint = in_wflags ? _GEN_25 : _GEN_22; // @[FPU.scala 450:20:freechips.rocketchip.system.DefaultRV32Config.fir@173230.4]
  assign _T_79 = in_typ[0]; // @[FPU.scala 463:35:freechips.rocketchip.system.DefaultRV32Config.fir@173250.8]
  assign _T_81 = RecFNToIN_io_intExceptionFlags[2:1]; // @[FPU.scala 465:55:freechips.rocketchip.system.DefaultRV32Config.fir@173254.8]
  assign _T_82 = _T_81 != 2'h0; // @[FPU.scala 465:62:freechips.rocketchip.system.DefaultRV32Config.fir@173255.8]
  assign _T_83 = RecFNToIN_io_intExceptionFlags[0]; // @[FPU.scala 465:104:freechips.rocketchip.system.DefaultRV32Config.fir@173256.8]
  assign _T_85 = {_T_82,3'h0,_T_83}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@173258.8]
  assign _GEN_26 = _T_78 ? _T_85 : dcmp_io_exceptionFlags; // @[FPU.scala 455:21:freechips.rocketchip.system.DefaultRV32Config.fir@173242.6]
  assign _T_86 = $signed(dcmp_io_a); // @[FPU.scala 490:46:freechips.rocketchip.system.DefaultRV32Config.fir@173263.4]
  assign _T_87 = $signed(_T_86) < $signed(33'sh0); // @[FPU.scala 490:53:freechips.rocketchip.system.DefaultRV32Config.fir@173264.4]
  assign _T_88 = $signed(dcmp_io_b); // @[FPU.scala 490:72:freechips.rocketchip.system.DefaultRV32Config.fir@173265.4]
  assign _T_89 = $signed(_T_88) >= $signed(33'sh0); // @[FPU.scala 490:79:freechips.rocketchip.system.DefaultRV32Config.fir@173266.4]
  assign _T_90 = _T_87 & _T_89; // @[FPU.scala 490:59:freechips.rocketchip.system.DefaultRV32Config.fir@173267.4]
  assign io_out_bits_in_rm = in_rm; // @[FPU.scala 491:18:freechips.rocketchip.system.DefaultRV32Config.fir@173270.4]
  assign io_out_bits_in_in1 = in_in1; // @[FPU.scala 491:18:freechips.rocketchip.system.DefaultRV32Config.fir@173270.4]
  assign io_out_bits_in_in2 = in_in2; // @[FPU.scala 491:18:freechips.rocketchip.system.DefaultRV32Config.fir@173270.4]
  assign io_out_bits_lt = dcmp_io_lt | _T_90; // @[FPU.scala 490:18:freechips.rocketchip.system.DefaultRV32Config.fir@173269.4]
  assign io_out_bits_store = {_T_31,fractOut}; // @[FPU.scala 439:21:freechips.rocketchip.system.DefaultRV32Config.fir@173172.4]
  assign io_out_bits_toint = toint[31:0]; // @[FPU.scala 440:21:freechips.rocketchip.system.DefaultRV32Config.fir@173174.4]
  assign io_out_bits_exc = in_wflags ? _GEN_26 : 5'h0; // @[FPU.scala 441:19:freechips.rocketchip.system.DefaultRV32Config.fir@173175.4 FPU.scala 452:21:freechips.rocketchip.system.DefaultRV32Config.fir@173239.6 FPU.scala 465:23:freechips.rocketchip.system.DefaultRV32Config.fir@173259.8]
  assign dcmp_io_a = in_in1; // @[FPU.scala 429:13:freechips.rocketchip.system.DefaultRV32Config.fir@173115.4]
  assign dcmp_io_b = in_in2; // @[FPU.scala 430:13:freechips.rocketchip.system.DefaultRV32Config.fir@173116.4]
  assign dcmp_io_signaling = _T == 1'h0; // @[FPU.scala 431:21:freechips.rocketchip.system.DefaultRV32Config.fir@173119.4]
  assign RecFNToIN_io_in = in_in1; // @[FPU.scala 461:18:freechips.rocketchip.system.DefaultRV32Config.fir@173248.8]
  assign RecFNToIN_io_roundingMode = in_rm; // @[FPU.scala 462:28:freechips.rocketchip.system.DefaultRV32Config.fir@173249.8]
  assign RecFNToIN_io_signedOut = ~ _T_79; // @[FPU.scala 463:25:freechips.rocketchip.system.DefaultRV32Config.fir@173252.8]
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
  in_ren2 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  in_wflags = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  in_rm = _RAND_2[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  in_typ = _RAND_3[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {2{`RANDOM}};
  in_in1 = _RAND_4[32:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {2{`RANDOM}};
  in_in2 = _RAND_5[32:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge clock) begin
    if (io_in_valid) begin
      in_ren2 <= io_in_bits_ren2;
    end
    if (io_in_valid) begin
      in_wflags <= io_in_bits_wflags;
    end
    if (io_in_valid) begin
      in_rm <= io_in_bits_rm;
    end
    if (io_in_valid) begin
      in_typ <= io_in_bits_typ;
    end
    if (io_in_valid) begin
      in_in1 <= io_in_bits_in1;
    end
    if (io_in_valid) begin
      in_in2 <= io_in_bits_in2;
    end
  end
endmodule
`endif // __FPToInt
