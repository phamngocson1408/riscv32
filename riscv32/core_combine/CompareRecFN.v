module CompareRecFN(
  input  [32:0] io_a,
  input  [32:0] io_b,
  input         io_signaling,
  output        io_lt,
  output        io_eq,
  output [4:0]  io_exceptionFlags
);
  wire [8:0] _T; // @[rawFloatFromRecFN.scala 50:21:freechips.rocketchip.system.DefaultRV32Config.fir@142715.4]
  wire [2:0] _T_1; // @[rawFloatFromRecFN.scala 51:29:freechips.rocketchip.system.DefaultRV32Config.fir@142716.4]
  wire  rawA_isZero; // @[rawFloatFromRecFN.scala 51:54:freechips.rocketchip.system.DefaultRV32Config.fir@142717.4]
  wire [1:0] _T_3; // @[rawFloatFromRecFN.scala 52:29:freechips.rocketchip.system.DefaultRV32Config.fir@142718.4]
  wire  _T_4; // @[rawFloatFromRecFN.scala 52:54:freechips.rocketchip.system.DefaultRV32Config.fir@142719.4]
  wire  _T_5; // @[rawFloatFromRecFN.scala 55:41:freechips.rocketchip.system.DefaultRV32Config.fir@142722.4]
  wire  rawA_isNaN; // @[rawFloatFromRecFN.scala 55:33:freechips.rocketchip.system.DefaultRV32Config.fir@142723.4]
  wire  _T_8; // @[rawFloatFromRecFN.scala 56:36:freechips.rocketchip.system.DefaultRV32Config.fir@142726.4]
  wire  rawA_isInf; // @[rawFloatFromRecFN.scala 56:33:freechips.rocketchip.system.DefaultRV32Config.fir@142727.4]
  wire  rawA_sign; // @[rawFloatFromRecFN.scala 58:25:freechips.rocketchip.system.DefaultRV32Config.fir@142730.4]
  wire [9:0] rawA_sExp; // @[rawFloatFromRecFN.scala 59:27:freechips.rocketchip.system.DefaultRV32Config.fir@142732.4]
  wire  _T_12; // @[rawFloatFromRecFN.scala 60:39:freechips.rocketchip.system.DefaultRV32Config.fir@142734.4]
  wire [22:0] _T_13; // @[rawFloatFromRecFN.scala 60:51:freechips.rocketchip.system.DefaultRV32Config.fir@142735.4]
  wire [24:0] rawA_sig; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@142737.4]
  wire [8:0] _T_16; // @[rawFloatFromRecFN.scala 50:21:freechips.rocketchip.system.DefaultRV32Config.fir@142739.4]
  wire [2:0] _T_17; // @[rawFloatFromRecFN.scala 51:29:freechips.rocketchip.system.DefaultRV32Config.fir@142740.4]
  wire  rawB_isZero; // @[rawFloatFromRecFN.scala 51:54:freechips.rocketchip.system.DefaultRV32Config.fir@142741.4]
  wire [1:0] _T_19; // @[rawFloatFromRecFN.scala 52:29:freechips.rocketchip.system.DefaultRV32Config.fir@142742.4]
  wire  _T_20; // @[rawFloatFromRecFN.scala 52:54:freechips.rocketchip.system.DefaultRV32Config.fir@142743.4]
  wire  _T_21; // @[rawFloatFromRecFN.scala 55:41:freechips.rocketchip.system.DefaultRV32Config.fir@142746.4]
  wire  rawB_isNaN; // @[rawFloatFromRecFN.scala 55:33:freechips.rocketchip.system.DefaultRV32Config.fir@142747.4]
  wire  _T_24; // @[rawFloatFromRecFN.scala 56:36:freechips.rocketchip.system.DefaultRV32Config.fir@142750.4]
  wire  rawB_isInf; // @[rawFloatFromRecFN.scala 56:33:freechips.rocketchip.system.DefaultRV32Config.fir@142751.4]
  wire  rawB_sign; // @[rawFloatFromRecFN.scala 58:25:freechips.rocketchip.system.DefaultRV32Config.fir@142754.4]
  wire [9:0] rawB_sExp; // @[rawFloatFromRecFN.scala 59:27:freechips.rocketchip.system.DefaultRV32Config.fir@142756.4]
  wire  _T_28; // @[rawFloatFromRecFN.scala 60:39:freechips.rocketchip.system.DefaultRV32Config.fir@142758.4]
  wire [22:0] _T_29; // @[rawFloatFromRecFN.scala 60:51:freechips.rocketchip.system.DefaultRV32Config.fir@142759.4]
  wire [24:0] rawB_sig; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@142761.4]
  wire  _T_32; // @[CompareRecFN.scala 57:19:freechips.rocketchip.system.DefaultRV32Config.fir@142763.4]
  wire  _T_33; // @[CompareRecFN.scala 57:35:freechips.rocketchip.system.DefaultRV32Config.fir@142764.4]
  wire  ordered; // @[CompareRecFN.scala 57:32:freechips.rocketchip.system.DefaultRV32Config.fir@142765.4]
  wire  bothInfs; // @[CompareRecFN.scala 58:33:freechips.rocketchip.system.DefaultRV32Config.fir@142766.4]
  wire  bothZeros; // @[CompareRecFN.scala 59:33:freechips.rocketchip.system.DefaultRV32Config.fir@142767.4]
  wire  eqExps; // @[CompareRecFN.scala 60:29:freechips.rocketchip.system.DefaultRV32Config.fir@142768.4]
  wire  _T_34; // @[CompareRecFN.scala 62:20:freechips.rocketchip.system.DefaultRV32Config.fir@142769.4]
  wire  _T_35; // @[CompareRecFN.scala 62:57:freechips.rocketchip.system.DefaultRV32Config.fir@142770.4]
  wire  _T_36; // @[CompareRecFN.scala 62:44:freechips.rocketchip.system.DefaultRV32Config.fir@142771.4]
  wire  common_ltMags; // @[CompareRecFN.scala 62:33:freechips.rocketchip.system.DefaultRV32Config.fir@142772.4]
  wire  _T_37; // @[CompareRecFN.scala 63:45:freechips.rocketchip.system.DefaultRV32Config.fir@142773.4]
  wire  common_eqMags; // @[CompareRecFN.scala 63:32:freechips.rocketchip.system.DefaultRV32Config.fir@142774.4]
  wire  _T_38; // @[CompareRecFN.scala 66:9:freechips.rocketchip.system.DefaultRV32Config.fir@142775.4]
  wire  _T_39; // @[CompareRecFN.scala 67:28:freechips.rocketchip.system.DefaultRV32Config.fir@142776.4]
  wire  _T_40; // @[CompareRecFN.scala 67:25:freechips.rocketchip.system.DefaultRV32Config.fir@142777.4]
  wire  _T_41; // @[CompareRecFN.scala 68:19:freechips.rocketchip.system.DefaultRV32Config.fir@142778.4]
  wire  _T_42; // @[CompareRecFN.scala 69:38:freechips.rocketchip.system.DefaultRV32Config.fir@142779.4]
  wire  _T_43; // @[CompareRecFN.scala 69:35:freechips.rocketchip.system.DefaultRV32Config.fir@142780.4]
  wire  _T_44; // @[CompareRecFN.scala 69:57:freechips.rocketchip.system.DefaultRV32Config.fir@142781.4]
  wire  _T_45; // @[CompareRecFN.scala 69:54:freechips.rocketchip.system.DefaultRV32Config.fir@142782.4]
  wire  _T_47; // @[CompareRecFN.scala 70:41:freechips.rocketchip.system.DefaultRV32Config.fir@142784.4]
  wire  _T_48; // @[CompareRecFN.scala 69:74:freechips.rocketchip.system.DefaultRV32Config.fir@142785.4]
  wire  _T_49; // @[CompareRecFN.scala 68:30:freechips.rocketchip.system.DefaultRV32Config.fir@142786.4]
  wire  _T_50; // @[CompareRecFN.scala 67:41:freechips.rocketchip.system.DefaultRV32Config.fir@142787.4]
  wire  ordered_lt; // @[CompareRecFN.scala 66:21:freechips.rocketchip.system.DefaultRV32Config.fir@142788.4]
  wire  _T_51; // @[CompareRecFN.scala 72:34:freechips.rocketchip.system.DefaultRV32Config.fir@142789.4]
  wire  _T_52; // @[CompareRecFN.scala 72:62:freechips.rocketchip.system.DefaultRV32Config.fir@142790.4]
  wire  _T_53; // @[CompareRecFN.scala 72:49:freechips.rocketchip.system.DefaultRV32Config.fir@142791.4]
  wire  ordered_eq; // @[CompareRecFN.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@142792.4]
  wire  _T_54; // @[common.scala 81:56:freechips.rocketchip.system.DefaultRV32Config.fir@142793.4]
  wire  _T_55; // @[common.scala 81:49:freechips.rocketchip.system.DefaultRV32Config.fir@142794.4]
  wire  _T_56; // @[common.scala 81:46:freechips.rocketchip.system.DefaultRV32Config.fir@142795.4]
  wire  _T_57; // @[common.scala 81:56:freechips.rocketchip.system.DefaultRV32Config.fir@142796.4]
  wire  _T_58; // @[common.scala 81:49:freechips.rocketchip.system.DefaultRV32Config.fir@142797.4]
  wire  _T_59; // @[common.scala 81:46:freechips.rocketchip.system.DefaultRV32Config.fir@142798.4]
  wire  _T_60; // @[CompareRecFN.scala 75:32:freechips.rocketchip.system.DefaultRV32Config.fir@142799.4]
  wire  _T_61; // @[CompareRecFN.scala 76:30:freechips.rocketchip.system.DefaultRV32Config.fir@142800.4]
  wire  _T_62; // @[CompareRecFN.scala 76:27:freechips.rocketchip.system.DefaultRV32Config.fir@142801.4]
  wire  invalid; // @[CompareRecFN.scala 75:58:freechips.rocketchip.system.DefaultRV32Config.fir@142802.4]

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

`ifndef MY_ASSIGNMENT
  assign rawA_isZero = _T_1 == 3'h0; // @[rawFloatFromRecFN.scala 51:54:freechips.rocketchip.system.DefaultRV32Config.fir@142717.4]
  assign rawA_isNaN = _T_4 & _T_5; // @[rawFloatFromRecFN.scala 55:33:freechips.rocketchip.system.DefaultRV32Config.fir@142723.4]
  assign rawA_isInf = _T_4 & _T_8; // @[rawFloatFromRecFN.scala 56:33:freechips.rocketchip.system.DefaultRV32Config.fir@142727.4]
  assign rawA_sign = io_a[32]; // @[rawFloatFromRecFN.scala 58:25:freechips.rocketchip.system.DefaultRV32Config.fir@142730.4]
  assign rawA_sExp = {1'b0,$signed(_T)}; // @[rawFloatFromRecFN.scala 59:27:freechips.rocketchip.system.DefaultRV32Config.fir@142732.4]
  assign rawA_sig = {1'h0,_T_12,_T_13}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@142737.4]
  assign rawB_isZero = _T_17 == 3'h0; // @[rawFloatFromRecFN.scala 51:54:freechips.rocketchip.system.DefaultRV32Config.fir@142741.4]
  assign rawB_isNaN = _T_20 & _T_21; // @[rawFloatFromRecFN.scala 55:33:freechips.rocketchip.system.DefaultRV32Config.fir@142747.4]
  assign rawB_isInf = _T_20 & _T_24; // @[rawFloatFromRecFN.scala 56:33:freechips.rocketchip.system.DefaultRV32Config.fir@142751.4]
  assign rawB_sign = io_b[32]; // @[rawFloatFromRecFN.scala 58:25:freechips.rocketchip.system.DefaultRV32Config.fir@142754.4]
  assign rawB_sExp = {1'b0,$signed(_T_16)}; // @[rawFloatFromRecFN.scala 59:27:freechips.rocketchip.system.DefaultRV32Config.fir@142756.4]
  assign rawB_sig = {1'h0,_T_28,_T_29}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@142761.4]
  assign ordered = _T_32 & _T_33; // @[CompareRecFN.scala 57:32:freechips.rocketchip.system.DefaultRV32Config.fir@142765.4]
  assign bothInfs = rawA_isInf & rawB_isInf; // @[CompareRecFN.scala 58:33:freechips.rocketchip.system.DefaultRV32Config.fir@142766.4]
  assign bothZeros = rawA_isZero & rawB_isZero; // @[CompareRecFN.scala 59:33:freechips.rocketchip.system.DefaultRV32Config.fir@142767.4]
  assign eqExps = $signed(rawA_sExp) == $signed(rawB_sExp); // @[CompareRecFN.scala 60:29:freechips.rocketchip.system.DefaultRV32Config.fir@142768.4]
  assign common_ltMags = _T_34 | _T_36; // @[CompareRecFN.scala 62:33:freechips.rocketchip.system.DefaultRV32Config.fir@142772.4]
  assign common_eqMags = eqExps & _T_37; // @[CompareRecFN.scala 63:32:freechips.rocketchip.system.DefaultRV32Config.fir@142774.4]
  assign ordered_lt = _T_38 & _T_50; // @[CompareRecFN.scala 66:21:freechips.rocketchip.system.DefaultRV32Config.fir@142788.4]
  assign ordered_eq = bothZeros | _T_53; // @[CompareRecFN.scala 72:19:freechips.rocketchip.system.DefaultRV32Config.fir@142792.4]
  assign invalid = _T_60 | _T_62; // @[CompareRecFN.scala 75:58:freechips.rocketchip.system.DefaultRV32Config.fir@142802.4]
  assign io_lt = ordered & ordered_lt; // @[CompareRecFN.scala 78:11:freechips.rocketchip.system.DefaultRV32Config.fir@142804.4]
  assign io_eq = ordered & ordered_eq; // @[CompareRecFN.scala 79:11:freechips.rocketchip.system.DefaultRV32Config.fir@142806.4]
  assign io_exceptionFlags = {invalid,4'h0}; // @[CompareRecFN.scala 81:23:freechips.rocketchip.system.DefaultRV32Config.fir@142813.4]

`endif // MY_ASSIGNMENT

  assign _T = io_a[31:23]; // @[rawFloatFromRecFN.scala 50:21:freechips.rocketchip.system.DefaultRV32Config.fir@142715.4]
  assign _T_1 = _T[8:6]; // @[rawFloatFromRecFN.scala 51:29:freechips.rocketchip.system.DefaultRV32Config.fir@142716.4]
  assign _T_3 = _T[8:7]; // @[rawFloatFromRecFN.scala 52:29:freechips.rocketchip.system.DefaultRV32Config.fir@142718.4]
  assign _T_4 = _T_3 == 2'h3; // @[rawFloatFromRecFN.scala 52:54:freechips.rocketchip.system.DefaultRV32Config.fir@142719.4]
  assign _T_5 = _T[6]; // @[rawFloatFromRecFN.scala 55:41:freechips.rocketchip.system.DefaultRV32Config.fir@142722.4]
  assign _T_8 = _T_5 == 1'h0; // @[rawFloatFromRecFN.scala 56:36:freechips.rocketchip.system.DefaultRV32Config.fir@142726.4]
  assign _T_12 = rawA_isZero == 1'h0; // @[rawFloatFromRecFN.scala 60:39:freechips.rocketchip.system.DefaultRV32Config.fir@142734.4]
  assign _T_13 = io_a[22:0]; // @[rawFloatFromRecFN.scala 60:51:freechips.rocketchip.system.DefaultRV32Config.fir@142735.4]
  assign _T_16 = io_b[31:23]; // @[rawFloatFromRecFN.scala 50:21:freechips.rocketchip.system.DefaultRV32Config.fir@142739.4]
  assign _T_17 = _T_16[8:6]; // @[rawFloatFromRecFN.scala 51:29:freechips.rocketchip.system.DefaultRV32Config.fir@142740.4]
  assign _T_19 = _T_16[8:7]; // @[rawFloatFromRecFN.scala 52:29:freechips.rocketchip.system.DefaultRV32Config.fir@142742.4]
  assign _T_20 = _T_19 == 2'h3; // @[rawFloatFromRecFN.scala 52:54:freechips.rocketchip.system.DefaultRV32Config.fir@142743.4]
  assign _T_21 = _T_16[6]; // @[rawFloatFromRecFN.scala 55:41:freechips.rocketchip.system.DefaultRV32Config.fir@142746.4]
  assign _T_24 = _T_21 == 1'h0; // @[rawFloatFromRecFN.scala 56:36:freechips.rocketchip.system.DefaultRV32Config.fir@142750.4]
  assign _T_28 = rawB_isZero == 1'h0; // @[rawFloatFromRecFN.scala 60:39:freechips.rocketchip.system.DefaultRV32Config.fir@142758.4]
  assign _T_29 = io_b[22:0]; // @[rawFloatFromRecFN.scala 60:51:freechips.rocketchip.system.DefaultRV32Config.fir@142759.4]
  assign _T_32 = rawA_isNaN == 1'h0; // @[CompareRecFN.scala 57:19:freechips.rocketchip.system.DefaultRV32Config.fir@142763.4]
  assign _T_33 = rawB_isNaN == 1'h0; // @[CompareRecFN.scala 57:35:freechips.rocketchip.system.DefaultRV32Config.fir@142764.4]
  assign _T_34 = $signed(rawA_sExp) < $signed(rawB_sExp); // @[CompareRecFN.scala 62:20:freechips.rocketchip.system.DefaultRV32Config.fir@142769.4]
  assign _T_35 = rawA_sig < rawB_sig; // @[CompareRecFN.scala 62:57:freechips.rocketchip.system.DefaultRV32Config.fir@142770.4]
  assign _T_36 = eqExps & _T_35; // @[CompareRecFN.scala 62:44:freechips.rocketchip.system.DefaultRV32Config.fir@142771.4]
  assign _T_37 = rawA_sig == rawB_sig; // @[CompareRecFN.scala 63:45:freechips.rocketchip.system.DefaultRV32Config.fir@142773.4]
  assign _T_38 = bothZeros == 1'h0; // @[CompareRecFN.scala 66:9:freechips.rocketchip.system.DefaultRV32Config.fir@142775.4]
  assign _T_39 = rawB_sign == 1'h0; // @[CompareRecFN.scala 67:28:freechips.rocketchip.system.DefaultRV32Config.fir@142776.4]
  assign _T_40 = rawA_sign & _T_39; // @[CompareRecFN.scala 67:25:freechips.rocketchip.system.DefaultRV32Config.fir@142777.4]
  assign _T_41 = bothInfs == 1'h0; // @[CompareRecFN.scala 68:19:freechips.rocketchip.system.DefaultRV32Config.fir@142778.4]
  assign _T_42 = common_ltMags == 1'h0; // @[CompareRecFN.scala 69:38:freechips.rocketchip.system.DefaultRV32Config.fir@142779.4]
  assign _T_43 = rawA_sign & _T_42; // @[CompareRecFN.scala 69:35:freechips.rocketchip.system.DefaultRV32Config.fir@142780.4]
  assign _T_44 = common_eqMags == 1'h0; // @[CompareRecFN.scala 69:57:freechips.rocketchip.system.DefaultRV32Config.fir@142781.4]
  assign _T_45 = _T_43 & _T_44; // @[CompareRecFN.scala 69:54:freechips.rocketchip.system.DefaultRV32Config.fir@142782.4]
  assign _T_47 = _T_39 & common_ltMags; // @[CompareRecFN.scala 70:41:freechips.rocketchip.system.DefaultRV32Config.fir@142784.4]
  assign _T_48 = _T_45 | _T_47; // @[CompareRecFN.scala 69:74:freechips.rocketchip.system.DefaultRV32Config.fir@142785.4]
  assign _T_49 = _T_41 & _T_48; // @[CompareRecFN.scala 68:30:freechips.rocketchip.system.DefaultRV32Config.fir@142786.4]
  assign _T_50 = _T_40 | _T_49; // @[CompareRecFN.scala 67:41:freechips.rocketchip.system.DefaultRV32Config.fir@142787.4]
  assign _T_51 = rawA_sign == rawB_sign; // @[CompareRecFN.scala 72:34:freechips.rocketchip.system.DefaultRV32Config.fir@142789.4]
  assign _T_52 = bothInfs | common_eqMags; // @[CompareRecFN.scala 72:62:freechips.rocketchip.system.DefaultRV32Config.fir@142790.4]
  assign _T_53 = _T_51 & _T_52; // @[CompareRecFN.scala 72:49:freechips.rocketchip.system.DefaultRV32Config.fir@142791.4]
  assign _T_54 = rawA_sig[22]; // @[common.scala 81:56:freechips.rocketchip.system.DefaultRV32Config.fir@142793.4]
  assign _T_55 = _T_54 == 1'h0; // @[common.scala 81:49:freechips.rocketchip.system.DefaultRV32Config.fir@142794.4]
  assign _T_56 = rawA_isNaN & _T_55; // @[common.scala 81:46:freechips.rocketchip.system.DefaultRV32Config.fir@142795.4]
  assign _T_57 = rawB_sig[22]; // @[common.scala 81:56:freechips.rocketchip.system.DefaultRV32Config.fir@142796.4]
  assign _T_58 = _T_57 == 1'h0; // @[common.scala 81:49:freechips.rocketchip.system.DefaultRV32Config.fir@142797.4]
  assign _T_59 = rawB_isNaN & _T_58; // @[common.scala 81:46:freechips.rocketchip.system.DefaultRV32Config.fir@142798.4]
  assign _T_60 = _T_56 | _T_59; // @[CompareRecFN.scala 75:32:freechips.rocketchip.system.DefaultRV32Config.fir@142799.4]
  assign _T_61 = ordered == 1'h0; // @[CompareRecFN.scala 76:30:freechips.rocketchip.system.DefaultRV32Config.fir@142800.4]
  assign _T_62 = io_signaling & _T_61; // @[CompareRecFN.scala 76:27:freechips.rocketchip.system.DefaultRV32Config.fir@142801.4]
endmodule

