module RoundRawFNToRecFN( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@142463.2]
  input         io_invalidExc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@142466.4]
  input         io_infiniteExc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@142466.4]
  input         io_in_isNaN, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@142466.4]
  input         io_in_isInf, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@142466.4]
  input         io_in_isZero, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@142466.4]
  input         io_in_sign, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@142466.4]
  input  [9:0]  io_in_sExp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@142466.4]
  input  [26:0] io_in_sig, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@142466.4]
  input  [2:0]  io_roundingMode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@142466.4]
  input         io_detectTininess, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@142466.4]
  output [32:0] io_out, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@142466.4]
  output [4:0]  io_exceptionFlags // @[:freechips.rocketchip.system.DefaultRV32Config.fir@142466.4]
);
  wire  roundAnyRawFNToRecFN_io_invalidExc; // @[RoundAnyRawFNToRecFN.scala 307:15:freechips.rocketchip.system.DefaultRV32Config.fir@142471.4]
  wire  roundAnyRawFNToRecFN_io_infiniteExc; // @[RoundAnyRawFNToRecFN.scala 307:15:freechips.rocketchip.system.DefaultRV32Config.fir@142471.4]
  wire  roundAnyRawFNToRecFN_io_in_isNaN; // @[RoundAnyRawFNToRecFN.scala 307:15:freechips.rocketchip.system.DefaultRV32Config.fir@142471.4]
  wire  roundAnyRawFNToRecFN_io_in_isInf; // @[RoundAnyRawFNToRecFN.scala 307:15:freechips.rocketchip.system.DefaultRV32Config.fir@142471.4]
  wire  roundAnyRawFNToRecFN_io_in_isZero; // @[RoundAnyRawFNToRecFN.scala 307:15:freechips.rocketchip.system.DefaultRV32Config.fir@142471.4]
  wire  roundAnyRawFNToRecFN_io_in_sign; // @[RoundAnyRawFNToRecFN.scala 307:15:freechips.rocketchip.system.DefaultRV32Config.fir@142471.4]
  wire [9:0] roundAnyRawFNToRecFN_io_in_sExp; // @[RoundAnyRawFNToRecFN.scala 307:15:freechips.rocketchip.system.DefaultRV32Config.fir@142471.4]
  wire [26:0] roundAnyRawFNToRecFN_io_in_sig; // @[RoundAnyRawFNToRecFN.scala 307:15:freechips.rocketchip.system.DefaultRV32Config.fir@142471.4]
  wire [2:0] roundAnyRawFNToRecFN_io_roundingMode; // @[RoundAnyRawFNToRecFN.scala 307:15:freechips.rocketchip.system.DefaultRV32Config.fir@142471.4]
  wire  roundAnyRawFNToRecFN_io_detectTininess; // @[RoundAnyRawFNToRecFN.scala 307:15:freechips.rocketchip.system.DefaultRV32Config.fir@142471.4]
  wire [32:0] roundAnyRawFNToRecFN_io_out; // @[RoundAnyRawFNToRecFN.scala 307:15:freechips.rocketchip.system.DefaultRV32Config.fir@142471.4]
  wire [4:0] roundAnyRawFNToRecFN_io_exceptionFlags; // @[RoundAnyRawFNToRecFN.scala 307:15:freechips.rocketchip.system.DefaultRV32Config.fir@142471.4]
  RoundAnyRawFNToRecFN roundAnyRawFNToRecFN ( // @[RoundAnyRawFNToRecFN.scala 307:15:freechips.rocketchip.system.DefaultRV32Config.fir@142471.4]
    .io_invalidExc(roundAnyRawFNToRecFN_io_invalidExc),
    .io_infiniteExc(roundAnyRawFNToRecFN_io_infiniteExc),
    .io_in_isNaN(roundAnyRawFNToRecFN_io_in_isNaN),
    .io_in_isInf(roundAnyRawFNToRecFN_io_in_isInf),
    .io_in_isZero(roundAnyRawFNToRecFN_io_in_isZero),
    .io_in_sign(roundAnyRawFNToRecFN_io_in_sign),
    .io_in_sExp(roundAnyRawFNToRecFN_io_in_sExp),
    .io_in_sig(roundAnyRawFNToRecFN_io_in_sig),
    .io_roundingMode(roundAnyRawFNToRecFN_io_roundingMode),
    .io_detectTininess(roundAnyRawFNToRecFN_io_detectTininess),
    .io_out(roundAnyRawFNToRecFN_io_out),
    .io_exceptionFlags(roundAnyRawFNToRecFN_io_exceptionFlags)
  );
  assign io_out = roundAnyRawFNToRecFN_io_out; // @[RoundAnyRawFNToRecFN.scala 315:23:freechips.rocketchip.system.DefaultRV32Config.fir@142480.4]
  assign io_exceptionFlags = roundAnyRawFNToRecFN_io_exceptionFlags; // @[RoundAnyRawFNToRecFN.scala 316:23:freechips.rocketchip.system.DefaultRV32Config.fir@142481.4]
  assign roundAnyRawFNToRecFN_io_invalidExc = io_invalidExc; // @[RoundAnyRawFNToRecFN.scala 310:44:freechips.rocketchip.system.DefaultRV32Config.fir@142475.4]
  assign roundAnyRawFNToRecFN_io_infiniteExc = io_infiniteExc; // @[RoundAnyRawFNToRecFN.scala 311:44:freechips.rocketchip.system.DefaultRV32Config.fir@142476.4]
  assign roundAnyRawFNToRecFN_io_in_isNaN = io_in_isNaN; // @[RoundAnyRawFNToRecFN.scala 312:44:freechips.rocketchip.system.DefaultRV32Config.fir@142477.4]
  assign roundAnyRawFNToRecFN_io_in_isInf = io_in_isInf; // @[RoundAnyRawFNToRecFN.scala 312:44:freechips.rocketchip.system.DefaultRV32Config.fir@142477.4]
  assign roundAnyRawFNToRecFN_io_in_isZero = io_in_isZero; // @[RoundAnyRawFNToRecFN.scala 312:44:freechips.rocketchip.system.DefaultRV32Config.fir@142477.4]
  assign roundAnyRawFNToRecFN_io_in_sign = io_in_sign; // @[RoundAnyRawFNToRecFN.scala 312:44:freechips.rocketchip.system.DefaultRV32Config.fir@142477.4]
  assign roundAnyRawFNToRecFN_io_in_sExp = io_in_sExp; // @[RoundAnyRawFNToRecFN.scala 312:44:freechips.rocketchip.system.DefaultRV32Config.fir@142477.4]
  assign roundAnyRawFNToRecFN_io_in_sig = io_in_sig; // @[RoundAnyRawFNToRecFN.scala 312:44:freechips.rocketchip.system.DefaultRV32Config.fir@142477.4]
  assign roundAnyRawFNToRecFN_io_roundingMode = io_roundingMode; // @[RoundAnyRawFNToRecFN.scala 313:44:freechips.rocketchip.system.DefaultRV32Config.fir@142478.4]
  assign roundAnyRawFNToRecFN_io_detectTininess = io_detectTininess; // @[RoundAnyRawFNToRecFN.scala 314:44:freechips.rocketchip.system.DefaultRV32Config.fir@142479.4]
endmodule

