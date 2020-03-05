`include "include_module.v"
`ifdef __AMOALU
module AMOALU(
  input  [3:0]  io_mask,
  input  [4:0]  io_cmd,
  input  [31:0] io_lhs,
  input  [31:0] io_rhs,
  output [31:0] io_out
);
  wire  max;
  wire  min;
  wire  add; 
  wire  logic_and;
  wire  logic_xor;
  wire [31:0] adder_out;
  wire  less;
  wire [31:0] minmax;
  wire [31:0] logic_;
  wire [31:0] out;
  wire [31:0] wmask; 

`define MY_ASSIGNMENT
`ifdef MY_ASSIGNMENT
  assign max = (io_cmd == 5'hd) | (io_cmd == 5'hf);

  assign min = (io_cmd == 5'hc) | (io_cmd == 5'he);

  assign add = io_cmd == 5'h8;

  assign logic_and = (io_cmd == 5'ha) | (io_cmd == 5'hb);

  assign logic_xor = (io_cmd == 5'h9) | (io_cmd == 5'ha);

  assign adder_out = io_lhs + io_rhs;

  assign less = (io_lhs[31] == io_rhs[31]) ? (io_lhs < io_rhs) 
		: ((io_cmd & 5'h2) == 5'h0) ? io_lhs[31] : io_rhs[31];

  assign minmax = (less ? min : max) ? io_lhs : io_rhs; 

  assign logic_ = (logic_and ? (io_lhs & io_rhs) : 32'h0) | (logic_xor ? (io_lhs ^ io_rhs) : 32'h0);

  assign out = add ? adder_out 
		: (logic_and | logic_xor) ? logic_ 
		: minmax;

  assign wmask = {(io_mask[3] ? 8'hff : 8'h0)
		,(io_mask[2] ? 8'hff : 8'h0)
		,(io_mask[1] ? 8'hff : 8'h0)
		,(io_mask[0] ? 8'hff : 8'h0)
		};

  assign io_out = (wmask & out) | ((~ wmask) & io_lhs);

`endif // MY_ASSIGNMENT

endmodule
`endif // __AMOALU

