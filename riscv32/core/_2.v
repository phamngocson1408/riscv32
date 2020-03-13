`include "include_module.v"
`ifdef ___2
module _2(
  input         io_in_0_valid,
  input  [31:0] io_in_0_bits_addr,
  input  [5:0]  io_in_0_bits_idx,
  input  [21:0] io_in_0_bits_data,
  input         io_in_2_valid,
  input  [31:0] io_in_2_bits_addr,
  input  [5:0]  io_in_2_bits_idx,
  input  [3:0]  io_in_2_bits_way_en,
  input  [21:0] io_in_2_bits_data,
  input         io_in_3_valid,
  input  [31:0] io_in_3_bits_addr,
  input  [5:0]  io_in_3_bits_idx,
  input  [3:0]  io_in_3_bits_way_en,
  input  [21:0] io_in_3_bits_data,
  output        io_in_4_ready,
  input         io_in_4_valid,
  input  [31:0] io_in_4_bits_addr,
  input  [5:0]  io_in_4_bits_idx,
  input  [3:0]  io_in_4_bits_way_en,
  input  [21:0] io_in_4_bits_data,
  output        io_in_5_ready,
  input         io_in_5_valid,
  input  [31:0] io_in_5_bits_addr,
  input  [5:0]  io_in_5_bits_idx,
  output        io_in_6_ready,
  input         io_in_6_valid,
  input  [31:0] io_in_6_bits_addr,
  input  [5:0]  io_in_6_bits_idx,
  input  [3:0]  io_in_6_bits_way_en,
  input  [21:0] io_in_6_bits_data,
  output        io_in_7_ready,
  input         io_in_7_valid,
  input  [31:0] io_in_7_bits_addr,
  input  [5:0]  io_in_7_bits_idx,
  input  [3:0]  io_in_7_bits_way_en,
  input  [21:0] io_in_7_bits_data,
  output        io_out_valid,
  output        io_out_bits_write,
  output [31:0] io_out_bits_addr,
  output [5:0]  io_out_bits_idx,
  output [3:0]  io_out_bits_way_en,
  output [21:0] io_out_bits_data
);

  assign io_in_4_ready = (io_in_0_valid | io_in_2_valid | io_in_3_valid) == 1'h0;
  assign io_in_5_ready = (io_in_0_valid | io_in_2_valid | io_in_3_valid | io_in_4_valid) == 1'h0;
  assign io_in_6_ready = io_in_5_ready;
  assign io_in_7_ready = (io_in_0_valid | io_in_2_valid | io_in_3_valid | io_in_4_valid | io_in_6_valid) == 1'h0;

  assign io_out_valid = (io_in_7_ready == 1'h0) | io_in_7_valid;
  assign io_out_bits_write = io_in_0_valid | io_in_2_valid | io_in_3_valid | io_in_4_valid;
  assign io_out_bits_addr = io_in_0_valid ? io_in_0_bits_addr 
			: io_in_2_valid ? io_in_2_bits_addr 
			: io_in_3_valid ? io_in_3_bits_addr 
			: io_in_4_valid ? io_in_4_bits_addr 
			: io_in_6_valid ? io_in_6_bits_addr 
			: io_in_7_bits_addr;
  assign io_out_bits_idx = io_in_0_valid ? io_in_0_bits_idx 
			: io_in_2_valid ? io_in_2_bits_idx 
			: io_in_3_valid ? io_in_3_bits_idx 
			: io_in_4_valid ? io_in_4_bits_idx 
			: io_in_6_valid ? io_in_6_bits_idx 
			: io_in_7_bits_idx;
  assign io_out_bits_way_en = io_in_0_valid ? 4'hf 
			: io_in_2_valid ? io_in_2_bits_way_en 
			: io_in_3_valid ? io_in_3_bits_way_en 
			: io_in_4_valid ? io_in_4_bits_way_en 
			: io_in_6_valid ? io_in_6_bits_way_en 
			: io_in_7_bits_way_en;
  assign io_out_bits_data = io_in_0_valid ? io_in_0_bits_data 
			: io_in_2_valid ? io_in_2_bits_data 
			: io_in_3_valid ? io_in_3_bits_data 
			: io_in_4_valid ? io_in_4_bits_data 
			: io_in_6_valid ? io_in_6_bits_data 
			: io_in_7_bits_data;
endmodule
`endif // ___2

