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
module TLMonitor_9( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22249.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22250.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22251.4]
  input         io_in_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22252.4]
  input         io_in_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22252.4]
  input  [2:0]  io_in_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22252.4]
  input  [2:0]  io_in_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22252.4]
  input  [3:0]  io_in_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22252.4]
  input  [3:0]  io_in_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22252.4]
  input  [31:0] io_in_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22252.4]
  input  [3:0]  io_in_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22252.4]
  input         io_in_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22252.4]
  input         io_in_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22252.4]
  input         io_in_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22252.4]
  input  [2:0]  io_in_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22252.4]
  input  [1:0]  io_in_d_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22252.4]
  input  [3:0]  io_in_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22252.4]
  input  [3:0]  io_in_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22252.4]
  input  [1:0]  io_in_d_bits_sink, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22252.4]
  input         io_in_d_bits_denied, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22252.4]
  input         io_in_d_bits_corrupt // @[:freechips.rocketchip.system.DefaultRV32Config.fir@22252.4]
);
  wire [31:0] plusarg_reader_out; // @[PlusArg.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@23764.4]
  wire  _T_1; // @[Monitor.scala 49:12:freechips.rocketchip.system.DefaultRV32Config.fir@22256.6]
  wire  _T_6; // @[Parameters.scala 54:10:freechips.rocketchip.system.DefaultRV32Config.fir@22265.6]
  wire  _T_7; // @[Parameters.scala 54:32:freechips.rocketchip.system.DefaultRV32Config.fir@22266.6]
  wire  _T_21; // @[Parameters.scala 334:46:freechips.rocketchip.system.DefaultRV32Config.fir@22283.6]
  wire [26:0] _T_23; // @[package.scala 189:77:freechips.rocketchip.system.DefaultRV32Config.fir@22285.6]
  wire [11:0] _T_24; // @[package.scala 189:82:freechips.rocketchip.system.DefaultRV32Config.fir@22286.6]
  wire [11:0] _T_25; // @[package.scala 189:46:freechips.rocketchip.system.DefaultRV32Config.fir@22287.6]
  wire [31:0] _GEN_18; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@22288.6]
  wire [31:0] _T_26; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@22288.6]
  wire  _T_27; // @[Edges.scala 22:24:freechips.rocketchip.system.DefaultRV32Config.fir@22289.6]
  wire  _T_29; // @[OneHot.scala 64:49:freechips.rocketchip.system.DefaultRV32Config.fir@22291.6]
  wire [1:0] _T_30; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@22292.6]
  wire [1:0] _T_32; // @[Misc.scala 200:81:freechips.rocketchip.system.DefaultRV32Config.fir@22294.6]
  wire  _T_33; // @[Misc.scala 204:21:freechips.rocketchip.system.DefaultRV32Config.fir@22295.6]
  wire  _T_34; // @[Misc.scala 207:26:freechips.rocketchip.system.DefaultRV32Config.fir@22296.6]
  wire  _T_35; // @[Misc.scala 208:26:freechips.rocketchip.system.DefaultRV32Config.fir@22297.6]
  wire  _T_36; // @[Misc.scala 209:20:freechips.rocketchip.system.DefaultRV32Config.fir@22298.6]
  wire  _T_38; // @[Misc.scala 213:38:freechips.rocketchip.system.DefaultRV32Config.fir@22300.6]
  wire  _T_39; // @[Misc.scala 213:29:freechips.rocketchip.system.DefaultRV32Config.fir@22301.6]
  wire  _T_41; // @[Misc.scala 213:38:freechips.rocketchip.system.DefaultRV32Config.fir@22303.6]
  wire  _T_42; // @[Misc.scala 213:29:freechips.rocketchip.system.DefaultRV32Config.fir@22304.6]
  wire  _T_43; // @[Misc.scala 207:26:freechips.rocketchip.system.DefaultRV32Config.fir@22305.6]
  wire  _T_44; // @[Misc.scala 208:26:freechips.rocketchip.system.DefaultRV32Config.fir@22306.6]
  wire  _T_45; // @[Misc.scala 209:20:freechips.rocketchip.system.DefaultRV32Config.fir@22307.6]
  wire  _T_46; // @[Misc.scala 212:27:freechips.rocketchip.system.DefaultRV32Config.fir@22308.6]
  wire  _T_47; // @[Misc.scala 213:38:freechips.rocketchip.system.DefaultRV32Config.fir@22309.6]
  wire  _T_48; // @[Misc.scala 213:29:freechips.rocketchip.system.DefaultRV32Config.fir@22310.6]
  wire  _T_49; // @[Misc.scala 212:27:freechips.rocketchip.system.DefaultRV32Config.fir@22311.6]
  wire  _T_50; // @[Misc.scala 213:38:freechips.rocketchip.system.DefaultRV32Config.fir@22312.6]
  wire  _T_51; // @[Misc.scala 213:29:freechips.rocketchip.system.DefaultRV32Config.fir@22313.6]
  wire  _T_52; // @[Misc.scala 212:27:freechips.rocketchip.system.DefaultRV32Config.fir@22314.6]
  wire  _T_53; // @[Misc.scala 213:38:freechips.rocketchip.system.DefaultRV32Config.fir@22315.6]
  wire  _T_54; // @[Misc.scala 213:29:freechips.rocketchip.system.DefaultRV32Config.fir@22316.6]
  wire  _T_55; // @[Misc.scala 212:27:freechips.rocketchip.system.DefaultRV32Config.fir@22317.6]
  wire  _T_56; // @[Misc.scala 213:38:freechips.rocketchip.system.DefaultRV32Config.fir@22318.6]
  wire  _T_57; // @[Misc.scala 213:29:freechips.rocketchip.system.DefaultRV32Config.fir@22319.6]
  wire [3:0] _T_60; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@22322.6]
  wire [32:0] _T_71; // @[Parameters.scala 125:49:freechips.rocketchip.system.DefaultRV32Config.fir@22333.6]
  wire  _T_95; // @[Monitor.scala 58:25:freechips.rocketchip.system.DefaultRV32Config.fir@22361.6]
  wire [31:0] _T_97; // @[Parameters.scala 125:31:freechips.rocketchip.system.DefaultRV32Config.fir@22364.8]
  wire [32:0] _T_98; // @[Parameters.scala 125:49:freechips.rocketchip.system.DefaultRV32Config.fir@22365.8]
  wire [32:0] _T_99; // @[Parameters.scala 125:52:freechips.rocketchip.system.DefaultRV32Config.fir@22366.8]
  wire [32:0] _T_100; // @[Parameters.scala 125:52:freechips.rocketchip.system.DefaultRV32Config.fir@22367.8]
  wire  _T_101; // @[Parameters.scala 125:67:freechips.rocketchip.system.DefaultRV32Config.fir@22368.8]
  wire [31:0] _T_102; // @[Parameters.scala 125:31:freechips.rocketchip.system.DefaultRV32Config.fir@22369.8]
  wire [32:0] _T_103; // @[Parameters.scala 125:49:freechips.rocketchip.system.DefaultRV32Config.fir@22370.8]
  wire [32:0] _T_104; // @[Parameters.scala 125:52:freechips.rocketchip.system.DefaultRV32Config.fir@22371.8]
  wire [32:0] _T_105; // @[Parameters.scala 125:52:freechips.rocketchip.system.DefaultRV32Config.fir@22372.8]
  wire  _T_106; // @[Parameters.scala 125:67:freechips.rocketchip.system.DefaultRV32Config.fir@22373.8]
  wire [31:0] _T_107; // @[Parameters.scala 125:31:freechips.rocketchip.system.DefaultRV32Config.fir@22374.8]
  wire [32:0] _T_108; // @[Parameters.scala 125:49:freechips.rocketchip.system.DefaultRV32Config.fir@22375.8]
  wire [32:0] _T_109; // @[Parameters.scala 125:52:freechips.rocketchip.system.DefaultRV32Config.fir@22376.8]
  wire [32:0] _T_110; // @[Parameters.scala 125:52:freechips.rocketchip.system.DefaultRV32Config.fir@22377.8]
  wire  _T_111; // @[Parameters.scala 125:67:freechips.rocketchip.system.DefaultRV32Config.fir@22378.8]
  wire [32:0] _T_114; // @[Parameters.scala 125:52:freechips.rocketchip.system.DefaultRV32Config.fir@22381.8]
  wire [32:0] _T_115; // @[Parameters.scala 125:52:freechips.rocketchip.system.DefaultRV32Config.fir@22382.8]
  wire  _T_116; // @[Parameters.scala 125:67:freechips.rocketchip.system.DefaultRV32Config.fir@22383.8]
  wire [31:0] _T_117; // @[Parameters.scala 125:31:freechips.rocketchip.system.DefaultRV32Config.fir@22384.8]
  wire [32:0] _T_118; // @[Parameters.scala 125:49:freechips.rocketchip.system.DefaultRV32Config.fir@22385.8]
  wire [32:0] _T_119; // @[Parameters.scala 125:52:freechips.rocketchip.system.DefaultRV32Config.fir@22386.8]
  wire [32:0] _T_120; // @[Parameters.scala 125:52:freechips.rocketchip.system.DefaultRV32Config.fir@22387.8]
  wire  _T_121; // @[Parameters.scala 125:67:freechips.rocketchip.system.DefaultRV32Config.fir@22388.8]
  wire [31:0] _T_122; // @[Parameters.scala 125:31:freechips.rocketchip.system.DefaultRV32Config.fir@22389.8]
  wire [32:0] _T_123; // @[Parameters.scala 125:49:freechips.rocketchip.system.DefaultRV32Config.fir@22390.8]
  wire [32:0] _T_124; // @[Parameters.scala 125:52:freechips.rocketchip.system.DefaultRV32Config.fir@22391.8]
  wire [32:0] _T_125; // @[Parameters.scala 125:52:freechips.rocketchip.system.DefaultRV32Config.fir@22392.8]
  wire  _T_126; // @[Parameters.scala 125:67:freechips.rocketchip.system.DefaultRV32Config.fir@22393.8]
  wire  _T_127; // @[Parameters.scala 196:42:freechips.rocketchip.system.DefaultRV32Config.fir@22394.8]
  wire  _T_128; // @[Parameters.scala 196:42:freechips.rocketchip.system.DefaultRV32Config.fir@22395.8]
  wire  _T_129; // @[Parameters.scala 196:42:freechips.rocketchip.system.DefaultRV32Config.fir@22396.8]
  wire  _T_134; // @[Parameters.scala 92:42:freechips.rocketchip.system.DefaultRV32Config.fir@22401.8]
  wire [31:0] _T_137; // @[Parameters.scala 125:31:freechips.rocketchip.system.DefaultRV32Config.fir@22404.8]
  wire [32:0] _T_138; // @[Parameters.scala 125:49:freechips.rocketchip.system.DefaultRV32Config.fir@22405.8]
  wire [32:0] _T_139; // @[Parameters.scala 125:52:freechips.rocketchip.system.DefaultRV32Config.fir@22406.8]
  wire [32:0] _T_140; // @[Parameters.scala 125:52:freechips.rocketchip.system.DefaultRV32Config.fir@22407.8]
  wire  _T_141; // @[Parameters.scala 125:67:freechips.rocketchip.system.DefaultRV32Config.fir@22408.8]
  wire  _T_142; // @[Parameters.scala 195:56:freechips.rocketchip.system.DefaultRV32Config.fir@22409.8]
  wire  _T_146; // @[Monitor.scala 59:14:freechips.rocketchip.system.DefaultRV32Config.fir@22413.8]
  wire  _T_147; // @[Monitor.scala 59:14:freechips.rocketchip.system.DefaultRV32Config.fir@22414.8]
  wire  _T_150; // @[Monitor.scala 60:14:freechips.rocketchip.system.DefaultRV32Config.fir@22421.8]
  wire  _T_152; // @[Monitor.scala 61:14:freechips.rocketchip.system.DefaultRV32Config.fir@22427.8]
  wire  _T_153; // @[Monitor.scala 61:14:freechips.rocketchip.system.DefaultRV32Config.fir@22428.8]
  wire  _T_156; // @[Monitor.scala 62:14:freechips.rocketchip.system.DefaultRV32Config.fir@22435.8]
  wire  _T_157; // @[Monitor.scala 62:14:freechips.rocketchip.system.DefaultRV32Config.fir@22436.8]
  wire  _T_159; // @[Monitor.scala 63:14:freechips.rocketchip.system.DefaultRV32Config.fir@22442.8]
  wire  _T_160; // @[Monitor.scala 63:14:freechips.rocketchip.system.DefaultRV32Config.fir@22443.8]
  wire  _T_161; // @[Bundles.scala 110:27:freechips.rocketchip.system.DefaultRV32Config.fir@22448.8]
  wire  _T_163; // @[Monitor.scala 64:14:freechips.rocketchip.system.DefaultRV32Config.fir@22450.8]
  wire  _T_164; // @[Monitor.scala 64:14:freechips.rocketchip.system.DefaultRV32Config.fir@22451.8]
  wire [3:0] _T_165; // @[Monitor.scala 65:15:freechips.rocketchip.system.DefaultRV32Config.fir@22456.8]
  wire  _T_166; // @[Monitor.scala 65:28:freechips.rocketchip.system.DefaultRV32Config.fir@22457.8]
  wire  _T_168; // @[Monitor.scala 65:14:freechips.rocketchip.system.DefaultRV32Config.fir@22459.8]
  wire  _T_169; // @[Monitor.scala 65:14:freechips.rocketchip.system.DefaultRV32Config.fir@22460.8]
  wire  _T_170; // @[Monitor.scala 66:15:freechips.rocketchip.system.DefaultRV32Config.fir@22465.8]
  wire  _T_172; // @[Monitor.scala 66:14:freechips.rocketchip.system.DefaultRV32Config.fir@22467.8]
  wire  _T_173; // @[Monitor.scala 66:14:freechips.rocketchip.system.DefaultRV32Config.fir@22468.8]
  wire  _T_174; // @[Monitor.scala 69:25:freechips.rocketchip.system.DefaultRV32Config.fir@22474.6]
  wire  _T_244; // @[Monitor.scala 76:28:freechips.rocketchip.system.DefaultRV32Config.fir@22569.8]
  wire  _T_246; // @[Monitor.scala 76:14:freechips.rocketchip.system.DefaultRV32Config.fir@22571.8]
  wire  _T_247; // @[Monitor.scala 76:14:freechips.rocketchip.system.DefaultRV32Config.fir@22572.8]
  wire  _T_257; // @[Monitor.scala 81:25:freechips.rocketchip.system.DefaultRV32Config.fir@22595.6]
  wire  _T_259; // @[Parameters.scala 92:42:freechips.rocketchip.system.DefaultRV32Config.fir@22598.8]
  wire  _T_267; // @[Parameters.scala 195:56:freechips.rocketchip.system.DefaultRV32Config.fir@22606.8]
  wire  _T_302; // @[Parameters.scala 196:42:freechips.rocketchip.system.DefaultRV32Config.fir@22641.8]
  wire  _T_303; // @[Parameters.scala 196:42:freechips.rocketchip.system.DefaultRV32Config.fir@22642.8]
  wire  _T_304; // @[Parameters.scala 196:42:freechips.rocketchip.system.DefaultRV32Config.fir@22643.8]
  wire  _T_305; // @[Parameters.scala 196:42:freechips.rocketchip.system.DefaultRV32Config.fir@22644.8]
  wire  _T_306; // @[Parameters.scala 196:42:freechips.rocketchip.system.DefaultRV32Config.fir@22645.8]
  wire  _T_307; // @[Parameters.scala 195:56:freechips.rocketchip.system.DefaultRV32Config.fir@22646.8]
  wire  _T_309; // @[Parameters.scala 197:30:freechips.rocketchip.system.DefaultRV32Config.fir@22648.8]
  wire  _T_311; // @[Monitor.scala 82:14:freechips.rocketchip.system.DefaultRV32Config.fir@22650.8]
  wire  _T_312; // @[Monitor.scala 82:14:freechips.rocketchip.system.DefaultRV32Config.fir@22651.8]
  wire  _T_319; // @[Monitor.scala 85:28:freechips.rocketchip.system.DefaultRV32Config.fir@22670.8]
  wire  _T_321; // @[Monitor.scala 85:14:freechips.rocketchip.system.DefaultRV32Config.fir@22672.8]
  wire  _T_322; // @[Monitor.scala 85:14:freechips.rocketchip.system.DefaultRV32Config.fir@22673.8]
  wire  _T_323; // @[Monitor.scala 86:27:freechips.rocketchip.system.DefaultRV32Config.fir@22678.8]
  wire  _T_325; // @[Monitor.scala 86:14:freechips.rocketchip.system.DefaultRV32Config.fir@22680.8]
  wire  _T_326; // @[Monitor.scala 86:14:freechips.rocketchip.system.DefaultRV32Config.fir@22681.8]
  wire  _T_331; // @[Monitor.scala 90:25:freechips.rocketchip.system.DefaultRV32Config.fir@22695.6]
  wire  _T_368; // @[Parameters.scala 196:42:freechips.rocketchip.system.DefaultRV32Config.fir@22733.8]
  wire  _T_369; // @[Parameters.scala 195:56:freechips.rocketchip.system.DefaultRV32Config.fir@22734.8]
  wire  _T_378; // @[Parameters.scala 92:42:freechips.rocketchip.system.DefaultRV32Config.fir@22743.8]
  wire  _T_386; // @[Parameters.scala 195:56:freechips.rocketchip.system.DefaultRV32Config.fir@22751.8]
  wire  _T_388; // @[Parameters.scala 197:30:freechips.rocketchip.system.DefaultRV32Config.fir@22753.8]
  wire  _T_390; // @[Parameters.scala 197:30:freechips.rocketchip.system.DefaultRV32Config.fir@22755.8]
  wire  _T_392; // @[Monitor.scala 91:14:freechips.rocketchip.system.DefaultRV32Config.fir@22757.8]
  wire  _T_393; // @[Monitor.scala 91:14:freechips.rocketchip.system.DefaultRV32Config.fir@22758.8]
  wire  _T_408; // @[Monitor.scala 98:25:freechips.rocketchip.system.DefaultRV32Config.fir@22794.6]
  wire [3:0] _T_481; // @[Monitor.scala 103:30:freechips.rocketchip.system.DefaultRV32Config.fir@22884.8]
  wire [3:0] _T_482; // @[Monitor.scala 103:28:freechips.rocketchip.system.DefaultRV32Config.fir@22885.8]
  wire  _T_483; // @[Monitor.scala 103:37:freechips.rocketchip.system.DefaultRV32Config.fir@22886.8]
  wire  _T_485; // @[Monitor.scala 103:14:freechips.rocketchip.system.DefaultRV32Config.fir@22888.8]
  wire  _T_486; // @[Monitor.scala 103:14:freechips.rocketchip.system.DefaultRV32Config.fir@22889.8]
  wire  _T_487; // @[Monitor.scala 106:25:freechips.rocketchip.system.DefaultRV32Config.fir@22895.6]
  wire  _T_489; // @[Parameters.scala 92:42:freechips.rocketchip.system.DefaultRV32Config.fir@22898.8]
  wire  _T_515; // @[Parameters.scala 195:56:freechips.rocketchip.system.DefaultRV32Config.fir@22924.8]
  wire  _T_538; // @[Monitor.scala 107:14:freechips.rocketchip.system.DefaultRV32Config.fir@22947.8]
  wire  _T_539; // @[Monitor.scala 107:14:freechips.rocketchip.system.DefaultRV32Config.fir@22948.8]
  wire  _T_546; // @[Bundles.scala 140:33:freechips.rocketchip.system.DefaultRV32Config.fir@22967.8]
  wire  _T_548; // @[Monitor.scala 110:14:freechips.rocketchip.system.DefaultRV32Config.fir@22969.8]
  wire  _T_549; // @[Monitor.scala 110:14:freechips.rocketchip.system.DefaultRV32Config.fir@22970.8]
  wire  _T_554; // @[Monitor.scala 114:25:freechips.rocketchip.system.DefaultRV32Config.fir@22984.6]
  wire  _T_613; // @[Bundles.scala 147:30:freechips.rocketchip.system.DefaultRV32Config.fir@23056.8]
  wire  _T_615; // @[Monitor.scala 118:14:freechips.rocketchip.system.DefaultRV32Config.fir@23058.8]
  wire  _T_616; // @[Monitor.scala 118:14:freechips.rocketchip.system.DefaultRV32Config.fir@23059.8]
  wire  _T_621; // @[Monitor.scala 122:25:freechips.rocketchip.system.DefaultRV32Config.fir@23073.6]
  wire  _T_672; // @[Monitor.scala 123:14:freechips.rocketchip.system.DefaultRV32Config.fir@23125.8]
  wire  _T_673; // @[Monitor.scala 123:14:freechips.rocketchip.system.DefaultRV32Config.fir@23126.8]
  wire  _T_688; // @[Bundles.scala 44:24:freechips.rocketchip.system.DefaultRV32Config.fir@23164.6]
  wire  _T_690; // @[Monitor.scala 278:12:freechips.rocketchip.system.DefaultRV32Config.fir@23166.6]
  wire  _T_691; // @[Monitor.scala 278:12:freechips.rocketchip.system.DefaultRV32Config.fir@23167.6]
  wire  _T_694; // @[Parameters.scala 54:10:freechips.rocketchip.system.DefaultRV32Config.fir@23174.6]
  wire  _T_695; // @[Parameters.scala 54:32:freechips.rocketchip.system.DefaultRV32Config.fir@23175.6]
  wire  _T_709; // @[Parameters.scala 334:46:freechips.rocketchip.system.DefaultRV32Config.fir@23192.6]
  wire  _T_711; // @[Monitor.scala 285:25:freechips.rocketchip.system.DefaultRV32Config.fir@23194.6]
  wire  _T_713; // @[Monitor.scala 286:14:freechips.rocketchip.system.DefaultRV32Config.fir@23197.8]
  wire  _T_714; // @[Monitor.scala 286:14:freechips.rocketchip.system.DefaultRV32Config.fir@23198.8]
  wire  _T_715; // @[Monitor.scala 287:27:freechips.rocketchip.system.DefaultRV32Config.fir@23203.8]
  wire  _T_717; // @[Monitor.scala 287:14:freechips.rocketchip.system.DefaultRV32Config.fir@23205.8]
  wire  _T_718; // @[Monitor.scala 287:14:freechips.rocketchip.system.DefaultRV32Config.fir@23206.8]
  wire  _T_719; // @[Monitor.scala 288:28:freechips.rocketchip.system.DefaultRV32Config.fir@23211.8]
  wire  _T_721; // @[Monitor.scala 288:14:freechips.rocketchip.system.DefaultRV32Config.fir@23213.8]
  wire  _T_722; // @[Monitor.scala 288:14:freechips.rocketchip.system.DefaultRV32Config.fir@23214.8]
  wire  _T_723; // @[Monitor.scala 289:15:freechips.rocketchip.system.DefaultRV32Config.fir@23219.8]
  wire  _T_725; // @[Monitor.scala 289:14:freechips.rocketchip.system.DefaultRV32Config.fir@23221.8]
  wire  _T_726; // @[Monitor.scala 289:14:freechips.rocketchip.system.DefaultRV32Config.fir@23222.8]
  wire  _T_727; // @[Monitor.scala 290:15:freechips.rocketchip.system.DefaultRV32Config.fir@23227.8]
  wire  _T_729; // @[Monitor.scala 290:14:freechips.rocketchip.system.DefaultRV32Config.fir@23229.8]
  wire  _T_730; // @[Monitor.scala 290:14:freechips.rocketchip.system.DefaultRV32Config.fir@23230.8]
  wire  _T_731; // @[Monitor.scala 293:25:freechips.rocketchip.system.DefaultRV32Config.fir@23236.6]
  wire  _T_742; // @[Bundles.scala 104:26:freechips.rocketchip.system.DefaultRV32Config.fir@23260.8]
  wire  _T_744; // @[Monitor.scala 297:14:freechips.rocketchip.system.DefaultRV32Config.fir@23262.8]
  wire  _T_745; // @[Monitor.scala 297:14:freechips.rocketchip.system.DefaultRV32Config.fir@23263.8]
  wire  _T_746; // @[Monitor.scala 298:28:freechips.rocketchip.system.DefaultRV32Config.fir@23268.8]
  wire  _T_748; // @[Monitor.scala 298:14:freechips.rocketchip.system.DefaultRV32Config.fir@23270.8]
  wire  _T_749; // @[Monitor.scala 298:14:freechips.rocketchip.system.DefaultRV32Config.fir@23271.8]
  wire  _T_759; // @[Monitor.scala 303:25:freechips.rocketchip.system.DefaultRV32Config.fir@23294.6]
  wire  _T_779; // @[Monitor.scala 309:30:freechips.rocketchip.system.DefaultRV32Config.fir@23335.8]
  wire  _T_781; // @[Monitor.scala 309:14:freechips.rocketchip.system.DefaultRV32Config.fir@23337.8]
  wire  _T_782; // @[Monitor.scala 309:14:freechips.rocketchip.system.DefaultRV32Config.fir@23338.8]
  wire  _T_788; // @[Monitor.scala 313:25:freechips.rocketchip.system.DefaultRV32Config.fir@23353.6]
  wire  _T_805; // @[Monitor.scala 321:25:freechips.rocketchip.system.DefaultRV32Config.fir@23388.6]
  wire  _T_823; // @[Monitor.scala 329:25:freechips.rocketchip.system.DefaultRV32Config.fir@23424.6]
  wire  _T_855; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@23490.4]
  wire [9:0] _T_860; // @[Edges.scala 221:59:freechips.rocketchip.system.DefaultRV32Config.fir@23495.4]
  wire  _T_861; // @[Edges.scala 93:37:freechips.rocketchip.system.DefaultRV32Config.fir@23496.4]
  wire  _T_862; // @[Edges.scala 93:28:freechips.rocketchip.system.DefaultRV32Config.fir@23497.4]
  reg [9:0] _T_864; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@23499.4]
  reg [31:0] _RAND_0;
  wire [9:0] _T_866; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@23501.4]
  wire  _T_867; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@23502.4]
  reg [2:0] _T_875; // @[Monitor.scala 359:22:freechips.rocketchip.system.DefaultRV32Config.fir@23513.4]
  reg [31:0] _RAND_1;
  reg [2:0] _T_876; // @[Monitor.scala 360:22:freechips.rocketchip.system.DefaultRV32Config.fir@23514.4]
  reg [31:0] _RAND_2;
  reg [3:0] _T_877; // @[Monitor.scala 361:22:freechips.rocketchip.system.DefaultRV32Config.fir@23515.4]
  reg [31:0] _RAND_3;
  reg [3:0] _T_878; // @[Monitor.scala 362:22:freechips.rocketchip.system.DefaultRV32Config.fir@23516.4]
  reg [31:0] _RAND_4;
  reg [31:0] _T_879; // @[Monitor.scala 363:22:freechips.rocketchip.system.DefaultRV32Config.fir@23517.4]
  reg [31:0] _RAND_5;
  wire  _T_880; // @[Monitor.scala 364:22:freechips.rocketchip.system.DefaultRV32Config.fir@23518.4]
  wire  _T_881; // @[Monitor.scala 364:19:freechips.rocketchip.system.DefaultRV32Config.fir@23519.4]
  wire  _T_882; // @[Monitor.scala 365:29:freechips.rocketchip.system.DefaultRV32Config.fir@23521.6]
  wire  _T_884; // @[Monitor.scala 365:14:freechips.rocketchip.system.DefaultRV32Config.fir@23523.6]
  wire  _T_885; // @[Monitor.scala 365:14:freechips.rocketchip.system.DefaultRV32Config.fir@23524.6]
  wire  _T_886; // @[Monitor.scala 366:29:freechips.rocketchip.system.DefaultRV32Config.fir@23529.6]
  wire  _T_888; // @[Monitor.scala 366:14:freechips.rocketchip.system.DefaultRV32Config.fir@23531.6]
  wire  _T_889; // @[Monitor.scala 366:14:freechips.rocketchip.system.DefaultRV32Config.fir@23532.6]
  wire  _T_890; // @[Monitor.scala 367:29:freechips.rocketchip.system.DefaultRV32Config.fir@23537.6]
  wire  _T_892; // @[Monitor.scala 367:14:freechips.rocketchip.system.DefaultRV32Config.fir@23539.6]
  wire  _T_893; // @[Monitor.scala 367:14:freechips.rocketchip.system.DefaultRV32Config.fir@23540.6]
  wire  _T_894; // @[Monitor.scala 368:29:freechips.rocketchip.system.DefaultRV32Config.fir@23545.6]
  wire  _T_896; // @[Monitor.scala 368:14:freechips.rocketchip.system.DefaultRV32Config.fir@23547.6]
  wire  _T_897; // @[Monitor.scala 368:14:freechips.rocketchip.system.DefaultRV32Config.fir@23548.6]
  wire  _T_898; // @[Monitor.scala 369:29:freechips.rocketchip.system.DefaultRV32Config.fir@23553.6]
  wire  _T_900; // @[Monitor.scala 369:14:freechips.rocketchip.system.DefaultRV32Config.fir@23555.6]
  wire  _T_901; // @[Monitor.scala 369:14:freechips.rocketchip.system.DefaultRV32Config.fir@23556.6]
  wire  _T_903; // @[Monitor.scala 371:20:freechips.rocketchip.system.DefaultRV32Config.fir@23563.4]
  wire  _T_904; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@23571.4]
  wire [26:0] _T_906; // @[package.scala 189:77:freechips.rocketchip.system.DefaultRV32Config.fir@23573.4]
  wire [11:0] _T_907; // @[package.scala 189:82:freechips.rocketchip.system.DefaultRV32Config.fir@23574.4]
  wire [11:0] _T_908; // @[package.scala 189:46:freechips.rocketchip.system.DefaultRV32Config.fir@23575.4]
  wire [9:0] _T_909; // @[Edges.scala 221:59:freechips.rocketchip.system.DefaultRV32Config.fir@23576.4]
  wire  _T_910; // @[Edges.scala 107:36:freechips.rocketchip.system.DefaultRV32Config.fir@23577.4]
  reg [9:0] _T_912; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@23579.4]
  reg [31:0] _RAND_6;
  wire [9:0] _T_914; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@23581.4]
  wire  _T_915; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@23582.4]
  reg [2:0] _T_923; // @[Monitor.scala 428:22:freechips.rocketchip.system.DefaultRV32Config.fir@23593.4]
  reg [31:0] _RAND_7;
  reg [1:0] _T_924; // @[Monitor.scala 429:22:freechips.rocketchip.system.DefaultRV32Config.fir@23594.4]
  reg [31:0] _RAND_8;
  reg [3:0] _T_925; // @[Monitor.scala 430:22:freechips.rocketchip.system.DefaultRV32Config.fir@23595.4]
  reg [31:0] _RAND_9;
  reg [3:0] _T_926; // @[Monitor.scala 431:22:freechips.rocketchip.system.DefaultRV32Config.fir@23596.4]
  reg [31:0] _RAND_10;
  reg [1:0] _T_927; // @[Monitor.scala 432:22:freechips.rocketchip.system.DefaultRV32Config.fir@23597.4]
  reg [31:0] _RAND_11;
  reg  _T_928; // @[Monitor.scala 433:22:freechips.rocketchip.system.DefaultRV32Config.fir@23598.4]
  reg [31:0] _RAND_12;
  wire  _T_929; // @[Monitor.scala 434:22:freechips.rocketchip.system.DefaultRV32Config.fir@23599.4]
  wire  _T_930; // @[Monitor.scala 434:19:freechips.rocketchip.system.DefaultRV32Config.fir@23600.4]
  wire  _T_931; // @[Monitor.scala 435:29:freechips.rocketchip.system.DefaultRV32Config.fir@23602.6]
  wire  _T_933; // @[Monitor.scala 435:14:freechips.rocketchip.system.DefaultRV32Config.fir@23604.6]
  wire  _T_934; // @[Monitor.scala 435:14:freechips.rocketchip.system.DefaultRV32Config.fir@23605.6]
  wire  _T_935; // @[Monitor.scala 436:29:freechips.rocketchip.system.DefaultRV32Config.fir@23610.6]
  wire  _T_937; // @[Monitor.scala 436:14:freechips.rocketchip.system.DefaultRV32Config.fir@23612.6]
  wire  _T_938; // @[Monitor.scala 436:14:freechips.rocketchip.system.DefaultRV32Config.fir@23613.6]
  wire  _T_939; // @[Monitor.scala 437:29:freechips.rocketchip.system.DefaultRV32Config.fir@23618.6]
  wire  _T_941; // @[Monitor.scala 437:14:freechips.rocketchip.system.DefaultRV32Config.fir@23620.6]
  wire  _T_942; // @[Monitor.scala 437:14:freechips.rocketchip.system.DefaultRV32Config.fir@23621.6]
  wire  _T_943; // @[Monitor.scala 438:29:freechips.rocketchip.system.DefaultRV32Config.fir@23626.6]
  wire  _T_945; // @[Monitor.scala 438:14:freechips.rocketchip.system.DefaultRV32Config.fir@23628.6]
  wire  _T_946; // @[Monitor.scala 438:14:freechips.rocketchip.system.DefaultRV32Config.fir@23629.6]
  wire  _T_947; // @[Monitor.scala 439:29:freechips.rocketchip.system.DefaultRV32Config.fir@23634.6]
  wire  _T_949; // @[Monitor.scala 439:14:freechips.rocketchip.system.DefaultRV32Config.fir@23636.6]
  wire  _T_950; // @[Monitor.scala 439:14:freechips.rocketchip.system.DefaultRV32Config.fir@23637.6]
  wire  _T_951; // @[Monitor.scala 440:29:freechips.rocketchip.system.DefaultRV32Config.fir@23642.6]
  wire  _T_953; // @[Monitor.scala 440:14:freechips.rocketchip.system.DefaultRV32Config.fir@23644.6]
  wire  _T_954; // @[Monitor.scala 440:14:freechips.rocketchip.system.DefaultRV32Config.fir@23645.6]
  wire  _T_956; // @[Monitor.scala 442:20:freechips.rocketchip.system.DefaultRV32Config.fir@23652.4]
  reg [15:0] _T_957; // @[Monitor.scala 462:27:freechips.rocketchip.system.DefaultRV32Config.fir@23661.4]
  reg [31:0] _RAND_13;
  reg [9:0] _T_967; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@23671.4]
  reg [31:0] _RAND_14;
  wire [9:0] _T_969; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@23673.4]
  wire  _T_970; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@23674.4]
  reg [9:0] _T_986; // @[Edges.scala 230:27:freechips.rocketchip.system.DefaultRV32Config.fir@23693.4]
  reg [31:0] _RAND_15;
  wire [9:0] _T_988; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@23695.4]
  wire  _T_989; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@23696.4]
  wire  _T_999; // @[Monitor.scala 468:27:freechips.rocketchip.system.DefaultRV32Config.fir@23710.4]
  wire [15:0] _T_1001; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@23713.6]
  wire [15:0] _T_1002; // @[Monitor.scala 470:23:freechips.rocketchip.system.DefaultRV32Config.fir@23715.6]
  wire  _T_1003; // @[Monitor.scala 470:23:freechips.rocketchip.system.DefaultRV32Config.fir@23716.6]
  wire  _T_1004; // @[Monitor.scala 470:14:freechips.rocketchip.system.DefaultRV32Config.fir@23717.6]
  wire  _T_1006; // @[Monitor.scala 470:13:freechips.rocketchip.system.DefaultRV32Config.fir@23719.6]
  wire  _T_1007; // @[Monitor.scala 470:13:freechips.rocketchip.system.DefaultRV32Config.fir@23720.6]
  wire [15:0] _GEN_15; // @[Monitor.scala 468:72:freechips.rocketchip.system.DefaultRV32Config.fir@23712.4]
  wire  _T_1011; // @[Monitor.scala 475:27:freechips.rocketchip.system.DefaultRV32Config.fir@23730.4]
  wire  _T_1013; // @[Monitor.scala 475:75:freechips.rocketchip.system.DefaultRV32Config.fir@23732.4]
  wire  _T_1014; // @[Monitor.scala 475:72:freechips.rocketchip.system.DefaultRV32Config.fir@23733.4]
  wire [15:0] _T_1015; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@23735.6]
  wire [15:0] _T_1016; // @[Monitor.scala 477:21:freechips.rocketchip.system.DefaultRV32Config.fir@23737.6]
  wire [15:0] _T_1017; // @[Monitor.scala 477:32:freechips.rocketchip.system.DefaultRV32Config.fir@23738.6]
  wire  _T_1018; // @[Monitor.scala 477:32:freechips.rocketchip.system.DefaultRV32Config.fir@23739.6]
  wire  _T_1020; // @[Monitor.scala 477:13:freechips.rocketchip.system.DefaultRV32Config.fir@23741.6]
  wire  _T_1021; // @[Monitor.scala 477:13:freechips.rocketchip.system.DefaultRV32Config.fir@23742.6]
  wire [15:0] _GEN_16; // @[Monitor.scala 475:91:freechips.rocketchip.system.DefaultRV32Config.fir@23734.4]
  wire  _T_1022; // @[Monitor.scala 481:20:freechips.rocketchip.system.DefaultRV32Config.fir@23748.4]
  wire  _T_1023; // @[Monitor.scala 481:40:freechips.rocketchip.system.DefaultRV32Config.fir@23749.4]
  wire  _T_1024; // @[Monitor.scala 481:33:freechips.rocketchip.system.DefaultRV32Config.fir@23750.4]
  wire  _T_1025; // @[Monitor.scala 481:30:freechips.rocketchip.system.DefaultRV32Config.fir@23751.4]
  wire  _T_1027; // @[Monitor.scala 481:13:freechips.rocketchip.system.DefaultRV32Config.fir@23753.4]
  wire  _T_1028; // @[Monitor.scala 481:13:freechips.rocketchip.system.DefaultRV32Config.fir@23754.4]
  wire [15:0] _T_1029; // @[Monitor.scala 484:27:freechips.rocketchip.system.DefaultRV32Config.fir@23759.4]
  wire [15:0] _T_1030; // @[Monitor.scala 484:38:freechips.rocketchip.system.DefaultRV32Config.fir@23760.4]
  wire [15:0] _T_1031; // @[Monitor.scala 484:36:freechips.rocketchip.system.DefaultRV32Config.fir@23761.4]
  reg [31:0] _T_1032; // @[Monitor.scala 486:27:freechips.rocketchip.system.DefaultRV32Config.fir@23763.4]
  reg [31:0] _RAND_16;
  wire  _T_1033; // @[Monitor.scala 489:23:freechips.rocketchip.system.DefaultRV32Config.fir@23766.4]
  wire  _T_1034; // @[Monitor.scala 489:13:freechips.rocketchip.system.DefaultRV32Config.fir@23767.4]
  wire  _T_1035; // @[Monitor.scala 489:36:freechips.rocketchip.system.DefaultRV32Config.fir@23768.4]
  wire  _T_1036; // @[Monitor.scala 489:27:freechips.rocketchip.system.DefaultRV32Config.fir@23769.4]
  wire  _T_1037; // @[Monitor.scala 489:56:freechips.rocketchip.system.DefaultRV32Config.fir@23770.4]
  wire  _T_1038; // @[Monitor.scala 489:44:freechips.rocketchip.system.DefaultRV32Config.fir@23771.4]
  wire  _T_1040; // @[Monitor.scala 489:12:freechips.rocketchip.system.DefaultRV32Config.fir@23773.4]
  wire  _T_1041; // @[Monitor.scala 489:12:freechips.rocketchip.system.DefaultRV32Config.fir@23774.4]
  wire [31:0] _T_1043; // @[Monitor.scala 491:26:freechips.rocketchip.system.DefaultRV32Config.fir@23780.4]
  wire  _T_1046; // @[Monitor.scala 492:27:freechips.rocketchip.system.DefaultRV32Config.fir@23784.4]
  wire  _GEN_19; // @[Monitor.scala 59:14:freechips.rocketchip.system.DefaultRV32Config.fir@22416.10]
  wire  _GEN_35; // @[Monitor.scala 70:14:freechips.rocketchip.system.DefaultRV32Config.fir@22529.10]
  wire  _GEN_53; // @[Monitor.scala 82:14:freechips.rocketchip.system.DefaultRV32Config.fir@22653.10]
  wire  _GEN_65; // @[Monitor.scala 91:14:freechips.rocketchip.system.DefaultRV32Config.fir@22760.10]
  wire  _GEN_75; // @[Monitor.scala 99:14:freechips.rocketchip.system.DefaultRV32Config.fir@22859.10]
  wire  _GEN_85; // @[Monitor.scala 107:14:freechips.rocketchip.system.DefaultRV32Config.fir@22950.10]
  wire  _GEN_95; // @[Monitor.scala 115:14:freechips.rocketchip.system.DefaultRV32Config.fir@23039.10]
  wire  _GEN_105; // @[Monitor.scala 123:14:freechips.rocketchip.system.DefaultRV32Config.fir@23128.10]
  wire  _GEN_115; // @[Monitor.scala 286:14:freechips.rocketchip.system.DefaultRV32Config.fir@23200.10]
  wire  _GEN_125; // @[Monitor.scala 294:14:freechips.rocketchip.system.DefaultRV32Config.fir@23242.10]
  wire  _GEN_135; // @[Monitor.scala 304:14:freechips.rocketchip.system.DefaultRV32Config.fir@23300.10]
  wire  _GEN_145; // @[Monitor.scala 314:14:freechips.rocketchip.system.DefaultRV32Config.fir@23359.10]
  wire  _GEN_151; // @[Monitor.scala 322:14:freechips.rocketchip.system.DefaultRV32Config.fir@23394.10]
  wire  _GEN_157; // @[Monitor.scala 330:14:freechips.rocketchip.system.DefaultRV32Config.fir@23430.10]
  plusarg_reader #(.FORMAT("tilelink_timeout=%d"), .DEFAULT(0), .WIDTH(32)) plusarg_reader ( // @[PlusArg.scala 44:11:freechips.rocketchip.system.DefaultRV32Config.fir@23764.4]
    .out(plusarg_reader_out)
  );
  assign _T_1 = $unsigned(reset); // @[Monitor.scala 49:12:freechips.rocketchip.system.DefaultRV32Config.fir@22256.6]
  assign _T_6 = io_in_a_bits_source[3:3]; // @[Parameters.scala 54:10:freechips.rocketchip.system.DefaultRV32Config.fir@22265.6]
  assign _T_7 = _T_6 == 1'h0; // @[Parameters.scala 54:32:freechips.rocketchip.system.DefaultRV32Config.fir@22266.6]
  assign _T_21 = _T_7 | _T_6; // @[Parameters.scala 334:46:freechips.rocketchip.system.DefaultRV32Config.fir@22283.6]
  assign _T_23 = 27'hfff << io_in_a_bits_size; // @[package.scala 189:77:freechips.rocketchip.system.DefaultRV32Config.fir@22285.6]
  assign _T_24 = _T_23[11:0]; // @[package.scala 189:82:freechips.rocketchip.system.DefaultRV32Config.fir@22286.6]
  assign _T_25 = ~ _T_24; // @[package.scala 189:46:freechips.rocketchip.system.DefaultRV32Config.fir@22287.6]
  assign _GEN_18 = {{20'd0}, _T_25}; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@22288.6]
  assign _T_26 = io_in_a_bits_address & _GEN_18; // @[Edges.scala 22:16:freechips.rocketchip.system.DefaultRV32Config.fir@22288.6]
  assign _T_27 = _T_26 == 32'h0; // @[Edges.scala 22:24:freechips.rocketchip.system.DefaultRV32Config.fir@22289.6]
  assign _T_29 = io_in_a_bits_size[0]; // @[OneHot.scala 64:49:freechips.rocketchip.system.DefaultRV32Config.fir@22291.6]
  assign _T_30 = 2'h1 << _T_29; // @[OneHot.scala 65:12:freechips.rocketchip.system.DefaultRV32Config.fir@22292.6]
  assign _T_32 = _T_30 | 2'h1; // @[Misc.scala 200:81:freechips.rocketchip.system.DefaultRV32Config.fir@22294.6]
  assign _T_33 = io_in_a_bits_size >= 4'h2; // @[Misc.scala 204:21:freechips.rocketchip.system.DefaultRV32Config.fir@22295.6]
  assign _T_34 = _T_32[1]; // @[Misc.scala 207:26:freechips.rocketchip.system.DefaultRV32Config.fir@22296.6]
  assign _T_35 = io_in_a_bits_address[1]; // @[Misc.scala 208:26:freechips.rocketchip.system.DefaultRV32Config.fir@22297.6]
  assign _T_36 = _T_35 == 1'h0; // @[Misc.scala 209:20:freechips.rocketchip.system.DefaultRV32Config.fir@22298.6]
  assign _T_38 = _T_34 & _T_36; // @[Misc.scala 213:38:freechips.rocketchip.system.DefaultRV32Config.fir@22300.6]
  assign _T_39 = _T_33 | _T_38; // @[Misc.scala 213:29:freechips.rocketchip.system.DefaultRV32Config.fir@22301.6]
  assign _T_41 = _T_34 & _T_35; // @[Misc.scala 213:38:freechips.rocketchip.system.DefaultRV32Config.fir@22303.6]
  assign _T_42 = _T_33 | _T_41; // @[Misc.scala 213:29:freechips.rocketchip.system.DefaultRV32Config.fir@22304.6]
  assign _T_43 = _T_32[0]; // @[Misc.scala 207:26:freechips.rocketchip.system.DefaultRV32Config.fir@22305.6]
  assign _T_44 = io_in_a_bits_address[0]; // @[Misc.scala 208:26:freechips.rocketchip.system.DefaultRV32Config.fir@22306.6]
  assign _T_45 = _T_44 == 1'h0; // @[Misc.scala 209:20:freechips.rocketchip.system.DefaultRV32Config.fir@22307.6]
  assign _T_46 = _T_36 & _T_45; // @[Misc.scala 212:27:freechips.rocketchip.system.DefaultRV32Config.fir@22308.6]
  assign _T_47 = _T_43 & _T_46; // @[Misc.scala 213:38:freechips.rocketchip.system.DefaultRV32Config.fir@22309.6]
  assign _T_48 = _T_39 | _T_47; // @[Misc.scala 213:29:freechips.rocketchip.system.DefaultRV32Config.fir@22310.6]
  assign _T_49 = _T_36 & _T_44; // @[Misc.scala 212:27:freechips.rocketchip.system.DefaultRV32Config.fir@22311.6]
  assign _T_50 = _T_43 & _T_49; // @[Misc.scala 213:38:freechips.rocketchip.system.DefaultRV32Config.fir@22312.6]
  assign _T_51 = _T_39 | _T_50; // @[Misc.scala 213:29:freechips.rocketchip.system.DefaultRV32Config.fir@22313.6]
  assign _T_52 = _T_35 & _T_45; // @[Misc.scala 212:27:freechips.rocketchip.system.DefaultRV32Config.fir@22314.6]
  assign _T_53 = _T_43 & _T_52; // @[Misc.scala 213:38:freechips.rocketchip.system.DefaultRV32Config.fir@22315.6]
  assign _T_54 = _T_42 | _T_53; // @[Misc.scala 213:29:freechips.rocketchip.system.DefaultRV32Config.fir@22316.6]
  assign _T_55 = _T_35 & _T_44; // @[Misc.scala 212:27:freechips.rocketchip.system.DefaultRV32Config.fir@22317.6]
  assign _T_56 = _T_43 & _T_55; // @[Misc.scala 213:38:freechips.rocketchip.system.DefaultRV32Config.fir@22318.6]
  assign _T_57 = _T_42 | _T_56; // @[Misc.scala 213:29:freechips.rocketchip.system.DefaultRV32Config.fir@22319.6]
  assign _T_60 = {_T_57,_T_54,_T_51,_T_48}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@22322.6]
  assign _T_71 = {1'b0,$signed(io_in_a_bits_address)}; // @[Parameters.scala 125:49:freechips.rocketchip.system.DefaultRV32Config.fir@22333.6]
  assign _T_95 = io_in_a_bits_opcode == 3'h6; // @[Monitor.scala 58:25:freechips.rocketchip.system.DefaultRV32Config.fir@22361.6]
  assign _T_97 = io_in_a_bits_address ^ 32'h3000; // @[Parameters.scala 125:31:freechips.rocketchip.system.DefaultRV32Config.fir@22364.8]
  assign _T_98 = {1'b0,$signed(_T_97)}; // @[Parameters.scala 125:49:freechips.rocketchip.system.DefaultRV32Config.fir@22365.8]
  assign _T_99 = $signed(_T_98) & $signed(-33'sh1000); // @[Parameters.scala 125:52:freechips.rocketchip.system.DefaultRV32Config.fir@22366.8]
  assign _T_100 = $signed(_T_99); // @[Parameters.scala 125:52:freechips.rocketchip.system.DefaultRV32Config.fir@22367.8]
  assign _T_101 = $signed(_T_100) == $signed(33'sh0); // @[Parameters.scala 125:67:freechips.rocketchip.system.DefaultRV32Config.fir@22368.8]
  assign _T_102 = io_in_a_bits_address ^ 32'hc000000; // @[Parameters.scala 125:31:freechips.rocketchip.system.DefaultRV32Config.fir@22369.8]
  assign _T_103 = {1'b0,$signed(_T_102)}; // @[Parameters.scala 125:49:freechips.rocketchip.system.DefaultRV32Config.fir@22370.8]
  assign _T_104 = $signed(_T_103) & $signed(-33'sh4000000); // @[Parameters.scala 125:52:freechips.rocketchip.system.DefaultRV32Config.fir@22371.8]
  assign _T_105 = $signed(_T_104); // @[Parameters.scala 125:52:freechips.rocketchip.system.DefaultRV32Config.fir@22372.8]
  assign _T_106 = $signed(_T_105) == $signed(33'sh0); // @[Parameters.scala 125:67:freechips.rocketchip.system.DefaultRV32Config.fir@22373.8]
  assign _T_107 = io_in_a_bits_address ^ 32'h2000000; // @[Parameters.scala 125:31:freechips.rocketchip.system.DefaultRV32Config.fir@22374.8]
  assign _T_108 = {1'b0,$signed(_T_107)}; // @[Parameters.scala 125:49:freechips.rocketchip.system.DefaultRV32Config.fir@22375.8]
  assign _T_109 = $signed(_T_108) & $signed(-33'sh10000); // @[Parameters.scala 125:52:freechips.rocketchip.system.DefaultRV32Config.fir@22376.8]
  assign _T_110 = $signed(_T_109); // @[Parameters.scala 125:52:freechips.rocketchip.system.DefaultRV32Config.fir@22377.8]
  assign _T_111 = $signed(_T_110) == $signed(33'sh0); // @[Parameters.scala 125:67:freechips.rocketchip.system.DefaultRV32Config.fir@22378.8]
  assign _T_114 = $signed(_T_71) & $signed(-33'sh1000); // @[Parameters.scala 125:52:freechips.rocketchip.system.DefaultRV32Config.fir@22381.8]
  assign _T_115 = $signed(_T_114); // @[Parameters.scala 125:52:freechips.rocketchip.system.DefaultRV32Config.fir@22382.8]
  assign _T_116 = $signed(_T_115) == $signed(33'sh0); // @[Parameters.scala 125:67:freechips.rocketchip.system.DefaultRV32Config.fir@22383.8]
  assign _T_117 = io_in_a_bits_address ^ 32'h10000; // @[Parameters.scala 125:31:freechips.rocketchip.system.DefaultRV32Config.fir@22384.8]
  assign _T_118 = {1'b0,$signed(_T_117)}; // @[Parameters.scala 125:49:freechips.rocketchip.system.DefaultRV32Config.fir@22385.8]
  assign _T_119 = $signed(_T_118) & $signed(-33'sh10000); // @[Parameters.scala 125:52:freechips.rocketchip.system.DefaultRV32Config.fir@22386.8]
  assign _T_120 = $signed(_T_119); // @[Parameters.scala 125:52:freechips.rocketchip.system.DefaultRV32Config.fir@22387.8]
  assign _T_121 = $signed(_T_120) == $signed(33'sh0); // @[Parameters.scala 125:67:freechips.rocketchip.system.DefaultRV32Config.fir@22388.8]
  assign _T_122 = io_in_a_bits_address ^ 32'h60000000; // @[Parameters.scala 125:31:freechips.rocketchip.system.DefaultRV32Config.fir@22389.8]
  assign _T_123 = {1'b0,$signed(_T_122)}; // @[Parameters.scala 125:49:freechips.rocketchip.system.DefaultRV32Config.fir@22390.8]
  assign _T_124 = $signed(_T_123) & $signed(-33'sh20000000); // @[Parameters.scala 125:52:freechips.rocketchip.system.DefaultRV32Config.fir@22391.8]
  assign _T_125 = $signed(_T_124); // @[Parameters.scala 125:52:freechips.rocketchip.system.DefaultRV32Config.fir@22392.8]
  assign _T_126 = $signed(_T_125) == $signed(33'sh0); // @[Parameters.scala 125:67:freechips.rocketchip.system.DefaultRV32Config.fir@22393.8]
  assign _T_127 = _T_101 | _T_106; // @[Parameters.scala 196:42:freechips.rocketchip.system.DefaultRV32Config.fir@22394.8]
  assign _T_128 = _T_127 | _T_111; // @[Parameters.scala 196:42:freechips.rocketchip.system.DefaultRV32Config.fir@22395.8]
  assign _T_129 = _T_128 | _T_116; // @[Parameters.scala 196:42:freechips.rocketchip.system.DefaultRV32Config.fir@22396.8]
  assign _T_134 = io_in_a_bits_size <= 4'h6; // @[Parameters.scala 92:42:freechips.rocketchip.system.DefaultRV32Config.fir@22401.8]
  assign _T_137 = io_in_a_bits_address ^ 32'h80000000; // @[Parameters.scala 125:31:freechips.rocketchip.system.DefaultRV32Config.fir@22404.8]
  assign _T_138 = {1'b0,$signed(_T_137)}; // @[Parameters.scala 125:49:freechips.rocketchip.system.DefaultRV32Config.fir@22405.8]
  assign _T_139 = $signed(_T_138) & $signed(-33'sh10000000); // @[Parameters.scala 125:52:freechips.rocketchip.system.DefaultRV32Config.fir@22406.8]
  assign _T_140 = $signed(_T_139); // @[Parameters.scala 125:52:freechips.rocketchip.system.DefaultRV32Config.fir@22407.8]
  assign _T_141 = $signed(_T_140) == $signed(33'sh0); // @[Parameters.scala 125:67:freechips.rocketchip.system.DefaultRV32Config.fir@22408.8]
  assign _T_142 = _T_134 & _T_141; // @[Parameters.scala 195:56:freechips.rocketchip.system.DefaultRV32Config.fir@22409.8]
  assign _T_146 = _T_142 | _T_1; // @[Monitor.scala 59:14:freechips.rocketchip.system.DefaultRV32Config.fir@22413.8]
  assign _T_147 = _T_146 == 1'h0; // @[Monitor.scala 59:14:freechips.rocketchip.system.DefaultRV32Config.fir@22414.8]
  assign _T_150 = _T_1 == 1'h0; // @[Monitor.scala 60:14:freechips.rocketchip.system.DefaultRV32Config.fir@22421.8]
  assign _T_152 = _T_21 | _T_1; // @[Monitor.scala 61:14:freechips.rocketchip.system.DefaultRV32Config.fir@22427.8]
  assign _T_153 = _T_152 == 1'h0; // @[Monitor.scala 61:14:freechips.rocketchip.system.DefaultRV32Config.fir@22428.8]
  assign _T_156 = _T_33 | _T_1; // @[Monitor.scala 62:14:freechips.rocketchip.system.DefaultRV32Config.fir@22435.8]
  assign _T_157 = _T_156 == 1'h0; // @[Monitor.scala 62:14:freechips.rocketchip.system.DefaultRV32Config.fir@22436.8]
  assign _T_159 = _T_27 | _T_1; // @[Monitor.scala 63:14:freechips.rocketchip.system.DefaultRV32Config.fir@22442.8]
  assign _T_160 = _T_159 == 1'h0; // @[Monitor.scala 63:14:freechips.rocketchip.system.DefaultRV32Config.fir@22443.8]
  assign _T_161 = io_in_a_bits_param <= 3'h2; // @[Bundles.scala 110:27:freechips.rocketchip.system.DefaultRV32Config.fir@22448.8]
  assign _T_163 = _T_161 | _T_1; // @[Monitor.scala 64:14:freechips.rocketchip.system.DefaultRV32Config.fir@22450.8]
  assign _T_164 = _T_163 == 1'h0; // @[Monitor.scala 64:14:freechips.rocketchip.system.DefaultRV32Config.fir@22451.8]
  assign _T_165 = ~ io_in_a_bits_mask; // @[Monitor.scala 65:15:freechips.rocketchip.system.DefaultRV32Config.fir@22456.8]
  assign _T_166 = _T_165 == 4'h0; // @[Monitor.scala 65:28:freechips.rocketchip.system.DefaultRV32Config.fir@22457.8]
  assign _T_168 = _T_166 | _T_1; // @[Monitor.scala 65:14:freechips.rocketchip.system.DefaultRV32Config.fir@22459.8]
  assign _T_169 = _T_168 == 1'h0; // @[Monitor.scala 65:14:freechips.rocketchip.system.DefaultRV32Config.fir@22460.8]
  assign _T_170 = io_in_a_bits_corrupt == 1'h0; // @[Monitor.scala 66:15:freechips.rocketchip.system.DefaultRV32Config.fir@22465.8]
  assign _T_172 = _T_170 | _T_1; // @[Monitor.scala 66:14:freechips.rocketchip.system.DefaultRV32Config.fir@22467.8]
  assign _T_173 = _T_172 == 1'h0; // @[Monitor.scala 66:14:freechips.rocketchip.system.DefaultRV32Config.fir@22468.8]
  assign _T_174 = io_in_a_bits_opcode == 3'h7; // @[Monitor.scala 69:25:freechips.rocketchip.system.DefaultRV32Config.fir@22474.6]
  assign _T_244 = io_in_a_bits_param != 3'h0; // @[Monitor.scala 76:28:freechips.rocketchip.system.DefaultRV32Config.fir@22569.8]
  assign _T_246 = _T_244 | _T_1; // @[Monitor.scala 76:14:freechips.rocketchip.system.DefaultRV32Config.fir@22571.8]
  assign _T_247 = _T_246 == 1'h0; // @[Monitor.scala 76:14:freechips.rocketchip.system.DefaultRV32Config.fir@22572.8]
  assign _T_257 = io_in_a_bits_opcode == 3'h4; // @[Monitor.scala 81:25:freechips.rocketchip.system.DefaultRV32Config.fir@22595.6]
  assign _T_259 = io_in_a_bits_size <= 4'hc; // @[Parameters.scala 92:42:freechips.rocketchip.system.DefaultRV32Config.fir@22598.8]
  assign _T_267 = _T_259 & _T_101; // @[Parameters.scala 195:56:freechips.rocketchip.system.DefaultRV32Config.fir@22606.8]
  assign _T_302 = _T_106 | _T_111; // @[Parameters.scala 196:42:freechips.rocketchip.system.DefaultRV32Config.fir@22641.8]
  assign _T_303 = _T_302 | _T_116; // @[Parameters.scala 196:42:freechips.rocketchip.system.DefaultRV32Config.fir@22642.8]
  assign _T_304 = _T_303 | _T_121; // @[Parameters.scala 196:42:freechips.rocketchip.system.DefaultRV32Config.fir@22643.8]
  assign _T_305 = _T_304 | _T_141; // @[Parameters.scala 196:42:freechips.rocketchip.system.DefaultRV32Config.fir@22644.8]
  assign _T_306 = _T_305 | _T_126; // @[Parameters.scala 196:42:freechips.rocketchip.system.DefaultRV32Config.fir@22645.8]
  assign _T_307 = _T_134 & _T_306; // @[Parameters.scala 195:56:freechips.rocketchip.system.DefaultRV32Config.fir@22646.8]
  assign _T_309 = _T_267 | _T_307; // @[Parameters.scala 197:30:freechips.rocketchip.system.DefaultRV32Config.fir@22648.8]
  assign _T_311 = _T_309 | _T_1; // @[Monitor.scala 82:14:freechips.rocketchip.system.DefaultRV32Config.fir@22650.8]
  assign _T_312 = _T_311 == 1'h0; // @[Monitor.scala 82:14:freechips.rocketchip.system.DefaultRV32Config.fir@22651.8]
  assign _T_319 = io_in_a_bits_param == 3'h0; // @[Monitor.scala 85:28:freechips.rocketchip.system.DefaultRV32Config.fir@22670.8]
  assign _T_321 = _T_319 | _T_1; // @[Monitor.scala 85:14:freechips.rocketchip.system.DefaultRV32Config.fir@22672.8]
  assign _T_322 = _T_321 == 1'h0; // @[Monitor.scala 85:14:freechips.rocketchip.system.DefaultRV32Config.fir@22673.8]
  assign _T_323 = io_in_a_bits_mask == _T_60; // @[Monitor.scala 86:27:freechips.rocketchip.system.DefaultRV32Config.fir@22678.8]
  assign _T_325 = _T_323 | _T_1; // @[Monitor.scala 86:14:freechips.rocketchip.system.DefaultRV32Config.fir@22680.8]
  assign _T_326 = _T_325 == 1'h0; // @[Monitor.scala 86:14:freechips.rocketchip.system.DefaultRV32Config.fir@22681.8]
  assign _T_331 = io_in_a_bits_opcode == 3'h0; // @[Monitor.scala 90:25:freechips.rocketchip.system.DefaultRV32Config.fir@22695.6]
  assign _T_368 = _T_303 | _T_141; // @[Parameters.scala 196:42:freechips.rocketchip.system.DefaultRV32Config.fir@22733.8]
  assign _T_369 = _T_134 & _T_368; // @[Parameters.scala 195:56:freechips.rocketchip.system.DefaultRV32Config.fir@22734.8]
  assign _T_378 = io_in_a_bits_size <= 4'h8; // @[Parameters.scala 92:42:freechips.rocketchip.system.DefaultRV32Config.fir@22743.8]
  assign _T_386 = _T_378 & _T_126; // @[Parameters.scala 195:56:freechips.rocketchip.system.DefaultRV32Config.fir@22751.8]
  assign _T_388 = _T_267 | _T_369; // @[Parameters.scala 197:30:freechips.rocketchip.system.DefaultRV32Config.fir@22753.8]
  assign _T_390 = _T_388 | _T_386; // @[Parameters.scala 197:30:freechips.rocketchip.system.DefaultRV32Config.fir@22755.8]
  assign _T_392 = _T_390 | _T_1; // @[Monitor.scala 91:14:freechips.rocketchip.system.DefaultRV32Config.fir@22757.8]
  assign _T_393 = _T_392 == 1'h0; // @[Monitor.scala 91:14:freechips.rocketchip.system.DefaultRV32Config.fir@22758.8]
  assign _T_408 = io_in_a_bits_opcode == 3'h1; // @[Monitor.scala 98:25:freechips.rocketchip.system.DefaultRV32Config.fir@22794.6]
  assign _T_481 = ~ _T_60; // @[Monitor.scala 103:30:freechips.rocketchip.system.DefaultRV32Config.fir@22884.8]
  assign _T_482 = io_in_a_bits_mask & _T_481; // @[Monitor.scala 103:28:freechips.rocketchip.system.DefaultRV32Config.fir@22885.8]
  assign _T_483 = _T_482 == 4'h0; // @[Monitor.scala 103:37:freechips.rocketchip.system.DefaultRV32Config.fir@22886.8]
  assign _T_485 = _T_483 | _T_1; // @[Monitor.scala 103:14:freechips.rocketchip.system.DefaultRV32Config.fir@22888.8]
  assign _T_486 = _T_485 == 1'h0; // @[Monitor.scala 103:14:freechips.rocketchip.system.DefaultRV32Config.fir@22889.8]
  assign _T_487 = io_in_a_bits_opcode == 3'h2; // @[Monitor.scala 106:25:freechips.rocketchip.system.DefaultRV32Config.fir@22895.6]
  assign _T_489 = io_in_a_bits_size <= 4'h2; // @[Parameters.scala 92:42:freechips.rocketchip.system.DefaultRV32Config.fir@22898.8]
  assign _T_515 = _T_489 & _T_129; // @[Parameters.scala 195:56:freechips.rocketchip.system.DefaultRV32Config.fir@22924.8]
  assign _T_538 = _T_515 | _T_1; // @[Monitor.scala 107:14:freechips.rocketchip.system.DefaultRV32Config.fir@22947.8]
  assign _T_539 = _T_538 == 1'h0; // @[Monitor.scala 107:14:freechips.rocketchip.system.DefaultRV32Config.fir@22948.8]
  assign _T_546 = io_in_a_bits_param <= 3'h4; // @[Bundles.scala 140:33:freechips.rocketchip.system.DefaultRV32Config.fir@22967.8]
  assign _T_548 = _T_546 | _T_1; // @[Monitor.scala 110:14:freechips.rocketchip.system.DefaultRV32Config.fir@22969.8]
  assign _T_549 = _T_548 == 1'h0; // @[Monitor.scala 110:14:freechips.rocketchip.system.DefaultRV32Config.fir@22970.8]
  assign _T_554 = io_in_a_bits_opcode == 3'h3; // @[Monitor.scala 114:25:freechips.rocketchip.system.DefaultRV32Config.fir@22984.6]
  assign _T_613 = io_in_a_bits_param <= 3'h3; // @[Bundles.scala 147:30:freechips.rocketchip.system.DefaultRV32Config.fir@23056.8]
  assign _T_615 = _T_613 | _T_1; // @[Monitor.scala 118:14:freechips.rocketchip.system.DefaultRV32Config.fir@23058.8]
  assign _T_616 = _T_615 == 1'h0; // @[Monitor.scala 118:14:freechips.rocketchip.system.DefaultRV32Config.fir@23059.8]
  assign _T_621 = io_in_a_bits_opcode == 3'h5; // @[Monitor.scala 122:25:freechips.rocketchip.system.DefaultRV32Config.fir@23073.6]
  assign _T_672 = _T_267 | _T_1; // @[Monitor.scala 123:14:freechips.rocketchip.system.DefaultRV32Config.fir@23125.8]
  assign _T_673 = _T_672 == 1'h0; // @[Monitor.scala 123:14:freechips.rocketchip.system.DefaultRV32Config.fir@23126.8]
  assign _T_688 = io_in_d_bits_opcode <= 3'h6; // @[Bundles.scala 44:24:freechips.rocketchip.system.DefaultRV32Config.fir@23164.6]
  assign _T_690 = _T_688 | _T_1; // @[Monitor.scala 278:12:freechips.rocketchip.system.DefaultRV32Config.fir@23166.6]
  assign _T_691 = _T_690 == 1'h0; // @[Monitor.scala 278:12:freechips.rocketchip.system.DefaultRV32Config.fir@23167.6]
  assign _T_694 = io_in_d_bits_source[3:3]; // @[Parameters.scala 54:10:freechips.rocketchip.system.DefaultRV32Config.fir@23174.6]
  assign _T_695 = _T_694 == 1'h0; // @[Parameters.scala 54:32:freechips.rocketchip.system.DefaultRV32Config.fir@23175.6]
  assign _T_709 = _T_695 | _T_694; // @[Parameters.scala 334:46:freechips.rocketchip.system.DefaultRV32Config.fir@23192.6]
  assign _T_711 = io_in_d_bits_opcode == 3'h6; // @[Monitor.scala 285:25:freechips.rocketchip.system.DefaultRV32Config.fir@23194.6]
  assign _T_713 = _T_709 | _T_1; // @[Monitor.scala 286:14:freechips.rocketchip.system.DefaultRV32Config.fir@23197.8]
  assign _T_714 = _T_713 == 1'h0; // @[Monitor.scala 286:14:freechips.rocketchip.system.DefaultRV32Config.fir@23198.8]
  assign _T_715 = io_in_d_bits_size >= 4'h2; // @[Monitor.scala 287:27:freechips.rocketchip.system.DefaultRV32Config.fir@23203.8]
  assign _T_717 = _T_715 | _T_1; // @[Monitor.scala 287:14:freechips.rocketchip.system.DefaultRV32Config.fir@23205.8]
  assign _T_718 = _T_717 == 1'h0; // @[Monitor.scala 287:14:freechips.rocketchip.system.DefaultRV32Config.fir@23206.8]
  assign _T_719 = io_in_d_bits_param == 2'h0; // @[Monitor.scala 288:28:freechips.rocketchip.system.DefaultRV32Config.fir@23211.8]
  assign _T_721 = _T_719 | _T_1; // @[Monitor.scala 288:14:freechips.rocketchip.system.DefaultRV32Config.fir@23213.8]
  assign _T_722 = _T_721 == 1'h0; // @[Monitor.scala 288:14:freechips.rocketchip.system.DefaultRV32Config.fir@23214.8]
  assign _T_723 = io_in_d_bits_corrupt == 1'h0; // @[Monitor.scala 289:15:freechips.rocketchip.system.DefaultRV32Config.fir@23219.8]
  assign _T_725 = _T_723 | _T_1; // @[Monitor.scala 289:14:freechips.rocketchip.system.DefaultRV32Config.fir@23221.8]
  assign _T_726 = _T_725 == 1'h0; // @[Monitor.scala 289:14:freechips.rocketchip.system.DefaultRV32Config.fir@23222.8]
  assign _T_727 = io_in_d_bits_denied == 1'h0; // @[Monitor.scala 290:15:freechips.rocketchip.system.DefaultRV32Config.fir@23227.8]
  assign _T_729 = _T_727 | _T_1; // @[Monitor.scala 290:14:freechips.rocketchip.system.DefaultRV32Config.fir@23229.8]
  assign _T_730 = _T_729 == 1'h0; // @[Monitor.scala 290:14:freechips.rocketchip.system.DefaultRV32Config.fir@23230.8]
  assign _T_731 = io_in_d_bits_opcode == 3'h4; // @[Monitor.scala 293:25:freechips.rocketchip.system.DefaultRV32Config.fir@23236.6]
  assign _T_742 = io_in_d_bits_param <= 2'h2; // @[Bundles.scala 104:26:freechips.rocketchip.system.DefaultRV32Config.fir@23260.8]
  assign _T_744 = _T_742 | _T_1; // @[Monitor.scala 297:14:freechips.rocketchip.system.DefaultRV32Config.fir@23262.8]
  assign _T_745 = _T_744 == 1'h0; // @[Monitor.scala 297:14:freechips.rocketchip.system.DefaultRV32Config.fir@23263.8]
  assign _T_746 = io_in_d_bits_param != 2'h2; // @[Monitor.scala 298:28:freechips.rocketchip.system.DefaultRV32Config.fir@23268.8]
  assign _T_748 = _T_746 | _T_1; // @[Monitor.scala 298:14:freechips.rocketchip.system.DefaultRV32Config.fir@23270.8]
  assign _T_749 = _T_748 == 1'h0; // @[Monitor.scala 298:14:freechips.rocketchip.system.DefaultRV32Config.fir@23271.8]
  assign _T_759 = io_in_d_bits_opcode == 3'h5; // @[Monitor.scala 303:25:freechips.rocketchip.system.DefaultRV32Config.fir@23294.6]
  assign _T_779 = _T_727 | io_in_d_bits_corrupt; // @[Monitor.scala 309:30:freechips.rocketchip.system.DefaultRV32Config.fir@23335.8]
  assign _T_781 = _T_779 | _T_1; // @[Monitor.scala 309:14:freechips.rocketchip.system.DefaultRV32Config.fir@23337.8]
  assign _T_782 = _T_781 == 1'h0; // @[Monitor.scala 309:14:freechips.rocketchip.system.DefaultRV32Config.fir@23338.8]
  assign _T_788 = io_in_d_bits_opcode == 3'h0; // @[Monitor.scala 313:25:freechips.rocketchip.system.DefaultRV32Config.fir@23353.6]
  assign _T_805 = io_in_d_bits_opcode == 3'h1; // @[Monitor.scala 321:25:freechips.rocketchip.system.DefaultRV32Config.fir@23388.6]
  assign _T_823 = io_in_d_bits_opcode == 3'h2; // @[Monitor.scala 329:25:freechips.rocketchip.system.DefaultRV32Config.fir@23424.6]
  assign _T_855 = io_in_a_ready & io_in_a_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@23490.4]
  assign _T_860 = _T_25[11:2]; // @[Edges.scala 221:59:freechips.rocketchip.system.DefaultRV32Config.fir@23495.4]
  assign _T_861 = io_in_a_bits_opcode[2]; // @[Edges.scala 93:37:freechips.rocketchip.system.DefaultRV32Config.fir@23496.4]
  assign _T_862 = _T_861 == 1'h0; // @[Edges.scala 93:28:freechips.rocketchip.system.DefaultRV32Config.fir@23497.4]
  assign _T_866 = _T_864 - 10'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@23501.4]
  assign _T_867 = _T_864 == 10'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@23502.4]
  assign _T_880 = _T_867 == 1'h0; // @[Monitor.scala 364:22:freechips.rocketchip.system.DefaultRV32Config.fir@23518.4]
  assign _T_881 = io_in_a_valid & _T_880; // @[Monitor.scala 364:19:freechips.rocketchip.system.DefaultRV32Config.fir@23519.4]
  assign _T_882 = io_in_a_bits_opcode == _T_875; // @[Monitor.scala 365:29:freechips.rocketchip.system.DefaultRV32Config.fir@23521.6]
  assign _T_884 = _T_882 | _T_1; // @[Monitor.scala 365:14:freechips.rocketchip.system.DefaultRV32Config.fir@23523.6]
  assign _T_885 = _T_884 == 1'h0; // @[Monitor.scala 365:14:freechips.rocketchip.system.DefaultRV32Config.fir@23524.6]
  assign _T_886 = io_in_a_bits_param == _T_876; // @[Monitor.scala 366:29:freechips.rocketchip.system.DefaultRV32Config.fir@23529.6]
  assign _T_888 = _T_886 | _T_1; // @[Monitor.scala 366:14:freechips.rocketchip.system.DefaultRV32Config.fir@23531.6]
  assign _T_889 = _T_888 == 1'h0; // @[Monitor.scala 366:14:freechips.rocketchip.system.DefaultRV32Config.fir@23532.6]
  assign _T_890 = io_in_a_bits_size == _T_877; // @[Monitor.scala 367:29:freechips.rocketchip.system.DefaultRV32Config.fir@23537.6]
  assign _T_892 = _T_890 | _T_1; // @[Monitor.scala 367:14:freechips.rocketchip.system.DefaultRV32Config.fir@23539.6]
  assign _T_893 = _T_892 == 1'h0; // @[Monitor.scala 367:14:freechips.rocketchip.system.DefaultRV32Config.fir@23540.6]
  assign _T_894 = io_in_a_bits_source == _T_878; // @[Monitor.scala 368:29:freechips.rocketchip.system.DefaultRV32Config.fir@23545.6]
  assign _T_896 = _T_894 | _T_1; // @[Monitor.scala 368:14:freechips.rocketchip.system.DefaultRV32Config.fir@23547.6]
  assign _T_897 = _T_896 == 1'h0; // @[Monitor.scala 368:14:freechips.rocketchip.system.DefaultRV32Config.fir@23548.6]
  assign _T_898 = io_in_a_bits_address == _T_879; // @[Monitor.scala 369:29:freechips.rocketchip.system.DefaultRV32Config.fir@23553.6]
  assign _T_900 = _T_898 | _T_1; // @[Monitor.scala 369:14:freechips.rocketchip.system.DefaultRV32Config.fir@23555.6]
  assign _T_901 = _T_900 == 1'h0; // @[Monitor.scala 369:14:freechips.rocketchip.system.DefaultRV32Config.fir@23556.6]
  assign _T_903 = _T_855 & _T_867; // @[Monitor.scala 371:20:freechips.rocketchip.system.DefaultRV32Config.fir@23563.4]
  assign _T_904 = io_in_d_ready & io_in_d_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@23571.4]
  assign _T_906 = 27'hfff << io_in_d_bits_size; // @[package.scala 189:77:freechips.rocketchip.system.DefaultRV32Config.fir@23573.4]
  assign _T_907 = _T_906[11:0]; // @[package.scala 189:82:freechips.rocketchip.system.DefaultRV32Config.fir@23574.4]
  assign _T_908 = ~ _T_907; // @[package.scala 189:46:freechips.rocketchip.system.DefaultRV32Config.fir@23575.4]
  assign _T_909 = _T_908[11:2]; // @[Edges.scala 221:59:freechips.rocketchip.system.DefaultRV32Config.fir@23576.4]
  assign _T_910 = io_in_d_bits_opcode[0]; // @[Edges.scala 107:36:freechips.rocketchip.system.DefaultRV32Config.fir@23577.4]
  assign _T_914 = _T_912 - 10'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@23581.4]
  assign _T_915 = _T_912 == 10'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@23582.4]
  assign _T_929 = _T_915 == 1'h0; // @[Monitor.scala 434:22:freechips.rocketchip.system.DefaultRV32Config.fir@23599.4]
  assign _T_930 = io_in_d_valid & _T_929; // @[Monitor.scala 434:19:freechips.rocketchip.system.DefaultRV32Config.fir@23600.4]
  assign _T_931 = io_in_d_bits_opcode == _T_923; // @[Monitor.scala 435:29:freechips.rocketchip.system.DefaultRV32Config.fir@23602.6]
  assign _T_933 = _T_931 | _T_1; // @[Monitor.scala 435:14:freechips.rocketchip.system.DefaultRV32Config.fir@23604.6]
  assign _T_934 = _T_933 == 1'h0; // @[Monitor.scala 435:14:freechips.rocketchip.system.DefaultRV32Config.fir@23605.6]
  assign _T_935 = io_in_d_bits_param == _T_924; // @[Monitor.scala 436:29:freechips.rocketchip.system.DefaultRV32Config.fir@23610.6]
  assign _T_937 = _T_935 | _T_1; // @[Monitor.scala 436:14:freechips.rocketchip.system.DefaultRV32Config.fir@23612.6]
  assign _T_938 = _T_937 == 1'h0; // @[Monitor.scala 436:14:freechips.rocketchip.system.DefaultRV32Config.fir@23613.6]
  assign _T_939 = io_in_d_bits_size == _T_925; // @[Monitor.scala 437:29:freechips.rocketchip.system.DefaultRV32Config.fir@23618.6]
  assign _T_941 = _T_939 | _T_1; // @[Monitor.scala 437:14:freechips.rocketchip.system.DefaultRV32Config.fir@23620.6]
  assign _T_942 = _T_941 == 1'h0; // @[Monitor.scala 437:14:freechips.rocketchip.system.DefaultRV32Config.fir@23621.6]
  assign _T_943 = io_in_d_bits_source == _T_926; // @[Monitor.scala 438:29:freechips.rocketchip.system.DefaultRV32Config.fir@23626.6]
  assign _T_945 = _T_943 | _T_1; // @[Monitor.scala 438:14:freechips.rocketchip.system.DefaultRV32Config.fir@23628.6]
  assign _T_946 = _T_945 == 1'h0; // @[Monitor.scala 438:14:freechips.rocketchip.system.DefaultRV32Config.fir@23629.6]
  assign _T_947 = io_in_d_bits_sink == _T_927; // @[Monitor.scala 439:29:freechips.rocketchip.system.DefaultRV32Config.fir@23634.6]
  assign _T_949 = _T_947 | _T_1; // @[Monitor.scala 439:14:freechips.rocketchip.system.DefaultRV32Config.fir@23636.6]
  assign _T_950 = _T_949 == 1'h0; // @[Monitor.scala 439:14:freechips.rocketchip.system.DefaultRV32Config.fir@23637.6]
  assign _T_951 = io_in_d_bits_denied == _T_928; // @[Monitor.scala 440:29:freechips.rocketchip.system.DefaultRV32Config.fir@23642.6]
  assign _T_953 = _T_951 | _T_1; // @[Monitor.scala 440:14:freechips.rocketchip.system.DefaultRV32Config.fir@23644.6]
  assign _T_954 = _T_953 == 1'h0; // @[Monitor.scala 440:14:freechips.rocketchip.system.DefaultRV32Config.fir@23645.6]
  assign _T_956 = _T_904 & _T_915; // @[Monitor.scala 442:20:freechips.rocketchip.system.DefaultRV32Config.fir@23652.4]
  assign _T_969 = _T_967 - 10'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@23673.4]
  assign _T_970 = _T_967 == 10'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@23674.4]
  assign _T_988 = _T_986 - 10'h1; // @[Edges.scala 231:28:freechips.rocketchip.system.DefaultRV32Config.fir@23695.4]
  assign _T_989 = _T_986 == 10'h0; // @[Edges.scala 232:25:freechips.rocketchip.system.DefaultRV32Config.fir@23696.4]
  assign _T_999 = _T_855 & _T_970; // @[Monitor.scala 468:27:freechips.rocketchip.system.DefaultRV32Config.fir@23710.4]
  assign _T_1001 = 16'h1 << io_in_a_bits_source; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@23713.6]
  assign _T_1002 = _T_957 >> io_in_a_bits_source; // @[Monitor.scala 470:23:freechips.rocketchip.system.DefaultRV32Config.fir@23715.6]
  assign _T_1003 = _T_1002[0]; // @[Monitor.scala 470:23:freechips.rocketchip.system.DefaultRV32Config.fir@23716.6]
  assign _T_1004 = _T_1003 == 1'h0; // @[Monitor.scala 470:14:freechips.rocketchip.system.DefaultRV32Config.fir@23717.6]
  assign _T_1006 = _T_1004 | _T_1; // @[Monitor.scala 470:13:freechips.rocketchip.system.DefaultRV32Config.fir@23719.6]
  assign _T_1007 = _T_1006 == 1'h0; // @[Monitor.scala 470:13:freechips.rocketchip.system.DefaultRV32Config.fir@23720.6]
  assign _GEN_15 = _T_999 ? _T_1001 : 16'h0; // @[Monitor.scala 468:72:freechips.rocketchip.system.DefaultRV32Config.fir@23712.4]
  assign _T_1011 = _T_904 & _T_989; // @[Monitor.scala 475:27:freechips.rocketchip.system.DefaultRV32Config.fir@23730.4]
  assign _T_1013 = _T_711 == 1'h0; // @[Monitor.scala 475:75:freechips.rocketchip.system.DefaultRV32Config.fir@23732.4]
  assign _T_1014 = _T_1011 & _T_1013; // @[Monitor.scala 475:72:freechips.rocketchip.system.DefaultRV32Config.fir@23733.4]
  assign _T_1015 = 16'h1 << io_in_d_bits_source; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@23735.6]
  assign _T_1016 = _GEN_15 | _T_957; // @[Monitor.scala 477:21:freechips.rocketchip.system.DefaultRV32Config.fir@23737.6]
  assign _T_1017 = _T_1016 >> io_in_d_bits_source; // @[Monitor.scala 477:32:freechips.rocketchip.system.DefaultRV32Config.fir@23738.6]
  assign _T_1018 = _T_1017[0]; // @[Monitor.scala 477:32:freechips.rocketchip.system.DefaultRV32Config.fir@23739.6]
  assign _T_1020 = _T_1018 | _T_1; // @[Monitor.scala 477:13:freechips.rocketchip.system.DefaultRV32Config.fir@23741.6]
  assign _T_1021 = _T_1020 == 1'h0; // @[Monitor.scala 477:13:freechips.rocketchip.system.DefaultRV32Config.fir@23742.6]
  assign _GEN_16 = _T_1014 ? _T_1015 : 16'h0; // @[Monitor.scala 475:91:freechips.rocketchip.system.DefaultRV32Config.fir@23734.4]
  assign _T_1022 = _GEN_15 != _GEN_16; // @[Monitor.scala 481:20:freechips.rocketchip.system.DefaultRV32Config.fir@23748.4]
  assign _T_1023 = _GEN_15 != 16'h0; // @[Monitor.scala 481:40:freechips.rocketchip.system.DefaultRV32Config.fir@23749.4]
  assign _T_1024 = _T_1023 == 1'h0; // @[Monitor.scala 481:33:freechips.rocketchip.system.DefaultRV32Config.fir@23750.4]
  assign _T_1025 = _T_1022 | _T_1024; // @[Monitor.scala 481:30:freechips.rocketchip.system.DefaultRV32Config.fir@23751.4]
  assign _T_1027 = _T_1025 | _T_1; // @[Monitor.scala 481:13:freechips.rocketchip.system.DefaultRV32Config.fir@23753.4]
  assign _T_1028 = _T_1027 == 1'h0; // @[Monitor.scala 481:13:freechips.rocketchip.system.DefaultRV32Config.fir@23754.4]
  assign _T_1029 = _T_957 | _GEN_15; // @[Monitor.scala 484:27:freechips.rocketchip.system.DefaultRV32Config.fir@23759.4]
  assign _T_1030 = ~ _GEN_16; // @[Monitor.scala 484:38:freechips.rocketchip.system.DefaultRV32Config.fir@23760.4]
  assign _T_1031 = _T_1029 & _T_1030; // @[Monitor.scala 484:36:freechips.rocketchip.system.DefaultRV32Config.fir@23761.4]
  assign _T_1033 = _T_957 != 16'h0; // @[Monitor.scala 489:23:freechips.rocketchip.system.DefaultRV32Config.fir@23766.4]
  assign _T_1034 = _T_1033 == 1'h0; // @[Monitor.scala 489:13:freechips.rocketchip.system.DefaultRV32Config.fir@23767.4]
  assign _T_1035 = plusarg_reader_out == 32'h0; // @[Monitor.scala 489:36:freechips.rocketchip.system.DefaultRV32Config.fir@23768.4]
  assign _T_1036 = _T_1034 | _T_1035; // @[Monitor.scala 489:27:freechips.rocketchip.system.DefaultRV32Config.fir@23769.4]
  assign _T_1037 = _T_1032 < plusarg_reader_out; // @[Monitor.scala 489:56:freechips.rocketchip.system.DefaultRV32Config.fir@23770.4]
  assign _T_1038 = _T_1036 | _T_1037; // @[Monitor.scala 489:44:freechips.rocketchip.system.DefaultRV32Config.fir@23771.4]
  assign _T_1040 = _T_1038 | _T_1; // @[Monitor.scala 489:12:freechips.rocketchip.system.DefaultRV32Config.fir@23773.4]
  assign _T_1041 = _T_1040 == 1'h0; // @[Monitor.scala 489:12:freechips.rocketchip.system.DefaultRV32Config.fir@23774.4]
  assign _T_1043 = _T_1032 + 32'h1; // @[Monitor.scala 491:26:freechips.rocketchip.system.DefaultRV32Config.fir@23780.4]
  assign _T_1046 = _T_855 | _T_904; // @[Monitor.scala 492:27:freechips.rocketchip.system.DefaultRV32Config.fir@23784.4]
  assign _GEN_19 = io_in_a_valid & _T_95; // @[Monitor.scala 59:14:freechips.rocketchip.system.DefaultRV32Config.fir@22416.10]
  assign _GEN_35 = io_in_a_valid & _T_174; // @[Monitor.scala 70:14:freechips.rocketchip.system.DefaultRV32Config.fir@22529.10]
  assign _GEN_53 = io_in_a_valid & _T_257; // @[Monitor.scala 82:14:freechips.rocketchip.system.DefaultRV32Config.fir@22653.10]
  assign _GEN_65 = io_in_a_valid & _T_331; // @[Monitor.scala 91:14:freechips.rocketchip.system.DefaultRV32Config.fir@22760.10]
  assign _GEN_75 = io_in_a_valid & _T_408; // @[Monitor.scala 99:14:freechips.rocketchip.system.DefaultRV32Config.fir@22859.10]
  assign _GEN_85 = io_in_a_valid & _T_487; // @[Monitor.scala 107:14:freechips.rocketchip.system.DefaultRV32Config.fir@22950.10]
  assign _GEN_95 = io_in_a_valid & _T_554; // @[Monitor.scala 115:14:freechips.rocketchip.system.DefaultRV32Config.fir@23039.10]
  assign _GEN_105 = io_in_a_valid & _T_621; // @[Monitor.scala 123:14:freechips.rocketchip.system.DefaultRV32Config.fir@23128.10]
  assign _GEN_115 = io_in_d_valid & _T_711; // @[Monitor.scala 286:14:freechips.rocketchip.system.DefaultRV32Config.fir@23200.10]
  assign _GEN_125 = io_in_d_valid & _T_731; // @[Monitor.scala 294:14:freechips.rocketchip.system.DefaultRV32Config.fir@23242.10]
  assign _GEN_135 = io_in_d_valid & _T_759; // @[Monitor.scala 304:14:freechips.rocketchip.system.DefaultRV32Config.fir@23300.10]
  assign _GEN_145 = io_in_d_valid & _T_788; // @[Monitor.scala 314:14:freechips.rocketchip.system.DefaultRV32Config.fir@23359.10]
  assign _GEN_151 = io_in_d_valid & _T_805; // @[Monitor.scala 322:14:freechips.rocketchip.system.DefaultRV32Config.fir@23394.10]
  assign _GEN_157 = io_in_d_valid & _T_823; // @[Monitor.scala 330:14:freechips.rocketchip.system.DefaultRV32Config.fir@23430.10]
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
  _T_864 = _RAND_0[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_875 = _RAND_1[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_876 = _RAND_2[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_877 = _RAND_3[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_878 = _RAND_4[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_879 = _RAND_5[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_912 = _RAND_6[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_923 = _RAND_7[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_924 = _RAND_8[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_925 = _RAND_9[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_926 = _RAND_10[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_927 = _RAND_11[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  _T_928 = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  _T_957 = _RAND_13[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  _T_967 = _RAND_14[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  _T_986 = _RAND_15[9:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  _T_1032 = _RAND_16[31:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge clock) begin
    if (reset) begin
      _T_864 <= 10'h0;
    end else begin
      if (_T_855) begin
        if (_T_867) begin
          if (_T_862) begin
            _T_864 <= _T_860;
          end else begin
            _T_864 <= 10'h0;
          end
        end else begin
          _T_864 <= _T_866;
        end
      end
    end
    if (_T_903) begin
      _T_875 <= io_in_a_bits_opcode;
    end
    if (_T_903) begin
      _T_876 <= io_in_a_bits_param;
    end
    if (_T_903) begin
      _T_877 <= io_in_a_bits_size;
    end
    if (_T_903) begin
      _T_878 <= io_in_a_bits_source;
    end
    if (_T_903) begin
      _T_879 <= io_in_a_bits_address;
    end
    if (reset) begin
      _T_912 <= 10'h0;
    end else begin
      if (_T_904) begin
        if (_T_915) begin
          if (_T_910) begin
            _T_912 <= _T_909;
          end else begin
            _T_912 <= 10'h0;
          end
        end else begin
          _T_912 <= _T_914;
        end
      end
    end
    if (_T_956) begin
      _T_923 <= io_in_d_bits_opcode;
    end
    if (_T_956) begin
      _T_924 <= io_in_d_bits_param;
    end
    if (_T_956) begin
      _T_925 <= io_in_d_bits_size;
    end
    if (_T_956) begin
      _T_926 <= io_in_d_bits_source;
    end
    if (_T_956) begin
      _T_927 <= io_in_d_bits_sink;
    end
    if (_T_956) begin
      _T_928 <= io_in_d_bits_denied;
    end
    if (reset) begin
      _T_957 <= 16'h0;
    end else begin
      _T_957 <= _T_1031;
    end
    if (reset) begin
      _T_967 <= 10'h0;
    end else begin
      if (_T_855) begin
        if (_T_970) begin
          if (_T_862) begin
            _T_967 <= _T_860;
          end else begin
            _T_967 <= 10'h0;
          end
        end else begin
          _T_967 <= _T_969;
        end
      end
    end
    if (reset) begin
      _T_986 <= 10'h0;
    end else begin
      if (_T_904) begin
        if (_T_989) begin
          if (_T_910) begin
            _T_986 <= _T_909;
          end else begin
            _T_986 <= 10'h0;
          end
        end else begin
          _T_986 <= _T_988;
        end
      end
    end
    if (reset) begin
      _T_1032 <= 32'h0;
    end else begin
      if (_T_1046) begin
        _T_1032 <= 32'h0;
      end else begin
        _T_1032 <= _T_1043;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_19 & _T_147) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock type unsupported by manager (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:59 assert (edge.manager.supportsAcquireBSafe(edge.address(bundle), bundle.size), \"'A' channel carries AcquireBlock type unsupported by manager\" + extra)\n"); // @[Monitor.scala 59:14:freechips.rocketchip.system.DefaultRV32Config.fir@22416.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_19 & _T_147) begin
          $fatal; // @[Monitor.scala 59:14:freechips.rocketchip.system.DefaultRV32Config.fir@22417.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_19 & _T_150) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquireBlock from a client which does not support Probe (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:60 assert (edge.client.supportsProbe(edge.source(bundle), bundle.size), \"'A' channel carries AcquireBlock from a client which does not support Probe\" + extra)\n"); // @[Monitor.scala 60:14:freechips.rocketchip.system.DefaultRV32Config.fir@22423.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_19 & _T_150) begin
          $fatal; // @[Monitor.scala 60:14:freechips.rocketchip.system.DefaultRV32Config.fir@22424.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_19 & _T_153) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid source ID (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:61 assert (source_ok, \"'A' channel AcquireBlock carries invalid source ID\" + extra)\n"); // @[Monitor.scala 61:14:freechips.rocketchip.system.DefaultRV32Config.fir@22430.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_19 & _T_153) begin
          $fatal; // @[Monitor.scala 61:14:freechips.rocketchip.system.DefaultRV32Config.fir@22431.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_19 & _T_157) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock smaller than a beat (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:62 assert (bundle.size >= log2Ceil(edge.manager.beatBytes).U, \"'A' channel AcquireBlock smaller than a beat\" + extra)\n"); // @[Monitor.scala 62:14:freechips.rocketchip.system.DefaultRV32Config.fir@22438.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_19 & _T_157) begin
          $fatal; // @[Monitor.scala 62:14:freechips.rocketchip.system.DefaultRV32Config.fir@22439.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_19 & _T_160) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock address not aligned to size (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:63 assert (is_aligned, \"'A' channel AcquireBlock address not aligned to size\" + extra)\n"); // @[Monitor.scala 63:14:freechips.rocketchip.system.DefaultRV32Config.fir@22445.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_19 & _T_160) begin
          $fatal; // @[Monitor.scala 63:14:freechips.rocketchip.system.DefaultRV32Config.fir@22446.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_19 & _T_164) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock carries invalid grow param (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:64 assert (TLPermissions.isGrow(bundle.param), \"'A' channel AcquireBlock carries invalid grow param\" + extra)\n"); // @[Monitor.scala 64:14:freechips.rocketchip.system.DefaultRV32Config.fir@22453.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_19 & _T_164) begin
          $fatal; // @[Monitor.scala 64:14:freechips.rocketchip.system.DefaultRV32Config.fir@22454.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_19 & _T_169) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock contains invalid mask (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:65 assert (~bundle.mask === 0.U, \"'A' channel AcquireBlock contains invalid mask\" + extra)\n"); // @[Monitor.scala 65:14:freechips.rocketchip.system.DefaultRV32Config.fir@22462.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_19 & _T_169) begin
          $fatal; // @[Monitor.scala 65:14:freechips.rocketchip.system.DefaultRV32Config.fir@22463.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_19 & _T_173) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquireBlock is corrupt (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:66 assert (!bundle.corrupt, \"'A' channel AcquireBlock is corrupt\" + extra)\n"); // @[Monitor.scala 66:14:freechips.rocketchip.system.DefaultRV32Config.fir@22470.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_19 & _T_173) begin
          $fatal; // @[Monitor.scala 66:14:freechips.rocketchip.system.DefaultRV32Config.fir@22471.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_35 & _T_147) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm type unsupported by manager (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:70 assert (edge.manager.supportsAcquireBSafe(edge.address(bundle), bundle.size), \"'A' channel carries AcquirePerm type unsupported by manager\" + extra)\n"); // @[Monitor.scala 70:14:freechips.rocketchip.system.DefaultRV32Config.fir@22529.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_35 & _T_147) begin
          $fatal; // @[Monitor.scala 70:14:freechips.rocketchip.system.DefaultRV32Config.fir@22530.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_35 & _T_150) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries AcquirePerm from a client which does not support Probe (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:71 assert (edge.client.supportsProbe(edge.source(bundle), bundle.size), \"'A' channel carries AcquirePerm from a client which does not support Probe\" + extra)\n"); // @[Monitor.scala 71:14:freechips.rocketchip.system.DefaultRV32Config.fir@22536.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_35 & _T_150) begin
          $fatal; // @[Monitor.scala 71:14:freechips.rocketchip.system.DefaultRV32Config.fir@22537.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_35 & _T_153) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid source ID (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:72 assert (source_ok, \"'A' channel AcquirePerm carries invalid source ID\" + extra)\n"); // @[Monitor.scala 72:14:freechips.rocketchip.system.DefaultRV32Config.fir@22543.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_35 & _T_153) begin
          $fatal; // @[Monitor.scala 72:14:freechips.rocketchip.system.DefaultRV32Config.fir@22544.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_35 & _T_157) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm smaller than a beat (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:73 assert (bundle.size >= log2Ceil(edge.manager.beatBytes).U, \"'A' channel AcquirePerm smaller than a beat\" + extra)\n"); // @[Monitor.scala 73:14:freechips.rocketchip.system.DefaultRV32Config.fir@22551.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_35 & _T_157) begin
          $fatal; // @[Monitor.scala 73:14:freechips.rocketchip.system.DefaultRV32Config.fir@22552.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_35 & _T_160) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm address not aligned to size (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:74 assert (is_aligned, \"'A' channel AcquirePerm address not aligned to size\" + extra)\n"); // @[Monitor.scala 74:14:freechips.rocketchip.system.DefaultRV32Config.fir@22558.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_35 & _T_160) begin
          $fatal; // @[Monitor.scala 74:14:freechips.rocketchip.system.DefaultRV32Config.fir@22559.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_35 & _T_164) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm carries invalid grow param (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:75 assert (TLPermissions.isGrow(bundle.param), \"'A' channel AcquirePerm carries invalid grow param\" + extra)\n"); // @[Monitor.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@22566.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_35 & _T_164) begin
          $fatal; // @[Monitor.scala 75:14:freechips.rocketchip.system.DefaultRV32Config.fir@22567.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_35 & _T_247) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm requests NtoB (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:76 assert (bundle.param =/= TLPermissions.NtoB, \"'A' channel AcquirePerm requests NtoB\" + extra)\n"); // @[Monitor.scala 76:14:freechips.rocketchip.system.DefaultRV32Config.fir@22574.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_35 & _T_247) begin
          $fatal; // @[Monitor.scala 76:14:freechips.rocketchip.system.DefaultRV32Config.fir@22575.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_35 & _T_169) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm contains invalid mask (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:77 assert (~bundle.mask === 0.U, \"'A' channel AcquirePerm contains invalid mask\" + extra)\n"); // @[Monitor.scala 77:14:freechips.rocketchip.system.DefaultRV32Config.fir@22583.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_35 & _T_169) begin
          $fatal; // @[Monitor.scala 77:14:freechips.rocketchip.system.DefaultRV32Config.fir@22584.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_35 & _T_173) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel AcquirePerm is corrupt (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:78 assert (!bundle.corrupt, \"'A' channel AcquirePerm is corrupt\" + extra)\n"); // @[Monitor.scala 78:14:freechips.rocketchip.system.DefaultRV32Config.fir@22591.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_35 & _T_173) begin
          $fatal; // @[Monitor.scala 78:14:freechips.rocketchip.system.DefaultRV32Config.fir@22592.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_53 & _T_312) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Get type unsupported by manager (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:82 assert (edge.manager.supportsGetSafe(edge.address(bundle), bundle.size), \"'A' channel carries Get type unsupported by manager\" + extra)\n"); // @[Monitor.scala 82:14:freechips.rocketchip.system.DefaultRV32Config.fir@22653.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_53 & _T_312) begin
          $fatal; // @[Monitor.scala 82:14:freechips.rocketchip.system.DefaultRV32Config.fir@22654.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_53 & _T_153) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid source ID (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:83 assert (source_ok, \"'A' channel Get carries invalid source ID\" + extra)\n"); // @[Monitor.scala 83:14:freechips.rocketchip.system.DefaultRV32Config.fir@22660.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_53 & _T_153) begin
          $fatal; // @[Monitor.scala 83:14:freechips.rocketchip.system.DefaultRV32Config.fir@22661.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_53 & _T_160) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get address not aligned to size (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:84 assert (is_aligned, \"'A' channel Get address not aligned to size\" + extra)\n"); // @[Monitor.scala 84:14:freechips.rocketchip.system.DefaultRV32Config.fir@22667.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_53 & _T_160) begin
          $fatal; // @[Monitor.scala 84:14:freechips.rocketchip.system.DefaultRV32Config.fir@22668.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_53 & _T_322) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get carries invalid param (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:85 assert (bundle.param === 0.U, \"'A' channel Get carries invalid param\" + extra)\n"); // @[Monitor.scala 85:14:freechips.rocketchip.system.DefaultRV32Config.fir@22675.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_53 & _T_322) begin
          $fatal; // @[Monitor.scala 85:14:freechips.rocketchip.system.DefaultRV32Config.fir@22676.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_53 & _T_326) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get contains invalid mask (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:86 assert (bundle.mask === mask, \"'A' channel Get contains invalid mask\" + extra)\n"); // @[Monitor.scala 86:14:freechips.rocketchip.system.DefaultRV32Config.fir@22683.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_53 & _T_326) begin
          $fatal; // @[Monitor.scala 86:14:freechips.rocketchip.system.DefaultRV32Config.fir@22684.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_53 & _T_173) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Get is corrupt (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:87 assert (!bundle.corrupt, \"'A' channel Get is corrupt\" + extra)\n"); // @[Monitor.scala 87:14:freechips.rocketchip.system.DefaultRV32Config.fir@22691.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_53 & _T_173) begin
          $fatal; // @[Monitor.scala 87:14:freechips.rocketchip.system.DefaultRV32Config.fir@22692.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_65 & _T_393) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutFull type unsupported by manager (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:91 assert (edge.manager.supportsPutFullSafe(edge.address(bundle), bundle.size), \"'A' channel carries PutFull type unsupported by manager\" + extra)\n"); // @[Monitor.scala 91:14:freechips.rocketchip.system.DefaultRV32Config.fir@22760.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_65 & _T_393) begin
          $fatal; // @[Monitor.scala 91:14:freechips.rocketchip.system.DefaultRV32Config.fir@22761.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_65 & _T_153) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid source ID (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:92 assert (source_ok, \"'A' channel PutFull carries invalid source ID\" + extra)\n"); // @[Monitor.scala 92:14:freechips.rocketchip.system.DefaultRV32Config.fir@22767.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_65 & _T_153) begin
          $fatal; // @[Monitor.scala 92:14:freechips.rocketchip.system.DefaultRV32Config.fir@22768.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_65 & _T_160) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull address not aligned to size (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:93 assert (is_aligned, \"'A' channel PutFull address not aligned to size\" + extra)\n"); // @[Monitor.scala 93:14:freechips.rocketchip.system.DefaultRV32Config.fir@22774.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_65 & _T_160) begin
          $fatal; // @[Monitor.scala 93:14:freechips.rocketchip.system.DefaultRV32Config.fir@22775.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_65 & _T_322) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull carries invalid param (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:94 assert (bundle.param === 0.U, \"'A' channel PutFull carries invalid param\" + extra)\n"); // @[Monitor.scala 94:14:freechips.rocketchip.system.DefaultRV32Config.fir@22782.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_65 & _T_322) begin
          $fatal; // @[Monitor.scala 94:14:freechips.rocketchip.system.DefaultRV32Config.fir@22783.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_65 & _T_326) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutFull contains invalid mask (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:95 assert (bundle.mask === mask, \"'A' channel PutFull contains invalid mask\" + extra)\n"); // @[Monitor.scala 95:14:freechips.rocketchip.system.DefaultRV32Config.fir@22790.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_65 & _T_326) begin
          $fatal; // @[Monitor.scala 95:14:freechips.rocketchip.system.DefaultRV32Config.fir@22791.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_75 & _T_393) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries PutPartial type unsupported by manager (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:99 assert (edge.manager.supportsPutPartialSafe(edge.address(bundle), bundle.size), \"'A' channel carries PutPartial type unsupported by manager\" + extra)\n"); // @[Monitor.scala 99:14:freechips.rocketchip.system.DefaultRV32Config.fir@22859.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_75 & _T_393) begin
          $fatal; // @[Monitor.scala 99:14:freechips.rocketchip.system.DefaultRV32Config.fir@22860.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_75 & _T_153) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid source ID (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:100 assert (source_ok, \"'A' channel PutPartial carries invalid source ID\" + extra)\n"); // @[Monitor.scala 100:14:freechips.rocketchip.system.DefaultRV32Config.fir@22866.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_75 & _T_153) begin
          $fatal; // @[Monitor.scala 100:14:freechips.rocketchip.system.DefaultRV32Config.fir@22867.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_75 & _T_160) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial address not aligned to size (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:101 assert (is_aligned, \"'A' channel PutPartial address not aligned to size\" + extra)\n"); // @[Monitor.scala 101:14:freechips.rocketchip.system.DefaultRV32Config.fir@22873.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_75 & _T_160) begin
          $fatal; // @[Monitor.scala 101:14:freechips.rocketchip.system.DefaultRV32Config.fir@22874.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_75 & _T_322) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial carries invalid param (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:102 assert (bundle.param === 0.U, \"'A' channel PutPartial carries invalid param\" + extra)\n"); // @[Monitor.scala 102:14:freechips.rocketchip.system.DefaultRV32Config.fir@22881.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_75 & _T_322) begin
          $fatal; // @[Monitor.scala 102:14:freechips.rocketchip.system.DefaultRV32Config.fir@22882.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_75 & _T_486) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel PutPartial contains invalid mask (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:103 assert ((bundle.mask & ~mask) === 0.U, \"'A' channel PutPartial contains invalid mask\" + extra)\n"); // @[Monitor.scala 103:14:freechips.rocketchip.system.DefaultRV32Config.fir@22891.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_75 & _T_486) begin
          $fatal; // @[Monitor.scala 103:14:freechips.rocketchip.system.DefaultRV32Config.fir@22892.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_539) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Arithmetic type unsupported by manager (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:107 assert (edge.manager.supportsArithmeticSafe(edge.address(bundle), bundle.size), \"'A' channel carries Arithmetic type unsupported by manager\" + extra)\n"); // @[Monitor.scala 107:14:freechips.rocketchip.system.DefaultRV32Config.fir@22950.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_539) begin
          $fatal; // @[Monitor.scala 107:14:freechips.rocketchip.system.DefaultRV32Config.fir@22951.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_153) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid source ID (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:108 assert (source_ok, \"'A' channel Arithmetic carries invalid source ID\" + extra)\n"); // @[Monitor.scala 108:14:freechips.rocketchip.system.DefaultRV32Config.fir@22957.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_153) begin
          $fatal; // @[Monitor.scala 108:14:freechips.rocketchip.system.DefaultRV32Config.fir@22958.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_160) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic address not aligned to size (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:109 assert (is_aligned, \"'A' channel Arithmetic address not aligned to size\" + extra)\n"); // @[Monitor.scala 109:14:freechips.rocketchip.system.DefaultRV32Config.fir@22964.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_160) begin
          $fatal; // @[Monitor.scala 109:14:freechips.rocketchip.system.DefaultRV32Config.fir@22965.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_549) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic carries invalid opcode param (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:110 assert (TLAtomics.isArithmetic(bundle.param), \"'A' channel Arithmetic carries invalid opcode param\" + extra)\n"); // @[Monitor.scala 110:14:freechips.rocketchip.system.DefaultRV32Config.fir@22972.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_549) begin
          $fatal; // @[Monitor.scala 110:14:freechips.rocketchip.system.DefaultRV32Config.fir@22973.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_85 & _T_326) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Arithmetic contains invalid mask (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:111 assert (bundle.mask === mask, \"'A' channel Arithmetic contains invalid mask\" + extra)\n"); // @[Monitor.scala 111:14:freechips.rocketchip.system.DefaultRV32Config.fir@22980.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_85 & _T_326) begin
          $fatal; // @[Monitor.scala 111:14:freechips.rocketchip.system.DefaultRV32Config.fir@22981.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_95 & _T_539) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Logical type unsupported by manager (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:115 assert (edge.manager.supportsLogicalSafe(edge.address(bundle), bundle.size), \"'A' channel carries Logical type unsupported by manager\" + extra)\n"); // @[Monitor.scala 115:14:freechips.rocketchip.system.DefaultRV32Config.fir@23039.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_95 & _T_539) begin
          $fatal; // @[Monitor.scala 115:14:freechips.rocketchip.system.DefaultRV32Config.fir@23040.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_95 & _T_153) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid source ID (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:116 assert (source_ok, \"'A' channel Logical carries invalid source ID\" + extra)\n"); // @[Monitor.scala 116:14:freechips.rocketchip.system.DefaultRV32Config.fir@23046.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_95 & _T_153) begin
          $fatal; // @[Monitor.scala 116:14:freechips.rocketchip.system.DefaultRV32Config.fir@23047.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_95 & _T_160) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical address not aligned to size (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:117 assert (is_aligned, \"'A' channel Logical address not aligned to size\" + extra)\n"); // @[Monitor.scala 117:14:freechips.rocketchip.system.DefaultRV32Config.fir@23053.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_95 & _T_160) begin
          $fatal; // @[Monitor.scala 117:14:freechips.rocketchip.system.DefaultRV32Config.fir@23054.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_95 & _T_616) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical carries invalid opcode param (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:118 assert (TLAtomics.isLogical(bundle.param), \"'A' channel Logical carries invalid opcode param\" + extra)\n"); // @[Monitor.scala 118:14:freechips.rocketchip.system.DefaultRV32Config.fir@23061.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_95 & _T_616) begin
          $fatal; // @[Monitor.scala 118:14:freechips.rocketchip.system.DefaultRV32Config.fir@23062.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_95 & _T_326) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Logical contains invalid mask (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:119 assert (bundle.mask === mask, \"'A' channel Logical contains invalid mask\" + extra)\n"); // @[Monitor.scala 119:14:freechips.rocketchip.system.DefaultRV32Config.fir@23069.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_95 & _T_326) begin
          $fatal; // @[Monitor.scala 119:14:freechips.rocketchip.system.DefaultRV32Config.fir@23070.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_105 & _T_673) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel carries Hint type unsupported by manager (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:123 assert (edge.manager.supportsHintSafe(edge.address(bundle), bundle.size), \"'A' channel carries Hint type unsupported by manager\" + extra)\n"); // @[Monitor.scala 123:14:freechips.rocketchip.system.DefaultRV32Config.fir@23128.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_105 & _T_673) begin
          $fatal; // @[Monitor.scala 123:14:freechips.rocketchip.system.DefaultRV32Config.fir@23129.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_105 & _T_153) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint carries invalid source ID (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:124 assert (source_ok, \"'A' channel Hint carries invalid source ID\" + extra)\n"); // @[Monitor.scala 124:14:freechips.rocketchip.system.DefaultRV32Config.fir@23135.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_105 & _T_153) begin
          $fatal; // @[Monitor.scala 124:14:freechips.rocketchip.system.DefaultRV32Config.fir@23136.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_105 & _T_160) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint address not aligned to size (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:125 assert (is_aligned, \"'A' channel Hint address not aligned to size\" + extra)\n"); // @[Monitor.scala 125:14:freechips.rocketchip.system.DefaultRV32Config.fir@23142.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_105 & _T_160) begin
          $fatal; // @[Monitor.scala 125:14:freechips.rocketchip.system.DefaultRV32Config.fir@23143.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_105 & _T_326) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint contains invalid mask (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:126 assert (bundle.mask === mask, \"'A' channel Hint contains invalid mask\" + extra)\n"); // @[Monitor.scala 126:14:freechips.rocketchip.system.DefaultRV32Config.fir@23150.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_105 & _T_326) begin
          $fatal; // @[Monitor.scala 126:14:freechips.rocketchip.system.DefaultRV32Config.fir@23151.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_105 & _T_173) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel Hint is corrupt (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:127 assert (!bundle.corrupt, \"'A' channel Hint is corrupt\" + extra)\n"); // @[Monitor.scala 127:14:freechips.rocketchip.system.DefaultRV32Config.fir@23158.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_105 & _T_173) begin
          $fatal; // @[Monitor.scala 127:14:freechips.rocketchip.system.DefaultRV32Config.fir@23159.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_in_d_valid & _T_691) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel has invalid opcode (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:278 assert (TLMessages.isD(bundle.opcode), \"'D' channel has invalid opcode\" + extra)\n"); // @[Monitor.scala 278:12:freechips.rocketchip.system.DefaultRV32Config.fir@23169.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_in_d_valid & _T_691) begin
          $fatal; // @[Monitor.scala 278:12:freechips.rocketchip.system.DefaultRV32Config.fir@23170.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_115 & _T_714) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck carries invalid source ID (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:286 assert (source_ok, \"'D' channel ReleaseAck carries invalid source ID\" + extra)\n"); // @[Monitor.scala 286:14:freechips.rocketchip.system.DefaultRV32Config.fir@23200.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_115 & _T_714) begin
          $fatal; // @[Monitor.scala 286:14:freechips.rocketchip.system.DefaultRV32Config.fir@23201.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_115 & _T_718) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck smaller than a beat (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:287 assert (bundle.size >= log2Ceil(edge.manager.beatBytes).U, \"'D' channel ReleaseAck smaller than a beat\" + extra)\n"); // @[Monitor.scala 287:14:freechips.rocketchip.system.DefaultRV32Config.fir@23208.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_115 & _T_718) begin
          $fatal; // @[Monitor.scala 287:14:freechips.rocketchip.system.DefaultRV32Config.fir@23209.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_115 & _T_722) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseeAck carries invalid param (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:288 assert (bundle.param === 0.U, \"'D' channel ReleaseeAck carries invalid param\" + extra)\n"); // @[Monitor.scala 288:14:freechips.rocketchip.system.DefaultRV32Config.fir@23216.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_115 & _T_722) begin
          $fatal; // @[Monitor.scala 288:14:freechips.rocketchip.system.DefaultRV32Config.fir@23217.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_115 & _T_726) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is corrupt (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:289 assert (!bundle.corrupt, \"'D' channel ReleaseAck is corrupt\" + extra)\n"); // @[Monitor.scala 289:14:freechips.rocketchip.system.DefaultRV32Config.fir@23224.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_115 & _T_726) begin
          $fatal; // @[Monitor.scala 289:14:freechips.rocketchip.system.DefaultRV32Config.fir@23225.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_115 & _T_730) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel ReleaseAck is denied (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:290 assert (!bundle.denied, \"'D' channel ReleaseAck is denied\" + extra)\n"); // @[Monitor.scala 290:14:freechips.rocketchip.system.DefaultRV32Config.fir@23232.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_115 & _T_730) begin
          $fatal; // @[Monitor.scala 290:14:freechips.rocketchip.system.DefaultRV32Config.fir@23233.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_125 & _T_714) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid source ID (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:294 assert (source_ok, \"'D' channel Grant carries invalid source ID\" + extra)\n"); // @[Monitor.scala 294:14:freechips.rocketchip.system.DefaultRV32Config.fir@23242.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_125 & _T_714) begin
          $fatal; // @[Monitor.scala 294:14:freechips.rocketchip.system.DefaultRV32Config.fir@23243.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_125 & _T_718) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant smaller than a beat (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:296 assert (bundle.size >= log2Ceil(edge.manager.beatBytes).U, \"'D' channel Grant smaller than a beat\" + extra)\n"); // @[Monitor.scala 296:14:freechips.rocketchip.system.DefaultRV32Config.fir@23257.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_125 & _T_718) begin
          $fatal; // @[Monitor.scala 296:14:freechips.rocketchip.system.DefaultRV32Config.fir@23258.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_125 & _T_745) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries invalid cap param (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:297 assert (TLPermissions.isCap(bundle.param), \"'D' channel Grant carries invalid cap param\" + extra)\n"); // @[Monitor.scala 297:14:freechips.rocketchip.system.DefaultRV32Config.fir@23265.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_125 & _T_745) begin
          $fatal; // @[Monitor.scala 297:14:freechips.rocketchip.system.DefaultRV32Config.fir@23266.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_125 & _T_749) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant carries toN param (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:298 assert (bundle.param =/= TLPermissions.toN, \"'D' channel Grant carries toN param\" + extra)\n"); // @[Monitor.scala 298:14:freechips.rocketchip.system.DefaultRV32Config.fir@23273.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_125 & _T_749) begin
          $fatal; // @[Monitor.scala 298:14:freechips.rocketchip.system.DefaultRV32Config.fir@23274.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_125 & _T_726) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel Grant is corrupt (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:299 assert (!bundle.corrupt, \"'D' channel Grant is corrupt\" + extra)\n"); // @[Monitor.scala 299:14:freechips.rocketchip.system.DefaultRV32Config.fir@23281.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_125 & _T_726) begin
          $fatal; // @[Monitor.scala 299:14:freechips.rocketchip.system.DefaultRV32Config.fir@23282.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_135 & _T_714) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid source ID (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:304 assert (source_ok, \"'D' channel GrantData carries invalid source ID\" + extra)\n"); // @[Monitor.scala 304:14:freechips.rocketchip.system.DefaultRV32Config.fir@23300.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_135 & _T_714) begin
          $fatal; // @[Monitor.scala 304:14:freechips.rocketchip.system.DefaultRV32Config.fir@23301.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_135 & _T_718) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData smaller than a beat (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:306 assert (bundle.size >= log2Ceil(edge.manager.beatBytes).U, \"'D' channel GrantData smaller than a beat\" + extra)\n"); // @[Monitor.scala 306:14:freechips.rocketchip.system.DefaultRV32Config.fir@23315.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_135 & _T_718) begin
          $fatal; // @[Monitor.scala 306:14:freechips.rocketchip.system.DefaultRV32Config.fir@23316.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_135 & _T_745) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries invalid cap param (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:307 assert (TLPermissions.isCap(bundle.param), \"'D' channel GrantData carries invalid cap param\" + extra)\n"); // @[Monitor.scala 307:14:freechips.rocketchip.system.DefaultRV32Config.fir@23323.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_135 & _T_745) begin
          $fatal; // @[Monitor.scala 307:14:freechips.rocketchip.system.DefaultRV32Config.fir@23324.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_135 & _T_749) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData carries toN param (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:308 assert (bundle.param =/= TLPermissions.toN, \"'D' channel GrantData carries toN param\" + extra)\n"); // @[Monitor.scala 308:14:freechips.rocketchip.system.DefaultRV32Config.fir@23331.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_135 & _T_749) begin
          $fatal; // @[Monitor.scala 308:14:freechips.rocketchip.system.DefaultRV32Config.fir@23332.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_135 & _T_782) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel GrantData is denied but not corrupt (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:309 assert (!bundle.denied || bundle.corrupt, \"'D' channel GrantData is denied but not corrupt\" + extra)\n"); // @[Monitor.scala 309:14:freechips.rocketchip.system.DefaultRV32Config.fir@23340.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_135 & _T_782) begin
          $fatal; // @[Monitor.scala 309:14:freechips.rocketchip.system.DefaultRV32Config.fir@23341.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_145 & _T_714) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid source ID (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:314 assert (source_ok, \"'D' channel AccessAck carries invalid source ID\" + extra)\n"); // @[Monitor.scala 314:14:freechips.rocketchip.system.DefaultRV32Config.fir@23359.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_145 & _T_714) begin
          $fatal; // @[Monitor.scala 314:14:freechips.rocketchip.system.DefaultRV32Config.fir@23360.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_145 & _T_722) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck carries invalid param (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:316 assert (bundle.param === 0.U, \"'D' channel AccessAck carries invalid param\" + extra)\n"); // @[Monitor.scala 316:14:freechips.rocketchip.system.DefaultRV32Config.fir@23367.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_145 & _T_722) begin
          $fatal; // @[Monitor.scala 316:14:freechips.rocketchip.system.DefaultRV32Config.fir@23368.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_145 & _T_726) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAck is corrupt (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:317 assert (!bundle.corrupt, \"'D' channel AccessAck is corrupt\" + extra)\n"); // @[Monitor.scala 317:14:freechips.rocketchip.system.DefaultRV32Config.fir@23375.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_145 & _T_726) begin
          $fatal; // @[Monitor.scala 317:14:freechips.rocketchip.system.DefaultRV32Config.fir@23376.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_151 & _T_714) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid source ID (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:322 assert (source_ok, \"'D' channel AccessAckData carries invalid source ID\" + extra)\n"); // @[Monitor.scala 322:14:freechips.rocketchip.system.DefaultRV32Config.fir@23394.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_151 & _T_714) begin
          $fatal; // @[Monitor.scala 322:14:freechips.rocketchip.system.DefaultRV32Config.fir@23395.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_151 & _T_722) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData carries invalid param (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:324 assert (bundle.param === 0.U, \"'D' channel AccessAckData carries invalid param\" + extra)\n"); // @[Monitor.scala 324:14:freechips.rocketchip.system.DefaultRV32Config.fir@23402.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_151 & _T_722) begin
          $fatal; // @[Monitor.scala 324:14:freechips.rocketchip.system.DefaultRV32Config.fir@23403.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_151 & _T_782) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel AccessAckData is denied but not corrupt (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:325 assert (!bundle.denied || bundle.corrupt, \"'D' channel AccessAckData is denied but not corrupt\" + extra)\n"); // @[Monitor.scala 325:14:freechips.rocketchip.system.DefaultRV32Config.fir@23411.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_151 & _T_782) begin
          $fatal; // @[Monitor.scala 325:14:freechips.rocketchip.system.DefaultRV32Config.fir@23412.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_157 & _T_714) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid source ID (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:330 assert (source_ok, \"'D' channel HintAck carries invalid source ID\" + extra)\n"); // @[Monitor.scala 330:14:freechips.rocketchip.system.DefaultRV32Config.fir@23430.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_157 & _T_714) begin
          $fatal; // @[Monitor.scala 330:14:freechips.rocketchip.system.DefaultRV32Config.fir@23431.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_157 & _T_722) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck carries invalid param (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:332 assert (bundle.param === 0.U, \"'D' channel HintAck carries invalid param\" + extra)\n"); // @[Monitor.scala 332:14:freechips.rocketchip.system.DefaultRV32Config.fir@23438.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_157 & _T_722) begin
          $fatal; // @[Monitor.scala 332:14:freechips.rocketchip.system.DefaultRV32Config.fir@23439.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_157 & _T_726) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel HintAck is corrupt (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:333 assert (!bundle.corrupt, \"'D' channel HintAck is corrupt\" + extra)\n"); // @[Monitor.scala 333:14:freechips.rocketchip.system.DefaultRV32Config.fir@23446.10]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_157 & _T_726) begin
          $fatal; // @[Monitor.scala 333:14:freechips.rocketchip.system.DefaultRV32Config.fir@23447.10]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_881 & _T_885) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel opcode changed within multibeat operation (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:365 assert (a.bits.opcode === opcode, \"'A' channel opcode changed within multibeat operation\" + extra)\n"); // @[Monitor.scala 365:14:freechips.rocketchip.system.DefaultRV32Config.fir@23526.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_881 & _T_885) begin
          $fatal; // @[Monitor.scala 365:14:freechips.rocketchip.system.DefaultRV32Config.fir@23527.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_881 & _T_889) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel param changed within multibeat operation (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:366 assert (a.bits.param  === param,  \"'A' channel param changed within multibeat operation\" + extra)\n"); // @[Monitor.scala 366:14:freechips.rocketchip.system.DefaultRV32Config.fir@23534.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_881 & _T_889) begin
          $fatal; // @[Monitor.scala 366:14:freechips.rocketchip.system.DefaultRV32Config.fir@23535.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_881 & _T_893) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel size changed within multibeat operation (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:367 assert (a.bits.size   === size,   \"'A' channel size changed within multibeat operation\" + extra)\n"); // @[Monitor.scala 367:14:freechips.rocketchip.system.DefaultRV32Config.fir@23542.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_881 & _T_893) begin
          $fatal; // @[Monitor.scala 367:14:freechips.rocketchip.system.DefaultRV32Config.fir@23543.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_881 & _T_897) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel source changed within multibeat operation (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:368 assert (a.bits.source === source, \"'A' channel source changed within multibeat operation\" + extra)\n"); // @[Monitor.scala 368:14:freechips.rocketchip.system.DefaultRV32Config.fir@23550.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_881 & _T_897) begin
          $fatal; // @[Monitor.scala 368:14:freechips.rocketchip.system.DefaultRV32Config.fir@23551.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_881 & _T_901) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel address changed with multibeat operation (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:369 assert (a.bits.address=== address,\"'A' channel address changed with multibeat operation\" + extra)\n"); // @[Monitor.scala 369:14:freechips.rocketchip.system.DefaultRV32Config.fir@23558.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_881 & _T_901) begin
          $fatal; // @[Monitor.scala 369:14:freechips.rocketchip.system.DefaultRV32Config.fir@23559.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_930 & _T_934) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel opcode changed within multibeat operation (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:435 assert (d.bits.opcode === opcode, \"'D' channel opcode changed within multibeat operation\" + extra)\n"); // @[Monitor.scala 435:14:freechips.rocketchip.system.DefaultRV32Config.fir@23607.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_930 & _T_934) begin
          $fatal; // @[Monitor.scala 435:14:freechips.rocketchip.system.DefaultRV32Config.fir@23608.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_930 & _T_938) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel param changed within multibeat operation (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:436 assert (d.bits.param  === param,  \"'D' channel param changed within multibeat operation\" + extra)\n"); // @[Monitor.scala 436:14:freechips.rocketchip.system.DefaultRV32Config.fir@23615.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_930 & _T_938) begin
          $fatal; // @[Monitor.scala 436:14:freechips.rocketchip.system.DefaultRV32Config.fir@23616.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_930 & _T_942) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel size changed within multibeat operation (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:437 assert (d.bits.size   === size,   \"'D' channel size changed within multibeat operation\" + extra)\n"); // @[Monitor.scala 437:14:freechips.rocketchip.system.DefaultRV32Config.fir@23623.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_930 & _T_942) begin
          $fatal; // @[Monitor.scala 437:14:freechips.rocketchip.system.DefaultRV32Config.fir@23624.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_930 & _T_946) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel source changed within multibeat operation (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:438 assert (d.bits.source === source, \"'D' channel source changed within multibeat operation\" + extra)\n"); // @[Monitor.scala 438:14:freechips.rocketchip.system.DefaultRV32Config.fir@23631.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_930 & _T_946) begin
          $fatal; // @[Monitor.scala 438:14:freechips.rocketchip.system.DefaultRV32Config.fir@23632.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_930 & _T_950) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel sink changed with multibeat operation (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:439 assert (d.bits.sink   === sink,   \"'D' channel sink changed with multibeat operation\" + extra)\n"); // @[Monitor.scala 439:14:freechips.rocketchip.system.DefaultRV32Config.fir@23639.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_930 & _T_950) begin
          $fatal; // @[Monitor.scala 439:14:freechips.rocketchip.system.DefaultRV32Config.fir@23640.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_930 & _T_954) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel denied changed with multibeat operation (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:440 assert (d.bits.denied === denied, \"'D' channel denied changed with multibeat operation\" + extra)\n"); // @[Monitor.scala 440:14:freechips.rocketchip.system.DefaultRV32Config.fir@23647.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_930 & _T_954) begin
          $fatal; // @[Monitor.scala 440:14:freechips.rocketchip.system.DefaultRV32Config.fir@23648.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_999 & _T_1007) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' channel re-used a source ID (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:470 assert(!inflight(bundle.a.bits.source), \"'A' channel re-used a source ID\" + extra)\n"); // @[Monitor.scala 470:13:freechips.rocketchip.system.DefaultRV32Config.fir@23722.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_999 & _T_1007) begin
          $fatal; // @[Monitor.scala 470:13:freechips.rocketchip.system.DefaultRV32Config.fir@23723.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1014 & _T_1021) begin
          $fwrite(32'h80000002,"Assertion failed: 'D' channel acknowledged for nothing inflight (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:477 assert((a_set | inflight)(bundle.d.bits.source), \"'D' channel acknowledged for nothing inflight\" + extra)\n"); // @[Monitor.scala 477:13:freechips.rocketchip.system.DefaultRV32Config.fir@23744.8]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1014 & _T_1021) begin
          $fatal; // @[Monitor.scala 477:13:freechips.rocketchip.system.DefaultRV32Config.fir@23745.8]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1028) begin
          $fwrite(32'h80000002,"Assertion failed: 'A' and 'D' concurrent, despite minlatency 3 (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:481 assert(a_set =/= d_clr || !a_set.orR, s\"'A' and 'D' concurrent, despite minlatency ${edge.manager.minLatency}\" + extra)\n"); // @[Monitor.scala 481:13:freechips.rocketchip.system.DefaultRV32Config.fir@23756.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1028) begin
          $fatal; // @[Monitor.scala 481:13:freechips.rocketchip.system.DefaultRV32Config.fir@23757.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_1041) begin
          $fwrite(32'h80000002,"Assertion failed: TileLink timeout expired (connected at BusWrapper.scala:168:18)\n    at Monitor.scala:489 assert (!inflight.orR || limit === 0.U || watchdog < limit, \"TileLink timeout expired\" + extra)\n"); // @[Monitor.scala 489:12:freechips.rocketchip.system.DefaultRV32Config.fir@23776.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_1041) begin
          $fatal; // @[Monitor.scala 489:12:freechips.rocketchip.system.DefaultRV32Config.fir@23777.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
`endif // __SystemBus
