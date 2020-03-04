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
  reg  _T_883 [0:511];
  reg [31:0] _RAND_0;
  wire  _T_883__T_952_data;
  wire [8:0] _T_883__T_952_addr;
  wire  _T_883__T_965_data;
  wire [8:0] _T_883__T_965_addr;
  wire  _T_883__T_965_mask;
  wire  _T_883__T_965_en;
  reg [12:0] idxs_0;
  reg [31:0] _RAND_1;
  reg [12:0] idxs_1;
  reg [31:0] _RAND_2;
  reg [12:0] idxs_2; 
  reg [31:0] _RAND_3;
  reg [12:0] idxs_3; 
  reg [31:0] _RAND_4;
  reg [12:0] idxs_4; 
  reg [31:0] _RAND_5;
  reg [12:0] idxs_5; 
  reg [31:0] _RAND_6;
  reg [12:0] idxs_6; 
  reg [31:0] _RAND_7;
  reg [12:0] idxs_7; 
  reg [31:0] _RAND_8;
  reg [12:0] idxs_8; 
  reg [31:0] _RAND_9;
  reg [12:0] idxs_9; 
  reg [31:0] _RAND_10;
  reg [12:0] idxs_10; 
  reg [31:0] _RAND_11;
  reg [12:0] idxs_11; 
  reg [31:0] _RAND_12;
  reg [12:0] idxs_12; 
  reg [31:0] _RAND_13;
  reg [12:0] idxs_13; 
  reg [31:0] _RAND_14;
  reg [12:0] idxs_14; 
  reg [31:0] _RAND_15;
  reg [12:0] idxs_15; 
  reg [31:0] _RAND_16;
  reg [12:0] idxs_16; 
  reg [31:0] _RAND_17;
  reg [12:0] idxs_17; 
  reg [31:0] _RAND_18;
  reg [12:0] idxs_18; 
  reg [31:0] _RAND_19;
  reg [12:0] idxs_19; 
  reg [31:0] _RAND_20;
  reg [12:0] idxs_20; 
  reg [31:0] _RAND_21;
  reg [12:0] idxs_21; 
  reg [31:0] _RAND_22;
  reg [12:0] idxs_22; 
  reg [31:0] _RAND_23;
  reg [12:0] idxs_23; 
  reg [31:0] _RAND_24;
  reg [12:0] idxs_24; 
  reg [31:0] _RAND_25;
  reg [12:0] idxs_25; 
  reg [31:0] _RAND_26;
  reg [12:0] idxs_26; 
  reg [31:0] _RAND_27;
  reg [12:0] idxs_27; 
  reg [31:0] _RAND_28;
  reg [2:0] idxPages_0;
  reg [31:0] _RAND_29;
  reg [2:0] idxPages_1;
  reg [31:0] _RAND_30;
  reg [2:0] idxPages_2;
  reg [31:0] _RAND_31;
  reg [2:0] idxPages_3;
  reg [31:0] _RAND_32;
  reg [2:0] idxPages_4;
  reg [31:0] _RAND_33;
  reg [2:0] idxPages_5;
  reg [31:0] _RAND_34;
  reg [2:0] idxPages_6;
  reg [31:0] _RAND_35;
  reg [2:0] idxPages_7;
  reg [31:0] _RAND_36;
  reg [2:0] idxPages_8;
  reg [31:0] _RAND_37;
  reg [2:0] idxPages_9;
  reg [31:0] _RAND_38;
  reg [2:0] idxPages_10;
  reg [31:0] _RAND_39;
  reg [2:0] idxPages_11;
  reg [31:0] _RAND_40;
  reg [2:0] idxPages_12;
  reg [31:0] _RAND_41;
  reg [2:0] idxPages_13;
  reg [31:0] _RAND_42;
  reg [2:0] idxPages_14;
  reg [31:0] _RAND_43;
  reg [2:0] idxPages_15;
  reg [31:0] _RAND_44;
  reg [2:0] idxPages_16;
  reg [31:0] _RAND_45;
  reg [2:0] idxPages_17;
  reg [31:0] _RAND_46;
  reg [2:0] idxPages_18;
  reg [31:0] _RAND_47;
  reg [2:0] idxPages_19;
  reg [31:0] _RAND_48;
  reg [2:0] idxPages_20;
  reg [31:0] _RAND_49;
  reg [2:0] idxPages_21;
  reg [31:0] _RAND_50;
  reg [2:0] idxPages_22;
  reg [31:0] _RAND_51;
  reg [2:0] idxPages_23;
  reg [31:0] _RAND_52;
  reg [2:0] idxPages_24;
  reg [31:0] _RAND_53;
  reg [2:0] idxPages_25;
  reg [31:0] _RAND_54;
  reg [2:0] idxPages_26;
  reg [31:0] _RAND_55;
  reg [2:0] idxPages_27;
  reg [31:0] _RAND_56;
  reg [12:0] tgts_0;
  reg [31:0] _RAND_57;
  reg [12:0] tgts_1;
  reg [31:0] _RAND_58;
  reg [12:0] tgts_2;
  reg [31:0] _RAND_59;
  reg [12:0] tgts_3;
  reg [31:0] _RAND_60;
  reg [12:0] tgts_4;
  reg [31:0] _RAND_61;
  reg [12:0] tgts_5;
  reg [31:0] _RAND_62;
  reg [12:0] tgts_6;
  reg [31:0] _RAND_63;
  reg [12:0] tgts_7;
  reg [31:0] _RAND_64;
  reg [12:0] tgts_8;
  reg [31:0] _RAND_65;
  reg [12:0] tgts_9;
  reg [31:0] _RAND_66;
  reg [12:0] tgts_10;
  reg [31:0] _RAND_67;
  reg [12:0] tgts_11;
  reg [31:0] _RAND_68;
  reg [12:0] tgts_12;
  reg [31:0] _RAND_69;
  reg [12:0] tgts_13;
  reg [31:0] _RAND_70;
  reg [12:0] tgts_14;
  reg [31:0] _RAND_71;
  reg [12:0] tgts_15;
  reg [31:0] _RAND_72;
  reg [12:0] tgts_16;
  reg [31:0] _RAND_73;
  reg [12:0] tgts_17;
  reg [31:0] _RAND_74;
  reg [12:0] tgts_18;
  reg [31:0] _RAND_75;
  reg [12:0] tgts_19;
  reg [31:0] _RAND_76;
  reg [12:0] tgts_20;
  reg [31:0] _RAND_77;
  reg [12:0] tgts_21;
  reg [31:0] _RAND_78;
  reg [12:0] tgts_22;
  reg [31:0] _RAND_79;
  reg [12:0] tgts_23;
  reg [31:0] _RAND_80;
  reg [12:0] tgts_24;
  reg [31:0] _RAND_81;
  reg [12:0] tgts_25;
  reg [31:0] _RAND_82;
  reg [12:0] tgts_26;
  reg [31:0] _RAND_83;
  reg [12:0] tgts_27;
  reg [31:0] _RAND_84;
  reg [2:0] tgtPages_0;
  reg [31:0] _RAND_85;
  reg [2:0] tgtPages_1;
  reg [31:0] _RAND_86;
  reg [2:0] tgtPages_2;
  reg [31:0] _RAND_87;
  reg [2:0] tgtPages_3;
  reg [31:0] _RAND_88;
  reg [2:0] tgtPages_4;
  reg [31:0] _RAND_89;
  reg [2:0] tgtPages_5;
  reg [31:0] _RAND_90;
  reg [2:0] tgtPages_6;
  reg [31:0] _RAND_91;
  reg [2:0] tgtPages_7;
  reg [31:0] _RAND_92;
  reg [2:0] tgtPages_8;
  reg [31:0] _RAND_93;
  reg [2:0] tgtPages_9;
  reg [31:0] _RAND_94;
  reg [2:0] tgtPages_10;
  reg [31:0] _RAND_95;
  reg [2:0] tgtPages_11;
  reg [31:0] _RAND_96;
  reg [2:0] tgtPages_12;
  reg [31:0] _RAND_97;
  reg [2:0] tgtPages_13;
  reg [31:0] _RAND_98;
  reg [2:0] tgtPages_14;
  reg [31:0] _RAND_99;
  reg [2:0] tgtPages_15;
  reg [31:0] _RAND_100;
  reg [2:0] tgtPages_16;
  reg [31:0] _RAND_101;
  reg [2:0] tgtPages_17;
  reg [31:0] _RAND_102;
  reg [2:0] tgtPages_18;
  reg [31:0] _RAND_103;
  reg [2:0] tgtPages_19;
  reg [31:0] _RAND_104;
  reg [2:0] tgtPages_20;
  reg [31:0] _RAND_105;
  reg [2:0] tgtPages_21;
  reg [31:0] _RAND_106;
  reg [2:0] tgtPages_22;
  reg [31:0] _RAND_107;
  reg [2:0] tgtPages_23;
  reg [31:0] _RAND_108;
  reg [2:0] tgtPages_24;
  reg [31:0] _RAND_109;
  reg [2:0] tgtPages_25;
  reg [31:0] _RAND_110;
  reg [2:0] tgtPages_26;
  reg [31:0] _RAND_111;
  reg [2:0] tgtPages_27;
  reg [31:0] _RAND_112;
  reg [17:0] pages_0;
  reg [31:0] _RAND_113;
  reg [17:0] pages_1;
  reg [31:0] _RAND_114;
  reg [17:0] pages_2;
  reg [31:0] _RAND_115;
  reg [17:0] pages_3;
  reg [31:0] _RAND_116;
  reg [17:0] pages_4;
  reg [31:0] _RAND_117;
  reg [17:0] pages_5;
  reg [31:0] _RAND_118;
  reg [5:0] pageValid;
  reg [31:0] _RAND_119;
  reg [27:0] isValid;
  reg [31:0] _RAND_120;
  reg [1:0] cfiType_0;
  reg [31:0] _RAND_121;
  reg [1:0] cfiType_1;
  reg [31:0] _RAND_122;
  reg [1:0] cfiType_2; 
  reg [31:0] _RAND_123;
  reg [1:0] cfiType_3; 
  reg [31:0] _RAND_124;
  reg [1:0] cfiType_4; 
  reg [31:0] _RAND_125;
  reg [1:0] cfiType_5; 
  reg [31:0] _RAND_126;
  reg [1:0] cfiType_6; 
  reg [31:0] _RAND_127;
  reg [1:0] cfiType_7; 
  reg [31:0] _RAND_128;
  reg [1:0] cfiType_8; 
  reg [31:0] _RAND_129;
  reg [1:0] cfiType_9; 
  reg [31:0] _RAND_130;
  reg [1:0] cfiType_10;
  reg [31:0] _RAND_131;
  reg [1:0] cfiType_11;
  reg [31:0] _RAND_132;
  reg [1:0] cfiType_12;
  reg [31:0] _RAND_133;
  reg [1:0] cfiType_13;
  reg [31:0] _RAND_134;
  reg [1:0] cfiType_14;
  reg [31:0] _RAND_135;
  reg [1:0] cfiType_15;
  reg [31:0] _RAND_136;
  reg [1:0] cfiType_16;
  reg [31:0] _RAND_137;
  reg [1:0] cfiType_17;
  reg [31:0] _RAND_138;
  reg [1:0] cfiType_18;
  reg [31:0] _RAND_139;
  reg [1:0] cfiType_19;
  reg [31:0] _RAND_140;
  reg [1:0] cfiType_20;
  reg [31:0] _RAND_141;
  reg [1:0] cfiType_21;
  reg [31:0] _RAND_142;
  reg [1:0] cfiType_22;
  reg [31:0] _RAND_143;
  reg [1:0] cfiType_23;
  reg [31:0] _RAND_144;
  reg [1:0] cfiType_24;
  reg [31:0] _RAND_145;
  reg [1:0] cfiType_25;
  reg [31:0] _RAND_146;
  reg [1:0] cfiType_26;
  reg [31:0] _RAND_147;
  reg [1:0] cfiType_27;
  reg [31:0] _RAND_148;
  reg  brIdx_0;
  reg [31:0] _RAND_149;
  reg  brIdx_1;
  reg [31:0] _RAND_150;
  reg  brIdx_2;
  reg [31:0] _RAND_151;
  reg  brIdx_3;
  reg [31:0] _RAND_152;
  reg  brIdx_4;
  reg [31:0] _RAND_153;
  reg  brIdx_5;
  reg [31:0] _RAND_154;
  reg  brIdx_6;
  reg [31:0] _RAND_155;
  reg  brIdx_7;
  reg [31:0] _RAND_156;
  reg  brIdx_8;
  reg [31:0] _RAND_157;
  reg  brIdx_9;
  reg [31:0] _RAND_158;
  reg  brIdx_10;
  reg [31:0] _RAND_159;
  reg  brIdx_11;
  reg [31:0] _RAND_160;
  reg  brIdx_12;
  reg [31:0] _RAND_161;
  reg  brIdx_13;
  reg [31:0] _RAND_162;
  reg  brIdx_14;
  reg [31:0] _RAND_163;
  reg  brIdx_15;
  reg [31:0] _RAND_164;
  reg  brIdx_16;
  reg [31:0] _RAND_165;
  reg  brIdx_17;
  reg [31:0] _RAND_166;
  reg  brIdx_18;
  reg [31:0] _RAND_167;
  reg  brIdx_19;
  reg [31:0] _RAND_168;
  reg  brIdx_20;
  reg [31:0] _RAND_169;
  reg  brIdx_21;
  reg [31:0] _RAND_170;
  reg  brIdx_22;
  reg [31:0] _RAND_171;
  reg  brIdx_23;
  reg [31:0] _RAND_172;
  reg  brIdx_24;
  reg [31:0] _RAND_173;
  reg  brIdx_25;
  reg [31:0] _RAND_174;
  reg  brIdx_26;
  reg [31:0] _RAND_175;
  reg  brIdx_27;
  reg [31:0] _RAND_176;
  reg  r_btb_updatePipe_valid;
  reg [31:0] _RAND_177;
  reg [4:0] r_btb_updatePipe_bits_prediction_entry;
  reg [31:0] _RAND_178;
  reg [31:0] r_btb_updatePipe_bits_pc;
  reg [31:0] _RAND_179;
  reg  r_btb_updatePipe_bits_isValid;
  reg [31:0] _RAND_180;
  reg [31:0] r_btb_updatePipe_bits_br_pc;
  reg [31:0] _RAND_181;
  reg [1:0] r_btb_updatePipe_bits_cfiType;
  reg [31:0] _RAND_182;
  wire [5:0] pageHit;
  wire [27:0] idxHit;
  wire [5:0] updatePageHit;
  wire  updateHit;
  wire  useUpdatePageHit;
  wire  usePageHit;
  wire  doIdxPageRepl;
  reg [2:0] nextPageRepl;
  reg [31:0] _RAND_183;
  wire [7:0] idxPageRepl;
  wire [7:0] idxPageUpdateOH;
  wire [2:0] idxPageUpdate;
  wire [7:0] idxPageReplEn;
  wire  samePage;
  wire  doTgtPageRepl;
  wire [7:0] tgtPageRepl;
  wire [2:0] tgtPageUpdate;
  wire [7:0] tgtPageReplEn;
  wire [4:0] waddr;
  reg  r_respPipe_valid;
  reg [31:0] _RAND_185;
  reg  r_respPipe_bits_taken;
  reg [31:0] _RAND_186;
  reg [4:0] r_respPipe_bits_entry;
  reg [31:0] _RAND_187;
  wire [2:0] _idxPages_waddr;
  wire  _brIdx_waddr;
  reg [2:0] _T_971;
  reg [31:0] _RAND_189;
  reg [2:0] _T_972; 
  reg [31:0] _RAND_190;
  reg [31:0] _T_973_0;
  reg [31:0] _RAND_191;
  reg [31:0] _T_973_1;
  reg [31:0] _RAND_192;
  reg [31:0] _T_973_2;
  reg [31:0] _RAND_193;
  reg [31:0] _T_973_3;
  reg [31:0] _RAND_194;
  reg [31:0] _T_973_4;
  reg [31:0] _RAND_195;
  reg [31:0] _T_973_5;
  reg [31:0] _RAND_196;
  reg [26:0] _T_123;
  reg [7:0] _T_884;
  reg [31:0] _RAND_188;
  reg [31:0] _RAND_184;

`define MY_ASSIGNMENT
`ifdef MY_ASSIGNMENT
  wire [17:0] _T = io_req_bits_addr[31:14];
  wire _T_1 = pages_0 == _T;
  wire _T_2 = pages_1 == _T;
  wire _T_3 = pages_2 == _T;
  wire _T_4 = pages_3 == _T;
  wire _T_5 = pages_4 == _T;
  wire _T_6 = pages_5 == _T;
  assign pageHit = pageValid & {_T_6,_T_5,_T_4,_T_3,_T_2,_T_1};

  wire [12:0] _T_12 = io_req_bits_addr[13:1];
  wire _T_13 = idxs_0 == _T_12;
  wire _T_14 = idxs_1 == _T_12;
  wire _T_15 = idxs_2 == _T_12;
  wire _T_16 = idxs_3 == _T_12;
  wire _T_17 = idxs_4 == _T_12;
  wire _T_18 = idxs_5 == _T_12;
  wire _T_19 = idxs_6 == _T_12;
  wire _T_20 = idxs_7 == _T_12;
  wire _T_21 = idxs_8 == _T_12;
  wire _T_22 = idxs_9 == _T_12;
  wire _T_23 = idxs_10 == _T_12;
  wire _T_24 = idxs_11 == _T_12;
  wire _T_25 = idxs_12 == _T_12;
  wire _T_26 = idxs_13 == _T_12;
  wire _T_27 = idxs_14 == _T_12;
  wire _T_28 = idxs_15 == _T_12;
  wire _T_29 = idxs_16 == _T_12;
  wire _T_30 = idxs_17 == _T_12;
  wire _T_31 = idxs_18 == _T_12;
  wire _T_32 = idxs_19 == _T_12;
  wire _T_33 = idxs_20 == _T_12;
  wire _T_34 = idxs_21 == _T_12;
  wire _T_35 = idxs_22 == _T_12;
  wire _T_36 = idxs_23 == _T_12;
  wire _T_37 = idxs_24 == _T_12;
  wire _T_38 = idxs_25 == _T_12;
  wire _T_39 = idxs_26 == _T_12;
  wire _T_40 = idxs_27 == _T_12;
  assign idxHit = {_T_40,_T_39,_T_38,_T_37,_T_36,_T_35,_T_34,_T_33,_T_32,_T_31,_T_30,_T_29,_T_28,_T_27,_T_26,_T_25,_T_24,_T_23,_T_22,_T_21,_T_20,_T_19,_T_18,_T_17,_T_16,_T_15,_T_14,_T_13} & isValid;

  wire [17:0] _T_68 = r_btb_updatePipe_bits_pc[31:14];
  wire _T_69 = pages_0 == _T_68;
  wire _T_70 = pages_1 == _T_68;
  wire _T_71 = pages_2 == _T_68;
  wire _T_72 = pages_3 == _T_68;
  wire _T_73 = pages_4 == _T_68;
  wire _T_74 = pages_5 == _T_68;
  assign updatePageHit = pageValid & {_T_74,_T_73,_T_72,_T_71,_T_70,_T_69};
  assign updateHit = r_btb_updatePipe_bits_prediction_entry < 5'h1c;

  assign useUpdatePageHit = updatePageHit != 6'h0;
  assign usePageHit = pageHit != 6'h0;
  assign doIdxPageRepl = useUpdatePageHit == 1'h0;

  wire [7:0] _T_84 = usePageHit ? 8'h0 : (8'h1 << nextPageRepl);
  assign idxPageRepl = {{2'd0}, pageHit[4:0],pageHit[5]} | _T_84;
  assign idxPageUpdateOH = useUpdatePageHit ? {{2'd0}, updatePageHit} : idxPageRepl;
  wire _T_87 = idxPageUpdateOH[7:4] != 4'h0;
  wire [3:0] _T_88 = idxPageUpdateOH[7:4] | idxPageUpdateOH[3:0];
  wire _T_91 = _T_88[3:2] != 2'h0;
  wire [1:0] _T_92 = _T_88[3:2] | _T_88[1:0];
  assign idxPageUpdate = {_T_87,_T_91,_T_92[1]};
  assign idxPageReplEn = doIdxPageRepl ? idxPageRepl : 8'h0;

  assign samePage = _T_68 == _T;

  assign doTgtPageRepl = !samePage & !usePageHit;

  assign tgtPageRepl = samePage ? idxPageUpdateOH : {{2'd0}, idxPageUpdateOH[4:0],idxPageUpdateOH[5]};
  wire [7:0] _T_102 = usePageHit ? 8'h0 : tgtPageRepl;
  wire [7:0] _T_103 = {{2'd0}, pageHit} | _T_102;
  wire _T_106 = _T_103[7:4] != 4'h0;
  wire [3:0] _T_107 = _T_103[7:4] | _T_103[3:0];
  wire _T_110 = _T_107[3:2] != 2'h0;
  wire [1:0] _T_111 = _T_107[3:2] | _T_107[1:0];
  assign tgtPageUpdate = {_T_106,_T_110,_T_111[1]};
  assign tgtPageReplEn = doTgtPageRepl ? tgtPageRepl : 8'h0;

  wire [27:0] _T_124 = {_T_123, 1'h0};
  wire _T_129 = _T_124[1];
  wire [5:0] _T_132 = {1'h1,_T_129,4'h8};
  wire [27:0] _T_135 = _T_124 >> {1'h1,_T_129};
  wire _T_137 = (_T_132[4:0] < 5'h1c) & _T_135[0];
  wire [5:0] _T_139 = {1'h1,_T_129,_T_137,3'h4};
  wire [27:0] _T_142 = _T_124 >> {1'h1,_T_129,_T_137};
  wire _T_144 = (_T_139[4:0] < 5'h1c) & _T_142[0];
  wire [5:0] _T_146 = {1'h1,_T_129,_T_137,_T_144,2'h2};
  wire [27:0] _T_149 = _T_124 >> {1'h1,_T_129,_T_137,_T_144};
  wire _T_151 = (_T_146[4:0] < 5'h1c) & _T_149[0];
  wire [5:0] _T_153 = {1'h1,_T_129,_T_137,_T_144,_T_151,1'h1};
  wire [27:0] _T_156 = _T_124 >> {1'h1,_T_129,_T_137,_T_144,_T_151};
  wire _T_158 = (_T_153[4:0] < 5'h1c) & _T_156[0];
  wire [5:0] _T_159 = {1'h1,_T_129,_T_137,_T_144,_T_151,_T_158};
  assign waddr = updateHit ? r_btb_updatePipe_bits_prediction_entry : _T_159[4:0];

  wire [3:0] _T_214 = idxPageUpdate + 3'h1;
  assign _idxPages_waddr = _T_214[2:0];

  assign _brIdx_waddr = r_btb_updatePipe_bits_br_pc[1];

  wire _T_239 = idxHit[0]; 
  wire _T_240 = idxHit[1]; 
  wire _T_241 = idxHit[2]; 
  wire _T_242 = idxHit[3]; 
  wire _T_243 = idxHit[4]; 
  wire _T_244 = idxHit[5]; 
  wire _T_245 = idxHit[6]; 
  wire _T_246 = idxHit[7]; 
  wire _T_247 = idxHit[8]; 
  wire _T_248 = idxHit[9]; 
  wire _T_249 = idxHit[10];
  wire _T_250 = idxHit[11];
  wire _T_251 = idxHit[12];
  wire _T_252 = idxHit[13];
  wire _T_253 = idxHit[14];
  wire _T_254 = idxHit[15];
  wire _T_255 = idxHit[16];
  wire _T_256 = idxHit[17];
  wire _T_257 = idxHit[18];
  wire _T_258 = idxHit[19];
  wire _T_259 = idxHit[20];
  wire _T_260 = idxHit[21];
  wire _T_261 = idxHit[22];
  wire _T_262 = idxHit[23];
  wire _T_263 = idxHit[24];
  wire _T_264 = idxHit[25];
  wire _T_265 = idxHit[26];
  wire _T_266 = idxHit[27];
  wire [2:0] _T_321 = (_T_239 ? idxPages_0 : 3'h0) 
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
  wire [6:0] _T_323 = {pageHit, 1'h0} >> _T_321;
  assign io_resp_valid = _T_323[0];

  wire _T_885 = cfiType_0 == 2'h0;
  wire _T_886 = cfiType_1 == 2'h0;
  wire _T_887 = cfiType_2 == 2'h0;
  wire _T_888 = cfiType_3 == 2'h0;
  wire _T_889 = cfiType_4 == 2'h0;
  wire _T_890 = cfiType_5 == 2'h0;
  wire _T_891 = cfiType_6 == 2'h0;
  wire _T_892 = cfiType_7 == 2'h0;
  wire _T_893 = cfiType_8 == 2'h0;
  wire _T_894 = cfiType_9 == 2'h0;
  wire _T_895 = cfiType_10 == 2'h0;
  wire _T_896 = cfiType_11 == 2'h0;
  wire _T_897 = cfiType_12 == 2'h0;
  wire _T_898 = cfiType_13 == 2'h0;
  wire _T_899 = cfiType_14 == 2'h0;
  wire _T_900 = cfiType_15 == 2'h0;
  wire _T_901 = cfiType_16 == 2'h0;
  wire _T_902 = cfiType_17 == 2'h0;
  wire _T_903 = cfiType_18 == 2'h0;
  wire _T_904 = cfiType_19 == 2'h0;
  wire _T_905 = cfiType_20 == 2'h0;
  wire _T_906 = cfiType_21 == 2'h0;
  wire _T_907 = cfiType_22 == 2'h0;
  wire _T_908 = cfiType_23 == 2'h0;
  wire _T_909 = cfiType_24 == 2'h0;
  wire _T_910 = cfiType_25 == 2'h0;
  wire _T_911 = cfiType_26 == 2'h0;
  wire _T_912 = cfiType_27 == 2'h0;
  wire [27:0] _T_939 = {_T_912,_T_911,_T_910,_T_909,_T_908,_T_907,_T_906,_T_905,_T_904,_T_903,_T_902,_T_901,_T_900,_T_899,_T_898,_T_897,_T_896,_T_895,_T_894,_T_893,_T_892,_T_891,_T_890,_T_889,_T_888,_T_887,_T_886,_T_885};
  wire [29:0] _T_943 = io_req_bits_addr[31:2];
  wire [15:0] _T_948 = 8'hdd * _T_884; 
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

  wire [2:0] _T_407 = (_T_239 ? tgtPages_0 : 3'h0) 
			| (_T_240 ? tgtPages_1 : 3'h0)
			| (_T_241 ? tgtPages_2 : 3'h0)
			| (_T_242 ? tgtPages_3 : 3'h0)
			| (_T_243 ? tgtPages_4 : 3'h0)
			| (_T_244 ? tgtPages_5 : 3'h0)
			| (_T_245 ? tgtPages_6 : 3'h0)
			| (_T_246 ? tgtPages_7 : 3'h0)
			| (_T_247 ? tgtPages_8 : 3'h0)
			| (_T_248 ? tgtPages_9 : 3'h0)
			| (_T_249 ? tgtPages_10 : 3'h0)
			| (_T_250 ? tgtPages_11 : 3'h0)
			| (_T_251 ? tgtPages_12 : 3'h0)
			| (_T_252 ? tgtPages_13 : 3'h0)
			| (_T_253 ? tgtPages_14 : 3'h0)
			| (_T_254 ? tgtPages_15 : 3'h0)
			| (_T_255 ? tgtPages_16 : 3'h0)
			| (_T_256 ? tgtPages_17 : 3'h0)
			| (_T_257 ? tgtPages_18 : 3'h0)
			| (_T_258 ? tgtPages_19 : 3'h0)
			| (_T_259 ? tgtPages_20 : 3'h0)
			| (_T_260 ? tgtPages_21 : 3'h0)
			| (_T_261 ? tgtPages_22 : 3'h0)
			| (_T_262 ? tgtPages_23 : 3'h0)
			| (_T_263 ? tgtPages_24 : 3'h0)
			| (_T_264 ? tgtPages_25 : 3'h0)
			| (_T_265 ? tgtPages_26 : 3'h0)
			| (_T_266 ? tgtPages_27 : 3'h0);
  wire [17:0] _GEN_379 = 3'h5 == _T_407 ? pages_5 
		: 3'h4 == _T_407 ? pages_4 
		: 3'h3 == _T_407 ? pages_3 
		: 3'h2 == _T_407 ? pages_2 
		: 3'h1 == _T_407 ? pages_1 
		: pages_0
		;
  wire [31:0] _GEN_403 = 	3'h5 == _T_972 ? _T_973_5 
			: 3'h4 == _T_972 ? _T_973_4 
			: 3'h3 == _T_972 ? _T_973_3 
			: 3'h2 == _T_972 ? _T_973_2 
			: 3'h1 == _T_972 ? _T_973_1 
			: _T_973_0
			;
  wire [12:0] _T_491 = (_T_239 ? tgts_0 : 13'h0) 
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
  wire _T_974 = cfiType_0 == 2'h3;
  wire _T_975 = cfiType_1 == 2'h3;
  wire _T_976 = cfiType_2 == 2'h3;
  wire _T_977 = cfiType_3 == 2'h3;
  wire _T_978 = cfiType_4 == 2'h3;
  wire _T_979 = cfiType_5 == 2'h3;
  wire _T_980 = cfiType_6 == 2'h3;
  wire _T_981 = cfiType_7 == 2'h3;
  wire _T_982 = cfiType_8 == 2'h3;
  wire _T_983 = cfiType_9 == 2'h3;
  wire _T_984 = cfiType_10 == 2'h3;
  wire _T_985 = cfiType_11 == 2'h3;
  wire _T_986 = cfiType_12 == 2'h3;
  wire _T_987 = cfiType_13 == 2'h3;
  wire _T_988 = cfiType_14 == 2'h3;
  wire _T_989 = cfiType_15 == 2'h3;
  wire _T_990 = cfiType_16 == 2'h3;
  wire _T_991 = cfiType_17 == 2'h3;
  wire _T_992 = cfiType_18 == 2'h3;
  wire _T_993 = cfiType_19 == 2'h3;
  wire _T_994 = cfiType_20 == 2'h3;
  wire _T_995 = cfiType_21 == 2'h3;
  wire _T_996 = cfiType_22 == 2'h3;
  wire _T_997 = cfiType_23 == 2'h3;
  wire _T_998 = cfiType_24 == 2'h3;
  wire _T_999 = cfiType_25 == 2'h3;
  wire _T_1000 = cfiType_26 == 2'h3;
  wire _T_1001 = cfiType_27 == 2'h3;
  wire [27:0] _T_1028 = {_T_1001,_T_1000,_T_999,_T_998,_T_997,_T_996,_T_995,_T_994,_T_993,_T_992,_T_991,_T_990,_T_989,_T_988,_T_987,_T_986,_T_985,_T_984,_T_983,_T_982,_T_981,_T_980,_T_979,_T_978,_T_977,_T_976,_T_975,_T_974};
  wire _T_1032 = (_T_971 == 3'h0) == 1'h0;
  assign io_resp_bits_target = (_T_1032 & ((idxHit & _T_1028) != 28'h0)) ? _GEN_403 : {_GEN_379,_T_491, 1'h0};

  wire _T_497 = idxHit[27:16] != 12'h0;
  wire [15:0] _T_498 = {{4'd0}, idxHit[27:16]} | idxHit[15:0];
  wire _T_501 = _T_498[15:8] != 8'h0;
  wire [7:0] _T_502 = _T_498[15:8] | _T_498[7:0];
  wire _T_505 = _T_502[7:4] != 4'h0;
  wire [3:0] _T_506 = _T_502[7:4] | _T_502[3:0];
  wire _T_509 = _T_506[3:2] != 2'h0;
  wire [1:0] _T_510 = _T_506[3:2] | _T_506[1:0];
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

  wire [12:0] _T_212 = r_btb_updatePipe_bits_pc[13:1]; 
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

  wire _T_221 = idxPageUpdate[0] == 1'h0; 
  wire [7:0] _T_222 = _T_221 ? idxPageReplEn : tgtPageReplEn;
  wire [7:0] _T_229 = _T_221 ? tgtPageReplEn : idxPageReplEn;
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

  wire [31:0] _T_211 = 32'h1 << waddr;
  wire [31:0] _T_218 = r_btb_updatePipe_bits_isValid ? (({{4'd0}, isValid}) | _T_211) : ({{4'd0}, isValid} & (~ _T_211));
  wire [7:0] _GEN_373 = r_btb_updatePipe_valid ? ({{2'd0}, pageValid} | tgtPageReplEn | idxPageReplEn) : {{2'd0}, pageValid};
  wire _T_880 = (idxHit[1] & idxHit[2])		// TODO: Verify again 
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
  wire [27:0] _T_882 = isValid & (~ idxHit);
  wire [31:0] _GEN_381 = io_flush ? 32'h0 
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

  wire [1:0] _T_117 = (doIdxPageRepl & doTgtPageRepl) ? 2'h2 : 2'h1;
  wire [2:0] _T_119 = nextPageRepl + {{1'd0}, _T_117};
always @(posedge clock) begin
	if (r_btb_updatePipe_valid & (doIdxPageRepl | doTgtPageRepl)) begin
		if (_T_119 >= 3'h6) begin
			nextPageRepl <= {{2'd0}, _T_119[0]};
		end else begin
			nextPageRepl <= _T_119;
		end
	end
end

  wire [4:0] _T_163 = r_btb_updatePipe_valid ? waddr : r_respPipe_bits_entry; 
  wire [27:0] _T_172 = !_T_163[4] ? (_T_124 | 28'h2) : (~ ((~ _T_124) | 28'h2));
  wire [3:0] _T_176 = 4'h1 << {1'h1,_T_163[4]};
  wire [27:0] _T_181 = !_T_163[3] ? (_T_172 | {{24'd0}, _T_176}) : (~ ((~ _T_172) | {{24'd0}, _T_176}));
  wire [7:0] _T_185 = 8'h1 << ({1'h1,_T_163[4],_T_163[3]});
  wire [27:0] _T_190 = !_T_163[2] ? (_T_181 | {{20'd0}, _T_185}) : (~ ((~ _T_181) | {{20'd0}, _T_185}));
  wire [15:0] _T_194 = 16'h1 << {1'h1,_T_163[4],_T_163[3],_T_163[2]};
  wire [27:0] _T_199 = !_T_163[1] ? (_T_190 | {{12'd0}, _T_194}) : ( ~ ((~ _T_190) | {{12'd0}, _T_194}));
  wire [31:0] _T_203 = 32'h1 << {1'h1,_T_163[4],_T_163[3],_T_163[2],_T_163[1]};
  wire [31:0] _T_208 = !_T_163[0] ? ({{4'd0}, _T_199} | _T_203) : (~ ({{4'd0}, (~ _T_199)} | _T_203));
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

  wire _T_1036 = io_ras_update_bits_cfiType == 2'h2;
  wire _T_1045 = io_ras_update_bits_cfiType == 2'h3;
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

  wire _T_1040 = _T_972 < 3'h5;
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

  wire [2:0] _T_1044 = _T_1040 ? (_T_972 + 3'h1) : 3'h0;
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

endmodule
`endif // __BTB
