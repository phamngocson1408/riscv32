`include "include_module.v"
`ifdef __FPToInt
module FPToInt(
  input         clock,
  input         io_in_valid,
  input         io_in_bits_ren2,
  input         io_in_bits_wflags,
  input  [2:0]  io_in_bits_rm,
  input  [1:0]  io_in_bits_typ, 
  input  [32:0] io_in_bits_in1,
  input  [32:0] io_in_bits_in2, 
  output [2:0]  io_out_bits_in_rm, 
  output [32:0] io_out_bits_in_in1, 
  output [32:0] io_out_bits_in_in2,
  output        io_out_bits_lt,
  output [31:0] io_out_bits_store, 
  output [31:0] io_out_bits_toint,
  output [4:0]  io_out_bits_exc 
);
  wire [32:0] dcmp_io_a;
  wire [32:0] dcmp_io_b;
  wire  dcmp_io_signaling;
  wire  dcmp_io_lt; 
  wire  dcmp_io_eq;
  wire [4:0] dcmp_io_exceptionFlags;
  wire [32:0] RecFNToIN_io_in;
  wire [2:0] RecFNToIN_io_roundingMode;
  wire  RecFNToIN_io_signedOut;
  wire [31:0] RecFNToIN_io_out;
  wire [2:0] RecFNToIN_io_intExceptionFlags;
  reg  in_ren2;
  reg [31:0] _RAND_0;
  reg  in_wflags;
  reg [31:0] _RAND_1;
  reg [2:0] in_rm;
  reg [31:0] _RAND_2;
  reg [1:0] in_typ;
  reg [31:0] _RAND_3;
  reg [32:0] in_in1;
  reg [63:0] _RAND_4;
  reg [32:0] in_in2;
  reg [63:0] _RAND_5;
  wire  rawIn_isZero;
  wire  rawIn_isNaN; 
  wire  rawIn_isInf;
  wire  rawIn_sign;
  wire [9:0] rawIn_sExp;
  wire [24:0] rawIn_sig;
  wire  isSubnormal;
  wire [4:0] denormShiftDist;
  wire [22:0] denormFract;
  wire [7:0] expOut;
  wire [22:0] fractOut;
  wire [31:0] store; 
  wire [2:0] code;
  wire  isNaN;
  wire  isQNaN;
  wire  isSNaN;
  wire [1:0] codeHi;
  wire  isSpecial;
  wire  isInf;
  wire  isHighSubnormalIn;
  wire  isNormal;
  wire  isSubnormal_1;
  wire  isZero;
  wire [9:0] classify_out;
  wire [32:0] toint;

  CompareRecFN dcmp ( // @[FPU.scala 428
    .io_a(dcmp_io_a),
    .io_b(dcmp_io_b),
    .io_signaling(dcmp_io_signaling),
    .io_lt(dcmp_io_lt),
    .io_eq(dcmp_io_eq),
    .io_exceptionFlags(dcmp_io_exceptionFlags)
  );

  RecFNToIN RecFNToIN ( // @[FPU.scala 460
    .io_in(RecFNToIN_io_in),
    .io_roundingMode(RecFNToIN_io_roundingMode),
    .io_signedOut(RecFNToIN_io_signedOut),
    .io_out(RecFNToIN_io_out),
    .io_intExceptionFlags(RecFNToIN_io_intExceptionFlags)
  );

  assign rawIn_isZero = in_in1[31:29] == 3'h0;

  assign rawIn_isNaN = (in_in1[31:30] == 2'h3) & in_in1[29];

  assign rawIn_isInf = (in_in1[31:30] == 2'h3) & !in_in1[29];

  assign rawIn_sign = in_in1[32]; 

  assign rawIn_sExp = {1'b0,$signed(in_in1[31:23])};

  assign rawIn_sig = {1'h0, !rawIn_isZero, in_in1[22:0]};

  assign isSubnormal = $signed(rawIn_sExp) < $signed(10'sh82);

  assign denormShiftDist = 5'h1 - rawIn_sExp[4:0]; 

  wire [23:0] _T_21 = rawIn_sig[24:1] >> denormShiftDist;
  assign denormFract = _T_21[22:0];

  assign expOut = (isSubnormal ? 8'h0 : (rawIn_sExp[7:0] - 8'h81)) 
		| ((rawIn_isNaN | rawIn_isInf) ? 8'hff : 8'h0);

  assign fractOut = isSubnormal ? denormFract 
		: rawIn_isInf ? 23'h0 
		: rawIn_sig[22:0];

  assign store = {rawIn_sign,expOut,fractOut};

  assign code = in_in1[31:29];

  assign isNaN = code == 3'h7;

  assign isQNaN = isNaN & in_in1[22];

  assign isSNaN = isNaN & !in_in1[22];

  assign codeHi = code[2:1]; 

  assign isSpecial = codeHi == 2'h3;

  assign isInf = isSpecial & !code[0];

  assign isHighSubnormalIn = in_in1[29:23] < 7'h2; 

  assign isNormal = ((codeHi == 2'h1) & !isHighSubnormalIn) | (codeHi == 2'h2);

  assign isSubnormal_1 = (code == 3'h1) | ((codeHi == 2'h1) & isHighSubnormalIn);

  assign isZero = code == 3'h0;

  assign classify_out = {isQNaN
			,isSNaN
			,(isInf & !rawIn_sign)
			,(isNormal & !rawIn_sign)
			,(isSubnormal_1 & !rawIn_sign)
			,(isZero & !rawIn_sign)
			,(isZero & rawIn_sign)
			,(isSubnormal_1 & rawIn_sign)
			,(isNormal & rawIn_sign)
			,(isInf & rawIn_sign)};

  assign toint = in_wflags ? (!in_ren2 ? {{1'd0}, RecFNToIN_io_out} : {{32'd0}, (((~ in_rm) & {{1'd0}, dcmp_io_lt,dcmp_io_eq}) != 3'h0)}) 
		: in_rm[0] ? {{23'd0}, classify_out} 
		: {{1'd0}, store};

  assign io_out_bits_in_rm = in_rm;
  assign io_out_bits_in_in1 = in_in1;
  assign io_out_bits_in_in2 = in_in2;
  assign io_out_bits_lt = dcmp_io_lt | (($signed(dcmp_io_a) < $signed(33'sh0)) & ($signed(dcmp_io_b) >= $signed(33'sh0)));
  assign io_out_bits_store = {rawIn_sign,expOut,fractOut};
  assign io_out_bits_toint = toint[31:0];
  assign io_out_bits_exc = in_wflags ? (!in_ren2 ? {(RecFNToIN_io_intExceptionFlags[2:1] != 2'h0),3'h0,RecFNToIN_io_intExceptionFlags[0]} : dcmp_io_exceptionFlags) 
				: 5'h0;
  assign dcmp_io_a = in_in1;
  assign dcmp_io_b = in_in2;
  assign dcmp_io_signaling = in_rm[1] == 1'h0;
  assign RecFNToIN_io_in = in_in1;
  assign RecFNToIN_io_roundingMode = in_rm;
  assign RecFNToIN_io_signedOut = ~ in_typ[0];

`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  in_ren2 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  in_wflags = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  in_rm = _RAND_2[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  in_typ = _RAND_3[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {2{`RANDOM}};
  in_in1 = _RAND_4[32:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {2{`RANDOM}};
  in_in2 = _RAND_5[32:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end

  always @(posedge clock) begin
    if (io_in_valid) begin
      in_ren2 <= io_in_bits_ren2;
    end
    if (io_in_valid) begin
      in_wflags <= io_in_bits_wflags;
    end
    if (io_in_valid) begin
      in_rm <= io_in_bits_rm;
    end
    if (io_in_valid) begin
      in_typ <= io_in_bits_typ;
    end
    if (io_in_valid) begin
      in_in1 <= io_in_bits_in1;
    end
    if (io_in_valid) begin
      in_in2 <= io_in_bits_in2;
    end
  end

endmodule
`endif // __FPToInt

