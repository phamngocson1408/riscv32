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
  wire  common_inexact;
  wire [8:0] common_expOut;
  wire [22:0] common_fractOut;
  wire  commonCase;
  wire  inexact;
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

  wire [9:0] _T_3 = $signed({{1{io_in_sExp[7]}},io_in_sExp}) + $signed(9'shc0);
  assign sAdjustedExp = {1'b0,$signed(_T_3[8:0])};
  assign adjustedSig = {io_in_sig[32:7], (io_in_sig[6:0] != 7'h0)};

  wire _T_15 = (adjustedSig & 27'h2) != 27'h0;
  wire _T_17 = (adjustedSig & 27'h1) != 27'h0;
  assign common_inexact = _T_15 | _T_17;

  wire [26:0] _T_23 = adjustedSig | 27'h3;
  wire [25:0] _T_25 = _T_23[26:2] + 25'h1;
  wire [25:0] _T_30 = (roundingMode_near_even & _T_15 & !_T_17) ? 26'h1 : 26'h0;
  wire [26:0] _T_34 = adjustedSig & 27'h7fffffc;
  wire [25:0] _T_38 = (roundingMode_odd & common_inexact) ? 26'h1 : 26'h0;
  wire [25:0] _T_40 = (((roundingMode_near_even | roundingMode_near_maxMag) & _T_15) | (roundMagUp & common_inexact)) ? (_T_25 &  (~ _T_30)) : ({{1'd0}, _T_34[26:2]} | _T_38);
  wire [2:0] _T_42 = {1'b0,$signed(_T_40[25:24])};
  wire [10:0] _T_43 = $signed(sAdjustedExp) + $signed({{7{_T_42[2]}},_T_42});
  assign common_expOut = _T_43[8:0];
  assign common_fractOut = _T_40[22:0];
  assign commonCase = io_in_isZero == 1'h0;
  assign inexact = commonCase & common_inexact;

  wire [8:0] _T_75 = io_in_isZero ? 9'h1c0 : 9'h0;
  assign expOut = common_expOut & (~ _T_75);
  assign fractOut = io_in_isZero ? 23'h0 : common_fractOut;
  assign io_out = {io_in_sign, expOut, fractOut};
  assign io_exceptionFlags = {4'h0, inexact};

`endif // MY_ASSIGNMENT

endmodule

