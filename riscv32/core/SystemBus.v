`include "include_module.v"
`ifdef __SystemBus
module SystemBus(
  input         clock,
  input         reset,
  input         auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_ready,
  output        auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_valid,
  output [3:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_id,
  output [30:0] auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_addr,
  output [7:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_len,
  output [2:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_size,
  output [1:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_burst,
  output        auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_lock,
  output [3:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_cache,
  output [2:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_prot,
  output [3:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_qos,
  input         auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_ready,
  output        auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_valid,
  output [31:0] auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_bits_data,
  output [3:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_bits_strb,
  output        auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_bits_last,
  output        auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_b_ready,
  input         auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_b_valid, 
  input  [3:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_b_bits_id,
  input  [1:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_b_bits_resp,
  input         auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_ready,
  output        auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_valid,
  output [3:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_id,
  output [30:0] auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_addr,
  output [7:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_len,
  output [2:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_size,
  output [1:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_burst,
  output        auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_lock,
  output [3:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_cache,
  output [2:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_prot,
  output [3:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_qos,
  output        auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_ready,
  input         auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_valid,
  input  [3:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_bits_id,
  input  [31:0] auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_bits_data,
  input  [1:0]  auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_bits_resp,
  input         auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_bits_last,
  output        auto_coupler_from_bus_named_front_bus_bus_xing_in_a_ready,
  input         auto_coupler_from_bus_named_front_bus_bus_xing_in_a_valid,
  input  [2:0]  auto_coupler_from_bus_named_front_bus_bus_xing_in_a_bits_opcode,
  input  [2:0]  auto_coupler_from_bus_named_front_bus_bus_xing_in_a_bits_param,
  input  [3:0]  auto_coupler_from_bus_named_front_bus_bus_xing_in_a_bits_size,
  input  [3:0]  auto_coupler_from_bus_named_front_bus_bus_xing_in_a_bits_source,
  input  [31:0] auto_coupler_from_bus_named_front_bus_bus_xing_in_a_bits_address,
  input  [3:0]  auto_coupler_from_bus_named_front_bus_bus_xing_in_a_bits_mask,
  input  [31:0] auto_coupler_from_bus_named_front_bus_bus_xing_in_a_bits_data,
  input         auto_coupler_from_bus_named_front_bus_bus_xing_in_a_bits_corrupt,
  input         auto_coupler_from_bus_named_front_bus_bus_xing_in_d_ready,
  output        auto_coupler_from_bus_named_front_bus_bus_xing_in_d_valid,
  output [2:0]  auto_coupler_from_bus_named_front_bus_bus_xing_in_d_bits_opcode,
  output [1:0]  auto_coupler_from_bus_named_front_bus_bus_xing_in_d_bits_param,
  output [3:0]  auto_coupler_from_bus_named_front_bus_bus_xing_in_d_bits_size,
  output [3:0]  auto_coupler_from_bus_named_front_bus_bus_xing_in_d_bits_source,
  output [1:0]  auto_coupler_from_bus_named_front_bus_bus_xing_in_d_bits_sink,
  output        auto_coupler_from_bus_named_front_bus_bus_xing_in_d_bits_denied,
  output [31:0] auto_coupler_from_bus_named_front_bus_bus_xing_in_d_bits_data,
  output        auto_coupler_from_bus_named_front_bus_bus_xing_in_d_bits_corrupt,
  input         auto_coupler_to_bus_named_periphery_bus_bus_xing_out_a_ready,
  output        auto_coupler_to_bus_named_periphery_bus_bus_xing_out_a_valid,
  output [2:0]  auto_coupler_to_bus_named_periphery_bus_bus_xing_out_a_bits_opcode,
  output [2:0]  auto_coupler_to_bus_named_periphery_bus_bus_xing_out_a_bits_param,
  output [3:0]  auto_coupler_to_bus_named_periphery_bus_bus_xing_out_a_bits_size,
  output [4:0]  auto_coupler_to_bus_named_periphery_bus_bus_xing_out_a_bits_source,
  output [27:0] auto_coupler_to_bus_named_periphery_bus_bus_xing_out_a_bits_address,
  output [3:0]  auto_coupler_to_bus_named_periphery_bus_bus_xing_out_a_bits_mask,
  output [31:0] auto_coupler_to_bus_named_periphery_bus_bus_xing_out_a_bits_data,
  output        auto_coupler_to_bus_named_periphery_bus_bus_xing_out_a_bits_corrupt,
  output        auto_coupler_to_bus_named_periphery_bus_bus_xing_out_d_ready,
  input         auto_coupler_to_bus_named_periphery_bus_bus_xing_out_d_valid,
  input  [2:0]  auto_coupler_to_bus_named_periphery_bus_bus_xing_out_d_bits_opcode,
  input  [1:0]  auto_coupler_to_bus_named_periphery_bus_bus_xing_out_d_bits_param,
  input  [3:0]  auto_coupler_to_bus_named_periphery_bus_bus_xing_out_d_bits_size,
  input  [4:0]  auto_coupler_to_bus_named_periphery_bus_bus_xing_out_d_bits_source,
  input         auto_coupler_to_bus_named_periphery_bus_bus_xing_out_d_bits_sink,
  input         auto_coupler_to_bus_named_periphery_bus_bus_xing_out_d_bits_denied,
  input  [31:0] auto_coupler_to_bus_named_periphery_bus_bus_xing_out_d_bits_data,
  input         auto_coupler_to_bus_named_periphery_bus_bus_xing_out_d_bits_corrupt,
  output        auto_coupler_from_tile_named_tile_tl_master_xing_in_a_ready,
  input         auto_coupler_from_tile_named_tile_tl_master_xing_in_a_valid,
  input  [2:0]  auto_coupler_from_tile_named_tile_tl_master_xing_in_a_bits_opcode,
  input  [2:0]  auto_coupler_from_tile_named_tile_tl_master_xing_in_a_bits_param,
  input  [3:0]  auto_coupler_from_tile_named_tile_tl_master_xing_in_a_bits_size,
  input  [1:0]  auto_coupler_from_tile_named_tile_tl_master_xing_in_a_bits_source,
  input  [31:0] auto_coupler_from_tile_named_tile_tl_master_xing_in_a_bits_address,
  input  [3:0]  auto_coupler_from_tile_named_tile_tl_master_xing_in_a_bits_mask,
  input  [31:0] auto_coupler_from_tile_named_tile_tl_master_xing_in_a_bits_data,
  input         auto_coupler_from_tile_named_tile_tl_master_xing_in_a_bits_corrupt,
  input         auto_coupler_from_tile_named_tile_tl_master_xing_in_b_ready,
  output        auto_coupler_from_tile_named_tile_tl_master_xing_in_b_valid,
  output [1:0]  auto_coupler_from_tile_named_tile_tl_master_xing_in_b_bits_param,
  output [31:0] auto_coupler_from_tile_named_tile_tl_master_xing_in_b_bits_address,
  output        auto_coupler_from_tile_named_tile_tl_master_xing_in_c_ready,
  input         auto_coupler_from_tile_named_tile_tl_master_xing_in_c_valid,
  input  [2:0]  auto_coupler_from_tile_named_tile_tl_master_xing_in_c_bits_opcode,
  input  [2:0]  auto_coupler_from_tile_named_tile_tl_master_xing_in_c_bits_param,
  input  [3:0]  auto_coupler_from_tile_named_tile_tl_master_xing_in_c_bits_size,
  input  [1:0]  auto_coupler_from_tile_named_tile_tl_master_xing_in_c_bits_source,
  input  [31:0] auto_coupler_from_tile_named_tile_tl_master_xing_in_c_bits_address,
  input  [31:0] auto_coupler_from_tile_named_tile_tl_master_xing_in_c_bits_data,
  input         auto_coupler_from_tile_named_tile_tl_master_xing_in_c_bits_corrupt,
  input         auto_coupler_from_tile_named_tile_tl_master_xing_in_d_ready,
  output        auto_coupler_from_tile_named_tile_tl_master_xing_in_d_valid,
  output [2:0]  auto_coupler_from_tile_named_tile_tl_master_xing_in_d_bits_opcode,
  output [1:0]  auto_coupler_from_tile_named_tile_tl_master_xing_in_d_bits_param,
  output [3:0]  auto_coupler_from_tile_named_tile_tl_master_xing_in_d_bits_size,
  output [1:0]  auto_coupler_from_tile_named_tile_tl_master_xing_in_d_bits_source,
  output [1:0]  auto_coupler_from_tile_named_tile_tl_master_xing_in_d_bits_sink,
  output        auto_coupler_from_tile_named_tile_tl_master_xing_in_d_bits_denied,
  output [31:0] auto_coupler_from_tile_named_tile_tl_master_xing_in_d_bits_data,
  output        auto_coupler_from_tile_named_tile_tl_master_xing_in_d_bits_corrupt,
  input         auto_coupler_from_tile_named_tile_tl_master_xing_in_e_valid,
  input  [1:0]  auto_coupler_from_tile_named_tile_tl_master_xing_in_e_bits_sink,
  input         auto_system_bus_xbar_out_a_ready,
  output        auto_system_bus_xbar_out_a_valid,
  output [2:0]  auto_system_bus_xbar_out_a_bits_opcode,
  output [2:0]  auto_system_bus_xbar_out_a_bits_param,
  output [2:0]  auto_system_bus_xbar_out_a_bits_size,
  output [4:0]  auto_system_bus_xbar_out_a_bits_source, 
  output [31:0] auto_system_bus_xbar_out_a_bits_address,
  output [3:0]  auto_system_bus_xbar_out_a_bits_mask, 
  output [31:0] auto_system_bus_xbar_out_a_bits_data,
  output        auto_system_bus_xbar_out_a_bits_corrupt,
  output        auto_system_bus_xbar_out_b_ready,
  input         auto_system_bus_xbar_out_b_valid,
  input  [1:0]  auto_system_bus_xbar_out_b_bits_param,
  input  [31:0] auto_system_bus_xbar_out_b_bits_address,
  input         auto_system_bus_xbar_out_c_ready,
  output        auto_system_bus_xbar_out_c_valid,
  output [2:0]  auto_system_bus_xbar_out_c_bits_opcode,
  output [2:0]  auto_system_bus_xbar_out_c_bits_param,
  output [2:0]  auto_system_bus_xbar_out_c_bits_size, 
  output [4:0]  auto_system_bus_xbar_out_c_bits_source,
  output [31:0] auto_system_bus_xbar_out_c_bits_address,
  output [31:0] auto_system_bus_xbar_out_c_bits_data,
  output        auto_system_bus_xbar_out_c_bits_corrupt,
  output        auto_system_bus_xbar_out_d_ready,
  input         auto_system_bus_xbar_out_d_valid,
  input  [2:0]  auto_system_bus_xbar_out_d_bits_opcode,
  input  [1:0]  auto_system_bus_xbar_out_d_bits_param,
  input  [2:0]  auto_system_bus_xbar_out_d_bits_size,
  input  [4:0]  auto_system_bus_xbar_out_d_bits_source,
  input  [1:0]  auto_system_bus_xbar_out_d_bits_sink,
  input         auto_system_bus_xbar_out_d_bits_denied,
  input  [31:0] auto_system_bus_xbar_out_d_bits_data,
  input         auto_system_bus_xbar_out_d_bits_corrupt,
  output        auto_system_bus_xbar_out_e_valid, 
  output [1:0]  auto_system_bus_xbar_out_e_bits_sink
);
  wire  system_bus_xbar_clock;
  wire  system_bus_xbar_reset;
  wire  system_bus_xbar_auto_in_1_a_ready; 
  wire  system_bus_xbar_auto_in_1_a_valid;
  wire [2:0] system_bus_xbar_auto_in_1_a_bits_opcode;
  wire [2:0] system_bus_xbar_auto_in_1_a_bits_param;
  wire [3:0] system_bus_xbar_auto_in_1_a_bits_size;
  wire [3:0] system_bus_xbar_auto_in_1_a_bits_source;
  wire [31:0] system_bus_xbar_auto_in_1_a_bits_address;
  wire [3:0] system_bus_xbar_auto_in_1_a_bits_mask;
  wire [31:0] system_bus_xbar_auto_in_1_a_bits_data;
  wire  system_bus_xbar_auto_in_1_a_bits_corrupt;
  wire  system_bus_xbar_auto_in_1_d_ready;
  wire  system_bus_xbar_auto_in_1_d_valid;
  wire [2:0] system_bus_xbar_auto_in_1_d_bits_opcode;
  wire [1:0] system_bus_xbar_auto_in_1_d_bits_param;
  wire [3:0] system_bus_xbar_auto_in_1_d_bits_size;
  wire [3:0] system_bus_xbar_auto_in_1_d_bits_source;
  wire [1:0] system_bus_xbar_auto_in_1_d_bits_sink;
  wire  system_bus_xbar_auto_in_1_d_bits_denied;
  wire [31:0] system_bus_xbar_auto_in_1_d_bits_data;
  wire  system_bus_xbar_auto_in_1_d_bits_corrupt;
  wire  system_bus_xbar_auto_in_0_a_ready;
  wire  system_bus_xbar_auto_in_0_a_valid;
  wire [2:0] system_bus_xbar_auto_in_0_a_bits_opcode;
  wire [2:0] system_bus_xbar_auto_in_0_a_bits_param;
  wire [3:0] system_bus_xbar_auto_in_0_a_bits_size;
  wire [1:0] system_bus_xbar_auto_in_0_a_bits_source;
  wire [31:0] system_bus_xbar_auto_in_0_a_bits_address;
  wire [3:0] system_bus_xbar_auto_in_0_a_bits_mask;
  wire [31:0] system_bus_xbar_auto_in_0_a_bits_data;
  wire  system_bus_xbar_auto_in_0_a_bits_corrupt;
  wire  system_bus_xbar_auto_in_0_b_ready;
  wire  system_bus_xbar_auto_in_0_b_valid;
  wire [1:0] system_bus_xbar_auto_in_0_b_bits_param;
  wire [31:0] system_bus_xbar_auto_in_0_b_bits_address;
  wire  system_bus_xbar_auto_in_0_c_ready;
  wire  system_bus_xbar_auto_in_0_c_valid;
  wire [2:0] system_bus_xbar_auto_in_0_c_bits_opcode;
  wire [2:0] system_bus_xbar_auto_in_0_c_bits_param;
  wire [3:0] system_bus_xbar_auto_in_0_c_bits_size;
  wire [1:0] system_bus_xbar_auto_in_0_c_bits_source;
  wire [31:0] system_bus_xbar_auto_in_0_c_bits_address;
  wire [31:0] system_bus_xbar_auto_in_0_c_bits_data;
  wire  system_bus_xbar_auto_in_0_c_bits_corrupt;
  wire  system_bus_xbar_auto_in_0_d_ready;
  wire  system_bus_xbar_auto_in_0_d_valid;
  wire [2:0] system_bus_xbar_auto_in_0_d_bits_opcode;
  wire [1:0] system_bus_xbar_auto_in_0_d_bits_param;
  wire [3:0] system_bus_xbar_auto_in_0_d_bits_size;
  wire [1:0] system_bus_xbar_auto_in_0_d_bits_source;
  wire [1:0] system_bus_xbar_auto_in_0_d_bits_sink;
  wire  system_bus_xbar_auto_in_0_d_bits_denied;
  wire [31:0] system_bus_xbar_auto_in_0_d_bits_data;
  wire  system_bus_xbar_auto_in_0_d_bits_corrupt;
  wire  system_bus_xbar_auto_in_0_e_valid;
  wire [1:0] system_bus_xbar_auto_in_0_e_bits_sink;
  wire  system_bus_xbar_auto_out_2_a_ready;
  wire  system_bus_xbar_auto_out_2_a_valid;
  wire [2:0] system_bus_xbar_auto_out_2_a_bits_opcode;
  wire [2:0] system_bus_xbar_auto_out_2_a_bits_param; 
  wire [3:0] system_bus_xbar_auto_out_2_a_bits_size;
  wire [4:0] system_bus_xbar_auto_out_2_a_bits_source; 
  wire [30:0] system_bus_xbar_auto_out_2_a_bits_address;
  wire [3:0] system_bus_xbar_auto_out_2_a_bits_mask;
  wire [31:0] system_bus_xbar_auto_out_2_a_bits_data;
  wire  system_bus_xbar_auto_out_2_a_bits_corrupt;
  wire  system_bus_xbar_auto_out_2_d_ready;
  wire  system_bus_xbar_auto_out_2_d_valid;
  wire [2:0] system_bus_xbar_auto_out_2_d_bits_opcode;
  wire [3:0] system_bus_xbar_auto_out_2_d_bits_size;
  wire [4:0] system_bus_xbar_auto_out_2_d_bits_source;
  wire  system_bus_xbar_auto_out_2_d_bits_denied;
  wire [31:0] system_bus_xbar_auto_out_2_d_bits_data;
  wire  system_bus_xbar_auto_out_2_d_bits_corrupt;
  wire  system_bus_xbar_auto_out_1_a_ready;
  wire  system_bus_xbar_auto_out_1_a_valid;
  wire [2:0] system_bus_xbar_auto_out_1_a_bits_opcode;
  wire [2:0] system_bus_xbar_auto_out_1_a_bits_param;
  wire [2:0] system_bus_xbar_auto_out_1_a_bits_size; 
  wire [4:0] system_bus_xbar_auto_out_1_a_bits_source;
  wire [31:0] system_bus_xbar_auto_out_1_a_bits_address; 
  wire [3:0] system_bus_xbar_auto_out_1_a_bits_mask;
  wire [31:0] system_bus_xbar_auto_out_1_a_bits_data;
  wire  system_bus_xbar_auto_out_1_a_bits_corrupt; 
  wire  system_bus_xbar_auto_out_1_b_ready;
  wire  system_bus_xbar_auto_out_1_b_valid;
  wire [1:0] system_bus_xbar_auto_out_1_b_bits_param;
  wire [31:0] system_bus_xbar_auto_out_1_b_bits_address;
  wire  system_bus_xbar_auto_out_1_c_ready;
  wire  system_bus_xbar_auto_out_1_c_valid;
  wire [2:0] system_bus_xbar_auto_out_1_c_bits_opcode;
  wire [2:0] system_bus_xbar_auto_out_1_c_bits_param;
  wire [2:0] system_bus_xbar_auto_out_1_c_bits_size;
  wire [4:0] system_bus_xbar_auto_out_1_c_bits_source;
  wire [31:0] system_bus_xbar_auto_out_1_c_bits_address;
  wire [31:0] system_bus_xbar_auto_out_1_c_bits_data;
  wire  system_bus_xbar_auto_out_1_c_bits_corrupt;
  wire  system_bus_xbar_auto_out_1_d_ready; 
  wire  system_bus_xbar_auto_out_1_d_valid;
  wire [2:0] system_bus_xbar_auto_out_1_d_bits_opcode;
  wire [1:0] system_bus_xbar_auto_out_1_d_bits_param;
  wire [2:0] system_bus_xbar_auto_out_1_d_bits_size;
  wire [4:0] system_bus_xbar_auto_out_1_d_bits_source;
  wire [1:0] system_bus_xbar_auto_out_1_d_bits_sink;
  wire  system_bus_xbar_auto_out_1_d_bits_denied;
  wire [31:0] system_bus_xbar_auto_out_1_d_bits_data;
  wire  system_bus_xbar_auto_out_1_d_bits_corrupt;
  wire  system_bus_xbar_auto_out_1_e_valid;
  wire [1:0] system_bus_xbar_auto_out_1_e_bits_sink;
  wire  system_bus_xbar_auto_out_0_a_ready;
  wire  system_bus_xbar_auto_out_0_a_valid;
  wire [2:0] system_bus_xbar_auto_out_0_a_bits_opcode;
  wire [2:0] system_bus_xbar_auto_out_0_a_bits_param;
  wire [3:0] system_bus_xbar_auto_out_0_a_bits_size;
  wire [4:0] system_bus_xbar_auto_out_0_a_bits_source;
  wire [27:0] system_bus_xbar_auto_out_0_a_bits_address;
  wire [3:0] system_bus_xbar_auto_out_0_a_bits_mask;
  wire [31:0] system_bus_xbar_auto_out_0_a_bits_data;
  wire  system_bus_xbar_auto_out_0_a_bits_corrupt;
  wire  system_bus_xbar_auto_out_0_d_ready; 
  wire  system_bus_xbar_auto_out_0_d_valid;
  wire [2:0] system_bus_xbar_auto_out_0_d_bits_opcode;
  wire [1:0] system_bus_xbar_auto_out_0_d_bits_param;
  wire [3:0] system_bus_xbar_auto_out_0_d_bits_size;
  wire [4:0] system_bus_xbar_auto_out_0_d_bits_source;
  wire  system_bus_xbar_auto_out_0_d_bits_sink;
  wire  system_bus_xbar_auto_out_0_d_bits_denied;
  wire [31:0] system_bus_xbar_auto_out_0_d_bits_data;
  wire  system_bus_xbar_auto_out_0_d_bits_corrupt;
  wire  coupler_from_tile_named_tile_clock;
  wire  coupler_from_tile_named_tile_reset;
  wire  coupler_from_tile_named_tile_auto_buffer_out_a_ready;
  wire  coupler_from_tile_named_tile_auto_buffer_out_a_valid;
  wire [2:0] coupler_from_tile_named_tile_auto_buffer_out_a_bits_opcode;
  wire [2:0] coupler_from_tile_named_tile_auto_buffer_out_a_bits_param;
  wire [3:0] coupler_from_tile_named_tile_auto_buffer_out_a_bits_size; 
  wire [1:0] coupler_from_tile_named_tile_auto_buffer_out_a_bits_source;
  wire [31:0] coupler_from_tile_named_tile_auto_buffer_out_a_bits_address;
  wire [3:0] coupler_from_tile_named_tile_auto_buffer_out_a_bits_mask;
  wire [31:0] coupler_from_tile_named_tile_auto_buffer_out_a_bits_data;
  wire  coupler_from_tile_named_tile_auto_buffer_out_a_bits_corrupt;
  wire  coupler_from_tile_named_tile_auto_buffer_out_b_ready;
  wire  coupler_from_tile_named_tile_auto_buffer_out_b_valid;
  wire [1:0] coupler_from_tile_named_tile_auto_buffer_out_b_bits_param;
  wire [31:0] coupler_from_tile_named_tile_auto_buffer_out_b_bits_address;
  wire  coupler_from_tile_named_tile_auto_buffer_out_c_ready; 
  wire  coupler_from_tile_named_tile_auto_buffer_out_c_valid; 
  wire [2:0] coupler_from_tile_named_tile_auto_buffer_out_c_bits_opcode;
  wire [2:0] coupler_from_tile_named_tile_auto_buffer_out_c_bits_param;
  wire [3:0] coupler_from_tile_named_tile_auto_buffer_out_c_bits_size;
  wire [1:0] coupler_from_tile_named_tile_auto_buffer_out_c_bits_source;
  wire [31:0] coupler_from_tile_named_tile_auto_buffer_out_c_bits_address;
  wire [31:0] coupler_from_tile_named_tile_auto_buffer_out_c_bits_data;
  wire  coupler_from_tile_named_tile_auto_buffer_out_c_bits_corrupt;
  wire  coupler_from_tile_named_tile_auto_buffer_out_d_ready;
  wire  coupler_from_tile_named_tile_auto_buffer_out_d_valid; 
  wire [2:0] coupler_from_tile_named_tile_auto_buffer_out_d_bits_opcode;
  wire [1:0] coupler_from_tile_named_tile_auto_buffer_out_d_bits_param;
  wire [3:0] coupler_from_tile_named_tile_auto_buffer_out_d_bits_size;
  wire [1:0] coupler_from_tile_named_tile_auto_buffer_out_d_bits_source; 
  wire [1:0] coupler_from_tile_named_tile_auto_buffer_out_d_bits_sink;
  wire  coupler_from_tile_named_tile_auto_buffer_out_d_bits_denied; 
  wire [31:0] coupler_from_tile_named_tile_auto_buffer_out_d_bits_data; 
  wire  coupler_from_tile_named_tile_auto_buffer_out_d_bits_corrupt;
  wire  coupler_from_tile_named_tile_auto_buffer_out_e_valid; 
  wire [1:0] coupler_from_tile_named_tile_auto_buffer_out_e_bits_sink;
  wire  coupler_from_tile_named_tile_auto_tl_master_xing_in_a_ready;
  wire  coupler_from_tile_named_tile_auto_tl_master_xing_in_a_valid;
  wire [2:0] coupler_from_tile_named_tile_auto_tl_master_xing_in_a_bits_opcode;
  wire [2:0] coupler_from_tile_named_tile_auto_tl_master_xing_in_a_bits_param;
  wire [3:0] coupler_from_tile_named_tile_auto_tl_master_xing_in_a_bits_size;
  wire [1:0] coupler_from_tile_named_tile_auto_tl_master_xing_in_a_bits_source;
  wire [31:0] coupler_from_tile_named_tile_auto_tl_master_xing_in_a_bits_address;
  wire [3:0] coupler_from_tile_named_tile_auto_tl_master_xing_in_a_bits_mask;
  wire [31:0] coupler_from_tile_named_tile_auto_tl_master_xing_in_a_bits_data;
  wire  coupler_from_tile_named_tile_auto_tl_master_xing_in_a_bits_corrupt;
  wire  coupler_from_tile_named_tile_auto_tl_master_xing_in_b_ready;
  wire  coupler_from_tile_named_tile_auto_tl_master_xing_in_b_valid;
  wire [1:0] coupler_from_tile_named_tile_auto_tl_master_xing_in_b_bits_param;
  wire [31:0] coupler_from_tile_named_tile_auto_tl_master_xing_in_b_bits_address;
  wire  coupler_from_tile_named_tile_auto_tl_master_xing_in_c_ready; 
  wire  coupler_from_tile_named_tile_auto_tl_master_xing_in_c_valid;
  wire [2:0] coupler_from_tile_named_tile_auto_tl_master_xing_in_c_bits_opcode;
  wire [2:0] coupler_from_tile_named_tile_auto_tl_master_xing_in_c_bits_param;
  wire [3:0] coupler_from_tile_named_tile_auto_tl_master_xing_in_c_bits_size;
  wire [1:0] coupler_from_tile_named_tile_auto_tl_master_xing_in_c_bits_source;
  wire [31:0] coupler_from_tile_named_tile_auto_tl_master_xing_in_c_bits_address;
  wire [31:0] coupler_from_tile_named_tile_auto_tl_master_xing_in_c_bits_data;
  wire  coupler_from_tile_named_tile_auto_tl_master_xing_in_c_bits_corrupt;
  wire  coupler_from_tile_named_tile_auto_tl_master_xing_in_d_ready;
  wire  coupler_from_tile_named_tile_auto_tl_master_xing_in_d_valid;
  wire [2:0] coupler_from_tile_named_tile_auto_tl_master_xing_in_d_bits_opcode;
  wire [1:0] coupler_from_tile_named_tile_auto_tl_master_xing_in_d_bits_param;
  wire [3:0] coupler_from_tile_named_tile_auto_tl_master_xing_in_d_bits_size;
  wire [1:0] coupler_from_tile_named_tile_auto_tl_master_xing_in_d_bits_source;
  wire [1:0] coupler_from_tile_named_tile_auto_tl_master_xing_in_d_bits_sink;
  wire  coupler_from_tile_named_tile_auto_tl_master_xing_in_d_bits_denied;
  wire [31:0] coupler_from_tile_named_tile_auto_tl_master_xing_in_d_bits_data; 
  wire  coupler_from_tile_named_tile_auto_tl_master_xing_in_d_bits_corrupt;
  wire  coupler_from_tile_named_tile_auto_tl_master_xing_in_e_valid;
  wire [1:0] coupler_from_tile_named_tile_auto_tl_master_xing_in_e_bits_sink; 
  wire  coupler_to_bus_named_periphery_bus_clock;
  wire  coupler_to_bus_named_periphery_bus_reset;
  wire  coupler_to_bus_named_periphery_bus_auto_widget_in_a_ready;
  wire  coupler_to_bus_named_periphery_bus_auto_widget_in_a_valid;
  wire [2:0] coupler_to_bus_named_periphery_bus_auto_widget_in_a_bits_opcode;
  wire [2:0] coupler_to_bus_named_periphery_bus_auto_widget_in_a_bits_param;
  wire [3:0] coupler_to_bus_named_periphery_bus_auto_widget_in_a_bits_size;
  wire [4:0] coupler_to_bus_named_periphery_bus_auto_widget_in_a_bits_source;
  wire [27:0] coupler_to_bus_named_periphery_bus_auto_widget_in_a_bits_address;
  wire [3:0] coupler_to_bus_named_periphery_bus_auto_widget_in_a_bits_mask;
  wire [31:0] coupler_to_bus_named_periphery_bus_auto_widget_in_a_bits_data;
  wire  coupler_to_bus_named_periphery_bus_auto_widget_in_a_bits_corrupt;
  wire  coupler_to_bus_named_periphery_bus_auto_widget_in_d_ready;
  wire  coupler_to_bus_named_periphery_bus_auto_widget_in_d_valid;
  wire [2:0] coupler_to_bus_named_periphery_bus_auto_widget_in_d_bits_opcode; 
  wire [1:0] coupler_to_bus_named_periphery_bus_auto_widget_in_d_bits_param;
  wire [3:0] coupler_to_bus_named_periphery_bus_auto_widget_in_d_bits_size;
  wire [4:0] coupler_to_bus_named_periphery_bus_auto_widget_in_d_bits_source;
  wire  coupler_to_bus_named_periphery_bus_auto_widget_in_d_bits_sink;
  wire  coupler_to_bus_named_periphery_bus_auto_widget_in_d_bits_denied;
  wire [31:0] coupler_to_bus_named_periphery_bus_auto_widget_in_d_bits_data;
  wire  coupler_to_bus_named_periphery_bus_auto_widget_in_d_bits_corrupt;
  wire  coupler_to_bus_named_periphery_bus_auto_bus_xing_out_a_ready;
  wire  coupler_to_bus_named_periphery_bus_auto_bus_xing_out_a_valid;
  wire [2:0] coupler_to_bus_named_periphery_bus_auto_bus_xing_out_a_bits_opcode;
  wire [2:0] coupler_to_bus_named_periphery_bus_auto_bus_xing_out_a_bits_param;
  wire [3:0] coupler_to_bus_named_periphery_bus_auto_bus_xing_out_a_bits_size;
  wire [4:0] coupler_to_bus_named_periphery_bus_auto_bus_xing_out_a_bits_source;
  wire [27:0] coupler_to_bus_named_periphery_bus_auto_bus_xing_out_a_bits_address;
  wire [3:0] coupler_to_bus_named_periphery_bus_auto_bus_xing_out_a_bits_mask;
  wire [31:0] coupler_to_bus_named_periphery_bus_auto_bus_xing_out_a_bits_data;
  wire  coupler_to_bus_named_periphery_bus_auto_bus_xing_out_a_bits_corrupt;
  wire  coupler_to_bus_named_periphery_bus_auto_bus_xing_out_d_ready;
  wire  coupler_to_bus_named_periphery_bus_auto_bus_xing_out_d_valid; 
  wire [2:0] coupler_to_bus_named_periphery_bus_auto_bus_xing_out_d_bits_opcode;
  wire [1:0] coupler_to_bus_named_periphery_bus_auto_bus_xing_out_d_bits_param;
  wire [3:0] coupler_to_bus_named_periphery_bus_auto_bus_xing_out_d_bits_size;
  wire [4:0] coupler_to_bus_named_periphery_bus_auto_bus_xing_out_d_bits_source;
  wire  coupler_to_bus_named_periphery_bus_auto_bus_xing_out_d_bits_sink;
  wire  coupler_to_bus_named_periphery_bus_auto_bus_xing_out_d_bits_denied;
  wire [31:0] coupler_to_bus_named_periphery_bus_auto_bus_xing_out_d_bits_data;
  wire  coupler_to_bus_named_periphery_bus_auto_bus_xing_out_d_bits_corrupt;
  wire  coupler_from_bus_named_front_bus_clock;
  wire  coupler_from_bus_named_front_bus_reset;
  wire  coupler_from_bus_named_front_bus_auto_widget_out_a_ready;
  wire  coupler_from_bus_named_front_bus_auto_widget_out_a_valid;
  wire [2:0] coupler_from_bus_named_front_bus_auto_widget_out_a_bits_opcode;
  wire [2:0] coupler_from_bus_named_front_bus_auto_widget_out_a_bits_param;
  wire [3:0] coupler_from_bus_named_front_bus_auto_widget_out_a_bits_size;
  wire [3:0] coupler_from_bus_named_front_bus_auto_widget_out_a_bits_source;
  wire [31:0] coupler_from_bus_named_front_bus_auto_widget_out_a_bits_address;
  wire [3:0] coupler_from_bus_named_front_bus_auto_widget_out_a_bits_mask;
  wire [31:0] coupler_from_bus_named_front_bus_auto_widget_out_a_bits_data;
  wire  coupler_from_bus_named_front_bus_auto_widget_out_a_bits_corrupt;
  wire  coupler_from_bus_named_front_bus_auto_widget_out_d_ready;
  wire  coupler_from_bus_named_front_bus_auto_widget_out_d_valid;
  wire [2:0] coupler_from_bus_named_front_bus_auto_widget_out_d_bits_opcode;
  wire [1:0] coupler_from_bus_named_front_bus_auto_widget_out_d_bits_param;
  wire [3:0] coupler_from_bus_named_front_bus_auto_widget_out_d_bits_size;
  wire [3:0] coupler_from_bus_named_front_bus_auto_widget_out_d_bits_source;
  wire [1:0] coupler_from_bus_named_front_bus_auto_widget_out_d_bits_sink;
  wire  coupler_from_bus_named_front_bus_auto_widget_out_d_bits_denied;
  wire [31:0] coupler_from_bus_named_front_bus_auto_widget_out_d_bits_data;
  wire  coupler_from_bus_named_front_bus_auto_widget_out_d_bits_corrupt;
  wire  coupler_from_bus_named_front_bus_auto_bus_xing_in_a_ready; 
  wire  coupler_from_bus_named_front_bus_auto_bus_xing_in_a_valid;
  wire [2:0] coupler_from_bus_named_front_bus_auto_bus_xing_in_a_bits_opcode;
  wire [2:0] coupler_from_bus_named_front_bus_auto_bus_xing_in_a_bits_param;
  wire [3:0] coupler_from_bus_named_front_bus_auto_bus_xing_in_a_bits_size;
  wire [3:0] coupler_from_bus_named_front_bus_auto_bus_xing_in_a_bits_source; 
  wire [31:0] coupler_from_bus_named_front_bus_auto_bus_xing_in_a_bits_address; 
  wire [3:0] coupler_from_bus_named_front_bus_auto_bus_xing_in_a_bits_mask;
  wire [31:0] coupler_from_bus_named_front_bus_auto_bus_xing_in_a_bits_data;
  wire  coupler_from_bus_named_front_bus_auto_bus_xing_in_a_bits_corrupt;
  wire  coupler_from_bus_named_front_bus_auto_bus_xing_in_d_ready;
  wire  coupler_from_bus_named_front_bus_auto_bus_xing_in_d_valid;
  wire [2:0] coupler_from_bus_named_front_bus_auto_bus_xing_in_d_bits_opcode;
  wire [1:0] coupler_from_bus_named_front_bus_auto_bus_xing_in_d_bits_param;
  wire [3:0] coupler_from_bus_named_front_bus_auto_bus_xing_in_d_bits_size;
  wire [3:0] coupler_from_bus_named_front_bus_auto_bus_xing_in_d_bits_source;
  wire [1:0] coupler_from_bus_named_front_bus_auto_bus_xing_in_d_bits_sink;
  wire  coupler_from_bus_named_front_bus_auto_bus_xing_in_d_bits_denied;
  wire [31:0] coupler_from_bus_named_front_bus_auto_bus_xing_in_d_bits_data;
  wire  coupler_from_bus_named_front_bus_auto_bus_xing_in_d_bits_corrupt;
  wire  coupler_to_port_named_mmio_port_axi4_clock;
  wire  coupler_to_port_named_mmio_port_axi4_reset;
  wire  coupler_to_port_named_mmio_port_axi4_auto_buffer_in_a_ready;
  wire  coupler_to_port_named_mmio_port_axi4_auto_buffer_in_a_valid;
  wire [2:0] coupler_to_port_named_mmio_port_axi4_auto_buffer_in_a_bits_opcode;
  wire [2:0] coupler_to_port_named_mmio_port_axi4_auto_buffer_in_a_bits_param;
  wire [3:0] coupler_to_port_named_mmio_port_axi4_auto_buffer_in_a_bits_size;
  wire [4:0] coupler_to_port_named_mmio_port_axi4_auto_buffer_in_a_bits_source;
  wire [30:0] coupler_to_port_named_mmio_port_axi4_auto_buffer_in_a_bits_address;
  wire [3:0] coupler_to_port_named_mmio_port_axi4_auto_buffer_in_a_bits_mask;
  wire [31:0] coupler_to_port_named_mmio_port_axi4_auto_buffer_in_a_bits_data;
  wire  coupler_to_port_named_mmio_port_axi4_auto_buffer_in_a_bits_corrupt;
  wire  coupler_to_port_named_mmio_port_axi4_auto_buffer_in_d_ready;
  wire  coupler_to_port_named_mmio_port_axi4_auto_buffer_in_d_valid;
  wire [2:0] coupler_to_port_named_mmio_port_axi4_auto_buffer_in_d_bits_opcode;
  wire [3:0] coupler_to_port_named_mmio_port_axi4_auto_buffer_in_d_bits_size;
  wire [4:0] coupler_to_port_named_mmio_port_axi4_auto_buffer_in_d_bits_source;
  wire  coupler_to_port_named_mmio_port_axi4_auto_buffer_in_d_bits_denied;
  wire [31:0] coupler_to_port_named_mmio_port_axi4_auto_buffer_in_d_bits_data;
  wire  coupler_to_port_named_mmio_port_axi4_auto_buffer_in_d_bits_corrupt;
  wire  coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_ready;
  wire  coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_valid;
  wire [3:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_id;
  wire [30:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_addr;
  wire [7:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_len;
  wire [2:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_size;
  wire [1:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_burst;
  wire  coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_lock;
  wire [3:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_cache;
  wire [2:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_prot;
  wire [3:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_qos; 
  wire  coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_w_ready;
  wire  coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_w_valid;
  wire [31:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_w_bits_data;
  wire [3:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_w_bits_strb; 
  wire  coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_w_bits_last;
  wire  coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_b_ready;
  wire  coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_b_valid;
  wire [3:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_b_bits_id;
  wire [1:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_b_bits_resp;
  wire  coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_ready;
  wire  coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_valid;
  wire [3:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_id;
  wire [30:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_addr;
  wire [7:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_len;
  wire [2:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_size;
  wire [1:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_burst;
  wire  coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_lock;
  wire [3:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_cache;
  wire [2:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_prot;
  wire [3:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_qos;
  wire  coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_r_ready;
  wire  coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_r_valid;
  wire [3:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_r_bits_id;
  wire [31:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_r_bits_data;
  wire [1:0] coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_r_bits_resp;
  wire  coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_r_bits_last;
  TLXbar system_bus_xbar (
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
  SimpleLazyModule coupler_from_tile_named_tile (
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
  SimpleLazyModule_1 coupler_to_bus_named_periphery_bus (
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
  SimpleLazyModule_2 coupler_from_bus_named_front_bus (
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
  SimpleLazyModule_4 coupler_to_port_named_mmio_port_axi4 (
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
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_valid = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_valid;
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_id = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_id;
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_addr = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_addr;
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_len = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_len;
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_size = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_size;
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_burst = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_burst;
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_lock = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_lock;
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_cache = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_cache;
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_prot = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_prot;
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_bits_qos = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_bits_qos;
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_valid = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_w_valid;
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_bits_data = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_w_bits_data;
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_bits_strb = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_w_bits_strb;
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_bits_last = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_w_bits_last;
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_b_ready = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_b_ready;
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_valid = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_valid;
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_id = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_id;
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_addr = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_addr;
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_len = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_len;
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_size = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_size;
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_burst = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_burst;
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_lock = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_lock;
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_cache = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_cache;
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_prot = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_prot;
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_bits_qos = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_bits_qos;
  assign auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_ready = coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_r_ready; 
  assign auto_coupler_from_bus_named_front_bus_bus_xing_in_a_ready = coupler_from_bus_named_front_bus_auto_bus_xing_in_a_ready;
  assign auto_coupler_from_bus_named_front_bus_bus_xing_in_d_valid = coupler_from_bus_named_front_bus_auto_bus_xing_in_d_valid;
  assign auto_coupler_from_bus_named_front_bus_bus_xing_in_d_bits_opcode = coupler_from_bus_named_front_bus_auto_bus_xing_in_d_bits_opcode;
  assign auto_coupler_from_bus_named_front_bus_bus_xing_in_d_bits_param = coupler_from_bus_named_front_bus_auto_bus_xing_in_d_bits_param;
  assign auto_coupler_from_bus_named_front_bus_bus_xing_in_d_bits_size = coupler_from_bus_named_front_bus_auto_bus_xing_in_d_bits_size;
  assign auto_coupler_from_bus_named_front_bus_bus_xing_in_d_bits_source = coupler_from_bus_named_front_bus_auto_bus_xing_in_d_bits_source;
  assign auto_coupler_from_bus_named_front_bus_bus_xing_in_d_bits_sink = coupler_from_bus_named_front_bus_auto_bus_xing_in_d_bits_sink;
  assign auto_coupler_from_bus_named_front_bus_bus_xing_in_d_bits_denied = coupler_from_bus_named_front_bus_auto_bus_xing_in_d_bits_denied;
  assign auto_coupler_from_bus_named_front_bus_bus_xing_in_d_bits_data = coupler_from_bus_named_front_bus_auto_bus_xing_in_d_bits_data;
  assign auto_coupler_from_bus_named_front_bus_bus_xing_in_d_bits_corrupt = coupler_from_bus_named_front_bus_auto_bus_xing_in_d_bits_corrupt;
  assign auto_coupler_to_bus_named_periphery_bus_bus_xing_out_a_valid = coupler_to_bus_named_periphery_bus_auto_bus_xing_out_a_valid;
  assign auto_coupler_to_bus_named_periphery_bus_bus_xing_out_a_bits_opcode = coupler_to_bus_named_periphery_bus_auto_bus_xing_out_a_bits_opcode;
  assign auto_coupler_to_bus_named_periphery_bus_bus_xing_out_a_bits_param = coupler_to_bus_named_periphery_bus_auto_bus_xing_out_a_bits_param;
  assign auto_coupler_to_bus_named_periphery_bus_bus_xing_out_a_bits_size = coupler_to_bus_named_periphery_bus_auto_bus_xing_out_a_bits_size;
  assign auto_coupler_to_bus_named_periphery_bus_bus_xing_out_a_bits_source = coupler_to_bus_named_periphery_bus_auto_bus_xing_out_a_bits_source;
  assign auto_coupler_to_bus_named_periphery_bus_bus_xing_out_a_bits_address = coupler_to_bus_named_periphery_bus_auto_bus_xing_out_a_bits_address;
  assign auto_coupler_to_bus_named_periphery_bus_bus_xing_out_a_bits_mask = coupler_to_bus_named_periphery_bus_auto_bus_xing_out_a_bits_mask;
  assign auto_coupler_to_bus_named_periphery_bus_bus_xing_out_a_bits_data = coupler_to_bus_named_periphery_bus_auto_bus_xing_out_a_bits_data;
  assign auto_coupler_to_bus_named_periphery_bus_bus_xing_out_a_bits_corrupt = coupler_to_bus_named_periphery_bus_auto_bus_xing_out_a_bits_corrupt;
  assign auto_coupler_to_bus_named_periphery_bus_bus_xing_out_d_ready = coupler_to_bus_named_periphery_bus_auto_bus_xing_out_d_ready; 
  assign auto_coupler_from_tile_named_tile_tl_master_xing_in_a_ready = coupler_from_tile_named_tile_auto_tl_master_xing_in_a_ready; 
  assign auto_coupler_from_tile_named_tile_tl_master_xing_in_b_valid = coupler_from_tile_named_tile_auto_tl_master_xing_in_b_valid; 
  assign auto_coupler_from_tile_named_tile_tl_master_xing_in_b_bits_param = coupler_from_tile_named_tile_auto_tl_master_xing_in_b_bits_param; 
  assign auto_coupler_from_tile_named_tile_tl_master_xing_in_b_bits_address = coupler_from_tile_named_tile_auto_tl_master_xing_in_b_bits_address;
  assign auto_coupler_from_tile_named_tile_tl_master_xing_in_c_ready = coupler_from_tile_named_tile_auto_tl_master_xing_in_c_ready;
  assign auto_coupler_from_tile_named_tile_tl_master_xing_in_d_valid = coupler_from_tile_named_tile_auto_tl_master_xing_in_d_valid;
  assign auto_coupler_from_tile_named_tile_tl_master_xing_in_d_bits_opcode = coupler_from_tile_named_tile_auto_tl_master_xing_in_d_bits_opcode; 
  assign auto_coupler_from_tile_named_tile_tl_master_xing_in_d_bits_param = coupler_from_tile_named_tile_auto_tl_master_xing_in_d_bits_param;
  assign auto_coupler_from_tile_named_tile_tl_master_xing_in_d_bits_size = coupler_from_tile_named_tile_auto_tl_master_xing_in_d_bits_size;
  assign auto_coupler_from_tile_named_tile_tl_master_xing_in_d_bits_source = coupler_from_tile_named_tile_auto_tl_master_xing_in_d_bits_source;
  assign auto_coupler_from_tile_named_tile_tl_master_xing_in_d_bits_sink = coupler_from_tile_named_tile_auto_tl_master_xing_in_d_bits_sink;
  assign auto_coupler_from_tile_named_tile_tl_master_xing_in_d_bits_denied = coupler_from_tile_named_tile_auto_tl_master_xing_in_d_bits_denied;
  assign auto_coupler_from_tile_named_tile_tl_master_xing_in_d_bits_data = coupler_from_tile_named_tile_auto_tl_master_xing_in_d_bits_data;
  assign auto_coupler_from_tile_named_tile_tl_master_xing_in_d_bits_corrupt = coupler_from_tile_named_tile_auto_tl_master_xing_in_d_bits_corrupt;
  assign auto_system_bus_xbar_out_a_valid = system_bus_xbar_auto_out_1_a_valid;
  assign auto_system_bus_xbar_out_a_bits_opcode = system_bus_xbar_auto_out_1_a_bits_opcode;
  assign auto_system_bus_xbar_out_a_bits_param = system_bus_xbar_auto_out_1_a_bits_param;
  assign auto_system_bus_xbar_out_a_bits_size = system_bus_xbar_auto_out_1_a_bits_size;
  assign auto_system_bus_xbar_out_a_bits_source = system_bus_xbar_auto_out_1_a_bits_source;
  assign auto_system_bus_xbar_out_a_bits_address = system_bus_xbar_auto_out_1_a_bits_address;
  assign auto_system_bus_xbar_out_a_bits_mask = system_bus_xbar_auto_out_1_a_bits_mask; 
  assign auto_system_bus_xbar_out_a_bits_data = system_bus_xbar_auto_out_1_a_bits_data;
  assign auto_system_bus_xbar_out_a_bits_corrupt = system_bus_xbar_auto_out_1_a_bits_corrupt;
  assign auto_system_bus_xbar_out_b_ready = system_bus_xbar_auto_out_1_b_ready;
  assign auto_system_bus_xbar_out_c_valid = system_bus_xbar_auto_out_1_c_valid;
  assign auto_system_bus_xbar_out_c_bits_opcode = system_bus_xbar_auto_out_1_c_bits_opcode;
  assign auto_system_bus_xbar_out_c_bits_param = system_bus_xbar_auto_out_1_c_bits_param;
  assign auto_system_bus_xbar_out_c_bits_size = system_bus_xbar_auto_out_1_c_bits_size;
  assign auto_system_bus_xbar_out_c_bits_source = system_bus_xbar_auto_out_1_c_bits_source;
  assign auto_system_bus_xbar_out_c_bits_address = system_bus_xbar_auto_out_1_c_bits_address;
  assign auto_system_bus_xbar_out_c_bits_data = system_bus_xbar_auto_out_1_c_bits_data;
  assign auto_system_bus_xbar_out_c_bits_corrupt = system_bus_xbar_auto_out_1_c_bits_corrupt;
  assign auto_system_bus_xbar_out_d_ready = system_bus_xbar_auto_out_1_d_ready;
  assign auto_system_bus_xbar_out_e_valid = system_bus_xbar_auto_out_1_e_valid; 
  assign auto_system_bus_xbar_out_e_bits_sink = system_bus_xbar_auto_out_1_e_bits_sink;
  assign system_bus_xbar_clock = clock; 
  assign system_bus_xbar_reset = reset;
  assign system_bus_xbar_auto_in_1_a_valid = coupler_from_bus_named_front_bus_auto_widget_out_a_valid;
  assign system_bus_xbar_auto_in_1_a_bits_opcode = coupler_from_bus_named_front_bus_auto_widget_out_a_bits_opcode;
  assign system_bus_xbar_auto_in_1_a_bits_param = coupler_from_bus_named_front_bus_auto_widget_out_a_bits_param;
  assign system_bus_xbar_auto_in_1_a_bits_size = coupler_from_bus_named_front_bus_auto_widget_out_a_bits_size;
  assign system_bus_xbar_auto_in_1_a_bits_source = coupler_from_bus_named_front_bus_auto_widget_out_a_bits_source;
  assign system_bus_xbar_auto_in_1_a_bits_address = coupler_from_bus_named_front_bus_auto_widget_out_a_bits_address;
  assign system_bus_xbar_auto_in_1_a_bits_mask = coupler_from_bus_named_front_bus_auto_widget_out_a_bits_mask; 
  assign system_bus_xbar_auto_in_1_a_bits_data = coupler_from_bus_named_front_bus_auto_widget_out_a_bits_data;
  assign system_bus_xbar_auto_in_1_a_bits_corrupt = coupler_from_bus_named_front_bus_auto_widget_out_a_bits_corrupt;
  assign system_bus_xbar_auto_in_1_d_ready = coupler_from_bus_named_front_bus_auto_widget_out_d_ready;
  assign system_bus_xbar_auto_in_0_a_valid = coupler_from_tile_named_tile_auto_buffer_out_a_valid;
  assign system_bus_xbar_auto_in_0_a_bits_opcode = coupler_from_tile_named_tile_auto_buffer_out_a_bits_opcode;
  assign system_bus_xbar_auto_in_0_a_bits_param = coupler_from_tile_named_tile_auto_buffer_out_a_bits_param;
  assign system_bus_xbar_auto_in_0_a_bits_size = coupler_from_tile_named_tile_auto_buffer_out_a_bits_size;
  assign system_bus_xbar_auto_in_0_a_bits_source = coupler_from_tile_named_tile_auto_buffer_out_a_bits_source;
  assign system_bus_xbar_auto_in_0_a_bits_address = coupler_from_tile_named_tile_auto_buffer_out_a_bits_address;
  assign system_bus_xbar_auto_in_0_a_bits_mask = coupler_from_tile_named_tile_auto_buffer_out_a_bits_mask;
  assign system_bus_xbar_auto_in_0_a_bits_data = coupler_from_tile_named_tile_auto_buffer_out_a_bits_data; 
  assign system_bus_xbar_auto_in_0_a_bits_corrupt = coupler_from_tile_named_tile_auto_buffer_out_a_bits_corrupt;
  assign system_bus_xbar_auto_in_0_b_ready = coupler_from_tile_named_tile_auto_buffer_out_b_ready;
  assign system_bus_xbar_auto_in_0_c_valid = coupler_from_tile_named_tile_auto_buffer_out_c_valid;
  assign system_bus_xbar_auto_in_0_c_bits_opcode = coupler_from_tile_named_tile_auto_buffer_out_c_bits_opcode;
  assign system_bus_xbar_auto_in_0_c_bits_param = coupler_from_tile_named_tile_auto_buffer_out_c_bits_param;
  assign system_bus_xbar_auto_in_0_c_bits_size = coupler_from_tile_named_tile_auto_buffer_out_c_bits_size;
  assign system_bus_xbar_auto_in_0_c_bits_source = coupler_from_tile_named_tile_auto_buffer_out_c_bits_source;
  assign system_bus_xbar_auto_in_0_c_bits_address = coupler_from_tile_named_tile_auto_buffer_out_c_bits_address;
  assign system_bus_xbar_auto_in_0_c_bits_data = coupler_from_tile_named_tile_auto_buffer_out_c_bits_data;
  assign system_bus_xbar_auto_in_0_c_bits_corrupt = coupler_from_tile_named_tile_auto_buffer_out_c_bits_corrupt;
  assign system_bus_xbar_auto_in_0_d_ready = coupler_from_tile_named_tile_auto_buffer_out_d_ready;
  assign system_bus_xbar_auto_in_0_e_valid = coupler_from_tile_named_tile_auto_buffer_out_e_valid;
  assign system_bus_xbar_auto_in_0_e_bits_sink = coupler_from_tile_named_tile_auto_buffer_out_e_bits_sink;
  assign system_bus_xbar_auto_out_2_a_ready = coupler_to_port_named_mmio_port_axi4_auto_buffer_in_a_ready;
  assign system_bus_xbar_auto_out_2_d_valid = coupler_to_port_named_mmio_port_axi4_auto_buffer_in_d_valid;
  assign system_bus_xbar_auto_out_2_d_bits_opcode = coupler_to_port_named_mmio_port_axi4_auto_buffer_in_d_bits_opcode;
  assign system_bus_xbar_auto_out_2_d_bits_size = coupler_to_port_named_mmio_port_axi4_auto_buffer_in_d_bits_size;
  assign system_bus_xbar_auto_out_2_d_bits_source = coupler_to_port_named_mmio_port_axi4_auto_buffer_in_d_bits_source;
  assign system_bus_xbar_auto_out_2_d_bits_denied = coupler_to_port_named_mmio_port_axi4_auto_buffer_in_d_bits_denied;
  assign system_bus_xbar_auto_out_2_d_bits_data = coupler_to_port_named_mmio_port_axi4_auto_buffer_in_d_bits_data;
  assign system_bus_xbar_auto_out_2_d_bits_corrupt = coupler_to_port_named_mmio_port_axi4_auto_buffer_in_d_bits_corrupt;
  assign system_bus_xbar_auto_out_1_a_ready = auto_system_bus_xbar_out_a_ready;
  assign system_bus_xbar_auto_out_1_b_valid = auto_system_bus_xbar_out_b_valid;
  assign system_bus_xbar_auto_out_1_b_bits_param = auto_system_bus_xbar_out_b_bits_param;
  assign system_bus_xbar_auto_out_1_b_bits_address = auto_system_bus_xbar_out_b_bits_address;
  assign system_bus_xbar_auto_out_1_c_ready = auto_system_bus_xbar_out_c_ready;
  assign system_bus_xbar_auto_out_1_d_valid = auto_system_bus_xbar_out_d_valid;
  assign system_bus_xbar_auto_out_1_d_bits_opcode = auto_system_bus_xbar_out_d_bits_opcode;
  assign system_bus_xbar_auto_out_1_d_bits_param = auto_system_bus_xbar_out_d_bits_param;
  assign system_bus_xbar_auto_out_1_d_bits_size = auto_system_bus_xbar_out_d_bits_size;
  assign system_bus_xbar_auto_out_1_d_bits_source = auto_system_bus_xbar_out_d_bits_source;
  assign system_bus_xbar_auto_out_1_d_bits_sink = auto_system_bus_xbar_out_d_bits_sink;
  assign system_bus_xbar_auto_out_1_d_bits_denied = auto_system_bus_xbar_out_d_bits_denied;
  assign system_bus_xbar_auto_out_1_d_bits_data = auto_system_bus_xbar_out_d_bits_data;
  assign system_bus_xbar_auto_out_1_d_bits_corrupt = auto_system_bus_xbar_out_d_bits_corrupt;
  assign system_bus_xbar_auto_out_0_a_ready = coupler_to_bus_named_periphery_bus_auto_widget_in_a_ready;
  assign system_bus_xbar_auto_out_0_d_valid = coupler_to_bus_named_periphery_bus_auto_widget_in_d_valid;
  assign system_bus_xbar_auto_out_0_d_bits_opcode = coupler_to_bus_named_periphery_bus_auto_widget_in_d_bits_opcode;
  assign system_bus_xbar_auto_out_0_d_bits_param = coupler_to_bus_named_periphery_bus_auto_widget_in_d_bits_param;
  assign system_bus_xbar_auto_out_0_d_bits_size = coupler_to_bus_named_periphery_bus_auto_widget_in_d_bits_size;
  assign system_bus_xbar_auto_out_0_d_bits_source = coupler_to_bus_named_periphery_bus_auto_widget_in_d_bits_source;
  assign system_bus_xbar_auto_out_0_d_bits_sink = coupler_to_bus_named_periphery_bus_auto_widget_in_d_bits_sink;
  assign system_bus_xbar_auto_out_0_d_bits_denied = coupler_to_bus_named_periphery_bus_auto_widget_in_d_bits_denied;
  assign system_bus_xbar_auto_out_0_d_bits_data = coupler_to_bus_named_periphery_bus_auto_widget_in_d_bits_data; 
  assign system_bus_xbar_auto_out_0_d_bits_corrupt = coupler_to_bus_named_periphery_bus_auto_widget_in_d_bits_corrupt; 
  assign coupler_from_tile_named_tile_clock = clock;
  assign coupler_from_tile_named_tile_reset = reset; 
  assign coupler_from_tile_named_tile_auto_buffer_out_a_ready = system_bus_xbar_auto_in_0_a_ready; 
  assign coupler_from_tile_named_tile_auto_buffer_out_b_valid = system_bus_xbar_auto_in_0_b_valid;
  assign coupler_from_tile_named_tile_auto_buffer_out_b_bits_param = system_bus_xbar_auto_in_0_b_bits_param;
  assign coupler_from_tile_named_tile_auto_buffer_out_b_bits_address = system_bus_xbar_auto_in_0_b_bits_address;
  assign coupler_from_tile_named_tile_auto_buffer_out_c_ready = system_bus_xbar_auto_in_0_c_ready;
  assign coupler_from_tile_named_tile_auto_buffer_out_d_valid = system_bus_xbar_auto_in_0_d_valid; 
  assign coupler_from_tile_named_tile_auto_buffer_out_d_bits_opcode = system_bus_xbar_auto_in_0_d_bits_opcode;
  assign coupler_from_tile_named_tile_auto_buffer_out_d_bits_param = system_bus_xbar_auto_in_0_d_bits_param;
  assign coupler_from_tile_named_tile_auto_buffer_out_d_bits_size = system_bus_xbar_auto_in_0_d_bits_size;
  assign coupler_from_tile_named_tile_auto_buffer_out_d_bits_source = system_bus_xbar_auto_in_0_d_bits_source; 
  assign coupler_from_tile_named_tile_auto_buffer_out_d_bits_sink = system_bus_xbar_auto_in_0_d_bits_sink;
  assign coupler_from_tile_named_tile_auto_buffer_out_d_bits_denied = system_bus_xbar_auto_in_0_d_bits_denied;
  assign coupler_from_tile_named_tile_auto_buffer_out_d_bits_data = system_bus_xbar_auto_in_0_d_bits_data;
  assign coupler_from_tile_named_tile_auto_buffer_out_d_bits_corrupt = system_bus_xbar_auto_in_0_d_bits_corrupt;
  assign coupler_from_tile_named_tile_auto_tl_master_xing_in_a_valid = auto_coupler_from_tile_named_tile_tl_master_xing_in_a_valid;
  assign coupler_from_tile_named_tile_auto_tl_master_xing_in_a_bits_opcode = auto_coupler_from_tile_named_tile_tl_master_xing_in_a_bits_opcode;
  assign coupler_from_tile_named_tile_auto_tl_master_xing_in_a_bits_param = auto_coupler_from_tile_named_tile_tl_master_xing_in_a_bits_param;
  assign coupler_from_tile_named_tile_auto_tl_master_xing_in_a_bits_size = auto_coupler_from_tile_named_tile_tl_master_xing_in_a_bits_size;
  assign coupler_from_tile_named_tile_auto_tl_master_xing_in_a_bits_source = auto_coupler_from_tile_named_tile_tl_master_xing_in_a_bits_source;
  assign coupler_from_tile_named_tile_auto_tl_master_xing_in_a_bits_address = auto_coupler_from_tile_named_tile_tl_master_xing_in_a_bits_address;
  assign coupler_from_tile_named_tile_auto_tl_master_xing_in_a_bits_mask = auto_coupler_from_tile_named_tile_tl_master_xing_in_a_bits_mask;
  assign coupler_from_tile_named_tile_auto_tl_master_xing_in_a_bits_data = auto_coupler_from_tile_named_tile_tl_master_xing_in_a_bits_data;
  assign coupler_from_tile_named_tile_auto_tl_master_xing_in_a_bits_corrupt = auto_coupler_from_tile_named_tile_tl_master_xing_in_a_bits_corrupt;
  assign coupler_from_tile_named_tile_auto_tl_master_xing_in_b_ready = auto_coupler_from_tile_named_tile_tl_master_xing_in_b_ready;
  assign coupler_from_tile_named_tile_auto_tl_master_xing_in_c_valid = auto_coupler_from_tile_named_tile_tl_master_xing_in_c_valid;
  assign coupler_from_tile_named_tile_auto_tl_master_xing_in_c_bits_opcode = auto_coupler_from_tile_named_tile_tl_master_xing_in_c_bits_opcode;
  assign coupler_from_tile_named_tile_auto_tl_master_xing_in_c_bits_param = auto_coupler_from_tile_named_tile_tl_master_xing_in_c_bits_param;
  assign coupler_from_tile_named_tile_auto_tl_master_xing_in_c_bits_size = auto_coupler_from_tile_named_tile_tl_master_xing_in_c_bits_size;
  assign coupler_from_tile_named_tile_auto_tl_master_xing_in_c_bits_source = auto_coupler_from_tile_named_tile_tl_master_xing_in_c_bits_source;
  assign coupler_from_tile_named_tile_auto_tl_master_xing_in_c_bits_address = auto_coupler_from_tile_named_tile_tl_master_xing_in_c_bits_address;
  assign coupler_from_tile_named_tile_auto_tl_master_xing_in_c_bits_data = auto_coupler_from_tile_named_tile_tl_master_xing_in_c_bits_data;
  assign coupler_from_tile_named_tile_auto_tl_master_xing_in_c_bits_corrupt = auto_coupler_from_tile_named_tile_tl_master_xing_in_c_bits_corrupt;
  assign coupler_from_tile_named_tile_auto_tl_master_xing_in_d_ready = auto_coupler_from_tile_named_tile_tl_master_xing_in_d_ready;
  assign coupler_from_tile_named_tile_auto_tl_master_xing_in_e_valid = auto_coupler_from_tile_named_tile_tl_master_xing_in_e_valid;
  assign coupler_from_tile_named_tile_auto_tl_master_xing_in_e_bits_sink = auto_coupler_from_tile_named_tile_tl_master_xing_in_e_bits_sink;
  assign coupler_to_bus_named_periphery_bus_clock = clock;
  assign coupler_to_bus_named_periphery_bus_reset = reset;
  assign coupler_to_bus_named_periphery_bus_auto_widget_in_a_valid = system_bus_xbar_auto_out_0_a_valid;
  assign coupler_to_bus_named_periphery_bus_auto_widget_in_a_bits_opcode = system_bus_xbar_auto_out_0_a_bits_opcode;
  assign coupler_to_bus_named_periphery_bus_auto_widget_in_a_bits_param = system_bus_xbar_auto_out_0_a_bits_param;
  assign coupler_to_bus_named_periphery_bus_auto_widget_in_a_bits_size = system_bus_xbar_auto_out_0_a_bits_size;
  assign coupler_to_bus_named_periphery_bus_auto_widget_in_a_bits_source = system_bus_xbar_auto_out_0_a_bits_source;
  assign coupler_to_bus_named_periphery_bus_auto_widget_in_a_bits_address = system_bus_xbar_auto_out_0_a_bits_address;
  assign coupler_to_bus_named_periphery_bus_auto_widget_in_a_bits_mask = system_bus_xbar_auto_out_0_a_bits_mask;
  assign coupler_to_bus_named_periphery_bus_auto_widget_in_a_bits_data = system_bus_xbar_auto_out_0_a_bits_data;
  assign coupler_to_bus_named_periphery_bus_auto_widget_in_a_bits_corrupt = system_bus_xbar_auto_out_0_a_bits_corrupt;
  assign coupler_to_bus_named_periphery_bus_auto_widget_in_d_ready = system_bus_xbar_auto_out_0_d_ready;
  assign coupler_to_bus_named_periphery_bus_auto_bus_xing_out_a_ready = auto_coupler_to_bus_named_periphery_bus_bus_xing_out_a_ready;
  assign coupler_to_bus_named_periphery_bus_auto_bus_xing_out_d_valid = auto_coupler_to_bus_named_periphery_bus_bus_xing_out_d_valid;
  assign coupler_to_bus_named_periphery_bus_auto_bus_xing_out_d_bits_opcode = auto_coupler_to_bus_named_periphery_bus_bus_xing_out_d_bits_opcode;
  assign coupler_to_bus_named_periphery_bus_auto_bus_xing_out_d_bits_param = auto_coupler_to_bus_named_periphery_bus_bus_xing_out_d_bits_param;
  assign coupler_to_bus_named_periphery_bus_auto_bus_xing_out_d_bits_size = auto_coupler_to_bus_named_periphery_bus_bus_xing_out_d_bits_size;
  assign coupler_to_bus_named_periphery_bus_auto_bus_xing_out_d_bits_source = auto_coupler_to_bus_named_periphery_bus_bus_xing_out_d_bits_source;
  assign coupler_to_bus_named_periphery_bus_auto_bus_xing_out_d_bits_sink = auto_coupler_to_bus_named_periphery_bus_bus_xing_out_d_bits_sink;
  assign coupler_to_bus_named_periphery_bus_auto_bus_xing_out_d_bits_denied = auto_coupler_to_bus_named_periphery_bus_bus_xing_out_d_bits_denied; 
  assign coupler_to_bus_named_periphery_bus_auto_bus_xing_out_d_bits_data = auto_coupler_to_bus_named_periphery_bus_bus_xing_out_d_bits_data; 
  assign coupler_to_bus_named_periphery_bus_auto_bus_xing_out_d_bits_corrupt = auto_coupler_to_bus_named_periphery_bus_bus_xing_out_d_bits_corrupt;
  assign coupler_from_bus_named_front_bus_clock = clock; 
  assign coupler_from_bus_named_front_bus_reset = reset; 
  assign coupler_from_bus_named_front_bus_auto_widget_out_a_ready = system_bus_xbar_auto_in_1_a_ready; 
  assign coupler_from_bus_named_front_bus_auto_widget_out_d_valid = system_bus_xbar_auto_in_1_d_valid; 
  assign coupler_from_bus_named_front_bus_auto_widget_out_d_bits_opcode = system_bus_xbar_auto_in_1_d_bits_opcode;
  assign coupler_from_bus_named_front_bus_auto_widget_out_d_bits_param = system_bus_xbar_auto_in_1_d_bits_param;
  assign coupler_from_bus_named_front_bus_auto_widget_out_d_bits_size = system_bus_xbar_auto_in_1_d_bits_size;
  assign coupler_from_bus_named_front_bus_auto_widget_out_d_bits_source = system_bus_xbar_auto_in_1_d_bits_source;
  assign coupler_from_bus_named_front_bus_auto_widget_out_d_bits_sink = system_bus_xbar_auto_in_1_d_bits_sink;
  assign coupler_from_bus_named_front_bus_auto_widget_out_d_bits_denied = system_bus_xbar_auto_in_1_d_bits_denied;
  assign coupler_from_bus_named_front_bus_auto_widget_out_d_bits_data = system_bus_xbar_auto_in_1_d_bits_data; 
  assign coupler_from_bus_named_front_bus_auto_widget_out_d_bits_corrupt = system_bus_xbar_auto_in_1_d_bits_corrupt;
  assign coupler_from_bus_named_front_bus_auto_bus_xing_in_a_valid = auto_coupler_from_bus_named_front_bus_bus_xing_in_a_valid;
  assign coupler_from_bus_named_front_bus_auto_bus_xing_in_a_bits_opcode = auto_coupler_from_bus_named_front_bus_bus_xing_in_a_bits_opcode;
  assign coupler_from_bus_named_front_bus_auto_bus_xing_in_a_bits_param = auto_coupler_from_bus_named_front_bus_bus_xing_in_a_bits_param;
  assign coupler_from_bus_named_front_bus_auto_bus_xing_in_a_bits_size = auto_coupler_from_bus_named_front_bus_bus_xing_in_a_bits_size;
  assign coupler_from_bus_named_front_bus_auto_bus_xing_in_a_bits_source = auto_coupler_from_bus_named_front_bus_bus_xing_in_a_bits_source; 
  assign coupler_from_bus_named_front_bus_auto_bus_xing_in_a_bits_address = auto_coupler_from_bus_named_front_bus_bus_xing_in_a_bits_address;
  assign coupler_from_bus_named_front_bus_auto_bus_xing_in_a_bits_mask = auto_coupler_from_bus_named_front_bus_bus_xing_in_a_bits_mask; 
  assign coupler_from_bus_named_front_bus_auto_bus_xing_in_a_bits_data = auto_coupler_from_bus_named_front_bus_bus_xing_in_a_bits_data;
  assign coupler_from_bus_named_front_bus_auto_bus_xing_in_a_bits_corrupt = auto_coupler_from_bus_named_front_bus_bus_xing_in_a_bits_corrupt;
  assign coupler_from_bus_named_front_bus_auto_bus_xing_in_d_ready = auto_coupler_from_bus_named_front_bus_bus_xing_in_d_ready; 
  assign coupler_to_port_named_mmio_port_axi4_clock = clock;
  assign coupler_to_port_named_mmio_port_axi4_reset = reset;
  assign coupler_to_port_named_mmio_port_axi4_auto_buffer_in_a_valid = system_bus_xbar_auto_out_2_a_valid;
  assign coupler_to_port_named_mmio_port_axi4_auto_buffer_in_a_bits_opcode = system_bus_xbar_auto_out_2_a_bits_opcode;
  assign coupler_to_port_named_mmio_port_axi4_auto_buffer_in_a_bits_param = system_bus_xbar_auto_out_2_a_bits_param; 
  assign coupler_to_port_named_mmio_port_axi4_auto_buffer_in_a_bits_size = system_bus_xbar_auto_out_2_a_bits_size;
  assign coupler_to_port_named_mmio_port_axi4_auto_buffer_in_a_bits_source = system_bus_xbar_auto_out_2_a_bits_source;
  assign coupler_to_port_named_mmio_port_axi4_auto_buffer_in_a_bits_address = system_bus_xbar_auto_out_2_a_bits_address;
  assign coupler_to_port_named_mmio_port_axi4_auto_buffer_in_a_bits_mask = system_bus_xbar_auto_out_2_a_bits_mask;
  assign coupler_to_port_named_mmio_port_axi4_auto_buffer_in_a_bits_data = system_bus_xbar_auto_out_2_a_bits_data; 
  assign coupler_to_port_named_mmio_port_axi4_auto_buffer_in_a_bits_corrupt = system_bus_xbar_auto_out_2_a_bits_corrupt;
  assign coupler_to_port_named_mmio_port_axi4_auto_buffer_in_d_ready = system_bus_xbar_auto_out_2_d_ready;
  assign coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_aw_ready = auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_aw_ready;
  assign coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_w_ready = auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_w_ready;
  assign coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_b_valid = auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_b_valid;
  assign coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_b_bits_id = auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_b_bits_id;
  assign coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_b_bits_resp = auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_b_bits_resp; 
  assign coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_ar_ready = auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_ar_ready;
  assign coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_r_valid = auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_valid;
  assign coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_r_bits_id = auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_bits_id;
  assign coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_r_bits_data = auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_bits_data;
  assign coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_r_bits_resp = auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_bits_resp;
  assign coupler_to_port_named_mmio_port_axi4_auto_axi4buf_out_r_bits_last = auto_coupler_to_port_named_mmio_port_axi4_axi4buf_out_r_bits_last;
endmodule
`endif // __SystemBus
