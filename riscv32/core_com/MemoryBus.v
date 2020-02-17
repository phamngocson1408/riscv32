`include "include_module.v"
`ifdef __MemoryBus
module MemoryBus( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@42149.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@42150.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@42151.4]
  input         auto_coupler_to_memory_controller_named_axi4_axi4yank_out_aw_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@42152.4]
  output        auto_coupler_to_memory_controller_named_axi4_axi4yank_out_aw_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@42152.4]
  output [3:0]  auto_coupler_to_memory_controller_named_axi4_axi4yank_out_aw_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@42152.4]
  output [31:0] auto_coupler_to_memory_controller_named_axi4_axi4yank_out_aw_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@42152.4]
  output [7:0]  auto_coupler_to_memory_controller_named_axi4_axi4yank_out_aw_bits_len, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@42152.4]
  output [2:0]  auto_coupler_to_memory_controller_named_axi4_axi4yank_out_aw_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@42152.4]
  output [1:0]  auto_coupler_to_memory_controller_named_axi4_axi4yank_out_aw_bits_burst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@42152.4]
  output        auto_coupler_to_memory_controller_named_axi4_axi4yank_out_aw_bits_lock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@42152.4]
  output [3:0]  auto_coupler_to_memory_controller_named_axi4_axi4yank_out_aw_bits_cache, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@42152.4]
  output [2:0]  auto_coupler_to_memory_controller_named_axi4_axi4yank_out_aw_bits_prot, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@42152.4]
  output [3:0]  auto_coupler_to_memory_controller_named_axi4_axi4yank_out_aw_bits_qos, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@42152.4]
  input         auto_coupler_to_memory_controller_named_axi4_axi4yank_out_w_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@42152.4]
  output        auto_coupler_to_memory_controller_named_axi4_axi4yank_out_w_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@42152.4]
  output [31:0] auto_coupler_to_memory_controller_named_axi4_axi4yank_out_w_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@42152.4]
  output [3:0]  auto_coupler_to_memory_controller_named_axi4_axi4yank_out_w_bits_strb, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@42152.4]
  output        auto_coupler_to_memory_controller_named_axi4_axi4yank_out_w_bits_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@42152.4]
  output        auto_coupler_to_memory_controller_named_axi4_axi4yank_out_b_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@42152.4]
  input         auto_coupler_to_memory_controller_named_axi4_axi4yank_out_b_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@42152.4]
  input  [3:0]  auto_coupler_to_memory_controller_named_axi4_axi4yank_out_b_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@42152.4]
  input  [1:0]  auto_coupler_to_memory_controller_named_axi4_axi4yank_out_b_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@42152.4]
  input         auto_coupler_to_memory_controller_named_axi4_axi4yank_out_ar_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@42152.4]
  output        auto_coupler_to_memory_controller_named_axi4_axi4yank_out_ar_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@42152.4]
  output [3:0]  auto_coupler_to_memory_controller_named_axi4_axi4yank_out_ar_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@42152.4]
  output [31:0] auto_coupler_to_memory_controller_named_axi4_axi4yank_out_ar_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@42152.4]
  output [7:0]  auto_coupler_to_memory_controller_named_axi4_axi4yank_out_ar_bits_len, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@42152.4]
  output [2:0]  auto_coupler_to_memory_controller_named_axi4_axi4yank_out_ar_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@42152.4]
  output [1:0]  auto_coupler_to_memory_controller_named_axi4_axi4yank_out_ar_bits_burst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@42152.4]
  output        auto_coupler_to_memory_controller_named_axi4_axi4yank_out_ar_bits_lock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@42152.4]
  output [3:0]  auto_coupler_to_memory_controller_named_axi4_axi4yank_out_ar_bits_cache, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@42152.4]
  output [2:0]  auto_coupler_to_memory_controller_named_axi4_axi4yank_out_ar_bits_prot, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@42152.4]
  output [3:0]  auto_coupler_to_memory_controller_named_axi4_axi4yank_out_ar_bits_qos, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@42152.4]
  output        auto_coupler_to_memory_controller_named_axi4_axi4yank_out_r_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@42152.4]
  input         auto_coupler_to_memory_controller_named_axi4_axi4yank_out_r_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@42152.4]
  input  [3:0]  auto_coupler_to_memory_controller_named_axi4_axi4yank_out_r_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@42152.4]
  input  [31:0] auto_coupler_to_memory_controller_named_axi4_axi4yank_out_r_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@42152.4]
  input  [1:0]  auto_coupler_to_memory_controller_named_axi4_axi4yank_out_r_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@42152.4]
  input         auto_coupler_to_memory_controller_named_axi4_axi4yank_out_r_bits_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@42152.4]
  output        auto_coupler_from_coherence_manager_binder_in_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@42152.4]
  input         auto_coupler_from_coherence_manager_binder_in_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@42152.4]
  input  [2:0]  auto_coupler_from_coherence_manager_binder_in_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@42152.4]
  input  [2:0]  auto_coupler_from_coherence_manager_binder_in_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@42152.4]
  input  [2:0]  auto_coupler_from_coherence_manager_binder_in_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@42152.4]
  input  [1:0]  auto_coupler_from_coherence_manager_binder_in_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@42152.4]
  input  [31:0] auto_coupler_from_coherence_manager_binder_in_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@42152.4]
  input  [3:0]  auto_coupler_from_coherence_manager_binder_in_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@42152.4]
  input  [31:0] auto_coupler_from_coherence_manager_binder_in_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@42152.4]
  input         auto_coupler_from_coherence_manager_binder_in_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@42152.4]
  input         auto_coupler_from_coherence_manager_binder_in_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@42152.4]
  output        auto_coupler_from_coherence_manager_binder_in_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@42152.4]
  output [2:0]  auto_coupler_from_coherence_manager_binder_in_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@42152.4]
  output [2:0]  auto_coupler_from_coherence_manager_binder_in_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@42152.4]
  output [1:0]  auto_coupler_from_coherence_manager_binder_in_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@42152.4]
  output        auto_coupler_from_coherence_manager_binder_in_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@42152.4]
  output [31:0] auto_coupler_from_coherence_manager_binder_in_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@42152.4]
  output        auto_coupler_from_coherence_manager_binder_in_d_bits_corrupt // @[:freechips.rocketchip.system.DefaultRV32Config.fir@42152.4]
);
  wire  memory_bus_xbar_clock; // @[MemoryBus.scala 56:32:freechips.rocketchip.system.DefaultRV32Config.fir@42157.4]
  wire  memory_bus_xbar_reset; // @[MemoryBus.scala 56:32:freechips.rocketchip.system.DefaultRV32Config.fir@42157.4]
  wire  memory_bus_xbar_auto_in_a_ready; // @[MemoryBus.scala 56:32:freechips.rocketchip.system.DefaultRV32Config.fir@42157.4]
  wire  memory_bus_xbar_auto_in_a_valid; // @[MemoryBus.scala 56:32:freechips.rocketchip.system.DefaultRV32Config.fir@42157.4]
  wire [2:0] memory_bus_xbar_auto_in_a_bits_opcode; // @[MemoryBus.scala 56:32:freechips.rocketchip.system.DefaultRV32Config.fir@42157.4]
  wire [2:0] memory_bus_xbar_auto_in_a_bits_param; // @[MemoryBus.scala 56:32:freechips.rocketchip.system.DefaultRV32Config.fir@42157.4]
  wire [2:0] memory_bus_xbar_auto_in_a_bits_size; // @[MemoryBus.scala 56:32:freechips.rocketchip.system.DefaultRV32Config.fir@42157.4]
  wire [1:0] memory_bus_xbar_auto_in_a_bits_source; // @[MemoryBus.scala 56:32:freechips.rocketchip.system.DefaultRV32Config.fir@42157.4]
  wire [31:0] memory_bus_xbar_auto_in_a_bits_address; // @[MemoryBus.scala 56:32:freechips.rocketchip.system.DefaultRV32Config.fir@42157.4]
  wire [3:0] memory_bus_xbar_auto_in_a_bits_mask; // @[MemoryBus.scala 56:32:freechips.rocketchip.system.DefaultRV32Config.fir@42157.4]
  wire [31:0] memory_bus_xbar_auto_in_a_bits_data; // @[MemoryBus.scala 56:32:freechips.rocketchip.system.DefaultRV32Config.fir@42157.4]
  wire  memory_bus_xbar_auto_in_a_bits_corrupt; // @[MemoryBus.scala 56:32:freechips.rocketchip.system.DefaultRV32Config.fir@42157.4]
  wire  memory_bus_xbar_auto_in_d_ready; // @[MemoryBus.scala 56:32:freechips.rocketchip.system.DefaultRV32Config.fir@42157.4]
  wire  memory_bus_xbar_auto_in_d_valid; // @[MemoryBus.scala 56:32:freechips.rocketchip.system.DefaultRV32Config.fir@42157.4]
  wire [2:0] memory_bus_xbar_auto_in_d_bits_opcode; // @[MemoryBus.scala 56:32:freechips.rocketchip.system.DefaultRV32Config.fir@42157.4]
  wire [2:0] memory_bus_xbar_auto_in_d_bits_size; // @[MemoryBus.scala 56:32:freechips.rocketchip.system.DefaultRV32Config.fir@42157.4]
  wire [1:0] memory_bus_xbar_auto_in_d_bits_source; // @[MemoryBus.scala 56:32:freechips.rocketchip.system.DefaultRV32Config.fir@42157.4]
  wire  memory_bus_xbar_auto_in_d_bits_denied; // @[MemoryBus.scala 56:32:freechips.rocketchip.system.DefaultRV32Config.fir@42157.4]
  wire [31:0] memory_bus_xbar_auto_in_d_bits_data; // @[MemoryBus.scala 56:32:freechips.rocketchip.system.DefaultRV32Config.fir@42157.4]
  wire  memory_bus_xbar_auto_in_d_bits_corrupt; // @[MemoryBus.scala 56:32:freechips.rocketchip.system.DefaultRV32Config.fir@42157.4]
  wire  memory_bus_xbar_auto_out_a_ready; // @[MemoryBus.scala 56:32:freechips.rocketchip.system.DefaultRV32Config.fir@42157.4]
  wire  memory_bus_xbar_auto_out_a_valid; // @[MemoryBus.scala 56:32:freechips.rocketchip.system.DefaultRV32Config.fir@42157.4]
  wire [2:0] memory_bus_xbar_auto_out_a_bits_opcode; // @[MemoryBus.scala 56:32:freechips.rocketchip.system.DefaultRV32Config.fir@42157.4]
  wire [2:0] memory_bus_xbar_auto_out_a_bits_param; // @[MemoryBus.scala 56:32:freechips.rocketchip.system.DefaultRV32Config.fir@42157.4]
  wire [2:0] memory_bus_xbar_auto_out_a_bits_size; // @[MemoryBus.scala 56:32:freechips.rocketchip.system.DefaultRV32Config.fir@42157.4]
  wire [1:0] memory_bus_xbar_auto_out_a_bits_source; // @[MemoryBus.scala 56:32:freechips.rocketchip.system.DefaultRV32Config.fir@42157.4]
  wire [31:0] memory_bus_xbar_auto_out_a_bits_address; // @[MemoryBus.scala 56:32:freechips.rocketchip.system.DefaultRV32Config.fir@42157.4]
  wire [3:0] memory_bus_xbar_auto_out_a_bits_mask; // @[MemoryBus.scala 56:32:freechips.rocketchip.system.DefaultRV32Config.fir@42157.4]
  wire [31:0] memory_bus_xbar_auto_out_a_bits_data; // @[MemoryBus.scala 56:32:freechips.rocketchip.system.DefaultRV32Config.fir@42157.4]
  wire  memory_bus_xbar_auto_out_a_bits_corrupt; // @[MemoryBus.scala 56:32:freechips.rocketchip.system.DefaultRV32Config.fir@42157.4]
  wire  memory_bus_xbar_auto_out_d_ready; // @[MemoryBus.scala 56:32:freechips.rocketchip.system.DefaultRV32Config.fir@42157.4]
  wire  memory_bus_xbar_auto_out_d_valid; // @[MemoryBus.scala 56:32:freechips.rocketchip.system.DefaultRV32Config.fir@42157.4]
  wire [2:0] memory_bus_xbar_auto_out_d_bits_opcode; // @[MemoryBus.scala 56:32:freechips.rocketchip.system.DefaultRV32Config.fir@42157.4]
  wire [2:0] memory_bus_xbar_auto_out_d_bits_size; // @[MemoryBus.scala 56:32:freechips.rocketchip.system.DefaultRV32Config.fir@42157.4]
  wire [1:0] memory_bus_xbar_auto_out_d_bits_source; // @[MemoryBus.scala 56:32:freechips.rocketchip.system.DefaultRV32Config.fir@42157.4]
  wire  memory_bus_xbar_auto_out_d_bits_denied; // @[MemoryBus.scala 56:32:freechips.rocketchip.system.DefaultRV32Config.fir@42157.4]
  wire [31:0] memory_bus_xbar_auto_out_d_bits_data; // @[MemoryBus.scala 56:32:freechips.rocketchip.system.DefaultRV32Config.fir@42157.4]
  wire  memory_bus_xbar_auto_out_d_bits_corrupt; // @[MemoryBus.scala 56:32:freechips.rocketchip.system.DefaultRV32Config.fir@42157.4]
  wire  coupler_from_coherence_manager_clock; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42163.4]
  wire  coupler_from_coherence_manager_reset; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42163.4]
  wire  coupler_from_coherence_manager_auto_binder_in_a_ready; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42163.4]
  wire  coupler_from_coherence_manager_auto_binder_in_a_valid; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42163.4]
  wire [2:0] coupler_from_coherence_manager_auto_binder_in_a_bits_opcode; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42163.4]
  wire [2:0] coupler_from_coherence_manager_auto_binder_in_a_bits_param; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42163.4]
  wire [2:0] coupler_from_coherence_manager_auto_binder_in_a_bits_size; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42163.4]
  wire [1:0] coupler_from_coherence_manager_auto_binder_in_a_bits_source; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42163.4]
  wire [31:0] coupler_from_coherence_manager_auto_binder_in_a_bits_address; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42163.4]
  wire [3:0] coupler_from_coherence_manager_auto_binder_in_a_bits_mask; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42163.4]
  wire [31:0] coupler_from_coherence_manager_auto_binder_in_a_bits_data; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42163.4]
  wire  coupler_from_coherence_manager_auto_binder_in_a_bits_corrupt; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42163.4]
  wire  coupler_from_coherence_manager_auto_binder_in_d_ready; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42163.4]
  wire  coupler_from_coherence_manager_auto_binder_in_d_valid; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42163.4]
  wire [2:0] coupler_from_coherence_manager_auto_binder_in_d_bits_opcode; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42163.4]
  wire [2:0] coupler_from_coherence_manager_auto_binder_in_d_bits_size; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42163.4]
  wire [1:0] coupler_from_coherence_manager_auto_binder_in_d_bits_source; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42163.4]
  wire  coupler_from_coherence_manager_auto_binder_in_d_bits_denied; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42163.4]
  wire [31:0] coupler_from_coherence_manager_auto_binder_in_d_bits_data; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42163.4]
  wire  coupler_from_coherence_manager_auto_binder_in_d_bits_corrupt; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42163.4]
  wire  coupler_from_coherence_manager_auto_binder_out_a_ready; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42163.4]
  wire  coupler_from_coherence_manager_auto_binder_out_a_valid; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42163.4]
  wire [2:0] coupler_from_coherence_manager_auto_binder_out_a_bits_opcode; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42163.4]
  wire [2:0] coupler_from_coherence_manager_auto_binder_out_a_bits_param; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42163.4]
  wire [2:0] coupler_from_coherence_manager_auto_binder_out_a_bits_size; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42163.4]
  wire [1:0] coupler_from_coherence_manager_auto_binder_out_a_bits_source; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42163.4]
  wire [31:0] coupler_from_coherence_manager_auto_binder_out_a_bits_address; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42163.4]
  wire [3:0] coupler_from_coherence_manager_auto_binder_out_a_bits_mask; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42163.4]
  wire [31:0] coupler_from_coherence_manager_auto_binder_out_a_bits_data; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42163.4]
  wire  coupler_from_coherence_manager_auto_binder_out_a_bits_corrupt; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42163.4]
  wire  coupler_from_coherence_manager_auto_binder_out_d_ready; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42163.4]
  wire  coupler_from_coherence_manager_auto_binder_out_d_valid; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42163.4]
  wire [2:0] coupler_from_coherence_manager_auto_binder_out_d_bits_opcode; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42163.4]
  wire [2:0] coupler_from_coherence_manager_auto_binder_out_d_bits_size; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42163.4]
  wire [1:0] coupler_from_coherence_manager_auto_binder_out_d_bits_source; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42163.4]
  wire  coupler_from_coherence_manager_auto_binder_out_d_bits_denied; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42163.4]
  wire [31:0] coupler_from_coherence_manager_auto_binder_out_d_bits_data; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42163.4]
  wire  coupler_from_coherence_manager_auto_binder_out_d_bits_corrupt; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42163.4]
  wire  coupler_to_memory_controller_named_axi4_clock; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42169.4]
  wire  coupler_to_memory_controller_named_axi4_reset; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42169.4]
  wire  coupler_to_memory_controller_named_axi4_auto_picker_in_a_ready; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42169.4]
  wire  coupler_to_memory_controller_named_axi4_auto_picker_in_a_valid; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42169.4]
  wire [2:0] coupler_to_memory_controller_named_axi4_auto_picker_in_a_bits_opcode; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42169.4]
  wire [2:0] coupler_to_memory_controller_named_axi4_auto_picker_in_a_bits_param; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42169.4]
  wire [2:0] coupler_to_memory_controller_named_axi4_auto_picker_in_a_bits_size; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42169.4]
  wire [1:0] coupler_to_memory_controller_named_axi4_auto_picker_in_a_bits_source; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42169.4]
  wire [31:0] coupler_to_memory_controller_named_axi4_auto_picker_in_a_bits_address; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42169.4]
  wire [3:0] coupler_to_memory_controller_named_axi4_auto_picker_in_a_bits_mask; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42169.4]
  wire [31:0] coupler_to_memory_controller_named_axi4_auto_picker_in_a_bits_data; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42169.4]
  wire  coupler_to_memory_controller_named_axi4_auto_picker_in_a_bits_corrupt; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42169.4]
  wire  coupler_to_memory_controller_named_axi4_auto_picker_in_d_ready; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42169.4]
  wire  coupler_to_memory_controller_named_axi4_auto_picker_in_d_valid; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42169.4]
  wire [2:0] coupler_to_memory_controller_named_axi4_auto_picker_in_d_bits_opcode; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42169.4]
  wire [2:0] coupler_to_memory_controller_named_axi4_auto_picker_in_d_bits_size; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42169.4]
  wire [1:0] coupler_to_memory_controller_named_axi4_auto_picker_in_d_bits_source; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42169.4]
  wire  coupler_to_memory_controller_named_axi4_auto_picker_in_d_bits_denied; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42169.4]
  wire [31:0] coupler_to_memory_controller_named_axi4_auto_picker_in_d_bits_data; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42169.4]
  wire  coupler_to_memory_controller_named_axi4_auto_picker_in_d_bits_corrupt; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42169.4]
  wire  coupler_to_memory_controller_named_axi4_auto_axi4yank_out_aw_ready; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42169.4]
  wire  coupler_to_memory_controller_named_axi4_auto_axi4yank_out_aw_valid; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42169.4]
  wire [3:0] coupler_to_memory_controller_named_axi4_auto_axi4yank_out_aw_bits_id; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42169.4]
  wire [31:0] coupler_to_memory_controller_named_axi4_auto_axi4yank_out_aw_bits_addr; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42169.4]
  wire [7:0] coupler_to_memory_controller_named_axi4_auto_axi4yank_out_aw_bits_len; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42169.4]
  wire [2:0] coupler_to_memory_controller_named_axi4_auto_axi4yank_out_aw_bits_size; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42169.4]
  wire [1:0] coupler_to_memory_controller_named_axi4_auto_axi4yank_out_aw_bits_burst; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42169.4]
  wire  coupler_to_memory_controller_named_axi4_auto_axi4yank_out_aw_bits_lock; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42169.4]
  wire [3:0] coupler_to_memory_controller_named_axi4_auto_axi4yank_out_aw_bits_cache; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42169.4]
  wire [2:0] coupler_to_memory_controller_named_axi4_auto_axi4yank_out_aw_bits_prot; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42169.4]
  wire [3:0] coupler_to_memory_controller_named_axi4_auto_axi4yank_out_aw_bits_qos; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42169.4]
  wire  coupler_to_memory_controller_named_axi4_auto_axi4yank_out_w_ready; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42169.4]
  wire  coupler_to_memory_controller_named_axi4_auto_axi4yank_out_w_valid; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42169.4]
  wire [31:0] coupler_to_memory_controller_named_axi4_auto_axi4yank_out_w_bits_data; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42169.4]
  wire [3:0] coupler_to_memory_controller_named_axi4_auto_axi4yank_out_w_bits_strb; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42169.4]
  wire  coupler_to_memory_controller_named_axi4_auto_axi4yank_out_w_bits_last; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42169.4]
  wire  coupler_to_memory_controller_named_axi4_auto_axi4yank_out_b_ready; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42169.4]
  wire  coupler_to_memory_controller_named_axi4_auto_axi4yank_out_b_valid; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42169.4]
  wire [3:0] coupler_to_memory_controller_named_axi4_auto_axi4yank_out_b_bits_id; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42169.4]
  wire [1:0] coupler_to_memory_controller_named_axi4_auto_axi4yank_out_b_bits_resp; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42169.4]
  wire  coupler_to_memory_controller_named_axi4_auto_axi4yank_out_ar_ready; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42169.4]
  wire  coupler_to_memory_controller_named_axi4_auto_axi4yank_out_ar_valid; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42169.4]
  wire [3:0] coupler_to_memory_controller_named_axi4_auto_axi4yank_out_ar_bits_id; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42169.4]
  wire [31:0] coupler_to_memory_controller_named_axi4_auto_axi4yank_out_ar_bits_addr; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42169.4]
  wire [7:0] coupler_to_memory_controller_named_axi4_auto_axi4yank_out_ar_bits_len; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42169.4]
  wire [2:0] coupler_to_memory_controller_named_axi4_auto_axi4yank_out_ar_bits_size; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42169.4]
  wire [1:0] coupler_to_memory_controller_named_axi4_auto_axi4yank_out_ar_bits_burst; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42169.4]
  wire  coupler_to_memory_controller_named_axi4_auto_axi4yank_out_ar_bits_lock; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42169.4]
  wire [3:0] coupler_to_memory_controller_named_axi4_auto_axi4yank_out_ar_bits_cache; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42169.4]
  wire [2:0] coupler_to_memory_controller_named_axi4_auto_axi4yank_out_ar_bits_prot; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42169.4]
  wire [3:0] coupler_to_memory_controller_named_axi4_auto_axi4yank_out_ar_bits_qos; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42169.4]
  wire  coupler_to_memory_controller_named_axi4_auto_axi4yank_out_r_ready; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42169.4]
  wire  coupler_to_memory_controller_named_axi4_auto_axi4yank_out_r_valid; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42169.4]
  wire [3:0] coupler_to_memory_controller_named_axi4_auto_axi4yank_out_r_bits_id; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42169.4]
  wire [31:0] coupler_to_memory_controller_named_axi4_auto_axi4yank_out_r_bits_data; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42169.4]
  wire [1:0] coupler_to_memory_controller_named_axi4_auto_axi4yank_out_r_bits_resp; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42169.4]
  wire  coupler_to_memory_controller_named_axi4_auto_axi4yank_out_r_bits_last; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42169.4]
  TLXbar_4 memory_bus_xbar ( // @[MemoryBus.scala 56:32:freechips.rocketchip.system.DefaultRV32Config.fir@42157.4]
    .clock(memory_bus_xbar_clock),
    .reset(memory_bus_xbar_reset),
    .auto_in_a_ready(memory_bus_xbar_auto_in_a_ready),
    .auto_in_a_valid(memory_bus_xbar_auto_in_a_valid),
    .auto_in_a_bits_opcode(memory_bus_xbar_auto_in_a_bits_opcode),
    .auto_in_a_bits_param(memory_bus_xbar_auto_in_a_bits_param),
    .auto_in_a_bits_size(memory_bus_xbar_auto_in_a_bits_size),
    .auto_in_a_bits_source(memory_bus_xbar_auto_in_a_bits_source),
    .auto_in_a_bits_address(memory_bus_xbar_auto_in_a_bits_address),
    .auto_in_a_bits_mask(memory_bus_xbar_auto_in_a_bits_mask),
    .auto_in_a_bits_data(memory_bus_xbar_auto_in_a_bits_data),
    .auto_in_a_bits_corrupt(memory_bus_xbar_auto_in_a_bits_corrupt),
    .auto_in_d_ready(memory_bus_xbar_auto_in_d_ready),
    .auto_in_d_valid(memory_bus_xbar_auto_in_d_valid),
    .auto_in_d_bits_opcode(memory_bus_xbar_auto_in_d_bits_opcode),
    .auto_in_d_bits_size(memory_bus_xbar_auto_in_d_bits_size),
    .auto_in_d_bits_source(memory_bus_xbar_auto_in_d_bits_source),
    .auto_in_d_bits_denied(memory_bus_xbar_auto_in_d_bits_denied),
    .auto_in_d_bits_data(memory_bus_xbar_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(memory_bus_xbar_auto_in_d_bits_corrupt),
    .auto_out_a_ready(memory_bus_xbar_auto_out_a_ready),
    .auto_out_a_valid(memory_bus_xbar_auto_out_a_valid),
    .auto_out_a_bits_opcode(memory_bus_xbar_auto_out_a_bits_opcode),
    .auto_out_a_bits_param(memory_bus_xbar_auto_out_a_bits_param),
    .auto_out_a_bits_size(memory_bus_xbar_auto_out_a_bits_size),
    .auto_out_a_bits_source(memory_bus_xbar_auto_out_a_bits_source),
    .auto_out_a_bits_address(memory_bus_xbar_auto_out_a_bits_address),
    .auto_out_a_bits_mask(memory_bus_xbar_auto_out_a_bits_mask),
    .auto_out_a_bits_data(memory_bus_xbar_auto_out_a_bits_data),
    .auto_out_a_bits_corrupt(memory_bus_xbar_auto_out_a_bits_corrupt),
    .auto_out_d_ready(memory_bus_xbar_auto_out_d_ready),
    .auto_out_d_valid(memory_bus_xbar_auto_out_d_valid),
    .auto_out_d_bits_opcode(memory_bus_xbar_auto_out_d_bits_opcode),
    .auto_out_d_bits_size(memory_bus_xbar_auto_out_d_bits_size),
    .auto_out_d_bits_source(memory_bus_xbar_auto_out_d_bits_source),
    .auto_out_d_bits_denied(memory_bus_xbar_auto_out_d_bits_denied),
    .auto_out_d_bits_data(memory_bus_xbar_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(memory_bus_xbar_auto_out_d_bits_corrupt)
  );
  SimpleLazyModule_6 coupler_from_coherence_manager ( // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42163.4]
    .clock(coupler_from_coherence_manager_clock),
    .reset(coupler_from_coherence_manager_reset),
    .auto_binder_in_a_ready(coupler_from_coherence_manager_auto_binder_in_a_ready),
    .auto_binder_in_a_valid(coupler_from_coherence_manager_auto_binder_in_a_valid),
    .auto_binder_in_a_bits_opcode(coupler_from_coherence_manager_auto_binder_in_a_bits_opcode),
    .auto_binder_in_a_bits_param(coupler_from_coherence_manager_auto_binder_in_a_bits_param),
    .auto_binder_in_a_bits_size(coupler_from_coherence_manager_auto_binder_in_a_bits_size),
    .auto_binder_in_a_bits_source(coupler_from_coherence_manager_auto_binder_in_a_bits_source),
    .auto_binder_in_a_bits_address(coupler_from_coherence_manager_auto_binder_in_a_bits_address),
    .auto_binder_in_a_bits_mask(coupler_from_coherence_manager_auto_binder_in_a_bits_mask),
    .auto_binder_in_a_bits_data(coupler_from_coherence_manager_auto_binder_in_a_bits_data),
    .auto_binder_in_a_bits_corrupt(coupler_from_coherence_manager_auto_binder_in_a_bits_corrupt),
    .auto_binder_in_d_ready(coupler_from_coherence_manager_auto_binder_in_d_ready),
    .auto_binder_in_d_valid(coupler_from_coherence_manager_auto_binder_in_d_valid),
    .auto_binder_in_d_bits_opcode(coupler_from_coherence_manager_auto_binder_in_d_bits_opcode),
    .auto_binder_in_d_bits_size(coupler_from_coherence_manager_auto_binder_in_d_bits_size),
    .auto_binder_in_d_bits_source(coupler_from_coherence_manager_auto_binder_in_d_bits_source),
    .auto_binder_in_d_bits_denied(coupler_from_coherence_manager_auto_binder_in_d_bits_denied),
    .auto_binder_in_d_bits_data(coupler_from_coherence_manager_auto_binder_in_d_bits_data),
    .auto_binder_in_d_bits_corrupt(coupler_from_coherence_manager_auto_binder_in_d_bits_corrupt),
    .auto_binder_out_a_ready(coupler_from_coherence_manager_auto_binder_out_a_ready),
    .auto_binder_out_a_valid(coupler_from_coherence_manager_auto_binder_out_a_valid),
    .auto_binder_out_a_bits_opcode(coupler_from_coherence_manager_auto_binder_out_a_bits_opcode),
    .auto_binder_out_a_bits_param(coupler_from_coherence_manager_auto_binder_out_a_bits_param),
    .auto_binder_out_a_bits_size(coupler_from_coherence_manager_auto_binder_out_a_bits_size),
    .auto_binder_out_a_bits_source(coupler_from_coherence_manager_auto_binder_out_a_bits_source),
    .auto_binder_out_a_bits_address(coupler_from_coherence_manager_auto_binder_out_a_bits_address),
    .auto_binder_out_a_bits_mask(coupler_from_coherence_manager_auto_binder_out_a_bits_mask),
    .auto_binder_out_a_bits_data(coupler_from_coherence_manager_auto_binder_out_a_bits_data),
    .auto_binder_out_a_bits_corrupt(coupler_from_coherence_manager_auto_binder_out_a_bits_corrupt),
    .auto_binder_out_d_ready(coupler_from_coherence_manager_auto_binder_out_d_ready),
    .auto_binder_out_d_valid(coupler_from_coherence_manager_auto_binder_out_d_valid),
    .auto_binder_out_d_bits_opcode(coupler_from_coherence_manager_auto_binder_out_d_bits_opcode),
    .auto_binder_out_d_bits_size(coupler_from_coherence_manager_auto_binder_out_d_bits_size),
    .auto_binder_out_d_bits_source(coupler_from_coherence_manager_auto_binder_out_d_bits_source),
    .auto_binder_out_d_bits_denied(coupler_from_coherence_manager_auto_binder_out_d_bits_denied),
    .auto_binder_out_d_bits_data(coupler_from_coherence_manager_auto_binder_out_d_bits_data),
    .auto_binder_out_d_bits_corrupt(coupler_from_coherence_manager_auto_binder_out_d_bits_corrupt)
  );
  SimpleLazyModule_7 coupler_to_memory_controller_named_axi4 ( // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@42169.4]
    .clock(coupler_to_memory_controller_named_axi4_clock),
    .reset(coupler_to_memory_controller_named_axi4_reset),
    .auto_picker_in_a_ready(coupler_to_memory_controller_named_axi4_auto_picker_in_a_ready),
    .auto_picker_in_a_valid(coupler_to_memory_controller_named_axi4_auto_picker_in_a_valid),
    .auto_picker_in_a_bits_opcode(coupler_to_memory_controller_named_axi4_auto_picker_in_a_bits_opcode),
    .auto_picker_in_a_bits_param(coupler_to_memory_controller_named_axi4_auto_picker_in_a_bits_param),
    .auto_picker_in_a_bits_size(coupler_to_memory_controller_named_axi4_auto_picker_in_a_bits_size),
    .auto_picker_in_a_bits_source(coupler_to_memory_controller_named_axi4_auto_picker_in_a_bits_source),
    .auto_picker_in_a_bits_address(coupler_to_memory_controller_named_axi4_auto_picker_in_a_bits_address),
    .auto_picker_in_a_bits_mask(coupler_to_memory_controller_named_axi4_auto_picker_in_a_bits_mask),
    .auto_picker_in_a_bits_data(coupler_to_memory_controller_named_axi4_auto_picker_in_a_bits_data),
    .auto_picker_in_a_bits_corrupt(coupler_to_memory_controller_named_axi4_auto_picker_in_a_bits_corrupt),
    .auto_picker_in_d_ready(coupler_to_memory_controller_named_axi4_auto_picker_in_d_ready),
    .auto_picker_in_d_valid(coupler_to_memory_controller_named_axi4_auto_picker_in_d_valid),
    .auto_picker_in_d_bits_opcode(coupler_to_memory_controller_named_axi4_auto_picker_in_d_bits_opcode),
    .auto_picker_in_d_bits_size(coupler_to_memory_controller_named_axi4_auto_picker_in_d_bits_size),
    .auto_picker_in_d_bits_source(coupler_to_memory_controller_named_axi4_auto_picker_in_d_bits_source),
    .auto_picker_in_d_bits_denied(coupler_to_memory_controller_named_axi4_auto_picker_in_d_bits_denied),
    .auto_picker_in_d_bits_data(coupler_to_memory_controller_named_axi4_auto_picker_in_d_bits_data),
    .auto_picker_in_d_bits_corrupt(coupler_to_memory_controller_named_axi4_auto_picker_in_d_bits_corrupt),
    .auto_axi4yank_out_aw_ready(coupler_to_memory_controller_named_axi4_auto_axi4yank_out_aw_ready),
    .auto_axi4yank_out_aw_valid(coupler_to_memory_controller_named_axi4_auto_axi4yank_out_aw_valid),
    .auto_axi4yank_out_aw_bits_id(coupler_to_memory_controller_named_axi4_auto_axi4yank_out_aw_bits_id),
    .auto_axi4yank_out_aw_bits_addr(coupler_to_memory_controller_named_axi4_auto_axi4yank_out_aw_bits_addr),
    .auto_axi4yank_out_aw_bits_len(coupler_to_memory_controller_named_axi4_auto_axi4yank_out_aw_bits_len),
    .auto_axi4yank_out_aw_bits_size(coupler_to_memory_controller_named_axi4_auto_axi4yank_out_aw_bits_size),
    .auto_axi4yank_out_aw_bits_burst(coupler_to_memory_controller_named_axi4_auto_axi4yank_out_aw_bits_burst),
    .auto_axi4yank_out_aw_bits_lock(coupler_to_memory_controller_named_axi4_auto_axi4yank_out_aw_bits_lock),
    .auto_axi4yank_out_aw_bits_cache(coupler_to_memory_controller_named_axi4_auto_axi4yank_out_aw_bits_cache),
    .auto_axi4yank_out_aw_bits_prot(coupler_to_memory_controller_named_axi4_auto_axi4yank_out_aw_bits_prot),
    .auto_axi4yank_out_aw_bits_qos(coupler_to_memory_controller_named_axi4_auto_axi4yank_out_aw_bits_qos),
    .auto_axi4yank_out_w_ready(coupler_to_memory_controller_named_axi4_auto_axi4yank_out_w_ready),
    .auto_axi4yank_out_w_valid(coupler_to_memory_controller_named_axi4_auto_axi4yank_out_w_valid),
    .auto_axi4yank_out_w_bits_data(coupler_to_memory_controller_named_axi4_auto_axi4yank_out_w_bits_data),
    .auto_axi4yank_out_w_bits_strb(coupler_to_memory_controller_named_axi4_auto_axi4yank_out_w_bits_strb),
    .auto_axi4yank_out_w_bits_last(coupler_to_memory_controller_named_axi4_auto_axi4yank_out_w_bits_last),
    .auto_axi4yank_out_b_ready(coupler_to_memory_controller_named_axi4_auto_axi4yank_out_b_ready),
    .auto_axi4yank_out_b_valid(coupler_to_memory_controller_named_axi4_auto_axi4yank_out_b_valid),
    .auto_axi4yank_out_b_bits_id(coupler_to_memory_controller_named_axi4_auto_axi4yank_out_b_bits_id),
    .auto_axi4yank_out_b_bits_resp(coupler_to_memory_controller_named_axi4_auto_axi4yank_out_b_bits_resp),
    .auto_axi4yank_out_ar_ready(coupler_to_memory_controller_named_axi4_auto_axi4yank_out_ar_ready),
    .auto_axi4yank_out_ar_valid(coupler_to_memory_controller_named_axi4_auto_axi4yank_out_ar_valid),
    .auto_axi4yank_out_ar_bits_id(coupler_to_memory_controller_named_axi4_auto_axi4yank_out_ar_bits_id),
    .auto_axi4yank_out_ar_bits_addr(coupler_to_memory_controller_named_axi4_auto_axi4yank_out_ar_bits_addr),
    .auto_axi4yank_out_ar_bits_len(coupler_to_memory_controller_named_axi4_auto_axi4yank_out_ar_bits_len),
    .auto_axi4yank_out_ar_bits_size(coupler_to_memory_controller_named_axi4_auto_axi4yank_out_ar_bits_size),
    .auto_axi4yank_out_ar_bits_burst(coupler_to_memory_controller_named_axi4_auto_axi4yank_out_ar_bits_burst),
    .auto_axi4yank_out_ar_bits_lock(coupler_to_memory_controller_named_axi4_auto_axi4yank_out_ar_bits_lock),
    .auto_axi4yank_out_ar_bits_cache(coupler_to_memory_controller_named_axi4_auto_axi4yank_out_ar_bits_cache),
    .auto_axi4yank_out_ar_bits_prot(coupler_to_memory_controller_named_axi4_auto_axi4yank_out_ar_bits_prot),
    .auto_axi4yank_out_ar_bits_qos(coupler_to_memory_controller_named_axi4_auto_axi4yank_out_ar_bits_qos),
    .auto_axi4yank_out_r_ready(coupler_to_memory_controller_named_axi4_auto_axi4yank_out_r_ready),
    .auto_axi4yank_out_r_valid(coupler_to_memory_controller_named_axi4_auto_axi4yank_out_r_valid),
    .auto_axi4yank_out_r_bits_id(coupler_to_memory_controller_named_axi4_auto_axi4yank_out_r_bits_id),
    .auto_axi4yank_out_r_bits_data(coupler_to_memory_controller_named_axi4_auto_axi4yank_out_r_bits_data),
    .auto_axi4yank_out_r_bits_resp(coupler_to_memory_controller_named_axi4_auto_axi4yank_out_r_bits_resp),
    .auto_axi4yank_out_r_bits_last(coupler_to_memory_controller_named_axi4_auto_axi4yank_out_r_bits_last)
  );
  assign auto_coupler_to_memory_controller_named_axi4_axi4yank_out_aw_valid = coupler_to_memory_controller_named_axi4_auto_axi4yank_out_aw_valid; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@42178.4]
  assign auto_coupler_to_memory_controller_named_axi4_axi4yank_out_aw_bits_id = coupler_to_memory_controller_named_axi4_auto_axi4yank_out_aw_bits_id; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@42178.4]
  assign auto_coupler_to_memory_controller_named_axi4_axi4yank_out_aw_bits_addr = coupler_to_memory_controller_named_axi4_auto_axi4yank_out_aw_bits_addr; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@42178.4]
  assign auto_coupler_to_memory_controller_named_axi4_axi4yank_out_aw_bits_len = coupler_to_memory_controller_named_axi4_auto_axi4yank_out_aw_bits_len; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@42178.4]
  assign auto_coupler_to_memory_controller_named_axi4_axi4yank_out_aw_bits_size = coupler_to_memory_controller_named_axi4_auto_axi4yank_out_aw_bits_size; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@42178.4]
  assign auto_coupler_to_memory_controller_named_axi4_axi4yank_out_aw_bits_burst = coupler_to_memory_controller_named_axi4_auto_axi4yank_out_aw_bits_burst; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@42178.4]
  assign auto_coupler_to_memory_controller_named_axi4_axi4yank_out_aw_bits_lock = coupler_to_memory_controller_named_axi4_auto_axi4yank_out_aw_bits_lock; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@42178.4]
  assign auto_coupler_to_memory_controller_named_axi4_axi4yank_out_aw_bits_cache = coupler_to_memory_controller_named_axi4_auto_axi4yank_out_aw_bits_cache; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@42178.4]
  assign auto_coupler_to_memory_controller_named_axi4_axi4yank_out_aw_bits_prot = coupler_to_memory_controller_named_axi4_auto_axi4yank_out_aw_bits_prot; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@42178.4]
  assign auto_coupler_to_memory_controller_named_axi4_axi4yank_out_aw_bits_qos = coupler_to_memory_controller_named_axi4_auto_axi4yank_out_aw_bits_qos; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@42178.4]
  assign auto_coupler_to_memory_controller_named_axi4_axi4yank_out_w_valid = coupler_to_memory_controller_named_axi4_auto_axi4yank_out_w_valid; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@42178.4]
  assign auto_coupler_to_memory_controller_named_axi4_axi4yank_out_w_bits_data = coupler_to_memory_controller_named_axi4_auto_axi4yank_out_w_bits_data; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@42178.4]
  assign auto_coupler_to_memory_controller_named_axi4_axi4yank_out_w_bits_strb = coupler_to_memory_controller_named_axi4_auto_axi4yank_out_w_bits_strb; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@42178.4]
  assign auto_coupler_to_memory_controller_named_axi4_axi4yank_out_w_bits_last = coupler_to_memory_controller_named_axi4_auto_axi4yank_out_w_bits_last; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@42178.4]
  assign auto_coupler_to_memory_controller_named_axi4_axi4yank_out_b_ready = coupler_to_memory_controller_named_axi4_auto_axi4yank_out_b_ready; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@42178.4]
  assign auto_coupler_to_memory_controller_named_axi4_axi4yank_out_ar_valid = coupler_to_memory_controller_named_axi4_auto_axi4yank_out_ar_valid; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@42178.4]
  assign auto_coupler_to_memory_controller_named_axi4_axi4yank_out_ar_bits_id = coupler_to_memory_controller_named_axi4_auto_axi4yank_out_ar_bits_id; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@42178.4]
  assign auto_coupler_to_memory_controller_named_axi4_axi4yank_out_ar_bits_addr = coupler_to_memory_controller_named_axi4_auto_axi4yank_out_ar_bits_addr; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@42178.4]
  assign auto_coupler_to_memory_controller_named_axi4_axi4yank_out_ar_bits_len = coupler_to_memory_controller_named_axi4_auto_axi4yank_out_ar_bits_len; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@42178.4]
  assign auto_coupler_to_memory_controller_named_axi4_axi4yank_out_ar_bits_size = coupler_to_memory_controller_named_axi4_auto_axi4yank_out_ar_bits_size; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@42178.4]
  assign auto_coupler_to_memory_controller_named_axi4_axi4yank_out_ar_bits_burst = coupler_to_memory_controller_named_axi4_auto_axi4yank_out_ar_bits_burst; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@42178.4]
  assign auto_coupler_to_memory_controller_named_axi4_axi4yank_out_ar_bits_lock = coupler_to_memory_controller_named_axi4_auto_axi4yank_out_ar_bits_lock; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@42178.4]
  assign auto_coupler_to_memory_controller_named_axi4_axi4yank_out_ar_bits_cache = coupler_to_memory_controller_named_axi4_auto_axi4yank_out_ar_bits_cache; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@42178.4]
  assign auto_coupler_to_memory_controller_named_axi4_axi4yank_out_ar_bits_prot = coupler_to_memory_controller_named_axi4_auto_axi4yank_out_ar_bits_prot; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@42178.4]
  assign auto_coupler_to_memory_controller_named_axi4_axi4yank_out_ar_bits_qos = coupler_to_memory_controller_named_axi4_auto_axi4yank_out_ar_bits_qos; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@42178.4]
  assign auto_coupler_to_memory_controller_named_axi4_axi4yank_out_r_ready = coupler_to_memory_controller_named_axi4_auto_axi4yank_out_r_ready; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@42178.4]
  assign auto_coupler_from_coherence_manager_binder_in_a_ready = coupler_from_coherence_manager_auto_binder_in_a_ready; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@42177.4]
  assign auto_coupler_from_coherence_manager_binder_in_d_valid = coupler_from_coherence_manager_auto_binder_in_d_valid; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@42177.4]
  assign auto_coupler_from_coherence_manager_binder_in_d_bits_opcode = coupler_from_coherence_manager_auto_binder_in_d_bits_opcode; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@42177.4]
  assign auto_coupler_from_coherence_manager_binder_in_d_bits_size = coupler_from_coherence_manager_auto_binder_in_d_bits_size; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@42177.4]
  assign auto_coupler_from_coherence_manager_binder_in_d_bits_source = coupler_from_coherence_manager_auto_binder_in_d_bits_source; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@42177.4]
  assign auto_coupler_from_coherence_manager_binder_in_d_bits_denied = coupler_from_coherence_manager_auto_binder_in_d_bits_denied; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@42177.4]
  assign auto_coupler_from_coherence_manager_binder_in_d_bits_data = coupler_from_coherence_manager_auto_binder_in_d_bits_data; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@42177.4]
  assign auto_coupler_from_coherence_manager_binder_in_d_bits_corrupt = coupler_from_coherence_manager_auto_binder_in_d_bits_corrupt; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@42177.4]
  assign memory_bus_xbar_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@42161.4]
  assign memory_bus_xbar_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@42162.4]
  assign memory_bus_xbar_auto_in_a_valid = coupler_from_coherence_manager_auto_binder_out_a_valid; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@42176.4]
  assign memory_bus_xbar_auto_in_a_bits_opcode = coupler_from_coherence_manager_auto_binder_out_a_bits_opcode; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@42176.4]
  assign memory_bus_xbar_auto_in_a_bits_param = coupler_from_coherence_manager_auto_binder_out_a_bits_param; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@42176.4]
  assign memory_bus_xbar_auto_in_a_bits_size = coupler_from_coherence_manager_auto_binder_out_a_bits_size; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@42176.4]
  assign memory_bus_xbar_auto_in_a_bits_source = coupler_from_coherence_manager_auto_binder_out_a_bits_source; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@42176.4]
  assign memory_bus_xbar_auto_in_a_bits_address = coupler_from_coherence_manager_auto_binder_out_a_bits_address; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@42176.4]
  assign memory_bus_xbar_auto_in_a_bits_mask = coupler_from_coherence_manager_auto_binder_out_a_bits_mask; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@42176.4]
  assign memory_bus_xbar_auto_in_a_bits_data = coupler_from_coherence_manager_auto_binder_out_a_bits_data; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@42176.4]
  assign memory_bus_xbar_auto_in_a_bits_corrupt = coupler_from_coherence_manager_auto_binder_out_a_bits_corrupt; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@42176.4]
  assign memory_bus_xbar_auto_in_d_ready = coupler_from_coherence_manager_auto_binder_out_d_ready; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@42176.4]
  assign memory_bus_xbar_auto_out_a_ready = coupler_to_memory_controller_named_axi4_auto_picker_in_a_ready; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@42175.4]
  assign memory_bus_xbar_auto_out_d_valid = coupler_to_memory_controller_named_axi4_auto_picker_in_d_valid; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@42175.4]
  assign memory_bus_xbar_auto_out_d_bits_opcode = coupler_to_memory_controller_named_axi4_auto_picker_in_d_bits_opcode; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@42175.4]
  assign memory_bus_xbar_auto_out_d_bits_size = coupler_to_memory_controller_named_axi4_auto_picker_in_d_bits_size; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@42175.4]
  assign memory_bus_xbar_auto_out_d_bits_source = coupler_to_memory_controller_named_axi4_auto_picker_in_d_bits_source; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@42175.4]
  assign memory_bus_xbar_auto_out_d_bits_denied = coupler_to_memory_controller_named_axi4_auto_picker_in_d_bits_denied; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@42175.4]
  assign memory_bus_xbar_auto_out_d_bits_data = coupler_to_memory_controller_named_axi4_auto_picker_in_d_bits_data; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@42175.4]
  assign memory_bus_xbar_auto_out_d_bits_corrupt = coupler_to_memory_controller_named_axi4_auto_picker_in_d_bits_corrupt; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@42175.4]
  assign coupler_from_coherence_manager_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@42167.4]
  assign coupler_from_coherence_manager_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@42168.4]
  assign coupler_from_coherence_manager_auto_binder_in_a_valid = auto_coupler_from_coherence_manager_binder_in_a_valid; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@42177.4]
  assign coupler_from_coherence_manager_auto_binder_in_a_bits_opcode = auto_coupler_from_coherence_manager_binder_in_a_bits_opcode; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@42177.4]
  assign coupler_from_coherence_manager_auto_binder_in_a_bits_param = auto_coupler_from_coherence_manager_binder_in_a_bits_param; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@42177.4]
  assign coupler_from_coherence_manager_auto_binder_in_a_bits_size = auto_coupler_from_coherence_manager_binder_in_a_bits_size; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@42177.4]
  assign coupler_from_coherence_manager_auto_binder_in_a_bits_source = auto_coupler_from_coherence_manager_binder_in_a_bits_source; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@42177.4]
  assign coupler_from_coherence_manager_auto_binder_in_a_bits_address = auto_coupler_from_coherence_manager_binder_in_a_bits_address; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@42177.4]
  assign coupler_from_coherence_manager_auto_binder_in_a_bits_mask = auto_coupler_from_coherence_manager_binder_in_a_bits_mask; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@42177.4]
  assign coupler_from_coherence_manager_auto_binder_in_a_bits_data = auto_coupler_from_coherence_manager_binder_in_a_bits_data; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@42177.4]
  assign coupler_from_coherence_manager_auto_binder_in_a_bits_corrupt = auto_coupler_from_coherence_manager_binder_in_a_bits_corrupt; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@42177.4]
  assign coupler_from_coherence_manager_auto_binder_in_d_ready = auto_coupler_from_coherence_manager_binder_in_d_ready; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@42177.4]
  assign coupler_from_coherence_manager_auto_binder_out_a_ready = memory_bus_xbar_auto_in_a_ready; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@42176.4]
  assign coupler_from_coherence_manager_auto_binder_out_d_valid = memory_bus_xbar_auto_in_d_valid; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@42176.4]
  assign coupler_from_coherence_manager_auto_binder_out_d_bits_opcode = memory_bus_xbar_auto_in_d_bits_opcode; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@42176.4]
  assign coupler_from_coherence_manager_auto_binder_out_d_bits_size = memory_bus_xbar_auto_in_d_bits_size; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@42176.4]
  assign coupler_from_coherence_manager_auto_binder_out_d_bits_source = memory_bus_xbar_auto_in_d_bits_source; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@42176.4]
  assign coupler_from_coherence_manager_auto_binder_out_d_bits_denied = memory_bus_xbar_auto_in_d_bits_denied; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@42176.4]
  assign coupler_from_coherence_manager_auto_binder_out_d_bits_data = memory_bus_xbar_auto_in_d_bits_data; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@42176.4]
  assign coupler_from_coherence_manager_auto_binder_out_d_bits_corrupt = memory_bus_xbar_auto_in_d_bits_corrupt; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@42176.4]
  assign coupler_to_memory_controller_named_axi4_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@42173.4]
  assign coupler_to_memory_controller_named_axi4_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@42174.4]
  assign coupler_to_memory_controller_named_axi4_auto_picker_in_a_valid = memory_bus_xbar_auto_out_a_valid; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@42175.4]
  assign coupler_to_memory_controller_named_axi4_auto_picker_in_a_bits_opcode = memory_bus_xbar_auto_out_a_bits_opcode; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@42175.4]
  assign coupler_to_memory_controller_named_axi4_auto_picker_in_a_bits_param = memory_bus_xbar_auto_out_a_bits_param; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@42175.4]
  assign coupler_to_memory_controller_named_axi4_auto_picker_in_a_bits_size = memory_bus_xbar_auto_out_a_bits_size; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@42175.4]
  assign coupler_to_memory_controller_named_axi4_auto_picker_in_a_bits_source = memory_bus_xbar_auto_out_a_bits_source; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@42175.4]
  assign coupler_to_memory_controller_named_axi4_auto_picker_in_a_bits_address = memory_bus_xbar_auto_out_a_bits_address; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@42175.4]
  assign coupler_to_memory_controller_named_axi4_auto_picker_in_a_bits_mask = memory_bus_xbar_auto_out_a_bits_mask; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@42175.4]
  assign coupler_to_memory_controller_named_axi4_auto_picker_in_a_bits_data = memory_bus_xbar_auto_out_a_bits_data; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@42175.4]
  assign coupler_to_memory_controller_named_axi4_auto_picker_in_a_bits_corrupt = memory_bus_xbar_auto_out_a_bits_corrupt; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@42175.4]
  assign coupler_to_memory_controller_named_axi4_auto_picker_in_d_ready = memory_bus_xbar_auto_out_d_ready; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@42175.4]
  assign coupler_to_memory_controller_named_axi4_auto_axi4yank_out_aw_ready = auto_coupler_to_memory_controller_named_axi4_axi4yank_out_aw_ready; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@42178.4]
  assign coupler_to_memory_controller_named_axi4_auto_axi4yank_out_w_ready = auto_coupler_to_memory_controller_named_axi4_axi4yank_out_w_ready; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@42178.4]
  assign coupler_to_memory_controller_named_axi4_auto_axi4yank_out_b_valid = auto_coupler_to_memory_controller_named_axi4_axi4yank_out_b_valid; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@42178.4]
  assign coupler_to_memory_controller_named_axi4_auto_axi4yank_out_b_bits_id = auto_coupler_to_memory_controller_named_axi4_axi4yank_out_b_bits_id; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@42178.4]
  assign coupler_to_memory_controller_named_axi4_auto_axi4yank_out_b_bits_resp = auto_coupler_to_memory_controller_named_axi4_axi4yank_out_b_bits_resp; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@42178.4]
  assign coupler_to_memory_controller_named_axi4_auto_axi4yank_out_ar_ready = auto_coupler_to_memory_controller_named_axi4_axi4yank_out_ar_ready; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@42178.4]
  assign coupler_to_memory_controller_named_axi4_auto_axi4yank_out_r_valid = auto_coupler_to_memory_controller_named_axi4_axi4yank_out_r_valid; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@42178.4]
  assign coupler_to_memory_controller_named_axi4_auto_axi4yank_out_r_bits_id = auto_coupler_to_memory_controller_named_axi4_axi4yank_out_r_bits_id; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@42178.4]
  assign coupler_to_memory_controller_named_axi4_auto_axi4yank_out_r_bits_data = auto_coupler_to_memory_controller_named_axi4_axi4yank_out_r_bits_data; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@42178.4]
  assign coupler_to_memory_controller_named_axi4_auto_axi4yank_out_r_bits_resp = auto_coupler_to_memory_controller_named_axi4_axi4yank_out_r_bits_resp; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@42178.4]
  assign coupler_to_memory_controller_named_axi4_auto_axi4yank_out_r_bits_last = auto_coupler_to_memory_controller_named_axi4_axi4yank_out_r_bits_last; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@42178.4]
endmodule
`endif // __MemoryBus

