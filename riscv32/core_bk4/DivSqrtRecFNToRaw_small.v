`include "include_module.v"
`ifdef __DivSqrtRecFNToRaw_small
module DivSqrtRecFNToRaw_small(
  input         clock,
  input         reset,
  output        io_inReady,
  input         io_inValid,
  input         io_sqrtOp,
  input  [32:0] io_a,
  input  [32:0] io_b,
  input  [2:0]  io_roundingMode,
  output        io_rawOutValid_div,
  output        io_rawOutValid_sqrt,
  output [2:0]  io_roundingModeOut,
  output        io_invalidExc,
  output        io_infiniteExc,
  output        io_rawOut_isNaN,
  output        io_rawOut_isInf,
  output        io_rawOut_isZero,
  output        io_rawOut_sign,
  output [9:0]  io_rawOut_sExp,
  output [26:0] io_rawOut_sig 
);
  wire  divSqrtRawFN_clock;
  wire  divSqrtRawFN_reset;
  wire  divSqrtRawFN_io_inReady;
  wire  divSqrtRawFN_io_inValid;
  wire  divSqrtRawFN_io_sqrtOp;
  wire  divSqrtRawFN_io_a_isNaN;
  wire  divSqrtRawFN_io_a_isInf;
  wire  divSqrtRawFN_io_a_isZero;
  wire  divSqrtRawFN_io_a_sign;
  wire [9:0] divSqrtRawFN_io_a_sExp;
  wire [24:0] divSqrtRawFN_io_a_sig;
  wire  divSqrtRawFN_io_b_isNaN;
  wire  divSqrtRawFN_io_b_isInf;
  wire  divSqrtRawFN_io_b_isZero; 
  wire  divSqrtRawFN_io_b_sign;
  wire [9:0] divSqrtRawFN_io_b_sExp;
  wire [24:0] divSqrtRawFN_io_b_sig;
  wire [2:0] divSqrtRawFN_io_roundingMode;
  wire  divSqrtRawFN_io_rawOutValid_div;
  wire  divSqrtRawFN_io_rawOutValid_sqrt;
  wire [2:0] divSqrtRawFN_io_roundingModeOut;
  wire  divSqrtRawFN_io_invalidExc;
  wire  divSqrtRawFN_io_infiniteExc;
  wire  divSqrtRawFN_io_rawOut_isNaN;
  wire  divSqrtRawFN_io_rawOut_isInf;
  wire  divSqrtRawFN_io_rawOut_isZero;
  wire  divSqrtRawFN_io_rawOut_sign;
  wire [9:0] divSqrtRawFN_io_rawOut_sExp;
  wire [26:0] divSqrtRawFN_io_rawOut_sig;

  DivSqrtRawFN_small divSqrtRawFN (
    .clock(divSqrtRawFN_clock),
    .reset(divSqrtRawFN_reset),
    .io_inReady(divSqrtRawFN_io_inReady),
    .io_inValid(divSqrtRawFN_io_inValid),
    .io_sqrtOp(divSqrtRawFN_io_sqrtOp),
    .io_a_isNaN(divSqrtRawFN_io_a_isNaN),
    .io_a_isInf(divSqrtRawFN_io_a_isInf),
    .io_a_isZero(divSqrtRawFN_io_a_isZero),
    .io_a_sign(divSqrtRawFN_io_a_sign),
    .io_a_sExp(divSqrtRawFN_io_a_sExp),
    .io_a_sig(divSqrtRawFN_io_a_sig),
    .io_b_isNaN(divSqrtRawFN_io_b_isNaN),
    .io_b_isInf(divSqrtRawFN_io_b_isInf),
    .io_b_isZero(divSqrtRawFN_io_b_isZero),
    .io_b_sign(divSqrtRawFN_io_b_sign),
    .io_b_sExp(divSqrtRawFN_io_b_sExp),
    .io_b_sig(divSqrtRawFN_io_b_sig),
    .io_roundingMode(divSqrtRawFN_io_roundingMode),
    .io_rawOutValid_div(divSqrtRawFN_io_rawOutValid_div),
    .io_rawOutValid_sqrt(divSqrtRawFN_io_rawOutValid_sqrt),
    .io_roundingModeOut(divSqrtRawFN_io_roundingModeOut),
    .io_invalidExc(divSqrtRawFN_io_invalidExc),
    .io_infiniteExc(divSqrtRawFN_io_infiniteExc),
    .io_rawOut_isNaN(divSqrtRawFN_io_rawOut_isNaN),
    .io_rawOut_isInf(divSqrtRawFN_io_rawOut_isInf),
    .io_rawOut_isZero(divSqrtRawFN_io_rawOut_isZero),
    .io_rawOut_sign(divSqrtRawFN_io_rawOut_sign),
    .io_rawOut_sExp(divSqrtRawFN_io_rawOut_sExp),
    .io_rawOut_sig(divSqrtRawFN_io_rawOut_sig)
  );

`define MY_ASSIGNMENT
`ifdef MY_ASSIGNMENT
  assign io_inReady = divSqrtRawFN_io_inReady;
  assign io_rawOutValid_div = divSqrtRawFN_io_rawOutValid_div;
  assign io_rawOutValid_sqrt = divSqrtRawFN_io_rawOutValid_sqrt;
  assign io_roundingModeOut = divSqrtRawFN_io_roundingModeOut;
  assign io_invalidExc = divSqrtRawFN_io_invalidExc;
  assign io_infiniteExc = divSqrtRawFN_io_infiniteExc;
  assign io_rawOut_isNaN = divSqrtRawFN_io_rawOut_isNaN;
  assign io_rawOut_isInf = divSqrtRawFN_io_rawOut_isInf;
  assign io_rawOut_isZero = divSqrtRawFN_io_rawOut_isZero;
  assign io_rawOut_sign = divSqrtRawFN_io_rawOut_sign;
  assign io_rawOut_sExp = divSqrtRawFN_io_rawOut_sExp;
  assign io_rawOut_sig = divSqrtRawFN_io_rawOut_sig;
  assign divSqrtRawFN_clock = clock;
  assign divSqrtRawFN_reset = reset;
  assign divSqrtRawFN_io_inValid = io_inValid;
  assign divSqrtRawFN_io_sqrtOp = io_sqrtOp;
  assign divSqrtRawFN_io_a_isNaN = (io_a[31:30] == 2'h3) & io_a[29];
  assign divSqrtRawFN_io_a_isInf = (io_a[31:30] == 2'h3) & !io_a[29];
  assign divSqrtRawFN_io_a_isZero = io_a[31:29] == 3'h0;
  assign divSqrtRawFN_io_a_sign = io_a[32];
  assign divSqrtRawFN_io_a_sExp = {1'b0,$signed(io_a[31:23])};
  assign divSqrtRawFN_io_a_sig = {1'h0, !(io_a[31:29] == 3'h0), io_a[22:0]};
  assign divSqrtRawFN_io_b_isNaN = (io_b[31:30] == 2'h3) & io_b[29];
  assign divSqrtRawFN_io_b_isInf = (io_b[31:30] == 2'h3) & !io_b[29];
  assign divSqrtRawFN_io_b_isZero = io_b[31:29] == 3'h0;
  assign divSqrtRawFN_io_b_sign = io_b[32];
  assign divSqrtRawFN_io_b_sExp = {1'b0,$signed(io_b[31:23])};
  assign divSqrtRawFN_io_b_sig = {1'h0, !(io_b[31:29] == 3'h0), io_b[22:0]};
  assign divSqrtRawFN_io_roundingMode = io_roundingMode;

`endif // MY_ASSIGNMENT

endmodule
`endif // __DivSqrtRecFNToRaw_small
