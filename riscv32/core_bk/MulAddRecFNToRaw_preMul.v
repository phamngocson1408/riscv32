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
  wire  rawA_isZero;
  wire  rawA_isNaN;
  wire  rawA_sign;
  wire [9:0] rawA_sExp;
  wire [24:0] rawA_sig;
  wire  rawB_isZero;
  wire  rawB_isNaN;
  wire  rawB_sign;
  wire [9:0] rawB_sExp;
  wire [24:0] rawB_sig;
  wire  rawC_isZero;
  wire  rawC_isNaN;
  wire  rawC_sign;
  wire [9:0] rawC_sExp;
  wire [24:0] rawC_sig;
  wire  signProd;
  wire [10:0] sExpAlignedProd;
  wire  doSubMags;
  wire [10:0] sNatCAlignDist;
  wire [9:0] posNatCAlignDist;
  wire  isMinCAlign;
  wire  CIsDominant;
  wire [6:0] CAlignDist;
  wire [77:0] mainAlignedSigC;
  wire  reduced4CExtra;
  wire [75:0] alignedSigC;

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
endmodule

