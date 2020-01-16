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
  wire  intAsRawFloat_sign;

  RoundAnyRawFNToRecFN_1 roundAnyRawFNToRecFN (
    .io_in_isZero(roundAnyRawFNToRecFN_io_in_isZero),
    .io_in_sign(roundAnyRawFNToRecFN_io_in_sign),
    .io_in_sExp(roundAnyRawFNToRecFN_io_in_sExp),
    .io_in_sig(roundAnyRawFNToRecFN_io_in_sig),
    .io_roundingMode(roundAnyRawFNToRecFN_io_roundingMode),
    .io_out(roundAnyRawFNToRecFN_io_out),
    .io_exceptionFlags(roundAnyRawFNToRecFN_io_exceptionFlags)
  );

`define MY_ASSIGNMENT
`ifdef MY_ASSIGNMENT
  assign intAsRawFloat_sign = io_signedIn & io_in[31];
  assign io_out = roundAnyRawFNToRecFN_io_out;
  assign io_exceptionFlags = roundAnyRawFNToRecFN_io_exceptionFlags;

  wire [31:0] _T_4 = intAsRawFloat_sign ? (32'h0 - io_in) : io_in;
  wire [4:0] _T_69 = _T_4[31] ? 5'h0 
			: _T_4[30] ? 5'h1 
			: _T_4[29] ? 5'h2 
			: _T_4[28] ? 5'h3 
			: _T_4[27] ? 5'h4 
			: _T_4[26] ? 5'h5 
			: _T_4[25] ? 5'h6 
			: _T_4[24] ? 5'h7 
			: _T_4[23] ? 5'h8 
			: _T_4[22] ? 5'h9 
			: _T_4[21] ? 5'ha 
			: _T_4[20] ? 5'hb 
			: _T_4[19] ? 5'hc 
			: _T_4[18] ? 5'hd 
			: _T_4[17] ? 5'he 
			: _T_4[16] ? 5'hf 
			: _T_4[15] ? 5'h10 
			: _T_4[14] ? 5'h11
			: _T_4[13] ? 5'h12 
			: _T_4[12] ? 5'h13
			: _T_4[11] ? 5'h14 
			: _T_4[10] ? 5'h15 
			: _T_4[9] ? 5'h16 
			: _T_4[8] ? 5'h17 
			: _T_4[7] ? 5'h18 
			: _T_4[6] ? 5'h19 
			: _T_4[5] ? 5'h1a 
			: _T_4[4] ? 5'h1b 
			: _T_4[3] ? 5'h1c 
			: _T_4[2] ? 5'h1d 
			: _T_4[1] ? 5'h1e 
			: 5'h1f;
  wire [62:0] _T_70 = {{31'd0}, _T_4} << _T_69;
  assign roundAnyRawFNToRecFN_io_in_isZero = _T_70[31] == 1'h0;
  assign roundAnyRawFNToRecFN_io_in_sign = io_signedIn & io_in[31];
  assign roundAnyRawFNToRecFN_io_in_sExp = {1'b0,$signed({2'h2, (~ _T_69)})};
  assign roundAnyRawFNToRecFN_io_in_sig = {{1'd0}, _T_70[31:0]};
  assign roundAnyRawFNToRecFN_io_roundingMode = io_roundingMode;

`endif // MY_ASSIGNMENT

endmodule

