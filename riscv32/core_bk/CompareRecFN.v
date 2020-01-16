module CompareRecFN(
  input  [32:0] io_a,
  input  [32:0] io_b,
  input         io_signaling,
  output        io_lt,
  output        io_eq,
  output [4:0]  io_exceptionFlags
);
  wire  rawA_isZero;
  wire  rawA_isNaN;
  wire  rawA_isInf;
  wire  rawA_sign;
  wire [9:0] rawA_sExp;
  wire [24:0] rawA_sig;
  wire  rawB_isZero;
  wire  rawB_isNaN;
  wire  rawB_isInf;
  wire  rawB_sign;
  wire [9:0] rawB_sExp;
  wire [24:0] rawB_sig;
  wire  ordered;
  wire  bothInfs;
  wire  bothZeros;
  wire  eqExps;
  wire  common_ltMags;
  wire  common_eqMags;
  wire  ordered_lt;
  wire  ordered_eq;
  wire  invalid;

`define MY_ASSIGNMENT
`ifdef MY_ASSIGNMENT
  assign rawA_isZero = io_a[31:29] == 3'h0;
  assign rawA_isNaN = (io_a[31:30] == 2'h3) & io_a[29];
  assign rawA_isInf = (io_a[31:30] == 2'h3) & !io_a[29];
  assign rawA_sign = io_a[32];
  assign rawA_sExp = {1'b0,$signed(io_a[31:23])};
  assign rawA_sig = {1'h0, !rawA_isZero, io_a[22:0]};
  assign rawB_isZero = io_b[31:29] == 3'h0;
  assign rawB_isNaN = (io_b[31:30] == 2'h3) & io_b[29];
  assign rawB_isInf = (io_b[31:30] == 2'h3) & !io_b[29];
  assign rawB_sign = io_b[32];
  assign rawB_sExp = {1'b0,$signed(io_b[31:23])};
  assign rawB_sig = {1'h0, !rawB_isZero, io_b[22:0]};
  assign ordered = !rawA_isNaN & !rawB_isNaN;
  assign bothInfs = rawA_isInf & rawB_isInf;
  assign bothZeros = rawA_isZero & rawB_isZero;
  assign eqExps = $signed(rawA_sExp) == $signed(rawB_sExp);
  assign common_ltMags = ($signed(rawA_sExp) < $signed(rawB_sExp)) | (eqExps & (rawA_sig < rawB_sig));
  assign common_eqMags = eqExps & (rawA_sig == rawB_sig);
  assign ordered_lt = !bothZeros & ((rawA_sign & !rawB_sign) | (!bothInfs & ((rawA_sign & !common_ltMags & !common_eqMags) | (!rawB_sign & common_ltMags))));
  assign ordered_eq = bothZeros | ((rawA_sign == rawB_sign) & (bothInfs | common_eqMags));
  assign invalid = (rawA_isNaN & !rawA_sig[22]) 
		| (rawB_isNaN & !rawB_sig[22]) 
		| (io_signaling & !ordered)
		;
  assign io_lt = ordered & ordered_lt;
  assign io_eq = ordered & ordered_eq;
  assign io_exceptionFlags = {invalid,4'h0};

`endif // MY_ASSIGNMENT

endmodule

