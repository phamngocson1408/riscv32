`include "include_module.v"
`ifdef __FPToFP
module FPToFP( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@143572.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@143573.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@143574.4]
  input         io_in_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@143575.4]
  input         io_in_bits_wflags, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@143575.4]
  input  [2:0]  io_in_bits_rm, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@143575.4]
  input  [32:0] io_in_bits_in1, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@143575.4]
  input  [32:0] io_in_bits_in2, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@143575.4]
  output [32:0] io_out_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@143575.4]
  output [4:0]  io_out_bits_exc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@143575.4]
  input         io_lt // @[:freechips.rocketchip.system.DefaultRV32Config.fir@143575.4]
);
  reg  inPipe_valid; // @[Valid.scala 117:22:freechips.rocketchip.system.DefaultRV32Config.fir@143580.4]
  reg [31:0] _RAND_0;
  reg  inPipe_bits_wflags; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@143582.4]
  reg [31:0] _RAND_1;
  reg [2:0] inPipe_bits_rm; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@143582.4]
  reg [31:0] _RAND_2;
  reg [32:0] inPipe_bits_in1; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@143582.4]
  reg [63:0] _RAND_3;
  reg [32:0] inPipe_bits_in2; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@143582.4]
  reg [63:0] _RAND_4;
  wire  _T; // @[FPU.scala 523:31:freechips.rocketchip.system.DefaultRV32Config.fir@143611.4]
  wire [32:0] _T_1; // @[FPU.scala 523:48:freechips.rocketchip.system.DefaultRV32Config.fir@143612.4]
  wire  _T_2; // @[FPU.scala 523:77:freechips.rocketchip.system.DefaultRV32Config.fir@143613.4]
  wire [32:0] _T_3; // @[FPU.scala 523:82:freechips.rocketchip.system.DefaultRV32Config.fir@143614.4]
  wire [32:0] _T_4; // @[FPU.scala 523:66:freechips.rocketchip.system.DefaultRV32Config.fir@143615.4]
  wire [32:0] signNum; // @[FPU.scala 523:20:freechips.rocketchip.system.DefaultRV32Config.fir@143616.4]
  wire  _T_5; // @[FPU.scala 524:26:freechips.rocketchip.system.DefaultRV32Config.fir@143617.4]
  wire [31:0] _T_6; // @[FPU.scala 524:45:freechips.rocketchip.system.DefaultRV32Config.fir@143618.4]
  wire [32:0] fsgnj; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@143619.4]
  wire [2:0] _T_7; // @[FPU.scala 198:25:freechips.rocketchip.system.DefaultRV32Config.fir@143625.6]
  wire  _T_8; // @[FPU.scala 198:56:freechips.rocketchip.system.DefaultRV32Config.fir@143626.6]
  wire [2:0] _T_9; // @[FPU.scala 198:25:freechips.rocketchip.system.DefaultRV32Config.fir@143627.6]
  wire  _T_10; // @[FPU.scala 198:56:freechips.rocketchip.system.DefaultRV32Config.fir@143628.6]
  wire  _T_13; // @[FPU.scala 199:39:freechips.rocketchip.system.DefaultRV32Config.fir@143631.6]
  wire  _T_14; // @[FPU.scala 199:37:freechips.rocketchip.system.DefaultRV32Config.fir@143632.6]
  wire  _T_15; // @[FPU.scala 199:34:freechips.rocketchip.system.DefaultRV32Config.fir@143633.6]
  wire  _T_18; // @[FPU.scala 199:39:freechips.rocketchip.system.DefaultRV32Config.fir@143636.6]
  wire  _T_19; // @[FPU.scala 199:37:freechips.rocketchip.system.DefaultRV32Config.fir@143637.6]
  wire  _T_20; // @[FPU.scala 199:34:freechips.rocketchip.system.DefaultRV32Config.fir@143638.6]
  wire  _T_21; // @[FPU.scala 533:49:freechips.rocketchip.system.DefaultRV32Config.fir@143639.6]
  wire  _T_22; // @[FPU.scala 534:27:freechips.rocketchip.system.DefaultRV32Config.fir@143640.6]
  wire  _T_24; // @[FPU.scala 535:41:freechips.rocketchip.system.DefaultRV32Config.fir@143642.6]
  wire  _T_25; // @[FPU.scala 535:54:freechips.rocketchip.system.DefaultRV32Config.fir@143643.6]
  wire  _T_26; // @[FPU.scala 535:51:freechips.rocketchip.system.DefaultRV32Config.fir@143644.6]
  wire  _T_27; // @[FPU.scala 535:24:freechips.rocketchip.system.DefaultRV32Config.fir@143645.6]
  wire [4:0] _T_28; // @[FPU.scala 536:31:freechips.rocketchip.system.DefaultRV32Config.fir@143646.6]
  reg [32:0] _T_34_data; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@143663.4]
  reg [63:0] _RAND_5;
  reg [4:0] _T_34_exc; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@143663.4]
  reg [31:0] _RAND_6;
  assign _T = inPipe_bits_rm[1]; // @[FPU.scala 523:31:freechips.rocketchip.system.DefaultRV32Config.fir@143611.4]
  assign _T_1 = inPipe_bits_in1 ^ inPipe_bits_in2; // @[FPU.scala 523:48:freechips.rocketchip.system.DefaultRV32Config.fir@143612.4]
  assign _T_2 = inPipe_bits_rm[0]; // @[FPU.scala 523:77:freechips.rocketchip.system.DefaultRV32Config.fir@143613.4]
  assign _T_3 = ~ inPipe_bits_in2; // @[FPU.scala 523:82:freechips.rocketchip.system.DefaultRV32Config.fir@143614.4]
  assign _T_4 = _T_2 ? _T_3 : inPipe_bits_in2; // @[FPU.scala 523:66:freechips.rocketchip.system.DefaultRV32Config.fir@143615.4]
  assign signNum = _T ? _T_1 : _T_4; // @[FPU.scala 523:20:freechips.rocketchip.system.DefaultRV32Config.fir@143616.4]
  assign _T_5 = signNum[32]; // @[FPU.scala 524:26:freechips.rocketchip.system.DefaultRV32Config.fir@143617.4]
  assign _T_6 = inPipe_bits_in1[31:0]; // @[FPU.scala 524:45:freechips.rocketchip.system.DefaultRV32Config.fir@143618.4]
  assign fsgnj = {_T_5,_T_6}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@143619.4]
  assign _T_7 = inPipe_bits_in1[31:29]; // @[FPU.scala 198:25:freechips.rocketchip.system.DefaultRV32Config.fir@143625.6]
  assign _T_8 = _T_7 == 3'h7; // @[FPU.scala 198:56:freechips.rocketchip.system.DefaultRV32Config.fir@143626.6]
  assign _T_9 = inPipe_bits_in2[31:29]; // @[FPU.scala 198:25:freechips.rocketchip.system.DefaultRV32Config.fir@143627.6]
  assign _T_10 = _T_9 == 3'h7; // @[FPU.scala 198:56:freechips.rocketchip.system.DefaultRV32Config.fir@143628.6]
  assign _T_13 = inPipe_bits_in1[22]; // @[FPU.scala 199:39:freechips.rocketchip.system.DefaultRV32Config.fir@143631.6]
  assign _T_14 = _T_13 == 1'h0; // @[FPU.scala 199:37:freechips.rocketchip.system.DefaultRV32Config.fir@143632.6]
  assign _T_15 = _T_8 & _T_14; // @[FPU.scala 199:34:freechips.rocketchip.system.DefaultRV32Config.fir@143633.6]
  assign _T_18 = inPipe_bits_in2[22]; // @[FPU.scala 199:39:freechips.rocketchip.system.DefaultRV32Config.fir@143636.6]
  assign _T_19 = _T_18 == 1'h0; // @[FPU.scala 199:37:freechips.rocketchip.system.DefaultRV32Config.fir@143637.6]
  assign _T_20 = _T_10 & _T_19; // @[FPU.scala 199:34:freechips.rocketchip.system.DefaultRV32Config.fir@143638.6]
  assign _T_21 = _T_15 | _T_20; // @[FPU.scala 533:49:freechips.rocketchip.system.DefaultRV32Config.fir@143639.6]
  assign _T_22 = _T_8 & _T_10; // @[FPU.scala 534:27:freechips.rocketchip.system.DefaultRV32Config.fir@143640.6]
  assign _T_24 = _T_2 != io_lt; // @[FPU.scala 535:41:freechips.rocketchip.system.DefaultRV32Config.fir@143642.6]
  assign _T_25 = _T_8 == 1'h0; // @[FPU.scala 535:54:freechips.rocketchip.system.DefaultRV32Config.fir@143643.6]
  assign _T_26 = _T_24 & _T_25; // @[FPU.scala 535:51:freechips.rocketchip.system.DefaultRV32Config.fir@143644.6]
  assign _T_27 = _T_10 | _T_26; // @[FPU.scala 535:24:freechips.rocketchip.system.DefaultRV32Config.fir@143645.6]
  assign _T_28 = {_T_21, 4'h0}; // @[FPU.scala 536:31:freechips.rocketchip.system.DefaultRV32Config.fir@143646.6]
  assign io_out_bits_data = _T_34_data; // @[FPU.scala 571:10:freechips.rocketchip.system.DefaultRV32Config.fir@143672.4]
  assign io_out_bits_exc = _T_34_exc; // @[FPU.scala 571:10:freechips.rocketchip.system.DefaultRV32Config.fir@143672.4]
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
  _RAND_3 = {2{`RANDOM}};
  inPipe_bits_in1 = _RAND_3[32:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {2{`RANDOM}};
  inPipe_bits_in2 = _RAND_4[32:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {2{`RANDOM}};
  _T_34_data = _RAND_5[32:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_34_exc = _RAND_6[4:0];
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
      inPipe_bits_in1 <= io_in_bits_in1;
    end
    if (io_in_valid) begin
      inPipe_bits_in2 <= io_in_bits_in2;
    end
    if (inPipe_valid) begin
      if (inPipe_bits_wflags) begin
        if (_T_22) begin
          _T_34_data <= 33'he0400000;
        end else begin
          if (_T_27) begin
            _T_34_data <= inPipe_bits_in1;
          end else begin
            _T_34_data <= inPipe_bits_in2;
          end
        end
      end else begin
        _T_34_data <= fsgnj;
      end
    end
    if (inPipe_valid) begin
      if (inPipe_bits_wflags) begin
        _T_34_exc <= _T_28;
      end else begin
        _T_34_exc <= 5'h0;
      end
    end
  end
endmodule
`endif // __FPToFP

