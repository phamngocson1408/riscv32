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

  wire  roundingMode_near_even;
  wire  roundingMode_min;
  wire  roundingMode_max;
  wire  roundingMode_near_maxMag;
  wire  roundingMode_odd;
  wire  roundMagUp;
  wire  doShiftSigDown1;
  wire [8:0] common_expOut;
  wire [22:0] common_fractOut;
  wire  common_overflow;
  wire  common_totalUnderflow;
  wire  common_underflow;
  wire  common_inexact;
  wire  isNaNOut;
  wire  notNaN_isSpecialInfOut;
  wire  commonCase;
  wire  overflow;
  wire  underflow;
  wire  inexact;
  wire  overflow_roundMagUp;
  wire  pegMinNonzeroMagOut;
  wire  pegMaxFiniteMagOut;
  wire  notNaN_isInfOut;
  wire  signOut;
  wire [8:0] expOut;
  wire [22:0] fractOut;

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

endmodule
`endif // __RoundAnyRawFNToRecFN
