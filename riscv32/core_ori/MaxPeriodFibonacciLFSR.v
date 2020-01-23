`include "include_module.v"
`ifdef __MaxPeriodFibonacciLFSR
module MaxPeriodFibonacciLFSR( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115154.2]
  input   clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115155.4]
  input   reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115156.4]
  input   io_increment, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115157.4]
  output  io_out_0, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115157.4]
  output  io_out_1, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115157.4]
  output  io_out_2, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115157.4]
  output  io_out_3, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115157.4]
  output  io_out_4, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115157.4]
  output  io_out_5, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115157.4]
  output  io_out_6, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115157.4]
  output  io_out_7, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115157.4]
  output  io_out_8, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115157.4]
  output  io_out_9, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115157.4]
  output  io_out_10, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115157.4]
  output  io_out_11, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115157.4]
  output  io_out_12, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115157.4]
  output  io_out_13, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115157.4]
  output  io_out_14, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115157.4]
  output  io_out_15 // @[:freechips.rocketchip.system.DefaultRV32Config.fir@115157.4]
);
  reg  state_0; // @[PRNG.scala 47:50:freechips.rocketchip.system.DefaultRV32Config.fir@115176.4]
  reg [31:0] _RAND_0;
  reg  state_1; // @[PRNG.scala 47:50:freechips.rocketchip.system.DefaultRV32Config.fir@115176.4]
  reg [31:0] _RAND_1;
  reg  state_2; // @[PRNG.scala 47:50:freechips.rocketchip.system.DefaultRV32Config.fir@115176.4]
  reg [31:0] _RAND_2;
  reg  state_3; // @[PRNG.scala 47:50:freechips.rocketchip.system.DefaultRV32Config.fir@115176.4]
  reg [31:0] _RAND_3;
  reg  state_4; // @[PRNG.scala 47:50:freechips.rocketchip.system.DefaultRV32Config.fir@115176.4]
  reg [31:0] _RAND_4;
  reg  state_5; // @[PRNG.scala 47:50:freechips.rocketchip.system.DefaultRV32Config.fir@115176.4]
  reg [31:0] _RAND_5;
  reg  state_6; // @[PRNG.scala 47:50:freechips.rocketchip.system.DefaultRV32Config.fir@115176.4]
  reg [31:0] _RAND_6;
  reg  state_7; // @[PRNG.scala 47:50:freechips.rocketchip.system.DefaultRV32Config.fir@115176.4]
  reg [31:0] _RAND_7;
  reg  state_8; // @[PRNG.scala 47:50:freechips.rocketchip.system.DefaultRV32Config.fir@115176.4]
  reg [31:0] _RAND_8;
  reg  state_9; // @[PRNG.scala 47:50:freechips.rocketchip.system.DefaultRV32Config.fir@115176.4]
  reg [31:0] _RAND_9;
  reg  state_10; // @[PRNG.scala 47:50:freechips.rocketchip.system.DefaultRV32Config.fir@115176.4]
  reg [31:0] _RAND_10;
  reg  state_11; // @[PRNG.scala 47:50:freechips.rocketchip.system.DefaultRV32Config.fir@115176.4]
  reg [31:0] _RAND_11;
  reg  state_12; // @[PRNG.scala 47:50:freechips.rocketchip.system.DefaultRV32Config.fir@115176.4]
  reg [31:0] _RAND_12;
  reg  state_13; // @[PRNG.scala 47:50:freechips.rocketchip.system.DefaultRV32Config.fir@115176.4]
  reg [31:0] _RAND_13;
  reg  state_14; // @[PRNG.scala 47:50:freechips.rocketchip.system.DefaultRV32Config.fir@115176.4]
  reg [31:0] _RAND_14;
  reg  state_15; // @[PRNG.scala 47:50:freechips.rocketchip.system.DefaultRV32Config.fir@115176.4]
  reg [31:0] _RAND_15;
  wire  _T_1; // @[LFSR.scala 15:41:freechips.rocketchip.system.DefaultRV32Config.fir@115178.6]
  wire  _T_2; // @[LFSR.scala 15:41:freechips.rocketchip.system.DefaultRV32Config.fir@115179.6]
  wire  _T_3; // @[LFSR.scala 15:41:freechips.rocketchip.system.DefaultRV32Config.fir@115180.6]
  wire  _GEN_15; // @[PRNG.scala 61:23:freechips.rocketchip.system.DefaultRV32Config.fir@115177.4]
  assign _T_1 = state_15 ^ state_13; // @[LFSR.scala 15:41:freechips.rocketchip.system.DefaultRV32Config.fir@115178.6]
  assign _T_2 = _T_1 ^ state_12; // @[LFSR.scala 15:41:freechips.rocketchip.system.DefaultRV32Config.fir@115179.6]
  assign _T_3 = _T_2 ^ state_10; // @[LFSR.scala 15:41:freechips.rocketchip.system.DefaultRV32Config.fir@115180.6]
  assign _GEN_15 = io_increment ? state_14 : state_15; // @[PRNG.scala 61:23:freechips.rocketchip.system.DefaultRV32Config.fir@115177.4]
  assign io_out_0 = state_0; // @[PRNG.scala 69:10:freechips.rocketchip.system.DefaultRV32Config.fir@115216.4]
  assign io_out_1 = state_1; // @[PRNG.scala 69:10:freechips.rocketchip.system.DefaultRV32Config.fir@115217.4]
  assign io_out_2 = state_2; // @[PRNG.scala 69:10:freechips.rocketchip.system.DefaultRV32Config.fir@115218.4]
  assign io_out_3 = state_3; // @[PRNG.scala 69:10:freechips.rocketchip.system.DefaultRV32Config.fir@115219.4]
  assign io_out_4 = state_4; // @[PRNG.scala 69:10:freechips.rocketchip.system.DefaultRV32Config.fir@115220.4]
  assign io_out_5 = state_5; // @[PRNG.scala 69:10:freechips.rocketchip.system.DefaultRV32Config.fir@115221.4]
  assign io_out_6 = state_6; // @[PRNG.scala 69:10:freechips.rocketchip.system.DefaultRV32Config.fir@115222.4]
  assign io_out_7 = state_7; // @[PRNG.scala 69:10:freechips.rocketchip.system.DefaultRV32Config.fir@115223.4]
  assign io_out_8 = state_8; // @[PRNG.scala 69:10:freechips.rocketchip.system.DefaultRV32Config.fir@115224.4]
  assign io_out_9 = state_9; // @[PRNG.scala 69:10:freechips.rocketchip.system.DefaultRV32Config.fir@115225.4]
  assign io_out_10 = state_10; // @[PRNG.scala 69:10:freechips.rocketchip.system.DefaultRV32Config.fir@115226.4]
  assign io_out_11 = state_11; // @[PRNG.scala 69:10:freechips.rocketchip.system.DefaultRV32Config.fir@115227.4]
  assign io_out_12 = state_12; // @[PRNG.scala 69:10:freechips.rocketchip.system.DefaultRV32Config.fir@115228.4]
  assign io_out_13 = state_13; // @[PRNG.scala 69:10:freechips.rocketchip.system.DefaultRV32Config.fir@115229.4]
  assign io_out_14 = state_14; // @[PRNG.scala 69:10:freechips.rocketchip.system.DefaultRV32Config.fir@115230.4]
  assign io_out_15 = state_15; // @[PRNG.scala 69:10:freechips.rocketchip.system.DefaultRV32Config.fir@115231.4]
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
  state_0 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  state_1 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  state_2 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  state_3 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  state_4 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  state_5 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  state_6 = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  state_7 = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  state_8 = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  state_9 = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  state_10 = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  state_11 = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  state_12 = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  state_13 = _RAND_13[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  state_14 = _RAND_14[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  state_15 = _RAND_15[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge clock) begin
    if (reset) begin
      state_0 <= 1'h0;
    end else begin
      if (io_increment) begin
        state_0 <= _T_3;
      end
    end
    if (reset) begin
      state_1 <= 1'h0;
    end else begin
      if (io_increment) begin
        state_1 <= state_0;
      end
    end
    if (reset) begin
      state_2 <= 1'h0;
    end else begin
      if (io_increment) begin
        state_2 <= state_1;
      end
    end
    if (reset) begin
      state_3 <= 1'h0;
    end else begin
      if (io_increment) begin
        state_3 <= state_2;
      end
    end
    if (reset) begin
      state_4 <= 1'h0;
    end else begin
      if (io_increment) begin
        state_4 <= state_3;
      end
    end
    if (reset) begin
      state_5 <= 1'h0;
    end else begin
      if (io_increment) begin
        state_5 <= state_4;
      end
    end
    if (reset) begin
      state_6 <= 1'h0;
    end else begin
      if (io_increment) begin
        state_6 <= state_5;
      end
    end
    if (reset) begin
      state_7 <= 1'h0;
    end else begin
      if (io_increment) begin
        state_7 <= state_6;
      end
    end
    if (reset) begin
      state_8 <= 1'h0;
    end else begin
      if (io_increment) begin
        state_8 <= state_7;
      end
    end
    if (reset) begin
      state_9 <= 1'h0;
    end else begin
      if (io_increment) begin
        state_9 <= state_8;
      end
    end
    if (reset) begin
      state_10 <= 1'h0;
    end else begin
      if (io_increment) begin
        state_10 <= state_9;
      end
    end
    if (reset) begin
      state_11 <= 1'h0;
    end else begin
      if (io_increment) begin
        state_11 <= state_10;
      end
    end
    if (reset) begin
      state_12 <= 1'h0;
    end else begin
      if (io_increment) begin
        state_12 <= state_11;
      end
    end
    if (reset) begin
      state_13 <= 1'h0;
    end else begin
      if (io_increment) begin
        state_13 <= state_12;
      end
    end
    if (reset) begin
      state_14 <= 1'h0;
    end else begin
      if (io_increment) begin
        state_14 <= state_13;
      end
    end
    state_15 <= reset | _GEN_15;
  end
endmodule
`endif // __MaxPeriodFibonacciLFSR

