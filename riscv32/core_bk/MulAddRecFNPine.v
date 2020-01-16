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
  reg  _T_2_isNaNAOrB;
  reg  _T_2_isInfA;
  reg  _T_2_isZeroA;
  reg  _T_2_isInfB;
  reg  _T_2_isZeroB;
  reg  _T_2_signProd;
  reg  _T_2_isNaNC;
  reg  _T_2_isInfC;
  reg  _T_2_isZeroC;
  reg [9:0] _T_2_sExpSum;
  reg  _T_2_doSubMags;
  reg  _T_2_CIsDominant;
  reg [4:0] _T_2_CDom_CAlignDist;
  reg [25:0] _T_2_highAlignedSigC;
  reg  _T_2_bit0AlignedSigC;
  reg [48:0] _T_5;
  reg [2:0] _T_8;
  reg [2:0] roundingMode_stage0;
  reg  detectTininess_stage0;
  reg  valid_stage0;
  reg  _T_20;
  reg  _T_23_isNaN;
  reg  _T_23_isInf;
  reg  _T_23_isZero;
  reg  _T_23_sign;
  reg [9:0] _T_23_sExp;
  reg [26:0] _T_23_sig;
  reg [2:0] _T_26;
  reg  _T_29;

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

endmodule

