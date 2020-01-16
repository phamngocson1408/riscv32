module FPUDecoder(
  input  [31:0] io_inst,
  output        io_sigs_wen,
  output        io_sigs_ren1,
  output        io_sigs_ren2,
  output        io_sigs_ren3,
  output        io_sigs_swap12,
  output        io_sigs_swap23,
  output        io_sigs_singleOut,
  output        io_sigs_fromint,
  output        io_sigs_toint,
  output        io_sigs_fastpipe,
  output        io_sigs_fma,
  output        io_sigs_div,
  output        io_sigs_sqrt,
  output        io_sigs_wflags
);
  wire [31:0] _T; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@141515.4]
  wire [31:0] _T_2; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@141518.4]
  wire  _T_3; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@141519.4]
  wire [31:0] _T_4; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@141520.4]
  wire  _T_5; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@141521.4]
  wire [31:0] _T_6; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@141522.4]
  wire  _T_7; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@141523.4]
  wire  _T_9; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@141525.4]
  wire [31:0] _T_10; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@141527.4]
  wire  _T_11; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@141528.4]
  wire [31:0] _T_12; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@141529.4]
  wire  _T_13; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@141530.4]
  wire [31:0] _T_14; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@141531.4]
  wire  decoder_4; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@141532.4]
  wire  _T_17; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@141534.4]
  wire [31:0] _T_18; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@141536.4]
  wire  _T_19; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@141537.4]
  wire [31:0] _T_20; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@141538.4]
  wire  _T_21; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@141539.4]
  wire  _T_23; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@141541.4]
  wire [31:0] _T_24; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@141545.4]
  wire [31:0] _T_38; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@141561.4]
  wire  _T_39; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@141562.4]
  wire [31:0] _T_40; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@141563.4]
  wire  _T_41; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@141564.4]
  wire [31:0] _T_42; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@141565.4]
  wire  _T_43; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@141566.4]
  wire  _T_45; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@141568.4]
  wire [31:0] _T_46; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@141570.4]
  wire  _T_49; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@141574.4]
  wire [31:0] _T_51; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@141577.4]
  wire [31:0] _T_53; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@141580.4]
  wire  _T_54; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@141581.4]
  wire [31:0] _T_55; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@141582.4]
  wire  _T_56; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@141583.4]
  wire  _T_58; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@141585.4]
  wire [31:0] _T_59; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@141587.4]
  wire [31:0] _T_61; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@141590.4]
  wire [31:0] _T_63; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@141593.4]
  wire  _T_64; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@141594.4]
  wire [31:0] _T_65; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@141595.4]
  wire  _T_66; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@141596.4]
  wire [31:0] _T_67; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@141597.4]
  wire  _T_68; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@141598.4]
  wire  _T_70; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@141600.4]
  wire  _T_71; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@141601.4]

`define MY_ASSIGNMENT
`ifdef MY_ASSIGNMENT

assign decoder_4 = (io_inst & 32'h50) == 32'h40;
assign io_sigs_wen = ((io_inst & 32'h80000020) == 32'h0) 
			| ((io_inst & 32'h30) == 32'h0) 
			| ((io_inst & 32'h10000020) == 32'h10000000)
			;
assign io_sigs_ren1 = ((io_inst & 32'h80000004) == 32'h0) 
			| ((io_inst & 32'h10000004) == 32'h0) 
			| decoder_4
			;
assign io_sigs_ren2 = ((io_inst & 32'h40000004) == 32'h0) 
			| ((io_inst & 32'h20) == 32'h20) 
			| decoder_4
			;
assign io_sigs_ren3 = (io_inst & 32'h50) == 32'h40;

assign io_sigs_swap12 = (io_inst & 32'h40) == 32'h0;

assign io_sigs_swap23 = (io_inst & 32'h30000010) == 32'h10;

assign io_sigs_singleOut = ((io_inst & 32'h20000000) == 32'h0) 
			| ((io_inst & 32'h10000000) == 32'h0) 
			| ((io_inst & 32'h10) == 32'h0)
			;
assign io_sigs_fromint = (io_inst & 32'h90000010) == 32'h90000010;

assign io_sigs_toint = ((io_inst & 32'h20) == 32'h20) 
			| ((io_inst & 32'h90000010) == 32'h80000010)
			;
assign io_sigs_fastpipe = (io_inst & 32'ha0000010) == 32'h20000010;

assign io_sigs_fma = ((io_inst & 32'hb0000004) == 32'h0) 
			| ((io_inst & 32'ha8000004) == 32'h0) 
			| decoder_4
			;
assign io_sigs_div = (io_inst & 32'h58000010) == 32'h18000010;
assign io_sigs_sqrt = (io_inst & 32'hc0000010) == 32'h40000010;
assign io_sigs_wflags = ((io_inst & 32'h20000004) == 32'h0) 
			| decoder_4 
			| ((io_inst & 32'h8002000) == 32'h8000000) 
			| ((io_inst & 32'hc0000004) == 32'h80000000);

`endif // MY_ASSIGNMENT

`ifndef MY_ASSIGNMENT
  assign decoder_4 = _T_14 == 32'h40; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@141532.4]
  assign io_sigs_wen = _T_9 | _T_7; // @[FPU.scala 133:40:freechips.rocketchip.system.DefaultRV32Config.fir@141604.4]
  assign io_sigs_ren1 = _T_17 | decoder_4; // @[FPU.scala 133:40:freechips.rocketchip.system.DefaultRV32Config.fir@141605.4]
  assign io_sigs_ren2 = _T_23 | decoder_4; // @[FPU.scala 133:40:freechips.rocketchip.system.DefaultRV32Config.fir@141606.4]
  assign io_sigs_ren3 = _T_14 == 32'h40; // @[FPU.scala 133:40:freechips.rocketchip.system.DefaultRV32Config.fir@141607.4]
  assign io_sigs_swap12 = _T == 32'h0; // @[FPU.scala 133:40:freechips.rocketchip.system.DefaultRV32Config.fir@141608.4]
  assign io_sigs_swap23 = _T_24 == 32'h10; // @[FPU.scala 133:40:freechips.rocketchip.system.DefaultRV32Config.fir@141609.4]
  assign io_sigs_singleOut = _T_45 | _T_43; // @[FPU.scala 133:40:freechips.rocketchip.system.DefaultRV32Config.fir@141611.4]
  assign io_sigs_fromint = _T_46 == 32'h90000010; // @[FPU.scala 133:40:freechips.rocketchip.system.DefaultRV32Config.fir@141612.4]
  assign io_sigs_toint = _T_21 | _T_49; // @[FPU.scala 133:40:freechips.rocketchip.system.DefaultRV32Config.fir@141613.4]
  assign io_sigs_fastpipe = _T_51 == 32'h20000010; // @[FPU.scala 133:40:freechips.rocketchip.system.DefaultRV32Config.fir@141614.4]
  assign io_sigs_fma = _T_58 | decoder_4; // @[FPU.scala 133:40:freechips.rocketchip.system.DefaultRV32Config.fir@141615.4]
  assign io_sigs_div = _T_59 == 32'h18000010; // @[FPU.scala 133:40:freechips.rocketchip.system.DefaultRV32Config.fir@141616.4]
  assign io_sigs_sqrt = _T_61 == 32'h40000010; // @[FPU.scala 133:40:freechips.rocketchip.system.DefaultRV32Config.fir@141617.4]
  assign io_sigs_wflags = _T_71 | _T_68; // @[FPU.scala 133:40:freechips.rocketchip.system.DefaultRV32Config.fir@141618.4]

`endif // MY_ASSIGNMENT

  assign _T = io_inst & 32'h40; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@141515.4]
  assign _T_2 = io_inst & 32'h80000020; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@141518.4]
  assign _T_3 = _T_2 == 32'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@141519.4]
  assign _T_4 = io_inst & 32'h30; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@141520.4]
  assign _T_5 = _T_4 == 32'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@141521.4]
  assign _T_6 = io_inst & 32'h10000020; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@141522.4]
  assign _T_7 = _T_6 == 32'h10000000; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@141523.4]
  assign _T_9 = _T_3 | _T_5; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@141525.4]
  assign _T_10 = io_inst & 32'h80000004; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@141527.4]
  assign _T_11 = _T_10 == 32'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@141528.4]
  assign _T_12 = io_inst & 32'h10000004; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@141529.4]
  assign _T_13 = _T_12 == 32'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@141530.4]
  assign _T_14 = io_inst & 32'h50; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@141531.4]
  assign _T_17 = _T_11 | _T_13; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@141534.4]
  assign _T_18 = io_inst & 32'h40000004; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@141536.4]
  assign _T_19 = _T_18 == 32'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@141537.4]
  assign _T_20 = io_inst & 32'h20; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@141538.4]
  assign _T_21 = _T_20 == 32'h20; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@141539.4]
  assign _T_23 = _T_19 | _T_21; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@141541.4]
  assign _T_24 = io_inst & 32'h30000010; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@141545.4]
  assign _T_38 = io_inst & 32'h20000000; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@141561.4]
  assign _T_39 = _T_38 == 32'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@141562.4]
  assign _T_40 = io_inst & 32'h10000000; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@141563.4]
  assign _T_41 = _T_40 == 32'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@141564.4]
  assign _T_42 = io_inst & 32'h10; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@141565.4]
  assign _T_43 = _T_42 == 32'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@141566.4]
  assign _T_45 = _T_39 | _T_41; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@141568.4]
  assign _T_46 = io_inst & 32'h90000010; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@141570.4]
  assign _T_49 = _T_46 == 32'h80000010; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@141574.4]
  assign _T_51 = io_inst & 32'ha0000010; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@141577.4]
  assign _T_53 = io_inst & 32'hb0000004; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@141580.4]
  assign _T_54 = _T_53 == 32'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@141581.4]
  assign _T_55 = io_inst & 32'ha8000004; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@141582.4]
  assign _T_56 = _T_55 == 32'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@141583.4]
  assign _T_58 = _T_54 | _T_56; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@141585.4]
  assign _T_59 = io_inst & 32'h58000010; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@141587.4]
  assign _T_61 = io_inst & 32'hc0000010; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@141590.4]
  assign _T_63 = io_inst & 32'h20000004; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@141593.4]
  assign _T_64 = _T_63 == 32'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@141594.4]
  assign _T_65 = io_inst & 32'h8002000; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@141595.4]
  assign _T_66 = _T_65 == 32'h8000000; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@141596.4]
  assign _T_67 = io_inst & 32'hc0000004; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@141597.4]
  assign _T_68 = _T_67 == 32'h80000000; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@141598.4]
  assign _T_70 = _T_64 | decoder_4; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@141600.4]
  assign _T_71 = _T_70 | _T_66; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@141601.4]
endmodule

