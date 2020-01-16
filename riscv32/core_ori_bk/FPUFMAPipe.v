module FPUFMAPipe( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@142660.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@142661.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@142662.4]
  input         io_in_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@142663.4]
  input         io_in_bits_ren3, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@142663.4]
  input         io_in_bits_swap23, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@142663.4]
  input  [2:0]  io_in_bits_rm, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@142663.4]
  input  [1:0]  io_in_bits_fmaCmd, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@142663.4]
  input  [32:0] io_in_bits_in1, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@142663.4]
  input  [32:0] io_in_bits_in2, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@142663.4]
  input  [32:0] io_in_bits_in3, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@142663.4]
  output [32:0] io_out_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@142663.4]
  output [4:0]  io_out_bits_exc // @[:freechips.rocketchip.system.DefaultRV32Config.fir@142663.4]
);
  wire  fma_clock; // @[FPU.scala 658:19:freechips.rocketchip.system.DefaultRV32Config.fir@142686.4]
  wire  fma_reset; // @[FPU.scala 658:19:freechips.rocketchip.system.DefaultRV32Config.fir@142686.4]
  wire  fma_io_validin; // @[FPU.scala 658:19:freechips.rocketchip.system.DefaultRV32Config.fir@142686.4]
  wire [1:0] fma_io_op; // @[FPU.scala 658:19:freechips.rocketchip.system.DefaultRV32Config.fir@142686.4]
  wire [32:0] fma_io_a; // @[FPU.scala 658:19:freechips.rocketchip.system.DefaultRV32Config.fir@142686.4]
  wire [32:0] fma_io_b; // @[FPU.scala 658:19:freechips.rocketchip.system.DefaultRV32Config.fir@142686.4]
  wire [32:0] fma_io_c; // @[FPU.scala 658:19:freechips.rocketchip.system.DefaultRV32Config.fir@142686.4]
  wire [2:0] fma_io_roundingMode; // @[FPU.scala 658:19:freechips.rocketchip.system.DefaultRV32Config.fir@142686.4]
  wire [32:0] fma_io_out; // @[FPU.scala 658:19:freechips.rocketchip.system.DefaultRV32Config.fir@142686.4]
  wire [4:0] fma_io_exceptionFlags; // @[FPU.scala 658:19:freechips.rocketchip.system.DefaultRV32Config.fir@142686.4]
  reg  valid; // @[FPU.scala 646:18:freechips.rocketchip.system.DefaultRV32Config.fir@142668.4]
  reg [31:0] _RAND_0;
  reg [2:0] in_rm; // @[FPU.scala 647:15:freechips.rocketchip.system.DefaultRV32Config.fir@142670.4]
  reg [31:0] _RAND_1;
  reg [1:0] in_fmaCmd; // @[FPU.scala 647:15:freechips.rocketchip.system.DefaultRV32Config.fir@142670.4]
  reg [31:0] _RAND_2;
  reg [32:0] in_in1; // @[FPU.scala 647:15:freechips.rocketchip.system.DefaultRV32Config.fir@142670.4]
  reg [63:0] _RAND_3;
  reg [32:0] in_in2; // @[FPU.scala 647:15:freechips.rocketchip.system.DefaultRV32Config.fir@142670.4]
  reg [63:0] _RAND_4;
  reg [32:0] in_in3; // @[FPU.scala 647:15:freechips.rocketchip.system.DefaultRV32Config.fir@142670.4]
  reg [63:0] _RAND_5;
  wire [32:0] _T_1; // @[FPU.scala 650:32:freechips.rocketchip.system.DefaultRV32Config.fir@142673.6]
  wire [32:0] _T_3; // @[FPU.scala 650:50:freechips.rocketchip.system.DefaultRV32Config.fir@142675.6]
  wire  _T_4; // @[FPU.scala 655:21:freechips.rocketchip.system.DefaultRV32Config.fir@142680.6]
  wire  _T_5; // @[FPU.scala 655:11:freechips.rocketchip.system.DefaultRV32Config.fir@142681.6]
  MulAddRecFNPipe fma ( // @[FPU.scala 658:19:freechips.rocketchip.system.DefaultRV32Config.fir@142686.4]
    .clock(fma_clock),
    .reset(fma_reset),
    .io_validin(fma_io_validin),
    .io_op(fma_io_op),
    .io_a(fma_io_a),
    .io_b(fma_io_b),
    .io_c(fma_io_c),
    .io_roundingMode(fma_io_roundingMode),
    .io_out(fma_io_out),
    .io_exceptionFlags(fma_io_exceptionFlags)
  );
  assign _T_1 = io_in_bits_in1 ^ io_in_bits_in2; // @[FPU.scala 650:32:freechips.rocketchip.system.DefaultRV32Config.fir@142673.6]
  assign _T_3 = _T_1 & 33'h100000000; // @[FPU.scala 650:50:freechips.rocketchip.system.DefaultRV32Config.fir@142675.6]
  assign _T_4 = io_in_bits_ren3 | io_in_bits_swap23; // @[FPU.scala 655:21:freechips.rocketchip.system.DefaultRV32Config.fir@142680.6]
  assign _T_5 = _T_4 == 1'h0; // @[FPU.scala 655:11:freechips.rocketchip.system.DefaultRV32Config.fir@142681.6]
  assign io_out_bits_data = fma_io_out; // @[FPU.scala 671:10:freechips.rocketchip.system.DefaultRV32Config.fir@142705.4]
  assign io_out_bits_exc = fma_io_exceptionFlags; // @[FPU.scala 671:10:freechips.rocketchip.system.DefaultRV32Config.fir@142705.4]
  assign fma_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@142688.4]
  assign fma_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@142689.4]
  assign fma_io_validin = valid; // @[FPU.scala 659:18:freechips.rocketchip.system.DefaultRV32Config.fir@142690.4]
  assign fma_io_op = in_fmaCmd; // @[FPU.scala 660:13:freechips.rocketchip.system.DefaultRV32Config.fir@142691.4]
  assign fma_io_a = in_in1; // @[FPU.scala 663:12:freechips.rocketchip.system.DefaultRV32Config.fir@142694.4]
  assign fma_io_b = in_in2; // @[FPU.scala 664:12:freechips.rocketchip.system.DefaultRV32Config.fir@142695.4]
  assign fma_io_c = in_in3; // @[FPU.scala 665:12:freechips.rocketchip.system.DefaultRV32Config.fir@142696.4]
  assign fma_io_roundingMode = in_rm; // @[FPU.scala 661:23:freechips.rocketchip.system.DefaultRV32Config.fir@142692.4]
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
  valid = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  in_rm = _RAND_1[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  in_fmaCmd = _RAND_2[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {2{`RANDOM}};
  in_in1 = _RAND_3[32:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {2{`RANDOM}};
  in_in2 = _RAND_4[32:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {2{`RANDOM}};
  in_in3 = _RAND_5[32:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge clock) begin
    valid <= io_in_valid;
    if (io_in_valid) begin
      in_rm <= io_in_bits_rm;
    end
    if (io_in_valid) begin
      in_fmaCmd <= io_in_bits_fmaCmd;
    end
    if (io_in_valid) begin
      in_in1 <= io_in_bits_in1;
    end
    if (io_in_valid) begin
      if (io_in_bits_swap23) begin
        in_in2 <= 33'h80000000;
      end else begin
        in_in2 <= io_in_bits_in2;
      end
    end
    if (io_in_valid) begin
      if (_T_5) begin
        in_in3 <= _T_3;
      end else begin
        in_in3 <= io_in_bits_in3;
      end
    end
  end
endmodule

