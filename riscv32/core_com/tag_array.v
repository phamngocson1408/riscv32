`include "include_module.v"
`ifdef __tag_array
module tag_array(
  input  [5:0]  RW0_addr,
  input         RW0_en,
  input         RW0_clk,
  input         RW0_wmode,
  input  [21:0] RW0_wdata_0,
  input  [21:0] RW0_wdata_1,
  input  [21:0] RW0_wdata_2,
  input  [21:0] RW0_wdata_3,
  output [21:0] RW0_rdata_0,
  output [21:0] RW0_rdata_1,
  output [21:0] RW0_rdata_2,
  output [21:0] RW0_rdata_3,
  input         RW0_wmask_0,
  input         RW0_wmask_1,
  input         RW0_wmask_2,
  input         RW0_wmask_3
);
  wire [5:0] tag_array_ext_RW0_addr;
  wire  tag_array_ext_RW0_en;
  wire  tag_array_ext_RW0_clk;
  wire  tag_array_ext_RW0_wmode;
  wire [87:0] tag_array_ext_RW0_wdata;
  wire [87:0] tag_array_ext_RW0_rdata;
  wire [3:0] tag_array_ext_RW0_wmask;
  wire [21:0] _GEN_0;
  wire [21:0] _GEN_1;
  wire [21:0] _GEN_2;
  wire [21:0] _GEN_3;
  wire [21:0] _GEN_4;
  wire [21:0] _GEN_5;
  wire [21:0] _GEN_6;
  wire [21:0] _GEN_7;
  wire [43:0] _GEN_8;
  wire [43:0] _GEN_9;
  wire  _GEN_10;
  wire  _GEN_11;
  wire  _GEN_12;
  wire  _GEN_13;
  wire [1:0] _GEN_14;
  wire [1:0] _GEN_15;
  tag_array_ext tag_array_ext (
    .RW0_addr(tag_array_ext_RW0_addr),
    .RW0_en(tag_array_ext_RW0_en),
    .RW0_clk(tag_array_ext_RW0_clk),
    .RW0_wmode(tag_array_ext_RW0_wmode),
    .RW0_wdata(tag_array_ext_RW0_wdata),
    .RW0_rdata(tag_array_ext_RW0_rdata),
    .RW0_wmask(tag_array_ext_RW0_wmask)
  );
  assign tag_array_ext_RW0_clk = RW0_clk;
  assign tag_array_ext_RW0_en = RW0_en;
  assign tag_array_ext_RW0_addr = RW0_addr;
  assign _GEN_0 = tag_array_ext_RW0_rdata[21:0];
  assign RW0_rdata_0 = $unsigned(_GEN_0);
  assign _GEN_1 = tag_array_ext_RW0_rdata[43:22];
  assign RW0_rdata_1 = $unsigned(_GEN_1);
  assign _GEN_2 = tag_array_ext_RW0_rdata[65:44];
  assign RW0_rdata_2 = $unsigned(_GEN_2);
  assign _GEN_3 = tag_array_ext_RW0_rdata[87:66];
  assign RW0_rdata_3 = $unsigned(_GEN_3);
  assign tag_array_ext_RW0_wmode = RW0_wmode;
  assign _GEN_4 = $unsigned(RW0_wdata_3);
  assign _GEN_5 = $unsigned(RW0_wdata_2);
  assign _GEN_6 = $unsigned(RW0_wdata_1);
  assign _GEN_7 = $unsigned(RW0_wdata_0);
  assign _GEN_8 = {_GEN_4,_GEN_5};
  assign _GEN_9 = {_GEN_6,_GEN_7};
  assign tag_array_ext_RW0_wdata = {_GEN_8,_GEN_9};
  assign _GEN_10 = $unsigned(RW0_wmask_3);
  assign _GEN_11 = $unsigned(RW0_wmask_2);
  assign _GEN_12 = $unsigned(RW0_wmask_1);
  assign _GEN_13 = $unsigned(RW0_wmask_0);
  assign _GEN_14 = {_GEN_10,_GEN_11};
  assign _GEN_15 = {_GEN_12,_GEN_13};
  assign tag_array_ext_RW0_wmask = {_GEN_14,_GEN_15};
endmodule
`endif // __tag_array

