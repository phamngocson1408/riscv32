`include "include_module.v"
`ifdef __FrontBus
module FrontBus( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33100.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33101.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33102.4]
  output        auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33103.4]
  input         auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33103.4]
  input  [7:0]  auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33103.4]
  input  [31:0] auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33103.4]
  input  [7:0]  auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_len, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33103.4]
  input  [2:0]  auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33103.4]
  input  [1:0]  auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_burst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33103.4]
  output        auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33103.4]
  input         auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33103.4]
  input  [63:0] auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33103.4]
  input  [7:0]  auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_bits_strb, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33103.4]
  input         auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_bits_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33103.4]
  input         auto_coupler_from_port_named_slave_port_axi4_axi4index_in_b_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33103.4]
  output        auto_coupler_from_port_named_slave_port_axi4_axi4index_in_b_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33103.4]
  output [7:0]  auto_coupler_from_port_named_slave_port_axi4_axi4index_in_b_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33103.4]
  output [1:0]  auto_coupler_from_port_named_slave_port_axi4_axi4index_in_b_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33103.4]
  output        auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33103.4]
  input         auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33103.4]
  input  [7:0]  auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33103.4]
  input  [31:0] auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33103.4]
  input  [7:0]  auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_len, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33103.4]
  input  [2:0]  auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33103.4]
  input  [1:0]  auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_burst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33103.4]
  input         auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33103.4]
  output        auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33103.4]
  output [7:0]  auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33103.4]
  output [63:0] auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33103.4]
  output [1:0]  auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33103.4]
  output        auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_bits_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33103.4]
  input         auto_bus_xing_out_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33103.4]
  output        auto_bus_xing_out_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33103.4]
  output [2:0]  auto_bus_xing_out_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33103.4]
  output [2:0]  auto_bus_xing_out_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33103.4]
  output [3:0]  auto_bus_xing_out_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33103.4]
  output [3:0]  auto_bus_xing_out_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33103.4]
  output [31:0] auto_bus_xing_out_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33103.4]
  output [3:0]  auto_bus_xing_out_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33103.4]
  output [31:0] auto_bus_xing_out_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33103.4]
  output        auto_bus_xing_out_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33103.4]
  output        auto_bus_xing_out_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33103.4]
  input         auto_bus_xing_out_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33103.4]
  input  [2:0]  auto_bus_xing_out_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33103.4]
  input  [1:0]  auto_bus_xing_out_d_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33103.4]
  input  [3:0]  auto_bus_xing_out_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33103.4]
  input  [3:0]  auto_bus_xing_out_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33103.4]
  input  [1:0]  auto_bus_xing_out_d_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33103.4]
  input         auto_bus_xing_out_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33103.4]
  input  [31:0] auto_bus_xing_out_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33103.4]
  input         auto_bus_xing_out_d_bits_corrupt // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33103.4]
);
  wire  front_bus_xbar_clock; // @[BusWrapper.scala 183:32:freechips.rocketchip.system.DefaultRV32Config.fir@33108.4]
  wire  front_bus_xbar_reset; // @[BusWrapper.scala 183:32:freechips.rocketchip.system.DefaultRV32Config.fir@33108.4]
  wire  front_bus_xbar_auto_in_a_ready; // @[BusWrapper.scala 183:32:freechips.rocketchip.system.DefaultRV32Config.fir@33108.4]
  wire  front_bus_xbar_auto_in_a_valid; // @[BusWrapper.scala 183:32:freechips.rocketchip.system.DefaultRV32Config.fir@33108.4]
  wire [2:0] front_bus_xbar_auto_in_a_bits_opcode; // @[BusWrapper.scala 183:32:freechips.rocketchip.system.DefaultRV32Config.fir@33108.4]
  wire [2:0] front_bus_xbar_auto_in_a_bits_param; // @[BusWrapper.scala 183:32:freechips.rocketchip.system.DefaultRV32Config.fir@33108.4]
  wire [3:0] front_bus_xbar_auto_in_a_bits_size; // @[BusWrapper.scala 183:32:freechips.rocketchip.system.DefaultRV32Config.fir@33108.4]
  wire [3:0] front_bus_xbar_auto_in_a_bits_source; // @[BusWrapper.scala 183:32:freechips.rocketchip.system.DefaultRV32Config.fir@33108.4]
  wire [31:0] front_bus_xbar_auto_in_a_bits_address; // @[BusWrapper.scala 183:32:freechips.rocketchip.system.DefaultRV32Config.fir@33108.4]
  wire [3:0] front_bus_xbar_auto_in_a_bits_mask; // @[BusWrapper.scala 183:32:freechips.rocketchip.system.DefaultRV32Config.fir@33108.4]
  wire [31:0] front_bus_xbar_auto_in_a_bits_data; // @[BusWrapper.scala 183:32:freechips.rocketchip.system.DefaultRV32Config.fir@33108.4]
  wire  front_bus_xbar_auto_in_a_bits_corrupt; // @[BusWrapper.scala 183:32:freechips.rocketchip.system.DefaultRV32Config.fir@33108.4]
  wire  front_bus_xbar_auto_in_d_ready; // @[BusWrapper.scala 183:32:freechips.rocketchip.system.DefaultRV32Config.fir@33108.4]
  wire  front_bus_xbar_auto_in_d_valid; // @[BusWrapper.scala 183:32:freechips.rocketchip.system.DefaultRV32Config.fir@33108.4]
  wire [2:0] front_bus_xbar_auto_in_d_bits_opcode; // @[BusWrapper.scala 183:32:freechips.rocketchip.system.DefaultRV32Config.fir@33108.4]
  wire [1:0] front_bus_xbar_auto_in_d_bits_param; // @[BusWrapper.scala 183:32:freechips.rocketchip.system.DefaultRV32Config.fir@33108.4]
  wire [3:0] front_bus_xbar_auto_in_d_bits_size; // @[BusWrapper.scala 183:32:freechips.rocketchip.system.DefaultRV32Config.fir@33108.4]
  wire [3:0] front_bus_xbar_auto_in_d_bits_source; // @[BusWrapper.scala 183:32:freechips.rocketchip.system.DefaultRV32Config.fir@33108.4]
  wire [1:0] front_bus_xbar_auto_in_d_bits_sink; // @[BusWrapper.scala 183:32:freechips.rocketchip.system.DefaultRV32Config.fir@33108.4]
  wire  front_bus_xbar_auto_in_d_bits_denied; // @[BusWrapper.scala 183:32:freechips.rocketchip.system.DefaultRV32Config.fir@33108.4]
  wire [31:0] front_bus_xbar_auto_in_d_bits_data; // @[BusWrapper.scala 183:32:freechips.rocketchip.system.DefaultRV32Config.fir@33108.4]
  wire  front_bus_xbar_auto_in_d_bits_corrupt; // @[BusWrapper.scala 183:32:freechips.rocketchip.system.DefaultRV32Config.fir@33108.4]
  wire  front_bus_xbar_auto_out_a_ready; // @[BusWrapper.scala 183:32:freechips.rocketchip.system.DefaultRV32Config.fir@33108.4]
  wire  front_bus_xbar_auto_out_a_valid; // @[BusWrapper.scala 183:32:freechips.rocketchip.system.DefaultRV32Config.fir@33108.4]
  wire [2:0] front_bus_xbar_auto_out_a_bits_opcode; // @[BusWrapper.scala 183:32:freechips.rocketchip.system.DefaultRV32Config.fir@33108.4]
  wire [2:0] front_bus_xbar_auto_out_a_bits_param; // @[BusWrapper.scala 183:32:freechips.rocketchip.system.DefaultRV32Config.fir@33108.4]
  wire [3:0] front_bus_xbar_auto_out_a_bits_size; // @[BusWrapper.scala 183:32:freechips.rocketchip.system.DefaultRV32Config.fir@33108.4]
  wire [3:0] front_bus_xbar_auto_out_a_bits_source; // @[BusWrapper.scala 183:32:freechips.rocketchip.system.DefaultRV32Config.fir@33108.4]
  wire [31:0] front_bus_xbar_auto_out_a_bits_address; // @[BusWrapper.scala 183:32:freechips.rocketchip.system.DefaultRV32Config.fir@33108.4]
  wire [3:0] front_bus_xbar_auto_out_a_bits_mask; // @[BusWrapper.scala 183:32:freechips.rocketchip.system.DefaultRV32Config.fir@33108.4]
  wire [31:0] front_bus_xbar_auto_out_a_bits_data; // @[BusWrapper.scala 183:32:freechips.rocketchip.system.DefaultRV32Config.fir@33108.4]
  wire  front_bus_xbar_auto_out_a_bits_corrupt; // @[BusWrapper.scala 183:32:freechips.rocketchip.system.DefaultRV32Config.fir@33108.4]
  wire  front_bus_xbar_auto_out_d_ready; // @[BusWrapper.scala 183:32:freechips.rocketchip.system.DefaultRV32Config.fir@33108.4]
  wire  front_bus_xbar_auto_out_d_valid; // @[BusWrapper.scala 183:32:freechips.rocketchip.system.DefaultRV32Config.fir@33108.4]
  wire [2:0] front_bus_xbar_auto_out_d_bits_opcode; // @[BusWrapper.scala 183:32:freechips.rocketchip.system.DefaultRV32Config.fir@33108.4]
  wire [1:0] front_bus_xbar_auto_out_d_bits_param; // @[BusWrapper.scala 183:32:freechips.rocketchip.system.DefaultRV32Config.fir@33108.4]
  wire [3:0] front_bus_xbar_auto_out_d_bits_size; // @[BusWrapper.scala 183:32:freechips.rocketchip.system.DefaultRV32Config.fir@33108.4]
  wire [3:0] front_bus_xbar_auto_out_d_bits_source; // @[BusWrapper.scala 183:32:freechips.rocketchip.system.DefaultRV32Config.fir@33108.4]
  wire [1:0] front_bus_xbar_auto_out_d_bits_sink; // @[BusWrapper.scala 183:32:freechips.rocketchip.system.DefaultRV32Config.fir@33108.4]
  wire  front_bus_xbar_auto_out_d_bits_denied; // @[BusWrapper.scala 183:32:freechips.rocketchip.system.DefaultRV32Config.fir@33108.4]
  wire [31:0] front_bus_xbar_auto_out_d_bits_data; // @[BusWrapper.scala 183:32:freechips.rocketchip.system.DefaultRV32Config.fir@33108.4]
  wire  front_bus_xbar_auto_out_d_bits_corrupt; // @[BusWrapper.scala 183:32:freechips.rocketchip.system.DefaultRV32Config.fir@33108.4]
  wire  buffer_clock; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@33114.4]
  wire  buffer_reset; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@33114.4]
  wire  buffer_auto_in_a_ready; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@33114.4]
  wire  buffer_auto_in_a_valid; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@33114.4]
  wire [2:0] buffer_auto_in_a_bits_opcode; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@33114.4]
  wire [2:0] buffer_auto_in_a_bits_param; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@33114.4]
  wire [3:0] buffer_auto_in_a_bits_size; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@33114.4]
  wire [3:0] buffer_auto_in_a_bits_source; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@33114.4]
  wire [31:0] buffer_auto_in_a_bits_address; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@33114.4]
  wire [3:0] buffer_auto_in_a_bits_mask; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@33114.4]
  wire [31:0] buffer_auto_in_a_bits_data; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@33114.4]
  wire  buffer_auto_in_a_bits_corrupt; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@33114.4]
  wire  buffer_auto_in_d_ready; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@33114.4]
  wire  buffer_auto_in_d_valid; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@33114.4]
  wire [2:0] buffer_auto_in_d_bits_opcode; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@33114.4]
  wire [1:0] buffer_auto_in_d_bits_param; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@33114.4]
  wire [3:0] buffer_auto_in_d_bits_size; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@33114.4]
  wire [3:0] buffer_auto_in_d_bits_source; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@33114.4]
  wire [1:0] buffer_auto_in_d_bits_sink; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@33114.4]
  wire  buffer_auto_in_d_bits_denied; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@33114.4]
  wire [31:0] buffer_auto_in_d_bits_data; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@33114.4]
  wire  buffer_auto_in_d_bits_corrupt; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@33114.4]
  wire  buffer_auto_out_a_ready; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@33114.4]
  wire  buffer_auto_out_a_valid; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@33114.4]
  wire [2:0] buffer_auto_out_a_bits_opcode; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@33114.4]
  wire [2:0] buffer_auto_out_a_bits_param; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@33114.4]
  wire [3:0] buffer_auto_out_a_bits_size; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@33114.4]
  wire [3:0] buffer_auto_out_a_bits_source; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@33114.4]
  wire [31:0] buffer_auto_out_a_bits_address; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@33114.4]
  wire [3:0] buffer_auto_out_a_bits_mask; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@33114.4]
  wire [31:0] buffer_auto_out_a_bits_data; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@33114.4]
  wire  buffer_auto_out_a_bits_corrupt; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@33114.4]
  wire  buffer_auto_out_d_ready; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@33114.4]
  wire  buffer_auto_out_d_valid; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@33114.4]
  wire [2:0] buffer_auto_out_d_bits_opcode; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@33114.4]
  wire [1:0] buffer_auto_out_d_bits_param; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@33114.4]
  wire [3:0] buffer_auto_out_d_bits_size; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@33114.4]
  wire [3:0] buffer_auto_out_d_bits_source; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@33114.4]
  wire [1:0] buffer_auto_out_d_bits_sink; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@33114.4]
  wire  buffer_auto_out_d_bits_denied; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@33114.4]
  wire [31:0] buffer_auto_out_d_bits_data; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@33114.4]
  wire  buffer_auto_out_d_bits_corrupt; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@33114.4]
  wire  coupler_from_port_named_slave_port_axi4_clock; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@33120.4]
  wire  coupler_from_port_named_slave_port_axi4_reset; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@33120.4]
  wire  coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_ready; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@33120.4]
  wire  coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_valid; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@33120.4]
  wire [7:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_bits_id; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@33120.4]
  wire [31:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_bits_addr; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@33120.4]
  wire [7:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_bits_len; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@33120.4]
  wire [2:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_bits_size; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@33120.4]
  wire [1:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_bits_burst; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@33120.4]
  wire  coupler_from_port_named_slave_port_axi4_auto_axi4index_in_w_ready; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@33120.4]
  wire  coupler_from_port_named_slave_port_axi4_auto_axi4index_in_w_valid; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@33120.4]
  wire [63:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_w_bits_data; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@33120.4]
  wire [7:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_w_bits_strb; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@33120.4]
  wire  coupler_from_port_named_slave_port_axi4_auto_axi4index_in_w_bits_last; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@33120.4]
  wire  coupler_from_port_named_slave_port_axi4_auto_axi4index_in_b_ready; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@33120.4]
  wire  coupler_from_port_named_slave_port_axi4_auto_axi4index_in_b_valid; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@33120.4]
  wire [7:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_b_bits_id; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@33120.4]
  wire [1:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_b_bits_resp; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@33120.4]
  wire  coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_ready; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@33120.4]
  wire  coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_valid; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@33120.4]
  wire [7:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_bits_id; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@33120.4]
  wire [31:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_bits_addr; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@33120.4]
  wire [7:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_bits_len; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@33120.4]
  wire [2:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_bits_size; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@33120.4]
  wire [1:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_bits_burst; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@33120.4]
  wire  coupler_from_port_named_slave_port_axi4_auto_axi4index_in_r_ready; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@33120.4]
  wire  coupler_from_port_named_slave_port_axi4_auto_axi4index_in_r_valid; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@33120.4]
  wire [7:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_r_bits_id; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@33120.4]
  wire [63:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_r_bits_data; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@33120.4]
  wire [1:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_r_bits_resp; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@33120.4]
  wire  coupler_from_port_named_slave_port_axi4_auto_axi4index_in_r_bits_last; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@33120.4]
  wire  coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_ready; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@33120.4]
  wire  coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_valid; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@33120.4]
  wire [2:0] coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_opcode; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@33120.4]
  wire [2:0] coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_param; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@33120.4]
  wire [3:0] coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_size; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@33120.4]
  wire [3:0] coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_source; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@33120.4]
  wire [31:0] coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_address; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@33120.4]
  wire [3:0] coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_mask; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@33120.4]
  wire [31:0] coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_data; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@33120.4]
  wire  coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_corrupt; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@33120.4]
  wire  coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_ready; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@33120.4]
  wire  coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_valid; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@33120.4]
  wire [2:0] coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_bits_opcode; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@33120.4]
  wire [1:0] coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_bits_param; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@33120.4]
  wire [3:0] coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_bits_size; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@33120.4]
  wire [3:0] coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_bits_source; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@33120.4]
  wire [1:0] coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_bits_sink; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@33120.4]
  wire  coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_bits_denied; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@33120.4]
  wire [31:0] coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_bits_data; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@33120.4]
  wire  coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_bits_corrupt; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@33120.4]
  TLXbar_3 front_bus_xbar ( // @[BusWrapper.scala 183:32:freechips.rocketchip.system.DefaultRV32Config.fir@33108.4]
    .clock(front_bus_xbar_clock),
    .reset(front_bus_xbar_reset),
    .auto_in_a_ready(front_bus_xbar_auto_in_a_ready),
    .auto_in_a_valid(front_bus_xbar_auto_in_a_valid),
    .auto_in_a_bits_opcode(front_bus_xbar_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(front_bus_xbar_auto_in_a_bits_param),
    .auto_in_a_bits_size(front_bus_xbar_auto_in_a_bits_size),
    .auto_in_a_bits_source(front_bus_xbar_auto_in_a_bits_source),
    .auto_in_a_bits_address(front_bus_xbar_auto_in_a_bits_address),
    .auto_in_a_bits_mask(front_bus_xbar_auto_in_a_bits_mask),
    .auto_in_a_bits_data(front_bus_xbar_auto_in_a_bits_data),
    .auto_in_a_bits_corrupt(front_bus_xbar_auto_in_a_bits_corrupt),
    .auto_in_d_ready(front_bus_xbar_auto_in_d_ready),
    .auto_in_d_valid(front_bus_xbar_auto_in_d_valid),
    .auto_in_d_bits_opcode(front_bus_xbar_auto_in_d_bits_opcode),
    .auto_in_d_bits_param(front_bus_xbar_auto_in_d_bits_param),
    .auto_in_d_bits_size(front_bus_xbar_auto_in_d_bits_size),
    .auto_in_d_bits_source(front_bus_xbar_auto_in_d_bits_source),
    .auto_in_d_bits_sink(front_bus_xbar_auto_in_d_bits_sink),
    .auto_in_d_bits_denied(front_bus_xbar_auto_in_d_bits_denied),
    .auto_in_d_bits_data(front_bus_xbar_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(front_bus_xbar_auto_in_d_bits_corrupt),
    .auto_out_a_ready(front_bus_xbar_auto_out_a_ready),
    .auto_out_a_valid(front_bus_xbar_auto_out_a_valid),
    .auto_out_a_bits_opcode(front_bus_xbar_auto_out_a_bits_opcode),
    .auto_out_a_bits_param(front_bus_xbar_auto_out_a_bits_param),
    .auto_out_a_bits_size(front_bus_xbar_auto_out_a_bits_size),
    .auto_out_a_bits_source(front_bus_xbar_auto_out_a_bits_source),
    .auto_out_a_bits_address(front_bus_xbar_auto_out_a_bits_address),
    .auto_out_a_bits_mask(front_bus_xbar_auto_out_a_bits_mask),
    .auto_out_a_bits_data(front_bus_xbar_auto_out_a_bits_data),
    .auto_out_a_bits_corrupt(front_bus_xbar_auto_out_a_bits_corrupt),
    .auto_out_d_ready(front_bus_xbar_auto_out_d_ready),
    .auto_out_d_valid(front_bus_xbar_auto_out_d_valid),
    .auto_out_d_bits_opcode(front_bus_xbar_auto_out_d_bits_opcode),
    .auto_out_d_bits_param(front_bus_xbar_auto_out_d_bits_param),
    .auto_out_d_bits_size(front_bus_xbar_auto_out_d_bits_size),
    .auto_out_d_bits_source(front_bus_xbar_auto_out_d_bits_source),
    .auto_out_d_bits_sink(front_bus_xbar_auto_out_d_bits_sink),
    .auto_out_d_bits_denied(front_bus_xbar_auto_out_d_bits_denied),
    .auto_out_d_bits_data(front_bus_xbar_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(front_bus_xbar_auto_out_d_bits_corrupt)
  );
  TLBuffer_4 buffer ( // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@33114.4]
    .clock(buffer_clock),
    .reset(buffer_reset),
    .auto_in_a_ready(buffer_auto_in_a_ready),
    .auto_in_a_valid(buffer_auto_in_a_valid),
    .auto_in_a_bits_opcode(buffer_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(buffer_auto_in_a_bits_param),
    .auto_in_a_bits_size(buffer_auto_in_a_bits_size),
    .auto_in_a_bits_source(buffer_auto_in_a_bits_source),
    .auto_in_a_bits_address(buffer_auto_in_a_bits_address),
    .auto_in_a_bits_mask(buffer_auto_in_a_bits_mask),
    .auto_in_a_bits_data(buffer_auto_in_a_bits_data),
    .auto_in_a_bits_corrupt(buffer_auto_in_a_bits_corrupt),
    .auto_in_d_ready(buffer_auto_in_d_ready),
    .auto_in_d_valid(buffer_auto_in_d_valid),
    .auto_in_d_bits_opcode(buffer_auto_in_d_bits_opcode),
    .auto_in_d_bits_param(buffer_auto_in_d_bits_param),
    .auto_in_d_bits_size(buffer_auto_in_d_bits_size),
    .auto_in_d_bits_source(buffer_auto_in_d_bits_source),
    .auto_in_d_bits_sink(buffer_auto_in_d_bits_sink),
    .auto_in_d_bits_denied(buffer_auto_in_d_bits_denied),
    .auto_in_d_bits_data(buffer_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(buffer_auto_in_d_bits_corrupt),
    .auto_out_a_ready(buffer_auto_out_a_ready),
    .auto_out_a_valid(buffer_auto_out_a_valid),
    .auto_out_a_bits_opcode(buffer_auto_out_a_bits_opcode),
    .auto_out_a_bits_param(buffer_auto_out_a_bits_param),
    .auto_out_a_bits_size(buffer_auto_out_a_bits_size),
    .auto_out_a_bits_source(buffer_auto_out_a_bits_source),
    .auto_out_a_bits_address(buffer_auto_out_a_bits_address),
    .auto_out_a_bits_mask(buffer_auto_out_a_bits_mask),
    .auto_out_a_bits_data(buffer_auto_out_a_bits_data),
    .auto_out_a_bits_corrupt(buffer_auto_out_a_bits_corrupt),
    .auto_out_d_ready(buffer_auto_out_d_ready),
    .auto_out_d_valid(buffer_auto_out_d_valid),
    .auto_out_d_bits_opcode(buffer_auto_out_d_bits_opcode),
    .auto_out_d_bits_param(buffer_auto_out_d_bits_param),
    .auto_out_d_bits_size(buffer_auto_out_d_bits_size),
    .auto_out_d_bits_source(buffer_auto_out_d_bits_source),
    .auto_out_d_bits_sink(buffer_auto_out_d_bits_sink),
    .auto_out_d_bits_denied(buffer_auto_out_d_bits_denied),
    .auto_out_d_bits_data(buffer_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(buffer_auto_out_d_bits_corrupt)
  );
  SimpleLazyModule_5 coupler_from_port_named_slave_port_axi4 ( // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@33120.4]
    .clock(coupler_from_port_named_slave_port_axi4_clock),
    .reset(coupler_from_port_named_slave_port_axi4_reset),
    .auto_axi4index_in_aw_ready(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_ready),
    .auto_axi4index_in_aw_valid(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_valid),
    .auto_axi4index_in_aw_bits_id(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_bits_id),
    .auto_axi4index_in_aw_bits_addr(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_bits_addr),
    .auto_axi4index_in_aw_bits_len(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_bits_len),
    .auto_axi4index_in_aw_bits_size(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_bits_size),
    .auto_axi4index_in_aw_bits_burst(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_bits_burst),
    .auto_axi4index_in_w_ready(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_w_ready),
    .auto_axi4index_in_w_valid(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_w_valid),
    .auto_axi4index_in_w_bits_data(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_w_bits_data),
    .auto_axi4index_in_w_bits_strb(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_w_bits_strb),
    .auto_axi4index_in_w_bits_last(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_w_bits_last),
    .auto_axi4index_in_b_ready(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_b_ready),
    .auto_axi4index_in_b_valid(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_b_valid),
    .auto_axi4index_in_b_bits_id(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_b_bits_id),
    .auto_axi4index_in_b_bits_resp(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_b_bits_resp),
    .auto_axi4index_in_ar_ready(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_ready),
    .auto_axi4index_in_ar_valid(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_valid),
    .auto_axi4index_in_ar_bits_id(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_bits_id),
    .auto_axi4index_in_ar_bits_addr(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_bits_addr),
    .auto_axi4index_in_ar_bits_len(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_bits_len),
    .auto_axi4index_in_ar_bits_size(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_bits_size),
    .auto_axi4index_in_ar_bits_burst(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_bits_burst),
    .auto_axi4index_in_r_ready(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_r_ready),
    .auto_axi4index_in_r_valid(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_r_valid),
    .auto_axi4index_in_r_bits_id(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_r_bits_id),
    .auto_axi4index_in_r_bits_data(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_r_bits_data),
    .auto_axi4index_in_r_bits_resp(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_r_bits_resp),
    .auto_axi4index_in_r_bits_last(coupler_from_port_named_slave_port_axi4_auto_axi4index_in_r_bits_last),
    .auto_buffer_out_a_ready(coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_ready),
    .auto_buffer_out_a_valid(coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_valid),
    .auto_buffer_out_a_bits_opcode(coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_opcode),
    .auto_buffer_out_a_bits_param(coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_param),
    .auto_buffer_out_a_bits_size(coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_size),
    .auto_buffer_out_a_bits_source(coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_source),
    .auto_buffer_out_a_bits_address(coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_address),
    .auto_buffer_out_a_bits_mask(coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_mask),
    .auto_buffer_out_a_bits_data(coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_data),
    .auto_buffer_out_a_bits_corrupt(coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_corrupt),
    .auto_buffer_out_d_ready(coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_ready),
    .auto_buffer_out_d_valid(coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_valid),
    .auto_buffer_out_d_bits_opcode(coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_bits_opcode),
    .auto_buffer_out_d_bits_param(coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_bits_param),
    .auto_buffer_out_d_bits_size(coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_bits_size),
    .auto_buffer_out_d_bits_source(coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_bits_source),
    .auto_buffer_out_d_bits_sink(coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_bits_sink),
    .auto_buffer_out_d_bits_denied(coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_bits_denied),
    .auto_buffer_out_d_bits_data(coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_bits_data),
    .auto_buffer_out_d_bits_corrupt(coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_bits_corrupt)
  );
  assign auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_ready = coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_ready; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@33135.4]
  assign auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_ready = coupler_from_port_named_slave_port_axi4_auto_axi4index_in_w_ready; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@33135.4]
  assign auto_coupler_from_port_named_slave_port_axi4_axi4index_in_b_valid = coupler_from_port_named_slave_port_axi4_auto_axi4index_in_b_valid; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@33135.4]
  assign auto_coupler_from_port_named_slave_port_axi4_axi4index_in_b_bits_id = coupler_from_port_named_slave_port_axi4_auto_axi4index_in_b_bits_id; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@33135.4]
  assign auto_coupler_from_port_named_slave_port_axi4_axi4index_in_b_bits_resp = coupler_from_port_named_slave_port_axi4_auto_axi4index_in_b_bits_resp; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@33135.4]
  assign auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_ready = coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_ready; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@33135.4]
  assign auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_valid = coupler_from_port_named_slave_port_axi4_auto_axi4index_in_r_valid; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@33135.4]
  assign auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_bits_id = coupler_from_port_named_slave_port_axi4_auto_axi4index_in_r_bits_id; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@33135.4]
  assign auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_bits_data = coupler_from_port_named_slave_port_axi4_auto_axi4index_in_r_bits_data; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@33135.4]
  assign auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_bits_resp = coupler_from_port_named_slave_port_axi4_auto_axi4index_in_r_bits_resp; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@33135.4]
  assign auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_bits_last = coupler_from_port_named_slave_port_axi4_auto_axi4index_in_r_bits_last; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@33135.4]
  assign auto_bus_xing_out_a_valid = buffer_auto_out_a_valid; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@33134.4]
  assign auto_bus_xing_out_a_bits_opcode = buffer_auto_out_a_bits_opcode; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@33134.4]
  assign auto_bus_xing_out_a_bits_param = buffer_auto_out_a_bits_param; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@33134.4]
  assign auto_bus_xing_out_a_bits_size = buffer_auto_out_a_bits_size; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@33134.4]
  assign auto_bus_xing_out_a_bits_source = buffer_auto_out_a_bits_source; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@33134.4]
  assign auto_bus_xing_out_a_bits_address = buffer_auto_out_a_bits_address; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@33134.4]
  assign auto_bus_xing_out_a_bits_mask = buffer_auto_out_a_bits_mask; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@33134.4]
  assign auto_bus_xing_out_a_bits_data = buffer_auto_out_a_bits_data; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@33134.4]
  assign auto_bus_xing_out_a_bits_corrupt = buffer_auto_out_a_bits_corrupt; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@33134.4]
  assign auto_bus_xing_out_d_ready = buffer_auto_out_d_ready; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@33134.4]
  assign front_bus_xbar_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33112.4]
  assign front_bus_xbar_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33113.4]
  assign front_bus_xbar_auto_in_a_valid = coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_valid; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@33133.4]
  assign front_bus_xbar_auto_in_a_bits_opcode = coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_opcode; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@33133.4]
  assign front_bus_xbar_auto_in_a_bits_param = coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_param; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@33133.4]
  assign front_bus_xbar_auto_in_a_bits_size = coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_size; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@33133.4]
  assign front_bus_xbar_auto_in_a_bits_source = coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_source; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@33133.4]
  assign front_bus_xbar_auto_in_a_bits_address = coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_address; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@33133.4]
  assign front_bus_xbar_auto_in_a_bits_mask = coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_mask; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@33133.4]
  assign front_bus_xbar_auto_in_a_bits_data = coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_data; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@33133.4]
  assign front_bus_xbar_auto_in_a_bits_corrupt = coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_corrupt; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@33133.4]
  assign front_bus_xbar_auto_in_d_ready = coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_ready; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@33133.4]
  assign front_bus_xbar_auto_out_a_ready = buffer_auto_in_a_ready; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@33131.4]
  assign front_bus_xbar_auto_out_d_valid = buffer_auto_in_d_valid; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@33131.4]
  assign front_bus_xbar_auto_out_d_bits_opcode = buffer_auto_in_d_bits_opcode; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@33131.4]
  assign front_bus_xbar_auto_out_d_bits_param = buffer_auto_in_d_bits_param; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@33131.4]
  assign front_bus_xbar_auto_out_d_bits_size = buffer_auto_in_d_bits_size; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@33131.4]
  assign front_bus_xbar_auto_out_d_bits_source = buffer_auto_in_d_bits_source; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@33131.4]
  assign front_bus_xbar_auto_out_d_bits_sink = buffer_auto_in_d_bits_sink; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@33131.4]
  assign front_bus_xbar_auto_out_d_bits_denied = buffer_auto_in_d_bits_denied; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@33131.4]
  assign front_bus_xbar_auto_out_d_bits_data = buffer_auto_in_d_bits_data; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@33131.4]
  assign front_bus_xbar_auto_out_d_bits_corrupt = buffer_auto_in_d_bits_corrupt; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@33131.4]
  assign buffer_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33118.4]
  assign buffer_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33119.4]
  assign buffer_auto_in_a_valid = front_bus_xbar_auto_out_a_valid; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@33131.4]
  assign buffer_auto_in_a_bits_opcode = front_bus_xbar_auto_out_a_bits_opcode; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@33131.4]
  assign buffer_auto_in_a_bits_param = front_bus_xbar_auto_out_a_bits_param; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@33131.4]
  assign buffer_auto_in_a_bits_size = front_bus_xbar_auto_out_a_bits_size; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@33131.4]
  assign buffer_auto_in_a_bits_source = front_bus_xbar_auto_out_a_bits_source; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@33131.4]
  assign buffer_auto_in_a_bits_address = front_bus_xbar_auto_out_a_bits_address; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@33131.4]
  assign buffer_auto_in_a_bits_mask = front_bus_xbar_auto_out_a_bits_mask; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@33131.4]
  assign buffer_auto_in_a_bits_data = front_bus_xbar_auto_out_a_bits_data; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@33131.4]
  assign buffer_auto_in_a_bits_corrupt = front_bus_xbar_auto_out_a_bits_corrupt; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@33131.4]
  assign buffer_auto_in_d_ready = front_bus_xbar_auto_out_d_ready; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@33131.4]
  assign buffer_auto_out_a_ready = auto_bus_xing_out_a_ready; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@33132.4]
  assign buffer_auto_out_d_valid = auto_bus_xing_out_d_valid; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@33132.4]
  assign buffer_auto_out_d_bits_opcode = auto_bus_xing_out_d_bits_opcode; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@33132.4]
  assign buffer_auto_out_d_bits_param = auto_bus_xing_out_d_bits_param; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@33132.4]
  assign buffer_auto_out_d_bits_size = auto_bus_xing_out_d_bits_size; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@33132.4]
  assign buffer_auto_out_d_bits_source = auto_bus_xing_out_d_bits_source; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@33132.4]
  assign buffer_auto_out_d_bits_sink = auto_bus_xing_out_d_bits_sink; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@33132.4]
  assign buffer_auto_out_d_bits_denied = auto_bus_xing_out_d_bits_denied; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@33132.4]
  assign buffer_auto_out_d_bits_data = auto_bus_xing_out_d_bits_data; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@33132.4]
  assign buffer_auto_out_d_bits_corrupt = auto_bus_xing_out_d_bits_corrupt; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@33132.4]
  assign coupler_from_port_named_slave_port_axi4_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33124.4]
  assign coupler_from_port_named_slave_port_axi4_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@33125.4]
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_valid = auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_valid; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@33135.4]
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_bits_id = auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_id; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@33135.4]
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_bits_addr = auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_addr; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@33135.4]
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_bits_len = auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_len; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@33135.4]
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_bits_size = auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_size; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@33135.4]
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_bits_burst = auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_burst; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@33135.4]
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_w_valid = auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_valid; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@33135.4]
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_w_bits_data = auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_bits_data; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@33135.4]
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_w_bits_strb = auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_bits_strb; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@33135.4]
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_w_bits_last = auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_bits_last; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@33135.4]
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_b_ready = auto_coupler_from_port_named_slave_port_axi4_axi4index_in_b_ready; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@33135.4]
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_valid = auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_valid; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@33135.4]
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_bits_id = auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_id; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@33135.4]
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_bits_addr = auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_addr; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@33135.4]
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_bits_len = auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_len; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@33135.4]
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_bits_size = auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_size; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@33135.4]
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_bits_burst = auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_burst; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@33135.4]
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_r_ready = auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_ready; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@33135.4]
  assign coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_ready = front_bus_xbar_auto_in_a_ready; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@33133.4]
  assign coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_valid = front_bus_xbar_auto_in_d_valid; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@33133.4]
  assign coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_bits_opcode = front_bus_xbar_auto_in_d_bits_opcode; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@33133.4]
  assign coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_bits_param = front_bus_xbar_auto_in_d_bits_param; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@33133.4]
  assign coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_bits_size = front_bus_xbar_auto_in_d_bits_size; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@33133.4]
  assign coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_bits_source = front_bus_xbar_auto_in_d_bits_source; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@33133.4]
  assign coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_bits_sink = front_bus_xbar_auto_in_d_bits_sink; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@33133.4]
  assign coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_bits_denied = front_bus_xbar_auto_in_d_bits_denied; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@33133.4]
  assign coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_bits_data = front_bus_xbar_auto_in_d_bits_data; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@33133.4]
  assign coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_bits_corrupt = front_bus_xbar_auto_in_d_bits_corrupt; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@33133.4]
endmodule
`endif // __FrontBus

