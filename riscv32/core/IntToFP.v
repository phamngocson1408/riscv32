`include "include_module.v"
`ifdef __IntToFP
module IntToFP(
  input         clock,
  input         reset,
  input         io_in_valid,
  input         io_in_bits_wflags,
  input  [2:0]  io_in_bits_rm,
  input  [1:0]  io_in_bits_typ,
  input  [31:0] io_in_bits_in1,
  output [32:0] io_out_bits_data,
  output [4:0]  io_out_bits_exc
);
  wire [31:0] my_recFNFromFN_io_in;
  wire [32:0] my_recFNFromFN_io_out;
  wire  INToRecFN_io_signedIn; 
  wire [31:0] INToRecFN_io_in;
  wire [2:0] INToRecFN_io_roundingMode;
  wire [32:0] INToRecFN_io_out;
  wire [4:0] INToRecFN_io_exceptionFlags;
  reg  inPipe_valid;
  reg [31:0] _RAND_0;
  reg  inPipe_bits_wflags; 
  reg [31:0] _RAND_1;
  reg [2:0] inPipe_bits_rm; 
  reg [31:0] _RAND_2;
  reg [1:0] inPipe_bits_typ;
  reg [31:0] _RAND_3;
  reg [31:0] inPipe_bits_in1;
  reg [31:0] _RAND_4;
  reg [32:0] mux_data;
  reg [63:0] _RAND_5;
  reg [4:0] mux_exc; 
  reg [31:0] _RAND_6;

  my_recFNFromFN my_recFNFromFN ( // @[FPU.scala 261
    .io_in(my_recFNFromFN_io_in),
    .io_out(my_recFNFromFN_io_out)
  );
  INToRecFN INToRecFN ( // @[FPU.scala 522
    .io_signedIn(INToRecFN_io_signedIn),
    .io_in(INToRecFN_io_in),
    .io_roundingMode(INToRecFN_io_roundingMode),
    .io_out(INToRecFN_io_out),
    .io_exceptionFlags(INToRecFN_io_exceptionFlags)
  );

  assign io_out_bits_data = mux_data;
  assign io_out_bits_exc = mux_exc;
  assign my_recFNFromFN_io_in = inPipe_bits_in1; 
  assign INToRecFN_io_signedIn = ~ inPipe_bits_typ[0];
  assign INToRecFN_io_in = $unsigned($signed(inPipe_bits_in1));
  assign INToRecFN_io_roundingMode = inPipe_bits_rm;

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
        mux_data <= INToRecFN_io_out;
      end else begin
        mux_data <= my_recFNFromFN_io_out;
      end
    end
    if (inPipe_valid) begin
      if (inPipe_bits_wflags) begin
        mux_exc <= INToRecFN_io_exceptionFlags;
      end else begin
        mux_exc <= 5'h0;
      end
    end
  end

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
  mux_data = _RAND_5[32:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  mux_exc = _RAND_6[4:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
endmodule
`endif // __IntToFP

