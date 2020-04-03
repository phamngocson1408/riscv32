`include "include_module.v"
`ifdef __RoundAnyRawFNToRecFN_1
module RoundAnyRawFNToRecFN_1(
  input         io_in_isZero,
  input         io_in_sign,
  input  [7:0]  io_in_sExp,
  input  [32:0] io_in_sig,
  input  [2:0]  io_roundingMode,
  output [32:0] io_out,
  output [4:0]  io_exceptionFlags
);
  wire  roundingMode_near_even;
  wire  roundingMode_min;
  wire  roundingMode_max;
  wire  roundingMode_near_maxMag;
  wire  roundingMode_odd;
  wire  roundMagUp;
  wire [9:0] sAdjustedExp;
  wire [26:0] adjustedSig;
  wire  roundPosBit;
  wire  anyRoundExtra;
  wire  anyRound;
  wire  roundIncr;
  wire [25:0] roundedSig;
  wire [10:0] sRoundedExp;
  wire [8:0] common_expOut;
  wire [22:0] common_fractOut;
  wire  commonCase;
  wire  inexact;
  wire [8:0] expOut;
  wire [22:0] fractOut; 

parameter round_near_even   = 3'b000;
parameter round_minMag      = 3'b001;
parameter round_min         = 3'b010;
parameter round_max         = 3'b011;
parameter round_near_maxMag = 3'b100;
parameter round_odd         = 3'b110;

  assign roundingMode_near_even = io_roundingMode == round_near_even;
  assign roundingMode_min = io_roundingMode == round_min;
  assign roundingMode_max = io_roundingMode == round_max;
  assign roundingMode_near_maxMag = io_roundingMode == round_near_maxMag;
  assign roundingMode_odd = io_roundingMode == round_odd; 

  assign roundMagUp = (roundingMode_min & io_in_sign) | (roundingMode_max & !io_in_sign); // @[RoundAnyRawFNToRecFN.scala 96

  wire [9:0] _T_3 = $signed({{1{io_in_sExp[7]}},io_in_sExp}) + $signed(9'shc0);
  assign sAdjustedExp = {1'b0,$signed(_T_3[8:0])};

  assign adjustedSig = {io_in_sig[32:7], (io_in_sig[6:0] != 7'h0)};

  assign roundPosBit = (adjustedSig & 27'h2) != 27'h0;

  assign anyRoundExtra = (adjustedSig & 27'h1) != 27'h0;

  assign anyRound = roundPosBit | anyRoundExtra;

  assign roundIncr = ((roundingMode_near_even | roundingMode_near_maxMag) & roundPosBit) | (roundMagUp & anyRound);

  wire [26:0] _T_16 = adjustedSig | 27'h3;
  wire [26:0] _T_27 = adjustedSig & 27'h7fffffc;
  assign roundedSig = roundIncr ? ((_T_16[26:2] + 25'h1) & (~ ((roundingMode_near_even & roundPosBit & !anyRoundExtra) ? 26'h1 : 26'h0))) 
			: ({{1'd0}, _T_27[26:2]} | ((roundingMode_odd & anyRound) ? 26'h1 : 26'h0));

  wire [2:0] _T_34 = {1'b0,$signed(roundedSig[25:24])};
  assign sRoundedExp = $signed(sAdjustedExp) + $signed({{7{_T_34[2]}},_T_34}); 

  assign common_expOut = sRoundedExp[8:0];
  assign common_fractOut = roundedSig[22:0];
  assign commonCase = io_in_isZero == 1'h0;
  assign inexact = commonCase & anyRound;
  assign expOut = common_expOut & (~ (io_in_isZero ? 9'h1c0 : 9'h0));
  assign fractOut = io_in_isZero ? 23'h0 : common_fractOut;
  assign io_out = {io_in_sign,expOut,fractOut};
  assign io_exceptionFlags = {3'h0,1'h0,inexact};
endmodule

`endif // __RoundAnyRawFNToRecFN_1
