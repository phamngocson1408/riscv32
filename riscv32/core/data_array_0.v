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

  data_arrays_0_ext data_arrays_0_ext (
    .RW0_addr(data_arrays_0_ext_RW0_addr),
    .RW0_en(data_arrays_0_ext_RW0_en),
    .RW0_clk(data_arrays_0_ext_RW0_clk),
    .RW0_wmode(data_arrays_0_ext_RW0_wmode),
    .RW0_wdata(data_arrays_0_ext_RW0_wdata),
    .RW0_rdata(data_arrays_0_ext_RW0_rdata),
    .RW0_wmask(data_arrays_0_ext_RW0_wmask)
  );

`define MY_ASSIGNMENT
`ifdef MY_ASSIGNMENT
  assign data_arrays_0_ext_RW0_clk = RW0_clk;
  assign data_arrays_0_ext_RW0_en = RW0_en;
  assign data_arrays_0_ext_RW0_addr = RW0_addr;

  assign RW0_rdata_0 = $unsigned(data_arrays_0_ext_RW0_rdata[7:0]);
  assign RW0_rdata_1 = $unsigned(data_arrays_0_ext_RW0_rdata[15:8]);
  assign RW0_rdata_2 = $unsigned(data_arrays_0_ext_RW0_rdata[23:16]);
  assign RW0_rdata_3 = $unsigned(data_arrays_0_ext_RW0_rdata[31:24]);
  assign RW0_rdata_4 = $unsigned(data_arrays_0_ext_RW0_rdata[39:32]);
  assign RW0_rdata_5 = $unsigned(data_arrays_0_ext_RW0_rdata[47:40]);
  assign RW0_rdata_6 = $unsigned(data_arrays_0_ext_RW0_rdata[55:48]);
  assign RW0_rdata_7 = $unsigned(data_arrays_0_ext_RW0_rdata[63:56]);
  assign RW0_rdata_8 = $unsigned(data_arrays_0_ext_RW0_rdata[71:64]);
  assign RW0_rdata_9 = $unsigned(data_arrays_0_ext_RW0_rdata[79:72]);
  assign RW0_rdata_10 = $unsigned(data_arrays_0_ext_RW0_rdata[87:80]);
  assign RW0_rdata_11 = $unsigned(data_arrays_0_ext_RW0_rdata[95:88]);
  assign RW0_rdata_12 = $unsigned(data_arrays_0_ext_RW0_rdata[103:96]);
  assign RW0_rdata_13 = $unsigned(data_arrays_0_ext_RW0_rdata[111:104]);
  assign RW0_rdata_14 = $unsigned(data_arrays_0_ext_RW0_rdata[119:112]);
  assign RW0_rdata_15 = $unsigned(data_arrays_0_ext_RW0_rdata[127:120]);

  assign data_arrays_0_ext_RW0_wmode = RW0_wmode;

  assign data_arrays_0_ext_RW0_wdata = {$unsigned(RW0_wdata_15)
  					,$unsigned(RW0_wdata_14)
  					,$unsigned(RW0_wdata_13)
  					,$unsigned(RW0_wdata_12)
  					,$unsigned(RW0_wdata_11)
  					,$unsigned(RW0_wdata_10)
  					,$unsigned(RW0_wdata_9)
  					,$unsigned(RW0_wdata_8)
  					,$unsigned(RW0_wdata_7)
  					,$unsigned(RW0_wdata_6)
  					,$unsigned(RW0_wdata_5)
  					,$unsigned(RW0_wdata_4)
  					,$unsigned(RW0_wdata_3)
  					,$unsigned(RW0_wdata_2)
  					,$unsigned(RW0_wdata_1)
  					,$unsigned(RW0_wdata_0)
					};

  assign data_arrays_0_ext_RW0_wmask = {
  					$unsigned(RW0_wmask_15)
  					,$unsigned(RW0_wmask_14)
  					,$unsigned(RW0_wmask_13)
  					,$unsigned(RW0_wmask_12)
  					,$unsigned(RW0_wmask_11)
  					,$unsigned(RW0_wmask_10)
  					,$unsigned(RW0_wmask_9)
  					,$unsigned(RW0_wmask_8)
  					,$unsigned(RW0_wmask_7)
  					,$unsigned(RW0_wmask_6)
  					,$unsigned(RW0_wmask_5)
  					,$unsigned(RW0_wmask_4)
  					,$unsigned(RW0_wmask_3)
  					,$unsigned(RW0_wmask_2)
  					,$unsigned(RW0_wmask_1)
  					,$unsigned(RW0_wmask_0)
					};

`endif // MY_ASSIGNMENT

endmodule
`endif // __data_arrays_0

