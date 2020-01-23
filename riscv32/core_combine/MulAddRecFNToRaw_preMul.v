`include "include_module.v"
`ifdef __MulAddRecFNToRaw_preMul
module MulAddRecFNToRaw_preMul(
  input  [1:0]  io_op,
  input  [32:0] io_a,
  input  [32:0] io_b,
  input  [32:0] io_c,
  output [23:0] io_mulAddA,
  output [23:0] io_mulAddB,
  output [47:0] io_mulAddC,
  output        io_toPostMul_isSigNaNAny,
  output        io_toPostMul_isNaNAOrB,
  output        io_toPostMul_isInfA,
  output        io_toPostMul_isZeroA,
  output        io_toPostMul_isInfB,
  output        io_toPostMul_isZeroB,
  output        io_toPostMul_signProd,
  output        io_toPostMul_isNaNC,
  output        io_toPostMul_isInfC,
  output        io_toPostMul_isZeroC,
  output [9:0]  io_toPostMul_sExpSum,
  output        io_toPostMul_doSubMags,
  output        io_toPostMul_CIsDominant,
  output [4:0]  io_toPostMul_CDom_CAlignDist,
  output [25:0] io_toPostMul_highAlignedSigC,
  output        io_toPostMul_bit0AlignedSigC
);
  wire [8:0] _T; // @[rawFloatFromRecFN.scala 50:21:freechips.rocketchip.system.DefaultRV32Config.fir@141628.4]
  wire [2:0] _T_1; // @[rawFloatFromRecFN.scala 51:29:freechips.rocketchip.system.DefaultRV32Config.fir@141629.4]
  wire  rawA_isZero; // @[rawFloatFromRecFN.scala 51:54:freechips.rocketchip.system.DefaultRV32Config.fir@141630.4]
  wire [1:0] _T_3; // @[rawFloatFromRecFN.scala 52:29:freechips.rocketchip.system.DefaultRV32Config.fir@141631.4]
  wire  _T_4; // @[rawFloatFromRecFN.scala 52:54:freechips.rocketchip.system.DefaultRV32Config.fir@141632.4]
  wire  _T_5; // @[rawFloatFromRecFN.scala 55:41:freechips.rocketchip.system.DefaultRV32Config.fir@141635.4]
  wire  rawA_isNaN; // @[rawFloatFromRecFN.scala 55:33:freechips.rocketchip.system.DefaultRV32Config.fir@141636.4]
  wire  _T_8; // @[rawFloatFromRecFN.scala 56:36:freechips.rocketchip.system.DefaultRV32Config.fir@141639.4]
  wire  rawA_sign; // @[rawFloatFromRecFN.scala 58:25:freechips.rocketchip.system.DefaultRV32Config.fir@141643.4]
  wire [9:0] rawA_sExp; // @[rawFloatFromRecFN.scala 59:27:freechips.rocketchip.system.DefaultRV32Config.fir@141645.4]
  wire  _T_12; // @[rawFloatFromRecFN.scala 60:39:freechips.rocketchip.system.DefaultRV32Config.fir@141647.4]
  wire [22:0] _T_13; // @[rawFloatFromRecFN.scala 60:51:freechips.rocketchip.system.DefaultRV32Config.fir@141648.4]
  wire [24:0] rawA_sig; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@141650.4]
  wire [8:0] _T_16; // @[rawFloatFromRecFN.scala 50:21:freechips.rocketchip.system.DefaultRV32Config.fir@141652.4]
  wire [2:0] _T_17; // @[rawFloatFromRecFN.scala 51:29:freechips.rocketchip.system.DefaultRV32Config.fir@141653.4]
  wire  rawB_isZero; // @[rawFloatFromRecFN.scala 51:54:freechips.rocketchip.system.DefaultRV32Config.fir@141654.4]
  wire [1:0] _T_19; // @[rawFloatFromRecFN.scala 52:29:freechips.rocketchip.system.DefaultRV32Config.fir@141655.4]
  wire  _T_20; // @[rawFloatFromRecFN.scala 52:54:freechips.rocketchip.system.DefaultRV32Config.fir@141656.4]
  wire  _T_21; // @[rawFloatFromRecFN.scala 55:41:freechips.rocketchip.system.DefaultRV32Config.fir@141659.4]
  wire  rawB_isNaN; // @[rawFloatFromRecFN.scala 55:33:freechips.rocketchip.system.DefaultRV32Config.fir@141660.4]
  wire  _T_24; // @[rawFloatFromRecFN.scala 56:36:freechips.rocketchip.system.DefaultRV32Config.fir@141663.4]
  wire  rawB_sign; // @[rawFloatFromRecFN.scala 58:25:freechips.rocketchip.system.DefaultRV32Config.fir@141667.4]
  wire [9:0] rawB_sExp; // @[rawFloatFromRecFN.scala 59:27:freechips.rocketchip.system.DefaultRV32Config.fir@141669.4]
  wire  _T_28; // @[rawFloatFromRecFN.scala 60:39:freechips.rocketchip.system.DefaultRV32Config.fir@141671.4]
  wire [22:0] _T_29; // @[rawFloatFromRecFN.scala 60:51:freechips.rocketchip.system.DefaultRV32Config.fir@141672.4]
  wire [24:0] rawB_sig; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@141674.4]
  wire [8:0] _T_32; // @[rawFloatFromRecFN.scala 50:21:freechips.rocketchip.system.DefaultRV32Config.fir@141676.4]
  wire [2:0] _T_33; // @[rawFloatFromRecFN.scala 51:29:freechips.rocketchip.system.DefaultRV32Config.fir@141677.4]
  wire  rawC_isZero; // @[rawFloatFromRecFN.scala 51:54:freechips.rocketchip.system.DefaultRV32Config.fir@141678.4]
  wire [1:0] _T_35; // @[rawFloatFromRecFN.scala 52:29:freechips.rocketchip.system.DefaultRV32Config.fir@141679.4]
  wire  _T_36; // @[rawFloatFromRecFN.scala 52:54:freechips.rocketchip.system.DefaultRV32Config.fir@141680.4]
  wire  _T_37; // @[rawFloatFromRecFN.scala 55:41:freechips.rocketchip.system.DefaultRV32Config.fir@141683.4]
  wire  rawC_isNaN; // @[rawFloatFromRecFN.scala 55:33:freechips.rocketchip.system.DefaultRV32Config.fir@141684.4]
  wire  _T_40; // @[rawFloatFromRecFN.scala 56:36:freechips.rocketchip.system.DefaultRV32Config.fir@141687.4]
  wire  rawC_sign; // @[rawFloatFromRecFN.scala 58:25:freechips.rocketchip.system.DefaultRV32Config.fir@141691.4]
  wire [9:0] rawC_sExp; // @[rawFloatFromRecFN.scala 59:27:freechips.rocketchip.system.DefaultRV32Config.fir@141693.4]
  wire  _T_44; // @[rawFloatFromRecFN.scala 60:39:freechips.rocketchip.system.DefaultRV32Config.fir@141695.4]
  wire [22:0] _T_45; // @[rawFloatFromRecFN.scala 60:51:freechips.rocketchip.system.DefaultRV32Config.fir@141696.4]
  wire [24:0] rawC_sig; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@141698.4]
  wire  _T_48; // @[MulAddRecFN.scala 98:30:freechips.rocketchip.system.DefaultRV32Config.fir@141700.4]
  wire  _T_49; // @[MulAddRecFN.scala 98:49:freechips.rocketchip.system.DefaultRV32Config.fir@141701.4]
  wire  signProd; // @[MulAddRecFN.scala 98:42:freechips.rocketchip.system.DefaultRV32Config.fir@141702.4]
  wire [10:0] _T_50; // @[MulAddRecFN.scala 101:19:freechips.rocketchip.system.DefaultRV32Config.fir@141703.4]
  wire [10:0] _T_52; // @[MulAddRecFN.scala 101:32:freechips.rocketchip.system.DefaultRV32Config.fir@141705.4]
  wire [10:0] sExpAlignedProd; // @[MulAddRecFN.scala 101:32:freechips.rocketchip.system.DefaultRV32Config.fir@141706.4]
  wire  _T_53; // @[MulAddRecFN.scala 103:30:freechips.rocketchip.system.DefaultRV32Config.fir@141707.4]
  wire  _T_54; // @[MulAddRecFN.scala 103:49:freechips.rocketchip.system.DefaultRV32Config.fir@141708.4]
  wire  doSubMags; // @[MulAddRecFN.scala 103:42:freechips.rocketchip.system.DefaultRV32Config.fir@141709.4]
  wire [10:0] _GEN_0; // @[MulAddRecFN.scala 107:42:freechips.rocketchip.system.DefaultRV32Config.fir@141710.4]
  wire [10:0] _T_56; // @[MulAddRecFN.scala 107:42:freechips.rocketchip.system.DefaultRV32Config.fir@141711.4]
  wire [10:0] sNatCAlignDist; // @[MulAddRecFN.scala 107:42:freechips.rocketchip.system.DefaultRV32Config.fir@141712.4]
  wire [9:0] posNatCAlignDist; // @[MulAddRecFN.scala 108:42:freechips.rocketchip.system.DefaultRV32Config.fir@141713.4]
  wire  _T_57; // @[MulAddRecFN.scala 109:35:freechips.rocketchip.system.DefaultRV32Config.fir@141714.4]
  wire  _T_58; // @[MulAddRecFN.scala 109:69:freechips.rocketchip.system.DefaultRV32Config.fir@141715.4]
  wire  isMinCAlign; // @[MulAddRecFN.scala 109:50:freechips.rocketchip.system.DefaultRV32Config.fir@141716.4]
  wire  _T_60; // @[MulAddRecFN.scala 111:60:freechips.rocketchip.system.DefaultRV32Config.fir@141718.4]
  wire  _T_61; // @[MulAddRecFN.scala 111:39:freechips.rocketchip.system.DefaultRV32Config.fir@141719.4]
  wire  CIsDominant; // @[MulAddRecFN.scala 111:23:freechips.rocketchip.system.DefaultRV32Config.fir@141720.4]
  wire  _T_62; // @[MulAddRecFN.scala 115:34:freechips.rocketchip.system.DefaultRV32Config.fir@141721.4]
  wire [6:0] _T_63; // @[MulAddRecFN.scala 116:33:freechips.rocketchip.system.DefaultRV32Config.fir@141722.4]
  wire [6:0] _T_64; // @[MulAddRecFN.scala 115:16:freechips.rocketchip.system.DefaultRV32Config.fir@141723.4]
  wire [6:0] CAlignDist; // @[MulAddRecFN.scala 113:12:freechips.rocketchip.system.DefaultRV32Config.fir@141724.4]
  wire [24:0] _T_65; // @[MulAddRecFN.scala 121:28:freechips.rocketchip.system.DefaultRV32Config.fir@141725.4]
  wire [77:0] _T_69; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@141729.4]
  wire [77:0] _T_70; // @[MulAddRecFN.scala 123:11:freechips.rocketchip.system.DefaultRV32Config.fir@141730.4]
  wire [77:0] mainAlignedSigC; // @[MulAddRecFN.scala 123:17:freechips.rocketchip.system.DefaultRV32Config.fir@141731.4]
  wire [3:0] _T_73; // @[primitives.scala 121:33:freechips.rocketchip.system.DefaultRV32Config.fir@141735.4]
  wire  _T_74; // @[primitives.scala 121:54:freechips.rocketchip.system.DefaultRV32Config.fir@141736.4]
  wire [3:0] _T_75; // @[primitives.scala 121:33:freechips.rocketchip.system.DefaultRV32Config.fir@141738.4]
  wire  _T_76; // @[primitives.scala 121:54:freechips.rocketchip.system.DefaultRV32Config.fir@141739.4]
  wire [3:0] _T_77; // @[primitives.scala 121:33:freechips.rocketchip.system.DefaultRV32Config.fir@141741.4]
  wire  _T_78; // @[primitives.scala 121:54:freechips.rocketchip.system.DefaultRV32Config.fir@141742.4]
  wire [3:0] _T_79; // @[primitives.scala 121:33:freechips.rocketchip.system.DefaultRV32Config.fir@141744.4]
  wire  _T_80; // @[primitives.scala 121:54:freechips.rocketchip.system.DefaultRV32Config.fir@141745.4]
  wire [3:0] _T_81; // @[primitives.scala 121:33:freechips.rocketchip.system.DefaultRV32Config.fir@141747.4]
  wire  _T_82; // @[primitives.scala 121:54:freechips.rocketchip.system.DefaultRV32Config.fir@141748.4]
  wire [3:0] _T_83; // @[primitives.scala 121:33:freechips.rocketchip.system.DefaultRV32Config.fir@141750.4]
  wire  _T_84; // @[primitives.scala 121:54:freechips.rocketchip.system.DefaultRV32Config.fir@141751.4]
  wire [2:0] _T_85; // @[primitives.scala 124:15:freechips.rocketchip.system.DefaultRV32Config.fir@141753.4]
  wire  _T_86; // @[primitives.scala 124:57:freechips.rocketchip.system.DefaultRV32Config.fir@141754.4]
  wire [4:0] _T_93; // @[MulAddRecFN.scala 127:28:freechips.rocketchip.system.DefaultRV32Config.fir@141762.4]
  wire [5:0] _T_95; // @[primitives.scala 79:22:freechips.rocketchip.system.DefaultRV32Config.fir@141764.4]
  wire [3:0] _T_96; // @[Bitwise.scala 108:18:freechips.rocketchip.system.DefaultRV32Config.fir@141765.4]
  wire [1:0] _T_97; // @[Bitwise.scala 108:18:freechips.rocketchip.system.DefaultRV32Config.fir@141766.4]
  wire  _T_98; // @[Bitwise.scala 108:18:freechips.rocketchip.system.DefaultRV32Config.fir@141767.4]
  wire  _T_99; // @[Bitwise.scala 108:44:freechips.rocketchip.system.DefaultRV32Config.fir@141768.4]
  wire [1:0] _T_101; // @[Bitwise.scala 108:44:freechips.rocketchip.system.DefaultRV32Config.fir@141770.4]
  wire  _T_102; // @[Bitwise.scala 108:18:freechips.rocketchip.system.DefaultRV32Config.fir@141771.4]
  wire  _T_103; // @[Bitwise.scala 108:44:freechips.rocketchip.system.DefaultRV32Config.fir@141772.4]
  wire [1:0] _T_106; // @[Bitwise.scala 108:44:freechips.rocketchip.system.DefaultRV32Config.fir@141775.4]
  wire  _T_107; // @[Bitwise.scala 108:18:freechips.rocketchip.system.DefaultRV32Config.fir@141776.4]
  wire  _T_108; // @[Bitwise.scala 108:44:freechips.rocketchip.system.DefaultRV32Config.fir@141777.4]
  wire [6:0] _GEN_1; // @[MulAddRecFN.scala 125:68:freechips.rocketchip.system.DefaultRV32Config.fir@141780.4]
  wire [6:0] _T_111; // @[MulAddRecFN.scala 125:68:freechips.rocketchip.system.DefaultRV32Config.fir@141780.4]
  wire  reduced4CExtra; // @[MulAddRecFN.scala 133:11:freechips.rocketchip.system.DefaultRV32Config.fir@141781.4]
  wire [74:0] _T_112; // @[MulAddRecFN.scala 135:28:freechips.rocketchip.system.DefaultRV32Config.fir@141782.4]
  wire [2:0] _T_113; // @[MulAddRecFN.scala 137:32:freechips.rocketchip.system.DefaultRV32Config.fir@141783.4]
  wire  _T_114; // @[MulAddRecFN.scala 137:39:freechips.rocketchip.system.DefaultRV32Config.fir@141784.4]
  wire  _T_115; // @[MulAddRecFN.scala 137:47:freechips.rocketchip.system.DefaultRV32Config.fir@141785.4]
  wire  _T_116; // @[MulAddRecFN.scala 137:44:freechips.rocketchip.system.DefaultRV32Config.fir@141786.4]
  wire  _T_118; // @[MulAddRecFN.scala 138:39:freechips.rocketchip.system.DefaultRV32Config.fir@141788.4]
  wire  _T_119; // @[MulAddRecFN.scala 138:44:freechips.rocketchip.system.DefaultRV32Config.fir@141789.4]
  wire [74:0] _T_121; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@141791.4]
  wire [75:0] alignedSigC; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@141792.4]
  wire  _T_123; // @[common.scala 81:56:freechips.rocketchip.system.DefaultRV32Config.fir@141797.4]
  wire  _T_124; // @[common.scala 81:49:freechips.rocketchip.system.DefaultRV32Config.fir@141798.4]
  wire  _T_125; // @[common.scala 81:46:freechips.rocketchip.system.DefaultRV32Config.fir@141799.4]
  wire  _T_126; // @[common.scala 81:56:freechips.rocketchip.system.DefaultRV32Config.fir@141800.4]
  wire  _T_127; // @[common.scala 81:49:freechips.rocketchip.system.DefaultRV32Config.fir@141801.4]
  wire  _T_128; // @[common.scala 81:46:freechips.rocketchip.system.DefaultRV32Config.fir@141802.4]
  wire  _T_129; // @[MulAddRecFN.scala 149:32:freechips.rocketchip.system.DefaultRV32Config.fir@141803.4]
  wire  _T_130; // @[common.scala 81:56:freechips.rocketchip.system.DefaultRV32Config.fir@141804.4]
  wire  _T_131; // @[common.scala 81:49:freechips.rocketchip.system.DefaultRV32Config.fir@141805.4]
  wire  _T_132; // @[common.scala 81:46:freechips.rocketchip.system.DefaultRV32Config.fir@141806.4]

`define MY_ASSIGNMENT
`ifdef MY_ASSIGNMENT
  assign rawA_isZero = io_a[31:29] == 3'h0;
  assign rawA_isNaN = (io_a[31:30] == 2'h3) & io_a[29];
  assign rawA_sign = io_a[32];
  assign rawA_sExp = {1'b0, $signed(io_a[31:23])};
  assign rawA_sig = {1'h0, !rawA_isZero, io_a[22:0]};
  assign rawB_isZero = io_b[31:29] == 3'h0;
  assign rawB_isNaN = (io_b[31:30] == 2'h3) & io_b[29];
  assign rawB_sign = io_b[32];
  assign rawB_sExp = {1'b0, $signed(io_b[31:23])};
  assign rawB_sig = {1'h0, !rawB_isZero, io_b[22:0]};
  assign rawC_isZero = io_c[31:29] == 3'h0;
  assign rawC_isNaN = (io_c[31:30] == 2'h3) & io_c[29];
  assign rawC_sign = io_c[32];
  assign rawC_sExp = {1'b0, $signed(io_c[31:23])};
  assign rawC_sig = {1'h0, !rawC_isZero, io_c[22:0]};

  assign signProd = (rawA_sign ^ rawB_sign) ^ io_op[1];

  assign sExpAlignedProd = ($signed(rawA_sExp) + $signed(rawB_sExp) + $signed(-11'she5));

  assign doSubMags = (signProd ^ rawC_sign) ^ io_op[0];
  assign sNatCAlignDist = ($signed(sExpAlignedProd) - $signed({{1{rawC_sExp[9]}},rawC_sExp}));
  assign posNatCAlignDist = sNatCAlignDist[9:0];
  assign isMinCAlign = rawA_isZero | rawB_isZero | ($signed(sNatCAlignDist) < $signed(11'sh0));
  assign CIsDominant = !rawC_isZero & (isMinCAlign | (posNatCAlignDist <= 10'h18));
  assign CAlignDist = isMinCAlign ? 7'h0 
			: (posNatCAlignDist < 10'h4a) ? posNatCAlignDist[6:0] 
			: 7'h4a
			;

  wire [24:0] _T_66 = doSubMags ? (~ rawC_sig) : rawC_sig;
  wire [52:0] _T_68 = doSubMags ? 53'h1fffffffffffff : 53'h0;
  assign mainAlignedSigC = $signed({_T_66, _T_68}) >>> CAlignDist;
  wire [26:0] _T_71 = {rawC_sig, 2'h0};
  wire [6:0] _T_92 = {(_T_71[26:24] != 3'h0)
			, (_T_71[23:20] != 4'h0)
			, (_T_71[19:16] != 4'h0)
			, (_T_71[15:12] != 4'h0)
			, (_T_71[11:8] != 4'h0)
			, (_T_71[7:4] != 4'h0)
			, (_T_71[3:0] != 4'h0)}
			;
  wire [32:0] _T_94 = $signed(-33'sh100000000) >>> CAlignDist[6:2];
  wire [5:0] _T_110 = {_T_94[14], _T_94[15], _T_94[16], _T_94[17], _T_94[18], _T_94[19]};
  assign reduced4CExtra = (_T_92 & {{1'd0}, _T_110}) != 7'h0;

  wire _T_120 = doSubMags ? ((mainAlignedSigC[2:0] == 3'h7) & !reduced4CExtra) : ((mainAlignedSigC[2:0] != 3'h0) | reduced4CExtra);
  assign alignedSigC = {$unsigned(mainAlignedSigC[77:3]), _T_120};

  assign io_mulAddA = rawA_sig[23:0];
  assign io_mulAddB = rawB_sig[23:0];
  assign io_mulAddC = alignedSigC[48:1];
  assign io_toPostMul_isSigNaNAny = (rawA_isNaN & !rawA_sig[22]) 
				| (rawB_isNaN & !rawB_sig[22]) 
				| (rawC_isNaN & !rawC_sig[22])
				;

  assign io_toPostMul_isNaNAOrB = rawA_isNaN | rawB_isNaN;
  assign io_toPostMul_isInfA = (io_a[31:30] == 2'h3) & (io_a[29] == 1'h0);
  assign io_toPostMul_isZeroA = rawA_isZero;
  assign io_toPostMul_isInfB = (io_b[31:30] == 2'h3) & (io_b[29] == 1'h0);
  assign io_toPostMul_isZeroB = rawB_isZero;
  assign io_toPostMul_signProd = signProd;
  assign io_toPostMul_isNaNC = rawC_isNaN;
  assign io_toPostMul_isInfC = (io_c[31:30] == 2'h3) & (io_c[29] == 1'h0);
  assign io_toPostMul_isZeroC = rawC_isZero;

  wire [10:0] _T_136 = $signed(sExpAlignedProd) - $signed(11'sh18);
  wire [10:0] _T_137 = $signed(_T_136);
  wire [10:0] _T_138 = CIsDominant ? $signed({{1{rawC_sExp[9]}},rawC_sExp}) : $signed(_T_137);
  wire [9:0] _GEN_2 = _T_138[9:0];
  assign io_toPostMul_sExpSum = $signed(_GEN_2);

  assign io_toPostMul_doSubMags = doSubMags;
  assign io_toPostMul_CIsDominant = CIsDominant;
  assign io_toPostMul_CDom_CAlignDist = CAlignDist[4:0];
  assign io_toPostMul_highAlignedSigC = alignedSigC[74:49];
  assign io_toPostMul_bit0AlignedSigC = alignedSigC[0];

`endif // MY_ASSIGNMENT

`ifndef MY_ASSIGNMENT
  assign rawA_isZero = _T_1 == 3'h0; // @[rawFloatFromRecFN.scala 51:54:freechips.rocketchip.system.DefaultRV32Config.fir@141630.4]
  assign rawA_isNaN = _T_4 & _T_5; // @[rawFloatFromRecFN.scala 55:33:freechips.rocketchip.system.DefaultRV32Config.fir@141636.4]
  assign rawA_sign = io_a[32]; // @[rawFloatFromRecFN.scala 58:25:freechips.rocketchip.system.DefaultRV32Config.fir@141643.4]
  assign rawA_sExp = {1'b0,$signed(_T)}; // @[rawFloatFromRecFN.scala 59:27:freechips.rocketchip.system.DefaultRV32Config.fir@141645.4]
  assign rawA_sig = {1'h0,_T_12,_T_13}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@141650.4]
  assign rawB_isZero = _T_17 == 3'h0; // @[rawFloatFromRecFN.scala 51:54:freechips.rocketchip.system.DefaultRV32Config.fir@141654.4]
  assign rawB_isNaN = _T_20 & _T_21; // @[rawFloatFromRecFN.scala 55:33:freechips.rocketchip.system.DefaultRV32Config.fir@141660.4]
  assign rawB_sign = io_b[32]; // @[rawFloatFromRecFN.scala 58:25:freechips.rocketchip.system.DefaultRV32Config.fir@141667.4]
  assign rawB_sExp = {1'b0,$signed(_T_16)}; // @[rawFloatFromRecFN.scala 59:27:freechips.rocketchip.system.DefaultRV32Config.fir@141669.4]
  assign rawB_sig = {1'h0,_T_28,_T_29}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@141674.4]
  assign rawC_isZero = _T_33 == 3'h0; // @[rawFloatFromRecFN.scala 51:54:freechips.rocketchip.system.DefaultRV32Config.fir@141678.4]
  assign rawC_isNaN = _T_36 & _T_37; // @[rawFloatFromRecFN.scala 55:33:freechips.rocketchip.system.DefaultRV32Config.fir@141684.4]
  assign rawC_sign = io_c[32]; // @[rawFloatFromRecFN.scala 58:25:freechips.rocketchip.system.DefaultRV32Config.fir@141691.4]
  assign rawC_sExp = {1'b0,$signed(_T_32)}; // @[rawFloatFromRecFN.scala 59:27:freechips.rocketchip.system.DefaultRV32Config.fir@141693.4]
  assign rawC_sig = {1'h0,_T_44,_T_45}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@141698.4]
  assign signProd = _T_48 ^ _T_49; // @[MulAddRecFN.scala 98:42:freechips.rocketchip.system.DefaultRV32Config.fir@141702.4]
  assign sExpAlignedProd = $signed(_T_52); // @[MulAddRecFN.scala 101:32:freechips.rocketchip.system.DefaultRV32Config.fir@141706.4]
  assign doSubMags = _T_53 ^ _T_54; // @[MulAddRecFN.scala 103:42:freechips.rocketchip.system.DefaultRV32Config.fir@141709.4]
  assign sNatCAlignDist = $signed(_T_56); // @[MulAddRecFN.scala 107:42:freechips.rocketchip.system.DefaultRV32Config.fir@141712.4]
  assign posNatCAlignDist = sNatCAlignDist[9:0]; // @[MulAddRecFN.scala 108:42:freechips.rocketchip.system.DefaultRV32Config.fir@141713.4]
  assign isMinCAlign = _T_57 | _T_58; // @[MulAddRecFN.scala 109:50:freechips.rocketchip.system.DefaultRV32Config.fir@141716.4]
  assign CIsDominant = _T_44 & _T_61; // @[MulAddRecFN.scala 111:23:freechips.rocketchip.system.DefaultRV32Config.fir@141720.4]
  assign CAlignDist = isMinCAlign ? 7'h0 : _T_64; // @[MulAddRecFN.scala 113:12:freechips.rocketchip.system.DefaultRV32Config.fir@141724.4]
  assign mainAlignedSigC = $signed(_T_70) >>> CAlignDist; // @[MulAddRecFN.scala 123:17:freechips.rocketchip.system.DefaultRV32Config.fir@141731.4]
  wire [24:0] _T_66; // @[MulAddRecFN.scala 121:16:freechips.rocketchip.system.DefaultRV32Config.fir@141726.4]
  assign _T_66 = doSubMags ? _T_65 : rawC_sig; // @[MulAddRecFN.scala 121:16:freechips.rocketchip.system.DefaultRV32Config.fir@141726.4]
  wire [52:0] _T_68; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@141728.4]
  assign _T_68 = doSubMags ? 53'h1fffffffffffff : 53'h0;
  wire [6:0] _T_92; // @[primitives.scala 125:20:freechips.rocketchip.system.DefaultRV32Config.fir@141761.4]
  assign _T_92 = {_T_86,_T_84,_T_82,_T_80,_T_78,_T_76,_T_74}; // @[primitives.scala 125:20:freechips.rocketchip.system.DefaultRV32Config.fir@141761.4]
  wire [26:0] _T_71; // @[MulAddRecFN.scala 125:30:freechips.rocketchip.system.DefaultRV32Config.fir@141732.4]
  assign _T_71 = {rawC_sig, 2'h0}; // @[MulAddRecFN.scala 125:30:freechips.rocketchip.system.DefaultRV32Config.fir@141732.4]
  wire [5:0] _T_110; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@141779.4]
  assign _T_110 = {_T_98,_T_99,_T_102,_T_103,_T_107,_T_108}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@141779.4]
  wire [32:0] _T_94; // @[primitives.scala 77:58:freechips.rocketchip.system.DefaultRV32Config.fir@141763.4]
  assign _T_94 = $signed(-33'sh100000000) >>> _T_93; // @[primitives.scala 77:58:freechips.rocketchip.system.DefaultRV32Config.fir@141763.4]
  assign reduced4CExtra = _T_111 != 7'h0; // @[MulAddRecFN.scala 133:11:freechips.rocketchip.system.DefaultRV32Config.fir@141781.4]
  wire  _T_120; // @[MulAddRecFN.scala 136:16:freechips.rocketchip.system.DefaultRV32Config.fir@141790.4]
  assign _T_120 = doSubMags ? _T_116 : _T_119; // @[MulAddRecFN.scala 136:16:freechips.rocketchip.system.DefaultRV32Config.fir@141790.4]
  assign alignedSigC = {_T_121,_T_120}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@141792.4]
  assign io_mulAddA = rawA_sig[23:0]; // @[MulAddRecFN.scala 144:16:freechips.rocketchip.system.DefaultRV32Config.fir@141793.4]
  assign io_mulAddB = rawB_sig[23:0]; // @[MulAddRecFN.scala 145:16:freechips.rocketchip.system.DefaultRV32Config.fir@141794.4]
  assign io_mulAddC = alignedSigC[48:1]; // @[MulAddRecFN.scala 146:16:freechips.rocketchip.system.DefaultRV32Config.fir@141796.4]
  assign io_toPostMul_isSigNaNAny = _T_129 | _T_132; // @[MulAddRecFN.scala 148:30:freechips.rocketchip.system.DefaultRV32Config.fir@141808.4]
  assign io_toPostMul_isNaNAOrB = rawA_isNaN | rawB_isNaN; // @[MulAddRecFN.scala 151:28:freechips.rocketchip.system.DefaultRV32Config.fir@141810.4]
  assign io_toPostMul_isInfA = _T_4 & _T_8; // @[MulAddRecFN.scala 152:28:freechips.rocketchip.system.DefaultRV32Config.fir@141811.4]
  assign io_toPostMul_isZeroA = _T_1 == 3'h0; // @[MulAddRecFN.scala 153:28:freechips.rocketchip.system.DefaultRV32Config.fir@141812.4]
  assign io_toPostMul_isInfB = _T_20 & _T_24; // @[MulAddRecFN.scala 154:28:freechips.rocketchip.system.DefaultRV32Config.fir@141813.4]
  assign io_toPostMul_isZeroB = _T_17 == 3'h0; // @[MulAddRecFN.scala 155:28:freechips.rocketchip.system.DefaultRV32Config.fir@141814.4]
  assign io_toPostMul_signProd = _T_48 ^ _T_49; // @[MulAddRecFN.scala 156:28:freechips.rocketchip.system.DefaultRV32Config.fir@141815.4]
  assign io_toPostMul_isNaNC = _T_36 & _T_37; // @[MulAddRecFN.scala 157:28:freechips.rocketchip.system.DefaultRV32Config.fir@141816.4]
  assign io_toPostMul_isInfC = _T_36 & _T_40; // @[MulAddRecFN.scala 158:28:freechips.rocketchip.system.DefaultRV32Config.fir@141817.4]
  assign io_toPostMul_isZeroC = _T_33 == 3'h0; // @[MulAddRecFN.scala 159:28:freechips.rocketchip.system.DefaultRV32Config.fir@141818.4]
  wire [10:0] _T_136; // @[MulAddRecFN.scala 161:53:freechips.rocketchip.system.DefaultRV32Config.fir@141820.4]
  wire [10:0] _T_137; // @[MulAddRecFN.scala 161:53:freechips.rocketchip.system.DefaultRV32Config.fir@141821.4]
  wire [10:0] _T_138; // @[MulAddRecFN.scala 161:12:freechips.rocketchip.system.DefaultRV32Config.fir@141822.4]
  wire [9:0] _GEN_2; // @[MulAddRecFN.scala 160:28:freechips.rocketchip.system.DefaultRV32Config.fir@141823.4]
  assign _T_136 = $signed(sExpAlignedProd) - $signed(11'sh18); // @[MulAddRecFN.scala 161:53:freechips.rocketchip.system.DefaultRV32Config.fir@141820.4]
  assign _T_137 = $signed(_T_136); // @[MulAddRecFN.scala 161:53:freechips.rocketchip.system.DefaultRV32Config.fir@141821.4]
  assign _T_138 = CIsDominant ? $signed({{1{rawC_sExp[9]}},rawC_sExp}) : $signed(_T_137); // @[MulAddRecFN.scala 161:12:freechips.rocketchip.system.DefaultRV32Config.fir@141822.4]
  assign _GEN_2 = _T_138[9:0]; // @[MulAddRecFN.scala 160:28:freechips.rocketchip.system.DefaultRV32Config.fir@141823.4]
  assign io_toPostMul_sExpSum = $signed(_GEN_2); // @[MulAddRecFN.scala 160:28:freechips.rocketchip.system.DefaultRV32Config.fir@141823.4]
  assign io_toPostMul_doSubMags = _T_53 ^ _T_54; // @[MulAddRecFN.scala 162:28:freechips.rocketchip.system.DefaultRV32Config.fir@141824.4]
  assign io_toPostMul_CIsDominant = _T_44 & _T_61; // @[MulAddRecFN.scala 163:30:freechips.rocketchip.system.DefaultRV32Config.fir@141825.4]
  assign io_toPostMul_CDom_CAlignDist = CAlignDist[4:0]; // @[MulAddRecFN.scala 164:34:freechips.rocketchip.system.DefaultRV32Config.fir@141827.4]
  assign io_toPostMul_highAlignedSigC = alignedSigC[74:49]; // @[MulAddRecFN.scala 165:34:freechips.rocketchip.system.DefaultRV32Config.fir@141829.4]
  assign io_toPostMul_bit0AlignedSigC = alignedSigC[0]; // @[MulAddRecFN.scala 167:34:freechips.rocketchip.system.DefaultRV32Config.fir@141831.4]
`endif // MY_ASSIGNMENT


  assign _T = io_a[31:23]; // @[rawFloatFromRecFN.scala 50:21:freechips.rocketchip.system.DefaultRV32Config.fir@141628.4]
  assign _T_1 = _T[8:6]; // @[rawFloatFromRecFN.scala 51:29:freechips.rocketchip.system.DefaultRV32Config.fir@141629.4]
  assign _T_3 = _T[8:7]; // @[rawFloatFromRecFN.scala 52:29:freechips.rocketchip.system.DefaultRV32Config.fir@141631.4]
  assign _T_4 = _T_3 == 2'h3; // @[rawFloatFromRecFN.scala 52:54:freechips.rocketchip.system.DefaultRV32Config.fir@141632.4]
  assign _T_5 = _T[6]; // @[rawFloatFromRecFN.scala 55:41:freechips.rocketchip.system.DefaultRV32Config.fir@141635.4]
  assign _T_8 = _T_5 == 1'h0; // @[rawFloatFromRecFN.scala 56:36:freechips.rocketchip.system.DefaultRV32Config.fir@141639.4]
  assign _T_12 = rawA_isZero == 1'h0; // @[rawFloatFromRecFN.scala 60:39:freechips.rocketchip.system.DefaultRV32Config.fir@141647.4]
  assign _T_13 = io_a[22:0]; // @[rawFloatFromRecFN.scala 60:51:freechips.rocketchip.system.DefaultRV32Config.fir@141648.4]
  assign _T_16 = io_b[31:23]; // @[rawFloatFromRecFN.scala 50:21:freechips.rocketchip.system.DefaultRV32Config.fir@141652.4]
  assign _T_17 = _T_16[8:6]; // @[rawFloatFromRecFN.scala 51:29:freechips.rocketchip.system.DefaultRV32Config.fir@141653.4]
  assign _T_19 = _T_16[8:7]; // @[rawFloatFromRecFN.scala 52:29:freechips.rocketchip.system.DefaultRV32Config.fir@141655.4]
  assign _T_20 = _T_19 == 2'h3; // @[rawFloatFromRecFN.scala 52:54:freechips.rocketchip.system.DefaultRV32Config.fir@141656.4]
  assign _T_21 = _T_16[6]; // @[rawFloatFromRecFN.scala 55:41:freechips.rocketchip.system.DefaultRV32Config.fir@141659.4]
  assign _T_24 = _T_21 == 1'h0; // @[rawFloatFromRecFN.scala 56:36:freechips.rocketchip.system.DefaultRV32Config.fir@141663.4]
  assign _T_28 = rawB_isZero == 1'h0; // @[rawFloatFromRecFN.scala 60:39:freechips.rocketchip.system.DefaultRV32Config.fir@141671.4]
  assign _T_29 = io_b[22:0]; // @[rawFloatFromRecFN.scala 60:51:freechips.rocketchip.system.DefaultRV32Config.fir@141672.4]
  assign _T_32 = io_c[31:23]; // @[rawFloatFromRecFN.scala 50:21:freechips.rocketchip.system.DefaultRV32Config.fir@141676.4]
  assign _T_33 = _T_32[8:6]; // @[rawFloatFromRecFN.scala 51:29:freechips.rocketchip.system.DefaultRV32Config.fir@141677.4]
  assign _T_35 = _T_32[8:7]; // @[rawFloatFromRecFN.scala 52:29:freechips.rocketchip.system.DefaultRV32Config.fir@141679.4]
  assign _T_36 = _T_35 == 2'h3; // @[rawFloatFromRecFN.scala 52:54:freechips.rocketchip.system.DefaultRV32Config.fir@141680.4]
  assign _T_37 = _T_32[6]; // @[rawFloatFromRecFN.scala 55:41:freechips.rocketchip.system.DefaultRV32Config.fir@141683.4]
  assign _T_40 = _T_37 == 1'h0; // @[rawFloatFromRecFN.scala 56:36:freechips.rocketchip.system.DefaultRV32Config.fir@141687.4]
  assign _T_44 = rawC_isZero == 1'h0; // @[rawFloatFromRecFN.scala 60:39:freechips.rocketchip.system.DefaultRV32Config.fir@141695.4]
  assign _T_45 = io_c[22:0]; // @[rawFloatFromRecFN.scala 60:51:freechips.rocketchip.system.DefaultRV32Config.fir@141696.4]
  assign _T_48 = rawA_sign ^ rawB_sign; // @[MulAddRecFN.scala 98:30:freechips.rocketchip.system.DefaultRV32Config.fir@141700.4]
  assign _T_49 = io_op[1]; // @[MulAddRecFN.scala 98:49:freechips.rocketchip.system.DefaultRV32Config.fir@141701.4]
  assign _T_50 = $signed(rawA_sExp) + $signed(rawB_sExp); // @[MulAddRecFN.scala 101:19:freechips.rocketchip.system.DefaultRV32Config.fir@141703.4]
  assign _T_52 = $signed(_T_50) + $signed(-11'she5); // @[MulAddRecFN.scala 101:32:freechips.rocketchip.system.DefaultRV32Config.fir@141705.4]
  assign _T_53 = signProd ^ rawC_sign; // @[MulAddRecFN.scala 103:30:freechips.rocketchip.system.DefaultRV32Config.fir@141707.4]
  assign _T_54 = io_op[0]; // @[MulAddRecFN.scala 103:49:freechips.rocketchip.system.DefaultRV32Config.fir@141708.4]
  assign _GEN_0 = {{1{rawC_sExp[9]}},rawC_sExp}; // @[MulAddRecFN.scala 107:42:freechips.rocketchip.system.DefaultRV32Config.fir@141710.4]
  assign _T_56 = $signed(sExpAlignedProd) - $signed(_GEN_0); // @[MulAddRecFN.scala 107:42:freechips.rocketchip.system.DefaultRV32Config.fir@141711.4]
  assign _T_57 = rawA_isZero | rawB_isZero; // @[MulAddRecFN.scala 109:35:freechips.rocketchip.system.DefaultRV32Config.fir@141714.4]
  assign _T_58 = $signed(sNatCAlignDist) < $signed(11'sh0); // @[MulAddRecFN.scala 109:69:freechips.rocketchip.system.DefaultRV32Config.fir@141715.4]
  assign _T_60 = posNatCAlignDist <= 10'h18; // @[MulAddRecFN.scala 111:60:freechips.rocketchip.system.DefaultRV32Config.fir@141718.4]
  assign _T_61 = isMinCAlign | _T_60; // @[MulAddRecFN.scala 111:39:freechips.rocketchip.system.DefaultRV32Config.fir@141719.4]
  assign _T_62 = posNatCAlignDist < 10'h4a; // @[MulAddRecFN.scala 115:34:freechips.rocketchip.system.DefaultRV32Config.fir@141721.4]
  assign _T_63 = posNatCAlignDist[6:0]; // @[MulAddRecFN.scala 116:33:freechips.rocketchip.system.DefaultRV32Config.fir@141722.4]
  assign _T_64 = _T_62 ? _T_63 : 7'h4a; // @[MulAddRecFN.scala 115:16:freechips.rocketchip.system.DefaultRV32Config.fir@141723.4]
  assign _T_65 = ~ rawC_sig; // @[MulAddRecFN.scala 121:28:freechips.rocketchip.system.DefaultRV32Config.fir@141725.4]
  assign _T_69 = {_T_66,_T_68}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@141729.4]
  assign _T_70 = $signed(_T_69); // @[MulAddRecFN.scala 123:11:freechips.rocketchip.system.DefaultRV32Config.fir@141730.4]
  assign _T_73 = _T_71[3:0]; // @[primitives.scala 121:33:freechips.rocketchip.system.DefaultRV32Config.fir@141735.4]
  assign _T_74 = _T_73 != 4'h0; // @[primitives.scala 121:54:freechips.rocketchip.system.DefaultRV32Config.fir@141736.4]
  assign _T_75 = _T_71[7:4]; // @[primitives.scala 121:33:freechips.rocketchip.system.DefaultRV32Config.fir@141738.4]
  assign _T_76 = _T_75 != 4'h0; // @[primitives.scala 121:54:freechips.rocketchip.system.DefaultRV32Config.fir@141739.4]
  assign _T_77 = _T_71[11:8]; // @[primitives.scala 121:33:freechips.rocketchip.system.DefaultRV32Config.fir@141741.4]
  assign _T_78 = _T_77 != 4'h0; // @[primitives.scala 121:54:freechips.rocketchip.system.DefaultRV32Config.fir@141742.4]
  assign _T_79 = _T_71[15:12]; // @[primitives.scala 121:33:freechips.rocketchip.system.DefaultRV32Config.fir@141744.4]
  assign _T_80 = _T_79 != 4'h0; // @[primitives.scala 121:54:freechips.rocketchip.system.DefaultRV32Config.fir@141745.4]
  assign _T_81 = _T_71[19:16]; // @[primitives.scala 121:33:freechips.rocketchip.system.DefaultRV32Config.fir@141747.4]
  assign _T_82 = _T_81 != 4'h0; // @[primitives.scala 121:54:freechips.rocketchip.system.DefaultRV32Config.fir@141748.4]
  assign _T_83 = _T_71[23:20]; // @[primitives.scala 121:33:freechips.rocketchip.system.DefaultRV32Config.fir@141750.4]
  assign _T_84 = _T_83 != 4'h0; // @[primitives.scala 121:54:freechips.rocketchip.system.DefaultRV32Config.fir@141751.4]
  assign _T_85 = _T_71[26:24]; // @[primitives.scala 124:15:freechips.rocketchip.system.DefaultRV32Config.fir@141753.4]
  assign _T_86 = _T_85 != 3'h0; // @[primitives.scala 124:57:freechips.rocketchip.system.DefaultRV32Config.fir@141754.4]
  assign _T_93 = CAlignDist[6:2]; // @[MulAddRecFN.scala 127:28:freechips.rocketchip.system.DefaultRV32Config.fir@141762.4]
  assign _T_95 = _T_94[19:14]; // @[primitives.scala 79:22:freechips.rocketchip.system.DefaultRV32Config.fir@141764.4]
  assign _T_96 = _T_95[3:0]; // @[Bitwise.scala 108:18:freechips.rocketchip.system.DefaultRV32Config.fir@141765.4]
  assign _T_97 = _T_96[1:0]; // @[Bitwise.scala 108:18:freechips.rocketchip.system.DefaultRV32Config.fir@141766.4]
  assign _T_98 = _T_97[0]; // @[Bitwise.scala 108:18:freechips.rocketchip.system.DefaultRV32Config.fir@141767.4]
  assign _T_99 = _T_97[1]; // @[Bitwise.scala 108:44:freechips.rocketchip.system.DefaultRV32Config.fir@141768.4]
  assign _T_101 = _T_96[3:2]; // @[Bitwise.scala 108:44:freechips.rocketchip.system.DefaultRV32Config.fir@141770.4]
  assign _T_102 = _T_101[0]; // @[Bitwise.scala 108:18:freechips.rocketchip.system.DefaultRV32Config.fir@141771.4]
  assign _T_103 = _T_101[1]; // @[Bitwise.scala 108:44:freechips.rocketchip.system.DefaultRV32Config.fir@141772.4]
  assign _T_106 = _T_95[5:4]; // @[Bitwise.scala 108:44:freechips.rocketchip.system.DefaultRV32Config.fir@141775.4]
  assign _T_107 = _T_106[0]; // @[Bitwise.scala 108:18:freechips.rocketchip.system.DefaultRV32Config.fir@141776.4]
  assign _T_108 = _T_106[1]; // @[Bitwise.scala 108:44:freechips.rocketchip.system.DefaultRV32Config.fir@141777.4]
  assign _GEN_1 = {{1'd0}, _T_110}; // @[MulAddRecFN.scala 125:68:freechips.rocketchip.system.DefaultRV32Config.fir@141780.4]
  assign _T_111 = _T_92 & _GEN_1; // @[MulAddRecFN.scala 125:68:freechips.rocketchip.system.DefaultRV32Config.fir@141780.4]
  assign _T_112 = mainAlignedSigC[77:3]; // @[MulAddRecFN.scala 135:28:freechips.rocketchip.system.DefaultRV32Config.fir@141782.4]
  assign _T_113 = mainAlignedSigC[2:0]; // @[MulAddRecFN.scala 137:32:freechips.rocketchip.system.DefaultRV32Config.fir@141783.4]
  assign _T_114 = _T_113 == 3'h7; // @[MulAddRecFN.scala 137:39:freechips.rocketchip.system.DefaultRV32Config.fir@141784.4]
  assign _T_115 = reduced4CExtra == 1'h0; // @[MulAddRecFN.scala 137:47:freechips.rocketchip.system.DefaultRV32Config.fir@141785.4]
  assign _T_116 = _T_114 & _T_115; // @[MulAddRecFN.scala 137:44:freechips.rocketchip.system.DefaultRV32Config.fir@141786.4]
  assign _T_118 = _T_113 != 3'h0; // @[MulAddRecFN.scala 138:39:freechips.rocketchip.system.DefaultRV32Config.fir@141788.4]
  assign _T_119 = _T_118 | reduced4CExtra; // @[MulAddRecFN.scala 138:44:freechips.rocketchip.system.DefaultRV32Config.fir@141789.4]
  assign _T_121 = $unsigned(_T_112); // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@141791.4]
  assign _T_123 = rawA_sig[22]; // @[common.scala 81:56:freechips.rocketchip.system.DefaultRV32Config.fir@141797.4]
  assign _T_124 = _T_123 == 1'h0; // @[common.scala 81:49:freechips.rocketchip.system.DefaultRV32Config.fir@141798.4]
  assign _T_125 = rawA_isNaN & _T_124; // @[common.scala 81:46:freechips.rocketchip.system.DefaultRV32Config.fir@141799.4]
  assign _T_126 = rawB_sig[22]; // @[common.scala 81:56:freechips.rocketchip.system.DefaultRV32Config.fir@141800.4]
  assign _T_127 = _T_126 == 1'h0; // @[common.scala 81:49:freechips.rocketchip.system.DefaultRV32Config.fir@141801.4]
  assign _T_128 = rawB_isNaN & _T_127; // @[common.scala 81:46:freechips.rocketchip.system.DefaultRV32Config.fir@141802.4]
  assign _T_129 = _T_125 | _T_128; // @[MulAddRecFN.scala 149:32:freechips.rocketchip.system.DefaultRV32Config.fir@141803.4]
  assign _T_130 = rawC_sig[22]; // @[common.scala 81:56:freechips.rocketchip.system.DefaultRV32Config.fir@141804.4]
  assign _T_131 = _T_130 == 1'h0; // @[common.scala 81:49:freechips.rocketchip.system.DefaultRV32Config.fir@141805.4]
  assign _T_132 = rawC_isNaN & _T_131; // @[common.scala 81:46:freechips.rocketchip.system.DefaultRV32Config.fir@141806.4]
endmodule
`endif // __MulAddRecFNToRaw_preMul
