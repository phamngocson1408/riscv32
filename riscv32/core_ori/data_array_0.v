`include "include_module.v"
`ifdef __data_arrays_0
module data_arrays_0(
  input  [9:0] RW0_addr,
  input        RW0_en,
  input        RW0_clk,
  input        RW0_wmode,
  input  [7:0] RW0_wdata_0,
  input  [7:0] RW0_wdata_1,
  input  [7:0] RW0_wdata_2,
  input  [7:0] RW0_wdata_3,
  input  [7:0] RW0_wdata_4,
  input  [7:0] RW0_wdata_5,
  input  [7:0] RW0_wdata_6,
  input  [7:0] RW0_wdata_7,
  input  [7:0] RW0_wdata_8,
  input  [7:0] RW0_wdata_9,
  input  [7:0] RW0_wdata_10,
  input  [7:0] RW0_wdata_11,
  input  [7:0] RW0_wdata_12,
  input  [7:0] RW0_wdata_13,
  input  [7:0] RW0_wdata_14,
  input  [7:0] RW0_wdata_15,
  output [7:0] RW0_rdata_0,
  output [7:0] RW0_rdata_1,
  output [7:0] RW0_rdata_2,
  output [7:0] RW0_rdata_3,
  output [7:0] RW0_rdata_4,
  output [7:0] RW0_rdata_5,
  output [7:0] RW0_rdata_6,
  output [7:0] RW0_rdata_7,
  output [7:0] RW0_rdata_8,
  output [7:0] RW0_rdata_9,
  output [7:0] RW0_rdata_10,
  output [7:0] RW0_rdata_11,
  output [7:0] RW0_rdata_12,
  output [7:0] RW0_rdata_13,
  output [7:0] RW0_rdata_14,
  output [7:0] RW0_rdata_15,
  input        RW0_wmask_0,
  input        RW0_wmask_1,
  input        RW0_wmask_2,
  input        RW0_wmask_3,
  input        RW0_wmask_4,
  input        RW0_wmask_5,
  input        RW0_wmask_6,
  input        RW0_wmask_7,
  input        RW0_wmask_8,
  input        RW0_wmask_9,
  input        RW0_wmask_10,
  input        RW0_wmask_11,
  input        RW0_wmask_12,
  input        RW0_wmask_13,
  input        RW0_wmask_14,
  input        RW0_wmask_15
);
  wire [9:0] data_arrays_0_ext_RW0_addr;
  wire  data_arrays_0_ext_RW0_en;
  wire  data_arrays_0_ext_RW0_clk;
  wire  data_arrays_0_ext_RW0_wmode;
  wire [127:0] data_arrays_0_ext_RW0_wdata;
  wire [127:0] data_arrays_0_ext_RW0_rdata;
  wire [15:0] data_arrays_0_ext_RW0_wmask;
  wire [7:0] _GEN_0;
  wire [7:0] _GEN_1;
  wire [7:0] _GEN_2;
  wire [7:0] _GEN_3;
  wire [7:0] _GEN_4;
  wire [7:0] _GEN_5;
  wire [7:0] _GEN_6;
  wire [7:0] _GEN_7;
  wire [7:0] _GEN_8;
  wire [7:0] _GEN_9;
  wire [7:0] _GEN_10;
  wire [7:0] _GEN_11;
  wire [7:0] _GEN_12;
  wire [7:0] _GEN_13;
  wire [7:0] _GEN_14;
  wire [7:0] _GEN_15;
  wire [7:0] _GEN_16;
  wire [7:0] _GEN_17;
  wire [7:0] _GEN_18;
  wire [7:0] _GEN_19;
  wire [7:0] _GEN_22;
  wire [7:0] _GEN_23;
  wire [7:0] _GEN_24;
  wire [7:0] _GEN_25;
  wire [7:0] _GEN_30;
  wire [7:0] _GEN_31;
  wire [7:0] _GEN_32;
  wire [7:0] _GEN_33;
  wire [7:0] _GEN_36;
  wire [7:0] _GEN_37;
  wire [7:0] _GEN_38;
  wire [7:0] _GEN_39;
  wire [63:0] _GEN_44;
  wire [63:0] _GEN_45;
  wire  _GEN_46;
  wire  _GEN_47;
  wire  _GEN_48;
  wire  _GEN_49;
  wire  _GEN_52;
  wire  _GEN_53;
  wire  _GEN_54;
  wire  _GEN_55;
  wire  _GEN_60;
  wire  _GEN_61;
  wire  _GEN_62;
  wire  _GEN_63;
  wire  _GEN_66;
  wire  _GEN_67;
  wire  _GEN_68;
  wire  _GEN_69;
  wire [7:0] _GEN_74;
  wire [7:0] _GEN_75;
  data_arrays_0_ext data_arrays_0_ext (
    .RW0_addr(data_arrays_0_ext_RW0_addr),
    .RW0_en(data_arrays_0_ext_RW0_en),
    .RW0_clk(data_arrays_0_ext_RW0_clk),
    .RW0_wmode(data_arrays_0_ext_RW0_wmode),
    .RW0_wdata(data_arrays_0_ext_RW0_wdata),
    .RW0_rdata(data_arrays_0_ext_RW0_rdata),
    .RW0_wmask(data_arrays_0_ext_RW0_wmask)
  );
  assign data_arrays_0_ext_RW0_clk = RW0_clk;
  assign data_arrays_0_ext_RW0_en = RW0_en;
  assign data_arrays_0_ext_RW0_addr = RW0_addr;
  assign _GEN_0 = data_arrays_0_ext_RW0_rdata[7:0];
  assign RW0_rdata_0 = $unsigned(_GEN_0);
  assign _GEN_1 = data_arrays_0_ext_RW0_rdata[15:8];
  assign RW0_rdata_1 = $unsigned(_GEN_1);
  assign _GEN_2 = data_arrays_0_ext_RW0_rdata[23:16];
  assign RW0_rdata_2 = $unsigned(_GEN_2);
  assign _GEN_3 = data_arrays_0_ext_RW0_rdata[31:24];
  assign RW0_rdata_3 = $unsigned(_GEN_3);
  assign _GEN_4 = data_arrays_0_ext_RW0_rdata[39:32];
  assign RW0_rdata_4 = $unsigned(_GEN_4);
  assign _GEN_5 = data_arrays_0_ext_RW0_rdata[47:40];
  assign RW0_rdata_5 = $unsigned(_GEN_5);
  assign _GEN_6 = data_arrays_0_ext_RW0_rdata[55:48];
  assign RW0_rdata_6 = $unsigned(_GEN_6);
  assign _GEN_7 = data_arrays_0_ext_RW0_rdata[63:56];
  assign RW0_rdata_7 = $unsigned(_GEN_7);
  assign _GEN_8 = data_arrays_0_ext_RW0_rdata[71:64];
  assign RW0_rdata_8 = $unsigned(_GEN_8);
  assign _GEN_9 = data_arrays_0_ext_RW0_rdata[79:72];
  assign RW0_rdata_9 = $unsigned(_GEN_9);
  assign _GEN_10 = data_arrays_0_ext_RW0_rdata[87:80];
  assign RW0_rdata_10 = $unsigned(_GEN_10);
  assign _GEN_11 = data_arrays_0_ext_RW0_rdata[95:88];
  assign RW0_rdata_11 = $unsigned(_GEN_11);
  assign _GEN_12 = data_arrays_0_ext_RW0_rdata[103:96];
  assign RW0_rdata_12 = $unsigned(_GEN_12);
  assign _GEN_13 = data_arrays_0_ext_RW0_rdata[111:104];
  assign RW0_rdata_13 = $unsigned(_GEN_13);
  assign _GEN_14 = data_arrays_0_ext_RW0_rdata[119:112];
  assign RW0_rdata_14 = $unsigned(_GEN_14);
  assign _GEN_15 = data_arrays_0_ext_RW0_rdata[127:120];
  assign RW0_rdata_15 = $unsigned(_GEN_15);
  assign data_arrays_0_ext_RW0_wmode = RW0_wmode;
  assign _GEN_16 = $unsigned(RW0_wdata_15);
  assign _GEN_17 = $unsigned(RW0_wdata_14);
  assign _GEN_18 = $unsigned(RW0_wdata_13);
  assign _GEN_19 = $unsigned(RW0_wdata_12);
  assign _GEN_22 = $unsigned(RW0_wdata_11);
  assign _GEN_23 = $unsigned(RW0_wdata_10);
  assign _GEN_24 = $unsigned(RW0_wdata_9);
  assign _GEN_25 = $unsigned(RW0_wdata_8);
  assign _GEN_30 = $unsigned(RW0_wdata_7);
  assign _GEN_31 = $unsigned(RW0_wdata_6);
  assign _GEN_32 = $unsigned(RW0_wdata_5);
  assign _GEN_33 = $unsigned(RW0_wdata_4);
  assign _GEN_36 = $unsigned(RW0_wdata_3);
  assign _GEN_37 = $unsigned(RW0_wdata_2);
  assign _GEN_38 = $unsigned(RW0_wdata_1);
  assign _GEN_39 = $unsigned(RW0_wdata_0);
  assign _GEN_44 = {_GEN_16,_GEN_17,_GEN_18,_GEN_19,_GEN_22,_GEN_23,_GEN_24,_GEN_25};
  assign _GEN_45 = {_GEN_30,_GEN_31,_GEN_32,_GEN_33,_GEN_36,_GEN_37,_GEN_38,_GEN_39};
  assign data_arrays_0_ext_RW0_wdata = {_GEN_44,_GEN_45};
  assign _GEN_46 = $unsigned(RW0_wmask_15);
  assign _GEN_47 = $unsigned(RW0_wmask_14);
  assign _GEN_48 = $unsigned(RW0_wmask_13);
  assign _GEN_49 = $unsigned(RW0_wmask_12);
  assign _GEN_52 = $unsigned(RW0_wmask_11);
  assign _GEN_53 = $unsigned(RW0_wmask_10);
  assign _GEN_54 = $unsigned(RW0_wmask_9);
  assign _GEN_55 = $unsigned(RW0_wmask_8);
  assign _GEN_60 = $unsigned(RW0_wmask_7);
  assign _GEN_61 = $unsigned(RW0_wmask_6);
  assign _GEN_62 = $unsigned(RW0_wmask_5);
  assign _GEN_63 = $unsigned(RW0_wmask_4);
  assign _GEN_66 = $unsigned(RW0_wmask_3);
  assign _GEN_67 = $unsigned(RW0_wmask_2);
  assign _GEN_68 = $unsigned(RW0_wmask_1);
  assign _GEN_69 = $unsigned(RW0_wmask_0);
  assign _GEN_74 = {_GEN_46,_GEN_47,_GEN_48,_GEN_49,_GEN_52,_GEN_53,_GEN_54,_GEN_55};
  assign _GEN_75 = {_GEN_60,_GEN_61,_GEN_62,_GEN_63,_GEN_66,_GEN_67,_GEN_68,_GEN_69};
  assign data_arrays_0_ext_RW0_wmask = {_GEN_74,_GEN_75};
endmodule
`endif // __data_arrays_0

