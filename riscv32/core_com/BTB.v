`include "include_module.v"
`ifdef __BTB
module BTB(
  input         clock,
  input         reset,
  input  [31:0] io_req_bits_addr,
  output        io_resp_valid,
  output        io_resp_bits_taken,
  output        io_resp_bits_bridx,
  output [31:0] io_resp_bits_target,
  output [4:0]  io_resp_bits_entry,
  output [7:0]  io_resp_bits_bht_history,
  output        io_resp_bits_bht_value,
  input         io_btb_update_valid,
  input  [4:0]  io_btb_update_bits_prediction_entry,
  input  [31:0] io_btb_update_bits_pc,
  input         io_btb_update_bits_isValid,
  input  [31:0] io_btb_update_bits_br_pc,
  input  [1:0]  io_btb_update_bits_cfiType, 
  input         io_bht_update_valid,
  input  [7:0]  io_bht_update_bits_prediction_history,
  input  [31:0] io_bht_update_bits_pc,
  input         io_bht_update_bits_branch,
  input         io_bht_update_bits_taken,
  input         io_bht_update_bits_mispredict,
  input         io_bht_advance_valid,
  input         io_bht_advance_bits_bht_value,
  input         io_ras_update_valid,
  input  [1:0]  io_ras_update_bits_cfiType,
  input  [31:0] io_ras_update_bits_returnAddr,
  output        io_ras_head_valid,
  output [31:0] io_ras_head_bits,
  input         io_flush
);
  reg  _T_883 [0:511]; // @[BTB.scala 113:26:freechips.rocketchip.system.DefaultRV32Config.fir@136976.4]
  reg [31:0] _RAND_0;
  wire  _T_883__T_952_data; // @[BTB.scala 113:26:freechips.rocketchip.system.DefaultRV32Config.fir@136976.4]
  wire [8:0] _T_883__T_952_addr; // @[BTB.scala 113:26:freechips.rocketchip.system.DefaultRV32Config.fir@136976.4]
  wire  _T_883__T_965_data; // @[BTB.scala 113:26:freechips.rocketchip.system.DefaultRV32Config.fir@136976.4]
  wire [8:0] _T_883__T_965_addr; // @[BTB.scala 113:26:freechips.rocketchip.system.DefaultRV32Config.fir@136976.4]
  wire  _T_883__T_965_mask; // @[BTB.scala 113:26:freechips.rocketchip.system.DefaultRV32Config.fir@136976.4]
  wire  _T_883__T_965_en; // @[BTB.scala 113:26:freechips.rocketchip.system.DefaultRV32Config.fir@136976.4]
  reg [12:0] idxs_0; // @[BTB.scala 188:17:freechips.rocketchip.system.DefaultRV32Config.fir@135974.4]
  reg [31:0] _RAND_1;
  reg [12:0] idxs_1; // @[BTB.scala 188:17:freechips.rocketchip.system.DefaultRV32Config.fir@135974.4]
  reg [31:0] _RAND_2;
  reg [12:0] idxs_2; // @[BTB.scala 188:17:freechips.rocketchip.system.DefaultRV32Config.fir@135974.4]
  reg [31:0] _RAND_3;
  reg [12:0] idxs_3; // @[BTB.scala 188:17:freechips.rocketchip.system.DefaultRV32Config.fir@135974.4]
  reg [31:0] _RAND_4;
  reg [12:0] idxs_4; // @[BTB.scala 188:17:freechips.rocketchip.system.DefaultRV32Config.fir@135974.4]
  reg [31:0] _RAND_5;
  reg [12:0] idxs_5; // @[BTB.scala 188:17:freechips.rocketchip.system.DefaultRV32Config.fir@135974.4]
  reg [31:0] _RAND_6;
  reg [12:0] idxs_6; // @[BTB.scala 188:17:freechips.rocketchip.system.DefaultRV32Config.fir@135974.4]
  reg [31:0] _RAND_7;
  reg [12:0] idxs_7; // @[BTB.scala 188:17:freechips.rocketchip.system.DefaultRV32Config.fir@135974.4]
  reg [31:0] _RAND_8;
  reg [12:0] idxs_8; // @[BTB.scala 188:17:freechips.rocketchip.system.DefaultRV32Config.fir@135974.4]
  reg [31:0] _RAND_9;
  reg [12:0] idxs_9; // @[BTB.scala 188:17:freechips.rocketchip.system.DefaultRV32Config.fir@135974.4]
  reg [31:0] _RAND_10;
  reg [12:0] idxs_10; // @[BTB.scala 188:17:freechips.rocketchip.system.DefaultRV32Config.fir@135974.4]
  reg [31:0] _RAND_11;
  reg [12:0] idxs_11; // @[BTB.scala 188:17:freechips.rocketchip.system.DefaultRV32Config.fir@135974.4]
  reg [31:0] _RAND_12;
  reg [12:0] idxs_12; // @[BTB.scala 188:17:freechips.rocketchip.system.DefaultRV32Config.fir@135974.4]
  reg [31:0] _RAND_13;
  reg [12:0] idxs_13; // @[BTB.scala 188:17:freechips.rocketchip.system.DefaultRV32Config.fir@135974.4]
  reg [31:0] _RAND_14;
  reg [12:0] idxs_14; // @[BTB.scala 188:17:freechips.rocketchip.system.DefaultRV32Config.fir@135974.4]
  reg [31:0] _RAND_15;
  reg [12:0] idxs_15; // @[BTB.scala 188:17:freechips.rocketchip.system.DefaultRV32Config.fir@135974.4]
  reg [31:0] _RAND_16;
  reg [12:0] idxs_16; // @[BTB.scala 188:17:freechips.rocketchip.system.DefaultRV32Config.fir@135974.4]
  reg [31:0] _RAND_17;
  reg [12:0] idxs_17; // @[BTB.scala 188:17:freechips.rocketchip.system.DefaultRV32Config.fir@135974.4]
  reg [31:0] _RAND_18;
  reg [12:0] idxs_18; // @[BTB.scala 188:17:freechips.rocketchip.system.DefaultRV32Config.fir@135974.4]
  reg [31:0] _RAND_19;
  reg [12:0] idxs_19; // @[BTB.scala 188:17:freechips.rocketchip.system.DefaultRV32Config.fir@135974.4]
  reg [31:0] _RAND_20;
  reg [12:0] idxs_20; // @[BTB.scala 188:17:freechips.rocketchip.system.DefaultRV32Config.fir@135974.4]
  reg [31:0] _RAND_21;
  reg [12:0] idxs_21; // @[BTB.scala 188:17:freechips.rocketchip.system.DefaultRV32Config.fir@135974.4]
  reg [31:0] _RAND_22;
  reg [12:0] idxs_22; // @[BTB.scala 188:17:freechips.rocketchip.system.DefaultRV32Config.fir@135974.4]
  reg [31:0] _RAND_23;
  reg [12:0] idxs_23; // @[BTB.scala 188:17:freechips.rocketchip.system.DefaultRV32Config.fir@135974.4]
  reg [31:0] _RAND_24;
  reg [12:0] idxs_24; // @[BTB.scala 188:17:freechips.rocketchip.system.DefaultRV32Config.fir@135974.4]
  reg [31:0] _RAND_25;
  reg [12:0] idxs_25; // @[BTB.scala 188:17:freechips.rocketchip.system.DefaultRV32Config.fir@135974.4]
  reg [31:0] _RAND_26;
  reg [12:0] idxs_26; // @[BTB.scala 188:17:freechips.rocketchip.system.DefaultRV32Config.fir@135974.4]
  reg [31:0] _RAND_27;
  reg [12:0] idxs_27; // @[BTB.scala 188:17:freechips.rocketchip.system.DefaultRV32Config.fir@135974.4]
  reg [31:0] _RAND_28;
  reg [2:0] idxPages_0; // @[BTB.scala 189:21:freechips.rocketchip.system.DefaultRV32Config.fir@135975.4]
  reg [31:0] _RAND_29;
  reg [2:0] idxPages_1; // @[BTB.scala 189:21:freechips.rocketchip.system.DefaultRV32Config.fir@135975.4]
  reg [31:0] _RAND_30;
  reg [2:0] idxPages_2; // @[BTB.scala 189:21:freechips.rocketchip.system.DefaultRV32Config.fir@135975.4]
  reg [31:0] _RAND_31;
  reg [2:0] idxPages_3; // @[BTB.scala 189:21:freechips.rocketchip.system.DefaultRV32Config.fir@135975.4]
  reg [31:0] _RAND_32;
  reg [2:0] idxPages_4; // @[BTB.scala 189:21:freechips.rocketchip.system.DefaultRV32Config.fir@135975.4]
  reg [31:0] _RAND_33;
  reg [2:0] idxPages_5; // @[BTB.scala 189:21:freechips.rocketchip.system.DefaultRV32Config.fir@135975.4]
  reg [31:0] _RAND_34;
  reg [2:0] idxPages_6; // @[BTB.scala 189:21:freechips.rocketchip.system.DefaultRV32Config.fir@135975.4]
  reg [31:0] _RAND_35;
  reg [2:0] idxPages_7; // @[BTB.scala 189:21:freechips.rocketchip.system.DefaultRV32Config.fir@135975.4]
  reg [31:0] _RAND_36;
  reg [2:0] idxPages_8; // @[BTB.scala 189:21:freechips.rocketchip.system.DefaultRV32Config.fir@135975.4]
  reg [31:0] _RAND_37;
  reg [2:0] idxPages_9; // @[BTB.scala 189:21:freechips.rocketchip.system.DefaultRV32Config.fir@135975.4]
  reg [31:0] _RAND_38;
  reg [2:0] idxPages_10; // @[BTB.scala 189:21:freechips.rocketchip.system.DefaultRV32Config.fir@135975.4]
  reg [31:0] _RAND_39;
  reg [2:0] idxPages_11; // @[BTB.scala 189:21:freechips.rocketchip.system.DefaultRV32Config.fir@135975.4]
  reg [31:0] _RAND_40;
  reg [2:0] idxPages_12; // @[BTB.scala 189:21:freechips.rocketchip.system.DefaultRV32Config.fir@135975.4]
  reg [31:0] _RAND_41;
  reg [2:0] idxPages_13; // @[BTB.scala 189:21:freechips.rocketchip.system.DefaultRV32Config.fir@135975.4]
  reg [31:0] _RAND_42;
  reg [2:0] idxPages_14; // @[BTB.scala 189:21:freechips.rocketchip.system.DefaultRV32Config.fir@135975.4]
  reg [31:0] _RAND_43;
  reg [2:0] idxPages_15; // @[BTB.scala 189:21:freechips.rocketchip.system.DefaultRV32Config.fir@135975.4]
  reg [31:0] _RAND_44;
  reg [2:0] idxPages_16; // @[BTB.scala 189:21:freechips.rocketchip.system.DefaultRV32Config.fir@135975.4]
  reg [31:0] _RAND_45;
  reg [2:0] idxPages_17; // @[BTB.scala 189:21:freechips.rocketchip.system.DefaultRV32Config.fir@135975.4]
  reg [31:0] _RAND_46;
  reg [2:0] idxPages_18; // @[BTB.scala 189:21:freechips.rocketchip.system.DefaultRV32Config.fir@135975.4]
  reg [31:0] _RAND_47;
  reg [2:0] idxPages_19; // @[BTB.scala 189:21:freechips.rocketchip.system.DefaultRV32Config.fir@135975.4]
  reg [31:0] _RAND_48;
  reg [2:0] idxPages_20; // @[BTB.scala 189:21:freechips.rocketchip.system.DefaultRV32Config.fir@135975.4]
  reg [31:0] _RAND_49;
  reg [2:0] idxPages_21; // @[BTB.scala 189:21:freechips.rocketchip.system.DefaultRV32Config.fir@135975.4]
  reg [31:0] _RAND_50;
  reg [2:0] idxPages_22; // @[BTB.scala 189:21:freechips.rocketchip.system.DefaultRV32Config.fir@135975.4]
  reg [31:0] _RAND_51;
  reg [2:0] idxPages_23; // @[BTB.scala 189:21:freechips.rocketchip.system.DefaultRV32Config.fir@135975.4]
  reg [31:0] _RAND_52;
  reg [2:0] idxPages_24; // @[BTB.scala 189:21:freechips.rocketchip.system.DefaultRV32Config.fir@135975.4]
  reg [31:0] _RAND_53;
  reg [2:0] idxPages_25; // @[BTB.scala 189:21:freechips.rocketchip.system.DefaultRV32Config.fir@135975.4]
  reg [31:0] _RAND_54;
  reg [2:0] idxPages_26; // @[BTB.scala 189:21:freechips.rocketchip.system.DefaultRV32Config.fir@135975.4]
  reg [31:0] _RAND_55;
  reg [2:0] idxPages_27; // @[BTB.scala 189:21:freechips.rocketchip.system.DefaultRV32Config.fir@135975.4]
  reg [31:0] _RAND_56;
  reg [12:0] tgts_0; // @[BTB.scala 190:17:freechips.rocketchip.system.DefaultRV32Config.fir@135976.4]
  reg [31:0] _RAND_57;
  reg [12:0] tgts_1; // @[BTB.scala 190:17:freechips.rocketchip.system.DefaultRV32Config.fir@135976.4]
  reg [31:0] _RAND_58;
  reg [12:0] tgts_2; // @[BTB.scala 190:17:freechips.rocketchip.system.DefaultRV32Config.fir@135976.4]
  reg [31:0] _RAND_59;
  reg [12:0] tgts_3; // @[BTB.scala 190:17:freechips.rocketchip.system.DefaultRV32Config.fir@135976.4]
  reg [31:0] _RAND_60;
  reg [12:0] tgts_4; // @[BTB.scala 190:17:freechips.rocketchip.system.DefaultRV32Config.fir@135976.4]
  reg [31:0] _RAND_61;
  reg [12:0] tgts_5; // @[BTB.scala 190:17:freechips.rocketchip.system.DefaultRV32Config.fir@135976.4]
  reg [31:0] _RAND_62;
  reg [12:0] tgts_6; // @[BTB.scala 190:17:freechips.rocketchip.system.DefaultRV32Config.fir@135976.4]
  reg [31:0] _RAND_63;
  reg [12:0] tgts_7; // @[BTB.scala 190:17:freechips.rocketchip.system.DefaultRV32Config.fir@135976.4]
  reg [31:0] _RAND_64;
  reg [12:0] tgts_8; // @[BTB.scala 190:17:freechips.rocketchip.system.DefaultRV32Config.fir@135976.4]
  reg [31:0] _RAND_65;
  reg [12:0] tgts_9; // @[BTB.scala 190:17:freechips.rocketchip.system.DefaultRV32Config.fir@135976.4]
  reg [31:0] _RAND_66;
  reg [12:0] tgts_10; // @[BTB.scala 190:17:freechips.rocketchip.system.DefaultRV32Config.fir@135976.4]
  reg [31:0] _RAND_67;
  reg [12:0] tgts_11; // @[BTB.scala 190:17:freechips.rocketchip.system.DefaultRV32Config.fir@135976.4]
  reg [31:0] _RAND_68;
  reg [12:0] tgts_12; // @[BTB.scala 190:17:freechips.rocketchip.system.DefaultRV32Config.fir@135976.4]
  reg [31:0] _RAND_69;
  reg [12:0] tgts_13; // @[BTB.scala 190:17:freechips.rocketchip.system.DefaultRV32Config.fir@135976.4]
  reg [31:0] _RAND_70;
  reg [12:0] tgts_14; // @[BTB.scala 190:17:freechips.rocketchip.system.DefaultRV32Config.fir@135976.4]
  reg [31:0] _RAND_71;
  reg [12:0] tgts_15; // @[BTB.scala 190:17:freechips.rocketchip.system.DefaultRV32Config.fir@135976.4]
  reg [31:0] _RAND_72;
  reg [12:0] tgts_16; // @[BTB.scala 190:17:freechips.rocketchip.system.DefaultRV32Config.fir@135976.4]
  reg [31:0] _RAND_73;
  reg [12:0] tgts_17; // @[BTB.scala 190:17:freechips.rocketchip.system.DefaultRV32Config.fir@135976.4]
  reg [31:0] _RAND_74;
  reg [12:0] tgts_18; // @[BTB.scala 190:17:freechips.rocketchip.system.DefaultRV32Config.fir@135976.4]
  reg [31:0] _RAND_75;
  reg [12:0] tgts_19; // @[BTB.scala 190:17:freechips.rocketchip.system.DefaultRV32Config.fir@135976.4]
  reg [31:0] _RAND_76;
  reg [12:0] tgts_20; // @[BTB.scala 190:17:freechips.rocketchip.system.DefaultRV32Config.fir@135976.4]
  reg [31:0] _RAND_77;
  reg [12:0] tgts_21; // @[BTB.scala 190:17:freechips.rocketchip.system.DefaultRV32Config.fir@135976.4]
  reg [31:0] _RAND_78;
  reg [12:0] tgts_22; // @[BTB.scala 190:17:freechips.rocketchip.system.DefaultRV32Config.fir@135976.4]
  reg [31:0] _RAND_79;
  reg [12:0] tgts_23; // @[BTB.scala 190:17:freechips.rocketchip.system.DefaultRV32Config.fir@135976.4]
  reg [31:0] _RAND_80;
  reg [12:0] tgts_24; // @[BTB.scala 190:17:freechips.rocketchip.system.DefaultRV32Config.fir@135976.4]
  reg [31:0] _RAND_81;
  reg [12:0] tgts_25; // @[BTB.scala 190:17:freechips.rocketchip.system.DefaultRV32Config.fir@135976.4]
  reg [31:0] _RAND_82;
  reg [12:0] tgts_26; // @[BTB.scala 190:17:freechips.rocketchip.system.DefaultRV32Config.fir@135976.4]
  reg [31:0] _RAND_83;
  reg [12:0] tgts_27; // @[BTB.scala 190:17:freechips.rocketchip.system.DefaultRV32Config.fir@135976.4]
  reg [31:0] _RAND_84;
  reg [2:0] tgtPages_0; // @[BTB.scala 191:21:freechips.rocketchip.system.DefaultRV32Config.fir@135977.4]
  reg [31:0] _RAND_85;
  reg [2:0] tgtPages_1; // @[BTB.scala 191:21:freechips.rocketchip.system.DefaultRV32Config.fir@135977.4]
  reg [31:0] _RAND_86;
  reg [2:0] tgtPages_2; // @[BTB.scala 191:21:freechips.rocketchip.system.DefaultRV32Config.fir@135977.4]
  reg [31:0] _RAND_87;
  reg [2:0] tgtPages_3; // @[BTB.scala 191:21:freechips.rocketchip.system.DefaultRV32Config.fir@135977.4]
  reg [31:0] _RAND_88;
  reg [2:0] tgtPages_4; // @[BTB.scala 191:21:freechips.rocketchip.system.DefaultRV32Config.fir@135977.4]
  reg [31:0] _RAND_89;
  reg [2:0] tgtPages_5; // @[BTB.scala 191:21:freechips.rocketchip.system.DefaultRV32Config.fir@135977.4]
  reg [31:0] _RAND_90;
  reg [2:0] tgtPages_6; // @[BTB.scala 191:21:freechips.rocketchip.system.DefaultRV32Config.fir@135977.4]
  reg [31:0] _RAND_91;
  reg [2:0] tgtPages_7; // @[BTB.scala 191:21:freechips.rocketchip.system.DefaultRV32Config.fir@135977.4]
  reg [31:0] _RAND_92;
  reg [2:0] tgtPages_8; // @[BTB.scala 191:21:freechips.rocketchip.system.DefaultRV32Config.fir@135977.4]
  reg [31:0] _RAND_93;
  reg [2:0] tgtPages_9; // @[BTB.scala 191:21:freechips.rocketchip.system.DefaultRV32Config.fir@135977.4]
  reg [31:0] _RAND_94;
  reg [2:0] tgtPages_10; // @[BTB.scala 191:21:freechips.rocketchip.system.DefaultRV32Config.fir@135977.4]
  reg [31:0] _RAND_95;
  reg [2:0] tgtPages_11; // @[BTB.scala 191:21:freechips.rocketchip.system.DefaultRV32Config.fir@135977.4]
  reg [31:0] _RAND_96;
  reg [2:0] tgtPages_12; // @[BTB.scala 191:21:freechips.rocketchip.system.DefaultRV32Config.fir@135977.4]
  reg [31:0] _RAND_97;
  reg [2:0] tgtPages_13; // @[BTB.scala 191:21:freechips.rocketchip.system.DefaultRV32Config.fir@135977.4]
  reg [31:0] _RAND_98;
  reg [2:0] tgtPages_14; // @[BTB.scala 191:21:freechips.rocketchip.system.DefaultRV32Config.fir@135977.4]
  reg [31:0] _RAND_99;
  reg [2:0] tgtPages_15; // @[BTB.scala 191:21:freechips.rocketchip.system.DefaultRV32Config.fir@135977.4]
  reg [31:0] _RAND_100;
  reg [2:0] tgtPages_16; // @[BTB.scala 191:21:freechips.rocketchip.system.DefaultRV32Config.fir@135977.4]
  reg [31:0] _RAND_101;
  reg [2:0] tgtPages_17; // @[BTB.scala 191:21:freechips.rocketchip.system.DefaultRV32Config.fir@135977.4]
  reg [31:0] _RAND_102;
  reg [2:0] tgtPages_18; // @[BTB.scala 191:21:freechips.rocketchip.system.DefaultRV32Config.fir@135977.4]
  reg [31:0] _RAND_103;
  reg [2:0] tgtPages_19; // @[BTB.scala 191:21:freechips.rocketchip.system.DefaultRV32Config.fir@135977.4]
  reg [31:0] _RAND_104;
  reg [2:0] tgtPages_20; // @[BTB.scala 191:21:freechips.rocketchip.system.DefaultRV32Config.fir@135977.4]
  reg [31:0] _RAND_105;
  reg [2:0] tgtPages_21; // @[BTB.scala 191:21:freechips.rocketchip.system.DefaultRV32Config.fir@135977.4]
  reg [31:0] _RAND_106;
  reg [2:0] tgtPages_22; // @[BTB.scala 191:21:freechips.rocketchip.system.DefaultRV32Config.fir@135977.4]
  reg [31:0] _RAND_107;
  reg [2:0] tgtPages_23; // @[BTB.scala 191:21:freechips.rocketchip.system.DefaultRV32Config.fir@135977.4]
  reg [31:0] _RAND_108;
  reg [2:0] tgtPages_24; // @[BTB.scala 191:21:freechips.rocketchip.system.DefaultRV32Config.fir@135977.4]
  reg [31:0] _RAND_109;
  reg [2:0] tgtPages_25; // @[BTB.scala 191:21:freechips.rocketchip.system.DefaultRV32Config.fir@135977.4]
  reg [31:0] _RAND_110;
  reg [2:0] tgtPages_26; // @[BTB.scala 191:21:freechips.rocketchip.system.DefaultRV32Config.fir@135977.4]
  reg [31:0] _RAND_111;
  reg [2:0] tgtPages_27; // @[BTB.scala 191:21:freechips.rocketchip.system.DefaultRV32Config.fir@135977.4]
  reg [31:0] _RAND_112;
  reg [17:0] pages_0; // @[BTB.scala 192:18:freechips.rocketchip.system.DefaultRV32Config.fir@135978.4]
  reg [31:0] _RAND_113;
  reg [17:0] pages_1; // @[BTB.scala 192:18:freechips.rocketchip.system.DefaultRV32Config.fir@135978.4]
  reg [31:0] _RAND_114;
  reg [17:0] pages_2; // @[BTB.scala 192:18:freechips.rocketchip.system.DefaultRV32Config.fir@135978.4]
  reg [31:0] _RAND_115;
  reg [17:0] pages_3; // @[BTB.scala 192:18:freechips.rocketchip.system.DefaultRV32Config.fir@135978.4]
  reg [31:0] _RAND_116;
  reg [17:0] pages_4; // @[BTB.scala 192:18:freechips.rocketchip.system.DefaultRV32Config.fir@135978.4]
  reg [31:0] _RAND_117;
  reg [17:0] pages_5; // @[BTB.scala 192:18:freechips.rocketchip.system.DefaultRV32Config.fir@135978.4]
  reg [31:0] _RAND_118;
  reg [5:0] pageValid; // @[BTB.scala 193:22:freechips.rocketchip.system.DefaultRV32Config.fir@135979.4]
  reg [31:0] _RAND_119;
  reg [27:0] isValid; // @[BTB.scala 195:20:freechips.rocketchip.system.DefaultRV32Config.fir@135980.4]
  reg [31:0] _RAND_120;
  reg [1:0] cfiType_0; // @[BTB.scala 196:20:freechips.rocketchip.system.DefaultRV32Config.fir@135981.4]
  reg [31:0] _RAND_121;
  reg [1:0] cfiType_1; // @[BTB.scala 196:20:freechips.rocketchip.system.DefaultRV32Config.fir@135981.4]
  reg [31:0] _RAND_122;
  reg [1:0] cfiType_2; // @[BTB.scala 196:20:freechips.rocketchip.system.DefaultRV32Config.fir@135981.4]
  reg [31:0] _RAND_123;
  reg [1:0] cfiType_3; // @[BTB.scala 196:20:freechips.rocketchip.system.DefaultRV32Config.fir@135981.4]
  reg [31:0] _RAND_124;
  reg [1:0] cfiType_4; // @[BTB.scala 196:20:freechips.rocketchip.system.DefaultRV32Config.fir@135981.4]
  reg [31:0] _RAND_125;
  reg [1:0] cfiType_5; // @[BTB.scala 196:20:freechips.rocketchip.system.DefaultRV32Config.fir@135981.4]
  reg [31:0] _RAND_126;
  reg [1:0] cfiType_6; // @[BTB.scala 196:20:freechips.rocketchip.system.DefaultRV32Config.fir@135981.4]
  reg [31:0] _RAND_127;
  reg [1:0] cfiType_7; // @[BTB.scala 196:20:freechips.rocketchip.system.DefaultRV32Config.fir@135981.4]
  reg [31:0] _RAND_128;
  reg [1:0] cfiType_8; // @[BTB.scala 196:20:freechips.rocketchip.system.DefaultRV32Config.fir@135981.4]
  reg [31:0] _RAND_129;
  reg [1:0] cfiType_9; // @[BTB.scala 196:20:freechips.rocketchip.system.DefaultRV32Config.fir@135981.4]
  reg [31:0] _RAND_130;
  reg [1:0] cfiType_10; // @[BTB.scala 196:20:freechips.rocketchip.system.DefaultRV32Config.fir@135981.4]
  reg [31:0] _RAND_131;
  reg [1:0] cfiType_11; // @[BTB.scala 196:20:freechips.rocketchip.system.DefaultRV32Config.fir@135981.4]
  reg [31:0] _RAND_132;
  reg [1:0] cfiType_12; // @[BTB.scala 196:20:freechips.rocketchip.system.DefaultRV32Config.fir@135981.4]
  reg [31:0] _RAND_133;
  reg [1:0] cfiType_13; // @[BTB.scala 196:20:freechips.rocketchip.system.DefaultRV32Config.fir@135981.4]
  reg [31:0] _RAND_134;
  reg [1:0] cfiType_14; // @[BTB.scala 196:20:freechips.rocketchip.system.DefaultRV32Config.fir@135981.4]
  reg [31:0] _RAND_135;
  reg [1:0] cfiType_15; // @[BTB.scala 196:20:freechips.rocketchip.system.DefaultRV32Config.fir@135981.4]
  reg [31:0] _RAND_136;
  reg [1:0] cfiType_16; // @[BTB.scala 196:20:freechips.rocketchip.system.DefaultRV32Config.fir@135981.4]
  reg [31:0] _RAND_137;
  reg [1:0] cfiType_17; // @[BTB.scala 196:20:freechips.rocketchip.system.DefaultRV32Config.fir@135981.4]
  reg [31:0] _RAND_138;
  reg [1:0] cfiType_18; // @[BTB.scala 196:20:freechips.rocketchip.system.DefaultRV32Config.fir@135981.4]
  reg [31:0] _RAND_139;
  reg [1:0] cfiType_19; // @[BTB.scala 196:20:freechips.rocketchip.system.DefaultRV32Config.fir@135981.4]
  reg [31:0] _RAND_140;
  reg [1:0] cfiType_20; // @[BTB.scala 196:20:freechips.rocketchip.system.DefaultRV32Config.fir@135981.4]
  reg [31:0] _RAND_141;
  reg [1:0] cfiType_21; // @[BTB.scala 196:20:freechips.rocketchip.system.DefaultRV32Config.fir@135981.4]
  reg [31:0] _RAND_142;
  reg [1:0] cfiType_22; // @[BTB.scala 196:20:freechips.rocketchip.system.DefaultRV32Config.fir@135981.4]
  reg [31:0] _RAND_143;
  reg [1:0] cfiType_23; // @[BTB.scala 196:20:freechips.rocketchip.system.DefaultRV32Config.fir@135981.4]
  reg [31:0] _RAND_144;
  reg [1:0] cfiType_24; // @[BTB.scala 196:20:freechips.rocketchip.system.DefaultRV32Config.fir@135981.4]
  reg [31:0] _RAND_145;
  reg [1:0] cfiType_25; // @[BTB.scala 196:20:freechips.rocketchip.system.DefaultRV32Config.fir@135981.4]
  reg [31:0] _RAND_146;
  reg [1:0] cfiType_26; // @[BTB.scala 196:20:freechips.rocketchip.system.DefaultRV32Config.fir@135981.4]
  reg [31:0] _RAND_147;
  reg [1:0] cfiType_27; // @[BTB.scala 196:20:freechips.rocketchip.system.DefaultRV32Config.fir@135981.4]
  reg [31:0] _RAND_148;
  reg  brIdx_0; // @[BTB.scala 197:18:freechips.rocketchip.system.DefaultRV32Config.fir@135982.4]
  reg [31:0] _RAND_149;
  reg  brIdx_1; // @[BTB.scala 197:18:freechips.rocketchip.system.DefaultRV32Config.fir@135982.4]
  reg [31:0] _RAND_150;
  reg  brIdx_2; // @[BTB.scala 197:18:freechips.rocketchip.system.DefaultRV32Config.fir@135982.4]
  reg [31:0] _RAND_151;
  reg  brIdx_3; // @[BTB.scala 197:18:freechips.rocketchip.system.DefaultRV32Config.fir@135982.4]
  reg [31:0] _RAND_152;
  reg  brIdx_4; // @[BTB.scala 197:18:freechips.rocketchip.system.DefaultRV32Config.fir@135982.4]
  reg [31:0] _RAND_153;
  reg  brIdx_5; // @[BTB.scala 197:18:freechips.rocketchip.system.DefaultRV32Config.fir@135982.4]
  reg [31:0] _RAND_154;
  reg  brIdx_6; // @[BTB.scala 197:18:freechips.rocketchip.system.DefaultRV32Config.fir@135982.4]
  reg [31:0] _RAND_155;
  reg  brIdx_7; // @[BTB.scala 197:18:freechips.rocketchip.system.DefaultRV32Config.fir@135982.4]
  reg [31:0] _RAND_156;
  reg  brIdx_8; // @[BTB.scala 197:18:freechips.rocketchip.system.DefaultRV32Config.fir@135982.4]
  reg [31:0] _RAND_157;
  reg  brIdx_9; // @[BTB.scala 197:18:freechips.rocketchip.system.DefaultRV32Config.fir@135982.4]
  reg [31:0] _RAND_158;
  reg  brIdx_10; // @[BTB.scala 197:18:freechips.rocketchip.system.DefaultRV32Config.fir@135982.4]
  reg [31:0] _RAND_159;
  reg  brIdx_11; // @[BTB.scala 197:18:freechips.rocketchip.system.DefaultRV32Config.fir@135982.4]
  reg [31:0] _RAND_160;
  reg  brIdx_12; // @[BTB.scala 197:18:freechips.rocketchip.system.DefaultRV32Config.fir@135982.4]
  reg [31:0] _RAND_161;
  reg  brIdx_13; // @[BTB.scala 197:18:freechips.rocketchip.system.DefaultRV32Config.fir@135982.4]
  reg [31:0] _RAND_162;
  reg  brIdx_14; // @[BTB.scala 197:18:freechips.rocketchip.system.DefaultRV32Config.fir@135982.4]
  reg [31:0] _RAND_163;
  reg  brIdx_15; // @[BTB.scala 197:18:freechips.rocketchip.system.DefaultRV32Config.fir@135982.4]
  reg [31:0] _RAND_164;
  reg  brIdx_16; // @[BTB.scala 197:18:freechips.rocketchip.system.DefaultRV32Config.fir@135982.4]
  reg [31:0] _RAND_165;
  reg  brIdx_17; // @[BTB.scala 197:18:freechips.rocketchip.system.DefaultRV32Config.fir@135982.4]
  reg [31:0] _RAND_166;
  reg  brIdx_18; // @[BTB.scala 197:18:freechips.rocketchip.system.DefaultRV32Config.fir@135982.4]
  reg [31:0] _RAND_167;
  reg  brIdx_19; // @[BTB.scala 197:18:freechips.rocketchip.system.DefaultRV32Config.fir@135982.4]
  reg [31:0] _RAND_168;
  reg  brIdx_20; // @[BTB.scala 197:18:freechips.rocketchip.system.DefaultRV32Config.fir@135982.4]
  reg [31:0] _RAND_169;
  reg  brIdx_21; // @[BTB.scala 197:18:freechips.rocketchip.system.DefaultRV32Config.fir@135982.4]
  reg [31:0] _RAND_170;
  reg  brIdx_22; // @[BTB.scala 197:18:freechips.rocketchip.system.DefaultRV32Config.fir@135982.4]
  reg [31:0] _RAND_171;
  reg  brIdx_23; // @[BTB.scala 197:18:freechips.rocketchip.system.DefaultRV32Config.fir@135982.4]
  reg [31:0] _RAND_172;
  reg  brIdx_24; // @[BTB.scala 197:18:freechips.rocketchip.system.DefaultRV32Config.fir@135982.4]
  reg [31:0] _RAND_173;
  reg  brIdx_25; // @[BTB.scala 197:18:freechips.rocketchip.system.DefaultRV32Config.fir@135982.4]
  reg [31:0] _RAND_174;
  reg  brIdx_26; // @[BTB.scala 197:18:freechips.rocketchip.system.DefaultRV32Config.fir@135982.4]
  reg [31:0] _RAND_175;
  reg  brIdx_27; // @[BTB.scala 197:18:freechips.rocketchip.system.DefaultRV32Config.fir@135982.4]
  reg [31:0] _RAND_176;
  reg  r_btb_updatePipe_valid; // @[Valid.scala 117:22:freechips.rocketchip.system.DefaultRV32Config.fir@135983.4]
  reg [31:0] _RAND_177;
  reg [4:0] r_btb_updatePipe_bits_prediction_entry; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@135985.4]
  reg [31:0] _RAND_178;
  reg [31:0] r_btb_updatePipe_bits_pc; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@135985.4]
  reg [31:0] _RAND_179;
  reg  r_btb_updatePipe_bits_isValid; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@135985.4]
  reg [31:0] _RAND_180;
  reg [31:0] r_btb_updatePipe_bits_br_pc; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@135985.4]
  reg [31:0] _RAND_181;
  reg [1:0] r_btb_updatePipe_bits_cfiType; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@135985.4]
  reg [31:0] _RAND_182;
  wire [17:0] _T; // @[BTB.scala 199:39:freechips.rocketchip.system.DefaultRV32Config.fir@136006.4]
  wire  _T_1; // @[BTB.scala 202:29:freechips.rocketchip.system.DefaultRV32Config.fir@136007.4]
  wire  _T_2; // @[BTB.scala 202:29:freechips.rocketchip.system.DefaultRV32Config.fir@136008.4]
  wire  _T_3; // @[BTB.scala 202:29:freechips.rocketchip.system.DefaultRV32Config.fir@136009.4]
  wire  _T_4; // @[BTB.scala 202:29:freechips.rocketchip.system.DefaultRV32Config.fir@136010.4]
  wire  _T_5; // @[BTB.scala 202:29:freechips.rocketchip.system.DefaultRV32Config.fir@136011.4]
  wire  _T_6; // @[BTB.scala 202:29:freechips.rocketchip.system.DefaultRV32Config.fir@136012.4]
  wire [5:0] _T_11; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@136017.4]
  wire [5:0] pageHit; // @[BTB.scala 202:15:freechips.rocketchip.system.DefaultRV32Config.fir@136018.4]
  wire [12:0] _T_12; // @[BTB.scala 205:19:freechips.rocketchip.system.DefaultRV32Config.fir@136019.4]
  wire  _T_13; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@136020.4]
  wire  _T_14; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@136021.4]
  wire  _T_15; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@136022.4]
  wire  _T_16; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@136023.4]
  wire  _T_17; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@136024.4]
  wire  _T_18; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@136025.4]
  wire  _T_19; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@136026.4]
  wire  _T_20; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@136027.4]
  wire  _T_21; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@136028.4]
  wire  _T_22; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@136029.4]
  wire  _T_23; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@136030.4]
  wire  _T_24; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@136031.4]
  wire  _T_25; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@136032.4]
  wire  _T_26; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@136033.4]
  wire  _T_27; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@136034.4]
  wire  _T_28; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@136035.4]
  wire  _T_29; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@136036.4]
  wire  _T_30; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@136037.4]
  wire  _T_31; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@136038.4]
  wire  _T_32; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@136039.4]
  wire  _T_33; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@136040.4]
  wire  _T_34; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@136041.4]
  wire  _T_35; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@136042.4]
  wire  _T_36; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@136043.4]
  wire  _T_37; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@136044.4]
  wire  _T_38; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@136045.4]
  wire  _T_39; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@136046.4]
  wire  _T_40; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@136047.4]
  wire [6:0] _T_46; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@136053.4]
  wire [13:0] _T_53; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@136060.4]
  wire [6:0] _T_59; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@136066.4]
  wire [27:0] _T_67; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@136074.4]
  wire [27:0] idxHit; // @[BTB.scala 206:32:freechips.rocketchip.system.DefaultRV32Config.fir@136075.4]
  wire [17:0] _T_68; // @[BTB.scala 199:39:freechips.rocketchip.system.DefaultRV32Config.fir@136076.4]
  wire  _T_69; // @[BTB.scala 202:29:freechips.rocketchip.system.DefaultRV32Config.fir@136077.4]
  wire  _T_70; // @[BTB.scala 202:29:freechips.rocketchip.system.DefaultRV32Config.fir@136078.4]
  wire  _T_71; // @[BTB.scala 202:29:freechips.rocketchip.system.DefaultRV32Config.fir@136079.4]
  wire  _T_72; // @[BTB.scala 202:29:freechips.rocketchip.system.DefaultRV32Config.fir@136080.4]
  wire  _T_73; // @[BTB.scala 202:29:freechips.rocketchip.system.DefaultRV32Config.fir@136081.4]
  wire  _T_74; // @[BTB.scala 202:29:freechips.rocketchip.system.DefaultRV32Config.fir@136082.4]
  wire [5:0] _T_79; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@136087.4]
  wire [5:0] updatePageHit; // @[BTB.scala 202:15:freechips.rocketchip.system.DefaultRV32Config.fir@136088.4]
  wire  updateHit; // @[BTB.scala 220:48:freechips.rocketchip.system.DefaultRV32Config.fir@136089.4]
  wire  useUpdatePageHit; // @[BTB.scala 222:40:freechips.rocketchip.system.DefaultRV32Config.fir@136090.4]
  wire  usePageHit; // @[BTB.scala 223:28:freechips.rocketchip.system.DefaultRV32Config.fir@136091.4]
  wire  doIdxPageRepl; // @[BTB.scala 224:23:freechips.rocketchip.system.DefaultRV32Config.fir@136092.4]
  reg [2:0] nextPageRepl; // @[BTB.scala 225:25:freechips.rocketchip.system.DefaultRV32Config.fir@136093.4]
  reg [31:0] _RAND_183;
  wire [4:0] _T_80; // @[BTB.scala 226:32:freechips.rocketchip.system.DefaultRV32Config.fir@136094.4]
  wire  _T_81; // @[BTB.scala 226:53:freechips.rocketchip.system.DefaultRV32Config.fir@136095.4]
  wire [5:0] _T_82; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@136096.4]
  wire [7:0] _T_83; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@136097.4]
  wire [7:0] _T_84; // @[BTB.scala 226:70:freechips.rocketchip.system.DefaultRV32Config.fir@136098.4]
  wire [7:0] _GEN_438; // @[BTB.scala 226:65:freechips.rocketchip.system.DefaultRV32Config.fir@136099.4]
  wire [7:0] idxPageRepl; // @[BTB.scala 226:65:freechips.rocketchip.system.DefaultRV32Config.fir@136099.4]
  wire [7:0] idxPageUpdateOH; // @[BTB.scala 227:28:freechips.rocketchip.system.DefaultRV32Config.fir@136100.4]
  wire [3:0] _T_85; // @[OneHot.scala 30:18:freechips.rocketchip.system.DefaultRV32Config.fir@136101.4]
  wire [3:0] _T_86; // @[OneHot.scala 31:18:freechips.rocketchip.system.DefaultRV32Config.fir@136102.4]
  wire  _T_87; // @[OneHot.scala 32:14:freechips.rocketchip.system.DefaultRV32Config.fir@136103.4]
  wire [3:0] _T_88; // @[OneHot.scala 32:28:freechips.rocketchip.system.DefaultRV32Config.fir@136104.4]
  wire [1:0] _T_89; // @[OneHot.scala 30:18:freechips.rocketchip.system.DefaultRV32Config.fir@136105.4]
  wire [1:0] _T_90; // @[OneHot.scala 31:18:freechips.rocketchip.system.DefaultRV32Config.fir@136106.4]
  wire  _T_91; // @[OneHot.scala 32:14:freechips.rocketchip.system.DefaultRV32Config.fir@136107.4]
  wire [1:0] _T_92; // @[OneHot.scala 32:28:freechips.rocketchip.system.DefaultRV32Config.fir@136108.4]
  wire  _T_93; // @[CircuitMath.scala 30:8:freechips.rocketchip.system.DefaultRV32Config.fir@136109.4]
  wire [2:0] idxPageUpdate; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@136111.4]
  wire [7:0] idxPageReplEn; // @[BTB.scala 229:26:freechips.rocketchip.system.DefaultRV32Config.fir@136112.4]
  wire  samePage; // @[BTB.scala 231:45:freechips.rocketchip.system.DefaultRV32Config.fir@136115.4]
  wire  _T_97; // @[BTB.scala 232:23:freechips.rocketchip.system.DefaultRV32Config.fir@136116.4]
  wire  _T_98; // @[BTB.scala 232:36:freechips.rocketchip.system.DefaultRV32Config.fir@136117.4]
  wire  doTgtPageRepl; // @[BTB.scala 232:33:freechips.rocketchip.system.DefaultRV32Config.fir@136118.4]
  wire [4:0] _T_99; // @[BTB.scala 233:71:freechips.rocketchip.system.DefaultRV32Config.fir@136119.4]
  wire  _T_100; // @[BTB.scala 233:100:freechips.rocketchip.system.DefaultRV32Config.fir@136120.4]
  wire [5:0] _T_101; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@136121.4]
  wire [7:0] tgtPageRepl; // @[BTB.scala 233:24:freechips.rocketchip.system.DefaultRV32Config.fir@136122.4]
  wire [7:0] _T_102; // @[BTB.scala 234:45:freechips.rocketchip.system.DefaultRV32Config.fir@136123.4]
  wire [7:0] _GEN_439; // @[BTB.scala 234:40:freechips.rocketchip.system.DefaultRV32Config.fir@136124.4]
  wire [7:0] _T_103; // @[BTB.scala 234:40:freechips.rocketchip.system.DefaultRV32Config.fir@136124.4]
  wire [3:0] _T_104; // @[OneHot.scala 30:18:freechips.rocketchip.system.DefaultRV32Config.fir@136125.4]
  wire [3:0] _T_105; // @[OneHot.scala 31:18:freechips.rocketchip.system.DefaultRV32Config.fir@136126.4]
  wire  _T_106; // @[OneHot.scala 32:14:freechips.rocketchip.system.DefaultRV32Config.fir@136127.4]
  wire [3:0] _T_107; // @[OneHot.scala 32:28:freechips.rocketchip.system.DefaultRV32Config.fir@136128.4]
  wire [1:0] _T_108; // @[OneHot.scala 30:18:freechips.rocketchip.system.DefaultRV32Config.fir@136129.4]
  wire [1:0] _T_109; // @[OneHot.scala 31:18:freechips.rocketchip.system.DefaultRV32Config.fir@136130.4]
  wire  _T_110; // @[OneHot.scala 32:14:freechips.rocketchip.system.DefaultRV32Config.fir@136131.4]
  wire [1:0] _T_111; // @[OneHot.scala 32:28:freechips.rocketchip.system.DefaultRV32Config.fir@136132.4]
  wire  _T_112; // @[CircuitMath.scala 30:8:freechips.rocketchip.system.DefaultRV32Config.fir@136133.4]
  wire [2:0] tgtPageUpdate; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@136135.4]
  wire [7:0] tgtPageReplEn; // @[BTB.scala 235:26:freechips.rocketchip.system.DefaultRV32Config.fir@136136.4]
  wire  _T_114; // @[BTB.scala 237:46:freechips.rocketchip.system.DefaultRV32Config.fir@136137.4]
  wire  _T_115; // @[BTB.scala 237:28:freechips.rocketchip.system.DefaultRV32Config.fir@136138.4]
  wire  _T_116; // @[BTB.scala 238:30:freechips.rocketchip.system.DefaultRV32Config.fir@136140.6]
  wire [1:0] _T_117; // @[BTB.scala 239:40:freechips.rocketchip.system.DefaultRV32Config.fir@136141.6]
  wire [2:0] _GEN_440; // @[BTB.scala 239:29:freechips.rocketchip.system.DefaultRV32Config.fir@136142.6]
  wire [2:0] _T_119; // @[BTB.scala 239:29:freechips.rocketchip.system.DefaultRV32Config.fir@136143.6]
  wire  _T_120; // @[BTB.scala 240:30:freechips.rocketchip.system.DefaultRV32Config.fir@136144.6]
  wire  _T_121; // @[BTB.scala 240:45:freechips.rocketchip.system.DefaultRV32Config.fir@136145.6]
  reg [26:0] _T_123; // @[Replacement.scala 41:30:freechips.rocketchip.system.DefaultRV32Config.fir@136149.4]
  reg [31:0] _RAND_184;
  wire [27:0] _T_124; // @[Replacement.scala 57:31:freechips.rocketchip.system.DefaultRV32Config.fir@136150.4]
  wire [26:0] _GEN_441; // @[Replacement.scala 61:48:freechips.rocketchip.system.DefaultRV32Config.fir@136154.4]
  wire [27:0] _T_128; // @[Replacement.scala 61:48:freechips.rocketchip.system.DefaultRV32Config.fir@136154.4]
  wire  _T_129; // @[Replacement.scala 61:48:freechips.rocketchip.system.DefaultRV32Config.fir@136155.4]
  wire [1:0] _T_131; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@136157.4]
  wire [5:0] _T_132; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@136158.4]
  wire [4:0] _T_133; // @[Replacement.scala 60:53:freechips.rocketchip.system.DefaultRV32Config.fir@136159.4]
  wire  _T_134; // @[Replacement.scala 60:70:freechips.rocketchip.system.DefaultRV32Config.fir@136160.4]
  wire [27:0] _T_135; // @[Replacement.scala 61:48:freechips.rocketchip.system.DefaultRV32Config.fir@136161.4]
  wire  _T_136; // @[Replacement.scala 61:48:freechips.rocketchip.system.DefaultRV32Config.fir@136162.4]
  wire  _T_137; // @[Replacement.scala 61:32:freechips.rocketchip.system.DefaultRV32Config.fir@136163.4]
  wire [2:0] _T_138; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@136164.4]
  wire [5:0] _T_139; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@136165.4]
  wire [4:0] _T_140; // @[Replacement.scala 60:53:freechips.rocketchip.system.DefaultRV32Config.fir@136166.4]
  wire  _T_141; // @[Replacement.scala 60:70:freechips.rocketchip.system.DefaultRV32Config.fir@136167.4]
  wire [27:0] _T_142; // @[Replacement.scala 61:48:freechips.rocketchip.system.DefaultRV32Config.fir@136168.4]
  wire  _T_143; // @[Replacement.scala 61:48:freechips.rocketchip.system.DefaultRV32Config.fir@136169.4]
  wire  _T_144; // @[Replacement.scala 61:32:freechips.rocketchip.system.DefaultRV32Config.fir@136170.4]
  wire [3:0] _T_145; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@136171.4]
  wire [5:0] _T_146; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@136172.4]
  wire [4:0] _T_147; // @[Replacement.scala 60:53:freechips.rocketchip.system.DefaultRV32Config.fir@136173.4]
  wire  _T_148; // @[Replacement.scala 60:70:freechips.rocketchip.system.DefaultRV32Config.fir@136174.4]
  wire [27:0] _T_149; // @[Replacement.scala 61:48:freechips.rocketchip.system.DefaultRV32Config.fir@136175.4]
  wire  _T_150; // @[Replacement.scala 61:48:freechips.rocketchip.system.DefaultRV32Config.fir@136176.4]
  wire  _T_151; // @[Replacement.scala 61:32:freechips.rocketchip.system.DefaultRV32Config.fir@136177.4]
  wire [4:0] _T_152; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@136178.4]
  wire [5:0] _T_153; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@136179.4]
  wire [4:0] _T_154; // @[Replacement.scala 60:53:freechips.rocketchip.system.DefaultRV32Config.fir@136180.4]
  wire  _T_155; // @[Replacement.scala 60:70:freechips.rocketchip.system.DefaultRV32Config.fir@136181.4]
  wire [27:0] _T_156; // @[Replacement.scala 61:48:freechips.rocketchip.system.DefaultRV32Config.fir@136182.4]
  wire  _T_157; // @[Replacement.scala 61:48:freechips.rocketchip.system.DefaultRV32Config.fir@136183.4]
  wire  _T_158; // @[Replacement.scala 61:32:freechips.rocketchip.system.DefaultRV32Config.fir@136184.4]
  wire [5:0] _T_159; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@136185.4]
  wire [4:0] _T_160; // @[Replacement.scala 63:8:freechips.rocketchip.system.DefaultRV32Config.fir@136186.4]
  wire [4:0] waddr; // @[BTB.scala 244:18:freechips.rocketchip.system.DefaultRV32Config.fir@136187.4]
  reg  r_respPipe_valid; // @[Valid.scala 117:22:freechips.rocketchip.system.DefaultRV32Config.fir@136188.4]
  reg [31:0] _RAND_185;
  reg  r_respPipe_bits_taken; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@136190.4]
  reg [31:0] _RAND_186;
  reg [4:0] r_respPipe_bits_entry; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@136190.4]
  reg [31:0] _RAND_187;
  wire  _T_161; // @[BTB.scala 246:22:freechips.rocketchip.system.DefaultRV32Config.fir@136205.4]
  wire  _T_162; // @[BTB.scala 246:43:freechips.rocketchip.system.DefaultRV32Config.fir@136206.4]
  wire [4:0] _T_163; // @[BTB.scala 247:20:freechips.rocketchip.system.DefaultRV32Config.fir@136208.6]
  wire  _T_165; // @[Replacement.scala 49:20:freechips.rocketchip.system.DefaultRV32Config.fir@136210.6]
  wire  _T_166; // @[Replacement.scala 50:43:freechips.rocketchip.system.DefaultRV32Config.fir@136211.6]
  wire [27:0] _T_168; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136213.6]
  wire [27:0] _T_169; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136214.6]
  wire [27:0] _T_170; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136215.6]
  wire [27:0] _T_171; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136216.6]
  wire [27:0] _T_172; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136217.6]
  wire [1:0] _T_173; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@136218.6]
  wire  _T_174; // @[Replacement.scala 49:20:freechips.rocketchip.system.DefaultRV32Config.fir@136219.6]
  wire  _T_175; // @[Replacement.scala 50:43:freechips.rocketchip.system.DefaultRV32Config.fir@136220.6]
  wire [3:0] _T_176; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136221.6]
  wire [27:0] _GEN_442; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136222.6]
  wire [27:0] _T_177; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136222.6]
  wire [27:0] _T_178; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136223.6]
  wire [27:0] _T_179; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136224.6]
  wire [27:0] _T_180; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136225.6]
  wire [27:0] _T_181; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136226.6]
  wire [2:0] _T_182; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@136227.6]
  wire  _T_183; // @[Replacement.scala 49:20:freechips.rocketchip.system.DefaultRV32Config.fir@136228.6]
  wire  _T_184; // @[Replacement.scala 50:43:freechips.rocketchip.system.DefaultRV32Config.fir@136229.6]
  wire [7:0] _T_185; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136230.6]
  wire [27:0] _GEN_444; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136231.6]
  wire [27:0] _T_186; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136231.6]
  wire [27:0] _T_187; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136232.6]
  wire [27:0] _T_188; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136233.6]
  wire [27:0] _T_189; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136234.6]
  wire [27:0] _T_190; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136235.6]
  wire [3:0] _T_191; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@136236.6]
  wire  _T_192; // @[Replacement.scala 49:20:freechips.rocketchip.system.DefaultRV32Config.fir@136237.6]
  wire  _T_193; // @[Replacement.scala 50:43:freechips.rocketchip.system.DefaultRV32Config.fir@136238.6]
  wire [15:0] _T_194; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136239.6]
  wire [27:0] _GEN_446; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136240.6]
  wire [27:0] _T_195; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136240.6]
  wire [27:0] _T_196; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136241.6]
  wire [27:0] _T_197; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136242.6]
  wire [27:0] _T_198; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136243.6]
  wire [27:0] _T_199; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136244.6]
  wire [4:0] _T_200; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@136245.6]
  wire  _T_201; // @[Replacement.scala 49:20:freechips.rocketchip.system.DefaultRV32Config.fir@136246.6]
  wire  _T_202; // @[Replacement.scala 50:43:freechips.rocketchip.system.DefaultRV32Config.fir@136247.6]
  wire [31:0] _T_203; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136248.6]
  wire [31:0] _GEN_448; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136249.6]
  wire [31:0] _T_204; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136249.6]
  wire [27:0] _T_205; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136250.6]
  wire [31:0] _GEN_449; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136251.6]
  wire [31:0] _T_206; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136251.6]
  wire [31:0] _T_207; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136252.6]
  wire [31:0] _T_208; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136253.6]
  wire [26:0] _T_210; // @[package.scala 120:13:freechips.rocketchip.system.DefaultRV32Config.fir@136255.6]
  wire [31:0] _T_211; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@136259.6]
  wire [12:0] _T_212; // @[BTB.scala 252:40:freechips.rocketchip.system.DefaultRV32Config.fir@136260.6]
  wire [3:0] _T_214; // @[BTB.scala 254:38:freechips.rocketchip.system.DefaultRV32Config.fir@136264.6]
  wire [2:0] _idxPages_waddr; // @[BTB.scala 254:21:freechips.rocketchip.system.DefaultRV32Config.fir@136265.6 BTB.scala 254:21:freechips.rocketchip.system.DefaultRV32Config.fir@136265.6]
  wire [31:0] _GEN_450; // @[BTB.scala 257:55:freechips.rocketchip.system.DefaultRV32Config.fir@136268.6]
  wire [31:0] _T_215; // @[BTB.scala 257:55:freechips.rocketchip.system.DefaultRV32Config.fir@136268.6]
  wire [31:0] _T_216; // @[BTB.scala 257:73:freechips.rocketchip.system.DefaultRV32Config.fir@136269.6]
  wire [31:0] _T_217; // @[BTB.scala 257:71:freechips.rocketchip.system.DefaultRV32Config.fir@136270.6]
  wire [31:0] _T_218; // @[BTB.scala 257:19:freechips.rocketchip.system.DefaultRV32Config.fir@136271.6]
  wire [30:0] _T_219; // @[BTB.scala 259:47:freechips.rocketchip.system.DefaultRV32Config.fir@136273.6]
  wire  _brIdx_waddr; // @[BTB.scala 259:20:freechips.rocketchip.system.DefaultRV32Config.fir@136274.6 BTB.scala 259:20:freechips.rocketchip.system.DefaultRV32Config.fir@136274.6]
  wire  _T_220; // @[BTB.scala 262:39:freechips.rocketchip.system.DefaultRV32Config.fir@136275.6]
  wire  _T_221; // @[BTB.scala 262:25:freechips.rocketchip.system.DefaultRV32Config.fir@136276.6]
  wire [7:0] _T_222; // @[BTB.scala 268:24:freechips.rocketchip.system.DefaultRV32Config.fir@136277.6]
  wire  _T_226; // @[BTB.scala 266:17:freechips.rocketchip.system.DefaultRV32Config.fir@136281.6]
  wire  _T_227; // @[BTB.scala 266:17:freechips.rocketchip.system.DefaultRV32Config.fir@136285.6]
  wire  _T_228; // @[BTB.scala 266:17:freechips.rocketchip.system.DefaultRV32Config.fir@136289.6]
  wire [7:0] _T_229; // @[BTB.scala 270:24:freechips.rocketchip.system.DefaultRV32Config.fir@136293.6]
  wire  _T_233; // @[BTB.scala 266:17:freechips.rocketchip.system.DefaultRV32Config.fir@136297.6]
  wire  _T_234; // @[BTB.scala 266:17:freechips.rocketchip.system.DefaultRV32Config.fir@136301.6]
  wire  _T_235; // @[BTB.scala 266:17:freechips.rocketchip.system.DefaultRV32Config.fir@136305.6]
  wire [7:0] _GEN_452; // @[BTB.scala 272:28:freechips.rocketchip.system.DefaultRV32Config.fir@136309.6]
  wire [7:0] _T_236; // @[BTB.scala 272:28:freechips.rocketchip.system.DefaultRV32Config.fir@136309.6]
  wire [7:0] _T_237; // @[BTB.scala 272:44:freechips.rocketchip.system.DefaultRV32Config.fir@136310.6]
  wire [31:0] _GEN_338; // @[BTB.scala 250:29:freechips.rocketchip.system.DefaultRV32Config.fir@136258.4]
  wire [7:0] _GEN_373; // @[BTB.scala 250:29:freechips.rocketchip.system.DefaultRV32Config.fir@136258.4]
  wire [6:0] _T_238; // @[BTB.scala 275:29:freechips.rocketchip.system.DefaultRV32Config.fir@136313.4]
  wire  _T_239; // @[Mux.scala 29:36:freechips.rocketchip.system.DefaultRV32Config.fir@136314.4]
  wire  _T_240; // @[Mux.scala 29:36:freechips.rocketchip.system.DefaultRV32Config.fir@136315.4]
  wire  _T_241; // @[Mux.scala 29:36:freechips.rocketchip.system.DefaultRV32Config.fir@136316.4]
  wire  _T_242; // @[Mux.scala 29:36:freechips.rocketchip.system.DefaultRV32Config.fir@136317.4]
  wire  _T_243; // @[Mux.scala 29:36:freechips.rocketchip.system.DefaultRV32Config.fir@136318.4]
  wire  _T_244; // @[Mux.scala 29:36:freechips.rocketchip.system.DefaultRV32Config.fir@136319.4]
  wire  _T_245; // @[Mux.scala 29:36:freechips.rocketchip.system.DefaultRV32Config.fir@136320.4]
  wire  _T_246; // @[Mux.scala 29:36:freechips.rocketchip.system.DefaultRV32Config.fir@136321.4]
  wire  _T_247; // @[Mux.scala 29:36:freechips.rocketchip.system.DefaultRV32Config.fir@136322.4]
  wire  _T_248; // @[Mux.scala 29:36:freechips.rocketchip.system.DefaultRV32Config.fir@136323.4]
  wire  _T_249; // @[Mux.scala 29:36:freechips.rocketchip.system.DefaultRV32Config.fir@136324.4]
  wire  _T_250; // @[Mux.scala 29:36:freechips.rocketchip.system.DefaultRV32Config.fir@136325.4]
  wire  _T_251; // @[Mux.scala 29:36:freechips.rocketchip.system.DefaultRV32Config.fir@136326.4]
  wire  _T_252; // @[Mux.scala 29:36:freechips.rocketchip.system.DefaultRV32Config.fir@136327.4]
  wire  _T_253; // @[Mux.scala 29:36:freechips.rocketchip.system.DefaultRV32Config.fir@136328.4]
  wire  _T_254; // @[Mux.scala 29:36:freechips.rocketchip.system.DefaultRV32Config.fir@136329.4]
  wire  _T_255; // @[Mux.scala 29:36:freechips.rocketchip.system.DefaultRV32Config.fir@136330.4]
  wire  _T_256; // @[Mux.scala 29:36:freechips.rocketchip.system.DefaultRV32Config.fir@136331.4]
  wire  _T_257; // @[Mux.scala 29:36:freechips.rocketchip.system.DefaultRV32Config.fir@136332.4]
  wire  _T_258; // @[Mux.scala 29:36:freechips.rocketchip.system.DefaultRV32Config.fir@136333.4]
  wire  _T_259; // @[Mux.scala 29:36:freechips.rocketchip.system.DefaultRV32Config.fir@136334.4]
  wire  _T_260; // @[Mux.scala 29:36:freechips.rocketchip.system.DefaultRV32Config.fir@136335.4]
  wire  _T_261; // @[Mux.scala 29:36:freechips.rocketchip.system.DefaultRV32Config.fir@136336.4]
  wire  _T_262; // @[Mux.scala 29:36:freechips.rocketchip.system.DefaultRV32Config.fir@136337.4]
  wire  _T_263; // @[Mux.scala 29:36:freechips.rocketchip.system.DefaultRV32Config.fir@136338.4]
  wire  _T_264; // @[Mux.scala 29:36:freechips.rocketchip.system.DefaultRV32Config.fir@136339.4]
  wire  _T_265; // @[Mux.scala 29:36:freechips.rocketchip.system.DefaultRV32Config.fir@136340.4]
  wire  _T_266; // @[Mux.scala 29:36:freechips.rocketchip.system.DefaultRV32Config.fir@136341.4]
  wire [2:0] _T_267; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136342.4]
  wire [2:0] _T_268; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136343.4]
  wire [2:0] _T_269; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136344.4]
  wire [2:0] _T_270; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136345.4]
  wire [2:0] _T_271; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136346.4]
  wire [2:0] _T_272; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136347.4]
  wire [2:0] _T_273; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136348.4]
  wire [2:0] _T_274; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136349.4]
  wire [2:0] _T_275; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136350.4]
  wire [2:0] _T_276; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136351.4]
  wire [2:0] _T_277; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136352.4]
  wire [2:0] _T_278; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136353.4]
  wire [2:0] _T_279; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136354.4]
  wire [2:0] _T_280; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136355.4]
  wire [2:0] _T_281; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136356.4]
  wire [2:0] _T_282; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136357.4]
  wire [2:0] _T_283; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136358.4]
  wire [2:0] _T_284; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136359.4]
  wire [2:0] _T_285; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136360.4]
  wire [2:0] _T_286; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136361.4]
  wire [2:0] _T_287; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136362.4]
  wire [2:0] _T_288; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136363.4]
  wire [2:0] _T_289; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136364.4]
  wire [2:0] _T_290; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136365.4]
  wire [2:0] _T_291; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136366.4]
  wire [2:0] _T_292; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136367.4]
  wire [2:0] _T_293; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136368.4]
  wire [2:0] _T_294; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136369.4]
  wire [2:0] _T_295; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136370.4]
  wire [2:0] _T_296; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136371.4]
  wire [2:0] _T_297; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136372.4]
  wire [2:0] _T_298; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136373.4]
  wire [2:0] _T_299; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136374.4]
  wire [2:0] _T_300; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136375.4]
  wire [2:0] _T_301; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136376.4]
  wire [2:0] _T_302; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136377.4]
  wire [2:0] _T_303; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136378.4]
  wire [2:0] _T_304; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136379.4]
  wire [2:0] _T_305; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136380.4]
  wire [2:0] _T_306; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136381.4]
  wire [2:0] _T_307; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136382.4]
  wire [2:0] _T_308; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136383.4]
  wire [2:0] _T_309; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136384.4]
  wire [2:0] _T_310; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136385.4]
  wire [2:0] _T_311; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136386.4]
  wire [2:0] _T_312; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136387.4]
  wire [2:0] _T_313; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136388.4]
  wire [2:0] _T_314; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136389.4]
  wire [2:0] _T_315; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136390.4]
  wire [2:0] _T_316; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136391.4]
  wire [2:0] _T_317; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136392.4]
  wire [2:0] _T_318; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136393.4]
  wire [2:0] _T_319; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136394.4]
  wire [2:0] _T_320; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136395.4]
  wire [2:0] _T_321; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136396.4]
  wire [6:0] _T_323; // @[BTB.scala 275:34:freechips.rocketchip.system.DefaultRV32Config.fir@136399.4]
  wire [2:0] _T_353; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136431.4]
  wire [2:0] _T_354; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136432.4]
  wire [2:0] _T_355; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136433.4]
  wire [2:0] _T_356; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136434.4]
  wire [2:0] _T_357; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136435.4]
  wire [2:0] _T_358; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136436.4]
  wire [2:0] _T_359; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136437.4]
  wire [2:0] _T_360; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136438.4]
  wire [2:0] _T_361; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136439.4]
  wire [2:0] _T_362; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136440.4]
  wire [2:0] _T_363; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136441.4]
  wire [2:0] _T_364; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136442.4]
  wire [2:0] _T_365; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136443.4]
  wire [2:0] _T_366; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136444.4]
  wire [2:0] _T_367; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136445.4]
  wire [2:0] _T_368; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136446.4]
  wire [2:0] _T_369; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136447.4]
  wire [2:0] _T_370; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136448.4]
  wire [2:0] _T_371; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136449.4]
  wire [2:0] _T_372; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136450.4]
  wire [2:0] _T_373; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136451.4]
  wire [2:0] _T_374; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136452.4]
  wire [2:0] _T_375; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136453.4]
  wire [2:0] _T_376; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136454.4]
  wire [2:0] _T_377; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136455.4]
  wire [2:0] _T_378; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136456.4]
  wire [2:0] _T_379; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136457.4]
  wire [2:0] _T_380; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136458.4]
  wire [2:0] _T_381; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136459.4]
  wire [2:0] _T_382; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136460.4]
  wire [2:0] _T_383; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136461.4]
  wire [2:0] _T_384; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136462.4]
  wire [2:0] _T_385; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136463.4]
  wire [2:0] _T_386; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136464.4]
  wire [2:0] _T_387; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136465.4]
  wire [2:0] _T_388; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136466.4]
  wire [2:0] _T_389; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136467.4]
  wire [2:0] _T_390; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136468.4]
  wire [2:0] _T_391; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136469.4]
  wire [2:0] _T_392; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136470.4]
  wire [2:0] _T_393; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136471.4]
  wire [2:0] _T_394; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136472.4]
  wire [2:0] _T_395; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136473.4]
  wire [2:0] _T_396; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136474.4]
  wire [2:0] _T_397; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136475.4]
  wire [2:0] _T_398; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136476.4]
  wire [2:0] _T_399; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136477.4]
  wire [2:0] _T_400; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136478.4]
  wire [2:0] _T_401; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136479.4]
  wire [2:0] _T_402; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136480.4]
  wire [2:0] _T_403; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136481.4]
  wire [2:0] _T_404; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136482.4]
  wire [2:0] _T_405; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136483.4]
  wire [2:0] _T_406; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136484.4]
  wire [2:0] _T_407; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136485.4]
  wire [12:0] _T_437; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136516.4]
  wire [12:0] _T_438; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136517.4]
  wire [12:0] _T_439; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136518.4]
  wire [12:0] _T_440; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136519.4]
  wire [12:0] _T_441; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136520.4]
  wire [12:0] _T_442; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136521.4]
  wire [12:0] _T_443; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136522.4]
  wire [12:0] _T_444; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136523.4]
  wire [12:0] _T_445; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136524.4]
  wire [12:0] _T_446; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136525.4]
  wire [12:0] _T_447; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136526.4]
  wire [12:0] _T_448; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136527.4]
  wire [12:0] _T_449; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136528.4]
  wire [12:0] _T_450; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136529.4]
  wire [12:0] _T_451; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136530.4]
  wire [12:0] _T_452; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136531.4]
  wire [12:0] _T_453; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136532.4]
  wire [12:0] _T_454; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136533.4]
  wire [12:0] _T_455; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136534.4]
  wire [12:0] _T_456; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136535.4]
  wire [12:0] _T_457; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136536.4]
  wire [12:0] _T_458; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136537.4]
  wire [12:0] _T_459; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136538.4]
  wire [12:0] _T_460; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136539.4]
  wire [12:0] _T_461; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136540.4]
  wire [12:0] _T_462; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136541.4]
  wire [12:0] _T_463; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136542.4]
  wire [12:0] _T_464; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136543.4]
  wire [12:0] _T_465; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136544.4]
  wire [12:0] _T_466; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136545.4]
  wire [12:0] _T_467; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136546.4]
  wire [12:0] _T_468; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136547.4]
  wire [12:0] _T_469; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136548.4]
  wire [12:0] _T_470; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136549.4]
  wire [12:0] _T_471; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136550.4]
  wire [12:0] _T_472; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136551.4]
  wire [12:0] _T_473; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136552.4]
  wire [12:0] _T_474; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136553.4]
  wire [12:0] _T_475; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136554.4]
  wire [12:0] _T_476; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136555.4]
  wire [12:0] _T_477; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136556.4]
  wire [12:0] _T_478; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136557.4]
  wire [12:0] _T_479; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136558.4]
  wire [12:0] _T_480; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136559.4]
  wire [12:0] _T_481; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136560.4]
  wire [12:0] _T_482; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136561.4]
  wire [12:0] _T_483; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136562.4]
  wire [12:0] _T_484; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136563.4]
  wire [12:0] _T_485; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136564.4]
  wire [12:0] _T_486; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136565.4]
  wire [12:0] _T_487; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136566.4]
  wire [12:0] _T_488; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136567.4]
  wire [12:0] _T_489; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136568.4]
  wire [12:0] _T_490; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136569.4]
  wire [12:0] _T_491; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136570.4]
  wire [13:0] _T_493; // @[BTB.scala 277:82:freechips.rocketchip.system.DefaultRV32Config.fir@136573.4]
  wire [17:0] _GEN_375; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@136574.4]
  wire [17:0] _GEN_376; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@136574.4]
  wire [17:0] _GEN_377; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@136574.4]
  wire [17:0] _GEN_378; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@136574.4]
  wire [17:0] _GEN_379; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@136574.4]
  wire [31:0] _T_494; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@136574.4]
  wire [11:0] _T_495; // @[OneHot.scala 30:18:freechips.rocketchip.system.DefaultRV32Config.fir@136576.4]
  wire [15:0] _T_496; // @[OneHot.scala 31:18:freechips.rocketchip.system.DefaultRV32Config.fir@136577.4]
  wire  _T_497; // @[OneHot.scala 32:14:freechips.rocketchip.system.DefaultRV32Config.fir@136578.4]
  wire [15:0] _GEN_453; // @[OneHot.scala 32:28:freechips.rocketchip.system.DefaultRV32Config.fir@136579.4]
  wire [15:0] _T_498; // @[OneHot.scala 32:28:freechips.rocketchip.system.DefaultRV32Config.fir@136579.4]
  wire [7:0] _T_499; // @[OneHot.scala 30:18:freechips.rocketchip.system.DefaultRV32Config.fir@136580.4]
  wire [7:0] _T_500; // @[OneHot.scala 31:18:freechips.rocketchip.system.DefaultRV32Config.fir@136581.4]
  wire  _T_501; // @[OneHot.scala 32:14:freechips.rocketchip.system.DefaultRV32Config.fir@136582.4]
  wire [7:0] _T_502; // @[OneHot.scala 32:28:freechips.rocketchip.system.DefaultRV32Config.fir@136583.4]
  wire [3:0] _T_503; // @[OneHot.scala 30:18:freechips.rocketchip.system.DefaultRV32Config.fir@136584.4]
  wire [3:0] _T_504; // @[OneHot.scala 31:18:freechips.rocketchip.system.DefaultRV32Config.fir@136585.4]
  wire  _T_505; // @[OneHot.scala 32:14:freechips.rocketchip.system.DefaultRV32Config.fir@136586.4]
  wire [3:0] _T_506; // @[OneHot.scala 32:28:freechips.rocketchip.system.DefaultRV32Config.fir@136587.4]
  wire [1:0] _T_507; // @[OneHot.scala 30:18:freechips.rocketchip.system.DefaultRV32Config.fir@136588.4]
  wire [1:0] _T_508; // @[OneHot.scala 31:18:freechips.rocketchip.system.DefaultRV32Config.fir@136589.4]
  wire  _T_509; // @[OneHot.scala 32:14:freechips.rocketchip.system.DefaultRV32Config.fir@136590.4]
  wire [1:0] _T_510; // @[OneHot.scala 32:28:freechips.rocketchip.system.DefaultRV32Config.fir@136591.4]
  wire  _T_511; // @[CircuitMath.scala 30:8:freechips.rocketchip.system.DefaultRV32Config.fir@136592.4]
  wire [3:0] _T_514; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@136595.4]
  wire  _T_544; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136626.4]
  wire  _T_545; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136627.4]
  wire  _T_546; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136628.4]
  wire  _T_547; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136629.4]
  wire  _T_548; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136630.4]
  wire  _T_549; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136631.4]
  wire  _T_550; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136632.4]
  wire  _T_551; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136633.4]
  wire  _T_552; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136634.4]
  wire  _T_553; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136635.4]
  wire  _T_554; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136636.4]
  wire  _T_555; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136637.4]
  wire  _T_556; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136638.4]
  wire  _T_557; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136639.4]
  wire  _T_558; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136640.4]
  wire  _T_559; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136641.4]
  wire  _T_560; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136642.4]
  wire  _T_561; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136643.4]
  wire  _T_562; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136644.4]
  wire  _T_563; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136645.4]
  wire  _T_564; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136646.4]
  wire  _T_565; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136647.4]
  wire  _T_566; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136648.4]
  wire  _T_567; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136649.4]
  wire  _T_568; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136650.4]
  wire  _T_569; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136651.4]
  wire  _T_570; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136652.4]
  wire  _T_571; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136653.4]
  wire  _T_572; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136654.4]
  wire  _T_573; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136655.4]
  wire  _T_574; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136656.4]
  wire  _T_575; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136657.4]
  wire  _T_576; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136658.4]
  wire  _T_577; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136659.4]
  wire  _T_578; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136660.4]
  wire  _T_579; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136661.4]
  wire  _T_580; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136662.4]
  wire  _T_581; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136663.4]
  wire  _T_582; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136664.4]
  wire  _T_583; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136665.4]
  wire  _T_584; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136666.4]
  wire  _T_585; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136667.4]
  wire  _T_586; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136668.4]
  wire  _T_587; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136669.4]
  wire  _T_588; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136670.4]
  wire  _T_589; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136671.4]
  wire  _T_590; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136672.4]
  wire  _T_591; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136673.4]
  wire  _T_592; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136674.4]
  wire  _T_593; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136675.4]
  wire  _T_594; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136676.4]
  wire  _T_595; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136677.4]
  wire  _T_596; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136678.4]
  wire  _T_597; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136679.4]
  wire [13:0] _T_691; // @[Misc.scala 179:37:freechips.rocketchip.system.DefaultRV32Config.fir@136778.4]
  wire [6:0] _T_692; // @[Misc.scala 179:37:freechips.rocketchip.system.DefaultRV32Config.fir@136779.4]
  wire [2:0] _T_693; // @[Misc.scala 179:37:freechips.rocketchip.system.DefaultRV32Config.fir@136780.4]
  wire  _T_694; // @[Misc.scala 179:37:freechips.rocketchip.system.DefaultRV32Config.fir@136781.4]
  wire [1:0] _T_696; // @[Misc.scala 180:39:freechips.rocketchip.system.DefaultRV32Config.fir@136783.4]
  wire  _T_697; // @[Misc.scala 179:37:freechips.rocketchip.system.DefaultRV32Config.fir@136784.4]
  wire  _T_699; // @[Misc.scala 180:39:freechips.rocketchip.system.DefaultRV32Config.fir@136786.4]
  wire  _T_701; // @[Misc.scala 181:16:freechips.rocketchip.system.DefaultRV32Config.fir@136788.4]
  wire  _T_703; // @[Misc.scala 181:61:freechips.rocketchip.system.DefaultRV32Config.fir@136790.4]
  wire  _T_705; // @[Misc.scala 181:16:freechips.rocketchip.system.DefaultRV32Config.fir@136792.4]
  wire  _T_707; // @[Misc.scala 181:61:freechips.rocketchip.system.DefaultRV32Config.fir@136794.4]
  wire  _T_708; // @[Misc.scala 181:49:freechips.rocketchip.system.DefaultRV32Config.fir@136795.4]
  wire [3:0] _T_709; // @[Misc.scala 180:39:freechips.rocketchip.system.DefaultRV32Config.fir@136796.4]
  wire [1:0] _T_710; // @[Misc.scala 179:37:freechips.rocketchip.system.DefaultRV32Config.fir@136797.4]
  wire  _T_711; // @[Misc.scala 179:37:freechips.rocketchip.system.DefaultRV32Config.fir@136798.4]
  wire  _T_713; // @[Misc.scala 180:39:freechips.rocketchip.system.DefaultRV32Config.fir@136800.4]
  wire  _T_715; // @[Misc.scala 181:16:freechips.rocketchip.system.DefaultRV32Config.fir@136802.4]
  wire  _T_717; // @[Misc.scala 181:61:freechips.rocketchip.system.DefaultRV32Config.fir@136804.4]
  wire [1:0] _T_719; // @[Misc.scala 180:39:freechips.rocketchip.system.DefaultRV32Config.fir@136806.4]
  wire  _T_720; // @[Misc.scala 179:37:freechips.rocketchip.system.DefaultRV32Config.fir@136807.4]
  wire  _T_722; // @[Misc.scala 180:39:freechips.rocketchip.system.DefaultRV32Config.fir@136809.4]
  wire  _T_724; // @[Misc.scala 181:16:freechips.rocketchip.system.DefaultRV32Config.fir@136811.4]
  wire  _T_726; // @[Misc.scala 181:61:freechips.rocketchip.system.DefaultRV32Config.fir@136813.4]
  wire  _T_728; // @[Misc.scala 181:16:freechips.rocketchip.system.DefaultRV32Config.fir@136815.4]
  wire  _T_729; // @[Misc.scala 181:37:freechips.rocketchip.system.DefaultRV32Config.fir@136816.4]
  wire  _T_730; // @[Misc.scala 181:61:freechips.rocketchip.system.DefaultRV32Config.fir@136817.4]
  wire  _T_731; // @[Misc.scala 181:49:freechips.rocketchip.system.DefaultRV32Config.fir@136818.4]
  wire  _T_732; // @[Misc.scala 181:16:freechips.rocketchip.system.DefaultRV32Config.fir@136819.4]
  wire  _T_733; // @[Misc.scala 181:37:freechips.rocketchip.system.DefaultRV32Config.fir@136820.4]
  wire  _T_734; // @[Misc.scala 181:61:freechips.rocketchip.system.DefaultRV32Config.fir@136821.4]
  wire  _T_735; // @[Misc.scala 181:49:freechips.rocketchip.system.DefaultRV32Config.fir@136822.4]
  wire [6:0] _T_736; // @[Misc.scala 180:39:freechips.rocketchip.system.DefaultRV32Config.fir@136823.4]
  wire [2:0] _T_737; // @[Misc.scala 179:37:freechips.rocketchip.system.DefaultRV32Config.fir@136824.4]
  wire  _T_738; // @[Misc.scala 179:37:freechips.rocketchip.system.DefaultRV32Config.fir@136825.4]
  wire [1:0] _T_740; // @[Misc.scala 180:39:freechips.rocketchip.system.DefaultRV32Config.fir@136827.4]
  wire  _T_741; // @[Misc.scala 179:37:freechips.rocketchip.system.DefaultRV32Config.fir@136828.4]
  wire  _T_743; // @[Misc.scala 180:39:freechips.rocketchip.system.DefaultRV32Config.fir@136830.4]
  wire  _T_745; // @[Misc.scala 181:16:freechips.rocketchip.system.DefaultRV32Config.fir@136832.4]
  wire  _T_747; // @[Misc.scala 181:61:freechips.rocketchip.system.DefaultRV32Config.fir@136834.4]
  wire  _T_749; // @[Misc.scala 181:16:freechips.rocketchip.system.DefaultRV32Config.fir@136836.4]
  wire  _T_751; // @[Misc.scala 181:61:freechips.rocketchip.system.DefaultRV32Config.fir@136838.4]
  wire  _T_752; // @[Misc.scala 181:49:freechips.rocketchip.system.DefaultRV32Config.fir@136839.4]
  wire [3:0] _T_753; // @[Misc.scala 180:39:freechips.rocketchip.system.DefaultRV32Config.fir@136840.4]
  wire [1:0] _T_754; // @[Misc.scala 179:37:freechips.rocketchip.system.DefaultRV32Config.fir@136841.4]
  wire  _T_755; // @[Misc.scala 179:37:freechips.rocketchip.system.DefaultRV32Config.fir@136842.4]
  wire  _T_757; // @[Misc.scala 180:39:freechips.rocketchip.system.DefaultRV32Config.fir@136844.4]
  wire  _T_759; // @[Misc.scala 181:16:freechips.rocketchip.system.DefaultRV32Config.fir@136846.4]
  wire  _T_761; // @[Misc.scala 181:61:freechips.rocketchip.system.DefaultRV32Config.fir@136848.4]
  wire [1:0] _T_763; // @[Misc.scala 180:39:freechips.rocketchip.system.DefaultRV32Config.fir@136850.4]
  wire  _T_764; // @[Misc.scala 179:37:freechips.rocketchip.system.DefaultRV32Config.fir@136851.4]
  wire  _T_766; // @[Misc.scala 180:39:freechips.rocketchip.system.DefaultRV32Config.fir@136853.4]
  wire  _T_768; // @[Misc.scala 181:16:freechips.rocketchip.system.DefaultRV32Config.fir@136855.4]
  wire  _T_770; // @[Misc.scala 181:61:freechips.rocketchip.system.DefaultRV32Config.fir@136857.4]
  wire  _T_772; // @[Misc.scala 181:16:freechips.rocketchip.system.DefaultRV32Config.fir@136859.4]
  wire  _T_773; // @[Misc.scala 181:37:freechips.rocketchip.system.DefaultRV32Config.fir@136860.4]
  wire  _T_774; // @[Misc.scala 181:61:freechips.rocketchip.system.DefaultRV32Config.fir@136861.4]
  wire  _T_775; // @[Misc.scala 181:49:freechips.rocketchip.system.DefaultRV32Config.fir@136862.4]
  wire  _T_776; // @[Misc.scala 181:16:freechips.rocketchip.system.DefaultRV32Config.fir@136863.4]
  wire  _T_777; // @[Misc.scala 181:37:freechips.rocketchip.system.DefaultRV32Config.fir@136864.4]
  wire  _T_778; // @[Misc.scala 181:61:freechips.rocketchip.system.DefaultRV32Config.fir@136865.4]
  wire  _T_779; // @[Misc.scala 181:49:freechips.rocketchip.system.DefaultRV32Config.fir@136866.4]
  wire  _T_780; // @[Misc.scala 181:16:freechips.rocketchip.system.DefaultRV32Config.fir@136867.4]
  wire  _T_781; // @[Misc.scala 181:37:freechips.rocketchip.system.DefaultRV32Config.fir@136868.4]
  wire  _T_782; // @[Misc.scala 181:61:freechips.rocketchip.system.DefaultRV32Config.fir@136869.4]
  wire  _T_783; // @[Misc.scala 181:49:freechips.rocketchip.system.DefaultRV32Config.fir@136870.4]
  wire [13:0] _T_784; // @[Misc.scala 180:39:freechips.rocketchip.system.DefaultRV32Config.fir@136871.4]
  wire [6:0] _T_785; // @[Misc.scala 179:37:freechips.rocketchip.system.DefaultRV32Config.fir@136872.4]
  wire [2:0] _T_786; // @[Misc.scala 179:37:freechips.rocketchip.system.DefaultRV32Config.fir@136873.4]
  wire  _T_787; // @[Misc.scala 179:37:freechips.rocketchip.system.DefaultRV32Config.fir@136874.4]
  wire [1:0] _T_789; // @[Misc.scala 180:39:freechips.rocketchip.system.DefaultRV32Config.fir@136876.4]
  wire  _T_790; // @[Misc.scala 179:37:freechips.rocketchip.system.DefaultRV32Config.fir@136877.4]
  wire  _T_792; // @[Misc.scala 180:39:freechips.rocketchip.system.DefaultRV32Config.fir@136879.4]
  wire  _T_794; // @[Misc.scala 181:16:freechips.rocketchip.system.DefaultRV32Config.fir@136881.4]
  wire  _T_796; // @[Misc.scala 181:61:freechips.rocketchip.system.DefaultRV32Config.fir@136883.4]
  wire  _T_798; // @[Misc.scala 181:16:freechips.rocketchip.system.DefaultRV32Config.fir@136885.4]
  wire  _T_800; // @[Misc.scala 181:61:freechips.rocketchip.system.DefaultRV32Config.fir@136887.4]
  wire  _T_801; // @[Misc.scala 181:49:freechips.rocketchip.system.DefaultRV32Config.fir@136888.4]
  wire [3:0] _T_802; // @[Misc.scala 180:39:freechips.rocketchip.system.DefaultRV32Config.fir@136889.4]
  wire [1:0] _T_803; // @[Misc.scala 179:37:freechips.rocketchip.system.DefaultRV32Config.fir@136890.4]
  wire  _T_804; // @[Misc.scala 179:37:freechips.rocketchip.system.DefaultRV32Config.fir@136891.4]
  wire  _T_806; // @[Misc.scala 180:39:freechips.rocketchip.system.DefaultRV32Config.fir@136893.4]
  wire  _T_808; // @[Misc.scala 181:16:freechips.rocketchip.system.DefaultRV32Config.fir@136895.4]
  wire  _T_810; // @[Misc.scala 181:61:freechips.rocketchip.system.DefaultRV32Config.fir@136897.4]
  wire [1:0] _T_812; // @[Misc.scala 180:39:freechips.rocketchip.system.DefaultRV32Config.fir@136899.4]
  wire  _T_813; // @[Misc.scala 179:37:freechips.rocketchip.system.DefaultRV32Config.fir@136900.4]
  wire  _T_815; // @[Misc.scala 180:39:freechips.rocketchip.system.DefaultRV32Config.fir@136902.4]
  wire  _T_817; // @[Misc.scala 181:16:freechips.rocketchip.system.DefaultRV32Config.fir@136904.4]
  wire  _T_819; // @[Misc.scala 181:61:freechips.rocketchip.system.DefaultRV32Config.fir@136906.4]
  wire  _T_821; // @[Misc.scala 181:16:freechips.rocketchip.system.DefaultRV32Config.fir@136908.4]
  wire  _T_822; // @[Misc.scala 181:37:freechips.rocketchip.system.DefaultRV32Config.fir@136909.4]
  wire  _T_823; // @[Misc.scala 181:61:freechips.rocketchip.system.DefaultRV32Config.fir@136910.4]
  wire  _T_824; // @[Misc.scala 181:49:freechips.rocketchip.system.DefaultRV32Config.fir@136911.4]
  wire  _T_825; // @[Misc.scala 181:16:freechips.rocketchip.system.DefaultRV32Config.fir@136912.4]
  wire  _T_826; // @[Misc.scala 181:37:freechips.rocketchip.system.DefaultRV32Config.fir@136913.4]
  wire  _T_827; // @[Misc.scala 181:61:freechips.rocketchip.system.DefaultRV32Config.fir@136914.4]
  wire  _T_828; // @[Misc.scala 181:49:freechips.rocketchip.system.DefaultRV32Config.fir@136915.4]
  wire [6:0] _T_829; // @[Misc.scala 180:39:freechips.rocketchip.system.DefaultRV32Config.fir@136916.4]
  wire [2:0] _T_830; // @[Misc.scala 179:37:freechips.rocketchip.system.DefaultRV32Config.fir@136917.4]
  wire  _T_831; // @[Misc.scala 179:37:freechips.rocketchip.system.DefaultRV32Config.fir@136918.4]
  wire [1:0] _T_833; // @[Misc.scala 180:39:freechips.rocketchip.system.DefaultRV32Config.fir@136920.4]
  wire  _T_834; // @[Misc.scala 179:37:freechips.rocketchip.system.DefaultRV32Config.fir@136921.4]
  wire  _T_836; // @[Misc.scala 180:39:freechips.rocketchip.system.DefaultRV32Config.fir@136923.4]
  wire  _T_838; // @[Misc.scala 181:16:freechips.rocketchip.system.DefaultRV32Config.fir@136925.4]
  wire  _T_840; // @[Misc.scala 181:61:freechips.rocketchip.system.DefaultRV32Config.fir@136927.4]
  wire  _T_842; // @[Misc.scala 181:16:freechips.rocketchip.system.DefaultRV32Config.fir@136929.4]
  wire  _T_844; // @[Misc.scala 181:61:freechips.rocketchip.system.DefaultRV32Config.fir@136931.4]
  wire  _T_845; // @[Misc.scala 181:49:freechips.rocketchip.system.DefaultRV32Config.fir@136932.4]
  wire [3:0] _T_846; // @[Misc.scala 180:39:freechips.rocketchip.system.DefaultRV32Config.fir@136933.4]
  wire [1:0] _T_847; // @[Misc.scala 179:37:freechips.rocketchip.system.DefaultRV32Config.fir@136934.4]
  wire  _T_848; // @[Misc.scala 179:37:freechips.rocketchip.system.DefaultRV32Config.fir@136935.4]
  wire  _T_850; // @[Misc.scala 180:39:freechips.rocketchip.system.DefaultRV32Config.fir@136937.4]
  wire  _T_852; // @[Misc.scala 181:16:freechips.rocketchip.system.DefaultRV32Config.fir@136939.4]
  wire  _T_854; // @[Misc.scala 181:61:freechips.rocketchip.system.DefaultRV32Config.fir@136941.4]
  wire [1:0] _T_856; // @[Misc.scala 180:39:freechips.rocketchip.system.DefaultRV32Config.fir@136943.4]
  wire  _T_857; // @[Misc.scala 179:37:freechips.rocketchip.system.DefaultRV32Config.fir@136944.4]
  wire  _T_859; // @[Misc.scala 180:39:freechips.rocketchip.system.DefaultRV32Config.fir@136946.4]
  wire  _T_861; // @[Misc.scala 181:16:freechips.rocketchip.system.DefaultRV32Config.fir@136948.4]
  wire  _T_863; // @[Misc.scala 181:61:freechips.rocketchip.system.DefaultRV32Config.fir@136950.4]
  wire  _T_865; // @[Misc.scala 181:16:freechips.rocketchip.system.DefaultRV32Config.fir@136952.4]
  wire  _T_866; // @[Misc.scala 181:37:freechips.rocketchip.system.DefaultRV32Config.fir@136953.4]
  wire  _T_867; // @[Misc.scala 181:61:freechips.rocketchip.system.DefaultRV32Config.fir@136954.4]
  wire  _T_868; // @[Misc.scala 181:49:freechips.rocketchip.system.DefaultRV32Config.fir@136955.4]
  wire  _T_869; // @[Misc.scala 181:16:freechips.rocketchip.system.DefaultRV32Config.fir@136956.4]
  wire  _T_870; // @[Misc.scala 181:37:freechips.rocketchip.system.DefaultRV32Config.fir@136957.4]
  wire  _T_871; // @[Misc.scala 181:61:freechips.rocketchip.system.DefaultRV32Config.fir@136958.4]
  wire  _T_872; // @[Misc.scala 181:49:freechips.rocketchip.system.DefaultRV32Config.fir@136959.4]
  wire  _T_873; // @[Misc.scala 181:16:freechips.rocketchip.system.DefaultRV32Config.fir@136960.4]
  wire  _T_874; // @[Misc.scala 181:37:freechips.rocketchip.system.DefaultRV32Config.fir@136961.4]
  wire  _T_875; // @[Misc.scala 181:61:freechips.rocketchip.system.DefaultRV32Config.fir@136962.4]
  wire  _T_876; // @[Misc.scala 181:49:freechips.rocketchip.system.DefaultRV32Config.fir@136963.4]
  wire  _T_878; // @[Misc.scala 181:37:freechips.rocketchip.system.DefaultRV32Config.fir@136965.4]
  wire  _T_879; // @[Misc.scala 181:61:freechips.rocketchip.system.DefaultRV32Config.fir@136966.4]
  wire  _T_880; // @[Misc.scala 181:49:freechips.rocketchip.system.DefaultRV32Config.fir@136967.4]
  wire [27:0] _T_881; // @[BTB.scala 285:26:freechips.rocketchip.system.DefaultRV32Config.fir@136969.6]
  wire [27:0] _T_882; // @[BTB.scala 285:24:freechips.rocketchip.system.DefaultRV32Config.fir@136970.6]
  wire [31:0] _GEN_380; // @[BTB.scala 284:37:freechips.rocketchip.system.DefaultRV32Config.fir@136968.4]
  wire [31:0] _GEN_381; // @[BTB.scala 287:19:freechips.rocketchip.system.DefaultRV32Config.fir@136973.4]
  reg [7:0] _T_884; // @[BTB.scala 114:20:freechips.rocketchip.system.DefaultRV32Config.fir@136977.4]
  reg [31:0] _RAND_188;
  wire  _T_885; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@136978.4]
  wire  _T_886; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@136979.4]
  wire  _T_887; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@136980.4]
  wire  _T_888; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@136981.4]
  wire  _T_889; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@136982.4]
  wire  _T_890; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@136983.4]
  wire  _T_891; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@136984.4]
  wire  _T_892; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@136985.4]
  wire  _T_893; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@136986.4]
  wire  _T_894; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@136987.4]
  wire  _T_895; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@136988.4]
  wire  _T_896; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@136989.4]
  wire  _T_897; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@136990.4]
  wire  _T_898; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@136991.4]
  wire  _T_899; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@136992.4]
  wire  _T_900; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@136993.4]
  wire  _T_901; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@136994.4]
  wire  _T_902; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@136995.4]
  wire  _T_903; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@136996.4]
  wire  _T_904; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@136997.4]
  wire  _T_905; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@136998.4]
  wire  _T_906; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@136999.4]
  wire  _T_907; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@137000.4]
  wire  _T_908; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@137001.4]
  wire  _T_909; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@137002.4]
  wire  _T_910; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@137003.4]
  wire  _T_911; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@137004.4]
  wire  _T_912; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@137005.4]
  wire [6:0] _T_918; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@137011.4]
  wire [13:0] _T_925; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@137018.4]
  wire [6:0] _T_931; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@137024.4]
  wire [27:0] _T_939; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@137032.4]
  wire [27:0] _T_940; // @[BTB.scala 293:28:freechips.rocketchip.system.DefaultRV32Config.fir@137033.4]
  wire  _T_941; // @[BTB.scala 293:72:freechips.rocketchip.system.DefaultRV32Config.fir@137034.4]
  wire [29:0] _T_943; // @[BTB.scala 86:21:freechips.rocketchip.system.DefaultRV32Config.fir@137037.4]
  wire [8:0] _T_944; // @[BTB.scala 87:9:freechips.rocketchip.system.DefaultRV32Config.fir@137038.4]
  wire [20:0] _T_945; // @[BTB.scala 87:48:freechips.rocketchip.system.DefaultRV32Config.fir@137039.4]
  wire [1:0] _T_946; // @[BTB.scala 87:77:freechips.rocketchip.system.DefaultRV32Config.fir@137040.4]
  wire [8:0] _GEN_454; // @[BTB.scala 87:42:freechips.rocketchip.system.DefaultRV32Config.fir@137041.4]
  wire [8:0] _T_947; // @[BTB.scala 87:42:freechips.rocketchip.system.DefaultRV32Config.fir@137041.4]
  wire [15:0] _T_948; // @[BTB.scala 83:12:freechips.rocketchip.system.DefaultRV32Config.fir@137042.4]
  wire [2:0] _T_949; // @[BTB.scala 83:19:freechips.rocketchip.system.DefaultRV32Config.fir@137043.4]
  wire [8:0] _T_950; // @[BTB.scala 89:44:freechips.rocketchip.system.DefaultRV32Config.fir@137044.4]
  wire [6:0] _T_954; // @[BTB.scala 110:35:freechips.rocketchip.system.DefaultRV32Config.fir@137051.6]
  wire [7:0] _T_955; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@137052.6]
  wire [29:0] _T_956; // @[BTB.scala 86:21:freechips.rocketchip.system.DefaultRV32Config.fir@137057.8]
  wire [8:0] _T_957; // @[BTB.scala 87:9:freechips.rocketchip.system.DefaultRV32Config.fir@137058.8]
  wire [20:0] _T_958; // @[BTB.scala 87:48:freechips.rocketchip.system.DefaultRV32Config.fir@137059.8]
  wire [1:0] _T_959; // @[BTB.scala 87:77:freechips.rocketchip.system.DefaultRV32Config.fir@137060.8]
  wire [8:0] _GEN_455; // @[BTB.scala 87:42:freechips.rocketchip.system.DefaultRV32Config.fir@137061.8]
  wire [8:0] _T_960; // @[BTB.scala 87:42:freechips.rocketchip.system.DefaultRV32Config.fir@137061.8]
  wire [15:0] _T_961; // @[BTB.scala 83:12:freechips.rocketchip.system.DefaultRV32Config.fir@137062.8]
  wire [2:0] _T_962; // @[BTB.scala 83:19:freechips.rocketchip.system.DefaultRV32Config.fir@137063.8]
  wire [8:0] _T_963; // @[BTB.scala 89:44:freechips.rocketchip.system.DefaultRV32Config.fir@137064.8]
  wire [6:0] _T_966; // @[BTB.scala 107:37:freechips.rocketchip.system.DefaultRV32Config.fir@137069.10]
  wire [7:0] _T_967; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@137070.10]
  wire  _T_942_value; // @[BTB.scala 92:19:freechips.rocketchip.system.DefaultRV32Config.fir@137035.4 BTB.scala 93:15:freechips.rocketchip.system.DefaultRV32Config.fir@137047.4]
  wire  _T_969; // @[BTB.scala 308:11:freechips.rocketchip.system.DefaultRV32Config.fir@137080.4]
  wire  _T_970; // @[BTB.scala 308:22:freechips.rocketchip.system.DefaultRV32Config.fir@137081.4]
  reg [2:0] _T_971; // @[BTB.scala 57:26:freechips.rocketchip.system.DefaultRV32Config.fir@137086.4]
  reg [31:0] _RAND_189;
  reg [2:0] _T_972; // @[BTB.scala 58:24:freechips.rocketchip.system.DefaultRV32Config.fir@137087.4]
  reg [31:0] _RAND_190;
  reg [31:0] _T_973_0; // @[BTB.scala 59:26:freechips.rocketchip.system.DefaultRV32Config.fir@137088.4]
  reg [31:0] _RAND_191;
  reg [31:0] _T_973_1; // @[BTB.scala 59:26:freechips.rocketchip.system.DefaultRV32Config.fir@137088.4]
  reg [31:0] _RAND_192;
  reg [31:0] _T_973_2; // @[BTB.scala 59:26:freechips.rocketchip.system.DefaultRV32Config.fir@137088.4]
  reg [31:0] _RAND_193;
  reg [31:0] _T_973_3; // @[BTB.scala 59:26:freechips.rocketchip.system.DefaultRV32Config.fir@137088.4]
  reg [31:0] _RAND_194;
  reg [31:0] _T_973_4; // @[BTB.scala 59:26:freechips.rocketchip.system.DefaultRV32Config.fir@137088.4]
  reg [31:0] _RAND_195;
  reg [31:0] _T_973_5; // @[BTB.scala 59:26:freechips.rocketchip.system.DefaultRV32Config.fir@137088.4]
  reg [31:0] _RAND_196;
  wire  _T_974; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@137089.4]
  wire  _T_975; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@137090.4]
  wire  _T_976; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@137091.4]
  wire  _T_977; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@137092.4]
  wire  _T_978; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@137093.4]
  wire  _T_979; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@137094.4]
  wire  _T_980; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@137095.4]
  wire  _T_981; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@137096.4]
  wire  _T_982; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@137097.4]
  wire  _T_983; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@137098.4]
  wire  _T_984; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@137099.4]
  wire  _T_985; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@137100.4]
  wire  _T_986; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@137101.4]
  wire  _T_987; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@137102.4]
  wire  _T_988; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@137103.4]
  wire  _T_989; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@137104.4]
  wire  _T_990; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@137105.4]
  wire  _T_991; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@137106.4]
  wire  _T_992; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@137107.4]
  wire  _T_993; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@137108.4]
  wire  _T_994; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@137109.4]
  wire  _T_995; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@137110.4]
  wire  _T_996; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@137111.4]
  wire  _T_997; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@137112.4]
  wire  _T_998; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@137113.4]
  wire  _T_999; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@137114.4]
  wire  _T_1000; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@137115.4]
  wire  _T_1001; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@137116.4]
  wire [6:0] _T_1007; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@137122.4]
  wire [13:0] _T_1014; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@137129.4]
  wire [6:0] _T_1020; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@137135.4]
  wire [27:0] _T_1028; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@137143.4]
  wire [27:0] _T_1029; // @[BTB.scala 314:26:freechips.rocketchip.system.DefaultRV32Config.fir@137144.4]
  wire  _T_1030; // @[BTB.scala 314:67:freechips.rocketchip.system.DefaultRV32Config.fir@137145.4]
  wire  _T_1031; // @[BTB.scala 55:29:freechips.rocketchip.system.DefaultRV32Config.fir@137146.4]
  wire  _T_1032; // @[BTB.scala 315:26:freechips.rocketchip.system.DefaultRV32Config.fir@137147.4]
  wire [31:0] _GEN_399; // @[BTB.scala 316:22:freechips.rocketchip.system.DefaultRV32Config.fir@137149.4]
  wire [31:0] _GEN_400; // @[BTB.scala 316:22:freechips.rocketchip.system.DefaultRV32Config.fir@137149.4]
  wire [31:0] _GEN_401; // @[BTB.scala 316:22:freechips.rocketchip.system.DefaultRV32Config.fir@137149.4]
  wire [31:0] _GEN_402; // @[BTB.scala 316:22:freechips.rocketchip.system.DefaultRV32Config.fir@137149.4]
  wire [31:0] _GEN_403; // @[BTB.scala 316:22:freechips.rocketchip.system.DefaultRV32Config.fir@137149.4]
  wire  _T_1035; // @[BTB.scala 317:24:freechips.rocketchip.system.DefaultRV32Config.fir@137152.4]
  wire  _T_1036; // @[BTB.scala 321:40:freechips.rocketchip.system.DefaultRV32Config.fir@137157.6]
  wire  _T_1037; // @[BTB.scala 44:17:freechips.rocketchip.system.DefaultRV32Config.fir@137159.8]
  wire [2:0] _T_1039; // @[BTB.scala 44:42:freechips.rocketchip.system.DefaultRV32Config.fir@137162.10]
  wire  _T_1040; // @[BTB.scala 45:49:freechips.rocketchip.system.DefaultRV32Config.fir@137165.8]
  wire [2:0] _T_1043; // @[BTB.scala 45:62:freechips.rocketchip.system.DefaultRV32Config.fir@137168.8]
  wire [2:0] _T_1044; // @[BTB.scala 45:22:freechips.rocketchip.system.DefaultRV32Config.fir@137169.8]
  wire  _T_1045; // @[BTB.scala 323:46:freechips.rocketchip.system.DefaultRV32Config.fir@137174.8]
  wire [2:0] _T_1049; // @[BTB.scala 51:20:freechips.rocketchip.system.DefaultRV32Config.fir@137180.12]
  wire  _T_1050; // @[BTB.scala 52:42:freechips.rocketchip.system.DefaultRV32Config.fir@137182.12]
  wire [2:0] _T_1053; // @[BTB.scala 52:50:freechips.rocketchip.system.DefaultRV32Config.fir@137185.12]

`define MY_ASSIGNMENT
`ifdef MY_ASSIGNMENT
  assign _T = io_req_bits_addr[31:14];
  assign _T_1 = pages_0 == _T;
  assign _T_2 = pages_1 == _T;
  assign _T_3 = pages_2 == _T;
  assign _T_4 = pages_3 == _T;
  assign _T_5 = pages_4 == _T;
  assign _T_6 = pages_5 == _T;
  assign pageHit = pageValid & {_T_6,_T_5,_T_4,_T_3,_T_2,_T_1};

  assign _T_12 = io_req_bits_addr[13:1];
  assign _T_13 = idxs_0 == _T_12;
  assign _T_14 = idxs_1 == _T_12;
  assign _T_15 = idxs_2 == _T_12;
  assign _T_16 = idxs_3 == _T_12;
  assign _T_17 = idxs_4 == _T_12;
  assign _T_18 = idxs_5 == _T_12;
  assign _T_19 = idxs_6 == _T_12;
  assign _T_20 = idxs_7 == _T_12;
  assign _T_21 = idxs_8 == _T_12;
  assign _T_22 = idxs_9 == _T_12;
  assign _T_23 = idxs_10 == _T_12;
  assign _T_24 = idxs_11 == _T_12;
  assign _T_25 = idxs_12 == _T_12;
  assign _T_26 = idxs_13 == _T_12;
  assign _T_27 = idxs_14 == _T_12;
  assign _T_28 = idxs_15 == _T_12;
  assign _T_29 = idxs_16 == _T_12;
  assign _T_30 = idxs_17 == _T_12;
  assign _T_31 = idxs_18 == _T_12;
  assign _T_32 = idxs_19 == _T_12;
  assign _T_33 = idxs_20 == _T_12;
  assign _T_34 = idxs_21 == _T_12;
  assign _T_35 = idxs_22 == _T_12;
  assign _T_36 = idxs_23 == _T_12;
  assign _T_37 = idxs_24 == _T_12;
  assign _T_38 = idxs_25 == _T_12;
  assign _T_39 = idxs_26 == _T_12;
  assign _T_40 = idxs_27 == _T_12;
  assign idxHit = {_T_40,_T_39,_T_38,_T_37,_T_36,_T_35,_T_34,_T_33,_T_32,_T_31,_T_30,_T_29,_T_28,_T_27,_T_26,_T_25,_T_24,_T_23,_T_22,_T_21,_T_20,_T_19,_T_18,_T_17,_T_16,_T_15,_T_14,_T_13} & isValid;

  assign _T_68 = r_btb_updatePipe_bits_pc[31:14];
  assign _T_69 = pages_0 == _T_68;
  assign _T_70 = pages_1 == _T_68;
  assign _T_71 = pages_2 == _T_68;
  assign _T_72 = pages_3 == _T_68;
  assign _T_73 = pages_4 == _T_68;
  assign _T_74 = pages_5 == _T_68;
  assign updatePageHit = pageValid & {_T_74,_T_73,_T_72,_T_71,_T_70,_T_69};
  assign updateHit = r_btb_updatePipe_bits_prediction_entry < 5'h1c;

  assign useUpdatePageHit = updatePageHit != 6'h0;
  assign usePageHit = pageHit != 6'h0;
  assign doIdxPageRepl = useUpdatePageHit == 1'h0;

  assign _T_84 = usePageHit ? 8'h0 : (8'h1 << nextPageRepl);
  assign idxPageRepl = {{2'd0}, pageHit[4:0],pageHit[5]} | _T_84;
  assign idxPageUpdateOH = useUpdatePageHit ? {{2'd0}, updatePageHit} : idxPageRepl;
  assign _T_87 = idxPageUpdateOH[7:4] != 4'h0;
  assign _T_88 = idxPageUpdateOH[7:4] | idxPageUpdateOH[3:0];
  assign _T_91 = _T_88[3:2] != 2'h0;
  assign _T_92 = _T_88[3:2] | _T_88[1:0];
  assign idxPageUpdate = {_T_87,_T_91,_T_92[1]};
  assign idxPageReplEn = doIdxPageRepl ? idxPageRepl : 8'h0;

  assign samePage = _T_68 == _T;

  assign doTgtPageRepl = !samePage & !usePageHit;

  assign tgtPageRepl = samePage ? idxPageUpdateOH : {{2'd0}, idxPageUpdateOH[4:0],idxPageUpdateOH[5]};
  assign _T_102 = usePageHit ? 8'h0 : tgtPageRepl;
  assign _T_103 = {{2'd0}, pageHit} | _T_102;
  assign _T_106 = _T_103[7:4] != 4'h0;
  assign _T_107 = _T_103[7:4] | _T_103[3:0];
  assign _T_110 = _T_107[3:2] != 2'h0;
  assign _T_111 = _T_107[3:2] | _T_107[1:0];
  assign tgtPageUpdate = {_T_106,_T_110,_T_111[1]};
  assign tgtPageReplEn = doTgtPageRepl ? tgtPageRepl : 8'h0;

  assign _T_124 = {_T_123, 1'h0};
  assign _T_129 = _T_124[1];
  assign _T_132 = {1'h1,_T_129,4'h8};
  assign _T_135 = _T_124 >> {1'h1,_T_129};
  assign _T_137 = (_T_132[4:0] < 5'h1c) & _T_135[0];
  assign _T_139 = {1'h1,_T_129,_T_137,3'h4};
  assign _T_142 = _T_124 >> {1'h1,_T_129,_T_137};
  assign _T_144 = (_T_139[4:0] < 5'h1c) & _T_142[0];
  assign _T_146 = {1'h1,_T_129,_T_137,_T_144,2'h2};
  assign _T_149 = _T_124 >> {1'h1,_T_129,_T_137,_T_144};
  assign _T_151 = (_T_146[4:0] < 5'h1c) & _T_149[0];
  assign _T_153 = {1'h1,_T_129,_T_137,_T_144,_T_151,1'h1};
  assign _T_156 = _T_124 >> {1'h1,_T_129,_T_137,_T_144,_T_151};
  assign _T_158 = (_T_153[4:0] < 5'h1c) & _T_156[0];
  assign _T_159 = {1'h1,_T_129,_T_137,_T_144,_T_151,_T_158};
  assign waddr = updateHit ? r_btb_updatePipe_bits_prediction_entry : _T_159[4:0];

  assign _T_214 = idxPageUpdate + 3'h1;
  assign _idxPages_waddr = _T_214[2:0];

  assign _brIdx_waddr = r_btb_updatePipe_bits_br_pc[1];

  assign _T_239 = idxHit[0]; 
  assign _T_240 = idxHit[1]; 
  assign _T_241 = idxHit[2]; 
  assign _T_242 = idxHit[3]; 
  assign _T_243 = idxHit[4]; 
  assign _T_244 = idxHit[5]; 
  assign _T_245 = idxHit[6]; 
  assign _T_246 = idxHit[7]; 
  assign _T_247 = idxHit[8]; 
  assign _T_248 = idxHit[9]; 
  assign _T_249 = idxHit[10];
  assign _T_250 = idxHit[11];
  assign _T_251 = idxHit[12];
  assign _T_252 = idxHit[13];
  assign _T_253 = idxHit[14];
  assign _T_254 = idxHit[15];
  assign _T_255 = idxHit[16];
  assign _T_256 = idxHit[17];
  assign _T_257 = idxHit[18];
  assign _T_258 = idxHit[19];
  assign _T_259 = idxHit[20];
  assign _T_260 = idxHit[21];
  assign _T_261 = idxHit[22];
  assign _T_262 = idxHit[23];
  assign _T_263 = idxHit[24];
  assign _T_264 = idxHit[25];
  assign _T_265 = idxHit[26];
  assign _T_266 = idxHit[27];
  assign _T_321 = (_T_239 ? idxPages_0 : 3'h0) 
		| (_T_240 ? idxPages_1 : 3'h0)
		| (_T_241 ? idxPages_2 : 3'h0)
		| (_T_242 ? idxPages_3 : 3'h0)
		| (_T_243 ? idxPages_4 : 3'h0)
		| (_T_244 ? idxPages_5 : 3'h0)
		| (_T_245 ? idxPages_6 : 3'h0)
		| (_T_246 ? idxPages_7 : 3'h0)
		| (_T_247 ? idxPages_8 : 3'h0)
		| (_T_248 ? idxPages_9 : 3'h0)
		| (_T_249 ? idxPages_10 : 3'h0)
		| (_T_250 ? idxPages_11 : 3'h0)
		| (_T_251 ? idxPages_12 : 3'h0)
		| (_T_252 ? idxPages_13 : 3'h0)
		| (_T_253 ? idxPages_14 : 3'h0)
		| (_T_254 ? idxPages_15 : 3'h0)
		| (_T_255 ? idxPages_16 : 3'h0)
		| (_T_256 ? idxPages_17 : 3'h0)
		| (_T_257 ? idxPages_18 : 3'h0)
		| (_T_258 ? idxPages_19 : 3'h0)
		| (_T_259 ? idxPages_20 : 3'h0)
		| (_T_260 ? idxPages_21 : 3'h0)
		| (_T_261 ? idxPages_22 : 3'h0)
		| (_T_262 ? idxPages_23 : 3'h0)
		| (_T_263 ? idxPages_24 : 3'h0)
		| (_T_264 ? idxPages_25 : 3'h0)
		| (_T_265 ? idxPages_26 : 3'h0)
		| (_T_266 ? idxPages_27 : 3'h0);
  assign _T_323 = {pageHit, 1'h0} >> _T_321;
  assign io_resp_valid = _T_323[0];

  assign _T_885 = cfiType_0 == 2'h0;
  assign _T_886 = cfiType_1 == 2'h0;
  assign _T_887 = cfiType_2 == 2'h0;
  assign _T_888 = cfiType_3 == 2'h0;
  assign _T_889 = cfiType_4 == 2'h0;
  assign _T_890 = cfiType_5 == 2'h0;
  assign _T_891 = cfiType_6 == 2'h0;
  assign _T_892 = cfiType_7 == 2'h0;
  assign _T_893 = cfiType_8 == 2'h0;
  assign _T_894 = cfiType_9 == 2'h0;
  assign _T_895 = cfiType_10 == 2'h0;
  assign _T_896 = cfiType_11 == 2'h0;
  assign _T_897 = cfiType_12 == 2'h0;
  assign _T_898 = cfiType_13 == 2'h0;
  assign _T_899 = cfiType_14 == 2'h0;
  assign _T_900 = cfiType_15 == 2'h0;
  assign _T_901 = cfiType_16 == 2'h0;
  assign _T_902 = cfiType_17 == 2'h0;
  assign _T_903 = cfiType_18 == 2'h0;
  assign _T_904 = cfiType_19 == 2'h0;
  assign _T_905 = cfiType_20 == 2'h0;
  assign _T_906 = cfiType_21 == 2'h0;
  assign _T_907 = cfiType_22 == 2'h0;
  assign _T_908 = cfiType_23 == 2'h0;
  assign _T_909 = cfiType_24 == 2'h0;
  assign _T_910 = cfiType_25 == 2'h0;
  assign _T_911 = cfiType_26 == 2'h0;
  assign _T_912 = cfiType_27 == 2'h0;
  assign _T_939 = {_T_912,_T_911,_T_910,_T_909,_T_908,_T_907,_T_906,_T_905,_T_904,_T_903,_T_902,_T_901,_T_900,_T_899,_T_898,_T_897,_T_896,_T_895,_T_894,_T_893,_T_892,_T_891,_T_890,_T_889,_T_888,_T_887,_T_886,_T_885};
  assign _T_943 = io_req_bits_addr[31:2];
  assign _T_948 = 8'hdd * _T_884; 
  assign _T_883__T_952_addr = (_T_943[8:0] ^ {{7'd0}, _T_943[10:9]}) ^ {_T_948[7:5], 6'h0};
  assign _T_883__T_952_data = _T_883[_T_883__T_952_addr];
  assign io_resp_bits_taken = (!_T_883__T_952_data & ((idxHit & _T_939) != 28'h0)) ? 1'h0 : 1'h1;

  assign io_resp_bits_bridx = (_T_239 & brIdx_0)
				| (_T_240 & brIdx_1)
				| (_T_241 & brIdx_2)
				| (_T_242 & brIdx_3)
				| (_T_243 & brIdx_4)
				| (_T_244 & brIdx_5)
				| (_T_245 & brIdx_6)
				| (_T_246 & brIdx_7)
				| (_T_247 & brIdx_8)
				| (_T_248 & brIdx_9)
				| (_T_249 & brIdx_10)
				| (_T_250 & brIdx_11)
				| (_T_251 & brIdx_12)
				| (_T_252 & brIdx_13)
				| (_T_253 & brIdx_14)
				| (_T_254 & brIdx_15)
				| (_T_255 & brIdx_16)
				| (_T_256 & brIdx_17)
				| (_T_257 & brIdx_18)
				| (_T_258 & brIdx_19)
				| (_T_259 & brIdx_20)
				| (_T_260 & brIdx_21)
				| (_T_261 & brIdx_22)
				| (_T_262 & brIdx_23)
				| (_T_263 & brIdx_24)
				| (_T_264 & brIdx_25)
				| (_T_265 & brIdx_26)
				| (_T_266 & brIdx_27);

  assign _GEN_379 = 3'h5 == _T_407 ? pages_5 
		: 3'h4 == _T_407 ? pages_4 
		: 3'h3 == _T_407 ? pages_3 
		: 3'h2 == _T_407 ? pages_2 
		: 3'h1 == _T_407 ? pages_1 
		: pages_0
		;
  assign _GEN_403 = 	3'h5 == _T_972 ? _T_973_5 
			: 3'h4 == _T_972 ? _T_973_4 
			: 3'h3 == _T_972 ? _T_973_3 
			: 3'h2 == _T_972 ? _T_973_2 
			: 3'h1 == _T_972 ? _T_973_1 
			: _T_973_0
			;
  assign _T_491 = (_T_239 ? tgts_0 : 13'h0) 
		| (_T_240 ? tgts_1 : 13'h0) 
		| (_T_241 ? tgts_2 : 13'h0) 
		| (_T_242 ? tgts_3 : 13'h0) 
		| (_T_243 ? tgts_4 : 13'h0) 
		| (_T_244 ? tgts_5 : 13'h0) 
		| (_T_245 ? tgts_6 : 13'h0) 
		| (_T_246 ? tgts_7 : 13'h0) 
		| (_T_247 ? tgts_8 : 13'h0) 
		| (_T_248 ? tgts_9 : 13'h0) 
		| (_T_249 ? tgts_10 : 13'h0) 
		| (_T_250 ? tgts_11 : 13'h0) 
		| (_T_251 ? tgts_12 : 13'h0) 
		| (_T_252 ? tgts_13 : 13'h0) 
		| (_T_253 ? tgts_14 : 13'h0) 
		| (_T_254 ? tgts_15 : 13'h0) 
		| (_T_255 ? tgts_16 : 13'h0) 
		| (_T_256 ? tgts_17 : 13'h0) 
		| (_T_257 ? tgts_18 : 13'h0) 
		| (_T_258 ? tgts_19 : 13'h0) 
		| (_T_259 ? tgts_20 : 13'h0) 
		| (_T_260 ? tgts_21 : 13'h0) 
		| (_T_261 ? tgts_22 : 13'h0) 
		| (_T_262 ? tgts_23 : 13'h0) 
		| (_T_263 ? tgts_24 : 13'h0) 
		| (_T_264 ? tgts_25 : 13'h0) 
		| (_T_265 ? tgts_26 : 13'h0) 
		| (_T_266 ? tgts_27 : 13'h0);
  assign _T_974 = cfiType_0 == 2'h3;
  assign _T_975 = cfiType_1 == 2'h3;
  assign _T_976 = cfiType_2 == 2'h3;
  assign _T_977 = cfiType_3 == 2'h3;
  assign _T_978 = cfiType_4 == 2'h3;
  assign _T_979 = cfiType_5 == 2'h3;
  assign _T_980 = cfiType_6 == 2'h3;
  assign _T_981 = cfiType_7 == 2'h3;
  assign _T_982 = cfiType_8 == 2'h3;
  assign _T_983 = cfiType_9 == 2'h3;
  assign _T_984 = cfiType_10 == 2'h3;
  assign _T_985 = cfiType_11 == 2'h3;
  assign _T_986 = cfiType_12 == 2'h3;
  assign _T_987 = cfiType_13 == 2'h3;
  assign _T_988 = cfiType_14 == 2'h3;
  assign _T_989 = cfiType_15 == 2'h3;
  assign _T_990 = cfiType_16 == 2'h3;
  assign _T_991 = cfiType_17 == 2'h3;
  assign _T_992 = cfiType_18 == 2'h3;
  assign _T_993 = cfiType_19 == 2'h3;
  assign _T_994 = cfiType_20 == 2'h3;
  assign _T_995 = cfiType_21 == 2'h3;
  assign _T_996 = cfiType_22 == 2'h3;
  assign _T_997 = cfiType_23 == 2'h3;
  assign _T_998 = cfiType_24 == 2'h3;
  assign _T_999 = cfiType_25 == 2'h3;
  assign _T_1000 = cfiType_26 == 2'h3;
  assign _T_1001 = cfiType_27 == 2'h3;
  assign _T_1028 = {_T_1001,_T_1000,_T_999,_T_998,_T_997,_T_996,_T_995,_T_994,_T_993,_T_992,_T_991,_T_990,_T_989,_T_988,_T_987,_T_986,_T_985,_T_984,_T_983,_T_982,_T_981,_T_980,_T_979,_T_978,_T_977,_T_976,_T_975,_T_974};
  assign _T_1032 = (_T_971 == 3'h0) == 1'h0;
  assign io_resp_bits_target = (_T_1032 & ((idxHit & _T_1028) != 28'h0)) ? _GEN_403 : {_GEN_379,_T_491, 1'h0};

  assign _T_497 = idxHit[27:16] != 12'h0;
  assign _T_498 = {{4'd0}, idxHit[27:16]} | idxHit[15:0];
  assign _T_501 = _T_498[15:8] != 8'h0;
  assign _T_502 = _T_498[15:8] | _T_498[7:0];
  assign _T_505 = _T_502[7:4] != 4'h0;
  assign _T_506 = _T_502[7:4] | _T_502[3:0];
  assign _T_509 = _T_506[3:2] != 2'h0;
  assign _T_510 = _T_506[3:2] | _T_506[1:0];
  assign io_resp_bits_entry = {_T_497,_T_501,_T_505,_T_509,_T_510[1]};

  assign io_resp_bits_bht_history = _T_884;

  assign io_resp_bits_bht_value = _T_883__T_952_data;

  assign io_ras_head_valid = (_T_971 == 3'h0) == 1'h0;

  assign io_ras_head_bits = 3'h5 == _T_972 ? _T_973_5 
			: 3'h4 == _T_972 ? _T_973_4 
			: 3'h3 == _T_972 ? _T_973_3 
			: 3'h2 == _T_972 ? _T_973_2 
			: 3'h1 == _T_972 ? _T_973_1 
			: _T_973_0;

always @(posedge clock) begin
	if(_T_883__T_965_en & _T_883__T_965_mask) begin
		_T_883[_T_883__T_965_addr] <= _T_883__T_965_data;
	end
end

  assign _T_212 = r_btb_updatePipe_bits_pc[13:1]; 
always @(posedge clock) begin
	if (r_btb_updatePipe_valid) begin
		if (5'h0 == waddr) begin
		  	idxs_0 <= _T_212;
			idxPages_0 <= _idxPages_waddr;
			tgts_0 <= _T_12;
			tgtPages_0 <= tgtPageUpdate;
			cfiType_0 <= r_btb_updatePipe_bits_cfiType;
			brIdx_0 <= _brIdx_waddr;
		end
		if (5'h1 == waddr) begin
		  	idxs_1 <= _T_212;
			idxPages_1 <= _idxPages_waddr;
			tgts_1 <= _T_12;
			tgtPages_1 <= tgtPageUpdate;
			cfiType_1 <= r_btb_updatePipe_bits_cfiType;
			brIdx_1 <= _brIdx_waddr;
		end
		if (5'h2 == waddr) begin
		  	idxs_2 <= _T_212;
			idxPages_2 <= _idxPages_waddr;
			tgts_2 <= _T_12;
			tgtPages_2 <= tgtPageUpdate;
			cfiType_2 <= r_btb_updatePipe_bits_cfiType;
			brIdx_2 <= _brIdx_waddr;
		end
		if (5'h3 == waddr) begin
		  	idxs_3 <= _T_212;
			idxPages_3 <= _idxPages_waddr;
			tgts_3 <= _T_12;
			tgtPages_3 <= tgtPageUpdate;
			cfiType_3 <= r_btb_updatePipe_bits_cfiType;
			brIdx_3 <= _brIdx_waddr;
		end
		if (5'h4 == waddr) begin
		  	idxs_4 <= _T_212;
			idxPages_4 <= _idxPages_waddr;
			tgts_4 <= _T_12;
			tgtPages_4 <= tgtPageUpdate;
			cfiType_4 <= r_btb_updatePipe_bits_cfiType;
			brIdx_4 <= _brIdx_waddr;
		end
		if (5'h5 == waddr) begin
		  	idxs_5 <= _T_212;
			idxPages_5 <= _idxPages_waddr;
			tgts_5 <= _T_12;
			tgtPages_5 <= tgtPageUpdate;
			cfiType_5 <= r_btb_updatePipe_bits_cfiType;
			brIdx_5 <= _brIdx_waddr;
		end
		if (5'h6 == waddr) begin
		  	idxs_6 <= _T_212;
			idxPages_6 <= _idxPages_waddr;
			tgts_6 <= _T_12;
			tgtPages_6 <= tgtPageUpdate;
			cfiType_6 <= r_btb_updatePipe_bits_cfiType;
			brIdx_6 <= _brIdx_waddr;
		end
		if (5'h7 == waddr) begin
		  	idxs_7 <= _T_212;
			idxPages_7 <= _idxPages_waddr;
			tgts_7 <= _T_12;
			tgtPages_7 <= tgtPageUpdate;
			cfiType_7 <= r_btb_updatePipe_bits_cfiType;
			brIdx_7 <= _brIdx_waddr;
		end
		if (5'h8 == waddr) begin
		  	idxs_8 <= _T_212;
			idxPages_8 <= _idxPages_waddr;
			tgts_8 <= _T_12;
			tgtPages_8 <= tgtPageUpdate;
			cfiType_8 <= r_btb_updatePipe_bits_cfiType;
			brIdx_8 <= _brIdx_waddr;
		end
		if (5'h9 == waddr) begin
		  	idxs_9 <= _T_212;
			idxPages_9 <= _idxPages_waddr;
			tgts_9 <= _T_12;
			tgtPages_9 <= tgtPageUpdate;
			cfiType_9 <= r_btb_updatePipe_bits_cfiType;
			brIdx_9 <= _brIdx_waddr;
		end
		if (5'ha == waddr) begin
		  	idxs_10 <= _T_212;
			idxPages_10 <= _idxPages_waddr;
			tgts_10 <= _T_12;
			tgtPages_10 <= tgtPageUpdate;
			cfiType_10 <= r_btb_updatePipe_bits_cfiType;
			brIdx_10 <= _brIdx_waddr;
		end
		if (5'hb == waddr) begin
		  	idxs_11 <= _T_212;
			idxPages_11 <= _idxPages_waddr;
			tgts_11 <= _T_12;
			tgtPages_11 <= tgtPageUpdate;
			cfiType_11 <= r_btb_updatePipe_bits_cfiType;
			brIdx_11 <= _brIdx_waddr;
		end
		if (5'hc == waddr) begin
		  	idxs_12 <= _T_212;
			idxPages_12 <= _idxPages_waddr;
			tgts_12 <= _T_12;
			tgtPages_12 <= tgtPageUpdate;
			cfiType_12 <= r_btb_updatePipe_bits_cfiType;
			brIdx_12 <= _brIdx_waddr;
		end
		if (5'hd == waddr) begin
		  	idxs_13 <= _T_212;
			idxPages_13 <= _idxPages_waddr;
			tgts_13 <= _T_12;
			tgtPages_13 <= tgtPageUpdate;
			cfiType_13 <= r_btb_updatePipe_bits_cfiType;
			brIdx_13 <= _brIdx_waddr;
		end
		if (5'he == waddr) begin
		  	idxs_14 <= _T_212;
			idxPages_14 <= _idxPages_waddr;
			tgts_14 <= _T_12;
			tgtPages_14 <= tgtPageUpdate;
			cfiType_14 <= r_btb_updatePipe_bits_cfiType;
			brIdx_14 <= _brIdx_waddr;
		end
		if (5'hf == waddr) begin
		  	idxs_15 <= _T_212;
			idxPages_15 <= _idxPages_waddr;
			tgts_15 <= _T_12;
			tgtPages_15 <= tgtPageUpdate;
			cfiType_15 <= r_btb_updatePipe_bits_cfiType;
			brIdx_15 <= _brIdx_waddr;
		end
		if (5'h10 == waddr) begin
		  	idxs_16 <= _T_212;
			idxPages_16 <= _idxPages_waddr;
			tgts_16 <= _T_12;
			tgtPages_16 <= tgtPageUpdate;
			cfiType_16 <= r_btb_updatePipe_bits_cfiType;
			brIdx_16 <= _brIdx_waddr;
		end
		if (5'h11 == waddr) begin
		  	idxs_17 <= _T_212;
			idxPages_17 <= _idxPages_waddr;
			tgts_17 <= _T_12;
			tgtPages_17 <= tgtPageUpdate;
			cfiType_17 <= r_btb_updatePipe_bits_cfiType;
			brIdx_17 <= _brIdx_waddr;
		end
		if (5'h12 == waddr) begin
		  	idxs_18 <= _T_212;
			idxPages_18 <= _idxPages_waddr;
			tgts_18 <= _T_12;
			tgtPages_18 <= tgtPageUpdate;
			cfiType_18 <= r_btb_updatePipe_bits_cfiType;
			brIdx_18 <= _brIdx_waddr;
		end
		if (5'h13 == waddr) begin
		  	idxs_19 <= _T_212;
			idxPages_19 <= _idxPages_waddr;
			tgts_19 <= _T_12;
			tgtPages_19 <= tgtPageUpdate;
			cfiType_19 <= r_btb_updatePipe_bits_cfiType;
			brIdx_19 <= _brIdx_waddr;
		end
		if (5'h14 == waddr) begin
		  	idxs_20 <= _T_212;
			idxPages_20 <= _idxPages_waddr;
			tgts_20 <= _T_12;
			tgtPages_20 <= tgtPageUpdate;
			cfiType_20 <= r_btb_updatePipe_bits_cfiType;
			brIdx_20 <= _brIdx_waddr;
		end
		if (5'h15 == waddr) begin
		  	idxs_21 <= _T_212;
			idxPages_21 <= _idxPages_waddr;
			tgts_21 <= _T_12;
			tgtPages_21 <= tgtPageUpdate;
			cfiType_21 <= r_btb_updatePipe_bits_cfiType;
			brIdx_20 <= _brIdx_waddr;
		end
		if (5'h16 == waddr) begin
		  	idxs_22 <= _T_212;
			idxPages_22 <= _idxPages_waddr;
			tgts_22 <= _T_12;
			tgtPages_22 <= tgtPageUpdate;
			cfiType_22 <= r_btb_updatePipe_bits_cfiType;
			brIdx_22 <= _brIdx_waddr;
		end
		if (5'h17 == waddr) begin
		  	idxs_23 <= _T_212;
			idxPages_23 <= _idxPages_waddr;
			tgts_23 <= _T_12;
			tgtPages_23 <= tgtPageUpdate;
			cfiType_23 <= r_btb_updatePipe_bits_cfiType;
			brIdx_23 <= _brIdx_waddr;
		end
		if (5'h18 == waddr) begin
		  	idxs_24 <= _T_212;
			idxPages_24 <= _idxPages_waddr;
			tgts_24 <= _T_12;
			tgtPages_24 <= tgtPageUpdate;
			cfiType_24 <= r_btb_updatePipe_bits_cfiType;
			brIdx_24 <= _brIdx_waddr;
		end
		if (5'h19 == waddr) begin
		  	idxs_25 <= _T_212;
			idxPages_25 <= _idxPages_waddr;
			tgts_25 <= _T_12;
			tgtPages_25 <= tgtPageUpdate;
			cfiType_25 <= r_btb_updatePipe_bits_cfiType;
			brIdx_25 <= _brIdx_waddr;
		end
		if (5'h1a == waddr) begin
		  	idxs_26 <= _T_212;
			idxPages_26 <= _idxPages_waddr;
			tgts_26 <= _T_12;
			tgtPages_26 <= tgtPageUpdate;
			cfiType_26 <= r_btb_updatePipe_bits_cfiType;
			brIdx_26 <= _brIdx_waddr;
		end
		if (5'h1b == waddr) begin
		  	idxs_27 <= _T_212;
			idxPages_27 <= _idxPages_waddr;
			tgts_27 <= _T_12;
			tgtPages_27 <= tgtPageUpdate;
			cfiType_27 <= r_btb_updatePipe_bits_cfiType;
			brIdx_27 <= _brIdx_waddr;
		end
	end
end

  assign _T_221 = idxPageUpdate[0] == 1'h0; 
  assign _T_222 = _T_221 ? idxPageReplEn : tgtPageReplEn;
  assign _T_229 = _T_221 ? tgtPageReplEn : idxPageReplEn;
always @(posedge clock) begin
    if (r_btb_updatePipe_valid) begin
      if (_T_222[0]) begin
        if (_T_221) begin
          pages_0 <= _T_68;
        end else begin
          pages_0 <= _T;
        end
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (_T_229[1]) begin
        if (_T_221) begin
          pages_1 <= _T;
        end else begin
          pages_1 <= _T_68;
        end
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (_T_222[2]) begin
        if (_T_221) begin
          pages_2 <= _T_68;
        end else begin
          pages_2 <= _T;
        end
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (_T_229[3]) begin
        if (_T_221) begin
          pages_3 <= _T;
        end else begin
          pages_3 <= _T_68;
        end
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (_T_222[4]) begin
        if (_T_221) begin
          pages_4 <= _T_68;
        end else begin
          pages_4 <= _T;
        end
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (_T_229[5]) begin
        if (_T_221) begin
          pages_5 <= _T;
        end else begin
          pages_5 <= _T_68;
        end
      end
    end
end

  assign _T_211 = 32'h1 << waddr;
  assign _T_218 = r_btb_updatePipe_bits_isValid ? (({{4'd0}, isValid}) | _T_211) : ({{4'd0}, isValid} & (~ _T_211));
  assign _GEN_373 = r_btb_updatePipe_valid ? ({{2'd0}, pageValid} | tgtPageReplEn | idxPageReplEn) : {{2'd0}, pageValid};
  assign _T_880 = (idxHit[1] & idxHit[2])		// TODO: Verify again 
		| (idxHit[0] & ( idxHit[1] | idxHit[2])) 
		| (idxHit[3] & idxHit[4]) 
		| (idxHit[5] & idxHit[6]) 
		| ((idxHit[3] | idxHit[4]) & (idxHit[5] | idxHit[6])) 
		| ((idxHit[0] | idxHit[1] | idxHit[2]) & (idxHit[3] | idxHit[4] | idxHit[5] | idxHit[6])) 
		| (idxHit[8] & idxHit[9]) 
		| (idxHit[7] & (idxHit[8] | idxHit[9])) 
		| (idxHit[10] & idxHit[11]) 
		| (idxHit[12] & idxHit[13]) 
		| ((idxHit[10] | idxHit[11]) & (idxHit[12] | idxHit[13])) 
		| ((idxHit[7] | idxHit[8] | idxHit[9]) & (idxHit[10] | idxHit[11] | idxHit[12] | idxHit[13])) 
		| ((idxHit[0] | idxHit[1] | idxHit[2] | idxHit[3] | idxHit[4] | idxHit[5] | idxHit[6]) & (idxHit[7] | idxHit[8] | idxHit[9] | idxHit[10] | idxHit[11] | idxHit[12] | idxHit[13])) 
		| (idxHit[15] & idxHit[16]) 
		| (idxHit[14] & (idxHit[15] | idxHit[16])) 
		| (idxHit[17] & idxHit[18]) 
		| (idxHit[19] & idxHit[20]) 
		| ((idxHit[17] | idxHit[18]) & (idxHit[19] | idxHit[20])) 
		| ((idxHit[14] | (idxHit[15] | idxHit[16])) & (idxHit[17] | idxHit[18] | idxHit[19] | idxHit[20])) 
		| (idxHit[22] & idxHit[23]) 
		| (idxHit[21] & (idxHit[22] | idxHit[23])) 
		| (idxHit[24] & idxHit[25]) 
		| (idxHit[26] & idxHit[27]) 
		| ((idxHit[24] | idxHit[25]) & (idxHit[26] | idxHit[27])) 
		| ((idxHit[21] | idxHit[22] | idxHit[23]) & (idxHit[24] | idxHit[25] | idxHit[26] | idxHit[27])) 
		| ((idxHit[14] | idxHit[15] | idxHit[16] | idxHit[17] | idxHit[18] | idxHit[19] | idxHit[20]) & (idxHit[21] | idxHit[22] | idxHit[23] | idxHit[24] | idxHit[25] | idxHit[26] | idxHit[27])) 
		| ((idxHit[0] | idxHit[1] | idxHit[2] | idxHit[3] | idxHit[4] | idxHit[5] | idxHit[6] | idxHit[7] | idxHit[8] | idxHit[9] | idxHit[10] | idxHit[11] | idxHit[12] | idxHit[13]) & (idxHit[14] | idxHit[15] | idxHit[16] | idxHit[17] | idxHit[18] | idxHit[19] | idxHit[20] | idxHit[21] | idxHit[22] | idxHit[23] | idxHit[24] | idxHit[25] | idxHit[26] | idxHit[27]));
  assign _T_882 = isValid & (~ idxHit);
  assign _GEN_381 = io_flush ? 32'h0 
		: _T_880 ? {{4'd0}, _T_882} 
		: r_btb_updatePipe_valid ? _T_218 
		: {{4'd0}, isValid};
always @(posedge clock) begin
	if (reset) begin
	  	pageValid <= 6'h0;
		isValid <= 28'h0;
	end else begin
	  	pageValid <= _GEN_373[5:0];
		isValid <= _GEN_381[27:0];
	end
end

always @(posedge clock) begin
	if (reset) begin
		r_btb_updatePipe_valid <= 1'h0;
	end else begin
		r_btb_updatePipe_valid <= io_btb_update_valid;
	end
end

always @(posedge clock) begin
	if (io_btb_update_valid) begin
		r_btb_updatePipe_bits_prediction_entry <= io_btb_update_bits_prediction_entry;
		r_btb_updatePipe_bits_pc <= io_btb_update_bits_pc;
		r_btb_updatePipe_bits_isValid <= io_btb_update_bits_isValid;
		r_btb_updatePipe_bits_br_pc <= io_btb_update_bits_br_pc;
		r_btb_updatePipe_bits_cfiType <= io_btb_update_bits_cfiType;
	end
end

  assign _T_117 = (doIdxPageRepl & doTgtPageRepl) ? 2'h2 : 2'h1;
  assign _T_119 = nextPageRepl + {{1'd0}, _T_117};
always @(posedge clock) begin
	if (r_btb_updatePipe_valid & (doIdxPageRepl | doTgtPageRepl)) begin
		if (_T_119 >= 3'h6) begin
			nextPageRepl <= {{2'd0}, _T_119[0]};
		end else begin
			nextPageRepl <= _T_119;
		end
	end
end

  assign _T_163 = r_btb_updatePipe_valid ? waddr : r_respPipe_bits_entry; 
  assign _T_172 = !_T_163[4] ? (_T_124 | 28'h2) : (~ ((~ _T_124) | 28'h2));
  assign _T_176 = 4'h1 << {1'h1,_T_163[4]};
  assign _T_181 = !_T_163[3] ? (_T_172 | {{24'd0}, _T_176}) : (~ ((~ _T_172) | {{24'd0}, _T_176}));
  assign _T_185 = 8'h1 << ({1'h1,_T_163[4],_T_163[3]});
  assign _T_190 = !_T_163[2] ? (_T_181 | {{20'd0}, _T_185}) : (~ ((~ _T_181) | {{20'd0}, _T_185}));
  assign _T_194 = 16'h1 << {1'h1,_T_163[4],_T_163[3],_T_163[2]};
  assign _T_199 = !_T_163[1] ? (_T_190 | {{12'd0}, _T_194}) : ( ~ ((~ _T_190) | {{12'd0}, _T_194}));
  assign _T_203 = 32'h1 << {1'h1,_T_163[4],_T_163[3],_T_163[2],_T_163[1]};
  assign _T_208 = !_T_163[0] ? ({{4'd0}, _T_199} | _T_203) : (~ ({{4'd0}, (~ _T_199)} | _T_203));
always @(posedge clock) begin
	if ((r_respPipe_valid & r_respPipe_bits_taken) | r_btb_updatePipe_valid) begin
		_T_123 <= _T_208[27:1];
	end
end

always @(posedge clock) begin
	if (reset) begin
		r_respPipe_valid <= 1'h0;
	end else begin
		r_respPipe_valid <= io_resp_valid;
	end
end

always @(posedge clock) begin
	if (io_resp_valid) begin
		r_respPipe_bits_taken <= io_resp_bits_taken;
		r_respPipe_bits_entry <= io_resp_bits_entry;
	end
end

always @(posedge clock) begin
	if (io_bht_update_valid) begin
		if (io_bht_update_bits_branch) begin
			if (io_bht_update_bits_mispredict) begin
				_T_884 <= {io_bht_update_bits_taken,io_bht_update_bits_prediction_history[7:1]};
			end else begin
				if (io_bht_advance_valid) begin
					_T_884 <= {io_bht_advance_bits_bht_value,_T_884[7:1]};
				end
			end
		end else begin
			if (io_bht_update_bits_mispredict) begin
				_T_884 <= io_bht_update_bits_prediction_history;
			end else begin
				if (io_bht_advance_valid) begin
					_T_884 <= {io_bht_advance_bits_bht_value,_T_884[7:1]};
				end
			end
		end
	end else begin
		if (io_bht_advance_valid) begin
			_T_884 <= {io_bht_advance_bits_bht_value,_T_884[7:1]};
		end
	end
end

  assign _T_1036 = io_ras_update_bits_cfiType == 2'h2;
  assign _T_1045 = io_ras_update_bits_cfiType == 2'h3;
always @(posedge clock) begin
	if (io_ras_update_valid) begin
		if (_T_1036) begin
			if (_T_971 < 3'h6) begin
				_T_971 <= _T_971 + 3'h1;
			end
		end else begin
			if (_T_1045) begin
				if (_T_1032) begin
					_T_971 <= _T_971 - 3'h1;
				end
			end
		end
	end
end

  assign _T_1040 = _T_972 < 3'h5;
always @(posedge clock) begin
	if (io_ras_update_valid) begin
		if (_T_1036) begin
			if (_T_1040) begin
				_T_972 <= _T_972 + 3'h1;
			end else begin
				_T_972 <= 3'h0;
			end
		end else begin
			if (_T_1045) begin
				if (_T_1032) begin
					if (_T_972 > 3'h0) begin
						_T_972 <= _T_972 - 3'h1;
					end else begin
						_T_972 <= 3'h5;
					end
				end
			end
		end
	end
end

  assign _T_1044 = _T_1040 ? (_T_972 + 3'h1) : 3'h0;
always @(posedge clock) begin
    if (io_ras_update_valid) begin
      if (_T_1036) begin
        if (3'h0 == _T_1044) begin
          _T_973_0 <= io_ras_update_bits_returnAddr;
        end
        if (3'h1 == _T_1044) begin
          _T_973_1 <= io_ras_update_bits_returnAddr;
        end
        if (3'h2 == _T_1044) begin
          _T_973_2 <= io_ras_update_bits_returnAddr;
        end
        if (3'h3 == _T_1044) begin
          _T_973_3 <= io_ras_update_bits_returnAddr;
        end
        if (3'h4 == _T_1044) begin
          _T_973_4 <= io_ras_update_bits_returnAddr;
        end
        if (3'h5 == _T_1044) begin
          _T_973_5 <= io_ras_update_bits_returnAddr;
        end
      end
    end
end

`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  _RAND_0 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 512; initvar = initvar+1)
    _T_883[initvar] = _RAND_0[0:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  idxs_0 = _RAND_1[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  idxs_1 = _RAND_2[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  idxs_2 = _RAND_3[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  idxs_3 = _RAND_4[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  idxs_4 = _RAND_5[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  idxs_5 = _RAND_6[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  idxs_6 = _RAND_7[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  idxs_7 = _RAND_8[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  idxs_8 = _RAND_9[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  idxs_9 = _RAND_10[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  idxs_10 = _RAND_11[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  idxs_11 = _RAND_12[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  idxs_12 = _RAND_13[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  idxs_13 = _RAND_14[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  idxs_14 = _RAND_15[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  idxs_15 = _RAND_16[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  idxs_16 = _RAND_17[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  idxs_17 = _RAND_18[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  idxs_18 = _RAND_19[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  idxs_19 = _RAND_20[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  idxs_20 = _RAND_21[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  idxs_21 = _RAND_22[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  idxs_22 = _RAND_23[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  idxs_23 = _RAND_24[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  idxs_24 = _RAND_25[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  idxs_25 = _RAND_26[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  idxs_26 = _RAND_27[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  idxs_27 = _RAND_28[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  idxPages_0 = _RAND_29[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{`RANDOM}};
  idxPages_1 = _RAND_30[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{`RANDOM}};
  idxPages_2 = _RAND_31[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{`RANDOM}};
  idxPages_3 = _RAND_32[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{`RANDOM}};
  idxPages_4 = _RAND_33[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{`RANDOM}};
  idxPages_5 = _RAND_34[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{`RANDOM}};
  idxPages_6 = _RAND_35[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{`RANDOM}};
  idxPages_7 = _RAND_36[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{`RANDOM}};
  idxPages_8 = _RAND_37[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{`RANDOM}};
  idxPages_9 = _RAND_38[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {1{`RANDOM}};
  idxPages_10 = _RAND_39[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{`RANDOM}};
  idxPages_11 = _RAND_40[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {1{`RANDOM}};
  idxPages_12 = _RAND_41[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {1{`RANDOM}};
  idxPages_13 = _RAND_42[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {1{`RANDOM}};
  idxPages_14 = _RAND_43[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {1{`RANDOM}};
  idxPages_15 = _RAND_44[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_45 = {1{`RANDOM}};
  idxPages_16 = _RAND_45[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_46 = {1{`RANDOM}};
  idxPages_17 = _RAND_46[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_47 = {1{`RANDOM}};
  idxPages_18 = _RAND_47[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_48 = {1{`RANDOM}};
  idxPages_19 = _RAND_48[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_49 = {1{`RANDOM}};
  idxPages_20 = _RAND_49[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_50 = {1{`RANDOM}};
  idxPages_21 = _RAND_50[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_51 = {1{`RANDOM}};
  idxPages_22 = _RAND_51[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_52 = {1{`RANDOM}};
  idxPages_23 = _RAND_52[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_53 = {1{`RANDOM}};
  idxPages_24 = _RAND_53[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_54 = {1{`RANDOM}};
  idxPages_25 = _RAND_54[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_55 = {1{`RANDOM}};
  idxPages_26 = _RAND_55[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_56 = {1{`RANDOM}};
  idxPages_27 = _RAND_56[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_57 = {1{`RANDOM}};
  tgts_0 = _RAND_57[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_58 = {1{`RANDOM}};
  tgts_1 = _RAND_58[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_59 = {1{`RANDOM}};
  tgts_2 = _RAND_59[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_60 = {1{`RANDOM}};
  tgts_3 = _RAND_60[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_61 = {1{`RANDOM}};
  tgts_4 = _RAND_61[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_62 = {1{`RANDOM}};
  tgts_5 = _RAND_62[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_63 = {1{`RANDOM}};
  tgts_6 = _RAND_63[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_64 = {1{`RANDOM}};
  tgts_7 = _RAND_64[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_65 = {1{`RANDOM}};
  tgts_8 = _RAND_65[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_66 = {1{`RANDOM}};
  tgts_9 = _RAND_66[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_67 = {1{`RANDOM}};
  tgts_10 = _RAND_67[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_68 = {1{`RANDOM}};
  tgts_11 = _RAND_68[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_69 = {1{`RANDOM}};
  tgts_12 = _RAND_69[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_70 = {1{`RANDOM}};
  tgts_13 = _RAND_70[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_71 = {1{`RANDOM}};
  tgts_14 = _RAND_71[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_72 = {1{`RANDOM}};
  tgts_15 = _RAND_72[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_73 = {1{`RANDOM}};
  tgts_16 = _RAND_73[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_74 = {1{`RANDOM}};
  tgts_17 = _RAND_74[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_75 = {1{`RANDOM}};
  tgts_18 = _RAND_75[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_76 = {1{`RANDOM}};
  tgts_19 = _RAND_76[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_77 = {1{`RANDOM}};
  tgts_20 = _RAND_77[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_78 = {1{`RANDOM}};
  tgts_21 = _RAND_78[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_79 = {1{`RANDOM}};
  tgts_22 = _RAND_79[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_80 = {1{`RANDOM}};
  tgts_23 = _RAND_80[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_81 = {1{`RANDOM}};
  tgts_24 = _RAND_81[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_82 = {1{`RANDOM}};
  tgts_25 = _RAND_82[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_83 = {1{`RANDOM}};
  tgts_26 = _RAND_83[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_84 = {1{`RANDOM}};
  tgts_27 = _RAND_84[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_85 = {1{`RANDOM}};
  tgtPages_0 = _RAND_85[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_86 = {1{`RANDOM}};
  tgtPages_1 = _RAND_86[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_87 = {1{`RANDOM}};
  tgtPages_2 = _RAND_87[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_88 = {1{`RANDOM}};
  tgtPages_3 = _RAND_88[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_89 = {1{`RANDOM}};
  tgtPages_4 = _RAND_89[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_90 = {1{`RANDOM}};
  tgtPages_5 = _RAND_90[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_91 = {1{`RANDOM}};
  tgtPages_6 = _RAND_91[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_92 = {1{`RANDOM}};
  tgtPages_7 = _RAND_92[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_93 = {1{`RANDOM}};
  tgtPages_8 = _RAND_93[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_94 = {1{`RANDOM}};
  tgtPages_9 = _RAND_94[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_95 = {1{`RANDOM}};
  tgtPages_10 = _RAND_95[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_96 = {1{`RANDOM}};
  tgtPages_11 = _RAND_96[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_97 = {1{`RANDOM}};
  tgtPages_12 = _RAND_97[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_98 = {1{`RANDOM}};
  tgtPages_13 = _RAND_98[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_99 = {1{`RANDOM}};
  tgtPages_14 = _RAND_99[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_100 = {1{`RANDOM}};
  tgtPages_15 = _RAND_100[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_101 = {1{`RANDOM}};
  tgtPages_16 = _RAND_101[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_102 = {1{`RANDOM}};
  tgtPages_17 = _RAND_102[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_103 = {1{`RANDOM}};
  tgtPages_18 = _RAND_103[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_104 = {1{`RANDOM}};
  tgtPages_19 = _RAND_104[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_105 = {1{`RANDOM}};
  tgtPages_20 = _RAND_105[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_106 = {1{`RANDOM}};
  tgtPages_21 = _RAND_106[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_107 = {1{`RANDOM}};
  tgtPages_22 = _RAND_107[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_108 = {1{`RANDOM}};
  tgtPages_23 = _RAND_108[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_109 = {1{`RANDOM}};
  tgtPages_24 = _RAND_109[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_110 = {1{`RANDOM}};
  tgtPages_25 = _RAND_110[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_111 = {1{`RANDOM}};
  tgtPages_26 = _RAND_111[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_112 = {1{`RANDOM}};
  tgtPages_27 = _RAND_112[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_113 = {1{`RANDOM}};
  pages_0 = _RAND_113[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_114 = {1{`RANDOM}};
  pages_1 = _RAND_114[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_115 = {1{`RANDOM}};
  pages_2 = _RAND_115[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_116 = {1{`RANDOM}};
  pages_3 = _RAND_116[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_117 = {1{`RANDOM}};
  pages_4 = _RAND_117[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_118 = {1{`RANDOM}};
  pages_5 = _RAND_118[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_119 = {1{`RANDOM}};
  pageValid = _RAND_119[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_120 = {1{`RANDOM}};
  isValid = _RAND_120[27:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_121 = {1{`RANDOM}};
  cfiType_0 = _RAND_121[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_122 = {1{`RANDOM}};
  cfiType_1 = _RAND_122[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_123 = {1{`RANDOM}};
  cfiType_2 = _RAND_123[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_124 = {1{`RANDOM}};
  cfiType_3 = _RAND_124[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_125 = {1{`RANDOM}};
  cfiType_4 = _RAND_125[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_126 = {1{`RANDOM}};
  cfiType_5 = _RAND_126[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_127 = {1{`RANDOM}};
  cfiType_6 = _RAND_127[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_128 = {1{`RANDOM}};
  cfiType_7 = _RAND_128[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_129 = {1{`RANDOM}};
  cfiType_8 = _RAND_129[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_130 = {1{`RANDOM}};
  cfiType_9 = _RAND_130[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_131 = {1{`RANDOM}};
  cfiType_10 = _RAND_131[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_132 = {1{`RANDOM}};
  cfiType_11 = _RAND_132[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_133 = {1{`RANDOM}};
  cfiType_12 = _RAND_133[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_134 = {1{`RANDOM}};
  cfiType_13 = _RAND_134[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_135 = {1{`RANDOM}};
  cfiType_14 = _RAND_135[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_136 = {1{`RANDOM}};
  cfiType_15 = _RAND_136[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_137 = {1{`RANDOM}};
  cfiType_16 = _RAND_137[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_138 = {1{`RANDOM}};
  cfiType_17 = _RAND_138[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_139 = {1{`RANDOM}};
  cfiType_18 = _RAND_139[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_140 = {1{`RANDOM}};
  cfiType_19 = _RAND_140[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_141 = {1{`RANDOM}};
  cfiType_20 = _RAND_141[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_142 = {1{`RANDOM}};
  cfiType_21 = _RAND_142[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_143 = {1{`RANDOM}};
  cfiType_22 = _RAND_143[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_144 = {1{`RANDOM}};
  cfiType_23 = _RAND_144[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_145 = {1{`RANDOM}};
  cfiType_24 = _RAND_145[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_146 = {1{`RANDOM}};
  cfiType_25 = _RAND_146[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_147 = {1{`RANDOM}};
  cfiType_26 = _RAND_147[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_148 = {1{`RANDOM}};
  cfiType_27 = _RAND_148[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_149 = {1{`RANDOM}};
  brIdx_0 = _RAND_149[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_150 = {1{`RANDOM}};
  brIdx_1 = _RAND_150[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_151 = {1{`RANDOM}};
  brIdx_2 = _RAND_151[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_152 = {1{`RANDOM}};
  brIdx_3 = _RAND_152[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_153 = {1{`RANDOM}};
  brIdx_4 = _RAND_153[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_154 = {1{`RANDOM}};
  brIdx_5 = _RAND_154[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_155 = {1{`RANDOM}};
  brIdx_6 = _RAND_155[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_156 = {1{`RANDOM}};
  brIdx_7 = _RAND_156[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_157 = {1{`RANDOM}};
  brIdx_8 = _RAND_157[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_158 = {1{`RANDOM}};
  brIdx_9 = _RAND_158[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_159 = {1{`RANDOM}};
  brIdx_10 = _RAND_159[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_160 = {1{`RANDOM}};
  brIdx_11 = _RAND_160[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_161 = {1{`RANDOM}};
  brIdx_12 = _RAND_161[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_162 = {1{`RANDOM}};
  brIdx_13 = _RAND_162[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_163 = {1{`RANDOM}};
  brIdx_14 = _RAND_163[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_164 = {1{`RANDOM}};
  brIdx_15 = _RAND_164[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_165 = {1{`RANDOM}};
  brIdx_16 = _RAND_165[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_166 = {1{`RANDOM}};
  brIdx_17 = _RAND_166[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_167 = {1{`RANDOM}};
  brIdx_18 = _RAND_167[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_168 = {1{`RANDOM}};
  brIdx_19 = _RAND_168[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_169 = {1{`RANDOM}};
  brIdx_20 = _RAND_169[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_170 = {1{`RANDOM}};
  brIdx_21 = _RAND_170[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_171 = {1{`RANDOM}};
  brIdx_22 = _RAND_171[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_172 = {1{`RANDOM}};
  brIdx_23 = _RAND_172[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_173 = {1{`RANDOM}};
  brIdx_24 = _RAND_173[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_174 = {1{`RANDOM}};
  brIdx_25 = _RAND_174[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_175 = {1{`RANDOM}};
  brIdx_26 = _RAND_175[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_176 = {1{`RANDOM}};
  brIdx_27 = _RAND_176[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_177 = {1{`RANDOM}};
  r_btb_updatePipe_valid = _RAND_177[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_178 = {1{`RANDOM}};
  r_btb_updatePipe_bits_prediction_entry = _RAND_178[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_179 = {1{`RANDOM}};
  r_btb_updatePipe_bits_pc = _RAND_179[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_180 = {1{`RANDOM}};
  r_btb_updatePipe_bits_isValid = _RAND_180[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_181 = {1{`RANDOM}};
  r_btb_updatePipe_bits_br_pc = _RAND_181[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_182 = {1{`RANDOM}};
  r_btb_updatePipe_bits_cfiType = _RAND_182[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_183 = {1{`RANDOM}};
  nextPageRepl = _RAND_183[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_184 = {1{`RANDOM}};
  _T_123 = _RAND_184[26:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_185 = {1{`RANDOM}};
  r_respPipe_valid = _RAND_185[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_186 = {1{`RANDOM}};
  r_respPipe_bits_taken = _RAND_186[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_187 = {1{`RANDOM}};
  r_respPipe_bits_entry = _RAND_187[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_188 = {1{`RANDOM}};
  _T_884 = _RAND_188[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_189 = {1{`RANDOM}};
  _T_971 = _RAND_189[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_190 = {1{`RANDOM}};
  _T_972 = _RAND_190[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_191 = {1{`RANDOM}};
  _T_973_0 = _RAND_191[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_192 = {1{`RANDOM}};
  _T_973_1 = _RAND_192[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_193 = {1{`RANDOM}};
  _T_973_2 = _RAND_193[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_194 = {1{`RANDOM}};
  _T_973_3 = _RAND_194[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_195 = {1{`RANDOM}};
  _T_973_4 = _RAND_195[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_196 = {1{`RANDOM}};
  _T_973_5 = _RAND_196[31:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end

`endif // MY_ASSIGNMENT

`ifndef MY_ASSIGNMENT
  assign _T = io_req_bits_addr[31:14]; // @[BTB.scala 199:39:freechips.rocketchip.system.DefaultRV32Config.fir@136006.4]
  assign _T_1 = pages_0 == _T; // @[BTB.scala 202:29:freechips.rocketchip.system.DefaultRV32Config.fir@136007.4]
  assign _T_2 = pages_1 == _T; // @[BTB.scala 202:29:freechips.rocketchip.system.DefaultRV32Config.fir@136008.4]
  assign _T_3 = pages_2 == _T; // @[BTB.scala 202:29:freechips.rocketchip.system.DefaultRV32Config.fir@136009.4]
  assign _T_4 = pages_3 == _T; // @[BTB.scala 202:29:freechips.rocketchip.system.DefaultRV32Config.fir@136010.4]
  assign _T_5 = pages_4 == _T; // @[BTB.scala 202:29:freechips.rocketchip.system.DefaultRV32Config.fir@136011.4]
  assign _T_6 = pages_5 == _T; // @[BTB.scala 202:29:freechips.rocketchip.system.DefaultRV32Config.fir@136012.4]
  assign pageHit = pageValid & _T_11; // @[BTB.scala 202:15:freechips.rocketchip.system.DefaultRV32Config.fir@136018.4]

  assign _T_12 = io_req_bits_addr[13:1]; // @[BTB.scala 205:19:freechips.rocketchip.system.DefaultRV32Config.fir@136019.4]
  assign _T_13 = idxs_0 == _T_12; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@136020.4]
  assign _T_14 = idxs_1 == _T_12; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@136021.4]
  assign _T_15 = idxs_2 == _T_12; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@136022.4]
  assign _T_16 = idxs_3 == _T_12; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@136023.4]
  assign _T_17 = idxs_4 == _T_12; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@136024.4]
  assign _T_18 = idxs_5 == _T_12; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@136025.4]
  assign _T_19 = idxs_6 == _T_12; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@136026.4]
  assign _T_20 = idxs_7 == _T_12; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@136027.4]
  assign _T_21 = idxs_8 == _T_12; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@136028.4]
  assign _T_22 = idxs_9 == _T_12; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@136029.4]
  assign _T_23 = idxs_10 == _T_12; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@136030.4]
  assign _T_24 = idxs_11 == _T_12; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@136031.4]
  assign _T_25 = idxs_12 == _T_12; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@136032.4]
  assign _T_26 = idxs_13 == _T_12; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@136033.4]
  assign _T_27 = idxs_14 == _T_12; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@136034.4]
  assign _T_28 = idxs_15 == _T_12; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@136035.4]
  assign _T_29 = idxs_16 == _T_12; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@136036.4]
  assign _T_30 = idxs_17 == _T_12; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@136037.4]
  assign _T_31 = idxs_18 == _T_12; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@136038.4]
  assign _T_32 = idxs_19 == _T_12; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@136039.4]
  assign _T_33 = idxs_20 == _T_12; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@136040.4]
  assign _T_34 = idxs_21 == _T_12; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@136041.4]
  assign _T_35 = idxs_22 == _T_12; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@136042.4]
  assign _T_36 = idxs_23 == _T_12; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@136043.4]
  assign _T_37 = idxs_24 == _T_12; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@136044.4]
  assign _T_38 = idxs_25 == _T_12; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@136045.4]
  assign _T_39 = idxs_26 == _T_12; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@136046.4]
  assign _T_40 = idxs_27 == _T_12; // @[BTB.scala 206:16:freechips.rocketchip.system.DefaultRV32Config.fir@136047.4]
  assign idxHit = _T_67 & isValid; // @[BTB.scala 206:32:freechips.rocketchip.system.DefaultRV32Config.fir@136075.4]

  assign _T_68 = r_btb_updatePipe_bits_pc[31:14]; // @[BTB.scala 199:39:freechips.rocketchip.system.DefaultRV32Config.fir@136076.4]
  assign _T_69 = pages_0 == _T_68; // @[BTB.scala 202:29:freechips.rocketchip.system.DefaultRV32Config.fir@136077.4]
  assign _T_70 = pages_1 == _T_68; // @[BTB.scala 202:29:freechips.rocketchip.system.DefaultRV32Config.fir@136078.4]
  assign _T_71 = pages_2 == _T_68; // @[BTB.scala 202:29:freechips.rocketchip.system.DefaultRV32Config.fir@136079.4]
  assign _T_72 = pages_3 == _T_68; // @[BTB.scala 202:29:freechips.rocketchip.system.DefaultRV32Config.fir@136080.4]
  assign _T_73 = pages_4 == _T_68; // @[BTB.scala 202:29:freechips.rocketchip.system.DefaultRV32Config.fir@136081.4]
  assign _T_74 = pages_5 == _T_68; // @[BTB.scala 202:29:freechips.rocketchip.system.DefaultRV32Config.fir@136082.4]
  assign updatePageHit = pageValid & _T_79; // @[BTB.scala 202:15:freechips.rocketchip.system.DefaultRV32Config.fir@136088.4]
  assign updateHit = r_btb_updatePipe_bits_prediction_entry < 5'h1c; // @[BTB.scala 220:48:freechips.rocketchip.system.DefaultRV32Config.fir@136089.4]

  assign useUpdatePageHit = updatePageHit != 6'h0; // @[BTB.scala 222:40:freechips.rocketchip.system.DefaultRV32Config.fir@136090.4]
  assign usePageHit = pageHit != 6'h0; // @[BTB.scala 223:28:freechips.rocketchip.system.DefaultRV32Config.fir@136091.4]
  assign doIdxPageRepl = useUpdatePageHit == 1'h0; // @[BTB.scala 224:23:freechips.rocketchip.system.DefaultRV32Config.fir@136092.4]

  assign _T_84 = usePageHit ? 8'h0 : _T_83; // @[BTB.scala 226:70:freechips.rocketchip.system.DefaultRV32Config.fir@136098.4]
  assign idxPageRepl = _GEN_438 | _T_84; // @[BTB.scala 226:65:freechips.rocketchip.system.DefaultRV32Config.fir@136099.4]
  assign idxPageUpdateOH = useUpdatePageHit ? {{2'd0}, updatePageHit} : idxPageRepl; // @[BTB.scala 227:28:freechips.rocketchip.system.DefaultRV32Config.fir@136100.4]
  assign _T_87 = _T_85 != 4'h0; // @[OneHot.scala 32:14:freechips.rocketchip.system.DefaultRV32Config.fir@136103.4]
  assign _T_88 = _T_85 | _T_86; // @[OneHot.scala 32:28:freechips.rocketchip.system.DefaultRV32Config.fir@136104.4]
  assign _T_91 = _T_89 != 2'h0; // @[OneHot.scala 32:14:freechips.rocketchip.system.DefaultRV32Config.fir@136107.4]
  assign _T_92 = _T_89 | _T_90; // @[OneHot.scala 32:28:freechips.rocketchip.system.DefaultRV32Config.fir@136108.4]
  assign idxPageUpdate = {_T_87,_T_91,_T_93}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@136111.4]
  assign idxPageReplEn = doIdxPageRepl ? idxPageRepl : 8'h0; // @[BTB.scala 229:26:freechips.rocketchip.system.DefaultRV32Config.fir@136112.4]
  assign samePage = _T_68 == _T; // @[BTB.scala 231:45:freechips.rocketchip.system.DefaultRV32Config.fir@136115.4]

  assign doTgtPageRepl = _T_97 & _T_98; // @[BTB.scala 232:33:freechips.rocketchip.system.DefaultRV32Config.fir@136118.4]

  assign tgtPageRepl = samePage ? idxPageUpdateOH : {{2'd0}, _T_101}; // @[BTB.scala 233:24:freechips.rocketchip.system.DefaultRV32Config.fir@136122.4]
  assign _T_102 = usePageHit ? 8'h0 : tgtPageRepl; // @[BTB.scala 234:45:freechips.rocketchip.system.DefaultRV32Config.fir@136123.4]
  assign _T_103 = _GEN_439 | _T_102; // @[BTB.scala 234:40:freechips.rocketchip.system.DefaultRV32Config.fir@136124.4]
  assign _T_106 = _T_104 != 4'h0; // @[OneHot.scala 32:14:freechips.rocketchip.system.DefaultRV32Config.fir@136127.4]
  assign _T_107 = _T_104 | _T_105; // @[OneHot.scala 32:28:freechips.rocketchip.system.DefaultRV32Config.fir@136128.4]
  assign _T_110 = _T_108 != 2'h0; // @[OneHot.scala 32:14:freechips.rocketchip.system.DefaultRV32Config.fir@136131.4]
  assign _T_111 = _T_108 | _T_109; // @[OneHot.scala 32:28:freechips.rocketchip.system.DefaultRV32Config.fir@136132.4]
  assign tgtPageUpdate = {_T_106,_T_110,_T_112}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@136135.4]
  assign tgtPageReplEn = doTgtPageRepl ? tgtPageRepl : 8'h0; // @[BTB.scala 235:26:freechips.rocketchip.system.DefaultRV32Config.fir@136136.4]

  assign _T_124 = {_T_123, 1'h0}; // @[Replacement.scala 57:31:freechips.rocketchip.system.DefaultRV32Config.fir@136150.4]
  assign _T_129 = _T_128[0]; // @[Replacement.scala 61:48:freechips.rocketchip.system.DefaultRV32Config.fir@136155.4]
  assign _T_132 = {1'h1,_T_129,4'h8}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@136158.4]
  assign _T_135 = _T_124 >> _T_131; // @[Replacement.scala 61:48:freechips.rocketchip.system.DefaultRV32Config.fir@136161.4]
  assign _T_137 = _T_134 & _T_136; // @[Replacement.scala 61:32:freechips.rocketchip.system.DefaultRV32Config.fir@136163.4]
  assign _T_139 = {1'h1,_T_129,_T_137,3'h4}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@136165.4]
  assign _T_142 = _T_124 >> _T_138; // @[Replacement.scala 61:48:freechips.rocketchip.system.DefaultRV32Config.fir@136168.4]
  assign _T_144 = _T_141 & _T_143; // @[Replacement.scala 61:32:freechips.rocketchip.system.DefaultRV32Config.fir@136170.4]
  assign _T_146 = {1'h1,_T_129,_T_137,_T_144,2'h2}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@136172.4]
  assign _T_149 = _T_124 >> _T_145; // @[Replacement.scala 61:48:freechips.rocketchip.system.DefaultRV32Config.fir@136175.4]
  assign _T_151 = _T_148 & _T_150; // @[Replacement.scala 61:32:freechips.rocketchip.system.DefaultRV32Config.fir@136177.4]
  assign _T_153 = {1'h1,_T_129,_T_137,_T_144,_T_151,1'h1}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@136179.4]
  assign _T_156 = _T_124 >> _T_152; // @[Replacement.scala 61:48:freechips.rocketchip.system.DefaultRV32Config.fir@136182.4]
  assign _T_158 = _T_155 & _T_157; // @[Replacement.scala 61:32:freechips.rocketchip.system.DefaultRV32Config.fir@136184.4]
  assign _T_159 = {1'h1,_T_129,_T_137,_T_144,_T_151,_T_158}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@136185.4]
  assign waddr = updateHit ? r_btb_updatePipe_bits_prediction_entry : _T_160; // @[BTB.scala 244:18:freechips.rocketchip.system.DefaultRV32Config.fir@136187.4]

  assign _T_214 = idxPageUpdate + 3'h1; // @[BTB.scala 254:38:freechips.rocketchip.system.DefaultRV32Config.fir@136264.6]
  assign _idxPages_waddr = _T_214[2:0]; // @[BTB.scala 254:21:freechips.rocketchip.system.DefaultRV32Config.fir@136265.6 BTB.scala 254:21:freechips.rocketchip.system.DefaultRV32Config.fir@136265.6]

  assign _brIdx_waddr = _T_219[0]; // @[BTB.scala 259:20:freechips.rocketchip.system.DefaultRV32Config.fir@136274.6 BTB.scala 259:20:freechips.rocketchip.system.DefaultRV32Config.fir@136274.6]

  assign _T_239 = idxHit[0]; // @[Mux.scala 29:36:freechips.rocketchip.system.DefaultRV32Config.fir@136314.4]
  assign _T_240 = idxHit[1]; // @[Mux.scala 29:36:freechips.rocketchip.system.DefaultRV32Config.fir@136315.4]
  assign _T_241 = idxHit[2]; // @[Mux.scala 29:36:freechips.rocketchip.system.DefaultRV32Config.fir@136316.4]
  assign _T_242 = idxHit[3]; // @[Mux.scala 29:36:freechips.rocketchip.system.DefaultRV32Config.fir@136317.4]
  assign _T_243 = idxHit[4]; // @[Mux.scala 29:36:freechips.rocketchip.system.DefaultRV32Config.fir@136318.4]
  assign _T_244 = idxHit[5]; // @[Mux.scala 29:36:freechips.rocketchip.system.DefaultRV32Config.fir@136319.4]
  assign _T_245 = idxHit[6]; // @[Mux.scala 29:36:freechips.rocketchip.system.DefaultRV32Config.fir@136320.4]
  assign _T_246 = idxHit[7]; // @[Mux.scala 29:36:freechips.rocketchip.system.DefaultRV32Config.fir@136321.4]
  assign _T_247 = idxHit[8]; // @[Mux.scala 29:36:freechips.rocketchip.system.DefaultRV32Config.fir@136322.4]
  assign _T_248 = idxHit[9]; // @[Mux.scala 29:36:freechips.rocketchip.system.DefaultRV32Config.fir@136323.4]
  assign _T_249 = idxHit[10]; // @[Mux.scala 29:36:freechips.rocketchip.system.DefaultRV32Config.fir@136324.4]
  assign _T_250 = idxHit[11]; // @[Mux.scala 29:36:freechips.rocketchip.system.DefaultRV32Config.fir@136325.4]
  assign _T_251 = idxHit[12]; // @[Mux.scala 29:36:freechips.rocketchip.system.DefaultRV32Config.fir@136326.4]
  assign _T_252 = idxHit[13]; // @[Mux.scala 29:36:freechips.rocketchip.system.DefaultRV32Config.fir@136327.4]
  assign _T_253 = idxHit[14]; // @[Mux.scala 29:36:freechips.rocketchip.system.DefaultRV32Config.fir@136328.4]
  assign _T_254 = idxHit[15]; // @[Mux.scala 29:36:freechips.rocketchip.system.DefaultRV32Config.fir@136329.4]
  assign _T_255 = idxHit[16]; // @[Mux.scala 29:36:freechips.rocketchip.system.DefaultRV32Config.fir@136330.4]
  assign _T_256 = idxHit[17]; // @[Mux.scala 29:36:freechips.rocketchip.system.DefaultRV32Config.fir@136331.4]
  assign _T_257 = idxHit[18]; // @[Mux.scala 29:36:freechips.rocketchip.system.DefaultRV32Config.fir@136332.4]
  assign _T_258 = idxHit[19]; // @[Mux.scala 29:36:freechips.rocketchip.system.DefaultRV32Config.fir@136333.4]
  assign _T_259 = idxHit[20]; // @[Mux.scala 29:36:freechips.rocketchip.system.DefaultRV32Config.fir@136334.4]
  assign _T_260 = idxHit[21]; // @[Mux.scala 29:36:freechips.rocketchip.system.DefaultRV32Config.fir@136335.4]
  assign _T_261 = idxHit[22]; // @[Mux.scala 29:36:freechips.rocketchip.system.DefaultRV32Config.fir@136336.4]
  assign _T_262 = idxHit[23]; // @[Mux.scala 29:36:freechips.rocketchip.system.DefaultRV32Config.fir@136337.4]
  assign _T_263 = idxHit[24]; // @[Mux.scala 29:36:freechips.rocketchip.system.DefaultRV32Config.fir@136338.4]
  assign _T_264 = idxHit[25]; // @[Mux.scala 29:36:freechips.rocketchip.system.DefaultRV32Config.fir@136339.4]
  assign _T_265 = idxHit[26]; // @[Mux.scala 29:36:freechips.rocketchip.system.DefaultRV32Config.fir@136340.4]
  assign _T_266 = idxHit[27]; // @[Mux.scala 29:36:freechips.rocketchip.system.DefaultRV32Config.fir@136341.4]
  assign _T_321 = _T_320 | _T_294; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136396.4]
  assign _T_323 = _T_238 >> _T_321; // @[BTB.scala 275:34:freechips.rocketchip.system.DefaultRV32Config.fir@136399.4]
  assign io_resp_valid = _T_323[0]; // @[BTB.scala 275:17:freechips.rocketchip.system.DefaultRV32Config.fir@136401.4]

  assign _T_885 = cfiType_0 == 2'h0; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@136978.4]
  assign _T_886 = cfiType_1 == 2'h0; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@136979.4]
  assign _T_887 = cfiType_2 == 2'h0; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@136980.4]
  assign _T_888 = cfiType_3 == 2'h0; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@136981.4]
  assign _T_889 = cfiType_4 == 2'h0; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@136982.4]
  assign _T_890 = cfiType_5 == 2'h0; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@136983.4]
  assign _T_891 = cfiType_6 == 2'h0; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@136984.4]
  assign _T_892 = cfiType_7 == 2'h0; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@136985.4]
  assign _T_893 = cfiType_8 == 2'h0; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@136986.4]
  assign _T_894 = cfiType_9 == 2'h0; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@136987.4]
  assign _T_895 = cfiType_10 == 2'h0; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@136988.4]
  assign _T_896 = cfiType_11 == 2'h0; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@136989.4]
  assign _T_897 = cfiType_12 == 2'h0; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@136990.4]
  assign _T_898 = cfiType_13 == 2'h0; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@136991.4]
  assign _T_899 = cfiType_14 == 2'h0; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@136992.4]
  assign _T_900 = cfiType_15 == 2'h0; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@136993.4]
  assign _T_901 = cfiType_16 == 2'h0; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@136994.4]
  assign _T_902 = cfiType_17 == 2'h0; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@136995.4]
  assign _T_903 = cfiType_18 == 2'h0; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@136996.4]
  assign _T_904 = cfiType_19 == 2'h0; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@136997.4]
  assign _T_905 = cfiType_20 == 2'h0; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@136998.4]
  assign _T_906 = cfiType_21 == 2'h0; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@136999.4]
  assign _T_907 = cfiType_22 == 2'h0; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@137000.4]
  assign _T_908 = cfiType_23 == 2'h0; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@137001.4]
  assign _T_909 = cfiType_24 == 2'h0; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@137002.4]
  assign _T_910 = cfiType_25 == 2'h0; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@137003.4]
  assign _T_911 = cfiType_26 == 2'h0; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@137004.4]
  assign _T_912 = cfiType_27 == 2'h0; // @[BTB.scala 293:44:freechips.rocketchip.system.DefaultRV32Config.fir@137005.4]
  assign _T_939 = {_T_912,_T_911,_T_910,_T_909,_T_908,_T_907,_T_906,_T_931,_T_925}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@137032.4]
  assign _T_943 = io_req_bits_addr[31:2]; // @[BTB.scala 86:21:freechips.rocketchip.system.DefaultRV32Config.fir@137037.4]
  assign _T_948 = 8'hdd * _T_884; // @[BTB.scala 83:12:freechips.rocketchip.system.DefaultRV32Config.fir@137042.4]
  assign _T_883__T_952_addr = _T_947 ^ _T_950;
  assign _T_883__T_952_data = _T_883[_T_883__T_952_addr]; // @[BTB.scala 113:26:freechips.rocketchip.system.DefaultRV32Config.fir@136976.4]
  assign io_resp_bits_taken = _T_970 ? 1'h0 : 1'h1; // @[BTB.scala 276:22:freechips.rocketchip.system.DefaultRV32Config.fir@136402.4 BTB.scala 308:56:freechips.rocketchip.system.DefaultRV32Config.fir@137083.6]

  assign io_resp_bits_bridx = _T_597 | _T_571; // @[BTB.scala 279:22:freechips.rocketchip.system.DefaultRV32Config.fir@136683.4]

  assign _GEN_379 = 3'h5 == _T_407 ? pages_5 : _GEN_378; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@136574.4]
  assign _GEN_403 = 3'h5 == _T_972 ? _T_973_5 : _GEN_402; // @[BTB.scala 316:22:freechips.rocketchip.system.DefaultRV32Config.fir@137149.4]
  assign _T_491 = _T_490 | _T_464; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136570.4]
  assign _T_974 = cfiType_0 == 2'h3; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@137089.4]
  assign _T_975 = cfiType_1 == 2'h3; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@137090.4]
  assign _T_976 = cfiType_2 == 2'h3; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@137091.4]
  assign _T_977 = cfiType_3 == 2'h3; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@137092.4]
  assign _T_978 = cfiType_4 == 2'h3; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@137093.4]
  assign _T_979 = cfiType_5 == 2'h3; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@137094.4]
  assign _T_980 = cfiType_6 == 2'h3; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@137095.4]
  assign _T_981 = cfiType_7 == 2'h3; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@137096.4]
  assign _T_982 = cfiType_8 == 2'h3; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@137097.4]
  assign _T_983 = cfiType_9 == 2'h3; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@137098.4]
  assign _T_984 = cfiType_10 == 2'h3; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@137099.4]
  assign _T_985 = cfiType_11 == 2'h3; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@137100.4]
  assign _T_986 = cfiType_12 == 2'h3; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@137101.4]
  assign _T_987 = cfiType_13 == 2'h3; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@137102.4]
  assign _T_988 = cfiType_14 == 2'h3; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@137103.4]
  assign _T_989 = cfiType_15 == 2'h3; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@137104.4]
  assign _T_990 = cfiType_16 == 2'h3; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@137105.4]
  assign _T_991 = cfiType_17 == 2'h3; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@137106.4]
  assign _T_992 = cfiType_18 == 2'h3; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@137107.4]
  assign _T_993 = cfiType_19 == 2'h3; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@137108.4]
  assign _T_994 = cfiType_20 == 2'h3; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@137109.4]
  assign _T_995 = cfiType_21 == 2'h3; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@137110.4]
  assign _T_996 = cfiType_22 == 2'h3; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@137111.4]
  assign _T_997 = cfiType_23 == 2'h3; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@137112.4]
  assign _T_998 = cfiType_24 == 2'h3; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@137113.4]
  assign _T_999 = cfiType_25 == 2'h3; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@137114.4]
  assign _T_1000 = cfiType_26 == 2'h3; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@137115.4]
  assign _T_1001 = cfiType_27 == 2'h3; // @[BTB.scala 314:42:freechips.rocketchip.system.DefaultRV32Config.fir@137116.4]
  assign _T_1028 = {_T_1001,_T_1000,_T_999,_T_998,_T_997,_T_996,_T_995,_T_1020,_T_1014}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@137143.4]
  assign _T_1032 = _T_1031 == 1'h0; // @[BTB.scala 315:26:freechips.rocketchip.system.DefaultRV32Config.fir@137147.4]
  assign io_resp_bits_target = _T_1035 ? _GEN_403 : _T_494; // @[BTB.scala 277:23:freechips.rocketchip.system.DefaultRV32Config.fir@136575.4 BTB.scala 318:27:freechips.rocketchip.system.DefaultRV32Config.fir@137154.6]

  assign _T_497 = _T_495 != 12'h0; // @[OneHot.scala 32:14:freechips.rocketchip.system.DefaultRV32Config.fir@136578.4]
  assign _T_498 = _GEN_453 | _T_496; // @[OneHot.scala 32:28:freechips.rocketchip.system.DefaultRV32Config.fir@136579.4]
  assign _T_501 = _T_499 != 8'h0; // @[OneHot.scala 32:14:freechips.rocketchip.system.DefaultRV32Config.fir@136582.4]
  assign _T_502 = _T_499 | _T_500; // @[OneHot.scala 32:28:freechips.rocketchip.system.DefaultRV32Config.fir@136583.4]
  assign _T_505 = _T_503 != 4'h0; // @[OneHot.scala 32:14:freechips.rocketchip.system.DefaultRV32Config.fir@136586.4]
  assign _T_506 = _T_503 | _T_504; // @[OneHot.scala 32:28:freechips.rocketchip.system.DefaultRV32Config.fir@136587.4]
  assign _T_509 = _T_507 != 2'h0; // @[OneHot.scala 32:14:freechips.rocketchip.system.DefaultRV32Config.fir@136590.4]
  assign _T_510 = _T_507 | _T_508; // @[OneHot.scala 32:28:freechips.rocketchip.system.DefaultRV32Config.fir@136591.4]
  assign io_resp_bits_entry = {_T_497,_T_514}; // @[BTB.scala 278:22:freechips.rocketchip.system.DefaultRV32Config.fir@136597.4]

  assign io_resp_bits_bht_history = _T_884; // @[BTB.scala 309:22:freechips.rocketchip.system.DefaultRV32Config.fir@137085.4]

  assign io_resp_bits_bht_value = _T_883__T_952_data; // @[BTB.scala 309:22:freechips.rocketchip.system.DefaultRV32Config.fir@137085.4]

  assign io_ras_head_valid = _T_1031 == 1'h0; // @[BTB.scala 315:23:freechips.rocketchip.system.DefaultRV32Config.fir@137148.4]

  assign io_ras_head_bits = 3'h5 == _T_972 ? _T_973_5 : _GEN_402; // @[BTB.scala 316:22:freechips.rocketchip.system.DefaultRV32Config.fir@137149.4]

  assign _T_211 = 32'h1 << waddr; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@136259.6]
  assign _T_212 = r_btb_updatePipe_bits_pc[13:1]; // @[BTB.scala 252:40:freechips.rocketchip.system.DefaultRV32Config.fir@136260.6]
  assign _T_218 = r_btb_updatePipe_bits_isValid ? _T_215 : _T_217; // @[BTB.scala 257:19:freechips.rocketchip.system.DefaultRV32Config.fir@136271.6]
  assign _T_221 = _T_220 == 1'h0; // @[BTB.scala 262:25:freechips.rocketchip.system.DefaultRV32Config.fir@136276.6]
  assign _T_222 = _T_221 ? idxPageReplEn : tgtPageReplEn;
  assign _T_229 = _T_221 ? tgtPageReplEn : idxPageReplEn; // @[BTB.scala 270:24:freechips.rocketchip.system.DefaultRV32Config.fir@136293.6]
  assign _GEN_373 = r_btb_updatePipe_valid ? _T_237 : {{2'd0}, pageValid}; // @[BTB.scala 250:29:freechips.rocketchip.system.DefaultRV32Config.fir@136258.4]
  assign _T_880 = _T_878 | _T_879; // @[Misc.scala 181:49:freechips.rocketchip.system.DefaultRV32Config.fir@136967.4]
  assign _T_882 = isValid & _T_881; // @[BTB.scala 285:24:freechips.rocketchip.system.DefaultRV32Config.fir@136970.6]
  assign _GEN_381 = io_flush ? 32'h0 : _GEN_380; // @[BTB.scala 287:19:freechips.rocketchip.system.DefaultRV32Config.fir@136973.4]
always @(posedge clock) begin
    if(_T_883__T_965_en & _T_883__T_965_mask) begin
      _T_883[_T_883__T_965_addr] <= _T_883__T_965_data; // @[BTB.scala 113:26:freechips.rocketchip.system.DefaultRV32Config.fir@136976.4]
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h0 == waddr) begin
        idxs_0 <= _T_212;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h1 == waddr) begin
        idxs_1 <= _T_212;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h2 == waddr) begin
        idxs_2 <= _T_212;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h3 == waddr) begin
        idxs_3 <= _T_212;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h4 == waddr) begin
        idxs_4 <= _T_212;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h5 == waddr) begin
        idxs_5 <= _T_212;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h6 == waddr) begin
        idxs_6 <= _T_212;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h7 == waddr) begin
        idxs_7 <= _T_212;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h8 == waddr) begin
        idxs_8 <= _T_212;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h9 == waddr) begin
        idxs_9 <= _T_212;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'ha == waddr) begin
        idxs_10 <= _T_212;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hb == waddr) begin
        idxs_11 <= _T_212;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hc == waddr) begin
        idxs_12 <= _T_212;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hd == waddr) begin
        idxs_13 <= _T_212;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'he == waddr) begin
        idxs_14 <= _T_212;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hf == waddr) begin
        idxs_15 <= _T_212;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h10 == waddr) begin
        idxs_16 <= _T_212;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h11 == waddr) begin
        idxs_17 <= _T_212;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h12 == waddr) begin
        idxs_18 <= _T_212;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h13 == waddr) begin
        idxs_19 <= _T_212;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h14 == waddr) begin
        idxs_20 <= _T_212;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h15 == waddr) begin
        idxs_21 <= _T_212;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h16 == waddr) begin
        idxs_22 <= _T_212;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h17 == waddr) begin
        idxs_23 <= _T_212;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h18 == waddr) begin
        idxs_24 <= _T_212;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h19 == waddr) begin
        idxs_25 <= _T_212;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h1a == waddr) begin
        idxs_26 <= _T_212;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h1b == waddr) begin
        idxs_27 <= _T_212;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h0 == waddr) begin
        idxPages_0 <= _idxPages_waddr;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h1 == waddr) begin
        idxPages_1 <= _idxPages_waddr;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h2 == waddr) begin
        idxPages_2 <= _idxPages_waddr;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h3 == waddr) begin
        idxPages_3 <= _idxPages_waddr;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h4 == waddr) begin
        idxPages_4 <= _idxPages_waddr;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h5 == waddr) begin
        idxPages_5 <= _idxPages_waddr;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h6 == waddr) begin
        idxPages_6 <= _idxPages_waddr;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h7 == waddr) begin
        idxPages_7 <= _idxPages_waddr;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h8 == waddr) begin
        idxPages_8 <= _idxPages_waddr;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h9 == waddr) begin
        idxPages_9 <= _idxPages_waddr;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'ha == waddr) begin
        idxPages_10 <= _idxPages_waddr;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hb == waddr) begin
        idxPages_11 <= _idxPages_waddr;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hc == waddr) begin
        idxPages_12 <= _idxPages_waddr;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hd == waddr) begin
        idxPages_13 <= _idxPages_waddr;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'he == waddr) begin
        idxPages_14 <= _idxPages_waddr;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hf == waddr) begin
        idxPages_15 <= _idxPages_waddr;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h10 == waddr) begin
        idxPages_16 <= _idxPages_waddr;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h11 == waddr) begin
        idxPages_17 <= _idxPages_waddr;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h12 == waddr) begin
        idxPages_18 <= _idxPages_waddr;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h13 == waddr) begin
        idxPages_19 <= _idxPages_waddr;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h14 == waddr) begin
        idxPages_20 <= _idxPages_waddr;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h15 == waddr) begin
        idxPages_21 <= _idxPages_waddr;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h16 == waddr) begin
        idxPages_22 <= _idxPages_waddr;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h17 == waddr) begin
        idxPages_23 <= _idxPages_waddr;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h18 == waddr) begin
        idxPages_24 <= _idxPages_waddr;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h19 == waddr) begin
        idxPages_25 <= _idxPages_waddr;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h1a == waddr) begin
        idxPages_26 <= _idxPages_waddr;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h1b == waddr) begin
        idxPages_27 <= _idxPages_waddr;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h0 == waddr) begin
        tgts_0 <= _T_12;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h1 == waddr) begin
        tgts_1 <= _T_12;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h2 == waddr) begin
        tgts_2 <= _T_12;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h3 == waddr) begin
        tgts_3 <= _T_12;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h4 == waddr) begin
        tgts_4 <= _T_12;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h5 == waddr) begin
        tgts_5 <= _T_12;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h6 == waddr) begin
        tgts_6 <= _T_12;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h7 == waddr) begin
        tgts_7 <= _T_12;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h8 == waddr) begin
        tgts_8 <= _T_12;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h9 == waddr) begin
        tgts_9 <= _T_12;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'ha == waddr) begin
        tgts_10 <= _T_12;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hb == waddr) begin
        tgts_11 <= _T_12;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hc == waddr) begin
        tgts_12 <= _T_12;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hd == waddr) begin
        tgts_13 <= _T_12;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'he == waddr) begin
        tgts_14 <= _T_12;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hf == waddr) begin
        tgts_15 <= _T_12;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h10 == waddr) begin
        tgts_16 <= _T_12;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h11 == waddr) begin
        tgts_17 <= _T_12;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h12 == waddr) begin
        tgts_18 <= _T_12;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h13 == waddr) begin
        tgts_19 <= _T_12;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h14 == waddr) begin
        tgts_20 <= _T_12;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h15 == waddr) begin
        tgts_21 <= _T_12;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h16 == waddr) begin
        tgts_22 <= _T_12;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h17 == waddr) begin
        tgts_23 <= _T_12;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h18 == waddr) begin
        tgts_24 <= _T_12;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h19 == waddr) begin
        tgts_25 <= _T_12;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h1a == waddr) begin
        tgts_26 <= _T_12;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h1b == waddr) begin
        tgts_27 <= _T_12;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h0 == waddr) begin
        tgtPages_0 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h1 == waddr) begin
        tgtPages_1 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h2 == waddr) begin
        tgtPages_2 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h3 == waddr) begin
        tgtPages_3 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h4 == waddr) begin
        tgtPages_4 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h5 == waddr) begin
        tgtPages_5 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h6 == waddr) begin
        tgtPages_6 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h7 == waddr) begin
        tgtPages_7 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h8 == waddr) begin
        tgtPages_8 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h9 == waddr) begin
        tgtPages_9 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'ha == waddr) begin
        tgtPages_10 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hb == waddr) begin
        tgtPages_11 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hc == waddr) begin
        tgtPages_12 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hd == waddr) begin
        tgtPages_13 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'he == waddr) begin
        tgtPages_14 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hf == waddr) begin
        tgtPages_15 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h10 == waddr) begin
        tgtPages_16 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h11 == waddr) begin
        tgtPages_17 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h12 == waddr) begin
        tgtPages_18 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h13 == waddr) begin
        tgtPages_19 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h14 == waddr) begin
        tgtPages_20 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h15 == waddr) begin
        tgtPages_21 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h16 == waddr) begin
        tgtPages_22 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h17 == waddr) begin
        tgtPages_23 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h18 == waddr) begin
        tgtPages_24 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h19 == waddr) begin
        tgtPages_25 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h1a == waddr) begin
        tgtPages_26 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h1b == waddr) begin
        tgtPages_27 <= tgtPageUpdate;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (_T_226) begin
        if (_T_221) begin
          pages_0 <= _T_68;
        end else begin
          pages_0 <= _T;
        end
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (_T_233) begin
        if (_T_221) begin
          pages_1 <= _T;
        end else begin
          pages_1 <= _T_68;
        end
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (_T_227) begin
        if (_T_221) begin
          pages_2 <= _T_68;
        end else begin
          pages_2 <= _T;
        end
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (_T_234) begin
        if (_T_221) begin
          pages_3 <= _T;
        end else begin
          pages_3 <= _T_68;
        end
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (_T_228) begin
        if (_T_221) begin
          pages_4 <= _T_68;
        end else begin
          pages_4 <= _T;
        end
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (_T_235) begin
        if (_T_221) begin
          pages_5 <= _T;
        end else begin
          pages_5 <= _T_68;
        end
      end
    end
    if (reset) begin
      pageValid <= 6'h0;
    end else begin
      pageValid <= _GEN_373[5:0];
    end
    if (reset) begin
      isValid <= 28'h0;
    end else begin
      isValid <= _GEN_381[27:0];
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h0 == waddr) begin
        cfiType_0 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h1 == waddr) begin
        cfiType_1 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h2 == waddr) begin
        cfiType_2 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h3 == waddr) begin
        cfiType_3 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h4 == waddr) begin
        cfiType_4 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h5 == waddr) begin
        cfiType_5 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h6 == waddr) begin
        cfiType_6 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h7 == waddr) begin
        cfiType_7 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h8 == waddr) begin
        cfiType_8 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h9 == waddr) begin
        cfiType_9 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'ha == waddr) begin
        cfiType_10 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hb == waddr) begin
        cfiType_11 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hc == waddr) begin
        cfiType_12 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hd == waddr) begin
        cfiType_13 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'he == waddr) begin
        cfiType_14 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hf == waddr) begin
        cfiType_15 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h10 == waddr) begin
        cfiType_16 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h11 == waddr) begin
        cfiType_17 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h12 == waddr) begin
        cfiType_18 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h13 == waddr) begin
        cfiType_19 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h14 == waddr) begin
        cfiType_20 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h15 == waddr) begin
        cfiType_21 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h16 == waddr) begin
        cfiType_22 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h17 == waddr) begin
        cfiType_23 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h18 == waddr) begin
        cfiType_24 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h19 == waddr) begin
        cfiType_25 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h1a == waddr) begin
        cfiType_26 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h1b == waddr) begin
        cfiType_27 <= r_btb_updatePipe_bits_cfiType;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h0 == waddr) begin
        brIdx_0 <= _brIdx_waddr;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h1 == waddr) begin
        brIdx_1 <= _brIdx_waddr;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h2 == waddr) begin
        brIdx_2 <= _brIdx_waddr;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h3 == waddr) begin
        brIdx_3 <= _brIdx_waddr;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h4 == waddr) begin
        brIdx_4 <= _brIdx_waddr;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h5 == waddr) begin
        brIdx_5 <= _brIdx_waddr;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h6 == waddr) begin
        brIdx_6 <= _brIdx_waddr;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h7 == waddr) begin
        brIdx_7 <= _brIdx_waddr;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h8 == waddr) begin
        brIdx_8 <= _brIdx_waddr;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h9 == waddr) begin
        brIdx_9 <= _brIdx_waddr;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'ha == waddr) begin
        brIdx_10 <= _brIdx_waddr;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hb == waddr) begin
        brIdx_11 <= _brIdx_waddr;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hc == waddr) begin
        brIdx_12 <= _brIdx_waddr;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hd == waddr) begin
        brIdx_13 <= _brIdx_waddr;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'he == waddr) begin
        brIdx_14 <= _brIdx_waddr;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'hf == waddr) begin
        brIdx_15 <= _brIdx_waddr;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h10 == waddr) begin
        brIdx_16 <= _brIdx_waddr;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h11 == waddr) begin
        brIdx_17 <= _brIdx_waddr;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h12 == waddr) begin
        brIdx_18 <= _brIdx_waddr;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h13 == waddr) begin
        brIdx_19 <= _brIdx_waddr;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h14 == waddr) begin
        brIdx_20 <= _brIdx_waddr;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h15 == waddr) begin
        brIdx_21 <= _brIdx_waddr;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h16 == waddr) begin
        brIdx_22 <= _brIdx_waddr;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h17 == waddr) begin
        brIdx_23 <= _brIdx_waddr;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h18 == waddr) begin
        brIdx_24 <= _brIdx_waddr;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h19 == waddr) begin
        brIdx_25 <= _brIdx_waddr;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h1a == waddr) begin
        brIdx_26 <= _brIdx_waddr;
      end
    end
    if (r_btb_updatePipe_valid) begin
      if (5'h1b == waddr) begin
        brIdx_27 <= _brIdx_waddr;
      end
    end
    if (reset) begin
      r_btb_updatePipe_valid <= 1'h0;
    end else begin
      r_btb_updatePipe_valid <= io_btb_update_valid;
    end
    if (io_btb_update_valid) begin
      r_btb_updatePipe_bits_prediction_entry <= io_btb_update_bits_prediction_entry;
    end
    if (io_btb_update_valid) begin
      r_btb_updatePipe_bits_pc <= io_btb_update_bits_pc;
    end
    if (io_btb_update_valid) begin
      r_btb_updatePipe_bits_isValid <= io_btb_update_bits_isValid;
    end
    if (io_btb_update_valid) begin
      r_btb_updatePipe_bits_br_pc <= io_btb_update_bits_br_pc;
    end
    if (io_btb_update_valid) begin
      r_btb_updatePipe_bits_cfiType <= io_btb_update_bits_cfiType;
    end
    if (_T_115) begin
      if (_T_120) begin
        nextPageRepl <= {{2'd0}, _T_121};
      end else begin
        nextPageRepl <= _T_119;
      end
    end
    if (_T_162) begin
      _T_123 <= _T_210;
    end
    if (reset) begin
      r_respPipe_valid <= 1'h0;
    end else begin
      r_respPipe_valid <= io_resp_valid;
    end
    if (io_resp_valid) begin
      r_respPipe_bits_taken <= io_resp_bits_taken;
    end
    if (io_resp_valid) begin
      r_respPipe_bits_entry <= io_resp_bits_entry;
    end
    if (io_bht_update_valid) begin
      if (io_bht_update_bits_branch) begin
        if (io_bht_update_bits_mispredict) begin
          _T_884 <= _T_967;
        end else begin
          if (io_bht_advance_valid) begin
            _T_884 <= _T_955;
          end
        end
      end else begin
        if (io_bht_update_bits_mispredict) begin
          _T_884 <= io_bht_update_bits_prediction_history;
        end else begin
          if (io_bht_advance_valid) begin
            _T_884 <= _T_955;
          end
        end
      end
    end else begin
      if (io_bht_advance_valid) begin
        _T_884 <= _T_955;
      end
    end
    if (io_ras_update_valid) begin
      if (_T_1036) begin
        if (_T_1037) begin
          _T_971 <= _T_1039;
        end
      end else begin
        if (_T_1045) begin
          if (_T_1032) begin
            _T_971 <= _T_1049;
          end
        end
      end
    end
    if (io_ras_update_valid) begin
      if (_T_1036) begin
        if (_T_1040) begin
          _T_972 <= _T_1043;
        end else begin
          _T_972 <= 3'h0;
        end
      end else begin
        if (_T_1045) begin
          if (_T_1032) begin
            if (_T_1050) begin
              _T_972 <= _T_1053;
            end else begin
              _T_972 <= 3'h5;
            end
          end
        end
      end
    end
    if (io_ras_update_valid) begin
      if (_T_1036) begin
        if (3'h0 == _T_1044) begin
          _T_973_0 <= io_ras_update_bits_returnAddr;
        end
      end
    end
    if (io_ras_update_valid) begin
      if (_T_1036) begin
        if (3'h1 == _T_1044) begin
          _T_973_1 <= io_ras_update_bits_returnAddr;
        end
      end
    end
    if (io_ras_update_valid) begin
      if (_T_1036) begin
        if (3'h2 == _T_1044) begin
          _T_973_2 <= io_ras_update_bits_returnAddr;
        end
      end
    end
    if (io_ras_update_valid) begin
      if (_T_1036) begin
        if (3'h3 == _T_1044) begin
          _T_973_3 <= io_ras_update_bits_returnAddr;
        end
      end
    end
    if (io_ras_update_valid) begin
      if (_T_1036) begin
        if (3'h4 == _T_1044) begin
          _T_973_4 <= io_ras_update_bits_returnAddr;
        end
      end
    end
    if (io_ras_update_valid) begin
      if (_T_1036) begin
        if (3'h5 == _T_1044) begin
          _T_973_5 <= io_ras_update_bits_returnAddr;
        end
      end
    end
end
  assign _T_117 = _T_116 ? 2'h2 : 2'h1; // @[BTB.scala 239:40:freechips.rocketchip.system.DefaultRV32Config.fir@136141.6]
  assign _T_119 = nextPageRepl + _GEN_440; // @[BTB.scala 239:29:freechips.rocketchip.system.DefaultRV32Config.fir@136143.6]
  assign _T_163 = r_btb_updatePipe_valid ? waddr : r_respPipe_bits_entry; // @[BTB.scala 247:20:freechips.rocketchip.system.DefaultRV32Config.fir@136208.6]
  assign _T_172 = _T_166 ? _T_168 : _T_171; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136217.6]
  assign _T_176 = 4'h1 << _T_173; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136221.6]
  assign _T_181 = _T_175 ? _T_177 : _T_180; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136226.6]
  assign _T_185 = 8'h1 << _T_182; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136230.6]
  assign _T_190 = _T_184 ? _T_186 : _T_189; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136235.6]
  assign _T_194 = 16'h1 << _T_191; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136239.6]
  assign _T_199 = _T_193 ? _T_195 : _T_198; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136244.6]
  assign _T_203 = 32'h1 << _T_200; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136248.6]
  assign _T_208 = _T_202 ? _T_204 : _T_207; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136253.6]
  assign _T_1036 = io_ras_update_bits_cfiType == 2'h2; // @[BTB.scala 321:40:freechips.rocketchip.system.DefaultRV32Config.fir@137157.6]
  assign _T_1040 = _T_972 < 3'h5; // @[BTB.scala 45:49:freechips.rocketchip.system.DefaultRV32Config.fir@137165.8]
  assign _T_1044 = _T_1040 ? _T_1043 : 3'h0; // @[BTB.scala 45:22:freechips.rocketchip.system.DefaultRV32Config.fir@137169.8]
  assign _T_1045 = io_ras_update_bits_cfiType == 2'h3; // @[BTB.scala 323:46:freechips.rocketchip.system.DefaultRV32Config.fir@137174.8]

`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  _RAND_0 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 512; initvar = initvar+1)
    _T_883[initvar] = _RAND_0[0:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  idxs_0 = _RAND_1[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  idxs_1 = _RAND_2[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  idxs_2 = _RAND_3[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  idxs_3 = _RAND_4[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  idxs_4 = _RAND_5[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  idxs_5 = _RAND_6[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  idxs_6 = _RAND_7[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  idxs_7 = _RAND_8[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  idxs_8 = _RAND_9[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  idxs_9 = _RAND_10[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  idxs_10 = _RAND_11[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  idxs_11 = _RAND_12[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  idxs_12 = _RAND_13[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  idxs_13 = _RAND_14[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  idxs_14 = _RAND_15[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  idxs_15 = _RAND_16[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  idxs_16 = _RAND_17[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  idxs_17 = _RAND_18[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  idxs_18 = _RAND_19[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  idxs_19 = _RAND_20[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  idxs_20 = _RAND_21[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  idxs_21 = _RAND_22[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  idxs_22 = _RAND_23[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  idxs_23 = _RAND_24[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  idxs_24 = _RAND_25[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  idxs_25 = _RAND_26[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  idxs_26 = _RAND_27[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  idxs_27 = _RAND_28[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  idxPages_0 = _RAND_29[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{`RANDOM}};
  idxPages_1 = _RAND_30[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{`RANDOM}};
  idxPages_2 = _RAND_31[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{`RANDOM}};
  idxPages_3 = _RAND_32[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{`RANDOM}};
  idxPages_4 = _RAND_33[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{`RANDOM}};
  idxPages_5 = _RAND_34[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{`RANDOM}};
  idxPages_6 = _RAND_35[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{`RANDOM}};
  idxPages_7 = _RAND_36[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{`RANDOM}};
  idxPages_8 = _RAND_37[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{`RANDOM}};
  idxPages_9 = _RAND_38[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {1{`RANDOM}};
  idxPages_10 = _RAND_39[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{`RANDOM}};
  idxPages_11 = _RAND_40[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {1{`RANDOM}};
  idxPages_12 = _RAND_41[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {1{`RANDOM}};
  idxPages_13 = _RAND_42[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {1{`RANDOM}};
  idxPages_14 = _RAND_43[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {1{`RANDOM}};
  idxPages_15 = _RAND_44[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_45 = {1{`RANDOM}};
  idxPages_16 = _RAND_45[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_46 = {1{`RANDOM}};
  idxPages_17 = _RAND_46[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_47 = {1{`RANDOM}};
  idxPages_18 = _RAND_47[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_48 = {1{`RANDOM}};
  idxPages_19 = _RAND_48[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_49 = {1{`RANDOM}};
  idxPages_20 = _RAND_49[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_50 = {1{`RANDOM}};
  idxPages_21 = _RAND_50[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_51 = {1{`RANDOM}};
  idxPages_22 = _RAND_51[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_52 = {1{`RANDOM}};
  idxPages_23 = _RAND_52[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_53 = {1{`RANDOM}};
  idxPages_24 = _RAND_53[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_54 = {1{`RANDOM}};
  idxPages_25 = _RAND_54[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_55 = {1{`RANDOM}};
  idxPages_26 = _RAND_55[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_56 = {1{`RANDOM}};
  idxPages_27 = _RAND_56[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_57 = {1{`RANDOM}};
  tgts_0 = _RAND_57[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_58 = {1{`RANDOM}};
  tgts_1 = _RAND_58[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_59 = {1{`RANDOM}};
  tgts_2 = _RAND_59[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_60 = {1{`RANDOM}};
  tgts_3 = _RAND_60[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_61 = {1{`RANDOM}};
  tgts_4 = _RAND_61[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_62 = {1{`RANDOM}};
  tgts_5 = _RAND_62[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_63 = {1{`RANDOM}};
  tgts_6 = _RAND_63[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_64 = {1{`RANDOM}};
  tgts_7 = _RAND_64[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_65 = {1{`RANDOM}};
  tgts_8 = _RAND_65[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_66 = {1{`RANDOM}};
  tgts_9 = _RAND_66[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_67 = {1{`RANDOM}};
  tgts_10 = _RAND_67[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_68 = {1{`RANDOM}};
  tgts_11 = _RAND_68[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_69 = {1{`RANDOM}};
  tgts_12 = _RAND_69[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_70 = {1{`RANDOM}};
  tgts_13 = _RAND_70[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_71 = {1{`RANDOM}};
  tgts_14 = _RAND_71[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_72 = {1{`RANDOM}};
  tgts_15 = _RAND_72[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_73 = {1{`RANDOM}};
  tgts_16 = _RAND_73[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_74 = {1{`RANDOM}};
  tgts_17 = _RAND_74[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_75 = {1{`RANDOM}};
  tgts_18 = _RAND_75[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_76 = {1{`RANDOM}};
  tgts_19 = _RAND_76[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_77 = {1{`RANDOM}};
  tgts_20 = _RAND_77[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_78 = {1{`RANDOM}};
  tgts_21 = _RAND_78[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_79 = {1{`RANDOM}};
  tgts_22 = _RAND_79[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_80 = {1{`RANDOM}};
  tgts_23 = _RAND_80[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_81 = {1{`RANDOM}};
  tgts_24 = _RAND_81[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_82 = {1{`RANDOM}};
  tgts_25 = _RAND_82[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_83 = {1{`RANDOM}};
  tgts_26 = _RAND_83[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_84 = {1{`RANDOM}};
  tgts_27 = _RAND_84[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_85 = {1{`RANDOM}};
  tgtPages_0 = _RAND_85[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_86 = {1{`RANDOM}};
  tgtPages_1 = _RAND_86[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_87 = {1{`RANDOM}};
  tgtPages_2 = _RAND_87[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_88 = {1{`RANDOM}};
  tgtPages_3 = _RAND_88[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_89 = {1{`RANDOM}};
  tgtPages_4 = _RAND_89[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_90 = {1{`RANDOM}};
  tgtPages_5 = _RAND_90[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_91 = {1{`RANDOM}};
  tgtPages_6 = _RAND_91[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_92 = {1{`RANDOM}};
  tgtPages_7 = _RAND_92[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_93 = {1{`RANDOM}};
  tgtPages_8 = _RAND_93[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_94 = {1{`RANDOM}};
  tgtPages_9 = _RAND_94[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_95 = {1{`RANDOM}};
  tgtPages_10 = _RAND_95[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_96 = {1{`RANDOM}};
  tgtPages_11 = _RAND_96[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_97 = {1{`RANDOM}};
  tgtPages_12 = _RAND_97[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_98 = {1{`RANDOM}};
  tgtPages_13 = _RAND_98[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_99 = {1{`RANDOM}};
  tgtPages_14 = _RAND_99[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_100 = {1{`RANDOM}};
  tgtPages_15 = _RAND_100[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_101 = {1{`RANDOM}};
  tgtPages_16 = _RAND_101[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_102 = {1{`RANDOM}};
  tgtPages_17 = _RAND_102[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_103 = {1{`RANDOM}};
  tgtPages_18 = _RAND_103[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_104 = {1{`RANDOM}};
  tgtPages_19 = _RAND_104[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_105 = {1{`RANDOM}};
  tgtPages_20 = _RAND_105[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_106 = {1{`RANDOM}};
  tgtPages_21 = _RAND_106[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_107 = {1{`RANDOM}};
  tgtPages_22 = _RAND_107[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_108 = {1{`RANDOM}};
  tgtPages_23 = _RAND_108[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_109 = {1{`RANDOM}};
  tgtPages_24 = _RAND_109[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_110 = {1{`RANDOM}};
  tgtPages_25 = _RAND_110[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_111 = {1{`RANDOM}};
  tgtPages_26 = _RAND_111[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_112 = {1{`RANDOM}};
  tgtPages_27 = _RAND_112[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_113 = {1{`RANDOM}};
  pages_0 = _RAND_113[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_114 = {1{`RANDOM}};
  pages_1 = _RAND_114[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_115 = {1{`RANDOM}};
  pages_2 = _RAND_115[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_116 = {1{`RANDOM}};
  pages_3 = _RAND_116[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_117 = {1{`RANDOM}};
  pages_4 = _RAND_117[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_118 = {1{`RANDOM}};
  pages_5 = _RAND_118[17:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_119 = {1{`RANDOM}};
  pageValid = _RAND_119[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_120 = {1{`RANDOM}};
  isValid = _RAND_120[27:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_121 = {1{`RANDOM}};
  cfiType_0 = _RAND_121[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_122 = {1{`RANDOM}};
  cfiType_1 = _RAND_122[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_123 = {1{`RANDOM}};
  cfiType_2 = _RAND_123[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_124 = {1{`RANDOM}};
  cfiType_3 = _RAND_124[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_125 = {1{`RANDOM}};
  cfiType_4 = _RAND_125[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_126 = {1{`RANDOM}};
  cfiType_5 = _RAND_126[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_127 = {1{`RANDOM}};
  cfiType_6 = _RAND_127[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_128 = {1{`RANDOM}};
  cfiType_7 = _RAND_128[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_129 = {1{`RANDOM}};
  cfiType_8 = _RAND_129[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_130 = {1{`RANDOM}};
  cfiType_9 = _RAND_130[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_131 = {1{`RANDOM}};
  cfiType_10 = _RAND_131[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_132 = {1{`RANDOM}};
  cfiType_11 = _RAND_132[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_133 = {1{`RANDOM}};
  cfiType_12 = _RAND_133[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_134 = {1{`RANDOM}};
  cfiType_13 = _RAND_134[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_135 = {1{`RANDOM}};
  cfiType_14 = _RAND_135[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_136 = {1{`RANDOM}};
  cfiType_15 = _RAND_136[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_137 = {1{`RANDOM}};
  cfiType_16 = _RAND_137[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_138 = {1{`RANDOM}};
  cfiType_17 = _RAND_138[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_139 = {1{`RANDOM}};
  cfiType_18 = _RAND_139[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_140 = {1{`RANDOM}};
  cfiType_19 = _RAND_140[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_141 = {1{`RANDOM}};
  cfiType_20 = _RAND_141[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_142 = {1{`RANDOM}};
  cfiType_21 = _RAND_142[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_143 = {1{`RANDOM}};
  cfiType_22 = _RAND_143[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_144 = {1{`RANDOM}};
  cfiType_23 = _RAND_144[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_145 = {1{`RANDOM}};
  cfiType_24 = _RAND_145[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_146 = {1{`RANDOM}};
  cfiType_25 = _RAND_146[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_147 = {1{`RANDOM}};
  cfiType_26 = _RAND_147[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_148 = {1{`RANDOM}};
  cfiType_27 = _RAND_148[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_149 = {1{`RANDOM}};
  brIdx_0 = _RAND_149[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_150 = {1{`RANDOM}};
  brIdx_1 = _RAND_150[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_151 = {1{`RANDOM}};
  brIdx_2 = _RAND_151[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_152 = {1{`RANDOM}};
  brIdx_3 = _RAND_152[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_153 = {1{`RANDOM}};
  brIdx_4 = _RAND_153[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_154 = {1{`RANDOM}};
  brIdx_5 = _RAND_154[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_155 = {1{`RANDOM}};
  brIdx_6 = _RAND_155[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_156 = {1{`RANDOM}};
  brIdx_7 = _RAND_156[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_157 = {1{`RANDOM}};
  brIdx_8 = _RAND_157[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_158 = {1{`RANDOM}};
  brIdx_9 = _RAND_158[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_159 = {1{`RANDOM}};
  brIdx_10 = _RAND_159[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_160 = {1{`RANDOM}};
  brIdx_11 = _RAND_160[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_161 = {1{`RANDOM}};
  brIdx_12 = _RAND_161[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_162 = {1{`RANDOM}};
  brIdx_13 = _RAND_162[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_163 = {1{`RANDOM}};
  brIdx_14 = _RAND_163[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_164 = {1{`RANDOM}};
  brIdx_15 = _RAND_164[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_165 = {1{`RANDOM}};
  brIdx_16 = _RAND_165[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_166 = {1{`RANDOM}};
  brIdx_17 = _RAND_166[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_167 = {1{`RANDOM}};
  brIdx_18 = _RAND_167[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_168 = {1{`RANDOM}};
  brIdx_19 = _RAND_168[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_169 = {1{`RANDOM}};
  brIdx_20 = _RAND_169[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_170 = {1{`RANDOM}};
  brIdx_21 = _RAND_170[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_171 = {1{`RANDOM}};
  brIdx_22 = _RAND_171[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_172 = {1{`RANDOM}};
  brIdx_23 = _RAND_172[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_173 = {1{`RANDOM}};
  brIdx_24 = _RAND_173[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_174 = {1{`RANDOM}};
  brIdx_25 = _RAND_174[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_175 = {1{`RANDOM}};
  brIdx_26 = _RAND_175[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_176 = {1{`RANDOM}};
  brIdx_27 = _RAND_176[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_177 = {1{`RANDOM}};
  r_btb_updatePipe_valid = _RAND_177[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_178 = {1{`RANDOM}};
  r_btb_updatePipe_bits_prediction_entry = _RAND_178[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_179 = {1{`RANDOM}};
  r_btb_updatePipe_bits_pc = _RAND_179[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_180 = {1{`RANDOM}};
  r_btb_updatePipe_bits_isValid = _RAND_180[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_181 = {1{`RANDOM}};
  r_btb_updatePipe_bits_br_pc = _RAND_181[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_182 = {1{`RANDOM}};
  r_btb_updatePipe_bits_cfiType = _RAND_182[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_183 = {1{`RANDOM}};
  nextPageRepl = _RAND_183[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_184 = {1{`RANDOM}};
  _T_123 = _RAND_184[26:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_185 = {1{`RANDOM}};
  r_respPipe_valid = _RAND_185[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_186 = {1{`RANDOM}};
  r_respPipe_bits_taken = _RAND_186[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_187 = {1{`RANDOM}};
  r_respPipe_bits_entry = _RAND_187[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_188 = {1{`RANDOM}};
  _T_884 = _RAND_188[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_189 = {1{`RANDOM}};
  _T_971 = _RAND_189[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_190 = {1{`RANDOM}};
  _T_972 = _RAND_190[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_191 = {1{`RANDOM}};
  _T_973_0 = _RAND_191[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_192 = {1{`RANDOM}};
  _T_973_1 = _RAND_192[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_193 = {1{`RANDOM}};
  _T_973_2 = _RAND_193[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_194 = {1{`RANDOM}};
  _T_973_3 = _RAND_194[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_195 = {1{`RANDOM}};
  _T_973_4 = _RAND_195[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_196 = {1{`RANDOM}};
  _T_973_5 = _RAND_196[31:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end

`endif // MY_ASSIGNMENT

  assign _T_883__T_965_data = io_bht_update_bits_taken;
  assign _T_883__T_965_addr = _T_960 ^ _T_963;
  assign _T_883__T_965_mask = 1'h1;
  assign _T_883__T_965_en = io_bht_update_valid & io_bht_update_bits_branch;
  assign _T_11 = {_T_6,_T_5,_T_4,_T_3,_T_2,_T_1}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@136017.4]
  assign _T_46 = {_T_19,_T_18,_T_17,_T_16,_T_15,_T_14,_T_13}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@136053.4]
  assign _T_53 = {_T_26,_T_25,_T_24,_T_23,_T_22,_T_21,_T_20,_T_46}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@136060.4]
  assign _T_59 = {_T_33,_T_32,_T_31,_T_30,_T_29,_T_28,_T_27}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@136066.4]
  assign _T_67 = {_T_40,_T_39,_T_38,_T_37,_T_36,_T_35,_T_34,_T_59,_T_53}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@136074.4]
  assign _T_79 = {_T_74,_T_73,_T_72,_T_71,_T_70,_T_69}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@136087.4]
  assign _T_80 = pageHit[4:0]; // @[BTB.scala 226:32:freechips.rocketchip.system.DefaultRV32Config.fir@136094.4]
  assign _T_81 = pageHit[5]; // @[BTB.scala 226:53:freechips.rocketchip.system.DefaultRV32Config.fir@136095.4]
  assign _T_82 = {_T_80,_T_81}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@136096.4]
  assign _T_83 = 8'h1 << nextPageRepl; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@136097.4]
  assign _GEN_438 = {{2'd0}, _T_82}; // @[BTB.scala 226:65:freechips.rocketchip.system.DefaultRV32Config.fir@136099.4]
  assign _T_85 = idxPageUpdateOH[7:4]; // @[OneHot.scala 30:18:freechips.rocketchip.system.DefaultRV32Config.fir@136101.4]
  assign _T_86 = idxPageUpdateOH[3:0]; // @[OneHot.scala 31:18:freechips.rocketchip.system.DefaultRV32Config.fir@136102.4]
  assign _T_89 = _T_88[3:2]; // @[OneHot.scala 30:18:freechips.rocketchip.system.DefaultRV32Config.fir@136105.4]
  assign _T_90 = _T_88[1:0]; // @[OneHot.scala 31:18:freechips.rocketchip.system.DefaultRV32Config.fir@136106.4]
  assign _T_93 = _T_92[1]; // @[CircuitMath.scala 30:8:freechips.rocketchip.system.DefaultRV32Config.fir@136109.4]
  assign _T_97 = samePage == 1'h0; // @[BTB.scala 232:23:freechips.rocketchip.system.DefaultRV32Config.fir@136116.4]
  assign _T_98 = usePageHit == 1'h0; // @[BTB.scala 232:36:freechips.rocketchip.system.DefaultRV32Config.fir@136117.4]
  assign _T_99 = idxPageUpdateOH[4:0]; // @[BTB.scala 233:71:freechips.rocketchip.system.DefaultRV32Config.fir@136119.4]
  assign _T_100 = idxPageUpdateOH[5]; // @[BTB.scala 233:100:freechips.rocketchip.system.DefaultRV32Config.fir@136120.4]
  assign _T_101 = {_T_99,_T_100}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@136121.4]
  assign _GEN_439 = {{2'd0}, pageHit}; // @[BTB.scala 234:40:freechips.rocketchip.system.DefaultRV32Config.fir@136124.4]
  assign _T_104 = _T_103[7:4]; // @[OneHot.scala 30:18:freechips.rocketchip.system.DefaultRV32Config.fir@136125.4]
  assign _T_105 = _T_103[3:0]; // @[OneHot.scala 31:18:freechips.rocketchip.system.DefaultRV32Config.fir@136126.4]
  assign _T_108 = _T_107[3:2]; // @[OneHot.scala 30:18:freechips.rocketchip.system.DefaultRV32Config.fir@136129.4]
  assign _T_109 = _T_107[1:0]; // @[OneHot.scala 31:18:freechips.rocketchip.system.DefaultRV32Config.fir@136130.4]
  assign _T_112 = _T_111[1]; // @[CircuitMath.scala 30:8:freechips.rocketchip.system.DefaultRV32Config.fir@136133.4]
  assign _T_114 = doIdxPageRepl | doTgtPageRepl; // @[BTB.scala 237:46:freechips.rocketchip.system.DefaultRV32Config.fir@136137.4]
  assign _T_115 = r_btb_updatePipe_valid & _T_114; // @[BTB.scala 237:28:freechips.rocketchip.system.DefaultRV32Config.fir@136138.4]
  assign _T_116 = doIdxPageRepl & doTgtPageRepl; // @[BTB.scala 238:30:freechips.rocketchip.system.DefaultRV32Config.fir@136140.6]
  assign _GEN_440 = {{1'd0}, _T_117}; // @[BTB.scala 239:29:freechips.rocketchip.system.DefaultRV32Config.fir@136142.6]
  assign _T_120 = _T_119 >= 3'h6; // @[BTB.scala 240:30:freechips.rocketchip.system.DefaultRV32Config.fir@136144.6]
  assign _T_121 = _T_119[0]; // @[BTB.scala 240:45:freechips.rocketchip.system.DefaultRV32Config.fir@136145.6]
  assign _GEN_441 = _T_124[27:1]; // @[Replacement.scala 61:48:freechips.rocketchip.system.DefaultRV32Config.fir@136154.4]
  assign _T_128 = {{1'd0}, _GEN_441}; // @[Replacement.scala 61:48:freechips.rocketchip.system.DefaultRV32Config.fir@136154.4]
  assign _T_131 = {1'h1,_T_129}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@136157.4]
  assign _T_133 = _T_132[4:0]; // @[Replacement.scala 60:53:freechips.rocketchip.system.DefaultRV32Config.fir@136159.4]
  assign _T_134 = _T_133 < 5'h1c; // @[Replacement.scala 60:70:freechips.rocketchip.system.DefaultRV32Config.fir@136160.4]
  assign _T_136 = _T_135[0]; // @[Replacement.scala 61:48:freechips.rocketchip.system.DefaultRV32Config.fir@136162.4]
  assign _T_138 = {1'h1,_T_129,_T_137}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@136164.4]
  assign _T_140 = _T_139[4:0]; // @[Replacement.scala 60:53:freechips.rocketchip.system.DefaultRV32Config.fir@136166.4]
  assign _T_141 = _T_140 < 5'h1c; // @[Replacement.scala 60:70:freechips.rocketchip.system.DefaultRV32Config.fir@136167.4]
  assign _T_143 = _T_142[0]; // @[Replacement.scala 61:48:freechips.rocketchip.system.DefaultRV32Config.fir@136169.4]
  assign _T_145 = {1'h1,_T_129,_T_137,_T_144}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@136171.4]
  assign _T_147 = _T_146[4:0]; // @[Replacement.scala 60:53:freechips.rocketchip.system.DefaultRV32Config.fir@136173.4]
  assign _T_148 = _T_147 < 5'h1c; // @[Replacement.scala 60:70:freechips.rocketchip.system.DefaultRV32Config.fir@136174.4]
  assign _T_150 = _T_149[0]; // @[Replacement.scala 61:48:freechips.rocketchip.system.DefaultRV32Config.fir@136176.4]
  assign _T_152 = {1'h1,_T_129,_T_137,_T_144,_T_151}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@136178.4]
  assign _T_154 = _T_153[4:0]; // @[Replacement.scala 60:53:freechips.rocketchip.system.DefaultRV32Config.fir@136180.4]
  assign _T_155 = _T_154 < 5'h1c; // @[Replacement.scala 60:70:freechips.rocketchip.system.DefaultRV32Config.fir@136181.4]
  assign _T_157 = _T_156[0]; // @[Replacement.scala 61:48:freechips.rocketchip.system.DefaultRV32Config.fir@136183.4]
  assign _T_160 = _T_159[4:0]; // @[Replacement.scala 63:8:freechips.rocketchip.system.DefaultRV32Config.fir@136186.4]
  assign _T_161 = r_respPipe_valid & r_respPipe_bits_taken; // @[BTB.scala 246:22:freechips.rocketchip.system.DefaultRV32Config.fir@136205.4]
  assign _T_162 = _T_161 | r_btb_updatePipe_valid; // @[BTB.scala 246:43:freechips.rocketchip.system.DefaultRV32Config.fir@136206.4]
  assign _T_165 = _T_163[4]; // @[Replacement.scala 49:20:freechips.rocketchip.system.DefaultRV32Config.fir@136210.6]
  assign _T_166 = _T_165 == 1'h0; // @[Replacement.scala 50:43:freechips.rocketchip.system.DefaultRV32Config.fir@136211.6]
  assign _T_168 = _T_124 | 28'h2; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136213.6]
  assign _T_169 = ~ _T_124; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136214.6]
  assign _T_170 = _T_169 | 28'h2; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136215.6]
  assign _T_171 = ~ _T_170; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136216.6]
  assign _T_173 = {1'h1,_T_165}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@136218.6]
  assign _T_174 = _T_163[3]; // @[Replacement.scala 49:20:freechips.rocketchip.system.DefaultRV32Config.fir@136219.6]
  assign _T_175 = _T_174 == 1'h0; // @[Replacement.scala 50:43:freechips.rocketchip.system.DefaultRV32Config.fir@136220.6]
  assign _GEN_442 = {{24'd0}, _T_176}; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136222.6]
  assign _T_177 = _T_172 | _GEN_442; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136222.6]
  assign _T_178 = ~ _T_172; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136223.6]
  assign _T_179 = _T_178 | _GEN_442; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136224.6]
  assign _T_180 = ~ _T_179; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136225.6]
  assign _T_182 = {1'h1,_T_165,_T_174}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@136227.6]
  assign _T_183 = _T_163[2]; // @[Replacement.scala 49:20:freechips.rocketchip.system.DefaultRV32Config.fir@136228.6]
  assign _T_184 = _T_183 == 1'h0; // @[Replacement.scala 50:43:freechips.rocketchip.system.DefaultRV32Config.fir@136229.6]
  assign _GEN_444 = {{20'd0}, _T_185}; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136231.6]
  assign _T_186 = _T_181 | _GEN_444; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136231.6]
  assign _T_187 = ~ _T_181; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136232.6]
  assign _T_188 = _T_187 | _GEN_444; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136233.6]
  assign _T_189 = ~ _T_188; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136234.6]
  assign _T_191 = {1'h1,_T_165,_T_174,_T_183}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@136236.6]
  assign _T_192 = _T_163[1]; // @[Replacement.scala 49:20:freechips.rocketchip.system.DefaultRV32Config.fir@136237.6]
  assign _T_193 = _T_192 == 1'h0; // @[Replacement.scala 50:43:freechips.rocketchip.system.DefaultRV32Config.fir@136238.6]
  assign _GEN_446 = {{12'd0}, _T_194}; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136240.6]
  assign _T_195 = _T_190 | _GEN_446; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136240.6]
  assign _T_196 = ~ _T_190; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136241.6]
  assign _T_197 = _T_196 | _GEN_446; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136242.6]
  assign _T_198 = ~ _T_197; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136243.6]
  assign _T_200 = {1'h1,_T_165,_T_174,_T_183,_T_192}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@136245.6]
  assign _T_201 = _T_163[0]; // @[Replacement.scala 49:20:freechips.rocketchip.system.DefaultRV32Config.fir@136246.6]
  assign _T_202 = _T_201 == 1'h0; // @[Replacement.scala 50:43:freechips.rocketchip.system.DefaultRV32Config.fir@136247.6]
  assign _GEN_448 = {{4'd0}, _T_199}; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136249.6]
  assign _T_204 = _GEN_448 | _T_203; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136249.6]
  assign _T_205 = ~ _T_199; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136250.6]
  assign _GEN_449 = {{4'd0}, _T_205}; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136251.6]
  assign _T_206 = _GEN_449 | _T_203; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136251.6]
  assign _T_207 = ~ _T_206; // @[Replacement.scala 50:37:freechips.rocketchip.system.DefaultRV32Config.fir@136252.6]
  assign _T_210 = _T_208[27:1]; // @[package.scala 120:13:freechips.rocketchip.system.DefaultRV32Config.fir@136255.6]
  assign _GEN_450 = {{4'd0}, isValid}; // @[BTB.scala 257:55:freechips.rocketchip.system.DefaultRV32Config.fir@136268.6]
  assign _T_215 = _GEN_450 | _T_211; // @[BTB.scala 257:55:freechips.rocketchip.system.DefaultRV32Config.fir@136268.6]
  assign _T_216 = ~ _T_211; // @[BTB.scala 257:73:freechips.rocketchip.system.DefaultRV32Config.fir@136269.6]
  assign _T_217 = _GEN_450 & _T_216; // @[BTB.scala 257:71:freechips.rocketchip.system.DefaultRV32Config.fir@136270.6]
  assign _T_219 = r_btb_updatePipe_bits_br_pc[31:1]; // @[BTB.scala 259:47:freechips.rocketchip.system.DefaultRV32Config.fir@136273.6]
  assign _T_220 = idxPageUpdate[0]; // @[BTB.scala 262:39:freechips.rocketchip.system.DefaultRV32Config.fir@136275.6]
  assign _T_226 = _T_222[0]; // @[BTB.scala 266:17:freechips.rocketchip.system.DefaultRV32Config.fir@136281.6]
  assign _T_227 = _T_222[2]; // @[BTB.scala 266:17:freechips.rocketchip.system.DefaultRV32Config.fir@136285.6]
  assign _T_228 = _T_222[4]; // @[BTB.scala 266:17:freechips.rocketchip.system.DefaultRV32Config.fir@136289.6]
  assign _T_233 = _T_229[1]; // @[BTB.scala 266:17:freechips.rocketchip.system.DefaultRV32Config.fir@136297.6]
  assign _T_234 = _T_229[3]; // @[BTB.scala 266:17:freechips.rocketchip.system.DefaultRV32Config.fir@136301.6]
  assign _T_235 = _T_229[5]; // @[BTB.scala 266:17:freechips.rocketchip.system.DefaultRV32Config.fir@136305.6]
  assign _GEN_452 = {{2'd0}, pageValid}; // @[BTB.scala 272:28:freechips.rocketchip.system.DefaultRV32Config.fir@136309.6]
  assign _T_236 = _GEN_452 | tgtPageReplEn; // @[BTB.scala 272:28:freechips.rocketchip.system.DefaultRV32Config.fir@136309.6]
  assign _T_237 = _T_236 | idxPageReplEn; // @[BTB.scala 272:44:freechips.rocketchip.system.DefaultRV32Config.fir@136310.6]
  assign _GEN_338 = r_btb_updatePipe_valid ? _T_218 : {{4'd0}, isValid}; // @[BTB.scala 250:29:freechips.rocketchip.system.DefaultRV32Config.fir@136258.4]
  assign _T_238 = {pageHit, 1'h0}; // @[BTB.scala 275:29:freechips.rocketchip.system.DefaultRV32Config.fir@136313.4]
  assign _T_267 = _T_239 ? idxPages_0 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136342.4]
  assign _T_268 = _T_240 ? idxPages_1 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136343.4]
  assign _T_269 = _T_241 ? idxPages_2 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136344.4]
  assign _T_270 = _T_242 ? idxPages_3 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136345.4]
  assign _T_271 = _T_243 ? idxPages_4 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136346.4]
  assign _T_272 = _T_244 ? idxPages_5 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136347.4]
  assign _T_273 = _T_245 ? idxPages_6 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136348.4]
  assign _T_274 = _T_246 ? idxPages_7 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136349.4]
  assign _T_275 = _T_247 ? idxPages_8 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136350.4]
  assign _T_276 = _T_248 ? idxPages_9 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136351.4]
  assign _T_277 = _T_249 ? idxPages_10 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136352.4]
  assign _T_278 = _T_250 ? idxPages_11 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136353.4]
  assign _T_279 = _T_251 ? idxPages_12 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136354.4]
  assign _T_280 = _T_252 ? idxPages_13 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136355.4]
  assign _T_281 = _T_253 ? idxPages_14 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136356.4]
  assign _T_282 = _T_254 ? idxPages_15 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136357.4]
  assign _T_283 = _T_255 ? idxPages_16 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136358.4]
  assign _T_284 = _T_256 ? idxPages_17 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136359.4]
  assign _T_285 = _T_257 ? idxPages_18 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136360.4]
  assign _T_286 = _T_258 ? idxPages_19 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136361.4]
  assign _T_287 = _T_259 ? idxPages_20 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136362.4]
  assign _T_288 = _T_260 ? idxPages_21 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136363.4]
  assign _T_289 = _T_261 ? idxPages_22 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136364.4]
  assign _T_290 = _T_262 ? idxPages_23 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136365.4]
  assign _T_291 = _T_263 ? idxPages_24 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136366.4]
  assign _T_292 = _T_264 ? idxPages_25 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136367.4]
  assign _T_293 = _T_265 ? idxPages_26 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136368.4]
  assign _T_294 = _T_266 ? idxPages_27 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136369.4]
  assign _T_295 = _T_267 | _T_268; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136370.4]
  assign _T_296 = _T_295 | _T_269; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136371.4]
  assign _T_297 = _T_296 | _T_270; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136372.4]
  assign _T_298 = _T_297 | _T_271; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136373.4]
  assign _T_299 = _T_298 | _T_272; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136374.4]
  assign _T_300 = _T_299 | _T_273; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136375.4]
  assign _T_301 = _T_300 | _T_274; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136376.4]
  assign _T_302 = _T_301 | _T_275; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136377.4]
  assign _T_303 = _T_302 | _T_276; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136378.4]
  assign _T_304 = _T_303 | _T_277; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136379.4]
  assign _T_305 = _T_304 | _T_278; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136380.4]
  assign _T_306 = _T_305 | _T_279; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136381.4]
  assign _T_307 = _T_306 | _T_280; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136382.4]
  assign _T_308 = _T_307 | _T_281; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136383.4]
  assign _T_309 = _T_308 | _T_282; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136384.4]
  assign _T_310 = _T_309 | _T_283; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136385.4]
  assign _T_311 = _T_310 | _T_284; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136386.4]
  assign _T_312 = _T_311 | _T_285; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136387.4]
  assign _T_313 = _T_312 | _T_286; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136388.4]
  assign _T_314 = _T_313 | _T_287; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136389.4]
  assign _T_315 = _T_314 | _T_288; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136390.4]
  assign _T_316 = _T_315 | _T_289; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136391.4]
  assign _T_317 = _T_316 | _T_290; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136392.4]
  assign _T_318 = _T_317 | _T_291; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136393.4]
  assign _T_319 = _T_318 | _T_292; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136394.4]
  assign _T_320 = _T_319 | _T_293; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136395.4]
  assign _T_353 = _T_239 ? tgtPages_0 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136431.4]
  assign _T_354 = _T_240 ? tgtPages_1 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136432.4]
  assign _T_355 = _T_241 ? tgtPages_2 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136433.4]
  assign _T_356 = _T_242 ? tgtPages_3 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136434.4]
  assign _T_357 = _T_243 ? tgtPages_4 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136435.4]
  assign _T_358 = _T_244 ? tgtPages_5 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136436.4]
  assign _T_359 = _T_245 ? tgtPages_6 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136437.4]
  assign _T_360 = _T_246 ? tgtPages_7 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136438.4]
  assign _T_361 = _T_247 ? tgtPages_8 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136439.4]
  assign _T_362 = _T_248 ? tgtPages_9 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136440.4]
  assign _T_363 = _T_249 ? tgtPages_10 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136441.4]
  assign _T_364 = _T_250 ? tgtPages_11 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136442.4]
  assign _T_365 = _T_251 ? tgtPages_12 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136443.4]
  assign _T_366 = _T_252 ? tgtPages_13 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136444.4]
  assign _T_367 = _T_253 ? tgtPages_14 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136445.4]
  assign _T_368 = _T_254 ? tgtPages_15 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136446.4]
  assign _T_369 = _T_255 ? tgtPages_16 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136447.4]
  assign _T_370 = _T_256 ? tgtPages_17 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136448.4]
  assign _T_371 = _T_257 ? tgtPages_18 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136449.4]
  assign _T_372 = _T_258 ? tgtPages_19 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136450.4]
  assign _T_373 = _T_259 ? tgtPages_20 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136451.4]
  assign _T_374 = _T_260 ? tgtPages_21 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136452.4]
  assign _T_375 = _T_261 ? tgtPages_22 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136453.4]
  assign _T_376 = _T_262 ? tgtPages_23 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136454.4]
  assign _T_377 = _T_263 ? tgtPages_24 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136455.4]
  assign _T_378 = _T_264 ? tgtPages_25 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136456.4]
  assign _T_379 = _T_265 ? tgtPages_26 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136457.4]
  assign _T_380 = _T_266 ? tgtPages_27 : 3'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136458.4]
  assign _T_381 = _T_353 | _T_354; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136459.4]
  assign _T_382 = _T_381 | _T_355; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136460.4]
  assign _T_383 = _T_382 | _T_356; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136461.4]
  assign _T_384 = _T_383 | _T_357; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136462.4]
  assign _T_385 = _T_384 | _T_358; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136463.4]
  assign _T_386 = _T_385 | _T_359; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136464.4]
  assign _T_387 = _T_386 | _T_360; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136465.4]
  assign _T_388 = _T_387 | _T_361; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136466.4]
  assign _T_389 = _T_388 | _T_362; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136467.4]
  assign _T_390 = _T_389 | _T_363; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136468.4]
  assign _T_391 = _T_390 | _T_364; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136469.4]
  assign _T_392 = _T_391 | _T_365; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136470.4]
  assign _T_393 = _T_392 | _T_366; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136471.4]
  assign _T_394 = _T_393 | _T_367; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136472.4]
  assign _T_395 = _T_394 | _T_368; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136473.4]
  assign _T_396 = _T_395 | _T_369; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136474.4]
  assign _T_397 = _T_396 | _T_370; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136475.4]
  assign _T_398 = _T_397 | _T_371; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136476.4]
  assign _T_399 = _T_398 | _T_372; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136477.4]
  assign _T_400 = _T_399 | _T_373; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136478.4]
  assign _T_401 = _T_400 | _T_374; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136479.4]
  assign _T_402 = _T_401 | _T_375; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136480.4]
  assign _T_403 = _T_402 | _T_376; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136481.4]
  assign _T_404 = _T_403 | _T_377; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136482.4]
  assign _T_405 = _T_404 | _T_378; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136483.4]
  assign _T_406 = _T_405 | _T_379; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136484.4]
  assign _T_407 = _T_406 | _T_380; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136485.4]
  assign _T_437 = _T_239 ? tgts_0 : 13'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136516.4]
  assign _T_438 = _T_240 ? tgts_1 : 13'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136517.4]
  assign _T_439 = _T_241 ? tgts_2 : 13'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136518.4]
  assign _T_440 = _T_242 ? tgts_3 : 13'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136519.4]
  assign _T_441 = _T_243 ? tgts_4 : 13'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136520.4]
  assign _T_442 = _T_244 ? tgts_5 : 13'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136521.4]
  assign _T_443 = _T_245 ? tgts_6 : 13'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136522.4]
  assign _T_444 = _T_246 ? tgts_7 : 13'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136523.4]
  assign _T_445 = _T_247 ? tgts_8 : 13'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136524.4]
  assign _T_446 = _T_248 ? tgts_9 : 13'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136525.4]
  assign _T_447 = _T_249 ? tgts_10 : 13'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136526.4]
  assign _T_448 = _T_250 ? tgts_11 : 13'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136527.4]
  assign _T_449 = _T_251 ? tgts_12 : 13'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136528.4]
  assign _T_450 = _T_252 ? tgts_13 : 13'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136529.4]
  assign _T_451 = _T_253 ? tgts_14 : 13'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136530.4]
  assign _T_452 = _T_254 ? tgts_15 : 13'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136531.4]
  assign _T_453 = _T_255 ? tgts_16 : 13'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136532.4]
  assign _T_454 = _T_256 ? tgts_17 : 13'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136533.4]
  assign _T_455 = _T_257 ? tgts_18 : 13'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136534.4]
  assign _T_456 = _T_258 ? tgts_19 : 13'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136535.4]
  assign _T_457 = _T_259 ? tgts_20 : 13'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136536.4]
  assign _T_458 = _T_260 ? tgts_21 : 13'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136537.4]
  assign _T_459 = _T_261 ? tgts_22 : 13'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136538.4]
  assign _T_460 = _T_262 ? tgts_23 : 13'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136539.4]
  assign _T_461 = _T_263 ? tgts_24 : 13'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136540.4]
  assign _T_462 = _T_264 ? tgts_25 : 13'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136541.4]
  assign _T_463 = _T_265 ? tgts_26 : 13'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136542.4]
  assign _T_464 = _T_266 ? tgts_27 : 13'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136543.4]
  assign _T_465 = _T_437 | _T_438; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136544.4]
  assign _T_466 = _T_465 | _T_439; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136545.4]
  assign _T_467 = _T_466 | _T_440; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136546.4]
  assign _T_468 = _T_467 | _T_441; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136547.4]
  assign _T_469 = _T_468 | _T_442; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136548.4]
  assign _T_470 = _T_469 | _T_443; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136549.4]
  assign _T_471 = _T_470 | _T_444; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136550.4]
  assign _T_472 = _T_471 | _T_445; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136551.4]
  assign _T_473 = _T_472 | _T_446; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136552.4]
  assign _T_474 = _T_473 | _T_447; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136553.4]
  assign _T_475 = _T_474 | _T_448; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136554.4]
  assign _T_476 = _T_475 | _T_449; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136555.4]
  assign _T_477 = _T_476 | _T_450; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136556.4]
  assign _T_478 = _T_477 | _T_451; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136557.4]
  assign _T_479 = _T_478 | _T_452; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136558.4]
  assign _T_480 = _T_479 | _T_453; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136559.4]
  assign _T_481 = _T_480 | _T_454; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136560.4]
  assign _T_482 = _T_481 | _T_455; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136561.4]
  assign _T_483 = _T_482 | _T_456; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136562.4]
  assign _T_484 = _T_483 | _T_457; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136563.4]
  assign _T_485 = _T_484 | _T_458; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136564.4]
  assign _T_486 = _T_485 | _T_459; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136565.4]
  assign _T_487 = _T_486 | _T_460; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136566.4]
  assign _T_488 = _T_487 | _T_461; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136567.4]
  assign _T_489 = _T_488 | _T_462; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136568.4]
  assign _T_490 = _T_489 | _T_463; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136569.4]
  assign _T_493 = {_T_491, 1'h0}; // @[BTB.scala 277:82:freechips.rocketchip.system.DefaultRV32Config.fir@136573.4]
  assign _GEN_375 = 3'h1 == _T_407 ? pages_1 : pages_0; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@136574.4]
  assign _GEN_376 = 3'h2 == _T_407 ? pages_2 : _GEN_375; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@136574.4]
  assign _GEN_377 = 3'h3 == _T_407 ? pages_3 : _GEN_376; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@136574.4]
  assign _GEN_378 = 3'h4 == _T_407 ? pages_4 : _GEN_377; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@136574.4]
  assign _T_494 = {_GEN_379,_T_493}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@136574.4]
  assign _T_495 = idxHit[27:16]; // @[OneHot.scala 30:18:freechips.rocketchip.system.DefaultRV32Config.fir@136576.4]
  assign _T_496 = idxHit[15:0]; // @[OneHot.scala 31:18:freechips.rocketchip.system.DefaultRV32Config.fir@136577.4]
  assign _GEN_453 = {{4'd0}, _T_495}; // @[OneHot.scala 32:28:freechips.rocketchip.system.DefaultRV32Config.fir@136579.4]
  assign _T_499 = _T_498[15:8]; // @[OneHot.scala 30:18:freechips.rocketchip.system.DefaultRV32Config.fir@136580.4]
  assign _T_500 = _T_498[7:0]; // @[OneHot.scala 31:18:freechips.rocketchip.system.DefaultRV32Config.fir@136581.4]
  assign _T_503 = _T_502[7:4]; // @[OneHot.scala 30:18:freechips.rocketchip.system.DefaultRV32Config.fir@136584.4]
  assign _T_504 = _T_502[3:0]; // @[OneHot.scala 31:18:freechips.rocketchip.system.DefaultRV32Config.fir@136585.4]
  assign _T_507 = _T_506[3:2]; // @[OneHot.scala 30:18:freechips.rocketchip.system.DefaultRV32Config.fir@136588.4]
  assign _T_508 = _T_506[1:0]; // @[OneHot.scala 31:18:freechips.rocketchip.system.DefaultRV32Config.fir@136589.4]
  assign _T_511 = _T_510[1]; // @[CircuitMath.scala 30:8:freechips.rocketchip.system.DefaultRV32Config.fir@136592.4]
  assign _T_514 = {_T_501,_T_505,_T_509,_T_511}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@136595.4]
  assign _T_544 = _T_239 & brIdx_0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136626.4]
  assign _T_545 = _T_240 & brIdx_1; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136627.4]
  assign _T_546 = _T_241 & brIdx_2; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136628.4]
  assign _T_547 = _T_242 & brIdx_3; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136629.4]
  assign _T_548 = _T_243 & brIdx_4; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136630.4]
  assign _T_549 = _T_244 & brIdx_5; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136631.4]
  assign _T_550 = _T_245 & brIdx_6; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136632.4]
  assign _T_551 = _T_246 & brIdx_7; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136633.4]
  assign _T_552 = _T_247 & brIdx_8; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136634.4]
  assign _T_553 = _T_248 & brIdx_9; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136635.4]
  assign _T_554 = _T_249 & brIdx_10; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136636.4]
  assign _T_555 = _T_250 & brIdx_11; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136637.4]
  assign _T_556 = _T_251 & brIdx_12; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136638.4]
  assign _T_557 = _T_252 & brIdx_13; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136639.4]
  assign _T_558 = _T_253 & brIdx_14; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136640.4]
  assign _T_559 = _T_254 & brIdx_15; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136641.4]
  assign _T_560 = _T_255 & brIdx_16; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136642.4]
  assign _T_561 = _T_256 & brIdx_17; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136643.4]
  assign _T_562 = _T_257 & brIdx_18; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136644.4]
  assign _T_563 = _T_258 & brIdx_19; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136645.4]
  assign _T_564 = _T_259 & brIdx_20; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136646.4]
  assign _T_565 = _T_260 & brIdx_21; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136647.4]
  assign _T_566 = _T_261 & brIdx_22; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136648.4]
  assign _T_567 = _T_262 & brIdx_23; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136649.4]
  assign _T_568 = _T_263 & brIdx_24; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136650.4]
  assign _T_569 = _T_264 & brIdx_25; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136651.4]
  assign _T_570 = _T_265 & brIdx_26; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136652.4]
  assign _T_571 = _T_266 & brIdx_27; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136653.4]
  assign _T_572 = _T_544 | _T_545; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136654.4]
  assign _T_573 = _T_572 | _T_546; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136655.4]
  assign _T_574 = _T_573 | _T_547; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136656.4]
  assign _T_575 = _T_574 | _T_548; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136657.4]
  assign _T_576 = _T_575 | _T_549; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136658.4]
  assign _T_577 = _T_576 | _T_550; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136659.4]
  assign _T_578 = _T_577 | _T_551; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136660.4]
  assign _T_579 = _T_578 | _T_552; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136661.4]
  assign _T_580 = _T_579 | _T_553; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136662.4]
  assign _T_581 = _T_580 | _T_554; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136663.4]
  assign _T_582 = _T_581 | _T_555; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136664.4]
  assign _T_583 = _T_582 | _T_556; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136665.4]
  assign _T_584 = _T_583 | _T_557; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136666.4]
  assign _T_585 = _T_584 | _T_558; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136667.4]
  assign _T_586 = _T_585 | _T_559; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136668.4]
  assign _T_587 = _T_586 | _T_560; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136669.4]
  assign _T_588 = _T_587 | _T_561; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136670.4]
  assign _T_589 = _T_588 | _T_562; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136671.4]
  assign _T_590 = _T_589 | _T_563; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136672.4]
  assign _T_591 = _T_590 | _T_564; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136673.4]
  assign _T_592 = _T_591 | _T_565; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136674.4]
  assign _T_593 = _T_592 | _T_566; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136675.4]
  assign _T_594 = _T_593 | _T_567; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136676.4]
  assign _T_595 = _T_594 | _T_568; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136677.4]
  assign _T_596 = _T_595 | _T_569; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136678.4]
  assign _T_597 = _T_596 | _T_570; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@136679.4]
  assign _T_691 = idxHit[13:0]; // @[Misc.scala 179:37:freechips.rocketchip.system.DefaultRV32Config.fir@136778.4]
  assign _T_692 = _T_691[6:0]; // @[Misc.scala 179:37:freechips.rocketchip.system.DefaultRV32Config.fir@136779.4]
  assign _T_693 = _T_692[2:0]; // @[Misc.scala 179:37:freechips.rocketchip.system.DefaultRV32Config.fir@136780.4]
  assign _T_694 = _T_693[0]; // @[Misc.scala 179:37:freechips.rocketchip.system.DefaultRV32Config.fir@136781.4]
  assign _T_696 = _T_693[2:1]; // @[Misc.scala 180:39:freechips.rocketchip.system.DefaultRV32Config.fir@136783.4]
  assign _T_697 = _T_696[0]; // @[Misc.scala 179:37:freechips.rocketchip.system.DefaultRV32Config.fir@136784.4]
  assign _T_699 = _T_696[1]; // @[Misc.scala 180:39:freechips.rocketchip.system.DefaultRV32Config.fir@136786.4]
  assign _T_701 = _T_697 | _T_699; // @[Misc.scala 181:16:freechips.rocketchip.system.DefaultRV32Config.fir@136788.4]
  assign _T_703 = _T_697 & _T_699; // @[Misc.scala 181:61:freechips.rocketchip.system.DefaultRV32Config.fir@136790.4]
  assign _T_705 = _T_694 | _T_701; // @[Misc.scala 181:16:freechips.rocketchip.system.DefaultRV32Config.fir@136792.4]
  assign _T_707 = _T_694 & _T_701; // @[Misc.scala 181:61:freechips.rocketchip.system.DefaultRV32Config.fir@136794.4]
  assign _T_708 = _T_703 | _T_707; // @[Misc.scala 181:49:freechips.rocketchip.system.DefaultRV32Config.fir@136795.4]
  assign _T_709 = _T_692[6:3]; // @[Misc.scala 180:39:freechips.rocketchip.system.DefaultRV32Config.fir@136796.4]
  assign _T_710 = _T_709[1:0]; // @[Misc.scala 179:37:freechips.rocketchip.system.DefaultRV32Config.fir@136797.4]
  assign _T_711 = _T_710[0]; // @[Misc.scala 179:37:freechips.rocketchip.system.DefaultRV32Config.fir@136798.4]
  assign _T_713 = _T_710[1]; // @[Misc.scala 180:39:freechips.rocketchip.system.DefaultRV32Config.fir@136800.4]
  assign _T_715 = _T_711 | _T_713; // @[Misc.scala 181:16:freechips.rocketchip.system.DefaultRV32Config.fir@136802.4]
  assign _T_717 = _T_711 & _T_713; // @[Misc.scala 181:61:freechips.rocketchip.system.DefaultRV32Config.fir@136804.4]
  assign _T_719 = _T_709[3:2]; // @[Misc.scala 180:39:freechips.rocketchip.system.DefaultRV32Config.fir@136806.4]
  assign _T_720 = _T_719[0]; // @[Misc.scala 179:37:freechips.rocketchip.system.DefaultRV32Config.fir@136807.4]
  assign _T_722 = _T_719[1]; // @[Misc.scala 180:39:freechips.rocketchip.system.DefaultRV32Config.fir@136809.4]
  assign _T_724 = _T_720 | _T_722; // @[Misc.scala 181:16:freechips.rocketchip.system.DefaultRV32Config.fir@136811.4]
  assign _T_726 = _T_720 & _T_722; // @[Misc.scala 181:61:freechips.rocketchip.system.DefaultRV32Config.fir@136813.4]
  assign _T_728 = _T_715 | _T_724; // @[Misc.scala 181:16:freechips.rocketchip.system.DefaultRV32Config.fir@136815.4]
  assign _T_729 = _T_717 | _T_726; // @[Misc.scala 181:37:freechips.rocketchip.system.DefaultRV32Config.fir@136816.4]
  assign _T_730 = _T_715 & _T_724; // @[Misc.scala 181:61:freechips.rocketchip.system.DefaultRV32Config.fir@136817.4]
  assign _T_731 = _T_729 | _T_730; // @[Misc.scala 181:49:freechips.rocketchip.system.DefaultRV32Config.fir@136818.4]
  assign _T_732 = _T_705 | _T_728; // @[Misc.scala 181:16:freechips.rocketchip.system.DefaultRV32Config.fir@136819.4]
  assign _T_733 = _T_708 | _T_731; // @[Misc.scala 181:37:freechips.rocketchip.system.DefaultRV32Config.fir@136820.4]
  assign _T_734 = _T_705 & _T_728; // @[Misc.scala 181:61:freechips.rocketchip.system.DefaultRV32Config.fir@136821.4]
  assign _T_735 = _T_733 | _T_734; // @[Misc.scala 181:49:freechips.rocketchip.system.DefaultRV32Config.fir@136822.4]
  assign _T_736 = _T_691[13:7]; // @[Misc.scala 180:39:freechips.rocketchip.system.DefaultRV32Config.fir@136823.4]
  assign _T_737 = _T_736[2:0]; // @[Misc.scala 179:37:freechips.rocketchip.system.DefaultRV32Config.fir@136824.4]
  assign _T_738 = _T_737[0]; // @[Misc.scala 179:37:freechips.rocketchip.system.DefaultRV32Config.fir@136825.4]
  assign _T_740 = _T_737[2:1]; // @[Misc.scala 180:39:freechips.rocketchip.system.DefaultRV32Config.fir@136827.4]
  assign _T_741 = _T_740[0]; // @[Misc.scala 179:37:freechips.rocketchip.system.DefaultRV32Config.fir@136828.4]
  assign _T_743 = _T_740[1]; // @[Misc.scala 180:39:freechips.rocketchip.system.DefaultRV32Config.fir@136830.4]
  assign _T_745 = _T_741 | _T_743; // @[Misc.scala 181:16:freechips.rocketchip.system.DefaultRV32Config.fir@136832.4]
  assign _T_747 = _T_741 & _T_743; // @[Misc.scala 181:61:freechips.rocketchip.system.DefaultRV32Config.fir@136834.4]
  assign _T_749 = _T_738 | _T_745; // @[Misc.scala 181:16:freechips.rocketchip.system.DefaultRV32Config.fir@136836.4]
  assign _T_751 = _T_738 & _T_745; // @[Misc.scala 181:61:freechips.rocketchip.system.DefaultRV32Config.fir@136838.4]
  assign _T_752 = _T_747 | _T_751; // @[Misc.scala 181:49:freechips.rocketchip.system.DefaultRV32Config.fir@136839.4]
  assign _T_753 = _T_736[6:3]; // @[Misc.scala 180:39:freechips.rocketchip.system.DefaultRV32Config.fir@136840.4]
  assign _T_754 = _T_753[1:0]; // @[Misc.scala 179:37:freechips.rocketchip.system.DefaultRV32Config.fir@136841.4]
  assign _T_755 = _T_754[0]; // @[Misc.scala 179:37:freechips.rocketchip.system.DefaultRV32Config.fir@136842.4]
  assign _T_757 = _T_754[1]; // @[Misc.scala 180:39:freechips.rocketchip.system.DefaultRV32Config.fir@136844.4]
  assign _T_759 = _T_755 | _T_757; // @[Misc.scala 181:16:freechips.rocketchip.system.DefaultRV32Config.fir@136846.4]
  assign _T_761 = _T_755 & _T_757; // @[Misc.scala 181:61:freechips.rocketchip.system.DefaultRV32Config.fir@136848.4]
  assign _T_763 = _T_753[3:2]; // @[Misc.scala 180:39:freechips.rocketchip.system.DefaultRV32Config.fir@136850.4]
  assign _T_764 = _T_763[0]; // @[Misc.scala 179:37:freechips.rocketchip.system.DefaultRV32Config.fir@136851.4]
  assign _T_766 = _T_763[1]; // @[Misc.scala 180:39:freechips.rocketchip.system.DefaultRV32Config.fir@136853.4]
  assign _T_768 = _T_764 | _T_766; // @[Misc.scala 181:16:freechips.rocketchip.system.DefaultRV32Config.fir@136855.4]
  assign _T_770 = _T_764 & _T_766; // @[Misc.scala 181:61:freechips.rocketchip.system.DefaultRV32Config.fir@136857.4]
  assign _T_772 = _T_759 | _T_768; // @[Misc.scala 181:16:freechips.rocketchip.system.DefaultRV32Config.fir@136859.4]
  assign _T_773 = _T_761 | _T_770; // @[Misc.scala 181:37:freechips.rocketchip.system.DefaultRV32Config.fir@136860.4]
  assign _T_774 = _T_759 & _T_768; // @[Misc.scala 181:61:freechips.rocketchip.system.DefaultRV32Config.fir@136861.4]
  assign _T_775 = _T_773 | _T_774; // @[Misc.scala 181:49:freechips.rocketchip.system.DefaultRV32Config.fir@136862.4]
  assign _T_776 = _T_749 | _T_772; // @[Misc.scala 181:16:freechips.rocketchip.system.DefaultRV32Config.fir@136863.4]
  assign _T_777 = _T_752 | _T_775; // @[Misc.scala 181:37:freechips.rocketchip.system.DefaultRV32Config.fir@136864.4]
  assign _T_778 = _T_749 & _T_772; // @[Misc.scala 181:61:freechips.rocketchip.system.DefaultRV32Config.fir@136865.4]
  assign _T_779 = _T_777 | _T_778; // @[Misc.scala 181:49:freechips.rocketchip.system.DefaultRV32Config.fir@136866.4]
  assign _T_780 = _T_732 | _T_776; // @[Misc.scala 181:16:freechips.rocketchip.system.DefaultRV32Config.fir@136867.4]
  assign _T_781 = _T_735 | _T_779; // @[Misc.scala 181:37:freechips.rocketchip.system.DefaultRV32Config.fir@136868.4]
  assign _T_782 = _T_732 & _T_776; // @[Misc.scala 181:61:freechips.rocketchip.system.DefaultRV32Config.fir@136869.4]
  assign _T_783 = _T_781 | _T_782; // @[Misc.scala 181:49:freechips.rocketchip.system.DefaultRV32Config.fir@136870.4]
  assign _T_784 = idxHit[27:14]; // @[Misc.scala 180:39:freechips.rocketchip.system.DefaultRV32Config.fir@136871.4]
  assign _T_785 = _T_784[6:0]; // @[Misc.scala 179:37:freechips.rocketchip.system.DefaultRV32Config.fir@136872.4]
  assign _T_786 = _T_785[2:0]; // @[Misc.scala 179:37:freechips.rocketchip.system.DefaultRV32Config.fir@136873.4]
  assign _T_787 = _T_786[0]; // @[Misc.scala 179:37:freechips.rocketchip.system.DefaultRV32Config.fir@136874.4]
  assign _T_789 = _T_786[2:1]; // @[Misc.scala 180:39:freechips.rocketchip.system.DefaultRV32Config.fir@136876.4]
  assign _T_790 = _T_789[0]; // @[Misc.scala 179:37:freechips.rocketchip.system.DefaultRV32Config.fir@136877.4]
  assign _T_792 = _T_789[1]; // @[Misc.scala 180:39:freechips.rocketchip.system.DefaultRV32Config.fir@136879.4]
  assign _T_794 = _T_790 | _T_792; // @[Misc.scala 181:16:freechips.rocketchip.system.DefaultRV32Config.fir@136881.4]
  assign _T_796 = _T_790 & _T_792; // @[Misc.scala 181:61:freechips.rocketchip.system.DefaultRV32Config.fir@136883.4]
  assign _T_798 = _T_787 | _T_794; // @[Misc.scala 181:16:freechips.rocketchip.system.DefaultRV32Config.fir@136885.4]
  assign _T_800 = _T_787 & _T_794; // @[Misc.scala 181:61:freechips.rocketchip.system.DefaultRV32Config.fir@136887.4]
  assign _T_801 = _T_796 | _T_800; // @[Misc.scala 181:49:freechips.rocketchip.system.DefaultRV32Config.fir@136888.4]
  assign _T_802 = _T_785[6:3]; // @[Misc.scala 180:39:freechips.rocketchip.system.DefaultRV32Config.fir@136889.4]
  assign _T_803 = _T_802[1:0]; // @[Misc.scala 179:37:freechips.rocketchip.system.DefaultRV32Config.fir@136890.4]
  assign _T_804 = _T_803[0]; // @[Misc.scala 179:37:freechips.rocketchip.system.DefaultRV32Config.fir@136891.4]
  assign _T_806 = _T_803[1]; // @[Misc.scala 180:39:freechips.rocketchip.system.DefaultRV32Config.fir@136893.4]
  assign _T_808 = _T_804 | _T_806; // @[Misc.scala 181:16:freechips.rocketchip.system.DefaultRV32Config.fir@136895.4]
  assign _T_810 = _T_804 & _T_806; // @[Misc.scala 181:61:freechips.rocketchip.system.DefaultRV32Config.fir@136897.4]
  assign _T_812 = _T_802[3:2]; // @[Misc.scala 180:39:freechips.rocketchip.system.DefaultRV32Config.fir@136899.4]
  assign _T_813 = _T_812[0]; // @[Misc.scala 179:37:freechips.rocketchip.system.DefaultRV32Config.fir@136900.4]
  assign _T_815 = _T_812[1]; // @[Misc.scala 180:39:freechips.rocketchip.system.DefaultRV32Config.fir@136902.4]
  assign _T_817 = _T_813 | _T_815; // @[Misc.scala 181:16:freechips.rocketchip.system.DefaultRV32Config.fir@136904.4]
  assign _T_819 = _T_813 & _T_815; // @[Misc.scala 181:61:freechips.rocketchip.system.DefaultRV32Config.fir@136906.4]
  assign _T_821 = _T_808 | _T_817; // @[Misc.scala 181:16:freechips.rocketchip.system.DefaultRV32Config.fir@136908.4]
  assign _T_822 = _T_810 | _T_819; // @[Misc.scala 181:37:freechips.rocketchip.system.DefaultRV32Config.fir@136909.4]
  assign _T_823 = _T_808 & _T_817; // @[Misc.scala 181:61:freechips.rocketchip.system.DefaultRV32Config.fir@136910.4]
  assign _T_824 = _T_822 | _T_823; // @[Misc.scala 181:49:freechips.rocketchip.system.DefaultRV32Config.fir@136911.4]
  assign _T_825 = _T_798 | _T_821; // @[Misc.scala 181:16:freechips.rocketchip.system.DefaultRV32Config.fir@136912.4]
  assign _T_826 = _T_801 | _T_824; // @[Misc.scala 181:37:freechips.rocketchip.system.DefaultRV32Config.fir@136913.4]
  assign _T_827 = _T_798 & _T_821; // @[Misc.scala 181:61:freechips.rocketchip.system.DefaultRV32Config.fir@136914.4]
  assign _T_828 = _T_826 | _T_827; // @[Misc.scala 181:49:freechips.rocketchip.system.DefaultRV32Config.fir@136915.4]
  assign _T_829 = _T_784[13:7]; // @[Misc.scala 180:39:freechips.rocketchip.system.DefaultRV32Config.fir@136916.4]
  assign _T_830 = _T_829[2:0]; // @[Misc.scala 179:37:freechips.rocketchip.system.DefaultRV32Config.fir@136917.4]
  assign _T_831 = _T_830[0]; // @[Misc.scala 179:37:freechips.rocketchip.system.DefaultRV32Config.fir@136918.4]
  assign _T_833 = _T_830[2:1]; // @[Misc.scala 180:39:freechips.rocketchip.system.DefaultRV32Config.fir@136920.4]
  assign _T_834 = _T_833[0]; // @[Misc.scala 179:37:freechips.rocketchip.system.DefaultRV32Config.fir@136921.4]
  assign _T_836 = _T_833[1]; // @[Misc.scala 180:39:freechips.rocketchip.system.DefaultRV32Config.fir@136923.4]
  assign _T_838 = _T_834 | _T_836; // @[Misc.scala 181:16:freechips.rocketchip.system.DefaultRV32Config.fir@136925.4]
  assign _T_840 = _T_834 & _T_836; // @[Misc.scala 181:61:freechips.rocketchip.system.DefaultRV32Config.fir@136927.4]
  assign _T_842 = _T_831 | _T_838; // @[Misc.scala 181:16:freechips.rocketchip.system.DefaultRV32Config.fir@136929.4]
  assign _T_844 = _T_831 & _T_838; // @[Misc.scala 181:61:freechips.rocketchip.system.DefaultRV32Config.fir@136931.4]
  assign _T_845 = _T_840 | _T_844; // @[Misc.scala 181:49:freechips.rocketchip.system.DefaultRV32Config.fir@136932.4]
  assign _T_846 = _T_829[6:3]; // @[Misc.scala 180:39:freechips.rocketchip.system.DefaultRV32Config.fir@136933.4]
  assign _T_847 = _T_846[1:0]; // @[Misc.scala 179:37:freechips.rocketchip.system.DefaultRV32Config.fir@136934.4]
  assign _T_848 = _T_847[0]; // @[Misc.scala 179:37:freechips.rocketchip.system.DefaultRV32Config.fir@136935.4]
  assign _T_850 = _T_847[1]; // @[Misc.scala 180:39:freechips.rocketchip.system.DefaultRV32Config.fir@136937.4]
  assign _T_852 = _T_848 | _T_850; // @[Misc.scala 181:16:freechips.rocketchip.system.DefaultRV32Config.fir@136939.4]
  assign _T_854 = _T_848 & _T_850; // @[Misc.scala 181:61:freechips.rocketchip.system.DefaultRV32Config.fir@136941.4]
  assign _T_856 = _T_846[3:2]; // @[Misc.scala 180:39:freechips.rocketchip.system.DefaultRV32Config.fir@136943.4]
  assign _T_857 = _T_856[0]; // @[Misc.scala 179:37:freechips.rocketchip.system.DefaultRV32Config.fir@136944.4]
  assign _T_859 = _T_856[1]; // @[Misc.scala 180:39:freechips.rocketchip.system.DefaultRV32Config.fir@136946.4]
  assign _T_861 = _T_857 | _T_859; // @[Misc.scala 181:16:freechips.rocketchip.system.DefaultRV32Config.fir@136948.4]
  assign _T_863 = _T_857 & _T_859; // @[Misc.scala 181:61:freechips.rocketchip.system.DefaultRV32Config.fir@136950.4]
  assign _T_865 = _T_852 | _T_861; // @[Misc.scala 181:16:freechips.rocketchip.system.DefaultRV32Config.fir@136952.4]
  assign _T_866 = _T_854 | _T_863; // @[Misc.scala 181:37:freechips.rocketchip.system.DefaultRV32Config.fir@136953.4]
  assign _T_867 = _T_852 & _T_861; // @[Misc.scala 181:61:freechips.rocketchip.system.DefaultRV32Config.fir@136954.4]
  assign _T_868 = _T_866 | _T_867; // @[Misc.scala 181:49:freechips.rocketchip.system.DefaultRV32Config.fir@136955.4]
  assign _T_869 = _T_842 | _T_865; // @[Misc.scala 181:16:freechips.rocketchip.system.DefaultRV32Config.fir@136956.4]
  assign _T_870 = _T_845 | _T_868; // @[Misc.scala 181:37:freechips.rocketchip.system.DefaultRV32Config.fir@136957.4]
  assign _T_871 = _T_842 & _T_865; // @[Misc.scala 181:61:freechips.rocketchip.system.DefaultRV32Config.fir@136958.4]
  assign _T_872 = _T_870 | _T_871; // @[Misc.scala 181:49:freechips.rocketchip.system.DefaultRV32Config.fir@136959.4]
  assign _T_873 = _T_825 | _T_869; // @[Misc.scala 181:16:freechips.rocketchip.system.DefaultRV32Config.fir@136960.4]
  assign _T_874 = _T_828 | _T_872; // @[Misc.scala 181:37:freechips.rocketchip.system.DefaultRV32Config.fir@136961.4]
  assign _T_875 = _T_825 & _T_869; // @[Misc.scala 181:61:freechips.rocketchip.system.DefaultRV32Config.fir@136962.4]
  assign _T_876 = _T_874 | _T_875; // @[Misc.scala 181:49:freechips.rocketchip.system.DefaultRV32Config.fir@136963.4]
  assign _T_878 = _T_783 | _T_876; // @[Misc.scala 181:37:freechips.rocketchip.system.DefaultRV32Config.fir@136965.4]
  assign _T_879 = _T_780 & _T_873; // @[Misc.scala 181:61:freechips.rocketchip.system.DefaultRV32Config.fir@136966.4]
  assign _T_881 = ~ idxHit; // @[BTB.scala 285:26:freechips.rocketchip.system.DefaultRV32Config.fir@136969.6]
  assign _GEN_380 = _T_880 ? {{4'd0}, _T_882} : _GEN_338; // @[BTB.scala 284:37:freechips.rocketchip.system.DefaultRV32Config.fir@136968.4]
  assign _T_918 = {_T_891,_T_890,_T_889,_T_888,_T_887,_T_886,_T_885}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@137011.4]
  assign _T_925 = {_T_898,_T_897,_T_896,_T_895,_T_894,_T_893,_T_892,_T_918}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@137018.4]
  assign _T_931 = {_T_905,_T_904,_T_903,_T_902,_T_901,_T_900,_T_899}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@137024.4]
  assign _T_940 = idxHit & _T_939; // @[BTB.scala 293:28:freechips.rocketchip.system.DefaultRV32Config.fir@137033.4]
  assign _T_941 = _T_940 != 28'h0; // @[BTB.scala 293:72:freechips.rocketchip.system.DefaultRV32Config.fir@137034.4]
  assign _T_944 = _T_943[8:0]; // @[BTB.scala 87:9:freechips.rocketchip.system.DefaultRV32Config.fir@137038.4]
  assign _T_945 = _T_943[29:9]; // @[BTB.scala 87:48:freechips.rocketchip.system.DefaultRV32Config.fir@137039.4]
  assign _T_946 = _T_945[1:0]; // @[BTB.scala 87:77:freechips.rocketchip.system.DefaultRV32Config.fir@137040.4]
  assign _GEN_454 = {{7'd0}, _T_946}; // @[BTB.scala 87:42:freechips.rocketchip.system.DefaultRV32Config.fir@137041.4]
  assign _T_947 = _T_944 ^ _GEN_454; // @[BTB.scala 87:42:freechips.rocketchip.system.DefaultRV32Config.fir@137041.4]
  assign _T_949 = _T_948[7:5]; // @[BTB.scala 83:19:freechips.rocketchip.system.DefaultRV32Config.fir@137043.4]
  assign _T_950 = {_T_949, 6'h0}; // @[BTB.scala 89:44:freechips.rocketchip.system.DefaultRV32Config.fir@137044.4]
  assign _T_954 = _T_884[7:1]; // @[BTB.scala 110:35:freechips.rocketchip.system.DefaultRV32Config.fir@137051.6]
  assign _T_955 = {io_bht_advance_bits_bht_value,_T_954}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@137052.6]
  assign _T_956 = io_bht_update_bits_pc[31:2]; // @[BTB.scala 86:21:freechips.rocketchip.system.DefaultRV32Config.fir@137057.8]
  assign _T_957 = _T_956[8:0]; // @[BTB.scala 87:9:freechips.rocketchip.system.DefaultRV32Config.fir@137058.8]
  assign _T_958 = _T_956[29:9]; // @[BTB.scala 87:48:freechips.rocketchip.system.DefaultRV32Config.fir@137059.8]
  assign _T_959 = _T_958[1:0]; // @[BTB.scala 87:77:freechips.rocketchip.system.DefaultRV32Config.fir@137060.8]
  assign _GEN_455 = {{7'd0}, _T_959}; // @[BTB.scala 87:42:freechips.rocketchip.system.DefaultRV32Config.fir@137061.8]
  assign _T_960 = _T_957 ^ _GEN_455; // @[BTB.scala 87:42:freechips.rocketchip.system.DefaultRV32Config.fir@137061.8]
  assign _T_961 = 8'hdd * io_bht_update_bits_prediction_history; // @[BTB.scala 83:12:freechips.rocketchip.system.DefaultRV32Config.fir@137062.8]
  assign _T_962 = _T_961[7:5]; // @[BTB.scala 83:19:freechips.rocketchip.system.DefaultRV32Config.fir@137063.8]
  assign _T_963 = {_T_962, 6'h0}; // @[BTB.scala 89:44:freechips.rocketchip.system.DefaultRV32Config.fir@137064.8]
  assign _T_966 = io_bht_update_bits_prediction_history[7:1]; // @[BTB.scala 107:37:freechips.rocketchip.system.DefaultRV32Config.fir@137069.10]
  assign _T_967 = {io_bht_update_bits_taken,_T_966}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@137070.10]
  assign _T_942_value = _T_883__T_952_data; // @[BTB.scala 92:19:freechips.rocketchip.system.DefaultRV32Config.fir@137035.4 BTB.scala 93:15:freechips.rocketchip.system.DefaultRV32Config.fir@137047.4]
  assign _T_969 = _T_942_value == 1'h0; // @[BTB.scala 308:11:freechips.rocketchip.system.DefaultRV32Config.fir@137080.4]
  assign _T_970 = _T_969 & _T_941; // @[BTB.scala 308:22:freechips.rocketchip.system.DefaultRV32Config.fir@137081.4]
  assign _T_1007 = {_T_980,_T_979,_T_978,_T_977,_T_976,_T_975,_T_974}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@137122.4]
  assign _T_1014 = {_T_987,_T_986,_T_985,_T_984,_T_983,_T_982,_T_981,_T_1007}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@137129.4]
  assign _T_1020 = {_T_994,_T_993,_T_992,_T_991,_T_990,_T_989,_T_988}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@137135.4]
  assign _T_1029 = idxHit & _T_1028; // @[BTB.scala 314:26:freechips.rocketchip.system.DefaultRV32Config.fir@137144.4]
  assign _T_1030 = _T_1029 != 28'h0; // @[BTB.scala 314:67:freechips.rocketchip.system.DefaultRV32Config.fir@137145.4]
  assign _T_1031 = _T_971 == 3'h0; // @[BTB.scala 55:29:freechips.rocketchip.system.DefaultRV32Config.fir@137146.4]
  assign _GEN_399 = 3'h1 == _T_972 ? _T_973_1 : _T_973_0; // @[BTB.scala 316:22:freechips.rocketchip.system.DefaultRV32Config.fir@137149.4]
  assign _GEN_400 = 3'h2 == _T_972 ? _T_973_2 : _GEN_399; // @[BTB.scala 316:22:freechips.rocketchip.system.DefaultRV32Config.fir@137149.4]
  assign _GEN_401 = 3'h3 == _T_972 ? _T_973_3 : _GEN_400; // @[BTB.scala 316:22:freechips.rocketchip.system.DefaultRV32Config.fir@137149.4]
  assign _GEN_402 = 3'h4 == _T_972 ? _T_973_4 : _GEN_401; // @[BTB.scala 316:22:freechips.rocketchip.system.DefaultRV32Config.fir@137149.4]
  assign _T_1035 = _T_1032 & _T_1030; // @[BTB.scala 317:24:freechips.rocketchip.system.DefaultRV32Config.fir@137152.4]
  assign _T_1037 = _T_971 < 3'h6; // @[BTB.scala 44:17:freechips.rocketchip.system.DefaultRV32Config.fir@137159.8]
  assign _T_1039 = _T_971 + 3'h1; // @[BTB.scala 44:42:freechips.rocketchip.system.DefaultRV32Config.fir@137162.10]
  assign _T_1043 = _T_972 + 3'h1; // @[BTB.scala 45:62:freechips.rocketchip.system.DefaultRV32Config.fir@137168.8]
  assign _T_1049 = _T_971 - 3'h1; // @[BTB.scala 51:20:freechips.rocketchip.system.DefaultRV32Config.fir@137180.12]
  assign _T_1050 = _T_972 > 3'h0; // @[BTB.scala 52:42:freechips.rocketchip.system.DefaultRV32Config.fir@137182.12]
  assign _T_1053 = _T_972 - 3'h1; // @[BTB.scala 52:50:freechips.rocketchip.system.DefaultRV32Config.fir@137185.12]
  always @(posedge clock) begin
  end
endmodule
`endif // __BTB
