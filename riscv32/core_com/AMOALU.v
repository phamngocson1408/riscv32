`include "include_module.v"
`ifdef __AMOALU
module AMOALU( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123227.2]
  input  [3:0]  io_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123230.4]
  input  [4:0]  io_cmd, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123230.4]
  input  [31:0] io_lhs, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123230.4]
  input  [31:0] io_rhs, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123230.4]
  output [31:0] io_out // @[:freechips.rocketchip.system.DefaultRV32Config.fir@123230.4]
);
  wire  _T; // @[AMOALU.scala 64:20:freechips.rocketchip.system.DefaultRV32Config.fir@123235.4]
  wire  _T_1; // @[AMOALU.scala 64:43:freechips.rocketchip.system.DefaultRV32Config.fir@123236.4]
  wire  max; // @[AMOALU.scala 64:33:freechips.rocketchip.system.DefaultRV32Config.fir@123237.4]
  wire  _T_2; // @[AMOALU.scala 65:20:freechips.rocketchip.system.DefaultRV32Config.fir@123238.4]
  wire  _T_3; // @[AMOALU.scala 65:43:freechips.rocketchip.system.DefaultRV32Config.fir@123239.4]
  wire  min; // @[AMOALU.scala 65:33:freechips.rocketchip.system.DefaultRV32Config.fir@123240.4]
  wire  add; // @[AMOALU.scala 66:20:freechips.rocketchip.system.DefaultRV32Config.fir@123241.4]
  wire  _T_4; // @[AMOALU.scala 67:26:freechips.rocketchip.system.DefaultRV32Config.fir@123242.4]
  wire  _T_5; // @[AMOALU.scala 67:48:freechips.rocketchip.system.DefaultRV32Config.fir@123243.4]
  wire  logic_and; // @[AMOALU.scala 67:38:freechips.rocketchip.system.DefaultRV32Config.fir@123244.4]
  wire  _T_6; // @[AMOALU.scala 68:26:freechips.rocketchip.system.DefaultRV32Config.fir@123245.4]
  wire  logic_xor; // @[AMOALU.scala 68:39:freechips.rocketchip.system.DefaultRV32Config.fir@123247.4]
  wire [31:0] adder_out; // @[AMOALU.scala 73:21:freechips.rocketchip.system.DefaultRV32Config.fir@123252.4]
  wire  _T_12; // @[AMOALU.scala 91:49:freechips.rocketchip.system.DefaultRV32Config.fir@123253.4]
  wire [4:0] _T_14; // @[AMOALU.scala 86:17:freechips.rocketchip.system.DefaultRV32Config.fir@123255.4]
  wire  _T_16; // @[AMOALU.scala 86:25:freechips.rocketchip.system.DefaultRV32Config.fir@123257.4]
  wire  _T_17; // @[AMOALU.scala 88:12:freechips.rocketchip.system.DefaultRV32Config.fir@123258.4]
  wire  _T_18; // @[AMOALU.scala 88:23:freechips.rocketchip.system.DefaultRV32Config.fir@123259.4]
  wire  _T_19; // @[AMOALU.scala 88:18:freechips.rocketchip.system.DefaultRV32Config.fir@123260.4]
  wire  _T_22; // @[AMOALU.scala 79:35:freechips.rocketchip.system.DefaultRV32Config.fir@123263.4]
  wire  _T_25; // @[AMOALU.scala 88:58:freechips.rocketchip.system.DefaultRV32Config.fir@123266.4]
  wire  less; // @[AMOALU.scala 88:10:freechips.rocketchip.system.DefaultRV32Config.fir@123267.4]
  wire  _T_26; // @[AMOALU.scala 94:23:freechips.rocketchip.system.DefaultRV32Config.fir@123268.4]
  wire [31:0] minmax; // @[AMOALU.scala 94:19:freechips.rocketchip.system.DefaultRV32Config.fir@123269.4]
  wire [31:0] _T_27; // @[AMOALU.scala 96:27:freechips.rocketchip.system.DefaultRV32Config.fir@123270.4]
  wire [31:0] _T_28; // @[AMOALU.scala 96:8:freechips.rocketchip.system.DefaultRV32Config.fir@123271.4]
  wire [31:0] _T_29; // @[AMOALU.scala 97:27:freechips.rocketchip.system.DefaultRV32Config.fir@123272.4]
  wire [31:0] _T_30; // @[AMOALU.scala 97:8:freechips.rocketchip.system.DefaultRV32Config.fir@123273.4]
  wire [31:0] logic_; // @[AMOALU.scala 96:42:freechips.rocketchip.system.DefaultRV32Config.fir@123274.4]
  wire  _T_31; // @[AMOALU.scala 100:19:freechips.rocketchip.system.DefaultRV32Config.fir@123275.4]
  wire [31:0] _T_32; // @[AMOALU.scala 100:8:freechips.rocketchip.system.DefaultRV32Config.fir@123276.4]
  wire [31:0] out; // @[AMOALU.scala 99:8:freechips.rocketchip.system.DefaultRV32Config.fir@123277.4]
  wire  _T_33; // @[Bitwise.scala 26:51:freechips.rocketchip.system.DefaultRV32Config.fir@123278.4]
  wire  _T_34; // @[Bitwise.scala 26:51:freechips.rocketchip.system.DefaultRV32Config.fir@123279.4]
  wire  _T_36; // @[Bitwise.scala 26:51:freechips.rocketchip.system.DefaultRV32Config.fir@123281.4]
  wire [7:0] _T_38; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@123283.4]
  wire [7:0] _T_40; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@123285.4]
  wire [7:0] _T_42; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@123287.4]
  wire [7:0] _T_44; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@123289.4]
  wire [31:0] wmask; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@123292.4]
  wire [31:0] _T_47; // @[AMOALU.scala 104:19:freechips.rocketchip.system.DefaultRV32Config.fir@123293.4]
  wire [31:0] _T_48; // @[AMOALU.scala 104:27:freechips.rocketchip.system.DefaultRV32Config.fir@123294.4]
  wire [31:0] _T_49; // @[AMOALU.scala 104:34:freechips.rocketchip.system.DefaultRV32Config.fir@123295.4]

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

`ifndef MY_ASSIGNMENT
  assign max = _T | _T_1; // @[AMOALU.scala 64:33:freechips.rocketchip.system.DefaultRV32Config.fir@123237.4]

  assign min = _T_2 | _T_3; // @[AMOALU.scala 65:33:freechips.rocketchip.system.DefaultRV32Config.fir@123240.4]

  assign add = io_cmd == 5'h8; // @[AMOALU.scala 66:20:freechips.rocketchip.system.DefaultRV32Config.fir@123241.4]

  assign logic_and = _T_4 | _T_5; // @[AMOALU.scala 67:38:freechips.rocketchip.system.DefaultRV32Config.fir@123244.4]

  assign logic_xor = _T_6 | _T_4; // @[AMOALU.scala 68:39:freechips.rocketchip.system.DefaultRV32Config.fir@123247.4]

  assign adder_out = io_lhs + io_rhs; // @[AMOALU.scala 73:21:freechips.rocketchip.system.DefaultRV32Config.fir@123252.4]

  assign less = _T_19 ? _T_22 : _T_25; // @[AMOALU.scala 88:10:freechips.rocketchip.system.DefaultRV32Config.fir@123267.4]

  assign minmax = _T_26 ? io_lhs : io_rhs; // @[AMOALU.scala 94:19:freechips.rocketchip.system.DefaultRV32Config.fir@123269.4]

  assign logic_ = _T_28 | _T_30; // @[AMOALU.scala 96:42:freechips.rocketchip.system.DefaultRV32Config.fir@123274.4]

  assign out = add ? adder_out : _T_32; // @[AMOALU.scala 99:8:freechips.rocketchip.system.DefaultRV32Config.fir@123277.4]

  assign wmask = {_T_44,_T_42,_T_40,_T_38}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@123292.4]

  assign io_out = _T_47 | _T_49; // @[AMOALU.scala 104:10:freechips.rocketchip.system.DefaultRV32Config.fir@123297.4]

`endif // MY_ASSIGNMENT

  assign _T = io_cmd == 5'hd; // @[AMOALU.scala 64:20:freechips.rocketchip.system.DefaultRV32Config.fir@123235.4]
  assign _T_1 = io_cmd == 5'hf; // @[AMOALU.scala 64:43:freechips.rocketchip.system.DefaultRV32Config.fir@123236.4]
  assign _T_2 = io_cmd == 5'hc; // @[AMOALU.scala 65:20:freechips.rocketchip.system.DefaultRV32Config.fir@123238.4]
  assign _T_3 = io_cmd == 5'he; // @[AMOALU.scala 65:43:freechips.rocketchip.system.DefaultRV32Config.fir@123239.4]
  assign _T_4 = io_cmd == 5'ha; // @[AMOALU.scala 67:26:freechips.rocketchip.system.DefaultRV32Config.fir@123242.4]
  assign _T_5 = io_cmd == 5'hb; // @[AMOALU.scala 67:48:freechips.rocketchip.system.DefaultRV32Config.fir@123243.4]
  assign _T_6 = io_cmd == 5'h9; // @[AMOALU.scala 68:26:freechips.rocketchip.system.DefaultRV32Config.fir@123245.4]
  assign _T_12 = io_mask[2]; // @[AMOALU.scala 91:49:freechips.rocketchip.system.DefaultRV32Config.fir@123253.4]
  assign _T_14 = io_cmd & 5'h2; // @[AMOALU.scala 86:17:freechips.rocketchip.system.DefaultRV32Config.fir@123255.4]
  assign _T_16 = _T_14 == 5'h0; // @[AMOALU.scala 86:25:freechips.rocketchip.system.DefaultRV32Config.fir@123257.4]
  assign _T_17 = io_lhs[31]; // @[AMOALU.scala 88:12:freechips.rocketchip.system.DefaultRV32Config.fir@123258.4]
  assign _T_18 = io_rhs[31]; // @[AMOALU.scala 88:23:freechips.rocketchip.system.DefaultRV32Config.fir@123259.4]
  assign _T_19 = _T_17 == _T_18; // @[AMOALU.scala 88:18:freechips.rocketchip.system.DefaultRV32Config.fir@123260.4]
  assign _T_22 = io_lhs < io_rhs; // @[AMOALU.scala 79:35:freechips.rocketchip.system.DefaultRV32Config.fir@123263.4]
  assign _T_25 = _T_16 ? _T_17 : _T_18; // @[AMOALU.scala 88:58:freechips.rocketchip.system.DefaultRV32Config.fir@123266.4]
  assign _T_26 = less ? min : max; // @[AMOALU.scala 94:23:freechips.rocketchip.system.DefaultRV32Config.fir@123268.4]
  assign _T_27 = io_lhs & io_rhs; // @[AMOALU.scala 96:27:freechips.rocketchip.system.DefaultRV32Config.fir@123270.4]
  assign _T_28 = logic_and ? _T_27 : 32'h0; // @[AMOALU.scala 96:8:freechips.rocketchip.system.DefaultRV32Config.fir@123271.4]
  assign _T_29 = io_lhs ^ io_rhs; // @[AMOALU.scala 97:27:freechips.rocketchip.system.DefaultRV32Config.fir@123272.4]
  assign _T_30 = logic_xor ? _T_29 : 32'h0; // @[AMOALU.scala 97:8:freechips.rocketchip.system.DefaultRV32Config.fir@123273.4]
  assign _T_31 = logic_and | logic_xor; // @[AMOALU.scala 100:19:freechips.rocketchip.system.DefaultRV32Config.fir@123275.4]
  assign _T_32 = _T_31 ? logic_ : minmax; // @[AMOALU.scala 100:8:freechips.rocketchip.system.DefaultRV32Config.fir@123276.4]
  assign _T_33 = io_mask[0]; // @[Bitwise.scala 26:51:freechips.rocketchip.system.DefaultRV32Config.fir@123278.4]
  assign _T_34 = io_mask[1]; // @[Bitwise.scala 26:51:freechips.rocketchip.system.DefaultRV32Config.fir@123279.4]
  assign _T_36 = io_mask[3]; // @[Bitwise.scala 26:51:freechips.rocketchip.system.DefaultRV32Config.fir@123281.4]
  assign _T_38 = _T_33 ? 8'hff : 8'h0; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@123283.4]
  assign _T_40 = _T_34 ? 8'hff : 8'h0; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@123285.4]
  assign _T_42 = _T_12 ? 8'hff : 8'h0; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@123287.4]
  assign _T_44 = _T_36 ? 8'hff : 8'h0; // @[Bitwise.scala 71:12:freechips.rocketchip.system.DefaultRV32Config.fir@123289.4]
  assign _T_47 = wmask & out; // @[AMOALU.scala 104:19:freechips.rocketchip.system.DefaultRV32Config.fir@123293.4]
  assign _T_48 = ~ wmask; // @[AMOALU.scala 104:27:freechips.rocketchip.system.DefaultRV32Config.fir@123294.4]
  assign _T_49 = _T_48 & io_lhs; // @[AMOALU.scala 104:34:freechips.rocketchip.system.DefaultRV32Config.fir@123295.4]
endmodule
`endif // __AMOALU

