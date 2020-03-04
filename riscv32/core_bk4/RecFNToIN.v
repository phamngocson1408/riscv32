`include "include_module.v"
`ifdef __RecFNToIN
module RecFNToIN(
  input  [32:0] io_in,
  input  [2:0]  io_roundingMode,
  input         io_signedOut,
  output [31:0] io_out,
  output [2:0]  io_intExceptionFlags 
);
  wire  rawIn_isZero;
  wire  rawIn_isNaN;
  wire  rawIn_isInf;
  wire  rawIn_sign;
  wire [9:0] rawIn_sExp;
  wire [24:0] rawIn_sig;
  wire  magGeOne;
  wire [7:0] posExp;
  wire  magJustBelowOne;
  wire  roundingMode_near_even;
  wire  roundingMode_min;
  wire  roundingMode_max;
  wire  roundingMode_near_maxMag;
  wire  roundingMode_odd;
  wire [54:0] shiftedSig;
  wire [33:0] alignedSig;
  wire [31:0] unroundedInt;
  wire  common_inexact;
  wire  roundIncr_near_even;
  wire  roundIncr_near_maxMag;
  wire  roundIncr;
  wire [31:0] complUnroundedInt;
  wire [31:0] roundedInt;
  wire  magGeOne_atOverflowEdge;
  wire  roundCarryBut2;
  wire  common_overflow;
  wire  invalidExc;
  wire  overflow;
  wire  inexact;
  wire  excSign;
  wire [31:0] excOut;

`define MY_ASSIGNMENT
`ifdef MY_ASSIGNMENT
  assign rawIn_isZero = io_in[31:29] == 3'h0;
  assign rawIn_isNaN = (io_in[31:30] == 2'h3) & io_in[29];
  assign rawIn_isInf = (io_in[31:30] == 2'h3) & !io_in[29];
  assign rawIn_sign = io_in[32];
  assign rawIn_sExp = {1'b0, $signed(io_in[31:23])};
  assign rawIn_sig = {1'h0, !rawIn_isZero, io_in[22:0]};
  assign magGeOne = rawIn_sExp[8];
  assign posExp = rawIn_sExp[7:0];
  assign magJustBelowOne = !magGeOne & (posExp == 8'hff);
  assign roundingMode_near_even = io_roundingMode == 3'h0;
  assign roundingMode_min = io_roundingMode == 3'h2;
  assign roundingMode_max = io_roundingMode == 3'h3;
  assign roundingMode_near_maxMag = io_roundingMode == 3'h4;
  assign roundingMode_odd = io_roundingMode == 3'h6;
  wire [4:0] _T_21 = magGeOne ? rawIn_sExp[4:0] : 5'h0;
  assign shiftedSig = {{31'd0}, magGeOne, rawIn_sig[22:0]} << _T_21;
  assign alignedSig = {shiftedSig[54:22], (shiftedSig[21:0] != 22'h0)};
  assign unroundedInt = alignedSig[33:2];
  assign common_inexact = magGeOne ? (alignedSig[1:0] != 2'h0) : !rawIn_isZero;
  assign roundIncr_near_even = (magGeOne & ((alignedSig[2:1] == 2'h3) | (alignedSig[1:0] == 2'h3))) 
				| (magJustBelowOne & (alignedSig[1:0] != 2'h0));
  assign roundIncr_near_maxMag = (magGeOne & alignedSig[1]) | magJustBelowOne;
  assign roundIncr = (roundingMode_near_even & roundIncr_near_even) 
			| (roundingMode_near_maxMag & roundIncr_near_maxMag) 
			| ((roundingMode_min | roundingMode_odd) & (rawIn_sign & common_inexact)) 
			| (roundingMode_max & !rawIn_sign & common_inexact);
  assign complUnroundedInt = rawIn_sign ? (~ unroundedInt) : unroundedInt;
  wire [31:0] _T_54 = (roundIncr ^ rawIn_sign) ? (complUnroundedInt + 32'h1) : complUnroundedInt;
  assign roundedInt = _T_54 | {{31'd0}, (roundingMode_odd & common_inexact)};
  assign magGeOne_atOverflowEdge = posExp == 8'h1f;
  assign roundCarryBut2 = (unroundedInt[29:0] == 30'h3fffffff) & roundIncr;
  wire _T_66 = rawIn_sign ? (magGeOne_atOverflowEdge & ((unroundedInt[30:0] != 31'h0) | roundIncr)) : (magGeOne_atOverflowEdge | ((posExp == 8'h1e) & roundCarryBut2));
  wire _T_71 = io_signedOut ? _T_66 : (rawIn_sign | (magGeOne_atOverflowEdge & unroundedInt[30] & roundCarryBut2));
  assign common_overflow = magGeOne ? ((posExp >= 8'h20) | _T_71) : (!io_signedOut & rawIn_sign & roundIncr);
  assign invalidExc = rawIn_isNaN | rawIn_isInf;
  assign overflow = !invalidExc & common_overflow;
  assign inexact = !invalidExc & !common_overflow & common_inexact;
  assign excSign = !rawIn_isNaN & rawIn_sign;
  wire [31:0] _T_82 = (io_signedOut == excSign) ? 32'h80000000 : 32'h0;
  wire [30:0] _T_84 = !excSign ? 31'h7fffffff : 31'h0;
  assign excOut = _T_82 | {{1'd0}, _T_84};
  assign io_out = (invalidExc | common_overflow) ? excOut : roundedInt;
  assign io_intExceptionFlags = {invalidExc, overflow, inexact};

`endif // MY_ASSIGNMENT

endmodule
`endif // __RecFNToIN
