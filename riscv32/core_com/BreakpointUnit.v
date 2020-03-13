`include "include_module.v"
`ifdef __BreakpointUnit
module BreakpointUnit(
  input         io_status_debug,
  input  [1:0]  io_status_prv,
  input         io_bp_0_control_action,
  input  [1:0]  io_bp_0_control_tmatch,
  input         io_bp_0_control_m,
  input         io_bp_0_control_s,
  input         io_bp_0_control_u,
  input         io_bp_0_control_x,
  input         io_bp_0_control_w,
  input         io_bp_0_control_r,
  input  [31:0] io_bp_0_address,
  input  [31:0] io_pc,
  input  [31:0] io_ea,
  output        io_xcpt_if,
  output        io_xcpt_ld,
  output        io_xcpt_st,
  output        io_debug_if,
  output        io_debug_ld,
  output        io_debug_st
);
  wire  _T; // @[Breakpoint.scala 30:35:freechips.rocketchip.system.DefaultRV32Config.fir@154841.4]
  wire [3:0] _T_3; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@154844.4]
  wire [3:0] _T_4; // @[Breakpoint.scala 30:68:freechips.rocketchip.system.DefaultRV32Config.fir@154845.4]
  wire  _T_5; // @[Breakpoint.scala 30:68:freechips.rocketchip.system.DefaultRV32Config.fir@154846.4]
  wire  _T_6; // @[Breakpoint.scala 30:50:freechips.rocketchip.system.DefaultRV32Config.fir@154847.4]
  wire  _T_7; // @[Breakpoint.scala 81:16:freechips.rocketchip.system.DefaultRV32Config.fir@154848.4]
  wire  _T_8; // @[Breakpoint.scala 47:23:freechips.rocketchip.system.DefaultRV32Config.fir@154849.4]
  wire  _T_9; // @[Breakpoint.scala 44:8:freechips.rocketchip.system.DefaultRV32Config.fir@154850.4]
  wire  _T_10; // @[Breakpoint.scala 44:36:freechips.rocketchip.system.DefaultRV32Config.fir@154851.4]
  wire  _T_11; // @[Breakpoint.scala 44:20:freechips.rocketchip.system.DefaultRV32Config.fir@154852.4]
  wire [31:0] _T_12; // @[Breakpoint.scala 41:6:freechips.rocketchip.system.DefaultRV32Config.fir@154853.4]
  wire  _T_14; // @[Breakpoint.scala 38:83:freechips.rocketchip.system.DefaultRV32Config.fir@154855.4]
  wire  _T_15; // @[Breakpoint.scala 38:73:freechips.rocketchip.system.DefaultRV32Config.fir@154856.4]
  wire  _T_16; // @[Breakpoint.scala 38:83:freechips.rocketchip.system.DefaultRV32Config.fir@154857.4]
  wire  _T_17; // @[Breakpoint.scala 38:73:freechips.rocketchip.system.DefaultRV32Config.fir@154858.4]
  wire  _T_18; // @[Breakpoint.scala 38:83:freechips.rocketchip.system.DefaultRV32Config.fir@154859.4]
  wire  _T_19; // @[Breakpoint.scala 38:73:freechips.rocketchip.system.DefaultRV32Config.fir@154860.4]
  wire [3:0] _T_22; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@154863.4]
  wire [31:0] _GEN_10; // @[Breakpoint.scala 41:9:freechips.rocketchip.system.DefaultRV32Config.fir@154864.4]
  wire [31:0] _T_23; // @[Breakpoint.scala 41:9:freechips.rocketchip.system.DefaultRV32Config.fir@154864.4]
  wire [31:0] _T_24; // @[Breakpoint.scala 41:24:freechips.rocketchip.system.DefaultRV32Config.fir@154865.4]
  wire [31:0] _T_35; // @[Breakpoint.scala 41:33:freechips.rocketchip.system.DefaultRV32Config.fir@154876.4]
  wire  _T_36; // @[Breakpoint.scala 41:19:freechips.rocketchip.system.DefaultRV32Config.fir@154877.4]
  wire  _T_37; // @[Breakpoint.scala 47:8:freechips.rocketchip.system.DefaultRV32Config.fir@154878.4]
  wire  _T_38; // @[Breakpoint.scala 81:32:freechips.rocketchip.system.DefaultRV32Config.fir@154879.4]
  wire  _T_39; // @[Breakpoint.scala 82:16:freechips.rocketchip.system.DefaultRV32Config.fir@154880.4]
  wire  _T_70; // @[Breakpoint.scala 82:32:freechips.rocketchip.system.DefaultRV32Config.fir@154911.4]
  wire  _T_71; // @[Breakpoint.scala 83:16:freechips.rocketchip.system.DefaultRV32Config.fir@154912.4]
  wire  _T_73; // @[Breakpoint.scala 44:8:freechips.rocketchip.system.DefaultRV32Config.fir@154914.4]
  wire  _T_75; // @[Breakpoint.scala 44:20:freechips.rocketchip.system.DefaultRV32Config.fir@154916.4]
  wire [31:0] _T_76; // @[Breakpoint.scala 41:6:freechips.rocketchip.system.DefaultRV32Config.fir@154917.4]
  wire [31:0] _T_87; // @[Breakpoint.scala 41:9:freechips.rocketchip.system.DefaultRV32Config.fir@154928.4]
  wire  _T_100; // @[Breakpoint.scala 41:19:freechips.rocketchip.system.DefaultRV32Config.fir@154941.4]
  wire  _T_101; // @[Breakpoint.scala 47:8:freechips.rocketchip.system.DefaultRV32Config.fir@154942.4]
  wire  _T_102; // @[Breakpoint.scala 83:32:freechips.rocketchip.system.DefaultRV32Config.fir@154943.4]
  wire  _T_106; // @[Breakpoint.scala 92:51:freechips.rocketchip.system.DefaultRV32Config.fir@154952.6]

`define MY_ASSIGNMENT
`ifdef MY_ASSIGNMENT
  assign _T_4 = {io_bp_0_control_m,1'h0,io_bp_0_control_s,io_bp_0_control_u} >> io_status_prv;
  assign _T_6 = !io_status_debug & _T_4[0];
  assign _GEN_10 = {{28'd0}
		,(io_bp_0_control_tmatch[0] & io_bp_0_address[0] & io_bp_0_address[1] & io_bp_0_address[2])
		,(io_bp_0_control_tmatch[0] & io_bp_0_address[0] & io_bp_0_address[1])
		,(io_bp_0_control_tmatch[0] & io_bp_0_address[0])
		,io_bp_0_control_tmatch[0]
		}; 
  assign _T_35 = (~ io_bp_0_address) | _GEN_10; 
  assign _T_101 = io_bp_0_control_tmatch[1] ? ((io_pc >= io_bp_0_address) ^ io_bp_0_control_tmatch[0]) 
					: (((~ io_pc) | _GEN_10) == _T_35); 
  assign _T_102 = _T_6 & io_bp_0_control_x & _T_101; 
  assign _T_106 = io_bp_0_control_action == 1'h0;
  assign io_xcpt_if = _T_102 & _T_106;

  assign _T_37 = io_bp_0_control_tmatch[1] ? ((io_ea >= io_bp_0_address) ^ io_bp_0_control_tmatch[0]) 
					: (((~ io_ea) | _GEN_10) == _T_35);
  assign _T_38 = _T_6 & io_bp_0_control_r & _T_37;
  assign io_xcpt_ld = _T_38 & _T_106;

  assign _T_70 = _T_6 & io_bp_0_control_w & _T_37;
  assign io_xcpt_st = _T_70 & _T_106;

  assign io_debug_if = _T_102 & io_bp_0_control_action;
  assign io_debug_ld = _T_38 & io_bp_0_control_action;
  assign io_debug_st = _T_70 & io_bp_0_control_action;

`endif // MY_ASSIGNMENT

`ifndef MY_ASSIGNMENT
  assign _T_4 = _T_3 >> io_status_prv; // @[Breakpoint.scala 30:68:freechips.rocketchip.system.DefaultRV32Config.fir@154845.4]
  assign _T_6 = _T & _T_5; // @[Breakpoint.scala 30:50:freechips.rocketchip.system.DefaultRV32Config.fir@154847.4]
  assign _GEN_10 = {{28'd0}, _T_22}; // @[Breakpoint.scala 41:9:freechips.rocketchip.system.DefaultRV32Config.fir@154864.4]
  assign _T_35 = _T_24 | _GEN_10; // @[Breakpoint.scala 41:33:freechips.rocketchip.system.DefaultRV32Config.fir@154876.4]
  assign _T_101 = _T_8 ? _T_75 : _T_100; // @[Breakpoint.scala 47:8:freechips.rocketchip.system.DefaultRV32Config.fir@154942.4]
  assign _T_102 = _T_71 & _T_101; // @[Breakpoint.scala 83:32:freechips.rocketchip.system.DefaultRV32Config.fir@154943.4]
  assign _T_106 = io_bp_0_control_action == 1'h0; // @[Breakpoint.scala 92:51:freechips.rocketchip.system.DefaultRV32Config.fir@154952.6]
  assign io_xcpt_if = _T_102 & _T_106;

  assign _T_37 = _T_8 ? _T_11 : _T_36; // @[Breakpoint.scala 47:8:freechips.rocketchip.system.DefaultRV32Config.fir@154878.4]
  assign _T_38 = _T_7 & _T_37; // @[Breakpoint.scala 81:32:freechips.rocketchip.system.DefaultRV32Config.fir@154879.4]
  assign io_xcpt_ld = _T_38 & _T_106;

  assign _T_70 = _T_39 & _T_37; // @[Breakpoint.scala 82:32:freechips.rocketchip.system.DefaultRV32Config.fir@154911.4]
  assign io_xcpt_st = _T_70 & _T_106;

  assign io_debug_if = _T_102 & io_bp_0_control_action;
  assign io_debug_ld = _T_38 & io_bp_0_control_action;
  assign io_debug_st = _T_70 & io_bp_0_control_action;

`endif // MY_ASSIGNMENT

  assign _T = io_status_debug == 1'h0; // @[Breakpoint.scala 30:35:freechips.rocketchip.system.DefaultRV32Config.fir@154841.4]
  assign _T_3 = {io_bp_0_control_m,1'h0,io_bp_0_control_s,io_bp_0_control_u}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@154844.4]
  assign _T_5 = _T_4[0]; // @[Breakpoint.scala 30:68:freechips.rocketchip.system.DefaultRV32Config.fir@154846.4]
  assign _T_7 = _T_6 & io_bp_0_control_r; // @[Breakpoint.scala 81:16:freechips.rocketchip.system.DefaultRV32Config.fir@154848.4]
  assign _T_8 = io_bp_0_control_tmatch[1]; // @[Breakpoint.scala 47:23:freechips.rocketchip.system.DefaultRV32Config.fir@154849.4]
  assign _T_9 = io_ea >= io_bp_0_address; // @[Breakpoint.scala 44:8:freechips.rocketchip.system.DefaultRV32Config.fir@154850.4]
  assign _T_10 = io_bp_0_control_tmatch[0]; // @[Breakpoint.scala 44:36:freechips.rocketchip.system.DefaultRV32Config.fir@154851.4]
  assign _T_11 = _T_9 ^ _T_10; // @[Breakpoint.scala 44:20:freechips.rocketchip.system.DefaultRV32Config.fir@154852.4]
  assign _T_12 = ~ io_ea; // @[Breakpoint.scala 41:6:freechips.rocketchip.system.DefaultRV32Config.fir@154853.4]
  assign _T_14 = io_bp_0_address[0]; // @[Breakpoint.scala 38:83:freechips.rocketchip.system.DefaultRV32Config.fir@154855.4]
  assign _T_15 = _T_10 & _T_14; // @[Breakpoint.scala 38:73:freechips.rocketchip.system.DefaultRV32Config.fir@154856.4]
  assign _T_16 = io_bp_0_address[1]; // @[Breakpoint.scala 38:83:freechips.rocketchip.system.DefaultRV32Config.fir@154857.4]
  assign _T_17 = _T_15 & _T_16; // @[Breakpoint.scala 38:73:freechips.rocketchip.system.DefaultRV32Config.fir@154858.4]
  assign _T_18 = io_bp_0_address[2]; // @[Breakpoint.scala 38:83:freechips.rocketchip.system.DefaultRV32Config.fir@154859.4]
  assign _T_19 = _T_17 & _T_18; // @[Breakpoint.scala 38:73:freechips.rocketchip.system.DefaultRV32Config.fir@154860.4]
  assign _T_22 = {_T_19,_T_17,_T_15,_T_10}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@154863.4]
  assign _T_23 = _T_12 | _GEN_10; // @[Breakpoint.scala 41:9:freechips.rocketchip.system.DefaultRV32Config.fir@154864.4]
  assign _T_24 = ~ io_bp_0_address; // @[Breakpoint.scala 41:24:freechips.rocketchip.system.DefaultRV32Config.fir@154865.4]
  assign _T_36 = _T_23 == _T_35; // @[Breakpoint.scala 41:19:freechips.rocketchip.system.DefaultRV32Config.fir@154877.4]
  assign _T_39 = _T_6 & io_bp_0_control_w; // @[Breakpoint.scala 82:16:freechips.rocketchip.system.DefaultRV32Config.fir@154880.4]
  assign _T_71 = _T_6 & io_bp_0_control_x; // @[Breakpoint.scala 83:16:freechips.rocketchip.system.DefaultRV32Config.fir@154912.4]
  assign _T_73 = io_pc >= io_bp_0_address; // @[Breakpoint.scala 44:8:freechips.rocketchip.system.DefaultRV32Config.fir@154914.4]
  assign _T_75 = _T_73 ^ _T_10; // @[Breakpoint.scala 44:20:freechips.rocketchip.system.DefaultRV32Config.fir@154916.4]
  assign _T_76 = ~ io_pc; // @[Breakpoint.scala 41:6:freechips.rocketchip.system.DefaultRV32Config.fir@154917.4]
  assign _T_87 = _T_76 | _GEN_10; // @[Breakpoint.scala 41:9:freechips.rocketchip.system.DefaultRV32Config.fir@154928.4]
  assign _T_100 = _T_87 == _T_35; // @[Breakpoint.scala 41:19:freechips.rocketchip.system.DefaultRV32Config.fir@154941.4]

endmodule
`endif // __BreakpointUnit
