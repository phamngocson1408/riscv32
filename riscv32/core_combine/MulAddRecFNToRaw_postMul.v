module MulAddRecFNToRaw_postMul(
  input         io_fromPreMul_isSigNaNAny,
  input         io_fromPreMul_isNaNAOrB,
  input         io_fromPreMul_isInfA,
  input         io_fromPreMul_isZeroA,
  input         io_fromPreMul_isInfB,
  input         io_fromPreMul_isZeroB,
  input         io_fromPreMul_signProd,
  input         io_fromPreMul_isNaNC,
  input         io_fromPreMul_isInfC,
  input         io_fromPreMul_isZeroC,
  input  [9:0]  io_fromPreMul_sExpSum,
  input         io_fromPreMul_doSubMags,
  input         io_fromPreMul_CIsDominant,
  input  [4:0]  io_fromPreMul_CDom_CAlignDist,
  input  [25:0] io_fromPreMul_highAlignedSigC,
  input         io_fromPreMul_bit0AlignedSigC,
  input  [48:0] io_mulAddResult,
  input  [2:0]  io_roundingMode,
  output        io_invalidExc,
  output        io_rawOut_isNaN,
  output        io_rawOut_isInf,
  output        io_rawOut_isZero,
  output        io_rawOut_sign,
  output [9:0]  io_rawOut_sExp,
  output [26:0] io_rawOut_sig
);
  wire  roundingMode_min; // @[MulAddRecFN.scala 188:45:freechips.rocketchip.system.DefaultRV32Config.fir@141841.4]
  wire  CDom_sign; // @[MulAddRecFN.scala 192:42:freechips.rocketchip.system.DefaultRV32Config.fir@141842.4]
  wire  _T; // @[MulAddRecFN.scala 194:32:freechips.rocketchip.system.DefaultRV32Config.fir@141843.4]
  wire [25:0] _T_2; // @[MulAddRecFN.scala 195:47:freechips.rocketchip.system.DefaultRV32Config.fir@141845.4]
  wire [47:0] _T_4; // @[MulAddRecFN.scala 198:28:freechips.rocketchip.system.DefaultRV32Config.fir@141847.4]
  wire [74:0] sigSum; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@141849.4]
  wire [9:0] CDom_sExp; // @[MulAddRecFN.scala 205:43:freechips.rocketchip.system.DefaultRV32Config.fir@141853.4]
  wire [49:0] _T_9; // @[MulAddRecFN.scala 208:20:freechips.rocketchip.system.DefaultRV32Config.fir@141854.4]
  wire [49:0] _T_10; // @[MulAddRecFN.scala 208:13:freechips.rocketchip.system.DefaultRV32Config.fir@141855.4]
  wire [1:0] _T_11; // @[MulAddRecFN.scala 211:46:freechips.rocketchip.system.DefaultRV32Config.fir@141856.4]
  wire [46:0] _T_12; // @[MulAddRecFN.scala 212:23:freechips.rocketchip.system.DefaultRV32Config.fir@141857.4]
  wire [49:0] _T_14; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@141859.4]
  wire [49:0] CDom_absSigSum; // @[MulAddRecFN.scala 207:12:freechips.rocketchip.system.DefaultRV32Config.fir@141860.4]
  wire [23:0] _T_15; // @[MulAddRecFN.scala 217:21:freechips.rocketchip.system.DefaultRV32Config.fir@141861.4]
  wire [23:0] _T_16; // @[MulAddRecFN.scala 217:14:freechips.rocketchip.system.DefaultRV32Config.fir@141862.4]
  wire  _T_17; // @[MulAddRecFN.scala 217:36:freechips.rocketchip.system.DefaultRV32Config.fir@141863.4]
  wire [24:0] _T_18; // @[MulAddRecFN.scala 218:19:freechips.rocketchip.system.DefaultRV32Config.fir@141864.4]
  wire  _T_19; // @[MulAddRecFN.scala 218:37:freechips.rocketchip.system.DefaultRV32Config.fir@141865.4]
  wire  CDom_absSigSumExtra; // @[MulAddRecFN.scala 216:12:freechips.rocketchip.system.DefaultRV32Config.fir@141866.4]
  wire [80:0] _GEN_1; // @[MulAddRecFN.scala 221:24:freechips.rocketchip.system.DefaultRV32Config.fir@141867.4]
  wire [28:0] CDom_mainSig; // @[MulAddRecFN.scala 221:56:freechips.rocketchip.system.DefaultRV32Config.fir@141868.4]
  wire [23:0] _T_21; // @[MulAddRecFN.scala 224:36:freechips.rocketchip.system.DefaultRV32Config.fir@141869.4]
  wire [3:0] _T_24; // @[primitives.scala 121:33:freechips.rocketchip.system.DefaultRV32Config.fir@141873.4]
  wire  _T_25; // @[primitives.scala 121:54:freechips.rocketchip.system.DefaultRV32Config.fir@141874.4]
  wire [3:0] _T_26; // @[primitives.scala 121:33:freechips.rocketchip.system.DefaultRV32Config.fir@141876.4]
  wire  _T_27; // @[primitives.scala 121:54:freechips.rocketchip.system.DefaultRV32Config.fir@141877.4]
  wire [3:0] _T_28; // @[primitives.scala 121:33:freechips.rocketchip.system.DefaultRV32Config.fir@141879.4]
  wire  _T_29; // @[primitives.scala 121:54:freechips.rocketchip.system.DefaultRV32Config.fir@141880.4]
  wire [3:0] _T_30; // @[primitives.scala 121:33:freechips.rocketchip.system.DefaultRV32Config.fir@141882.4]
  wire  _T_31; // @[primitives.scala 121:54:freechips.rocketchip.system.DefaultRV32Config.fir@141883.4]
  wire [3:0] _T_32; // @[primitives.scala 121:33:freechips.rocketchip.system.DefaultRV32Config.fir@141885.4]
  wire  _T_33; // @[primitives.scala 121:54:freechips.rocketchip.system.DefaultRV32Config.fir@141886.4]
  wire [3:0] _T_34; // @[primitives.scala 121:33:freechips.rocketchip.system.DefaultRV32Config.fir@141888.4]
  wire  _T_35; // @[primitives.scala 121:54:freechips.rocketchip.system.DefaultRV32Config.fir@141889.4]
  wire [2:0] _T_36; // @[primitives.scala 124:15:freechips.rocketchip.system.DefaultRV32Config.fir@141891.4]
  wire  _T_37; // @[primitives.scala 124:57:freechips.rocketchip.system.DefaultRV32Config.fir@141892.4]
  wire [2:0] _T_44; // @[MulAddRecFN.scala 225:51:freechips.rocketchip.system.DefaultRV32Config.fir@141900.4]
  wire [2:0] _T_45; // @[primitives.scala 51:21:freechips.rocketchip.system.DefaultRV32Config.fir@141901.4]
  wire [5:0] _T_47; // @[primitives.scala 79:22:freechips.rocketchip.system.DefaultRV32Config.fir@141903.4]
  wire [3:0] _T_48; // @[Bitwise.scala 108:18:freechips.rocketchip.system.DefaultRV32Config.fir@141904.4]
  wire [1:0] _T_49; // @[Bitwise.scala 108:18:freechips.rocketchip.system.DefaultRV32Config.fir@141905.4]
  wire  _T_50; // @[Bitwise.scala 108:18:freechips.rocketchip.system.DefaultRV32Config.fir@141906.4]
  wire  _T_51; // @[Bitwise.scala 108:44:freechips.rocketchip.system.DefaultRV32Config.fir@141907.4]
  wire [1:0] _T_53; // @[Bitwise.scala 108:44:freechips.rocketchip.system.DefaultRV32Config.fir@141909.4]
  wire  _T_54; // @[Bitwise.scala 108:18:freechips.rocketchip.system.DefaultRV32Config.fir@141910.4]
  wire  _T_55; // @[Bitwise.scala 108:44:freechips.rocketchip.system.DefaultRV32Config.fir@141911.4]
  wire [1:0] _T_58; // @[Bitwise.scala 108:44:freechips.rocketchip.system.DefaultRV32Config.fir@141914.4]
  wire  _T_59; // @[Bitwise.scala 108:18:freechips.rocketchip.system.DefaultRV32Config.fir@141915.4]
  wire  _T_60; // @[Bitwise.scala 108:44:freechips.rocketchip.system.DefaultRV32Config.fir@141916.4]
  wire [5:0] _T_62; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@141918.4]
  wire  CDom_reduced4SigExtra; // @[MulAddRecFN.scala 225:73:freechips.rocketchip.system.DefaultRV32Config.fir@141920.4]
  wire [25:0] _T_64; // @[MulAddRecFN.scala 227:25:freechips.rocketchip.system.DefaultRV32Config.fir@141921.4]
  wire [2:0] _T_65; // @[MulAddRecFN.scala 228:25:freechips.rocketchip.system.DefaultRV32Config.fir@141922.4]
  wire  _T_66; // @[MulAddRecFN.scala 228:32:freechips.rocketchip.system.DefaultRV32Config.fir@141923.4]
  wire  _T_67; // @[MulAddRecFN.scala 228:36:freechips.rocketchip.system.DefaultRV32Config.fir@141924.4]
  wire  _T_68; // @[MulAddRecFN.scala 228:61:freechips.rocketchip.system.DefaultRV32Config.fir@141925.4]
  wire [26:0] CDom_sig; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@141926.4]
  wire  notCDom_signSigSum; // @[MulAddRecFN.scala 234:36:freechips.rocketchip.system.DefaultRV32Config.fir@141927.4]
  wire [50:0] _T_69; // @[MulAddRecFN.scala 237:20:freechips.rocketchip.system.DefaultRV32Config.fir@141928.4]
  wire [50:0] _T_70; // @[MulAddRecFN.scala 237:13:freechips.rocketchip.system.DefaultRV32Config.fir@141929.4]
  wire [50:0] _GEN_3; // @[MulAddRecFN.scala 238:41:freechips.rocketchip.system.DefaultRV32Config.fir@141931.4]
  wire [50:0] _T_73; // @[MulAddRecFN.scala 238:41:freechips.rocketchip.system.DefaultRV32Config.fir@141932.4]
  wire [50:0] notCDom_absSigSum; // @[MulAddRecFN.scala 236:12:freechips.rocketchip.system.DefaultRV32Config.fir@141933.4]
  wire [1:0] _T_75; // @[primitives.scala 104:33:freechips.rocketchip.system.DefaultRV32Config.fir@141936.4]
  wire  _T_76; // @[primitives.scala 104:54:freechips.rocketchip.system.DefaultRV32Config.fir@141937.4]
  wire [1:0] _T_77; // @[primitives.scala 104:33:freechips.rocketchip.system.DefaultRV32Config.fir@141939.4]
  wire  _T_78; // @[primitives.scala 104:54:freechips.rocketchip.system.DefaultRV32Config.fir@141940.4]
  wire [1:0] _T_79; // @[primitives.scala 104:33:freechips.rocketchip.system.DefaultRV32Config.fir@141942.4]
  wire  _T_80; // @[primitives.scala 104:54:freechips.rocketchip.system.DefaultRV32Config.fir@141943.4]
  wire [1:0] _T_81; // @[primitives.scala 104:33:freechips.rocketchip.system.DefaultRV32Config.fir@141945.4]
  wire  _T_82; // @[primitives.scala 104:54:freechips.rocketchip.system.DefaultRV32Config.fir@141946.4]
  wire [1:0] _T_83; // @[primitives.scala 104:33:freechips.rocketchip.system.DefaultRV32Config.fir@141948.4]
  wire  _T_84; // @[primitives.scala 104:54:freechips.rocketchip.system.DefaultRV32Config.fir@141949.4]
  wire [1:0] _T_85; // @[primitives.scala 104:33:freechips.rocketchip.system.DefaultRV32Config.fir@141951.4]
  wire  _T_86; // @[primitives.scala 104:54:freechips.rocketchip.system.DefaultRV32Config.fir@141952.4]
  wire [1:0] _T_87; // @[primitives.scala 104:33:freechips.rocketchip.system.DefaultRV32Config.fir@141954.4]
  wire  _T_88; // @[primitives.scala 104:54:freechips.rocketchip.system.DefaultRV32Config.fir@141955.4]
  wire [1:0] _T_89; // @[primitives.scala 104:33:freechips.rocketchip.system.DefaultRV32Config.fir@141957.4]
  wire  _T_90; // @[primitives.scala 104:54:freechips.rocketchip.system.DefaultRV32Config.fir@141958.4]
  wire [1:0] _T_91; // @[primitives.scala 104:33:freechips.rocketchip.system.DefaultRV32Config.fir@141960.4]
  wire  _T_92; // @[primitives.scala 104:54:freechips.rocketchip.system.DefaultRV32Config.fir@141961.4]
  wire [1:0] _T_93; // @[primitives.scala 104:33:freechips.rocketchip.system.DefaultRV32Config.fir@141963.4]
  wire  _T_94; // @[primitives.scala 104:54:freechips.rocketchip.system.DefaultRV32Config.fir@141964.4]
  wire [1:0] _T_95; // @[primitives.scala 104:33:freechips.rocketchip.system.DefaultRV32Config.fir@141966.4]
  wire  _T_96; // @[primitives.scala 104:54:freechips.rocketchip.system.DefaultRV32Config.fir@141967.4]
  wire [1:0] _T_97; // @[primitives.scala 104:33:freechips.rocketchip.system.DefaultRV32Config.fir@141969.4]
  wire  _T_98; // @[primitives.scala 104:54:freechips.rocketchip.system.DefaultRV32Config.fir@141970.4]
  wire [1:0] _T_99; // @[primitives.scala 104:33:freechips.rocketchip.system.DefaultRV32Config.fir@141972.4]
  wire  _T_100; // @[primitives.scala 104:54:freechips.rocketchip.system.DefaultRV32Config.fir@141973.4]
  wire [1:0] _T_101; // @[primitives.scala 104:33:freechips.rocketchip.system.DefaultRV32Config.fir@141975.4]
  wire  _T_102; // @[primitives.scala 104:54:freechips.rocketchip.system.DefaultRV32Config.fir@141976.4]
  wire [1:0] _T_103; // @[primitives.scala 104:33:freechips.rocketchip.system.DefaultRV32Config.fir@141978.4]
  wire  _T_104; // @[primitives.scala 104:54:freechips.rocketchip.system.DefaultRV32Config.fir@141979.4]
  wire [1:0] _T_105; // @[primitives.scala 104:33:freechips.rocketchip.system.DefaultRV32Config.fir@141981.4]
  wire  _T_106; // @[primitives.scala 104:54:freechips.rocketchip.system.DefaultRV32Config.fir@141982.4]
  wire [1:0] _T_107; // @[primitives.scala 104:33:freechips.rocketchip.system.DefaultRV32Config.fir@141984.4]
  wire  _T_108; // @[primitives.scala 104:54:freechips.rocketchip.system.DefaultRV32Config.fir@141985.4]
  wire [1:0] _T_109; // @[primitives.scala 104:33:freechips.rocketchip.system.DefaultRV32Config.fir@141987.4]
  wire  _T_110; // @[primitives.scala 104:54:freechips.rocketchip.system.DefaultRV32Config.fir@141988.4]
  wire [1:0] _T_111; // @[primitives.scala 104:33:freechips.rocketchip.system.DefaultRV32Config.fir@141990.4]
  wire  _T_112; // @[primitives.scala 104:54:freechips.rocketchip.system.DefaultRV32Config.fir@141991.4]
  wire [1:0] _T_113; // @[primitives.scala 104:33:freechips.rocketchip.system.DefaultRV32Config.fir@141993.4]
  wire  _T_114; // @[primitives.scala 104:54:freechips.rocketchip.system.DefaultRV32Config.fir@141994.4]
  wire [1:0] _T_115; // @[primitives.scala 104:33:freechips.rocketchip.system.DefaultRV32Config.fir@141996.4]
  wire  _T_116; // @[primitives.scala 104:54:freechips.rocketchip.system.DefaultRV32Config.fir@141997.4]
  wire [1:0] _T_117; // @[primitives.scala 104:33:freechips.rocketchip.system.DefaultRV32Config.fir@141999.4]
  wire  _T_118; // @[primitives.scala 104:54:freechips.rocketchip.system.DefaultRV32Config.fir@142000.4]
  wire [1:0] _T_119; // @[primitives.scala 104:33:freechips.rocketchip.system.DefaultRV32Config.fir@142002.4]
  wire  _T_120; // @[primitives.scala 104:54:freechips.rocketchip.system.DefaultRV32Config.fir@142003.4]
  wire [1:0] _T_121; // @[primitives.scala 104:33:freechips.rocketchip.system.DefaultRV32Config.fir@142005.4]
  wire  _T_122; // @[primitives.scala 104:54:freechips.rocketchip.system.DefaultRV32Config.fir@142006.4]
  wire [1:0] _T_123; // @[primitives.scala 104:33:freechips.rocketchip.system.DefaultRV32Config.fir@142008.4]
  wire  _T_124; // @[primitives.scala 104:54:freechips.rocketchip.system.DefaultRV32Config.fir@142009.4]
  wire  _T_125; // @[primitives.scala 107:15:freechips.rocketchip.system.DefaultRV32Config.fir@142011.4]
  wire [5:0] _T_131; // @[primitives.scala 108:20:freechips.rocketchip.system.DefaultRV32Config.fir@142018.4]
  wire [12:0] _T_138; // @[primitives.scala 108:20:freechips.rocketchip.system.DefaultRV32Config.fir@142025.4]
  wire [5:0] _T_143; // @[primitives.scala 108:20:freechips.rocketchip.system.DefaultRV32Config.fir@142030.4]
  wire [25:0] notCDom_reduced2AbsSigSum; // @[primitives.scala 108:20:freechips.rocketchip.system.DefaultRV32Config.fir@142038.4]
  wire  _T_152; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@142040.4]
  wire  _T_153; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@142041.4]
  wire  _T_154; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@142042.4]
  wire  _T_155; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@142043.4]
  wire  _T_156; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@142044.4]
  wire  _T_157; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@142045.4]
  wire  _T_158; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@142046.4]
  wire  _T_159; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@142047.4]
  wire  _T_160; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@142048.4]
  wire  _T_161; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@142049.4]
  wire  _T_162; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@142050.4]
  wire  _T_163; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@142051.4]
  wire  _T_164; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@142052.4]
  wire  _T_165; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@142053.4]
  wire  _T_166; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@142054.4]
  wire  _T_167; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@142055.4]
  wire  _T_168; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@142056.4]
  wire  _T_169; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@142057.4]
  wire  _T_170; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@142058.4]
  wire  _T_171; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@142059.4]
  wire  _T_172; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@142060.4]
  wire  _T_173; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@142061.4]
  wire  _T_174; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@142062.4]
  wire  _T_175; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@142063.4]
  wire  _T_176; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@142064.4]
  wire [4:0] _T_177; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@142065.4]
  wire [4:0] _T_178; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@142066.4]
  wire [4:0] _T_179; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@142067.4]
  wire [4:0] _T_180; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@142068.4]
  wire [4:0] _T_181; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@142069.4]
  wire [4:0] _T_182; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@142070.4]
  wire [4:0] _T_183; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@142071.4]
  wire [4:0] _T_184; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@142072.4]
  wire [4:0] _T_185; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@142073.4]
  wire [4:0] _T_186; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@142074.4]
  wire [4:0] _T_187; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@142075.4]
  wire [4:0] _T_188; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@142076.4]
  wire [4:0] _T_189; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@142077.4]
  wire [4:0] _T_190; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@142078.4]
  wire [4:0] _T_191; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@142079.4]
  wire [4:0] _T_192; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@142080.4]
  wire [4:0] _T_193; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@142081.4]
  wire [4:0] _T_194; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@142082.4]
  wire [4:0] _T_195; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@142083.4]
  wire [4:0] _T_196; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@142084.4]
  wire [4:0] _T_197; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@142085.4]
  wire [4:0] _T_198; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@142086.4]
  wire [4:0] _T_199; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@142087.4]
  wire [4:0] _T_200; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@142088.4]
  wire [4:0] notCDom_normDistReduced2; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@142089.4]
  wire [5:0] notCDom_nearNormDist; // @[MulAddRecFN.scala 242:56:freechips.rocketchip.system.DefaultRV32Config.fir@142090.4]
  wire [6:0] _T_201; // @[MulAddRecFN.scala 243:69:freechips.rocketchip.system.DefaultRV32Config.fir@142091.4]
  wire [9:0] _GEN_4; // @[MulAddRecFN.scala 243:46:freechips.rocketchip.system.DefaultRV32Config.fir@142092.4]
  wire [9:0] _T_203; // @[MulAddRecFN.scala 243:46:freechips.rocketchip.system.DefaultRV32Config.fir@142093.4]
  wire [9:0] notCDom_sExp; // @[MulAddRecFN.scala 243:46:freechips.rocketchip.system.DefaultRV32Config.fir@142094.4]
  wire [113:0] _GEN_5; // @[MulAddRecFN.scala 245:27:freechips.rocketchip.system.DefaultRV32Config.fir@142095.4]
  wire [28:0] notCDom_mainSig; // @[MulAddRecFN.scala 245:50:freechips.rocketchip.system.DefaultRV32Config.fir@142096.4]
  wire [12:0] _T_205; // @[MulAddRecFN.scala 249:39:freechips.rocketchip.system.DefaultRV32Config.fir@142097.4]
  wire [1:0] _T_208; // @[primitives.scala 104:33:freechips.rocketchip.system.DefaultRV32Config.fir@142101.4]
  wire  _T_209; // @[primitives.scala 104:54:freechips.rocketchip.system.DefaultRV32Config.fir@142102.4]
  wire [1:0] _T_210; // @[primitives.scala 104:33:freechips.rocketchip.system.DefaultRV32Config.fir@142104.4]
  wire  _T_211; // @[primitives.scala 104:54:freechips.rocketchip.system.DefaultRV32Config.fir@142105.4]
  wire [1:0] _T_212; // @[primitives.scala 104:33:freechips.rocketchip.system.DefaultRV32Config.fir@142107.4]
  wire  _T_213; // @[primitives.scala 104:54:freechips.rocketchip.system.DefaultRV32Config.fir@142108.4]
  wire [1:0] _T_214; // @[primitives.scala 104:33:freechips.rocketchip.system.DefaultRV32Config.fir@142110.4]
  wire  _T_215; // @[primitives.scala 104:54:freechips.rocketchip.system.DefaultRV32Config.fir@142111.4]
  wire [1:0] _T_216; // @[primitives.scala 104:33:freechips.rocketchip.system.DefaultRV32Config.fir@142113.4]
  wire  _T_217; // @[primitives.scala 104:54:freechips.rocketchip.system.DefaultRV32Config.fir@142114.4]
  wire [1:0] _T_218; // @[primitives.scala 104:33:freechips.rocketchip.system.DefaultRV32Config.fir@142116.4]
  wire  _T_219; // @[primitives.scala 104:54:freechips.rocketchip.system.DefaultRV32Config.fir@142117.4]
  wire  _T_220; // @[primitives.scala 107:15:freechips.rocketchip.system.DefaultRV32Config.fir@142119.4]
  wire [3:0] _T_228; // @[MulAddRecFN.scala 250:46:freechips.rocketchip.system.DefaultRV32Config.fir@142128.4]
  wire [3:0] _T_229; // @[primitives.scala 51:21:freechips.rocketchip.system.DefaultRV32Config.fir@142129.4]
  wire [5:0] _T_231; // @[primitives.scala 79:22:freechips.rocketchip.system.DefaultRV32Config.fir@142131.4]
  wire [3:0] _T_232; // @[Bitwise.scala 108:18:freechips.rocketchip.system.DefaultRV32Config.fir@142132.4]
  wire [1:0] _T_233; // @[Bitwise.scala 108:18:freechips.rocketchip.system.DefaultRV32Config.fir@142133.4]
  wire  _T_234; // @[Bitwise.scala 108:18:freechips.rocketchip.system.DefaultRV32Config.fir@142134.4]
  wire  _T_235; // @[Bitwise.scala 108:44:freechips.rocketchip.system.DefaultRV32Config.fir@142135.4]
  wire [1:0] _T_237; // @[Bitwise.scala 108:44:freechips.rocketchip.system.DefaultRV32Config.fir@142137.4]
  wire  _T_238; // @[Bitwise.scala 108:18:freechips.rocketchip.system.DefaultRV32Config.fir@142138.4]
  wire  _T_239; // @[Bitwise.scala 108:44:freechips.rocketchip.system.DefaultRV32Config.fir@142139.4]
  wire [1:0] _T_242; // @[Bitwise.scala 108:44:freechips.rocketchip.system.DefaultRV32Config.fir@142142.4]
  wire  _T_243; // @[Bitwise.scala 108:18:freechips.rocketchip.system.DefaultRV32Config.fir@142143.4]
  wire  _T_244; // @[Bitwise.scala 108:44:freechips.rocketchip.system.DefaultRV32Config.fir@142144.4]
  wire [5:0] _T_246; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@142146.4]
  wire [6:0] _T_247; // @[MulAddRecFN.scala 249:78:freechips.rocketchip.system.DefaultRV32Config.fir@142147.4]
  wire  notCDom_reduced4SigExtra; // @[MulAddRecFN.scala 251:11:freechips.rocketchip.system.DefaultRV32Config.fir@142148.4]
  wire [25:0] _T_248; // @[MulAddRecFN.scala 253:28:freechips.rocketchip.system.DefaultRV32Config.fir@142149.4]
  wire [2:0] _T_249; // @[MulAddRecFN.scala 254:28:freechips.rocketchip.system.DefaultRV32Config.fir@142150.4]
  wire  _T_250; // @[MulAddRecFN.scala 254:35:freechips.rocketchip.system.DefaultRV32Config.fir@142151.4]
  wire  _T_251; // @[MulAddRecFN.scala 254:39:freechips.rocketchip.system.DefaultRV32Config.fir@142152.4]
  wire [26:0] notCDom_sig; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@142153.4]
  wire [1:0] _T_252; // @[MulAddRecFN.scala 257:21:freechips.rocketchip.system.DefaultRV32Config.fir@142154.4]
  wire  notCDom_completeCancellation; // @[MulAddRecFN.scala 257:50:freechips.rocketchip.system.DefaultRV32Config.fir@142155.4]
  wire  _T_253; // @[MulAddRecFN.scala 261:36:freechips.rocketchip.system.DefaultRV32Config.fir@142156.4]
  wire  notCDom_sign; // @[MulAddRecFN.scala 259:12:freechips.rocketchip.system.DefaultRV32Config.fir@142157.4]
  wire  notNaN_isInfProd; // @[MulAddRecFN.scala 266:49:freechips.rocketchip.system.DefaultRV32Config.fir@142158.4]
  wire  notNaN_isInfOut; // @[MulAddRecFN.scala 267:44:freechips.rocketchip.system.DefaultRV32Config.fir@142159.4]
  wire  _T_254; // @[MulAddRecFN.scala 269:32:freechips.rocketchip.system.DefaultRV32Config.fir@142160.4]
  wire  notNaN_addZeros; // @[MulAddRecFN.scala 269:58:freechips.rocketchip.system.DefaultRV32Config.fir@142161.4]
  wire  _T_255; // @[MulAddRecFN.scala 274:31:freechips.rocketchip.system.DefaultRV32Config.fir@142162.4]
  wire  _T_256; // @[MulAddRecFN.scala 273:35:freechips.rocketchip.system.DefaultRV32Config.fir@142163.4]
  wire  _T_257; // @[MulAddRecFN.scala 275:32:freechips.rocketchip.system.DefaultRV32Config.fir@142164.4]
  wire  _T_258; // @[MulAddRecFN.scala 274:57:freechips.rocketchip.system.DefaultRV32Config.fir@142165.4]
  wire  _T_259; // @[MulAddRecFN.scala 276:10:freechips.rocketchip.system.DefaultRV32Config.fir@142166.4]
  wire  _T_261; // @[MulAddRecFN.scala 276:36:freechips.rocketchip.system.DefaultRV32Config.fir@142168.4]
  wire  _T_262; // @[MulAddRecFN.scala 277:61:freechips.rocketchip.system.DefaultRV32Config.fir@142169.4]
  wire  _T_263; // @[MulAddRecFN.scala 278:35:freechips.rocketchip.system.DefaultRV32Config.fir@142170.4]
  wire  _T_266; // @[MulAddRecFN.scala 285:14:freechips.rocketchip.system.DefaultRV32Config.fir@142176.4]
  wire  _T_267; // @[MulAddRecFN.scala 285:42:freechips.rocketchip.system.DefaultRV32Config.fir@142177.4]
  wire  _T_269; // @[MulAddRecFN.scala 287:27:freechips.rocketchip.system.DefaultRV32Config.fir@142180.4]
  wire  _T_270; // @[MulAddRecFN.scala 288:31:freechips.rocketchip.system.DefaultRV32Config.fir@142181.4]
  wire  _T_271; // @[MulAddRecFN.scala 287:54:freechips.rocketchip.system.DefaultRV32Config.fir@142182.4]
  wire  _T_272; // @[MulAddRecFN.scala 289:29:freechips.rocketchip.system.DefaultRV32Config.fir@142183.4]
  wire  _T_273; // @[MulAddRecFN.scala 289:26:freechips.rocketchip.system.DefaultRV32Config.fir@142184.4]
  wire  _T_274; // @[MulAddRecFN.scala 289:48:freechips.rocketchip.system.DefaultRV32Config.fir@142185.4]
  wire  _T_275; // @[MulAddRecFN.scala 290:36:freechips.rocketchip.system.DefaultRV32Config.fir@142186.4]
  wire  _T_276; // @[MulAddRecFN.scala 288:43:freechips.rocketchip.system.DefaultRV32Config.fir@142187.4]
  wire  _T_277; // @[MulAddRecFN.scala 291:26:freechips.rocketchip.system.DefaultRV32Config.fir@142188.4]
  wire  _T_278; // @[MulAddRecFN.scala 292:37:freechips.rocketchip.system.DefaultRV32Config.fir@142189.4]
  wire  _T_279; // @[MulAddRecFN.scala 291:46:freechips.rocketchip.system.DefaultRV32Config.fir@142190.4]
  wire  _T_280; // @[MulAddRecFN.scala 290:48:freechips.rocketchip.system.DefaultRV32Config.fir@142191.4]
  wire  _T_281; // @[MulAddRecFN.scala 293:10:freechips.rocketchip.system.DefaultRV32Config.fir@142192.4]
  wire  _T_282; // @[MulAddRecFN.scala 293:31:freechips.rocketchip.system.DefaultRV32Config.fir@142193.4]
  wire  _T_283; // @[MulAddRecFN.scala 293:28:freechips.rocketchip.system.DefaultRV32Config.fir@142194.4]
  wire  _T_285; // @[MulAddRecFN.scala 293:49:freechips.rocketchip.system.DefaultRV32Config.fir@142196.4]

`define MY_ASSIGNMENT
`ifdef MY_ASSIGNMENT
  assign roundingMode_min = io_roundingMode == 3'h2;
  assign CDom_sign = io_fromPreMul_signProd ^ io_fromPreMul_doSubMags;
  wire [25:0] _T_3 = io_mulAddResult[48] ? (io_fromPreMul_highAlignedSigC + 26'h1) : io_fromPreMul_highAlignedSigC;
  assign sigSum = {_T_3, io_mulAddResult[47:0], io_fromPreMul_bit0AlignedSigC};
//  wire [1:0] _T_6 = {1'b0,$signed(io_fromPreMul_doSubMags)};
//  wire [9:0] _GEN_0 = {8'h00, {1'b0,$signed(io_fromPreMul_doSubMags)}};
//  wire [9:0] _T_8 = $signed(io_fromPreMul_sExpSum) - $signed({8'h00, {1'b0,$signed(io_fromPreMul_doSubMags)}});
  assign CDom_sExp = $signed(io_fromPreMul_sExpSum) - $signed({8'h00, {1'b0,$signed(io_fromPreMul_doSubMags)}});
  assign CDom_absSigSum = io_fromPreMul_doSubMags ? (~ sigSum[74:25]) : {1'h0, io_fromPreMul_highAlignedSigC[25:24], sigSum[72:26]};
  assign CDom_absSigSumExtra = io_fromPreMul_doSubMags ? ((~ sigSum[24:1]) != 24'h0) : (sigSum[25:1] != 25'h0);
  wire [80:0] _T_20 = {{31'd0}, CDom_absSigSum} << io_fromPreMul_CDom_CAlignDist;
  assign CDom_mainSig = _T_20[49:21];

  wire [8:0] _T_46 = $signed(-9'sh100) >>> (~ io_fromPreMul_CDom_CAlignDist[4:2]);
  wire [6:0] _GEN_2 = {{1'd0}, _T_46[1], _T_46[2], _T_46[3], _T_46[4], _T_46[5], _T_46[6]};
  wire [26:0] _T_22 = {CDom_absSigSum[23:0], 3'h0};
  wire [6:0] _T_43 = {_T_22[26:24] != 3'h0, _T_22[23:20] != 4'h0, _T_22[19:16] != 4'h0, _T_22[15:12] != 4'h0, _T_22[11:8] != 4'h0, _T_22[7:4] != 4'h0, _T_22[3:0] != 4'h0};
  wire [6:0] _T_63 = _T_43 & _GEN_2;
  assign CDom_reduced4SigExtra = _T_63 != 7'h0;
  assign CDom_sig = {CDom_mainSig[28:3], ((CDom_mainSig[2:0] != 3'h0) | CDom_reduced4SigExtra | CDom_absSigSumExtra)};
  assign notCDom_signSigSum = sigSum[51];
  assign notCDom_absSigSum = notCDom_signSigSum ? (~ sigSum[50:0]) : (sigSum[50:0] + {{50'd0}, io_fromPreMul_doSubMags});
  assign notCDom_reduced2AbsSigSum = {notCDom_absSigSum[50], 
				(notCDom_absSigSum[49:48] != 2'h0),
				(notCDom_absSigSum[47:46] != 2'h0),
				(notCDom_absSigSum[45:44] != 2'h0),
				(notCDom_absSigSum[43:42] != 2'h0),
				(notCDom_absSigSum[41:40] != 2'h0),
				(notCDom_absSigSum[39:38] != 2'h0),
				(notCDom_absSigSum[37:36] != 2'h0),
				(notCDom_absSigSum[35:34] != 2'h0),
				(notCDom_absSigSum[33:32] != 2'h0),
				(notCDom_absSigSum[31:30] != 2'h0),
				(notCDom_absSigSum[29:28] != 2'h0),
				(notCDom_absSigSum[27:26] != 2'h0),
				(notCDom_absSigSum[25:24] != 2'h0),
				(notCDom_absSigSum[23:22] != 2'h0),
				(notCDom_absSigSum[21:20] != 2'h0),
				(notCDom_absSigSum[19:18] != 2'h0),
				(notCDom_absSigSum[17:16] != 2'h0),
				(notCDom_absSigSum[15:14] != 2'h0),
				(notCDom_absSigSum[13:12] != 2'h0),
				(notCDom_absSigSum[11:10] != 2'h0),
				(notCDom_absSigSum[9:8] != 2'h0),
				(notCDom_absSigSum[7:6] != 2'h0),
				(notCDom_absSigSum[5:4] != 2'h0),
				(notCDom_absSigSum[3:2] != 2'h0),
				(notCDom_absSigSum[1:0] != 2'h0)
				};

  assign notCDom_normDistReduced2 = notCDom_reduced2AbsSigSum[25] ? 5'h0 
				: notCDom_reduced2AbsSigSum[24] ? 5'h1 
				: notCDom_reduced2AbsSigSum[23] ? 5'h2 
				: notCDom_reduced2AbsSigSum[22] ? 5'h3 
				: notCDom_reduced2AbsSigSum[21] ? 5'h4 
				: notCDom_reduced2AbsSigSum[20] ? 5'h5 
				: notCDom_reduced2AbsSigSum[19] ? 5'h6 
				: notCDom_reduced2AbsSigSum[18] ? 5'h7 
				: notCDom_reduced2AbsSigSum[17] ? 5'h8 
				: notCDom_reduced2AbsSigSum[16] ? 5'h9 
				: notCDom_reduced2AbsSigSum[15] ? 5'ha 
				: notCDom_reduced2AbsSigSum[14] ? 5'hb 
				: notCDom_reduced2AbsSigSum[13] ? 5'hc 
				: notCDom_reduced2AbsSigSum[12] ? 5'hd 
				: notCDom_reduced2AbsSigSum[11] ? 5'he 
				: notCDom_reduced2AbsSigSum[10] ? 5'hf 
				: notCDom_reduced2AbsSigSum[9] ? 5'h10 
				: notCDom_reduced2AbsSigSum[8] ? 5'h11 
				: notCDom_reduced2AbsSigSum[7] ? 5'h12 
				: notCDom_reduced2AbsSigSum[6] ? 5'h13 
				: notCDom_reduced2AbsSigSum[5] ? 5'h14 
				: notCDom_reduced2AbsSigSum[4] ? 5'h15 
				: notCDom_reduced2AbsSigSum[3] ? 5'h16 
				: notCDom_reduced2AbsSigSum[2] ? 5'h17 
				: notCDom_reduced2AbsSigSum[1] ? 5'h18 
				: 5'h19
				;
  assign notCDom_nearNormDist = {notCDom_normDistReduced2, 1'h0};
  assign notCDom_sExp = $signed($signed(io_fromPreMul_sExpSum) - $signed({3'h0, {1'b0,$signed(notCDom_nearNormDist)}}));
  wire [113:0] _T_204 = {{63'd0}, notCDom_absSigSum} << notCDom_nearNormDist;
  assign notCDom_mainSig = _T_204[51:23];
  wire [6:0] _T_227 = {notCDom_reduced2AbsSigSum[12],
			(notCDom_reduced2AbsSigSum[11:10] != 2'h0),
			(notCDom_reduced2AbsSigSum[9:8] != 2'h0),
			(notCDom_reduced2AbsSigSum[7:6] != 2'h0),
			(notCDom_reduced2AbsSigSum[5:4] != 2'h0),
			(notCDom_reduced2AbsSigSum[3:2] != 2'h0),
			(notCDom_reduced2AbsSigSum[1:0] != 2'h0)
			};
  wire [16:0] _T_230 = $signed(-17'sh10000) >>> (~ notCDom_normDistReduced2[4:1]);
  wire [6:0] _GEN_6 = {1'd0,
			_T_230[1],
			_T_230[2],
			_T_230[3],
			_T_230[4],
			_T_230[5],
			_T_230[6]
			};
  assign notCDom_reduced4SigExtra = (_T_227 & _GEN_6) != 7'h0;
  assign notCDom_sig = {notCDom_mainSig[28:3], ((notCDom_mainSig[2:0] != 3'h0) | notCDom_reduced4SigExtra)};
  assign notCDom_completeCancellation = notCDom_sig[26:25] == 2'h0;
  assign notCDom_sign = notCDom_completeCancellation ? roundingMode_min : (io_fromPreMul_signProd ^ notCDom_signSigSum);
  assign notNaN_isInfProd = io_fromPreMul_isInfA | io_fromPreMul_isInfB;
  assign notNaN_isInfOut = notNaN_isInfProd | io_fromPreMul_isInfC;
  assign notNaN_addZeros = (io_fromPreMul_isZeroA | io_fromPreMul_isZeroB) & io_fromPreMul_isZeroC;

  assign io_invalidExc = (io_fromPreMul_isSigNaNAny | (io_fromPreMul_isInfA & io_fromPreMul_isZeroB)) 
			| (io_fromPreMul_isZeroA & io_fromPreMul_isInfB) 
			| (!io_fromPreMul_isNaNAOrB & notNaN_isInfProd & io_fromPreMul_isInfC & io_fromPreMul_doSubMags)
			;
  assign io_rawOut_isNaN = io_fromPreMul_isNaNAOrB | io_fromPreMul_isNaNC;
  assign io_rawOut_isInf = notNaN_isInfProd | io_fromPreMul_isInfC;
  assign io_rawOut_isZero = notNaN_addZeros | (!io_fromPreMul_CIsDominant & notCDom_completeCancellation);
  wire _T_284 = io_fromPreMul_CIsDominant ? CDom_sign : notCDom_sign;
  assign io_rawOut_sign = (notNaN_isInfProd & io_fromPreMul_signProd) 
			| (io_fromPreMul_isInfC & CDom_sign) 
			| (notNaN_addZeros & !roundingMode_min & io_fromPreMul_signProd & CDom_sign) 
			| (notNaN_addZeros & roundingMode_min & (io_fromPreMul_signProd | CDom_sign)) 
			| (!notNaN_isInfOut & !notNaN_addZeros & _T_284)
			;
  assign io_rawOut_sExp = io_fromPreMul_CIsDominant ? $signed(CDom_sExp) : $signed(notCDom_sExp);
  assign io_rawOut_sig = io_fromPreMul_CIsDominant ? CDom_sig : notCDom_sig;

`endif //MY_ASSIGNMENT

`ifndef MY_ASSIGNMENT
  assign roundingMode_min = io_roundingMode == 3'h2; // @[MulAddRecFN.scala 188:45:freechips.rocketchip.system.DefaultRV32Config.fir@141841.4]
  assign CDom_sign = io_fromPreMul_signProd ^ io_fromPreMul_doSubMags; // @[MulAddRecFN.scala 192:42:freechips.rocketchip.system.DefaultRV32Config.fir@141842.4]
  wire [25:0] _T_3; // @[MulAddRecFN.scala 194:16:freechips.rocketchip.system.DefaultRV32Config.fir@141846.4]
  assign _T_3 = _T ? _T_2 : io_fromPreMul_highAlignedSigC; // @[MulAddRecFN.scala 194:16:freechips.rocketchip.system.DefaultRV32Config.fir@141846.4]
  assign sigSum = {_T_3,_T_4,io_fromPreMul_bit0AlignedSigC}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@141849.4]
  wire [1:0] _T_6; // @[MulAddRecFN.scala 205:69:freechips.rocketchip.system.DefaultRV32Config.fir@141850.4]
  wire [9:0] _GEN_0; // @[MulAddRecFN.scala 205:43:freechips.rocketchip.system.DefaultRV32Config.fir@141851.4]
  wire [9:0] _T_8; // @[MulAddRecFN.scala 205:43:freechips.rocketchip.system.DefaultRV32Config.fir@141852.4]
  assign _T_6 = {1'b0,$signed(io_fromPreMul_doSubMags)}; // @[MulAddRecFN.scala 205:69:freechips.rocketchip.system.DefaultRV32Config.fir@141850.4]
  assign _GEN_0 = {{8{_T_6[1]}},_T_6}; // @[MulAddRecFN.scala 205:43:freechips.rocketchip.system.DefaultRV32Config.fir@141851.4]
  assign _T_8 = $signed(io_fromPreMul_sExpSum) - $signed(_GEN_0); // @[MulAddRecFN.scala 205:43:freechips.rocketchip.system.DefaultRV32Config.fir@141852.4]
  assign CDom_sExp = $signed(_T_8); // @[MulAddRecFN.scala 205:43:freechips.rocketchip.system.DefaultRV32Config.fir@141853.4]
  assign CDom_absSigSum = io_fromPreMul_doSubMags ? _T_10 : _T_14; // @[MulAddRecFN.scala 207:12:freechips.rocketchip.system.DefaultRV32Config.fir@141860.4]
  assign CDom_absSigSumExtra = io_fromPreMul_doSubMags ? _T_17 : _T_19; // @[MulAddRecFN.scala 216:12:freechips.rocketchip.system.DefaultRV32Config.fir@141866.4]
  wire [80:0] _T_20; // @[MulAddRecFN.scala 221:24:freechips.rocketchip.system.DefaultRV32Config.fir@141867.4]
  assign _T_20 = _GEN_1 << io_fromPreMul_CDom_CAlignDist; // @[MulAddRecFN.scala 221:24:freechips.rocketchip.system.DefaultRV32Config.fir@141867.4]
  assign CDom_mainSig = _T_20[49:21]; // @[MulAddRecFN.scala 221:56:freechips.rocketchip.system.DefaultRV32Config.fir@141868.4]
  wire [8:0] _T_46; // @[primitives.scala 77:58:freechips.rocketchip.system.DefaultRV32Config.fir@141902.4]
  assign _T_46 = $signed(-9'sh100) >>> _T_45; // @[primitives.scala 77:58:freechips.rocketchip.system.DefaultRV32Config.fir@141902.4]
  wire [6:0] _GEN_2; // @[MulAddRecFN.scala 224:72:freechips.rocketchip.system.DefaultRV32Config.fir@141919.4]
  assign _GEN_2 = {{1'd0}, _T_62}; // @[MulAddRecFN.scala 224:72:freechips.rocketchip.system.DefaultRV32Config.fir@141919.4]
  wire [6:0] _T_63; // @[MulAddRecFN.scala 224:72:freechips.rocketchip.system.DefaultRV32Config.fir@141919.4]
  wire [6:0] _T_43; // @[primitives.scala 125:20:freechips.rocketchip.system.DefaultRV32Config.fir@141899.4]
  wire [26:0] _T_22; // @[MulAddRecFN.scala 224:53:freechips.rocketchip.system.DefaultRV32Config.fir@141870.4]
  assign _T_22 = {_T_21, 3'h0}; // @[MulAddRecFN.scala 224:53:freechips.rocketchip.system.DefaultRV32Config.fir@141870.4]
  assign _T_43 = {_T_37,_T_35,_T_33,_T_31,_T_29,_T_27,_T_25}; // @[primitives.scala 125:20:freechips.rocketchip.system.DefaultRV32Config.fir@141899.4]
  assign _T_63 = _T_43 & _GEN_2; // @[MulAddRecFN.scala 224:72:freechips.rocketchip.system.DefaultRV32Config.fir@141919.4]
  assign CDom_reduced4SigExtra = _T_63 != 7'h0; // @[MulAddRecFN.scala 225:73:freechips.rocketchip.system.DefaultRV32Config.fir@141920.4]
  assign CDom_sig = {_T_64,_T_68}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@141926.4]
  assign notCDom_signSigSum = sigSum[51]; // @[MulAddRecFN.scala 234:36:freechips.rocketchip.system.DefaultRV32Config.fir@141927.4]
  assign notCDom_absSigSum = notCDom_signSigSum ? _T_70 : _T_73; // @[MulAddRecFN.scala 236:12:freechips.rocketchip.system.DefaultRV32Config.fir@141933.4]
  assign notCDom_reduced2AbsSigSum = {_T_125,_T_124,_T_122,_T_120,_T_118,_T_116,_T_114,_T_143,_T_138}; // @[primitives.scala 108:20:freechips.rocketchip.system.DefaultRV32Config.fir@142038.4]
  assign notCDom_normDistReduced2 = _T_176 ? 5'h0 : _T_200; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@142089.4]
  assign notCDom_nearNormDist = {notCDom_normDistReduced2, 1'h0}; // @[MulAddRecFN.scala 242:56:freechips.rocketchip.system.DefaultRV32Config.fir@142090.4]
  assign notCDom_sExp = $signed(_T_203); // @[MulAddRecFN.scala 243:46:freechips.rocketchip.system.DefaultRV32Config.fir@142094.4]
  wire [113:0] _T_204; // @[MulAddRecFN.scala 245:27:freechips.rocketchip.system.DefaultRV32Config.fir@142095.4]
  assign _T_204 = _GEN_5 << notCDom_nearNormDist; // @[MulAddRecFN.scala 245:27:freechips.rocketchip.system.DefaultRV32Config.fir@142095.4]
  assign notCDom_mainSig = _T_204[51:23]; // @[MulAddRecFN.scala 245:50:freechips.rocketchip.system.DefaultRV32Config.fir@142096.4]
  wire [6:0] _T_227; // @[primitives.scala 108:20:freechips.rocketchip.system.DefaultRV32Config.fir@142127.4]
  assign _T_227 = {_T_220,_T_219,_T_217,_T_215,_T_213,_T_211,_T_209}; // @[primitives.scala 108:20:freechips.rocketchip.system.DefaultRV32Config.fir@142127.4]
  wire [16:0] _T_230; // @[primitives.scala 77:58:freechips.rocketchip.system.DefaultRV32Config.fir@142130.4]
  assign _T_230 = $signed(-17'sh10000) >>> _T_229; // @[primitives.scala 77:58:freechips.rocketchip.system.DefaultRV32Config.fir@142130.4]
  wire [6:0] _GEN_6; // @[MulAddRecFN.scala 249:78:freechips.rocketchip.system.DefaultRV32Config.fir@142147.4]
  assign _GEN_6 = {{1'd0}, _T_246}; // @[MulAddRecFN.scala 249:78:freechips.rocketchip.system.DefaultRV32Config.fir@142147.4]
  assign notCDom_reduced4SigExtra = _T_247 != 7'h0; // @[MulAddRecFN.scala 251:11:freechips.rocketchip.system.DefaultRV32Config.fir@142148.4]
  assign notCDom_sig = {_T_248,_T_251}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@142153.4]
  assign notCDom_completeCancellation = _T_252 == 2'h0; // @[MulAddRecFN.scala 257:50:freechips.rocketchip.system.DefaultRV32Config.fir@142155.4]
  assign notCDom_sign = notCDom_completeCancellation ? roundingMode_min : _T_253; // @[MulAddRecFN.scala 259:12:freechips.rocketchip.system.DefaultRV32Config.fir@142157.4]
  assign notNaN_isInfProd = io_fromPreMul_isInfA | io_fromPreMul_isInfB; // @[MulAddRecFN.scala 266:49:freechips.rocketchip.system.DefaultRV32Config.fir@142158.4]
  assign notNaN_isInfOut = notNaN_isInfProd | io_fromPreMul_isInfC; // @[MulAddRecFN.scala 267:44:freechips.rocketchip.system.DefaultRV32Config.fir@142159.4]
  assign notNaN_addZeros = _T_254 & io_fromPreMul_isZeroC; // @[MulAddRecFN.scala 269:58:freechips.rocketchip.system.DefaultRV32Config.fir@142161.4]
  assign io_invalidExc = _T_258 | _T_263; // @[MulAddRecFN.scala 272:19:freechips.rocketchip.system.DefaultRV32Config.fir@142172.4]
  assign io_rawOut_isNaN = io_fromPreMul_isNaNAOrB | io_fromPreMul_isNaNC; // @[MulAddRecFN.scala 280:21:freechips.rocketchip.system.DefaultRV32Config.fir@142174.4]
  assign io_rawOut_isInf = notNaN_isInfProd | io_fromPreMul_isInfC; // @[MulAddRecFN.scala 281:21:freechips.rocketchip.system.DefaultRV32Config.fir@142175.4]
  assign io_rawOut_isZero = notNaN_addZeros | _T_267; // @[MulAddRecFN.scala 283:22:freechips.rocketchip.system.DefaultRV32Config.fir@142179.4]
  wire  _T_284; // @[MulAddRecFN.scala 294:17:freechips.rocketchip.system.DefaultRV32Config.fir@142195.4]
  assign _T_284 = io_fromPreMul_CIsDominant ? CDom_sign : notCDom_sign; // @[MulAddRecFN.scala 294:17:freechips.rocketchip.system.DefaultRV32Config.fir@142195.4]
  assign io_rawOut_sign = _T_280 | _T_285; // @[MulAddRecFN.scala 286:20:freechips.rocketchip.system.DefaultRV32Config.fir@142198.4]
  assign io_rawOut_sExp = io_fromPreMul_CIsDominant ? $signed(CDom_sExp) : $signed(notCDom_sExp); // @[MulAddRecFN.scala 295:20:freechips.rocketchip.system.DefaultRV32Config.fir@142200.4]
  assign io_rawOut_sig = io_fromPreMul_CIsDominant ? CDom_sig : notCDom_sig; // @[MulAddRecFN.scala 296:19:freechips.rocketchip.system.DefaultRV32Config.fir@142202.4]

`endif // MY_ASSIGNMENT

  assign _T = io_mulAddResult[48]; // @[MulAddRecFN.scala 194:32:freechips.rocketchip.system.DefaultRV32Config.fir@141843.4]
  assign _T_2 = io_fromPreMul_highAlignedSigC + 26'h1; // @[MulAddRecFN.scala 195:47:freechips.rocketchip.system.DefaultRV32Config.fir@141845.4]
  assign _T_4 = io_mulAddResult[47:0]; // @[MulAddRecFN.scala 198:28:freechips.rocketchip.system.DefaultRV32Config.fir@141847.4]
  assign _T_9 = sigSum[74:25]; // @[MulAddRecFN.scala 208:20:freechips.rocketchip.system.DefaultRV32Config.fir@141854.4]
  assign _T_10 = ~ _T_9; // @[MulAddRecFN.scala 208:13:freechips.rocketchip.system.DefaultRV32Config.fir@141855.4]
  assign _T_11 = io_fromPreMul_highAlignedSigC[25:24]; // @[MulAddRecFN.scala 211:46:freechips.rocketchip.system.DefaultRV32Config.fir@141856.4]
  assign _T_12 = sigSum[72:26]; // @[MulAddRecFN.scala 212:23:freechips.rocketchip.system.DefaultRV32Config.fir@141857.4]
  assign _T_14 = {1'h0,_T_11,_T_12}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@141859.4]
  assign _T_15 = sigSum[24:1]; // @[MulAddRecFN.scala 217:21:freechips.rocketchip.system.DefaultRV32Config.fir@141861.4]
  assign _T_16 = ~ _T_15; // @[MulAddRecFN.scala 217:14:freechips.rocketchip.system.DefaultRV32Config.fir@141862.4]
  assign _T_17 = _T_16 != 24'h0; // @[MulAddRecFN.scala 217:36:freechips.rocketchip.system.DefaultRV32Config.fir@141863.4]
  assign _T_18 = sigSum[25:1]; // @[MulAddRecFN.scala 218:19:freechips.rocketchip.system.DefaultRV32Config.fir@141864.4]
  assign _T_19 = _T_18 != 25'h0; // @[MulAddRecFN.scala 218:37:freechips.rocketchip.system.DefaultRV32Config.fir@141865.4]
  assign _GEN_1 = {{31'd0}, CDom_absSigSum}; // @[MulAddRecFN.scala 221:24:freechips.rocketchip.system.DefaultRV32Config.fir@141867.4]
  assign _T_21 = CDom_absSigSum[23:0]; // @[MulAddRecFN.scala 224:36:freechips.rocketchip.system.DefaultRV32Config.fir@141869.4]
  assign _T_24 = _T_22[3:0]; // @[primitives.scala 121:33:freechips.rocketchip.system.DefaultRV32Config.fir@141873.4]
  assign _T_25 = _T_24 != 4'h0; // @[primitives.scala 121:54:freechips.rocketchip.system.DefaultRV32Config.fir@141874.4]
  assign _T_26 = _T_22[7:4]; // @[primitives.scala 121:33:freechips.rocketchip.system.DefaultRV32Config.fir@141876.4]
  assign _T_27 = _T_26 != 4'h0; // @[primitives.scala 121:54:freechips.rocketchip.system.DefaultRV32Config.fir@141877.4]
  assign _T_28 = _T_22[11:8]; // @[primitives.scala 121:33:freechips.rocketchip.system.DefaultRV32Config.fir@141879.4]
  assign _T_29 = _T_28 != 4'h0; // @[primitives.scala 121:54:freechips.rocketchip.system.DefaultRV32Config.fir@141880.4]
  assign _T_30 = _T_22[15:12]; // @[primitives.scala 121:33:freechips.rocketchip.system.DefaultRV32Config.fir@141882.4]
  assign _T_31 = _T_30 != 4'h0; // @[primitives.scala 121:54:freechips.rocketchip.system.DefaultRV32Config.fir@141883.4]
  assign _T_32 = _T_22[19:16]; // @[primitives.scala 121:33:freechips.rocketchip.system.DefaultRV32Config.fir@141885.4]
  assign _T_33 = _T_32 != 4'h0; // @[primitives.scala 121:54:freechips.rocketchip.system.DefaultRV32Config.fir@141886.4]
  assign _T_34 = _T_22[23:20]; // @[primitives.scala 121:33:freechips.rocketchip.system.DefaultRV32Config.fir@141888.4]
  assign _T_35 = _T_34 != 4'h0; // @[primitives.scala 121:54:freechips.rocketchip.system.DefaultRV32Config.fir@141889.4]
  assign _T_36 = _T_22[26:24]; // @[primitives.scala 124:15:freechips.rocketchip.system.DefaultRV32Config.fir@141891.4]
  assign _T_37 = _T_36 != 3'h0; // @[primitives.scala 124:57:freechips.rocketchip.system.DefaultRV32Config.fir@141892.4]
  assign _T_44 = io_fromPreMul_CDom_CAlignDist[4:2]; // @[MulAddRecFN.scala 225:51:freechips.rocketchip.system.DefaultRV32Config.fir@141900.4]
  assign _T_45 = ~ _T_44; // @[primitives.scala 51:21:freechips.rocketchip.system.DefaultRV32Config.fir@141901.4]
  assign _T_47 = _T_46[6:1]; // @[primitives.scala 79:22:freechips.rocketchip.system.DefaultRV32Config.fir@141903.4]
  assign _T_48 = _T_47[3:0]; // @[Bitwise.scala 108:18:freechips.rocketchip.system.DefaultRV32Config.fir@141904.4]
  assign _T_49 = _T_48[1:0]; // @[Bitwise.scala 108:18:freechips.rocketchip.system.DefaultRV32Config.fir@141905.4]
  assign _T_50 = _T_49[0]; // @[Bitwise.scala 108:18:freechips.rocketchip.system.DefaultRV32Config.fir@141906.4]
  assign _T_51 = _T_49[1]; // @[Bitwise.scala 108:44:freechips.rocketchip.system.DefaultRV32Config.fir@141907.4]
  assign _T_53 = _T_48[3:2]; // @[Bitwise.scala 108:44:freechips.rocketchip.system.DefaultRV32Config.fir@141909.4]
  assign _T_54 = _T_53[0]; // @[Bitwise.scala 108:18:freechips.rocketchip.system.DefaultRV32Config.fir@141910.4]
  assign _T_55 = _T_53[1]; // @[Bitwise.scala 108:44:freechips.rocketchip.system.DefaultRV32Config.fir@141911.4]
  assign _T_58 = _T_47[5:4]; // @[Bitwise.scala 108:44:freechips.rocketchip.system.DefaultRV32Config.fir@141914.4]
  assign _T_59 = _T_58[0]; // @[Bitwise.scala 108:18:freechips.rocketchip.system.DefaultRV32Config.fir@141915.4]
  assign _T_60 = _T_58[1]; // @[Bitwise.scala 108:44:freechips.rocketchip.system.DefaultRV32Config.fir@141916.4]
  assign _T_62 = {_T_50,_T_51,_T_54,_T_55,_T_59,_T_60}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@141918.4]
  assign _T_64 = CDom_mainSig[28:3]; // @[MulAddRecFN.scala 227:25:freechips.rocketchip.system.DefaultRV32Config.fir@141921.4]
  assign _T_65 = CDom_mainSig[2:0]; // @[MulAddRecFN.scala 228:25:freechips.rocketchip.system.DefaultRV32Config.fir@141922.4]
  assign _T_66 = _T_65 != 3'h0; // @[MulAddRecFN.scala 228:32:freechips.rocketchip.system.DefaultRV32Config.fir@141923.4]
  assign _T_67 = _T_66 | CDom_reduced4SigExtra; // @[MulAddRecFN.scala 228:36:freechips.rocketchip.system.DefaultRV32Config.fir@141924.4]
  assign _T_68 = _T_67 | CDom_absSigSumExtra; // @[MulAddRecFN.scala 228:61:freechips.rocketchip.system.DefaultRV32Config.fir@141925.4]
  assign _T_69 = sigSum[50:0]; // @[MulAddRecFN.scala 237:20:freechips.rocketchip.system.DefaultRV32Config.fir@141928.4]
  assign _T_70 = ~ _T_69; // @[MulAddRecFN.scala 237:13:freechips.rocketchip.system.DefaultRV32Config.fir@141929.4]
  assign _GEN_3 = {{50'd0}, io_fromPreMul_doSubMags}; // @[MulAddRecFN.scala 238:41:freechips.rocketchip.system.DefaultRV32Config.fir@141931.4]
  assign _T_73 = _T_69 + _GEN_3; // @[MulAddRecFN.scala 238:41:freechips.rocketchip.system.DefaultRV32Config.fir@141932.4]
  assign _T_75 = notCDom_absSigSum[1:0]; // @[primitives.scala 104:33:freechips.rocketchip.system.DefaultRV32Config.fir@141936.4]
  assign _T_76 = _T_75 != 2'h0; // @[primitives.scala 104:54:freechips.rocketchip.system.DefaultRV32Config.fir@141937.4]
  assign _T_77 = notCDom_absSigSum[3:2]; // @[primitives.scala 104:33:freechips.rocketchip.system.DefaultRV32Config.fir@141939.4]
  assign _T_78 = _T_77 != 2'h0; // @[primitives.scala 104:54:freechips.rocketchip.system.DefaultRV32Config.fir@141940.4]
  assign _T_79 = notCDom_absSigSum[5:4]; // @[primitives.scala 104:33:freechips.rocketchip.system.DefaultRV32Config.fir@141942.4]
  assign _T_80 = _T_79 != 2'h0; // @[primitives.scala 104:54:freechips.rocketchip.system.DefaultRV32Config.fir@141943.4]
  assign _T_81 = notCDom_absSigSum[7:6]; // @[primitives.scala 104:33:freechips.rocketchip.system.DefaultRV32Config.fir@141945.4]
  assign _T_82 = _T_81 != 2'h0; // @[primitives.scala 104:54:freechips.rocketchip.system.DefaultRV32Config.fir@141946.4]
  assign _T_83 = notCDom_absSigSum[9:8]; // @[primitives.scala 104:33:freechips.rocketchip.system.DefaultRV32Config.fir@141948.4]
  assign _T_84 = _T_83 != 2'h0; // @[primitives.scala 104:54:freechips.rocketchip.system.DefaultRV32Config.fir@141949.4]
  assign _T_85 = notCDom_absSigSum[11:10]; // @[primitives.scala 104:33:freechips.rocketchip.system.DefaultRV32Config.fir@141951.4]
  assign _T_86 = _T_85 != 2'h0; // @[primitives.scala 104:54:freechips.rocketchip.system.DefaultRV32Config.fir@141952.4]
  assign _T_87 = notCDom_absSigSum[13:12]; // @[primitives.scala 104:33:freechips.rocketchip.system.DefaultRV32Config.fir@141954.4]
  assign _T_88 = _T_87 != 2'h0; // @[primitives.scala 104:54:freechips.rocketchip.system.DefaultRV32Config.fir@141955.4]
  assign _T_89 = notCDom_absSigSum[15:14]; // @[primitives.scala 104:33:freechips.rocketchip.system.DefaultRV32Config.fir@141957.4]
  assign _T_90 = _T_89 != 2'h0; // @[primitives.scala 104:54:freechips.rocketchip.system.DefaultRV32Config.fir@141958.4]
  assign _T_91 = notCDom_absSigSum[17:16]; // @[primitives.scala 104:33:freechips.rocketchip.system.DefaultRV32Config.fir@141960.4]
  assign _T_92 = _T_91 != 2'h0; // @[primitives.scala 104:54:freechips.rocketchip.system.DefaultRV32Config.fir@141961.4]
  assign _T_93 = notCDom_absSigSum[19:18]; // @[primitives.scala 104:33:freechips.rocketchip.system.DefaultRV32Config.fir@141963.4]
  assign _T_94 = _T_93 != 2'h0; // @[primitives.scala 104:54:freechips.rocketchip.system.DefaultRV32Config.fir@141964.4]
  assign _T_95 = notCDom_absSigSum[21:20]; // @[primitives.scala 104:33:freechips.rocketchip.system.DefaultRV32Config.fir@141966.4]
  assign _T_96 = _T_95 != 2'h0; // @[primitives.scala 104:54:freechips.rocketchip.system.DefaultRV32Config.fir@141967.4]
  assign _T_97 = notCDom_absSigSum[23:22]; // @[primitives.scala 104:33:freechips.rocketchip.system.DefaultRV32Config.fir@141969.4]
  assign _T_98 = _T_97 != 2'h0; // @[primitives.scala 104:54:freechips.rocketchip.system.DefaultRV32Config.fir@141970.4]
  assign _T_99 = notCDom_absSigSum[25:24]; // @[primitives.scala 104:33:freechips.rocketchip.system.DefaultRV32Config.fir@141972.4]
  assign _T_100 = _T_99 != 2'h0; // @[primitives.scala 104:54:freechips.rocketchip.system.DefaultRV32Config.fir@141973.4]
  assign _T_101 = notCDom_absSigSum[27:26]; // @[primitives.scala 104:33:freechips.rocketchip.system.DefaultRV32Config.fir@141975.4]
  assign _T_102 = _T_101 != 2'h0; // @[primitives.scala 104:54:freechips.rocketchip.system.DefaultRV32Config.fir@141976.4]
  assign _T_103 = notCDom_absSigSum[29:28]; // @[primitives.scala 104:33:freechips.rocketchip.system.DefaultRV32Config.fir@141978.4]
  assign _T_104 = _T_103 != 2'h0; // @[primitives.scala 104:54:freechips.rocketchip.system.DefaultRV32Config.fir@141979.4]
  assign _T_105 = notCDom_absSigSum[31:30]; // @[primitives.scala 104:33:freechips.rocketchip.system.DefaultRV32Config.fir@141981.4]
  assign _T_106 = _T_105 != 2'h0; // @[primitives.scala 104:54:freechips.rocketchip.system.DefaultRV32Config.fir@141982.4]
  assign _T_107 = notCDom_absSigSum[33:32]; // @[primitives.scala 104:33:freechips.rocketchip.system.DefaultRV32Config.fir@141984.4]
  assign _T_108 = _T_107 != 2'h0; // @[primitives.scala 104:54:freechips.rocketchip.system.DefaultRV32Config.fir@141985.4]
  assign _T_109 = notCDom_absSigSum[35:34]; // @[primitives.scala 104:33:freechips.rocketchip.system.DefaultRV32Config.fir@141987.4]
  assign _T_110 = _T_109 != 2'h0; // @[primitives.scala 104:54:freechips.rocketchip.system.DefaultRV32Config.fir@141988.4]
  assign _T_111 = notCDom_absSigSum[37:36]; // @[primitives.scala 104:33:freechips.rocketchip.system.DefaultRV32Config.fir@141990.4]
  assign _T_112 = _T_111 != 2'h0; // @[primitives.scala 104:54:freechips.rocketchip.system.DefaultRV32Config.fir@141991.4]
  assign _T_113 = notCDom_absSigSum[39:38]; // @[primitives.scala 104:33:freechips.rocketchip.system.DefaultRV32Config.fir@141993.4]
  assign _T_114 = _T_113 != 2'h0; // @[primitives.scala 104:54:freechips.rocketchip.system.DefaultRV32Config.fir@141994.4]
  assign _T_115 = notCDom_absSigSum[41:40]; // @[primitives.scala 104:33:freechips.rocketchip.system.DefaultRV32Config.fir@141996.4]
  assign _T_116 = _T_115 != 2'h0; // @[primitives.scala 104:54:freechips.rocketchip.system.DefaultRV32Config.fir@141997.4]
  assign _T_117 = notCDom_absSigSum[43:42]; // @[primitives.scala 104:33:freechips.rocketchip.system.DefaultRV32Config.fir@141999.4]
  assign _T_118 = _T_117 != 2'h0; // @[primitives.scala 104:54:freechips.rocketchip.system.DefaultRV32Config.fir@142000.4]
  assign _T_119 = notCDom_absSigSum[45:44]; // @[primitives.scala 104:33:freechips.rocketchip.system.DefaultRV32Config.fir@142002.4]
  assign _T_120 = _T_119 != 2'h0; // @[primitives.scala 104:54:freechips.rocketchip.system.DefaultRV32Config.fir@142003.4]
  assign _T_121 = notCDom_absSigSum[47:46]; // @[primitives.scala 104:33:freechips.rocketchip.system.DefaultRV32Config.fir@142005.4]
  assign _T_122 = _T_121 != 2'h0; // @[primitives.scala 104:54:freechips.rocketchip.system.DefaultRV32Config.fir@142006.4]
  assign _T_123 = notCDom_absSigSum[49:48]; // @[primitives.scala 104:33:freechips.rocketchip.system.DefaultRV32Config.fir@142008.4]
  assign _T_124 = _T_123 != 2'h0; // @[primitives.scala 104:54:freechips.rocketchip.system.DefaultRV32Config.fir@142009.4]
  assign _T_125 = notCDom_absSigSum[50]; // @[primitives.scala 107:15:freechips.rocketchip.system.DefaultRV32Config.fir@142011.4]
  assign _T_131 = {_T_86,_T_84,_T_82,_T_80,_T_78,_T_76}; // @[primitives.scala 108:20:freechips.rocketchip.system.DefaultRV32Config.fir@142018.4]
  assign _T_138 = {_T_100,_T_98,_T_96,_T_94,_T_92,_T_90,_T_88,_T_131}; // @[primitives.scala 108:20:freechips.rocketchip.system.DefaultRV32Config.fir@142025.4]
  assign _T_143 = {_T_112,_T_110,_T_108,_T_106,_T_104,_T_102}; // @[primitives.scala 108:20:freechips.rocketchip.system.DefaultRV32Config.fir@142030.4]
  assign _T_152 = notCDom_reduced2AbsSigSum[1]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@142040.4]
  assign _T_153 = notCDom_reduced2AbsSigSum[2]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@142041.4]
  assign _T_154 = notCDom_reduced2AbsSigSum[3]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@142042.4]
  assign _T_155 = notCDom_reduced2AbsSigSum[4]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@142043.4]
  assign _T_156 = notCDom_reduced2AbsSigSum[5]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@142044.4]
  assign _T_157 = notCDom_reduced2AbsSigSum[6]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@142045.4]
  assign _T_158 = notCDom_reduced2AbsSigSum[7]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@142046.4]
  assign _T_159 = notCDom_reduced2AbsSigSum[8]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@142047.4]
  assign _T_160 = notCDom_reduced2AbsSigSum[9]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@142048.4]
  assign _T_161 = notCDom_reduced2AbsSigSum[10]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@142049.4]
  assign _T_162 = notCDom_reduced2AbsSigSum[11]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@142050.4]
  assign _T_163 = notCDom_reduced2AbsSigSum[12]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@142051.4]
  assign _T_164 = notCDom_reduced2AbsSigSum[13]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@142052.4]
  assign _T_165 = notCDom_reduced2AbsSigSum[14]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@142053.4]
  assign _T_166 = notCDom_reduced2AbsSigSum[15]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@142054.4]
  assign _T_167 = notCDom_reduced2AbsSigSum[16]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@142055.4]
  assign _T_168 = notCDom_reduced2AbsSigSum[17]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@142056.4]
  assign _T_169 = notCDom_reduced2AbsSigSum[18]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@142057.4]
  assign _T_170 = notCDom_reduced2AbsSigSum[19]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@142058.4]
  assign _T_171 = notCDom_reduced2AbsSigSum[20]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@142059.4]
  assign _T_172 = notCDom_reduced2AbsSigSum[21]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@142060.4]
  assign _T_173 = notCDom_reduced2AbsSigSum[22]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@142061.4]
  assign _T_174 = notCDom_reduced2AbsSigSum[23]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@142062.4]
  assign _T_175 = notCDom_reduced2AbsSigSum[24]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@142063.4]
  assign _T_176 = notCDom_reduced2AbsSigSum[25]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@142064.4]
  assign _T_177 = _T_152 ? 5'h18 : 5'h19; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@142065.4]
  assign _T_178 = _T_153 ? 5'h17 : _T_177; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@142066.4]
  assign _T_179 = _T_154 ? 5'h16 : _T_178; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@142067.4]
  assign _T_180 = _T_155 ? 5'h15 : _T_179; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@142068.4]
  assign _T_181 = _T_156 ? 5'h14 : _T_180; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@142069.4]
  assign _T_182 = _T_157 ? 5'h13 : _T_181; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@142070.4]
  assign _T_183 = _T_158 ? 5'h12 : _T_182; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@142071.4]
  assign _T_184 = _T_159 ? 5'h11 : _T_183; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@142072.4]
  assign _T_185 = _T_160 ? 5'h10 : _T_184; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@142073.4]
  assign _T_186 = _T_161 ? 5'hf : _T_185; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@142074.4]
  assign _T_187 = _T_162 ? 5'he : _T_186; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@142075.4]
  assign _T_188 = _T_163 ? 5'hd : _T_187; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@142076.4]
  assign _T_189 = _T_164 ? 5'hc : _T_188; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@142077.4]
  assign _T_190 = _T_165 ? 5'hb : _T_189; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@142078.4]
  assign _T_191 = _T_166 ? 5'ha : _T_190; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@142079.4]
  assign _T_192 = _T_167 ? 5'h9 : _T_191; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@142080.4]
  assign _T_193 = _T_168 ? 5'h8 : _T_192; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@142081.4]
  assign _T_194 = _T_169 ? 5'h7 : _T_193; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@142082.4]
  assign _T_195 = _T_170 ? 5'h6 : _T_194; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@142083.4]
  assign _T_196 = _T_171 ? 5'h5 : _T_195; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@142084.4]
  assign _T_197 = _T_172 ? 5'h4 : _T_196; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@142085.4]
  assign _T_198 = _T_173 ? 5'h3 : _T_197; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@142086.4]
  assign _T_199 = _T_174 ? 5'h2 : _T_198; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@142087.4]
  assign _T_200 = _T_175 ? 5'h1 : _T_199; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@142088.4]
  assign _T_201 = {1'b0,$signed(notCDom_nearNormDist)}; // @[MulAddRecFN.scala 243:69:freechips.rocketchip.system.DefaultRV32Config.fir@142091.4]
  assign _GEN_4 = {{3{_T_201[6]}},_T_201}; // @[MulAddRecFN.scala 243:46:freechips.rocketchip.system.DefaultRV32Config.fir@142092.4]
  assign _T_203 = $signed(io_fromPreMul_sExpSum) - $signed(_GEN_4); // @[MulAddRecFN.scala 243:46:freechips.rocketchip.system.DefaultRV32Config.fir@142093.4]
  assign _GEN_5 = {{63'd0}, notCDom_absSigSum}; // @[MulAddRecFN.scala 245:27:freechips.rocketchip.system.DefaultRV32Config.fir@142095.4]
  assign _T_205 = notCDom_reduced2AbsSigSum[12:0]; // @[MulAddRecFN.scala 249:39:freechips.rocketchip.system.DefaultRV32Config.fir@142097.4]
  assign _T_208 = _T_205[1:0]; // @[primitives.scala 104:33:freechips.rocketchip.system.DefaultRV32Config.fir@142101.4]
  assign _T_209 = _T_208 != 2'h0; // @[primitives.scala 104:54:freechips.rocketchip.system.DefaultRV32Config.fir@142102.4]
  assign _T_210 = _T_205[3:2]; // @[primitives.scala 104:33:freechips.rocketchip.system.DefaultRV32Config.fir@142104.4]
  assign _T_211 = _T_210 != 2'h0; // @[primitives.scala 104:54:freechips.rocketchip.system.DefaultRV32Config.fir@142105.4]
  assign _T_212 = _T_205[5:4]; // @[primitives.scala 104:33:freechips.rocketchip.system.DefaultRV32Config.fir@142107.4]
  assign _T_213 = _T_212 != 2'h0; // @[primitives.scala 104:54:freechips.rocketchip.system.DefaultRV32Config.fir@142108.4]
  assign _T_214 = _T_205[7:6]; // @[primitives.scala 104:33:freechips.rocketchip.system.DefaultRV32Config.fir@142110.4]
  assign _T_215 = _T_214 != 2'h0; // @[primitives.scala 104:54:freechips.rocketchip.system.DefaultRV32Config.fir@142111.4]
  assign _T_216 = _T_205[9:8]; // @[primitives.scala 104:33:freechips.rocketchip.system.DefaultRV32Config.fir@142113.4]
  assign _T_217 = _T_216 != 2'h0; // @[primitives.scala 104:54:freechips.rocketchip.system.DefaultRV32Config.fir@142114.4]
  assign _T_218 = _T_205[11:10]; // @[primitives.scala 104:33:freechips.rocketchip.system.DefaultRV32Config.fir@142116.4]
  assign _T_219 = _T_218 != 2'h0; // @[primitives.scala 104:54:freechips.rocketchip.system.DefaultRV32Config.fir@142117.4]
  assign _T_220 = _T_205[12]; // @[primitives.scala 107:15:freechips.rocketchip.system.DefaultRV32Config.fir@142119.4]
  assign _T_228 = notCDom_normDistReduced2[4:1]; // @[MulAddRecFN.scala 250:46:freechips.rocketchip.system.DefaultRV32Config.fir@142128.4]
  assign _T_229 = ~ _T_228; // @[primitives.scala 51:21:freechips.rocketchip.system.DefaultRV32Config.fir@142129.4]
  assign _T_231 = _T_230[6:1]; // @[primitives.scala 79:22:freechips.rocketchip.system.DefaultRV32Config.fir@142131.4]
  assign _T_232 = _T_231[3:0]; // @[Bitwise.scala 108:18:freechips.rocketchip.system.DefaultRV32Config.fir@142132.4]
  assign _T_233 = _T_232[1:0]; // @[Bitwise.scala 108:18:freechips.rocketchip.system.DefaultRV32Config.fir@142133.4]
  assign _T_234 = _T_233[0]; // @[Bitwise.scala 108:18:freechips.rocketchip.system.DefaultRV32Config.fir@142134.4]
  assign _T_235 = _T_233[1]; // @[Bitwise.scala 108:44:freechips.rocketchip.system.DefaultRV32Config.fir@142135.4]
  assign _T_237 = _T_232[3:2]; // @[Bitwise.scala 108:44:freechips.rocketchip.system.DefaultRV32Config.fir@142137.4]
  assign _T_238 = _T_237[0]; // @[Bitwise.scala 108:18:freechips.rocketchip.system.DefaultRV32Config.fir@142138.4]
  assign _T_239 = _T_237[1]; // @[Bitwise.scala 108:44:freechips.rocketchip.system.DefaultRV32Config.fir@142139.4]
  assign _T_242 = _T_231[5:4]; // @[Bitwise.scala 108:44:freechips.rocketchip.system.DefaultRV32Config.fir@142142.4]
  assign _T_243 = _T_242[0]; // @[Bitwise.scala 108:18:freechips.rocketchip.system.DefaultRV32Config.fir@142143.4]
  assign _T_244 = _T_242[1]; // @[Bitwise.scala 108:44:freechips.rocketchip.system.DefaultRV32Config.fir@142144.4]
  assign _T_246 = {_T_234,_T_235,_T_238,_T_239,_T_243,_T_244}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@142146.4]
  assign _T_247 = _T_227 & _GEN_6; // @[MulAddRecFN.scala 249:78:freechips.rocketchip.system.DefaultRV32Config.fir@142147.4]
  assign _T_248 = notCDom_mainSig[28:3]; // @[MulAddRecFN.scala 253:28:freechips.rocketchip.system.DefaultRV32Config.fir@142149.4]
  assign _T_249 = notCDom_mainSig[2:0]; // @[MulAddRecFN.scala 254:28:freechips.rocketchip.system.DefaultRV32Config.fir@142150.4]
  assign _T_250 = _T_249 != 3'h0; // @[MulAddRecFN.scala 254:35:freechips.rocketchip.system.DefaultRV32Config.fir@142151.4]
  assign _T_251 = _T_250 | notCDom_reduced4SigExtra; // @[MulAddRecFN.scala 254:39:freechips.rocketchip.system.DefaultRV32Config.fir@142152.4]
  assign _T_252 = notCDom_sig[26:25]; // @[MulAddRecFN.scala 257:21:freechips.rocketchip.system.DefaultRV32Config.fir@142154.4]
  assign _T_253 = io_fromPreMul_signProd ^ notCDom_signSigSum; // @[MulAddRecFN.scala 261:36:freechips.rocketchip.system.DefaultRV32Config.fir@142156.4]
  assign _T_254 = io_fromPreMul_isZeroA | io_fromPreMul_isZeroB; // @[MulAddRecFN.scala 269:32:freechips.rocketchip.system.DefaultRV32Config.fir@142160.4]
  assign _T_255 = io_fromPreMul_isInfA & io_fromPreMul_isZeroB; // @[MulAddRecFN.scala 274:31:freechips.rocketchip.system.DefaultRV32Config.fir@142162.4]
  assign _T_256 = io_fromPreMul_isSigNaNAny | _T_255; // @[MulAddRecFN.scala 273:35:freechips.rocketchip.system.DefaultRV32Config.fir@142163.4]
  assign _T_257 = io_fromPreMul_isZeroA & io_fromPreMul_isInfB; // @[MulAddRecFN.scala 275:32:freechips.rocketchip.system.DefaultRV32Config.fir@142164.4]
  assign _T_258 = _T_256 | _T_257; // @[MulAddRecFN.scala 274:57:freechips.rocketchip.system.DefaultRV32Config.fir@142165.4]
  assign _T_259 = io_fromPreMul_isNaNAOrB == 1'h0; // @[MulAddRecFN.scala 276:10:freechips.rocketchip.system.DefaultRV32Config.fir@142166.4]
  assign _T_261 = _T_259 & notNaN_isInfProd; // @[MulAddRecFN.scala 276:36:freechips.rocketchip.system.DefaultRV32Config.fir@142168.4]
  assign _T_262 = _T_261 & io_fromPreMul_isInfC; // @[MulAddRecFN.scala 277:61:freechips.rocketchip.system.DefaultRV32Config.fir@142169.4]
  assign _T_263 = _T_262 & io_fromPreMul_doSubMags; // @[MulAddRecFN.scala 278:35:freechips.rocketchip.system.DefaultRV32Config.fir@142170.4]
  assign _T_266 = io_fromPreMul_CIsDominant == 1'h0; // @[MulAddRecFN.scala 285:14:freechips.rocketchip.system.DefaultRV32Config.fir@142176.4]
  assign _T_267 = _T_266 & notCDom_completeCancellation; // @[MulAddRecFN.scala 285:42:freechips.rocketchip.system.DefaultRV32Config.fir@142177.4]
  assign _T_269 = notNaN_isInfProd & io_fromPreMul_signProd; // @[MulAddRecFN.scala 287:27:freechips.rocketchip.system.DefaultRV32Config.fir@142180.4]
  assign _T_270 = io_fromPreMul_isInfC & CDom_sign; // @[MulAddRecFN.scala 288:31:freechips.rocketchip.system.DefaultRV32Config.fir@142181.4]
  assign _T_271 = _T_269 | _T_270; // @[MulAddRecFN.scala 287:54:freechips.rocketchip.system.DefaultRV32Config.fir@142182.4]
  assign _T_272 = roundingMode_min == 1'h0; // @[MulAddRecFN.scala 289:29:freechips.rocketchip.system.DefaultRV32Config.fir@142183.4]
  assign _T_273 = notNaN_addZeros & _T_272; // @[MulAddRecFN.scala 289:26:freechips.rocketchip.system.DefaultRV32Config.fir@142184.4]
  assign _T_274 = _T_273 & io_fromPreMul_signProd; // @[MulAddRecFN.scala 289:48:freechips.rocketchip.system.DefaultRV32Config.fir@142185.4]
  assign _T_275 = _T_274 & CDom_sign; // @[MulAddRecFN.scala 290:36:freechips.rocketchip.system.DefaultRV32Config.fir@142186.4]
  assign _T_276 = _T_271 | _T_275; // @[MulAddRecFN.scala 288:43:freechips.rocketchip.system.DefaultRV32Config.fir@142187.4]
  assign _T_277 = notNaN_addZeros & roundingMode_min; // @[MulAddRecFN.scala 291:26:freechips.rocketchip.system.DefaultRV32Config.fir@142188.4]
  assign _T_278 = io_fromPreMul_signProd | CDom_sign; // @[MulAddRecFN.scala 292:37:freechips.rocketchip.system.DefaultRV32Config.fir@142189.4]
  assign _T_279 = _T_277 & _T_278; // @[MulAddRecFN.scala 291:46:freechips.rocketchip.system.DefaultRV32Config.fir@142190.4]
  assign _T_280 = _T_276 | _T_279; // @[MulAddRecFN.scala 290:48:freechips.rocketchip.system.DefaultRV32Config.fir@142191.4]
  assign _T_281 = notNaN_isInfOut == 1'h0; // @[MulAddRecFN.scala 293:10:freechips.rocketchip.system.DefaultRV32Config.fir@142192.4]
  assign _T_282 = notNaN_addZeros == 1'h0; // @[MulAddRecFN.scala 293:31:freechips.rocketchip.system.DefaultRV32Config.fir@142193.4]
  assign _T_283 = _T_281 & _T_282; // @[MulAddRecFN.scala 293:28:freechips.rocketchip.system.DefaultRV32Config.fir@142194.4]
  assign _T_285 = _T_283 & _T_284; // @[MulAddRecFN.scala 293:49:freechips.rocketchip.system.DefaultRV32Config.fir@142196.4]
endmodule

