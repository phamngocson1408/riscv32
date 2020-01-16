module DivSqrtRawFN_small( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@143674.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@143675.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@143676.4]
  output        io_inReady, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@143677.4]
  input         io_inValid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@143677.4]
  input         io_sqrtOp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@143677.4]
  input         io_a_isNaN, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@143677.4]
  input         io_a_isInf, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@143677.4]
  input         io_a_isZero, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@143677.4]
  input         io_a_sign, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@143677.4]
  input  [9:0]  io_a_sExp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@143677.4]
  input  [24:0] io_a_sig, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@143677.4]
  input         io_b_isNaN, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@143677.4]
  input         io_b_isInf, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@143677.4]
  input         io_b_isZero, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@143677.4]
  input         io_b_sign, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@143677.4]
  input  [9:0]  io_b_sExp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@143677.4]
  input  [24:0] io_b_sig, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@143677.4]
  input  [2:0]  io_roundingMode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@143677.4]
  output        io_rawOutValid_div, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@143677.4]
  output        io_rawOutValid_sqrt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@143677.4]
  output [2:0]  io_roundingModeOut, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@143677.4]
  output        io_invalidExc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@143677.4]
  output        io_infiniteExc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@143677.4]
  output        io_rawOut_isNaN, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@143677.4]
  output        io_rawOut_isInf, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@143677.4]
  output        io_rawOut_isZero, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@143677.4]
  output        io_rawOut_sign, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@143677.4]
  output [9:0]  io_rawOut_sExp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@143677.4]
  output [26:0] io_rawOut_sig // @[:freechips.rocketchip.system.DefaultRV32Config.fir@143677.4]
);
  reg [4:0] cycleNum; // @[DivSqrtRecFN_small.scala 222:29:freechips.rocketchip.system.DefaultRV32Config.fir@143682.4]
  reg [31:0] _RAND_0;
  reg  sqrtOp_Z; // @[DivSqrtRecFN_small.scala 224:29:freechips.rocketchip.system.DefaultRV32Config.fir@143683.4]
  reg [31:0] _RAND_1;
  reg  majorExc_Z; // @[DivSqrtRecFN_small.scala 225:29:freechips.rocketchip.system.DefaultRV32Config.fir@143684.4]
  reg [31:0] _RAND_2;
  reg  isNaN_Z; // @[DivSqrtRecFN_small.scala 227:29:freechips.rocketchip.system.DefaultRV32Config.fir@143685.4]
  reg [31:0] _RAND_3;
  reg  isInf_Z; // @[DivSqrtRecFN_small.scala 228:29:freechips.rocketchip.system.DefaultRV32Config.fir@143686.4]
  reg [31:0] _RAND_4;
  reg  isZero_Z; // @[DivSqrtRecFN_small.scala 229:29:freechips.rocketchip.system.DefaultRV32Config.fir@143687.4]
  reg [31:0] _RAND_5;
  reg  sign_Z; // @[DivSqrtRecFN_small.scala 230:29:freechips.rocketchip.system.DefaultRV32Config.fir@143688.4]
  reg [31:0] _RAND_6;
  reg [9:0] sExp_Z; // @[DivSqrtRecFN_small.scala 231:29:freechips.rocketchip.system.DefaultRV32Config.fir@143689.4]
  reg [31:0] _RAND_7;
  reg [22:0] fractB_Z; // @[DivSqrtRecFN_small.scala 232:29:freechips.rocketchip.system.DefaultRV32Config.fir@143690.4]
  reg [31:0] _RAND_8;
  reg [2:0] roundingMode_Z; // @[DivSqrtRecFN_small.scala 233:29:freechips.rocketchip.system.DefaultRV32Config.fir@143691.4]
  reg [31:0] _RAND_9;
  reg [25:0] rem_Z; // @[DivSqrtRecFN_small.scala 239:29:freechips.rocketchip.system.DefaultRV32Config.fir@143692.4]
  reg [31:0] _RAND_10;
  reg  notZeroRem_Z; // @[DivSqrtRecFN_small.scala 240:29:freechips.rocketchip.system.DefaultRV32Config.fir@143693.4]
  reg [31:0] _RAND_11;
  reg [25:0] sigX_Z; // @[DivSqrtRecFN_small.scala 241:29:freechips.rocketchip.system.DefaultRV32Config.fir@143694.4]
  reg [31:0] _RAND_12;
  wire  _T; // @[DivSqrtRecFN_small.scala 250:24:freechips.rocketchip.system.DefaultRV32Config.fir@143695.4]
  wire  _T_1; // @[DivSqrtRecFN_small.scala 250:59:freechips.rocketchip.system.DefaultRV32Config.fir@143696.4]
  wire  notSigNaNIn_invalidExc_S_div; // @[DivSqrtRecFN_small.scala 250:42:freechips.rocketchip.system.DefaultRV32Config.fir@143697.4]
  wire  _T_2; // @[DivSqrtRecFN_small.scala 252:9:freechips.rocketchip.system.DefaultRV32Config.fir@143698.4]
  wire  _T_3; // @[DivSqrtRecFN_small.scala 252:27:freechips.rocketchip.system.DefaultRV32Config.fir@143699.4]
  wire  _T_4; // @[DivSqrtRecFN_small.scala 252:24:freechips.rocketchip.system.DefaultRV32Config.fir@143700.4]
  wire  notSigNaNIn_invalidExc_S_sqrt; // @[DivSqrtRecFN_small.scala 252:43:freechips.rocketchip.system.DefaultRV32Config.fir@143701.4]
  wire  _T_5; // @[common.scala 81:56:freechips.rocketchip.system.DefaultRV32Config.fir@143702.4]
  wire  _T_6; // @[common.scala 81:49:freechips.rocketchip.system.DefaultRV32Config.fir@143703.4]
  wire  _T_7; // @[common.scala 81:46:freechips.rocketchip.system.DefaultRV32Config.fir@143704.4]
  wire  _T_8; // @[DivSqrtRecFN_small.scala 255:38:freechips.rocketchip.system.DefaultRV32Config.fir@143705.4]
  wire  _T_12; // @[common.scala 81:56:freechips.rocketchip.system.DefaultRV32Config.fir@143709.4]
  wire  _T_13; // @[common.scala 81:49:freechips.rocketchip.system.DefaultRV32Config.fir@143710.4]
  wire  _T_14; // @[common.scala 81:46:freechips.rocketchip.system.DefaultRV32Config.fir@143711.4]
  wire  _T_15; // @[DivSqrtRecFN_small.scala 256:38:freechips.rocketchip.system.DefaultRV32Config.fir@143712.4]
  wire  _T_16; // @[DivSqrtRecFN_small.scala 256:66:freechips.rocketchip.system.DefaultRV32Config.fir@143713.4]
  wire  _T_18; // @[DivSqrtRecFN_small.scala 258:36:freechips.rocketchip.system.DefaultRV32Config.fir@143715.4]
  wire  _T_19; // @[DivSqrtRecFN_small.scala 258:33:freechips.rocketchip.system.DefaultRV32Config.fir@143716.4]
  wire  _T_20; // @[DivSqrtRecFN_small.scala 258:51:freechips.rocketchip.system.DefaultRV32Config.fir@143717.4]
  wire  _T_21; // @[DivSqrtRecFN_small.scala 257:46:freechips.rocketchip.system.DefaultRV32Config.fir@143718.4]
  wire  _T_22; // @[DivSqrtRecFN_small.scala 262:26:freechips.rocketchip.system.DefaultRV32Config.fir@143720.4]
  wire  _T_23; // @[DivSqrtRecFN_small.scala 263:26:freechips.rocketchip.system.DefaultRV32Config.fir@143721.4]
  wire  _T_24; // @[DivSqrtRecFN_small.scala 263:42:freechips.rocketchip.system.DefaultRV32Config.fir@143722.4]
  wire  _T_25; // @[DivSqrtRecFN_small.scala 265:63:freechips.rocketchip.system.DefaultRV32Config.fir@143724.4]
  wire  _T_26; // @[DivSqrtRecFN_small.scala 266:64:freechips.rocketchip.system.DefaultRV32Config.fir@143726.4]
  wire  _T_27; // @[DivSqrtRecFN_small.scala 267:33:freechips.rocketchip.system.DefaultRV32Config.fir@143728.4]
  wire  _T_28; // @[DivSqrtRecFN_small.scala 267:45:freechips.rocketchip.system.DefaultRV32Config.fir@143729.4]
  wire  sign_S; // @[DivSqrtRecFN_small.scala 267:30:freechips.rocketchip.system.DefaultRV32Config.fir@143730.4]
  wire  _T_29; // @[DivSqrtRecFN_small.scala 269:39:freechips.rocketchip.system.DefaultRV32Config.fir@143731.4]
  wire  specialCaseA_S; // @[DivSqrtRecFN_small.scala 269:55:freechips.rocketchip.system.DefaultRV32Config.fir@143732.4]
  wire  _T_30; // @[DivSqrtRecFN_small.scala 270:39:freechips.rocketchip.system.DefaultRV32Config.fir@143733.4]
  wire  specialCaseB_S; // @[DivSqrtRecFN_small.scala 270:55:freechips.rocketchip.system.DefaultRV32Config.fir@143734.4]
  wire  _T_31; // @[DivSqrtRecFN_small.scala 271:28:freechips.rocketchip.system.DefaultRV32Config.fir@143735.4]
  wire  _T_32; // @[DivSqrtRecFN_small.scala 271:48:freechips.rocketchip.system.DefaultRV32Config.fir@143736.4]
  wire  normalCase_S_div; // @[DivSqrtRecFN_small.scala 271:45:freechips.rocketchip.system.DefaultRV32Config.fir@143737.4]
  wire  _T_34; // @[DivSqrtRecFN_small.scala 272:49:freechips.rocketchip.system.DefaultRV32Config.fir@143739.4]
  wire  normalCase_S_sqrt; // @[DivSqrtRecFN_small.scala 272:46:freechips.rocketchip.system.DefaultRV32Config.fir@143740.4]
  wire  normalCase_S; // @[DivSqrtRecFN_small.scala 273:27:freechips.rocketchip.system.DefaultRV32Config.fir@143741.4]
  wire  _T_35; // @[DivSqrtRecFN_small.scala 277:28:freechips.rocketchip.system.DefaultRV32Config.fir@143742.4]
  wire [7:0] _T_36; // @[DivSqrtRecFN_small.scala 277:52:freechips.rocketchip.system.DefaultRV32Config.fir@143743.4]
  wire [7:0] _T_37; // @[DivSqrtRecFN_small.scala 277:40:freechips.rocketchip.system.DefaultRV32Config.fir@143744.4]
  wire [8:0] _T_38; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@143745.4]
  wire [8:0] _T_39; // @[DivSqrtRecFN_small.scala 277:71:freechips.rocketchip.system.DefaultRV32Config.fir@143746.4]
  wire [9:0] _GEN_13; // @[DivSqrtRecFN_small.scala 276:21:freechips.rocketchip.system.DefaultRV32Config.fir@143747.4]
  wire [10:0] sExpQuot_S_div; // @[DivSqrtRecFN_small.scala 276:21:freechips.rocketchip.system.DefaultRV32Config.fir@143747.4]
  wire  _T_40; // @[DivSqrtRecFN_small.scala 280:50:freechips.rocketchip.system.DefaultRV32Config.fir@143748.4]
  wire [3:0] _T_41; // @[DivSqrtRecFN_small.scala 282:31:freechips.rocketchip.system.DefaultRV32Config.fir@143749.4]
  wire [3:0] _T_42; // @[DivSqrtRecFN_small.scala 280:16:freechips.rocketchip.system.DefaultRV32Config.fir@143750.4]
  wire [5:0] _T_43; // @[DivSqrtRecFN_small.scala 284:27:freechips.rocketchip.system.DefaultRV32Config.fir@143751.4]
  wire [9:0] _T_44; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@143752.4]
  wire [9:0] sSatExpQuot_S_div; // @[DivSqrtRecFN_small.scala 285:11:freechips.rocketchip.system.DefaultRV32Config.fir@143753.4]
  wire  _T_45; // @[DivSqrtRecFN_small.scala 287:48:freechips.rocketchip.system.DefaultRV32Config.fir@143754.4]
  wire  _T_46; // @[DivSqrtRecFN_small.scala 287:35:freechips.rocketchip.system.DefaultRV32Config.fir@143755.4]
  wire  evenSqrt_S; // @[DivSqrtRecFN_small.scala 287:32:freechips.rocketchip.system.DefaultRV32Config.fir@143756.4]
  wire  oddSqrt_S; // @[DivSqrtRecFN_small.scala 288:32:freechips.rocketchip.system.DefaultRV32Config.fir@143758.4]
  wire  idle; // @[DivSqrtRecFN_small.scala 292:26:freechips.rocketchip.system.DefaultRV32Config.fir@143759.4]
  wire  inReady; // @[DivSqrtRecFN_small.scala 293:29:freechips.rocketchip.system.DefaultRV32Config.fir@143760.4]
  wire  entering; // @[DivSqrtRecFN_small.scala 294:28:freechips.rocketchip.system.DefaultRV32Config.fir@143761.4]
  wire  entering_normalCase; // @[DivSqrtRecFN_small.scala 295:40:freechips.rocketchip.system.DefaultRV32Config.fir@143762.4]
  wire  _T_48; // @[DivSqrtRecFN_small.scala 297:32:freechips.rocketchip.system.DefaultRV32Config.fir@143763.4]
  wire  _T_49; // @[DivSqrtRecFN_small.scala 297:54:freechips.rocketchip.system.DefaultRV32Config.fir@143764.4]
  wire  skipCycle2; // @[DivSqrtRecFN_small.scala 297:45:freechips.rocketchip.system.DefaultRV32Config.fir@143765.4]
  wire  _T_50; // @[DivSqrtRecFN_small.scala 299:11:freechips.rocketchip.system.DefaultRV32Config.fir@143766.4]
  wire  _T_51; // @[DivSqrtRecFN_small.scala 299:18:freechips.rocketchip.system.DefaultRV32Config.fir@143767.4]
  wire  _T_52; // @[DivSqrtRecFN_small.scala 301:28:freechips.rocketchip.system.DefaultRV32Config.fir@143769.6]
  wire  _T_53; // @[DivSqrtRecFN_small.scala 301:26:freechips.rocketchip.system.DefaultRV32Config.fir@143770.6]
  wire [4:0] _T_56; // @[DivSqrtRecFN_small.scala 304:24:freechips.rocketchip.system.DefaultRV32Config.fir@143773.6]
  wire [4:0] _T_57; // @[DivSqrtRecFN_small.scala 303:20:freechips.rocketchip.system.DefaultRV32Config.fir@143774.6]
  wire [4:0] _T_58; // @[DivSqrtRecFN_small.scala 302:16:freechips.rocketchip.system.DefaultRV32Config.fir@143775.6]
  wire [4:0] _GEN_14; // @[DivSqrtRecFN_small.scala 301:62:freechips.rocketchip.system.DefaultRV32Config.fir@143776.6]
  wire [4:0] _T_59; // @[DivSqrtRecFN_small.scala 301:62:freechips.rocketchip.system.DefaultRV32Config.fir@143776.6]
  wire  _T_61; // @[DivSqrtRecFN_small.scala 309:27:freechips.rocketchip.system.DefaultRV32Config.fir@143778.6]
  wire  _T_62; // @[DivSqrtRecFN_small.scala 309:24:freechips.rocketchip.system.DefaultRV32Config.fir@143779.6]
  wire [4:0] _T_64; // @[DivSqrtRecFN_small.scala 309:50:freechips.rocketchip.system.DefaultRV32Config.fir@143781.6]
  wire [4:0] _T_65; // @[DivSqrtRecFN_small.scala 309:16:freechips.rocketchip.system.DefaultRV32Config.fir@143782.6]
  wire [4:0] _T_66; // @[DivSqrtRecFN_small.scala 308:15:freechips.rocketchip.system.DefaultRV32Config.fir@143783.6]
  wire  _T_68; // @[DivSqrtRecFN_small.scala 310:24:freechips.rocketchip.system.DefaultRV32Config.fir@143785.6]
  wire [4:0] _GEN_15; // @[DivSqrtRecFN_small.scala 309:70:freechips.rocketchip.system.DefaultRV32Config.fir@143787.6]
  wire [4:0] _T_70; // @[DivSqrtRecFN_small.scala 309:70:freechips.rocketchip.system.DefaultRV32Config.fir@143787.6]
  wire [8:0] _T_71; // @[DivSqrtRecFN_small.scala 328:29:freechips.rocketchip.system.DefaultRV32Config.fir@143800.6]
  wire [9:0] _T_72; // @[DivSqrtRecFN_small.scala 328:34:freechips.rocketchip.system.DefaultRV32Config.fir@143801.6]
  wire  _T_75; // @[DivSqrtRecFN_small.scala 333:31:freechips.rocketchip.system.DefaultRV32Config.fir@143807.4]
  wire [22:0] _T_76; // @[DivSqrtRecFN_small.scala 334:31:freechips.rocketchip.system.DefaultRV32Config.fir@143809.6]
  wire  _T_77; // @[DivSqrtRecFN_small.scala 340:24:freechips.rocketchip.system.DefaultRV32Config.fir@143812.4]
  wire  _T_78; // @[DivSqrtRecFN_small.scala 340:21:freechips.rocketchip.system.DefaultRV32Config.fir@143813.4]
  wire [25:0] _T_79; // @[DivSqrtRecFN_small.scala 340:47:freechips.rocketchip.system.DefaultRV32Config.fir@143814.4]
  wire [25:0] _T_80; // @[DivSqrtRecFN_small.scala 340:12:freechips.rocketchip.system.DefaultRV32Config.fir@143815.4]
  wire  _T_81; // @[DivSqrtRecFN_small.scala 341:21:freechips.rocketchip.system.DefaultRV32Config.fir@143816.4]
  wire [1:0] _T_82; // @[DivSqrtRecFN_small.scala 342:27:freechips.rocketchip.system.DefaultRV32Config.fir@143817.4]
  wire [1:0] _T_84; // @[DivSqrtRecFN_small.scala 342:56:freechips.rocketchip.system.DefaultRV32Config.fir@143819.4]
  wire [21:0] _T_85; // @[DivSqrtRecFN_small.scala 343:27:freechips.rocketchip.system.DefaultRV32Config.fir@143820.4]
  wire [24:0] _T_86; // @[DivSqrtRecFN_small.scala 343:44:freechips.rocketchip.system.DefaultRV32Config.fir@143821.4]
  wire [26:0] _T_87; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@143822.4]
  wire [26:0] _T_88; // @[DivSqrtRecFN_small.scala 341:12:freechips.rocketchip.system.DefaultRV32Config.fir@143823.4]
  wire [26:0] _GEN_16; // @[DivSqrtRecFN_small.scala 340:61:freechips.rocketchip.system.DefaultRV32Config.fir@143824.4]
  wire [26:0] _T_89; // @[DivSqrtRecFN_small.scala 340:61:freechips.rocketchip.system.DefaultRV32Config.fir@143824.4]
  wire  _T_90; // @[DivSqrtRecFN_small.scala 347:13:freechips.rocketchip.system.DefaultRV32Config.fir@143825.4]
  wire [26:0] _T_91; // @[DivSqrtRecFN_small.scala 347:29:freechips.rocketchip.system.DefaultRV32Config.fir@143826.4]
  wire [26:0] _T_92; // @[DivSqrtRecFN_small.scala 347:12:freechips.rocketchip.system.DefaultRV32Config.fir@143827.4]
  wire [26:0] rem; // @[DivSqrtRecFN_small.scala 346:11:freechips.rocketchip.system.DefaultRV32Config.fir@143828.4]
  wire [31:0] _T_93; // @[DivSqrtRecFN_small.scala 348:27:freechips.rocketchip.system.DefaultRV32Config.fir@143829.4]
  wire [29:0] bitMask; // @[DivSqrtRecFN_small.scala 348:38:freechips.rocketchip.system.DefaultRV32Config.fir@143830.4]
  wire  _T_95; // @[DivSqrtRecFN_small.scala 350:21:freechips.rocketchip.system.DefaultRV32Config.fir@143832.4]
  wire [25:0] _T_96; // @[DivSqrtRecFN_small.scala 350:47:freechips.rocketchip.system.DefaultRV32Config.fir@143833.4]
  wire [25:0] _T_97; // @[DivSqrtRecFN_small.scala 350:12:freechips.rocketchip.system.DefaultRV32Config.fir@143834.4]
  wire  _T_98; // @[DivSqrtRecFN_small.scala 351:21:freechips.rocketchip.system.DefaultRV32Config.fir@143835.4]
  wire [24:0] _T_99; // @[DivSqrtRecFN_small.scala 351:12:freechips.rocketchip.system.DefaultRV32Config.fir@143836.4]
  wire [25:0] _GEN_17; // @[DivSqrtRecFN_small.scala 350:79:freechips.rocketchip.system.DefaultRV32Config.fir@143837.4]
  wire [25:0] _T_100; // @[DivSqrtRecFN_small.scala 350:79:freechips.rocketchip.system.DefaultRV32Config.fir@143837.4]
  wire [25:0] _T_102; // @[DivSqrtRecFN_small.scala 352:12:freechips.rocketchip.system.DefaultRV32Config.fir@143839.4]
  wire [25:0] _T_103; // @[DivSqrtRecFN_small.scala 351:79:freechips.rocketchip.system.DefaultRV32Config.fir@143840.4]
  wire  _T_105; // @[DivSqrtRecFN_small.scala 353:26:freechips.rocketchip.system.DefaultRV32Config.fir@143842.4]
  wire  _T_106; // @[DivSqrtRecFN_small.scala 353:23:freechips.rocketchip.system.DefaultRV32Config.fir@143843.4]
  wire [23:0] _T_107; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@143844.4]
  wire [24:0] _T_108; // @[DivSqrtRecFN_small.scala 353:63:freechips.rocketchip.system.DefaultRV32Config.fir@143845.4]
  wire [24:0] _T_109; // @[DivSqrtRecFN_small.scala 353:12:freechips.rocketchip.system.DefaultRV32Config.fir@143846.4]
  wire [25:0] _GEN_18; // @[DivSqrtRecFN_small.scala 352:79:freechips.rocketchip.system.DefaultRV32Config.fir@143847.4]
  wire [25:0] _T_110; // @[DivSqrtRecFN_small.scala 352:79:freechips.rocketchip.system.DefaultRV32Config.fir@143847.4]
  wire  _T_112; // @[DivSqrtRecFN_small.scala 354:23:freechips.rocketchip.system.DefaultRV32Config.fir@143849.4]
  wire [26:0] _T_113; // @[DivSqrtRecFN_small.scala 354:44:freechips.rocketchip.system.DefaultRV32Config.fir@143850.4]
  wire [29:0] _GEN_19; // @[DivSqrtRecFN_small.scala 354:48:freechips.rocketchip.system.DefaultRV32Config.fir@143851.4]
  wire [29:0] _T_114; // @[DivSqrtRecFN_small.scala 354:48:freechips.rocketchip.system.DefaultRV32Config.fir@143851.4]
  wire [29:0] _T_115; // @[DivSqrtRecFN_small.scala 354:12:freechips.rocketchip.system.DefaultRV32Config.fir@143852.4]
  wire [29:0] _GEN_20; // @[DivSqrtRecFN_small.scala 353:79:freechips.rocketchip.system.DefaultRV32Config.fir@143853.4]
  wire [29:0] trialTerm; // @[DivSqrtRecFN_small.scala 353:79:freechips.rocketchip.system.DefaultRV32Config.fir@143853.4]
  wire [27:0] _T_116; // @[DivSqrtRecFN_small.scala 355:24:freechips.rocketchip.system.DefaultRV32Config.fir@143854.4]
  wire [30:0] _T_117; // @[DivSqrtRecFN_small.scala 355:41:freechips.rocketchip.system.DefaultRV32Config.fir@143855.4]
  wire [30:0] _GEN_21; // @[DivSqrtRecFN_small.scala 355:29:freechips.rocketchip.system.DefaultRV32Config.fir@143856.4]
  wire [30:0] _T_119; // @[DivSqrtRecFN_small.scala 355:29:freechips.rocketchip.system.DefaultRV32Config.fir@143857.4]
  wire [30:0] trialRem; // @[DivSqrtRecFN_small.scala 355:29:freechips.rocketchip.system.DefaultRV32Config.fir@143858.4]
  wire  newBit; // @[DivSqrtRecFN_small.scala 356:27:freechips.rocketchip.system.DefaultRV32Config.fir@143859.4]
  wire  _T_120; // @[DivSqrtRecFN_small.scala 358:44:freechips.rocketchip.system.DefaultRV32Config.fir@143860.4]
  wire  _T_121; // @[DivSqrtRecFN_small.scala 358:31:freechips.rocketchip.system.DefaultRV32Config.fir@143861.4]
  wire [30:0] _T_122; // @[DivSqrtRecFN_small.scala 359:39:freechips.rocketchip.system.DefaultRV32Config.fir@143863.6]
  wire [30:0] _T_123; // @[DivSqrtRecFN_small.scala 359:21:freechips.rocketchip.system.DefaultRV32Config.fir@143864.6]
  wire [30:0] _GEN_10; // @[DivSqrtRecFN_small.scala 358:56:freechips.rocketchip.system.DefaultRV32Config.fir@143862.4]
  wire  _T_125; // @[DivSqrtRecFN_small.scala 361:45:freechips.rocketchip.system.DefaultRV32Config.fir@143868.4]
  wire  _T_126; // @[DivSqrtRecFN_small.scala 361:31:freechips.rocketchip.system.DefaultRV32Config.fir@143869.4]
  wire  _T_127; // @[DivSqrtRecFN_small.scala 362:35:freechips.rocketchip.system.DefaultRV32Config.fir@143871.6]
  wire [25:0] _T_130; // @[DivSqrtRecFN_small.scala 364:47:freechips.rocketchip.system.DefaultRV32Config.fir@143875.6]
  wire [25:0] _T_131; // @[DivSqrtRecFN_small.scala 364:16:freechips.rocketchip.system.DefaultRV32Config.fir@143876.6]
  wire  _T_132; // @[DivSqrtRecFN_small.scala 365:25:freechips.rocketchip.system.DefaultRV32Config.fir@143877.6]
  wire [24:0] _T_133; // @[DivSqrtRecFN_small.scala 365:16:freechips.rocketchip.system.DefaultRV32Config.fir@143878.6]
  wire [25:0] _GEN_22; // @[DivSqrtRecFN_small.scala 364:77:freechips.rocketchip.system.DefaultRV32Config.fir@143879.6]
  wire [25:0] _T_134; // @[DivSqrtRecFN_small.scala 364:77:freechips.rocketchip.system.DefaultRV32Config.fir@143879.6]
  wire [23:0] _T_136; // @[DivSqrtRecFN_small.scala 366:47:freechips.rocketchip.system.DefaultRV32Config.fir@143881.6]
  wire [23:0] _T_137; // @[DivSqrtRecFN_small.scala 366:16:freechips.rocketchip.system.DefaultRV32Config.fir@143882.6]
  wire [25:0] _GEN_23; // @[DivSqrtRecFN_small.scala 365:77:freechips.rocketchip.system.DefaultRV32Config.fir@143883.6]
  wire [25:0] _T_138; // @[DivSqrtRecFN_small.scala 365:77:freechips.rocketchip.system.DefaultRV32Config.fir@143883.6]
  wire [29:0] _GEN_24; // @[DivSqrtRecFN_small.scala 367:48:freechips.rocketchip.system.DefaultRV32Config.fir@143885.6]
  wire [29:0] _T_140; // @[DivSqrtRecFN_small.scala 367:48:freechips.rocketchip.system.DefaultRV32Config.fir@143885.6]
  wire [29:0] _T_141; // @[DivSqrtRecFN_small.scala 367:16:freechips.rocketchip.system.DefaultRV32Config.fir@143886.6]
  wire [29:0] _GEN_25; // @[DivSqrtRecFN_small.scala 366:77:freechips.rocketchip.system.DefaultRV32Config.fir@143887.6]
  wire [29:0] _T_142; // @[DivSqrtRecFN_small.scala 366:77:freechips.rocketchip.system.DefaultRV32Config.fir@143887.6]
  wire [29:0] _GEN_12; // @[DivSqrtRecFN_small.scala 361:57:freechips.rocketchip.system.DefaultRV32Config.fir@143870.4]
  wire  rawOutValid; // @[DivSqrtRecFN_small.scala 372:33:freechips.rocketchip.system.DefaultRV32Config.fir@143890.4]
  wire  _T_147; // @[DivSqrtRecFN_small.scala 378:39:freechips.rocketchip.system.DefaultRV32Config.fir@143899.4]
  wire [26:0] _GEN_26; // @[DivSqrtRecFN_small.scala 384:35:freechips.rocketchip.system.DefaultRV32Config.fir@143908.4]
  assign _T = io_a_isZero & io_b_isZero; // @[DivSqrtRecFN_small.scala 250:24:freechips.rocketchip.system.DefaultRV32Config.fir@143695.4]
  assign _T_1 = io_a_isInf & io_b_isInf; // @[DivSqrtRecFN_small.scala 250:59:freechips.rocketchip.system.DefaultRV32Config.fir@143696.4]
  assign notSigNaNIn_invalidExc_S_div = _T | _T_1; // @[DivSqrtRecFN_small.scala 250:42:freechips.rocketchip.system.DefaultRV32Config.fir@143697.4]
  assign _T_2 = io_a_isNaN == 1'h0; // @[DivSqrtRecFN_small.scala 252:9:freechips.rocketchip.system.DefaultRV32Config.fir@143698.4]
  assign _T_3 = io_a_isZero == 1'h0; // @[DivSqrtRecFN_small.scala 252:27:freechips.rocketchip.system.DefaultRV32Config.fir@143699.4]
  assign _T_4 = _T_2 & _T_3; // @[DivSqrtRecFN_small.scala 252:24:freechips.rocketchip.system.DefaultRV32Config.fir@143700.4]
  assign notSigNaNIn_invalidExc_S_sqrt = _T_4 & io_a_sign; // @[DivSqrtRecFN_small.scala 252:43:freechips.rocketchip.system.DefaultRV32Config.fir@143701.4]
  assign _T_5 = io_a_sig[22]; // @[common.scala 81:56:freechips.rocketchip.system.DefaultRV32Config.fir@143702.4]
  assign _T_6 = _T_5 == 1'h0; // @[common.scala 81:49:freechips.rocketchip.system.DefaultRV32Config.fir@143703.4]
  assign _T_7 = io_a_isNaN & _T_6; // @[common.scala 81:46:freechips.rocketchip.system.DefaultRV32Config.fir@143704.4]
  assign _T_8 = _T_7 | notSigNaNIn_invalidExc_S_sqrt; // @[DivSqrtRecFN_small.scala 255:38:freechips.rocketchip.system.DefaultRV32Config.fir@143705.4]
  assign _T_12 = io_b_sig[22]; // @[common.scala 81:56:freechips.rocketchip.system.DefaultRV32Config.fir@143709.4]
  assign _T_13 = _T_12 == 1'h0; // @[common.scala 81:49:freechips.rocketchip.system.DefaultRV32Config.fir@143710.4]
  assign _T_14 = io_b_isNaN & _T_13; // @[common.scala 81:46:freechips.rocketchip.system.DefaultRV32Config.fir@143711.4]
  assign _T_15 = _T_7 | _T_14; // @[DivSqrtRecFN_small.scala 256:38:freechips.rocketchip.system.DefaultRV32Config.fir@143712.4]
  assign _T_16 = _T_15 | notSigNaNIn_invalidExc_S_div; // @[DivSqrtRecFN_small.scala 256:66:freechips.rocketchip.system.DefaultRV32Config.fir@143713.4]
  assign _T_18 = io_a_isInf == 1'h0; // @[DivSqrtRecFN_small.scala 258:36:freechips.rocketchip.system.DefaultRV32Config.fir@143715.4]
  assign _T_19 = _T_2 & _T_18; // @[DivSqrtRecFN_small.scala 258:33:freechips.rocketchip.system.DefaultRV32Config.fir@143716.4]
  assign _T_20 = _T_19 & io_b_isZero; // @[DivSqrtRecFN_small.scala 258:51:freechips.rocketchip.system.DefaultRV32Config.fir@143717.4]
  assign _T_21 = _T_16 | _T_20; // @[DivSqrtRecFN_small.scala 257:46:freechips.rocketchip.system.DefaultRV32Config.fir@143718.4]
  assign _T_22 = io_a_isNaN | notSigNaNIn_invalidExc_S_sqrt; // @[DivSqrtRecFN_small.scala 262:26:freechips.rocketchip.system.DefaultRV32Config.fir@143720.4]
  assign _T_23 = io_a_isNaN | io_b_isNaN; // @[DivSqrtRecFN_small.scala 263:26:freechips.rocketchip.system.DefaultRV32Config.fir@143721.4]
  assign _T_24 = _T_23 | notSigNaNIn_invalidExc_S_div; // @[DivSqrtRecFN_small.scala 263:42:freechips.rocketchip.system.DefaultRV32Config.fir@143722.4]
  assign _T_25 = io_a_isInf | io_b_isZero; // @[DivSqrtRecFN_small.scala 265:63:freechips.rocketchip.system.DefaultRV32Config.fir@143724.4]
  assign _T_26 = io_a_isZero | io_b_isInf; // @[DivSqrtRecFN_small.scala 266:64:freechips.rocketchip.system.DefaultRV32Config.fir@143726.4]
  assign _T_27 = io_sqrtOp == 1'h0; // @[DivSqrtRecFN_small.scala 267:33:freechips.rocketchip.system.DefaultRV32Config.fir@143728.4]
  assign _T_28 = _T_27 & io_b_sign; // @[DivSqrtRecFN_small.scala 267:45:freechips.rocketchip.system.DefaultRV32Config.fir@143729.4]
  assign sign_S = io_a_sign ^ _T_28; // @[DivSqrtRecFN_small.scala 267:30:freechips.rocketchip.system.DefaultRV32Config.fir@143730.4]
  assign _T_29 = io_a_isNaN | io_a_isInf; // @[DivSqrtRecFN_small.scala 269:39:freechips.rocketchip.system.DefaultRV32Config.fir@143731.4]
  assign specialCaseA_S = _T_29 | io_a_isZero; // @[DivSqrtRecFN_small.scala 269:55:freechips.rocketchip.system.DefaultRV32Config.fir@143732.4]
  assign _T_30 = io_b_isNaN | io_b_isInf; // @[DivSqrtRecFN_small.scala 270:39:freechips.rocketchip.system.DefaultRV32Config.fir@143733.4]
  assign specialCaseB_S = _T_30 | io_b_isZero; // @[DivSqrtRecFN_small.scala 270:55:freechips.rocketchip.system.DefaultRV32Config.fir@143734.4]
  assign _T_31 = specialCaseA_S == 1'h0; // @[DivSqrtRecFN_small.scala 271:28:freechips.rocketchip.system.DefaultRV32Config.fir@143735.4]
  assign _T_32 = specialCaseB_S == 1'h0; // @[DivSqrtRecFN_small.scala 271:48:freechips.rocketchip.system.DefaultRV32Config.fir@143736.4]
  assign normalCase_S_div = _T_31 & _T_32; // @[DivSqrtRecFN_small.scala 271:45:freechips.rocketchip.system.DefaultRV32Config.fir@143737.4]
  assign _T_34 = io_a_sign == 1'h0; // @[DivSqrtRecFN_small.scala 272:49:freechips.rocketchip.system.DefaultRV32Config.fir@143739.4]
  assign normalCase_S_sqrt = _T_31 & _T_34; // @[DivSqrtRecFN_small.scala 272:46:freechips.rocketchip.system.DefaultRV32Config.fir@143740.4]
  assign normalCase_S = io_sqrtOp ? normalCase_S_sqrt : normalCase_S_div; // @[DivSqrtRecFN_small.scala 273:27:freechips.rocketchip.system.DefaultRV32Config.fir@143741.4]
  assign _T_35 = io_b_sExp[8]; // @[DivSqrtRecFN_small.scala 277:28:freechips.rocketchip.system.DefaultRV32Config.fir@143742.4]
  assign _T_36 = io_b_sExp[7:0]; // @[DivSqrtRecFN_small.scala 277:52:freechips.rocketchip.system.DefaultRV32Config.fir@143743.4]
  assign _T_37 = ~ _T_36; // @[DivSqrtRecFN_small.scala 277:40:freechips.rocketchip.system.DefaultRV32Config.fir@143744.4]
  assign _T_38 = {_T_35,_T_37}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@143745.4]
  assign _T_39 = $signed(_T_38); // @[DivSqrtRecFN_small.scala 277:71:freechips.rocketchip.system.DefaultRV32Config.fir@143746.4]
  assign _GEN_13 = {{1{_T_39[8]}},_T_39}; // @[DivSqrtRecFN_small.scala 276:21:freechips.rocketchip.system.DefaultRV32Config.fir@143747.4]
  assign sExpQuot_S_div = $signed(io_a_sExp) + $signed(_GEN_13); // @[DivSqrtRecFN_small.scala 276:21:freechips.rocketchip.system.DefaultRV32Config.fir@143747.4]
  assign _T_40 = $signed(11'sh1c0) <= $signed(sExpQuot_S_div); // @[DivSqrtRecFN_small.scala 280:50:freechips.rocketchip.system.DefaultRV32Config.fir@143748.4]
  assign _T_41 = sExpQuot_S_div[9:6]; // @[DivSqrtRecFN_small.scala 282:31:freechips.rocketchip.system.DefaultRV32Config.fir@143749.4]
  assign _T_42 = _T_40 ? 4'h6 : _T_41; // @[DivSqrtRecFN_small.scala 280:16:freechips.rocketchip.system.DefaultRV32Config.fir@143750.4]
  assign _T_43 = sExpQuot_S_div[5:0]; // @[DivSqrtRecFN_small.scala 284:27:freechips.rocketchip.system.DefaultRV32Config.fir@143751.4]
  assign _T_44 = {_T_42,_T_43}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@143752.4]
  assign sSatExpQuot_S_div = $signed(_T_44); // @[DivSqrtRecFN_small.scala 285:11:freechips.rocketchip.system.DefaultRV32Config.fir@143753.4]
  assign _T_45 = io_a_sExp[0]; // @[DivSqrtRecFN_small.scala 287:48:freechips.rocketchip.system.DefaultRV32Config.fir@143754.4]
  assign _T_46 = _T_45 == 1'h0; // @[DivSqrtRecFN_small.scala 287:35:freechips.rocketchip.system.DefaultRV32Config.fir@143755.4]
  assign evenSqrt_S = io_sqrtOp & _T_46; // @[DivSqrtRecFN_small.scala 287:32:freechips.rocketchip.system.DefaultRV32Config.fir@143756.4]
  assign oddSqrt_S = io_sqrtOp & _T_45; // @[DivSqrtRecFN_small.scala 288:32:freechips.rocketchip.system.DefaultRV32Config.fir@143758.4]
  assign idle = cycleNum == 5'h0; // @[DivSqrtRecFN_small.scala 292:26:freechips.rocketchip.system.DefaultRV32Config.fir@143759.4]
  assign inReady = cycleNum <= 5'h1; // @[DivSqrtRecFN_small.scala 293:29:freechips.rocketchip.system.DefaultRV32Config.fir@143760.4]
  assign entering = inReady & io_inValid; // @[DivSqrtRecFN_small.scala 294:28:freechips.rocketchip.system.DefaultRV32Config.fir@143761.4]
  assign entering_normalCase = entering & normalCase_S; // @[DivSqrtRecFN_small.scala 295:40:freechips.rocketchip.system.DefaultRV32Config.fir@143762.4]
  assign _T_48 = cycleNum == 5'h3; // @[DivSqrtRecFN_small.scala 297:32:freechips.rocketchip.system.DefaultRV32Config.fir@143763.4]
  assign _T_49 = sigX_Z[25]; // @[DivSqrtRecFN_small.scala 297:54:freechips.rocketchip.system.DefaultRV32Config.fir@143764.4]
  assign skipCycle2 = _T_48 & _T_49; // @[DivSqrtRecFN_small.scala 297:45:freechips.rocketchip.system.DefaultRV32Config.fir@143765.4]
  assign _T_50 = idle == 1'h0; // @[DivSqrtRecFN_small.scala 299:11:freechips.rocketchip.system.DefaultRV32Config.fir@143766.4]
  assign _T_51 = _T_50 | io_inValid; // @[DivSqrtRecFN_small.scala 299:18:freechips.rocketchip.system.DefaultRV32Config.fir@143767.4]
  assign _T_52 = normalCase_S == 1'h0; // @[DivSqrtRecFN_small.scala 301:28:freechips.rocketchip.system.DefaultRV32Config.fir@143769.6]
  assign _T_53 = entering & _T_52; // @[DivSqrtRecFN_small.scala 301:26:freechips.rocketchip.system.DefaultRV32Config.fir@143770.6]
  assign _T_56 = _T_45 ? 5'h18 : 5'h19; // @[DivSqrtRecFN_small.scala 304:24:freechips.rocketchip.system.DefaultRV32Config.fir@143773.6]
  assign _T_57 = io_sqrtOp ? _T_56 : 5'h1a; // @[DivSqrtRecFN_small.scala 303:20:freechips.rocketchip.system.DefaultRV32Config.fir@143774.6]
  assign _T_58 = entering_normalCase ? _T_57 : 5'h0; // @[DivSqrtRecFN_small.scala 302:16:freechips.rocketchip.system.DefaultRV32Config.fir@143775.6]
  assign _GEN_14 = {{4'd0}, _T_53}; // @[DivSqrtRecFN_small.scala 301:62:freechips.rocketchip.system.DefaultRV32Config.fir@143776.6]
  assign _T_59 = _GEN_14 | _T_58; // @[DivSqrtRecFN_small.scala 301:62:freechips.rocketchip.system.DefaultRV32Config.fir@143776.6]
  assign _T_61 = skipCycle2 == 1'h0; // @[DivSqrtRecFN_small.scala 309:27:freechips.rocketchip.system.DefaultRV32Config.fir@143778.6]
  assign _T_62 = _T_50 & _T_61; // @[DivSqrtRecFN_small.scala 309:24:freechips.rocketchip.system.DefaultRV32Config.fir@143779.6]
  assign _T_64 = cycleNum - 5'h1; // @[DivSqrtRecFN_small.scala 309:50:freechips.rocketchip.system.DefaultRV32Config.fir@143781.6]
  assign _T_65 = _T_62 ? _T_64 : 5'h0; // @[DivSqrtRecFN_small.scala 309:16:freechips.rocketchip.system.DefaultRV32Config.fir@143782.6]
  assign _T_66 = _T_59 | _T_65; // @[DivSqrtRecFN_small.scala 308:15:freechips.rocketchip.system.DefaultRV32Config.fir@143783.6]
  assign _T_68 = _T_50 & skipCycle2; // @[DivSqrtRecFN_small.scala 310:24:freechips.rocketchip.system.DefaultRV32Config.fir@143785.6]
  assign _GEN_15 = {{4'd0}, _T_68}; // @[DivSqrtRecFN_small.scala 309:70:freechips.rocketchip.system.DefaultRV32Config.fir@143787.6]
  assign _T_70 = _T_66 | _GEN_15; // @[DivSqrtRecFN_small.scala 309:70:freechips.rocketchip.system.DefaultRV32Config.fir@143787.6]
  assign _T_71 = io_a_sExp[9:1]; // @[DivSqrtRecFN_small.scala 328:29:freechips.rocketchip.system.DefaultRV32Config.fir@143800.6]
  assign _T_72 = $signed(_T_71) + $signed(9'sh80); // @[DivSqrtRecFN_small.scala 328:34:freechips.rocketchip.system.DefaultRV32Config.fir@143801.6]
  assign _T_75 = entering_normalCase & _T_27; // @[DivSqrtRecFN_small.scala 333:31:freechips.rocketchip.system.DefaultRV32Config.fir@143807.4]
  assign _T_76 = io_b_sig[22:0]; // @[DivSqrtRecFN_small.scala 334:31:freechips.rocketchip.system.DefaultRV32Config.fir@143809.6]
  assign _T_77 = oddSqrt_S == 1'h0; // @[DivSqrtRecFN_small.scala 340:24:freechips.rocketchip.system.DefaultRV32Config.fir@143812.4]
  assign _T_78 = inReady & _T_77; // @[DivSqrtRecFN_small.scala 340:21:freechips.rocketchip.system.DefaultRV32Config.fir@143813.4]
  assign _T_79 = {io_a_sig, 1'h0}; // @[DivSqrtRecFN_small.scala 340:47:freechips.rocketchip.system.DefaultRV32Config.fir@143814.4]
  assign _T_80 = _T_78 ? _T_79 : 26'h0; // @[DivSqrtRecFN_small.scala 340:12:freechips.rocketchip.system.DefaultRV32Config.fir@143815.4]
  assign _T_81 = inReady & oddSqrt_S; // @[DivSqrtRecFN_small.scala 341:21:freechips.rocketchip.system.DefaultRV32Config.fir@143816.4]
  assign _T_82 = io_a_sig[23:22]; // @[DivSqrtRecFN_small.scala 342:27:freechips.rocketchip.system.DefaultRV32Config.fir@143817.4]
  assign _T_84 = _T_82 - 2'h1; // @[DivSqrtRecFN_small.scala 342:56:freechips.rocketchip.system.DefaultRV32Config.fir@143819.4]
  assign _T_85 = io_a_sig[21:0]; // @[DivSqrtRecFN_small.scala 343:27:freechips.rocketchip.system.DefaultRV32Config.fir@143820.4]
  assign _T_86 = {_T_85, 3'h0}; // @[DivSqrtRecFN_small.scala 343:44:freechips.rocketchip.system.DefaultRV32Config.fir@143821.4]
  assign _T_87 = {_T_84,_T_86}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@143822.4]
  assign _T_88 = _T_81 ? _T_87 : 27'h0; // @[DivSqrtRecFN_small.scala 341:12:freechips.rocketchip.system.DefaultRV32Config.fir@143823.4]
  assign _GEN_16 = {{1'd0}, _T_80}; // @[DivSqrtRecFN_small.scala 340:61:freechips.rocketchip.system.DefaultRV32Config.fir@143824.4]
  assign _T_89 = _GEN_16 | _T_88; // @[DivSqrtRecFN_small.scala 340:61:freechips.rocketchip.system.DefaultRV32Config.fir@143824.4]
  assign _T_90 = inReady == 1'h0; // @[DivSqrtRecFN_small.scala 347:13:freechips.rocketchip.system.DefaultRV32Config.fir@143825.4]
  assign _T_91 = {rem_Z, 1'h0}; // @[DivSqrtRecFN_small.scala 347:29:freechips.rocketchip.system.DefaultRV32Config.fir@143826.4]
  assign _T_92 = _T_90 ? _T_91 : 27'h0; // @[DivSqrtRecFN_small.scala 347:12:freechips.rocketchip.system.DefaultRV32Config.fir@143827.4]
  assign rem = _T_89 | _T_92; // @[DivSqrtRecFN_small.scala 346:11:freechips.rocketchip.system.DefaultRV32Config.fir@143828.4]
  assign _T_93 = 32'h1 << cycleNum; // @[DivSqrtRecFN_small.scala 348:27:freechips.rocketchip.system.DefaultRV32Config.fir@143829.4]
  assign bitMask = _T_93[31:2]; // @[DivSqrtRecFN_small.scala 348:38:freechips.rocketchip.system.DefaultRV32Config.fir@143830.4]
  assign _T_95 = inReady & _T_27; // @[DivSqrtRecFN_small.scala 350:21:freechips.rocketchip.system.DefaultRV32Config.fir@143832.4]
  assign _T_96 = {io_b_sig, 1'h0}; // @[DivSqrtRecFN_small.scala 350:47:freechips.rocketchip.system.DefaultRV32Config.fir@143833.4]
  assign _T_97 = _T_95 ? _T_96 : 26'h0; // @[DivSqrtRecFN_small.scala 350:12:freechips.rocketchip.system.DefaultRV32Config.fir@143834.4]
  assign _T_98 = inReady & evenSqrt_S; // @[DivSqrtRecFN_small.scala 351:21:freechips.rocketchip.system.DefaultRV32Config.fir@143835.4]
  assign _T_99 = _T_98 ? 25'h1000000 : 25'h0; // @[DivSqrtRecFN_small.scala 351:12:freechips.rocketchip.system.DefaultRV32Config.fir@143836.4]
  assign _GEN_17 = {{1'd0}, _T_99}; // @[DivSqrtRecFN_small.scala 350:79:freechips.rocketchip.system.DefaultRV32Config.fir@143837.4]
  assign _T_100 = _T_97 | _GEN_17; // @[DivSqrtRecFN_small.scala 350:79:freechips.rocketchip.system.DefaultRV32Config.fir@143837.4]
  assign _T_102 = _T_81 ? 26'h2800000 : 26'h0; // @[DivSqrtRecFN_small.scala 352:12:freechips.rocketchip.system.DefaultRV32Config.fir@143839.4]
  assign _T_103 = _T_100 | _T_102; // @[DivSqrtRecFN_small.scala 351:79:freechips.rocketchip.system.DefaultRV32Config.fir@143840.4]
  assign _T_105 = sqrtOp_Z == 1'h0; // @[DivSqrtRecFN_small.scala 353:26:freechips.rocketchip.system.DefaultRV32Config.fir@143842.4]
  assign _T_106 = _T_90 & _T_105; // @[DivSqrtRecFN_small.scala 353:23:freechips.rocketchip.system.DefaultRV32Config.fir@143843.4]
  assign _T_107 = {1'h1,fractB_Z}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@143844.4]
  assign _T_108 = {_T_107, 1'h0}; // @[DivSqrtRecFN_small.scala 353:63:freechips.rocketchip.system.DefaultRV32Config.fir@143845.4]
  assign _T_109 = _T_106 ? _T_108 : 25'h0; // @[DivSqrtRecFN_small.scala 353:12:freechips.rocketchip.system.DefaultRV32Config.fir@143846.4]
  assign _GEN_18 = {{1'd0}, _T_109}; // @[DivSqrtRecFN_small.scala 352:79:freechips.rocketchip.system.DefaultRV32Config.fir@143847.4]
  assign _T_110 = _T_103 | _GEN_18; // @[DivSqrtRecFN_small.scala 352:79:freechips.rocketchip.system.DefaultRV32Config.fir@143847.4]
  assign _T_112 = _T_90 & sqrtOp_Z; // @[DivSqrtRecFN_small.scala 354:23:freechips.rocketchip.system.DefaultRV32Config.fir@143849.4]
  assign _T_113 = {sigX_Z, 1'h0}; // @[DivSqrtRecFN_small.scala 354:44:freechips.rocketchip.system.DefaultRV32Config.fir@143850.4]
  assign _GEN_19 = {{3'd0}, _T_113}; // @[DivSqrtRecFN_small.scala 354:48:freechips.rocketchip.system.DefaultRV32Config.fir@143851.4]
  assign _T_114 = _GEN_19 | bitMask; // @[DivSqrtRecFN_small.scala 354:48:freechips.rocketchip.system.DefaultRV32Config.fir@143851.4]
  assign _T_115 = _T_112 ? _T_114 : 30'h0; // @[DivSqrtRecFN_small.scala 354:12:freechips.rocketchip.system.DefaultRV32Config.fir@143852.4]
  assign _GEN_20 = {{4'd0}, _T_110}; // @[DivSqrtRecFN_small.scala 353:79:freechips.rocketchip.system.DefaultRV32Config.fir@143853.4]
  assign trialTerm = _GEN_20 | _T_115; // @[DivSqrtRecFN_small.scala 353:79:freechips.rocketchip.system.DefaultRV32Config.fir@143853.4]
  assign _T_116 = {1'b0,$signed(rem)}; // @[DivSqrtRecFN_small.scala 355:24:freechips.rocketchip.system.DefaultRV32Config.fir@143854.4]
  assign _T_117 = {1'b0,$signed(trialTerm)}; // @[DivSqrtRecFN_small.scala 355:41:freechips.rocketchip.system.DefaultRV32Config.fir@143855.4]
  assign _GEN_21 = {{3{_T_116[27]}},_T_116}; // @[DivSqrtRecFN_small.scala 355:29:freechips.rocketchip.system.DefaultRV32Config.fir@143856.4]
  assign _T_119 = $signed(_GEN_21) - $signed(_T_117); // @[DivSqrtRecFN_small.scala 355:29:freechips.rocketchip.system.DefaultRV32Config.fir@143857.4]
  assign trialRem = $signed(_T_119); // @[DivSqrtRecFN_small.scala 355:29:freechips.rocketchip.system.DefaultRV32Config.fir@143858.4]
  assign newBit = $signed(31'sh0) <= $signed(trialRem); // @[DivSqrtRecFN_small.scala 356:27:freechips.rocketchip.system.DefaultRV32Config.fir@143859.4]
  assign _T_120 = cycleNum > 5'h2; // @[DivSqrtRecFN_small.scala 358:44:freechips.rocketchip.system.DefaultRV32Config.fir@143860.4]
  assign _T_121 = entering_normalCase | _T_120; // @[DivSqrtRecFN_small.scala 358:31:freechips.rocketchip.system.DefaultRV32Config.fir@143861.4]
  assign _T_122 = $unsigned(trialRem); // @[DivSqrtRecFN_small.scala 359:39:freechips.rocketchip.system.DefaultRV32Config.fir@143863.6]
  assign _T_123 = newBit ? _T_122 : {{4'd0}, rem}; // @[DivSqrtRecFN_small.scala 359:21:freechips.rocketchip.system.DefaultRV32Config.fir@143864.6]
  assign _GEN_10 = _T_121 ? _T_123 : {{5'd0}, rem_Z}; // @[DivSqrtRecFN_small.scala 358:56:freechips.rocketchip.system.DefaultRV32Config.fir@143862.4]
  assign _T_125 = _T_90 & newBit; // @[DivSqrtRecFN_small.scala 361:45:freechips.rocketchip.system.DefaultRV32Config.fir@143868.4]
  assign _T_126 = entering_normalCase | _T_125; // @[DivSqrtRecFN_small.scala 361:31:freechips.rocketchip.system.DefaultRV32Config.fir@143869.4]
  assign _T_127 = $signed(trialRem) != $signed(31'sh0); // @[DivSqrtRecFN_small.scala 362:35:freechips.rocketchip.system.DefaultRV32Config.fir@143871.6]
  assign _T_130 = {newBit, 25'h0}; // @[DivSqrtRecFN_small.scala 364:47:freechips.rocketchip.system.DefaultRV32Config.fir@143875.6]
  assign _T_131 = _T_95 ? _T_130 : 26'h0; // @[DivSqrtRecFN_small.scala 364:16:freechips.rocketchip.system.DefaultRV32Config.fir@143876.6]
  assign _T_132 = inReady & io_sqrtOp; // @[DivSqrtRecFN_small.scala 365:25:freechips.rocketchip.system.DefaultRV32Config.fir@143877.6]
  assign _T_133 = _T_132 ? 25'h1000000 : 25'h0; // @[DivSqrtRecFN_small.scala 365:16:freechips.rocketchip.system.DefaultRV32Config.fir@143878.6]
  assign _GEN_22 = {{1'd0}, _T_133}; // @[DivSqrtRecFN_small.scala 364:77:freechips.rocketchip.system.DefaultRV32Config.fir@143879.6]
  assign _T_134 = _T_131 | _GEN_22; // @[DivSqrtRecFN_small.scala 364:77:freechips.rocketchip.system.DefaultRV32Config.fir@143879.6]
  assign _T_136 = {newBit, 23'h0}; // @[DivSqrtRecFN_small.scala 366:47:freechips.rocketchip.system.DefaultRV32Config.fir@143881.6]
  assign _T_137 = _T_81 ? _T_136 : 24'h0; // @[DivSqrtRecFN_small.scala 366:16:freechips.rocketchip.system.DefaultRV32Config.fir@143882.6]
  assign _GEN_23 = {{2'd0}, _T_137}; // @[DivSqrtRecFN_small.scala 365:77:freechips.rocketchip.system.DefaultRV32Config.fir@143883.6]
  assign _T_138 = _T_134 | _GEN_23; // @[DivSqrtRecFN_small.scala 365:77:freechips.rocketchip.system.DefaultRV32Config.fir@143883.6]
  assign _GEN_24 = {{4'd0}, sigX_Z}; // @[DivSqrtRecFN_small.scala 367:48:freechips.rocketchip.system.DefaultRV32Config.fir@143885.6]
  assign _T_140 = _GEN_24 | bitMask; // @[DivSqrtRecFN_small.scala 367:48:freechips.rocketchip.system.DefaultRV32Config.fir@143885.6]
  assign _T_141 = _T_90 ? _T_140 : 30'h0; // @[DivSqrtRecFN_small.scala 367:16:freechips.rocketchip.system.DefaultRV32Config.fir@143886.6]
  assign _GEN_25 = {{4'd0}, _T_138}; // @[DivSqrtRecFN_small.scala 366:77:freechips.rocketchip.system.DefaultRV32Config.fir@143887.6]
  assign _T_142 = _GEN_25 | _T_141; // @[DivSqrtRecFN_small.scala 366:77:freechips.rocketchip.system.DefaultRV32Config.fir@143887.6]
  assign _GEN_12 = _T_126 ? _T_142 : {{4'd0}, sigX_Z}; // @[DivSqrtRecFN_small.scala 361:57:freechips.rocketchip.system.DefaultRV32Config.fir@143870.4]
  assign rawOutValid = cycleNum == 5'h1; // @[DivSqrtRecFN_small.scala 372:33:freechips.rocketchip.system.DefaultRV32Config.fir@143890.4]
  assign _T_147 = isNaN_Z == 1'h0; // @[DivSqrtRecFN_small.scala 378:39:freechips.rocketchip.system.DefaultRV32Config.fir@143899.4]
  assign _GEN_26 = {{26'd0}, notZeroRem_Z}; // @[DivSqrtRecFN_small.scala 384:35:freechips.rocketchip.system.DefaultRV32Config.fir@143908.4]
  assign io_inReady = cycleNum <= 5'h1; // @[DivSqrtRecFN_small.scala 313:16:freechips.rocketchip.system.DefaultRV32Config.fir@143790.4]
  assign io_rawOutValid_div = rawOutValid & _T_105; // @[DivSqrtRecFN_small.scala 374:25:freechips.rocketchip.system.DefaultRV32Config.fir@143893.4]
  assign io_rawOutValid_sqrt = rawOutValid & sqrtOp_Z; // @[DivSqrtRecFN_small.scala 375:25:freechips.rocketchip.system.DefaultRV32Config.fir@143895.4]
  assign io_roundingModeOut = roundingMode_Z; // @[DivSqrtRecFN_small.scala 376:25:freechips.rocketchip.system.DefaultRV32Config.fir@143896.4]
  assign io_invalidExc = majorExc_Z & isNaN_Z; // @[DivSqrtRecFN_small.scala 377:22:freechips.rocketchip.system.DefaultRV32Config.fir@143898.4]
  assign io_infiniteExc = majorExc_Z & _T_147; // @[DivSqrtRecFN_small.scala 378:22:freechips.rocketchip.system.DefaultRV32Config.fir@143901.4]
  assign io_rawOut_isNaN = isNaN_Z; // @[DivSqrtRecFN_small.scala 379:22:freechips.rocketchip.system.DefaultRV32Config.fir@143902.4]
  assign io_rawOut_isInf = isInf_Z; // @[DivSqrtRecFN_small.scala 380:22:freechips.rocketchip.system.DefaultRV32Config.fir@143903.4]
  assign io_rawOut_isZero = isZero_Z; // @[DivSqrtRecFN_small.scala 381:22:freechips.rocketchip.system.DefaultRV32Config.fir@143904.4]
  assign io_rawOut_sign = sign_Z; // @[DivSqrtRecFN_small.scala 382:22:freechips.rocketchip.system.DefaultRV32Config.fir@143905.4]
  assign io_rawOut_sExp = sExp_Z; // @[DivSqrtRecFN_small.scala 383:22:freechips.rocketchip.system.DefaultRV32Config.fir@143906.4]
  assign io_rawOut_sig = _T_113 | _GEN_26; // @[DivSqrtRecFN_small.scala 384:22:freechips.rocketchip.system.DefaultRV32Config.fir@143909.4]
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
  cycleNum = _RAND_0[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  sqrtOp_Z = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  majorExc_Z = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  isNaN_Z = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  isInf_Z = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  isZero_Z = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  sign_Z = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  sExp_Z = _RAND_7[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  fractB_Z = _RAND_8[22:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  roundingMode_Z = _RAND_9[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  rem_Z = _RAND_10[25:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  notZeroRem_Z = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  sigX_Z = _RAND_12[25:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge clock) begin
    if (reset) begin
      cycleNum <= 5'h0;
    end else begin
      if (_T_51) begin
        cycleNum <= _T_70;
      end
    end
    if (entering) begin
      sqrtOp_Z <= io_sqrtOp;
    end
    if (entering) begin
      if (io_sqrtOp) begin
        majorExc_Z <= _T_8;
      end else begin
        majorExc_Z <= _T_21;
      end
    end
    if (entering) begin
      if (io_sqrtOp) begin
        isNaN_Z <= _T_22;
      end else begin
        isNaN_Z <= _T_24;
      end
    end
    if (entering) begin
      if (io_sqrtOp) begin
        isInf_Z <= io_a_isInf;
      end else begin
        isInf_Z <= _T_25;
      end
    end
    if (entering) begin
      if (io_sqrtOp) begin
        isZero_Z <= io_a_isZero;
      end else begin
        isZero_Z <= _T_26;
      end
    end
    if (entering) begin
      sign_Z <= sign_S;
    end
    if (entering_normalCase) begin
      if (io_sqrtOp) begin
        sExp_Z <= _T_72;
      end else begin
        sExp_Z <= sSatExpQuot_S_div;
      end
    end
    if (_T_75) begin
      fractB_Z <= _T_76;
    end
    if (entering_normalCase) begin
      roundingMode_Z <= io_roundingMode;
    end
    rem_Z <= _GEN_10[25:0];
    if (_T_126) begin
      notZeroRem_Z <= _T_127;
    end
    sigX_Z <= _GEN_12[25:0];
  end
endmodule

