module RecFNToIN(
  input  [32:0] io_in,
  input  [2:0]  io_roundingMode,
  input         io_signedOut,
  output [31:0] io_out,
  output [2:0]  io_intExceptionFlags 
);
  wire [8:0] _T; // @[rawFloatFromRecFN.scala 50:21:freechips.rocketchip.system.DefaultRV32Config.fir@142823.4]
  wire [2:0] _T_1; // @[rawFloatFromRecFN.scala 51:29:freechips.rocketchip.system.DefaultRV32Config.fir@142824.4]
  wire  rawIn_isZero; // @[rawFloatFromRecFN.scala 51:54:freechips.rocketchip.system.DefaultRV32Config.fir@142825.4]
  wire [1:0] _T_3; // @[rawFloatFromRecFN.scala 52:29:freechips.rocketchip.system.DefaultRV32Config.fir@142826.4]
  wire  _T_4; // @[rawFloatFromRecFN.scala 52:54:freechips.rocketchip.system.DefaultRV32Config.fir@142827.4]
  wire  _T_5; // @[rawFloatFromRecFN.scala 55:41:freechips.rocketchip.system.DefaultRV32Config.fir@142830.4]
  wire  rawIn_isNaN; // @[rawFloatFromRecFN.scala 55:33:freechips.rocketchip.system.DefaultRV32Config.fir@142831.4]
  wire  _T_8; // @[rawFloatFromRecFN.scala 56:36:freechips.rocketchip.system.DefaultRV32Config.fir@142834.4]
  wire  rawIn_isInf; // @[rawFloatFromRecFN.scala 56:33:freechips.rocketchip.system.DefaultRV32Config.fir@142835.4]
  wire  rawIn_sign; // @[rawFloatFromRecFN.scala 58:25:freechips.rocketchip.system.DefaultRV32Config.fir@142838.4]
  wire [9:0] rawIn_sExp; // @[rawFloatFromRecFN.scala 59:27:freechips.rocketchip.system.DefaultRV32Config.fir@142840.4]
  wire  _T_12; // @[rawFloatFromRecFN.scala 60:39:freechips.rocketchip.system.DefaultRV32Config.fir@142842.4]
  wire [22:0] _T_13; // @[rawFloatFromRecFN.scala 60:51:freechips.rocketchip.system.DefaultRV32Config.fir@142843.4]
  wire [24:0] rawIn_sig; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@142845.4]
  wire  magGeOne; // @[RecFNToIN.scala 58:30:freechips.rocketchip.system.DefaultRV32Config.fir@142847.4]
  wire [7:0] posExp; // @[RecFNToIN.scala 59:28:freechips.rocketchip.system.DefaultRV32Config.fir@142848.4]
  wire  _T_16; // @[RecFNToIN.scala 60:27:freechips.rocketchip.system.DefaultRV32Config.fir@142849.4]
  wire  _T_17; // @[RecFNToIN.scala 60:47:freechips.rocketchip.system.DefaultRV32Config.fir@142850.4]
  wire  magJustBelowOne; // @[RecFNToIN.scala 60:37:freechips.rocketchip.system.DefaultRV32Config.fir@142851.4]
  wire  roundingMode_near_even; // @[RecFNToIN.scala 64:53:freechips.rocketchip.system.DefaultRV32Config.fir@142852.4]
  wire  roundingMode_min; // @[RecFNToIN.scala 66:53:freechips.rocketchip.system.DefaultRV32Config.fir@142854.4]
  wire  roundingMode_max; // @[RecFNToIN.scala 67:53:freechips.rocketchip.system.DefaultRV32Config.fir@142855.4]
  wire  roundingMode_near_maxMag; // @[RecFNToIN.scala 68:53:freechips.rocketchip.system.DefaultRV32Config.fir@142856.4]
  wire  roundingMode_odd; // @[RecFNToIN.scala 69:53:freechips.rocketchip.system.DefaultRV32Config.fir@142857.4]
  wire [22:0] _T_18; // @[RecFNToIN.scala 80:32:freechips.rocketchip.system.DefaultRV32Config.fir@142858.4]
  wire [23:0] _T_19; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@142859.4]
  wire [4:0] _T_20; // @[RecFNToIN.scala 82:27:freechips.rocketchip.system.DefaultRV32Config.fir@142860.4]
  wire [4:0] _T_21; // @[RecFNToIN.scala 81:16:freechips.rocketchip.system.DefaultRV32Config.fir@142861.4]
  wire [54:0] _GEN_0; // @[RecFNToIN.scala 80:50:freechips.rocketchip.system.DefaultRV32Config.fir@142862.4]
  wire [54:0] shiftedSig; // @[RecFNToIN.scala 80:50:freechips.rocketchip.system.DefaultRV32Config.fir@142862.4]
  wire [32:0] _T_22; // @[RecFNToIN.scala 86:23:freechips.rocketchip.system.DefaultRV32Config.fir@142863.4]
  wire [21:0] _T_23; // @[RecFNToIN.scala 86:51:freechips.rocketchip.system.DefaultRV32Config.fir@142864.4]
  wire  _T_24; // @[RecFNToIN.scala 86:69:freechips.rocketchip.system.DefaultRV32Config.fir@142865.4]
  wire [33:0] alignedSig; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@142866.4]
  wire [31:0] unroundedInt; // @[RecFNToIN.scala 87:54:freechips.rocketchip.system.DefaultRV32Config.fir@142867.4]
  wire [1:0] _T_26; // @[RecFNToIN.scala 89:50:freechips.rocketchip.system.DefaultRV32Config.fir@142869.4]
  wire  _T_27; // @[RecFNToIN.scala 89:57:freechips.rocketchip.system.DefaultRV32Config.fir@142870.4]
  wire  common_inexact; // @[RecFNToIN.scala 89:29:freechips.rocketchip.system.DefaultRV32Config.fir@142872.4]
  wire [1:0] _T_29; // @[RecFNToIN.scala 91:39:freechips.rocketchip.system.DefaultRV32Config.fir@142873.4]
  wire  _T_30; // @[RecFNToIN.scala 91:46:freechips.rocketchip.system.DefaultRV32Config.fir@142874.4]
  wire  _T_32; // @[RecFNToIN.scala 91:71:freechips.rocketchip.system.DefaultRV32Config.fir@142876.4]
  wire  _T_33; // @[RecFNToIN.scala 91:51:freechips.rocketchip.system.DefaultRV32Config.fir@142877.4]
  wire  _T_34; // @[RecFNToIN.scala 91:25:freechips.rocketchip.system.DefaultRV32Config.fir@142878.4]
  wire  _T_37; // @[RecFNToIN.scala 92:26:freechips.rocketchip.system.DefaultRV32Config.fir@142881.4]
  wire  roundIncr_near_even; // @[RecFNToIN.scala 91:78:freechips.rocketchip.system.DefaultRV32Config.fir@142882.4]
  wire  _T_38; // @[RecFNToIN.scala 93:56:freechips.rocketchip.system.DefaultRV32Config.fir@142883.4]
  wire  _T_39; // @[RecFNToIN.scala 93:43:freechips.rocketchip.system.DefaultRV32Config.fir@142884.4]
  wire  roundIncr_near_maxMag; // @[RecFNToIN.scala 93:61:freechips.rocketchip.system.DefaultRV32Config.fir@142885.4]
  wire  _T_40; // @[RecFNToIN.scala 95:35:freechips.rocketchip.system.DefaultRV32Config.fir@142886.4]
  wire  _T_41; // @[RecFNToIN.scala 96:35:freechips.rocketchip.system.DefaultRV32Config.fir@142887.4]
  wire  _T_42; // @[RecFNToIN.scala 95:61:freechips.rocketchip.system.DefaultRV32Config.fir@142888.4]
  wire  _T_43; // @[RecFNToIN.scala 97:28:freechips.rocketchip.system.DefaultRV32Config.fir@142889.4]
  wire  _T_44; // @[RecFNToIN.scala 98:26:freechips.rocketchip.system.DefaultRV32Config.fir@142890.4]
  wire  _T_45; // @[RecFNToIN.scala 97:49:freechips.rocketchip.system.DefaultRV32Config.fir@142891.4]
  wire  _T_46; // @[RecFNToIN.scala 96:61:freechips.rocketchip.system.DefaultRV32Config.fir@142892.4]
  wire  _T_47; // @[RecFNToIN.scala 99:31:freechips.rocketchip.system.DefaultRV32Config.fir@142893.4]
  wire  _T_48; // @[RecFNToIN.scala 99:43:freechips.rocketchip.system.DefaultRV32Config.fir@142894.4]
  wire  _T_49; // @[RecFNToIN.scala 99:27:freechips.rocketchip.system.DefaultRV32Config.fir@142895.4]
  wire  roundIncr; // @[RecFNToIN.scala 98:46:freechips.rocketchip.system.DefaultRV32Config.fir@142896.4]
  wire [31:0] _T_50; // @[RecFNToIN.scala 100:45:freechips.rocketchip.system.DefaultRV32Config.fir@142897.4]
  wire [31:0] complUnroundedInt; // @[RecFNToIN.scala 100:32:freechips.rocketchip.system.DefaultRV32Config.fir@142898.4]
  wire  _T_51; // @[RecFNToIN.scala 102:23:freechips.rocketchip.system.DefaultRV32Config.fir@142899.4]
  wire [31:0] _T_53; // @[RecFNToIN.scala 103:31:freechips.rocketchip.system.DefaultRV32Config.fir@142901.4]
  wire [31:0] _T_54; // @[RecFNToIN.scala 102:12:freechips.rocketchip.system.DefaultRV32Config.fir@142902.4]
  wire  _T_55; // @[RecFNToIN.scala 105:31:freechips.rocketchip.system.DefaultRV32Config.fir@142903.4]
  wire [31:0] _GEN_1; // @[RecFNToIN.scala 105:11:freechips.rocketchip.system.DefaultRV32Config.fir@142904.4]
  wire [31:0] roundedInt; // @[RecFNToIN.scala 105:11:freechips.rocketchip.system.DefaultRV32Config.fir@142904.4]
  wire  magGeOne_atOverflowEdge; // @[RecFNToIN.scala 107:43:freechips.rocketchip.system.DefaultRV32Config.fir@142905.4]
  wire [29:0] _T_56; // @[RecFNToIN.scala 110:38:freechips.rocketchip.system.DefaultRV32Config.fir@142906.4]
  wire  _T_57; // @[RecFNToIN.scala 110:56:freechips.rocketchip.system.DefaultRV32Config.fir@142907.4]
  wire  roundCarryBut2; // @[RecFNToIN.scala 110:61:freechips.rocketchip.system.DefaultRV32Config.fir@142908.4]
  wire  _T_58; // @[RecFNToIN.scala 113:21:freechips.rocketchip.system.DefaultRV32Config.fir@142909.4]
  wire [30:0] _T_59; // @[RecFNToIN.scala 117:42:freechips.rocketchip.system.DefaultRV32Config.fir@142910.4]
  wire  _T_60; // @[RecFNToIN.scala 117:60:freechips.rocketchip.system.DefaultRV32Config.fir@142911.4]
  wire  _T_61; // @[RecFNToIN.scala 117:64:freechips.rocketchip.system.DefaultRV32Config.fir@142912.4]
  wire  _T_62; // @[RecFNToIN.scala 116:49:freechips.rocketchip.system.DefaultRV32Config.fir@142913.4]
  wire  _T_63; // @[RecFNToIN.scala 119:38:freechips.rocketchip.system.DefaultRV32Config.fir@142914.4]
  wire  _T_64; // @[RecFNToIN.scala 119:62:freechips.rocketchip.system.DefaultRV32Config.fir@142915.4]
  wire  _T_65; // @[RecFNToIN.scala 118:49:freechips.rocketchip.system.DefaultRV32Config.fir@142916.4]
  wire  _T_66; // @[RecFNToIN.scala 115:24:freechips.rocketchip.system.DefaultRV32Config.fir@142917.4]
  wire  _T_67; // @[RecFNToIN.scala 123:42:freechips.rocketchip.system.DefaultRV32Config.fir@142918.4]
  wire  _T_68; // @[RecFNToIN.scala 122:50:freechips.rocketchip.system.DefaultRV32Config.fir@142919.4]
  wire  _T_69; // @[RecFNToIN.scala 123:57:freechips.rocketchip.system.DefaultRV32Config.fir@142920.4]
  wire  _T_70; // @[RecFNToIN.scala 121:32:freechips.rocketchip.system.DefaultRV32Config.fir@142921.4]
  wire  _T_71; // @[RecFNToIN.scala 114:20:freechips.rocketchip.system.DefaultRV32Config.fir@142922.4]
  wire  _T_72; // @[RecFNToIN.scala 113:40:freechips.rocketchip.system.DefaultRV32Config.fir@142923.4]
  wire  _T_73; // @[RecFNToIN.scala 125:13:freechips.rocketchip.system.DefaultRV32Config.fir@142924.4]
  wire  _T_74; // @[RecFNToIN.scala 125:27:freechips.rocketchip.system.DefaultRV32Config.fir@142925.4]
  wire  _T_75; // @[RecFNToIN.scala 125:41:freechips.rocketchip.system.DefaultRV32Config.fir@142926.4]
  wire  common_overflow; // @[RecFNToIN.scala 112:12:freechips.rocketchip.system.DefaultRV32Config.fir@142927.4]
  wire  invalidExc; // @[RecFNToIN.scala 130:34:freechips.rocketchip.system.DefaultRV32Config.fir@142928.4]
  wire  _T_76; // @[RecFNToIN.scala 131:20:freechips.rocketchip.system.DefaultRV32Config.fir@142929.4]
  wire  overflow; // @[RecFNToIN.scala 131:32:freechips.rocketchip.system.DefaultRV32Config.fir@142930.4]
  wire  _T_78; // @[RecFNToIN.scala 132:35:freechips.rocketchip.system.DefaultRV32Config.fir@142932.4]
  wire  _T_79; // @[RecFNToIN.scala 132:32:freechips.rocketchip.system.DefaultRV32Config.fir@142933.4]
  wire  inexact; // @[RecFNToIN.scala 132:52:freechips.rocketchip.system.DefaultRV32Config.fir@142934.4]
  wire  _T_80; // @[RecFNToIN.scala 134:19:freechips.rocketchip.system.DefaultRV32Config.fir@142935.4]
  wire  excSign; // @[RecFNToIN.scala 134:32:freechips.rocketchip.system.DefaultRV32Config.fir@142936.4]
  wire  _T_81; // @[RecFNToIN.scala 136:27:freechips.rocketchip.system.DefaultRV32Config.fir@142937.4]
  wire [31:0] _T_82; // @[RecFNToIN.scala 136:12:freechips.rocketchip.system.DefaultRV32Config.fir@142938.4]
  wire  _T_83; // @[RecFNToIN.scala 140:13:freechips.rocketchip.system.DefaultRV32Config.fir@142939.4]
  wire [30:0] _T_84; // @[RecFNToIN.scala 140:12:freechips.rocketchip.system.DefaultRV32Config.fir@142940.4]
  wire [31:0] _GEN_2; // @[RecFNToIN.scala 139:11:freechips.rocketchip.system.DefaultRV32Config.fir@142941.4]
  wire [31:0] excOut; // @[RecFNToIN.scala 139:11:freechips.rocketchip.system.DefaultRV32Config.fir@142941.4]
  wire  _T_85; // @[RecFNToIN.scala 142:30:freechips.rocketchip.system.DefaultRV32Config.fir@142942.4]
  wire [1:0] _T_87; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@142945.4]

`define MY_ASSIGNMENT
`ifdef MY_ASSIGNMENT
  assign rawIn_isZero = io_in[31:29] == 3'h0;
  assign rawIn_isNaN = (io_in[31:30] == 2'h3) & io_in[29];
  assign rawIn_isInf = (io_in[31:30] == 2'h3) & !io_in[29];
  assign rawIn_sign = io_in[32];
  assign rawIn_sExp = {1'b0, $signed(io_in[31:23])};
  assign rawIn_sig = {1'h0, !rawIn_isZero, io_in[22:0]};
  assign magGeOne = rawIn_sExp[8];
  assign posExp = rawIn_sExp[7:0];
  assign magJustBelowOne = !magGeOne & (posExp == 8'hff);
  assign roundingMode_near_even = io_roundingMode == 3'h0;
  assign roundingMode_min = io_roundingMode == 3'h2;
  assign roundingMode_max = io_roundingMode == 3'h3;
  assign roundingMode_near_maxMag = io_roundingMode == 3'h4;
  assign roundingMode_odd = io_roundingMode == 3'h6;
  assign _T_21 = magGeOne ? rawIn_sExp[4:0] : 5'h0;
  assign shiftedSig = {{31'd0}, magGeOne, rawIn_sig[22:0]} << _T_21;
  assign alignedSig = {shiftedSig[54:22], (shiftedSig[21:0] != 22'h0)};
  assign unroundedInt = alignedSig[33:2];
  assign common_inexact = magGeOne ? (alignedSig[1:0] != 2'h0) : !rawIn_isZero;
  assign roundIncr_near_even = (magGeOne & ((alignedSig[2:1] == 2'h3) | (alignedSig[1:0] == 2'h3))) 
				| (magJustBelowOne & (alignedSig[1:0] != 2'h0));
  assign roundIncr_near_maxMag = (magGeOne & alignedSig[1]) | magJustBelowOne;
  assign roundIncr = (roundingMode_near_even & roundIncr_near_even) 
			| (roundingMode_near_maxMag & roundIncr_near_maxMag) 
			| ((roundingMode_min | roundingMode_odd) & (rawIn_sign & common_inexact)) 
			| (roundingMode_max & !rawIn_sign & common_inexact);
  assign complUnroundedInt = rawIn_sign ? (~ unroundedInt) : unroundedInt;
  assign _T_54 = (roundIncr ^ rawIn_sign) ? (complUnroundedInt + 32'h1) : complUnroundedInt;
  assign roundedInt = _T_54 | {{31'd0}, (roundingMode_odd & common_inexact)};
  assign magGeOne_atOverflowEdge = posExp == 8'h1f;
  assign roundCarryBut2 = (unroundedInt[29:0] == 30'h3fffffff) & roundIncr;
  assign _T_66 = rawIn_sign ? (magGeOne_atOverflowEdge & ((unroundedInt[30:0] != 31'h0) | roundIncr)) : (magGeOne_atOverflowEdge | ((posExp == 8'h1e) & roundCarryBut2));
  assign _T_71 = io_signedOut ? _T_66 : (rawIn_sign | (magGeOne_atOverflowEdge & unroundedInt[30] & roundCarryBut2));
  assign common_overflow = magGeOne ? ((posExp >= 8'h20) | _T_71) : (!io_signedOut & rawIn_sign & roundIncr);
  assign invalidExc = rawIn_isNaN | rawIn_isInf;
  assign overflow = !invalidExc & common_overflow;
  assign inexact = !invalidExc & !common_overflow & common_inexact;
  assign excSign = !rawIn_isNaN & rawIn_sign;
  assign _T_82 = (io_signedOut == excSign) ? 32'h80000000 : 32'h0;
  assign _T_84 = !excSign ? 31'h7fffffff : 31'h0;
  assign excOut = _T_82 | {{1'd0}, _T_84};
  assign io_out = (invalidExc | common_overflow) ? excOut : roundedInt;
  assign io_intExceptionFlags = {invalidExc, overflow, inexact};

`endif // MY_ASSIGNMENT

`ifndef MY_ASSIGNMENT
  assign rawIn_isZero = _T_1 == 3'h0; // @[rawFloatFromRecFN.scala 51:54:freechips.rocketchip.system.DefaultRV32Config.fir@142825.4]
  assign rawIn_isNaN = _T_4 & _T_5; // @[rawFloatFromRecFN.scala 55:33:freechips.rocketchip.system.DefaultRV32Config.fir@142831.4]
  assign rawIn_isInf = _T_4 & _T_8; // @[rawFloatFromRecFN.scala 56:33:freechips.rocketchip.system.DefaultRV32Config.fir@142835.4]
  assign rawIn_sign = io_in[32]; // @[rawFloatFromRecFN.scala 58:25:freechips.rocketchip.system.DefaultRV32Config.fir@142838.4]
  assign rawIn_sExp = {1'b0,$signed(_T)}; // @[rawFloatFromRecFN.scala 59:27:freechips.rocketchip.system.DefaultRV32Config.fir@142840.4]
  assign rawIn_sig = {1'h0,_T_12,_T_13}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@142845.4]
  assign magGeOne = rawIn_sExp[8]; // @[RecFNToIN.scala 58:30:freechips.rocketchip.system.DefaultRV32Config.fir@142847.4]
  assign posExp = rawIn_sExp[7:0]; // @[RecFNToIN.scala 59:28:freechips.rocketchip.system.DefaultRV32Config.fir@142848.4]
  assign magJustBelowOne = _T_16 & _T_17; // @[RecFNToIN.scala 60:37:freechips.rocketchip.system.DefaultRV32Config.fir@142851.4]
  assign roundingMode_near_even = io_roundingMode == 3'h0; // @[RecFNToIN.scala 64:53:freechips.rocketchip.system.DefaultRV32Config.fir@142852.4]
  assign roundingMode_min = io_roundingMode == 3'h2; // @[RecFNToIN.scala 66:53:freechips.rocketchip.system.DefaultRV32Config.fir@142854.4]
  assign roundingMode_max = io_roundingMode == 3'h3; // @[RecFNToIN.scala 67:53:freechips.rocketchip.system.DefaultRV32Config.fir@142855.4]
  assign roundingMode_near_maxMag = io_roundingMode == 3'h4; // @[RecFNToIN.scala 68:53:freechips.rocketchip.system.DefaultRV32Config.fir@142856.4]
  assign roundingMode_odd = io_roundingMode == 3'h6; // @[RecFNToIN.scala 69:53:freechips.rocketchip.system.DefaultRV32Config.fir@142857.4]
  assign _T_21 = magGeOne ? _T_20 : 5'h0; // @[RecFNToIN.scala 81:16:freechips.rocketchip.system.DefaultRV32Config.fir@142861.4]
  assign shiftedSig = _GEN_0 << _T_21; // @[RecFNToIN.scala 80:50:freechips.rocketchip.system.DefaultRV32Config.fir@142862.4]
  assign alignedSig = {_T_22,_T_24}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@142866.4]
  assign unroundedInt = alignedSig[33:2]; // @[RecFNToIN.scala 87:54:freechips.rocketchip.system.DefaultRV32Config.fir@142867.4]
  assign common_inexact = magGeOne ? _T_27 : _T_12; // @[RecFNToIN.scala 89:29:freechips.rocketchip.system.DefaultRV32Config.fir@142872.4]
  assign roundIncr_near_even = _T_34 | _T_37; // @[RecFNToIN.scala 91:78:freechips.rocketchip.system.DefaultRV32Config.fir@142882.4]
  assign roundIncr_near_maxMag = _T_39 | magJustBelowOne; // @[RecFNToIN.scala 93:61:freechips.rocketchip.system.DefaultRV32Config.fir@142885.4]
  assign roundIncr = _T_46 | _T_49; // @[RecFNToIN.scala 98:46:freechips.rocketchip.system.DefaultRV32Config.fir@142896.4]
  assign complUnroundedInt = rawIn_sign ? _T_50 : unroundedInt; // @[RecFNToIN.scala 100:32:freechips.rocketchip.system.DefaultRV32Config.fir@142898.4]
  assign _T_54 = _T_51 ? _T_53 : complUnroundedInt; // @[RecFNToIN.scala 102:12:freechips.rocketchip.system.DefaultRV32Config.fir@142902.4]
  assign roundedInt = _T_54 | _GEN_1; // @[RecFNToIN.scala 105:11:freechips.rocketchip.system.DefaultRV32Config.fir@142904.4]
  assign magGeOne_atOverflowEdge = posExp == 8'h1f; // @[RecFNToIN.scala 107:43:freechips.rocketchip.system.DefaultRV32Config.fir@142905.4]
  assign roundCarryBut2 = _T_57 & roundIncr; // @[RecFNToIN.scala 110:61:freechips.rocketchip.system.DefaultRV32Config.fir@142908.4]
  assign _T_66 = rawIn_sign ? _T_62 : _T_65; // @[RecFNToIN.scala 115:24:freechips.rocketchip.system.DefaultRV32Config.fir@142917.4]
  assign _T_71 = io_signedOut ? _T_66 : _T_70; // @[RecFNToIN.scala 114:20:freechips.rocketchip.system.DefaultRV32Config.fir@142922.4]
  assign common_overflow = magGeOne ? _T_72 : _T_75; // @[RecFNToIN.scala 112:12:freechips.rocketchip.system.DefaultRV32Config.fir@142927.4]
  assign invalidExc = rawIn_isNaN | rawIn_isInf; // @[RecFNToIN.scala 130:34:freechips.rocketchip.system.DefaultRV32Config.fir@142928.4]
  assign overflow = _T_76 & common_overflow; // @[RecFNToIN.scala 131:32:freechips.rocketchip.system.DefaultRV32Config.fir@142930.4]
  assign inexact = _T_79 & common_inexact; // @[RecFNToIN.scala 132:52:freechips.rocketchip.system.DefaultRV32Config.fir@142934.4]
  assign excSign = _T_80 & rawIn_sign; // @[RecFNToIN.scala 134:32:freechips.rocketchip.system.DefaultRV32Config.fir@142936.4]
  assign _T_82 = _T_81 ? 32'h80000000 : 32'h0; // @[RecFNToIN.scala 136:12:freechips.rocketchip.system.DefaultRV32Config.fir@142938.4]
  assign _T_84 = _T_83 ? 31'h7fffffff : 31'h0; // @[RecFNToIN.scala 140:12:freechips.rocketchip.system.DefaultRV32Config.fir@142940.4]
  assign excOut = _T_82 | _GEN_2; // @[RecFNToIN.scala 139:11:freechips.rocketchip.system.DefaultRV32Config.fir@142941.4]
  assign io_out = _T_85 ? excOut : roundedInt; // @[RecFNToIN.scala 142:12:freechips.rocketchip.system.DefaultRV32Config.fir@142944.4]
  assign io_intExceptionFlags = {_T_87,inexact}; // @[RecFNToIN.scala 143:26:freechips.rocketchip.system.DefaultRV32Config.fir@142947.4]

`endif // MY_ASSIGNMENT

  assign _T = io_in[31:23]; // @[rawFloatFromRecFN.scala 50:21:freechips.rocketchip.system.DefaultRV32Config.fir@142823.4]
  assign _T_1 = _T[8:6]; // @[rawFloatFromRecFN.scala 51:29:freechips.rocketchip.system.DefaultRV32Config.fir@142824.4]
  assign _T_3 = _T[8:7]; // @[rawFloatFromRecFN.scala 52:29:freechips.rocketchip.system.DefaultRV32Config.fir@142826.4]
  assign _T_4 = _T_3 == 2'h3; // @[rawFloatFromRecFN.scala 52:54:freechips.rocketchip.system.DefaultRV32Config.fir@142827.4]
  assign _T_5 = _T[6]; // @[rawFloatFromRecFN.scala 55:41:freechips.rocketchip.system.DefaultRV32Config.fir@142830.4]
  assign _T_8 = _T_5 == 1'h0; // @[rawFloatFromRecFN.scala 56:36:freechips.rocketchip.system.DefaultRV32Config.fir@142834.4]
  assign _T_12 = rawIn_isZero == 1'h0; // @[rawFloatFromRecFN.scala 60:39:freechips.rocketchip.system.DefaultRV32Config.fir@142842.4]
  assign _T_13 = io_in[22:0]; // @[rawFloatFromRecFN.scala 60:51:freechips.rocketchip.system.DefaultRV32Config.fir@142843.4]
  assign _T_16 = magGeOne == 1'h0; // @[RecFNToIN.scala 60:27:freechips.rocketchip.system.DefaultRV32Config.fir@142849.4]
  assign _T_17 = posExp == 8'hff; // @[RecFNToIN.scala 60:47:freechips.rocketchip.system.DefaultRV32Config.fir@142850.4]
  assign _T_18 = rawIn_sig[22:0]; // @[RecFNToIN.scala 80:32:freechips.rocketchip.system.DefaultRV32Config.fir@142858.4]
  assign _T_19 = {magGeOne,_T_18}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@142859.4]
  assign _T_20 = rawIn_sExp[4:0]; // @[RecFNToIN.scala 82:27:freechips.rocketchip.system.DefaultRV32Config.fir@142860.4]
  assign _GEN_0 = {{31'd0}, _T_19}; // @[RecFNToIN.scala 80:50:freechips.rocketchip.system.DefaultRV32Config.fir@142862.4]
  assign _T_22 = shiftedSig[54:22]; // @[RecFNToIN.scala 86:23:freechips.rocketchip.system.DefaultRV32Config.fir@142863.4]
  assign _T_23 = shiftedSig[21:0]; // @[RecFNToIN.scala 86:51:freechips.rocketchip.system.DefaultRV32Config.fir@142864.4]
  assign _T_24 = _T_23 != 22'h0; // @[RecFNToIN.scala 86:69:freechips.rocketchip.system.DefaultRV32Config.fir@142865.4]
  assign _T_26 = alignedSig[1:0]; // @[RecFNToIN.scala 89:50:freechips.rocketchip.system.DefaultRV32Config.fir@142869.4]
  assign _T_27 = _T_26 != 2'h0; // @[RecFNToIN.scala 89:57:freechips.rocketchip.system.DefaultRV32Config.fir@142870.4]
  assign _T_29 = alignedSig[2:1]; // @[RecFNToIN.scala 91:39:freechips.rocketchip.system.DefaultRV32Config.fir@142873.4]
  assign _T_30 = _T_29 == 2'h3; // @[RecFNToIN.scala 91:46:freechips.rocketchip.system.DefaultRV32Config.fir@142874.4]
  assign _T_32 = _T_26 == 2'h3; // @[RecFNToIN.scala 91:71:freechips.rocketchip.system.DefaultRV32Config.fir@142876.4]
  assign _T_33 = _T_30 | _T_32; // @[RecFNToIN.scala 91:51:freechips.rocketchip.system.DefaultRV32Config.fir@142877.4]
  assign _T_34 = magGeOne & _T_33; // @[RecFNToIN.scala 91:25:freechips.rocketchip.system.DefaultRV32Config.fir@142878.4]
  assign _T_37 = magJustBelowOne & _T_27; // @[RecFNToIN.scala 92:26:freechips.rocketchip.system.DefaultRV32Config.fir@142881.4]
  assign _T_38 = alignedSig[1]; // @[RecFNToIN.scala 93:56:freechips.rocketchip.system.DefaultRV32Config.fir@142883.4]
  assign _T_39 = magGeOne & _T_38; // @[RecFNToIN.scala 93:43:freechips.rocketchip.system.DefaultRV32Config.fir@142884.4]
  assign _T_40 = roundingMode_near_even & roundIncr_near_even; // @[RecFNToIN.scala 95:35:freechips.rocketchip.system.DefaultRV32Config.fir@142886.4]
  assign _T_41 = roundingMode_near_maxMag & roundIncr_near_maxMag; // @[RecFNToIN.scala 96:35:freechips.rocketchip.system.DefaultRV32Config.fir@142887.4]
  assign _T_42 = _T_40 | _T_41; // @[RecFNToIN.scala 95:61:freechips.rocketchip.system.DefaultRV32Config.fir@142888.4]
  assign _T_43 = roundingMode_min | roundingMode_odd; // @[RecFNToIN.scala 97:28:freechips.rocketchip.system.DefaultRV32Config.fir@142889.4]
  assign _T_44 = rawIn_sign & common_inexact; // @[RecFNToIN.scala 98:26:freechips.rocketchip.system.DefaultRV32Config.fir@142890.4]
  assign _T_45 = _T_43 & _T_44; // @[RecFNToIN.scala 97:49:freechips.rocketchip.system.DefaultRV32Config.fir@142891.4]
  assign _T_46 = _T_42 | _T_45; // @[RecFNToIN.scala 96:61:freechips.rocketchip.system.DefaultRV32Config.fir@142892.4]
  assign _T_47 = rawIn_sign == 1'h0; // @[RecFNToIN.scala 99:31:freechips.rocketchip.system.DefaultRV32Config.fir@142893.4]
  assign _T_48 = _T_47 & common_inexact; // @[RecFNToIN.scala 99:43:freechips.rocketchip.system.DefaultRV32Config.fir@142894.4]
  assign _T_49 = roundingMode_max & _T_48; // @[RecFNToIN.scala 99:27:freechips.rocketchip.system.DefaultRV32Config.fir@142895.4]
  assign _T_50 = ~ unroundedInt; // @[RecFNToIN.scala 100:45:freechips.rocketchip.system.DefaultRV32Config.fir@142897.4]
  assign _T_51 = roundIncr ^ rawIn_sign; // @[RecFNToIN.scala 102:23:freechips.rocketchip.system.DefaultRV32Config.fir@142899.4]
  assign _T_53 = complUnroundedInt + 32'h1; // @[RecFNToIN.scala 103:31:freechips.rocketchip.system.DefaultRV32Config.fir@142901.4]
  assign _T_55 = roundingMode_odd & common_inexact; // @[RecFNToIN.scala 105:31:freechips.rocketchip.system.DefaultRV32Config.fir@142903.4]
  assign _GEN_1 = {{31'd0}, _T_55}; // @[RecFNToIN.scala 105:11:freechips.rocketchip.system.DefaultRV32Config.fir@142904.4]
  assign _T_56 = unroundedInt[29:0]; // @[RecFNToIN.scala 110:38:freechips.rocketchip.system.DefaultRV32Config.fir@142906.4]
  assign _T_57 = _T_56 == 30'h3fffffff; // @[RecFNToIN.scala 110:56:freechips.rocketchip.system.DefaultRV32Config.fir@142907.4]
  assign _T_58 = posExp >= 8'h20; // @[RecFNToIN.scala 113:21:freechips.rocketchip.system.DefaultRV32Config.fir@142909.4]
  assign _T_59 = unroundedInt[30:0]; // @[RecFNToIN.scala 117:42:freechips.rocketchip.system.DefaultRV32Config.fir@142910.4]
  assign _T_60 = _T_59 != 31'h0; // @[RecFNToIN.scala 117:60:freechips.rocketchip.system.DefaultRV32Config.fir@142911.4]
  assign _T_61 = _T_60 | roundIncr; // @[RecFNToIN.scala 117:64:freechips.rocketchip.system.DefaultRV32Config.fir@142912.4]
  assign _T_62 = magGeOne_atOverflowEdge & _T_61; // @[RecFNToIN.scala 116:49:freechips.rocketchip.system.DefaultRV32Config.fir@142913.4]
  assign _T_63 = posExp == 8'h1e; // @[RecFNToIN.scala 119:38:freechips.rocketchip.system.DefaultRV32Config.fir@142914.4]
  assign _T_64 = _T_63 & roundCarryBut2; // @[RecFNToIN.scala 119:62:freechips.rocketchip.system.DefaultRV32Config.fir@142915.4]
  assign _T_65 = magGeOne_atOverflowEdge | _T_64; // @[RecFNToIN.scala 118:49:freechips.rocketchip.system.DefaultRV32Config.fir@142916.4]
  assign _T_67 = unroundedInt[30]; // @[RecFNToIN.scala 123:42:freechips.rocketchip.system.DefaultRV32Config.fir@142918.4]
  assign _T_68 = magGeOne_atOverflowEdge & _T_67; // @[RecFNToIN.scala 122:50:freechips.rocketchip.system.DefaultRV32Config.fir@142919.4]
  assign _T_69 = _T_68 & roundCarryBut2; // @[RecFNToIN.scala 123:57:freechips.rocketchip.system.DefaultRV32Config.fir@142920.4]
  assign _T_70 = rawIn_sign | _T_69; // @[RecFNToIN.scala 121:32:freechips.rocketchip.system.DefaultRV32Config.fir@142921.4]
  assign _T_72 = _T_58 | _T_71; // @[RecFNToIN.scala 113:40:freechips.rocketchip.system.DefaultRV32Config.fir@142923.4]
  assign _T_73 = io_signedOut == 1'h0; // @[RecFNToIN.scala 125:13:freechips.rocketchip.system.DefaultRV32Config.fir@142924.4]
  assign _T_74 = _T_73 & rawIn_sign; // @[RecFNToIN.scala 125:27:freechips.rocketchip.system.DefaultRV32Config.fir@142925.4]
  assign _T_75 = _T_74 & roundIncr; // @[RecFNToIN.scala 125:41:freechips.rocketchip.system.DefaultRV32Config.fir@142926.4]
  assign _T_76 = invalidExc == 1'h0; // @[RecFNToIN.scala 131:20:freechips.rocketchip.system.DefaultRV32Config.fir@142929.4]
  assign _T_78 = common_overflow == 1'h0; // @[RecFNToIN.scala 132:35:freechips.rocketchip.system.DefaultRV32Config.fir@142932.4]
  assign _T_79 = _T_76 & _T_78; // @[RecFNToIN.scala 132:32:freechips.rocketchip.system.DefaultRV32Config.fir@142933.4]
  assign _T_80 = rawIn_isNaN == 1'h0; // @[RecFNToIN.scala 134:19:freechips.rocketchip.system.DefaultRV32Config.fir@142935.4]
  assign _T_81 = io_signedOut == excSign; // @[RecFNToIN.scala 136:27:freechips.rocketchip.system.DefaultRV32Config.fir@142937.4]
  assign _T_83 = excSign == 1'h0; // @[RecFNToIN.scala 140:13:freechips.rocketchip.system.DefaultRV32Config.fir@142939.4]
  assign _GEN_2 = {{1'd0}, _T_84}; // @[RecFNToIN.scala 139:11:freechips.rocketchip.system.DefaultRV32Config.fir@142941.4]
  assign _T_85 = invalidExc | common_overflow; // @[RecFNToIN.scala 142:30:freechips.rocketchip.system.DefaultRV32Config.fir@142942.4]
  assign _T_87 = {invalidExc,overflow}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@142945.4]
endmodule

