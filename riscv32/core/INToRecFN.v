`include "include_module.v"
`ifdef __INToRecFN
module INToRecFN( 
  input         io_signedIn,
  input  [31:0] io_in,
  input  [2:0]  io_roundingMode,
  output [32:0] io_out,
  output [4:0]  io_exceptionFlags
);
  wire  roundAnyRawFNToRecFN_io_in_isZero;
  wire  roundAnyRawFNToRecFN_io_in_sign;
  wire [7:0] roundAnyRawFNToRecFN_io_in_sExp;
  wire [32:0] roundAnyRawFNToRecFN_io_in_sig;
  wire [2:0] roundAnyRawFNToRecFN_io_roundingMode;
  wire [32:0] roundAnyRawFNToRecFN_io_out;
  wire [4:0] roundAnyRawFNToRecFN_io_exceptionFlags;
  wire  sign;
  wire [31:0] absIn;
  wire [31:0] extAbsIn;
  wire [4:0] adjustedNormDist;
  wire [31:0] sig;

  RoundAnyRawFNToRecFN_1 roundAnyRawFNToRecFN (
    .io_in_isZero(roundAnyRawFNToRecFN_io_in_isZero),
    .io_in_sign(roundAnyRawFNToRecFN_io_in_sign),
    .io_in_sExp(roundAnyRawFNToRecFN_io_in_sExp),
    .io_in_sig(roundAnyRawFNToRecFN_io_in_sig),
    .io_roundingMode(roundAnyRawFNToRecFN_io_roundingMode),
    .io_out(roundAnyRawFNToRecFN_io_out),
    .io_exceptionFlags(roundAnyRawFNToRecFN_io_exceptionFlags)
  );

  assign sign = io_signedIn & io_in[31]; // @[rawFloatFromIN.scala 50

  assign absIn = sign ? (32'h0 - io_in) : io_in; 

  assign extAbsIn = absIn;

  assign adjustedNormDist = extAbsIn[31] ? 5'h0  // @[Mux.scala 47
			: extAbsIn[30] ? 5'h1 
			: extAbsIn[29] ? 5'h2 
			: extAbsIn[28] ? 5'h3 
			: extAbsIn[27] ? 5'h4 
			: extAbsIn[26] ? 5'h5 
			: extAbsIn[25] ? 5'h6 
			: extAbsIn[24] ? 5'h7 
			: extAbsIn[23] ? 5'h8 
			: extAbsIn[22] ? 5'h9 
			: extAbsIn[21] ? 5'ha 
			: extAbsIn[20] ? 5'hb 
			: extAbsIn[19] ? 5'hc 
			: extAbsIn[18] ? 5'hd 
			: extAbsIn[17] ? 5'he 
			: extAbsIn[16] ? 5'hf 
			: extAbsIn[15] ? 5'h10 
			: extAbsIn[14] ? 5'h11 
			: extAbsIn[13] ? 5'h12 
			: extAbsIn[12] ? 5'h13 
			: extAbsIn[11] ? 5'h14 
			: extAbsIn[10] ? 5'h15 
			: extAbsIn[9] ? 5'h16 
			: extAbsIn[8] ? 5'h17 
			: extAbsIn[7] ? 5'h18 
			: extAbsIn[6] ? 5'h19 
			: extAbsIn[5] ? 5'h1a 
			: extAbsIn[4] ? 5'h1b 
			: extAbsIn[3] ? 5'h1c 
			: extAbsIn[2] ? 5'h1d 
			: extAbsIn[1] ? 5'h1e 
			: 5'h1f;

  wire [62:0] _T_66 = {{31'd0}, extAbsIn} << adjustedNormDist; // @[rawFloatFromIN.scala 59
  assign sig = _T_66[31:0];

  assign io_out = roundAnyRawFNToRecFN_io_out; // @[INToRecFN.scala 73
  assign io_exceptionFlags = roundAnyRawFNToRecFN_io_exceptionFlags;
  assign roundAnyRawFNToRecFN_io_in_isZero = sig[31] == 1'h0;
  assign roundAnyRawFNToRecFN_io_in_sign = io_signedIn & io_in[31];
  assign roundAnyRawFNToRecFN_io_in_sExp = {1'b0,$signed({2'h2, ~ adjustedNormDist})};
  assign roundAnyRawFNToRecFN_io_in_sig = {{1'd0}, sig};
  assign roundAnyRawFNToRecFN_io_roundingMode = io_roundingMode;
endmodule
`endif // __INToRecFN

