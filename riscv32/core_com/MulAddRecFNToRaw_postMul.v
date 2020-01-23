`include "include_module.v"
`ifdef __MulAddRecFNToRaw_postMul
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
  wire  roundingMode_min;
  wire  CDom_sign;
  wire [74:0] sigSum;
  wire [9:0] CDom_sExp;
  wire [49:0] CDom_absSigSum;
  wire  CDom_absSigSumExtra;
  wire [28:0] CDom_mainSig;
  wire  CDom_reduced4SigExtra;
  wire [26:0] CDom_sig;
  wire  notCDom_signSigSum;
  wire [50:0] notCDom_absSigSum;
  wire [25:0] notCDom_reduced2AbsSigSum;
  wire [4:0] notCDom_normDistReduced2;
  wire [5:0] notCDom_nearNormDist;
  wire [9:0] notCDom_sExp;
  wire [28:0] notCDom_mainSig;
  wire  notCDom_reduced4SigExtra;
  wire [26:0] notCDom_sig;
  wire  notCDom_completeCancellation;
  wire  notCDom_sign;
  wire  notNaN_isInfProd;
  wire  notNaN_isInfOut;
  wire  notNaN_addZeros;

`define MY_ASSIGNMENT
`ifdef MY_ASSIGNMENT
  assign roundingMode_min = io_roundingMode == 3'h2;
  assign CDom_sign = io_fromPreMul_signProd ^ io_fromPreMul_doSubMags;
  wire [25:0] _T_3 = io_mulAddResult[48] ? (io_fromPreMul_highAlignedSigC + 26'h1) : io_fromPreMul_highAlignedSigC;
  assign sigSum = {_T_3, io_mulAddResult[47:0], io_fromPreMul_bit0AlignedSigC};
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

endmodule
`endif // __MulAddRecFNToRaw_postMul
