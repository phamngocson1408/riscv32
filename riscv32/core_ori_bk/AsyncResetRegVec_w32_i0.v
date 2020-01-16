module AsyncResetRegVec_w32_i0( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72387.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72388.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72389.4]
  input  [31:0] io_d, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72390.4]
  output [31:0] io_q // @[:freechips.rocketchip.system.DefaultRV32Config.fir@72390.4]
);
  wire  _T; // @[AsyncResetReg.scala 62:29:freechips.rocketchip.system.DefaultRV32Config.fir@72395.4]
  reg [31:0] reg_; // @[AsyncResetReg.scala 62:50:freechips.rocketchip.system.DefaultRV32Config.fir@72396.4]
  reg [31:0] _RAND_0;
  assign _T = reset; // @[AsyncResetReg.scala 62:29:freechips.rocketchip.system.DefaultRV32Config.fir@72395.4]
  assign io_q = reg_; // @[AsyncResetReg.scala 66:8:freechips.rocketchip.system.DefaultRV32Config.fir@72400.4]
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
  reg_ = _RAND_0[31:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
  if (_T) begin
    reg_ = 32'h0;
  end
end
  always @(posedge clock or posedge _T) begin
    if (_T) begin
      reg_ <= 32'h0;
    end else begin
      reg_ <= io_d;
    end
  end
endmodule

