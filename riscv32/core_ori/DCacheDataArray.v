`include "include_module.v"
`ifdef __DCacheDataArray
module DCacheDataArray( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115333.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115334.4]
  input         io_req_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115336.4]
  input  [11:0] io_req_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115336.4]
  input         io_req_bits_write, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115336.4]
  input  [31:0] io_req_bits_wdata, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115336.4]
  input  [3:0]  io_req_bits_eccMask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115336.4]
  input  [3:0]  io_req_bits_way_en, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115336.4]
  output [31:0] io_resp_0, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115336.4]
  output [31:0] io_resp_1, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115336.4]
  output [31:0] io_resp_2, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115336.4]
  output [31:0] io_resp_3 // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115336.4]
);
  wire [9:0] data_arrays_0_RW0_addr; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@115379.4]
  wire  data_arrays_0_RW0_en; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@115379.4]
  wire  data_arrays_0_RW0_clk; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@115379.4]
  wire  data_arrays_0_RW0_wmode; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@115379.4]
  wire [7:0] data_arrays_0_RW0_wdata_0; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@115379.4]
  wire [7:0] data_arrays_0_RW0_wdata_1; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@115379.4]
  wire [7:0] data_arrays_0_RW0_wdata_2; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@115379.4]
  wire [7:0] data_arrays_0_RW0_wdata_3; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@115379.4]
  wire [7:0] data_arrays_0_RW0_wdata_4; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@115379.4]
  wire [7:0] data_arrays_0_RW0_wdata_5; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@115379.4]
  wire [7:0] data_arrays_0_RW0_wdata_6; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@115379.4]
  wire [7:0] data_arrays_0_RW0_wdata_7; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@115379.4]
  wire [7:0] data_arrays_0_RW0_wdata_8; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@115379.4]
  wire [7:0] data_arrays_0_RW0_wdata_9; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@115379.4]
  wire [7:0] data_arrays_0_RW0_wdata_10; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@115379.4]
  wire [7:0] data_arrays_0_RW0_wdata_11; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@115379.4]
  wire [7:0] data_arrays_0_RW0_wdata_12; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@115379.4]
  wire [7:0] data_arrays_0_RW0_wdata_13; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@115379.4]
  wire [7:0] data_arrays_0_RW0_wdata_14; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@115379.4]
  wire [7:0] data_arrays_0_RW0_wdata_15; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@115379.4]
  wire [7:0] data_arrays_0_RW0_rdata_0; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@115379.4]
  wire [7:0] data_arrays_0_RW0_rdata_1; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@115379.4]
  wire [7:0] data_arrays_0_RW0_rdata_2; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@115379.4]
  wire [7:0] data_arrays_0_RW0_rdata_3; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@115379.4]
  wire [7:0] data_arrays_0_RW0_rdata_4; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@115379.4]
  wire [7:0] data_arrays_0_RW0_rdata_5; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@115379.4]
  wire [7:0] data_arrays_0_RW0_rdata_6; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@115379.4]
  wire [7:0] data_arrays_0_RW0_rdata_7; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@115379.4]
  wire [7:0] data_arrays_0_RW0_rdata_8; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@115379.4]
  wire [7:0] data_arrays_0_RW0_rdata_9; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@115379.4]
  wire [7:0] data_arrays_0_RW0_rdata_10; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@115379.4]
  wire [7:0] data_arrays_0_RW0_rdata_11; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@115379.4]
  wire [7:0] data_arrays_0_RW0_rdata_12; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@115379.4]
  wire [7:0] data_arrays_0_RW0_rdata_13; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@115379.4]
  wire [7:0] data_arrays_0_RW0_rdata_14; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@115379.4]
  wire [7:0] data_arrays_0_RW0_rdata_15; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@115379.4]
  wire  data_arrays_0_RW0_wmask_0; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@115379.4]
  wire  data_arrays_0_RW0_wmask_1; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@115379.4]
  wire  data_arrays_0_RW0_wmask_2; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@115379.4]
  wire  data_arrays_0_RW0_wmask_3; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@115379.4]
  wire  data_arrays_0_RW0_wmask_4; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@115379.4]
  wire  data_arrays_0_RW0_wmask_5; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@115379.4]
  wire  data_arrays_0_RW0_wmask_6; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@115379.4]
  wire  data_arrays_0_RW0_wmask_7; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@115379.4]
  wire  data_arrays_0_RW0_wmask_8; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@115379.4]
  wire  data_arrays_0_RW0_wmask_9; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@115379.4]
  wire  data_arrays_0_RW0_wmask_10; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@115379.4]
  wire  data_arrays_0_RW0_wmask_11; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@115379.4]
  wire  data_arrays_0_RW0_wmask_12; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@115379.4]
  wire  data_arrays_0_RW0_wmask_13; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@115379.4]
  wire  data_arrays_0_RW0_wmask_14; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@115379.4]
  wire  data_arrays_0_RW0_wmask_15; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@115379.4]
  wire  eccMask_0; // @[DCache.scala 49:79:freechips.rocketchip.system.DefaultRV32Config.fir@115341.4]
  wire  eccMask_1; // @[DCache.scala 49:79:freechips.rocketchip.system.DefaultRV32Config.fir@115342.4]
  wire  eccMask_2; // @[DCache.scala 49:79:freechips.rocketchip.system.DefaultRV32Config.fir@115343.4]
  wire  eccMask_3; // @[DCache.scala 49:79:freechips.rocketchip.system.DefaultRV32Config.fir@115344.4]
  wire  _T; // @[DCache.scala 50:108:freechips.rocketchip.system.DefaultRV32Config.fir@115345.4]
  wire  _T_4; // @[DCache.scala 50:108:freechips.rocketchip.system.DefaultRV32Config.fir@115353.4]
  wire  _T_8; // @[DCache.scala 50:108:freechips.rocketchip.system.DefaultRV32Config.fir@115361.4]
  wire  _T_12; // @[DCache.scala 50:108:freechips.rocketchip.system.DefaultRV32Config.fir@115369.4]
  wire  _T_19; // @[DCache.scala 65:17:freechips.rocketchip.system.DefaultRV32Config.fir@115383.4]
  wire  _T_26; // @[DCache.scala 69:42:freechips.rocketchip.system.DefaultRV32Config.fir@115457.4]
  wire  _T_27; // @[DCache.scala 69:39:freechips.rocketchip.system.DefaultRV32Config.fir@115458.4]
  wire [15:0] _T_32; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@115468.4]
  wire [15:0] _T_33; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@115469.4]
  wire [15:0] _T_34; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@115471.4]
  wire [15:0] _T_35; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@115472.4]
  wire [15:0] _T_36; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@115474.4]
  wire [15:0] _T_37; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@115475.4]
  wire [15:0] _T_38; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@115477.4]
  wire [15:0] _T_39; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@115478.4]
  data_arrays_0 data_arrays_0 ( // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@115379.4]
    .RW0_addr(data_arrays_0_RW0_addr),
    .RW0_en(data_arrays_0_RW0_en),
    .RW0_clk(data_arrays_0_RW0_clk),
    .RW0_wmode(data_arrays_0_RW0_wmode),
    .RW0_wdata_0(data_arrays_0_RW0_wdata_0),
    .RW0_wdata_1(data_arrays_0_RW0_wdata_1),
    .RW0_wdata_2(data_arrays_0_RW0_wdata_2),
    .RW0_wdata_3(data_arrays_0_RW0_wdata_3),
    .RW0_wdata_4(data_arrays_0_RW0_wdata_4),
    .RW0_wdata_5(data_arrays_0_RW0_wdata_5),
    .RW0_wdata_6(data_arrays_0_RW0_wdata_6),
    .RW0_wdata_7(data_arrays_0_RW0_wdata_7),
    .RW0_wdata_8(data_arrays_0_RW0_wdata_8),
    .RW0_wdata_9(data_arrays_0_RW0_wdata_9),
    .RW0_wdata_10(data_arrays_0_RW0_wdata_10),
    .RW0_wdata_11(data_arrays_0_RW0_wdata_11),
    .RW0_wdata_12(data_arrays_0_RW0_wdata_12),
    .RW0_wdata_13(data_arrays_0_RW0_wdata_13),
    .RW0_wdata_14(data_arrays_0_RW0_wdata_14),
    .RW0_wdata_15(data_arrays_0_RW0_wdata_15),
    .RW0_rdata_0(data_arrays_0_RW0_rdata_0),
    .RW0_rdata_1(data_arrays_0_RW0_rdata_1),
    .RW0_rdata_2(data_arrays_0_RW0_rdata_2),
    .RW0_rdata_3(data_arrays_0_RW0_rdata_3),
    .RW0_rdata_4(data_arrays_0_RW0_rdata_4),
    .RW0_rdata_5(data_arrays_0_RW0_rdata_5),
    .RW0_rdata_6(data_arrays_0_RW0_rdata_6),
    .RW0_rdata_7(data_arrays_0_RW0_rdata_7),
    .RW0_rdata_8(data_arrays_0_RW0_rdata_8),
    .RW0_rdata_9(data_arrays_0_RW0_rdata_9),
    .RW0_rdata_10(data_arrays_0_RW0_rdata_10),
    .RW0_rdata_11(data_arrays_0_RW0_rdata_11),
    .RW0_rdata_12(data_arrays_0_RW0_rdata_12),
    .RW0_rdata_13(data_arrays_0_RW0_rdata_13),
    .RW0_rdata_14(data_arrays_0_RW0_rdata_14),
    .RW0_rdata_15(data_arrays_0_RW0_rdata_15),
    .RW0_wmask_0(data_arrays_0_RW0_wmask_0),
    .RW0_wmask_1(data_arrays_0_RW0_wmask_1),
    .RW0_wmask_2(data_arrays_0_RW0_wmask_2),
    .RW0_wmask_3(data_arrays_0_RW0_wmask_3),
    .RW0_wmask_4(data_arrays_0_RW0_wmask_4),
    .RW0_wmask_5(data_arrays_0_RW0_wmask_5),
    .RW0_wmask_6(data_arrays_0_RW0_wmask_6),
    .RW0_wmask_7(data_arrays_0_RW0_wmask_7),
    .RW0_wmask_8(data_arrays_0_RW0_wmask_8),
    .RW0_wmask_9(data_arrays_0_RW0_wmask_9),
    .RW0_wmask_10(data_arrays_0_RW0_wmask_10),
    .RW0_wmask_11(data_arrays_0_RW0_wmask_11),
    .RW0_wmask_12(data_arrays_0_RW0_wmask_12),
    .RW0_wmask_13(data_arrays_0_RW0_wmask_13),
    .RW0_wmask_14(data_arrays_0_RW0_wmask_14),
    .RW0_wmask_15(data_arrays_0_RW0_wmask_15)
  );
  assign eccMask_0 = io_req_bits_eccMask[0]; // @[DCache.scala 49:79:freechips.rocketchip.system.DefaultRV32Config.fir@115341.4]
  assign eccMask_1 = io_req_bits_eccMask[1]; // @[DCache.scala 49:79:freechips.rocketchip.system.DefaultRV32Config.fir@115342.4]
  assign eccMask_2 = io_req_bits_eccMask[2]; // @[DCache.scala 49:79:freechips.rocketchip.system.DefaultRV32Config.fir@115343.4]
  assign eccMask_3 = io_req_bits_eccMask[3]; // @[DCache.scala 49:79:freechips.rocketchip.system.DefaultRV32Config.fir@115344.4]
  assign _T = io_req_bits_way_en[0]; // @[DCache.scala 50:108:freechips.rocketchip.system.DefaultRV32Config.fir@115345.4]
  assign _T_4 = io_req_bits_way_en[1]; // @[DCache.scala 50:108:freechips.rocketchip.system.DefaultRV32Config.fir@115353.4]
  assign _T_8 = io_req_bits_way_en[2]; // @[DCache.scala 50:108:freechips.rocketchip.system.DefaultRV32Config.fir@115361.4]
  assign _T_12 = io_req_bits_way_en[3]; // @[DCache.scala 50:108:freechips.rocketchip.system.DefaultRV32Config.fir@115369.4]
  assign _T_19 = io_req_valid & io_req_bits_write; // @[DCache.scala 65:17:freechips.rocketchip.system.DefaultRV32Config.fir@115383.4]
  assign _T_26 = io_req_bits_write == 1'h0; // @[DCache.scala 69:42:freechips.rocketchip.system.DefaultRV32Config.fir@115457.4]
  assign _T_27 = io_req_valid & _T_26; // @[DCache.scala 69:39:freechips.rocketchip.system.DefaultRV32Config.fir@115458.4]
  assign _T_32 = {data_arrays_0_RW0_rdata_1,data_arrays_0_RW0_rdata_0}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@115468.4]
  assign _T_33 = {data_arrays_0_RW0_rdata_3,data_arrays_0_RW0_rdata_2}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@115469.4]
  assign _T_34 = {data_arrays_0_RW0_rdata_5,data_arrays_0_RW0_rdata_4}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@115471.4]
  assign _T_35 = {data_arrays_0_RW0_rdata_7,data_arrays_0_RW0_rdata_6}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@115472.4]
  assign _T_36 = {data_arrays_0_RW0_rdata_9,data_arrays_0_RW0_rdata_8}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@115474.4]
  assign _T_37 = {data_arrays_0_RW0_rdata_11,data_arrays_0_RW0_rdata_10}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@115475.4]
  assign _T_38 = {data_arrays_0_RW0_rdata_13,data_arrays_0_RW0_rdata_12}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@115477.4]
  assign _T_39 = {data_arrays_0_RW0_rdata_15,data_arrays_0_RW0_rdata_14}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@115478.4]
  assign io_resp_0 = {_T_33,_T_32}; // @[DCache.scala 72:69:freechips.rocketchip.system.DefaultRV32Config.fir@115480.4]
  assign io_resp_1 = {_T_35,_T_34}; // @[DCache.scala 72:69:freechips.rocketchip.system.DefaultRV32Config.fir@115481.4]
  assign io_resp_2 = {_T_37,_T_36}; // @[DCache.scala 72:69:freechips.rocketchip.system.DefaultRV32Config.fir@115482.4]
  assign io_resp_3 = {_T_39,_T_38}; // @[DCache.scala 72:69:freechips.rocketchip.system.DefaultRV32Config.fir@115483.4]
  assign data_arrays_0_RW0_wdata_0 = io_req_bits_wdata[7:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115409.8]
  assign data_arrays_0_RW0_wdata_1 = io_req_bits_wdata[15:8]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115412.8]
  assign data_arrays_0_RW0_wdata_2 = io_req_bits_wdata[23:16]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115415.8]
  assign data_arrays_0_RW0_wdata_3 = io_req_bits_wdata[31:24]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115418.8]
  assign data_arrays_0_RW0_wdata_4 = io_req_bits_wdata[7:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115421.8]
  assign data_arrays_0_RW0_wdata_5 = io_req_bits_wdata[15:8]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115424.8]
  assign data_arrays_0_RW0_wdata_6 = io_req_bits_wdata[23:16]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115427.8]
  assign data_arrays_0_RW0_wdata_7 = io_req_bits_wdata[31:24]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115430.8]
  assign data_arrays_0_RW0_wdata_8 = io_req_bits_wdata[7:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115433.8]
  assign data_arrays_0_RW0_wdata_9 = io_req_bits_wdata[15:8]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115436.8]
  assign data_arrays_0_RW0_wdata_10 = io_req_bits_wdata[23:16]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115439.8]
  assign data_arrays_0_RW0_wdata_11 = io_req_bits_wdata[31:24]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115442.8]
  assign data_arrays_0_RW0_wdata_12 = io_req_bits_wdata[7:0]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115445.8]
  assign data_arrays_0_RW0_wdata_13 = io_req_bits_wdata[15:8]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115448.8]
  assign data_arrays_0_RW0_wdata_14 = io_req_bits_wdata[23:16]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115451.8]
  assign data_arrays_0_RW0_wdata_15 = io_req_bits_wdata[31:24]; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115454.8]
  assign data_arrays_0_RW0_wmask_0 = eccMask_0 & _T; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115407.6 :freechips.rocketchip.system.DefaultRV32Config.fir@115409.8]
  assign data_arrays_0_RW0_wmask_1 = eccMask_1 & _T; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115407.6 :freechips.rocketchip.system.DefaultRV32Config.fir@115412.8]
  assign data_arrays_0_RW0_wmask_2 = eccMask_2 & _T; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115407.6 :freechips.rocketchip.system.DefaultRV32Config.fir@115415.8]
  assign data_arrays_0_RW0_wmask_3 = eccMask_3 & _T; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115407.6 :freechips.rocketchip.system.DefaultRV32Config.fir@115418.8]
  assign data_arrays_0_RW0_wmask_4 = eccMask_0 & _T_4; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115407.6 :freechips.rocketchip.system.DefaultRV32Config.fir@115421.8]
  assign data_arrays_0_RW0_wmask_5 = eccMask_1 & _T_4; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115407.6 :freechips.rocketchip.system.DefaultRV32Config.fir@115424.8]
  assign data_arrays_0_RW0_wmask_6 = eccMask_2 & _T_4; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115407.6 :freechips.rocketchip.system.DefaultRV32Config.fir@115427.8]
  assign data_arrays_0_RW0_wmask_7 = eccMask_3 & _T_4; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115407.6 :freechips.rocketchip.system.DefaultRV32Config.fir@115430.8]
  assign data_arrays_0_RW0_wmask_8 = eccMask_0 & _T_8; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115407.6 :freechips.rocketchip.system.DefaultRV32Config.fir@115433.8]
  assign data_arrays_0_RW0_wmask_9 = eccMask_1 & _T_8; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115407.6 :freechips.rocketchip.system.DefaultRV32Config.fir@115436.8]
  assign data_arrays_0_RW0_wmask_10 = eccMask_2 & _T_8; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115407.6 :freechips.rocketchip.system.DefaultRV32Config.fir@115439.8]
  assign data_arrays_0_RW0_wmask_11 = eccMask_3 & _T_8; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115407.6 :freechips.rocketchip.system.DefaultRV32Config.fir@115442.8]
  assign data_arrays_0_RW0_wmask_12 = eccMask_0 & _T_12; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115407.6 :freechips.rocketchip.system.DefaultRV32Config.fir@115445.8]
  assign data_arrays_0_RW0_wmask_13 = eccMask_1 & _T_12; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115407.6 :freechips.rocketchip.system.DefaultRV32Config.fir@115448.8]
  assign data_arrays_0_RW0_wmask_14 = eccMask_2 & _T_12; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115407.6 :freechips.rocketchip.system.DefaultRV32Config.fir@115451.8]
  assign data_arrays_0_RW0_wmask_15 = eccMask_3 & _T_12; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115407.6 :freechips.rocketchip.system.DefaultRV32Config.fir@115454.8]
  assign data_arrays_0_RW0_wmode = io_req_bits_write;
  assign data_arrays_0_RW0_clk = clock;
  assign data_arrays_0_RW0_en = _T_27 | _T_19;
  assign data_arrays_0_RW0_addr = io_req_bits_addr[11:2];
endmodule
`endif // __DCacheDataArray

