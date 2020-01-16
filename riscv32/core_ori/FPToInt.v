module FPToInt( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@142949.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@142950.4]
  input         io_in_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@142952.4]
  input         io_in_bits_ren2, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@142952.4]
  input         io_in_bits_wflags, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@142952.4]
  input  [2:0]  io_in_bits_rm, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@142952.4]
  input  [1:0]  io_in_bits_typ, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@142952.4]
  input  [32:0] io_in_bits_in1, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@142952.4]
  input  [32:0] io_in_bits_in2, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@142952.4]
  output [2:0]  io_out_bits_in_rm, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@142952.4]
  output [32:0] io_out_bits_in_in1, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@142952.4]
  output [32:0] io_out_bits_in_in2, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@142952.4]
  output        io_out_bits_lt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@142952.4]
  output [31:0] io_out_bits_store, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@142952.4]
  output [31:0] io_out_bits_toint, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@142952.4]
  output [4:0]  io_out_bits_exc // @[:freechips.rocketchip.system.DefaultRV32Config.fir@142952.4]
);
  wire [32:0] dcmp_io_a; // @[FPU.scala 411:20:freechips.rocketchip.system.DefaultRV32Config.fir@142984.4]
  wire [32:0] dcmp_io_b; // @[FPU.scala 411:20:freechips.rocketchip.system.DefaultRV32Config.fir@142984.4]
  wire  dcmp_io_signaling; // @[FPU.scala 411:20:freechips.rocketchip.system.DefaultRV32Config.fir@142984.4]
  wire  dcmp_io_lt; // @[FPU.scala 411:20:freechips.rocketchip.system.DefaultRV32Config.fir@142984.4]
  wire  dcmp_io_eq; // @[FPU.scala 411:20:freechips.rocketchip.system.DefaultRV32Config.fir@142984.4]
  wire [4:0] dcmp_io_exceptionFlags; // @[FPU.scala 411:20:freechips.rocketchip.system.DefaultRV32Config.fir@142984.4]
  wire [32:0] RecFNToIN_io_in; // @[FPU.scala 439:24:freechips.rocketchip.system.DefaultRV32Config.fir@143117.8]
  wire [2:0] RecFNToIN_io_roundingMode; // @[FPU.scala 439:24:freechips.rocketchip.system.DefaultRV32Config.fir@143117.8]
  wire  RecFNToIN_io_signedOut; // @[FPU.scala 439:24:freechips.rocketchip.system.DefaultRV32Config.fir@143117.8]
  wire [31:0] RecFNToIN_io_out; // @[FPU.scala 439:24:freechips.rocketchip.system.DefaultRV32Config.fir@143117.8]
  wire [2:0] RecFNToIN_io_intExceptionFlags; // @[FPU.scala 439:24:freechips.rocketchip.system.DefaultRV32Config.fir@143117.8]
  reg  in_ren2; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@142957.4]
  reg [31:0] _RAND_0;
  reg  in_wflags; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@142957.4]
  reg [31:0] _RAND_1;
  reg [2:0] in_rm; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@142957.4]
  reg [31:0] _RAND_2;
  reg [1:0] in_typ; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@142957.4]
  reg [31:0] _RAND_3;
  reg [32:0] in_in1; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@142957.4]
  reg [63:0] _RAND_4;
  reg [32:0] in_in2; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@142957.4]
  reg [63:0] _RAND_5;
  wire  _T; // @[FPU.scala 414:30:freechips.rocketchip.system.DefaultRV32Config.fir@142990.4]
  wire [8:0] _T_2; // @[rawFloatFromRecFN.scala 50:21:freechips.rocketchip.system.DefaultRV32Config.fir@142994.4]
  wire [2:0] _T_3; // @[rawFloatFromRecFN.scala 51:29:freechips.rocketchip.system.DefaultRV32Config.fir@142995.4]
  wire  _T_4; // @[rawFloatFromRecFN.scala 51:54:freechips.rocketchip.system.DefaultRV32Config.fir@142996.4]
  wire [1:0] _T_5; // @[rawFloatFromRecFN.scala 52:29:freechips.rocketchip.system.DefaultRV32Config.fir@142997.4]
  wire  _T_6; // @[rawFloatFromRecFN.scala 52:54:freechips.rocketchip.system.DefaultRV32Config.fir@142998.4]
  wire  _T_8; // @[rawFloatFromRecFN.scala 55:41:freechips.rocketchip.system.DefaultRV32Config.fir@143001.4]
  wire  _T_9; // @[rawFloatFromRecFN.scala 55:33:freechips.rocketchip.system.DefaultRV32Config.fir@143002.4]
  wire  _T_11; // @[rawFloatFromRecFN.scala 56:36:freechips.rocketchip.system.DefaultRV32Config.fir@143005.4]
  wire  _T_12; // @[rawFloatFromRecFN.scala 56:33:freechips.rocketchip.system.DefaultRV32Config.fir@143006.4]
  wire  _T_13; // @[rawFloatFromRecFN.scala 58:25:freechips.rocketchip.system.DefaultRV32Config.fir@143009.4]
  wire [9:0] _T_14; // @[rawFloatFromRecFN.scala 59:27:freechips.rocketchip.system.DefaultRV32Config.fir@143011.4]
  wire  _T_15; // @[rawFloatFromRecFN.scala 60:39:freechips.rocketchip.system.DefaultRV32Config.fir@143013.4]
  wire [22:0] _T_16; // @[rawFloatFromRecFN.scala 60:51:freechips.rocketchip.system.DefaultRV32Config.fir@143014.4]
  wire [24:0] _T_18; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@143016.4]
  wire  _T_19; // @[fNFromRecFN.scala 50:39:freechips.rocketchip.system.DefaultRV32Config.fir@143018.4]
  wire [4:0] _T_20; // @[fNFromRecFN.scala 51:51:freechips.rocketchip.system.DefaultRV32Config.fir@143019.4]
  wire [4:0] _T_22; // @[fNFromRecFN.scala 51:39:freechips.rocketchip.system.DefaultRV32Config.fir@143021.4]
  wire [23:0] _T_23; // @[fNFromRecFN.scala 52:38:freechips.rocketchip.system.DefaultRV32Config.fir@143022.4]
  wire [23:0] _T_24; // @[fNFromRecFN.scala 52:42:freechips.rocketchip.system.DefaultRV32Config.fir@143023.4]
  wire [22:0] _T_25; // @[fNFromRecFN.scala 52:60:freechips.rocketchip.system.DefaultRV32Config.fir@143024.4]
  wire [7:0] _T_26; // @[fNFromRecFN.scala 57:27:freechips.rocketchip.system.DefaultRV32Config.fir@143025.4]
  wire [7:0] _T_28; // @[fNFromRecFN.scala 57:45:freechips.rocketchip.system.DefaultRV32Config.fir@143027.4]
  wire [7:0] _T_29; // @[fNFromRecFN.scala 55:16:freechips.rocketchip.system.DefaultRV32Config.fir@143028.4]
  wire  _T_30; // @[fNFromRecFN.scala 59:44:freechips.rocketchip.system.DefaultRV32Config.fir@143029.4]
  wire [7:0] _T_32; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@143031.4]
  wire [7:0] _T_33; // @[fNFromRecFN.scala 59:15:freechips.rocketchip.system.DefaultRV32Config.fir@143032.4]
  wire [22:0] _T_34; // @[fNFromRecFN.scala 63:52:freechips.rocketchip.system.DefaultRV32Config.fir@143033.4]
  wire [22:0] _T_35; // @[fNFromRecFN.scala 63:20:freechips.rocketchip.system.DefaultRV32Config.fir@143034.4]
  wire [22:0] _T_36; // @[fNFromRecFN.scala 61:16:freechips.rocketchip.system.DefaultRV32Config.fir@143035.4]
  wire [8:0] _T_37; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@143036.4]
  wire [31:0] store; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@143037.4]
  wire  _T_97; // @[FPU.scala 435:11:freechips.rocketchip.system.DefaultRV32Config.fir@143114.6]
  wire [2:0] _T_90; // @[FPU.scala 431:15:freechips.rocketchip.system.DefaultRV32Config.fir@143104.6]
  wire [1:0] _T_91; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@143105.6]
  wire [2:0] _GEN_30; // @[FPU.scala 431:22:freechips.rocketchip.system.DefaultRV32Config.fir@143106.6]
  wire [2:0] _T_92; // @[FPU.scala 431:22:freechips.rocketchip.system.DefaultRV32Config.fir@143106.6]
  wire  _T_93; // @[FPU.scala 431:53:freechips.rocketchip.system.DefaultRV32Config.fir@143107.6]
  wire [32:0] _T_96; // @[FPU.scala 431:57:freechips.rocketchip.system.DefaultRV32Config.fir@143110.6]
  wire [32:0] _GEN_25; // @[FPU.scala 435:21:freechips.rocketchip.system.DefaultRV32Config.fir@143115.6]
  wire  _T_40; // @[FPU.scala 424:14:freechips.rocketchip.system.DefaultRV32Config.fir@143049.4]
  wire [2:0] _T_42; // @[FPU.scala 203:17:freechips.rocketchip.system.DefaultRV32Config.fir@143052.6]
  wire  _T_60; // @[FPU.scala 212:22:freechips.rocketchip.system.DefaultRV32Config.fir@143070.6]
  wire  _T_64; // @[FPU.scala 214:28:freechips.rocketchip.system.DefaultRV32Config.fir@143074.6]
  wire  _T_65; // @[FPU.scala 214:24:freechips.rocketchip.system.DefaultRV32Config.fir@143075.6]
  wire  _T_62; // @[FPU.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@143072.6]
  wire  _T_63; // @[FPU.scala 213:24:freechips.rocketchip.system.DefaultRV32Config.fir@143073.6]
  wire [1:0] _T_43; // @[FPU.scala 204:22:freechips.rocketchip.system.DefaultRV32Config.fir@143053.6]
  wire  _T_44; // @[FPU.scala 205:28:freechips.rocketchip.system.DefaultRV32Config.fir@143054.6]
  wire  _T_57; // @[FPU.scala 211:35:freechips.rocketchip.system.DefaultRV32Config.fir@143067.6]
  wire  _T_58; // @[FPU.scala 211:30:freechips.rocketchip.system.DefaultRV32Config.fir@143068.6]
  wire  _T_59; // @[FPU.scala 211:27:freechips.rocketchip.system.DefaultRV32Config.fir@143069.6]
  wire  _T_66; // @[FPU.scala 216:34:freechips.rocketchip.system.DefaultRV32Config.fir@143076.6]
  wire  _T_67; // @[FPU.scala 216:31:freechips.rocketchip.system.DefaultRV32Config.fir@143077.6]
  wire  _T_51; // @[FPU.scala 209:27:freechips.rocketchip.system.DefaultRV32Config.fir@143061.6]
  wire [6:0] _T_45; // @[FPU.scala 207:30:freechips.rocketchip.system.DefaultRV32Config.fir@143055.6]
  wire  _T_46; // @[FPU.scala 207:55:freechips.rocketchip.system.DefaultRV32Config.fir@143056.6]
  wire  _T_52; // @[FPU.scala 209:42:freechips.rocketchip.system.DefaultRV32Config.fir@143062.6]
  wire  _T_53; // @[FPU.scala 209:39:freechips.rocketchip.system.DefaultRV32Config.fir@143063.6]
  wire  _T_54; // @[FPU.scala 209:71:freechips.rocketchip.system.DefaultRV32Config.fir@143064.6]
  wire  _T_55; // @[FPU.scala 209:61:freechips.rocketchip.system.DefaultRV32Config.fir@143065.6]
  wire  _T_69; // @[FPU.scala 216:50:freechips.rocketchip.system.DefaultRV32Config.fir@143079.6]
  wire  _T_47; // @[FPU.scala 208:28:freechips.rocketchip.system.DefaultRV32Config.fir@143057.6]
  wire  _T_49; // @[FPU.scala 208:62:freechips.rocketchip.system.DefaultRV32Config.fir@143059.6]
  wire  _T_50; // @[FPU.scala 208:40:freechips.rocketchip.system.DefaultRV32Config.fir@143060.6]
  wire  _T_71; // @[FPU.scala 217:21:freechips.rocketchip.system.DefaultRV32Config.fir@143081.6]
  wire  _T_56; // @[FPU.scala 210:23:freechips.rocketchip.system.DefaultRV32Config.fir@143066.6]
  wire  _T_73; // @[FPU.scala 217:38:freechips.rocketchip.system.DefaultRV32Config.fir@143083.6]
  wire  _T_74; // @[FPU.scala 217:55:freechips.rocketchip.system.DefaultRV32Config.fir@143084.6]
  wire  _T_75; // @[FPU.scala 218:21:freechips.rocketchip.system.DefaultRV32Config.fir@143085.6]
  wire  _T_76; // @[FPU.scala 218:39:freechips.rocketchip.system.DefaultRV32Config.fir@143086.6]
  wire  _T_77; // @[FPU.scala 218:54:freechips.rocketchip.system.DefaultRV32Config.fir@143087.6]
  wire [9:0] _T_86; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@143096.6]
  wire [32:0] _T_89; // @[FPU.scala 426:27:freechips.rocketchip.system.DefaultRV32Config.fir@143099.6]
  wire [32:0] _GEN_22; // @[FPU.scala 424:19:freechips.rocketchip.system.DefaultRV32Config.fir@143050.4]
  wire [32:0] toint; // @[FPU.scala 430:20:freechips.rocketchip.system.DefaultRV32Config.fir@143103.4]
  wire  _T_98; // @[FPU.scala 442:35:freechips.rocketchip.system.DefaultRV32Config.fir@143123.8]
  wire [1:0] _T_100; // @[FPU.scala 444:55:freechips.rocketchip.system.DefaultRV32Config.fir@143127.8]
  wire  _T_101; // @[FPU.scala 444:62:freechips.rocketchip.system.DefaultRV32Config.fir@143128.8]
  wire  _T_102; // @[FPU.scala 444:104:freechips.rocketchip.system.DefaultRV32Config.fir@143129.8]
  wire [4:0] _T_104; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@143131.8]
  wire [4:0] _GEN_26; // @[FPU.scala 435:21:freechips.rocketchip.system.DefaultRV32Config.fir@143115.6]
  wire [32:0] _T_105; // @[FPU.scala 465:46:freechips.rocketchip.system.DefaultRV32Config.fir@143136.4]
  wire  _T_106; // @[FPU.scala 465:53:freechips.rocketchip.system.DefaultRV32Config.fir@143137.4]
  wire [32:0] _T_107; // @[FPU.scala 465:72:freechips.rocketchip.system.DefaultRV32Config.fir@143138.4]
  wire  _T_108; // @[FPU.scala 465:79:freechips.rocketchip.system.DefaultRV32Config.fir@143139.4]
  wire  _T_109; // @[FPU.scala 465:59:freechips.rocketchip.system.DefaultRV32Config.fir@143140.4]
  CompareRecFN dcmp ( // @[FPU.scala 411:20:freechips.rocketchip.system.DefaultRV32Config.fir@142984.4]
    .io_a(dcmp_io_a),
    .io_b(dcmp_io_b),
    .io_signaling(dcmp_io_signaling),
    .io_lt(dcmp_io_lt),
    .io_eq(dcmp_io_eq),
    .io_exceptionFlags(dcmp_io_exceptionFlags)
  );
  RecFNToIN RecFNToIN ( // @[FPU.scala 439:24:freechips.rocketchip.system.DefaultRV32Config.fir@143117.8]
    .io_in(RecFNToIN_io_in),
    .io_roundingMode(RecFNToIN_io_roundingMode),
    .io_signedOut(RecFNToIN_io_signedOut),
    .io_out(RecFNToIN_io_out),
    .io_intExceptionFlags(RecFNToIN_io_intExceptionFlags)
  );
  assign _T = in_rm[1]; // @[FPU.scala 414:30:freechips.rocketchip.system.DefaultRV32Config.fir@142990.4]
  assign _T_2 = in_in1[31:23]; // @[rawFloatFromRecFN.scala 50:21:freechips.rocketchip.system.DefaultRV32Config.fir@142994.4]
  assign _T_3 = _T_2[8:6]; // @[rawFloatFromRecFN.scala 51:29:freechips.rocketchip.system.DefaultRV32Config.fir@142995.4]
  assign _T_4 = _T_3 == 3'h0; // @[rawFloatFromRecFN.scala 51:54:freechips.rocketchip.system.DefaultRV32Config.fir@142996.4]
  assign _T_5 = _T_2[8:7]; // @[rawFloatFromRecFN.scala 52:29:freechips.rocketchip.system.DefaultRV32Config.fir@142997.4]
  assign _T_6 = _T_5 == 2'h3; // @[rawFloatFromRecFN.scala 52:54:freechips.rocketchip.system.DefaultRV32Config.fir@142998.4]
  assign _T_8 = _T_2[6]; // @[rawFloatFromRecFN.scala 55:41:freechips.rocketchip.system.DefaultRV32Config.fir@143001.4]
  assign _T_9 = _T_6 & _T_8; // @[rawFloatFromRecFN.scala 55:33:freechips.rocketchip.system.DefaultRV32Config.fir@143002.4]
  assign _T_11 = _T_8 == 1'h0; // @[rawFloatFromRecFN.scala 56:36:freechips.rocketchip.system.DefaultRV32Config.fir@143005.4]
  assign _T_12 = _T_6 & _T_11; // @[rawFloatFromRecFN.scala 56:33:freechips.rocketchip.system.DefaultRV32Config.fir@143006.4]
  assign _T_13 = in_in1[32]; // @[rawFloatFromRecFN.scala 58:25:freechips.rocketchip.system.DefaultRV32Config.fir@143009.4]
  assign _T_14 = {1'b0,$signed(_T_2)}; // @[rawFloatFromRecFN.scala 59:27:freechips.rocketchip.system.DefaultRV32Config.fir@143011.4]
  assign _T_15 = _T_4 == 1'h0; // @[rawFloatFromRecFN.scala 60:39:freechips.rocketchip.system.DefaultRV32Config.fir@143013.4]
  assign _T_16 = in_in1[22:0]; // @[rawFloatFromRecFN.scala 60:51:freechips.rocketchip.system.DefaultRV32Config.fir@143014.4]
  assign _T_18 = {1'h0,_T_15,_T_16}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@143016.4]
  assign _T_19 = $signed(_T_14) < $signed(10'sh82); // @[fNFromRecFN.scala 50:39:freechips.rocketchip.system.DefaultRV32Config.fir@143018.4]
  assign _T_20 = _T_14[4:0]; // @[fNFromRecFN.scala 51:51:freechips.rocketchip.system.DefaultRV32Config.fir@143019.4]
  assign _T_22 = 5'h1 - _T_20; // @[fNFromRecFN.scala 51:39:freechips.rocketchip.system.DefaultRV32Config.fir@143021.4]
  assign _T_23 = _T_18[24:1]; // @[fNFromRecFN.scala 52:38:freechips.rocketchip.system.DefaultRV32Config.fir@143022.4]
  assign _T_24 = _T_23 >> _T_22; // @[fNFromRecFN.scala 52:42:freechips.rocketchip.system.DefaultRV32Config.fir@143023.4]
  assign _T_25 = _T_24[22:0]; // @[fNFromRecFN.scala 52:60:freechips.rocketchip.system.DefaultRV32Config.fir@143024.4]
  assign _T_26 = _T_14[7:0]; // @[fNFromRecFN.scala 57:27:freechips.rocketchip.system.DefaultRV32Config.fir@143025.4]
  assign _T_28 = _T_26 - 8'h81; // @[fNFromRecFN.scala 57:45:freechips.rocketchip.system.DefaultRV32Config.fir@143027.4]
  assign _T_29 = _T_19 ? 8'h0 : _T_28; // @[fNFromRecFN.scala 55:16:freechips.rocketchip.system.DefaultRV32Config.fir@143028.4]
  assign _T_30 = _T_9 | _T_12; // @[fNFromRecFN.scala 59:44:freechips.rocketchip.system.DefaultRV32Config.fir@143029.4]
  assign _T_32 = _T_30 ? 8'hff : 8'h0; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@143031.4]
  assign _T_33 = _T_29 | _T_32; // @[fNFromRecFN.scala 59:15:freechips.rocketchip.system.DefaultRV32Config.fir@143032.4]
  assign _T_34 = _T_18[22:0]; // @[fNFromRecFN.scala 63:52:freechips.rocketchip.system.DefaultRV32Config.fir@143033.4]
  assign _T_35 = _T_12 ? 23'h0 : _T_34; // @[fNFromRecFN.scala 63:20:freechips.rocketchip.system.DefaultRV32Config.fir@143034.4]
  assign _T_36 = _T_19 ? _T_25 : _T_35; // @[fNFromRecFN.scala 61:16:freechips.rocketchip.system.DefaultRV32Config.fir@143035.4]
  assign _T_37 = {_T_13,_T_33}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@143036.4]
  assign store = {_T_13,_T_33,_T_36}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@143037.4]
  assign _T_97 = in_ren2 == 1'h0; // @[FPU.scala 435:11:freechips.rocketchip.system.DefaultRV32Config.fir@143114.6]
  assign _T_90 = ~ in_rm; // @[FPU.scala 431:15:freechips.rocketchip.system.DefaultRV32Config.fir@143104.6]
  assign _T_91 = {dcmp_io_lt,dcmp_io_eq}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@143105.6]
  assign _GEN_30 = {{1'd0}, _T_91}; // @[FPU.scala 431:22:freechips.rocketchip.system.DefaultRV32Config.fir@143106.6]
  assign _T_92 = _T_90 & _GEN_30; // @[FPU.scala 431:22:freechips.rocketchip.system.DefaultRV32Config.fir@143106.6]
  assign _T_93 = _T_92 != 3'h0; // @[FPU.scala 431:53:freechips.rocketchip.system.DefaultRV32Config.fir@143107.6]
  assign _T_96 = {{32'd0}, _T_93}; // @[FPU.scala 431:57:freechips.rocketchip.system.DefaultRV32Config.fir@143110.6]
  assign _GEN_25 = _T_97 ? {{1'd0}, RecFNToIN_io_out} : _T_96; // @[FPU.scala 435:21:freechips.rocketchip.system.DefaultRV32Config.fir@143115.6]
  assign _T_40 = in_rm[0]; // @[FPU.scala 424:14:freechips.rocketchip.system.DefaultRV32Config.fir@143049.4]
  assign _T_42 = in_in1[31:29]; // @[FPU.scala 203:17:freechips.rocketchip.system.DefaultRV32Config.fir@143052.6]
  assign _T_60 = _T_42 == 3'h7; // @[FPU.scala 212:22:freechips.rocketchip.system.DefaultRV32Config.fir@143070.6]
  assign _T_64 = in_in1[22]; // @[FPU.scala 214:28:freechips.rocketchip.system.DefaultRV32Config.fir@143074.6]
  assign _T_65 = _T_60 & _T_64; // @[FPU.scala 214:24:freechips.rocketchip.system.DefaultRV32Config.fir@143075.6]
  assign _T_62 = _T_64 == 1'h0; // @[FPU.scala 213:27:freechips.rocketchip.system.DefaultRV32Config.fir@143072.6]
  assign _T_63 = _T_60 & _T_62; // @[FPU.scala 213:24:freechips.rocketchip.system.DefaultRV32Config.fir@143073.6]
  assign _T_43 = _T_42[2:1]; // @[FPU.scala 204:22:freechips.rocketchip.system.DefaultRV32Config.fir@143053.6]
  assign _T_44 = _T_43 == 2'h3; // @[FPU.scala 205:28:freechips.rocketchip.system.DefaultRV32Config.fir@143054.6]
  assign _T_57 = _T_42[0]; // @[FPU.scala 211:35:freechips.rocketchip.system.DefaultRV32Config.fir@143067.6]
  assign _T_58 = _T_57 == 1'h0; // @[FPU.scala 211:30:freechips.rocketchip.system.DefaultRV32Config.fir@143068.6]
  assign _T_59 = _T_44 & _T_58; // @[FPU.scala 211:27:freechips.rocketchip.system.DefaultRV32Config.fir@143069.6]
  assign _T_66 = _T_13 == 1'h0; // @[FPU.scala 216:34:freechips.rocketchip.system.DefaultRV32Config.fir@143076.6]
  assign _T_67 = _T_59 & _T_66; // @[FPU.scala 216:31:freechips.rocketchip.system.DefaultRV32Config.fir@143077.6]
  assign _T_51 = _T_43 == 2'h1; // @[FPU.scala 209:27:freechips.rocketchip.system.DefaultRV32Config.fir@143061.6]
  assign _T_45 = in_in1[29:23]; // @[FPU.scala 207:30:freechips.rocketchip.system.DefaultRV32Config.fir@143055.6]
  assign _T_46 = _T_45 < 7'h2; // @[FPU.scala 207:55:freechips.rocketchip.system.DefaultRV32Config.fir@143056.6]
  assign _T_52 = _T_46 == 1'h0; // @[FPU.scala 209:42:freechips.rocketchip.system.DefaultRV32Config.fir@143062.6]
  assign _T_53 = _T_51 & _T_52; // @[FPU.scala 209:39:freechips.rocketchip.system.DefaultRV32Config.fir@143063.6]
  assign _T_54 = _T_43 == 2'h2; // @[FPU.scala 209:71:freechips.rocketchip.system.DefaultRV32Config.fir@143064.6]
  assign _T_55 = _T_53 | _T_54; // @[FPU.scala 209:61:freechips.rocketchip.system.DefaultRV32Config.fir@143065.6]
  assign _T_69 = _T_55 & _T_66; // @[FPU.scala 216:50:freechips.rocketchip.system.DefaultRV32Config.fir@143079.6]
  assign _T_47 = _T_42 == 3'h1; // @[FPU.scala 208:28:freechips.rocketchip.system.DefaultRV32Config.fir@143057.6]
  assign _T_49 = _T_51 & _T_46; // @[FPU.scala 208:62:freechips.rocketchip.system.DefaultRV32Config.fir@143059.6]
  assign _T_50 = _T_47 | _T_49; // @[FPU.scala 208:40:freechips.rocketchip.system.DefaultRV32Config.fir@143060.6]
  assign _T_71 = _T_50 & _T_66; // @[FPU.scala 217:21:freechips.rocketchip.system.DefaultRV32Config.fir@143081.6]
  assign _T_56 = _T_42 == 3'h0; // @[FPU.scala 210:23:freechips.rocketchip.system.DefaultRV32Config.fir@143066.6]
  assign _T_73 = _T_56 & _T_66; // @[FPU.scala 217:38:freechips.rocketchip.system.DefaultRV32Config.fir@143083.6]
  assign _T_74 = _T_56 & _T_13; // @[FPU.scala 217:55:freechips.rocketchip.system.DefaultRV32Config.fir@143084.6]
  assign _T_75 = _T_50 & _T_13; // @[FPU.scala 218:21:freechips.rocketchip.system.DefaultRV32Config.fir@143085.6]
  assign _T_76 = _T_55 & _T_13; // @[FPU.scala 218:39:freechips.rocketchip.system.DefaultRV32Config.fir@143086.6]
  assign _T_77 = _T_59 & _T_13; // @[FPU.scala 218:54:freechips.rocketchip.system.DefaultRV32Config.fir@143087.6]
  assign _T_86 = {_T_65,_T_63,_T_67,_T_69,_T_71,_T_73,_T_74,_T_75,_T_76,_T_77}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@143096.6]
  assign _T_89 = {{23'd0}, _T_86}; // @[FPU.scala 426:27:freechips.rocketchip.system.DefaultRV32Config.fir@143099.6]
  assign _GEN_22 = _T_40 ? _T_89 : {{1'd0}, store}; // @[FPU.scala 424:19:freechips.rocketchip.system.DefaultRV32Config.fir@143050.4]
  assign toint = in_wflags ? _GEN_25 : _GEN_22; // @[FPU.scala 430:20:freechips.rocketchip.system.DefaultRV32Config.fir@143103.4]
  assign _T_98 = in_typ[0]; // @[FPU.scala 442:35:freechips.rocketchip.system.DefaultRV32Config.fir@143123.8]
  assign _T_100 = RecFNToIN_io_intExceptionFlags[2:1]; // @[FPU.scala 444:55:freechips.rocketchip.system.DefaultRV32Config.fir@143127.8]
  assign _T_101 = _T_100 != 2'h0; // @[FPU.scala 444:62:freechips.rocketchip.system.DefaultRV32Config.fir@143128.8]
  assign _T_102 = RecFNToIN_io_intExceptionFlags[0]; // @[FPU.scala 444:104:freechips.rocketchip.system.DefaultRV32Config.fir@143129.8]
  assign _T_104 = {_T_101,3'h0,_T_102}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@143131.8]
  assign _GEN_26 = _T_97 ? _T_104 : dcmp_io_exceptionFlags; // @[FPU.scala 435:21:freechips.rocketchip.system.DefaultRV32Config.fir@143115.6]
  assign _T_105 = $signed(dcmp_io_a); // @[FPU.scala 465:46:freechips.rocketchip.system.DefaultRV32Config.fir@143136.4]
  assign _T_106 = $signed(_T_105) < $signed(33'sh0); // @[FPU.scala 465:53:freechips.rocketchip.system.DefaultRV32Config.fir@143137.4]
  assign _T_107 = $signed(dcmp_io_b); // @[FPU.scala 465:72:freechips.rocketchip.system.DefaultRV32Config.fir@143138.4]
  assign _T_108 = $signed(_T_107) >= $signed(33'sh0); // @[FPU.scala 465:79:freechips.rocketchip.system.DefaultRV32Config.fir@143139.4]
  assign _T_109 = _T_106 & _T_108; // @[FPU.scala 465:59:freechips.rocketchip.system.DefaultRV32Config.fir@143140.4]
  assign io_out_bits_in_rm = in_rm; // @[FPU.scala 466:18:freechips.rocketchip.system.DefaultRV32Config.fir@143143.4]
  assign io_out_bits_in_in1 = in_in1; // @[FPU.scala 466:18:freechips.rocketchip.system.DefaultRV32Config.fir@143143.4]
  assign io_out_bits_in_in2 = in_in2; // @[FPU.scala 466:18:freechips.rocketchip.system.DefaultRV32Config.fir@143143.4]
  assign io_out_bits_lt = dcmp_io_lt | _T_109; // @[FPU.scala 465:18:freechips.rocketchip.system.DefaultRV32Config.fir@143142.4]
  assign io_out_bits_store = {_T_37,_T_36}; // @[FPU.scala 420:21:freechips.rocketchip.system.DefaultRV32Config.fir@143045.4]
  assign io_out_bits_toint = toint[31:0]; // @[FPU.scala 421:21:freechips.rocketchip.system.DefaultRV32Config.fir@143047.4]
  assign io_out_bits_exc = in_wflags ? _GEN_26 : 5'h0; // @[FPU.scala 422:19:freechips.rocketchip.system.DefaultRV32Config.fir@143048.4 FPU.scala 432:21:freechips.rocketchip.system.DefaultRV32Config.fir@143112.6 FPU.scala 444:23:freechips.rocketchip.system.DefaultRV32Config.fir@143132.8]
  assign dcmp_io_a = in_in1; // @[FPU.scala 412:13:freechips.rocketchip.system.DefaultRV32Config.fir@142988.4]
  assign dcmp_io_b = in_in2; // @[FPU.scala 413:13:freechips.rocketchip.system.DefaultRV32Config.fir@142989.4]
  assign dcmp_io_signaling = _T == 1'h0; // @[FPU.scala 414:21:freechips.rocketchip.system.DefaultRV32Config.fir@142992.4]
  assign RecFNToIN_io_in = in_in1; // @[FPU.scala 440:18:freechips.rocketchip.system.DefaultRV32Config.fir@143121.8]
  assign RecFNToIN_io_roundingMode = in_rm; // @[FPU.scala 441:28:freechips.rocketchip.system.DefaultRV32Config.fir@143122.8]
  assign RecFNToIN_io_signedOut = ~ _T_98; // @[FPU.scala 442:25:freechips.rocketchip.system.DefaultRV32Config.fir@143125.8]
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

