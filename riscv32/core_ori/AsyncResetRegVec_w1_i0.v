module AsyncResetRegVec_w1_i0( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72417.2]
  input   clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72418.4]
  input   reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72419.4]
  input   io_d, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72420.4]
  output  io_q // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72420.4]
);
  wire  _T; // @[AsyncResetReg.scala 62:29:freechips.rocketchip.system.DefaultRV32Config.fir@72425.4]
  reg  reg_; // @[AsyncResetReg.scala 62:50:freechips.rocketchip.system.DefaultRV32Config.fir@72426.4]
  reg [31:0] _RAND_0;
  assign _T = reset; // @[AsyncResetReg.scala 62:29:freechips.rocketchip.system.DefaultRV32Config.fir@72425.4]
  assign io_q = reg_; // @[AsyncResetReg.scala 66:8:freechips.rocketchip.system.DefaultRV32Config.fir@72430.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  reg_ = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
  if (_T) begin
    reg_ = 1'h0;
  end
end
  always @(posedge clock or posedge _T) begin
    if (_T) begin
      reg_ <= 1'h0;
    end else begin
      reg_ <= io_d;
    end
  end
endmodule

