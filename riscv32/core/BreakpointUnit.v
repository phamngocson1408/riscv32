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

`define MY_ASSIGNMENT
`ifdef MY_ASSIGNMENT
  wire [3:0] bp_control_en = {io_bp_0_control_m,1'h0,io_bp_0_control_s,io_bp_0_control_u} >> io_status_prv;
  wire en = !io_status_debug & bp_control_en[0];
  wire [31:0] mask = {{28'd0}
		,(io_bp_0_control_tmatch[0] & io_bp_0_address[0] & io_bp_0_address[1] & io_bp_0_address[2])
		,(io_bp_0_control_tmatch[0] & io_bp_0_address[0] & io_bp_0_address[1])
		,(io_bp_0_control_tmatch[0] & io_bp_0_address[0])
		,io_bp_0_control_tmatch[0]
		}; 
  wire io_bp_0_addressMatch_io_pc = io_bp_0_control_tmatch[1] ? ((io_pc >= io_bp_0_address) ^ io_bp_0_control_tmatch[0]) 
					: (((~ io_pc) | mask) == ((~ io_bp_0_address) | mask)); 
  wire x = en & io_bp_0_control_x & io_bp_0_addressMatch_io_pc; 
  assign io_xcpt_if = x & !io_bp_0_control_action;

  wire io_bp_0_addressMatch_io_ea = io_bp_0_control_tmatch[1] ? ((io_ea >= io_bp_0_address) ^ io_bp_0_control_tmatch[0]) 
					: (((~ io_ea) | mask) == ((~ io_bp_0_address) | mask));
  wire r = en & io_bp_0_control_r & io_bp_0_addressMatch_io_ea;
  assign io_xcpt_ld = r & !io_bp_0_control_action;

  wire w = en & io_bp_0_control_w & io_bp_0_addressMatch_io_ea;
  assign io_xcpt_st = w & !io_bp_0_control_action;

  assign io_debug_if = x & io_bp_0_control_action;
  assign io_debug_ld = r & io_bp_0_control_action;
  assign io_debug_st = w & io_bp_0_control_action;

`endif // MY_ASSIGNMENT

endmodule
`endif // __BreakpointUnit
