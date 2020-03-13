`include "include_module.v"
`ifdef ___3
module _3(
  input         io_in_0_valid,
  input  [11:0] io_in_0_bits_addr,
  input         io_in_0_bits_write,
  input  [31:0] io_in_0_bits_wdata,
  input  [3:0]  io_in_0_bits_eccMask,
  input  [3:0]  io_in_0_bits_way_en,
  output        io_in_1_ready,
  input         io_in_1_valid,
  input  [11:0] io_in_1_bits_addr,
  input         io_in_1_bits_write,
  input  [31:0] io_in_1_bits_wdata,
  input  [3:0]  io_in_1_bits_eccMask,
  input  [3:0]  io_in_1_bits_way_en,
  output        io_in_2_ready,
  input         io_in_2_valid,
  input  [11:0] io_in_2_bits_addr,
  input  [31:0] io_in_2_bits_wdata,
  input  [3:0]  io_in_2_bits_eccMask,
  output        io_in_3_ready,
  input         io_in_3_valid,
  input  [11:0] io_in_3_bits_addr,
  input  [31:0] io_in_3_bits_wdata,
  input  [3:0]  io_in_3_bits_eccMask,
  output        io_out_valid,
  output [11:0] io_out_bits_addr,
  output        io_out_bits_write,
  output [31:0] io_out_bits_wdata,
  output [3:0]  io_out_bits_eccMask,
  output [3:0]  io_out_bits_way_en
);

  assign io_in_1_ready = io_in_0_valid == 1'h0;
  assign io_in_2_ready = (io_in_0_valid | io_in_1_valid) == 1'h0; 
  assign io_in_3_ready = (io_in_0_valid | io_in_1_valid | io_in_2_valid) == 1'h0;
  assign io_out_valid = (((io_in_0_valid | io_in_1_valid | io_in_2_valid) == 1'h0) == 1'h0) | io_in_3_valid;
  assign io_out_bits_addr = io_in_0_valid ? io_in_0_bits_addr 
			: io_in_1_valid ? io_in_1_bits_addr 
			: io_in_2_valid ? io_in_2_bits_addr 
			: io_in_3_bits_addr;
  assign io_out_bits_write = io_in_0_valid ? io_in_0_bits_write : io_in_1_valid & io_in_1_bits_write;
  assign io_out_bits_wdata = io_in_0_valid ? io_in_0_bits_wdata 
			: io_in_1_valid ? io_in_1_bits_wdata 
			: io_in_2_valid ? io_in_2_bits_wdata 
			: io_in_3_bits_wdata;
  assign io_out_bits_eccMask = io_in_0_valid ? io_in_0_bits_eccMask 
			: io_in_1_valid ? 4'hf 
			: io_in_2_valid ? io_in_2_bits_eccMask 
			: io_in_3_bits_eccMask;
  assign io_out_bits_way_en = io_in_0_valid ? io_in_0_bits_way_en 
			: io_in_1_valid ? io_in_1_bits_way_en 
			: 4'hf;
endmodule
`endif // ___3

