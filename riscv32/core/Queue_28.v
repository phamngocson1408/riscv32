`include "include_module.v"
`ifdef __Queue_28
module Queue_28(
  input        clock,
  input        reset,
  output       io_enq_ready,
  input        io_enq_valid,
  input  [1:0] io_enq_bits_sink,
  output       io_deq_valid,
  output [1:0] io_deq_bits_sink
);
  reg [1:0] _T_sink [0:1];
  reg [31:0] _RAND_0;
  wire [1:0] _T_sink__T_18_data;
  wire  _T_sink__T_18_addr;
  wire [1:0] _T_sink__T_10_data;
  wire  _T_sink__T_10_addr;
  wire  _T_sink__T_10_mask;
  wire  _T_sink__T_10_en;
  reg  value;
  reg [31:0] _RAND_1;
  reg  value_1;
  reg [31:0] _RAND_2;
  reg  _T_1;
  reg [31:0] _RAND_3;

  assign _T_sink__T_18_addr = value_1;
  assign _T_sink__T_18_data = _T_sink[_T_sink__T_18_addr]; 
  assign _T_sink__T_10_data = io_enq_bits_sink;
  assign _T_sink__T_10_addr = value;
  assign _T_sink__T_10_mask = 1'h1;
  assign _T_sink__T_10_en = io_enq_ready & io_enq_valid;

  assign io_enq_ready = ((value == value_1) & _T_1) == 1'h0;
  assign io_deq_valid = ((value == value_1) & !_T_1) == 1'h0;
  assign io_deq_bits_sink = _T_sink__T_18_data;

always @(posedge clock) begin
    if(_T_sink__T_10_en & _T_sink__T_10_mask) begin
      _T_sink[_T_sink__T_10_addr] <= _T_sink__T_10_data; 
    end

    if (reset) begin
      value <= 1'h0;
    end else begin
      if (io_enq_ready & io_enq_valid) begin
        value <= value + 1'h1;
      end
    end

    if (reset) begin
      value_1 <= 1'h0;
    end else begin
      if (io_deq_valid) begin
        value_1 <= value_1 + 1'h1;
      end
    end

    if (reset) begin
      _T_1 <= 1'h0;
    end else begin
      if ((io_enq_ready & io_enq_valid) != io_deq_valid) begin
        _T_1 <= io_enq_ready & io_enq_valid;
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
  _RAND_0 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    _T_sink[initvar] = _RAND_0[1:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  value = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  value_1 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_1 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
endmodule
`endif // __Queue_28

