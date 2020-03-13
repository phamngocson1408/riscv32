`include "include_module.v"
`ifdef ___2
module _2( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115233.2]
  input         io_in_0_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115236.4]
  input  [31:0] io_in_0_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115236.4]
  input  [5:0]  io_in_0_bits_idx, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115236.4]
  input  [21:0] io_in_0_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115236.4]
  input         io_in_2_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115236.4]
  input  [31:0] io_in_2_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115236.4]
  input  [5:0]  io_in_2_bits_idx, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115236.4]
  input  [3:0]  io_in_2_bits_way_en, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115236.4]
  input  [21:0] io_in_2_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115236.4]
  input         io_in_3_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115236.4]
  input  [31:0] io_in_3_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115236.4]
  input  [5:0]  io_in_3_bits_idx, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115236.4]
  input  [3:0]  io_in_3_bits_way_en, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115236.4]
  input  [21:0] io_in_3_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115236.4]
  output        io_in_4_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115236.4]
  input         io_in_4_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115236.4]
  input  [31:0] io_in_4_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115236.4]
  input  [5:0]  io_in_4_bits_idx, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115236.4]
  input  [3:0]  io_in_4_bits_way_en, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115236.4]
  input  [21:0] io_in_4_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115236.4]
  output        io_in_5_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115236.4]
  input         io_in_5_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115236.4]
  input  [31:0] io_in_5_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115236.4]
  input  [5:0]  io_in_5_bits_idx, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115236.4]
  output        io_in_6_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115236.4]
  input         io_in_6_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115236.4]
  input  [31:0] io_in_6_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115236.4]
  input  [5:0]  io_in_6_bits_idx, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115236.4]
  input  [3:0]  io_in_6_bits_way_en, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115236.4]
  input  [21:0] io_in_6_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115236.4]
  output        io_in_7_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115236.4]
  input         io_in_7_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115236.4]
  input  [31:0] io_in_7_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115236.4]
  input  [5:0]  io_in_7_bits_idx, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115236.4]
  input  [3:0]  io_in_7_bits_way_en, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115236.4]
  input  [21:0] io_in_7_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115236.4]
  output        io_out_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115236.4]
  output        io_out_bits_write, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115236.4]
  output [31:0] io_out_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115236.4]
  output [5:0]  io_out_bits_idx, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115236.4]
  output [3:0]  io_out_bits_way_en, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115236.4]
  output [21:0] io_out_bits_data // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115236.4]
);
  wire [21:0] _GEN_1; // @[Arbiter.scala 126:27:freechips.rocketchip.system.DefaultRV32Config.fir@115244.4]
  wire [3:0] _GEN_2; // @[Arbiter.scala 126:27:freechips.rocketchip.system.DefaultRV32Config.fir@115244.4]
  wire [5:0] _GEN_3; // @[Arbiter.scala 126:27:freechips.rocketchip.system.DefaultRV32Config.fir@115244.4]
  wire [31:0] _GEN_4; // @[Arbiter.scala 126:27:freechips.rocketchip.system.DefaultRV32Config.fir@115244.4]
  wire [21:0] _GEN_13; // @[Arbiter.scala 126:27:freechips.rocketchip.system.DefaultRV32Config.fir@115260.4]
  wire [3:0] _GEN_14; // @[Arbiter.scala 126:27:freechips.rocketchip.system.DefaultRV32Config.fir@115260.4]
  wire [5:0] _GEN_15; // @[Arbiter.scala 126:27:freechips.rocketchip.system.DefaultRV32Config.fir@115260.4]
  wire [31:0] _GEN_16; // @[Arbiter.scala 126:27:freechips.rocketchip.system.DefaultRV32Config.fir@115260.4]
  wire [21:0] _GEN_19; // @[Arbiter.scala 126:27:freechips.rocketchip.system.DefaultRV32Config.fir@115268.4]
  wire [3:0] _GEN_20; // @[Arbiter.scala 126:27:freechips.rocketchip.system.DefaultRV32Config.fir@115268.4]
  wire [5:0] _GEN_21; // @[Arbiter.scala 126:27:freechips.rocketchip.system.DefaultRV32Config.fir@115268.4]
  wire [31:0] _GEN_22; // @[Arbiter.scala 126:27:freechips.rocketchip.system.DefaultRV32Config.fir@115268.4]
  wire  _GEN_23; // @[Arbiter.scala 126:27:freechips.rocketchip.system.DefaultRV32Config.fir@115268.4]
  wire [21:0] _GEN_25; // @[Arbiter.scala 126:27:freechips.rocketchip.system.DefaultRV32Config.fir@115276.4]
  wire [3:0] _GEN_26; // @[Arbiter.scala 126:27:freechips.rocketchip.system.DefaultRV32Config.fir@115276.4]
  wire [5:0] _GEN_27; // @[Arbiter.scala 126:27:freechips.rocketchip.system.DefaultRV32Config.fir@115276.4]
  wire [31:0] _GEN_28; // @[Arbiter.scala 126:27:freechips.rocketchip.system.DefaultRV32Config.fir@115276.4]
  wire  _GEN_29; // @[Arbiter.scala 126:27:freechips.rocketchip.system.DefaultRV32Config.fir@115276.4]
  wire  _T_1; // @[Arbiter.scala 31:68:freechips.rocketchip.system.DefaultRV32Config.fir@115301.4]
  wire  _T_2; // @[Arbiter.scala 31:68:freechips.rocketchip.system.DefaultRV32Config.fir@115302.4]
  wire  _T_3; // @[Arbiter.scala 31:68:freechips.rocketchip.system.DefaultRV32Config.fir@115303.4]
  wire  _T_5; // @[Arbiter.scala 31:68:freechips.rocketchip.system.DefaultRV32Config.fir@115305.4]
  wire  _T_12; // @[Arbiter.scala 31:78:freechips.rocketchip.system.DefaultRV32Config.fir@115312.4]
  wire  _T_21; // @[Arbiter.scala 135:19:freechips.rocketchip.system.DefaultRV32Config.fir@115329.4]
  assign _GEN_1 = io_in_6_valid ? io_in_6_bits_data : io_in_7_bits_data; // @[Arbiter.scala 126:27:freechips.rocketchip.system.DefaultRV32Config.fir@115244.4]
  assign _GEN_2 = io_in_6_valid ? io_in_6_bits_way_en : io_in_7_bits_way_en; // @[Arbiter.scala 126:27:freechips.rocketchip.system.DefaultRV32Config.fir@115244.4]
  assign _GEN_3 = io_in_6_valid ? io_in_6_bits_idx : io_in_7_bits_idx; // @[Arbiter.scala 126:27:freechips.rocketchip.system.DefaultRV32Config.fir@115244.4]
  assign _GEN_4 = io_in_6_valid ? io_in_6_bits_addr : io_in_7_bits_addr; // @[Arbiter.scala 126:27:freechips.rocketchip.system.DefaultRV32Config.fir@115244.4]
  assign _GEN_13 = io_in_4_valid ? io_in_4_bits_data : _GEN_1; // @[Arbiter.scala 126:27:freechips.rocketchip.system.DefaultRV32Config.fir@115260.4]
  assign _GEN_14 = io_in_4_valid ? io_in_4_bits_way_en : _GEN_2; // @[Arbiter.scala 126:27:freechips.rocketchip.system.DefaultRV32Config.fir@115260.4]
  assign _GEN_15 = io_in_4_valid ? io_in_4_bits_idx : _GEN_3; // @[Arbiter.scala 126:27:freechips.rocketchip.system.DefaultRV32Config.fir@115260.4]
  assign _GEN_16 = io_in_4_valid ? io_in_4_bits_addr : _GEN_4; // @[Arbiter.scala 126:27:freechips.rocketchip.system.DefaultRV32Config.fir@115260.4]
  assign _GEN_19 = io_in_3_valid ? io_in_3_bits_data : _GEN_13; // @[Arbiter.scala 126:27:freechips.rocketchip.system.DefaultRV32Config.fir@115268.4]
  assign _GEN_20 = io_in_3_valid ? io_in_3_bits_way_en : _GEN_14; // @[Arbiter.scala 126:27:freechips.rocketchip.system.DefaultRV32Config.fir@115268.4]
  assign _GEN_21 = io_in_3_valid ? io_in_3_bits_idx : _GEN_15; // @[Arbiter.scala 126:27:freechips.rocketchip.system.DefaultRV32Config.fir@115268.4]
  assign _GEN_22 = io_in_3_valid ? io_in_3_bits_addr : _GEN_16; // @[Arbiter.scala 126:27:freechips.rocketchip.system.DefaultRV32Config.fir@115268.4]
  assign _GEN_23 = io_in_3_valid | io_in_4_valid; // @[Arbiter.scala 126:27:freechips.rocketchip.system.DefaultRV32Config.fir@115268.4]
  assign _GEN_25 = io_in_2_valid ? io_in_2_bits_data : _GEN_19; // @[Arbiter.scala 126:27:freechips.rocketchip.system.DefaultRV32Config.fir@115276.4]
  assign _GEN_26 = io_in_2_valid ? io_in_2_bits_way_en : _GEN_20; // @[Arbiter.scala 126:27:freechips.rocketchip.system.DefaultRV32Config.fir@115276.4]
  assign _GEN_27 = io_in_2_valid ? io_in_2_bits_idx : _GEN_21; // @[Arbiter.scala 126:27:freechips.rocketchip.system.DefaultRV32Config.fir@115276.4]
  assign _GEN_28 = io_in_2_valid ? io_in_2_bits_addr : _GEN_22; // @[Arbiter.scala 126:27:freechips.rocketchip.system.DefaultRV32Config.fir@115276.4]
  assign _GEN_29 = io_in_2_valid | _GEN_23; // @[Arbiter.scala 126:27:freechips.rocketchip.system.DefaultRV32Config.fir@115276.4]
  assign _T_1 = io_in_0_valid | io_in_2_valid; // @[Arbiter.scala 31:68:freechips.rocketchip.system.DefaultRV32Config.fir@115301.4]
  assign _T_2 = _T_1 | io_in_3_valid; // @[Arbiter.scala 31:68:freechips.rocketchip.system.DefaultRV32Config.fir@115302.4]
  assign _T_3 = _T_2 | io_in_4_valid; // @[Arbiter.scala 31:68:freechips.rocketchip.system.DefaultRV32Config.fir@115303.4]
  assign _T_5 = _T_3 | io_in_6_valid; // @[Arbiter.scala 31:68:freechips.rocketchip.system.DefaultRV32Config.fir@115305.4]
  assign _T_12 = _T_5 == 1'h0; // @[Arbiter.scala 31:78:freechips.rocketchip.system.DefaultRV32Config.fir@115312.4]
  assign _T_21 = _T_12 == 1'h0; // @[Arbiter.scala 135:19:freechips.rocketchip.system.DefaultRV32Config.fir@115329.4]
  assign io_in_4_ready = _T_2 == 1'h0; // @[Arbiter.scala 134:14:freechips.rocketchip.system.DefaultRV32Config.fir@115322.4]
  assign io_in_5_ready = _T_3 == 1'h0; // @[Arbiter.scala 134:14:freechips.rocketchip.system.DefaultRV32Config.fir@115324.4]
  assign io_in_6_ready = _T_3 == 1'h0; // @[Arbiter.scala 134:14:freechips.rocketchip.system.DefaultRV32Config.fir@115326.4]
  assign io_in_7_ready = _T_5 == 1'h0; // @[Arbiter.scala 134:14:freechips.rocketchip.system.DefaultRV32Config.fir@115328.4]
  assign io_out_valid = _T_21 | io_in_7_valid; // @[Arbiter.scala 135:16:freechips.rocketchip.system.DefaultRV32Config.fir@115331.4]
  assign io_out_bits_write = io_in_0_valid | _GEN_29; // @[Arbiter.scala 124:15:freechips.rocketchip.system.DefaultRV32Config.fir@115243.4 Arbiter.scala 128:19:freechips.rocketchip.system.DefaultRV32Config.fir@115250.6 Arbiter.scala 128:19:freechips.rocketchip.system.DefaultRV32Config.fir@115258.6 Arbiter.scala 128:19:freechips.rocketchip.system.DefaultRV32Config.fir@115266.6 Arbiter.scala 128:19:freechips.rocketchip.system.DefaultRV32Config.fir@115274.6 Arbiter.scala 128:19:freechips.rocketchip.system.DefaultRV32Config.fir@115282.6 Arbiter.scala 128:19:freechips.rocketchip.system.DefaultRV32Config.fir@115290.6 Arbiter.scala 128:19:freechips.rocketchip.system.DefaultRV32Config.fir@115298.6]
  assign io_out_bits_addr = io_in_0_valid ? io_in_0_bits_addr : _GEN_28; // @[Arbiter.scala 124:15:freechips.rocketchip.system.DefaultRV32Config.fir@115242.4 Arbiter.scala 128:19:freechips.rocketchip.system.DefaultRV32Config.fir@115249.6 Arbiter.scala 128:19:freechips.rocketchip.system.DefaultRV32Config.fir@115257.6 Arbiter.scala 128:19:freechips.rocketchip.system.DefaultRV32Config.fir@115265.6 Arbiter.scala 128:19:freechips.rocketchip.system.DefaultRV32Config.fir@115273.6 Arbiter.scala 128:19:freechips.rocketchip.system.DefaultRV32Config.fir@115281.6 Arbiter.scala 128:19:freechips.rocketchip.system.DefaultRV32Config.fir@115289.6 Arbiter.scala 128:19:freechips.rocketchip.system.DefaultRV32Config.fir@115297.6]
  assign io_out_bits_idx = io_in_0_valid ? io_in_0_bits_idx : _GEN_27; // @[Arbiter.scala 124:15:freechips.rocketchip.system.DefaultRV32Config.fir@115241.4 Arbiter.scala 128:19:freechips.rocketchip.system.DefaultRV32Config.fir@115248.6 Arbiter.scala 128:19:freechips.rocketchip.system.DefaultRV32Config.fir@115256.6 Arbiter.scala 128:19:freechips.rocketchip.system.DefaultRV32Config.fir@115264.6 Arbiter.scala 128:19:freechips.rocketchip.system.DefaultRV32Config.fir@115272.6 Arbiter.scala 128:19:freechips.rocketchip.system.DefaultRV32Config.fir@115280.6 Arbiter.scala 128:19:freechips.rocketchip.system.DefaultRV32Config.fir@115288.6 Arbiter.scala 128:19:freechips.rocketchip.system.DefaultRV32Config.fir@115296.6]
  assign io_out_bits_way_en = io_in_0_valid ? 4'hf : _GEN_26; // @[Arbiter.scala 124:15:freechips.rocketchip.system.DefaultRV32Config.fir@115240.4 Arbiter.scala 128:19:freechips.rocketchip.system.DefaultRV32Config.fir@115247.6 Arbiter.scala 128:19:freechips.rocketchip.system.DefaultRV32Config.fir@115255.6 Arbiter.scala 128:19:freechips.rocketchip.system.DefaultRV32Config.fir@115263.6 Arbiter.scala 128:19:freechips.rocketchip.system.DefaultRV32Config.fir@115271.6 Arbiter.scala 128:19:freechips.rocketchip.system.DefaultRV32Config.fir@115279.6 Arbiter.scala 128:19:freechips.rocketchip.system.DefaultRV32Config.fir@115287.6 Arbiter.scala 128:19:freechips.rocketchip.system.DefaultRV32Config.fir@115295.6]
  assign io_out_bits_data = io_in_0_valid ? io_in_0_bits_data : _GEN_25; // @[Arbiter.scala 124:15:freechips.rocketchip.system.DefaultRV32Config.fir@115239.4 Arbiter.scala 128:19:freechips.rocketchip.system.DefaultRV32Config.fir@115246.6 Arbiter.scala 128:19:freechips.rocketchip.system.DefaultRV32Config.fir@115254.6 Arbiter.scala 128:19:freechips.rocketchip.system.DefaultRV32Config.fir@115262.6 Arbiter.scala 128:19:freechips.rocketchip.system.DefaultRV32Config.fir@115270.6 Arbiter.scala 128:19:freechips.rocketchip.system.DefaultRV32Config.fir@115278.6 Arbiter.scala 128:19:freechips.rocketchip.system.DefaultRV32Config.fir@115286.6 Arbiter.scala 128:19:freechips.rocketchip.system.DefaultRV32Config.fir@115294.6]
endmodule
`endif // ___2

