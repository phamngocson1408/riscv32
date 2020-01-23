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
  wire  divSqrtRawFN_clock; // @[DivSqrtRecFN_small.scala 415:15:freechips.rocketchip.system.DefaultRV32Config.fir@143919.4]
  wire  divSqrtRawFN_reset; // @[DivSqrtRecFN_small.scala 415:15:freechips.rocketchip.system.DefaultRV32Config.fir@143919.4]
  wire  divSqrtRawFN_io_inReady; // @[DivSqrtRecFN_small.scala 415:15:freechips.rocketchip.system.DefaultRV32Config.fir@143919.4]
  wire  divSqrtRawFN_io_inValid; // @[DivSqrtRecFN_small.scala 415:15:freechips.rocketchip.system.DefaultRV32Config.fir@143919.4]
  wire  divSqrtRawFN_io_sqrtOp; // @[DivSqrtRecFN_small.scala 415:15:freechips.rocketchip.system.DefaultRV32Config.fir@143919.4]
  wire  divSqrtRawFN_io_a_isNaN; // @[DivSqrtRecFN_small.scala 415:15:freechips.rocketchip.system.DefaultRV32Config.fir@143919.4]
  wire  divSqrtRawFN_io_a_isInf; // @[DivSqrtRecFN_small.scala 415:15:freechips.rocketchip.system.DefaultRV32Config.fir@143919.4]
  wire  divSqrtRawFN_io_a_isZero; // @[DivSqrtRecFN_small.scala 415:15:freechips.rocketchip.system.DefaultRV32Config.fir@143919.4]
  wire  divSqrtRawFN_io_a_sign; // @[DivSqrtRecFN_small.scala 415:15:freechips.rocketchip.system.DefaultRV32Config.fir@143919.4]
  wire [9:0] divSqrtRawFN_io_a_sExp; // @[DivSqrtRecFN_small.scala 415:15:freechips.rocketchip.system.DefaultRV32Config.fir@143919.4]
  wire [24:0] divSqrtRawFN_io_a_sig; // @[DivSqrtRecFN_small.scala 415:15:freechips.rocketchip.system.DefaultRV32Config.fir@143919.4]
  wire  divSqrtRawFN_io_b_isNaN; // @[DivSqrtRecFN_small.scala 415:15:freechips.rocketchip.system.DefaultRV32Config.fir@143919.4]
  wire  divSqrtRawFN_io_b_isInf; // @[DivSqrtRecFN_small.scala 415:15:freechips.rocketchip.system.DefaultRV32Config.fir@143919.4]
  wire  divSqrtRawFN_io_b_isZero; // @[DivSqrtRecFN_small.scala 415:15:freechips.rocketchip.system.DefaultRV32Config.fir@143919.4]
  wire  divSqrtRawFN_io_b_sign; // @[DivSqrtRecFN_small.scala 415:15:freechips.rocketchip.system.DefaultRV32Config.fir@143919.4]
  wire [9:0] divSqrtRawFN_io_b_sExp; // @[DivSqrtRecFN_small.scala 415:15:freechips.rocketchip.system.DefaultRV32Config.fir@143919.4]
  wire [24:0] divSqrtRawFN_io_b_sig; // @[DivSqrtRecFN_small.scala 415:15:freechips.rocketchip.system.DefaultRV32Config.fir@143919.4]
  wire [2:0] divSqrtRawFN_io_roundingMode; // @[DivSqrtRecFN_small.scala 415:15:freechips.rocketchip.system.DefaultRV32Config.fir@143919.4]
  wire  divSqrtRawFN_io_rawOutValid_div; // @[DivSqrtRecFN_small.scala 415:15:freechips.rocketchip.system.DefaultRV32Config.fir@143919.4]
  wire  divSqrtRawFN_io_rawOutValid_sqrt; // @[DivSqrtRecFN_small.scala 415:15:freechips.rocketchip.system.DefaultRV32Config.fir@143919.4]
  wire [2:0] divSqrtRawFN_io_roundingModeOut; // @[DivSqrtRecFN_small.scala 415:15:freechips.rocketchip.system.DefaultRV32Config.fir@143919.4]
  wire  divSqrtRawFN_io_invalidExc; // @[DivSqrtRecFN_small.scala 415:15:freechips.rocketchip.system.DefaultRV32Config.fir@143919.4]
  wire  divSqrtRawFN_io_infiniteExc; // @[DivSqrtRecFN_small.scala 415:15:freechips.rocketchip.system.DefaultRV32Config.fir@143919.4]
  wire  divSqrtRawFN_io_rawOut_isNaN; // @[DivSqrtRecFN_small.scala 415:15:freechips.rocketchip.system.DefaultRV32Config.fir@143919.4]
  wire  divSqrtRawFN_io_rawOut_isInf; // @[DivSqrtRecFN_small.scala 415:15:freechips.rocketchip.system.DefaultRV32Config.fir@143919.4]
  wire  divSqrtRawFN_io_rawOut_isZero; // @[DivSqrtRecFN_small.scala 415:15:freechips.rocketchip.system.DefaultRV32Config.fir@143919.4]
  wire  divSqrtRawFN_io_rawOut_sign; // @[DivSqrtRecFN_small.scala 415:15:freechips.rocketchip.system.DefaultRV32Config.fir@143919.4]
  wire [9:0] divSqrtRawFN_io_rawOut_sExp; // @[DivSqrtRecFN_small.scala 415:15:freechips.rocketchip.system.DefaultRV32Config.fir@143919.4]
  wire [26:0] divSqrtRawFN_io_rawOut_sig; // @[DivSqrtRecFN_small.scala 415:15:freechips.rocketchip.system.DefaultRV32Config.fir@143919.4]
  wire [8:0] _T; // @[rawFloatFromRecFN.scala 50:21:freechips.rocketchip.system.DefaultRV32Config.fir@143926.4]
  wire [2:0] _T_1; // @[rawFloatFromRecFN.scala 51:29:freechips.rocketchip.system.DefaultRV32Config.fir@143927.4]
  wire  _T_2; // @[rawFloatFromRecFN.scala 51:54:freechips.rocketchip.system.DefaultRV32Config.fir@143928.4]
  wire [1:0] _T_3; // @[rawFloatFromRecFN.scala 52:29:freechips.rocketchip.system.DefaultRV32Config.fir@143929.4]
  wire  _T_4; // @[rawFloatFromRecFN.scala 52:54:freechips.rocketchip.system.DefaultRV32Config.fir@143930.4]
  wire  _T_6; // @[rawFloatFromRecFN.scala 55:41:freechips.rocketchip.system.DefaultRV32Config.fir@143933.4]
  wire  _T_9; // @[rawFloatFromRecFN.scala 56:36:freechips.rocketchip.system.DefaultRV32Config.fir@143937.4]
  wire  _T_13; // @[rawFloatFromRecFN.scala 60:39:freechips.rocketchip.system.DefaultRV32Config.fir@143945.4]
  wire [22:0] _T_14; // @[rawFloatFromRecFN.scala 60:51:freechips.rocketchip.system.DefaultRV32Config.fir@143946.4]
  wire [1:0] _T_15; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@143947.4]
  wire [8:0] _T_17; // @[rawFloatFromRecFN.scala 50:21:freechips.rocketchip.system.DefaultRV32Config.fir@143951.4]
  wire [2:0] _T_18; // @[rawFloatFromRecFN.scala 51:29:freechips.rocketchip.system.DefaultRV32Config.fir@143952.4]
  wire  _T_19; // @[rawFloatFromRecFN.scala 51:54:freechips.rocketchip.system.DefaultRV32Config.fir@143953.4]
  wire [1:0] _T_20; // @[rawFloatFromRecFN.scala 52:29:freechips.rocketchip.system.DefaultRV32Config.fir@143954.4]
  wire  _T_21; // @[rawFloatFromRecFN.scala 52:54:freechips.rocketchip.system.DefaultRV32Config.fir@143955.4]
  wire  _T_23; // @[rawFloatFromRecFN.scala 55:41:freechips.rocketchip.system.DefaultRV32Config.fir@143958.4]
  wire  _T_26; // @[rawFloatFromRecFN.scala 56:36:freechips.rocketchip.system.DefaultRV32Config.fir@143962.4]
  wire  _T_30; // @[rawFloatFromRecFN.scala 60:39:freechips.rocketchip.system.DefaultRV32Config.fir@143970.4]
  wire [22:0] _T_31; // @[rawFloatFromRecFN.scala 60:51:freechips.rocketchip.system.DefaultRV32Config.fir@143971.4]
  wire [1:0] _T_32; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@143972.4]
  DivSqrtRawFN_small divSqrtRawFN ( // @[DivSqrtRecFN_small.scala 415:15:freechips.rocketchip.system.DefaultRV32Config.fir@143919.4]
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

`ifndef MY_ASSIGNMENT
  assign io_inReady = divSqrtRawFN_io_inReady; // @[DivSqrtRecFN_small.scala 417:16:freechips.rocketchip.system.DefaultRV32Config.fir@143923.4]
  assign io_rawOutValid_div = divSqrtRawFN_io_rawOutValid_div; // @[DivSqrtRecFN_small.scala 424:25:freechips.rocketchip.system.DefaultRV32Config.fir@143977.4]
  assign io_rawOutValid_sqrt = divSqrtRawFN_io_rawOutValid_sqrt; // @[DivSqrtRecFN_small.scala 425:25:freechips.rocketchip.system.DefaultRV32Config.fir@143978.4]
  assign io_roundingModeOut = divSqrtRawFN_io_roundingModeOut; // @[DivSqrtRecFN_small.scala 426:25:freechips.rocketchip.system.DefaultRV32Config.fir@143979.4]
  assign io_invalidExc = divSqrtRawFN_io_invalidExc; // @[DivSqrtRecFN_small.scala 427:25:freechips.rocketchip.system.DefaultRV32Config.fir@143980.4]
  assign io_infiniteExc = divSqrtRawFN_io_infiniteExc; // @[DivSqrtRecFN_small.scala 428:25:freechips.rocketchip.system.DefaultRV32Config.fir@143981.4]
  assign io_rawOut_isNaN = divSqrtRawFN_io_rawOut_isNaN; // @[DivSqrtRecFN_small.scala 429:25:freechips.rocketchip.system.DefaultRV32Config.fir@143982.4]
  assign io_rawOut_isInf = divSqrtRawFN_io_rawOut_isInf; // @[DivSqrtRecFN_small.scala 429:25:freechips.rocketchip.system.DefaultRV32Config.fir@143982.4]
  assign io_rawOut_isZero = divSqrtRawFN_io_rawOut_isZero; // @[DivSqrtRecFN_small.scala 429:25:freechips.rocketchip.system.DefaultRV32Config.fir@143982.4]
  assign io_rawOut_sign = divSqrtRawFN_io_rawOut_sign; // @[DivSqrtRecFN_small.scala 429:25:freechips.rocketchip.system.DefaultRV32Config.fir@143982.4]
  assign io_rawOut_sExp = divSqrtRawFN_io_rawOut_sExp; // @[DivSqrtRecFN_small.scala 429:25:freechips.rocketchip.system.DefaultRV32Config.fir@143982.4]
  assign io_rawOut_sig = divSqrtRawFN_io_rawOut_sig; // @[DivSqrtRecFN_small.scala 429:25:freechips.rocketchip.system.DefaultRV32Config.fir@143982.4]
  assign divSqrtRawFN_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@143921.4]
  assign divSqrtRawFN_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@143922.4]
  assign divSqrtRawFN_io_inValid = io_inValid; // @[DivSqrtRecFN_small.scala 418:34:freechips.rocketchip.system.DefaultRV32Config.fir@143924.4]
  assign divSqrtRawFN_io_sqrtOp = io_sqrtOp; // @[DivSqrtRecFN_small.scala 419:34:freechips.rocketchip.system.DefaultRV32Config.fir@143925.4]
  assign divSqrtRawFN_io_a_isNaN = _T_4 & _T_6; // @[DivSqrtRecFN_small.scala 420:34:freechips.rocketchip.system.DefaultRV32Config.fir@143950.4]
  assign divSqrtRawFN_io_a_isInf = _T_4 & _T_9; // @[DivSqrtRecFN_small.scala 420:34:freechips.rocketchip.system.DefaultRV32Config.fir@143950.4]
  assign divSqrtRawFN_io_a_isZero = _T_1 == 3'h0; // @[DivSqrtRecFN_small.scala 420:34:freechips.rocketchip.system.DefaultRV32Config.fir@143950.4]
  assign divSqrtRawFN_io_a_sign = io_a[32]; // @[DivSqrtRecFN_small.scala 420:34:freechips.rocketchip.system.DefaultRV32Config.fir@143950.4]
  assign divSqrtRawFN_io_a_sExp = {1'b0,$signed(_T)}; // @[DivSqrtRecFN_small.scala 420:34:freechips.rocketchip.system.DefaultRV32Config.fir@143950.4]
  assign divSqrtRawFN_io_a_sig = {_T_15,_T_14}; // @[DivSqrtRecFN_small.scala 420:34:freechips.rocketchip.system.DefaultRV32Config.fir@143950.4]
  assign divSqrtRawFN_io_b_isNaN = _T_21 & _T_23; // @[DivSqrtRecFN_small.scala 421:34:freechips.rocketchip.system.DefaultRV32Config.fir@143975.4]
  assign divSqrtRawFN_io_b_isInf = _T_21 & _T_26; // @[DivSqrtRecFN_small.scala 421:34:freechips.rocketchip.system.DefaultRV32Config.fir@143975.4]
  assign divSqrtRawFN_io_b_isZero = _T_18 == 3'h0; // @[DivSqrtRecFN_small.scala 421:34:freechips.rocketchip.system.DefaultRV32Config.fir@143975.4]
  assign divSqrtRawFN_io_b_sign = io_b[32]; // @[DivSqrtRecFN_small.scala 421:34:freechips.rocketchip.system.DefaultRV32Config.fir@143975.4]
  assign divSqrtRawFN_io_b_sExp = {1'b0,$signed(_T_17)}; // @[DivSqrtRecFN_small.scala 421:34:freechips.rocketchip.system.DefaultRV32Config.fir@143975.4]
  assign divSqrtRawFN_io_b_sig = {_T_32,_T_31}; // @[DivSqrtRecFN_small.scala 421:34:freechips.rocketchip.system.DefaultRV32Config.fir@143975.4]
  assign divSqrtRawFN_io_roundingMode = io_roundingMode; // @[DivSqrtRecFN_small.scala 422:34:freechips.rocketchip.system.DefaultRV32Config.fir@143976.4]

`endif // MY_ASSIGNMENT

  assign _T = io_a[31:23]; // @[rawFloatFromRecFN.scala 50:21:freechips.rocketchip.system.DefaultRV32Config.fir@143926.4]
  assign _T_1 = _T[8:6]; // @[rawFloatFromRecFN.scala 51:29:freechips.rocketchip.system.DefaultRV32Config.fir@143927.4]
  assign _T_2 = _T_1 == 3'h0; // @[rawFloatFromRecFN.scala 51:54:freechips.rocketchip.system.DefaultRV32Config.fir@143928.4]
  assign _T_3 = _T[8:7]; // @[rawFloatFromRecFN.scala 52:29:freechips.rocketchip.system.DefaultRV32Config.fir@143929.4]
  assign _T_4 = _T_3 == 2'h3; // @[rawFloatFromRecFN.scala 52:54:freechips.rocketchip.system.DefaultRV32Config.fir@143930.4]
  assign _T_6 = _T[6]; // @[rawFloatFromRecFN.scala 55:41:freechips.rocketchip.system.DefaultRV32Config.fir@143933.4]
  assign _T_9 = _T_6 == 1'h0; // @[rawFloatFromRecFN.scala 56:36:freechips.rocketchip.system.DefaultRV32Config.fir@143937.4]
  assign _T_13 = _T_2 == 1'h0; // @[rawFloatFromRecFN.scala 60:39:freechips.rocketchip.system.DefaultRV32Config.fir@143945.4]
  assign _T_14 = io_a[22:0]; // @[rawFloatFromRecFN.scala 60:51:freechips.rocketchip.system.DefaultRV32Config.fir@143946.4]
  assign _T_15 = {1'h0,_T_13}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@143947.4]
  assign _T_17 = io_b[31:23]; // @[rawFloatFromRecFN.scala 50:21:freechips.rocketchip.system.DefaultRV32Config.fir@143951.4]
  assign _T_18 = _T_17[8:6]; // @[rawFloatFromRecFN.scala 51:29:freechips.rocketchip.system.DefaultRV32Config.fir@143952.4]
  assign _T_19 = _T_18 == 3'h0; // @[rawFloatFromRecFN.scala 51:54:freechips.rocketchip.system.DefaultRV32Config.fir@143953.4]
  assign _T_20 = _T_17[8:7]; // @[rawFloatFromRecFN.scala 52:29:freechips.rocketchip.system.DefaultRV32Config.fir@143954.4]
  assign _T_21 = _T_20 == 2'h3; // @[rawFloatFromRecFN.scala 52:54:freechips.rocketchip.system.DefaultRV32Config.fir@143955.4]
  assign _T_23 = _T_17[6]; // @[rawFloatFromRecFN.scala 55:41:freechips.rocketchip.system.DefaultRV32Config.fir@143958.4]
  assign _T_26 = _T_23 == 1'h0; // @[rawFloatFromRecFN.scala 56:36:freechips.rocketchip.system.DefaultRV32Config.fir@143962.4]
  assign _T_30 = _T_19 == 1'h0; // @[rawFloatFromRecFN.scala 60:39:freechips.rocketchip.system.DefaultRV32Config.fir@143970.4]
  assign _T_31 = io_b[22:0]; // @[rawFloatFromRecFN.scala 60:51:freechips.rocketchip.system.DefaultRV32Config.fir@143971.4]
  assign _T_32 = {1'h0,_T_30}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@143972.4]
endmodule
`endif // __DivSqrtRecFNToRaw_small
