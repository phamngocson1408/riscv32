`include "include_module.v"
`ifdef __INToRecFN
module INToRecFN( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@173528.2]
  input         io_signedIn, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@173531.4]
  input  [31:0] io_in, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@173531.4]
  input  [2:0]  io_roundingMode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@173531.4]
  output [32:0] io_out, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@173531.4]
  output [4:0]  io_exceptionFlags // @[:freechips.rocketchip.system.DefaultRV32Config.fir@173531.4]
);
  wire  roundAnyRawFNToRecFN_io_in_isZero; // @[INToRecFN.scala 60:15:freechips.rocketchip.system.DefaultRV32Config.fir@173622.4]
  wire  roundAnyRawFNToRecFN_io_in_sign; // @[INToRecFN.scala 60:15:freechips.rocketchip.system.DefaultRV32Config.fir@173622.4]
  wire [7:0] roundAnyRawFNToRecFN_io_in_sExp; // @[INToRecFN.scala 60:15:freechips.rocketchip.system.DefaultRV32Config.fir@173622.4]
  wire [32:0] roundAnyRawFNToRecFN_io_in_sig; // @[INToRecFN.scala 60:15:freechips.rocketchip.system.DefaultRV32Config.fir@173622.4]
  wire [2:0] roundAnyRawFNToRecFN_io_roundingMode; // @[INToRecFN.scala 60:15:freechips.rocketchip.system.DefaultRV32Config.fir@173622.4]
  wire [32:0] roundAnyRawFNToRecFN_io_out; // @[INToRecFN.scala 60:15:freechips.rocketchip.system.DefaultRV32Config.fir@173622.4]
  wire [4:0] roundAnyRawFNToRecFN_io_exceptionFlags; // @[INToRecFN.scala 60:15:freechips.rocketchip.system.DefaultRV32Config.fir@173622.4]
  wire  _T; // @[rawFloatFromIN.scala 50:34:freechips.rocketchip.system.DefaultRV32Config.fir@173536.4]
  wire  sign; // @[rawFloatFromIN.scala 50:29:freechips.rocketchip.system.DefaultRV32Config.fir@173537.4]
  wire [31:0] _T_2; // @[rawFloatFromIN.scala 52:31:freechips.rocketchip.system.DefaultRV32Config.fir@173539.4]
  wire [31:0] absIn; // @[rawFloatFromIN.scala 52:24:freechips.rocketchip.system.DefaultRV32Config.fir@173540.4]
  wire [63:0] _T_3; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@173541.4]
  wire [31:0] extAbsIn; // @[rawFloatFromIN.scala 54:56:freechips.rocketchip.system.DefaultRV32Config.fir@173542.4]
  wire  _T_5; // @[primitives.scala 176:52:freechips.rocketchip.system.DefaultRV32Config.fir@173544.4]
  wire  _T_6; // @[primitives.scala 176:52:freechips.rocketchip.system.DefaultRV32Config.fir@173545.4]
  wire  _T_7; // @[primitives.scala 176:52:freechips.rocketchip.system.DefaultRV32Config.fir@173546.4]
  wire  _T_8; // @[primitives.scala 176:52:freechips.rocketchip.system.DefaultRV32Config.fir@173547.4]
  wire  _T_9; // @[primitives.scala 176:52:freechips.rocketchip.system.DefaultRV32Config.fir@173548.4]
  wire  _T_10; // @[primitives.scala 176:52:freechips.rocketchip.system.DefaultRV32Config.fir@173549.4]
  wire  _T_11; // @[primitives.scala 176:52:freechips.rocketchip.system.DefaultRV32Config.fir@173550.4]
  wire  _T_12; // @[primitives.scala 176:52:freechips.rocketchip.system.DefaultRV32Config.fir@173551.4]
  wire  _T_13; // @[primitives.scala 176:52:freechips.rocketchip.system.DefaultRV32Config.fir@173552.4]
  wire  _T_14; // @[primitives.scala 176:52:freechips.rocketchip.system.DefaultRV32Config.fir@173553.4]
  wire  _T_15; // @[primitives.scala 176:52:freechips.rocketchip.system.DefaultRV32Config.fir@173554.4]
  wire  _T_16; // @[primitives.scala 176:52:freechips.rocketchip.system.DefaultRV32Config.fir@173555.4]
  wire  _T_17; // @[primitives.scala 176:52:freechips.rocketchip.system.DefaultRV32Config.fir@173556.4]
  wire  _T_18; // @[primitives.scala 176:52:freechips.rocketchip.system.DefaultRV32Config.fir@173557.4]
  wire  _T_19; // @[primitives.scala 176:52:freechips.rocketchip.system.DefaultRV32Config.fir@173558.4]
  wire  _T_20; // @[primitives.scala 176:52:freechips.rocketchip.system.DefaultRV32Config.fir@173559.4]
  wire  _T_21; // @[primitives.scala 176:52:freechips.rocketchip.system.DefaultRV32Config.fir@173560.4]
  wire  _T_22; // @[primitives.scala 176:52:freechips.rocketchip.system.DefaultRV32Config.fir@173561.4]
  wire  _T_23; // @[primitives.scala 176:52:freechips.rocketchip.system.DefaultRV32Config.fir@173562.4]
  wire  _T_24; // @[primitives.scala 176:52:freechips.rocketchip.system.DefaultRV32Config.fir@173563.4]
  wire  _T_25; // @[primitives.scala 176:52:freechips.rocketchip.system.DefaultRV32Config.fir@173564.4]
  wire  _T_26; // @[primitives.scala 176:52:freechips.rocketchip.system.DefaultRV32Config.fir@173565.4]
  wire  _T_27; // @[primitives.scala 176:52:freechips.rocketchip.system.DefaultRV32Config.fir@173566.4]
  wire  _T_28; // @[primitives.scala 176:52:freechips.rocketchip.system.DefaultRV32Config.fir@173567.4]
  wire  _T_29; // @[primitives.scala 176:52:freechips.rocketchip.system.DefaultRV32Config.fir@173568.4]
  wire  _T_30; // @[primitives.scala 176:52:freechips.rocketchip.system.DefaultRV32Config.fir@173569.4]
  wire  _T_31; // @[primitives.scala 176:52:freechips.rocketchip.system.DefaultRV32Config.fir@173570.4]
  wire  _T_32; // @[primitives.scala 176:52:freechips.rocketchip.system.DefaultRV32Config.fir@173571.4]
  wire  _T_33; // @[primitives.scala 176:52:freechips.rocketchip.system.DefaultRV32Config.fir@173572.4]
  wire  _T_34; // @[primitives.scala 176:52:freechips.rocketchip.system.DefaultRV32Config.fir@173573.4]
  wire  _T_35; // @[primitives.scala 176:52:freechips.rocketchip.system.DefaultRV32Config.fir@173574.4]
  wire [4:0] _T_36; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@173575.4]
  wire [4:0] _T_37; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@173576.4]
  wire [4:0] _T_38; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@173577.4]
  wire [4:0] _T_39; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@173578.4]
  wire [4:0] _T_40; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@173579.4]
  wire [4:0] _T_41; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@173580.4]
  wire [4:0] _T_42; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@173581.4]
  wire [4:0] _T_43; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@173582.4]
  wire [4:0] _T_44; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@173583.4]
  wire [4:0] _T_45; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@173584.4]
  wire [4:0] _T_46; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@173585.4]
  wire [4:0] _T_47; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@173586.4]
  wire [4:0] _T_48; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@173587.4]
  wire [4:0] _T_49; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@173588.4]
  wire [4:0] _T_50; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@173589.4]
  wire [4:0] _T_51; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@173590.4]
  wire [4:0] _T_52; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@173591.4]
  wire [4:0] _T_53; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@173592.4]
  wire [4:0] _T_54; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@173593.4]
  wire [4:0] _T_55; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@173594.4]
  wire [4:0] _T_56; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@173595.4]
  wire [4:0] _T_57; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@173596.4]
  wire [4:0] _T_58; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@173597.4]
  wire [4:0] _T_59; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@173598.4]
  wire [4:0] _T_60; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@173599.4]
  wire [4:0] _T_61; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@173600.4]
  wire [4:0] _T_62; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@173601.4]
  wire [4:0] _T_63; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@173602.4]
  wire [4:0] _T_64; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@173603.4]
  wire [4:0] _T_65; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@173604.4]
  wire [4:0] adjustedNormDist; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@173605.4]
  wire [62:0] _GEN_0; // @[rawFloatFromIN.scala 59:22:freechips.rocketchip.system.DefaultRV32Config.fir@173606.4]
  wire [62:0] _T_66; // @[rawFloatFromIN.scala 59:22:freechips.rocketchip.system.DefaultRV32Config.fir@173606.4]
  wire [31:0] sig; // @[rawFloatFromIN.scala 59:41:freechips.rocketchip.system.DefaultRV32Config.fir@173607.4]
  wire  _T_67; // @[rawFloatFromIN.scala 67:28:freechips.rocketchip.system.DefaultRV32Config.fir@173612.4]
  wire [4:0] _T_70; // @[rawFloatFromIN.scala 69:39:freechips.rocketchip.system.DefaultRV32Config.fir@173617.4]
  wire [6:0] _T_71; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@173618.4]
  RoundAnyRawFNToRecFN_1 roundAnyRawFNToRecFN ( // @[INToRecFN.scala 60:15:freechips.rocketchip.system.DefaultRV32Config.fir@173622.4]
    .io_in_isZero(roundAnyRawFNToRecFN_io_in_isZero),
    .io_in_sign(roundAnyRawFNToRecFN_io_in_sign),
    .io_in_sExp(roundAnyRawFNToRecFN_io_in_sExp),
    .io_in_sig(roundAnyRawFNToRecFN_io_in_sig),
    .io_roundingMode(roundAnyRawFNToRecFN_io_roundingMode),
    .io_out(roundAnyRawFNToRecFN_io_out),
    .io_exceptionFlags(roundAnyRawFNToRecFN_io_exceptionFlags)
  );
  assign _T = io_in[31]; // @[rawFloatFromIN.scala 50:34:freechips.rocketchip.system.DefaultRV32Config.fir@173536.4]
  assign sign = io_signedIn & _T; // @[rawFloatFromIN.scala 50:29:freechips.rocketchip.system.DefaultRV32Config.fir@173537.4]
  assign _T_2 = 32'h0 - io_in; // @[rawFloatFromIN.scala 52:31:freechips.rocketchip.system.DefaultRV32Config.fir@173539.4]
  assign absIn = sign ? _T_2 : io_in; // @[rawFloatFromIN.scala 52:24:freechips.rocketchip.system.DefaultRV32Config.fir@173540.4]
  assign _T_3 = {32'h0,absIn}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@173541.4]
  assign extAbsIn = _T_3[31:0]; // @[rawFloatFromIN.scala 54:56:freechips.rocketchip.system.DefaultRV32Config.fir@173542.4]
  assign _T_5 = extAbsIn[1]; // @[primitives.scala 176:52:freechips.rocketchip.system.DefaultRV32Config.fir@173544.4]
  assign _T_6 = extAbsIn[2]; // @[primitives.scala 176:52:freechips.rocketchip.system.DefaultRV32Config.fir@173545.4]
  assign _T_7 = extAbsIn[3]; // @[primitives.scala 176:52:freechips.rocketchip.system.DefaultRV32Config.fir@173546.4]
  assign _T_8 = extAbsIn[4]; // @[primitives.scala 176:52:freechips.rocketchip.system.DefaultRV32Config.fir@173547.4]
  assign _T_9 = extAbsIn[5]; // @[primitives.scala 176:52:freechips.rocketchip.system.DefaultRV32Config.fir@173548.4]
  assign _T_10 = extAbsIn[6]; // @[primitives.scala 176:52:freechips.rocketchip.system.DefaultRV32Config.fir@173549.4]
  assign _T_11 = extAbsIn[7]; // @[primitives.scala 176:52:freechips.rocketchip.system.DefaultRV32Config.fir@173550.4]
  assign _T_12 = extAbsIn[8]; // @[primitives.scala 176:52:freechips.rocketchip.system.DefaultRV32Config.fir@173551.4]
  assign _T_13 = extAbsIn[9]; // @[primitives.scala 176:52:freechips.rocketchip.system.DefaultRV32Config.fir@173552.4]
  assign _T_14 = extAbsIn[10]; // @[primitives.scala 176:52:freechips.rocketchip.system.DefaultRV32Config.fir@173553.4]
  assign _T_15 = extAbsIn[11]; // @[primitives.scala 176:52:freechips.rocketchip.system.DefaultRV32Config.fir@173554.4]
  assign _T_16 = extAbsIn[12]; // @[primitives.scala 176:52:freechips.rocketchip.system.DefaultRV32Config.fir@173555.4]
  assign _T_17 = extAbsIn[13]; // @[primitives.scala 176:52:freechips.rocketchip.system.DefaultRV32Config.fir@173556.4]
  assign _T_18 = extAbsIn[14]; // @[primitives.scala 176:52:freechips.rocketchip.system.DefaultRV32Config.fir@173557.4]
  assign _T_19 = extAbsIn[15]; // @[primitives.scala 176:52:freechips.rocketchip.system.DefaultRV32Config.fir@173558.4]
  assign _T_20 = extAbsIn[16]; // @[primitives.scala 176:52:freechips.rocketchip.system.DefaultRV32Config.fir@173559.4]
  assign _T_21 = extAbsIn[17]; // @[primitives.scala 176:52:freechips.rocketchip.system.DefaultRV32Config.fir@173560.4]
  assign _T_22 = extAbsIn[18]; // @[primitives.scala 176:52:freechips.rocketchip.system.DefaultRV32Config.fir@173561.4]
  assign _T_23 = extAbsIn[19]; // @[primitives.scala 176:52:freechips.rocketchip.system.DefaultRV32Config.fir@173562.4]
  assign _T_24 = extAbsIn[20]; // @[primitives.scala 176:52:freechips.rocketchip.system.DefaultRV32Config.fir@173563.4]
  assign _T_25 = extAbsIn[21]; // @[primitives.scala 176:52:freechips.rocketchip.system.DefaultRV32Config.fir@173564.4]
  assign _T_26 = extAbsIn[22]; // @[primitives.scala 176:52:freechips.rocketchip.system.DefaultRV32Config.fir@173565.4]
  assign _T_27 = extAbsIn[23]; // @[primitives.scala 176:52:freechips.rocketchip.system.DefaultRV32Config.fir@173566.4]
  assign _T_28 = extAbsIn[24]; // @[primitives.scala 176:52:freechips.rocketchip.system.DefaultRV32Config.fir@173567.4]
  assign _T_29 = extAbsIn[25]; // @[primitives.scala 176:52:freechips.rocketchip.system.DefaultRV32Config.fir@173568.4]
  assign _T_30 = extAbsIn[26]; // @[primitives.scala 176:52:freechips.rocketchip.system.DefaultRV32Config.fir@173569.4]
  assign _T_31 = extAbsIn[27]; // @[primitives.scala 176:52:freechips.rocketchip.system.DefaultRV32Config.fir@173570.4]
  assign _T_32 = extAbsIn[28]; // @[primitives.scala 176:52:freechips.rocketchip.system.DefaultRV32Config.fir@173571.4]
  assign _T_33 = extAbsIn[29]; // @[primitives.scala 176:52:freechips.rocketchip.system.DefaultRV32Config.fir@173572.4]
  assign _T_34 = extAbsIn[30]; // @[primitives.scala 176:52:freechips.rocketchip.system.DefaultRV32Config.fir@173573.4]
  assign _T_35 = extAbsIn[31]; // @[primitives.scala 176:52:freechips.rocketchip.system.DefaultRV32Config.fir@173574.4]
  assign _T_36 = _T_5 ? 5'h1e : 5'h1f; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@173575.4]
  assign _T_37 = _T_6 ? 5'h1d : _T_36; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@173576.4]
  assign _T_38 = _T_7 ? 5'h1c : _T_37; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@173577.4]
  assign _T_39 = _T_8 ? 5'h1b : _T_38; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@173578.4]
  assign _T_40 = _T_9 ? 5'h1a : _T_39; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@173579.4]
  assign _T_41 = _T_10 ? 5'h19 : _T_40; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@173580.4]
  assign _T_42 = _T_11 ? 5'h18 : _T_41; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@173581.4]
  assign _T_43 = _T_12 ? 5'h17 : _T_42; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@173582.4]
  assign _T_44 = _T_13 ? 5'h16 : _T_43; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@173583.4]
  assign _T_45 = _T_14 ? 5'h15 : _T_44; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@173584.4]
  assign _T_46 = _T_15 ? 5'h14 : _T_45; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@173585.4]
  assign _T_47 = _T_16 ? 5'h13 : _T_46; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@173586.4]
  assign _T_48 = _T_17 ? 5'h12 : _T_47; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@173587.4]
  assign _T_49 = _T_18 ? 5'h11 : _T_48; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@173588.4]
  assign _T_50 = _T_19 ? 5'h10 : _T_49; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@173589.4]
  assign _T_51 = _T_20 ? 5'hf : _T_50; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@173590.4]
  assign _T_52 = _T_21 ? 5'he : _T_51; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@173591.4]
  assign _T_53 = _T_22 ? 5'hd : _T_52; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@173592.4]
  assign _T_54 = _T_23 ? 5'hc : _T_53; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@173593.4]
  assign _T_55 = _T_24 ? 5'hb : _T_54; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@173594.4]
  assign _T_56 = _T_25 ? 5'ha : _T_55; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@173595.4]
  assign _T_57 = _T_26 ? 5'h9 : _T_56; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@173596.4]
  assign _T_58 = _T_27 ? 5'h8 : _T_57; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@173597.4]
  assign _T_59 = _T_28 ? 5'h7 : _T_58; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@173598.4]
  assign _T_60 = _T_29 ? 5'h6 : _T_59; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@173599.4]
  assign _T_61 = _T_30 ? 5'h5 : _T_60; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@173600.4]
  assign _T_62 = _T_31 ? 5'h4 : _T_61; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@173601.4]
  assign _T_63 = _T_32 ? 5'h3 : _T_62; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@173602.4]
  assign _T_64 = _T_33 ? 5'h2 : _T_63; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@173603.4]
  assign _T_65 = _T_34 ? 5'h1 : _T_64; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@173604.4]
  assign adjustedNormDist = _T_35 ? 5'h0 : _T_65; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@173605.4]
  assign _GEN_0 = {{31'd0}, extAbsIn}; // @[rawFloatFromIN.scala 59:22:freechips.rocketchip.system.DefaultRV32Config.fir@173606.4]
  assign _T_66 = _GEN_0 << adjustedNormDist; // @[rawFloatFromIN.scala 59:22:freechips.rocketchip.system.DefaultRV32Config.fir@173606.4]
  assign sig = _T_66[31:0]; // @[rawFloatFromIN.scala 59:41:freechips.rocketchip.system.DefaultRV32Config.fir@173607.4]
  assign _T_67 = sig[31]; // @[rawFloatFromIN.scala 67:28:freechips.rocketchip.system.DefaultRV32Config.fir@173612.4]
  assign _T_70 = ~ adjustedNormDist; // @[rawFloatFromIN.scala 69:39:freechips.rocketchip.system.DefaultRV32Config.fir@173617.4]
  assign _T_71 = {2'h2,_T_70}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@173618.4]
  assign io_out = roundAnyRawFNToRecFN_io_out; // @[INToRecFN.scala 73:23:freechips.rocketchip.system.DefaultRV32Config.fir@173629.4]
  assign io_exceptionFlags = roundAnyRawFNToRecFN_io_exceptionFlags; // @[INToRecFN.scala 74:23:freechips.rocketchip.system.DefaultRV32Config.fir@173630.4]
  assign roundAnyRawFNToRecFN_io_in_isZero = _T_67 == 1'h0; // @[INToRecFN.scala 70:44:freechips.rocketchip.system.DefaultRV32Config.fir@173626.4]
  assign roundAnyRawFNToRecFN_io_in_sign = io_signedIn & _T; // @[INToRecFN.scala 70:44:freechips.rocketchip.system.DefaultRV32Config.fir@173626.4]
  assign roundAnyRawFNToRecFN_io_in_sExp = {1'b0,$signed(_T_71)}; // @[INToRecFN.scala 70:44:freechips.rocketchip.system.DefaultRV32Config.fir@173626.4]
  assign roundAnyRawFNToRecFN_io_in_sig = {{1'd0}, sig}; // @[INToRecFN.scala 70:44:freechips.rocketchip.system.DefaultRV32Config.fir@173626.4]
  assign roundAnyRawFNToRecFN_io_roundingMode = io_roundingMode; // @[INToRecFN.scala 71:44:freechips.rocketchip.system.DefaultRV32Config.fir@173627.4]
endmodule
`endif // __INToRecFN
