`include "include_module.v"
`ifdef __AsyncResetRegVec_w1_i0
module AsyncResetRegVec_w1_i0(
  input   clock,
  input   reset,
  input   io_d,
  output  io_q
);
  reg  reg_;
  assign io_q = reg_;

  always @(posedge clock or posedge reset) begin
    if (reset) begin
      reg_ <= 1'h0;
    end else begin
      reg_ <= io_d;
    end
  end

endmodule
`endif // __AsyncResetRegVec_w1_i0
