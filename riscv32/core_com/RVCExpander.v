`include "include_module.v"
`ifdef __RVCExpander
module RVCExpander(
  input  [31:0] io_in,
  output [31:0] io_out_bits,
  output [4:0]  io_out_rd,
  output [4:0]  io_out_rs1,
  output [4:0]  io_out_rs2,
  output [4:0]  io_out_rs3,
  output        io_rvc
);
  wire [1:0] _T; // @[RVC.scala 163:20:freechips.rocketchip.system.DefaultRV32Config.fir@146154.4]
  wire [7:0] _T_2; // @[RVC.scala 53:22:freechips.rocketchip.system.DefaultRV32Config.fir@146157.4]
  wire  _T_3; // @[RVC.scala 53:29:freechips.rocketchip.system.DefaultRV32Config.fir@146158.4]
  wire [6:0] _T_4; // @[RVC.scala 53:20:freechips.rocketchip.system.DefaultRV32Config.fir@146159.4]
  wire [3:0] _T_5; // @[RVC.scala 34:26:freechips.rocketchip.system.DefaultRV32Config.fir@146160.4]
  wire [1:0] _T_6; // @[RVC.scala 34:35:freechips.rocketchip.system.DefaultRV32Config.fir@146161.4]
  wire  _T_7; // @[RVC.scala 34:45:freechips.rocketchip.system.DefaultRV32Config.fir@146162.4]
  wire  _T_8; // @[RVC.scala 34:51:freechips.rocketchip.system.DefaultRV32Config.fir@146163.4]
  wire [2:0] _T_13; // @[RVC.scala 31:30:freechips.rocketchip.system.DefaultRV32Config.fir@146168.4]
  wire [4:0] _T_14; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@146169.4]
  wire [29:0] _T_18; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@146173.4]
  wire [4:0] _T_23; // @[RVC.scala 20:101:freechips.rocketchip.system.DefaultRV32Config.fir@146178.4]
  wire [1:0] _T_25; // @[RVC.scala 36:20:freechips.rocketchip.system.DefaultRV32Config.fir@146186.4]
  wire [2:0] _T_26; // @[RVC.scala 36:28:freechips.rocketchip.system.DefaultRV32Config.fir@146187.4]
  wire [7:0] _T_28; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@146189.4]
  wire [2:0] _T_29; // @[RVC.scala 30:30:freechips.rocketchip.system.DefaultRV32Config.fir@146190.4]
  wire [4:0] _T_30; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@146191.4]
  wire [27:0] _T_36; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@146197.4]
  wire [6:0] _T_50; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@146217.4]
  wire [26:0] _T_58; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@146225.4]
  wire [26:0] _T_80; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@146253.4]
  wire [1:0] _T_95; // @[RVC.scala 63:32:freechips.rocketchip.system.DefaultRV32Config.fir@146274.4]
  wire [4:0] _T_106; // @[RVC.scala 63:66:freechips.rocketchip.system.DefaultRV32Config.fir@146285.4]
  wire [26:0] _T_111; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@146290.4]
  wire [2:0] _T_124; // @[RVC.scala 66:30:freechips.rocketchip.system.DefaultRV32Config.fir@146309.4]
  wire [4:0] _T_133; // @[RVC.scala 66:64:freechips.rocketchip.system.DefaultRV32Config.fir@146318.4]
  wire [27:0] _T_138; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@146323.4]
  wire [26:0] _T_169; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@146360.4]
  wire [26:0] _T_200; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@146397.4]
  wire  _T_209; // @[RVC.scala 43:30:freechips.rocketchip.system.DefaultRV32Config.fir@146412.4]
  wire [6:0] _T_211; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@146414.4]
  wire [4:0] _T_212; // @[RVC.scala 43:38:freechips.rocketchip.system.DefaultRV32Config.fir@146415.4]
  wire [11:0] _T_213; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@146416.4]
  wire [4:0] _T_214; // @[RVC.scala 33:13:freechips.rocketchip.system.DefaultRV32Config.fir@146417.4]
  wire [31:0] _T_219; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@146422.4]
  wire [9:0] _T_228; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@146437.4]
  wire  _T_229; // @[RVC.scala 44:36:freechips.rocketchip.system.DefaultRV32Config.fir@146438.4]
  wire [1:0] _T_230; // @[RVC.scala 44:42:freechips.rocketchip.system.DefaultRV32Config.fir@146439.4]
  wire  _T_232; // @[RVC.scala 44:57:freechips.rocketchip.system.DefaultRV32Config.fir@146441.4]
  wire  _T_233; // @[RVC.scala 44:63:freechips.rocketchip.system.DefaultRV32Config.fir@146442.4]
  wire  _T_234; // @[RVC.scala 44:69:freechips.rocketchip.system.DefaultRV32Config.fir@146443.4]
  wire [2:0] _T_235; // @[RVC.scala 44:76:freechips.rocketchip.system.DefaultRV32Config.fir@146444.4]
  wire [20:0] _T_243; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@146452.4]
  wire  _T_244; // @[RVC.scala 81:36:freechips.rocketchip.system.DefaultRV32Config.fir@146453.4]
  wire [9:0] _T_263; // @[RVC.scala 81:46:freechips.rocketchip.system.DefaultRV32Config.fir@146472.4]
  wire  _T_282; // @[RVC.scala 81:58:freechips.rocketchip.system.DefaultRV32Config.fir@146491.4]
  wire [7:0] _T_301; // @[RVC.scala 81:68:freechips.rocketchip.system.DefaultRV32Config.fir@146510.4]
  wire [31:0] _T_306; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@146515.4]
  wire [31:0] _T_321; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@146536.4]
  wire  _T_332; // @[RVC.scala 90:29:freechips.rocketchip.system.DefaultRV32Config.fir@146553.4]
  wire [6:0] _T_333; // @[RVC.scala 90:20:freechips.rocketchip.system.DefaultRV32Config.fir@146554.4]
  wire [14:0] _T_336; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@146557.4]
  wire [31:0] _T_339; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@146560.4]
  wire [19:0] _T_340; // @[RVC.scala 91:31:freechips.rocketchip.system.DefaultRV32Config.fir@146561.4]
  wire [31:0] _T_343; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@146564.4]
  wire  _T_351; // @[RVC.scala 92:14:freechips.rocketchip.system.DefaultRV32Config.fir@146578.4]
  wire  _T_353; // @[RVC.scala 92:27:freechips.rocketchip.system.DefaultRV32Config.fir@146580.4]
  wire  _T_354; // @[RVC.scala 92:21:freechips.rocketchip.system.DefaultRV32Config.fir@146581.4]
  wire [6:0] _T_361; // @[RVC.scala 86:20:freechips.rocketchip.system.DefaultRV32Config.fir@146588.4]
  wire [2:0] _T_364; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@146591.4]
  wire [1:0] _T_365; // @[RVC.scala 42:42:freechips.rocketchip.system.DefaultRV32Config.fir@146592.4]
  wire [31:0] _T_379; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@146606.4]
  wire [31:0] _T_386_bits; // @[RVC.scala 92:10:freechips.rocketchip.system.DefaultRV32Config.fir@146619.4]
  wire [4:0] _T_386_rd; // @[RVC.scala 92:10:freechips.rocketchip.system.DefaultRV32Config.fir@146619.4]
  wire [4:0] _T_386_rs2; // @[RVC.scala 92:10:freechips.rocketchip.system.DefaultRV32Config.fir@146619.4]
  wire [4:0] _T_386_rs3; // @[RVC.scala 92:10:freechips.rocketchip.system.DefaultRV32Config.fir@146619.4]
  wire [25:0] _T_397; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@146630.4]
  wire [30:0] _GEN_0; // @[RVC.scala 99:23:freechips.rocketchip.system.DefaultRV32Config.fir@146642.4]
  wire [30:0] _T_409; // @[RVC.scala 99:23:freechips.rocketchip.system.DefaultRV32Config.fir@146642.4]
  wire [31:0] _T_422; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@146655.4]
  wire [2:0] _T_425; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@146658.4]
  wire  _T_426; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@146659.4]
  wire [2:0] _T_427; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@146660.4]
  wire  _T_428; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@146661.4]
  wire [2:0] _T_429; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@146662.4]
  wire  _T_430; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@146663.4]
  wire [2:0] _T_431; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@146664.4]
  wire  _T_432; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@146665.4]
  wire [2:0] _T_433; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@146666.4]
  wire  _T_434; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@146667.4]
  wire [2:0] _T_435; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@146668.4]
  wire  _T_436; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@146669.4]
  wire [2:0] _T_437; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@146670.4]
  wire  _T_438; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@146671.4]
  wire [2:0] _T_439; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@146672.4]
  wire  _T_441; // @[RVC.scala 103:30:freechips.rocketchip.system.DefaultRV32Config.fir@146674.4]
  wire [30:0] _T_442; // @[RVC.scala 103:22:freechips.rocketchip.system.DefaultRV32Config.fir@146675.4]
  wire [6:0] _T_444; // @[RVC.scala 104:22:freechips.rocketchip.system.DefaultRV32Config.fir@146677.4]
  wire [24:0] _T_454; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@146687.4]
  wire [30:0] _GEN_1; // @[RVC.scala 105:43:freechips.rocketchip.system.DefaultRV32Config.fir@146688.4]
  wire [30:0] _T_455; // @[RVC.scala 105:43:freechips.rocketchip.system.DefaultRV32Config.fir@146688.4]
  wire [1:0] _T_456; // @[RVC.scala 107:42:freechips.rocketchip.system.DefaultRV32Config.fir@146689.4]
  wire  _T_457; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@146690.4]
  wire [30:0] _T_458; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@146691.4]
  wire  _T_459; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@146692.4]
  wire [31:0] _T_460; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@146693.4]
  wire  _T_461; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@146694.4]
  wire [31:0] _T_462; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@146695.4]
  wire [31:0] _T_551; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@146790.4]
  wire [4:0] _T_560; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@146805.4]
  wire [12:0] _T_569; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@146814.4]
  wire  _T_570; // @[RVC.scala 95:29:freechips.rocketchip.system.DefaultRV32Config.fir@146815.4]
  wire [5:0] _T_583; // @[RVC.scala 95:39:freechips.rocketchip.system.DefaultRV32Config.fir@146828.4]
  wire [3:0] _T_598; // @[RVC.scala 95:72:freechips.rocketchip.system.DefaultRV32Config.fir@146843.4]
  wire  _T_611; // @[RVC.scala 95:83:freechips.rocketchip.system.DefaultRV32Config.fir@146856.4]
  wire [31:0] _T_618; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@146863.4]
  wire [31:0] _T_685; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@146936.4]
  wire  _T_691; // @[RVC.scala 113:27:freechips.rocketchip.system.DefaultRV32Config.fir@146948.4]
  wire [6:0] _T_692; // @[RVC.scala 113:23:freechips.rocketchip.system.DefaultRV32Config.fir@146949.4]
  wire [25:0] _T_701; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@146958.4]
  wire [28:0] _T_717; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@146980.4]
  wire [1:0] _T_722; // @[RVC.scala 37:22:freechips.rocketchip.system.DefaultRV32Config.fir@146991.4]
  wire [2:0] _T_724; // @[RVC.scala 37:37:freechips.rocketchip.system.DefaultRV32Config.fir@146993.4]
  wire [27:0] _T_732; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@147001.4]
  wire [27:0] _T_747; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@147022.4]
  wire [24:0] _T_757; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@147038.4]
  wire [24:0] _T_768; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@147055.4]
  wire [24:0] _T_779; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@147072.4]
  wire [17:0] _T_780; // @[RVC.scala 133:29:freechips.rocketchip.system.DefaultRV32Config.fir@147073.4]
  wire [24:0] _T_781; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@147074.4]
  wire [24:0] _T_784; // @[RVC.scala 134:33:freechips.rocketchip.system.DefaultRV32Config.fir@147077.4]
  wire  _T_790; // @[RVC.scala 135:27:freechips.rocketchip.system.DefaultRV32Config.fir@147089.4]
  wire [31:0] _T_761_bits; // @[RVC.scala 21:19:freechips.rocketchip.system.DefaultRV32Config.fir@147042.4 RVC.scala 22:14:freechips.rocketchip.system.DefaultRV32Config.fir@147044.4]
  wire [31:0] _T_788_bits; // @[RVC.scala 21:19:freechips.rocketchip.system.DefaultRV32Config.fir@147081.4 RVC.scala 22:14:freechips.rocketchip.system.DefaultRV32Config.fir@147083.4]
  wire [31:0] _T_791_bits; // @[RVC.scala 135:22:freechips.rocketchip.system.DefaultRV32Config.fir@147090.4]
  wire [4:0] _T_791_rd; // @[RVC.scala 135:22:freechips.rocketchip.system.DefaultRV32Config.fir@147090.4]
  wire [4:0] _T_791_rs1; // @[RVC.scala 135:22:freechips.rocketchip.system.DefaultRV32Config.fir@147090.4]
  wire [4:0] _T_791_rs2; // @[RVC.scala 135:22:freechips.rocketchip.system.DefaultRV32Config.fir@147090.4]
  wire [4:0] _T_791_rs3; // @[RVC.scala 135:22:freechips.rocketchip.system.DefaultRV32Config.fir@147090.4]
  wire [24:0] _T_797; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@147096.4]
  wire [24:0] _T_799; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@147098.4]
  wire [24:0] _T_800; // @[RVC.scala 137:47:freechips.rocketchip.system.DefaultRV32Config.fir@147099.4]
  wire [24:0] _T_803; // @[RVC.scala 138:33:freechips.rocketchip.system.DefaultRV32Config.fir@147102.4]
  wire [31:0] _T_773_bits; // @[RVC.scala 21:19:freechips.rocketchip.system.DefaultRV32Config.fir@147060.4 RVC.scala 22:14:freechips.rocketchip.system.DefaultRV32Config.fir@147062.4]
  wire [31:0] _T_807_bits; // @[RVC.scala 21:19:freechips.rocketchip.system.DefaultRV32Config.fir@147106.4 RVC.scala 22:14:freechips.rocketchip.system.DefaultRV32Config.fir@147108.4]
  wire [31:0] _T_810_bits; // @[RVC.scala 139:25:freechips.rocketchip.system.DefaultRV32Config.fir@147115.4]
  wire [4:0] _T_810_rd; // @[RVC.scala 139:25:freechips.rocketchip.system.DefaultRV32Config.fir@147115.4]
  wire [4:0] _T_810_rs1; // @[RVC.scala 139:25:freechips.rocketchip.system.DefaultRV32Config.fir@147115.4]
  wire [31:0] _T_812_bits; // @[RVC.scala 140:10:freechips.rocketchip.system.DefaultRV32Config.fir@147117.4]
  wire [4:0] _T_812_rd; // @[RVC.scala 140:10:freechips.rocketchip.system.DefaultRV32Config.fir@147117.4]
  wire [4:0] _T_812_rs1; // @[RVC.scala 140:10:freechips.rocketchip.system.DefaultRV32Config.fir@147117.4]
  wire [4:0] _T_812_rs2; // @[RVC.scala 140:10:freechips.rocketchip.system.DefaultRV32Config.fir@147117.4]
  wire [4:0] _T_812_rs3; // @[RVC.scala 140:10:freechips.rocketchip.system.DefaultRV32Config.fir@147117.4]
  wire [8:0] _T_816; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@147121.4]
  wire [3:0] _T_817; // @[RVC.scala 124:34:freechips.rocketchip.system.DefaultRV32Config.fir@147122.4]
  wire [4:0] _T_823; // @[RVC.scala 124:67:freechips.rocketchip.system.DefaultRV32Config.fir@147128.4]
  wire [28:0] _T_828; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@147133.4]
  wire [1:0] _T_833; // @[RVC.scala 39:22:freechips.rocketchip.system.DefaultRV32Config.fir@147144.4]
  wire [3:0] _T_834; // @[RVC.scala 39:30:freechips.rocketchip.system.DefaultRV32Config.fir@147145.4]
  wire [7:0] _T_836; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@147147.4]
  wire [2:0] _T_837; // @[RVC.scala 123:33:freechips.rocketchip.system.DefaultRV32Config.fir@147148.4]
  wire [4:0] _T_843; // @[RVC.scala 123:66:freechips.rocketchip.system.DefaultRV32Config.fir@147154.4]
  wire [27:0] _T_848; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@147159.4]
  wire [27:0] _T_868; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@147185.4]
  wire [4:0] _T_874; // @[RVC.scala 20:57:freechips.rocketchip.system.DefaultRV32Config.fir@147197.4]
  wire [4:0] _T_875; // @[RVC.scala 20:79:freechips.rocketchip.system.DefaultRV32Config.fir@147198.4]
  wire [2:0] _T_914; // @[RVC.scala 151:20:freechips.rocketchip.system.DefaultRV32Config.fir@147285.4]
  wire [4:0] _T_915; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@147286.4]
  wire  _T_916; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@147287.4]
  wire [31:0] _T_44_bits; // @[RVC.scala 21:19:freechips.rocketchip.system.DefaultRV32Config.fir@146205.4 RVC.scala 22:14:freechips.rocketchip.system.DefaultRV32Config.fir@146207.4]
  wire [31:0] _T_24_bits; // @[RVC.scala 21:19:freechips.rocketchip.system.DefaultRV32Config.fir@146179.4 RVC.scala 22:14:freechips.rocketchip.system.DefaultRV32Config.fir@146181.4]
  wire [31:0] _T_917_bits; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147288.4]
  wire [4:0] _T_917_rd; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147288.4]
  wire [4:0] _T_917_rs1; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147288.4]
  wire [4:0] _T_917_rs3; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147288.4]
  wire  _T_918; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@147289.4]
  wire [31:0] _T_66_bits; // @[RVC.scala 21:19:freechips.rocketchip.system.DefaultRV32Config.fir@146233.4 RVC.scala 22:14:freechips.rocketchip.system.DefaultRV32Config.fir@146235.4]
  wire [31:0] _T_919_bits; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147290.4]
  wire [4:0] _T_919_rd; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147290.4]
  wire [4:0] _T_919_rs1; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147290.4]
  wire [4:0] _T_919_rs3; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147290.4]
  wire  _T_920; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@147291.4]
  wire [31:0] _T_88_bits; // @[RVC.scala 21:19:freechips.rocketchip.system.DefaultRV32Config.fir@146261.4 RVC.scala 22:14:freechips.rocketchip.system.DefaultRV32Config.fir@146263.4]
  wire [31:0] _T_921_bits; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147292.4]
  wire [4:0] _T_921_rd; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147292.4]
  wire [4:0] _T_921_rs1; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147292.4]
  wire [4:0] _T_921_rs3; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147292.4]
  wire  _T_922; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@147293.4]
  wire [31:0] _T_119_bits; // @[RVC.scala 21:19:freechips.rocketchip.system.DefaultRV32Config.fir@146298.4 RVC.scala 22:14:freechips.rocketchip.system.DefaultRV32Config.fir@146300.4]
  wire [31:0] _T_923_bits; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147294.4]
  wire [4:0] _T_923_rd; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147294.4]
  wire [4:0] _T_923_rs1; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147294.4]
  wire [4:0] _T_923_rs3; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147294.4]
  wire  _T_924; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@147295.4]
  wire [31:0] _T_146_bits; // @[RVC.scala 21:19:freechips.rocketchip.system.DefaultRV32Config.fir@146331.4 RVC.scala 22:14:freechips.rocketchip.system.DefaultRV32Config.fir@146333.4]
  wire [31:0] _T_925_bits; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147296.4]
  wire [4:0] _T_925_rd; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147296.4]
  wire [4:0] _T_925_rs1; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147296.4]
  wire [4:0] _T_925_rs3; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147296.4]
  wire  _T_926; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@147297.4]
  wire [31:0] _T_177_bits; // @[RVC.scala 21:19:freechips.rocketchip.system.DefaultRV32Config.fir@146368.4 RVC.scala 22:14:freechips.rocketchip.system.DefaultRV32Config.fir@146370.4]
  wire [31:0] _T_927_bits; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147298.4]
  wire [4:0] _T_927_rd; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147298.4]
  wire [4:0] _T_927_rs1; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147298.4]
  wire [4:0] _T_927_rs3; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147298.4]
  wire  _T_928; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@147299.4]
  wire [31:0] _T_208_bits; // @[RVC.scala 21:19:freechips.rocketchip.system.DefaultRV32Config.fir@146405.4 RVC.scala 22:14:freechips.rocketchip.system.DefaultRV32Config.fir@146407.4]
  wire [31:0] _T_929_bits; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147300.4]
  wire [4:0] _T_929_rd; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147300.4]
  wire [4:0] _T_929_rs1; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147300.4]
  wire [4:0] _T_929_rs3; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147300.4]
  wire  _T_930; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@147301.4]
  wire [31:0] _T_931_bits; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147302.4]
  wire [4:0] _T_931_rd; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147302.4]
  wire [4:0] _T_931_rs1; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147302.4]
  wire [4:0] _T_931_rs2; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147302.4]
  wire [4:0] _T_931_rs3; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147302.4]
  wire  _T_932; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@147303.4]
  wire [31:0] _T_933_bits; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147304.4]
  wire [4:0] _T_933_rd; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147304.4]
  wire [4:0] _T_933_rs1; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147304.4]
  wire [4:0] _T_933_rs2; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147304.4]
  wire [4:0] _T_933_rs3; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147304.4]
  wire  _T_934; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@147305.4]
  wire [31:0] _T_935_bits; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147306.4]
  wire [4:0] _T_935_rd; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147306.4]
  wire [4:0] _T_935_rs1; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147306.4]
  wire [4:0] _T_935_rs2; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147306.4]
  wire [4:0] _T_935_rs3; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147306.4]
  wire  _T_936; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@147307.4]
  wire [31:0] _T_937_bits; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147308.4]
  wire [4:0] _T_937_rd; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147308.4]
  wire [4:0] _T_937_rs1; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147308.4]
  wire [4:0] _T_937_rs2; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147308.4]
  wire [4:0] _T_937_rs3; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147308.4]
  wire  _T_938; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@147309.4]
  wire [31:0] _T_939_bits; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147310.4]
  wire [4:0] _T_939_rd; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147310.4]
  wire [4:0] _T_939_rs1; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147310.4]
  wire [4:0] _T_939_rs2; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147310.4]
  wire [4:0] _T_939_rs3; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147310.4]
  wire  _T_940; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@147311.4]
  wire [31:0] _T_941_bits; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147312.4]
  wire [4:0] _T_941_rd; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147312.4]
  wire [4:0] _T_941_rs1; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147312.4]
  wire [4:0] _T_941_rs2; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147312.4]
  wire [4:0] _T_941_rs3; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147312.4]
  wire  _T_942; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@147313.4]
  wire [31:0] _T_943_bits; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147314.4]
  wire [4:0] _T_943_rd; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147314.4]
  wire [4:0] _T_943_rs1; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147314.4]
  wire [4:0] _T_943_rs2; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147314.4]
  wire [4:0] _T_943_rs3; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147314.4]
  wire  _T_944; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@147315.4]
  wire [31:0] _T_945_bits; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147316.4]
  wire [4:0] _T_945_rd; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147316.4]
  wire [4:0] _T_945_rs1; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147316.4]
  wire [4:0] _T_945_rs2; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147316.4]
  wire [4:0] _T_945_rs3; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147316.4]
  wire  _T_946; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@147317.4]
  wire [31:0] _T_706_bits; // @[RVC.scala 21:19:freechips.rocketchip.system.DefaultRV32Config.fir@146963.4 RVC.scala 22:14:freechips.rocketchip.system.DefaultRV32Config.fir@146965.4]
  wire [31:0] _T_947_bits; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147318.4]
  wire [4:0] _T_947_rd; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147318.4]
  wire [4:0] _T_947_rs1; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147318.4]
  wire [4:0] _T_947_rs2; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147318.4]
  wire [4:0] _T_947_rs3; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147318.4]
  wire  _T_948; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@147319.4]
  wire [31:0] _T_721_bits; // @[RVC.scala 21:19:freechips.rocketchip.system.DefaultRV32Config.fir@146984.4 RVC.scala 22:14:freechips.rocketchip.system.DefaultRV32Config.fir@146986.4]
  wire [31:0] _T_949_bits; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147320.4]
  wire [4:0] _T_949_rd; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147320.4]
  wire [4:0] _T_949_rs1; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147320.4]
  wire [4:0] _T_949_rs2; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147320.4]
  wire [4:0] _T_949_rs3; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147320.4]
  wire  _T_950; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@147321.4]
  wire [31:0] _T_736_bits; // @[RVC.scala 21:19:freechips.rocketchip.system.DefaultRV32Config.fir@147005.4 RVC.scala 22:14:freechips.rocketchip.system.DefaultRV32Config.fir@147007.4]
  wire [31:0] _T_951_bits; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147322.4]
  wire [4:0] _T_951_rd; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147322.4]
  wire [4:0] _T_951_rs1; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147322.4]
  wire [4:0] _T_951_rs2; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147322.4]
  wire [4:0] _T_951_rs3; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147322.4]
  wire  _T_952; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@147323.4]
  wire [31:0] _T_751_bits; // @[RVC.scala 21:19:freechips.rocketchip.system.DefaultRV32Config.fir@147026.4 RVC.scala 22:14:freechips.rocketchip.system.DefaultRV32Config.fir@147028.4]
  wire [31:0] _T_953_bits; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147324.4]
  wire [4:0] _T_953_rd; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147324.4]
  wire [4:0] _T_953_rs1; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147324.4]
  wire [4:0] _T_953_rs2; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147324.4]
  wire [4:0] _T_953_rs3; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147324.4]
  wire  _T_954; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@147325.4]
  wire [31:0] _T_955_bits; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147326.4]
  wire [4:0] _T_955_rd; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147326.4]
  wire [4:0] _T_955_rs1; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147326.4]
  wire [4:0] _T_955_rs2; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147326.4]
  wire [4:0] _T_955_rs3; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147326.4]
  wire  _T_956; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@147327.4]
  wire [31:0] _T_832_bits; // @[RVC.scala 21:19:freechips.rocketchip.system.DefaultRV32Config.fir@147137.4 RVC.scala 22:14:freechips.rocketchip.system.DefaultRV32Config.fir@147139.4]
  wire [31:0] _T_957_bits; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147328.4]
  wire [4:0] _T_957_rd; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147328.4]
  wire [4:0] _T_957_rs1; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147328.4]
  wire [4:0] _T_957_rs2; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147328.4]
  wire [4:0] _T_957_rs3; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147328.4]
  wire  _T_958; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@147329.4]
  wire [31:0] _T_852_bits; // @[RVC.scala 21:19:freechips.rocketchip.system.DefaultRV32Config.fir@147163.4 RVC.scala 22:14:freechips.rocketchip.system.DefaultRV32Config.fir@147165.4]
  wire [31:0] _T_959_bits; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147330.4]
  wire [4:0] _T_959_rd; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147330.4]
  wire [4:0] _T_959_rs1; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147330.4]
  wire [4:0] _T_959_rs2; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147330.4]
  wire [4:0] _T_959_rs3; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147330.4]
  wire  _T_960; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@147331.4]
  wire [31:0] _T_872_bits; // @[RVC.scala 21:19:freechips.rocketchip.system.DefaultRV32Config.fir@147189.4 RVC.scala 22:14:freechips.rocketchip.system.DefaultRV32Config.fir@147191.4]
  wire [31:0] _T_961_bits; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147332.4]
  wire [4:0] _T_961_rd; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147332.4]
  wire [4:0] _T_961_rs1; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147332.4]
  wire [4:0] _T_961_rs2; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147332.4]
  wire [4:0] _T_961_rs3; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147332.4]
  wire  _T_962; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@147333.4]
  wire [31:0] _T_963_bits; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147334.4]
  wire [4:0] _T_963_rd; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147334.4]
  wire [4:0] _T_963_rs1; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147334.4]
  wire [4:0] _T_963_rs2; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147334.4]
  wire [4:0] _T_963_rs3; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147334.4]
  wire  _T_964; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@147335.4]
  wire [31:0] _T_965_bits; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147336.4]
  wire [4:0] _T_965_rd; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147336.4]
  wire [4:0] _T_965_rs1; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147336.4]
  wire [4:0] _T_965_rs2; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147336.4]
  wire [4:0] _T_965_rs3; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147336.4]
  wire  _T_966; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@147337.4]
  wire [31:0] _T_967_bits; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147338.4]
  wire [4:0] _T_967_rd; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147338.4]
  wire [4:0] _T_967_rs1; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147338.4]
  wire [4:0] _T_967_rs2; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147338.4]
  wire [4:0] _T_967_rs3; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147338.4]
  wire  _T_968; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@147339.4]
  wire [31:0] _T_969_bits; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147340.4]
  wire [4:0] _T_969_rd; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147340.4]
  wire [4:0] _T_969_rs1; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147340.4]
  wire [4:0] _T_969_rs2; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147340.4]
  wire [4:0] _T_969_rs3; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147340.4]
  wire  _T_970; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@147341.4]
  wire [31:0] _T_971_bits; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147342.4]
  wire [4:0] _T_971_rd; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147342.4]
  wire [4:0] _T_971_rs1; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147342.4]
  wire [4:0] _T_971_rs2; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147342.4]
  wire [4:0] _T_971_rs3; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147342.4]
  wire  _T_972; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@147343.4]
  wire [31:0] _T_973_bits; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147344.4]
  wire [4:0] _T_973_rd; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147344.4]
  wire [4:0] _T_973_rs1; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147344.4]
  wire [4:0] _T_973_rs2; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147344.4]
  wire [4:0] _T_973_rs3; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147344.4]
  wire  _T_974; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@147345.4]
  wire [31:0] _T_975_bits; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147346.4]
  wire [4:0] _T_975_rd; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147346.4]
  wire [4:0] _T_975_rs1; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147346.4]
  wire [4:0] _T_975_rs2; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147346.4]
  wire [4:0] _T_975_rs3; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147346.4]
  wire  _T_976; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@147347.4]

`define MY_ASSIGNMENT
`ifdef MY_ASSIGNMENT
  wire [4:0] rs1p = {2'h1, io_in[9:7]};
  wire [4:0] rs2p = {2'h1, io_in[4:2]};
  wire [4:0] rs2 = io_in[6:2];
  wire [4:0] rd = io_in[11:7];
  wire [9:0] addi4spnImm = {io_in[10:7],io_in[12:11],io_in[5],io_in[6],2'h0};
  wire [6:0] lwImm = {io_in[5], io_in[12:10], io_in[6], 2'h0};
  wire [7:0] ldImm = {io_in[6:5], io_in[12:10], 3'h0};
  wire [7:0] lwspImm = {io_in[3:2], io_in[12], io_in[6:4], 2'h0};
  wire [8:0] ldspImm = {io_in[4:2], io_in[12], io_in[6:5], 3'h0};
  wire [7:0] swspImm = {io_in[8:7], io_in[12:9], 2'h0};
  wire [8:0] sdspImm = {io_in[9:7], io_in[12:10], 3'h0};
  wire [31:0] luiImm = {{15{io_in[12]}}, io_in[6:2], 12'h0};
  wire [12:0] addi16spImm = {{3{io_in[12]}}, io_in[4:3], io_in[5], io_in[2], io_in[6], 4'h0};
  wire [11:0] addiImm = {{7{io_in[12]}}, io_in[6:2]};
  wire [20:0] jImm = {{10{io_in[12]}}, io_in[8], io_in[10:9], io_in[6], io_in[7], io_in[2], io_in[11], io_in[5:3], 1'h0};
  wire [12:0] bImm = {{5{io_in[12]}}, io_in[6:5], io_in[2], io_in[11:10], io_in[4:3], 1'h0};
  wire [5:0] shamt = {io_in[12], io_in[6:2]};
  wire [4:0] x0 = 5'h0;
  wire [4:0] ra = 5'h1;
  wire [4:0] sp = 5'h2;

  assign _T_916 = {io_in[1:0], io_in[15:13]} == 5'h1;
  assign _T_918 = {io_in[1:0], io_in[15:13]} == 5'h2;
  assign _T_920 = {io_in[1:0], io_in[15:13]} == 5'h3;
  assign _T_922 = {io_in[1:0], io_in[15:13]} == 5'h4;
  assign _T_924 = {io_in[1:0], io_in[15:13]} == 5'h5;
  assign _T_926 = {io_in[1:0], io_in[15:13]} == 5'h6;
  assign _T_928 = {io_in[1:0], io_in[15:13]} == 5'h7;
  assign _T_930 = {io_in[1:0], io_in[15:13]} == 5'h8;
  assign _T_932 = {io_in[1:0], io_in[15:13]} == 5'h9;
  assign _T_934 = {io_in[1:0], io_in[15:13]} == 5'ha;
  assign _T_936 = {io_in[1:0], io_in[15:13]} == 5'hb;
  assign _T_938 = {io_in[1:0], io_in[15:13]} == 5'hc;
  assign _T_940 = {io_in[1:0], io_in[15:13]} == 5'hd;
  assign _T_942 = {io_in[1:0], io_in[15:13]} == 5'he;
  assign _T_944 = {io_in[1:0], io_in[15:13]} == 5'hf;
  assign _T_946 = {io_in[1:0], io_in[15:13]} == 5'h10;
  assign _T_948 = {io_in[1:0], io_in[15:13]} == 5'h11;
  assign _T_950 = {io_in[1:0], io_in[15:13]} == 5'h12;
  assign _T_952 = {io_in[1:0], io_in[15:13]} == 5'h13;
  assign _T_954 = {io_in[1:0], io_in[15:13]} == 5'h14;
  assign _T_956 = {io_in[1:0], io_in[15:13]} == 5'h15;
  assign _T_958 = {io_in[1:0], io_in[15:13]} == 5'h16;
  assign _T_960 = {io_in[1:0], io_in[15:13]} == 5'h17;
  assign _T_962 = {io_in[1:0], io_in[15:13]} == 5'h18;
  assign _T_964 = {io_in[1:0], io_in[15:13]} == 5'h19;
  assign _T_966 = {io_in[1:0], io_in[15:13]} == 5'h1a;
  assign _T_968 = {io_in[1:0], io_in[15:13]} == 5'h1b;
  assign _T_970 = {io_in[1:0], io_in[15:13]} == 5'h1c;
  assign _T_972 = {io_in[1:0], io_in[15:13]} == 5'h1d;
  assign _T_974 = {io_in[1:0], io_in[15:13]} == 5'h1e;
  assign _T_976 = {io_in[1:0], io_in[15:13]} == 5'h1f;

  assign _T_4 = (io_in[12:5] != 8'h0) ? 7'h13 : 7'h1f;
  assign _T_24_bits = {2'd0, addi4spnImm, sp, 3'h0, rs2p,_T_4};
  assign _T_44_bits = {{4'd0}, ldImm, rs1p, 3'h3, rs2p, 7'h7};
  assign _T_66_bits = {{5'd0}, lwImm, rs1p, 3'h2, rs2p, 7'h3};
  assign _T_88_bits = {{5'd0}, lwImm, rs1p, 3'h2, rs2p, 7'h7};
  assign _T_119_bits = {{5'd0}, lwImm[6:5], rs2p, rs1p, 3'h2, lwImm[4:0], 7'h3f};
  assign _T_146_bits = {{4'd0}, ldImm[7:5], rs2p, rs1p, 3'h3, ldImm[4:0], 7'h27};
  assign _T_177_bits = {{5'd0}, lwImm[6:5], rs2p, rs1p, 3'h2, lwImm[4:0], 7'h23};
  assign _T_208_bits = {{5'd0}, lwImm[6:5], rs2p, rs1p, 3'h2, lwImm[4:0], 7'h27};
  assign _T_219 = {addiImm, rd, 3'h0, rd, 7'h13};
  assign _T_306 = {jImm[20], jImm[10:1], jImm[11], jImm[19:12], ra, 7'h6f};
  assign _T_321 = {addiImm, x0, 3'h0, rd, 7'h13};
  assign _T_361 = (addiImm != 12'h0) ? 7'h13 : 7'h1f;
  assign _T_379 = {addi16spImm, rd, 3'h0, rd, _T_361};
  assign _T_333 = _T_332 ? 7'h37 : 7'h3f;
  assign _T_343 = {luiImm[31:12], rd, _T_333};
  assign _T_386_bits = _T_354 ? _T_379 
			: _T_343;
  assign _T_439 = ({io_in[12], io_in[6:5]} == 3'h7) ? 3'h3 
		: ({io_in[12], io_in[6:5]} == 3'h6) ? 3'h2 
		: ({io_in[12], io_in[6:5]} == 3'h5) ? 3'h0 
		: ({io_in[12], io_in[6:5]} == 3'h4) ? 3'h0 
		: ({io_in[12], io_in[6:5]} == 3'h3) ? 3'h7 
		: ({io_in[12], io_in[6:5]} == 3'h2) ? 3'h6 
		: ({io_in[12], io_in[6:5]} == 3'h1) ? 3'h4 
		: 3'h0;
  assign _T_442 = (io_in[6:5] == 2'h0) ? 32'h40000000 : 32'h0;
  assign _T_444 = io_in[12] ? 7'h3b : 7'h33;
  assign _GEN_0 = {{5'd0}, _T_397};
  assign _T_409 = _GEN_0 | 31'h40000000;
  assign _T_458 = _T_457 ? _T_409 
		: _GEN_0;
  assign _T_422 = {addiImm, rs1p, 3'h7, rs1p,7'h13};
  assign _T_455 = {{7'd0}, rs2p, rs1p, _T_439, rs1p, _T_444} | _T_442;
  assign _T_462 = _T_461 ? _T_455 
		: _T_459 ? _T_422 
		: {{1'd0}, _T_458};
  assign _T_551 = {jImm[20], jImm[10:1], jImm[11], jImm[19:12], x0, 7'h6f};
  assign _T_618 = {bImm[12], bImm[10:5], x0, rs1p, 3'h0, bImm[4:1], bImm[11], 7'h63};
  assign _T_685 = {bImm[12], bImm[10:5], x0, rs1p, 3'h1, bImm[4:1], bImm[11], 7'h63};
  assign _T_706_bits = {{6'd0}, shamt, rd, 3'h1, rd, 7'h13};
  assign _T_721_bits = {{3'd0}, ldspImm, sp, 3'h3, rd, 7'h7};
  assign _T_692 = (io_in[11:7] != 5'h0) ? 7'h3 : 7'h1f;
  assign _T_736_bits = {{4'd0}, lwspImm, sp, 3'h2, rd, _T_692};
  assign _T_751_bits = {{4'd0}, lwspImm, sp, 3'h2, rd, 7'h7};
  assign _T_779 = {rs2, rd, 3'h0, x0, 7'h67};
  assign _T_781 = {_T_779[24:7],7'h1f};
  assign _T_784 = _T_691 ? _T_779 
			: _T_781;
  assign _T_761_bits = {{7'd0}, rs2, x0, 3'h0, rd, 7'h33};
  assign _T_773_bits = {{7'd0}, rs2, rd, 3'h0, rd, 7'h33};
  assign _T_797 = {rs2, rd, 3'h0, ra, 7'h67};
  assign _T_800 = {_T_779[24:7],7'h73} | 25'h100000;
  assign _T_803 = _T_691 ? _T_797 
			: _T_800;
  assign _T_807_bits = {{7'd0}, _T_803}; 
  assign _T_810_bits = _T_790 ? _T_773_bits 
			: _T_807_bits;
  assign _T_812_bits = _T_209 ? _T_810_bits 
			: _T_790 ? _T_761_bits 
			: {{7'd0}, _T_784};
  assign _T_832_bits = {{3'd0}, sdspImm[8:5], rs2, sp, 3'h3, sdspImm[4:0], 7'h27};
  assign _T_852_bits = {{4'd0}, swspImm[7:5], rs2, sp, 3'h2, swspImm[4:0], 7'h23};
  assign _T_872_bits = {{4'd0}, swspImm[7:5], rs2, sp, 3'h2, swspImm[4:0], 7'h27};
  assign io_out_bits = _T_976 ? io_in 
			: _T_974 ? io_in 
			: _T_972 ? io_in 
			: _T_970 ? io_in 
			: _T_968 ? io_in 
			: _T_966 ? io_in 
			: _T_964 ? io_in 
			: _T_962 ? io_in 
			: _T_960 ? _T_872_bits 
			: _T_958 ? _T_852_bits 
			: _T_956 ? _T_832_bits 
			: _T_954 ? _T_812_bits 
			: _T_952 ? _T_751_bits 
			: _T_950 ? _T_736_bits 
			: _T_948 ? _T_721_bits 
			: _T_946 ? _T_706_bits 
			: _T_944 ? _T_685 
			: _T_942 ? _T_618 
			: _T_940 ? _T_551 
			: _T_938 ? _T_462 
			: _T_936 ? _T_386_bits 
			: _T_934 ? _T_321 
			: _T_932 ? _T_306 
			: _T_930 ? _T_219 
			: _T_928 ? _T_208_bits 
			: _T_926 ? _T_177_bits 
			: _T_924 ? _T_146_bits 
			: _T_922 ? _T_119_bits 
			: _T_920 ? _T_88_bits 
			: _T_918 ? _T_66_bits 
			: _T_916 ? _T_44_bits 
			: _T_24_bits;

  assign _T_812_rd = _T_209 ? (_T_790 ? rd : ra) 
			: _T_790 ? rd 
			: x0;
  assign io_out_rd = _T_976 ? rd 
			: _T_974 ? rd 
			: _T_972 ? rd 
			: _T_970 ? rd 
			: _T_968 ? rd 
			: _T_966 ? rd 
			: _T_964 ? rd 
			: _T_962 ? rd 
			: _T_960 ? rd 
			: _T_958 ? rd 
			: _T_956 ? rd 
			: _T_954 ? _T_812_rd 
			: _T_952 ? rd 
			: _T_950 ? rd 
			: _T_948 ? rd 
			: _T_946 ? rd 
			: _T_944 ? x0 
			: _T_942 ? rs1p 
			: _T_940 ? x0 
			: _T_938 ? rs1p 
			: _T_936 ? (_T_354 ? rd : rd) 
			: _T_934 ? rd 
			: _T_932 ? ra 
			: _T_930 ? rd 
			: _T_928 ? rs2p 
			: _T_926 ? rs2p 
			: _T_924 ? rs2p 
			: _T_922 ? rs2p 
			: _T_920 ? rs2p 
			: _T_918 ? rs2p 
			: _T_916 ? rs2p 
			: rs2p;

  assign _T_812_rs1 = _T_209 ? (_T_790 ? rd : rd) 
			: _T_790 ? x0 
			: rd;
  assign io_out_rs1 = _T_976 ? io_in[19:15] 
			: _T_974 ? io_in[19:15]
			: _T_972 ? io_in[19:15]
			: _T_970 ? io_in[19:15]
			: _T_968 ? io_in[19:15]
			: _T_966 ? io_in[19:15]
			: _T_964 ? io_in[19:15]
			: _T_962 ? io_in[19:15]
			: _T_960 ? sp 
			: _T_958 ? sp 
			: _T_956 ? sp 
			: _T_954 ? _T_812_rs1 
			: _T_952 ? sp 
			: _T_950 ? sp 
			: _T_948 ? sp 
			: _T_946 ? rd 
			: _T_944 ? rs1p 
			: _T_942 ? rs1p 
			: _T_940 ? rs1p 
			: _T_938 ? rs1p 
			: _T_936 ? (_T_354 ? rd : rd) 
			: _T_934 ? x0 
			: _T_932 ? rd 
			: _T_930 ? rd 
			: _T_928 ? rs1p 
			: _T_926 ? rs1p 
			: _T_924 ? rs1p 
			: _T_922 ? rs1p 
			: _T_920 ? rs1p 
			: _T_918 ? rs1p 
			: _T_916 ? rs1p 
			: sp;

  assign _T_812_rs2 = _T_209 ? (_T_790 ? io_in[6:2] : io_in[6:2]) 
			: _T_790 ? io_in[6:2] 
			: io_in[6:2];
  assign io_out_rs2 = _T_976 ? io_in[24:20] 
			: _T_974 ? io_in[24:20] 
			: _T_972 ? io_in[24:20] 
			: _T_970 ? io_in[24:20] 
			: _T_968 ? io_in[24:20] 
			: _T_966 ? io_in[24:20] 
			: _T_964 ? io_in[24:20] 
			: _T_962 ? io_in[24:20] 
			: _T_960 ? rs2 
			: _T_958 ? rs2 
			: _T_956 ? rs2 
			: _T_954 ? _T_812_rs2 
			: _T_952 ? rs2 
			: _T_950 ? rs2 
			: _T_948 ? rs2 
			: _T_946 ? rs2 
			: _T_944 ? x0
			: _T_942 ? x0
			: _T_940 ? rs2p 
			: _T_938 ? rs2p 
			: _T_936 ? (_T_354 ? rs2p : rs2p) 
			: _T_934 ? rs2p 
			: _T_932 ? rs2p 
			: _T_930 ? rs2p 
			: _T_928 ? rs2p 
			: _T_926 ? rs2p 
			: _T_924 ? rs2p 
			: _T_922 ? rs2p 
			: _T_920 ? rs2p 
			: _T_918 ? rs2p 
			: _T_916 ? rs2p 
			: rs2p;

  assign io_out_rs3 = io_in[31:27]; 

  assign io_rvc = io_in[1:0] != 2'h3;
// Passed
`endif // MY_ASSIGNMENT

`ifndef MY_ASSIGNMENT

  assign _T_916 = _T_915 == 5'h1; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@147287.4]
  assign _T_918 = _T_915 == 5'h2; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@147289.4]
  assign _T_920 = _T_915 == 5'h3; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@147291.4]
  assign _T_922 = _T_915 == 5'h4; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@147293.4]
  assign _T_924 = _T_915 == 5'h5; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@147295.4]
  assign _T_926 = _T_915 == 5'h6; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@147297.4]
  assign _T_928 = _T_915 == 5'h7; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@147299.4]
  assign _T_930 = _T_915 == 5'h8; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@147301.4]
  assign _T_932 = _T_915 == 5'h9; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@147303.4]
  assign _T_934 = _T_915 == 5'ha; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@147305.4]
  assign _T_936 = _T_915 == 5'hb; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@147307.4]
  assign _T_938 = _T_915 == 5'hc; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@147309.4]
  assign _T_940 = _T_915 == 5'hd; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@147311.4]
  assign _T_942 = _T_915 == 5'he; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@147313.4]
  assign _T_944 = _T_915 == 5'hf; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@147315.4]
  assign _T_946 = _T_915 == 5'h10; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@147317.4]
  assign _T_948 = _T_915 == 5'h11; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@147319.4]
  assign _T_950 = _T_915 == 5'h12; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@147321.4]
  assign _T_952 = _T_915 == 5'h13; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@147323.4]
  assign _T_954 = _T_915 == 5'h14; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@147325.4]
  assign _T_956 = _T_915 == 5'h15; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@147327.4]
  assign _T_958 = _T_915 == 5'h16; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@147329.4]
  assign _T_960 = _T_915 == 5'h17; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@147331.4]
  assign _T_962 = _T_915 == 5'h18; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@147333.4]
  assign _T_964 = _T_915 == 5'h19; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@147335.4]
  assign _T_966 = _T_915 == 5'h1a; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@147337.4]
  assign _T_968 = _T_915 == 5'h1b; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@147339.4]
  assign _T_970 = _T_915 == 5'h1c; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@147341.4]
  assign _T_972 = _T_915 == 5'h1d; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@147343.4]
  assign _T_974 = _T_915 == 5'h1e; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@147345.4]
  assign _T_976 = _T_915 == 5'h1f; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@147347.4]

  assign _T_4 = _T_3 ? 7'h13 : 7'h1f; // @[RVC.scala 53:20:freechips.rocketchip.system.DefaultRV32Config.fir@146159.4]
  assign _T_24_bits = {{2'd0}, _T_18}; // @[RVC.scala 21:19:freechips.rocketchip.system.DefaultRV32Config.fir@146179.4 RVC.scala 22:14:freechips.rocketchip.system.DefaultRV32Config.fir@146181.4]
  assign _T_44_bits = {{4'd0}, _T_36}; // @[RVC.scala 21:19:freechips.rocketchip.system.DefaultRV32Config.fir@146205.4 RVC.scala 22:14:freechips.rocketchip.system.DefaultRV32Config.fir@146207.4]
  assign _T_66_bits = {{5'd0}, _T_58}; // @[RVC.scala 21:19:freechips.rocketchip.system.DefaultRV32Config.fir@146233.4 RVC.scala 22:14:freechips.rocketchip.system.DefaultRV32Config.fir@146235.4]
  assign _T_88_bits = {{5'd0}, _T_80}; // @[RVC.scala 21:19:freechips.rocketchip.system.DefaultRV32Config.fir@146261.4 RVC.scala 22:14:freechips.rocketchip.system.DefaultRV32Config.fir@146263.4]
  assign _T_119_bits = {{5'd0}, _T_111}; // @[RVC.scala 21:19:freechips.rocketchip.system.DefaultRV32Config.fir@146298.4 RVC.scala 22:14:freechips.rocketchip.system.DefaultRV32Config.fir@146300.4]
  assign _T_146_bits = {{4'd0}, _T_138}; // @[RVC.scala 21:19:freechips.rocketchip.system.DefaultRV32Config.fir@146331.4 RVC.scala 22:14:freechips.rocketchip.system.DefaultRV32Config.fir@146333.4]
  assign _T_177_bits = {{5'd0}, _T_169}; // @[RVC.scala 21:19:freechips.rocketchip.system.DefaultRV32Config.fir@146368.4 RVC.scala 22:14:freechips.rocketchip.system.DefaultRV32Config.fir@146370.4]
  assign _T_208_bits = {{5'd0}, _T_200}; // @[RVC.scala 21:19:freechips.rocketchip.system.DefaultRV32Config.fir@146405.4 RVC.scala 22:14:freechips.rocketchip.system.DefaultRV32Config.fir@146407.4]
  assign _T_219 = {_T_211,_T_212,_T_214,3'h0,_T_214,7'h13}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@146422.4]
  assign _T_306 = {_T_244,_T_263,_T_282,_T_301,5'h1,7'h6f}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@146515.4]
  assign _T_321 = {_T_211,_T_212,5'h0,3'h0,_T_214,7'h13}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@146536.4]
  assign _T_361 = _T_332 ? 7'h13 : 7'h1f; // @[RVC.scala 86:20:freechips.rocketchip.system.DefaultRV32Config.fir@146588.4]
  assign _T_379 = {_T_364,_T_365,_T_7,_T_233,_T_8,4'h0,_T_214,3'h0,_T_214,_T_361}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@146606.4]
  assign _T_333 = _T_332 ? 7'h37 : 7'h3f; // @[RVC.scala 90:20:freechips.rocketchip.system.DefaultRV32Config.fir@146554.4]
  assign _T_343 = {_T_340,_T_214,_T_333}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@146564.4]
  assign _T_386_bits = _T_354 ? _T_379 : _T_343; // @[RVC.scala 92:10:freechips.rocketchip.system.DefaultRV32Config.fir@146619.4]
  assign _T_439 = _T_438 ? 3'h3 : _T_437; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@146672.4]
  assign _GEN_0 = {{5'd0}, _T_397}; // @[RVC.scala 99:23:freechips.rocketchip.system.DefaultRV32Config.fir@146642.4]
  assign _T_409 = _GEN_0 | 31'h40000000; // @[RVC.scala 99:23:freechips.rocketchip.system.DefaultRV32Config.fir@146642.4]
  assign _T_442 = _T_441 ? 31'h40000000 : 31'h0; // @[RVC.scala 103:22:freechips.rocketchip.system.DefaultRV32Config.fir@146675.4]
  assign _T_444 = _T_209 ? 7'h3b : 7'h33; // @[RVC.scala 104:22:freechips.rocketchip.system.DefaultRV32Config.fir@146677.4]
  assign _T_458 = _T_457 ? _T_409 : {{5'd0}, _T_397}; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@146691.4]
  assign _T_422 = {_T_211,_T_212,2'h1,_T_29,3'h7,2'h1,_T_29,7'h13}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@146655.4]
  assign _T_455 = _GEN_1 | _T_442; // @[RVC.scala 105:43:freechips.rocketchip.system.DefaultRV32Config.fir@146688.4]
  assign _T_462 = _T_461 ? {{1'd0}, _T_455} : _T_460; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@146695.4]
  assign _T_551 = {_T_244,_T_263,_T_282,_T_301,5'h0,7'h6f}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@146790.4]
  assign _T_618 = {_T_570,_T_583,5'h0,2'h1,_T_29,3'h0,_T_598,_T_611,7'h63}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@146863.4]
  assign _T_685 = {_T_570,_T_583,5'h0,2'h1,_T_29,3'h1,_T_598,_T_611,7'h63}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@146936.4]
  assign _T_706_bits = {{6'd0}, _T_701}; // @[RVC.scala 21:19:freechips.rocketchip.system.DefaultRV32Config.fir@146963.4 RVC.scala 22:14:freechips.rocketchip.system.DefaultRV32Config.fir@146965.4]
  assign _T_721_bits = {{3'd0}, _T_717}; // @[RVC.scala 21:19:freechips.rocketchip.system.DefaultRV32Config.fir@146984.4 RVC.scala 22:14:freechips.rocketchip.system.DefaultRV32Config.fir@146986.4]
  assign _T_692 = _T_691 ? 7'h3 : 7'h1f; // @[RVC.scala 113:23:freechips.rocketchip.system.DefaultRV32Config.fir@146949.4]
  assign _T_736_bits = {{4'd0}, _T_732}; // @[RVC.scala 21:19:freechips.rocketchip.system.DefaultRV32Config.fir@147005.4 RVC.scala 22:14:freechips.rocketchip.system.DefaultRV32Config.fir@147007.4]
  assign _T_751_bits = {{4'd0}, _T_747}; // @[RVC.scala 21:19:freechips.rocketchip.system.DefaultRV32Config.fir@147026.4 RVC.scala 22:14:freechips.rocketchip.system.DefaultRV32Config.fir@147028.4]
  assign _T_779 = {_T_212,_T_214,3'h0,12'h67}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@147072.4]
  assign _T_781 = {_T_780,7'h1f}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@147074.4]
  assign _T_784 = _T_691 ? _T_779 : _T_781; // @[RVC.scala 134:33:freechips.rocketchip.system.DefaultRV32Config.fir@147077.4]
  assign _T_761_bits = {{7'd0}, _T_757}; // @[RVC.scala 21:19:freechips.rocketchip.system.DefaultRV32Config.fir@147042.4 RVC.scala 22:14:freechips.rocketchip.system.DefaultRV32Config.fir@147044.4]
  assign _T_812_bits = _T_209 ? _T_810_bits : _T_791_bits; // @[RVC.scala 140:10:freechips.rocketchip.system.DefaultRV32Config.fir@147117.4]
  assign _T_773_bits = {{7'd0}, _T_768}; // @[RVC.scala 21:19:freechips.rocketchip.system.DefaultRV32Config.fir@147060.4 RVC.scala 22:14:freechips.rocketchip.system.DefaultRV32Config.fir@147062.4]
  assign _T_797 = {_T_212,_T_214,3'h0,12'he7}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@147096.4]
  assign _T_800 = _T_799 | 25'h100000; // @[RVC.scala 137:47:freechips.rocketchip.system.DefaultRV32Config.fir@147099.4]
  assign _T_803 = _T_691 ? _T_797 : _T_800; // @[RVC.scala 138:33:freechips.rocketchip.system.DefaultRV32Config.fir@147102.4]
  assign _T_807_bits = {{7'd0}, _T_803}; // @[RVC.scala 21:19:freechips.rocketchip.system.DefaultRV32Config.fir@147106.4 RVC.scala 22:14:freechips.rocketchip.system.DefaultRV32Config.fir@147108.4]
  assign _T_810_bits = _T_790 ? _T_773_bits : _T_807_bits; // @[RVC.scala 139:25:freechips.rocketchip.system.DefaultRV32Config.fir@147115.4]
  assign _T_832_bits = {{3'd0}, _T_828}; // @[RVC.scala 21:19:freechips.rocketchip.system.DefaultRV32Config.fir@147137.4 RVC.scala 22:14:freechips.rocketchip.system.DefaultRV32Config.fir@147139.4]
  assign _T_852_bits = {{4'd0}, _T_848}; // @[RVC.scala 21:19:freechips.rocketchip.system.DefaultRV32Config.fir@147163.4 RVC.scala 22:14:freechips.rocketchip.system.DefaultRV32Config.fir@147165.4]
  assign _T_872_bits = {{4'd0}, _T_868}; // @[RVC.scala 21:19:freechips.rocketchip.system.DefaultRV32Config.fir@147189.4 RVC.scala 22:14:freechips.rocketchip.system.DefaultRV32Config.fir@147191.4]
  assign io_out_bits = _T_976 ? io_in : _T_975_bits; // @[RVC.scala 164:12:freechips.rocketchip.system.DefaultRV32Config.fir@147349.4]

  assign _T_812_rd = _T_209 ? _T_810_rd : _T_791_rd; // @[RVC.scala 140:10:freechips.rocketchip.system.DefaultRV32Config.fir@147117.4]
  assign io_out_rd = _T_976 ? rd 

  assign _T_812_rs1 = _T_209 ? _T_810_rs1 : _T_791_rs1; // @[RVC.scala 140:10:freechips.rocketchip.system.DefaultRV32Config.fir@147117.4]
  assign io_out_rs1 = _T_976 ? _T_874 : _T_975_rs1; // @[RVC.scala 164:12:freechips.rocketchip.system.DefaultRV32Config.fir@147349.4]

  assign _T_812_rs2 = _T_209 ? _T_791_rs2 : _T_791_rs2; // @[RVC.scala 140:10:freechips.rocketchip.system.DefaultRV32Config.fir@147117.4]
  assign io_out_rs2 = _T_976 ? _T_875 : _T_975_rs2; // @[RVC.scala 164:12:freechips.rocketchip.system.DefaultRV32Config.fir@147349.4]

  assign io_out_rs3 = _T_976 ? _T_23 : _T_975_rs3; // @[RVC.scala 164:12:freechips.rocketchip.system.DefaultRV32Config.fir@147349.4]

  assign io_rvc = _T != 2'h3; // @[RVC.scala 163:12:freechips.rocketchip.system.DefaultRV32Config.fir@146156.4]

`endif // MY_ASSIGNMENT

  assign _T = io_in[1:0]; // @[RVC.scala 163:20:freechips.rocketchip.system.DefaultRV32Config.fir@146154.4]
  assign _T_2 = io_in[12:5]; // @[RVC.scala 53:22:freechips.rocketchip.system.DefaultRV32Config.fir@146157.4]
  assign _T_3 = _T_2 != 8'h0; // @[RVC.scala 53:29:freechips.rocketchip.system.DefaultRV32Config.fir@146158.4]
  assign _T_5 = io_in[10:7]; // @[RVC.scala 34:26:freechips.rocketchip.system.DefaultRV32Config.fir@146160.4]
  assign _T_6 = io_in[12:11]; // @[RVC.scala 34:35:freechips.rocketchip.system.DefaultRV32Config.fir@146161.4]
  assign _T_7 = io_in[5]; // @[RVC.scala 34:45:freechips.rocketchip.system.DefaultRV32Config.fir@146162.4]
  assign _T_8 = io_in[6]; // @[RVC.scala 34:51:freechips.rocketchip.system.DefaultRV32Config.fir@146163.4]
  assign _T_13 = io_in[4:2]; // @[RVC.scala 31:30:freechips.rocketchip.system.DefaultRV32Config.fir@146168.4]
  assign _T_14 = {2'h1,_T_13}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@146169.4]
  assign _T_18 = {_T_5,_T_6,_T_7,_T_8,2'h0,5'h2,3'h0,2'h1,_T_13,_T_4}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@146173.4]
  assign _T_23 = io_in[31:27]; // @[RVC.scala 20:101:freechips.rocketchip.system.DefaultRV32Config.fir@146178.4]
  assign _T_25 = io_in[6:5]; // @[RVC.scala 36:20:freechips.rocketchip.system.DefaultRV32Config.fir@146186.4]
  assign _T_26 = io_in[12:10]; // @[RVC.scala 36:28:freechips.rocketchip.system.DefaultRV32Config.fir@146187.4]
  assign _T_28 = {_T_25,_T_26,3'h0}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@146189.4]
  assign _T_29 = io_in[9:7]; // @[RVC.scala 30:30:freechips.rocketchip.system.DefaultRV32Config.fir@146190.4]
  assign _T_30 = {2'h1,_T_29}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@146191.4]
  assign _T_36 = {_T_25,_T_26,3'h0,2'h1,_T_29,3'h3,2'h1,_T_13,7'h7}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@146197.4]
  assign _T_50 = {_T_7,_T_26,_T_8,2'h0}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@146217.4]
  assign _T_58 = {_T_7,_T_26,_T_8,2'h0,2'h1,_T_29,3'h2,2'h1,_T_13,7'h3}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@146225.4]
  assign _T_80 = {_T_7,_T_26,_T_8,2'h0,2'h1,_T_29,3'h2,2'h1,_T_13,7'h7}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@146253.4]
  assign _T_95 = _T_50[6:5]; // @[RVC.scala 63:32:freechips.rocketchip.system.DefaultRV32Config.fir@146274.4]
  assign _T_106 = _T_50[4:0]; // @[RVC.scala 63:66:freechips.rocketchip.system.DefaultRV32Config.fir@146285.4]
  assign _T_111 = {_T_95,2'h1,_T_13,2'h1,_T_29,3'h2,_T_106,7'h3f}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@146290.4]
  assign _T_124 = _T_28[7:5]; // @[RVC.scala 66:30:freechips.rocketchip.system.DefaultRV32Config.fir@146309.4]
  assign _T_133 = _T_28[4:0]; // @[RVC.scala 66:64:freechips.rocketchip.system.DefaultRV32Config.fir@146318.4]
  assign _T_138 = {_T_124,2'h1,_T_13,2'h1,_T_29,3'h3,_T_133,7'h27}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@146323.4]
  assign _T_169 = {_T_95,2'h1,_T_13,2'h1,_T_29,3'h2,_T_106,7'h23}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@146360.4]
  assign _T_200 = {_T_95,2'h1,_T_13,2'h1,_T_29,3'h2,_T_106,7'h27}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@146397.4]
  assign _T_209 = io_in[12]; // @[RVC.scala 43:30:freechips.rocketchip.system.DefaultRV32Config.fir@146412.4]
  assign _T_211 = _T_209 ? 7'h7f : 7'h0; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@146414.4]
  assign _T_212 = io_in[6:2]; // @[RVC.scala 43:38:freechips.rocketchip.system.DefaultRV32Config.fir@146415.4]
  assign _T_213 = {_T_211,_T_212}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@146416.4]
  assign _T_214 = io_in[11:7]; // @[RVC.scala 33:13:freechips.rocketchip.system.DefaultRV32Config.fir@146417.4]
  assign _T_228 = _T_209 ? 10'h3ff : 10'h0; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@146437.4]
  assign _T_229 = io_in[8]; // @[RVC.scala 44:36:freechips.rocketchip.system.DefaultRV32Config.fir@146438.4]
  assign _T_230 = io_in[10:9]; // @[RVC.scala 44:42:freechips.rocketchip.system.DefaultRV32Config.fir@146439.4]
  assign _T_232 = io_in[7]; // @[RVC.scala 44:57:freechips.rocketchip.system.DefaultRV32Config.fir@146441.4]
  assign _T_233 = io_in[2]; // @[RVC.scala 44:63:freechips.rocketchip.system.DefaultRV32Config.fir@146442.4]
  assign _T_234 = io_in[11]; // @[RVC.scala 44:69:freechips.rocketchip.system.DefaultRV32Config.fir@146443.4]
  assign _T_235 = io_in[5:3]; // @[RVC.scala 44:76:freechips.rocketchip.system.DefaultRV32Config.fir@146444.4]
  assign _T_243 = {_T_228,_T_229,_T_230,_T_8,_T_232,_T_233,_T_234,_T_235,1'h0}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@146452.4]
  assign _T_244 = _T_243[20]; // @[RVC.scala 81:36:freechips.rocketchip.system.DefaultRV32Config.fir@146453.4]
  assign _T_263 = _T_243[10:1]; // @[RVC.scala 81:46:freechips.rocketchip.system.DefaultRV32Config.fir@146472.4]
  assign _T_282 = _T_243[11]; // @[RVC.scala 81:58:freechips.rocketchip.system.DefaultRV32Config.fir@146491.4]
  assign _T_301 = _T_243[19:12]; // @[RVC.scala 81:68:freechips.rocketchip.system.DefaultRV32Config.fir@146510.4]
  assign _T_332 = _T_213 != 12'h0; // @[RVC.scala 90:29:freechips.rocketchip.system.DefaultRV32Config.fir@146553.4]
  assign _T_336 = _T_209 ? 15'h7fff : 15'h0; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@146557.4]
  assign _T_339 = {_T_336,_T_212,12'h0}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@146560.4]
  assign _T_340 = _T_339[31:12]; // @[RVC.scala 91:31:freechips.rocketchip.system.DefaultRV32Config.fir@146561.4]
  assign _T_351 = _T_214 == 5'h0; // @[RVC.scala 92:14:freechips.rocketchip.system.DefaultRV32Config.fir@146578.4]
  assign _T_353 = _T_214 == 5'h2; // @[RVC.scala 92:27:freechips.rocketchip.system.DefaultRV32Config.fir@146580.4]
  assign _T_354 = _T_351 | _T_353; // @[RVC.scala 92:21:freechips.rocketchip.system.DefaultRV32Config.fir@146581.4]
  assign _T_364 = _T_209 ? 3'h7 : 3'h0; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@146591.4]
  assign _T_365 = io_in[4:3]; // @[RVC.scala 42:42:freechips.rocketchip.system.DefaultRV32Config.fir@146592.4]
  assign _T_386_rd = _T_354 ? _T_214 : _T_214; // @[RVC.scala 92:10:freechips.rocketchip.system.DefaultRV32Config.fir@146619.4]
  assign _T_386_rs2 = _T_354 ? _T_14 : _T_14; // @[RVC.scala 92:10:freechips.rocketchip.system.DefaultRV32Config.fir@146619.4]
  assign _T_386_rs3 = _T_354 ? _T_23 : _T_23; // @[RVC.scala 92:10:freechips.rocketchip.system.DefaultRV32Config.fir@146619.4]
  assign _T_397 = {_T_209,_T_212,2'h1,_T_29,3'h5,2'h1,_T_29,7'h13}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@146630.4]
  assign _T_425 = {_T_209,_T_25}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@146658.4]
  assign _T_426 = _T_425 == 3'h1; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@146659.4]
  assign _T_427 = _T_426 ? 3'h4 : 3'h0; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@146660.4]
  assign _T_428 = _T_425 == 3'h2; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@146661.4]
  assign _T_429 = _T_428 ? 3'h6 : _T_427; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@146662.4]
  assign _T_430 = _T_425 == 3'h3; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@146663.4]
  assign _T_431 = _T_430 ? 3'h7 : _T_429; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@146664.4]
  assign _T_432 = _T_425 == 3'h4; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@146665.4]
  assign _T_433 = _T_432 ? 3'h0 : _T_431; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@146666.4]
  assign _T_434 = _T_425 == 3'h5; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@146667.4]
  assign _T_435 = _T_434 ? 3'h0 : _T_433; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@146668.4]
  assign _T_436 = _T_425 == 3'h6; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@146669.4]
  assign _T_437 = _T_436 ? 3'h2 : _T_435; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@146670.4]
  assign _T_438 = _T_425 == 3'h7; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@146671.4]
  assign _T_441 = _T_25 == 2'h0; // @[RVC.scala 103:30:freechips.rocketchip.system.DefaultRV32Config.fir@146674.4]
  assign _T_454 = {2'h1,_T_13,2'h1,_T_29,_T_439,2'h1,_T_29,_T_444}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@146687.4]
  assign _GEN_1 = {{6'd0}, _T_454}; // @[RVC.scala 105:43:freechips.rocketchip.system.DefaultRV32Config.fir@146688.4]
  assign _T_456 = io_in[11:10]; // @[RVC.scala 107:42:freechips.rocketchip.system.DefaultRV32Config.fir@146689.4]
  assign _T_457 = _T_456 == 2'h1; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@146690.4]
  assign _T_459 = _T_456 == 2'h2; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@146692.4]
  assign _T_460 = _T_459 ? _T_422 : {{1'd0}, _T_458}; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@146693.4]
  assign _T_461 = _T_456 == 2'h3; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@146694.4]
  assign _T_560 = _T_209 ? 5'h1f : 5'h0; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@146805.4]
  assign _T_569 = {_T_560,_T_25,_T_233,_T_456,_T_365,1'h0}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@146814.4]
  assign _T_570 = _T_569[12]; // @[RVC.scala 95:29:freechips.rocketchip.system.DefaultRV32Config.fir@146815.4]
  assign _T_583 = _T_569[10:5]; // @[RVC.scala 95:39:freechips.rocketchip.system.DefaultRV32Config.fir@146828.4]
  assign _T_598 = _T_569[4:1]; // @[RVC.scala 95:72:freechips.rocketchip.system.DefaultRV32Config.fir@146843.4]
  assign _T_611 = _T_569[11]; // @[RVC.scala 95:83:freechips.rocketchip.system.DefaultRV32Config.fir@146856.4]
  assign _T_691 = _T_214 != 5'h0; // @[RVC.scala 113:27:freechips.rocketchip.system.DefaultRV32Config.fir@146948.4]
  assign _T_701 = {_T_209,_T_212,_T_214,3'h1,_T_214,7'h13}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@146958.4]
  assign _T_717 = {_T_13,_T_209,_T_25,3'h0,5'h2,3'h3,_T_214,7'h7}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@146980.4]
  assign _T_722 = io_in[3:2]; // @[RVC.scala 37:22:freechips.rocketchip.system.DefaultRV32Config.fir@146991.4]
  assign _T_724 = io_in[6:4]; // @[RVC.scala 37:37:freechips.rocketchip.system.DefaultRV32Config.fir@146993.4]
  assign _T_732 = {_T_722,_T_209,_T_724,2'h0,5'h2,3'h2,_T_214,_T_692}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@147001.4]
  assign _T_747 = {_T_722,_T_209,_T_724,2'h0,5'h2,3'h2,_T_214,7'h7}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@147022.4]
  assign _T_757 = {_T_212,5'h0,3'h0,_T_214,7'h33}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@147038.4]
  assign _T_768 = {_T_212,_T_214,3'h0,_T_214,7'h33}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@147055.4]
  assign _T_780 = _T_779[24:7]; // @[RVC.scala 133:29:freechips.rocketchip.system.DefaultRV32Config.fir@147073.4]
  assign _T_790 = _T_212 != 5'h0; // @[RVC.scala 135:27:freechips.rocketchip.system.DefaultRV32Config.fir@147089.4]
  assign _T_788_bits = {{7'd0}, _T_784}; // @[RVC.scala 21:19:freechips.rocketchip.system.DefaultRV32Config.fir@147081.4 RVC.scala 22:14:freechips.rocketchip.system.DefaultRV32Config.fir@147083.4]
  assign _T_791_bits = _T_790 ? _T_761_bits : _T_788_bits; // @[RVC.scala 135:22:freechips.rocketchip.system.DefaultRV32Config.fir@147090.4]
  assign _T_791_rd = _T_790 ? _T_214 : 5'h0; // @[RVC.scala 135:22:freechips.rocketchip.system.DefaultRV32Config.fir@147090.4]
  assign _T_791_rs1 = _T_790 ? 5'h0 : _T_214; // @[RVC.scala 135:22:freechips.rocketchip.system.DefaultRV32Config.fir@147090.4]
  assign _T_791_rs2 = _T_790 ? _T_212 : _T_212; // @[RVC.scala 135:22:freechips.rocketchip.system.DefaultRV32Config.fir@147090.4]
  assign _T_791_rs3 = _T_790 ? _T_23 : _T_23; // @[RVC.scala 135:22:freechips.rocketchip.system.DefaultRV32Config.fir@147090.4]
  assign _T_799 = {_T_780,7'h73}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@147098.4]
  assign _T_810_rd = _T_790 ? _T_214 : 5'h1; // @[RVC.scala 139:25:freechips.rocketchip.system.DefaultRV32Config.fir@147115.4]
  assign _T_810_rs1 = _T_790 ? _T_214 : _T_214; // @[RVC.scala 139:25:freechips.rocketchip.system.DefaultRV32Config.fir@147115.4]
  assign _T_812_rs3 = _T_209 ? _T_791_rs3 : _T_791_rs3; // @[RVC.scala 140:10:freechips.rocketchip.system.DefaultRV32Config.fir@147117.4]
  assign _T_816 = {_T_29,_T_26,3'h0}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@147121.4]
  assign _T_817 = _T_816[8:5]; // @[RVC.scala 124:34:freechips.rocketchip.system.DefaultRV32Config.fir@147122.4]
  assign _T_823 = _T_816[4:0]; // @[RVC.scala 124:67:freechips.rocketchip.system.DefaultRV32Config.fir@147128.4]
  assign _T_828 = {_T_817,_T_212,5'h2,3'h3,_T_823,7'h27}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@147133.4]
  assign _T_833 = io_in[8:7]; // @[RVC.scala 39:22:freechips.rocketchip.system.DefaultRV32Config.fir@147144.4]
  assign _T_834 = io_in[12:9]; // @[RVC.scala 39:30:freechips.rocketchip.system.DefaultRV32Config.fir@147145.4]
  assign _T_836 = {_T_833,_T_834,2'h0}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@147147.4]
  assign _T_837 = _T_836[7:5]; // @[RVC.scala 123:33:freechips.rocketchip.system.DefaultRV32Config.fir@147148.4]
  assign _T_843 = _T_836[4:0]; // @[RVC.scala 123:66:freechips.rocketchip.system.DefaultRV32Config.fir@147154.4]
  assign _T_848 = {_T_837,_T_212,5'h2,3'h2,_T_843,7'h23}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@147159.4]
  assign _T_868 = {_T_837,_T_212,5'h2,3'h2,_T_843,7'h27}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@147185.4]
  assign _T_874 = io_in[19:15]; // @[RVC.scala 20:57:freechips.rocketchip.system.DefaultRV32Config.fir@147197.4]
  assign _T_875 = io_in[24:20]; // @[RVC.scala 20:79:freechips.rocketchip.system.DefaultRV32Config.fir@147198.4]
  assign _T_914 = io_in[15:13]; // @[RVC.scala 151:20:freechips.rocketchip.system.DefaultRV32Config.fir@147285.4]
  assign _T_915 = {_T,_T_914}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@147286.4]
  assign _T_917_bits = _T_916 ? _T_44_bits : _T_24_bits; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147288.4]
  assign _T_917_rd = _T_916 ? _T_14 : _T_14; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147288.4]
  assign _T_917_rs1 = _T_916 ? _T_30 : 5'h2; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147288.4]
  assign _T_917_rs3 = _T_916 ? _T_23 : _T_23; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147288.4]
  assign _T_919_bits = _T_918 ? _T_66_bits : _T_917_bits; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147290.4]
  assign _T_919_rd = _T_918 ? _T_14 : _T_917_rd; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147290.4]
  assign _T_919_rs1 = _T_918 ? _T_30 : _T_917_rs1; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147290.4]
  assign _T_919_rs3 = _T_918 ? _T_23 : _T_917_rs3; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147290.4]
  assign _T_921_bits = _T_920 ? _T_88_bits : _T_919_bits; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147292.4]
  assign _T_921_rd = _T_920 ? _T_14 : _T_919_rd; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147292.4]
  assign _T_921_rs1 = _T_920 ? _T_30 : _T_919_rs1; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147292.4]
  assign _T_921_rs3 = _T_920 ? _T_23 : _T_919_rs3; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147292.4]
  assign _T_923_bits = _T_922 ? _T_119_bits : _T_921_bits; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147294.4]
  assign _T_923_rd = _T_922 ? _T_14 : _T_921_rd; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147294.4]
  assign _T_923_rs1 = _T_922 ? _T_30 : _T_921_rs1; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147294.4]
  assign _T_923_rs3 = _T_922 ? _T_23 : _T_921_rs3; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147294.4]
  assign _T_925_bits = _T_924 ? _T_146_bits : _T_923_bits; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147296.4]
  assign _T_925_rd = _T_924 ? _T_14 : _T_923_rd; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147296.4]
  assign _T_925_rs1 = _T_924 ? _T_30 : _T_923_rs1; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147296.4]
  assign _T_925_rs3 = _T_924 ? _T_23 : _T_923_rs3; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147296.4]
  assign _T_927_bits = _T_926 ? _T_177_bits : _T_925_bits; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147298.4]
  assign _T_927_rd = _T_926 ? _T_14 : _T_925_rd; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147298.4]
  assign _T_927_rs1 = _T_926 ? _T_30 : _T_925_rs1; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147298.4]
  assign _T_927_rs3 = _T_926 ? _T_23 : _T_925_rs3; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147298.4]
  assign _T_929_bits = _T_928 ? _T_208_bits : _T_927_bits; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147300.4]
  assign _T_929_rd = _T_928 ? _T_14 : _T_927_rd; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147300.4]
  assign _T_929_rs1 = _T_928 ? _T_30 : _T_927_rs1; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147300.4]
  assign _T_929_rs3 = _T_928 ? _T_23 : _T_927_rs3; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147300.4]
  assign _T_931_bits = _T_930 ? _T_219 : _T_929_bits; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147302.4]
  assign _T_931_rd = _T_930 ? _T_214 : _T_929_rd; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147302.4]
  assign _T_931_rs1 = _T_930 ? _T_214 : _T_929_rs1; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147302.4]
  assign _T_931_rs2 = _T_930 ? _T_14 : _T_929_rd; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147302.4]
  assign _T_931_rs3 = _T_930 ? _T_23 : _T_929_rs3; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147302.4]
  assign _T_933_bits = _T_932 ? _T_306 : _T_931_bits; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147304.4]
  assign _T_933_rd = _T_932 ? 5'h1 : _T_931_rd; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147304.4]
  assign _T_933_rs1 = _T_932 ? _T_214 : _T_931_rs1; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147304.4]
  assign _T_933_rs2 = _T_932 ? _T_14 : _T_931_rs2; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147304.4]
  assign _T_933_rs3 = _T_932 ? _T_23 : _T_931_rs3; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147304.4]
  assign _T_935_bits = _T_934 ? _T_321 : _T_933_bits; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147306.4]
  assign _T_935_rd = _T_934 ? _T_214 : _T_933_rd; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147306.4]
  assign _T_935_rs1 = _T_934 ? 5'h0 : _T_933_rs1; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147306.4]
  assign _T_935_rs2 = _T_934 ? _T_14 : _T_933_rs2; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147306.4]
  assign _T_935_rs3 = _T_934 ? _T_23 : _T_933_rs3; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147306.4]
  assign _T_937_bits = _T_936 ? _T_386_bits : _T_935_bits; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147308.4]
  assign _T_937_rd = _T_936 ? _T_386_rd : _T_935_rd; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147308.4]
  assign _T_937_rs1 = _T_936 ? _T_386_rd : _T_935_rs1; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147308.4]
  assign _T_937_rs2 = _T_936 ? _T_386_rs2 : _T_935_rs2; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147308.4]
  assign _T_937_rs3 = _T_936 ? _T_386_rs3 : _T_935_rs3; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147308.4]
  assign _T_939_bits = _T_938 ? _T_462 : _T_937_bits; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147310.4]
  assign _T_939_rd = _T_938 ? _T_30 : _T_937_rd; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147310.4]
  assign _T_939_rs1 = _T_938 ? _T_30 : _T_937_rs1; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147310.4]
  assign _T_939_rs2 = _T_938 ? _T_14 : _T_937_rs2; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147310.4]
  assign _T_939_rs3 = _T_938 ? _T_23 : _T_937_rs3; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147310.4]
  assign _T_941_bits = _T_940 ? _T_551 : _T_939_bits; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147312.4]
  assign _T_941_rd = _T_940 ? 5'h0 : _T_939_rd; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147312.4]
  assign _T_941_rs1 = _T_940 ? _T_30 : _T_939_rs1; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147312.4]
  assign _T_941_rs2 = _T_940 ? _T_14 : _T_939_rs2; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147312.4]
  assign _T_941_rs3 = _T_940 ? _T_23 : _T_939_rs3; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147312.4]
  assign _T_943_bits = _T_942 ? _T_618 : _T_941_bits; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147314.4]
  assign _T_943_rd = _T_942 ? _T_30 : _T_941_rd; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147314.4]
  assign _T_943_rs1 = _T_942 ? _T_30 : _T_941_rs1; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147314.4]
  assign _T_943_rs2 = _T_942 ? 5'h0 : _T_941_rs2; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147314.4]
  assign _T_943_rs3 = _T_942 ? _T_23 : _T_941_rs3; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147314.4]
  assign _T_945_bits = _T_944 ? _T_685 : _T_943_bits; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147316.4]
  assign _T_945_rd = _T_944 ? 5'h0 : _T_943_rd; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147316.4]
  assign _T_945_rs1 = _T_944 ? _T_30 : _T_943_rs1; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147316.4]
  assign _T_945_rs2 = _T_944 ? 5'h0 : _T_943_rs2; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147316.4]
  assign _T_945_rs3 = _T_944 ? _T_23 : _T_943_rs3; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147316.4]
  assign _T_947_bits = _T_946 ? _T_706_bits : _T_945_bits; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147318.4]
  assign _T_947_rd = _T_946 ? _T_214 : _T_945_rd;
  assign _T_947_rs1 = _T_946 ? _T_214 : _T_945_rs1; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147318.4]
  assign _T_947_rs2 = _T_946 ? _T_212 : _T_945_rs2; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147318.4]
  assign _T_947_rs3 = _T_946 ? _T_23 : _T_945_rs3; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147318.4]
  assign _T_949_bits = _T_948 ? _T_721_bits : _T_947_bits; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147320.4]
  assign _T_949_rd = _T_948 ? _T_214 : _T_947_rd; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147320.4]
  assign _T_949_rs1 = _T_948 ? 5'h2 : _T_947_rs1; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147320.4]
  assign _T_949_rs2 = _T_948 ? _T_212 : _T_947_rs2; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147320.4]
  assign _T_949_rs3 = _T_948 ? _T_23 : _T_947_rs3; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147320.4]
  assign _T_951_bits = _T_950 ? _T_736_bits : _T_949_bits; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147322.4]
  assign _T_951_rd = _T_950 ? _T_214 : _T_949_rd; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147322.4]
  assign _T_951_rs1 = _T_950 ? 5'h2 : _T_949_rs1; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147322.4]
  assign _T_951_rs2 = _T_950 ? _T_212 : _T_949_rs2; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147322.4]
  assign _T_951_rs3 = _T_950 ? _T_23 : _T_949_rs3; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147322.4]
  assign _T_953_bits = _T_952 ? _T_751_bits : _T_951_bits; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147324.4]
  assign _T_953_rd = _T_952 ? _T_214 : _T_951_rd; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147324.4]
  assign _T_953_rs1 = _T_952 ? 5'h2 : _T_951_rs1; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147324.4]
  assign _T_953_rs2 = _T_952 ? _T_212 : _T_951_rs2; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147324.4]
  assign _T_953_rs3 = _T_952 ? _T_23 : _T_951_rs3; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147324.4]
  assign _T_955_bits = _T_954 ? _T_812_bits : _T_953_bits; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147326.4]
  assign _T_955_rd = _T_954 ? _T_812_rd : _T_953_rd; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147326.4]
  assign _T_955_rs1 = _T_954 ? _T_812_rs1 : _T_953_rs1; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147326.4]
  assign _T_955_rs2 = _T_954 ? _T_812_rs2 : _T_953_rs2; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147326.4]
  assign _T_955_rs3 = _T_954 ? _T_812_rs3 : _T_953_rs3; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147326.4]
  assign _T_957_bits = _T_956 ? _T_832_bits : _T_955_bits; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147328.4]
  assign _T_957_rd = _T_956 ? _T_214 : _T_955_rd; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147328.4]
  assign _T_957_rs1 = _T_956 ? 5'h2 : _T_955_rs1; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147328.4]
  assign _T_957_rs2 = _T_956 ? _T_212 : _T_955_rs2; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147328.4]
  assign _T_957_rs3 = _T_956 ? _T_23 : _T_955_rs3; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147328.4]
  assign _T_959_bits = _T_958 ? _T_852_bits : _T_957_bits; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147330.4]
  assign _T_959_rd = _T_958 ? _T_214 : _T_957_rd; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147330.4]
  assign _T_959_rs1 = _T_958 ? 5'h2 : _T_957_rs1; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147330.4]
  assign _T_959_rs2 = _T_958 ? _T_212 : _T_957_rs2; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147330.4]
  assign _T_959_rs3 = _T_958 ? _T_23 : _T_957_rs3; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147330.4]
  assign _T_961_bits = _T_960 ? _T_872_bits : _T_959_bits; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147332.4]
  assign _T_961_rd = _T_960 ? _T_214 : _T_959_rd; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147332.4]
  assign _T_961_rs1 = _T_960 ? 5'h2 : _T_959_rs1; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147332.4]
  assign _T_961_rs2 = _T_960 ? _T_212 : _T_959_rs2; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147332.4]
  assign _T_961_rs3 = _T_960 ? _T_23 : _T_959_rs3; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147332.4]
  assign _T_963_bits = _T_962 ? io_in : _T_961_bits; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147334.4]
  assign _T_963_rd = _T_962 ? _T_214 : _T_961_rd; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147334.4]
  assign _T_963_rs1 = _T_962 ? _T_874 : _T_961_rs1; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147334.4]
  assign _T_963_rs2 = _T_962 ? _T_875 : _T_961_rs2; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147334.4]
  assign _T_963_rs3 = _T_962 ? _T_23 : _T_961_rs3; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147334.4]
  assign _T_965_bits = _T_964 ? io_in : _T_963_bits; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147336.4]
  assign _T_965_rd = _T_964 ? _T_214 : _T_963_rd; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147336.4]
  assign _T_965_rs1 = _T_964 ? _T_874 : _T_963_rs1; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147336.4]
  assign _T_965_rs2 = _T_964 ? _T_875 : _T_963_rs2; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147336.4]
  assign _T_965_rs3 = _T_964 ? _T_23 : _T_963_rs3; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147336.4]
  assign _T_967_bits = _T_966 ? io_in : _T_965_bits; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147338.4]
  assign _T_967_rd = _T_966 ? _T_214 : _T_965_rd; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147338.4]
  assign _T_967_rs1 = _T_966 ? _T_874 : _T_965_rs1; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147338.4]
  assign _T_967_rs2 = _T_966 ? _T_875 : _T_965_rs2; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147338.4]
  assign _T_967_rs3 = _T_966 ? _T_23 : _T_965_rs3; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147338.4]
  assign _T_969_bits = _T_968 ? io_in : _T_967_bits; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147340.4]
  assign _T_969_rd = _T_968 ? _T_214 : _T_967_rd; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147340.4]
  assign _T_969_rs1 = _T_968 ? _T_874 : _T_967_rs1; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147340.4]
  assign _T_969_rs2 = _T_968 ? _T_875 : _T_967_rs2; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147340.4]
  assign _T_969_rs3 = _T_968 ? _T_23 : _T_967_rs3; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147340.4]
  assign _T_971_bits = _T_970 ? io_in : _T_969_bits; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147342.4]
  assign _T_971_rd = _T_970 ? _T_214 : _T_969_rd; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147342.4]
  assign _T_971_rs1 = _T_970 ? _T_874 : _T_969_rs1; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147342.4]
  assign _T_971_rs2 = _T_970 ? _T_875 : _T_969_rs2; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147342.4]
  assign _T_971_rs3 = _T_970 ? _T_23 : _T_969_rs3; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147342.4]
  assign _T_973_bits = _T_972 ? io_in : _T_971_bits; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147344.4]
  assign _T_973_rd = _T_972 ? _T_214 : _T_971_rd; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147344.4]
  assign _T_973_rs1 = _T_972 ? _T_874 : _T_971_rs1; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147344.4]
  assign _T_973_rs2 = _T_972 ? _T_875 : _T_971_rs2; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147344.4]
  assign _T_973_rs3 = _T_972 ? _T_23 : _T_971_rs3; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147344.4]
  assign _T_975_bits = _T_974 ? io_in : _T_973_bits; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147346.4]
  assign _T_975_rd = _T_974 ? _T_214 : _T_973_rd; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147346.4]
  assign _T_975_rs1 = _T_974 ? _T_874 : _T_973_rs1; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147346.4]
  assign _T_975_rs2 = _T_974 ? _T_875 : _T_973_rs2; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147346.4]
  assign _T_975_rs3 = _T_974 ? _T_23 : _T_973_rs3; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@147346.4]
endmodule
`endif // __RVCExpander

