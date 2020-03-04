`include "include_module.v"
`ifdef __FrontBus
module FrontBus(
  input         clock,
  input         reset,
  output        auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_ready,
  input         auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_valid,
  input  [7:0]  auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_id,
  input  [31:0] auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_addr,
  input  [7:0]  auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_len,
  input  [2:0]  auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_size,
  input  [1:0]  auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_burst,
  output        auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_ready,
  input         auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_valid,
  input  [63:0] auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_bits_data,
  input  [7:0]  auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_bits_strb,
  input         auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_bits_last,
  input         auto_coupler_from_port_named_slave_port_axi4_axi4index_in_b_ready,
  output        auto_coupler_from_port_named_slave_port_axi4_axi4index_in_b_valid,
  output [7:0]  auto_coupler_from_port_named_slave_port_axi4_axi4index_in_b_bits_id,
  output [1:0]  auto_coupler_from_port_named_slave_port_axi4_axi4index_in_b_bits_resp,
  output        auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_ready,
  input         auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_valid,
  input  [7:0]  auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_id,
  input  [31:0] auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_addr,
  input  [7:0]  auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_len,
  input  [2:0]  auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_size,
  input  [1:0]  auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_burst,
  input         auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_ready,
  output        auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_valid,
  output [7:0]  auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_bits_id,
  output [63:0] auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_bits_data,
  output [1:0]  auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_bits_resp,
  output        auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_bits_last,
  input         auto_bus_xing_out_a_ready,
  output        auto_bus_xing_out_a_valid,
  output [2:0]  auto_bus_xing_out_a_bits_opcode,
  output [2:0]  auto_bus_xing_out_a_bits_param, 
  output [3:0]  auto_bus_xing_out_a_bits_size,
  output [3:0]  auto_bus_xing_out_a_bits_source,
  output [31:0] auto_bus_xing_out_a_bits_address,
  output [3:0]  auto_bus_xing_out_a_bits_mask, 
  output [31:0] auto_bus_xing_out_a_bits_data,
  output        auto_bus_xing_out_a_bits_corrupt,
  output        auto_bus_xing_out_d_ready,
  input         auto_bus_xing_out_d_valid,
  input  [2:0]  auto_bus_xing_out_d_bits_opcode,
  input  [1:0]  auto_bus_xing_out_d_bits_param,
  input  [3:0]  auto_bus_xing_out_d_bits_size,
  input  [3:0]  auto_bus_xing_out_d_bits_source,
  input  [1:0]  auto_bus_xing_out_d_bits_sink,
  input         auto_bus_xing_out_d_bits_denied,
  input  [31:0] auto_bus_xing_out_d_bits_data,
  input         auto_bus_xing_out_d_bits_corrupt
);
  wire  front_bus_xbar_clock;
  wire  front_bus_xbar_reset;
  wire  front_bus_xbar_auto_in_a_ready;
  wire  front_bus_xbar_auto_in_a_valid;
  wire [2:0] front_bus_xbar_auto_in_a_bits_opcode;
  wire [2:0] front_bus_xbar_auto_in_a_bits_param;
  wire [3:0] front_bus_xbar_auto_in_a_bits_size;
  wire [3:0] front_bus_xbar_auto_in_a_bits_source;
  wire [31:0] front_bus_xbar_auto_in_a_bits_address;
  wire [3:0] front_bus_xbar_auto_in_a_bits_mask;
  wire [31:0] front_bus_xbar_auto_in_a_bits_data;
  wire  front_bus_xbar_auto_in_a_bits_corrupt;
  wire  front_bus_xbar_auto_in_d_ready;
  wire  front_bus_xbar_auto_in_d_valid;
  wire [2:0] front_bus_xbar_auto_in_d_bits_opcode;
  wire [1:0] front_bus_xbar_auto_in_d_bits_param;
  wire [3:0] front_bus_xbar_auto_in_d_bits_size;
  wire [3:0] front_bus_xbar_auto_in_d_bits_source;
  wire [1:0] front_bus_xbar_auto_in_d_bits_sink;
  wire  front_bus_xbar_auto_in_d_bits_denied;
  wire [31:0] front_bus_xbar_auto_in_d_bits_data;
  wire  front_bus_xbar_auto_in_d_bits_corrupt;
  wire  front_bus_xbar_auto_out_a_ready;
  wire  front_bus_xbar_auto_out_a_valid;
  wire [2:0] front_bus_xbar_auto_out_a_bits_opcode;
  wire [2:0] front_bus_xbar_auto_out_a_bits_param;
  wire [3:0] front_bus_xbar_auto_out_a_bits_size;
  wire [3:0] front_bus_xbar_auto_out_a_bits_source; 
  wire [31:0] front_bus_xbar_auto_out_a_bits_address;
  wire [3:0] front_bus_xbar_auto_out_a_bits_mask;
  wire [31:0] front_bus_xbar_auto_out_a_bits_data; 
  wire  front_bus_xbar_auto_out_a_bits_corrupt;
  wire  front_bus_xbar_auto_out_d_ready;
  wire  front_bus_xbar_auto_out_d_valid;
  wire [2:0] front_bus_xbar_auto_out_d_bits_opcode; 
  wire [1:0] front_bus_xbar_auto_out_d_bits_param;
  wire [3:0] front_bus_xbar_auto_out_d_bits_size;
  wire [3:0] front_bus_xbar_auto_out_d_bits_source;
  wire [1:0] front_bus_xbar_auto_out_d_bits_sink;
  wire  front_bus_xbar_auto_out_d_bits_denied;
  wire [31:0] front_bus_xbar_auto_out_d_bits_data;
  wire  front_bus_xbar_auto_out_d_bits_corrupt; 
  wire  buffer_clock;
  wire  buffer_reset;
  wire  buffer_auto_in_a_ready;
  wire  buffer_auto_in_a_valid;
  wire [2:0] buffer_auto_in_a_bits_opcode;
  wire [2:0] buffer_auto_in_a_bits_param;
  wire [3:0] buffer_auto_in_a_bits_size; 
  wire [3:0] buffer_auto_in_a_bits_source;
  wire [31:0] buffer_auto_in_a_bits_address;
  wire [3:0] buffer_auto_in_a_bits_mask;
  wire [31:0] buffer_auto_in_a_bits_data;
  wire  buffer_auto_in_a_bits_corrupt; 
  wire  buffer_auto_in_d_ready;
  wire  buffer_auto_in_d_valid;
  wire [2:0] buffer_auto_in_d_bits_opcode;
  wire [1:0] buffer_auto_in_d_bits_param;
  wire [3:0] buffer_auto_in_d_bits_size; 
  wire [3:0] buffer_auto_in_d_bits_source;
  wire [1:0] buffer_auto_in_d_bits_sink;
  wire  buffer_auto_in_d_bits_denied;
  wire [31:0] buffer_auto_in_d_bits_data;
  wire  buffer_auto_in_d_bits_corrupt;
  wire  buffer_auto_out_a_ready;
  wire  buffer_auto_out_a_valid;
  wire [2:0] buffer_auto_out_a_bits_opcode;
  wire [2:0] buffer_auto_out_a_bits_param; 
  wire [3:0] buffer_auto_out_a_bits_size;
  wire [3:0] buffer_auto_out_a_bits_source;
  wire [31:0] buffer_auto_out_a_bits_address;
  wire [3:0] buffer_auto_out_a_bits_mask; 
  wire [31:0] buffer_auto_out_a_bits_data; 
  wire  buffer_auto_out_a_bits_corrupt; 
  wire  buffer_auto_out_d_ready;
  wire  buffer_auto_out_d_valid;
  wire [2:0] buffer_auto_out_d_bits_opcode; 
  wire [1:0] buffer_auto_out_d_bits_param; 
  wire [3:0] buffer_auto_out_d_bits_size; 
  wire [3:0] buffer_auto_out_d_bits_source; 
  wire [1:0] buffer_auto_out_d_bits_sink;
  wire  buffer_auto_out_d_bits_denied;
  wire [31:0] buffer_auto_out_d_bits_data;
  wire  buffer_auto_out_d_bits_corrupt;
  wire  coupler_from_port_named_slave_port_axi4_clock;
  wire  coupler_from_port_named_slave_port_axi4_reset;
  wire  coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_ready;
  wire  coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_valid;
  wire [7:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_bits_id;
  wire [31:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_bits_addr;
  wire [7:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_bits_len;
  wire [2:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_bits_size;
  wire [1:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_bits_burst;
  wire  coupler_from_port_named_slave_port_axi4_auto_axi4index_in_w_ready;
  wire  coupler_from_port_named_slave_port_axi4_auto_axi4index_in_w_valid;
  wire [63:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_w_bits_data; 
  wire [7:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_w_bits_strb; 
  wire  coupler_from_port_named_slave_port_axi4_auto_axi4index_in_w_bits_last; 
  wire  coupler_from_port_named_slave_port_axi4_auto_axi4index_in_b_ready;
  wire  coupler_from_port_named_slave_port_axi4_auto_axi4index_in_b_valid;
  wire [7:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_b_bits_id;
  wire [1:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_b_bits_resp;
  wire  coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_ready;
  wire  coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_valid;
  wire [7:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_bits_id;
  wire [31:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_bits_addr;
  wire [7:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_bits_len;
  wire [2:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_bits_size; 
  wire [1:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_bits_burst;
  wire  coupler_from_port_named_slave_port_axi4_auto_axi4index_in_r_ready;
  wire  coupler_from_port_named_slave_port_axi4_auto_axi4index_in_r_valid;
  wire [7:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_r_bits_id;
  wire [63:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_r_bits_data; 
  wire [1:0] coupler_from_port_named_slave_port_axi4_auto_axi4index_in_r_bits_resp;
  wire  coupler_from_port_named_slave_port_axi4_auto_axi4index_in_r_bits_last;
  wire  coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_ready; 
  wire  coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_valid; 
  wire [2:0] coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_opcode; 
  wire [2:0] coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_param;
  wire [3:0] coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_size;
  wire [3:0] coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_source; 
  wire [31:0] coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_address; 
  wire [3:0] coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_mask;
  wire [31:0] coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_data;
  wire  coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_corrupt;
  wire  coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_ready;
  wire  coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_valid; 
  wire [2:0] coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_bits_opcode;
  wire [1:0] coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_bits_param;
  wire [3:0] coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_bits_size;
  wire [3:0] coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_bits_source;
  wire [1:0] coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_bits_sink;
  wire  coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_bits_denied;
  wire [31:0] coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_bits_data;
  wire  coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_bits_corrupt;
  TLXbar_3 front_bus_xbar ( 
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
  TLBuffer_4 buffer ( 
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
  SimpleLazyModule_5 coupler_from_port_named_slave_port_axi4 (
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
  assign auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_ready = coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_ready;
  assign auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_ready = coupler_from_port_named_slave_port_axi4_auto_axi4index_in_w_ready;
  assign auto_coupler_from_port_named_slave_port_axi4_axi4index_in_b_valid = coupler_from_port_named_slave_port_axi4_auto_axi4index_in_b_valid;
  assign auto_coupler_from_port_named_slave_port_axi4_axi4index_in_b_bits_id = coupler_from_port_named_slave_port_axi4_auto_axi4index_in_b_bits_id;
  assign auto_coupler_from_port_named_slave_port_axi4_axi4index_in_b_bits_resp = coupler_from_port_named_slave_port_axi4_auto_axi4index_in_b_bits_resp;
  assign auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_ready = coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_ready;
  assign auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_valid = coupler_from_port_named_slave_port_axi4_auto_axi4index_in_r_valid;
  assign auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_bits_id = coupler_from_port_named_slave_port_axi4_auto_axi4index_in_r_bits_id;
  assign auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_bits_data = coupler_from_port_named_slave_port_axi4_auto_axi4index_in_r_bits_data;
  assign auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_bits_resp = coupler_from_port_named_slave_port_axi4_auto_axi4index_in_r_bits_resp;
  assign auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_bits_last = coupler_from_port_named_slave_port_axi4_auto_axi4index_in_r_bits_last;
  assign auto_bus_xing_out_a_valid = buffer_auto_out_a_valid;
  assign auto_bus_xing_out_a_bits_opcode = buffer_auto_out_a_bits_opcode;
  assign auto_bus_xing_out_a_bits_param = buffer_auto_out_a_bits_param;
  assign auto_bus_xing_out_a_bits_size = buffer_auto_out_a_bits_size;
  assign auto_bus_xing_out_a_bits_source = buffer_auto_out_a_bits_source;
  assign auto_bus_xing_out_a_bits_address = buffer_auto_out_a_bits_address;
  assign auto_bus_xing_out_a_bits_mask = buffer_auto_out_a_bits_mask;
  assign auto_bus_xing_out_a_bits_data = buffer_auto_out_a_bits_data;
  assign auto_bus_xing_out_a_bits_corrupt = buffer_auto_out_a_bits_corrupt;
  assign auto_bus_xing_out_d_ready = buffer_auto_out_d_ready;
  assign front_bus_xbar_clock = clock;
  assign front_bus_xbar_reset = reset;
  assign front_bus_xbar_auto_in_a_valid = coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_valid;
  assign front_bus_xbar_auto_in_a_bits_opcode = coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_opcode;
  assign front_bus_xbar_auto_in_a_bits_param = coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_param;
  assign front_bus_xbar_auto_in_a_bits_size = coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_size;
  assign front_bus_xbar_auto_in_a_bits_source = coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_source;
  assign front_bus_xbar_auto_in_a_bits_address = coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_address;
  assign front_bus_xbar_auto_in_a_bits_mask = coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_mask;
  assign front_bus_xbar_auto_in_a_bits_data = coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_data;
  assign front_bus_xbar_auto_in_a_bits_corrupt = coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_bits_corrupt;
  assign front_bus_xbar_auto_in_d_ready = coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_ready;
  assign front_bus_xbar_auto_out_a_ready = buffer_auto_in_a_ready;
  assign front_bus_xbar_auto_out_d_valid = buffer_auto_in_d_valid;
  assign front_bus_xbar_auto_out_d_bits_opcode = buffer_auto_in_d_bits_opcode;
  assign front_bus_xbar_auto_out_d_bits_param = buffer_auto_in_d_bits_param;
  assign front_bus_xbar_auto_out_d_bits_size = buffer_auto_in_d_bits_size;
  assign front_bus_xbar_auto_out_d_bits_source = buffer_auto_in_d_bits_source;
  assign front_bus_xbar_auto_out_d_bits_sink = buffer_auto_in_d_bits_sink;
  assign front_bus_xbar_auto_out_d_bits_denied = buffer_auto_in_d_bits_denied;
  assign front_bus_xbar_auto_out_d_bits_data = buffer_auto_in_d_bits_data;
  assign front_bus_xbar_auto_out_d_bits_corrupt = buffer_auto_in_d_bits_corrupt;
  assign buffer_clock = clock;
  assign buffer_reset = reset;
  assign buffer_auto_in_a_valid = front_bus_xbar_auto_out_a_valid;
  assign buffer_auto_in_a_bits_opcode = front_bus_xbar_auto_out_a_bits_opcode;
  assign buffer_auto_in_a_bits_param = front_bus_xbar_auto_out_a_bits_param;
  assign buffer_auto_in_a_bits_size = front_bus_xbar_auto_out_a_bits_size;
  assign buffer_auto_in_a_bits_source = front_bus_xbar_auto_out_a_bits_source;
  assign buffer_auto_in_a_bits_address = front_bus_xbar_auto_out_a_bits_address;
  assign buffer_auto_in_a_bits_mask = front_bus_xbar_auto_out_a_bits_mask;
  assign buffer_auto_in_a_bits_data = front_bus_xbar_auto_out_a_bits_data;
  assign buffer_auto_in_a_bits_corrupt = front_bus_xbar_auto_out_a_bits_corrupt;
  assign buffer_auto_in_d_ready = front_bus_xbar_auto_out_d_ready;
  assign buffer_auto_out_a_ready = auto_bus_xing_out_a_ready; 
  assign buffer_auto_out_d_valid = auto_bus_xing_out_d_valid;
  assign buffer_auto_out_d_bits_opcode = auto_bus_xing_out_d_bits_opcode;
  assign buffer_auto_out_d_bits_param = auto_bus_xing_out_d_bits_param;
  assign buffer_auto_out_d_bits_size = auto_bus_xing_out_d_bits_size;
  assign buffer_auto_out_d_bits_source = auto_bus_xing_out_d_bits_source;
  assign buffer_auto_out_d_bits_sink = auto_bus_xing_out_d_bits_sink;
  assign buffer_auto_out_d_bits_denied = auto_bus_xing_out_d_bits_denied;
  assign buffer_auto_out_d_bits_data = auto_bus_xing_out_d_bits_data;
  assign buffer_auto_out_d_bits_corrupt = auto_bus_xing_out_d_bits_corrupt;
  assign coupler_from_port_named_slave_port_axi4_clock = clock; 
  assign coupler_from_port_named_slave_port_axi4_reset = reset; 
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_valid = auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_valid;
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_bits_id = auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_id;
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_bits_addr = auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_addr;
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_bits_len = auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_len; 
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_bits_size = auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_size;
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_aw_bits_burst = auto_coupler_from_port_named_slave_port_axi4_axi4index_in_aw_bits_burst;
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_w_valid = auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_valid; 
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_w_bits_data = auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_bits_data;
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_w_bits_strb = auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_bits_strb;
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_w_bits_last = auto_coupler_from_port_named_slave_port_axi4_axi4index_in_w_bits_last;
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_b_ready = auto_coupler_from_port_named_slave_port_axi4_axi4index_in_b_ready; 
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_valid = auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_valid;
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_bits_id = auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_id;
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_bits_addr = auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_addr;
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_bits_len = auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_len;
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_bits_size = auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_size;
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_ar_bits_burst = auto_coupler_from_port_named_slave_port_axi4_axi4index_in_ar_bits_burst;
  assign coupler_from_port_named_slave_port_axi4_auto_axi4index_in_r_ready = auto_coupler_from_port_named_slave_port_axi4_axi4index_in_r_ready;
  assign coupler_from_port_named_slave_port_axi4_auto_buffer_out_a_ready = front_bus_xbar_auto_in_a_ready;
  assign coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_valid = front_bus_xbar_auto_in_d_valid;
  assign coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_bits_opcode = front_bus_xbar_auto_in_d_bits_opcode;
  assign coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_bits_param = front_bus_xbar_auto_in_d_bits_param;
  assign coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_bits_size = front_bus_xbar_auto_in_d_bits_size;
  assign coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_bits_source = front_bus_xbar_auto_in_d_bits_source;
  assign coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_bits_sink = front_bus_xbar_auto_in_d_bits_sink;
  assign coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_bits_denied = front_bus_xbar_auto_in_d_bits_denied;
  assign coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_bits_data = front_bus_xbar_auto_in_d_bits_data;
  assign coupler_from_port_named_slave_port_axi4_auto_buffer_out_d_bits_corrupt = front_bus_xbar_auto_in_d_bits_corrupt;
endmodule
`endif // __FrontBus

