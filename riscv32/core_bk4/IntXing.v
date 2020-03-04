`include "include_module.v"
`ifdef __IntXing
module IntXing(
  input   clock,
  input   auto_int_in_0,
  input   auto_int_in_1,
  output  auto_int_out_0,
  output  auto_int_out_1
);
  wire  SynchronizerShiftReg_w2_d3_clock; 
  wire [1:0] SynchronizerShiftReg_w2_d3_io_d; 
  wire [1:0] SynchronizerShiftReg_w2_d3_io_q;
  wire [1:0] _T_4;
  SynchronizerShiftReg_w2_d3 SynchronizerShiftReg_w2_d3 ( 
    .clock(SynchronizerShiftReg_w2_d3_clock),
    .io_d(SynchronizerShiftReg_w2_d3_io_d),
    .io_q(SynchronizerShiftReg_w2_d3_io_q)
  );
  assign _T_4 = SynchronizerShiftReg_w2_d3_io_q;
  assign auto_int_out_0 = _T_4[0];
  assign auto_int_out_1 = _T_4[1];
  assign SynchronizerShiftReg_w2_d3_clock = clock;
  assign SynchronizerShiftReg_w2_d3_io_d = {auto_int_in_1,auto_int_in_0};
endmodule
`endif // __IntXing

