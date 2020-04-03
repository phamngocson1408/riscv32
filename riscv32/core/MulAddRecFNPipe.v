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
  wire [48:0] mulAddResult;
  reg  postmul_regs_fromPreMul_isSigNaNAny;
  reg  postmul_regs_fromPreMul_isNaNAOrB;
  reg  postmul_regs_fromPreMul_isInfA;
  reg  postmul_regs_fromPreMul_isZeroA;
  reg  postmul_regs_fromPreMul_isInfB;
  reg  postmul_regs_fromPreMul_isZeroB;
  reg  postmul_regs_fromPreMul_signProd;
  reg  postmul_regs_fromPreMul_isNaNC;
  reg  postmul_regs_fromPreMul_isInfC;
  reg  postmul_regs_fromPreMul_isZeroC;
  reg [9:0] postmul_regs_fromPreMul_sExpSum;
  reg  postmul_regs_fromPreMul_doSubMags;
  reg  postmul_regs_fromPreMul_CIsDominant;
  reg [4:0] postmul_regs_fromPreMul_CDom_CAlignDist;
  reg [25:0] postmul_regs_fromPreMul_highAlignedSigC;
  reg  postmul_regs_fromPreMul_bit0AlignedSigC;
  reg [48:0] postmul_regs_mulAddResult;
  reg [2:0] postmul_regs_roundingMode;
  reg [2:0] roundingMode_stage0;
  reg  detectTininess_stage0;
  reg  valid_stage0;
  reg  round_regs_invalidExc;
  reg  round_regs_in_isNaN;
  reg  round_regs_in_isInf;
  reg  round_regs_in_isZero;
  reg  round_regs_in_sign;
  reg [9:0] round_regs_in_sExp;
  reg [26:0] round_regs_in_sig;
  reg [2:0] round_regs_roundingMode;
  reg  round_regs_detectTininess;

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

  assign mulAddResult = ( mulAddRecFNToRaw_preMul_io_mulAddA * mulAddRecFNToRaw_preMul_io_mulAddB) + mulAddRecFNToRaw_preMul_io_mulAddC;
  assign io_out = roundRawFNToRecFN_io_out;
  assign io_exceptionFlags = roundRawFNToRecFN_io_exceptionFlags;
  assign mulAddRecFNToRaw_preMul_io_op = io_op;
  assign mulAddRecFNToRaw_preMul_io_a = io_a;
  assign mulAddRecFNToRaw_preMul_io_b = io_b;
  assign mulAddRecFNToRaw_preMul_io_c = io_c;
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_isSigNaNAny = postmul_regs_fromPreMul_isSigNaNAny;
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_isNaNAOrB = postmul_regs_fromPreMul_isNaNAOrB;
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_isInfA = postmul_regs_fromPreMul_isInfA;
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_isZeroA = postmul_regs_fromPreMul_isZeroA;
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_isInfB = postmul_regs_fromPreMul_isInfB;
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_isZeroB = postmul_regs_fromPreMul_isZeroB;
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_signProd = postmul_regs_fromPreMul_signProd;
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_isNaNC = postmul_regs_fromPreMul_isNaNC;
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_isInfC = postmul_regs_fromPreMul_isInfC;
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_isZeroC = postmul_regs_fromPreMul_isZeroC;
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_sExpSum = postmul_regs_fromPreMul_sExpSum;
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_doSubMags = postmul_regs_fromPreMul_doSubMags;
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_CIsDominant = postmul_regs_fromPreMul_CIsDominant;
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_CDom_CAlignDist = postmul_regs_fromPreMul_CDom_CAlignDist;
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_highAlignedSigC = postmul_regs_fromPreMul_highAlignedSigC;
  assign mulAddRecFNToRaw_postMul_io_fromPreMul_bit0AlignedSigC = postmul_regs_fromPreMul_bit0AlignedSigC;
  assign mulAddRecFNToRaw_postMul_io_mulAddResult = postmul_regs_mulAddResult;
  assign mulAddRecFNToRaw_postMul_io_roundingMode = postmul_regs_roundingMode;
  assign roundRawFNToRecFN_io_invalidExc = round_regs_invalidExc;
  assign roundRawFNToRecFN_io_infiniteExc = 1'h0;
  assign roundRawFNToRecFN_io_in_isNaN = round_regs_in_isNaN;
  assign roundRawFNToRecFN_io_in_isInf = round_regs_in_isInf;
  assign roundRawFNToRecFN_io_in_isZero = round_regs_in_isZero;
  assign roundRawFNToRecFN_io_in_sign = round_regs_in_sign;
  assign roundRawFNToRecFN_io_in_sExp = round_regs_in_sExp;
  assign roundRawFNToRecFN_io_in_sig = round_regs_in_sig;
  assign roundRawFNToRecFN_io_roundingMode = round_regs_roundingMode;
  assign roundRawFNToRecFN_io_detectTininess = round_regs_detectTininess;

`define MY_ASSIGNMENT
`ifdef MY_ASSIGNMENT
always @(posedge clock) begin
	if (reset) begin
		postmul_regs_fromPreMul_isSigNaNAny <= 1'h0;
		postmul_regs_fromPreMul_isNaNAOrB <= 1'h0;
		postmul_regs_fromPreMul_isInfA <= 1'h0;
		postmul_regs_fromPreMul_isZeroA <= 1'h0;
		postmul_regs_fromPreMul_isInfB <= 1'h0;
		postmul_regs_fromPreMul_isZeroB <= 1'h0;
		postmul_regs_fromPreMul_signProd <= 1'h0;
		postmul_regs_fromPreMul_isNaNC <= 1'h0;
		postmul_regs_fromPreMul_isInfC <= 1'h0;
		postmul_regs_fromPreMul_isZeroC <= 1'h0;
		postmul_regs_fromPreMul_sExpSum <= 10'h00;
		postmul_regs_fromPreMul_doSubMags <= 1'h0;
		postmul_regs_fromPreMul_CIsDominant <= 1'h0;
		postmul_regs_fromPreMul_CDom_CAlignDist <= 5'h00;
		postmul_regs_fromPreMul_highAlignedSigC <= 26'h00;
		postmul_regs_fromPreMul_bit0AlignedSigC <= 1'h0;
		postmul_regs_mulAddResult <= 49'h00;
		postmul_regs_roundingMode <= 3'h0;
		roundingMode_stage0 <= 3'h0;
		valid_stage0 <= 1'h0;
		round_regs_invalidExc <= 1'h0;
		round_regs_in_isNaN <= 1'h0;
		round_regs_in_isInf <= 1'h0;
		round_regs_in_isZero <= 1'h0;
		round_regs_in_sign <= 1'h0;
		round_regs_in_sExp <= 10'h00;
		round_regs_in_sig <= 27'h00;
		round_regs_roundingMode <= 3'h0;
		round_regs_detectTininess <= 1'h0;
	end
	else begin
		if (io_validin) begin
			postmul_regs_fromPreMul_isSigNaNAny <= mulAddRecFNToRaw_preMul_io_toPostMul_isSigNaNAny;
			postmul_regs_fromPreMul_isNaNAOrB <= mulAddRecFNToRaw_preMul_io_toPostMul_isNaNAOrB;
			postmul_regs_fromPreMul_isInfA <= mulAddRecFNToRaw_preMul_io_toPostMul_isInfA;
			postmul_regs_fromPreMul_isZeroA <= mulAddRecFNToRaw_preMul_io_toPostMul_isZeroA;
			postmul_regs_fromPreMul_isInfB <= mulAddRecFNToRaw_preMul_io_toPostMul_isInfB;
			postmul_regs_fromPreMul_isZeroB <= mulAddRecFNToRaw_preMul_io_toPostMul_isZeroB;
			postmul_regs_fromPreMul_signProd <= mulAddRecFNToRaw_preMul_io_toPostMul_signProd;
			postmul_regs_fromPreMul_isNaNC <= mulAddRecFNToRaw_preMul_io_toPostMul_isNaNC;
			postmul_regs_fromPreMul_isInfC <= mulAddRecFNToRaw_preMul_io_toPostMul_isInfC;
			postmul_regs_fromPreMul_isZeroC <= mulAddRecFNToRaw_preMul_io_toPostMul_isZeroC;
			postmul_regs_fromPreMul_sExpSum <= mulAddRecFNToRaw_preMul_io_toPostMul_sExpSum;
			postmul_regs_fromPreMul_doSubMags <= mulAddRecFNToRaw_preMul_io_toPostMul_doSubMags;
			postmul_regs_fromPreMul_CIsDominant <= mulAddRecFNToRaw_preMul_io_toPostMul_CIsDominant;
			postmul_regs_fromPreMul_CDom_CAlignDist <= mulAddRecFNToRaw_preMul_io_toPostMul_CDom_CAlignDist;
			postmul_regs_fromPreMul_highAlignedSigC <= mulAddRecFNToRaw_preMul_io_toPostMul_highAlignedSigC;
			postmul_regs_fromPreMul_bit0AlignedSigC <= mulAddRecFNToRaw_preMul_io_toPostMul_bit0AlignedSigC;
			postmul_regs_mulAddResult <= mulAddResult;
			postmul_regs_roundingMode <= io_roundingMode;
			roundingMode_stage0 <= io_roundingMode;
		end

		detectTininess_stage0 <= io_validin | detectTininess_stage0;

		valid_stage0 <= io_validin;

		if (valid_stage0) begin
			round_regs_invalidExc <= mulAddRecFNToRaw_postMul_io_invalidExc;
			round_regs_in_isNaN <= mulAddRecFNToRaw_postMul_io_rawOut_isNaN;
			round_regs_in_isInf <= mulAddRecFNToRaw_postMul_io_rawOut_isInf;
			round_regs_in_isZero <= mulAddRecFNToRaw_postMul_io_rawOut_isZero;
			round_regs_in_sign <= mulAddRecFNToRaw_postMul_io_rawOut_sign;
			round_regs_in_sExp <= mulAddRecFNToRaw_postMul_io_rawOut_sExp;
			round_regs_in_sig <= mulAddRecFNToRaw_postMul_io_rawOut_sig;
			round_regs_roundingMode <= roundingMode_stage0;
			round_regs_detectTininess <= detectTininess_stage0;
		end
	end
end
`endif // MY_ASSIGNMENT

endmodule
`endif // __MulAddRecFNPipe
