module RoundAnyRawFNToRecFN(
  input         io_invalidExc,
  input         io_infiniteExc,
  input         io_in_isNaN,
  input         io_in_isInf,
  input         io_in_isZero,
  input         io_in_sign,
  input  [9:0]  io_in_sExp,
  input  [26:0] io_in_sig,
  input  [2:0]  io_roundingMode,
  input         io_detectTininess,
  output [32:0] io_out,
  output [4:0]  io_exceptionFlags
);
  wire [8:0] my_lowMask_io_in;
  wire [24:0] my_lowMask_io_out;
  wire  roundingMode_near_even;
  wire  roundingMode_min;
  wire  roundingMode_max;
  wire  roundingMode_near_maxMag;
  wire  roundingMode_odd; 
  wire  roundMagUp;
  wire  doShiftSigDown1;
  wire [26:0] roundMask;
  wire [26:0] shiftedRoundMask;
  wire [26:0] roundPosMask;
  wire  roundPosBit;
  wire  anyRoundExtra; 
  wire  anyRound; 
  wire  roundIncr; 
  wire [25:0] roundedSig;
  wire [2:0] _T_30;
  wire [10:0] sRoundedExp;
  wire [8:0] common_expOut;
  wire [22:0] common_fractOut;
  wire  common_overflow;
  wire  common_totalUnderflow;
  wire  unboundedRange_roundPosBit;
  wire  unboundedRange_anyRound; 
  wire  unboundedRange_roundIncr;
  wire  roundCarry;
  wire  common_underflow;
  wire  common_inexact;
  wire  isNaNOut;
  wire  notNaN_isSpecialInfOut;
  wire  commonCase;
  wire  overflow;
  wire  underflow;
  wire  inexact;
  wire  overflow_roundMagUp;
  wire  pegMinNonzeroMagOut;
  wire  pegMaxFiniteMagOut;
  wire  notNaN_isInfOut;
  wire  signOut;
  wire [8:0] expOut;
  wire [22:0] fractOut;

  my_lowMask my_lowMask ( 
    .io_in(my_lowMask_io_in),
    .io_out(my_lowMask_io_out)
  );

parameter round_near_even   = 3'b000;
parameter round_minMag      = 3'b001;
parameter round_min         = 3'b010;
parameter round_max         = 3'b011;
parameter round_near_maxMag = 3'b100;
parameter round_odd         = 3'b110;

  assign roundingMode_near_even = io_roundingMode == round_near_even;
  assign roundingMode_min = io_roundingMode == round_min;
  assign roundingMode_max = io_roundingMode == round_max;
  assign roundingMode_near_maxMag = io_roundingMode == round_near_maxMag;
  assign roundingMode_odd = io_roundingMode == round_odd; 

  assign roundMagUp = (roundingMode_min & io_in_sign) 
			| (roundingMode_max & (~io_in_sign));

  assign doShiftSigDown1 = io_in_sig[26];

  assign roundMask = {(my_lowMask_io_out | {{24'd0}, doShiftSigDown1}),2'h3};

  assign shiftedRoundMask = {1'h0,roundMask[26:1]}; 

  assign roundPosMask = (~shiftedRoundMask) & roundMask;

  assign roundPosBit = (io_in_sig & roundPosMask) != 27'h0;

  assign anyRoundExtra = (io_in_sig & shiftedRoundMask) != 27'h0; 

  assign anyRound = roundPosBit | anyRoundExtra;

  assign roundIncr = ((roundingMode_near_even | roundingMode_near_maxMag) & roundPosBit) 
			| (roundMagUp & anyRound);

  assign roundedSig = roundIncr ? (((io_in_sig[26:2] | roundMask[26:2]) + 25'h1) 
					& (~((roundingMode_near_even & roundPosBit & (~anyRoundExtra)) ? roundMask[26:1] : 26'h0))) 
			: ({{1'd0}, (io_in_sig[26:2] & (~roundMask[26:2]))} | ((roundingMode_odd & anyRound) ? roundPosMask[26:1] : 26'h0));

  assign _T_30 = {1'b0,$signed(roundedSig[25:24])};
  assign sRoundedExp = $signed(io_in_sExp) + $signed({{7{_T_30[2]}},_T_30});

  assign common_expOut = sRoundedExp[8:0];

  assign common_fractOut = doShiftSigDown1 ? roundedSig[23:1] : roundedSig[22:0];

  assign common_overflow = $signed(sRoundedExp[10:7]) >= 4'sh3;

  assign common_totalUnderflow = $signed(sRoundedExp) < 11'sh6b;

  assign unboundedRange_roundPosBit = doShiftSigDown1 ? io_in_sig[2] : io_in_sig[1];

  assign unboundedRange_anyRound = (doShiftSigDown1 & io_in_sig[2]) | (io_in_sig[1:0] != 2'h0);

  assign unboundedRange_roundIncr = ((roundingMode_near_even | roundingMode_near_maxMag) & unboundedRange_roundPosBit) | (roundMagUp & unboundedRange_anyRound);

  assign roundCarry = doShiftSigDown1 ? roundedSig[25] : roundedSig[24];

  assign common_underflow = common_totalUnderflow 
			| ((anyRound & ($signed(io_in_sExp[9:8]) <= 2'sh0) 
			  & (doShiftSigDown1 ? roundMask[3] : roundMask[2])) 
			 & (~(io_detectTininess
			  & (~(doShiftSigDown1 ? roundMask[4] : roundMask[3])) 
			  & roundCarry & roundPosBit 
			  & unboundedRange_roundIncr))); 

  assign common_inexact = common_totalUnderflow | anyRound;

  assign isNaNOut = io_invalidExc | io_in_isNaN;

  assign notNaN_isSpecialInfOut = io_infiniteExc | io_in_isInf; 

  assign commonCase = (~isNaNOut) & (~notNaN_isSpecialInfOut) & (~io_in_isZero);

  assign overflow = commonCase & common_overflow;

  assign underflow = commonCase & common_underflow;

  assign inexact = overflow | (commonCase & common_inexact);

  assign overflow_roundMagUp = roundingMode_near_even | roundingMode_near_maxMag | roundMagUp;

  assign pegMinNonzeroMagOut = (commonCase & common_totalUnderflow) & (roundMagUp | roundingMode_odd); 

  assign pegMaxFiniteMagOut = overflow & (~overflow_roundMagUp);

  assign notNaN_isInfOut = notNaN_isSpecialInfOut | (overflow & overflow_roundMagUp); 

  assign signOut = isNaNOut ? 1'h0 : io_in_sign;

  assign expOut = (common_expOut 
			& (~((io_in_isZero | common_totalUnderflow) ? 9'h1c0 : 9'h0)) 
			& (~(pegMinNonzeroMagOut ? 9'h194 : 9'h0)) 
			& (~(pegMaxFiniteMagOut ? 9'h80 : 9'h0)) 
			& (~(notNaN_isInfOut ? 9'h40 : 9'h0))) 
		| (pegMinNonzeroMagOut ? 9'h6b : 9'h0) 
		| (pegMaxFiniteMagOut ? 9'h17f : 9'h0) 
		| (notNaN_isInfOut ? 9'h180 : 9'h0) 
		| (isNaNOut ? 9'h1c0 : 9'h0);

  assign fractOut = (!(isNaNOut | io_in_isZero | common_totalUnderflow) ? common_fractOut 
			: isNaNOut ? 23'h400000 
			: 23'h0) 
		| (pegMaxFiniteMagOut ? 23'h7fffff : 23'h0); 

  assign io_out = {signOut,expOut,fractOut};

  assign io_exceptionFlags = {io_invalidExc,io_infiniteExc,overflow,underflow,inexact};

  assign my_lowMask_io_in = io_in_sExp[8:0];

endmodule

module my_lowMask(	// @[primitives.scala
  input  [8:0]  io_in,
  output [24:0] io_out
);
  wire [8:0] in_inv; 
  wire  msb;
  wire [7:0] lsbs;
  wire  msb_1;
  wire [6:0] lsbs_1;
  wire  msb_2;
  wire [5:0] lsbs_2;
  wire [64:0] shift;
  wire [15:0] res;
  wire [15:0] res_1;
  wire [15:0] res_2;
  wire [15:0] res_3;
  wire [15:0] res_4;
  wire [21:0] my_lowMask_1;
  wire [21:0] my_lowMask_3;
  wire [2:0] my_lowMask_2;
  wire [2:0] my_lowMask_4;
  wire [24:0] my_lowMask_2_1;

  assign in_inv = ~io_in; // @[primitives.scala
  assign msb = in_inv[8];
  assign lsbs = in_inv[7:0];
  assign msb_1 = lsbs[7];
  assign lsbs_1 = lsbs[6:0];
  assign msb_2 = lsbs_1[6];
  assign lsbs_2 = lsbs_1[5:0];
  assign shift = -65'sh10000000000000000 >>> lsbs_2;

  assign res = shift[57:42]; // @[Bitwise.scala
  assign res_1 = {{8'd0}, res[15:8]} | ({res[7:0], 8'h0} & 16'hff00);
  assign res_2 = ({{4'd0}, res_1[15:4]} & 16'hf0f) | ({res_1[11:0], 4'h0} & 16'hf0f0);
  assign res_3 = ({{2'd0}, res_2[15:2]} & 16'h3333) | ({res_2[13:0], 2'h0} & 16'hcccc); 
  assign res_4 = ({{1'd0}, res_3[15:1]} & 16'h5555) | ({res_3[14:0], 1'h0} & 16'haaaa);

  assign my_lowMask_1 = {res_4,shift[58],shift[59],shift[60],shift[61],shift[62],shift[63]}; // @[Cat.scala

  assign my_lowMask_3 = ~(msb_2 ? 22'h0 : (~my_lowMask_1)); // @[primitives.scala
  assign my_lowMask_2 = {shift[0],shift[1],shift[2]};
  assign my_lowMask_4 = msb_2 ? my_lowMask_2 : 3'h0;
  assign my_lowMask_2_1 = msb_1 ? {my_lowMask_3,3'h7} : {{22'd0}, my_lowMask_4}; // @[primitives.scala 

  assign io_out = msb ? my_lowMask_2_1 : 25'h0; 

endmodule

