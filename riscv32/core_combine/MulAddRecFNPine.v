`include "include_module.v"
`ifdef __MulAddRecFNPipe
module MulAddRecFNPipe(
  input         clock,
  input         reset,
  input         io_validin,
  input  [1:0]  io_op,
  input  [32:0] io_a,
  input  [32:0] io_b,
  input  [32:0] io_c,
  input  [2:0]  io_roundingMode,
  output [32:0] io_out,
  output [4:0]  io_exceptionFlags
);
  wire [1:0] mulAddRecFNToRaw_preMul_io_op;
  wire [32:0] mulAddRecFNToRaw_preMul_io_a;
  wire [32:0] mulAddRecFNToRaw_preMul_io_b;
  wire [32:0] mulAddRecFNToRaw_preMul_io_c;
  wire [23:0] mulAddRecFNToRaw_preMul_io_mulAddA;
  wire [23:0] mulAddRecFNToRaw_preMul_io_mulAddB;
  wire [47:0] mulAddRecFNToRaw_preMul_io_mulAddC;
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_isSigNaNAny;
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_isNaNAOrB;
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_isInfA;
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_isZeroA;
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_isInfB;
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_isZeroB;
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_signProd;
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_isNaNC;
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_isInfC;
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_isZeroC;
  wire [9:0] mulAddRecFNToRaw_preMul_io_toPostMul_sExpSum;
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_doSubMags;
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_CIsDominant;
  wire [4:0] mulAddRecFNToRaw_preMul_io_toPostMul_CDom_CAlignDist;
  wire [25:0] mulAddRecFNToRaw_preMul_io_toPostMul_highAlignedSigC;
  wire  mulAddRecFNToRaw_preMul_io_toPostMul_bit0AlignedSigC;
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_isSigNaNAny;
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_isNaNAOrB;
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_isInfA;
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_isZeroA;
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_isInfB;
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_isZeroB;
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_signProd;
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_isNaNC;
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_isInfC;
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_isZeroC;
  wire [9:0] mulAddRecFNToRaw_postMul_io_fromPreMul_sExpSum;
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_doSubMags;
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_CIsDominant;
  wire [4:0] mulAddRecFNToRaw_postMul_io_fromPreMul_CDom_CAlignDist;
  wire [25:0] mulAddRecFNToRaw_postMul_io_fromPreMul_highAlignedSigC;
  wire  mulAddRecFNToRaw_postMul_io_fromPreMul_bit0AlignedSigC;
  wire [48:0] mulAddRecFNToRaw_postMul_io_mulAddResult;
  wire [2:0] mulAddRecFNToRaw_postMul_io_roundingMode;
  wire  mulAddRecFNToRaw_postMul_io_invalidExc;
  wire  mulAddRecFNToRaw_postMul_io_rawOut_isNaN;
  wire  mulAddRecFNToRaw_postMul_io_rawOut_isInf;
  wire  mulAddRecFNToRaw_postMul_io_rawOut_isZero;
  wire  mulAddRecFNToRaw_postMul_io_rawOut_sign;
  wire [9:0] mulAddRecFNToRaw_postMul_io_rawOut_sExp;
  wire [26:0] mulAddRecFNToRaw_postMul_io_rawOut_sig;
  wire  roundRawFNToRecFN_io_invalidExc;
  wire  roundRawFNToRecFN_io_infiniteExc;
  wire  roundRawFNToRecFN_io_in_isNaN;
  wire  roundRawFNToRecFN_io_in_isInf;
  wire  roundRawFNToRecFN_io_in_isZero;
  wire  roundRawFNToRecFN_io_in_sign;
  wire [9:0] roundRawFNToRecFN_io_in_sExp;
  wire [26:0] roundRawFNToRecFN_io_in_sig;
  wire [2:0] roundRawFNToRecFN_io_roundingMode;
  wire  roundRawFNToRecFN_io_detectTininess;
  wire [32:0] roundRawFNToRecFN_io_out;
  wire [4:0] roundRawFNToRecFN_io_exceptionFlags;
  wire [47:0] _T;
  wire [48:0] mulAddResult;
  reg  _T_2_isSigNaNAny;
  reg [31:0] _RAND_0;
  reg  _T_2_isNaNAOrB;
  reg [31:0] _RAND_1;
  reg  _T_2_isInfA;
  reg [31:0] _RAND_2;
  reg  _T_2_isZeroA;
  reg [31:0] _RAND_3;
  reg  _T_2_isInfB;
  reg [31:0] _RAND_4;
  reg  _T_2_isZeroB;
  reg [31:0] _RAND_5;
  reg  _T_2_signProd;
  reg [31:0] _RAND_6;
  reg  _T_2_isNaNC;
  reg [31:0] _RAND_7;
  reg  _T_2_isInfC;
  reg [31:0] _RAND_8;
  reg  _T_2_isZeroC;
  reg [31:0] _RAND_9;
  reg [9:0] _T_2_sExpSum;
  reg [31:0] _RAND_10;
  reg  _T_2_doSubMags;
  reg [31:0] _RAND_11;
  reg  _T_2_CIsDominant;
  reg [31:0] _RAND_12;
  reg [4:0] _T_2_CDom_CAlignDist;
  reg [31:0] _RAND_13;
  reg [25:0] _T_2_highAlignedSigC;
  reg [31:0] _RAND_14;
  reg  _T_2_bit0AlignedSigC;
  reg [31:0] _RAND_15;
  reg [48:0] _T_5;
  reg [63:0] _RAND_16;
  reg [2:0] _T_8;
  reg [31:0] _RAND_17;
  reg [2:0] roundingMode_stage0;
  reg [31:0] _RAND_18;
  reg  detectTininess_stage0;
  reg [31:0] _RAND_19;
  reg  valid_stage0;
  reg [31:0] _RAND_20;
  reg  _T_20;
  reg [31:0] _RAND_21;
  reg  _T_23_isNaN;
  reg [31:0] _RAND_22;
  reg  _T_23_isInf;
  reg [31:0] _RAND_23;
  reg  _T_23_isZero;
  reg [31:0] _RAND_24;
  reg  _T_23_sign;
  reg [31:0] _RAND_25;
  reg [9:0] _T_23_sExp;
  reg [31:0] _RAND_26;
  reg [26:0] _T_23_sig;
  reg [31:0] _RAND_27;
  reg [2:0] _T_26;
  reg [31:0] _RAND_28;
  reg  _T_29;
  reg [31:0] _RAND_29;

  MulAddRecFNToRaw_preMul mulAddRecFNToRaw_preMul (
    .io_op(mulAddRecFNToRaw_preMul_io_op),
    .io_a(mulAddRecFNToRaw_preMul_io_a),
    .io_b(mulAddRecFNToRaw_preMul_io_b),
    .io_c(mulAddRecFNToRaw_preMul_io_c),
    .io_mulAddA(mulAddRecFNToRaw_preMul_io_mulAddA),
    .io_mulAddB(mulAddRecFNToRaw_preMul_io_mulAddB),
    .io_mulAddC(mulAddRecFNToRaw_preMul_io_mulAddC),
    .io_toPostMul_isSigNaNAny(mulAddRecFNToRaw_preMul_io_toPostMul_isSigNaNAny),
    .io_toPostMul_isNaNAOrB(mulAddRecFNToRaw_preMul_io_toPostMul_isNaNAOrB),
    .io_toPostMul_isInfA(mulAddRecFNToRaw_preMul_io_toPostMul_isInfA),
    .io_toPostMul_isZeroA(mulAddRecFNToRaw_preMul_io_toPostMul_isZeroA),
    .io_toPostMul_isInfB(mulAddRecFNToRaw_preMul_io_toPostMul_isInfB),
    .io_toPostMul_isZeroB(mulAddRecFNToRaw_preMul_io_toPostMul_isZeroB),
    .io_toPostMul_signProd(mulAddRecFNToRaw_preMul_io_toPostMul_signProd),
    .io_toPostMul_isNaNC(mulAddRecFNToRaw_preMul_io_toPostMul_isNaNC),
    .io_toPostMul_isInfC(mulAddRecFNToRaw_preMul_io_toPostMul_isInfC),
    .io_toPostMul_isZeroC(mulAddRecFNToRaw_preMul_io_toPostMul_isZeroC),
    .io_toPostMul_sExpSum(mulAddRecFNToRaw_preMul_io_toPostMul_sExpSum),
    .io_toPostMul_doSubMags(mulAddRecFNToRaw_preMul_io_toPostMul_doSubMags),
    .io_toPostMul_CIsDominant(mulAddRecFNToRaw_preMul_io_toPostMul_CIsDominant),
    .io_toPostMul_CDom_CAlignDist(mulAddRecFNToRaw_preMul_io_toPostMul_CDom_CAlignDist),
    .io_toPostMul_highAlignedSigC(mulAddRecFNToRaw_preMul_io_toPostMul_highAlignedSigC),
    .io_toPostMul_bit0AlignedSigC(mulAddRecFNToRaw_preMul_io_toPostMul_bit0AlignedSigC)
  );

  MulAddRecFNToRaw_postMul mulAddRecFNToRaw_postMul (
    .io_fromPreMul_isSigNaNAny(mulAddRecFNToRaw_postMul_io_fromPreMul_isSigNaNAny),
    .io_fromPreMul_isNaNAOrB(mulAddRecFNToRaw_postMul_io_fromPreMul_isNaNAOrB),
    .io_fromPreMul_isInfA(mulAddRecFNToRaw_postMul_io_fromPreMul_isInfA),
    .io_fromPreMul_isZeroA(mulAddRecFNToRaw_postMul_io_fromPreMul_isZeroA),
    .io_fromPreMul_isInfB(mulAddRecFNToRaw_postMul_io_fromPreMul_isInfB),
    .io_fromPreMul_isZeroB(mulAddRecFNToRaw_postMul_io_fromPreMul_isZeroB),
    .io_fromPreMul_signProd(mulAddRecFNToRaw_postMul_io_fromPreMul_signProd),
    .io_fromPreMul_isNaNC(mulAddRecFNToRaw_postMul_io_fromPreMul_isNaNC),
    .io_fromPreMul_isInfC(mulAddRecFNToRaw_postMul_io_fromPreMul_isInfC),
    .io_fromPreMul_isZeroC(mulAddRecFNToRaw_postMul_io_fromPreMul_isZeroC),
    .io_fromPreMul_sExpSum(mulAddRecFNToRaw_postMul_io_fromPreMul_sExpSum),
    .io_fromPreMul_doSubMags(mulAddRecFNToRaw_postMul_io_fromPreMul_doSubMags),
    .io_fromPreMul_CIsDominant(mulAddRecFNToRaw_postMul_io_fromPreMul_CIsDominant),
    .io_fromPreMul_CDom_CAlignDist(mulAddRecFNToRaw_postMul_io_fromPreMul_CDom_CAlignDist),
    .io_fromPreMul_highAlignedSigC(mulAddRecFNToRaw_postMul_io_fromPreMul_highAlignedSigC),
    .io_fromPreMul_bit0AlignedSigC(mulAddRecFNToRaw_postMul_io_fromPreMul_bit0AlignedSigC),
    .io_mulAddResult(mulAddRecFNToRaw_postMul_io_mulAddResult),
    .io_roundingMode(mulAddRecFNToRaw_postMul_io_roundingMode),
    .io_invalidExc(mulAddRecFNToRaw_postMul_io_invalidExc),
    .io_rawOut_isNaN(mulAddRecFNToRaw_postMul_io_rawOut_isNaN),
    .io_rawOut_isInf(mulAddRecFNToRaw_postMul_io_rawOut_isInf),
    .io_rawOut_isZero(mulAddRecFNToRaw_postMul_io_rawOut_isZero),
    .io_rawOut_sign(mulAddRecFNToRaw_postMul_io_rawOut_sign),
    .io_rawOut_sExp(mulAddRecFNToRaw_postMul_io_rawOut_sExp),
    .io_rawOut_sig(mulAddRecFNToRaw_postMul_io_rawOut_sig)
  );

  RoundRawFNToRecFN roundRawFNToRecFN (
    .io_invalidExc(roundRawFNToRecFN_io_invalidExc),
    .io_infiniteExc(roundRawFNToRecFN_io_infiniteExc),
    .io_in_isNaN(roundRawFNToRecFN_io_in_isNaN),
    .io_in_isInf(roundRawFNToRecFN_io_in_isInf),
    .io_in_isZero(roundRawFNToRecFN_io_in_isZero),
    .io_in_sign(roundRawFNToRecFN_io_in_sign),
    .io_in_sExp(roundRawFNToRecFN_io_in_sExp),
    .io_in_sig(roundRawFNToRecFN_io_in_sig),
    .io_roundingMode(roundRawFNToRecFN_io_roundingMode),
    .io_detectTininess(roundRawFNToRecFN_io_detectTininess),
    .io_out(roundRawFNToRecFN_io_out),
    .io_exceptionFlags(roundRawFNToRecFN_io_exceptionFlags)
  );

  assign _T = mulAddRecFNToRaw_preMul_io_mulAddA * mulAddRecFNToRaw_preMul_io_mulAddB;
  assign mulAddResult = _T + mulAddRecFNToRaw_preMul_io_mulAddC;
  assign io_out = roundRawFNToRecFN_io_out;
  assign io_exceptionFlags = roundRawFNToRecFN_io_exceptionFlags;
  assign mulAddRecFNToRaw_preMul_io_op = io_op;
  assign mulAddRecFNToRaw_preMul_io_a = io_a;
  assign mulAddRecFNToRaw_preMul_io_b = io_b;
  assign mulAddRecFNToRaw_preMul_io_c = io_c;
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_isSigNaNAny = _T_2_isSigNaNAny;
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_isNaNAOrB = _T_2_isNaNAOrB;
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_isInfA = _T_2_isInfA;
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_isZeroA = _T_2_isZeroA;
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_isInfB = _T_2_isInfB;
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_isZeroB = _T_2_isZeroB;
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_signProd = _T_2_signProd;
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_isNaNC = _T_2_isNaNC;
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_isInfC = _T_2_isInfC;
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_isZeroC = _T_2_isZeroC;
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_sExpSum = _T_2_sExpSum;
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_doSubMags = _T_2_doSubMags;
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_CIsDominant = _T_2_CIsDominant;
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_CDom_CAlignDist = _T_2_CDom_CAlignDist;
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_highAlignedSigC = _T_2_highAlignedSigC;
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_bit0AlignedSigC = _T_2_bit0AlignedSigC;
  assign mulAddRecFNToRaw_postMul_io_mulAddResult = _T_5;
  assign mulAddRecFNToRaw_postMul_io_roundingMode = _T_8;
  assign roundRawFNToRecFN_io_invalidExc = _T_20;
  assign roundRawFNToRecFN_io_infiniteExc = 1'h0;
  assign roundRawFNToRecFN_io_in_isNaN = _T_23_isNaN;
  assign roundRawFNToRecFN_io_in_isInf = _T_23_isInf;
  assign roundRawFNToRecFN_io_in_isZero = _T_23_isZero;
  assign roundRawFNToRecFN_io_in_sign = _T_23_sign;
  assign roundRawFNToRecFN_io_in_sExp = _T_23_sExp;
  assign roundRawFNToRecFN_io_in_sig = _T_23_sig;
  assign roundRawFNToRecFN_io_roundingMode = _T_26;
  assign roundRawFNToRecFN_io_detectTininess = _T_29;

`define MY_ASSIGNMENT
`ifdef MY_ASSIGNMENT
always @(posedge clock) begin
	if (reset) begin
		_T_2_isSigNaNAny <= 1'h0;
		_T_2_isNaNAOrB <= 1'h0;
		_T_2_isInfA <= 1'h0;
		_T_2_isZeroA <= 1'h0;
		_T_2_isInfB <= 1'h0;
		_T_2_isZeroB <= 1'h0;
		_T_2_signProd <= 1'h0;
		_T_2_isNaNC <= 1'h0;
		_T_2_isInfC <= 1'h0;
		_T_2_isZeroC <= 1'h0;
		_T_2_sExpSum <= 10'h00;
		_T_2_doSubMags <= 1'h0;
		_T_2_CIsDominant <= 1'h0;
		_T_2_CDom_CAlignDist <= 5'h00;
		_T_2_highAlignedSigC <= 26'h00;
		_T_2_bit0AlignedSigC <= 1'h0;
		_T_5 <= 49'h00;
		_T_8 <= 3'h0;
		roundingMode_stage0 <= 3'h0;
		valid_stage0 <= 1'h0;
		_T_20 <= 1'h0;
		_T_23_isNaN <= 1'h0;
		_T_23_isInf <= 1'h0;
		_T_23_isZero <= 1'h0;
		_T_23_sign <= 1'h0;
		_T_23_sExp <= 10'h00;
		_T_23_sig <= 27'h00;
		_T_26 <= 3'h0;
		_T_29 <= 1'h0;
	end
	else begin
		if (io_validin) begin
			_T_2_isSigNaNAny <= mulAddRecFNToRaw_preMul_io_toPostMul_isSigNaNAny;
			_T_2_isNaNAOrB <= mulAddRecFNToRaw_preMul_io_toPostMul_isNaNAOrB;
			_T_2_isInfA <= mulAddRecFNToRaw_preMul_io_toPostMul_isInfA;
			_T_2_isZeroA <= mulAddRecFNToRaw_preMul_io_toPostMul_isZeroA;
			_T_2_isInfB <= mulAddRecFNToRaw_preMul_io_toPostMul_isInfB;
			_T_2_isZeroB <= mulAddRecFNToRaw_preMul_io_toPostMul_isZeroB;
			_T_2_signProd <= mulAddRecFNToRaw_preMul_io_toPostMul_signProd;
			_T_2_isNaNC <= mulAddRecFNToRaw_preMul_io_toPostMul_isNaNC;
			_T_2_isInfC <= mulAddRecFNToRaw_preMul_io_toPostMul_isInfC;
			_T_2_isZeroC <= mulAddRecFNToRaw_preMul_io_toPostMul_isZeroC;
			_T_2_sExpSum <= mulAddRecFNToRaw_preMul_io_toPostMul_sExpSum;
			_T_2_doSubMags <= mulAddRecFNToRaw_preMul_io_toPostMul_doSubMags;
			_T_2_CIsDominant <= mulAddRecFNToRaw_preMul_io_toPostMul_CIsDominant;
			_T_2_CDom_CAlignDist <= mulAddRecFNToRaw_preMul_io_toPostMul_CDom_CAlignDist;
			_T_2_highAlignedSigC <= mulAddRecFNToRaw_preMul_io_toPostMul_highAlignedSigC;
			_T_2_bit0AlignedSigC <= mulAddRecFNToRaw_preMul_io_toPostMul_bit0AlignedSigC;
			_T_5 <= mulAddResult;
			_T_8 <= io_roundingMode;
			roundingMode_stage0 <= io_roundingMode;
		end

		detectTininess_stage0 <= io_validin | detectTininess_stage0;

		valid_stage0 <= io_validin;

		if (valid_stage0) begin
			_T_20 <= mulAddRecFNToRaw_postMul_io_invalidExc;
			_T_23_isNaN <= mulAddRecFNToRaw_postMul_io_rawOut_isNaN;
			_T_23_isInf <= mulAddRecFNToRaw_postMul_io_rawOut_isInf;
			_T_23_isZero <= mulAddRecFNToRaw_postMul_io_rawOut_isZero;
			_T_23_sign <= mulAddRecFNToRaw_postMul_io_rawOut_sign;
			_T_23_sExp <= mulAddRecFNToRaw_postMul_io_rawOut_sExp;
			_T_23_sig <= mulAddRecFNToRaw_postMul_io_rawOut_sig;
			_T_26 <= roundingMode_stage0;
			_T_29 <= detectTininess_stage0;
		end
	end
end
`endif // MY_ASSIGNMENT

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
  _T_2_isSigNaNAny = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_2_isNaNAOrB = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_2_isInfA = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_2_isZeroA = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_2_isInfB = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_2_isZeroB = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_2_signProd = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_2_isNaNC = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_2_isInfC = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_2_isZeroC = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_2_sExpSum = _RAND_10[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_2_doSubMags = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  _T_2_CIsDominant = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  _T_2_CDom_CAlignDist = _RAND_13[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  _T_2_highAlignedSigC = _RAND_14[25:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  _T_2_bit0AlignedSigC = _RAND_15[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {2{`RANDOM}};
  _T_5 = _RAND_16[48:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  _T_8 = _RAND_17[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  roundingMode_stage0 = _RAND_18[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  detectTininess_stage0 = _RAND_19[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  valid_stage0 = _RAND_20[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  _T_20 = _RAND_21[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  _T_23_isNaN = _RAND_22[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  _T_23_isInf = _RAND_23[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  _T_23_isZero = _RAND_24[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  _T_23_sign = _RAND_25[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  _T_23_sExp = _RAND_26[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  _T_23_sig = _RAND_27[26:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  _T_26 = _RAND_28[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  _T_29 = _RAND_29[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
`ifndef MY_ASSIGNMENT
  always @(posedge clock) begin
    if (io_validin) begin
      _T_2_isSigNaNAny <= mulAddRecFNToRaw_preMul_io_toPostMul_isSigNaNAny;
    end
    if (io_validin) begin
      _T_2_isNaNAOrB <= mulAddRecFNToRaw_preMul_io_toPostMul_isNaNAOrB;
    end
    if (io_validin) begin
      _T_2_isInfA <= mulAddRecFNToRaw_preMul_io_toPostMul_isInfA;
    end
    if (io_validin) begin
      _T_2_isZeroA <= mulAddRecFNToRaw_preMul_io_toPostMul_isZeroA;
    end
    if (io_validin) begin
      _T_2_isInfB <= mulAddRecFNToRaw_preMul_io_toPostMul_isInfB;
    end
    if (io_validin) begin
      _T_2_isZeroB <= mulAddRecFNToRaw_preMul_io_toPostMul_isZeroB;
    end
    if (io_validin) begin
      _T_2_signProd <= mulAddRecFNToRaw_preMul_io_toPostMul_signProd;
    end
    if (io_validin) begin
      _T_2_isNaNC <= mulAddRecFNToRaw_preMul_io_toPostMul_isNaNC;
    end
    if (io_validin) begin
      _T_2_isInfC <= mulAddRecFNToRaw_preMul_io_toPostMul_isInfC;
    end
    if (io_validin) begin
      _T_2_isZeroC <= mulAddRecFNToRaw_preMul_io_toPostMul_isZeroC;
    end
    if (io_validin) begin
      _T_2_sExpSum <= mulAddRecFNToRaw_preMul_io_toPostMul_sExpSum;
    end
    if (io_validin) begin
      _T_2_doSubMags <= mulAddRecFNToRaw_preMul_io_toPostMul_doSubMags;
    end
    if (io_validin) begin
      _T_2_CIsDominant <= mulAddRecFNToRaw_preMul_io_toPostMul_CIsDominant;
    end
    if (io_validin) begin
      _T_2_CDom_CAlignDist <= mulAddRecFNToRaw_preMul_io_toPostMul_CDom_CAlignDist;
    end
    if (io_validin) begin
      _T_2_highAlignedSigC <= mulAddRecFNToRaw_preMul_io_toPostMul_highAlignedSigC;
    end
    if (io_validin) begin
      _T_2_bit0AlignedSigC <= mulAddRecFNToRaw_preMul_io_toPostMul_bit0AlignedSigC;
    end
    if (io_validin) begin
      _T_5 <= mulAddResult;
    end
    if (io_validin) begin
      _T_8 <= io_roundingMode;
    end
    if (io_validin) begin
      roundingMode_stage0 <= io_roundingMode;
    end
    detectTininess_stage0 <= io_validin | detectTininess_stage0;
    if (reset) begin
      valid_stage0 <= 1'h0;
    end else begin
      valid_stage0 <= io_validin;
    end
    if (valid_stage0) begin
      _T_20 <= mulAddRecFNToRaw_postMul_io_invalidExc;
    end
    if (valid_stage0) begin
      _T_23_isNaN <= mulAddRecFNToRaw_postMul_io_rawOut_isNaN;
    end
    if (valid_stage0) begin
      _T_23_isInf <= mulAddRecFNToRaw_postMul_io_rawOut_isInf;
    end
    if (valid_stage0) begin
      _T_23_isZero <= mulAddRecFNToRaw_postMul_io_rawOut_isZero;
    end
    if (valid_stage0) begin
      _T_23_sign <= mulAddRecFNToRaw_postMul_io_rawOut_sign;
    end
    if (valid_stage0) begin
      _T_23_sExp <= mulAddRecFNToRaw_postMul_io_rawOut_sExp;
    end
    if (valid_stage0) begin
      _T_23_sig <= mulAddRecFNToRaw_postMul_io_rawOut_sig;
    end
    if (valid_stage0) begin
      _T_26 <= roundingMode_stage0;
    end
    if (valid_stage0) begin
      _T_29 <= detectTininess_stage0;
    end
  end
`endif // MY_ASSIGNMENT
endmodule
`endif // __MulAddRecFNPipe
