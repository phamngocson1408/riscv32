`include "include_module.v"
`ifdef __PeripheryBus_1
module PeripheryBus_1( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63508.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63509.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63510.4]
  input         auto_coupler_to_bootrom_fragmenter_out_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  output        auto_coupler_to_bootrom_fragmenter_out_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  output [2:0]  auto_coupler_to_bootrom_fragmenter_out_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  output [2:0]  auto_coupler_to_bootrom_fragmenter_out_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  output [1:0]  auto_coupler_to_bootrom_fragmenter_out_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  output [9:0]  auto_coupler_to_bootrom_fragmenter_out_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  output [16:0] auto_coupler_to_bootrom_fragmenter_out_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  output [3:0]  auto_coupler_to_bootrom_fragmenter_out_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  output        auto_coupler_to_bootrom_fragmenter_out_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  output        auto_coupler_to_bootrom_fragmenter_out_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  input         auto_coupler_to_bootrom_fragmenter_out_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  input  [1:0]  auto_coupler_to_bootrom_fragmenter_out_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  input  [9:0]  auto_coupler_to_bootrom_fragmenter_out_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  input  [31:0] auto_coupler_to_bootrom_fragmenter_out_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  input         auto_coupler_to_debug_fragmenter_out_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  output        auto_coupler_to_debug_fragmenter_out_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  output [2:0]  auto_coupler_to_debug_fragmenter_out_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  output [2:0]  auto_coupler_to_debug_fragmenter_out_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  output [1:0]  auto_coupler_to_debug_fragmenter_out_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  output [9:0]  auto_coupler_to_debug_fragmenter_out_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  output [11:0] auto_coupler_to_debug_fragmenter_out_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  output [3:0]  auto_coupler_to_debug_fragmenter_out_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  output [31:0] auto_coupler_to_debug_fragmenter_out_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  output        auto_coupler_to_debug_fragmenter_out_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  output        auto_coupler_to_debug_fragmenter_out_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  input         auto_coupler_to_debug_fragmenter_out_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  input  [2:0]  auto_coupler_to_debug_fragmenter_out_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  input  [1:0]  auto_coupler_to_debug_fragmenter_out_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  input  [9:0]  auto_coupler_to_debug_fragmenter_out_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  input  [31:0] auto_coupler_to_debug_fragmenter_out_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  input         auto_coupler_to_clint_fragmenter_out_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  output        auto_coupler_to_clint_fragmenter_out_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  output [2:0]  auto_coupler_to_clint_fragmenter_out_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  output [2:0]  auto_coupler_to_clint_fragmenter_out_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  output [1:0]  auto_coupler_to_clint_fragmenter_out_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  output [9:0]  auto_coupler_to_clint_fragmenter_out_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  output [25:0] auto_coupler_to_clint_fragmenter_out_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  output [3:0]  auto_coupler_to_clint_fragmenter_out_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  output [31:0] auto_coupler_to_clint_fragmenter_out_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  output        auto_coupler_to_clint_fragmenter_out_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  output        auto_coupler_to_clint_fragmenter_out_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  input         auto_coupler_to_clint_fragmenter_out_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  input  [2:0]  auto_coupler_to_clint_fragmenter_out_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  input  [1:0]  auto_coupler_to_clint_fragmenter_out_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  input  [9:0]  auto_coupler_to_clint_fragmenter_out_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  input  [31:0] auto_coupler_to_clint_fragmenter_out_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  input         auto_coupler_to_plic_fragmenter_out_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  output        auto_coupler_to_plic_fragmenter_out_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  output [2:0]  auto_coupler_to_plic_fragmenter_out_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  output [2:0]  auto_coupler_to_plic_fragmenter_out_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  output [1:0]  auto_coupler_to_plic_fragmenter_out_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  output [9:0]  auto_coupler_to_plic_fragmenter_out_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  output [27:0] auto_coupler_to_plic_fragmenter_out_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  output [3:0]  auto_coupler_to_plic_fragmenter_out_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  output [31:0] auto_coupler_to_plic_fragmenter_out_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  output        auto_coupler_to_plic_fragmenter_out_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  output        auto_coupler_to_plic_fragmenter_out_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  input         auto_coupler_to_plic_fragmenter_out_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  input  [2:0]  auto_coupler_to_plic_fragmenter_out_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  input  [1:0]  auto_coupler_to_plic_fragmenter_out_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  input  [9:0]  auto_coupler_to_plic_fragmenter_out_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  input  [31:0] auto_coupler_to_plic_fragmenter_out_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  output        auto_bus_xing_in_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  input         auto_bus_xing_in_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  input  [2:0]  auto_bus_xing_in_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  input  [2:0]  auto_bus_xing_in_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  input  [3:0]  auto_bus_xing_in_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  input  [4:0]  auto_bus_xing_in_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  input  [27:0] auto_bus_xing_in_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  input  [3:0]  auto_bus_xing_in_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  input  [31:0] auto_bus_xing_in_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  input         auto_bus_xing_in_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  input         auto_bus_xing_in_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  output        auto_bus_xing_in_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  output [2:0]  auto_bus_xing_in_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  output [1:0]  auto_bus_xing_in_d_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  output [3:0]  auto_bus_xing_in_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  output [4:0]  auto_bus_xing_in_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  output        auto_bus_xing_in_d_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  output        auto_bus_xing_in_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  output [31:0] auto_bus_xing_in_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
  output        auto_bus_xing_in_d_bits_corrupt // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63511.4]
);
  wire  fixer_clock; // @[PeripheryBus.scala 34:33:freechips.rocketchip.system.DefaultRV32Config.fir@63516.4]
  wire  fixer_reset; // @[PeripheryBus.scala 34:33:freechips.rocketchip.system.DefaultRV32Config.fir@63516.4]
  wire  fixer_auto_in_a_ready; // @[PeripheryBus.scala 34:33:freechips.rocketchip.system.DefaultRV32Config.fir@63516.4]
  wire  fixer_auto_in_a_valid; // @[PeripheryBus.scala 34:33:freechips.rocketchip.system.DefaultRV32Config.fir@63516.4]
  wire [2:0] fixer_auto_in_a_bits_opcode; // @[PeripheryBus.scala 34:33:freechips.rocketchip.system.DefaultRV32Config.fir@63516.4]
  wire [2:0] fixer_auto_in_a_bits_param; // @[PeripheryBus.scala 34:33:freechips.rocketchip.system.DefaultRV32Config.fir@63516.4]
  wire [3:0] fixer_auto_in_a_bits_size; // @[PeripheryBus.scala 34:33:freechips.rocketchip.system.DefaultRV32Config.fir@63516.4]
  wire [4:0] fixer_auto_in_a_bits_source; // @[PeripheryBus.scala 34:33:freechips.rocketchip.system.DefaultRV32Config.fir@63516.4]
  wire [27:0] fixer_auto_in_a_bits_address; // @[PeripheryBus.scala 34:33:freechips.rocketchip.system.DefaultRV32Config.fir@63516.4]
  wire [3:0] fixer_auto_in_a_bits_mask; // @[PeripheryBus.scala 34:33:freechips.rocketchip.system.DefaultRV32Config.fir@63516.4]
  wire [31:0] fixer_auto_in_a_bits_data; // @[PeripheryBus.scala 34:33:freechips.rocketchip.system.DefaultRV32Config.fir@63516.4]
  wire  fixer_auto_in_a_bits_corrupt; // @[PeripheryBus.scala 34:33:freechips.rocketchip.system.DefaultRV32Config.fir@63516.4]
  wire  fixer_auto_in_d_ready; // @[PeripheryBus.scala 34:33:freechips.rocketchip.system.DefaultRV32Config.fir@63516.4]
  wire  fixer_auto_in_d_valid; // @[PeripheryBus.scala 34:33:freechips.rocketchip.system.DefaultRV32Config.fir@63516.4]
  wire [2:0] fixer_auto_in_d_bits_opcode; // @[PeripheryBus.scala 34:33:freechips.rocketchip.system.DefaultRV32Config.fir@63516.4]
  wire [1:0] fixer_auto_in_d_bits_param; // @[PeripheryBus.scala 34:33:freechips.rocketchip.system.DefaultRV32Config.fir@63516.4]
  wire [3:0] fixer_auto_in_d_bits_size; // @[PeripheryBus.scala 34:33:freechips.rocketchip.system.DefaultRV32Config.fir@63516.4]
  wire [4:0] fixer_auto_in_d_bits_source; // @[PeripheryBus.scala 34:33:freechips.rocketchip.system.DefaultRV32Config.fir@63516.4]
  wire  fixer_auto_in_d_bits_sink; // @[PeripheryBus.scala 34:33:freechips.rocketchip.system.DefaultRV32Config.fir@63516.4]
  wire  fixer_auto_in_d_bits_denied; // @[PeripheryBus.scala 34:33:freechips.rocketchip.system.DefaultRV32Config.fir@63516.4]
  wire [31:0] fixer_auto_in_d_bits_data; // @[PeripheryBus.scala 34:33:freechips.rocketchip.system.DefaultRV32Config.fir@63516.4]
  wire  fixer_auto_in_d_bits_corrupt; // @[PeripheryBus.scala 34:33:freechips.rocketchip.system.DefaultRV32Config.fir@63516.4]
  wire  fixer_auto_out_a_ready; // @[PeripheryBus.scala 34:33:freechips.rocketchip.system.DefaultRV32Config.fir@63516.4]
  wire  fixer_auto_out_a_valid; // @[PeripheryBus.scala 34:33:freechips.rocketchip.system.DefaultRV32Config.fir@63516.4]
  wire [2:0] fixer_auto_out_a_bits_opcode; // @[PeripheryBus.scala 34:33:freechips.rocketchip.system.DefaultRV32Config.fir@63516.4]
  wire [2:0] fixer_auto_out_a_bits_param; // @[PeripheryBus.scala 34:33:freechips.rocketchip.system.DefaultRV32Config.fir@63516.4]
  wire [3:0] fixer_auto_out_a_bits_size; // @[PeripheryBus.scala 34:33:freechips.rocketchip.system.DefaultRV32Config.fir@63516.4]
  wire [4:0] fixer_auto_out_a_bits_source; // @[PeripheryBus.scala 34:33:freechips.rocketchip.system.DefaultRV32Config.fir@63516.4]
  wire [27:0] fixer_auto_out_a_bits_address; // @[PeripheryBus.scala 34:33:freechips.rocketchip.system.DefaultRV32Config.fir@63516.4]
  wire [3:0] fixer_auto_out_a_bits_mask; // @[PeripheryBus.scala 34:33:freechips.rocketchip.system.DefaultRV32Config.fir@63516.4]
  wire [31:0] fixer_auto_out_a_bits_data; // @[PeripheryBus.scala 34:33:freechips.rocketchip.system.DefaultRV32Config.fir@63516.4]
  wire  fixer_auto_out_a_bits_corrupt; // @[PeripheryBus.scala 34:33:freechips.rocketchip.system.DefaultRV32Config.fir@63516.4]
  wire  fixer_auto_out_d_ready; // @[PeripheryBus.scala 34:33:freechips.rocketchip.system.DefaultRV32Config.fir@63516.4]
  wire  fixer_auto_out_d_valid; // @[PeripheryBus.scala 34:33:freechips.rocketchip.system.DefaultRV32Config.fir@63516.4]
  wire [2:0] fixer_auto_out_d_bits_opcode; // @[PeripheryBus.scala 34:33:freechips.rocketchip.system.DefaultRV32Config.fir@63516.4]
  wire [1:0] fixer_auto_out_d_bits_param; // @[PeripheryBus.scala 34:33:freechips.rocketchip.system.DefaultRV32Config.fir@63516.4]
  wire [3:0] fixer_auto_out_d_bits_size; // @[PeripheryBus.scala 34:33:freechips.rocketchip.system.DefaultRV32Config.fir@63516.4]
  wire [4:0] fixer_auto_out_d_bits_source; // @[PeripheryBus.scala 34:33:freechips.rocketchip.system.DefaultRV32Config.fir@63516.4]
  wire  fixer_auto_out_d_bits_sink; // @[PeripheryBus.scala 34:33:freechips.rocketchip.system.DefaultRV32Config.fir@63516.4]
  wire  fixer_auto_out_d_bits_denied; // @[PeripheryBus.scala 34:33:freechips.rocketchip.system.DefaultRV32Config.fir@63516.4]
  wire [31:0] fixer_auto_out_d_bits_data; // @[PeripheryBus.scala 34:33:freechips.rocketchip.system.DefaultRV32Config.fir@63516.4]
  wire  fixer_auto_out_d_bits_corrupt; // @[PeripheryBus.scala 34:33:freechips.rocketchip.system.DefaultRV32Config.fir@63516.4]
  wire  in_xbar_clock; // @[PeripheryBus.scala 36:29:freechips.rocketchip.system.DefaultRV32Config.fir@63522.4]
  wire  in_xbar_reset; // @[PeripheryBus.scala 36:29:freechips.rocketchip.system.DefaultRV32Config.fir@63522.4]
  wire  in_xbar_auto_in_a_ready; // @[PeripheryBus.scala 36:29:freechips.rocketchip.system.DefaultRV32Config.fir@63522.4]
  wire  in_xbar_auto_in_a_valid; // @[PeripheryBus.scala 36:29:freechips.rocketchip.system.DefaultRV32Config.fir@63522.4]
  wire [2:0] in_xbar_auto_in_a_bits_opcode; // @[PeripheryBus.scala 36:29:freechips.rocketchip.system.DefaultRV32Config.fir@63522.4]
  wire [2:0] in_xbar_auto_in_a_bits_param; // @[PeripheryBus.scala 36:29:freechips.rocketchip.system.DefaultRV32Config.fir@63522.4]
  wire [3:0] in_xbar_auto_in_a_bits_size; // @[PeripheryBus.scala 36:29:freechips.rocketchip.system.DefaultRV32Config.fir@63522.4]
  wire [4:0] in_xbar_auto_in_a_bits_source; // @[PeripheryBus.scala 36:29:freechips.rocketchip.system.DefaultRV32Config.fir@63522.4]
  wire [27:0] in_xbar_auto_in_a_bits_address; // @[PeripheryBus.scala 36:29:freechips.rocketchip.system.DefaultRV32Config.fir@63522.4]
  wire [3:0] in_xbar_auto_in_a_bits_mask; // @[PeripheryBus.scala 36:29:freechips.rocketchip.system.DefaultRV32Config.fir@63522.4]
  wire [31:0] in_xbar_auto_in_a_bits_data; // @[PeripheryBus.scala 36:29:freechips.rocketchip.system.DefaultRV32Config.fir@63522.4]
  wire  in_xbar_auto_in_a_bits_corrupt; // @[PeripheryBus.scala 36:29:freechips.rocketchip.system.DefaultRV32Config.fir@63522.4]
  wire  in_xbar_auto_in_d_ready; // @[PeripheryBus.scala 36:29:freechips.rocketchip.system.DefaultRV32Config.fir@63522.4]
  wire  in_xbar_auto_in_d_valid; // @[PeripheryBus.scala 36:29:freechips.rocketchip.system.DefaultRV32Config.fir@63522.4]
  wire [2:0] in_xbar_auto_in_d_bits_opcode; // @[PeripheryBus.scala 36:29:freechips.rocketchip.system.DefaultRV32Config.fir@63522.4]
  wire [1:0] in_xbar_auto_in_d_bits_param; // @[PeripheryBus.scala 36:29:freechips.rocketchip.system.DefaultRV32Config.fir@63522.4]
  wire [3:0] in_xbar_auto_in_d_bits_size; // @[PeripheryBus.scala 36:29:freechips.rocketchip.system.DefaultRV32Config.fir@63522.4]
  wire [4:0] in_xbar_auto_in_d_bits_source; // @[PeripheryBus.scala 36:29:freechips.rocketchip.system.DefaultRV32Config.fir@63522.4]
  wire  in_xbar_auto_in_d_bits_sink; // @[PeripheryBus.scala 36:29:freechips.rocketchip.system.DefaultRV32Config.fir@63522.4]
  wire  in_xbar_auto_in_d_bits_denied; // @[PeripheryBus.scala 36:29:freechips.rocketchip.system.DefaultRV32Config.fir@63522.4]
  wire [31:0] in_xbar_auto_in_d_bits_data; // @[PeripheryBus.scala 36:29:freechips.rocketchip.system.DefaultRV32Config.fir@63522.4]
  wire  in_xbar_auto_in_d_bits_corrupt; // @[PeripheryBus.scala 36:29:freechips.rocketchip.system.DefaultRV32Config.fir@63522.4]
  wire  in_xbar_auto_out_a_ready; // @[PeripheryBus.scala 36:29:freechips.rocketchip.system.DefaultRV32Config.fir@63522.4]
  wire  in_xbar_auto_out_a_valid; // @[PeripheryBus.scala 36:29:freechips.rocketchip.system.DefaultRV32Config.fir@63522.4]
  wire [2:0] in_xbar_auto_out_a_bits_opcode; // @[PeripheryBus.scala 36:29:freechips.rocketchip.system.DefaultRV32Config.fir@63522.4]
  wire [2:0] in_xbar_auto_out_a_bits_param; // @[PeripheryBus.scala 36:29:freechips.rocketchip.system.DefaultRV32Config.fir@63522.4]
  wire [3:0] in_xbar_auto_out_a_bits_size; // @[PeripheryBus.scala 36:29:freechips.rocketchip.system.DefaultRV32Config.fir@63522.4]
  wire [4:0] in_xbar_auto_out_a_bits_source; // @[PeripheryBus.scala 36:29:freechips.rocketchip.system.DefaultRV32Config.fir@63522.4]
  wire [27:0] in_xbar_auto_out_a_bits_address; // @[PeripheryBus.scala 36:29:freechips.rocketchip.system.DefaultRV32Config.fir@63522.4]
  wire [3:0] in_xbar_auto_out_a_bits_mask; // @[PeripheryBus.scala 36:29:freechips.rocketchip.system.DefaultRV32Config.fir@63522.4]
  wire [31:0] in_xbar_auto_out_a_bits_data; // @[PeripheryBus.scala 36:29:freechips.rocketchip.system.DefaultRV32Config.fir@63522.4]
  wire  in_xbar_auto_out_a_bits_corrupt; // @[PeripheryBus.scala 36:29:freechips.rocketchip.system.DefaultRV32Config.fir@63522.4]
  wire  in_xbar_auto_out_d_ready; // @[PeripheryBus.scala 36:29:freechips.rocketchip.system.DefaultRV32Config.fir@63522.4]
  wire  in_xbar_auto_out_d_valid; // @[PeripheryBus.scala 36:29:freechips.rocketchip.system.DefaultRV32Config.fir@63522.4]
  wire [2:0] in_xbar_auto_out_d_bits_opcode; // @[PeripheryBus.scala 36:29:freechips.rocketchip.system.DefaultRV32Config.fir@63522.4]
  wire [1:0] in_xbar_auto_out_d_bits_param; // @[PeripheryBus.scala 36:29:freechips.rocketchip.system.DefaultRV32Config.fir@63522.4]
  wire [3:0] in_xbar_auto_out_d_bits_size; // @[PeripheryBus.scala 36:29:freechips.rocketchip.system.DefaultRV32Config.fir@63522.4]
  wire [4:0] in_xbar_auto_out_d_bits_source; // @[PeripheryBus.scala 36:29:freechips.rocketchip.system.DefaultRV32Config.fir@63522.4]
  wire  in_xbar_auto_out_d_bits_sink; // @[PeripheryBus.scala 36:29:freechips.rocketchip.system.DefaultRV32Config.fir@63522.4]
  wire  in_xbar_auto_out_d_bits_denied; // @[PeripheryBus.scala 36:29:freechips.rocketchip.system.DefaultRV32Config.fir@63522.4]
  wire [31:0] in_xbar_auto_out_d_bits_data; // @[PeripheryBus.scala 36:29:freechips.rocketchip.system.DefaultRV32Config.fir@63522.4]
  wire  in_xbar_auto_out_d_bits_corrupt; // @[PeripheryBus.scala 36:29:freechips.rocketchip.system.DefaultRV32Config.fir@63522.4]
  wire  out_xbar_clock; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire  out_xbar_reset; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire  out_xbar_auto_in_a_ready; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire  out_xbar_auto_in_a_valid; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire [2:0] out_xbar_auto_in_a_bits_opcode; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire [2:0] out_xbar_auto_in_a_bits_param; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire [3:0] out_xbar_auto_in_a_bits_size; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire [4:0] out_xbar_auto_in_a_bits_source; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire [27:0] out_xbar_auto_in_a_bits_address; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire [3:0] out_xbar_auto_in_a_bits_mask; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire [31:0] out_xbar_auto_in_a_bits_data; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire  out_xbar_auto_in_a_bits_corrupt; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire  out_xbar_auto_in_d_ready; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire  out_xbar_auto_in_d_valid; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire [2:0] out_xbar_auto_in_d_bits_opcode; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire [1:0] out_xbar_auto_in_d_bits_param; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire [3:0] out_xbar_auto_in_d_bits_size; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire [4:0] out_xbar_auto_in_d_bits_source; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire  out_xbar_auto_in_d_bits_sink; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire  out_xbar_auto_in_d_bits_denied; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire [31:0] out_xbar_auto_in_d_bits_data; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire  out_xbar_auto_in_d_bits_corrupt; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire  out_xbar_auto_out_4_a_ready; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire  out_xbar_auto_out_4_a_valid; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire [2:0] out_xbar_auto_out_4_a_bits_opcode; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire [2:0] out_xbar_auto_out_4_a_bits_param; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire [2:0] out_xbar_auto_out_4_a_bits_size; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire [4:0] out_xbar_auto_out_4_a_bits_source; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire [16:0] out_xbar_auto_out_4_a_bits_address; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire [3:0] out_xbar_auto_out_4_a_bits_mask; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire  out_xbar_auto_out_4_a_bits_corrupt; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire  out_xbar_auto_out_4_d_ready; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire  out_xbar_auto_out_4_d_valid; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire [2:0] out_xbar_auto_out_4_d_bits_size; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire [4:0] out_xbar_auto_out_4_d_bits_source; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire [31:0] out_xbar_auto_out_4_d_bits_data; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire  out_xbar_auto_out_3_a_ready; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire  out_xbar_auto_out_3_a_valid; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire [2:0] out_xbar_auto_out_3_a_bits_opcode; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire [2:0] out_xbar_auto_out_3_a_bits_param; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire [2:0] out_xbar_auto_out_3_a_bits_size; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire [4:0] out_xbar_auto_out_3_a_bits_source; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire [11:0] out_xbar_auto_out_3_a_bits_address; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire [3:0] out_xbar_auto_out_3_a_bits_mask; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire [31:0] out_xbar_auto_out_3_a_bits_data; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire  out_xbar_auto_out_3_a_bits_corrupt; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire  out_xbar_auto_out_3_d_ready; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire  out_xbar_auto_out_3_d_valid; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire [2:0] out_xbar_auto_out_3_d_bits_opcode; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire [2:0] out_xbar_auto_out_3_d_bits_size; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire [4:0] out_xbar_auto_out_3_d_bits_source; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire [31:0] out_xbar_auto_out_3_d_bits_data; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire  out_xbar_auto_out_2_a_ready; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire  out_xbar_auto_out_2_a_valid; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire [2:0] out_xbar_auto_out_2_a_bits_opcode; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire [2:0] out_xbar_auto_out_2_a_bits_param; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire [2:0] out_xbar_auto_out_2_a_bits_size; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire [4:0] out_xbar_auto_out_2_a_bits_source; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire [25:0] out_xbar_auto_out_2_a_bits_address; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire [3:0] out_xbar_auto_out_2_a_bits_mask; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire [31:0] out_xbar_auto_out_2_a_bits_data; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire  out_xbar_auto_out_2_a_bits_corrupt; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire  out_xbar_auto_out_2_d_ready; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire  out_xbar_auto_out_2_d_valid; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire [2:0] out_xbar_auto_out_2_d_bits_opcode; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire [2:0] out_xbar_auto_out_2_d_bits_size; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire [4:0] out_xbar_auto_out_2_d_bits_source; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire [31:0] out_xbar_auto_out_2_d_bits_data; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire  out_xbar_auto_out_1_a_ready; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire  out_xbar_auto_out_1_a_valid; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire [2:0] out_xbar_auto_out_1_a_bits_opcode; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire [2:0] out_xbar_auto_out_1_a_bits_param; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire [2:0] out_xbar_auto_out_1_a_bits_size; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire [4:0] out_xbar_auto_out_1_a_bits_source; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire [27:0] out_xbar_auto_out_1_a_bits_address; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire [3:0] out_xbar_auto_out_1_a_bits_mask; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire [31:0] out_xbar_auto_out_1_a_bits_data; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire  out_xbar_auto_out_1_a_bits_corrupt; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire  out_xbar_auto_out_1_d_ready; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire  out_xbar_auto_out_1_d_valid; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire [2:0] out_xbar_auto_out_1_d_bits_opcode; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire [2:0] out_xbar_auto_out_1_d_bits_size; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire [4:0] out_xbar_auto_out_1_d_bits_source; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire [31:0] out_xbar_auto_out_1_d_bits_data; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire  out_xbar_auto_out_0_a_ready; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire  out_xbar_auto_out_0_a_valid; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire [2:0] out_xbar_auto_out_0_a_bits_opcode; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire [2:0] out_xbar_auto_out_0_a_bits_param; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire [3:0] out_xbar_auto_out_0_a_bits_size; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire [4:0] out_xbar_auto_out_0_a_bits_source; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire [13:0] out_xbar_auto_out_0_a_bits_address; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire [3:0] out_xbar_auto_out_0_a_bits_mask; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire  out_xbar_auto_out_0_a_bits_corrupt; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire  out_xbar_auto_out_0_d_ready; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire  out_xbar_auto_out_0_d_valid; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire [2:0] out_xbar_auto_out_0_d_bits_opcode; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire [1:0] out_xbar_auto_out_0_d_bits_param; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire [3:0] out_xbar_auto_out_0_d_bits_size; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire [4:0] out_xbar_auto_out_0_d_bits_source; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire  out_xbar_auto_out_0_d_bits_sink; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire  out_xbar_auto_out_0_d_bits_denied; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire [31:0] out_xbar_auto_out_0_d_bits_data; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire  out_xbar_auto_out_0_d_bits_corrupt; // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
  wire  buffer_clock; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63534.4]
  wire  buffer_reset; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63534.4]
  wire  buffer_auto_in_a_ready; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63534.4]
  wire  buffer_auto_in_a_valid; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63534.4]
  wire [2:0] buffer_auto_in_a_bits_opcode; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63534.4]
  wire [2:0] buffer_auto_in_a_bits_param; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63534.4]
  wire [3:0] buffer_auto_in_a_bits_size; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63534.4]
  wire [4:0] buffer_auto_in_a_bits_source; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63534.4]
  wire [27:0] buffer_auto_in_a_bits_address; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63534.4]
  wire [3:0] buffer_auto_in_a_bits_mask; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63534.4]
  wire [31:0] buffer_auto_in_a_bits_data; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63534.4]
  wire  buffer_auto_in_a_bits_corrupt; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63534.4]
  wire  buffer_auto_in_d_ready; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63534.4]
  wire  buffer_auto_in_d_valid; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63534.4]
  wire [2:0] buffer_auto_in_d_bits_opcode; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63534.4]
  wire [1:0] buffer_auto_in_d_bits_param; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63534.4]
  wire [3:0] buffer_auto_in_d_bits_size; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63534.4]
  wire [4:0] buffer_auto_in_d_bits_source; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63534.4]
  wire  buffer_auto_in_d_bits_sink; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63534.4]
  wire  buffer_auto_in_d_bits_denied; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63534.4]
  wire [31:0] buffer_auto_in_d_bits_data; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63534.4]
  wire  buffer_auto_in_d_bits_corrupt; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63534.4]
  wire  buffer_auto_out_a_ready; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63534.4]
  wire  buffer_auto_out_a_valid; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63534.4]
  wire [2:0] buffer_auto_out_a_bits_opcode; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63534.4]
  wire [2:0] buffer_auto_out_a_bits_param; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63534.4]
  wire [3:0] buffer_auto_out_a_bits_size; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63534.4]
  wire [4:0] buffer_auto_out_a_bits_source; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63534.4]
  wire [27:0] buffer_auto_out_a_bits_address; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63534.4]
  wire [3:0] buffer_auto_out_a_bits_mask; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63534.4]
  wire [31:0] buffer_auto_out_a_bits_data; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63534.4]
  wire  buffer_auto_out_a_bits_corrupt; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63534.4]
  wire  buffer_auto_out_d_ready; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63534.4]
  wire  buffer_auto_out_d_valid; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63534.4]
  wire [2:0] buffer_auto_out_d_bits_opcode; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63534.4]
  wire [1:0] buffer_auto_out_d_bits_param; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63534.4]
  wire [3:0] buffer_auto_out_d_bits_size; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63534.4]
  wire [4:0] buffer_auto_out_d_bits_source; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63534.4]
  wire  buffer_auto_out_d_bits_sink; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63534.4]
  wire  buffer_auto_out_d_bits_denied; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63534.4]
  wire [31:0] buffer_auto_out_d_bits_data; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63534.4]
  wire  buffer_auto_out_d_bits_corrupt; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63534.4]
  wire  atomics_clock; // @[AtomicAutomata.scala 282:29:freechips.rocketchip.system.DefaultRV32Config.fir@63540.4]
  wire  atomics_reset; // @[AtomicAutomata.scala 282:29:freechips.rocketchip.system.DefaultRV32Config.fir@63540.4]
  wire  atomics_auto_in_a_ready; // @[AtomicAutomata.scala 282:29:freechips.rocketchip.system.DefaultRV32Config.fir@63540.4]
  wire  atomics_auto_in_a_valid; // @[AtomicAutomata.scala 282:29:freechips.rocketchip.system.DefaultRV32Config.fir@63540.4]
  wire [2:0] atomics_auto_in_a_bits_opcode; // @[AtomicAutomata.scala 282:29:freechips.rocketchip.system.DefaultRV32Config.fir@63540.4]
  wire [2:0] atomics_auto_in_a_bits_param; // @[AtomicAutomata.scala 282:29:freechips.rocketchip.system.DefaultRV32Config.fir@63540.4]
  wire [3:0] atomics_auto_in_a_bits_size; // @[AtomicAutomata.scala 282:29:freechips.rocketchip.system.DefaultRV32Config.fir@63540.4]
  wire [4:0] atomics_auto_in_a_bits_source; // @[AtomicAutomata.scala 282:29:freechips.rocketchip.system.DefaultRV32Config.fir@63540.4]
  wire [27:0] atomics_auto_in_a_bits_address; // @[AtomicAutomata.scala 282:29:freechips.rocketchip.system.DefaultRV32Config.fir@63540.4]
  wire [3:0] atomics_auto_in_a_bits_mask; // @[AtomicAutomata.scala 282:29:freechips.rocketchip.system.DefaultRV32Config.fir@63540.4]
  wire [31:0] atomics_auto_in_a_bits_data; // @[AtomicAutomata.scala 282:29:freechips.rocketchip.system.DefaultRV32Config.fir@63540.4]
  wire  atomics_auto_in_a_bits_corrupt; // @[AtomicAutomata.scala 282:29:freechips.rocketchip.system.DefaultRV32Config.fir@63540.4]
  wire  atomics_auto_in_d_ready; // @[AtomicAutomata.scala 282:29:freechips.rocketchip.system.DefaultRV32Config.fir@63540.4]
  wire  atomics_auto_in_d_valid; // @[AtomicAutomata.scala 282:29:freechips.rocketchip.system.DefaultRV32Config.fir@63540.4]
  wire [2:0] atomics_auto_in_d_bits_opcode; // @[AtomicAutomata.scala 282:29:freechips.rocketchip.system.DefaultRV32Config.fir@63540.4]
  wire [1:0] atomics_auto_in_d_bits_param; // @[AtomicAutomata.scala 282:29:freechips.rocketchip.system.DefaultRV32Config.fir@63540.4]
  wire [3:0] atomics_auto_in_d_bits_size; // @[AtomicAutomata.scala 282:29:freechips.rocketchip.system.DefaultRV32Config.fir@63540.4]
  wire [4:0] atomics_auto_in_d_bits_source; // @[AtomicAutomata.scala 282:29:freechips.rocketchip.system.DefaultRV32Config.fir@63540.4]
  wire  atomics_auto_in_d_bits_sink; // @[AtomicAutomata.scala 282:29:freechips.rocketchip.system.DefaultRV32Config.fir@63540.4]
  wire  atomics_auto_in_d_bits_denied; // @[AtomicAutomata.scala 282:29:freechips.rocketchip.system.DefaultRV32Config.fir@63540.4]
  wire [31:0] atomics_auto_in_d_bits_data; // @[AtomicAutomata.scala 282:29:freechips.rocketchip.system.DefaultRV32Config.fir@63540.4]
  wire  atomics_auto_in_d_bits_corrupt; // @[AtomicAutomata.scala 282:29:freechips.rocketchip.system.DefaultRV32Config.fir@63540.4]
  wire  atomics_auto_out_a_ready; // @[AtomicAutomata.scala 282:29:freechips.rocketchip.system.DefaultRV32Config.fir@63540.4]
  wire  atomics_auto_out_a_valid; // @[AtomicAutomata.scala 282:29:freechips.rocketchip.system.DefaultRV32Config.fir@63540.4]
  wire [2:0] atomics_auto_out_a_bits_opcode; // @[AtomicAutomata.scala 282:29:freechips.rocketchip.system.DefaultRV32Config.fir@63540.4]
  wire [2:0] atomics_auto_out_a_bits_param; // @[AtomicAutomata.scala 282:29:freechips.rocketchip.system.DefaultRV32Config.fir@63540.4]
  wire [3:0] atomics_auto_out_a_bits_size; // @[AtomicAutomata.scala 282:29:freechips.rocketchip.system.DefaultRV32Config.fir@63540.4]
  wire [4:0] atomics_auto_out_a_bits_source; // @[AtomicAutomata.scala 282:29:freechips.rocketchip.system.DefaultRV32Config.fir@63540.4]
  wire [27:0] atomics_auto_out_a_bits_address; // @[AtomicAutomata.scala 282:29:freechips.rocketchip.system.DefaultRV32Config.fir@63540.4]
  wire [3:0] atomics_auto_out_a_bits_mask; // @[AtomicAutomata.scala 282:29:freechips.rocketchip.system.DefaultRV32Config.fir@63540.4]
  wire [31:0] atomics_auto_out_a_bits_data; // @[AtomicAutomata.scala 282:29:freechips.rocketchip.system.DefaultRV32Config.fir@63540.4]
  wire  atomics_auto_out_a_bits_corrupt; // @[AtomicAutomata.scala 282:29:freechips.rocketchip.system.DefaultRV32Config.fir@63540.4]
  wire  atomics_auto_out_d_ready; // @[AtomicAutomata.scala 282:29:freechips.rocketchip.system.DefaultRV32Config.fir@63540.4]
  wire  atomics_auto_out_d_valid; // @[AtomicAutomata.scala 282:29:freechips.rocketchip.system.DefaultRV32Config.fir@63540.4]
  wire [2:0] atomics_auto_out_d_bits_opcode; // @[AtomicAutomata.scala 282:29:freechips.rocketchip.system.DefaultRV32Config.fir@63540.4]
  wire [1:0] atomics_auto_out_d_bits_param; // @[AtomicAutomata.scala 282:29:freechips.rocketchip.system.DefaultRV32Config.fir@63540.4]
  wire [3:0] atomics_auto_out_d_bits_size; // @[AtomicAutomata.scala 282:29:freechips.rocketchip.system.DefaultRV32Config.fir@63540.4]
  wire [4:0] atomics_auto_out_d_bits_source; // @[AtomicAutomata.scala 282:29:freechips.rocketchip.system.DefaultRV32Config.fir@63540.4]
  wire  atomics_auto_out_d_bits_sink; // @[AtomicAutomata.scala 282:29:freechips.rocketchip.system.DefaultRV32Config.fir@63540.4]
  wire  atomics_auto_out_d_bits_denied; // @[AtomicAutomata.scala 282:29:freechips.rocketchip.system.DefaultRV32Config.fir@63540.4]
  wire [31:0] atomics_auto_out_d_bits_data; // @[AtomicAutomata.scala 282:29:freechips.rocketchip.system.DefaultRV32Config.fir@63540.4]
  wire  atomics_auto_out_d_bits_corrupt; // @[AtomicAutomata.scala 282:29:freechips.rocketchip.system.DefaultRV32Config.fir@63540.4]
  wire  wrapped_error_device_clock; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63546.4]
  wire  wrapped_error_device_reset; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63546.4]
  wire  wrapped_error_device_auto_buffer_in_a_ready; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63546.4]
  wire  wrapped_error_device_auto_buffer_in_a_valid; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63546.4]
  wire [2:0] wrapped_error_device_auto_buffer_in_a_bits_opcode; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63546.4]
  wire [2:0] wrapped_error_device_auto_buffer_in_a_bits_param; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63546.4]
  wire [3:0] wrapped_error_device_auto_buffer_in_a_bits_size; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63546.4]
  wire [4:0] wrapped_error_device_auto_buffer_in_a_bits_source; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63546.4]
  wire [13:0] wrapped_error_device_auto_buffer_in_a_bits_address; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63546.4]
  wire [3:0] wrapped_error_device_auto_buffer_in_a_bits_mask; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63546.4]
  wire  wrapped_error_device_auto_buffer_in_a_bits_corrupt; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63546.4]
  wire  wrapped_error_device_auto_buffer_in_d_ready; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63546.4]
  wire  wrapped_error_device_auto_buffer_in_d_valid; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63546.4]
  wire [2:0] wrapped_error_device_auto_buffer_in_d_bits_opcode; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63546.4]
  wire [1:0] wrapped_error_device_auto_buffer_in_d_bits_param; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63546.4]
  wire [3:0] wrapped_error_device_auto_buffer_in_d_bits_size; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63546.4]
  wire [4:0] wrapped_error_device_auto_buffer_in_d_bits_source; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63546.4]
  wire  wrapped_error_device_auto_buffer_in_d_bits_sink; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63546.4]
  wire  wrapped_error_device_auto_buffer_in_d_bits_denied; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63546.4]
  wire [31:0] wrapped_error_device_auto_buffer_in_d_bits_data; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63546.4]
  wire  wrapped_error_device_auto_buffer_in_d_bits_corrupt; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63546.4]
  wire  coupler_to_plic_clock; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63552.4]
  wire  coupler_to_plic_reset; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63552.4]
  wire  coupler_to_plic_auto_fragmenter_in_a_ready; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63552.4]
  wire  coupler_to_plic_auto_fragmenter_in_a_valid; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63552.4]
  wire [2:0] coupler_to_plic_auto_fragmenter_in_a_bits_opcode; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63552.4]
  wire [2:0] coupler_to_plic_auto_fragmenter_in_a_bits_param; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63552.4]
  wire [2:0] coupler_to_plic_auto_fragmenter_in_a_bits_size; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63552.4]
  wire [4:0] coupler_to_plic_auto_fragmenter_in_a_bits_source; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63552.4]
  wire [27:0] coupler_to_plic_auto_fragmenter_in_a_bits_address; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63552.4]
  wire [3:0] coupler_to_plic_auto_fragmenter_in_a_bits_mask; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63552.4]
  wire [31:0] coupler_to_plic_auto_fragmenter_in_a_bits_data; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63552.4]
  wire  coupler_to_plic_auto_fragmenter_in_a_bits_corrupt; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63552.4]
  wire  coupler_to_plic_auto_fragmenter_in_d_ready; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63552.4]
  wire  coupler_to_plic_auto_fragmenter_in_d_valid; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63552.4]
  wire [2:0] coupler_to_plic_auto_fragmenter_in_d_bits_opcode; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63552.4]
  wire [2:0] coupler_to_plic_auto_fragmenter_in_d_bits_size; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63552.4]
  wire [4:0] coupler_to_plic_auto_fragmenter_in_d_bits_source; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63552.4]
  wire [31:0] coupler_to_plic_auto_fragmenter_in_d_bits_data; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63552.4]
  wire  coupler_to_plic_auto_fragmenter_out_a_ready; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63552.4]
  wire  coupler_to_plic_auto_fragmenter_out_a_valid; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63552.4]
  wire [2:0] coupler_to_plic_auto_fragmenter_out_a_bits_opcode; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63552.4]
  wire [2:0] coupler_to_plic_auto_fragmenter_out_a_bits_param; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63552.4]
  wire [1:0] coupler_to_plic_auto_fragmenter_out_a_bits_size; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63552.4]
  wire [9:0] coupler_to_plic_auto_fragmenter_out_a_bits_source; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63552.4]
  wire [27:0] coupler_to_plic_auto_fragmenter_out_a_bits_address; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63552.4]
  wire [3:0] coupler_to_plic_auto_fragmenter_out_a_bits_mask; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63552.4]
  wire [31:0] coupler_to_plic_auto_fragmenter_out_a_bits_data; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63552.4]
  wire  coupler_to_plic_auto_fragmenter_out_a_bits_corrupt; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63552.4]
  wire  coupler_to_plic_auto_fragmenter_out_d_ready; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63552.4]
  wire  coupler_to_plic_auto_fragmenter_out_d_valid; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63552.4]
  wire [2:0] coupler_to_plic_auto_fragmenter_out_d_bits_opcode; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63552.4]
  wire [1:0] coupler_to_plic_auto_fragmenter_out_d_bits_size; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63552.4]
  wire [9:0] coupler_to_plic_auto_fragmenter_out_d_bits_source; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63552.4]
  wire [31:0] coupler_to_plic_auto_fragmenter_out_d_bits_data; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63552.4]
  wire  coupler_to_clint_clock; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63558.4]
  wire  coupler_to_clint_reset; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63558.4]
  wire  coupler_to_clint_auto_fragmenter_in_a_ready; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63558.4]
  wire  coupler_to_clint_auto_fragmenter_in_a_valid; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63558.4]
  wire [2:0] coupler_to_clint_auto_fragmenter_in_a_bits_opcode; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63558.4]
  wire [2:0] coupler_to_clint_auto_fragmenter_in_a_bits_param; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63558.4]
  wire [2:0] coupler_to_clint_auto_fragmenter_in_a_bits_size; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63558.4]
  wire [4:0] coupler_to_clint_auto_fragmenter_in_a_bits_source; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63558.4]
  wire [25:0] coupler_to_clint_auto_fragmenter_in_a_bits_address; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63558.4]
  wire [3:0] coupler_to_clint_auto_fragmenter_in_a_bits_mask; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63558.4]
  wire [31:0] coupler_to_clint_auto_fragmenter_in_a_bits_data; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63558.4]
  wire  coupler_to_clint_auto_fragmenter_in_a_bits_corrupt; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63558.4]
  wire  coupler_to_clint_auto_fragmenter_in_d_ready; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63558.4]
  wire  coupler_to_clint_auto_fragmenter_in_d_valid; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63558.4]
  wire [2:0] coupler_to_clint_auto_fragmenter_in_d_bits_opcode; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63558.4]
  wire [2:0] coupler_to_clint_auto_fragmenter_in_d_bits_size; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63558.4]
  wire [4:0] coupler_to_clint_auto_fragmenter_in_d_bits_source; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63558.4]
  wire [31:0] coupler_to_clint_auto_fragmenter_in_d_bits_data; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63558.4]
  wire  coupler_to_clint_auto_fragmenter_out_a_ready; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63558.4]
  wire  coupler_to_clint_auto_fragmenter_out_a_valid; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63558.4]
  wire [2:0] coupler_to_clint_auto_fragmenter_out_a_bits_opcode; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63558.4]
  wire [2:0] coupler_to_clint_auto_fragmenter_out_a_bits_param; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63558.4]
  wire [1:0] coupler_to_clint_auto_fragmenter_out_a_bits_size; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63558.4]
  wire [9:0] coupler_to_clint_auto_fragmenter_out_a_bits_source; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63558.4]
  wire [25:0] coupler_to_clint_auto_fragmenter_out_a_bits_address; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63558.4]
  wire [3:0] coupler_to_clint_auto_fragmenter_out_a_bits_mask; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63558.4]
  wire [31:0] coupler_to_clint_auto_fragmenter_out_a_bits_data; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63558.4]
  wire  coupler_to_clint_auto_fragmenter_out_a_bits_corrupt; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63558.4]
  wire  coupler_to_clint_auto_fragmenter_out_d_ready; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63558.4]
  wire  coupler_to_clint_auto_fragmenter_out_d_valid; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63558.4]
  wire [2:0] coupler_to_clint_auto_fragmenter_out_d_bits_opcode; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63558.4]
  wire [1:0] coupler_to_clint_auto_fragmenter_out_d_bits_size; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63558.4]
  wire [9:0] coupler_to_clint_auto_fragmenter_out_d_bits_source; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63558.4]
  wire [31:0] coupler_to_clint_auto_fragmenter_out_d_bits_data; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63558.4]
  wire  coupler_to_debug_clock; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63564.4]
  wire  coupler_to_debug_reset; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63564.4]
  wire  coupler_to_debug_auto_fragmenter_in_a_ready; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63564.4]
  wire  coupler_to_debug_auto_fragmenter_in_a_valid; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63564.4]
  wire [2:0] coupler_to_debug_auto_fragmenter_in_a_bits_opcode; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63564.4]
  wire [2:0] coupler_to_debug_auto_fragmenter_in_a_bits_param; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63564.4]
  wire [2:0] coupler_to_debug_auto_fragmenter_in_a_bits_size; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63564.4]
  wire [4:0] coupler_to_debug_auto_fragmenter_in_a_bits_source; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63564.4]
  wire [11:0] coupler_to_debug_auto_fragmenter_in_a_bits_address; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63564.4]
  wire [3:0] coupler_to_debug_auto_fragmenter_in_a_bits_mask; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63564.4]
  wire [31:0] coupler_to_debug_auto_fragmenter_in_a_bits_data; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63564.4]
  wire  coupler_to_debug_auto_fragmenter_in_a_bits_corrupt; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63564.4]
  wire  coupler_to_debug_auto_fragmenter_in_d_ready; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63564.4]
  wire  coupler_to_debug_auto_fragmenter_in_d_valid; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63564.4]
  wire [2:0] coupler_to_debug_auto_fragmenter_in_d_bits_opcode; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63564.4]
  wire [2:0] coupler_to_debug_auto_fragmenter_in_d_bits_size; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63564.4]
  wire [4:0] coupler_to_debug_auto_fragmenter_in_d_bits_source; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63564.4]
  wire [31:0] coupler_to_debug_auto_fragmenter_in_d_bits_data; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63564.4]
  wire  coupler_to_debug_auto_fragmenter_out_a_ready; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63564.4]
  wire  coupler_to_debug_auto_fragmenter_out_a_valid; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63564.4]
  wire [2:0] coupler_to_debug_auto_fragmenter_out_a_bits_opcode; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63564.4]
  wire [2:0] coupler_to_debug_auto_fragmenter_out_a_bits_param; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63564.4]
  wire [1:0] coupler_to_debug_auto_fragmenter_out_a_bits_size; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63564.4]
  wire [9:0] coupler_to_debug_auto_fragmenter_out_a_bits_source; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63564.4]
  wire [11:0] coupler_to_debug_auto_fragmenter_out_a_bits_address; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63564.4]
  wire [3:0] coupler_to_debug_auto_fragmenter_out_a_bits_mask; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63564.4]
  wire [31:0] coupler_to_debug_auto_fragmenter_out_a_bits_data; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63564.4]
  wire  coupler_to_debug_auto_fragmenter_out_a_bits_corrupt; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63564.4]
  wire  coupler_to_debug_auto_fragmenter_out_d_ready; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63564.4]
  wire  coupler_to_debug_auto_fragmenter_out_d_valid; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63564.4]
  wire [2:0] coupler_to_debug_auto_fragmenter_out_d_bits_opcode; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63564.4]
  wire [1:0] coupler_to_debug_auto_fragmenter_out_d_bits_size; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63564.4]
  wire [9:0] coupler_to_debug_auto_fragmenter_out_d_bits_source; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63564.4]
  wire [31:0] coupler_to_debug_auto_fragmenter_out_d_bits_data; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63564.4]
  wire  buffer_1_clock; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63576.4]
  wire  buffer_1_reset; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63576.4]
  wire  buffer_1_auto_in_a_ready; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63576.4]
  wire  buffer_1_auto_in_a_valid; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63576.4]
  wire [2:0] buffer_1_auto_in_a_bits_opcode; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63576.4]
  wire [2:0] buffer_1_auto_in_a_bits_param; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63576.4]
  wire [3:0] buffer_1_auto_in_a_bits_size; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63576.4]
  wire [4:0] buffer_1_auto_in_a_bits_source; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63576.4]
  wire [27:0] buffer_1_auto_in_a_bits_address; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63576.4]
  wire [3:0] buffer_1_auto_in_a_bits_mask; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63576.4]
  wire [31:0] buffer_1_auto_in_a_bits_data; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63576.4]
  wire  buffer_1_auto_in_a_bits_corrupt; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63576.4]
  wire  buffer_1_auto_in_d_ready; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63576.4]
  wire  buffer_1_auto_in_d_valid; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63576.4]
  wire [2:0] buffer_1_auto_in_d_bits_opcode; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63576.4]
  wire [1:0] buffer_1_auto_in_d_bits_param; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63576.4]
  wire [3:0] buffer_1_auto_in_d_bits_size; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63576.4]
  wire [4:0] buffer_1_auto_in_d_bits_source; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63576.4]
  wire  buffer_1_auto_in_d_bits_sink; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63576.4]
  wire  buffer_1_auto_in_d_bits_denied; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63576.4]
  wire [31:0] buffer_1_auto_in_d_bits_data; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63576.4]
  wire  buffer_1_auto_in_d_bits_corrupt; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63576.4]
  wire  buffer_1_auto_out_a_ready; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63576.4]
  wire  buffer_1_auto_out_a_valid; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63576.4]
  wire [2:0] buffer_1_auto_out_a_bits_opcode; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63576.4]
  wire [2:0] buffer_1_auto_out_a_bits_param; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63576.4]
  wire [3:0] buffer_1_auto_out_a_bits_size; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63576.4]
  wire [4:0] buffer_1_auto_out_a_bits_source; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63576.4]
  wire [27:0] buffer_1_auto_out_a_bits_address; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63576.4]
  wire [3:0] buffer_1_auto_out_a_bits_mask; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63576.4]
  wire [31:0] buffer_1_auto_out_a_bits_data; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63576.4]
  wire  buffer_1_auto_out_a_bits_corrupt; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63576.4]
  wire  buffer_1_auto_out_d_ready; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63576.4]
  wire  buffer_1_auto_out_d_valid; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63576.4]
  wire [2:0] buffer_1_auto_out_d_bits_opcode; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63576.4]
  wire [1:0] buffer_1_auto_out_d_bits_param; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63576.4]
  wire [3:0] buffer_1_auto_out_d_bits_size; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63576.4]
  wire [4:0] buffer_1_auto_out_d_bits_source; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63576.4]
  wire  buffer_1_auto_out_d_bits_sink; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63576.4]
  wire  buffer_1_auto_out_d_bits_denied; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63576.4]
  wire [31:0] buffer_1_auto_out_d_bits_data; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63576.4]
  wire  buffer_1_auto_out_d_bits_corrupt; // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63576.4]
  wire  coupler_to_bootrom_clock; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63588.4]
  wire  coupler_to_bootrom_reset; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63588.4]
  wire  coupler_to_bootrom_auto_fragmenter_in_a_ready; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63588.4]
  wire  coupler_to_bootrom_auto_fragmenter_in_a_valid; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63588.4]
  wire [2:0] coupler_to_bootrom_auto_fragmenter_in_a_bits_opcode; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63588.4]
  wire [2:0] coupler_to_bootrom_auto_fragmenter_in_a_bits_param; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63588.4]
  wire [2:0] coupler_to_bootrom_auto_fragmenter_in_a_bits_size; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63588.4]
  wire [4:0] coupler_to_bootrom_auto_fragmenter_in_a_bits_source; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63588.4]
  wire [16:0] coupler_to_bootrom_auto_fragmenter_in_a_bits_address; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63588.4]
  wire [3:0] coupler_to_bootrom_auto_fragmenter_in_a_bits_mask; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63588.4]
  wire  coupler_to_bootrom_auto_fragmenter_in_a_bits_corrupt; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63588.4]
  wire  coupler_to_bootrom_auto_fragmenter_in_d_ready; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63588.4]
  wire  coupler_to_bootrom_auto_fragmenter_in_d_valid; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63588.4]
  wire [2:0] coupler_to_bootrom_auto_fragmenter_in_d_bits_size; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63588.4]
  wire [4:0] coupler_to_bootrom_auto_fragmenter_in_d_bits_source; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63588.4]
  wire [31:0] coupler_to_bootrom_auto_fragmenter_in_d_bits_data; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63588.4]
  wire  coupler_to_bootrom_auto_fragmenter_out_a_ready; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63588.4]
  wire  coupler_to_bootrom_auto_fragmenter_out_a_valid; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63588.4]
  wire [2:0] coupler_to_bootrom_auto_fragmenter_out_a_bits_opcode; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63588.4]
  wire [2:0] coupler_to_bootrom_auto_fragmenter_out_a_bits_param; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63588.4]
  wire [1:0] coupler_to_bootrom_auto_fragmenter_out_a_bits_size; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63588.4]
  wire [9:0] coupler_to_bootrom_auto_fragmenter_out_a_bits_source; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63588.4]
  wire [16:0] coupler_to_bootrom_auto_fragmenter_out_a_bits_address; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63588.4]
  wire [3:0] coupler_to_bootrom_auto_fragmenter_out_a_bits_mask; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63588.4]
  wire  coupler_to_bootrom_auto_fragmenter_out_a_bits_corrupt; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63588.4]
  wire  coupler_to_bootrom_auto_fragmenter_out_d_ready; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63588.4]
  wire  coupler_to_bootrom_auto_fragmenter_out_d_valid; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63588.4]
  wire [1:0] coupler_to_bootrom_auto_fragmenter_out_d_bits_size; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63588.4]
  wire [9:0] coupler_to_bootrom_auto_fragmenter_out_d_bits_source; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63588.4]
  wire [31:0] coupler_to_bootrom_auto_fragmenter_out_d_bits_data; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63588.4]
  TLFIFOFixer_3 fixer ( // @[PeripheryBus.scala 34:33:freechips.rocketchip.system.DefaultRV32Config.fir@63516.4]
    .clock(fixer_clock),
    .reset(fixer_reset),
    .auto_in_a_ready(fixer_auto_in_a_ready),
    .auto_in_a_valid(fixer_auto_in_a_valid),
    .auto_in_a_bits_opcode(fixer_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(fixer_auto_in_a_bits_param),
    .auto_in_a_bits_size(fixer_auto_in_a_bits_size),
    .auto_in_a_bits_source(fixer_auto_in_a_bits_source),
    .auto_in_a_bits_address(fixer_auto_in_a_bits_address),
    .auto_in_a_bits_mask(fixer_auto_in_a_bits_mask),
    .auto_in_a_bits_data(fixer_auto_in_a_bits_data),
    .auto_in_a_bits_corrupt(fixer_auto_in_a_bits_corrupt),
    .auto_in_d_ready(fixer_auto_in_d_ready),
    .auto_in_d_valid(fixer_auto_in_d_valid),
    .auto_in_d_bits_opcode(fixer_auto_in_d_bits_opcode),
    .auto_in_d_bits_param(fixer_auto_in_d_bits_param),
    .auto_in_d_bits_size(fixer_auto_in_d_bits_size),
    .auto_in_d_bits_source(fixer_auto_in_d_bits_source),
    .auto_in_d_bits_sink(fixer_auto_in_d_bits_sink),
    .auto_in_d_bits_denied(fixer_auto_in_d_bits_denied),
    .auto_in_d_bits_data(fixer_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(fixer_auto_in_d_bits_corrupt),
    .auto_out_a_ready(fixer_auto_out_a_ready),
    .auto_out_a_valid(fixer_auto_out_a_valid),
    .auto_out_a_bits_opcode(fixer_auto_out_a_bits_opcode),
    .auto_out_a_bits_param(fixer_auto_out_a_bits_param),
    .auto_out_a_bits_size(fixer_auto_out_a_bits_size),
    .auto_out_a_bits_source(fixer_auto_out_a_bits_source),
    .auto_out_a_bits_address(fixer_auto_out_a_bits_address),
    .auto_out_a_bits_mask(fixer_auto_out_a_bits_mask),
    .auto_out_a_bits_data(fixer_auto_out_a_bits_data),
    .auto_out_a_bits_corrupt(fixer_auto_out_a_bits_corrupt),
    .auto_out_d_ready(fixer_auto_out_d_ready),
    .auto_out_d_valid(fixer_auto_out_d_valid),
    .auto_out_d_bits_opcode(fixer_auto_out_d_bits_opcode),
    .auto_out_d_bits_param(fixer_auto_out_d_bits_param),
    .auto_out_d_bits_size(fixer_auto_out_d_bits_size),
    .auto_out_d_bits_source(fixer_auto_out_d_bits_source),
    .auto_out_d_bits_sink(fixer_auto_out_d_bits_sink),
    .auto_out_d_bits_denied(fixer_auto_out_d_bits_denied),
    .auto_out_d_bits_data(fixer_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(fixer_auto_out_d_bits_corrupt)
  );
  TLXbar_5 in_xbar ( // @[PeripheryBus.scala 36:29:freechips.rocketchip.system.DefaultRV32Config.fir@63522.4]
    .clock(in_xbar_clock),
    .reset(in_xbar_reset),
    .auto_in_a_ready(in_xbar_auto_in_a_ready),
    .auto_in_a_valid(in_xbar_auto_in_a_valid),
    .auto_in_a_bits_opcode(in_xbar_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(in_xbar_auto_in_a_bits_param),
    .auto_in_a_bits_size(in_xbar_auto_in_a_bits_size),
    .auto_in_a_bits_source(in_xbar_auto_in_a_bits_source),
    .auto_in_a_bits_address(in_xbar_auto_in_a_bits_address),
    .auto_in_a_bits_mask(in_xbar_auto_in_a_bits_mask),
    .auto_in_a_bits_data(in_xbar_auto_in_a_bits_data),
    .auto_in_a_bits_corrupt(in_xbar_auto_in_a_bits_corrupt),
    .auto_in_d_ready(in_xbar_auto_in_d_ready),
    .auto_in_d_valid(in_xbar_auto_in_d_valid),
    .auto_in_d_bits_opcode(in_xbar_auto_in_d_bits_opcode),
    .auto_in_d_bits_param(in_xbar_auto_in_d_bits_param),
    .auto_in_d_bits_size(in_xbar_auto_in_d_bits_size),
    .auto_in_d_bits_source(in_xbar_auto_in_d_bits_source),
    .auto_in_d_bits_sink(in_xbar_auto_in_d_bits_sink),
    .auto_in_d_bits_denied(in_xbar_auto_in_d_bits_denied),
    .auto_in_d_bits_data(in_xbar_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(in_xbar_auto_in_d_bits_corrupt),
    .auto_out_a_ready(in_xbar_auto_out_a_ready),
    .auto_out_a_valid(in_xbar_auto_out_a_valid),
    .auto_out_a_bits_opcode(in_xbar_auto_out_a_bits_opcode),
    .auto_out_a_bits_param(in_xbar_auto_out_a_bits_param),
    .auto_out_a_bits_size(in_xbar_auto_out_a_bits_size),
    .auto_out_a_bits_source(in_xbar_auto_out_a_bits_source),
    .auto_out_a_bits_address(in_xbar_auto_out_a_bits_address),
    .auto_out_a_bits_mask(in_xbar_auto_out_a_bits_mask),
    .auto_out_a_bits_data(in_xbar_auto_out_a_bits_data),
    .auto_out_a_bits_corrupt(in_xbar_auto_out_a_bits_corrupt),
    .auto_out_d_ready(in_xbar_auto_out_d_ready),
    .auto_out_d_valid(in_xbar_auto_out_d_valid),
    .auto_out_d_bits_opcode(in_xbar_auto_out_d_bits_opcode),
    .auto_out_d_bits_param(in_xbar_auto_out_d_bits_param),
    .auto_out_d_bits_size(in_xbar_auto_out_d_bits_size),
    .auto_out_d_bits_source(in_xbar_auto_out_d_bits_source),
    .auto_out_d_bits_sink(in_xbar_auto_out_d_bits_sink),
    .auto_out_d_bits_denied(in_xbar_auto_out_d_bits_denied),
    .auto_out_d_bits_data(in_xbar_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(in_xbar_auto_out_d_bits_corrupt)
  );
  TLXbar_6 out_xbar ( // @[PeripheryBus.scala 37:30:freechips.rocketchip.system.DefaultRV32Config.fir@63528.4]
    .clock(out_xbar_clock),
    .reset(out_xbar_reset),
    .auto_in_a_ready(out_xbar_auto_in_a_ready),
    .auto_in_a_valid(out_xbar_auto_in_a_valid),
    .auto_in_a_bits_opcode(out_xbar_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(out_xbar_auto_in_a_bits_param),
    .auto_in_a_bits_size(out_xbar_auto_in_a_bits_size),
    .auto_in_a_bits_source(out_xbar_auto_in_a_bits_source),
    .auto_in_a_bits_address(out_xbar_auto_in_a_bits_address),
    .auto_in_a_bits_mask(out_xbar_auto_in_a_bits_mask),
    .auto_in_a_bits_data(out_xbar_auto_in_a_bits_data),
    .auto_in_a_bits_corrupt(out_xbar_auto_in_a_bits_corrupt),
    .auto_in_d_ready(out_xbar_auto_in_d_ready),
    .auto_in_d_valid(out_xbar_auto_in_d_valid),
    .auto_in_d_bits_opcode(out_xbar_auto_in_d_bits_opcode),
    .auto_in_d_bits_param(out_xbar_auto_in_d_bits_param),
    .auto_in_d_bits_size(out_xbar_auto_in_d_bits_size),
    .auto_in_d_bits_source(out_xbar_auto_in_d_bits_source),
    .auto_in_d_bits_sink(out_xbar_auto_in_d_bits_sink),
    .auto_in_d_bits_denied(out_xbar_auto_in_d_bits_denied),
    .auto_in_d_bits_data(out_xbar_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(out_xbar_auto_in_d_bits_corrupt),
    .auto_out_4_a_ready(out_xbar_auto_out_4_a_ready),
    .auto_out_4_a_valid(out_xbar_auto_out_4_a_valid),
    .auto_out_4_a_bits_opcode(out_xbar_auto_out_4_a_bits_opcode),
    .auto_out_4_a_bits_param(out_xbar_auto_out_4_a_bits_param),
    .auto_out_4_a_bits_size(out_xbar_auto_out_4_a_bits_size),
    .auto_out_4_a_bits_source(out_xbar_auto_out_4_a_bits_source),
    .auto_out_4_a_bits_address(out_xbar_auto_out_4_a_bits_address),
    .auto_out_4_a_bits_mask(out_xbar_auto_out_4_a_bits_mask),
    .auto_out_4_a_bits_corrupt(out_xbar_auto_out_4_a_bits_corrupt),
    .auto_out_4_d_ready(out_xbar_auto_out_4_d_ready),
    .auto_out_4_d_valid(out_xbar_auto_out_4_d_valid),
    .auto_out_4_d_bits_size(out_xbar_auto_out_4_d_bits_size),
    .auto_out_4_d_bits_source(out_xbar_auto_out_4_d_bits_source),
    .auto_out_4_d_bits_data(out_xbar_auto_out_4_d_bits_data),
    .auto_out_3_a_ready(out_xbar_auto_out_3_a_ready),
    .auto_out_3_a_valid(out_xbar_auto_out_3_a_valid),
    .auto_out_3_a_bits_opcode(out_xbar_auto_out_3_a_bits_opcode),
    .auto_out_3_a_bits_param(out_xbar_auto_out_3_a_bits_param),
    .auto_out_3_a_bits_size(out_xbar_auto_out_3_a_bits_size),
    .auto_out_3_a_bits_source(out_xbar_auto_out_3_a_bits_source),
    .auto_out_3_a_bits_address(out_xbar_auto_out_3_a_bits_address),
    .auto_out_3_a_bits_mask(out_xbar_auto_out_3_a_bits_mask),
    .auto_out_3_a_bits_data(out_xbar_auto_out_3_a_bits_data),
    .auto_out_3_a_bits_corrupt(out_xbar_auto_out_3_a_bits_corrupt),
    .auto_out_3_d_ready(out_xbar_auto_out_3_d_ready),
    .auto_out_3_d_valid(out_xbar_auto_out_3_d_valid),
    .auto_out_3_d_bits_opcode(out_xbar_auto_out_3_d_bits_opcode),
    .auto_out_3_d_bits_size(out_xbar_auto_out_3_d_bits_size),
    .auto_out_3_d_bits_source(out_xbar_auto_out_3_d_bits_source),
    .auto_out_3_d_bits_data(out_xbar_auto_out_3_d_bits_data),
    .auto_out_2_a_ready(out_xbar_auto_out_2_a_ready),
    .auto_out_2_a_valid(out_xbar_auto_out_2_a_valid),
    .auto_out_2_a_bits_opcode(out_xbar_auto_out_2_a_bits_opcode),
    .auto_out_2_a_bits_param(out_xbar_auto_out_2_a_bits_param),
    .auto_out_2_a_bits_size(out_xbar_auto_out_2_a_bits_size),
    .auto_out_2_a_bits_source(out_xbar_auto_out_2_a_bits_source),
    .auto_out_2_a_bits_address(out_xbar_auto_out_2_a_bits_address),
    .auto_out_2_a_bits_mask(out_xbar_auto_out_2_a_bits_mask),
    .auto_out_2_a_bits_data(out_xbar_auto_out_2_a_bits_data),
    .auto_out_2_a_bits_corrupt(out_xbar_auto_out_2_a_bits_corrupt),
    .auto_out_2_d_ready(out_xbar_auto_out_2_d_ready),
    .auto_out_2_d_valid(out_xbar_auto_out_2_d_valid),
    .auto_out_2_d_bits_opcode(out_xbar_auto_out_2_d_bits_opcode),
    .auto_out_2_d_bits_size(out_xbar_auto_out_2_d_bits_size),
    .auto_out_2_d_bits_source(out_xbar_auto_out_2_d_bits_source),
    .auto_out_2_d_bits_data(out_xbar_auto_out_2_d_bits_data),
    .auto_out_1_a_ready(out_xbar_auto_out_1_a_ready),
    .auto_out_1_a_valid(out_xbar_auto_out_1_a_valid),
    .auto_out_1_a_bits_opcode(out_xbar_auto_out_1_a_bits_opcode),
    .auto_out_1_a_bits_param(out_xbar_auto_out_1_a_bits_param),
    .auto_out_1_a_bits_size(out_xbar_auto_out_1_a_bits_size),
    .auto_out_1_a_bits_source(out_xbar_auto_out_1_a_bits_source),
    .auto_out_1_a_bits_address(out_xbar_auto_out_1_a_bits_address),
    .auto_out_1_a_bits_mask(out_xbar_auto_out_1_a_bits_mask),
    .auto_out_1_a_bits_data(out_xbar_auto_out_1_a_bits_data),
    .auto_out_1_a_bits_corrupt(out_xbar_auto_out_1_a_bits_corrupt),
    .auto_out_1_d_ready(out_xbar_auto_out_1_d_ready),
    .auto_out_1_d_valid(out_xbar_auto_out_1_d_valid),
    .auto_out_1_d_bits_opcode(out_xbar_auto_out_1_d_bits_opcode),
    .auto_out_1_d_bits_size(out_xbar_auto_out_1_d_bits_size),
    .auto_out_1_d_bits_source(out_xbar_auto_out_1_d_bits_source),
    .auto_out_1_d_bits_data(out_xbar_auto_out_1_d_bits_data),
    .auto_out_0_a_ready(out_xbar_auto_out_0_a_ready),
    .auto_out_0_a_valid(out_xbar_auto_out_0_a_valid),
    .auto_out_0_a_bits_opcode(out_xbar_auto_out_0_a_bits_opcode),
    .auto_out_0_a_bits_param(out_xbar_auto_out_0_a_bits_param),
    .auto_out_0_a_bits_size(out_xbar_auto_out_0_a_bits_size),
    .auto_out_0_a_bits_source(out_xbar_auto_out_0_a_bits_source),
    .auto_out_0_a_bits_address(out_xbar_auto_out_0_a_bits_address),
    .auto_out_0_a_bits_mask(out_xbar_auto_out_0_a_bits_mask),
    .auto_out_0_a_bits_corrupt(out_xbar_auto_out_0_a_bits_corrupt),
    .auto_out_0_d_ready(out_xbar_auto_out_0_d_ready),
    .auto_out_0_d_valid(out_xbar_auto_out_0_d_valid),
    .auto_out_0_d_bits_opcode(out_xbar_auto_out_0_d_bits_opcode),
    .auto_out_0_d_bits_param(out_xbar_auto_out_0_d_bits_param),
    .auto_out_0_d_bits_size(out_xbar_auto_out_0_d_bits_size),
    .auto_out_0_d_bits_source(out_xbar_auto_out_0_d_bits_source),
    .auto_out_0_d_bits_sink(out_xbar_auto_out_0_d_bits_sink),
    .auto_out_0_d_bits_denied(out_xbar_auto_out_0_d_bits_denied),
    .auto_out_0_d_bits_data(out_xbar_auto_out_0_d_bits_data),
    .auto_out_0_d_bits_corrupt(out_xbar_auto_out_0_d_bits_corrupt)
  );
  TLBuffer_7 buffer ( // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63534.4]
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
  TLAtomicAutomata_1 atomics ( // @[AtomicAutomata.scala 282:29:freechips.rocketchip.system.DefaultRV32Config.fir@63540.4]
    .clock(atomics_clock),
    .reset(atomics_reset),
    .auto_in_a_ready(atomics_auto_in_a_ready),
    .auto_in_a_valid(atomics_auto_in_a_valid),
    .auto_in_a_bits_opcode(atomics_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(atomics_auto_in_a_bits_param),
    .auto_in_a_bits_size(atomics_auto_in_a_bits_size),
    .auto_in_a_bits_source(atomics_auto_in_a_bits_source),
    .auto_in_a_bits_address(atomics_auto_in_a_bits_address),
    .auto_in_a_bits_mask(atomics_auto_in_a_bits_mask),
    .auto_in_a_bits_data(atomics_auto_in_a_bits_data),
    .auto_in_a_bits_corrupt(atomics_auto_in_a_bits_corrupt),
    .auto_in_d_ready(atomics_auto_in_d_ready),
    .auto_in_d_valid(atomics_auto_in_d_valid),
    .auto_in_d_bits_opcode(atomics_auto_in_d_bits_opcode),
    .auto_in_d_bits_param(atomics_auto_in_d_bits_param),
    .auto_in_d_bits_size(atomics_auto_in_d_bits_size),
    .auto_in_d_bits_source(atomics_auto_in_d_bits_source),
    .auto_in_d_bits_sink(atomics_auto_in_d_bits_sink),
    .auto_in_d_bits_denied(atomics_auto_in_d_bits_denied),
    .auto_in_d_bits_data(atomics_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(atomics_auto_in_d_bits_corrupt),
    .auto_out_a_ready(atomics_auto_out_a_ready),
    .auto_out_a_valid(atomics_auto_out_a_valid),
    .auto_out_a_bits_opcode(atomics_auto_out_a_bits_opcode),
    .auto_out_a_bits_param(atomics_auto_out_a_bits_param),
    .auto_out_a_bits_size(atomics_auto_out_a_bits_size),
    .auto_out_a_bits_source(atomics_auto_out_a_bits_source),
    .auto_out_a_bits_address(atomics_auto_out_a_bits_address),
    .auto_out_a_bits_mask(atomics_auto_out_a_bits_mask),
    .auto_out_a_bits_data(atomics_auto_out_a_bits_data),
    .auto_out_a_bits_corrupt(atomics_auto_out_a_bits_corrupt),
    .auto_out_d_ready(atomics_auto_out_d_ready),
    .auto_out_d_valid(atomics_auto_out_d_valid),
    .auto_out_d_bits_opcode(atomics_auto_out_d_bits_opcode),
    .auto_out_d_bits_param(atomics_auto_out_d_bits_param),
    .auto_out_d_bits_size(atomics_auto_out_d_bits_size),
    .auto_out_d_bits_source(atomics_auto_out_d_bits_source),
    .auto_out_d_bits_sink(atomics_auto_out_d_bits_sink),
    .auto_out_d_bits_denied(atomics_auto_out_d_bits_denied),
    .auto_out_d_bits_data(atomics_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(atomics_auto_out_d_bits_corrupt)
  );
  SimpleLazyModule_8 wrapped_error_device ( // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63546.4]
    .clock(wrapped_error_device_clock),
    .reset(wrapped_error_device_reset),
    .auto_buffer_in_a_ready(wrapped_error_device_auto_buffer_in_a_ready),
    .auto_buffer_in_a_valid(wrapped_error_device_auto_buffer_in_a_valid),
    .auto_buffer_in_a_bits_opcode(wrapped_error_device_auto_buffer_in_a_bits_opcode),
    .auto_buffer_in_a_bits_param(wrapped_error_device_auto_buffer_in_a_bits_param),
    .auto_buffer_in_a_bits_size(wrapped_error_device_auto_buffer_in_a_bits_size),
    .auto_buffer_in_a_bits_source(wrapped_error_device_auto_buffer_in_a_bits_source),
    .auto_buffer_in_a_bits_address(wrapped_error_device_auto_buffer_in_a_bits_address),
    .auto_buffer_in_a_bits_mask(wrapped_error_device_auto_buffer_in_a_bits_mask),
    .auto_buffer_in_a_bits_corrupt(wrapped_error_device_auto_buffer_in_a_bits_corrupt),
    .auto_buffer_in_d_ready(wrapped_error_device_auto_buffer_in_d_ready),
    .auto_buffer_in_d_valid(wrapped_error_device_auto_buffer_in_d_valid),
    .auto_buffer_in_d_bits_opcode(wrapped_error_device_auto_buffer_in_d_bits_opcode),
    .auto_buffer_in_d_bits_param(wrapped_error_device_auto_buffer_in_d_bits_param),
    .auto_buffer_in_d_bits_size(wrapped_error_device_auto_buffer_in_d_bits_size),
    .auto_buffer_in_d_bits_source(wrapped_error_device_auto_buffer_in_d_bits_source),
    .auto_buffer_in_d_bits_sink(wrapped_error_device_auto_buffer_in_d_bits_sink),
    .auto_buffer_in_d_bits_denied(wrapped_error_device_auto_buffer_in_d_bits_denied),
    .auto_buffer_in_d_bits_data(wrapped_error_device_auto_buffer_in_d_bits_data),
    .auto_buffer_in_d_bits_corrupt(wrapped_error_device_auto_buffer_in_d_bits_corrupt)
  );
  SimpleLazyModule_9 coupler_to_plic ( // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63552.4]
    .clock(coupler_to_plic_clock),
    .reset(coupler_to_plic_reset),
    .auto_fragmenter_in_a_ready(coupler_to_plic_auto_fragmenter_in_a_ready),
    .auto_fragmenter_in_a_valid(coupler_to_plic_auto_fragmenter_in_a_valid),
    .auto_fragmenter_in_a_bits_opcode(coupler_to_plic_auto_fragmenter_in_a_bits_opcode),
    .auto_fragmenter_in_a_bits_param(coupler_to_plic_auto_fragmenter_in_a_bits_param),
    .auto_fragmenter_in_a_bits_size(coupler_to_plic_auto_fragmenter_in_a_bits_size),
    .auto_fragmenter_in_a_bits_source(coupler_to_plic_auto_fragmenter_in_a_bits_source),
    .auto_fragmenter_in_a_bits_address(coupler_to_plic_auto_fragmenter_in_a_bits_address),
    .auto_fragmenter_in_a_bits_mask(coupler_to_plic_auto_fragmenter_in_a_bits_mask),
    .auto_fragmenter_in_a_bits_data(coupler_to_plic_auto_fragmenter_in_a_bits_data),
    .auto_fragmenter_in_a_bits_corrupt(coupler_to_plic_auto_fragmenter_in_a_bits_corrupt),
    .auto_fragmenter_in_d_ready(coupler_to_plic_auto_fragmenter_in_d_ready),
    .auto_fragmenter_in_d_valid(coupler_to_plic_auto_fragmenter_in_d_valid),
    .auto_fragmenter_in_d_bits_opcode(coupler_to_plic_auto_fragmenter_in_d_bits_opcode),
    .auto_fragmenter_in_d_bits_size(coupler_to_plic_auto_fragmenter_in_d_bits_size),
    .auto_fragmenter_in_d_bits_source(coupler_to_plic_auto_fragmenter_in_d_bits_source),
    .auto_fragmenter_in_d_bits_data(coupler_to_plic_auto_fragmenter_in_d_bits_data),
    .auto_fragmenter_out_a_ready(coupler_to_plic_auto_fragmenter_out_a_ready),
    .auto_fragmenter_out_a_valid(coupler_to_plic_auto_fragmenter_out_a_valid),
    .auto_fragmenter_out_a_bits_opcode(coupler_to_plic_auto_fragmenter_out_a_bits_opcode),
    .auto_fragmenter_out_a_bits_param(coupler_to_plic_auto_fragmenter_out_a_bits_param),
    .auto_fragmenter_out_a_bits_size(coupler_to_plic_auto_fragmenter_out_a_bits_size),
    .auto_fragmenter_out_a_bits_source(coupler_to_plic_auto_fragmenter_out_a_bits_source),
    .auto_fragmenter_out_a_bits_address(coupler_to_plic_auto_fragmenter_out_a_bits_address),
    .auto_fragmenter_out_a_bits_mask(coupler_to_plic_auto_fragmenter_out_a_bits_mask),
    .auto_fragmenter_out_a_bits_data(coupler_to_plic_auto_fragmenter_out_a_bits_data),
    .auto_fragmenter_out_a_bits_corrupt(coupler_to_plic_auto_fragmenter_out_a_bits_corrupt),
    .auto_fragmenter_out_d_ready(coupler_to_plic_auto_fragmenter_out_d_ready),
    .auto_fragmenter_out_d_valid(coupler_to_plic_auto_fragmenter_out_d_valid),
    .auto_fragmenter_out_d_bits_opcode(coupler_to_plic_auto_fragmenter_out_d_bits_opcode),
    .auto_fragmenter_out_d_bits_size(coupler_to_plic_auto_fragmenter_out_d_bits_size),
    .auto_fragmenter_out_d_bits_source(coupler_to_plic_auto_fragmenter_out_d_bits_source),
    .auto_fragmenter_out_d_bits_data(coupler_to_plic_auto_fragmenter_out_d_bits_data)
  );
  SimpleLazyModule_10 coupler_to_clint ( // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63558.4]
    .clock(coupler_to_clint_clock),
    .reset(coupler_to_clint_reset),
    .auto_fragmenter_in_a_ready(coupler_to_clint_auto_fragmenter_in_a_ready),
    .auto_fragmenter_in_a_valid(coupler_to_clint_auto_fragmenter_in_a_valid),
    .auto_fragmenter_in_a_bits_opcode(coupler_to_clint_auto_fragmenter_in_a_bits_opcode),
    .auto_fragmenter_in_a_bits_param(coupler_to_clint_auto_fragmenter_in_a_bits_param),
    .auto_fragmenter_in_a_bits_size(coupler_to_clint_auto_fragmenter_in_a_bits_size),
    .auto_fragmenter_in_a_bits_source(coupler_to_clint_auto_fragmenter_in_a_bits_source),
    .auto_fragmenter_in_a_bits_address(coupler_to_clint_auto_fragmenter_in_a_bits_address),
    .auto_fragmenter_in_a_bits_mask(coupler_to_clint_auto_fragmenter_in_a_bits_mask),
    .auto_fragmenter_in_a_bits_data(coupler_to_clint_auto_fragmenter_in_a_bits_data),
    .auto_fragmenter_in_a_bits_corrupt(coupler_to_clint_auto_fragmenter_in_a_bits_corrupt),
    .auto_fragmenter_in_d_ready(coupler_to_clint_auto_fragmenter_in_d_ready),
    .auto_fragmenter_in_d_valid(coupler_to_clint_auto_fragmenter_in_d_valid),
    .auto_fragmenter_in_d_bits_opcode(coupler_to_clint_auto_fragmenter_in_d_bits_opcode),
    .auto_fragmenter_in_d_bits_size(coupler_to_clint_auto_fragmenter_in_d_bits_size),
    .auto_fragmenter_in_d_bits_source(coupler_to_clint_auto_fragmenter_in_d_bits_source),
    .auto_fragmenter_in_d_bits_data(coupler_to_clint_auto_fragmenter_in_d_bits_data),
    .auto_fragmenter_out_a_ready(coupler_to_clint_auto_fragmenter_out_a_ready),
    .auto_fragmenter_out_a_valid(coupler_to_clint_auto_fragmenter_out_a_valid),
    .auto_fragmenter_out_a_bits_opcode(coupler_to_clint_auto_fragmenter_out_a_bits_opcode),
    .auto_fragmenter_out_a_bits_param(coupler_to_clint_auto_fragmenter_out_a_bits_param),
    .auto_fragmenter_out_a_bits_size(coupler_to_clint_auto_fragmenter_out_a_bits_size),
    .auto_fragmenter_out_a_bits_source(coupler_to_clint_auto_fragmenter_out_a_bits_source),
    .auto_fragmenter_out_a_bits_address(coupler_to_clint_auto_fragmenter_out_a_bits_address),
    .auto_fragmenter_out_a_bits_mask(coupler_to_clint_auto_fragmenter_out_a_bits_mask),
    .auto_fragmenter_out_a_bits_data(coupler_to_clint_auto_fragmenter_out_a_bits_data),
    .auto_fragmenter_out_a_bits_corrupt(coupler_to_clint_auto_fragmenter_out_a_bits_corrupt),
    .auto_fragmenter_out_d_ready(coupler_to_clint_auto_fragmenter_out_d_ready),
    .auto_fragmenter_out_d_valid(coupler_to_clint_auto_fragmenter_out_d_valid),
    .auto_fragmenter_out_d_bits_opcode(coupler_to_clint_auto_fragmenter_out_d_bits_opcode),
    .auto_fragmenter_out_d_bits_size(coupler_to_clint_auto_fragmenter_out_d_bits_size),
    .auto_fragmenter_out_d_bits_source(coupler_to_clint_auto_fragmenter_out_d_bits_source),
    .auto_fragmenter_out_d_bits_data(coupler_to_clint_auto_fragmenter_out_d_bits_data)
  );
  SimpleLazyModule_11 coupler_to_debug ( // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63564.4]
    .clock(coupler_to_debug_clock),
    .reset(coupler_to_debug_reset),
    .auto_fragmenter_in_a_ready(coupler_to_debug_auto_fragmenter_in_a_ready),
    .auto_fragmenter_in_a_valid(coupler_to_debug_auto_fragmenter_in_a_valid),
    .auto_fragmenter_in_a_bits_opcode(coupler_to_debug_auto_fragmenter_in_a_bits_opcode),
    .auto_fragmenter_in_a_bits_param(coupler_to_debug_auto_fragmenter_in_a_bits_param),
    .auto_fragmenter_in_a_bits_size(coupler_to_debug_auto_fragmenter_in_a_bits_size),
    .auto_fragmenter_in_a_bits_source(coupler_to_debug_auto_fragmenter_in_a_bits_source),
    .auto_fragmenter_in_a_bits_address(coupler_to_debug_auto_fragmenter_in_a_bits_address),
    .auto_fragmenter_in_a_bits_mask(coupler_to_debug_auto_fragmenter_in_a_bits_mask),
    .auto_fragmenter_in_a_bits_data(coupler_to_debug_auto_fragmenter_in_a_bits_data),
    .auto_fragmenter_in_a_bits_corrupt(coupler_to_debug_auto_fragmenter_in_a_bits_corrupt),
    .auto_fragmenter_in_d_ready(coupler_to_debug_auto_fragmenter_in_d_ready),
    .auto_fragmenter_in_d_valid(coupler_to_debug_auto_fragmenter_in_d_valid),
    .auto_fragmenter_in_d_bits_opcode(coupler_to_debug_auto_fragmenter_in_d_bits_opcode),
    .auto_fragmenter_in_d_bits_size(coupler_to_debug_auto_fragmenter_in_d_bits_size),
    .auto_fragmenter_in_d_bits_source(coupler_to_debug_auto_fragmenter_in_d_bits_source),
    .auto_fragmenter_in_d_bits_data(coupler_to_debug_auto_fragmenter_in_d_bits_data),
    .auto_fragmenter_out_a_ready(coupler_to_debug_auto_fragmenter_out_a_ready),
    .auto_fragmenter_out_a_valid(coupler_to_debug_auto_fragmenter_out_a_valid),
    .auto_fragmenter_out_a_bits_opcode(coupler_to_debug_auto_fragmenter_out_a_bits_opcode),
    .auto_fragmenter_out_a_bits_param(coupler_to_debug_auto_fragmenter_out_a_bits_param),
    .auto_fragmenter_out_a_bits_size(coupler_to_debug_auto_fragmenter_out_a_bits_size),
    .auto_fragmenter_out_a_bits_source(coupler_to_debug_auto_fragmenter_out_a_bits_source),
    .auto_fragmenter_out_a_bits_address(coupler_to_debug_auto_fragmenter_out_a_bits_address),
    .auto_fragmenter_out_a_bits_mask(coupler_to_debug_auto_fragmenter_out_a_bits_mask),
    .auto_fragmenter_out_a_bits_data(coupler_to_debug_auto_fragmenter_out_a_bits_data),
    .auto_fragmenter_out_a_bits_corrupt(coupler_to_debug_auto_fragmenter_out_a_bits_corrupt),
    .auto_fragmenter_out_d_ready(coupler_to_debug_auto_fragmenter_out_d_ready),
    .auto_fragmenter_out_d_valid(coupler_to_debug_auto_fragmenter_out_d_valid),
    .auto_fragmenter_out_d_bits_opcode(coupler_to_debug_auto_fragmenter_out_d_bits_opcode),
    .auto_fragmenter_out_d_bits_size(coupler_to_debug_auto_fragmenter_out_d_bits_size),
    .auto_fragmenter_out_d_bits_source(coupler_to_debug_auto_fragmenter_out_d_bits_source),
    .auto_fragmenter_out_d_bits_data(coupler_to_debug_auto_fragmenter_out_d_bits_data)
  );
  TLBuffer_10 buffer_1 ( // @[Buffer.scala 69:28:freechips.rocketchip.system.DefaultRV32Config.fir@63576.4]
    .clock(buffer_1_clock),
    .reset(buffer_1_reset),
    .auto_in_a_ready(buffer_1_auto_in_a_ready),
    .auto_in_a_valid(buffer_1_auto_in_a_valid),
    .auto_in_a_bits_opcode(buffer_1_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(buffer_1_auto_in_a_bits_param),
    .auto_in_a_bits_size(buffer_1_auto_in_a_bits_size),
    .auto_in_a_bits_source(buffer_1_auto_in_a_bits_source),
    .auto_in_a_bits_address(buffer_1_auto_in_a_bits_address),
    .auto_in_a_bits_mask(buffer_1_auto_in_a_bits_mask),
    .auto_in_a_bits_data(buffer_1_auto_in_a_bits_data),
    .auto_in_a_bits_corrupt(buffer_1_auto_in_a_bits_corrupt),
    .auto_in_d_ready(buffer_1_auto_in_d_ready),
    .auto_in_d_valid(buffer_1_auto_in_d_valid),
    .auto_in_d_bits_opcode(buffer_1_auto_in_d_bits_opcode),
    .auto_in_d_bits_param(buffer_1_auto_in_d_bits_param),
    .auto_in_d_bits_size(buffer_1_auto_in_d_bits_size),
    .auto_in_d_bits_source(buffer_1_auto_in_d_bits_source),
    .auto_in_d_bits_sink(buffer_1_auto_in_d_bits_sink),
    .auto_in_d_bits_denied(buffer_1_auto_in_d_bits_denied),
    .auto_in_d_bits_data(buffer_1_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(buffer_1_auto_in_d_bits_corrupt),
    .auto_out_a_ready(buffer_1_auto_out_a_ready),
    .auto_out_a_valid(buffer_1_auto_out_a_valid),
    .auto_out_a_bits_opcode(buffer_1_auto_out_a_bits_opcode),
    .auto_out_a_bits_param(buffer_1_auto_out_a_bits_param),
    .auto_out_a_bits_size(buffer_1_auto_out_a_bits_size),
    .auto_out_a_bits_source(buffer_1_auto_out_a_bits_source),
    .auto_out_a_bits_address(buffer_1_auto_out_a_bits_address),
    .auto_out_a_bits_mask(buffer_1_auto_out_a_bits_mask),
    .auto_out_a_bits_data(buffer_1_auto_out_a_bits_data),
    .auto_out_a_bits_corrupt(buffer_1_auto_out_a_bits_corrupt),
    .auto_out_d_ready(buffer_1_auto_out_d_ready),
    .auto_out_d_valid(buffer_1_auto_out_d_valid),
    .auto_out_d_bits_opcode(buffer_1_auto_out_d_bits_opcode),
    .auto_out_d_bits_param(buffer_1_auto_out_d_bits_param),
    .auto_out_d_bits_size(buffer_1_auto_out_d_bits_size),
    .auto_out_d_bits_source(buffer_1_auto_out_d_bits_source),
    .auto_out_d_bits_sink(buffer_1_auto_out_d_bits_sink),
    .auto_out_d_bits_denied(buffer_1_auto_out_d_bits_denied),
    .auto_out_d_bits_data(buffer_1_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(buffer_1_auto_out_d_bits_corrupt)
  );
  SimpleLazyModule_14 coupler_to_bootrom ( // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@63588.4]
    .clock(coupler_to_bootrom_clock),
    .reset(coupler_to_bootrom_reset),
    .auto_fragmenter_in_a_ready(coupler_to_bootrom_auto_fragmenter_in_a_ready),
    .auto_fragmenter_in_a_valid(coupler_to_bootrom_auto_fragmenter_in_a_valid),
    .auto_fragmenter_in_a_bits_opcode(coupler_to_bootrom_auto_fragmenter_in_a_bits_opcode),
    .auto_fragmenter_in_a_bits_param(coupler_to_bootrom_auto_fragmenter_in_a_bits_param),
    .auto_fragmenter_in_a_bits_size(coupler_to_bootrom_auto_fragmenter_in_a_bits_size),
    .auto_fragmenter_in_a_bits_source(coupler_to_bootrom_auto_fragmenter_in_a_bits_source),
    .auto_fragmenter_in_a_bits_address(coupler_to_bootrom_auto_fragmenter_in_a_bits_address),
    .auto_fragmenter_in_a_bits_mask(coupler_to_bootrom_auto_fragmenter_in_a_bits_mask),
    .auto_fragmenter_in_a_bits_corrupt(coupler_to_bootrom_auto_fragmenter_in_a_bits_corrupt),
    .auto_fragmenter_in_d_ready(coupler_to_bootrom_auto_fragmenter_in_d_ready),
    .auto_fragmenter_in_d_valid(coupler_to_bootrom_auto_fragmenter_in_d_valid),
    .auto_fragmenter_in_d_bits_size(coupler_to_bootrom_auto_fragmenter_in_d_bits_size),
    .auto_fragmenter_in_d_bits_source(coupler_to_bootrom_auto_fragmenter_in_d_bits_source),
    .auto_fragmenter_in_d_bits_data(coupler_to_bootrom_auto_fragmenter_in_d_bits_data),
    .auto_fragmenter_out_a_ready(coupler_to_bootrom_auto_fragmenter_out_a_ready),
    .auto_fragmenter_out_a_valid(coupler_to_bootrom_auto_fragmenter_out_a_valid),
    .auto_fragmenter_out_a_bits_opcode(coupler_to_bootrom_auto_fragmenter_out_a_bits_opcode),
    .auto_fragmenter_out_a_bits_param(coupler_to_bootrom_auto_fragmenter_out_a_bits_param),
    .auto_fragmenter_out_a_bits_size(coupler_to_bootrom_auto_fragmenter_out_a_bits_size),
    .auto_fragmenter_out_a_bits_source(coupler_to_bootrom_auto_fragmenter_out_a_bits_source),
    .auto_fragmenter_out_a_bits_address(coupler_to_bootrom_auto_fragmenter_out_a_bits_address),
    .auto_fragmenter_out_a_bits_mask(coupler_to_bootrom_auto_fragmenter_out_a_bits_mask),
    .auto_fragmenter_out_a_bits_corrupt(coupler_to_bootrom_auto_fragmenter_out_a_bits_corrupt),
    .auto_fragmenter_out_d_ready(coupler_to_bootrom_auto_fragmenter_out_d_ready),
    .auto_fragmenter_out_d_valid(coupler_to_bootrom_auto_fragmenter_out_d_valid),
    .auto_fragmenter_out_d_bits_size(coupler_to_bootrom_auto_fragmenter_out_d_bits_size),
    .auto_fragmenter_out_d_bits_source(coupler_to_bootrom_auto_fragmenter_out_d_bits_source),
    .auto_fragmenter_out_d_bits_data(coupler_to_bootrom_auto_fragmenter_out_d_bits_data)
  );
  assign auto_coupler_to_bootrom_fragmenter_out_a_valid = coupler_to_bootrom_auto_fragmenter_out_a_valid; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@63614.4]
  assign auto_coupler_to_bootrom_fragmenter_out_a_bits_opcode = coupler_to_bootrom_auto_fragmenter_out_a_bits_opcode; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@63614.4]
  assign auto_coupler_to_bootrom_fragmenter_out_a_bits_param = coupler_to_bootrom_auto_fragmenter_out_a_bits_param; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@63614.4]
  assign auto_coupler_to_bootrom_fragmenter_out_a_bits_size = coupler_to_bootrom_auto_fragmenter_out_a_bits_size; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@63614.4]
  assign auto_coupler_to_bootrom_fragmenter_out_a_bits_source = coupler_to_bootrom_auto_fragmenter_out_a_bits_source; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@63614.4]
  assign auto_coupler_to_bootrom_fragmenter_out_a_bits_address = coupler_to_bootrom_auto_fragmenter_out_a_bits_address; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@63614.4]
  assign auto_coupler_to_bootrom_fragmenter_out_a_bits_mask = coupler_to_bootrom_auto_fragmenter_out_a_bits_mask; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@63614.4]
  assign auto_coupler_to_bootrom_fragmenter_out_a_bits_corrupt = coupler_to_bootrom_auto_fragmenter_out_a_bits_corrupt; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@63614.4]
  assign auto_coupler_to_bootrom_fragmenter_out_d_ready = coupler_to_bootrom_auto_fragmenter_out_d_ready; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@63614.4]
  assign auto_coupler_to_debug_fragmenter_out_a_valid = coupler_to_debug_auto_fragmenter_out_a_valid; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@63613.4]
  assign auto_coupler_to_debug_fragmenter_out_a_bits_opcode = coupler_to_debug_auto_fragmenter_out_a_bits_opcode; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@63613.4]
  assign auto_coupler_to_debug_fragmenter_out_a_bits_param = coupler_to_debug_auto_fragmenter_out_a_bits_param; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@63613.4]
  assign auto_coupler_to_debug_fragmenter_out_a_bits_size = coupler_to_debug_auto_fragmenter_out_a_bits_size; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@63613.4]
  assign auto_coupler_to_debug_fragmenter_out_a_bits_source = coupler_to_debug_auto_fragmenter_out_a_bits_source; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@63613.4]
  assign auto_coupler_to_debug_fragmenter_out_a_bits_address = coupler_to_debug_auto_fragmenter_out_a_bits_address; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@63613.4]
  assign auto_coupler_to_debug_fragmenter_out_a_bits_mask = coupler_to_debug_auto_fragmenter_out_a_bits_mask; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@63613.4]
  assign auto_coupler_to_debug_fragmenter_out_a_bits_data = coupler_to_debug_auto_fragmenter_out_a_bits_data; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@63613.4]
  assign auto_coupler_to_debug_fragmenter_out_a_bits_corrupt = coupler_to_debug_auto_fragmenter_out_a_bits_corrupt; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@63613.4]
  assign auto_coupler_to_debug_fragmenter_out_d_ready = coupler_to_debug_auto_fragmenter_out_d_ready; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@63613.4]
  assign auto_coupler_to_clint_fragmenter_out_a_valid = coupler_to_clint_auto_fragmenter_out_a_valid; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@63612.4]
  assign auto_coupler_to_clint_fragmenter_out_a_bits_opcode = coupler_to_clint_auto_fragmenter_out_a_bits_opcode; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@63612.4]
  assign auto_coupler_to_clint_fragmenter_out_a_bits_param = coupler_to_clint_auto_fragmenter_out_a_bits_param; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@63612.4]
  assign auto_coupler_to_clint_fragmenter_out_a_bits_size = coupler_to_clint_auto_fragmenter_out_a_bits_size; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@63612.4]
  assign auto_coupler_to_clint_fragmenter_out_a_bits_source = coupler_to_clint_auto_fragmenter_out_a_bits_source; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@63612.4]
  assign auto_coupler_to_clint_fragmenter_out_a_bits_address = coupler_to_clint_auto_fragmenter_out_a_bits_address; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@63612.4]
  assign auto_coupler_to_clint_fragmenter_out_a_bits_mask = coupler_to_clint_auto_fragmenter_out_a_bits_mask; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@63612.4]
  assign auto_coupler_to_clint_fragmenter_out_a_bits_data = coupler_to_clint_auto_fragmenter_out_a_bits_data; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@63612.4]
  assign auto_coupler_to_clint_fragmenter_out_a_bits_corrupt = coupler_to_clint_auto_fragmenter_out_a_bits_corrupt; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@63612.4]
  assign auto_coupler_to_clint_fragmenter_out_d_ready = coupler_to_clint_auto_fragmenter_out_d_ready; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@63612.4]
  assign auto_coupler_to_plic_fragmenter_out_a_valid = coupler_to_plic_auto_fragmenter_out_a_valid; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@63611.4]
  assign auto_coupler_to_plic_fragmenter_out_a_bits_opcode = coupler_to_plic_auto_fragmenter_out_a_bits_opcode; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@63611.4]
  assign auto_coupler_to_plic_fragmenter_out_a_bits_param = coupler_to_plic_auto_fragmenter_out_a_bits_param; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@63611.4]
  assign auto_coupler_to_plic_fragmenter_out_a_bits_size = coupler_to_plic_auto_fragmenter_out_a_bits_size; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@63611.4]
  assign auto_coupler_to_plic_fragmenter_out_a_bits_source = coupler_to_plic_auto_fragmenter_out_a_bits_source; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@63611.4]
  assign auto_coupler_to_plic_fragmenter_out_a_bits_address = coupler_to_plic_auto_fragmenter_out_a_bits_address; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@63611.4]
  assign auto_coupler_to_plic_fragmenter_out_a_bits_mask = coupler_to_plic_auto_fragmenter_out_a_bits_mask; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@63611.4]
  assign auto_coupler_to_plic_fragmenter_out_a_bits_data = coupler_to_plic_auto_fragmenter_out_a_bits_data; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@63611.4]
  assign auto_coupler_to_plic_fragmenter_out_a_bits_corrupt = coupler_to_plic_auto_fragmenter_out_a_bits_corrupt; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@63611.4]
  assign auto_coupler_to_plic_fragmenter_out_d_ready = coupler_to_plic_auto_fragmenter_out_d_ready; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@63611.4]
  assign auto_bus_xing_in_a_ready = buffer_1_auto_in_a_ready; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@63610.4]
  assign auto_bus_xing_in_d_valid = buffer_1_auto_in_d_valid; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@63610.4]
  assign auto_bus_xing_in_d_bits_opcode = buffer_1_auto_in_d_bits_opcode; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@63610.4]
  assign auto_bus_xing_in_d_bits_param = buffer_1_auto_in_d_bits_param; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@63610.4]
  assign auto_bus_xing_in_d_bits_size = buffer_1_auto_in_d_bits_size; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@63610.4]
  assign auto_bus_xing_in_d_bits_source = buffer_1_auto_in_d_bits_source; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@63610.4]
  assign auto_bus_xing_in_d_bits_sink = buffer_1_auto_in_d_bits_sink; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@63610.4]
  assign auto_bus_xing_in_d_bits_denied = buffer_1_auto_in_d_bits_denied; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@63610.4]
  assign auto_bus_xing_in_d_bits_data = buffer_1_auto_in_d_bits_data; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@63610.4]
  assign auto_bus_xing_in_d_bits_corrupt = buffer_1_auto_in_d_bits_corrupt; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@63610.4]
  assign fixer_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63520.4]
  assign fixer_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63521.4]
  assign fixer_auto_in_a_valid = buffer_auto_out_a_valid; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@63606.4]
  assign fixer_auto_in_a_bits_opcode = buffer_auto_out_a_bits_opcode; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@63606.4]
  assign fixer_auto_in_a_bits_param = buffer_auto_out_a_bits_param; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@63606.4]
  assign fixer_auto_in_a_bits_size = buffer_auto_out_a_bits_size; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@63606.4]
  assign fixer_auto_in_a_bits_source = buffer_auto_out_a_bits_source; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@63606.4]
  assign fixer_auto_in_a_bits_address = buffer_auto_out_a_bits_address; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@63606.4]
  assign fixer_auto_in_a_bits_mask = buffer_auto_out_a_bits_mask; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@63606.4]
  assign fixer_auto_in_a_bits_data = buffer_auto_out_a_bits_data; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@63606.4]
  assign fixer_auto_in_a_bits_corrupt = buffer_auto_out_a_bits_corrupt; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@63606.4]
  assign fixer_auto_in_d_ready = buffer_auto_out_d_ready; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@63606.4]
  assign fixer_auto_out_a_ready = out_xbar_auto_in_a_ready; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63599.4]
  assign fixer_auto_out_d_valid = out_xbar_auto_in_d_valid; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63599.4]
  assign fixer_auto_out_d_bits_opcode = out_xbar_auto_in_d_bits_opcode; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63599.4]
  assign fixer_auto_out_d_bits_param = out_xbar_auto_in_d_bits_param; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63599.4]
  assign fixer_auto_out_d_bits_size = out_xbar_auto_in_d_bits_size; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63599.4]
  assign fixer_auto_out_d_bits_source = out_xbar_auto_in_d_bits_source; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63599.4]
  assign fixer_auto_out_d_bits_sink = out_xbar_auto_in_d_bits_sink; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63599.4]
  assign fixer_auto_out_d_bits_denied = out_xbar_auto_in_d_bits_denied; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63599.4]
  assign fixer_auto_out_d_bits_data = out_xbar_auto_in_d_bits_data; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63599.4]
  assign fixer_auto_out_d_bits_corrupt = out_xbar_auto_in_d_bits_corrupt; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63599.4]
  assign in_xbar_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63526.4]
  assign in_xbar_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63527.4]
  assign in_xbar_auto_in_a_valid = buffer_1_auto_out_a_valid; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@63608.4]
  assign in_xbar_auto_in_a_bits_opcode = buffer_1_auto_out_a_bits_opcode; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@63608.4]
  assign in_xbar_auto_in_a_bits_param = buffer_1_auto_out_a_bits_param; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@63608.4]
  assign in_xbar_auto_in_a_bits_size = buffer_1_auto_out_a_bits_size; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@63608.4]
  assign in_xbar_auto_in_a_bits_source = buffer_1_auto_out_a_bits_source; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@63608.4]
  assign in_xbar_auto_in_a_bits_address = buffer_1_auto_out_a_bits_address; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@63608.4]
  assign in_xbar_auto_in_a_bits_mask = buffer_1_auto_out_a_bits_mask; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@63608.4]
  assign in_xbar_auto_in_a_bits_data = buffer_1_auto_out_a_bits_data; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@63608.4]
  assign in_xbar_auto_in_a_bits_corrupt = buffer_1_auto_out_a_bits_corrupt; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@63608.4]
  assign in_xbar_auto_in_d_ready = buffer_1_auto_out_d_ready; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@63608.4]
  assign in_xbar_auto_out_a_ready = atomics_auto_in_a_ready; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63600.4]
  assign in_xbar_auto_out_d_valid = atomics_auto_in_d_valid; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63600.4]
  assign in_xbar_auto_out_d_bits_opcode = atomics_auto_in_d_bits_opcode; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63600.4]
  assign in_xbar_auto_out_d_bits_param = atomics_auto_in_d_bits_param; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63600.4]
  assign in_xbar_auto_out_d_bits_size = atomics_auto_in_d_bits_size; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63600.4]
  assign in_xbar_auto_out_d_bits_source = atomics_auto_in_d_bits_source; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63600.4]
  assign in_xbar_auto_out_d_bits_sink = atomics_auto_in_d_bits_sink; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63600.4]
  assign in_xbar_auto_out_d_bits_denied = atomics_auto_in_d_bits_denied; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63600.4]
  assign in_xbar_auto_out_d_bits_data = atomics_auto_in_d_bits_data; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63600.4]
  assign in_xbar_auto_out_d_bits_corrupt = atomics_auto_in_d_bits_corrupt; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63600.4]
  assign out_xbar_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63532.4]
  assign out_xbar_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63533.4]
  assign out_xbar_auto_in_a_valid = fixer_auto_out_a_valid; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63599.4]
  assign out_xbar_auto_in_a_bits_opcode = fixer_auto_out_a_bits_opcode; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63599.4]
  assign out_xbar_auto_in_a_bits_param = fixer_auto_out_a_bits_param; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63599.4]
  assign out_xbar_auto_in_a_bits_size = fixer_auto_out_a_bits_size; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63599.4]
  assign out_xbar_auto_in_a_bits_source = fixer_auto_out_a_bits_source; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63599.4]
  assign out_xbar_auto_in_a_bits_address = fixer_auto_out_a_bits_address; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63599.4]
  assign out_xbar_auto_in_a_bits_mask = fixer_auto_out_a_bits_mask; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63599.4]
  assign out_xbar_auto_in_a_bits_data = fixer_auto_out_a_bits_data; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63599.4]
  assign out_xbar_auto_in_a_bits_corrupt = fixer_auto_out_a_bits_corrupt; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63599.4]
  assign out_xbar_auto_in_d_ready = fixer_auto_out_d_ready; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63599.4]
  assign out_xbar_auto_out_4_a_ready = coupler_to_bootrom_auto_fragmenter_in_a_ready; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63605.4]
  assign out_xbar_auto_out_4_d_valid = coupler_to_bootrom_auto_fragmenter_in_d_valid; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63605.4]
  assign out_xbar_auto_out_4_d_bits_size = coupler_to_bootrom_auto_fragmenter_in_d_bits_size; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63605.4]
  assign out_xbar_auto_out_4_d_bits_source = coupler_to_bootrom_auto_fragmenter_in_d_bits_source; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63605.4]
  assign out_xbar_auto_out_4_d_bits_data = coupler_to_bootrom_auto_fragmenter_in_d_bits_data; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63605.4]
  assign out_xbar_auto_out_3_a_ready = coupler_to_debug_auto_fragmenter_in_a_ready; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63604.4]
  assign out_xbar_auto_out_3_d_valid = coupler_to_debug_auto_fragmenter_in_d_valid; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63604.4]
  assign out_xbar_auto_out_3_d_bits_opcode = coupler_to_debug_auto_fragmenter_in_d_bits_opcode; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63604.4]
  assign out_xbar_auto_out_3_d_bits_size = coupler_to_debug_auto_fragmenter_in_d_bits_size; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63604.4]
  assign out_xbar_auto_out_3_d_bits_source = coupler_to_debug_auto_fragmenter_in_d_bits_source; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63604.4]
  assign out_xbar_auto_out_3_d_bits_data = coupler_to_debug_auto_fragmenter_in_d_bits_data; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63604.4]
  assign out_xbar_auto_out_2_a_ready = coupler_to_clint_auto_fragmenter_in_a_ready; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63603.4]
  assign out_xbar_auto_out_2_d_valid = coupler_to_clint_auto_fragmenter_in_d_valid; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63603.4]
  assign out_xbar_auto_out_2_d_bits_opcode = coupler_to_clint_auto_fragmenter_in_d_bits_opcode; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63603.4]
  assign out_xbar_auto_out_2_d_bits_size = coupler_to_clint_auto_fragmenter_in_d_bits_size; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63603.4]
  assign out_xbar_auto_out_2_d_bits_source = coupler_to_clint_auto_fragmenter_in_d_bits_source; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63603.4]
  assign out_xbar_auto_out_2_d_bits_data = coupler_to_clint_auto_fragmenter_in_d_bits_data; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63603.4]
  assign out_xbar_auto_out_1_a_ready = coupler_to_plic_auto_fragmenter_in_a_ready; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63602.4]
  assign out_xbar_auto_out_1_d_valid = coupler_to_plic_auto_fragmenter_in_d_valid; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63602.4]
  assign out_xbar_auto_out_1_d_bits_opcode = coupler_to_plic_auto_fragmenter_in_d_bits_opcode; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63602.4]
  assign out_xbar_auto_out_1_d_bits_size = coupler_to_plic_auto_fragmenter_in_d_bits_size; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63602.4]
  assign out_xbar_auto_out_1_d_bits_source = coupler_to_plic_auto_fragmenter_in_d_bits_source; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63602.4]
  assign out_xbar_auto_out_1_d_bits_data = coupler_to_plic_auto_fragmenter_in_d_bits_data; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63602.4]
  assign out_xbar_auto_out_0_a_ready = wrapped_error_device_auto_buffer_in_a_ready; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63601.4]
  assign out_xbar_auto_out_0_d_valid = wrapped_error_device_auto_buffer_in_d_valid; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63601.4]
  assign out_xbar_auto_out_0_d_bits_opcode = wrapped_error_device_auto_buffer_in_d_bits_opcode; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63601.4]
  assign out_xbar_auto_out_0_d_bits_param = wrapped_error_device_auto_buffer_in_d_bits_param; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63601.4]
  assign out_xbar_auto_out_0_d_bits_size = wrapped_error_device_auto_buffer_in_d_bits_size; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63601.4]
  assign out_xbar_auto_out_0_d_bits_source = wrapped_error_device_auto_buffer_in_d_bits_source; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63601.4]
  assign out_xbar_auto_out_0_d_bits_sink = wrapped_error_device_auto_buffer_in_d_bits_sink; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63601.4]
  assign out_xbar_auto_out_0_d_bits_denied = wrapped_error_device_auto_buffer_in_d_bits_denied; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63601.4]
  assign out_xbar_auto_out_0_d_bits_data = wrapped_error_device_auto_buffer_in_d_bits_data; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63601.4]
  assign out_xbar_auto_out_0_d_bits_corrupt = wrapped_error_device_auto_buffer_in_d_bits_corrupt; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63601.4]
  assign buffer_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63538.4]
  assign buffer_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63539.4]
  assign buffer_auto_in_a_valid = atomics_auto_out_a_valid; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@63607.4]
  assign buffer_auto_in_a_bits_opcode = atomics_auto_out_a_bits_opcode; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@63607.4]
  assign buffer_auto_in_a_bits_param = atomics_auto_out_a_bits_param; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@63607.4]
  assign buffer_auto_in_a_bits_size = atomics_auto_out_a_bits_size; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@63607.4]
  assign buffer_auto_in_a_bits_source = atomics_auto_out_a_bits_source; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@63607.4]
  assign buffer_auto_in_a_bits_address = atomics_auto_out_a_bits_address; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@63607.4]
  assign buffer_auto_in_a_bits_mask = atomics_auto_out_a_bits_mask; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@63607.4]
  assign buffer_auto_in_a_bits_data = atomics_auto_out_a_bits_data; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@63607.4]
  assign buffer_auto_in_a_bits_corrupt = atomics_auto_out_a_bits_corrupt; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@63607.4]
  assign buffer_auto_in_d_ready = atomics_auto_out_d_ready; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@63607.4]
  assign buffer_auto_out_a_ready = fixer_auto_in_a_ready; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@63606.4]
  assign buffer_auto_out_d_valid = fixer_auto_in_d_valid; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@63606.4]
  assign buffer_auto_out_d_bits_opcode = fixer_auto_in_d_bits_opcode; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@63606.4]
  assign buffer_auto_out_d_bits_param = fixer_auto_in_d_bits_param; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@63606.4]
  assign buffer_auto_out_d_bits_size = fixer_auto_in_d_bits_size; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@63606.4]
  assign buffer_auto_out_d_bits_source = fixer_auto_in_d_bits_source; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@63606.4]
  assign buffer_auto_out_d_bits_sink = fixer_auto_in_d_bits_sink; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@63606.4]
  assign buffer_auto_out_d_bits_denied = fixer_auto_in_d_bits_denied; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@63606.4]
  assign buffer_auto_out_d_bits_data = fixer_auto_in_d_bits_data; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@63606.4]
  assign buffer_auto_out_d_bits_corrupt = fixer_auto_in_d_bits_corrupt; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@63606.4]
  assign atomics_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63544.4]
  assign atomics_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63545.4]
  assign atomics_auto_in_a_valid = in_xbar_auto_out_a_valid; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63600.4]
  assign atomics_auto_in_a_bits_opcode = in_xbar_auto_out_a_bits_opcode; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63600.4]
  assign atomics_auto_in_a_bits_param = in_xbar_auto_out_a_bits_param; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63600.4]
  assign atomics_auto_in_a_bits_size = in_xbar_auto_out_a_bits_size; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63600.4]
  assign atomics_auto_in_a_bits_source = in_xbar_auto_out_a_bits_source; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63600.4]
  assign atomics_auto_in_a_bits_address = in_xbar_auto_out_a_bits_address; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63600.4]
  assign atomics_auto_in_a_bits_mask = in_xbar_auto_out_a_bits_mask; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63600.4]
  assign atomics_auto_in_a_bits_data = in_xbar_auto_out_a_bits_data; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63600.4]
  assign atomics_auto_in_a_bits_corrupt = in_xbar_auto_out_a_bits_corrupt; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63600.4]
  assign atomics_auto_in_d_ready = in_xbar_auto_out_d_ready; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63600.4]
  assign atomics_auto_out_a_ready = buffer_auto_in_a_ready; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@63607.4]
  assign atomics_auto_out_d_valid = buffer_auto_in_d_valid; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@63607.4]
  assign atomics_auto_out_d_bits_opcode = buffer_auto_in_d_bits_opcode; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@63607.4]
  assign atomics_auto_out_d_bits_param = buffer_auto_in_d_bits_param; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@63607.4]
  assign atomics_auto_out_d_bits_size = buffer_auto_in_d_bits_size; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@63607.4]
  assign atomics_auto_out_d_bits_source = buffer_auto_in_d_bits_source; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@63607.4]
  assign atomics_auto_out_d_bits_sink = buffer_auto_in_d_bits_sink; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@63607.4]
  assign atomics_auto_out_d_bits_denied = buffer_auto_in_d_bits_denied; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@63607.4]
  assign atomics_auto_out_d_bits_data = buffer_auto_in_d_bits_data; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@63607.4]
  assign atomics_auto_out_d_bits_corrupt = buffer_auto_in_d_bits_corrupt; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@63607.4]
  assign wrapped_error_device_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63550.4]
  assign wrapped_error_device_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63551.4]
  assign wrapped_error_device_auto_buffer_in_a_valid = out_xbar_auto_out_0_a_valid; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63601.4]
  assign wrapped_error_device_auto_buffer_in_a_bits_opcode = out_xbar_auto_out_0_a_bits_opcode; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63601.4]
  assign wrapped_error_device_auto_buffer_in_a_bits_param = out_xbar_auto_out_0_a_bits_param; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63601.4]
  assign wrapped_error_device_auto_buffer_in_a_bits_size = out_xbar_auto_out_0_a_bits_size; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63601.4]
  assign wrapped_error_device_auto_buffer_in_a_bits_source = out_xbar_auto_out_0_a_bits_source; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63601.4]
  assign wrapped_error_device_auto_buffer_in_a_bits_address = out_xbar_auto_out_0_a_bits_address; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63601.4]
  assign wrapped_error_device_auto_buffer_in_a_bits_mask = out_xbar_auto_out_0_a_bits_mask; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63601.4]
  assign wrapped_error_device_auto_buffer_in_a_bits_corrupt = out_xbar_auto_out_0_a_bits_corrupt; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63601.4]
  assign wrapped_error_device_auto_buffer_in_d_ready = out_xbar_auto_out_0_d_ready; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63601.4]
  assign coupler_to_plic_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63556.4]
  assign coupler_to_plic_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63557.4]
  assign coupler_to_plic_auto_fragmenter_in_a_valid = out_xbar_auto_out_1_a_valid; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63602.4]
  assign coupler_to_plic_auto_fragmenter_in_a_bits_opcode = out_xbar_auto_out_1_a_bits_opcode; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63602.4]
  assign coupler_to_plic_auto_fragmenter_in_a_bits_param = out_xbar_auto_out_1_a_bits_param; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63602.4]
  assign coupler_to_plic_auto_fragmenter_in_a_bits_size = out_xbar_auto_out_1_a_bits_size; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63602.4]
  assign coupler_to_plic_auto_fragmenter_in_a_bits_source = out_xbar_auto_out_1_a_bits_source; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63602.4]
  assign coupler_to_plic_auto_fragmenter_in_a_bits_address = out_xbar_auto_out_1_a_bits_address; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63602.4]
  assign coupler_to_plic_auto_fragmenter_in_a_bits_mask = out_xbar_auto_out_1_a_bits_mask; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63602.4]
  assign coupler_to_plic_auto_fragmenter_in_a_bits_data = out_xbar_auto_out_1_a_bits_data; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63602.4]
  assign coupler_to_plic_auto_fragmenter_in_a_bits_corrupt = out_xbar_auto_out_1_a_bits_corrupt; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63602.4]
  assign coupler_to_plic_auto_fragmenter_in_d_ready = out_xbar_auto_out_1_d_ready; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63602.4]
  assign coupler_to_plic_auto_fragmenter_out_a_ready = auto_coupler_to_plic_fragmenter_out_a_ready; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@63611.4]
  assign coupler_to_plic_auto_fragmenter_out_d_valid = auto_coupler_to_plic_fragmenter_out_d_valid; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@63611.4]
  assign coupler_to_plic_auto_fragmenter_out_d_bits_opcode = auto_coupler_to_plic_fragmenter_out_d_bits_opcode; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@63611.4]
  assign coupler_to_plic_auto_fragmenter_out_d_bits_size = auto_coupler_to_plic_fragmenter_out_d_bits_size; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@63611.4]
  assign coupler_to_plic_auto_fragmenter_out_d_bits_source = auto_coupler_to_plic_fragmenter_out_d_bits_source; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@63611.4]
  assign coupler_to_plic_auto_fragmenter_out_d_bits_data = auto_coupler_to_plic_fragmenter_out_d_bits_data; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@63611.4]
  assign coupler_to_clint_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63562.4]
  assign coupler_to_clint_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63563.4]
  assign coupler_to_clint_auto_fragmenter_in_a_valid = out_xbar_auto_out_2_a_valid; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63603.4]
  assign coupler_to_clint_auto_fragmenter_in_a_bits_opcode = out_xbar_auto_out_2_a_bits_opcode; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63603.4]
  assign coupler_to_clint_auto_fragmenter_in_a_bits_param = out_xbar_auto_out_2_a_bits_param; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63603.4]
  assign coupler_to_clint_auto_fragmenter_in_a_bits_size = out_xbar_auto_out_2_a_bits_size; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63603.4]
  assign coupler_to_clint_auto_fragmenter_in_a_bits_source = out_xbar_auto_out_2_a_bits_source; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63603.4]
  assign coupler_to_clint_auto_fragmenter_in_a_bits_address = out_xbar_auto_out_2_a_bits_address; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63603.4]
  assign coupler_to_clint_auto_fragmenter_in_a_bits_mask = out_xbar_auto_out_2_a_bits_mask; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63603.4]
  assign coupler_to_clint_auto_fragmenter_in_a_bits_data = out_xbar_auto_out_2_a_bits_data; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63603.4]
  assign coupler_to_clint_auto_fragmenter_in_a_bits_corrupt = out_xbar_auto_out_2_a_bits_corrupt; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63603.4]
  assign coupler_to_clint_auto_fragmenter_in_d_ready = out_xbar_auto_out_2_d_ready; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63603.4]
  assign coupler_to_clint_auto_fragmenter_out_a_ready = auto_coupler_to_clint_fragmenter_out_a_ready; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@63612.4]
  assign coupler_to_clint_auto_fragmenter_out_d_valid = auto_coupler_to_clint_fragmenter_out_d_valid; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@63612.4]
  assign coupler_to_clint_auto_fragmenter_out_d_bits_opcode = auto_coupler_to_clint_fragmenter_out_d_bits_opcode; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@63612.4]
  assign coupler_to_clint_auto_fragmenter_out_d_bits_size = auto_coupler_to_clint_fragmenter_out_d_bits_size; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@63612.4]
  assign coupler_to_clint_auto_fragmenter_out_d_bits_source = auto_coupler_to_clint_fragmenter_out_d_bits_source; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@63612.4]
  assign coupler_to_clint_auto_fragmenter_out_d_bits_data = auto_coupler_to_clint_fragmenter_out_d_bits_data; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@63612.4]
  assign coupler_to_debug_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63568.4]
  assign coupler_to_debug_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63569.4]
  assign coupler_to_debug_auto_fragmenter_in_a_valid = out_xbar_auto_out_3_a_valid; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63604.4]
  assign coupler_to_debug_auto_fragmenter_in_a_bits_opcode = out_xbar_auto_out_3_a_bits_opcode; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63604.4]
  assign coupler_to_debug_auto_fragmenter_in_a_bits_param = out_xbar_auto_out_3_a_bits_param; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63604.4]
  assign coupler_to_debug_auto_fragmenter_in_a_bits_size = out_xbar_auto_out_3_a_bits_size; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63604.4]
  assign coupler_to_debug_auto_fragmenter_in_a_bits_source = out_xbar_auto_out_3_a_bits_source; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63604.4]
  assign coupler_to_debug_auto_fragmenter_in_a_bits_address = out_xbar_auto_out_3_a_bits_address; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63604.4]
  assign coupler_to_debug_auto_fragmenter_in_a_bits_mask = out_xbar_auto_out_3_a_bits_mask; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63604.4]
  assign coupler_to_debug_auto_fragmenter_in_a_bits_data = out_xbar_auto_out_3_a_bits_data; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63604.4]
  assign coupler_to_debug_auto_fragmenter_in_a_bits_corrupt = out_xbar_auto_out_3_a_bits_corrupt; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63604.4]
  assign coupler_to_debug_auto_fragmenter_in_d_ready = out_xbar_auto_out_3_d_ready; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63604.4]
  assign coupler_to_debug_auto_fragmenter_out_a_ready = auto_coupler_to_debug_fragmenter_out_a_ready; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@63613.4]
  assign coupler_to_debug_auto_fragmenter_out_d_valid = auto_coupler_to_debug_fragmenter_out_d_valid; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@63613.4]
  assign coupler_to_debug_auto_fragmenter_out_d_bits_opcode = auto_coupler_to_debug_fragmenter_out_d_bits_opcode; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@63613.4]
  assign coupler_to_debug_auto_fragmenter_out_d_bits_size = auto_coupler_to_debug_fragmenter_out_d_bits_size; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@63613.4]
  assign coupler_to_debug_auto_fragmenter_out_d_bits_source = auto_coupler_to_debug_fragmenter_out_d_bits_source; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@63613.4]
  assign coupler_to_debug_auto_fragmenter_out_d_bits_data = auto_coupler_to_debug_fragmenter_out_d_bits_data; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@63613.4]
  assign buffer_1_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63580.4]
  assign buffer_1_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63581.4]
  assign buffer_1_auto_in_a_valid = auto_bus_xing_in_a_valid; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63609.4]
  assign buffer_1_auto_in_a_bits_opcode = auto_bus_xing_in_a_bits_opcode; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63609.4]
  assign buffer_1_auto_in_a_bits_param = auto_bus_xing_in_a_bits_param; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63609.4]
  assign buffer_1_auto_in_a_bits_size = auto_bus_xing_in_a_bits_size; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63609.4]
  assign buffer_1_auto_in_a_bits_source = auto_bus_xing_in_a_bits_source; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63609.4]
  assign buffer_1_auto_in_a_bits_address = auto_bus_xing_in_a_bits_address; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63609.4]
  assign buffer_1_auto_in_a_bits_mask = auto_bus_xing_in_a_bits_mask; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63609.4]
  assign buffer_1_auto_in_a_bits_data = auto_bus_xing_in_a_bits_data; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63609.4]
  assign buffer_1_auto_in_a_bits_corrupt = auto_bus_xing_in_a_bits_corrupt; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63609.4]
  assign buffer_1_auto_in_d_ready = auto_bus_xing_in_d_ready; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63609.4]
  assign buffer_1_auto_out_a_ready = in_xbar_auto_in_a_ready; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@63608.4]
  assign buffer_1_auto_out_d_valid = in_xbar_auto_in_d_valid; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@63608.4]
  assign buffer_1_auto_out_d_bits_opcode = in_xbar_auto_in_d_bits_opcode; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@63608.4]
  assign buffer_1_auto_out_d_bits_param = in_xbar_auto_in_d_bits_param; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@63608.4]
  assign buffer_1_auto_out_d_bits_size = in_xbar_auto_in_d_bits_size; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@63608.4]
  assign buffer_1_auto_out_d_bits_source = in_xbar_auto_in_d_bits_source; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@63608.4]
  assign buffer_1_auto_out_d_bits_sink = in_xbar_auto_in_d_bits_sink; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@63608.4]
  assign buffer_1_auto_out_d_bits_denied = in_xbar_auto_in_d_bits_denied; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@63608.4]
  assign buffer_1_auto_out_d_bits_data = in_xbar_auto_in_d_bits_data; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@63608.4]
  assign buffer_1_auto_out_d_bits_corrupt = in_xbar_auto_in_d_bits_corrupt; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@63608.4]
  assign coupler_to_bootrom_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63592.4]
  assign coupler_to_bootrom_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@63593.4]
  assign coupler_to_bootrom_auto_fragmenter_in_a_valid = out_xbar_auto_out_4_a_valid; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63605.4]
  assign coupler_to_bootrom_auto_fragmenter_in_a_bits_opcode = out_xbar_auto_out_4_a_bits_opcode; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63605.4]
  assign coupler_to_bootrom_auto_fragmenter_in_a_bits_param = out_xbar_auto_out_4_a_bits_param; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63605.4]
  assign coupler_to_bootrom_auto_fragmenter_in_a_bits_size = out_xbar_auto_out_4_a_bits_size; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63605.4]
  assign coupler_to_bootrom_auto_fragmenter_in_a_bits_source = out_xbar_auto_out_4_a_bits_source; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63605.4]
  assign coupler_to_bootrom_auto_fragmenter_in_a_bits_address = out_xbar_auto_out_4_a_bits_address; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63605.4]
  assign coupler_to_bootrom_auto_fragmenter_in_a_bits_mask = out_xbar_auto_out_4_a_bits_mask; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63605.4]
  assign coupler_to_bootrom_auto_fragmenter_in_a_bits_corrupt = out_xbar_auto_out_4_a_bits_corrupt; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63605.4]
  assign coupler_to_bootrom_auto_fragmenter_in_d_ready = out_xbar_auto_out_4_d_ready; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@63605.4]
  assign coupler_to_bootrom_auto_fragmenter_out_a_ready = auto_coupler_to_bootrom_fragmenter_out_a_ready; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@63614.4]
  assign coupler_to_bootrom_auto_fragmenter_out_d_valid = auto_coupler_to_bootrom_fragmenter_out_d_valid; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@63614.4]
  assign coupler_to_bootrom_auto_fragmenter_out_d_bits_size = auto_coupler_to_bootrom_fragmenter_out_d_bits_size; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@63614.4]
  assign coupler_to_bootrom_auto_fragmenter_out_d_bits_source = auto_coupler_to_bootrom_fragmenter_out_d_bits_source; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@63614.4]
  assign coupler_to_bootrom_auto_fragmenter_out_d_bits_data = auto_coupler_to_bootrom_fragmenter_out_d_bits_data; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@63614.4]
endmodule
`endif // __PeripheryBus_1

