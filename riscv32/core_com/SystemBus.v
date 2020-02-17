`include "include_module.v"
`ifdef __SystemBus
module SystemBus( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22080.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22081.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22082.4]
  input         auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output        auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output [3:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output [30:0] auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output [7:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_len, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output [2:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output [1:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_burst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output        auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_lock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output [3:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_cache, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output [2:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_prot, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output [3:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_qos, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  input         auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output        auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output [31:0] auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output [3:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_bits_strb, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output        auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_bits_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output        auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_b_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  input         auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_b_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  input  [3:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_b_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  input  [1:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_b_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  input         auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output        auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output [3:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output [30:0] auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output [7:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_len, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output [2:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output [1:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_burst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output        auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_lock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output [3:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_cache, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output [2:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_prot, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output [3:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_qos, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output        auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  input         auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  input  [3:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_bits_id, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  input  [31:0] auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  input  [1:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  input         auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_bits_last, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output        auto_coupler_from_bus_named_front_bus_bus_xing_in_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  input         auto_coupler_from_bus_named_front_bus_bus_xing_in_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  input  [2:0]  auto_coupler_from_bus_named_front_bus_bus_xing_in_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  input  [2:0]  auto_coupler_from_bus_named_front_bus_bus_xing_in_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  input  [3:0]  auto_coupler_from_bus_named_front_bus_bus_xing_in_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  input  [3:0]  auto_coupler_from_bus_named_front_bus_bus_xing_in_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  input  [31:0] auto_coupler_from_bus_named_front_bus_bus_xing_in_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  input  [3:0]  auto_coupler_from_bus_named_front_bus_bus_xing_in_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  input  [31:0] auto_coupler_from_bus_named_front_bus_bus_xing_in_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  input         auto_coupler_from_bus_named_front_bus_bus_xing_in_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  input         auto_coupler_from_bus_named_front_bus_bus_xing_in_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output        auto_coupler_from_bus_named_front_bus_bus_xing_in_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output [2:0]  auto_coupler_from_bus_named_front_bus_bus_xing_in_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output [1:0]  auto_coupler_from_bus_named_front_bus_bus_xing_in_d_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output [3:0]  auto_coupler_from_bus_named_front_bus_bus_xing_in_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output [3:0]  auto_coupler_from_bus_named_front_bus_bus_xing_in_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output [1:0]  auto_coupler_from_bus_named_front_bus_bus_xing_in_d_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output        auto_coupler_from_bus_named_front_bus_bus_xing_in_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output [31:0] auto_coupler_from_bus_named_front_bus_bus_xing_in_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output        auto_coupler_from_bus_named_front_bus_bus_xing_in_d_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  input         auto_coupler_to_bus_named_periphery_bus_bus_xing_out_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output        auto_coupler_to_bus_named_periphery_bus_bus_xing_out_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output [2:0]  auto_coupler_to_bus_named_periphery_bus_bus_xing_out_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output [2:0]  auto_coupler_to_bus_named_periphery_bus_bus_xing_out_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output [3:0]  auto_coupler_to_bus_named_periphery_bus_bus_xing_out_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output [4:0]  auto_coupler_to_bus_named_periphery_bus_bus_xing_out_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output [27:0] auto_coupler_to_bus_named_periphery_bus_bus_xing_out_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output [3:0]  auto_coupler_to_bus_named_periphery_bus_bus_xing_out_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output [31:0] auto_coupler_to_bus_named_periphery_bus_bus_xing_out_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output        auto_coupler_to_bus_named_periphery_bus_bus_xing_out_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output        auto_coupler_to_bus_named_periphery_bus_bus_xing_out_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  input         auto_coupler_to_bus_named_periphery_bus_bus_xing_out_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  input  [2:0]  auto_coupler_to_bus_named_periphery_bus_bus_xing_out_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  input  [1:0]  auto_coupler_to_bus_named_periphery_bus_bus_xing_out_d_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  input  [3:0]  auto_coupler_to_bus_named_periphery_bus_bus_xing_out_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  input  [4:0]  auto_coupler_to_bus_named_periphery_bus_bus_xing_out_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  input         auto_coupler_to_bus_named_periphery_bus_bus_xing_out_d_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  input         auto_coupler_to_bus_named_periphery_bus_bus_xing_out_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  input  [31:0] auto_coupler_to_bus_named_periphery_bus_bus_xing_out_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  input         auto_coupler_to_bus_named_periphery_bus_bus_xing_out_d_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output        auto_coupler_from_tile_named_tile_tl_master_xing_in_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  input         auto_coupler_from_tile_named_tile_tl_master_xing_in_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  input  [2:0]  auto_coupler_from_tile_named_tile_tl_master_xing_in_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  input  [2:0]  auto_coupler_from_tile_named_tile_tl_master_xing_in_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  input  [3:0]  auto_coupler_from_tile_named_tile_tl_master_xing_in_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  input  [1:0]  auto_coupler_from_tile_named_tile_tl_master_xing_in_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  input  [31:0] auto_coupler_from_tile_named_tile_tl_master_xing_in_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  input  [3:0]  auto_coupler_from_tile_named_tile_tl_master_xing_in_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  input  [31:0] auto_coupler_from_tile_named_tile_tl_master_xing_in_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  input         auto_coupler_from_tile_named_tile_tl_master_xing_in_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  input         auto_coupler_from_tile_named_tile_tl_master_xing_in_b_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output        auto_coupler_from_tile_named_tile_tl_master_xing_in_b_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output [1:0]  auto_coupler_from_tile_named_tile_tl_master_xing_in_b_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output [31:0] auto_coupler_from_tile_named_tile_tl_master_xing_in_b_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output        auto_coupler_from_tile_named_tile_tl_master_xing_in_c_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  input         auto_coupler_from_tile_named_tile_tl_master_xing_in_c_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  input  [2:0]  auto_coupler_from_tile_named_tile_tl_master_xing_in_c_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  input  [2:0]  auto_coupler_from_tile_named_tile_tl_master_xing_in_c_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  input  [3:0]  auto_coupler_from_tile_named_tile_tl_master_xing_in_c_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  input  [1:0]  auto_coupler_from_tile_named_tile_tl_master_xing_in_c_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  input  [31:0] auto_coupler_from_tile_named_tile_tl_master_xing_in_c_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  input  [31:0] auto_coupler_from_tile_named_tile_tl_master_xing_in_c_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  input         auto_coupler_from_tile_named_tile_tl_master_xing_in_c_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  input         auto_coupler_from_tile_named_tile_tl_master_xing_in_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output        auto_coupler_from_tile_named_tile_tl_master_xing_in_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output [2:0]  auto_coupler_from_tile_named_tile_tl_master_xing_in_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output [1:0]  auto_coupler_from_tile_named_tile_tl_master_xing_in_d_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output [3:0]  auto_coupler_from_tile_named_tile_tl_master_xing_in_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output [1:0]  auto_coupler_from_tile_named_tile_tl_master_xing_in_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output [1:0]  auto_coupler_from_tile_named_tile_tl_master_xing_in_d_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output        auto_coupler_from_tile_named_tile_tl_master_xing_in_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output [31:0] auto_coupler_from_tile_named_tile_tl_master_xing_in_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output        auto_coupler_from_tile_named_tile_tl_master_xing_in_d_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  input         auto_coupler_from_tile_named_tile_tl_master_xing_in_e_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  input  [1:0]  auto_coupler_from_tile_named_tile_tl_master_xing_in_e_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  input         auto_system_bus_xbar_out_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output        auto_system_bus_xbar_out_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output [2:0]  auto_system_bus_xbar_out_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output [2:0]  auto_system_bus_xbar_out_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output [2:0]  auto_system_bus_xbar_out_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output [4:0]  auto_system_bus_xbar_out_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output [31:0] auto_system_bus_xbar_out_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output [3:0]  auto_system_bus_xbar_out_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output [31:0] auto_system_bus_xbar_out_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output        auto_system_bus_xbar_out_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output        auto_system_bus_xbar_out_b_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  input         auto_system_bus_xbar_out_b_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  input  [1:0]  auto_system_bus_xbar_out_b_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  input  [31:0] auto_system_bus_xbar_out_b_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  input         auto_system_bus_xbar_out_c_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output        auto_system_bus_xbar_out_c_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output [2:0]  auto_system_bus_xbar_out_c_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output [2:0]  auto_system_bus_xbar_out_c_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output [2:0]  auto_system_bus_xbar_out_c_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output [4:0]  auto_system_bus_xbar_out_c_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output [31:0] auto_system_bus_xbar_out_c_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output [31:0] auto_system_bus_xbar_out_c_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output        auto_system_bus_xbar_out_c_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output        auto_system_bus_xbar_out_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  input         auto_system_bus_xbar_out_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  input  [2:0]  auto_system_bus_xbar_out_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  input  [1:0]  auto_system_bus_xbar_out_d_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  input  [2:0]  auto_system_bus_xbar_out_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  input  [4:0]  auto_system_bus_xbar_out_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  input  [1:0]  auto_system_bus_xbar_out_d_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  input         auto_system_bus_xbar_out_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  input  [31:0] auto_system_bus_xbar_out_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  input         auto_system_bus_xbar_out_d_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output        auto_system_bus_xbar_out_e_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
  output [1:0]  auto_system_bus_xbar_out_e_bits_sink // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22083.4]
);
  wire  system_bus_xbar_clock; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire  system_bus_xbar_reset; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire  system_bus_xbar_auto_in_1_a_ready; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire  system_bus_xbar_auto_in_1_a_valid; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [2:0] system_bus_xbar_auto_in_1_a_bits_opcode; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [2:0] system_bus_xbar_auto_in_1_a_bits_param; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [3:0] system_bus_xbar_auto_in_1_a_bits_size; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [3:0] system_bus_xbar_auto_in_1_a_bits_source; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [31:0] system_bus_xbar_auto_in_1_a_bits_address; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [3:0] system_bus_xbar_auto_in_1_a_bits_mask; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [31:0] system_bus_xbar_auto_in_1_a_bits_data; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire  system_bus_xbar_auto_in_1_a_bits_corrupt; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire  system_bus_xbar_auto_in_1_d_ready; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire  system_bus_xbar_auto_in_1_d_valid; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [2:0] system_bus_xbar_auto_in_1_d_bits_opcode; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [1:0] system_bus_xbar_auto_in_1_d_bits_param; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [3:0] system_bus_xbar_auto_in_1_d_bits_size; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [3:0] system_bus_xbar_auto_in_1_d_bits_source; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [1:0] system_bus_xbar_auto_in_1_d_bits_sink; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire  system_bus_xbar_auto_in_1_d_bits_denied; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [31:0] system_bus_xbar_auto_in_1_d_bits_data; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire  system_bus_xbar_auto_in_1_d_bits_corrupt; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire  system_bus_xbar_auto_in_0_a_ready; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire  system_bus_xbar_auto_in_0_a_valid; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [2:0] system_bus_xbar_auto_in_0_a_bits_opcode; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [2:0] system_bus_xbar_auto_in_0_a_bits_param; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [3:0] system_bus_xbar_auto_in_0_a_bits_size; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [1:0] system_bus_xbar_auto_in_0_a_bits_source; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [31:0] system_bus_xbar_auto_in_0_a_bits_address; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [3:0] system_bus_xbar_auto_in_0_a_bits_mask; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [31:0] system_bus_xbar_auto_in_0_a_bits_data; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire  system_bus_xbar_auto_in_0_a_bits_corrupt; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire  system_bus_xbar_auto_in_0_b_ready; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire  system_bus_xbar_auto_in_0_b_valid; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [1:0] system_bus_xbar_auto_in_0_b_bits_param; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [31:0] system_bus_xbar_auto_in_0_b_bits_address; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire  system_bus_xbar_auto_in_0_c_ready; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire  system_bus_xbar_auto_in_0_c_valid; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [2:0] system_bus_xbar_auto_in_0_c_bits_opcode; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [2:0] system_bus_xbar_auto_in_0_c_bits_param; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [3:0] system_bus_xbar_auto_in_0_c_bits_size; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [1:0] system_bus_xbar_auto_in_0_c_bits_source; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [31:0] system_bus_xbar_auto_in_0_c_bits_address; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [31:0] system_bus_xbar_auto_in_0_c_bits_data; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire  system_bus_xbar_auto_in_0_c_bits_corrupt; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire  system_bus_xbar_auto_in_0_d_ready; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire  system_bus_xbar_auto_in_0_d_valid; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [2:0] system_bus_xbar_auto_in_0_d_bits_opcode; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [1:0] system_bus_xbar_auto_in_0_d_bits_param; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [3:0] system_bus_xbar_auto_in_0_d_bits_size; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [1:0] system_bus_xbar_auto_in_0_d_bits_source; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [1:0] system_bus_xbar_auto_in_0_d_bits_sink; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire  system_bus_xbar_auto_in_0_d_bits_denied; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [31:0] system_bus_xbar_auto_in_0_d_bits_data; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire  system_bus_xbar_auto_in_0_d_bits_corrupt; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire  system_bus_xbar_auto_in_0_e_valid; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [1:0] system_bus_xbar_auto_in_0_e_bits_sink; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire  system_bus_xbar_auto_out_2_a_ready; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire  system_bus_xbar_auto_out_2_a_valid; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [2:0] system_bus_xbar_auto_out_2_a_bits_opcode; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [2:0] system_bus_xbar_auto_out_2_a_bits_param; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [3:0] system_bus_xbar_auto_out_2_a_bits_size; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [4:0] system_bus_xbar_auto_out_2_a_bits_source; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [30:0] system_bus_xbar_auto_out_2_a_bits_address; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [3:0] system_bus_xbar_auto_out_2_a_bits_mask; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [31:0] system_bus_xbar_auto_out_2_a_bits_data; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire  system_bus_xbar_auto_out_2_a_bits_corrupt; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire  system_bus_xbar_auto_out_2_d_ready; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire  system_bus_xbar_auto_out_2_d_valid; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [2:0] system_bus_xbar_auto_out_2_d_bits_opcode; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [3:0] system_bus_xbar_auto_out_2_d_bits_size; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [4:0] system_bus_xbar_auto_out_2_d_bits_source; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire  system_bus_xbar_auto_out_2_d_bits_denied; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [31:0] system_bus_xbar_auto_out_2_d_bits_data; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire  system_bus_xbar_auto_out_2_d_bits_corrupt; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire  system_bus_xbar_auto_out_1_a_ready; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire  system_bus_xbar_auto_out_1_a_valid; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [2:0] system_bus_xbar_auto_out_1_a_bits_opcode; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [2:0] system_bus_xbar_auto_out_1_a_bits_param; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [2:0] system_bus_xbar_auto_out_1_a_bits_size; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [4:0] system_bus_xbar_auto_out_1_a_bits_source; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [31:0] system_bus_xbar_auto_out_1_a_bits_address; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [3:0] system_bus_xbar_auto_out_1_a_bits_mask; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [31:0] system_bus_xbar_auto_out_1_a_bits_data; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire  system_bus_xbar_auto_out_1_a_bits_corrupt; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire  system_bus_xbar_auto_out_1_b_ready; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire  system_bus_xbar_auto_out_1_b_valid; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [1:0] system_bus_xbar_auto_out_1_b_bits_param; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [31:0] system_bus_xbar_auto_out_1_b_bits_address; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire  system_bus_xbar_auto_out_1_c_ready; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire  system_bus_xbar_auto_out_1_c_valid; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [2:0] system_bus_xbar_auto_out_1_c_bits_opcode; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [2:0] system_bus_xbar_auto_out_1_c_bits_param; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [2:0] system_bus_xbar_auto_out_1_c_bits_size; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [4:0] system_bus_xbar_auto_out_1_c_bits_source; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [31:0] system_bus_xbar_auto_out_1_c_bits_address; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [31:0] system_bus_xbar_auto_out_1_c_bits_data; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire  system_bus_xbar_auto_out_1_c_bits_corrupt; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire  system_bus_xbar_auto_out_1_d_ready; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire  system_bus_xbar_auto_out_1_d_valid; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [2:0] system_bus_xbar_auto_out_1_d_bits_opcode; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [1:0] system_bus_xbar_auto_out_1_d_bits_param; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [2:0] system_bus_xbar_auto_out_1_d_bits_size; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [4:0] system_bus_xbar_auto_out_1_d_bits_source; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [1:0] system_bus_xbar_auto_out_1_d_bits_sink; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire  system_bus_xbar_auto_out_1_d_bits_denied; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [31:0] system_bus_xbar_auto_out_1_d_bits_data; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire  system_bus_xbar_auto_out_1_d_bits_corrupt; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire  system_bus_xbar_auto_out_1_e_valid; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [1:0] system_bus_xbar_auto_out_1_e_bits_sink; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire  system_bus_xbar_auto_out_0_a_ready; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire  system_bus_xbar_auto_out_0_a_valid; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [2:0] system_bus_xbar_auto_out_0_a_bits_opcode; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [2:0] system_bus_xbar_auto_out_0_a_bits_param; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [3:0] system_bus_xbar_auto_out_0_a_bits_size; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [4:0] system_bus_xbar_auto_out_0_a_bits_source; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [27:0] system_bus_xbar_auto_out_0_a_bits_address; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [3:0] system_bus_xbar_auto_out_0_a_bits_mask; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [31:0] system_bus_xbar_auto_out_0_a_bits_data; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire  system_bus_xbar_auto_out_0_a_bits_corrupt; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire  system_bus_xbar_auto_out_0_d_ready; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire  system_bus_xbar_auto_out_0_d_valid; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [2:0] system_bus_xbar_auto_out_0_d_bits_opcode; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [1:0] system_bus_xbar_auto_out_0_d_bits_param; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [3:0] system_bus_xbar_auto_out_0_d_bits_size; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [4:0] system_bus_xbar_auto_out_0_d_bits_source; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire  system_bus_xbar_auto_out_0_d_bits_sink; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire  system_bus_xbar_auto_out_0_d_bits_denied; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire [31:0] system_bus_xbar_auto_out_0_d_bits_data; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire  system_bus_xbar_auto_out_0_d_bits_corrupt; // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
  wire  coupler_from_tile_named_tile_clock; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire  coupler_from_tile_named_tile_reset; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire  coupler_from_tile_named_tile_auto_buffer_out_a_ready; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire  coupler_from_tile_named_tile_auto_buffer_out_a_valid; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire [2:0] coupler_from_tile_named_tile_auto_buffer_out_a_bits_opcode; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire [2:0] coupler_from_tile_named_tile_auto_buffer_out_a_bits_param; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire [3:0] coupler_from_tile_named_tile_auto_buffer_out_a_bits_size; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire [1:0] coupler_from_tile_named_tile_auto_buffer_out_a_bits_source; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire [31:0] coupler_from_tile_named_tile_auto_buffer_out_a_bits_address; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire [3:0] coupler_from_tile_named_tile_auto_buffer_out_a_bits_mask; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire [31:0] coupler_from_tile_named_tile_auto_buffer_out_a_bits_data; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire  coupler_from_tile_named_tile_auto_buffer_out_a_bits_corrupt; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire  coupler_from_tile_named_tile_auto_buffer_out_b_ready; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire  coupler_from_tile_named_tile_auto_buffer_out_b_valid; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire [1:0] coupler_from_tile_named_tile_auto_buffer_out_b_bits_param; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire [31:0] coupler_from_tile_named_tile_auto_buffer_out_b_bits_address; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire  coupler_from_tile_named_tile_auto_buffer_out_c_ready; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire  coupler_from_tile_named_tile_auto_buffer_out_c_valid; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire [2:0] coupler_from_tile_named_tile_auto_buffer_out_c_bits_opcode; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire [2:0] coupler_from_tile_named_tile_auto_buffer_out_c_bits_param; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire [3:0] coupler_from_tile_named_tile_auto_buffer_out_c_bits_size; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire [1:0] coupler_from_tile_named_tile_auto_buffer_out_c_bits_source; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire [31:0] coupler_from_tile_named_tile_auto_buffer_out_c_bits_address; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire [31:0] coupler_from_tile_named_tile_auto_buffer_out_c_bits_data; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire  coupler_from_tile_named_tile_auto_buffer_out_c_bits_corrupt; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire  coupler_from_tile_named_tile_auto_buffer_out_d_ready; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire  coupler_from_tile_named_tile_auto_buffer_out_d_valid; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire [2:0] coupler_from_tile_named_tile_auto_buffer_out_d_bits_opcode; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire [1:0] coupler_from_tile_named_tile_auto_buffer_out_d_bits_param; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire [3:0] coupler_from_tile_named_tile_auto_buffer_out_d_bits_size; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire [1:0] coupler_from_tile_named_tile_auto_buffer_out_d_bits_source; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire [1:0] coupler_from_tile_named_tile_auto_buffer_out_d_bits_sink; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire  coupler_from_tile_named_tile_auto_buffer_out_d_bits_denied; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire [31:0] coupler_from_tile_named_tile_auto_buffer_out_d_bits_data; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire  coupler_from_tile_named_tile_auto_buffer_out_d_bits_corrupt; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire  coupler_from_tile_named_tile_auto_buffer_out_e_valid; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire [1:0] coupler_from_tile_named_tile_auto_buffer_out_e_bits_sink; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire  coupler_from_tile_named_tile_auto_tl_master_xing_in_a_ready; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire  coupler_from_tile_named_tile_auto_tl_master_xing_in_a_valid; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire [2:0] coupler_from_tile_named_tile_auto_tl_master_xing_in_a_bits_opcode; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire [2:0] coupler_from_tile_named_tile_auto_tl_master_xing_in_a_bits_param; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire [3:0] coupler_from_tile_named_tile_auto_tl_master_xing_in_a_bits_size; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire [1:0] coupler_from_tile_named_tile_auto_tl_master_xing_in_a_bits_source; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire [31:0] coupler_from_tile_named_tile_auto_tl_master_xing_in_a_bits_address; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire [3:0] coupler_from_tile_named_tile_auto_tl_master_xing_in_a_bits_mask; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire [31:0] coupler_from_tile_named_tile_auto_tl_master_xing_in_a_bits_data; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire  coupler_from_tile_named_tile_auto_tl_master_xing_in_a_bits_corrupt; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire  coupler_from_tile_named_tile_auto_tl_master_xing_in_b_ready; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire  coupler_from_tile_named_tile_auto_tl_master_xing_in_b_valid; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire [1:0] coupler_from_tile_named_tile_auto_tl_master_xing_in_b_bits_param; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire [31:0] coupler_from_tile_named_tile_auto_tl_master_xing_in_b_bits_address; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire  coupler_from_tile_named_tile_auto_tl_master_xing_in_c_ready; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire  coupler_from_tile_named_tile_auto_tl_master_xing_in_c_valid; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire [2:0] coupler_from_tile_named_tile_auto_tl_master_xing_in_c_bits_opcode; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire [2:0] coupler_from_tile_named_tile_auto_tl_master_xing_in_c_bits_param; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire [3:0] coupler_from_tile_named_tile_auto_tl_master_xing_in_c_bits_size; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire [1:0] coupler_from_tile_named_tile_auto_tl_master_xing_in_c_bits_source; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire [31:0] coupler_from_tile_named_tile_auto_tl_master_xing_in_c_bits_address; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire [31:0] coupler_from_tile_named_tile_auto_tl_master_xing_in_c_bits_data; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire  coupler_from_tile_named_tile_auto_tl_master_xing_in_c_bits_corrupt; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire  coupler_from_tile_named_tile_auto_tl_master_xing_in_d_ready; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire  coupler_from_tile_named_tile_auto_tl_master_xing_in_d_valid; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire [2:0] coupler_from_tile_named_tile_auto_tl_master_xing_in_d_bits_opcode; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire [1:0] coupler_from_tile_named_tile_auto_tl_master_xing_in_d_bits_param; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire [3:0] coupler_from_tile_named_tile_auto_tl_master_xing_in_d_bits_size; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire [1:0] coupler_from_tile_named_tile_auto_tl_master_xing_in_d_bits_source; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire [1:0] coupler_from_tile_named_tile_auto_tl_master_xing_in_d_bits_sink; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire  coupler_from_tile_named_tile_auto_tl_master_xing_in_d_bits_denied; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire [31:0] coupler_from_tile_named_tile_auto_tl_master_xing_in_d_bits_data; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire  coupler_from_tile_named_tile_auto_tl_master_xing_in_d_bits_corrupt; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire  coupler_from_tile_named_tile_auto_tl_master_xing_in_e_valid; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire [1:0] coupler_from_tile_named_tile_auto_tl_master_xing_in_e_bits_sink; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
  wire  coupler_to_bus_named_periphery_bus_clock; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22100.4]
  wire  coupler_to_bus_named_periphery_bus_reset; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22100.4]
  wire  coupler_to_bus_named_periphery_bus_auto_widget_in_a_ready; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22100.4]
  wire  coupler_to_bus_named_periphery_bus_auto_widget_in_a_valid; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22100.4]
  wire [2:0] coupler_to_bus_named_periphery_bus_auto_widget_in_a_bits_opcode; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22100.4]
  wire [2:0] coupler_to_bus_named_periphery_bus_auto_widget_in_a_bits_param; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22100.4]
  wire [3:0] coupler_to_bus_named_periphery_bus_auto_widget_in_a_bits_size; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22100.4]
  wire [4:0] coupler_to_bus_named_periphery_bus_auto_widget_in_a_bits_source; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22100.4]
  wire [27:0] coupler_to_bus_named_periphery_bus_auto_widget_in_a_bits_address; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22100.4]
  wire [3:0] coupler_to_bus_named_periphery_bus_auto_widget_in_a_bits_mask; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22100.4]
  wire [31:0] coupler_to_bus_named_periphery_bus_auto_widget_in_a_bits_data; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22100.4]
  wire  coupler_to_bus_named_periphery_bus_auto_widget_in_a_bits_corrupt; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22100.4]
  wire  coupler_to_bus_named_periphery_bus_auto_widget_in_d_ready; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22100.4]
  wire  coupler_to_bus_named_periphery_bus_auto_widget_in_d_valid; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22100.4]
  wire [2:0] coupler_to_bus_named_periphery_bus_auto_widget_in_d_bits_opcode; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22100.4]
  wire [1:0] coupler_to_bus_named_periphery_bus_auto_widget_in_d_bits_param; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22100.4]
  wire [3:0] coupler_to_bus_named_periphery_bus_auto_widget_in_d_bits_size; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22100.4]
  wire [4:0] coupler_to_bus_named_periphery_bus_auto_widget_in_d_bits_source; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22100.4]
  wire  coupler_to_bus_named_periphery_bus_auto_widget_in_d_bits_sink; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22100.4]
  wire  coupler_to_bus_named_periphery_bus_auto_widget_in_d_bits_denied; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22100.4]
  wire [31:0] coupler_to_bus_named_periphery_bus_auto_widget_in_d_bits_data; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22100.4]
  wire  coupler_to_bus_named_periphery_bus_auto_widget_in_d_bits_corrupt; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22100.4]
  wire  coupler_to_bus_named_periphery_bus_auto_bus_xing_out_a_ready; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22100.4]
  wire  coupler_to_bus_named_periphery_bus_auto_bus_xing_out_a_valid; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22100.4]
  wire [2:0] coupler_to_bus_named_periphery_bus_auto_bus_xing_out_a_bits_opcode; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22100.4]
  wire [2:0] coupler_to_bus_named_periphery_bus_auto_bus_xing_out_a_bits_param; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22100.4]
  wire [3:0] coupler_to_bus_named_periphery_bus_auto_bus_xing_out_a_bits_size; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22100.4]
  wire [4:0] coupler_to_bus_named_periphery_bus_auto_bus_xing_out_a_bits_source; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22100.4]
  wire [27:0] coupler_to_bus_named_periphery_bus_auto_bus_xing_out_a_bits_address; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22100.4]
  wire [3:0] coupler_to_bus_named_periphery_bus_auto_bus_xing_out_a_bits_mask; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22100.4]
  wire [31:0] coupler_to_bus_named_periphery_bus_auto_bus_xing_out_a_bits_data; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22100.4]
  wire  coupler_to_bus_named_periphery_bus_auto_bus_xing_out_a_bits_corrupt; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22100.4]
  wire  coupler_to_bus_named_periphery_bus_auto_bus_xing_out_d_ready; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22100.4]
  wire  coupler_to_bus_named_periphery_bus_auto_bus_xing_out_d_valid; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22100.4]
  wire [2:0] coupler_to_bus_named_periphery_bus_auto_bus_xing_out_d_bits_opcode; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22100.4]
  wire [1:0] coupler_to_bus_named_periphery_bus_auto_bus_xing_out_d_bits_param; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22100.4]
  wire [3:0] coupler_to_bus_named_periphery_bus_auto_bus_xing_out_d_bits_size; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22100.4]
  wire [4:0] coupler_to_bus_named_periphery_bus_auto_bus_xing_out_d_bits_source; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22100.4]
  wire  coupler_to_bus_named_periphery_bus_auto_bus_xing_out_d_bits_sink; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22100.4]
  wire  coupler_to_bus_named_periphery_bus_auto_bus_xing_out_d_bits_denied; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22100.4]
  wire [31:0] coupler_to_bus_named_periphery_bus_auto_bus_xing_out_d_bits_data; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22100.4]
  wire  coupler_to_bus_named_periphery_bus_auto_bus_xing_out_d_bits_corrupt; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22100.4]
  wire  coupler_from_bus_named_front_bus_clock; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22106.4]
  wire  coupler_from_bus_named_front_bus_reset; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22106.4]
  wire  coupler_from_bus_named_front_bus_auto_widget_out_a_ready; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22106.4]
  wire  coupler_from_bus_named_front_bus_auto_widget_out_a_valid; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22106.4]
  wire [2:0] coupler_from_bus_named_front_bus_auto_widget_out_a_bits_opcode; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22106.4]
  wire [2:0] coupler_from_bus_named_front_bus_auto_widget_out_a_bits_param; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22106.4]
  wire [3:0] coupler_from_bus_named_front_bus_auto_widget_out_a_bits_size; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22106.4]
  wire [3:0] coupler_from_bus_named_front_bus_auto_widget_out_a_bits_source; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22106.4]
  wire [31:0] coupler_from_bus_named_front_bus_auto_widget_out_a_bits_address; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22106.4]
  wire [3:0] coupler_from_bus_named_front_bus_auto_widget_out_a_bits_mask; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22106.4]
  wire [31:0] coupler_from_bus_named_front_bus_auto_widget_out_a_bits_data; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22106.4]
  wire  coupler_from_bus_named_front_bus_auto_widget_out_a_bits_corrupt; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22106.4]
  wire  coupler_from_bus_named_front_bus_auto_widget_out_d_ready; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22106.4]
  wire  coupler_from_bus_named_front_bus_auto_widget_out_d_valid; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22106.4]
  wire [2:0] coupler_from_bus_named_front_bus_auto_widget_out_d_bits_opcode; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22106.4]
  wire [1:0] coupler_from_bus_named_front_bus_auto_widget_out_d_bits_param; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22106.4]
  wire [3:0] coupler_from_bus_named_front_bus_auto_widget_out_d_bits_size; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22106.4]
  wire [3:0] coupler_from_bus_named_front_bus_auto_widget_out_d_bits_source; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22106.4]
  wire [1:0] coupler_from_bus_named_front_bus_auto_widget_out_d_bits_sink; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22106.4]
  wire  coupler_from_bus_named_front_bus_auto_widget_out_d_bits_denied; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22106.4]
  wire [31:0] coupler_from_bus_named_front_bus_auto_widget_out_d_bits_data; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22106.4]
  wire  coupler_from_bus_named_front_bus_auto_widget_out_d_bits_corrupt; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22106.4]
  wire  coupler_from_bus_named_front_bus_auto_bus_xing_in_a_ready; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22106.4]
  wire  coupler_from_bus_named_front_bus_auto_bus_xing_in_a_valid; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22106.4]
  wire [2:0] coupler_from_bus_named_front_bus_auto_bus_xing_in_a_bits_opcode; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22106.4]
  wire [2:0] coupler_from_bus_named_front_bus_auto_bus_xing_in_a_bits_param; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22106.4]
  wire [3:0] coupler_from_bus_named_front_bus_auto_bus_xing_in_a_bits_size; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22106.4]
  wire [3:0] coupler_from_bus_named_front_bus_auto_bus_xing_in_a_bits_source; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22106.4]
  wire [31:0] coupler_from_bus_named_front_bus_auto_bus_xing_in_a_bits_address; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22106.4]
  wire [3:0] coupler_from_bus_named_front_bus_auto_bus_xing_in_a_bits_mask; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22106.4]
  wire [31:0] coupler_from_bus_named_front_bus_auto_bus_xing_in_a_bits_data; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22106.4]
  wire  coupler_from_bus_named_front_bus_auto_bus_xing_in_a_bits_corrupt; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22106.4]
  wire  coupler_from_bus_named_front_bus_auto_bus_xing_in_d_ready; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22106.4]
  wire  coupler_from_bus_named_front_bus_auto_bus_xing_in_d_valid; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22106.4]
  wire [2:0] coupler_from_bus_named_front_bus_auto_bus_xing_in_d_bits_opcode; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22106.4]
  wire [1:0] coupler_from_bus_named_front_bus_auto_bus_xing_in_d_bits_param; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22106.4]
  wire [3:0] coupler_from_bus_named_front_bus_auto_bus_xing_in_d_bits_size; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22106.4]
  wire [3:0] coupler_from_bus_named_front_bus_auto_bus_xing_in_d_bits_source; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22106.4]
  wire [1:0] coupler_from_bus_named_front_bus_auto_bus_xing_in_d_bits_sink; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22106.4]
  wire  coupler_from_bus_named_front_bus_auto_bus_xing_in_d_bits_denied; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22106.4]
  wire [31:0] coupler_from_bus_named_front_bus_auto_bus_xing_in_d_bits_data; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22106.4]
  wire  coupler_from_bus_named_front_bus_auto_bus_xing_in_d_bits_corrupt; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22106.4]
  wire  coupler_to_port_named_mmio_port_axi4_clock; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22118.4]
  wire  coupler_to_port_named_mmio_port_axi4_reset; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22118.4]
  wire  coupler_to_port_named_mmio_port_axi4_auto_buffer_in_a_ready; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22118.4]
  wire  coupler_to_port_named_mmio_port_axi4_auto_buffer_in_a_valid; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22118.4]
  wire [2:0] coupler_to_port_named_mmio_port_axi4_auto_buffer_in_a_bits_opcode; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22118.4]
  wire [2:0] coupler_to_port_named_mmio_port_axi4_auto_buffer_in_a_bits_param; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22118.4]
  wire [3:0] coupler_to_port_named_mmio_port_axi4_auto_buffer_in_a_bits_size; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22118.4]
  wire [4:0] coupler_to_port_named_mmio_port_axi4_auto_buffer_in_a_bits_source; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22118.4]
  wire [30:0] coupler_to_port_named_mmio_port_axi4_auto_buffer_in_a_bits_address; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22118.4]
  wire [3:0] coupler_to_port_named_mmio_port_axi4_auto_buffer_in_a_bits_mask; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22118.4]
  wire [31:0] coupler_to_port_named_mmio_port_axi4_auto_buffer_in_a_bits_data; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22118.4]
  wire  coupler_to_port_named_mmio_port_axi4_auto_buffer_in_a_bits_corrupt; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22118.4]
  wire  coupler_to_port_named_mmio_port_axi4_auto_buffer_in_d_ready; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22118.4]
  wire  coupler_to_port_named_mmio_port_axi4_auto_buffer_in_d_valid; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22118.4]
  wire [2:0] coupler_to_port_named_mmio_port_axi4_auto_buffer_in_d_bits_opcode; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22118.4]
  wire [3:0] coupler_to_port_named_mmio_port_axi4_auto_buffer_in_d_bits_size; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22118.4]
  wire [4:0] coupler_to_port_named_mmio_port_axi4_auto_buffer_in_d_bits_source; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22118.4]
  wire  coupler_to_port_named_mmio_port_axi4_auto_buffer_in_d_bits_denied; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22118.4]
  wire [31:0] coupler_to_port_named_mmio_port_axi4_auto_buffer_in_d_bits_data; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22118.4]
  wire  coupler_to_port_named_mmio_port_axi4_auto_buffer_in_d_bits_corrupt; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22118.4]
  wire  coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_ready; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22118.4]
  wire  coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_valid; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22118.4]
  wire [3:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_id; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22118.4]
  wire [30:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_addr; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22118.4]
  wire [7:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_len; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22118.4]
  wire [2:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_size; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22118.4]
  wire [1:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_burst; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22118.4]
  wire  coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_lock; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22118.4]
  wire [3:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_cache; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22118.4]
  wire [2:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_prot; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22118.4]
  wire [3:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_qos; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22118.4]
  wire  coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_w_ready; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22118.4]
  wire  coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_w_valid; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22118.4]
  wire [31:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_w_bits_data; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22118.4]
  wire [3:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_w_bits_strb; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22118.4]
  wire  coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_w_bits_last; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22118.4]
  wire  coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_b_ready; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22118.4]
  wire  coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_b_valid; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22118.4]
  wire [3:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_b_bits_id; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22118.4]
  wire [1:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_b_bits_resp; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22118.4]
  wire  coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_ready; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22118.4]
  wire  coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_valid; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22118.4]
  wire [3:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_id; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22118.4]
  wire [30:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_addr; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22118.4]
  wire [7:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_len; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22118.4]
  wire [2:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_size; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22118.4]
  wire [1:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_burst; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22118.4]
  wire  coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_lock; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22118.4]
  wire [3:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_cache; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22118.4]
  wire [2:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_prot; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22118.4]
  wire [3:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_qos; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22118.4]
  wire  coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_r_ready; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22118.4]
  wire  coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_r_valid; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22118.4]
  wire [3:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_r_bits_id; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22118.4]
  wire [31:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_r_bits_data; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22118.4]
  wire [1:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_r_bits_resp; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22118.4]
  wire  coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_r_bits_last; // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22118.4]
  TLXbar system_bus_xbar ( // @[SystemBus.scala 26:43:freechips.rocketchip.system.DefaultRV32Config.fir@22088.4]
    .clock(system_bus_xbar_clock),
    .reset(system_bus_xbar_reset),
    .auto_in_1_a_ready(system_bus_xbar_auto_in_1_a_ready),
    .auto_in_1_a_valid(system_bus_xbar_auto_in_1_a_valid),
    .auto_in_1_a_bits_opcode(system_bus_xbar_auto_in_1_a_bits_opcode),
    .auto_in_1_a_bits_param(system_bus_xbar_auto_in_1_a_bits_param),
    .auto_in_1_a_bits_size(system_bus_xbar_auto_in_1_a_bits_size),
    .auto_in_1_a_bits_source(system_bus_xbar_auto_in_1_a_bits_source),
    .auto_in_1_a_bits_address(system_bus_xbar_auto_in_1_a_bits_address),
    .auto_in_1_a_bits_mask(system_bus_xbar_auto_in_1_a_bits_mask),
    .auto_in_1_a_bits_data(system_bus_xbar_auto_in_1_a_bits_data),
    .auto_in_1_a_bits_corrupt(system_bus_xbar_auto_in_1_a_bits_corrupt),
    .auto_in_1_d_ready(system_bus_xbar_auto_in_1_d_ready),
    .auto_in_1_d_valid(system_bus_xbar_auto_in_1_d_valid),
    .auto_in_1_d_bits_opcode(system_bus_xbar_auto_in_1_d_bits_opcode),
    .auto_in_1_d_bits_param(system_bus_xbar_auto_in_1_d_bits_param),
    .auto_in_1_d_bits_size(system_bus_xbar_auto_in_1_d_bits_size),
    .auto_in_1_d_bits_source(system_bus_xbar_auto_in_1_d_bits_source),
    .auto_in_1_d_bits_sink(system_bus_xbar_auto_in_1_d_bits_sink),
    .auto_in_1_d_bits_denied(system_bus_xbar_auto_in_1_d_bits_denied),
    .auto_in_1_d_bits_data(system_bus_xbar_auto_in_1_d_bits_data),
    .auto_in_1_d_bits_corrupt(system_bus_xbar_auto_in_1_d_bits_corrupt),
    .auto_in_0_a_ready(system_bus_xbar_auto_in_0_a_ready),
    .auto_in_0_a_valid(system_bus_xbar_auto_in_0_a_valid),
    .auto_in_0_a_bits_opcode(system_bus_xbar_auto_in_0_a_bits_opcode),
    .auto_in_0_a_bits_param(system_bus_xbar_auto_in_0_a_bits_param),
    .auto_in_0_a_bits_size(system_bus_xbar_auto_in_0_a_bits_size),
    .auto_in_0_a_bits_source(system_bus_xbar_auto_in_0_a_bits_source),
    .auto_in_0_a_bits_address(system_bus_xbar_auto_in_0_a_bits_address),
    .auto_in_0_a_bits_mask(system_bus_xbar_auto_in_0_a_bits_mask),
    .auto_in_0_a_bits_data(system_bus_xbar_auto_in_0_a_bits_data),
    .auto_in_0_a_bits_corrupt(system_bus_xbar_auto_in_0_a_bits_corrupt),
    .auto_in_0_b_ready(system_bus_xbar_auto_in_0_b_ready),
    .auto_in_0_b_valid(system_bus_xbar_auto_in_0_b_valid),
    .auto_in_0_b_bits_param(system_bus_xbar_auto_in_0_b_bits_param),
    .auto_in_0_b_bits_address(system_bus_xbar_auto_in_0_b_bits_address),
    .auto_in_0_c_ready(system_bus_xbar_auto_in_0_c_ready),
    .auto_in_0_c_valid(system_bus_xbar_auto_in_0_c_valid),
    .auto_in_0_c_bits_opcode(system_bus_xbar_auto_in_0_c_bits_opcode),
    .auto_in_0_c_bits_param(system_bus_xbar_auto_in_0_c_bits_param),
    .auto_in_0_c_bits_size(system_bus_xbar_auto_in_0_c_bits_size),
    .auto_in_0_c_bits_source(system_bus_xbar_auto_in_0_c_bits_source),
    .auto_in_0_c_bits_address(system_bus_xbar_auto_in_0_c_bits_address),
    .auto_in_0_c_bits_data(system_bus_xbar_auto_in_0_c_bits_data),
    .auto_in_0_c_bits_corrupt(system_bus_xbar_auto_in_0_c_bits_corrupt),
    .auto_in_0_d_ready(system_bus_xbar_auto_in_0_d_ready),
    .auto_in_0_d_valid(system_bus_xbar_auto_in_0_d_valid),
    .auto_in_0_d_bits_opcode(system_bus_xbar_auto_in_0_d_bits_opcode),
    .auto_in_0_d_bits_param(system_bus_xbar_auto_in_0_d_bits_param),
    .auto_in_0_d_bits_size(system_bus_xbar_auto_in_0_d_bits_size),
    .auto_in_0_d_bits_source(system_bus_xbar_auto_in_0_d_bits_source),
    .auto_in_0_d_bits_sink(system_bus_xbar_auto_in_0_d_bits_sink),
    .auto_in_0_d_bits_denied(system_bus_xbar_auto_in_0_d_bits_denied),
    .auto_in_0_d_bits_data(system_bus_xbar_auto_in_0_d_bits_data),
    .auto_in_0_d_bits_corrupt(system_bus_xbar_auto_in_0_d_bits_corrupt),
    .auto_in_0_e_valid(system_bus_xbar_auto_in_0_e_valid),
    .auto_in_0_e_bits_sink(system_bus_xbar_auto_in_0_e_bits_sink),
    .auto_out_2_a_ready(system_bus_xbar_auto_out_2_a_ready),
    .auto_out_2_a_valid(system_bus_xbar_auto_out_2_a_valid),
    .auto_out_2_a_bits_opcode(system_bus_xbar_auto_out_2_a_bits_opcode),
    .auto_out_2_a_bits_param(system_bus_xbar_auto_out_2_a_bits_param),
    .auto_out_2_a_bits_size(system_bus_xbar_auto_out_2_a_bits_size),
    .auto_out_2_a_bits_source(system_bus_xbar_auto_out_2_a_bits_source),
    .auto_out_2_a_bits_address(system_bus_xbar_auto_out_2_a_bits_address),
    .auto_out_2_a_bits_mask(system_bus_xbar_auto_out_2_a_bits_mask),
    .auto_out_2_a_bits_data(system_bus_xbar_auto_out_2_a_bits_data),
    .auto_out_2_a_bits_corrupt(system_bus_xbar_auto_out_2_a_bits_corrupt),
    .auto_out_2_d_ready(system_bus_xbar_auto_out_2_d_ready),
    .auto_out_2_d_valid(system_bus_xbar_auto_out_2_d_valid),
    .auto_out_2_d_bits_opcode(system_bus_xbar_auto_out_2_d_bits_opcode),
    .auto_out_2_d_bits_size(system_bus_xbar_auto_out_2_d_bits_size),
    .auto_out_2_d_bits_source(system_bus_xbar_auto_out_2_d_bits_source),
    .auto_out_2_d_bits_denied(system_bus_xbar_auto_out_2_d_bits_denied),
    .auto_out_2_d_bits_data(system_bus_xbar_auto_out_2_d_bits_data),
    .auto_out_2_d_bits_corrupt(system_bus_xbar_auto_out_2_d_bits_corrupt),
    .auto_out_1_a_ready(system_bus_xbar_auto_out_1_a_ready),
    .auto_out_1_a_valid(system_bus_xbar_auto_out_1_a_valid),
    .auto_out_1_a_bits_opcode(system_bus_xbar_auto_out_1_a_bits_opcode),
    .auto_out_1_a_bits_param(system_bus_xbar_auto_out_1_a_bits_param),
    .auto_out_1_a_bits_size(system_bus_xbar_auto_out_1_a_bits_size),
    .auto_out_1_a_bits_source(system_bus_xbar_auto_out_1_a_bits_source),
    .auto_out_1_a_bits_address(system_bus_xbar_auto_out_1_a_bits_address),
    .auto_out_1_a_bits_mask(system_bus_xbar_auto_out_1_a_bits_mask),
    .auto_out_1_a_bits_data(system_bus_xbar_auto_out_1_a_bits_data),
    .auto_out_1_a_bits_corrupt(system_bus_xbar_auto_out_1_a_bits_corrupt),
    .auto_out_1_b_ready(system_bus_xbar_auto_out_1_b_ready),
    .auto_out_1_b_valid(system_bus_xbar_auto_out_1_b_valid),
    .auto_out_1_b_bits_param(system_bus_xbar_auto_out_1_b_bits_param),
    .auto_out_1_b_bits_address(system_bus_xbar_auto_out_1_b_bits_address),
    .auto_out_1_c_ready(system_bus_xbar_auto_out_1_c_ready),
    .auto_out_1_c_valid(system_bus_xbar_auto_out_1_c_valid),
    .auto_out_1_c_bits_opcode(system_bus_xbar_auto_out_1_c_bits_opcode),
    .auto_out_1_c_bits_param(system_bus_xbar_auto_out_1_c_bits_param),
    .auto_out_1_c_bits_size(system_bus_xbar_auto_out_1_c_bits_size),
    .auto_out_1_c_bits_source(system_bus_xbar_auto_out_1_c_bits_source),
    .auto_out_1_c_bits_address(system_bus_xbar_auto_out_1_c_bits_address),
    .auto_out_1_c_bits_data(system_bus_xbar_auto_out_1_c_bits_data),
    .auto_out_1_c_bits_corrupt(system_bus_xbar_auto_out_1_c_bits_corrupt),
    .auto_out_1_d_ready(system_bus_xbar_auto_out_1_d_ready),
    .auto_out_1_d_valid(system_bus_xbar_auto_out_1_d_valid),
    .auto_out_1_d_bits_opcode(system_bus_xbar_auto_out_1_d_bits_opcode),
    .auto_out_1_d_bits_param(system_bus_xbar_auto_out_1_d_bits_param),
    .auto_out_1_d_bits_size(system_bus_xbar_auto_out_1_d_bits_size),
    .auto_out_1_d_bits_source(system_bus_xbar_auto_out_1_d_bits_source),
    .auto_out_1_d_bits_sink(system_bus_xbar_auto_out_1_d_bits_sink),
    .auto_out_1_d_bits_denied(system_bus_xbar_auto_out_1_d_bits_denied),
    .auto_out_1_d_bits_data(system_bus_xbar_auto_out_1_d_bits_data),
    .auto_out_1_d_bits_corrupt(system_bus_xbar_auto_out_1_d_bits_corrupt),
    .auto_out_1_e_valid(system_bus_xbar_auto_out_1_e_valid),
    .auto_out_1_e_bits_sink(system_bus_xbar_auto_out_1_e_bits_sink),
    .auto_out_0_a_ready(system_bus_xbar_auto_out_0_a_ready),
    .auto_out_0_a_valid(system_bus_xbar_auto_out_0_a_valid),
    .auto_out_0_a_bits_opcode(system_bus_xbar_auto_out_0_a_bits_opcode),
    .auto_out_0_a_bits_param(system_bus_xbar_auto_out_0_a_bits_param),
    .auto_out_0_a_bits_size(system_bus_xbar_auto_out_0_a_bits_size),
    .auto_out_0_a_bits_source(system_bus_xbar_auto_out_0_a_bits_source),
    .auto_out_0_a_bits_address(system_bus_xbar_auto_out_0_a_bits_address),
    .auto_out_0_a_bits_mask(system_bus_xbar_auto_out_0_a_bits_mask),
    .auto_out_0_a_bits_data(system_bus_xbar_auto_out_0_a_bits_data),
    .auto_out_0_a_bits_corrupt(system_bus_xbar_auto_out_0_a_bits_corrupt),
    .auto_out_0_d_ready(system_bus_xbar_auto_out_0_d_ready),
    .auto_out_0_d_valid(system_bus_xbar_auto_out_0_d_valid),
    .auto_out_0_d_bits_opcode(system_bus_xbar_auto_out_0_d_bits_opcode),
    .auto_out_0_d_bits_param(system_bus_xbar_auto_out_0_d_bits_param),
    .auto_out_0_d_bits_size(system_bus_xbar_auto_out_0_d_bits_size),
    .auto_out_0_d_bits_source(system_bus_xbar_auto_out_0_d_bits_source),
    .auto_out_0_d_bits_sink(system_bus_xbar_auto_out_0_d_bits_sink),
    .auto_out_0_d_bits_denied(system_bus_xbar_auto_out_0_d_bits_denied),
    .auto_out_0_d_bits_data(system_bus_xbar_auto_out_0_d_bits_data),
    .auto_out_0_d_bits_corrupt(system_bus_xbar_auto_out_0_d_bits_corrupt)
  );
  SimpleLazyModule coupler_from_tile_named_tile ( // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22094.4]
    .clock(coupler_from_tile_named_tile_clock),
    .reset(coupler_from_tile_named_tile_reset),
    .auto_buffer_out_a_ready(coupler_from_tile_named_tile_auto_buffer_out_a_ready),
    .auto_buffer_out_a_valid(coupler_from_tile_named_tile_auto_buffer_out_a_valid),
    .auto_buffer_out_a_bits_opcode(coupler_from_tile_named_tile_auto_buffer_out_a_bits_opcode),
    .auto_buffer_out_a_bits_param(coupler_from_tile_named_tile_auto_buffer_out_a_bits_param),
    .auto_buffer_out_a_bits_size(coupler_from_tile_named_tile_auto_buffer_out_a_bits_size),
    .auto_buffer_out_a_bits_source(coupler_from_tile_named_tile_auto_buffer_out_a_bits_source),
    .auto_buffer_out_a_bits_address(coupler_from_tile_named_tile_auto_buffer_out_a_bits_address),
    .auto_buffer_out_a_bits_mask(coupler_from_tile_named_tile_auto_buffer_out_a_bits_mask),
    .auto_buffer_out_a_bits_data(coupler_from_tile_named_tile_auto_buffer_out_a_bits_data),
    .auto_buffer_out_a_bits_corrupt(coupler_from_tile_named_tile_auto_buffer_out_a_bits_corrupt),
    .auto_buffer_out_b_ready(coupler_from_tile_named_tile_auto_buffer_out_b_ready),
    .auto_buffer_out_b_valid(coupler_from_tile_named_tile_auto_buffer_out_b_valid),
    .auto_buffer_out_b_bits_param(coupler_from_tile_named_tile_auto_buffer_out_b_bits_param),
    .auto_buffer_out_b_bits_address(coupler_from_tile_named_tile_auto_buffer_out_b_bits_address),
    .auto_buffer_out_c_ready(coupler_from_tile_named_tile_auto_buffer_out_c_ready),
    .auto_buffer_out_c_valid(coupler_from_tile_named_tile_auto_buffer_out_c_valid),
    .auto_buffer_out_c_bits_opcode(coupler_from_tile_named_tile_auto_buffer_out_c_bits_opcode),
    .auto_buffer_out_c_bits_param(coupler_from_tile_named_tile_auto_buffer_out_c_bits_param),
    .auto_buffer_out_c_bits_size(coupler_from_tile_named_tile_auto_buffer_out_c_bits_size),
    .auto_buffer_out_c_bits_source(coupler_from_tile_named_tile_auto_buffer_out_c_bits_source),
    .auto_buffer_out_c_bits_address(coupler_from_tile_named_tile_auto_buffer_out_c_bits_address),
    .auto_buffer_out_c_bits_data(coupler_from_tile_named_tile_auto_buffer_out_c_bits_data),
    .auto_buffer_out_c_bits_corrupt(coupler_from_tile_named_tile_auto_buffer_out_c_bits_corrupt),
    .auto_buffer_out_d_ready(coupler_from_tile_named_tile_auto_buffer_out_d_ready),
    .auto_buffer_out_d_valid(coupler_from_tile_named_tile_auto_buffer_out_d_valid),
    .auto_buffer_out_d_bits_opcode(coupler_from_tile_named_tile_auto_buffer_out_d_bits_opcode),
    .auto_buffer_out_d_bits_param(coupler_from_tile_named_tile_auto_buffer_out_d_bits_param),
    .auto_buffer_out_d_bits_size(coupler_from_tile_named_tile_auto_buffer_out_d_bits_size),
    .auto_buffer_out_d_bits_source(coupler_from_tile_named_tile_auto_buffer_out_d_bits_source),
    .auto_buffer_out_d_bits_sink(coupler_from_tile_named_tile_auto_buffer_out_d_bits_sink),
    .auto_buffer_out_d_bits_denied(coupler_from_tile_named_tile_auto_buffer_out_d_bits_denied),
    .auto_buffer_out_d_bits_data(coupler_from_tile_named_tile_auto_buffer_out_d_bits_data),
    .auto_buffer_out_d_bits_corrupt(coupler_from_tile_named_tile_auto_buffer_out_d_bits_corrupt),
    .auto_buffer_out_e_valid(coupler_from_tile_named_tile_auto_buffer_out_e_valid),
    .auto_buffer_out_e_bits_sink(coupler_from_tile_named_tile_auto_buffer_out_e_bits_sink),
    .auto_tl_master_xing_in_a_ready(coupler_from_tile_named_tile_auto_tl_master_xing_in_a_ready),
    .auto_tl_master_xing_in_a_valid(coupler_from_tile_named_tile_auto_tl_master_xing_in_a_valid),
    .auto_tl_master_xing_in_a_bits_opcode(coupler_from_tile_named_tile_auto_tl_master_xing_in_a_bits_opcode),
    .auto_tl_master_xing_in_a_bits_param(coupler_from_tile_named_tile_auto_tl_master_xing_in_a_bits_param),
    .auto_tl_master_xing_in_a_bits_size(coupler_from_tile_named_tile_auto_tl_master_xing_in_a_bits_size),
    .auto_tl_master_xing_in_a_bits_source(coupler_from_tile_named_tile_auto_tl_master_xing_in_a_bits_source),
    .auto_tl_master_xing_in_a_bits_address(coupler_from_tile_named_tile_auto_tl_master_xing_in_a_bits_address),
    .auto_tl_master_xing_in_a_bits_mask(coupler_from_tile_named_tile_auto_tl_master_xing_in_a_bits_mask),
    .auto_tl_master_xing_in_a_bits_data(coupler_from_tile_named_tile_auto_tl_master_xing_in_a_bits_data),
    .auto_tl_master_xing_in_a_bits_corrupt(coupler_from_tile_named_tile_auto_tl_master_xing_in_a_bits_corrupt),
    .auto_tl_master_xing_in_b_ready(coupler_from_tile_named_tile_auto_tl_master_xing_in_b_ready),
    .auto_tl_master_xing_in_b_valid(coupler_from_tile_named_tile_auto_tl_master_xing_in_b_valid),
    .auto_tl_master_xing_in_b_bits_param(coupler_from_tile_named_tile_auto_tl_master_xing_in_b_bits_param),
    .auto_tl_master_xing_in_b_bits_address(coupler_from_tile_named_tile_auto_tl_master_xing_in_b_bits_address),
    .auto_tl_master_xing_in_c_ready(coupler_from_tile_named_tile_auto_tl_master_xing_in_c_ready),
    .auto_tl_master_xing_in_c_valid(coupler_from_tile_named_tile_auto_tl_master_xing_in_c_valid),
    .auto_tl_master_xing_in_c_bits_opcode(coupler_from_tile_named_tile_auto_tl_master_xing_in_c_bits_opcode),
    .auto_tl_master_xing_in_c_bits_param(coupler_from_tile_named_tile_auto_tl_master_xing_in_c_bits_param),
    .auto_tl_master_xing_in_c_bits_size(coupler_from_tile_named_tile_auto_tl_master_xing_in_c_bits_size),
    .auto_tl_master_xing_in_c_bits_source(coupler_from_tile_named_tile_auto_tl_master_xing_in_c_bits_source),
    .auto_tl_master_xing_in_c_bits_address(coupler_from_tile_named_tile_auto_tl_master_xing_in_c_bits_address),
    .auto_tl_master_xing_in_c_bits_data(coupler_from_tile_named_tile_auto_tl_master_xing_in_c_bits_data),
    .auto_tl_master_xing_in_c_bits_corrupt(coupler_from_tile_named_tile_auto_tl_master_xing_in_c_bits_corrupt),
    .auto_tl_master_xing_in_d_ready(coupler_from_tile_named_tile_auto_tl_master_xing_in_d_ready),
    .auto_tl_master_xing_in_d_valid(coupler_from_tile_named_tile_auto_tl_master_xing_in_d_valid),
    .auto_tl_master_xing_in_d_bits_opcode(coupler_from_tile_named_tile_auto_tl_master_xing_in_d_bits_opcode),
    .auto_tl_master_xing_in_d_bits_param(coupler_from_tile_named_tile_auto_tl_master_xing_in_d_bits_param),
    .auto_tl_master_xing_in_d_bits_size(coupler_from_tile_named_tile_auto_tl_master_xing_in_d_bits_size),
    .auto_tl_master_xing_in_d_bits_source(coupler_from_tile_named_tile_auto_tl_master_xing_in_d_bits_source),
    .auto_tl_master_xing_in_d_bits_sink(coupler_from_tile_named_tile_auto_tl_master_xing_in_d_bits_sink),
    .auto_tl_master_xing_in_d_bits_denied(coupler_from_tile_named_tile_auto_tl_master_xing_in_d_bits_denied),
    .auto_tl_master_xing_in_d_bits_data(coupler_from_tile_named_tile_auto_tl_master_xing_in_d_bits_data),
    .auto_tl_master_xing_in_d_bits_corrupt(coupler_from_tile_named_tile_auto_tl_master_xing_in_d_bits_corrupt),
    .auto_tl_master_xing_in_e_valid(coupler_from_tile_named_tile_auto_tl_master_xing_in_e_valid),
    .auto_tl_master_xing_in_e_bits_sink(coupler_from_tile_named_tile_auto_tl_master_xing_in_e_bits_sink)
  );
  SimpleLazyModule_1 coupler_to_bus_named_periphery_bus ( // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22100.4]
    .clock(coupler_to_bus_named_periphery_bus_clock),
    .reset(coupler_to_bus_named_periphery_bus_reset),
    .auto_widget_in_a_ready(coupler_to_bus_named_periphery_bus_auto_widget_in_a_ready),
    .auto_widget_in_a_valid(coupler_to_bus_named_periphery_bus_auto_widget_in_a_valid),
    .auto_widget_in_a_bits_opcode(coupler_to_bus_named_periphery_bus_auto_widget_in_a_bits_opcode),
    .auto_widget_in_a_bits_param(coupler_to_bus_named_periphery_bus_auto_widget_in_a_bits_param),
    .auto_widget_in_a_bits_size(coupler_to_bus_named_periphery_bus_auto_widget_in_a_bits_size),
    .auto_widget_in_a_bits_source(coupler_to_bus_named_periphery_bus_auto_widget_in_a_bits_source),
    .auto_widget_in_a_bits_address(coupler_to_bus_named_periphery_bus_auto_widget_in_a_bits_address),
    .auto_widget_in_a_bits_mask(coupler_to_bus_named_periphery_bus_auto_widget_in_a_bits_mask),
    .auto_widget_in_a_bits_data(coupler_to_bus_named_periphery_bus_auto_widget_in_a_bits_data),
    .auto_widget_in_a_bits_corrupt(coupler_to_bus_named_periphery_bus_auto_widget_in_a_bits_corrupt),
    .auto_widget_in_d_ready(coupler_to_bus_named_periphery_bus_auto_widget_in_d_ready),
    .auto_widget_in_d_valid(coupler_to_bus_named_periphery_bus_auto_widget_in_d_valid),
    .auto_widget_in_d_bits_opcode(coupler_to_bus_named_periphery_bus_auto_widget_in_d_bits_opcode),
    .auto_widget_in_d_bits_param(coupler_to_bus_named_periphery_bus_auto_widget_in_d_bits_param),
    .auto_widget_in_d_bits_size(coupler_to_bus_named_periphery_bus_auto_widget_in_d_bits_size),
    .auto_widget_in_d_bits_source(coupler_to_bus_named_periphery_bus_auto_widget_in_d_bits_source),
    .auto_widget_in_d_bits_sink(coupler_to_bus_named_periphery_bus_auto_widget_in_d_bits_sink),
    .auto_widget_in_d_bits_denied(coupler_to_bus_named_periphery_bus_auto_widget_in_d_bits_denied),
    .auto_widget_in_d_bits_data(coupler_to_bus_named_periphery_bus_auto_widget_in_d_bits_data),
    .auto_widget_in_d_bits_corrupt(coupler_to_bus_named_periphery_bus_auto_widget_in_d_bits_corrupt),
    .auto_bus_xing_out_a_ready(coupler_to_bus_named_periphery_bus_auto_bus_xing_out_a_ready),
    .auto_bus_xing_out_a_valid(coupler_to_bus_named_periphery_bus_auto_bus_xing_out_a_valid),
    .auto_bus_xing_out_a_bits_opcode(coupler_to_bus_named_periphery_bus_auto_bus_xing_out_a_bits_opcode),
    .auto_bus_xing_out_a_bits_param(coupler_to_bus_named_periphery_bus_auto_bus_xing_out_a_bits_param),
    .auto_bus_xing_out_a_bits_size(coupler_to_bus_named_periphery_bus_auto_bus_xing_out_a_bits_size),
    .auto_bus_xing_out_a_bits_source(coupler_to_bus_named_periphery_bus_auto_bus_xing_out_a_bits_source),
    .auto_bus_xing_out_a_bits_address(coupler_to_bus_named_periphery_bus_auto_bus_xing_out_a_bits_address),
    .auto_bus_xing_out_a_bits_mask(coupler_to_bus_named_periphery_bus_auto_bus_xing_out_a_bits_mask),
    .auto_bus_xing_out_a_bits_data(coupler_to_bus_named_periphery_bus_auto_bus_xing_out_a_bits_data),
    .auto_bus_xing_out_a_bits_corrupt(coupler_to_bus_named_periphery_bus_auto_bus_xing_out_a_bits_corrupt),
    .auto_bus_xing_out_d_ready(coupler_to_bus_named_periphery_bus_auto_bus_xing_out_d_ready),
    .auto_bus_xing_out_d_valid(coupler_to_bus_named_periphery_bus_auto_bus_xing_out_d_valid),
    .auto_bus_xing_out_d_bits_opcode(coupler_to_bus_named_periphery_bus_auto_bus_xing_out_d_bits_opcode),
    .auto_bus_xing_out_d_bits_param(coupler_to_bus_named_periphery_bus_auto_bus_xing_out_d_bits_param),
    .auto_bus_xing_out_d_bits_size(coupler_to_bus_named_periphery_bus_auto_bus_xing_out_d_bits_size),
    .auto_bus_xing_out_d_bits_source(coupler_to_bus_named_periphery_bus_auto_bus_xing_out_d_bits_source),
    .auto_bus_xing_out_d_bits_sink(coupler_to_bus_named_periphery_bus_auto_bus_xing_out_d_bits_sink),
    .auto_bus_xing_out_d_bits_denied(coupler_to_bus_named_periphery_bus_auto_bus_xing_out_d_bits_denied),
    .auto_bus_xing_out_d_bits_data(coupler_to_bus_named_periphery_bus_auto_bus_xing_out_d_bits_data),
    .auto_bus_xing_out_d_bits_corrupt(coupler_to_bus_named_periphery_bus_auto_bus_xing_out_d_bits_corrupt)
  );
  SimpleLazyModule_2 coupler_from_bus_named_front_bus ( // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22106.4]
    .clock(coupler_from_bus_named_front_bus_clock),
    .reset(coupler_from_bus_named_front_bus_reset),
    .auto_widget_out_a_ready(coupler_from_bus_named_front_bus_auto_widget_out_a_ready),
    .auto_widget_out_a_valid(coupler_from_bus_named_front_bus_auto_widget_out_a_valid),
    .auto_widget_out_a_bits_opcode(coupler_from_bus_named_front_bus_auto_widget_out_a_bits_opcode),
    .auto_widget_out_a_bits_param(coupler_from_bus_named_front_bus_auto_widget_out_a_bits_param),
    .auto_widget_out_a_bits_size(coupler_from_bus_named_front_bus_auto_widget_out_a_bits_size),
    .auto_widget_out_a_bits_source(coupler_from_bus_named_front_bus_auto_widget_out_a_bits_source),
    .auto_widget_out_a_bits_address(coupler_from_bus_named_front_bus_auto_widget_out_a_bits_address),
    .auto_widget_out_a_bits_mask(coupler_from_bus_named_front_bus_auto_widget_out_a_bits_mask),
    .auto_widget_out_a_bits_data(coupler_from_bus_named_front_bus_auto_widget_out_a_bits_data),
    .auto_widget_out_a_bits_corrupt(coupler_from_bus_named_front_bus_auto_widget_out_a_bits_corrupt),
    .auto_widget_out_d_ready(coupler_from_bus_named_front_bus_auto_widget_out_d_ready),
    .auto_widget_out_d_valid(coupler_from_bus_named_front_bus_auto_widget_out_d_valid),
    .auto_widget_out_d_bits_opcode(coupler_from_bus_named_front_bus_auto_widget_out_d_bits_opcode),
    .auto_widget_out_d_bits_param(coupler_from_bus_named_front_bus_auto_widget_out_d_bits_param),
    .auto_widget_out_d_bits_size(coupler_from_bus_named_front_bus_auto_widget_out_d_bits_size),
    .auto_widget_out_d_bits_source(coupler_from_bus_named_front_bus_auto_widget_out_d_bits_source),
    .auto_widget_out_d_bits_sink(coupler_from_bus_named_front_bus_auto_widget_out_d_bits_sink),
    .auto_widget_out_d_bits_denied(coupler_from_bus_named_front_bus_auto_widget_out_d_bits_denied),
    .auto_widget_out_d_bits_data(coupler_from_bus_named_front_bus_auto_widget_out_d_bits_data),
    .auto_widget_out_d_bits_corrupt(coupler_from_bus_named_front_bus_auto_widget_out_d_bits_corrupt),
    .auto_bus_xing_in_a_ready(coupler_from_bus_named_front_bus_auto_bus_xing_in_a_ready),
    .auto_bus_xing_in_a_valid(coupler_from_bus_named_front_bus_auto_bus_xing_in_a_valid),
    .auto_bus_xing_in_a_bits_opcode(coupler_from_bus_named_front_bus_auto_bus_xing_in_a_bits_opcode),
    .auto_bus_xing_in_a_bits_param(coupler_from_bus_named_front_bus_auto_bus_xing_in_a_bits_param),
    .auto_bus_xing_in_a_bits_size(coupler_from_bus_named_front_bus_auto_bus_xing_in_a_bits_size),
    .auto_bus_xing_in_a_bits_source(coupler_from_bus_named_front_bus_auto_bus_xing_in_a_bits_source),
    .auto_bus_xing_in_a_bits_address(coupler_from_bus_named_front_bus_auto_bus_xing_in_a_bits_address),
    .auto_bus_xing_in_a_bits_mask(coupler_from_bus_named_front_bus_auto_bus_xing_in_a_bits_mask),
    .auto_bus_xing_in_a_bits_data(coupler_from_bus_named_front_bus_auto_bus_xing_in_a_bits_data),
    .auto_bus_xing_in_a_bits_corrupt(coupler_from_bus_named_front_bus_auto_bus_xing_in_a_bits_corrupt),
    .auto_bus_xing_in_d_ready(coupler_from_bus_named_front_bus_auto_bus_xing_in_d_ready),
    .auto_bus_xing_in_d_valid(coupler_from_bus_named_front_bus_auto_bus_xing_in_d_valid),
    .auto_bus_xing_in_d_bits_opcode(coupler_from_bus_named_front_bus_auto_bus_xing_in_d_bits_opcode),
    .auto_bus_xing_in_d_bits_param(coupler_from_bus_named_front_bus_auto_bus_xing_in_d_bits_param),
    .auto_bus_xing_in_d_bits_size(coupler_from_bus_named_front_bus_auto_bus_xing_in_d_bits_size),
    .auto_bus_xing_in_d_bits_source(coupler_from_bus_named_front_bus_auto_bus_xing_in_d_bits_source),
    .auto_bus_xing_in_d_bits_sink(coupler_from_bus_named_front_bus_auto_bus_xing_in_d_bits_sink),
    .auto_bus_xing_in_d_bits_denied(coupler_from_bus_named_front_bus_auto_bus_xing_in_d_bits_denied),
    .auto_bus_xing_in_d_bits_data(coupler_from_bus_named_front_bus_auto_bus_xing_in_d_bits_data),
    .auto_bus_xing_in_d_bits_corrupt(coupler_from_bus_named_front_bus_auto_bus_xing_in_d_bits_corrupt)
  );
  SimpleLazyModule_4 coupler_to_port_named_mmio_port_axi4 ( // @[LazyModule.scala 225:27:freechips.rocketchip.system.DefaultRV32Config.fir@22118.4]
    .clock(coupler_to_port_named_mmio_port_axi4_clock),
    .reset(coupler_to_port_named_mmio_port_axi4_reset),
    .auto_buffer_in_a_ready(coupler_to_port_named_mmio_port_axi4_auto_buffer_in_a_ready),
    .auto_buffer_in_a_valid(coupler_to_port_named_mmio_port_axi4_auto_buffer_in_a_valid),
    .auto_buffer_in_a_bits_opcode(coupler_to_port_named_mmio_port_axi4_auto_buffer_in_a_bits_opcode),
    .auto_buffer_in_a_bits_param(coupler_to_port_named_mmio_port_axi4_auto_buffer_in_a_bits_param),
    .auto_buffer_in_a_bits_size(coupler_to_port_named_mmio_port_axi4_auto_buffer_in_a_bits_size),
    .auto_buffer_in_a_bits_source(coupler_to_port_named_mmio_port_axi4_auto_buffer_in_a_bits_source),
    .auto_buffer_in_a_bits_address(coupler_to_port_named_mmio_port_axi4_auto_buffer_in_a_bits_address),
    .auto_buffer_in_a_bits_mask(coupler_to_port_named_mmio_port_axi4_auto_buffer_in_a_bits_mask),
    .auto_buffer_in_a_bits_data(coupler_to_port_named_mmio_port_axi4_auto_buffer_in_a_bits_data),
    .auto_buffer_in_a_bits_corrupt(coupler_to_port_named_mmio_port_axi4_auto_buffer_in_a_bits_corrupt),
    .auto_buffer_in_d_ready(coupler_to_port_named_mmio_port_axi4_auto_buffer_in_d_ready),
    .auto_buffer_in_d_valid(coupler_to_port_named_mmio_port_axi4_auto_buffer_in_d_valid),
    .auto_buffer_in_d_bits_opcode(coupler_to_port_named_mmio_port_axi4_auto_buffer_in_d_bits_opcode),
    .auto_buffer_in_d_bits_size(coupler_to_port_named_mmio_port_axi4_auto_buffer_in_d_bits_size),
    .auto_buffer_in_d_bits_source(coupler_to_port_named_mmio_port_axi4_auto_buffer_in_d_bits_source),
    .auto_buffer_in_d_bits_denied(coupler_to_port_named_mmio_port_axi4_auto_buffer_in_d_bits_denied),
    .auto_buffer_in_d_bits_data(coupler_to_port_named_mmio_port_axi4_auto_buffer_in_d_bits_data),
    .auto_buffer_in_d_bits_corrupt(coupler_to_port_named_mmio_port_axi4_auto_buffer_in_d_bits_corrupt),
    .auto_axi4buf_out_aw_ready(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_ready),
    .auto_axi4buf_out_aw_valid(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_valid),
    .auto_axi4buf_out_aw_bits_id(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_id),
    .auto_axi4buf_out_aw_bits_addr(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_addr),
    .auto_axi4buf_out_aw_bits_len(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_len),
    .auto_axi4buf_out_aw_bits_size(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_size),
    .auto_axi4buf_out_aw_bits_burst(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_burst),
    .auto_axi4buf_out_aw_bits_lock(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_lock),
    .auto_axi4buf_out_aw_bits_cache(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_cache),
    .auto_axi4buf_out_aw_bits_prot(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_prot),
    .auto_axi4buf_out_aw_bits_qos(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_qos),
    .auto_axi4buf_out_w_ready(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_w_ready),
    .auto_axi4buf_out_w_valid(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_w_valid),
    .auto_axi4buf_out_w_bits_data(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_w_bits_data),
    .auto_axi4buf_out_w_bits_strb(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_w_bits_strb),
    .auto_axi4buf_out_w_bits_last(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_w_bits_last),
    .auto_axi4buf_out_b_ready(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_b_ready),
    .auto_axi4buf_out_b_valid(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_b_valid),
    .auto_axi4buf_out_b_bits_id(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_b_bits_id),
    .auto_axi4buf_out_b_bits_resp(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_b_bits_resp),
    .auto_axi4buf_out_ar_ready(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_ready),
    .auto_axi4buf_out_ar_valid(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_valid),
    .auto_axi4buf_out_ar_bits_id(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_id),
    .auto_axi4buf_out_ar_bits_addr(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_addr),
    .auto_axi4buf_out_ar_bits_len(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_len),
    .auto_axi4buf_out_ar_bits_size(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_size),
    .auto_axi4buf_out_ar_bits_burst(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_burst),
    .auto_axi4buf_out_ar_bits_lock(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_lock),
    .auto_axi4buf_out_ar_bits_cache(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_cache),
    .auto_axi4buf_out_ar_bits_prot(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_prot),
    .auto_axi4buf_out_ar_bits_qos(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_qos),
    .auto_axi4buf_out_r_ready(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_r_ready),
    .auto_axi4buf_out_r_valid(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_r_valid),
    .auto_axi4buf_out_r_bits_id(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_r_bits_id),
    .auto_axi4buf_out_r_bits_data(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_r_bits_data),
    .auto_axi4buf_out_r_bits_resp(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_r_bits_resp),
    .auto_axi4buf_out_r_bits_last(coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_r_bits_last)
  );
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_valid = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_valid; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22132.4]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_id = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_id; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22132.4]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_addr = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_addr; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22132.4]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_len = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_len; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22132.4]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_size = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_size; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22132.4]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_burst = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_burst; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22132.4]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_lock = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_lock; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22132.4]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_cache = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_cache; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22132.4]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_prot = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_prot; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22132.4]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_qos = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_qos; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22132.4]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_valid = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_w_valid; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22132.4]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_bits_data = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_w_bits_data; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22132.4]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_bits_strb = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_w_bits_strb; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22132.4]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_bits_last = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_w_bits_last; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22132.4]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_b_ready = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_b_ready; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22132.4]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_valid = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_valid; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22132.4]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_id = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_id; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22132.4]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_addr = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_addr; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22132.4]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_len = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_len; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22132.4]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_size = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_size; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22132.4]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_burst = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_burst; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22132.4]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_lock = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_lock; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22132.4]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_cache = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_cache; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22132.4]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_prot = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_prot; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22132.4]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_qos = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_qos; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22132.4]
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_ready = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_r_ready; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22132.4]
  assign auto_coupler_from_bus_named_front_bus_bus_xing_in_a_ready = coupler_from_bus_named_front_bus_auto_bus_xing_in_a_ready; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@22131.4]
  assign auto_coupler_from_bus_named_front_bus_bus_xing_in_d_valid = coupler_from_bus_named_front_bus_auto_bus_xing_in_d_valid; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@22131.4]
  assign auto_coupler_from_bus_named_front_bus_bus_xing_in_d_bits_opcode = coupler_from_bus_named_front_bus_auto_bus_xing_in_d_bits_opcode; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@22131.4]
  assign auto_coupler_from_bus_named_front_bus_bus_xing_in_d_bits_param = coupler_from_bus_named_front_bus_auto_bus_xing_in_d_bits_param; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@22131.4]
  assign auto_coupler_from_bus_named_front_bus_bus_xing_in_d_bits_size = coupler_from_bus_named_front_bus_auto_bus_xing_in_d_bits_size; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@22131.4]
  assign auto_coupler_from_bus_named_front_bus_bus_xing_in_d_bits_source = coupler_from_bus_named_front_bus_auto_bus_xing_in_d_bits_source; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@22131.4]
  assign auto_coupler_from_bus_named_front_bus_bus_xing_in_d_bits_sink = coupler_from_bus_named_front_bus_auto_bus_xing_in_d_bits_sink; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@22131.4]
  assign auto_coupler_from_bus_named_front_bus_bus_xing_in_d_bits_denied = coupler_from_bus_named_front_bus_auto_bus_xing_in_d_bits_denied; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@22131.4]
  assign auto_coupler_from_bus_named_front_bus_bus_xing_in_d_bits_data = coupler_from_bus_named_front_bus_auto_bus_xing_in_d_bits_data; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@22131.4]
  assign auto_coupler_from_bus_named_front_bus_bus_xing_in_d_bits_corrupt = coupler_from_bus_named_front_bus_auto_bus_xing_in_d_bits_corrupt; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@22131.4]
  assign auto_coupler_to_bus_named_periphery_bus_bus_xing_out_a_valid = coupler_to_bus_named_periphery_bus_auto_bus_xing_out_a_valid; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22130.4]
  assign auto_coupler_to_bus_named_periphery_bus_bus_xing_out_a_bits_opcode = coupler_to_bus_named_periphery_bus_auto_bus_xing_out_a_bits_opcode; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22130.4]
  assign auto_coupler_to_bus_named_periphery_bus_bus_xing_out_a_bits_param = coupler_to_bus_named_periphery_bus_auto_bus_xing_out_a_bits_param; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22130.4]
  assign auto_coupler_to_bus_named_periphery_bus_bus_xing_out_a_bits_size = coupler_to_bus_named_periphery_bus_auto_bus_xing_out_a_bits_size; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22130.4]
  assign auto_coupler_to_bus_named_periphery_bus_bus_xing_out_a_bits_source = coupler_to_bus_named_periphery_bus_auto_bus_xing_out_a_bits_source; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22130.4]
  assign auto_coupler_to_bus_named_periphery_bus_bus_xing_out_a_bits_address = coupler_to_bus_named_periphery_bus_auto_bus_xing_out_a_bits_address; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22130.4]
  assign auto_coupler_to_bus_named_periphery_bus_bus_xing_out_a_bits_mask = coupler_to_bus_named_periphery_bus_auto_bus_xing_out_a_bits_mask; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22130.4]
  assign auto_coupler_to_bus_named_periphery_bus_bus_xing_out_a_bits_data = coupler_to_bus_named_periphery_bus_auto_bus_xing_out_a_bits_data; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22130.4]
  assign auto_coupler_to_bus_named_periphery_bus_bus_xing_out_a_bits_corrupt = coupler_to_bus_named_periphery_bus_auto_bus_xing_out_a_bits_corrupt; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22130.4]
  assign auto_coupler_to_bus_named_periphery_bus_bus_xing_out_d_ready = coupler_to_bus_named_periphery_bus_auto_bus_xing_out_d_ready; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22130.4]
  assign auto_coupler_from_tile_named_tile_tl_master_xing_in_a_ready = coupler_from_tile_named_tile_auto_tl_master_xing_in_a_ready; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@22129.4]
  assign auto_coupler_from_tile_named_tile_tl_master_xing_in_b_valid = coupler_from_tile_named_tile_auto_tl_master_xing_in_b_valid; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@22129.4]
  assign auto_coupler_from_tile_named_tile_tl_master_xing_in_b_bits_param = coupler_from_tile_named_tile_auto_tl_master_xing_in_b_bits_param; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@22129.4]
  assign auto_coupler_from_tile_named_tile_tl_master_xing_in_b_bits_address = coupler_from_tile_named_tile_auto_tl_master_xing_in_b_bits_address; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@22129.4]
  assign auto_coupler_from_tile_named_tile_tl_master_xing_in_c_ready = coupler_from_tile_named_tile_auto_tl_master_xing_in_c_ready; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@22129.4]
  assign auto_coupler_from_tile_named_tile_tl_master_xing_in_d_valid = coupler_from_tile_named_tile_auto_tl_master_xing_in_d_valid; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@22129.4]
  assign auto_coupler_from_tile_named_tile_tl_master_xing_in_d_bits_opcode = coupler_from_tile_named_tile_auto_tl_master_xing_in_d_bits_opcode; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@22129.4]
  assign auto_coupler_from_tile_named_tile_tl_master_xing_in_d_bits_param = coupler_from_tile_named_tile_auto_tl_master_xing_in_d_bits_param; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@22129.4]
  assign auto_coupler_from_tile_named_tile_tl_master_xing_in_d_bits_size = coupler_from_tile_named_tile_auto_tl_master_xing_in_d_bits_size; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@22129.4]
  assign auto_coupler_from_tile_named_tile_tl_master_xing_in_d_bits_source = coupler_from_tile_named_tile_auto_tl_master_xing_in_d_bits_source; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@22129.4]
  assign auto_coupler_from_tile_named_tile_tl_master_xing_in_d_bits_sink = coupler_from_tile_named_tile_auto_tl_master_xing_in_d_bits_sink; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@22129.4]
  assign auto_coupler_from_tile_named_tile_tl_master_xing_in_d_bits_denied = coupler_from_tile_named_tile_auto_tl_master_xing_in_d_bits_denied; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@22129.4]
  assign auto_coupler_from_tile_named_tile_tl_master_xing_in_d_bits_data = coupler_from_tile_named_tile_auto_tl_master_xing_in_d_bits_data; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@22129.4]
  assign auto_coupler_from_tile_named_tile_tl_master_xing_in_d_bits_corrupt = coupler_from_tile_named_tile_auto_tl_master_xing_in_d_bits_corrupt; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@22129.4]
  assign auto_system_bus_xbar_out_a_valid = system_bus_xbar_auto_out_1_a_valid; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22128.4]
  assign auto_system_bus_xbar_out_a_bits_opcode = system_bus_xbar_auto_out_1_a_bits_opcode; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22128.4]
  assign auto_system_bus_xbar_out_a_bits_param = system_bus_xbar_auto_out_1_a_bits_param; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22128.4]
  assign auto_system_bus_xbar_out_a_bits_size = system_bus_xbar_auto_out_1_a_bits_size; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22128.4]
  assign auto_system_bus_xbar_out_a_bits_source = system_bus_xbar_auto_out_1_a_bits_source; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22128.4]
  assign auto_system_bus_xbar_out_a_bits_address = system_bus_xbar_auto_out_1_a_bits_address; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22128.4]
  assign auto_system_bus_xbar_out_a_bits_mask = system_bus_xbar_auto_out_1_a_bits_mask; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22128.4]
  assign auto_system_bus_xbar_out_a_bits_data = system_bus_xbar_auto_out_1_a_bits_data; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22128.4]
  assign auto_system_bus_xbar_out_a_bits_corrupt = system_bus_xbar_auto_out_1_a_bits_corrupt; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22128.4]
  assign auto_system_bus_xbar_out_b_ready = system_bus_xbar_auto_out_1_b_ready; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22128.4]
  assign auto_system_bus_xbar_out_c_valid = system_bus_xbar_auto_out_1_c_valid; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22128.4]
  assign auto_system_bus_xbar_out_c_bits_opcode = system_bus_xbar_auto_out_1_c_bits_opcode; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22128.4]
  assign auto_system_bus_xbar_out_c_bits_param = system_bus_xbar_auto_out_1_c_bits_param; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22128.4]
  assign auto_system_bus_xbar_out_c_bits_size = system_bus_xbar_auto_out_1_c_bits_size; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22128.4]
  assign auto_system_bus_xbar_out_c_bits_source = system_bus_xbar_auto_out_1_c_bits_source; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22128.4]
  assign auto_system_bus_xbar_out_c_bits_address = system_bus_xbar_auto_out_1_c_bits_address; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22128.4]
  assign auto_system_bus_xbar_out_c_bits_data = system_bus_xbar_auto_out_1_c_bits_data; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22128.4]
  assign auto_system_bus_xbar_out_c_bits_corrupt = system_bus_xbar_auto_out_1_c_bits_corrupt; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22128.4]
  assign auto_system_bus_xbar_out_d_ready = system_bus_xbar_auto_out_1_d_ready; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22128.4]
  assign auto_system_bus_xbar_out_e_valid = system_bus_xbar_auto_out_1_e_valid; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22128.4]
  assign auto_system_bus_xbar_out_e_bits_sink = system_bus_xbar_auto_out_1_e_bits_sink; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22128.4]
  assign system_bus_xbar_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22092.4]
  assign system_bus_xbar_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22093.4]
  assign system_bus_xbar_auto_in_1_a_valid = coupler_from_bus_named_front_bus_auto_widget_out_a_valid; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@22127.4]
  assign system_bus_xbar_auto_in_1_a_bits_opcode = coupler_from_bus_named_front_bus_auto_widget_out_a_bits_opcode; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@22127.4]
  assign system_bus_xbar_auto_in_1_a_bits_param = coupler_from_bus_named_front_bus_auto_widget_out_a_bits_param; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@22127.4]
  assign system_bus_xbar_auto_in_1_a_bits_size = coupler_from_bus_named_front_bus_auto_widget_out_a_bits_size; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@22127.4]
  assign system_bus_xbar_auto_in_1_a_bits_source = coupler_from_bus_named_front_bus_auto_widget_out_a_bits_source; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@22127.4]
  assign system_bus_xbar_auto_in_1_a_bits_address = coupler_from_bus_named_front_bus_auto_widget_out_a_bits_address; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@22127.4]
  assign system_bus_xbar_auto_in_1_a_bits_mask = coupler_from_bus_named_front_bus_auto_widget_out_a_bits_mask; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@22127.4]
  assign system_bus_xbar_auto_in_1_a_bits_data = coupler_from_bus_named_front_bus_auto_widget_out_a_bits_data; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@22127.4]
  assign system_bus_xbar_auto_in_1_a_bits_corrupt = coupler_from_bus_named_front_bus_auto_widget_out_a_bits_corrupt; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@22127.4]
  assign system_bus_xbar_auto_in_1_d_ready = coupler_from_bus_named_front_bus_auto_widget_out_d_ready; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@22127.4]
  assign system_bus_xbar_auto_in_0_a_valid = coupler_from_tile_named_tile_auto_buffer_out_a_valid; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@22126.4]
  assign system_bus_xbar_auto_in_0_a_bits_opcode = coupler_from_tile_named_tile_auto_buffer_out_a_bits_opcode; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@22126.4]
  assign system_bus_xbar_auto_in_0_a_bits_param = coupler_from_tile_named_tile_auto_buffer_out_a_bits_param; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@22126.4]
  assign system_bus_xbar_auto_in_0_a_bits_size = coupler_from_tile_named_tile_auto_buffer_out_a_bits_size; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@22126.4]
  assign system_bus_xbar_auto_in_0_a_bits_source = coupler_from_tile_named_tile_auto_buffer_out_a_bits_source; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@22126.4]
  assign system_bus_xbar_auto_in_0_a_bits_address = coupler_from_tile_named_tile_auto_buffer_out_a_bits_address; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@22126.4]
  assign system_bus_xbar_auto_in_0_a_bits_mask = coupler_from_tile_named_tile_auto_buffer_out_a_bits_mask; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@22126.4]
  assign system_bus_xbar_auto_in_0_a_bits_data = coupler_from_tile_named_tile_auto_buffer_out_a_bits_data; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@22126.4]
  assign system_bus_xbar_auto_in_0_a_bits_corrupt = coupler_from_tile_named_tile_auto_buffer_out_a_bits_corrupt; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@22126.4]
  assign system_bus_xbar_auto_in_0_b_ready = coupler_from_tile_named_tile_auto_buffer_out_b_ready; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@22126.4]
  assign system_bus_xbar_auto_in_0_c_valid = coupler_from_tile_named_tile_auto_buffer_out_c_valid; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@22126.4]
  assign system_bus_xbar_auto_in_0_c_bits_opcode = coupler_from_tile_named_tile_auto_buffer_out_c_bits_opcode; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@22126.4]
  assign system_bus_xbar_auto_in_0_c_bits_param = coupler_from_tile_named_tile_auto_buffer_out_c_bits_param; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@22126.4]
  assign system_bus_xbar_auto_in_0_c_bits_size = coupler_from_tile_named_tile_auto_buffer_out_c_bits_size; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@22126.4]
  assign system_bus_xbar_auto_in_0_c_bits_source = coupler_from_tile_named_tile_auto_buffer_out_c_bits_source; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@22126.4]
  assign system_bus_xbar_auto_in_0_c_bits_address = coupler_from_tile_named_tile_auto_buffer_out_c_bits_address; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@22126.4]
  assign system_bus_xbar_auto_in_0_c_bits_data = coupler_from_tile_named_tile_auto_buffer_out_c_bits_data; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@22126.4]
  assign system_bus_xbar_auto_in_0_c_bits_corrupt = coupler_from_tile_named_tile_auto_buffer_out_c_bits_corrupt; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@22126.4]
  assign system_bus_xbar_auto_in_0_d_ready = coupler_from_tile_named_tile_auto_buffer_out_d_ready; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@22126.4]
  assign system_bus_xbar_auto_in_0_e_valid = coupler_from_tile_named_tile_auto_buffer_out_e_valid; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@22126.4]
  assign system_bus_xbar_auto_in_0_e_bits_sink = coupler_from_tile_named_tile_auto_buffer_out_e_bits_sink; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@22126.4]
  assign system_bus_xbar_auto_out_2_a_ready = coupler_to_port_named_mmio_port_axi4_auto_buffer_in_a_ready; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@22125.4]
  assign system_bus_xbar_auto_out_2_d_valid = coupler_to_port_named_mmio_port_axi4_auto_buffer_in_d_valid; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@22125.4]
  assign system_bus_xbar_auto_out_2_d_bits_opcode = coupler_to_port_named_mmio_port_axi4_auto_buffer_in_d_bits_opcode; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@22125.4]
  assign system_bus_xbar_auto_out_2_d_bits_size = coupler_to_port_named_mmio_port_axi4_auto_buffer_in_d_bits_size; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@22125.4]
  assign system_bus_xbar_auto_out_2_d_bits_source = coupler_to_port_named_mmio_port_axi4_auto_buffer_in_d_bits_source; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@22125.4]
  assign system_bus_xbar_auto_out_2_d_bits_denied = coupler_to_port_named_mmio_port_axi4_auto_buffer_in_d_bits_denied; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@22125.4]
  assign system_bus_xbar_auto_out_2_d_bits_data = coupler_to_port_named_mmio_port_axi4_auto_buffer_in_d_bits_data; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@22125.4]
  assign system_bus_xbar_auto_out_2_d_bits_corrupt = coupler_to_port_named_mmio_port_axi4_auto_buffer_in_d_bits_corrupt; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@22125.4]
  assign system_bus_xbar_auto_out_1_a_ready = auto_system_bus_xbar_out_a_ready; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22128.4]
  assign system_bus_xbar_auto_out_1_b_valid = auto_system_bus_xbar_out_b_valid; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22128.4]
  assign system_bus_xbar_auto_out_1_b_bits_param = auto_system_bus_xbar_out_b_bits_param; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22128.4]
  assign system_bus_xbar_auto_out_1_b_bits_address = auto_system_bus_xbar_out_b_bits_address; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22128.4]
  assign system_bus_xbar_auto_out_1_c_ready = auto_system_bus_xbar_out_c_ready; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22128.4]
  assign system_bus_xbar_auto_out_1_d_valid = auto_system_bus_xbar_out_d_valid; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22128.4]
  assign system_bus_xbar_auto_out_1_d_bits_opcode = auto_system_bus_xbar_out_d_bits_opcode; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22128.4]
  assign system_bus_xbar_auto_out_1_d_bits_param = auto_system_bus_xbar_out_d_bits_param; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22128.4]
  assign system_bus_xbar_auto_out_1_d_bits_size = auto_system_bus_xbar_out_d_bits_size; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22128.4]
  assign system_bus_xbar_auto_out_1_d_bits_source = auto_system_bus_xbar_out_d_bits_source; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22128.4]
  assign system_bus_xbar_auto_out_1_d_bits_sink = auto_system_bus_xbar_out_d_bits_sink; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22128.4]
  assign system_bus_xbar_auto_out_1_d_bits_denied = auto_system_bus_xbar_out_d_bits_denied; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22128.4]
  assign system_bus_xbar_auto_out_1_d_bits_data = auto_system_bus_xbar_out_d_bits_data; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22128.4]
  assign system_bus_xbar_auto_out_1_d_bits_corrupt = auto_system_bus_xbar_out_d_bits_corrupt; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22128.4]
  assign system_bus_xbar_auto_out_0_a_ready = coupler_to_bus_named_periphery_bus_auto_widget_in_a_ready; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@22124.4]
  assign system_bus_xbar_auto_out_0_d_valid = coupler_to_bus_named_periphery_bus_auto_widget_in_d_valid; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@22124.4]
  assign system_bus_xbar_auto_out_0_d_bits_opcode = coupler_to_bus_named_periphery_bus_auto_widget_in_d_bits_opcode; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@22124.4]
  assign system_bus_xbar_auto_out_0_d_bits_param = coupler_to_bus_named_periphery_bus_auto_widget_in_d_bits_param; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@22124.4]
  assign system_bus_xbar_auto_out_0_d_bits_size = coupler_to_bus_named_periphery_bus_auto_widget_in_d_bits_size; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@22124.4]
  assign system_bus_xbar_auto_out_0_d_bits_source = coupler_to_bus_named_periphery_bus_auto_widget_in_d_bits_source; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@22124.4]
  assign system_bus_xbar_auto_out_0_d_bits_sink = coupler_to_bus_named_periphery_bus_auto_widget_in_d_bits_sink; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@22124.4]
  assign system_bus_xbar_auto_out_0_d_bits_denied = coupler_to_bus_named_periphery_bus_auto_widget_in_d_bits_denied; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@22124.4]
  assign system_bus_xbar_auto_out_0_d_bits_data = coupler_to_bus_named_periphery_bus_auto_widget_in_d_bits_data; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@22124.4]
  assign system_bus_xbar_auto_out_0_d_bits_corrupt = coupler_to_bus_named_periphery_bus_auto_widget_in_d_bits_corrupt; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@22124.4]
  assign coupler_from_tile_named_tile_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22098.4]
  assign coupler_from_tile_named_tile_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22099.4]
  assign coupler_from_tile_named_tile_auto_buffer_out_a_ready = system_bus_xbar_auto_in_0_a_ready; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@22126.4]
  assign coupler_from_tile_named_tile_auto_buffer_out_b_valid = system_bus_xbar_auto_in_0_b_valid; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@22126.4]
  assign coupler_from_tile_named_tile_auto_buffer_out_b_bits_param = system_bus_xbar_auto_in_0_b_bits_param; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@22126.4]
  assign coupler_from_tile_named_tile_auto_buffer_out_b_bits_address = system_bus_xbar_auto_in_0_b_bits_address; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@22126.4]
  assign coupler_from_tile_named_tile_auto_buffer_out_c_ready = system_bus_xbar_auto_in_0_c_ready; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@22126.4]
  assign coupler_from_tile_named_tile_auto_buffer_out_d_valid = system_bus_xbar_auto_in_0_d_valid; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@22126.4]
  assign coupler_from_tile_named_tile_auto_buffer_out_d_bits_opcode = system_bus_xbar_auto_in_0_d_bits_opcode; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@22126.4]
  assign coupler_from_tile_named_tile_auto_buffer_out_d_bits_param = system_bus_xbar_auto_in_0_d_bits_param; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@22126.4]
  assign coupler_from_tile_named_tile_auto_buffer_out_d_bits_size = system_bus_xbar_auto_in_0_d_bits_size; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@22126.4]
  assign coupler_from_tile_named_tile_auto_buffer_out_d_bits_source = system_bus_xbar_auto_in_0_d_bits_source; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@22126.4]
  assign coupler_from_tile_named_tile_auto_buffer_out_d_bits_sink = system_bus_xbar_auto_in_0_d_bits_sink; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@22126.4]
  assign coupler_from_tile_named_tile_auto_buffer_out_d_bits_denied = system_bus_xbar_auto_in_0_d_bits_denied; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@22126.4]
  assign coupler_from_tile_named_tile_auto_buffer_out_d_bits_data = system_bus_xbar_auto_in_0_d_bits_data; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@22126.4]
  assign coupler_from_tile_named_tile_auto_buffer_out_d_bits_corrupt = system_bus_xbar_auto_in_0_d_bits_corrupt; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@22126.4]
  assign coupler_from_tile_named_tile_auto_tl_master_xing_in_a_valid = auto_coupler_from_tile_named_tile_tl_master_xing_in_a_valid; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@22129.4]
  assign coupler_from_tile_named_tile_auto_tl_master_xing_in_a_bits_opcode = auto_coupler_from_tile_named_tile_tl_master_xing_in_a_bits_opcode; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@22129.4]
  assign coupler_from_tile_named_tile_auto_tl_master_xing_in_a_bits_param = auto_coupler_from_tile_named_tile_tl_master_xing_in_a_bits_param; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@22129.4]
  assign coupler_from_tile_named_tile_auto_tl_master_xing_in_a_bits_size = auto_coupler_from_tile_named_tile_tl_master_xing_in_a_bits_size; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@22129.4]
  assign coupler_from_tile_named_tile_auto_tl_master_xing_in_a_bits_source = auto_coupler_from_tile_named_tile_tl_master_xing_in_a_bits_source; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@22129.4]
  assign coupler_from_tile_named_tile_auto_tl_master_xing_in_a_bits_address = auto_coupler_from_tile_named_tile_tl_master_xing_in_a_bits_address; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@22129.4]
  assign coupler_from_tile_named_tile_auto_tl_master_xing_in_a_bits_mask = auto_coupler_from_tile_named_tile_tl_master_xing_in_a_bits_mask; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@22129.4]
  assign coupler_from_tile_named_tile_auto_tl_master_xing_in_a_bits_data = auto_coupler_from_tile_named_tile_tl_master_xing_in_a_bits_data; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@22129.4]
  assign coupler_from_tile_named_tile_auto_tl_master_xing_in_a_bits_corrupt = auto_coupler_from_tile_named_tile_tl_master_xing_in_a_bits_corrupt; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@22129.4]
  assign coupler_from_tile_named_tile_auto_tl_master_xing_in_b_ready = auto_coupler_from_tile_named_tile_tl_master_xing_in_b_ready; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@22129.4]
  assign coupler_from_tile_named_tile_auto_tl_master_xing_in_c_valid = auto_coupler_from_tile_named_tile_tl_master_xing_in_c_valid; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@22129.4]
  assign coupler_from_tile_named_tile_auto_tl_master_xing_in_c_bits_opcode = auto_coupler_from_tile_named_tile_tl_master_xing_in_c_bits_opcode; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@22129.4]
  assign coupler_from_tile_named_tile_auto_tl_master_xing_in_c_bits_param = auto_coupler_from_tile_named_tile_tl_master_xing_in_c_bits_param; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@22129.4]
  assign coupler_from_tile_named_tile_auto_tl_master_xing_in_c_bits_size = auto_coupler_from_tile_named_tile_tl_master_xing_in_c_bits_size; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@22129.4]
  assign coupler_from_tile_named_tile_auto_tl_master_xing_in_c_bits_source = auto_coupler_from_tile_named_tile_tl_master_xing_in_c_bits_source; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@22129.4]
  assign coupler_from_tile_named_tile_auto_tl_master_xing_in_c_bits_address = auto_coupler_from_tile_named_tile_tl_master_xing_in_c_bits_address; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@22129.4]
  assign coupler_from_tile_named_tile_auto_tl_master_xing_in_c_bits_data = auto_coupler_from_tile_named_tile_tl_master_xing_in_c_bits_data; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@22129.4]
  assign coupler_from_tile_named_tile_auto_tl_master_xing_in_c_bits_corrupt = auto_coupler_from_tile_named_tile_tl_master_xing_in_c_bits_corrupt; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@22129.4]
  assign coupler_from_tile_named_tile_auto_tl_master_xing_in_d_ready = auto_coupler_from_tile_named_tile_tl_master_xing_in_d_ready; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@22129.4]
  assign coupler_from_tile_named_tile_auto_tl_master_xing_in_e_valid = auto_coupler_from_tile_named_tile_tl_master_xing_in_e_valid; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@22129.4]
  assign coupler_from_tile_named_tile_auto_tl_master_xing_in_e_bits_sink = auto_coupler_from_tile_named_tile_tl_master_xing_in_e_bits_sink; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@22129.4]
  assign coupler_to_bus_named_periphery_bus_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22104.4]
  assign coupler_to_bus_named_periphery_bus_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22105.4]
  assign coupler_to_bus_named_periphery_bus_auto_widget_in_a_valid = system_bus_xbar_auto_out_0_a_valid; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@22124.4]
  assign coupler_to_bus_named_periphery_bus_auto_widget_in_a_bits_opcode = system_bus_xbar_auto_out_0_a_bits_opcode; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@22124.4]
  assign coupler_to_bus_named_periphery_bus_auto_widget_in_a_bits_param = system_bus_xbar_auto_out_0_a_bits_param; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@22124.4]
  assign coupler_to_bus_named_periphery_bus_auto_widget_in_a_bits_size = system_bus_xbar_auto_out_0_a_bits_size; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@22124.4]
  assign coupler_to_bus_named_periphery_bus_auto_widget_in_a_bits_source = system_bus_xbar_auto_out_0_a_bits_source; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@22124.4]
  assign coupler_to_bus_named_periphery_bus_auto_widget_in_a_bits_address = system_bus_xbar_auto_out_0_a_bits_address; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@22124.4]
  assign coupler_to_bus_named_periphery_bus_auto_widget_in_a_bits_mask = system_bus_xbar_auto_out_0_a_bits_mask; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@22124.4]
  assign coupler_to_bus_named_periphery_bus_auto_widget_in_a_bits_data = system_bus_xbar_auto_out_0_a_bits_data; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@22124.4]
  assign coupler_to_bus_named_periphery_bus_auto_widget_in_a_bits_corrupt = system_bus_xbar_auto_out_0_a_bits_corrupt; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@22124.4]
  assign coupler_to_bus_named_periphery_bus_auto_widget_in_d_ready = system_bus_xbar_auto_out_0_d_ready; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@22124.4]
  assign coupler_to_bus_named_periphery_bus_auto_bus_xing_out_a_ready = auto_coupler_to_bus_named_periphery_bus_bus_xing_out_a_ready; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22130.4]
  assign coupler_to_bus_named_periphery_bus_auto_bus_xing_out_d_valid = auto_coupler_to_bus_named_periphery_bus_bus_xing_out_d_valid; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22130.4]
  assign coupler_to_bus_named_periphery_bus_auto_bus_xing_out_d_bits_opcode = auto_coupler_to_bus_named_periphery_bus_bus_xing_out_d_bits_opcode; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22130.4]
  assign coupler_to_bus_named_periphery_bus_auto_bus_xing_out_d_bits_param = auto_coupler_to_bus_named_periphery_bus_bus_xing_out_d_bits_param; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22130.4]
  assign coupler_to_bus_named_periphery_bus_auto_bus_xing_out_d_bits_size = auto_coupler_to_bus_named_periphery_bus_bus_xing_out_d_bits_size; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22130.4]
  assign coupler_to_bus_named_periphery_bus_auto_bus_xing_out_d_bits_source = auto_coupler_to_bus_named_periphery_bus_bus_xing_out_d_bits_source; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22130.4]
  assign coupler_to_bus_named_periphery_bus_auto_bus_xing_out_d_bits_sink = auto_coupler_to_bus_named_periphery_bus_bus_xing_out_d_bits_sink; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22130.4]
  assign coupler_to_bus_named_periphery_bus_auto_bus_xing_out_d_bits_denied = auto_coupler_to_bus_named_periphery_bus_bus_xing_out_d_bits_denied; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22130.4]
  assign coupler_to_bus_named_periphery_bus_auto_bus_xing_out_d_bits_data = auto_coupler_to_bus_named_periphery_bus_bus_xing_out_d_bits_data; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22130.4]
  assign coupler_to_bus_named_periphery_bus_auto_bus_xing_out_d_bits_corrupt = auto_coupler_to_bus_named_periphery_bus_bus_xing_out_d_bits_corrupt; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22130.4]
  assign coupler_from_bus_named_front_bus_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22110.4]
  assign coupler_from_bus_named_front_bus_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22111.4]
  assign coupler_from_bus_named_front_bus_auto_widget_out_a_ready = system_bus_xbar_auto_in_1_a_ready; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@22127.4]
  assign coupler_from_bus_named_front_bus_auto_widget_out_d_valid = system_bus_xbar_auto_in_1_d_valid; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@22127.4]
  assign coupler_from_bus_named_front_bus_auto_widget_out_d_bits_opcode = system_bus_xbar_auto_in_1_d_bits_opcode; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@22127.4]
  assign coupler_from_bus_named_front_bus_auto_widget_out_d_bits_param = system_bus_xbar_auto_in_1_d_bits_param; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@22127.4]
  assign coupler_from_bus_named_front_bus_auto_widget_out_d_bits_size = system_bus_xbar_auto_in_1_d_bits_size; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@22127.4]
  assign coupler_from_bus_named_front_bus_auto_widget_out_d_bits_source = system_bus_xbar_auto_in_1_d_bits_source; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@22127.4]
  assign coupler_from_bus_named_front_bus_auto_widget_out_d_bits_sink = system_bus_xbar_auto_in_1_d_bits_sink; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@22127.4]
  assign coupler_from_bus_named_front_bus_auto_widget_out_d_bits_denied = system_bus_xbar_auto_in_1_d_bits_denied; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@22127.4]
  assign coupler_from_bus_named_front_bus_auto_widget_out_d_bits_data = system_bus_xbar_auto_in_1_d_bits_data; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@22127.4]
  assign coupler_from_bus_named_front_bus_auto_widget_out_d_bits_corrupt = system_bus_xbar_auto_in_1_d_bits_corrupt; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@22127.4]
  assign coupler_from_bus_named_front_bus_auto_bus_xing_in_a_valid = auto_coupler_from_bus_named_front_bus_bus_xing_in_a_valid; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@22131.4]
  assign coupler_from_bus_named_front_bus_auto_bus_xing_in_a_bits_opcode = auto_coupler_from_bus_named_front_bus_bus_xing_in_a_bits_opcode; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@22131.4]
  assign coupler_from_bus_named_front_bus_auto_bus_xing_in_a_bits_param = auto_coupler_from_bus_named_front_bus_bus_xing_in_a_bits_param; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@22131.4]
  assign coupler_from_bus_named_front_bus_auto_bus_xing_in_a_bits_size = auto_coupler_from_bus_named_front_bus_bus_xing_in_a_bits_size; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@22131.4]
  assign coupler_from_bus_named_front_bus_auto_bus_xing_in_a_bits_source = auto_coupler_from_bus_named_front_bus_bus_xing_in_a_bits_source; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@22131.4]
  assign coupler_from_bus_named_front_bus_auto_bus_xing_in_a_bits_address = auto_coupler_from_bus_named_front_bus_bus_xing_in_a_bits_address; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@22131.4]
  assign coupler_from_bus_named_front_bus_auto_bus_xing_in_a_bits_mask = auto_coupler_from_bus_named_front_bus_bus_xing_in_a_bits_mask; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@22131.4]
  assign coupler_from_bus_named_front_bus_auto_bus_xing_in_a_bits_data = auto_coupler_from_bus_named_front_bus_bus_xing_in_a_bits_data; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@22131.4]
  assign coupler_from_bus_named_front_bus_auto_bus_xing_in_a_bits_corrupt = auto_coupler_from_bus_named_front_bus_bus_xing_in_a_bits_corrupt; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@22131.4]
  assign coupler_from_bus_named_front_bus_auto_bus_xing_in_d_ready = auto_coupler_from_bus_named_front_bus_bus_xing_in_d_ready; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@22131.4]
  assign coupler_to_port_named_mmio_port_axi4_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22122.4]
  assign coupler_to_port_named_mmio_port_axi4_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22123.4]
  assign coupler_to_port_named_mmio_port_axi4_auto_buffer_in_a_valid = system_bus_xbar_auto_out_2_a_valid; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@22125.4]
  assign coupler_to_port_named_mmio_port_axi4_auto_buffer_in_a_bits_opcode = system_bus_xbar_auto_out_2_a_bits_opcode; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@22125.4]
  assign coupler_to_port_named_mmio_port_axi4_auto_buffer_in_a_bits_param = system_bus_xbar_auto_out_2_a_bits_param; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@22125.4]
  assign coupler_to_port_named_mmio_port_axi4_auto_buffer_in_a_bits_size = system_bus_xbar_auto_out_2_a_bits_size; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@22125.4]
  assign coupler_to_port_named_mmio_port_axi4_auto_buffer_in_a_bits_source = system_bus_xbar_auto_out_2_a_bits_source; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@22125.4]
  assign coupler_to_port_named_mmio_port_axi4_auto_buffer_in_a_bits_address = system_bus_xbar_auto_out_2_a_bits_address; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@22125.4]
  assign coupler_to_port_named_mmio_port_axi4_auto_buffer_in_a_bits_mask = system_bus_xbar_auto_out_2_a_bits_mask; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@22125.4]
  assign coupler_to_port_named_mmio_port_axi4_auto_buffer_in_a_bits_data = system_bus_xbar_auto_out_2_a_bits_data; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@22125.4]
  assign coupler_to_port_named_mmio_port_axi4_auto_buffer_in_a_bits_corrupt = system_bus_xbar_auto_out_2_a_bits_corrupt; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@22125.4]
  assign coupler_to_port_named_mmio_port_axi4_auto_buffer_in_d_ready = system_bus_xbar_auto_out_2_d_ready; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@22125.4]
  assign coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_ready = auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_ready; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22132.4]
  assign coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_w_ready = auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_ready; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22132.4]
  assign coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_b_valid = auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_b_valid; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22132.4]
  assign coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_b_bits_id = auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_b_bits_id; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22132.4]
  assign coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_b_bits_resp = auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_b_bits_resp; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22132.4]
  assign coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_ready = auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_ready; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22132.4]
  assign coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_r_valid = auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_valid; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22132.4]
  assign coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_r_bits_id = auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_bits_id; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22132.4]
  assign coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_r_bits_data = auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_bits_data; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22132.4]
  assign coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_r_bits_resp = auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_bits_resp; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22132.4]
  assign coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_r_bits_last = auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_bits_last; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@22132.4]
endmodule
`endif // __SystemBus
