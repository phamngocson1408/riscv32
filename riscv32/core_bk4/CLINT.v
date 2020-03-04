`include "include_module.v"
`ifdef __CLINT
module CLINT(
  input         clock, 
  input         reset,
  output        auto_int_out_0,
  output        auto_int_out_1,
  output        auto_in_a_ready,
  input         auto_in_a_valid,
  input  [2:0]  auto_in_a_bits_opcode,
  input  [2:0]  auto_in_a_bits_param,
  input  [1:0]  auto_in_a_bits_size, 
  input  [9:0]  auto_in_a_bits_source,
  input  [25:0] auto_in_a_bits_address,
  input  [3:0]  auto_in_a_bits_mask,
  input  [31:0] auto_in_a_bits_data,
  input         auto_in_a_bits_corrupt,
  input         auto_in_d_ready,
  output        auto_in_d_valid,
  output [2:0]  auto_in_d_bits_opcode,
  output [1:0]  auto_in_d_bits_size,
  output [9:0]  auto_in_d_bits_source, 
  output [31:0] auto_in_d_bits_data,
  input         io_rtcTick 
);
  wire  TLMonitor_clock;
  wire  TLMonitor_reset;
  wire  TLMonitor_io_in_a_ready;
  wire  TLMonitor_io_in_a_valid;
  wire [2:0] TLMonitor_io_in_a_bits_opcode;
  wire [2:0] TLMonitor_io_in_a_bits_param;
  wire [1:0] TLMonitor_io_in_a_bits_size;
  wire [9:0] TLMonitor_io_in_a_bits_source; 
  wire [25:0] TLMonitor_io_in_a_bits_address;
  wire [3:0] TLMonitor_io_in_a_bits_mask;
  wire  TLMonitor_io_in_a_bits_corrupt;
  wire  TLMonitor_io_in_d_ready;
  wire  TLMonitor_io_in_d_valid;
  wire [2:0] TLMonitor_io_in_d_bits_opcode; 
  wire [1:0] TLMonitor_io_in_d_bits_size;
  wire [9:0] TLMonitor_io_in_d_bits_source; 
  reg [63:0] time_;
  reg [63:0] _RAND_0;
  reg [63:0] timecmp_0; 
  reg [63:0] _RAND_1;
  reg  ipi_0;
  reg [31:0] _RAND_2;
  wire [13:0] _T_59_bits_index; 
  TLMonitor_33 TLMonitor (
    .clock(TLMonitor_clock),
    .reset(TLMonitor_reset),
    .io_in_a_ready(TLMonitor_io_in_a_ready),
    .io_in_a_valid(TLMonitor_io_in_a_valid),
    .io_in_a_bits_opcode(TLMonitor_io_in_a_bits_opcode),
    .io_in_a_bits_param(TLMonitor_io_in_a_bits_param),
    .io_in_a_bits_size(TLMonitor_io_in_a_bits_size),
    .io_in_a_bits_source(TLMonitor_io_in_a_bits_source),
    .io_in_a_bits_address(TLMonitor_io_in_a_bits_address),
    .io_in_a_bits_mask(TLMonitor_io_in_a_bits_mask),
    .io_in_a_bits_corrupt(TLMonitor_io_in_a_bits_corrupt),
    .io_in_d_ready(TLMonitor_io_in_d_ready),
    .io_in_d_valid(TLMonitor_io_in_d_valid),
    .io_in_d_bits_opcode(TLMonitor_io_in_d_bits_opcode),
    .io_in_d_bits_size(TLMonitor_io_in_d_bits_size),
    .io_in_d_bits_source(TLMonitor_io_in_d_bits_source)
  );

`define MY_ASSIGNMENT
`ifdef MY_ASSIGNMENT
  assign _T_59_bits_index = auto_in_a_bits_address[15:2];

  assign auto_int_out_0 = ipi_0;
  assign auto_int_out_1 = time_ >= timecmp_0;
  assign auto_in_a_ready = auto_in_d_ready;
  assign auto_in_d_valid = auto_in_a_valid;

  wire _T_60 = auto_in_a_bits_opcode == 3'h4;
  assign auto_in_d_bits_opcode = {{2'd0}, _T_60};

  wire [11:0] _T_62 = {auto_in_a_bits_source,auto_in_a_bits_size};
  assign auto_in_d_bits_size = _T_62[1:0];
  assign auto_in_d_bits_source = _T_62[11:2];

  wire [13:0] _T_66 = _T_59_bits_index & 14'hffe;
  wire _T_70 = _T_66 == 14'h0; 
  wire _T_74 = _T_66 == 14'hffe; 
  wire [2:0] _T_567 = {_T_59_bits_index[13],_T_59_bits_index[12],_T_59_bits_index[0]};
  wire _GEN_57 = 3'h5 == _T_567 ? _T_74 
		: 3'h4 == _T_567 ? _T_74 
		: 3'h3 == _T_567 ? _T_70 
		: 3'h2 == _T_567 ? _T_70 
		: ((3'h1 == _T_567) | _T_70);
  wire _GEN_59 = (3'h7 == _T_567) | (3'h6 == _T_567) | _GEN_57;
  wire [31:0] _GEN_67 = 3'h7 == _T_567 ? 32'h0 
		: 3'h6 == _T_567 ? 32'h0 
		: 3'h5 == _T_567 ? {time_[63:56],time_[55:48],time_[47:40],time_[39:32]} 
		: 3'h4 == _T_567 ? {time_[31:24],time_[23:16],time_[15:8],time_[7:0]} 
		: 3'h3 == _T_567 ? {timecmp_0[63:56],timecmp_0[55:48],timecmp_0[47:40],timecmp_0[39:32]} 
		: 3'h2 == _T_567 ? {timecmp_0[31:24],timecmp_0[23:16],timecmp_0[15:8],timecmp_0[7:0]} 
		: 3'h1 == _T_567 ? 32'h0 
		: {{30'd0}, 1'h0,ipi_0};
  assign auto_in_d_bits_data = _GEN_59 ? _GEN_67 : 32'h0;

  assign TLMonitor_clock = clock; 
  assign TLMonitor_reset = reset;
  assign TLMonitor_io_in_a_ready = auto_in_d_ready;
  assign TLMonitor_io_in_a_valid = auto_in_a_valid;
  assign TLMonitor_io_in_a_bits_opcode = auto_in_a_bits_opcode; 
  assign TLMonitor_io_in_a_bits_param = auto_in_a_bits_param; 
  assign TLMonitor_io_in_a_bits_size = auto_in_a_bits_size;
  assign TLMonitor_io_in_a_bits_source = auto_in_a_bits_source;
  assign TLMonitor_io_in_a_bits_address = auto_in_a_bits_address;
  assign TLMonitor_io_in_a_bits_mask = auto_in_a_bits_mask;
  assign TLMonitor_io_in_a_bits_corrupt = auto_in_a_bits_corrupt;
  assign TLMonitor_io_in_d_ready = auto_in_d_ready; 
  assign TLMonitor_io_in_d_valid = auto_in_a_valid;
  assign TLMonitor_io_in_d_bits_opcode = {{2'd0}, _T_60}; 
  assign TLMonitor_io_in_d_bits_size = _T_62[1:0];
  assign TLMonitor_io_in_d_bits_source = _T_62[11:2];
// Passed
  wire [7:0] _T_102 = auto_in_a_bits_mask[0] ? 8'hff : 8'h0;
  wire [7:0] _T_104 = auto_in_a_bits_mask[1] ? 8'hff : 8'h0;
  wire [7:0] _T_106 = auto_in_a_bits_mask[2] ? 8'hff : 8'h0;
  wire [7:0] _T_108 = auto_in_a_bits_mask[3] ? 8'hff : 8'h0;
  wire [31:0] _T_111 = {_T_108,_T_106,_T_104,_T_102};
  wire _T_461 = _T_111[7:0] == 8'hff; 
  wire [7:0] _T_593 = 8'h1 << _T_567;
  wire _T_740 = auto_in_a_valid & auto_in_d_ready & !_T_60;
  wire _T_763 = _T_740 & _T_593[4] & _T_74;
  wire _T_269 = _T_763 & _T_461;
  wire _T_484 = _T_111[15:8] == 8'hff;
  wire _T_292 = _T_763 & _T_484;
  wire _T_509 = _T_111[23:16] == 8'hff;
  wire _T_317 = _T_763 & _T_509; 
  wire _T_534 = _T_111[31:24] == 8'hff;
  wire _T_342 = _T_763 & _T_534;
  wire _T_768 = _T_740 & _T_593[5] & _T_74;
  wire _T_367 = _T_768 & _T_461;
  wire _T_390 = _T_768 & _T_484;
  wire _T_415 = _T_768 & _T_509;
  wire _T_440 = _T_768 & _T_534;
  wire _T_51 = _T_269 
		| _T_292 
		| _T_317 
		| _T_342 
		| _T_367 
		| _T_390 
		| _T_415 
		| _T_440; 
  wire [7:0] _GEN_9 = _T_292 ? auto_in_a_bits_data[15:8] : time_[15:8];
  wire [7:0] _GEN_8 = _T_269 ? auto_in_a_bits_data[7:0] : time_[7:0];
  wire [7:0] _GEN_11 = _T_342 ? auto_in_a_bits_data[31:24] : time_[31:24];
  wire [7:0] _GEN_10 = _T_317 ? auto_in_a_bits_data[23:16] : time_[23:16];
  wire [7:0] _GEN_13 = _T_390 ? auto_in_a_bits_data[15:8] : time_[47:40];
  wire [7:0] _GEN_12 = _T_367 ? auto_in_a_bits_data[7:0] : time_[39:32];
  wire [7:0] _GEN_15 = _T_440 ? auto_in_a_bits_data[31:24] : time_[63:56];
  wire [7:0] _GEN_14 = _T_415 ? auto_in_a_bits_data[23:16] : time_[55:48];
always @(posedge clock) begin
	if (reset) begin
		time_ <= 64'h0;
	end else begin
		if (_T_51) begin
			time_ <= {_GEN_15,_GEN_14,_GEN_13,_GEN_12,_GEN_11,_GEN_10,_GEN_9,_GEN_8};
		end else begin
			if (io_rtcTick) begin
				time_ <= time_ + 64'h1;
			end
		end
	end
end

  wire _T_753 = _T_740 & _T_593[2] & _T_70;
  wire _T_465 = _T_753 & _T_461;
  wire _T_488 = _T_753 & _T_484;
  wire _T_513 = _T_753 & _T_509;
  wire _T_538 = _T_753 & _T_534;
  wire _T_758 = _T_740 & _T_593[3] & _T_70; 
  wire _T_171 = _T_758 & _T_461;
  wire _T_194 = _T_758 & _T_484;
  wire _T_219 = _T_758 & _T_509;
  wire _T_244 = _T_758 & _T_534;
  wire _T_24 = _T_465 
		| _T_488 
		| _T_513 
		| _T_538 
		| _T_171 
		| _T_194 
		| _T_219 
		| _T_244;
  wire [7:0] _GEN_5 = _T_194 ? auto_in_a_bits_data[15:8] : timecmp_0[47:40];
  wire [7:0] _GEN_4 = _T_171 ? auto_in_a_bits_data[7:0] : timecmp_0[39:32]; 
  wire [7:0] _GEN_7 = _T_244 ? auto_in_a_bits_data[31:24] : timecmp_0[63:56];
  wire [7:0] _GEN_6 = _T_219 ? auto_in_a_bits_data[23:16] : timecmp_0[55:48];
  wire [7:0] _GEN_19 = _T_538 ? auto_in_a_bits_data[31:24] : timecmp_0[31:24];
  wire [7:0] _GEN_18 = _T_513 ? auto_in_a_bits_data[23:16] : timecmp_0[23:16];
  wire [7:0] _GEN_17 = _T_488 ? auto_in_a_bits_data[15:8] : timecmp_0[15:8];
  wire [7:0] _GEN_16 = _T_465 ? auto_in_a_bits_data[7:0] : timecmp_0[7:0];
always @(posedge clock) begin
	if (_T_24) begin
		timecmp_0 <= {_GEN_7,_GEN_6,_GEN_5,_GEN_4,_GEN_19,_GEN_18,_GEN_17,_GEN_16};
	end
end

always @(posedge clock) begin
	if (reset) begin
		ipi_0 <= 1'h0;
	end else begin
		if (_T_740 & _T_593[0] & _T_70 & _T_111[0]) begin
			ipi_0 <= auto_in_a_bits_data[0];
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
  _RAND_0 = {2{`RANDOM}};
  time_ = _RAND_0[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {2{`RANDOM}};
  timecmp_0 = _RAND_1[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  ipi_0 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
// Passed
`endif // MY_ASSIGNMENT

endmodule
`endif // __CLINT

