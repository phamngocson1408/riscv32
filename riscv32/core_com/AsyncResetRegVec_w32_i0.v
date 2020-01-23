`include "include_module.v"
`ifdef __AsyncResetRegVec_w32_i0
module AsyncResetRegVec_w32_i0(
  input         clock,
  input         reset,
  input  [31:0] io_d,
  output [31:0] io_q
);
  reg [31:0] reg_;
  assign io_q = reg_;

  always @(posedge clock or posedge reset) begin
    if (reset) begin
      reg_ <= 32'h0;
    end else begin
      reg_ <= io_d;
    end
  end

endmodule
`endif // __AsyncResetRegVec_w32_i0
