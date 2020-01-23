`include "include_module.v"
`ifdef __ICache
module ICache(
  input         clock,
  input         reset,
  input         auto_master_out_a_ready,
  output        auto_master_out_a_valid,
  output [31:0] auto_master_out_a_bits_address,
  input         auto_master_out_d_valid,
  input  [2:0]  auto_master_out_d_bits_opcode,
  input  [3:0]  auto_master_out_d_bits_size,
  input  [31:0] auto_master_out_d_bits_data,
  input         auto_master_out_d_bits_corrupt,
  output        io_req_ready,
  input         io_req_valid,
  input  [31:0] io_req_bits_addr,
  input  [31:0] io_s1_paddr,
  input         io_s1_kill,
  input         io_s2_kill,
  output        io_resp_valid,
  output [31:0] io_resp_bits_data,
  output        io_resp_bits_ae,
  input         io_invalidate
);
  wire  MaxPeriodFibonacciLFSR_clock; // @[PRNG.scala 82:22:freechips.rocketchip.system.DefaultRV32Config.fir@127412.4]
  wire  MaxPeriodFibonacciLFSR_reset; // @[PRNG.scala 82:22:freechips.rocketchip.system.DefaultRV32Config.fir@127412.4]
  wire  MaxPeriodFibonacciLFSR_io_increment; // @[PRNG.scala 82:22:freechips.rocketchip.system.DefaultRV32Config.fir@127412.4]
  wire  MaxPeriodFibonacciLFSR_io_out_0; // @[PRNG.scala 82:22:freechips.rocketchip.system.DefaultRV32Config.fir@127412.4]
  wire  MaxPeriodFibonacciLFSR_io_out_1; // @[PRNG.scala 82:22:freechips.rocketchip.system.DefaultRV32Config.fir@127412.4]
  wire  MaxPeriodFibonacciLFSR_io_out_2; // @[PRNG.scala 82:22:freechips.rocketchip.system.DefaultRV32Config.fir@127412.4]
  wire  MaxPeriodFibonacciLFSR_io_out_3; // @[PRNG.scala 82:22:freechips.rocketchip.system.DefaultRV32Config.fir@127412.4]
  wire  MaxPeriodFibonacciLFSR_io_out_4; // @[PRNG.scala 82:22:freechips.rocketchip.system.DefaultRV32Config.fir@127412.4]
  wire  MaxPeriodFibonacciLFSR_io_out_5; // @[PRNG.scala 82:22:freechips.rocketchip.system.DefaultRV32Config.fir@127412.4]
  wire  MaxPeriodFibonacciLFSR_io_out_6; // @[PRNG.scala 82:22:freechips.rocketchip.system.DefaultRV32Config.fir@127412.4]
  wire  MaxPeriodFibonacciLFSR_io_out_7; // @[PRNG.scala 82:22:freechips.rocketchip.system.DefaultRV32Config.fir@127412.4]
  wire  MaxPeriodFibonacciLFSR_io_out_8; // @[PRNG.scala 82:22:freechips.rocketchip.system.DefaultRV32Config.fir@127412.4]
  wire  MaxPeriodFibonacciLFSR_io_out_9; // @[PRNG.scala 82:22:freechips.rocketchip.system.DefaultRV32Config.fir@127412.4]
  wire  MaxPeriodFibonacciLFSR_io_out_10; // @[PRNG.scala 82:22:freechips.rocketchip.system.DefaultRV32Config.fir@127412.4]
  wire  MaxPeriodFibonacciLFSR_io_out_11; // @[PRNG.scala 82:22:freechips.rocketchip.system.DefaultRV32Config.fir@127412.4]
  wire  MaxPeriodFibonacciLFSR_io_out_12; // @[PRNG.scala 82:22:freechips.rocketchip.system.DefaultRV32Config.fir@127412.4]
  wire  MaxPeriodFibonacciLFSR_io_out_13; // @[PRNG.scala 82:22:freechips.rocketchip.system.DefaultRV32Config.fir@127412.4]
  wire  MaxPeriodFibonacciLFSR_io_out_14; // @[PRNG.scala 82:22:freechips.rocketchip.system.DefaultRV32Config.fir@127412.4]
  wire  MaxPeriodFibonacciLFSR_io_out_15; // @[PRNG.scala 82:22:freechips.rocketchip.system.DefaultRV32Config.fir@127412.4]
  wire [5:0] tag_array_RW0_addr; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@127514.4]
  wire  tag_array_RW0_en; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@127514.4]
  wire  tag_array_RW0_clk; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@127514.4]
  wire  tag_array_RW0_wmode; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@127514.4]
  wire [20:0] tag_array_RW0_wdata_0; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@127514.4]
  wire [20:0] tag_array_RW0_wdata_1; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@127514.4]
  wire [20:0] tag_array_RW0_wdata_2; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@127514.4]
  wire [20:0] tag_array_RW0_wdata_3; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@127514.4]
  wire [20:0] tag_array_RW0_rdata_0; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@127514.4]
  wire [20:0] tag_array_RW0_rdata_1; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@127514.4]
  wire [20:0] tag_array_RW0_rdata_2; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@127514.4]
  wire [20:0] tag_array_RW0_rdata_3; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@127514.4]
  wire  tag_array_RW0_wmask_0; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@127514.4]
  wire  tag_array_RW0_wmask_1; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@127514.4]
  wire  tag_array_RW0_wmask_2; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@127514.4]
  wire  tag_array_RW0_wmask_3; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@127514.4]
  wire [9:0] data_arrays_0_RW0_addr; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@127735.4]
  wire  data_arrays_0_RW0_en; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@127735.4]
  wire  data_arrays_0_RW0_clk; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@127735.4]
  wire  data_arrays_0_RW0_wmode; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@127735.4]
  wire [31:0] data_arrays_0_RW0_wdata_0; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@127735.4]
  wire [31:0] data_arrays_0_RW0_wdata_1; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@127735.4]
  wire [31:0] data_arrays_0_RW0_wdata_2; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@127735.4]
  wire [31:0] data_arrays_0_RW0_wdata_3; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@127735.4]
  wire [31:0] data_arrays_0_RW0_rdata_0; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@127735.4]
  wire [31:0] data_arrays_0_RW0_rdata_1; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@127735.4]
  wire [31:0] data_arrays_0_RW0_rdata_2; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@127735.4]
  wire [31:0] data_arrays_0_RW0_rdata_3; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@127735.4]
  wire  data_arrays_0_RW0_wmask_0; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@127735.4]
  wire  data_arrays_0_RW0_wmask_1; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@127735.4]
  wire  data_arrays_0_RW0_wmask_2; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@127735.4]
  wire  data_arrays_0_RW0_wmask_3; // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@127735.4]
  wire  s0_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@127332.4]
  reg  s1_valid; // @[ICache.scala 159:21:freechips.rocketchip.system.DefaultRV32Config.fir@127333.4]
  reg [31:0] _RAND_0;
  reg [255:0] vb_array; // @[ICache.scala 219:21:freechips.rocketchip.system.DefaultRV32Config.fir@127557.4]
  reg [255:0] _RAND_1;
  wire [5:0] _T_122; // @[ICache.scala 453:21:freechips.rocketchip.system.DefaultRV32Config.fir@127586.4]
  wire [6:0] _T_136; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@127600.4]
  wire [255:0] _T_137; // @[ICache.scala 247:25:freechips.rocketchip.system.DefaultRV32Config.fir@127601.4]
  wire  _T_138; // @[ICache.scala 247:25:freechips.rocketchip.system.DefaultRV32Config.fir@127602.4]
  wire [19:0] _T_142; // @[package.scala 120:13:freechips.rocketchip.system.DefaultRV32Config.fir@127606.4]
  wire [19:0] _T_123; // @[ICache.scala 242:30:freechips.rocketchip.system.DefaultRV32Config.fir@127587.4]
  wire  _T_143; // @[ICache.scala 250:33:freechips.rocketchip.system.DefaultRV32Config.fir@127607.4]
  wire  s1_tag_hit_0; // @[ICache.scala 250:26:freechips.rocketchip.system.DefaultRV32Config.fir@127608.4]
  wire [6:0] _T_164; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@127631.4]
  wire [255:0] _T_165; // @[ICache.scala 247:25:freechips.rocketchip.system.DefaultRV32Config.fir@127632.4]
  wire  _T_166; // @[ICache.scala 247:25:freechips.rocketchip.system.DefaultRV32Config.fir@127633.4]
  wire [19:0] _T_170; // @[package.scala 120:13:freechips.rocketchip.system.DefaultRV32Config.fir@127637.4]
  wire  _T_171; // @[ICache.scala 250:33:freechips.rocketchip.system.DefaultRV32Config.fir@127638.4]
  wire  s1_tag_hit_1; // @[ICache.scala 250:26:freechips.rocketchip.system.DefaultRV32Config.fir@127639.4]
  wire  _T; // @[ICache.scala 162:35:freechips.rocketchip.system.DefaultRV32Config.fir@127340.4]
  wire [7:0] _T_192; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@127662.4]
  wire [255:0] _T_193; // @[ICache.scala 247:25:freechips.rocketchip.system.DefaultRV32Config.fir@127663.4]
  wire  _T_194; // @[ICache.scala 247:25:freechips.rocketchip.system.DefaultRV32Config.fir@127664.4]
  wire [19:0] _T_198; // @[package.scala 120:13:freechips.rocketchip.system.DefaultRV32Config.fir@127668.4]
  wire  _T_199; // @[ICache.scala 250:33:freechips.rocketchip.system.DefaultRV32Config.fir@127669.4]
  wire  s1_tag_hit_2; // @[ICache.scala 250:26:freechips.rocketchip.system.DefaultRV32Config.fir@127670.4]
  wire  _T_1; // @[ICache.scala 162:35:freechips.rocketchip.system.DefaultRV32Config.fir@127341.4]
  wire [7:0] _T_220; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@127693.4]
  wire [255:0] _T_221; // @[ICache.scala 247:25:freechips.rocketchip.system.DefaultRV32Config.fir@127694.4]
  wire  _T_222; // @[ICache.scala 247:25:freechips.rocketchip.system.DefaultRV32Config.fir@127695.4]
  wire [19:0] _T_226; // @[package.scala 120:13:freechips.rocketchip.system.DefaultRV32Config.fir@127699.4]
  wire  _T_227; // @[ICache.scala 250:33:freechips.rocketchip.system.DefaultRV32Config.fir@127700.4]
  wire  s1_tag_hit_3; // @[ICache.scala 250:26:freechips.rocketchip.system.DefaultRV32Config.fir@127701.4]
  wire  _T_2; // @[ICache.scala 162:35:freechips.rocketchip.system.DefaultRV32Config.fir@127342.4]
  wire  s1_hit; // @[ICache.scala 162:40:freechips.rocketchip.system.DefaultRV32Config.fir@127344.4]
  wire  _T_4; // @[ICache.scala 164:38:freechips.rocketchip.system.DefaultRV32Config.fir@127345.4]
  wire  _T_5; // @[ICache.scala 164:35:freechips.rocketchip.system.DefaultRV32Config.fir@127346.4]
  reg  s2_valid; // @[ICache.scala 164:25:freechips.rocketchip.system.DefaultRV32Config.fir@127347.4]
  reg [31:0] _RAND_2;
  reg  s2_hit; // @[ICache.scala 165:23:freechips.rocketchip.system.DefaultRV32Config.fir@127349.4]
  reg [31:0] _RAND_3;
  reg  invalidated; // @[ICache.scala 167:24:freechips.rocketchip.system.DefaultRV32Config.fir@127351.4]
  reg [31:0] _RAND_4;
  reg  refill_valid; // @[ICache.scala 168:29:freechips.rocketchip.system.DefaultRV32Config.fir@127352.4]
  reg [31:0] _RAND_5;
  wire  _T_8; // @[ICache.scala 172:29:freechips.rocketchip.system.DefaultRV32Config.fir@127358.4]
  wire  _T_9; // @[ICache.scala 172:26:freechips.rocketchip.system.DefaultRV32Config.fir@127359.4]
  wire  _T_10; // @[ICache.scala 172:40:freechips.rocketchip.system.DefaultRV32Config.fir@127360.4]
  wire  s2_miss; // @[ICache.scala 172:37:freechips.rocketchip.system.DefaultRV32Config.fir@127361.4]
  reg  _T_12; // @[ICache.scala 174:45:freechips.rocketchip.system.DefaultRV32Config.fir@127364.4]
  reg [31:0] _RAND_6;
  wire  s2_request_refill; // @[ICache.scala 174:35:freechips.rocketchip.system.DefaultRV32Config.fir@127366.4]
  wire  refill_fire; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@127354.4]
  wire  _T_11; // @[ICache.scala 173:41:freechips.rocketchip.system.DefaultRV32Config.fir@127362.4]
  wire  s1_can_request_refill; // @[ICache.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@127363.4]
  wire  _T_13; // @[ICache.scala 175:54:freechips.rocketchip.system.DefaultRV32Config.fir@127367.4]
  reg [31:0] refill_paddr; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@127368.4]
  reg [31:0] _RAND_7;
  wire [19:0] refill_tag; // @[ICache.scala 177:33:freechips.rocketchip.system.DefaultRV32Config.fir@127377.4]
  wire [5:0] refill_idx; // @[ICache.scala 453:21:freechips.rocketchip.system.DefaultRV32Config.fir@127378.4]
  wire  _T_16; // @[Edges.scala 107:36:freechips.rocketchip.system.DefaultRV32Config.fir@127380.4]
  wire  refill_one_beat; // @[ICache.scala 179:41:freechips.rocketchip.system.DefaultRV32Config.fir@127381.4]
  wire [26:0] _T_22; // @[package.scala 189:77:freechips.rocketchip.system.DefaultRV32Config.fir@127389.4]
  wire [11:0] _T_23; // @[package.scala 189:82:freechips.rocketchip.system.DefaultRV32Config.fir@127390.4]
  wire [11:0] _T_24; // @[package.scala 189:46:freechips.rocketchip.system.DefaultRV32Config.fir@127391.4]
  wire [9:0] _T_25; // @[Edges.scala 221:59:freechips.rocketchip.system.DefaultRV32Config.fir@127392.4]
  wire [9:0] _T_27; // @[Edges.scala 222:14:freechips.rocketchip.system.DefaultRV32Config.fir@127394.4]
  reg [9:0] _T_28; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@127395.4]
  reg [31:0] _RAND_8;
  wire [9:0] _T_30; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@127397.4]
  wire  _T_31; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@127398.4]
  wire  _T_32; // @[Edges.scala 233:25:freechips.rocketchip.system.DefaultRV32Config.fir@127399.4]
  wire  _T_33; // @[Edges.scala 233:47:freechips.rocketchip.system.DefaultRV32Config.fir@127400.4]
  wire  _T_34; // @[Edges.scala 233:37:freechips.rocketchip.system.DefaultRV32Config.fir@127401.4]
  wire  d_done; // @[Edges.scala 234:22:freechips.rocketchip.system.DefaultRV32Config.fir@127402.4]
  wire [9:0] _T_35; // @[Edges.scala 235:27:freechips.rocketchip.system.DefaultRV32Config.fir@127403.4]
  wire [9:0] refill_cnt; // @[Edges.scala 235:25:freechips.rocketchip.system.DefaultRV32Config.fir@127404.4]
  wire  refill_done; // @[ICache.scala 185:37:freechips.rocketchip.system.DefaultRV32Config.fir@127409.4]
  wire [7:0] _T_44; // @[PRNG.scala 86:17:freechips.rocketchip.system.DefaultRV32Config.fir@127439.4]
  wire [15:0] _T_52; // @[PRNG.scala 86:17:freechips.rocketchip.system.DefaultRV32Config.fir@127447.4]
  wire  _T_53; // @[LFSR.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@127448.4]
  wire  _T_54; // @[LFSR.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@127449.4]
  wire  _T_55; // @[LFSR.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@127450.4]
  wire  _T_56; // @[LFSR.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@127451.4]
  wire  _T_57; // @[LFSR.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@127452.4]
  wire  _T_58; // @[LFSR.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@127453.4]
  wire  _T_59; // @[LFSR.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@127454.4]
  wire  _T_60; // @[LFSR.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@127455.4]
  wire  _T_61; // @[LFSR.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@127456.4]
  wire  _T_62; // @[LFSR.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@127457.4]
  wire  _T_63; // @[LFSR.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@127458.4]
  wire  _T_64; // @[LFSR.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@127459.4]
  wire  _T_65; // @[LFSR.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@127460.4]
  wire  _T_66; // @[LFSR.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@127461.4]
  wire  _T_67; // @[LFSR.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@127462.4]
  wire  _T_68; // @[LFSR.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@127463.4]
  wire [7:0] _T_76; // @[LFSR.scala 43:8:freechips.rocketchip.system.DefaultRV32Config.fir@127487.4]
  wire [15:0] _T_84; // @[LFSR.scala 43:8:freechips.rocketchip.system.DefaultRV32Config.fir@127495.4]
  wire [1:0] repl_way; // @[ICache.scala 191:33:freechips.rocketchip.system.DefaultRV32Config.fir@127496.4]
  wire [7:0] _T_87; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@127498.4]
  wire [5:0] _T_98; // @[ICache.scala 208:42:freechips.rocketchip.system.DefaultRV32Config.fir@127515.4]
  wire  _T_99; // @[ICache.scala 208:70:freechips.rocketchip.system.DefaultRV32Config.fir@127516.4]
  wire  _T_100; // @[ICache.scala 208:83:freechips.rocketchip.system.DefaultRV32Config.fir@127517.4]
  reg  accruedRefillError; // @[ICache.scala 209:31:freechips.rocketchip.system.DefaultRV32Config.fir@127527.4]
  reg [31:0] _RAND_9;
  wire  _T_104; // @[ICache.scala 210:58:freechips.rocketchip.system.DefaultRV32Config.fir@127528.4]
  wire  _T_105; // @[ICache.scala 210:62:freechips.rocketchip.system.DefaultRV32Config.fir@127529.4]
  wire  refillError; // @[ICache.scala 210:43:freechips.rocketchip.system.DefaultRV32Config.fir@127530.4]
  wire  _T_114; // @[ICache.scala 223:75:freechips.rocketchip.system.DefaultRV32Config.fir@127561.6]
  wire  _T_115; // @[ICache.scala 223:72:freechips.rocketchip.system.DefaultRV32Config.fir@127562.6]
  wire [255:0] _T_116; // @[ICache.scala 223:32:freechips.rocketchip.system.DefaultRV32Config.fir@127563.6]
  wire [255:0] _T_117; // @[ICache.scala 223:32:freechips.rocketchip.system.DefaultRV32Config.fir@127564.6]
  wire [255:0] _T_118; // @[ICache.scala 223:32:freechips.rocketchip.system.DefaultRV32Config.fir@127565.6]
  wire [255:0] _T_119; // @[ICache.scala 223:32:freechips.rocketchip.system.DefaultRV32Config.fir@127566.6]
  wire [255:0] _T_120; // @[ICache.scala 223:32:freechips.rocketchip.system.DefaultRV32Config.fir@127567.6]
  wire  _GEN_30; // @[ICache.scala 226:21:freechips.rocketchip.system.DefaultRV32Config.fir@127574.4]
  wire  _T_141; // @[package.scala 120:13:freechips.rocketchip.system.DefaultRV32Config.fir@127605.4]
  wire  s1_tl_error_0; // @[ICache.scala 252:32:freechips.rocketchip.system.DefaultRV32Config.fir@127613.4]
  wire  _T_169; // @[package.scala 120:13:freechips.rocketchip.system.DefaultRV32Config.fir@127636.4]
  wire  s1_tl_error_1; // @[ICache.scala 252:32:freechips.rocketchip.system.DefaultRV32Config.fir@127644.4]
  wire  _T_197; // @[package.scala 120:13:freechips.rocketchip.system.DefaultRV32Config.fir@127667.4]
  wire  s1_tl_error_2; // @[ICache.scala 252:32:freechips.rocketchip.system.DefaultRV32Config.fir@127675.4]
  wire  _T_225; // @[package.scala 120:13:freechips.rocketchip.system.DefaultRV32Config.fir@127698.4]
  wire  s1_tl_error_3; // @[ICache.scala 252:32:freechips.rocketchip.system.DefaultRV32Config.fir@127706.4]
  wire  _T_235; // @[ICache.scala 255:10:freechips.rocketchip.system.DefaultRV32Config.fir@127711.4]
  wire [1:0] _T_244; // @[Bitwise.scala 47:55:freechips.rocketchip.system.DefaultRV32Config.fir@127720.4]
  wire [1:0] _T_246; // @[Bitwise.scala 47:55:freechips.rocketchip.system.DefaultRV32Config.fir@127722.4]
  wire [2:0] _T_248; // @[Bitwise.scala 47:55:freechips.rocketchip.system.DefaultRV32Config.fir@127724.4]
  wire  _T_250; // @[ICache.scala 255:115:freechips.rocketchip.system.DefaultRV32Config.fir@127726.4]
  wire  _T_251; // @[ICache.scala 255:39:freechips.rocketchip.system.DefaultRV32Config.fir@127727.4]
  wire  _T_253; // @[ICache.scala 255:9:freechips.rocketchip.system.DefaultRV32Config.fir@127729.4]
  wire  _T_254; // @[ICache.scala 255:9:freechips.rocketchip.system.DefaultRV32Config.fir@127730.4]
  wire  _T_261; // @[ICache.scala 273:32:freechips.rocketchip.system.DefaultRV32Config.fir@127742.4]
  wire [9:0] _T_265; // @[ICache.scala 274:52:freechips.rocketchip.system.DefaultRV32Config.fir@127746.4]
  wire [9:0] _T_266; // @[ICache.scala 274:79:freechips.rocketchip.system.DefaultRV32Config.fir@127747.4]
  wire [9:0] _T_268; // @[ICache.scala 271:31:freechips.rocketchip.system.DefaultRV32Config.fir@127749.4]
  wire  _T_282; // @[ICache.scala 283:41:freechips.rocketchip.system.DefaultRV32Config.fir@127782.4]
  wire  _T_283; // @[ICache.scala 283:46:freechips.rocketchip.system.DefaultRV32Config.fir@127783.4]
  wire [31:0] s1_dout_0; // @[ICache.scala 284:71:freechips.rocketchip.system.DefaultRV32Config.fir@127795.4]
  wire [31:0] s1_dout_1; // @[ICache.scala 284:71:freechips.rocketchip.system.DefaultRV32Config.fir@127795.4]
  wire [31:0] s1_dout_2; // @[ICache.scala 284:71:freechips.rocketchip.system.DefaultRV32Config.fir@127795.4]
  wire [31:0] s1_dout_3; // @[ICache.scala 284:71:freechips.rocketchip.system.DefaultRV32Config.fir@127795.4]
  reg  s2_tag_hit_0; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@127799.4]
  reg [31:0] _RAND_10;
  reg  s2_tag_hit_1; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@127799.4]
  reg [31:0] _RAND_11;
  reg  s2_tag_hit_2; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@127799.4]
  reg [31:0] _RAND_12;
  reg  s2_tag_hit_3; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@127799.4]
  reg [31:0] _RAND_13;
  reg [31:0] s2_dout_0; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@127819.4]
  reg [31:0] _RAND_14;
  reg [31:0] s2_dout_1; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@127819.4]
  reg [31:0] _RAND_15;
  reg [31:0] s2_dout_2; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@127819.4]
  reg [31:0] _RAND_16;
  reg [31:0] s2_dout_3; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@127819.4]
  reg [31:0] _RAND_17;
  wire [31:0] _T_301; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@127826.4]
  wire [31:0] _T_302; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@127827.4]
  wire [31:0] _T_303; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@127828.4]
  wire [31:0] _T_304; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@127829.4]
  wire [31:0] _T_305; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@127830.4]
  wire [31:0] _T_306; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@127831.4]
  wire [3:0] _T_314; // @[ICache.scala 297:43:freechips.rocketchip.system.DefaultRV32Config.fir@127848.4]
  wire  _T_315; // @[ICache.scala 297:50:freechips.rocketchip.system.DefaultRV32Config.fir@127849.4]
  reg  s2_tl_error; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@127850.4]
  reg [31:0] _RAND_18;
  wire [25:0] _T_326; // @[ICache.scala 406:47:freechips.rocketchip.system.DefaultRV32Config.fir@127882.4]
  wire  _T_422; // @[ICache.scala 443:9:freechips.rocketchip.system.DefaultRV32Config.fir@127998.4]
  wire  _GEN_74; // @[ICache.scala 444:22:freechips.rocketchip.system.DefaultRV32Config.fir@128002.4]
  MaxPeriodFibonacciLFSR MaxPeriodFibonacciLFSR ( // @[PRNG.scala 82:22:freechips.rocketchip.system.DefaultRV32Config.fir@127412.4]
    .clock(MaxPeriodFibonacciLFSR_clock),
    .reset(MaxPeriodFibonacciLFSR_reset),
    .io_increment(MaxPeriodFibonacciLFSR_io_increment),
    .io_out_0(MaxPeriodFibonacciLFSR_io_out_0),
    .io_out_1(MaxPeriodFibonacciLFSR_io_out_1),
    .io_out_2(MaxPeriodFibonacciLFSR_io_out_2),
    .io_out_3(MaxPeriodFibonacciLFSR_io_out_3),
    .io_out_4(MaxPeriodFibonacciLFSR_io_out_4),
    .io_out_5(MaxPeriodFibonacciLFSR_io_out_5),
    .io_out_6(MaxPeriodFibonacciLFSR_io_out_6),
    .io_out_7(MaxPeriodFibonacciLFSR_io_out_7),
    .io_out_8(MaxPeriodFibonacciLFSR_io_out_8),
    .io_out_9(MaxPeriodFibonacciLFSR_io_out_9),
    .io_out_10(MaxPeriodFibonacciLFSR_io_out_10),
    .io_out_11(MaxPeriodFibonacciLFSR_io_out_11),
    .io_out_12(MaxPeriodFibonacciLFSR_io_out_12),
    .io_out_13(MaxPeriodFibonacciLFSR_io_out_13),
    .io_out_14(MaxPeriodFibonacciLFSR_io_out_14),
    .io_out_15(MaxPeriodFibonacciLFSR_io_out_15)
  );
  tag_array_0 tag_array ( // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@127514.4]
    .RW0_addr(tag_array_RW0_addr),
    .RW0_en(tag_array_RW0_en),
    .RW0_clk(tag_array_RW0_clk),
    .RW0_wmode(tag_array_RW0_wmode),
    .RW0_wdata_0(tag_array_RW0_wdata_0),
    .RW0_wdata_1(tag_array_RW0_wdata_1),
    .RW0_wdata_2(tag_array_RW0_wdata_2),
    .RW0_wdata_3(tag_array_RW0_wdata_3),
    .RW0_rdata_0(tag_array_RW0_rdata_0),
    .RW0_rdata_1(tag_array_RW0_rdata_1),
    .RW0_rdata_2(tag_array_RW0_rdata_2),
    .RW0_rdata_3(tag_array_RW0_rdata_3),
    .RW0_wmask_0(tag_array_RW0_wmask_0),
    .RW0_wmask_1(tag_array_RW0_wmask_1),
    .RW0_wmask_2(tag_array_RW0_wmask_2),
    .RW0_wmask_3(tag_array_RW0_wmask_3)
  );
  data_arrays_0_0 data_arrays_0 ( // @[DescribedSRAM.scala 25:26:freechips.rocketchip.system.DefaultRV32Config.fir@127735.4]
    .RW0_addr(data_arrays_0_RW0_addr),
    .RW0_en(data_arrays_0_RW0_en),
    .RW0_clk(data_arrays_0_RW0_clk),
    .RW0_wmode(data_arrays_0_RW0_wmode),
    .RW0_wdata_0(data_arrays_0_RW0_wdata_0),
    .RW0_wdata_1(data_arrays_0_RW0_wdata_1),
    .RW0_wdata_2(data_arrays_0_RW0_wdata_2),
    .RW0_wdata_3(data_arrays_0_RW0_wdata_3),
    .RW0_rdata_0(data_arrays_0_RW0_rdata_0),
    .RW0_rdata_1(data_arrays_0_RW0_rdata_1),
    .RW0_rdata_2(data_arrays_0_RW0_rdata_2),
    .RW0_rdata_3(data_arrays_0_RW0_rdata_3),
    .RW0_wmask_0(data_arrays_0_RW0_wmask_0),
    .RW0_wmask_1(data_arrays_0_RW0_wmask_1),
    .RW0_wmask_2(data_arrays_0_RW0_wmask_2),
    .RW0_wmask_3(data_arrays_0_RW0_wmask_3)
  );

`define MY_ASSIGNMENT
`ifdef MY_ASSIGNMENT
  assign s0_valid = io_req_ready & io_req_valid;

  assign _T_137 = vb_array >> {1'h0,io_s1_paddr[11:6]};
  assign s1_tag_hit_0 = _T_137[0] & (tag_array_RW0_rdata_0[19:0] == io_s1_paddr[31:12]);

  assign _T_165 = vb_array >> {1'h1,io_s1_paddr[11:6]};
  assign s1_tag_hit_1 = _T_165[0] & (tag_array_RW0_rdata_1[19:0] == io_s1_paddr[31:12]);

  assign _T_193 = vb_array >> {2'h2,io_s1_paddr[11:6]};
  assign s1_tag_hit_2 = _T_193[0] & (tag_array_RW0_rdata_2[19:0] == io_s1_paddr[31:12]);

  assign _T_221 = vb_array >> {2'h3,io_s1_paddr[11:6]};
  assign s1_tag_hit_3 = _T_221[0] & (tag_array_RW0_rdata_3[19:0] == io_s1_paddr[31:12]);

  assign s1_hit = s1_tag_hit_0 | s1_tag_hit_1 | s1_tag_hit_2 | s1_tag_hit_3;

  assign s2_miss = s2_valid & !s2_hit & !io_s2_kill;

  assign s2_request_refill = s2_miss & _T_12;

  assign refill_fire = auto_master_out_a_ready & s2_request_refill;

  assign s1_can_request_refill = (s2_miss | refill_valid) == 1'h0;

  assign refill_tag = refill_paddr[31:12];
  assign refill_idx = refill_paddr[11:6];

  assign refill_one_beat = auto_master_out_d_valid & auto_master_out_d_bits_opcode[0];

  assign _T_22 = 27'hfff << auto_master_out_d_bits_size;
  assign _T_27 = auto_master_out_d_bits_opcode[0] ? ~ _T_22[11:2] : 10'h0;
  assign d_done = ((_T_28 == 10'h1) | (_T_27 == 10'h0)) & auto_master_out_d_valid;

  assign _T_30 = _T_28 - 10'h1;
  assign refill_cnt = _T_27 & (~ _T_30);
  assign refill_done = refill_one_beat & d_done;

  assign _T_52 = {MaxPeriodFibonacciLFSR_io_out_15,MaxPeriodFibonacciLFSR_io_out_14,MaxPeriodFibonacciLFSR_io_out_13,MaxPeriodFibonacciLFSR_io_out_12,MaxPeriodFibonacciLFSR_io_out_11,MaxPeriodFibonacciLFSR_io_out_10,MaxPeriodFibonacciLFSR_io_out_9,MaxPeriodFibonacciLFSR_io_out_8,MaxPeriodFibonacciLFSR_io_out_7,MaxPeriodFibonacciLFSR_io_out_6,MaxPeriodFibonacciLFSR_io_out_5,MaxPeriodFibonacciLFSR_io_out_4,MaxPeriodFibonacciLFSR_io_out_3,MaxPeriodFibonacciLFSR_io_out_2,MaxPeriodFibonacciLFSR_io_out_1,MaxPeriodFibonacciLFSR_io_out_0};
  assign _T_84 = {_T_52[0],_T_52[1],_T_52[2],_T_52[3],_T_52[4],_T_52[5],_T_52[6],_T_52[7],_T_52[8],_T_52[9],_T_52[10],_T_52[11],_T_52[12],_T_52[13],_T_52[14],_T_52[15]};
  assign repl_way = _T_84[1:0];

  assign refillError = auto_master_out_d_bits_corrupt | ((refill_cnt > 10'h0) & accruedRefillError);

  assign s1_tl_error_0 = s1_tag_hit_0 & tag_array_RW0_rdata_0[20];
  assign s1_tl_error_1 = s1_tag_hit_1 & tag_array_RW0_rdata_1[20];
  assign s1_tl_error_2 = s1_tag_hit_2 & tag_array_RW0_rdata_2[20];
  assign s1_tl_error_3 = s1_tag_hit_3 & tag_array_RW0_rdata_3[20];

  assign s1_dout_0 = data_arrays_0_RW0_rdata_0;
  assign s1_dout_1 = data_arrays_0_RW0_rdata_1;
  assign s1_dout_2 = data_arrays_0_RW0_rdata_2;
  assign s1_dout_3 = data_arrays_0_RW0_rdata_3;

  assign auto_master_out_a_valid = s2_miss & _T_12;

  assign auto_master_out_a_bits_address = {refill_paddr[31:6], 6'h0};

  assign io_req_ready = refill_one_beat == 1'h0;
  assign io_resp_valid = s2_valid & s2_hit;
  assign io_resp_bits_data = (s2_tag_hit_0 ? s2_dout_0 : 32'h0) 
				| (s2_tag_hit_1 ? s2_dout_1 : 32'h0) 
				| (s2_tag_hit_2 ? s2_dout_2 : 32'h0) 
				| (s2_tag_hit_3 ? s2_dout_3 : 32'h0);
  assign io_resp_bits_ae = s2_tl_error;

  assign MaxPeriodFibonacciLFSR_clock = clock;
  assign MaxPeriodFibonacciLFSR_reset = reset;
  assign MaxPeriodFibonacciLFSR_io_increment = auto_master_out_a_ready & s2_request_refill;

  assign tag_array_RW0_wdata_0 = {refillError,refill_tag};
  assign tag_array_RW0_wdata_1 = {refillError,refill_tag};
  assign tag_array_RW0_wdata_2 = {refillError,refill_tag};
  assign tag_array_RW0_wdata_3 = {refillError,refill_tag};
  assign tag_array_RW0_wmask_0 = repl_way == 2'h0;
  assign tag_array_RW0_wmask_1 = repl_way == 2'h1;
  assign tag_array_RW0_wmask_2 = repl_way == 2'h2;
  assign tag_array_RW0_wmask_3 = repl_way == 2'h3;

  assign data_arrays_0_RW0_wdata_0 = auto_master_out_d_bits_data;
  assign data_arrays_0_RW0_wdata_1 = auto_master_out_d_bits_data;
  assign data_arrays_0_RW0_wdata_2 = auto_master_out_d_bits_data;
  assign data_arrays_0_RW0_wdata_3 = auto_master_out_d_bits_data;
  assign data_arrays_0_RW0_wmask_0 = repl_way == 2'h0;
  assign data_arrays_0_RW0_wmask_1 = repl_way == 2'h1;
  assign data_arrays_0_RW0_wmask_2 = repl_way == 2'h2;
  assign data_arrays_0_RW0_wmask_3 = repl_way == 2'h3;

  assign tag_array_RW0_wmode = refill_one_beat & d_done;
  assign tag_array_RW0_clk = clock;
  assign tag_array_RW0_en = (!refill_done & s0_valid) | refill_done;
  assign tag_array_RW0_addr = refill_done ? refill_idx : io_req_bits_addr[11:6];

  assign data_arrays_0_RW0_wmode = refill_one_beat & !invalidated;
  assign data_arrays_0_RW0_clk = clock;
  assign data_arrays_0_RW0_en = (!(refill_one_beat & !invalidated) & s0_valid) | (refill_one_beat & !invalidated);
  assign data_arrays_0_RW0_addr = refill_one_beat ? ({refill_idx, 4'h0} | refill_cnt) : io_req_bits_addr[11:2];

always @(posedge clock) begin
	if (reset) begin
		s1_valid <= 1'h0;
	end else begin
		s1_valid <= s0_valid;
	end
end

always @(posedge clock) begin
	if (reset) begin
		vb_array <= 256'h0;
	end else begin
		if (io_invalidate) begin
			vb_array <= 256'h0;
		end else begin
			if (refill_one_beat) begin
				if (refill_done & !invalidated) begin
					vb_array <= vb_array | (256'h1 << {repl_way,refill_idx});
				end else begin
				 	vb_array <= ~ ((~ vb_array) | (256'h1 << {repl_way,refill_idx}));
				end
			end
		end
	end
end

always @(posedge clock) begin
	if (reset) begin
		s2_valid <= 1'h0;
	end else begin
		s2_valid <= s1_valid & !io_s1_kill;
	end
end

always @(posedge clock) begin
	if (reset) begin
		s2_hit  <= 1'h0;
	end else begin
		s2_hit <= s1_hit;
	end
end

always @(posedge clock) begin
	if (!refill_valid) begin
		invalidated <= 1'h0;
	end else begin
		invalidated <= io_invalidate | invalidated;
	end
end

always @(posedge clock) begin
	if (reset) begin
		refill_valid <= 1'h0;
	end else begin
		if (refill_done) begin
			refill_valid <= 1'h0;
		end else begin
			refill_valid <= refill_fire | refill_valid;
		end
	end
end

always @(posedge clock) begin
	if (reset) begin
		_T_12 <= 1'h0;
	end else begin
		_T_12 <= !(s2_miss | refill_valid);
	end
end

always @(posedge clock) begin
	if (reset) begin
		refill_paddr <= 32'h00;
	end else begin
    		if (s1_valid & s1_can_request_refill) begin
      			refill_paddr <= io_s1_paddr;
    		end
	end
end

always @(posedge clock) begin
	if (reset) begin
		_T_28 <= 10'h0;
	end else begin
		if (auto_master_out_d_valid) begin
			if (_T_28 == 10'h0) begin
				if (auto_master_out_d_bits_opcode[0]) begin
					_T_28 <= ~ _T_22[11:2];
				end else begin
					_T_28 <= 10'h0;
				end
			end else begin
				_T_28 <= _T_30;
			end
		end
	end
end

always @(posedge clock) begin
	if (reset) begin
		accruedRefillError <= 1'h0;
	end else begin
		if (refill_one_beat) begin
			accruedRefillError <= refillError;
		end
	end
end

always @(posedge clock) begin
	if (reset) begin
		s2_tag_hit_0 <= 1'h0;
		s2_tag_hit_1 <= 1'h0;
		s2_tag_hit_2 <= 1'h0;
		s2_tag_hit_3 <= 1'h0;
		s2_dout_0 <= 32'h00;
		s2_dout_1 <= 32'h00;
		s2_dout_2 <= 32'h00;
		s2_dout_3 <= 32'h00;
		s2_tl_error <= 1'h0;
	end else begin
		if (s1_valid) begin
			s2_tag_hit_0 <= s1_tag_hit_0;
			s2_tag_hit_1 <= s1_tag_hit_1;
			s2_tag_hit_2 <= s1_tag_hit_2;
			s2_tag_hit_3 <= s1_tag_hit_3;
			s2_dout_0 <= s1_dout_0;
			s2_dout_1 <= s1_dout_1;
			s2_dout_2 <= s1_dout_2;
			s2_dout_3 <= s1_dout_3;
			s2_tl_error <= ({s1_tl_error_3,s1_tl_error_2,s1_tl_error_1,s1_tl_error_0} != 4'h0);
		end
	end
end

    `ifndef SYNTHESIS
  assign _T_254 = (!s1_valid | ((s1_tag_hit_0 + s1_tag_hit_1 + s1_tag_hit_2 + s1_tag_hit_3) <= 3'h1) | reset) == 1'h0;
    `endif
always @(posedge clock) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_254) begin
          $fwrite(32'h80000002,"Assertion failed\n    at ICache.scala:255 assert(!(s1_valid || s1_slaveValid) || PopCount(s1_tag_hit zip s1_tag_disparity map { case (h, d) => h && !d }) <= 1)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_254) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
end

`endif // MY_ASSIGNMENT

`ifndef MY_ASSIGNMENT
  assign s0_valid = io_req_ready & io_req_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@127332.4]

  assign _T_137 = vb_array >> _T_136; // @[ICache.scala 247:25:freechips.rocketchip.system.DefaultRV32Config.fir@127601.4]
  assign s1_tag_hit_0 = _T_138 & _T_143; // @[ICache.scala 250:26:freechips.rocketchip.system.DefaultRV32Config.fir@127608.4]

  assign _T_165 = vb_array >> _T_164; // @[ICache.scala 247:25:freechips.rocketchip.system.DefaultRV32Config.fir@127632.4]
  assign s1_tag_hit_1 = _T_166 & _T_171; // @[ICache.scala 250:26:freechips.rocketchip.system.DefaultRV32Config.fir@127639.4]

  assign _T_193 = vb_array >> _T_192; // @[ICache.scala 247:25:freechips.rocketchip.system.DefaultRV32Config.fir@127663.4]
  assign s1_tag_hit_2 = _T_194 & _T_199; // @[ICache.scala 250:26:freechips.rocketchip.system.DefaultRV32Config.fir@127670.4]

  assign _T_221 = vb_array >> _T_220; // @[ICache.scala 247:25:freechips.rocketchip.system.DefaultRV32Config.fir@127694.4]
  assign s1_tag_hit_3 = _T_222 & _T_227; // @[ICache.scala 250:26:freechips.rocketchip.system.DefaultRV32Config.fir@127701.4]

  assign s1_hit = _T_2; // @[ICache.scala 162:40:freechips.rocketchip.system.DefaultRV32Config.fir@127344.4]

  assign s2_miss = _T_9 & _T_10; // @[ICache.scala 172:37:freechips.rocketchip.system.DefaultRV32Config.fir@127361.4]

  assign s2_request_refill = s2_miss & _T_12; // @[ICache.scala 174:35:freechips.rocketchip.system.DefaultRV32Config.fir@127366.4]

  assign refill_fire = auto_master_out_a_ready & s2_request_refill; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@127354.4]

  assign s1_can_request_refill = _T_11 == 1'h0; // @[ICache.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@127363.4]

  assign refill_tag = refill_paddr[31:12]; // @[ICache.scala 177:33:freechips.rocketchip.system.DefaultRV32Config.fir@127377.4]
  assign refill_idx = refill_paddr[11:6]; // @[ICache.scala 453:21:freechips.rocketchip.system.DefaultRV32Config.fir@127378.4]

  assign refill_one_beat = auto_master_out_d_valid & _T_16; // @[ICache.scala 179:41:freechips.rocketchip.system.DefaultRV32Config.fir@127381.4]

  assign _T_22 = 27'hfff << auto_master_out_d_bits_size; // @[package.scala 189:77:freechips.rocketchip.system.DefaultRV32Config.fir@127389.4]
  assign _T_27 = _T_16 ? _T_25 : 10'h0; // @[Edges.scala 222:14:freechips.rocketchip.system.DefaultRV32Config.fir@127394.4]
  assign d_done = _T_34 & auto_master_out_d_valid; // @[Edges.scala 234:22:freechips.rocketchip.system.DefaultRV32Config.fir@127402.4]

  assign _T_30 = _T_28 - 10'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@127397.4]
  assign refill_cnt = _T_27 & _T_35; // @[Edges.scala 235:25:freechips.rocketchip.system.DefaultRV32Config.fir@127404.4]
  assign refill_done = refill_one_beat & d_done; // @[ICache.scala 185:37:freechips.rocketchip.system.DefaultRV32Config.fir@127409.4]

  assign _T_52 = {MaxPeriodFibonacciLFSR_io_out_15,MaxPeriodFibonacciLFSR_io_out_14,MaxPeriodFibonacciLFSR_io_out_13,MaxPeriodFibonacciLFSR_io_out_12,MaxPeriodFibonacciLFSR_io_out_11,MaxPeriodFibonacciLFSR_io_out_10,MaxPeriodFibonacciLFSR_io_out_9,MaxPeriodFibonacciLFSR_io_out_8,_T_44}; // @[PRNG.scala 86:17:freechips.rocketchip.system.DefaultRV32Config.fir@127447.4]
  assign _T_84 = {_T_53,_T_54,_T_55,_T_56,_T_57,_T_58,_T_59,_T_60,_T_76}; // @[LFSR.scala 43:8:freechips.rocketchip.system.DefaultRV32Config.fir@127495.4]
  assign repl_way = _T_84[1:0]; // @[ICache.scala 191:33:freechips.rocketchip.system.DefaultRV32Config.fir@127496.4]

  assign refillError = auto_master_out_d_bits_corrupt | _T_105; // @[ICache.scala 210:43:freechips.rocketchip.system.DefaultRV32Config.fir@127530.4]

  assign s1_tl_error_0 = s1_tag_hit_0 & _T_141; // @[ICache.scala 252:32:freechips.rocketchip.system.DefaultRV32Config.fir@127613.4]
  assign s1_tl_error_1 = s1_tag_hit_1 & _T_169; // @[ICache.scala 252:32:freechips.rocketchip.system.DefaultRV32Config.fir@127644.4]
  assign s1_tl_error_2 = s1_tag_hit_2 & _T_197; // @[ICache.scala 252:32:freechips.rocketchip.system.DefaultRV32Config.fir@127675.4]
  assign s1_tl_error_3 = s1_tag_hit_3 & _T_225; // @[ICache.scala 252:32:freechips.rocketchip.system.DefaultRV32Config.fir@127706.4]

  assign s1_dout_0 = data_arrays_0_RW0_rdata_0; // @[ICache.scala 284:71:freechips.rocketchip.system.DefaultRV32Config.fir@127795.4]
  assign s1_dout_1 = data_arrays_0_RW0_rdata_1; // @[ICache.scala 284:71:freechips.rocketchip.system.DefaultRV32Config.fir@127795.4]
  assign s1_dout_2 = data_arrays_0_RW0_rdata_2; // @[ICache.scala 284:71:freechips.rocketchip.system.DefaultRV32Config.fir@127795.4]
  assign s1_dout_3 = data_arrays_0_RW0_rdata_3; // @[ICache.scala 284:71:freechips.rocketchip.system.DefaultRV32Config.fir@127795.4]

  assign auto_master_out_a_valid = s2_miss & _T_12; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@127324.4]
  assign auto_master_out_a_bits_address = {_T_326, 6'h0}; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@127324.4]

  assign io_req_ready = refill_one_beat == 1'h0; // @[ICache.scala 181:16:freechips.rocketchip.system.DefaultRV32Config.fir@127385.4]
  assign io_resp_valid = s2_valid & s2_hit; // @[ICache.scala 324:21:freechips.rocketchip.system.DefaultRV32Config.fir@127880.4]
  assign io_resp_bits_data = _T_306 | _T_304; // @[ICache.scala 321:25:freechips.rocketchip.system.DefaultRV32Config.fir@127876.4]
  assign io_resp_bits_ae = s2_tl_error; // @[ICache.scala 322:23:freechips.rocketchip.system.DefaultRV32Config.fir@127877.4]

  assign MaxPeriodFibonacciLFSR_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@127413.4]
  assign MaxPeriodFibonacciLFSR_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@127414.4]
  assign MaxPeriodFibonacciLFSR_io_increment = auto_master_out_a_ready & s2_request_refill; // @[PRNG.scala 85:23:freechips.rocketchip.system.DefaultRV32Config.fir@127432.4]
  assign tag_array_RW0_wdata_0 = {refillError,refill_tag}; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@127545.8]
  assign tag_array_RW0_wdata_1 = {refillError,refill_tag}; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@127548.8]
  assign tag_array_RW0_wdata_2 = {refillError,refill_tag}; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@127551.8]
  assign tag_array_RW0_wdata_3 = {refillError,refill_tag}; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@127554.8]
  assign tag_array_RW0_wmask_0 = repl_way == 2'h0; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@127543.6 :freechips.rocketchip.system.DefaultRV32Config.fir@127545.8]
  assign tag_array_RW0_wmask_1 = repl_way == 2'h1; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@127543.6 :freechips.rocketchip.system.DefaultRV32Config.fir@127548.8]
  assign tag_array_RW0_wmask_2 = repl_way == 2'h2; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@127543.6 :freechips.rocketchip.system.DefaultRV32Config.fir@127551.8]
  assign tag_array_RW0_wmask_3 = repl_way == 2'h3; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@127543.6 :freechips.rocketchip.system.DefaultRV32Config.fir@127554.8]
  assign data_arrays_0_RW0_wdata_0 = auto_master_out_d_bits_data; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@127770.8]
  assign data_arrays_0_RW0_wdata_1 = auto_master_out_d_bits_data; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@127773.8]
  assign data_arrays_0_RW0_wdata_2 = auto_master_out_d_bits_data; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@127776.8]
  assign data_arrays_0_RW0_wdata_3 = auto_master_out_d_bits_data; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@127779.8]
  assign data_arrays_0_RW0_wmask_0 = repl_way == 2'h0; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@127768.6 :freechips.rocketchip.system.DefaultRV32Config.fir@127770.8]
  assign data_arrays_0_RW0_wmask_1 = repl_way == 2'h1; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@127768.6 :freechips.rocketchip.system.DefaultRV32Config.fir@127773.8]
  assign data_arrays_0_RW0_wmask_2 = repl_way == 2'h2; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@127768.6 :freechips.rocketchip.system.DefaultRV32Config.fir@127776.8]
  assign data_arrays_0_RW0_wmask_3 = repl_way == 2'h3; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@127768.6 :freechips.rocketchip.system.DefaultRV32Config.fir@127779.8]
  assign tag_array_RW0_wmode = refill_one_beat & d_done;
  assign tag_array_RW0_clk = clock;
  assign tag_array_RW0_en = _T_100 | refill_done;
  assign tag_array_RW0_addr = refill_done ? refill_idx : _T_98;
  assign data_arrays_0_RW0_wmode = refill_one_beat & _T_114;
  assign data_arrays_0_RW0_clk = clock;
  assign data_arrays_0_RW0_en = _T_283 | _T_261;
  assign data_arrays_0_RW0_addr = refill_one_beat ? _T_266 : _T_268;

  assign _T_254 = _T_253 == 1'h0; // @[ICache.scala 255:9:freechips.rocketchip.system.DefaultRV32Config.fir@127730.4]
always @(posedge clock) begin
    if (reset) begin
      s1_valid <= 1'h0;
    end else begin
      s1_valid <= s0_valid;
    end
    if (reset) begin
      vb_array <= 256'h0;
    end else begin
      if (io_invalidate) begin
        vb_array <= 256'h0;
      end else begin
        if (refill_one_beat) begin
          if (_T_115) begin
            vb_array <= _T_117;
          end else begin
            vb_array <= _T_120;
          end
        end
      end
    end
    if (reset) begin
      s2_valid <= 1'h0;
    end else begin
      s2_valid <= _T_5;
    end
    s2_hit <= s1_hit;
    if (_T_422) begin
      invalidated <= 1'h0;
    end else begin
      invalidated <= _GEN_30;
    end
    if (reset) begin
      refill_valid <= 1'h0;
    end else begin
      if (refill_done) begin
        refill_valid <= 1'h0;
      end else begin
        refill_valid <= _GEN_74;
      end
    end
    _T_12 <= _T_11 == 1'h0;
    if (_T_13) begin
      refill_paddr <= io_s1_paddr;
    end
    if (reset) begin
      _T_28 <= 10'h0;
    end else begin
      if (auto_master_out_d_valid) begin
        if (_T_31) begin
          if (_T_16) begin
            _T_28 <= _T_25;
          end else begin
            _T_28 <= 10'h0;
          end
        end else begin
          _T_28 <= _T_30;
        end
      end
    end
    if (refill_one_beat) begin
      accruedRefillError <= refillError;
    end
    if (s1_valid) begin
      s2_tag_hit_0 <= s1_tag_hit_0;
    end
    if (s1_valid) begin
      s2_tag_hit_1 <= s1_tag_hit_1;
    end
    if (s1_valid) begin
      s2_tag_hit_2 <= s1_tag_hit_2;
    end
    if (s1_valid) begin
      s2_tag_hit_3 <= s1_tag_hit_3;
    end
    if (s1_valid) begin
      s2_dout_0 <= s1_dout_0;
    end
    if (s1_valid) begin
      s2_dout_1 <= s1_dout_1;
    end
    if (s1_valid) begin
      s2_dout_2 <= s1_dout_2;
    end
    if (s1_valid) begin
      s2_dout_3 <= s1_dout_3;
    end
    if (s1_valid) begin
      s2_tl_error <= _T_315;
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_254) begin
          $fwrite(32'h80000002,"Assertion failed\n    at ICache.scala:255 assert(!(s1_valid || s1_slaveValid) || PopCount(s1_tag_hit zip s1_tag_disparity map { case (h, d) => h && !d }) <= 1)\n"); // @[ICache.scala 255:9:freechips.rocketchip.system.DefaultRV32Config.fir@127732.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_254) begin
          $fatal; // @[ICache.scala 255:9:freechips.rocketchip.system.DefaultRV32Config.fir@127733.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
end

`endif // MY_ASSIGNMENT

  assign _T_122 = io_s1_paddr[11:6]; // @[ICache.scala 453:21:freechips.rocketchip.system.DefaultRV32Config.fir@127586.4]
  assign _T_136 = {1'h0,_T_122}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@127600.4]
  assign _T_138 = _T_137[0]; // @[ICache.scala 247:25:freechips.rocketchip.system.DefaultRV32Config.fir@127602.4]
  assign _T_142 = tag_array_RW0_rdata_0[19:0]; // @[package.scala 120:13:freechips.rocketchip.system.DefaultRV32Config.fir@127606.4]
  assign _T_123 = io_s1_paddr[31:12]; // @[ICache.scala 242:30:freechips.rocketchip.system.DefaultRV32Config.fir@127587.4]
  assign _T_143 = _T_142 == _T_123; // @[ICache.scala 250:33:freechips.rocketchip.system.DefaultRV32Config.fir@127607.4]
  assign _T_164 = {1'h1,_T_122}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@127631.4]
  assign _T_166 = _T_165[0]; // @[ICache.scala 247:25:freechips.rocketchip.system.DefaultRV32Config.fir@127633.4]
  assign _T_170 = tag_array_RW0_rdata_1[19:0]; // @[package.scala 120:13:freechips.rocketchip.system.DefaultRV32Config.fir@127637.4]
  assign _T_171 = _T_170 == _T_123; // @[ICache.scala 250:33:freechips.rocketchip.system.DefaultRV32Config.fir@127638.4]
  assign _T = s1_tag_hit_0 | s1_tag_hit_1; // @[ICache.scala 162:35:freechips.rocketchip.system.DefaultRV32Config.fir@127340.4]
  assign _T_192 = {2'h2,_T_122}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@127662.4]
  assign _T_194 = _T_193[0]; // @[ICache.scala 247:25:freechips.rocketchip.system.DefaultRV32Config.fir@127664.4]
  assign _T_198 = tag_array_RW0_rdata_2[19:0]; // @[package.scala 120:13:freechips.rocketchip.system.DefaultRV32Config.fir@127668.4]
  assign _T_199 = _T_198 == _T_123; // @[ICache.scala 250:33:freechips.rocketchip.system.DefaultRV32Config.fir@127669.4]
  assign _T_1 = _T | s1_tag_hit_2; // @[ICache.scala 162:35:freechips.rocketchip.system.DefaultRV32Config.fir@127341.4]
  assign _T_220 = {2'h3,_T_122}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@127693.4]
  assign _T_222 = _T_221[0]; // @[ICache.scala 247:25:freechips.rocketchip.system.DefaultRV32Config.fir@127695.4]
  assign _T_226 = tag_array_RW0_rdata_3[19:0]; // @[package.scala 120:13:freechips.rocketchip.system.DefaultRV32Config.fir@127699.4]
  assign _T_227 = _T_226 == _T_123; // @[ICache.scala 250:33:freechips.rocketchip.system.DefaultRV32Config.fir@127700.4]
  assign _T_2 = _T_1 | s1_tag_hit_3; // @[ICache.scala 162:35:freechips.rocketchip.system.DefaultRV32Config.fir@127342.4]
  assign _T_4 = io_s1_kill == 1'h0; // @[ICache.scala 164:38:freechips.rocketchip.system.DefaultRV32Config.fir@127345.4]
  assign _T_5 = s1_valid & _T_4; // @[ICache.scala 164:35:freechips.rocketchip.system.DefaultRV32Config.fir@127346.4]
  assign _T_8 = s2_hit == 1'h0; // @[ICache.scala 172:29:freechips.rocketchip.system.DefaultRV32Config.fir@127358.4]
  assign _T_9 = s2_valid & _T_8; // @[ICache.scala 172:26:freechips.rocketchip.system.DefaultRV32Config.fir@127359.4]
  assign _T_10 = io_s2_kill == 1'h0; // @[ICache.scala 172:40:freechips.rocketchip.system.DefaultRV32Config.fir@127360.4]
  assign _T_11 = s2_miss | refill_valid; // @[ICache.scala 173:41:freechips.rocketchip.system.DefaultRV32Config.fir@127362.4]
  assign _T_13 = s1_valid & s1_can_request_refill; // @[ICache.scala 175:54:freechips.rocketchip.system.DefaultRV32Config.fir@127367.4]
  assign _T_16 = auto_master_out_d_bits_opcode[0]; // @[Edges.scala 107:36:freechips.rocketchip.system.DefaultRV32Config.fir@127380.4]
  assign _T_23 = _T_22[11:0]; // @[package.scala 189:82:freechips.rocketchip.system.DefaultRV32Config.fir@127390.4]
  assign _T_24 = ~ _T_23; // @[package.scala 189:46:freechips.rocketchip.system.DefaultRV32Config.fir@127391.4]
  assign _T_25 = _T_24[11:2]; // @[Edges.scala 221:59:freechips.rocketchip.system.DefaultRV32Config.fir@127392.4]
  assign _T_31 = _T_28 == 10'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@127398.4]
  assign _T_32 = _T_28 == 10'h1; // @[Edges.scala 233:25:freechips.rocketchip.system.DefaultRV32Config.fir@127399.4]
  assign _T_33 = _T_27 == 10'h0; // @[Edges.scala 233:47:freechips.rocketchip.system.DefaultRV32Config.fir@127400.4]
  assign _T_34 = _T_32 | _T_33; // @[Edges.scala 233:37:freechips.rocketchip.system.DefaultRV32Config.fir@127401.4]
  assign _T_35 = ~ _T_30; // @[Edges.scala 235:27:freechips.rocketchip.system.DefaultRV32Config.fir@127403.4]
  assign _T_44 = {MaxPeriodFibonacciLFSR_io_out_7,MaxPeriodFibonacciLFSR_io_out_6,MaxPeriodFibonacciLFSR_io_out_5,MaxPeriodFibonacciLFSR_io_out_4,MaxPeriodFibonacciLFSR_io_out_3,MaxPeriodFibonacciLFSR_io_out_2,MaxPeriodFibonacciLFSR_io_out_1,MaxPeriodFibonacciLFSR_io_out_0}; // @[PRNG.scala 86:17:freechips.rocketchip.system.DefaultRV32Config.fir@127439.4]
  assign _T_53 = _T_52[0]; // @[LFSR.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@127448.4]
  assign _T_54 = _T_52[1]; // @[LFSR.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@127449.4]
  assign _T_55 = _T_52[2]; // @[LFSR.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@127450.4]
  assign _T_56 = _T_52[3]; // @[LFSR.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@127451.4]
  assign _T_57 = _T_52[4]; // @[LFSR.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@127452.4]
  assign _T_58 = _T_52[5]; // @[LFSR.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@127453.4]
  assign _T_59 = _T_52[6]; // @[LFSR.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@127454.4]
  assign _T_60 = _T_52[7]; // @[LFSR.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@127455.4]
  assign _T_61 = _T_52[8]; // @[LFSR.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@127456.4]
  assign _T_62 = _T_52[9]; // @[LFSR.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@127457.4]
  assign _T_63 = _T_52[10]; // @[LFSR.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@127458.4]
  assign _T_64 = _T_52[11]; // @[LFSR.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@127459.4]
  assign _T_65 = _T_52[12]; // @[LFSR.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@127460.4]
  assign _T_66 = _T_52[13]; // @[LFSR.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@127461.4]
  assign _T_67 = _T_52[14]; // @[LFSR.scala 41:16:free
  assign _T_68 = _T_52[15]; // @[LFSR.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@127463.4]
  assign _T_76 = {_T_61,_T_62,_T_63,_T_64,_T_65,_T_66,_T_67,_T_68}; // @[LFSR.scala 43:8:freechips.rocketchip.system.DefaultRV32Config.fir@127487.4]
  assign _T_87 = {repl_way,refill_idx}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@127498.4]
  assign _T_98 = io_req_bits_addr[11:6]; // @[ICache.scala 208:42:freechips.rocketchip.system.DefaultRV32Config.fir@127515.4]
  assign _T_99 = refill_done == 1'h0; // @[ICache.scala 208:70:freechips.rocketchip.system.DefaultRV32Config.fir@127516.4]
  assign _T_100 = _T_99 & s0_valid; // @[ICache.scala 208:83:freechips.rocketchip.system.DefaultRV32Config.fir@127517.4]
  assign _T_104 = refill_cnt > 10'h0; // @[ICache.scala 210:58:freechips.rocketchip.system.DefaultRV32Config.fir@127528.4]
  assign _T_105 = _T_104 & accruedRefillError; // @[ICache.scala 210:62:freechips.rocketchip.system.DefaultRV32Config.fir@127529.4]
  assign _T_114 = invalidated == 1'h0; // @[ICache.scala 223:75:freechips.rocketchip.system.DefaultRV32Config.fir@127561.6]
  assign _T_115 = refill_done & _T_114; // @[ICache.scala 223:72:freechips.rocketchip.system.DefaultRV32Config.fir@127562.6]
  assign _T_116 = 256'h1 << _T_87; // @[ICache.scala 223:32:freechips.rocketchip.system.DefaultRV32Config.fir@127563.6]
  assign _T_117 = vb_array | _T_116; // @[ICache.scala 223:32:freechips.rocketchip.system.DefaultRV32Config.fir@127564.6]
  assign _T_118 = ~ vb_array; // @[ICache.scala 223:32:freechips.rocketchip.system.DefaultRV32Config.fir@127565.6]
  assign _T_119 = _T_118 | _T_116; // @[ICache.scala 223:32:freechips.rocketchip.system.DefaultRV32Config.fir@127566.6]
  assign _T_120 = ~ _T_119; // @[ICache.scala 223:32:freechips.rocketchip.system.DefaultRV32Config.fir@127567.6]
  assign _GEN_30 = io_invalidate | invalidated; // @[ICache.scala 226:21:freechips.rocketchip.system.DefaultRV32Config.fir@127574.4]
  assign _T_141 = tag_array_RW0_rdata_0[20]; // @[package.scala 120:13:freechips.rocketchip.system.DefaultRV32Config.fir@127605.4]
  assign _T_169 = tag_array_RW0_rdata_1[20]; // @[package.scala 120:13:freechips.rocketchip.system.DefaultRV32Config.fir@127636.4]
  assign _T_197 = tag_array_RW0_rdata_2[20]; // @[package.scala 120:13:freechips.rocketchip.system.DefaultRV32Config.fir@127667.4]
  assign _T_225 = tag_array_RW0_rdata_3[20]; // @[package.scala 120:13:freechips.rocketchip.system.DefaultRV32Config.fir@127698.4]
  assign _T_235 = s1_valid == 1'h0; // @[ICache.scala 255:10:freechips.rocketchip.system.DefaultRV32Config.fir@127711.4]
  assign _T_244 = s1_tag_hit_0 + s1_tag_hit_1; // @[Bitwise.scala 47:55:freechips.rocketchip.system.DefaultRV32Config.fir@127720.4]
  assign _T_246 = s1_tag_hit_2 + s1_tag_hit_3; // @[Bitwise.scala 47:55:freechips.rocketchip.system.DefaultRV32Config.fir@127722.4]
  assign _T_248 = _T_244 + _T_246; // @[Bitwise.scala 47:55:freechips.rocketchip.system.DefaultRV32Config.fir@127724.4]
  assign _T_250 = _T_248 <= 3'h1; // @[ICache.scala 255:115:freechips.rocketchip.system.DefaultRV32Config.fir@127726.4]
  assign _T_251 = _T_235 | _T_250; // @[ICache.scala 255:39:freechips.rocketchip.system.DefaultRV32Config.fir@127727.4]
  assign _T_253 = _T_251 | reset; // @[ICache.scala 255:9:freechips.rocketchip.system.DefaultRV32Config.fir@127729.4]
  assign _T_261 = refill_one_beat & _T_114; // @[ICache.scala 273:32:freechips.rocketchip.system.DefaultRV32Config.fir@127742.4]
  assign _T_265 = {refill_idx, 4'h0}; // @[ICache.scala 274:52:freechips.rocketchip.system.DefaultRV32Config.fir@127746.4]
  assign _T_266 = _T_265 | refill_cnt; // @[ICache.scala 274:79:freechips.rocketchip.system.DefaultRV32Config.fir@127747.4]
  assign _T_268 = io_req_bits_addr[11:2]; // @[ICache.scala 271:31:freechips.rocketchip.system.DefaultRV32Config.fir@127749.4]
  assign _T_282 = _T_261 == 1'h0; // @[ICache.scala 283:41:freechips.rocketchip.system.DefaultRV32Config.fir@127782.4]
  assign _T_283 = _T_282 & s0_valid; // @[ICache.scala 283:46:freechips.rocketchip.system.DefaultRV32Config.fir@127783.4]
  assign _T_301 = s2_tag_hit_0 ? s2_dout_0 : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@127826.4]
  assign _T_302 = s2_tag_hit_1 ? s2_dout_1 : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@127827.4]
  assign _T_303 = s2_tag_hit_2 ? s2_dout_2 : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@127828.4]
  assign _T_304 = s2_tag_hit_3 ? s2_dout_3 : 32'h0; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@127829.4]
  assign _T_305 = _T_301 | _T_302; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@127830.4]
  assign _T_306 = _T_305 | _T_303; // @[Mux.scala 27:72:freechips.rocketchip.system.DefaultRV32Config.fir@127831.4]
  assign _T_314 = {s1_tl_error_3,s1_tl_error_2,s1_tl_error_1,s1_tl_error_0}; // @[ICache.scala 297:43:freechips.rocketchip.system.DefaultRV32Config.fir@127848.4]
  assign _T_315 = _T_314 != 4'h0; // @[ICache.scala 297:50:freechips.rocketchip.system.DefaultRV32Config.fir@127849.4]
  assign _T_326 = refill_paddr[31:6]; // @[ICache.scala 406:47:freechips.rocketchip.system.DefaultRV32Config.fir@127882.4]
  assign _T_422 = refill_valid == 1'h0; // @[ICache.scala 443:9:freechips.rocketchip.system.DefaultRV32Config.fir@127998.4]
  assign _GEN_74 = refill_fire | refill_valid; // @[ICache.scala 444:22:freechips.rocketchip.system.DefaultRV32Config.fir@128002.4]
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
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  s1_valid = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {8{`RANDOM}};
  vb_array = _RAND_1[255:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  s2_valid = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  s2_hit = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  invalidated = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  refill_valid = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_12 = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  refill_paddr = _RAND_7[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_28 = _RAND_8[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  accruedRefillError = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  s2_tag_hit_0 = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  s2_tag_hit_1 = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  s2_tag_hit_2 = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  s2_tag_hit_3 = _RAND_13[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  s2_dout_0 = _RAND_14[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  s2_dout_1 = _RAND_15[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  s2_dout_2 = _RAND_16[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  s2_dout_3 = _RAND_17[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  s2_tl_error = _RAND_18[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge clock) begin
  end
endmodule
`endif // __ICache
