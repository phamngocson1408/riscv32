`include "include_module.v"
`ifdef __SynchronizerShiftReg_w2_d3
module SynchronizerShiftReg_w2_d3( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@164661.2]
  input        clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@164662.4]
  input  [1:0] io_d, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@164664.4]
  output [1:0] io_q // @[:freechips.rocketchip.system.DefaultRV32Config.fir@164664.4]
);
  reg [1:0] sync_0; // @[ShiftReg.scala 114:16:freechips.rocketchip.system.DefaultRV32Config.fir@164669.4]
  reg [31:0] _RAND_0;
  reg [1:0] sync_1; // @[ShiftReg.scala 114:16:freechips.rocketchip.system.DefaultRV32Config.fir@164670.4]
  reg [31:0] _RAND_1;
  reg [1:0] sync_2; // @[ShiftReg.scala 114:16:freechips.rocketchip.system.DefaultRV32Config.fir@164671.4]
  reg [31:0] _RAND_2;
  assign io_q = sync_0; // @[ShiftReg.scala 123:8:freechips.rocketchip.system.DefaultRV32Config.fir@164675.4]
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
  sync_0 = _RAND_0[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  sync_1 = _RAND_1[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  sync_2 = _RAND_2[1:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge clock) begin
    sync_0 <= sync_1;
    sync_1 <= sync_2;
    sync_2 <= io_d;
  end
endmodule
`endif // __SynchronizerShiftReg_w2_d3

