`include "include_module.v"
`ifdef __IntToFP
module IntToFP( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@173632.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@173633.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@173634.4]
  input         io_in_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@173635.4]
  input         io_in_bits_wflags, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@173635.4]
  input  [2:0]  io_in_bits_rm, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@173635.4]
  input  [1:0]  io_in_bits_typ, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@173635.4]
  input  [31:0] io_in_bits_in1, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@173635.4]
  output [32:0] io_out_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@173635.4]
  output [4:0]  io_out_bits_exc // @[:freechips.rocketchip.system.DefaultRV32Config.fir@173635.4]
);
  wire [31:0] my_recFNFromFN_io_in; // @[FPU.scala 261:36:freechips.rocketchip.system.DefaultRV32Config.fir@173674.4]
  wire [32:0] my_recFNFromFN_io_out; // @[FPU.scala 261:36:freechips.rocketchip.system.DefaultRV32Config.fir@173674.4]
  wire  INToRecFN_io_signedIn; // @[FPU.scala 522:23:freechips.rocketchip.system.DefaultRV32Config.fir@173684.6]
  wire [31:0] INToRecFN_io_in; // @[FPU.scala 522:23:freechips.rocketchip.system.DefaultRV32Config.fir@173684.6]
  wire [2:0] INToRecFN_io_roundingMode; // @[FPU.scala 522:23:freechips.rocketchip.system.DefaultRV32Config.fir@173684.6]
  wire [32:0] INToRecFN_io_out; // @[FPU.scala 522:23:freechips.rocketchip.system.DefaultRV32Config.fir@173684.6]
  wire [4:0] INToRecFN_io_exceptionFlags; // @[FPU.scala 522:23:freechips.rocketchip.system.DefaultRV32Config.fir@173684.6]
  reg  inPipe_valid; // @[Valid.scala 117:22:freechips.rocketchip.system.DefaultRV32Config.fir@173640.4]
  reg [31:0] _RAND_0;
  reg  inPipe_bits_wflags; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@173642.4]
  reg [31:0] _RAND_1;
  reg [2:0] inPipe_bits_rm; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@173642.4]
  reg [31:0] _RAND_2;
  reg [1:0] inPipe_bits_typ; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@173642.4]
  reg [31:0] _RAND_3;
  reg [31:0] inPipe_bits_in1; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@173642.4]
  reg [31:0] _RAND_4;
  wire [31:0] _T_2; // @[FPU.scala 508:39:freechips.rocketchip.system.DefaultRV32Config.fir@173678.4]
  wire  _T_4; // @[FPU.scala 523:38:freechips.rocketchip.system.DefaultRV32Config.fir@173688.6]
  reg [32:0] _T_7_data; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@173699.4]
  reg [63:0] _RAND_5;
  reg [4:0] _T_7_exc; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@173699.4]
  reg [31:0] _RAND_6;
  my_recFNFromFN my_recFNFromFN ( // @[FPU.scala 261:36:freechips.rocketchip.system.DefaultRV32Config.fir@173674.4]
    .io_in(my_recFNFromFN_io_in),
    .io_out(my_recFNFromFN_io_out)
  );
  INToRecFN INToRecFN ( // @[FPU.scala 522:23:freechips.rocketchip.system.DefaultRV32Config.fir@173684.6]
    .io_signedIn(INToRecFN_io_signedIn),
    .io_in(INToRecFN_io_in),
    .io_roundingMode(INToRecFN_io_roundingMode),
    .io_out(INToRecFN_io_out),
    .io_exceptionFlags(INToRecFN_io_exceptionFlags)
  );
  assign _T_2 = $signed(inPipe_bits_in1); // @[FPU.scala 508:39:freechips.rocketchip.system.DefaultRV32Config.fir@173678.4]
  assign _T_4 = inPipe_bits_typ[0]; // @[FPU.scala 523:38:freechips.rocketchip.system.DefaultRV32Config.fir@173688.6]
  assign io_out_bits_data = _T_7_data; // @[FPU.scala 536:10:freechips.rocketchip.system.DefaultRV32Config.fir@173708.4]
  assign io_out_bits_exc = _T_7_exc; // @[FPU.scala 536:10:freechips.rocketchip.system.DefaultRV32Config.fir@173708.4]
  assign my_recFNFromFN_io_in = inPipe_bits_in1; // @[FPU.scala 262:30:freechips.rocketchip.system.DefaultRV32Config.fir@173676.4]
  assign INToRecFN_io_signedIn = ~ _T_4; // @[FPU.scala 523:23:freechips.rocketchip.system.DefaultRV32Config.fir@173690.6]
  assign INToRecFN_io_in = $unsigned(_T_2); // @[FPU.scala 524:17:freechips.rocketchip.system.DefaultRV32Config.fir@173691.6]
  assign INToRecFN_io_roundingMode = inPipe_bits_rm; // @[FPU.scala 525:27:freechips.rocketchip.system.DefaultRV32Config.fir@173692.6]
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
  inPipe_valid = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  inPipe_bits_wflags = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  inPipe_bits_rm = _RAND_2[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  inPipe_bits_typ = _RAND_3[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  inPipe_bits_in1 = _RAND_4[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {2{`RANDOM}};
  _T_7_data = _RAND_5[32:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_7_exc = _RAND_6[4:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge clock) begin
    if (reset) begin
      inPipe_valid <= 1'h0;
    end else begin
      inPipe_valid <= io_in_valid;
    end
    if (io_in_valid) begin
      inPipe_bits_wflags <= io_in_bits_wflags;
    end
    if (io_in_valid) begin
      inPipe_bits_rm <= io_in_bits_rm;
    end
    if (io_in_valid) begin
      inPipe_bits_typ <= io_in_bits_typ;
    end
    if (io_in_valid) begin
      inPipe_bits_in1 <= io_in_bits_in1;
    end
    if (inPipe_valid) begin
      if (inPipe_bits_wflags) begin
        _T_7_data <= INToRecFN_io_out;
      end else begin
        _T_7_data <= my_recFNFromFN_io_out;
      end
    end
    if (inPipe_valid) begin
      if (inPipe_bits_wflags) begin
        _T_7_exc <= INToRecFN_io_exceptionFlags;
      end else begin
        _T_7_exc <= 5'h0;
      end
    end
  end
endmodule
`endif // __IntToFP
