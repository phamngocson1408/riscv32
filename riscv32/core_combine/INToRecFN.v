module INToRecFN(
  input         io_signedIn,
  input  [31:0] io_in,
  input  [2:0]  io_roundingMode,
  output [32:0] io_out,
  output [4:0]  io_exceptionFlags
);
  wire  roundAnyRawFNToRecFN_io_in_isZero; // @[INToRecFN.scala 59:15:freechips.rocketchip.system.DefaultRV32Config.fir@143397.4]
  wire  roundAnyRawFNToRecFN_io_in_sign; // @[INToRecFN.scala 59:15:freechips.rocketchip.system.DefaultRV32Config.fir@143397.4]
  wire [7:0] roundAnyRawFNToRecFN_io_in_sExp; // @[INToRecFN.scala 59:15:freechips.rocketchip.system.DefaultRV32Config.fir@143397.4]
  wire [32:0] roundAnyRawFNToRecFN_io_in_sig; // @[INToRecFN.scala 59:15:freechips.rocketchip.system.DefaultRV32Config.fir@143397.4]
  wire [2:0] roundAnyRawFNToRecFN_io_roundingMode; // @[INToRecFN.scala 59:15:freechips.rocketchip.system.DefaultRV32Config.fir@143397.4]
  wire [32:0] roundAnyRawFNToRecFN_io_out; // @[INToRecFN.scala 59:15:freechips.rocketchip.system.DefaultRV32Config.fir@143397.4]
  wire [4:0] roundAnyRawFNToRecFN_io_exceptionFlags; // @[INToRecFN.scala 59:15:freechips.rocketchip.system.DefaultRV32Config.fir@143397.4]
  wire  _T; // @[rawFloatFromIN.scala 50:34:freechips.rocketchip.system.DefaultRV32Config.fir@143311.4]
  wire  intAsRawFloat_sign; // @[rawFloatFromIN.scala 50:29:freechips.rocketchip.system.DefaultRV32Config.fir@143312.4]
  wire [31:0] _T_3; // @[rawFloatFromIN.scala 51:31:freechips.rocketchip.system.DefaultRV32Config.fir@143314.4]
  wire [63:0] _T_5; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@143316.4]
  wire [31:0] _T_6; // @[rawFloatFromIN.scala 52:56:freechips.rocketchip.system.DefaultRV32Config.fir@143317.4]
  wire  _T_8; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143319.4]
  wire  _T_9; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143320.4]
  wire  _T_10; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143321.4]
  wire  _T_11; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143322.4]
  wire  _T_12; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143323.4]
  wire  _T_13; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143324.4]
  wire  _T_14; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143325.4]
  wire  _T_15; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143326.4]
  wire  _T_16; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143327.4]
  wire  _T_17; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143328.4]
  wire  _T_18; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143329.4]
  wire  _T_19; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143330.4]
  wire  _T_20; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143331.4]
  wire  _T_21; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143332.4]
  wire  _T_22; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143333.4]
  wire  _T_23; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143334.4]
  wire  _T_24; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143335.4]
  wire  _T_25; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143336.4]
  wire  _T_26; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143337.4]
  wire  _T_27; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143338.4]
  wire  _T_28; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143339.4]
  wire  _T_29; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143340.4]
  wire  _T_30; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143341.4]
  wire  _T_31; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143342.4]
  wire  _T_32; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143343.4]
  wire  _T_33; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143344.4]
  wire  _T_34; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143345.4]
  wire  _T_35; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143346.4]
  wire  _T_36; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143347.4]
  wire  _T_37; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143348.4]
  wire  _T_38; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143349.4]
  wire [4:0] _T_39; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143350.4]
  wire [4:0] _T_40; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143351.4]
  wire [4:0] _T_41; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143352.4]
  wire [4:0] _T_42; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143353.4]
  wire [4:0] _T_43; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143354.4]
  wire [4:0] _T_44; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143355.4]
  wire [4:0] _T_45; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143356.4]
  wire [4:0] _T_46; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143357.4]
  wire [4:0] _T_47; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143358.4]
  wire [4:0] _T_48; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143359.4]
  wire [4:0] _T_49; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143360.4]
  wire [4:0] _T_50; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143361.4]
  wire [4:0] _T_51; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143362.4]
  wire [4:0] _T_52; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143363.4]
  wire [4:0] _T_53; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143364.4]
  wire [4:0] _T_54; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143365.4]
  wire [4:0] _T_55; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143366.4]
  wire [4:0] _T_56; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143367.4]
  wire [4:0] _T_57; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143368.4]
  wire [4:0] _T_58; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143369.4]
  wire [4:0] _T_59; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143370.4]
  wire [4:0] _T_60; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143371.4]
  wire [4:0] _T_61; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143372.4]
  wire [4:0] _T_62; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143373.4]
  wire [4:0] _T_63; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143374.4]
  wire [4:0] _T_64; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143375.4]
  wire [4:0] _T_65; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143376.4]
  wire [4:0] _T_66; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143377.4]
  wire [4:0] _T_67; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143378.4]
  wire [4:0] _T_68; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143379.4]
  wire [62:0] _GEN_0; // @[rawFloatFromIN.scala 55:22:freechips.rocketchip.system.DefaultRV32Config.fir@143381.4]
  wire [31:0] _T_71; // @[rawFloatFromIN.scala 55:41:freechips.rocketchip.system.DefaultRV32Config.fir@143382.4]
  wire  _T_72; // @[rawFloatFromIN.scala 61:28:freechips.rocketchip.system.DefaultRV32Config.fir@143387.4]
  wire [4:0] _T_75; // @[rawFloatFromIN.scala 63:39:freechips.rocketchip.system.DefaultRV32Config.fir@143392.4]
  wire [6:0] _T_76; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@143393.4]
  RoundAnyRawFNToRecFN_1 roundAnyRawFNToRecFN ( // @[INToRecFN.scala 59:15:freechips.rocketchip.system.DefaultRV32Config.fir@143397.4]
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

`ifndef MY_ASSIGNMENT
  assign intAsRawFloat_sign = io_signedIn & _T; // @[rawFloatFromIN.scala 50:29:freechips.rocketchip.system.DefaultRV32Config.fir@143312.4]
  assign io_out = roundAnyRawFNToRecFN_io_out; // @[INToRecFN.scala 72:23:freechips.rocketchip.system.DefaultRV32Config.fir@143406.4]
  assign io_exceptionFlags = roundAnyRawFNToRecFN_io_exceptionFlags; // @[INToRecFN.scala 73:23:freechips.rocketchip.system.DefaultRV32Config.fir@143407.4]
  wire [31:0] _T_4; // @[rawFloatFromIN.scala 51:24:freechips.rocketchip.system.DefaultRV32Config.fir@143315.4]
  assign _T_4 = intAsRawFloat_sign ? _T_3 : io_in; // @[rawFloatFromIN.scala 51:24:freechips.rocketchip.system.DefaultRV32Config.fir@143315.4]
  wire [4:0] _T_69; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143380.4]
  assign _T_69 = _T_38 ? 5'h0 : _T_68; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143380.4]
  wire [62:0] _T_70; // @[rawFloatFromIN.scala 55:22:freechips.rocketchip.system.DefaultRV32Config.fir@143381.4]
  assign _T_70 = _GEN_0 << _T_69; // @[rawFloatFromIN.scala 55:22:freechips.rocketchip.system.DefaultRV32Config.fir@143381.4]
  assign roundAnyRawFNToRecFN_io_in_isZero = _T_72 == 1'h0; // @[INToRecFN.scala 69:44:freechips.rocketchip.system.DefaultRV32Config.fir@143403.4]
  assign roundAnyRawFNToRecFN_io_in_sign = io_signedIn & _T; // @[INToRecFN.scala 69:44:freechips.rocketchip.system.DefaultRV32Config.fir@143403.4]
  assign roundAnyRawFNToRecFN_io_in_sExp = {1'b0,$signed(_T_76)}; // @[INToRecFN.scala 69:44:freechips.rocketchip.system.DefaultRV32Config.fir@143403.4]
  assign roundAnyRawFNToRecFN_io_in_sig = {{1'd0}, _T_71}; // @[INToRecFN.scala 69:44:freechips.rocketchip.system.DefaultRV32Config.fir@143403.4]
  assign roundAnyRawFNToRecFN_io_roundingMode = io_roundingMode; // @[INToRecFN.scala 70:44:freechips.rocketchip.system.DefaultRV32Config.fir@143404.4]

`endif // MY_ASSIGNMENT

  assign _T = io_in[31]; // @[rawFloatFromIN.scala 50:34:freechips.rocketchip.system.DefaultRV32Config.fir@143311.4]
  assign _T_3 = 32'h0 - io_in; // @[rawFloatFromIN.scala 51:31:freechips.rocketchip.system.DefaultRV32Config.fir@143314.4]
  assign _T_5 = {32'h0,_T_4}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@143316.4]
  assign _T_6 = _T_5[31:0]; // @[rawFloatFromIN.scala 52:56:freechips.rocketchip.system.DefaultRV32Config.fir@143317.4]
  assign _T_8 = _T_6[1]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143319.4]
  assign _T_9 = _T_6[2]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143320.4]
  assign _T_10 = _T_6[3]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143321.4]
  assign _T_11 = _T_6[4]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143322.4]
  assign _T_12 = _T_6[5]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143323.4]
  assign _T_13 = _T_6[6]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143324.4]
  assign _T_14 = _T_6[7]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143325.4]
  assign _T_15 = _T_6[8]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143326.4]
  assign _T_16 = _T_6[9]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143327.4]
  assign _T_17 = _T_6[10]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143328.4]
  assign _T_18 = _T_6[11]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143329.4]
  assign _T_19 = _T_6[12]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143330.4]
  assign _T_20 = _T_6[13]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143331.4]
  assign _T_21 = _T_6[14]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143332.4]
  assign _T_22 = _T_6[15]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143333.4]
  assign _T_23 = _T_6[16]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143334.4]
  assign _T_24 = _T_6[17]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143335.4]
  assign _T_25 = _T_6[18]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143336.4]
  assign _T_26 = _T_6[19]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143337.4]
  assign _T_27 = _T_6[20]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143338.4]
  assign _T_28 = _T_6[21]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143339.4]
  assign _T_29 = _T_6[22]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143340.4]
  assign _T_30 = _T_6[23]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143341.4]
  assign _T_31 = _T_6[24]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143342.4]
  assign _T_32 = _T_6[25]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143343.4]
  assign _T_33 = _T_6[26]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143344.4]
  assign _T_34 = _T_6[27]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143345.4]
  assign _T_35 = _T_6[28]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143346.4]
  assign _T_36 = _T_6[29]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143347.4]
  assign _T_37 = _T_6[30]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143348.4]
  assign _T_38 = _T_6[31]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143349.4]
  assign _T_39 = _T_8 ? 5'h1e : 5'h1f; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143350.4]
  assign _T_40 = _T_9 ? 5'h1d : _T_39; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143351.4]
  assign _T_41 = _T_10 ? 5'h1c : _T_40; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143352.4]
  assign _T_42 = _T_11 ? 5'h1b : _T_41; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143353.4]
  assign _T_43 = _T_12 ? 5'h1a : _T_42; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143354.4]
  assign _T_44 = _T_13 ? 5'h19 : _T_43; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143355.4]
  assign _T_45 = _T_14 ? 5'h18 : _T_44; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143356.4]
  assign _T_46 = _T_15 ? 5'h17 : _T_45; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143357.4]
  assign _T_47 = _T_16 ? 5'h16 : _T_46; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143358.4]
  assign _T_48 = _T_17 ? 5'h15 : _T_47; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143359.4]
  assign _T_49 = _T_18 ? 5'h14 : _T_48; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143360.4]
  assign _T_50 = _T_19 ? 5'h13 : _T_49; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143361.4]
  assign _T_51 = _T_20 ? 5'h12 : _T_50; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143362.4]
  assign _T_52 = _T_21 ? 5'h11 : _T_51; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143363.4]
  assign _T_53 = _T_22 ? 5'h10 : _T_52; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143364.4]
  assign _T_54 = _T_23 ? 5'hf : _T_53; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143365.4]
  assign _T_55 = _T_24 ? 5'he : _T_54; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143366.4]
  assign _T_56 = _T_25 ? 5'hd : _T_55; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143367.4]
  assign _T_57 = _T_26 ? 5'hc : _T_56; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143368.4]
  assign _T_58 = _T_27 ? 5'hb : _T_57; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143369.4]
  assign _T_59 = _T_28 ? 5'ha : _T_58; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143370.4]
  assign _T_60 = _T_29 ? 5'h9 : _T_59; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143371.4]
  assign _T_61 = _T_30 ? 5'h8 : _T_60; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143372.4]
  assign _T_62 = _T_31 ? 5'h7 : _T_61; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143373.4]
  assign _T_63 = _T_32 ? 5'h6 : _T_62; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143374.4]
  assign _T_64 = _T_33 ? 5'h5 : _T_63; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143375.4]
  assign _T_65 = _T_34 ? 5'h4 : _T_64; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143376.4]
  assign _T_66 = _T_35 ? 5'h3 : _T_65; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143377.4]
  assign _T_67 = _T_36 ? 5'h2 : _T_66; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143378.4]
  assign _T_68 = _T_37 ? 5'h1 : _T_67; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143379.4]
  assign _GEN_0 = {{31'd0}, _T_6}; // @[rawFloatFromIN.scala 55:22:freechips.rocketchip.system.DefaultRV32Config.fir@143381.4]
  assign _T_71 = _T_70[31:0]; // @[rawFloatFromIN.scala 55:41:freechips.rocketchip.system.DefaultRV32Config.fir@143382.4]
  assign _T_72 = _T_71[31]; // @[rawFloatFromIN.scala 61:28:freechips.rocketchip.system.DefaultRV32Config.fir@143387.4]
  assign _T_75 = ~ _T_69; // @[rawFloatFromIN.scala 63:39:freechips.rocketchip.system.DefaultRV32Config.fir@143392.4]
  assign _T_76 = {2'h2,_T_75}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@143393.4]
endmodule

