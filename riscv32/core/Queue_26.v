`include "include_module.v"
`ifdef __Queue_26
module Queue_26( 
  input         clock,
  input         reset,
  output        io_enq_ready,
  input         io_enq_valid,
  input  [1:0]  io_enq_bits_param,
  input  [31:0] io_enq_bits_address,
  input         io_deq_ready,
  output        io_deq_valid,
  output [2:0]  io_deq_bits_opcode,
  output [1:0]  io_deq_bits_param,
  output [3:0]  io_deq_bits_size,
  output [1:0]  io_deq_bits_source,
  output [31:0] io_deq_bits_address,
  output [3:0]  io_deq_bits_mask,
  output        io_deq_bits_corrupt
);
  reg [2:0] _T_opcode [0:1];
  reg [31:0] _RAND_0;
  wire [2:0] _T_opcode__T_18_data;
  wire  _T_opcode__T_18_addr;
  wire [2:0] _T_opcode__T_10_data;
  wire  _T_opcode__T_10_addr;
  wire  _T_opcode__T_10_mask;
  wire  _T_opcode__T_10_en;
  reg [1:0] _T_param [0:1];
  reg [31:0] _RAND_1;
  wire [1:0] _T_param__T_18_data;
  wire  _T_param__T_18_addr;
  wire [1:0] _T_param__T_10_data;
  wire  _T_param__T_10_addr;
  wire  _T_param__T_10_mask;
  wire  _T_param__T_10_en;
  reg [3:0] _T_size [0:1];
  reg [31:0] _RAND_2;
  wire [3:0] _T_size__T_18_data;
  wire  _T_size__T_18_addr;
  wire [3:0] _T_size__T_10_data;
  wire  _T_size__T_10_addr;
  wire  _T_size__T_10_mask;
  wire  _T_size__T_10_en;
  reg [1:0] _T_source [0:1];
  reg [31:0] _RAND_3;
  wire [1:0] _T_source__T_18_data;
  wire  _T_source__T_18_addr;
  wire [1:0] _T_source__T_10_data;
  wire  _T_source__T_10_addr;
  wire  _T_source__T_10_mask;
  wire  _T_source__T_10_en;
  reg [31:0] _T_address [0:1]; 
  reg [31:0] _RAND_4;
  wire [31:0] _T_address__T_18_data;
  wire  _T_address__T_18_addr;
  wire [31:0] _T_address__T_10_data;
  wire  _T_address__T_10_addr;
  wire  _T_address__T_10_mask;
  wire  _T_address__T_10_en;
  reg [3:0] _T_mask [0:1];
  reg [31:0] _RAND_5;
  wire [3:0] _T_mask__T_18_data;
  wire  _T_mask__T_18_addr;
  wire [3:0] _T_mask__T_10_data;
  wire  _T_mask__T_10_addr;
  wire  _T_mask__T_10_mask;
  wire  _T_mask__T_10_en;
  reg  _T_corrupt [0:1];
  reg [31:0] _RAND_6;
  wire  _T_corrupt__T_18_data;
  wire  _T_corrupt__T_18_addr;
  wire  _T_corrupt__T_10_data;
  wire  _T_corrupt__T_10_addr;
  wire  _T_corrupt__T_10_mask;
  wire  _T_corrupt__T_10_en;
  reg  value;
  reg [31:0] _RAND_7;
  reg  value_1;
  reg [31:0] _RAND_8;
  reg  _T_1;
  reg [31:0] _RAND_9;

  assign _T_opcode__T_18_addr = value_1;
  assign _T_opcode__T_18_data = _T_opcode[_T_opcode__T_18_addr];
  assign _T_opcode__T_10_data = 3'h6;
  assign _T_opcode__T_10_addr = value;
  assign _T_opcode__T_10_mask = 1'h1;
  assign _T_opcode__T_10_en = io_enq_ready & io_enq_valid;

  assign _T_param__T_18_addr = value_1;
  assign _T_param__T_18_data = _T_param[_T_param__T_18_addr];
  assign _T_param__T_10_data = io_enq_bits_param;
  assign _T_param__T_10_addr = value;
  assign _T_param__T_10_mask = 1'h1;
  assign _T_param__T_10_en = io_enq_ready & io_enq_valid;

  assign _T_size__T_18_addr = value_1;
  assign _T_size__T_18_data = _T_size[_T_size__T_18_addr];
  assign _T_size__T_10_data = 4'h6;
  assign _T_size__T_10_addr = value;
  assign _T_size__T_10_mask = 1'h1;
  assign _T_size__T_10_en = io_enq_ready & io_enq_valid;

  assign _T_source__T_18_addr = value_1;
  assign _T_source__T_18_data = _T_source[_T_source__T_18_addr];
  assign _T_source__T_10_data = 2'h0;
  assign _T_source__T_10_addr = value;
  assign _T_source__T_10_mask = 1'h1;
  assign _T_source__T_10_en = io_enq_ready & io_enq_valid;

  assign _T_address__T_18_addr = value_1;
  assign _T_address__T_18_data = _T_address[_T_address__T_18_addr];
  assign _T_address__T_10_data = io_enq_bits_address;
  assign _T_address__T_10_addr = value;
  assign _T_address__T_10_mask = 1'h1;
  assign _T_address__T_10_en = io_enq_ready & io_enq_valid;

  assign _T_mask__T_18_addr = value_1;
  assign _T_mask__T_18_data = _T_mask[_T_mask__T_18_addr];
  assign _T_mask__T_10_data = 4'hf;
  assign _T_mask__T_10_addr = value;
  assign _T_mask__T_10_mask = 1'h1;
  assign _T_mask__T_10_en = io_enq_ready & io_enq_valid;

  assign _T_corrupt__T_18_addr = value_1;
  assign _T_corrupt__T_18_data = _T_corrupt[_T_corrupt__T_18_addr];
  assign _T_corrupt__T_10_data = 1'h0;
  assign _T_corrupt__T_10_addr = value;
  assign _T_corrupt__T_10_mask = 1'h1;
  assign _T_corrupt__T_10_en = io_enq_ready & io_enq_valid;

  assign io_enq_ready = ((value == value_1) & _T_1) == 1'h0;
  assign io_deq_valid = ((value == value_1) & !_T_1) == 1'h0;
  assign io_deq_bits_opcode = _T_opcode__T_18_data;
  assign io_deq_bits_param = _T_param__T_18_data;
  assign io_deq_bits_size = _T_size__T_18_data;
  assign io_deq_bits_source = _T_source__T_18_data;
  assign io_deq_bits_address = _T_address__T_18_data;
  assign io_deq_bits_mask = _T_mask__T_18_data;
  assign io_deq_bits_corrupt = _T_corrupt__T_18_data;

always @(posedge clock) begin
    if(_T_opcode__T_10_en & _T_opcode__T_10_mask) begin
      _T_opcode[_T_opcode__T_10_addr] <= _T_opcode__T_10_data;
    end
    if(_T_param__T_10_en & _T_param__T_10_mask) begin
      _T_param[_T_param__T_10_addr] <= _T_param__T_10_data;
    end
    if(_T_size__T_10_en & _T_size__T_10_mask) begin
      _T_size[_T_size__T_10_addr] <= _T_size__T_10_data;
    end
    if(_T_source__T_10_en & _T_source__T_10_mask) begin
      _T_source[_T_source__T_10_addr] <= _T_source__T_10_data;
    end
    if(_T_address__T_10_en & _T_address__T_10_mask) begin
      _T_address[_T_address__T_10_addr] <= _T_address__T_10_data;
    end
    if(_T_mask__T_10_en & _T_mask__T_10_mask) begin
      _T_mask[_T_mask__T_10_addr] <= _T_mask__T_10_data;
    end
    if(_T_corrupt__T_10_en & _T_corrupt__T_10_mask) begin
      _T_corrupt[_T_corrupt__T_10_addr] <= _T_corrupt__T_10_data;
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
      if (io_deq_ready & io_deq_valid) begin
        value_1 <= value_1 + 1'h1;
      end
    end

    if (reset) begin
      _T_1 <= 1'h0;
    end else begin
      if ((io_enq_ready & io_enq_valid) != (io_deq_ready & io_deq_valid)) begin
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
    _T_opcode[initvar] = _RAND_0[2:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_1 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    _T_param[initvar] = _RAND_1[1:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_2 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    _T_size[initvar] = _RAND_2[3:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_3 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    _T_source[initvar] = _RAND_3[1:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_4 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    _T_address[initvar] = _RAND_4[31:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_5 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    _T_mask[initvar] = _RAND_5[3:0];
  `endif // RANDOMIZE_MEM_INIT
  _RAND_6 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 2; initvar = initvar+1)
    _T_corrupt[initvar] = _RAND_6[0:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  value = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  value_1 = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_1 = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
endmodule
`endif // __Queue_26

