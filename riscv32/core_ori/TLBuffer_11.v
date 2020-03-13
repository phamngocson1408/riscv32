`include "include_module.v"
`ifdef __TLBuffer_11
module TLBuffer_11( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141275.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141276.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141277.4]
  output        auto_in_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  input         auto_in_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  input  [2:0]  auto_in_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  input  [2:0]  auto_in_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  input  [3:0]  auto_in_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  input  [1:0]  auto_in_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  input  [31:0] auto_in_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  input  [3:0]  auto_in_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  input  [31:0] auto_in_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  input         auto_in_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  input         auto_in_b_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  output        auto_in_b_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  output [2:0]  auto_in_b_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  output [1:0]  auto_in_b_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  output [3:0]  auto_in_b_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  output [1:0]  auto_in_b_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  output [31:0] auto_in_b_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  output [3:0]  auto_in_b_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  output        auto_in_b_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  output        auto_in_c_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  input         auto_in_c_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  input  [2:0]  auto_in_c_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  input  [2:0]  auto_in_c_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  input  [3:0]  auto_in_c_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  input  [1:0]  auto_in_c_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  input  [31:0] auto_in_c_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  input  [31:0] auto_in_c_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  input         auto_in_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  output        auto_in_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  output [2:0]  auto_in_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  output [1:0]  auto_in_d_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  output [3:0]  auto_in_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  output [1:0]  auto_in_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  output [1:0]  auto_in_d_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  output        auto_in_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  output [31:0] auto_in_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  output        auto_in_d_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  output        auto_in_e_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  input         auto_in_e_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  input  [1:0]  auto_in_e_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  input         auto_out_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  output        auto_out_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  output [2:0]  auto_out_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  output [2:0]  auto_out_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  output [3:0]  auto_out_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  output [1:0]  auto_out_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  output [31:0] auto_out_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  output [3:0]  auto_out_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  output [31:0] auto_out_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  output        auto_out_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  output        auto_out_b_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  input         auto_out_b_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  input  [1:0]  auto_out_b_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  input  [31:0] auto_out_b_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  input         auto_out_c_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  output        auto_out_c_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  output [2:0]  auto_out_c_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  output [2:0]  auto_out_c_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  output [3:0]  auto_out_c_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  output [1:0]  auto_out_c_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  output [31:0] auto_out_c_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  output [31:0] auto_out_c_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  output        auto_out_c_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  output        auto_out_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  input         auto_out_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  input  [2:0]  auto_out_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  input  [1:0]  auto_out_d_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  input  [3:0]  auto_out_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  input  [1:0]  auto_out_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  input  [1:0]  auto_out_d_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  input         auto_out_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  input  [31:0] auto_out_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  input         auto_out_d_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  output        auto_out_e_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
  output [1:0]  auto_out_e_bits_sink // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141278.4]
);
  wire  TLMonitor_clock; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@141285.4]
  wire  TLMonitor_reset; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@141285.4]
  wire  TLMonitor_io_in_a_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@141285.4]
  wire  TLMonitor_io_in_a_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@141285.4]
  wire [2:0] TLMonitor_io_in_a_bits_opcode; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@141285.4]
  wire [2:0] TLMonitor_io_in_a_bits_param; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@141285.4]
  wire [3:0] TLMonitor_io_in_a_bits_size; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@141285.4]
  wire [1:0] TLMonitor_io_in_a_bits_source; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@141285.4]
  wire [31:0] TLMonitor_io_in_a_bits_address; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@141285.4]
  wire [3:0] TLMonitor_io_in_a_bits_mask; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@141285.4]
  wire  TLMonitor_io_in_a_bits_corrupt; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@141285.4]
  wire  TLMonitor_io_in_b_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@141285.4]
  wire  TLMonitor_io_in_b_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@141285.4]
  wire [2:0] TLMonitor_io_in_b_bits_opcode; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@141285.4]
  wire [1:0] TLMonitor_io_in_b_bits_param; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@141285.4]
  wire [3:0] TLMonitor_io_in_b_bits_size; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@141285.4]
  wire [1:0] TLMonitor_io_in_b_bits_source; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@141285.4]
  wire [31:0] TLMonitor_io_in_b_bits_address; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@141285.4]
  wire [3:0] TLMonitor_io_in_b_bits_mask; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@141285.4]
  wire  TLMonitor_io_in_b_bits_corrupt; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@141285.4]
  wire  TLMonitor_io_in_c_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@141285.4]
  wire  TLMonitor_io_in_c_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@141285.4]
  wire [2:0] TLMonitor_io_in_c_bits_opcode; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@141285.4]
  wire [2:0] TLMonitor_io_in_c_bits_param; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@141285.4]
  wire [3:0] TLMonitor_io_in_c_bits_size; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@141285.4]
  wire [1:0] TLMonitor_io_in_c_bits_source; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@141285.4]
  wire [31:0] TLMonitor_io_in_c_bits_address; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@141285.4]
  wire  TLMonitor_io_in_d_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@141285.4]
  wire  TLMonitor_io_in_d_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@141285.4]
  wire [2:0] TLMonitor_io_in_d_bits_opcode; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@141285.4]
  wire [1:0] TLMonitor_io_in_d_bits_param; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@141285.4]
  wire [3:0] TLMonitor_io_in_d_bits_size; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@141285.4]
  wire [1:0] TLMonitor_io_in_d_bits_source; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@141285.4]
  wire [1:0] TLMonitor_io_in_d_bits_sink; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@141285.4]
  wire  TLMonitor_io_in_d_bits_denied; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@141285.4]
  wire  TLMonitor_io_in_d_bits_corrupt; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@141285.4]
  wire  TLMonitor_io_in_e_ready; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@141285.4]
  wire  TLMonitor_io_in_e_valid; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@141285.4]
  wire [1:0] TLMonitor_io_in_e_bits_sink; // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@141285.4]
  wire  Queue_clock; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141334.4]
  wire  Queue_reset; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141334.4]
  wire  Queue_io_enq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141334.4]
  wire  Queue_io_enq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141334.4]
  wire [2:0] Queue_io_enq_bits_opcode; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141334.4]
  wire [2:0] Queue_io_enq_bits_param; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141334.4]
  wire [3:0] Queue_io_enq_bits_size; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141334.4]
  wire [1:0] Queue_io_enq_bits_source; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141334.4]
  wire [31:0] Queue_io_enq_bits_address; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141334.4]
  wire [3:0] Queue_io_enq_bits_mask; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141334.4]
  wire [31:0] Queue_io_enq_bits_data; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141334.4]
  wire  Queue_io_enq_bits_corrupt; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141334.4]
  wire  Queue_io_deq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141334.4]
  wire  Queue_io_deq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141334.4]
  wire [2:0] Queue_io_deq_bits_opcode; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141334.4]
  wire [2:0] Queue_io_deq_bits_param; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141334.4]
  wire [3:0] Queue_io_deq_bits_size; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141334.4]
  wire [1:0] Queue_io_deq_bits_source; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141334.4]
  wire [31:0] Queue_io_deq_bits_address; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141334.4]
  wire [3:0] Queue_io_deq_bits_mask; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141334.4]
  wire [31:0] Queue_io_deq_bits_data; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141334.4]
  wire  Queue_io_deq_bits_corrupt; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141334.4]
  wire  Queue_1_clock; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141348.4]
  wire  Queue_1_reset; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141348.4]
  wire  Queue_1_io_enq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141348.4]
  wire  Queue_1_io_enq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141348.4]
  wire [2:0] Queue_1_io_enq_bits_opcode; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141348.4]
  wire [1:0] Queue_1_io_enq_bits_param; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141348.4]
  wire [3:0] Queue_1_io_enq_bits_size; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141348.4]
  wire [1:0] Queue_1_io_enq_bits_source; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141348.4]
  wire [1:0] Queue_1_io_enq_bits_sink; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141348.4]
  wire  Queue_1_io_enq_bits_denied; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141348.4]
  wire [31:0] Queue_1_io_enq_bits_data; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141348.4]
  wire  Queue_1_io_enq_bits_corrupt; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141348.4]
  wire  Queue_1_io_deq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141348.4]
  wire  Queue_1_io_deq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141348.4]
  wire [2:0] Queue_1_io_deq_bits_opcode; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141348.4]
  wire [1:0] Queue_1_io_deq_bits_param; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141348.4]
  wire [3:0] Queue_1_io_deq_bits_size; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141348.4]
  wire [1:0] Queue_1_io_deq_bits_source; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141348.4]
  wire [1:0] Queue_1_io_deq_bits_sink; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141348.4]
  wire  Queue_1_io_deq_bits_denied; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141348.4]
  wire [31:0] Queue_1_io_deq_bits_data; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141348.4]
  wire  Queue_1_io_deq_bits_corrupt; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141348.4]
  wire  Queue_2_clock; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141362.4]
  wire  Queue_2_reset; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141362.4]
  wire  Queue_2_io_enq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141362.4]
  wire  Queue_2_io_enq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141362.4]
  wire [1:0] Queue_2_io_enq_bits_param; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141362.4]
  wire [31:0] Queue_2_io_enq_bits_address; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141362.4]
  wire  Queue_2_io_deq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141362.4]
  wire  Queue_2_io_deq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141362.4]
  wire [2:0] Queue_2_io_deq_bits_opcode; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141362.4]
  wire [1:0] Queue_2_io_deq_bits_param; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141362.4]
  wire [3:0] Queue_2_io_deq_bits_size; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141362.4]
  wire [1:0] Queue_2_io_deq_bits_source; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141362.4]
  wire [31:0] Queue_2_io_deq_bits_address; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141362.4]
  wire [3:0] Queue_2_io_deq_bits_mask; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141362.4]
  wire  Queue_2_io_deq_bits_corrupt; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141362.4]
  wire  Queue_3_clock; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141376.4]
  wire  Queue_3_reset; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141376.4]
  wire  Queue_3_io_enq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141376.4]
  wire  Queue_3_io_enq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141376.4]
  wire [2:0] Queue_3_io_enq_bits_opcode; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141376.4]
  wire [2:0] Queue_3_io_enq_bits_param; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141376.4]
  wire [3:0] Queue_3_io_enq_bits_size; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141376.4]
  wire [1:0] Queue_3_io_enq_bits_source; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141376.4]
  wire [31:0] Queue_3_io_enq_bits_address; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141376.4]
  wire [31:0] Queue_3_io_enq_bits_data; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141376.4]
  wire  Queue_3_io_deq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141376.4]
  wire  Queue_3_io_deq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141376.4]
  wire [2:0] Queue_3_io_deq_bits_opcode; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141376.4]
  wire [2:0] Queue_3_io_deq_bits_param; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141376.4]
  wire [3:0] Queue_3_io_deq_bits_size; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141376.4]
  wire [1:0] Queue_3_io_deq_bits_source; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141376.4]
  wire [31:0] Queue_3_io_deq_bits_address; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141376.4]
  wire [31:0] Queue_3_io_deq_bits_data; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141376.4]
  wire  Queue_3_io_deq_bits_corrupt; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141376.4]
  wire  Queue_4_clock; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141389.4]
  wire  Queue_4_reset; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141389.4]
  wire  Queue_4_io_enq_ready; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141389.4]
  wire  Queue_4_io_enq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141389.4]
  wire [1:0] Queue_4_io_enq_bits_sink; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141389.4]
  wire  Queue_4_io_deq_valid; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141389.4]
  wire [1:0] Queue_4_io_deq_bits_sink; // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141389.4]
  TLMonitor_41 TLMonitor ( // @[Nodes.scala 25:25:freechips.rocketchip.system.DefaultRV32Config.fir@141285.4]
    .clock(TLMonitor_clock),
    .reset(TLMonitor_reset),
    .io_in_a_ready(TLMonitor_io_in_a_ready),
    .io_in_a_valid(TLMonitor_io_in_a_valid),
    .io_in_a_bits_opcode(TLMonitor_io_in_a_bits_opcode),
    .io_in_a_bits_param(TLMonitor_io_in_a_bits_param),
    .io_in_a_bits_size(TLMonitor_io_in_a_bits_size),
    .io_in_a_bits_source(TLMonitor_io_in_a_bits_source),
    .io_in_a_bits_address(TLMonitor_io_in_a_bits_address),
    .io_in_a_bits_mask(TLMonitor_io_in_a_bits_mask),
    .io_in_a_bits_corrupt(TLMonitor_io_in_a_bits_corrupt),
    .io_in_b_ready(TLMonitor_io_in_b_ready),
    .io_in_b_valid(TLMonitor_io_in_b_valid),
    .io_in_b_bits_opcode(TLMonitor_io_in_b_bits_opcode),
    .io_in_b_bits_param(TLMonitor_io_in_b_bits_param),
    .io_in_b_bits_size(TLMonitor_io_in_b_bits_size),
    .io_in_b_bits_source(TLMonitor_io_in_b_bits_source),
    .io_in_b_bits_address(TLMonitor_io_in_b_bits_address),
    .io_in_b_bits_mask(TLMonitor_io_in_b_bits_mask),
    .io_in_b_bits_corrupt(TLMonitor_io_in_b_bits_corrupt),
    .io_in_c_ready(TLMonitor_io_in_c_ready),
    .io_in_c_valid(TLMonitor_io_in_c_valid),
    .io_in_c_bits_opcode(TLMonitor_io_in_c_bits_opcode),
    .io_in_c_bits_param(TLMonitor_io_in_c_bits_param),
    .io_in_c_bits_size(TLMonitor_io_in_c_bits_size),
    .io_in_c_bits_source(TLMonitor_io_in_c_bits_source),
    .io_in_c_bits_address(TLMonitor_io_in_c_bits_address),
    .io_in_d_ready(TLMonitor_io_in_d_ready),
    .io_in_d_valid(TLMonitor_io_in_d_valid),
    .io_in_d_bits_opcode(TLMonitor_io_in_d_bits_opcode),
    .io_in_d_bits_param(TLMonitor_io_in_d_bits_param),
    .io_in_d_bits_size(TLMonitor_io_in_d_bits_size),
    .io_in_d_bits_source(TLMonitor_io_in_d_bits_source),
    .io_in_d_bits_sink(TLMonitor_io_in_d_bits_sink),
    .io_in_d_bits_denied(TLMonitor_io_in_d_bits_denied),
    .io_in_d_bits_corrupt(TLMonitor_io_in_d_bits_corrupt),
    .io_in_e_ready(TLMonitor_io_in_e_ready),
    .io_in_e_valid(TLMonitor_io_in_e_valid),
    .io_in_e_bits_sink(TLMonitor_io_in_e_bits_sink)
  );
  Queue_24 Queue ( // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141334.4]
    .clock(Queue_clock),
    .reset(Queue_reset),
    .io_enq_ready(Queue_io_enq_ready),
    .io_enq_valid(Queue_io_enq_valid),
    .io_enq_bits_opcode(Queue_io_enq_bits_opcode),
    .io_enq_bits_param(Queue_io_enq_bits_param),
    .io_enq_bits_size(Queue_io_enq_bits_size),
    .io_enq_bits_source(Queue_io_enq_bits_source),
    .io_enq_bits_address(Queue_io_enq_bits_address),
    .io_enq_bits_mask(Queue_io_enq_bits_mask),
    .io_enq_bits_data(Queue_io_enq_bits_data),
    .io_enq_bits_corrupt(Queue_io_enq_bits_corrupt),
    .io_deq_ready(Queue_io_deq_ready),
    .io_deq_valid(Queue_io_deq_valid),
    .io_deq_bits_opcode(Queue_io_deq_bits_opcode),
    .io_deq_bits_param(Queue_io_deq_bits_param),
    .io_deq_bits_size(Queue_io_deq_bits_size),
    .io_deq_bits_source(Queue_io_deq_bits_source),
    .io_deq_bits_address(Queue_io_deq_bits_address),
    .io_deq_bits_mask(Queue_io_deq_bits_mask),
    .io_deq_bits_data(Queue_io_deq_bits_data),
    .io_deq_bits_corrupt(Queue_io_deq_bits_corrupt)
  );
  Queue_25 Queue_1 ( // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141348.4]
    .clock(Queue_1_clock),
    .reset(Queue_1_reset),
    .io_enq_ready(Queue_1_io_enq_ready),
    .io_enq_valid(Queue_1_io_enq_valid),
    .io_enq_bits_opcode(Queue_1_io_enq_bits_opcode),
    .io_enq_bits_param(Queue_1_io_enq_bits_param),
    .io_enq_bits_size(Queue_1_io_enq_bits_size),
    .io_enq_bits_source(Queue_1_io_enq_bits_source),
    .io_enq_bits_sink(Queue_1_io_enq_bits_sink),
    .io_enq_bits_denied(Queue_1_io_enq_bits_denied),
    .io_enq_bits_data(Queue_1_io_enq_bits_data),
    .io_enq_bits_corrupt(Queue_1_io_enq_bits_corrupt),
    .io_deq_ready(Queue_1_io_deq_ready),
    .io_deq_valid(Queue_1_io_deq_valid),
    .io_deq_bits_opcode(Queue_1_io_deq_bits_opcode),
    .io_deq_bits_param(Queue_1_io_deq_bits_param),
    .io_deq_bits_size(Queue_1_io_deq_bits_size),
    .io_deq_bits_source(Queue_1_io_deq_bits_source),
    .io_deq_bits_sink(Queue_1_io_deq_bits_sink),
    .io_deq_bits_denied(Queue_1_io_deq_bits_denied),
    .io_deq_bits_data(Queue_1_io_deq_bits_data),
    .io_deq_bits_corrupt(Queue_1_io_deq_bits_corrupt)
  );
  Queue_26 Queue_2 ( // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141362.4]
    .clock(Queue_2_clock),
    .reset(Queue_2_reset),
    .io_enq_ready(Queue_2_io_enq_ready),
    .io_enq_valid(Queue_2_io_enq_valid),
    .io_enq_bits_param(Queue_2_io_enq_bits_param),
    .io_enq_bits_address(Queue_2_io_enq_bits_address),
    .io_deq_ready(Queue_2_io_deq_ready),
    .io_deq_valid(Queue_2_io_deq_valid),
    .io_deq_bits_opcode(Queue_2_io_deq_bits_opcode),
    .io_deq_bits_param(Queue_2_io_deq_bits_param),
    .io_deq_bits_size(Queue_2_io_deq_bits_size),
    .io_deq_bits_source(Queue_2_io_deq_bits_source),
    .io_deq_bits_address(Queue_2_io_deq_bits_address),
    .io_deq_bits_mask(Queue_2_io_deq_bits_mask),
    .io_deq_bits_corrupt(Queue_2_io_deq_bits_corrupt)
  );
  Queue_27 Queue_3 ( // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141376.4]
    .clock(Queue_3_clock),
    .reset(Queue_3_reset),
    .io_enq_ready(Queue_3_io_enq_ready),
    .io_enq_valid(Queue_3_io_enq_valid),
    .io_enq_bits_opcode(Queue_3_io_enq_bits_opcode),
    .io_enq_bits_param(Queue_3_io_enq_bits_param),
    .io_enq_bits_size(Queue_3_io_enq_bits_size),
    .io_enq_bits_source(Queue_3_io_enq_bits_source),
    .io_enq_bits_address(Queue_3_io_enq_bits_address),
    .io_enq_bits_data(Queue_3_io_enq_bits_data),
    .io_deq_ready(Queue_3_io_deq_ready),
    .io_deq_valid(Queue_3_io_deq_valid),
    .io_deq_bits_opcode(Queue_3_io_deq_bits_opcode),
    .io_deq_bits_param(Queue_3_io_deq_bits_param),
    .io_deq_bits_size(Queue_3_io_deq_bits_size),
    .io_deq_bits_source(Queue_3_io_deq_bits_source),
    .io_deq_bits_address(Queue_3_io_deq_bits_address),
    .io_deq_bits_data(Queue_3_io_deq_bits_data),
    .io_deq_bits_corrupt(Queue_3_io_deq_bits_corrupt)
  );
  Queue_28 Queue_4 ( // @[Decoupled.scala 287:21:freechips.rocketchip.system.DefaultRV32Config.fir@141389.4]
    .clock(Queue_4_clock),
    .reset(Queue_4_reset),
    .io_enq_ready(Queue_4_io_enq_ready),
    .io_enq_valid(Queue_4_io_enq_valid),
    .io_enq_bits_sink(Queue_4_io_enq_bits_sink),
    .io_deq_valid(Queue_4_io_deq_valid),
    .io_deq_bits_sink(Queue_4_io_deq_bits_sink)
  );
  assign auto_in_a_ready = Queue_io_enq_ready; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@141333.4]
  assign auto_in_b_valid = Queue_2_io_deq_valid; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@141333.4]
  assign auto_in_b_bits_opcode = Queue_2_io_deq_bits_opcode; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@141333.4]
  assign auto_in_b_bits_param = Queue_2_io_deq_bits_param; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@141333.4]
  assign auto_in_b_bits_size = Queue_2_io_deq_bits_size; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@141333.4]
  assign auto_in_b_bits_source = Queue_2_io_deq_bits_source; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@141333.4]
  assign auto_in_b_bits_address = Queue_2_io_deq_bits_address; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@141333.4]
  assign auto_in_b_bits_mask = Queue_2_io_deq_bits_mask; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@141333.4]
  assign auto_in_b_bits_corrupt = Queue_2_io_deq_bits_corrupt; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@141333.4]
  assign auto_in_c_ready = Queue_3_io_enq_ready; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@141333.4]
  assign auto_in_d_valid = Queue_1_io_deq_valid; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@141333.4]
  assign auto_in_d_bits_opcode = Queue_1_io_deq_bits_opcode; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@141333.4]
  assign auto_in_d_bits_param = Queue_1_io_deq_bits_param; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@141333.4]
  assign auto_in_d_bits_size = Queue_1_io_deq_bits_size; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@141333.4]
  assign auto_in_d_bits_source = Queue_1_io_deq_bits_source; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@141333.4]
  assign auto_in_d_bits_sink = Queue_1_io_deq_bits_sink; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@141333.4]
  assign auto_in_d_bits_denied = Queue_1_io_deq_bits_denied; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@141333.4]
  assign auto_in_d_bits_data = Queue_1_io_deq_bits_data; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@141333.4]
  assign auto_in_d_bits_corrupt = Queue_1_io_deq_bits_corrupt; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@141333.4]
  assign auto_in_e_ready = Queue_4_io_enq_ready; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@141333.4]
  assign auto_out_a_valid = Queue_io_deq_valid; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@141332.4]
  assign auto_out_a_bits_opcode = Queue_io_deq_bits_opcode; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@141332.4]
  assign auto_out_a_bits_param = Queue_io_deq_bits_param; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@141332.4]
  assign auto_out_a_bits_size = Queue_io_deq_bits_size; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@141332.4]
  assign auto_out_a_bits_source = Queue_io_deq_bits_source; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@141332.4]
  assign auto_out_a_bits_address = Queue_io_deq_bits_address; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@141332.4]
  assign auto_out_a_bits_mask = Queue_io_deq_bits_mask; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@141332.4]
  assign auto_out_a_bits_data = Queue_io_deq_bits_data; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@141332.4]
  assign auto_out_a_bits_corrupt = Queue_io_deq_bits_corrupt; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@141332.4]
  assign auto_out_b_ready = Queue_2_io_enq_ready; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@141332.4]
  assign auto_out_c_valid = Queue_3_io_deq_valid; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@141332.4]
  assign auto_out_c_bits_opcode = Queue_3_io_deq_bits_opcode; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@141332.4]
  assign auto_out_c_bits_param = Queue_3_io_deq_bits_param; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@141332.4]
  assign auto_out_c_bits_size = Queue_3_io_deq_bits_size; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@141332.4]
  assign auto_out_c_bits_source = Queue_3_io_deq_bits_source; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@141332.4]
  assign auto_out_c_bits_address = Queue_3_io_deq_bits_address; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@141332.4]
  assign auto_out_c_bits_data = Queue_3_io_deq_bits_data; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@141332.4]
  assign auto_out_c_bits_corrupt = Queue_3_io_deq_bits_corrupt; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@141332.4]
  assign auto_out_d_ready = Queue_1_io_enq_ready; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@141332.4]
  assign auto_out_e_valid = Queue_4_io_deq_valid; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@141332.4]
  assign auto_out_e_bits_sink = Queue_4_io_deq_bits_sink; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@141332.4]
  assign TLMonitor_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141286.4]
  assign TLMonitor_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141287.4]
  assign TLMonitor_io_in_a_ready = Queue_io_enq_ready; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@141329.4]
  assign TLMonitor_io_in_a_valid = auto_in_a_valid; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@141328.4]
  assign TLMonitor_io_in_a_bits_opcode = auto_in_a_bits_opcode; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@141327.4]
  assign TLMonitor_io_in_a_bits_param = auto_in_a_bits_param; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@141326.4]
  assign TLMonitor_io_in_a_bits_size = auto_in_a_bits_size; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@141325.4]
  assign TLMonitor_io_in_a_bits_source = auto_in_a_bits_source; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@141324.4]
  assign TLMonitor_io_in_a_bits_address = auto_in_a_bits_address; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@141323.4]
  assign TLMonitor_io_in_a_bits_mask = auto_in_a_bits_mask; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@141322.4]
  assign TLMonitor_io_in_a_bits_corrupt = auto_in_a_bits_corrupt; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@141320.4]
  assign TLMonitor_io_in_b_ready = auto_in_b_ready; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@141319.4]
  assign TLMonitor_io_in_b_valid = Queue_2_io_deq_valid; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@141318.4]
  assign TLMonitor_io_in_b_bits_opcode = Queue_2_io_deq_bits_opcode; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@141317.4]
  assign TLMonitor_io_in_b_bits_param = Queue_2_io_deq_bits_param; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@141316.4]
  assign TLMonitor_io_in_b_bits_size = Queue_2_io_deq_bits_size; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@141315.4]
  assign TLMonitor_io_in_b_bits_source = Queue_2_io_deq_bits_source; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@141314.4]
  assign TLMonitor_io_in_b_bits_address = Queue_2_io_deq_bits_address; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@141313.4]
  assign TLMonitor_io_in_b_bits_mask = Queue_2_io_deq_bits_mask; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@141312.4]
  assign TLMonitor_io_in_b_bits_corrupt = Queue_2_io_deq_bits_corrupt; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@141310.4]
  assign TLMonitor_io_in_c_ready = Queue_3_io_enq_ready; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@141309.4]
  assign TLMonitor_io_in_c_valid = auto_in_c_valid; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@141308.4]
  assign TLMonitor_io_in_c_bits_opcode = auto_in_c_bits_opcode; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@141307.4]
  assign TLMonitor_io_in_c_bits_param = auto_in_c_bits_param; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@141306.4]
  assign TLMonitor_io_in_c_bits_size = auto_in_c_bits_size; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@141305.4]
  assign TLMonitor_io_in_c_bits_source = auto_in_c_bits_source; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@141304.4]
  assign TLMonitor_io_in_c_bits_address = auto_in_c_bits_address; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@141303.4]
  assign TLMonitor_io_in_d_ready = auto_in_d_ready; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@141300.4]
  assign TLMonitor_io_in_d_valid = Queue_1_io_deq_valid; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@141299.4]
  assign TLMonitor_io_in_d_bits_opcode = Queue_1_io_deq_bits_opcode; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@141298.4]
  assign TLMonitor_io_in_d_bits_param = Queue_1_io_deq_bits_param; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@141297.4]
  assign TLMonitor_io_in_d_bits_size = Queue_1_io_deq_bits_size; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@141296.4]
  assign TLMonitor_io_in_d_bits_source = Queue_1_io_deq_bits_source; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@141295.4]
  assign TLMonitor_io_in_d_bits_sink = Queue_1_io_deq_bits_sink; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@141294.4]
  assign TLMonitor_io_in_d_bits_denied = Queue_1_io_deq_bits_denied; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@141293.4]
  assign TLMonitor_io_in_d_bits_corrupt = Queue_1_io_deq_bits_corrupt; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@141291.4]
  assign TLMonitor_io_in_e_ready = Queue_4_io_enq_ready; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@141290.4]
  assign TLMonitor_io_in_e_valid = auto_in_e_valid; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@141289.4]
  assign TLMonitor_io_in_e_bits_sink = auto_in_e_bits_sink; // @[Nodes.scala 26:19:freechips.rocketchip.system.DefaultRV32Config.fir@141288.4]
  assign Queue_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141335.4]
  assign Queue_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141336.4]
  assign Queue_io_enq_valid = auto_in_a_valid; // @[Decoupled.scala 288:22:freechips.rocketchip.system.DefaultRV32Config.fir@141337.4]
  assign Queue_io_enq_bits_opcode = auto_in_a_bits_opcode; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@141345.4]
  assign Queue_io_enq_bits_param = auto_in_a_bits_param; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@141344.4]
  assign Queue_io_enq_bits_size = auto_in_a_bits_size; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@141343.4]
  assign Queue_io_enq_bits_source = auto_in_a_bits_source; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@141342.4]
  assign Queue_io_enq_bits_address = auto_in_a_bits_address; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@141341.4]
  assign Queue_io_enq_bits_mask = auto_in_a_bits_mask; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@141340.4]
  assign Queue_io_enq_bits_data = auto_in_a_bits_data; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@141339.4]
  assign Queue_io_enq_bits_corrupt = auto_in_a_bits_corrupt; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@141338.4]
  assign Queue_io_deq_ready = auto_out_a_ready; // @[Buffer.scala 38:13:freechips.rocketchip.system.DefaultRV32Config.fir@141347.4]
  assign Queue_1_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141349.4]
  assign Queue_1_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141350.4]
  assign Queue_1_io_enq_valid = auto_out_d_valid; // @[Decoupled.scala 288:22:freechips.rocketchip.system.DefaultRV32Config.fir@141351.4]
  assign Queue_1_io_enq_bits_opcode = auto_out_d_bits_opcode; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@141359.4]
  assign Queue_1_io_enq_bits_param = auto_out_d_bits_param; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@141358.4]
  assign Queue_1_io_enq_bits_size = auto_out_d_bits_size; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@141357.4]
  assign Queue_1_io_enq_bits_source = auto_out_d_bits_source; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@141356.4]
  assign Queue_1_io_enq_bits_sink = auto_out_d_bits_sink; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@141355.4]
  assign Queue_1_io_enq_bits_denied = auto_out_d_bits_denied; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@141354.4]
  assign Queue_1_io_enq_bits_data = auto_out_d_bits_data; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@141353.4]
  assign Queue_1_io_enq_bits_corrupt = auto_out_d_bits_corrupt; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@141352.4]
  assign Queue_1_io_deq_ready = auto_in_d_ready; // @[Buffer.scala 39:13:freechips.rocketchip.system.DefaultRV32Config.fir@141361.4]
  assign Queue_2_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141363.4]
  assign Queue_2_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141364.4]
  assign Queue_2_io_enq_valid = auto_out_b_valid; // @[Decoupled.scala 288:22:freechips.rocketchip.system.DefaultRV32Config.fir@141365.4]
  assign Queue_2_io_enq_bits_param = auto_out_b_bits_param; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@141372.4]
  assign Queue_2_io_enq_bits_address = auto_out_b_bits_address; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@141369.4]
  assign Queue_2_io_deq_ready = auto_in_b_ready; // @[Buffer.scala 42:15:freechips.rocketchip.system.DefaultRV32Config.fir@141375.4]
  assign Queue_3_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141377.4]
  assign Queue_3_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141378.4]
  assign Queue_3_io_enq_valid = auto_in_c_valid; // @[Decoupled.scala 288:22:freechips.rocketchip.system.DefaultRV32Config.fir@141379.4]
  assign Queue_3_io_enq_bits_opcode = auto_in_c_bits_opcode; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@141386.4]
  assign Queue_3_io_enq_bits_param = auto_in_c_bits_param; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@141385.4]
  assign Queue_3_io_enq_bits_size = auto_in_c_bits_size; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@141384.4]
  assign Queue_3_io_enq_bits_source = auto_in_c_bits_source; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@141383.4]
  assign Queue_3_io_enq_bits_address = auto_in_c_bits_address; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@141382.4]
  assign Queue_3_io_enq_bits_data = auto_in_c_bits_data; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@141381.4]
  assign Queue_3_io_deq_ready = auto_out_c_ready; // @[Buffer.scala 43:15:freechips.rocketchip.system.DefaultRV32Config.fir@141388.4]
  assign Queue_4_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141390.4]
  assign Queue_4_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@141391.4]
  assign Queue_4_io_enq_valid = auto_in_e_valid; // @[Decoupled.scala 288:22:freechips.rocketchip.system.DefaultRV32Config.fir@141392.4]
  assign Queue_4_io_enq_bits_sink = auto_in_e_bits_sink; // @[Decoupled.scala 289:21:freechips.rocketchip.system.DefaultRV32Config.fir@141393.4]
endmodule
`endif // __TLBuffer_11

