module DivSqrtRawFN_small(
  input         clock,
  input         reset,
  output        io_inReady,
  input         io_inValid,
  input         io_sqrtOp,
  input         io_a_isNaN,
  input         io_a_isInf,
  input         io_a_isZero,
  input         io_a_sign,
  input  [9:0]  io_a_sExp,
  input  [24:0] io_a_sig,
  input         io_b_isNaN,
  input         io_b_isInf,
  input         io_b_isZero,
  input         io_b_sign,
  input  [9:0]  io_b_sExp,
  input  [24:0] io_b_sig,
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
  reg [4:0] cycleNum;
  reg  sqrtOp_Z;
  reg  majorExc_Z;
  reg  isNaN_Z;
  reg  isInf_Z;
  reg  isZero_Z;
  reg  sign_Z;
  reg [9:0] sExp_Z;
  reg [22:0] fractB_Z;
  reg [2:0] roundingMode_Z;
  reg [25:0] rem_Z;
  reg  notZeroRem_Z;
  reg [25:0] sigX_Z;
  wire  notSigNaNIn_invalidExc_S_div;
  wire  notSigNaNIn_invalidExc_S_sqrt;
  wire  sign_S;
  wire  specialCaseA_S;
  wire  specialCaseB_S;
  wire  normalCase_S_div;
  wire  normalCase_S_sqrt;
  wire  normalCase_S;
  wire [10:0] sExpQuot_S_div;
  wire [9:0] sSatExpQuot_S_div;
  wire  evenSqrt_S;
  wire  oddSqrt_S;
  wire  idle;
  wire  inReady;
  wire  entering;
  wire  entering_normalCase;
  wire  skipCycle2;
  wire [26:0] rem;
  wire [29:0] bitMask;
  wire [29:0] trialTerm;
  wire [30:0] trialRem;
  wire  newBit;
  wire  rawOutValid;

`define MY_ASSIGNMENT
`ifdef MY_ASSIGNMENT
  assign notSigNaNIn_invalidExc_S_div = (io_a_isZero & io_b_isZero) | (io_a_isInf & io_b_isInf);
  assign notSigNaNIn_invalidExc_S_sqrt = !io_a_isNaN & !io_a_isZero & io_a_sign;
  assign sign_S = io_a_sign ^ (!io_sqrtOp & io_b_sign);
  assign specialCaseA_S = io_a_isNaN | io_a_isInf | io_a_isZero;
  assign specialCaseB_S = io_b_isNaN | io_b_isInf | io_b_isZero;
  assign normalCase_S_div = !specialCaseA_S & !specialCaseB_S;
  assign normalCase_S_sqrt = !specialCaseA_S & !io_a_sign;
  assign normalCase_S = io_sqrtOp ? normalCase_S_sqrt : normalCase_S_div;
  wire [8:0] _T_39 = $signed({io_b_sExp[8], ~ io_b_sExp[7:0]});
  assign sExpQuot_S_div = $signed(io_a_sExp) + $signed({{1{_T_39[8]}},_T_39});
  wire [3:0] _T_42 = ($signed(11'sh1c0) <= $signed(sExpQuot_S_div)) ? 4'h6 : sExpQuot_S_div[9:6];
  assign sSatExpQuot_S_div = $signed({_T_42, sExpQuot_S_div[5:0]});
  assign evenSqrt_S = io_sqrtOp & !io_a_sExp[0];
  assign oddSqrt_S = io_sqrtOp & io_a_sExp[0];
  assign idle = cycleNum == 5'h0;
  assign inReady = cycleNum <= 5'h1;
  assign entering = inReady & io_inValid;
  assign entering_normalCase = entering & normalCase_S;
  assign skipCycle2 = (cycleNum == 5'h3) & sigX_Z[25];
  wire [25:0] _T_80 = (inReady & !oddSqrt_S) ? {io_a_sig, 1'h0} : 26'h0;
  wire [1:0] _T_84 = io_a_sig[23:22] - 2'h1;
  wire [26:0] _T_88 = (inReady & oddSqrt_S) ? {_T_84, io_a_sig[21:0], 3'h0} : 27'h0;
  wire [26:0] _T_92 = !inReady ? {rem_Z, 1'h0} : 27'h0;
  assign rem = {{1'd0}, _T_80} | _T_88 | _T_92;
  wire [31:0] _T_93 = 32'h1 << cycleNum;
  assign bitMask = _T_93[31:2];
  wire [25:0] _T_97 = (inReady & !io_sqrtOp) ? {io_b_sig, 1'h0} : 26'h0;
  wire [24:0] _T_99 = (inReady & evenSqrt_S) ? 25'h1000000 : 25'h0;
  wire [25:0] _T_102 = (inReady & oddSqrt_S) ? 26'h2800000 : 26'h0;
  wire [24:0] _T_109 = (!inReady & !sqrtOp_Z) ? {1'h1, fractB_Z, 1'h0} : 25'h0;
  wire [25:0] _T_110 = _T_97 | {{1'd0}, _T_99} | _T_102 | {{1'd0}, _T_109};
  wire [29:0] _T_115 = (!inReady & sqrtOp_Z) ? ({{3'd0}, sigX_Z, 1'h0} | bitMask) : 30'h0;
  assign trialTerm = {{4'd0}, _T_110} | _T_115;
  wire [30:0] _T_119 = $signed({4'b0,$signed(rem)}) - $signed({1'b0,$signed(trialTerm)});
  assign trialRem = $signed(_T_119);
  assign newBit = $signed(31'sh0) <= $signed(trialRem);
  assign rawOutValid = cycleNum == 5'h1;
  assign io_inReady = cycleNum <= 5'h1;
  assign io_rawOutValid_div = rawOutValid & !sqrtOp_Z;
  assign io_rawOutValid_sqrt = rawOutValid & sqrtOp_Z;
  assign io_roundingModeOut = roundingMode_Z;
  assign io_invalidExc = majorExc_Z & isNaN_Z;
  assign io_infiniteExc = majorExc_Z & !isNaN_Z;
  assign io_rawOut_isNaN = isNaN_Z;
  assign io_rawOut_isInf = isInf_Z;
  assign io_rawOut_isZero = isZero_Z;
  assign io_rawOut_sign = sign_Z;
  assign io_rawOut_sExp = sExp_Z;
  assign io_rawOut_sig = {sigX_Z, 1'h0} | {{26'd0}, notZeroRem_Z};


  wire [4:0] _T_56 = io_a_sExp[0] ? 5'h18 : 5'h19;
  wire [4:0] _T_57 = io_sqrtOp ? _T_56 : 5'h1a;
  wire [4:0] _T_58 = entering_normalCase ? _T_57 : 5'h0;
  wire [4:0] _T_65 = (!idle & !skipCycle2) ? (cycleNum - 5'h1) : 5'h0;
  wire [30:0] _T_123 = newBit ? $unsigned(trialRem) : {{4'd0}, rem};
  wire [30:0] _GEN_10 = (entering_normalCase | (cycleNum > 5'h2)) ? _T_123 : {{5'd0}, rem_Z};
  wire [25:0] _T_131 = (inReady & !io_sqrtOp) ? {newBit, 25'h0} : 26'h0;
  wire [24:0] _T_133 = (inReady & io_sqrtOp) ? 25'h1000000 : 25'h0;
  wire [23:0] _T_137 = (inReady & oddSqrt_S) ? {newBit, 23'h0} : 24'h0;
  wire [25:0] _T_138 = _T_131 
		| {{1'd0}, _T_133} 
		| {{2'd0}, _T_137};
  wire [29:0] _T_141 = !inReady ? ({{4'd0}, sigX_Z} | bitMask) : 30'h0;
  wire [29:0] _GEN_12 = (entering_normalCase | (!inReady & newBit)) ? ({{4'd0}, _T_138} | _T_141) : {{4'd0}, sigX_Z};

always @(posedge clock) begin
	if (reset) begin
		cycleNum <= 5'h0;
		sqrtOp_Z <= 1'h0;
		majorExc_Z <= 1'h0;
        	isNaN_Z <= 1'h0;
        	isInf_Z <= 1'h0;
        	isZero_Z <= 1'h0;
		sign_Z <= 1'h0;
		sExp_Z <= 10'h000;
		roundingMode_Z <= 3'h0;
		fractB_Z <= 23'h00;
		rem_Z <= 26'h00;
		notZeroRem_Z <= 1'h0;
		sigX_Z <= 26'h00;
	end 
	else begin
	 	if (!idle | io_inValid) begin
	 		cycleNum <= {{4'd0}, (entering & !normalCase_S)} | _T_58 | _T_65 | {{4'd0}, (!idle & skipCycle2)};
	 	end
		if (entering) begin
			sqrtOp_Z <= io_sqrtOp;
			if (io_sqrtOp) begin
				majorExc_Z <= (io_a_isNaN & !io_a_sig[22]) | notSigNaNIn_invalidExc_S_sqrt;
        			isNaN_Z <= io_a_isNaN | notSigNaNIn_invalidExc_S_sqrt;
        			isInf_Z <= io_a_isInf;
        			isZero_Z <= io_a_isZero;
			end
			else begin
				majorExc_Z <= ((io_a_isNaN & !io_a_sig[22]) | (io_b_isNaN & !io_b_sig[22]) | notSigNaNIn_invalidExc_S_div) | (!io_a_isNaN & !io_a_isInf & io_b_isZero);
        			isNaN_Z <= io_a_isNaN | io_b_isNaN | notSigNaNIn_invalidExc_S_div;
        			isInf_Z <= io_a_isInf | io_b_isZero;
        			isZero_Z <= io_a_isZero | io_b_isInf;
			end
			sign_Z <= sign_S;
			if (entering_normalCase) begin
				if (io_sqrtOp) begin
					sExp_Z <= $signed(io_a_sExp[9:1]) + $signed(9'sh80);
				end
				else begin
					sExp_Z <= sSatExpQuot_S_div;
				end
				roundingMode_Z <= io_roundingMode;
			end
			if (entering_normalCase & !io_sqrtOp) begin
				fractB_Z <= io_b_sig[22:0];
			end
			rem_Z <= _GEN_10[25:0];
			if (entering_normalCase | (!inReady & newBit)) begin
				notZeroRem_Z <= $signed(trialRem) != $signed(31'sh0);
			end
			sigX_Z <= _GEN_12[25:0];
		end
	end
end
`endif // MY_ASSIGNMENT

endmodule

