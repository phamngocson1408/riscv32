`include "include_module.v"
`ifdef __ShiftQueue
module ShiftQueue( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@128123.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@128124.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@128125.4]
  output        io_enq_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@128126.4]
  input         io_enq_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@128126.4]
  input         io_enq_bits_btb_taken, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@128126.4]
  input         io_enq_bits_btb_bridx, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@128126.4]
  input  [4:0]  io_enq_bits_btb_entry, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@128126.4]
  input  [7:0]  io_enq_bits_btb_bht_history, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@128126.4]
  input  [31:0] io_enq_bits_pc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@128126.4]
  input  [31:0] io_enq_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@128126.4]
  input  [1:0]  io_enq_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@128126.4]
  input         io_enq_bits_xcpt_pf_inst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@128126.4]
  input         io_enq_bits_xcpt_ae_inst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@128126.4]
  input         io_enq_bits_replay, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@128126.4]
  input         io_deq_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@128126.4]
  output        io_deq_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@128126.4]
  output        io_deq_bits_btb_taken, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@128126.4]
  output        io_deq_bits_btb_bridx, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@128126.4]
  output [4:0]  io_deq_bits_btb_entry, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@128126.4]
  output [7:0]  io_deq_bits_btb_bht_history, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@128126.4]
  output [31:0] io_deq_bits_pc, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@128126.4]
  output [31:0] io_deq_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@128126.4]
  output        io_deq_bits_xcpt_pf_inst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@128126.4]
  output        io_deq_bits_xcpt_ae_inst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@128126.4]
  output        io_deq_bits_replay, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@128126.4]
  output [4:0]  io_mask // @[:freechips.rocketchip.system.DefaultRV32Config.fir@128126.4]
);
  reg  _T_1_0; // @[ShiftQueue.scala 20:30:freechips.rocketchip.system.DefaultRV32Config.fir@128138.4]
  reg [31:0] _RAND_0;
  reg  _T_1_1; // @[ShiftQueue.scala 20:30:freechips.rocketchip.system.DefaultRV32Config.fir@128138.4]
  reg [31:0] _RAND_1;
  reg  _T_1_2; // @[ShiftQueue.scala 20:30:freechips.rocketchip.system.DefaultRV32Config.fir@128138.4]
  reg [31:0] _RAND_2;
  reg  _T_1_3; // @[ShiftQueue.scala 20:30:freechips.rocketchip.system.DefaultRV32Config.fir@128138.4]
  reg [31:0] _RAND_3;
  reg  _T_1_4; // @[ShiftQueue.scala 20:30:freechips.rocketchip.system.DefaultRV32Config.fir@128138.4]
  reg [31:0] _RAND_4;
  reg  _T_2_0_btb_taken; // @[ShiftQueue.scala 21:25:freechips.rocketchip.system.DefaultRV32Config.fir@128139.4]
  reg [31:0] _RAND_5;
  reg  _T_2_0_btb_bridx; // @[ShiftQueue.scala 21:25:freechips.rocketchip.system.DefaultRV32Config.fir@128139.4]
  reg [31:0] _RAND_6;
  reg [4:0] _T_2_0_btb_entry; // @[ShiftQueue.scala 21:25:freechips.rocketchip.system.DefaultRV32Config.fir@128139.4]
  reg [31:0] _RAND_7;
  reg [7:0] _T_2_0_btb_bht_history; // @[ShiftQueue.scala 21:25:freechips.rocketchip.system.DefaultRV32Config.fir@128139.4]
  reg [31:0] _RAND_8;
  reg [31:0] _T_2_0_pc; // @[ShiftQueue.scala 21:25:freechips.rocketchip.system.DefaultRV32Config.fir@128139.4]
  reg [31:0] _RAND_9;
  reg [31:0] _T_2_0_data; // @[ShiftQueue.scala 21:25:freechips.rocketchip.system.DefaultRV32Config.fir@128139.4]
  reg [31:0] _RAND_10;
  reg  _T_2_0_xcpt_pf_inst; // @[ShiftQueue.scala 21:25:freechips.rocketchip.system.DefaultRV32Config.fir@128139.4]
  reg [31:0] _RAND_11;
  reg  _T_2_0_xcpt_ae_inst; // @[ShiftQueue.scala 21:25:freechips.rocketchip.system.DefaultRV32Config.fir@128139.4]
  reg [31:0] _RAND_12;
  reg  _T_2_0_replay; // @[ShiftQueue.scala 21:25:freechips.rocketchip.system.DefaultRV32Config.fir@128139.4]
  reg [31:0] _RAND_13;
  reg  _T_2_1_btb_taken; // @[ShiftQueue.scala 21:25:freechips.rocketchip.system.DefaultRV32Config.fir@128139.4]
  reg [31:0] _RAND_14;
  reg  _T_2_1_btb_bridx; // @[ShiftQueue.scala 21:25:freechips.rocketchip.system.DefaultRV32Config.fir@128139.4]
  reg [31:0] _RAND_15;
  reg [4:0] _T_2_1_btb_entry; // @[ShiftQueue.scala 21:25:freechips.rocketchip.system.DefaultRV32Config.fir@128139.4]
  reg [31:0] _RAND_16;
  reg [7:0] _T_2_1_btb_bht_history; // @[ShiftQueue.scala 21:25:freechips.rocketchip.system.DefaultRV32Config.fir@128139.4]
  reg [31:0] _RAND_17;
  reg [31:0] _T_2_1_pc; // @[ShiftQueue.scala 21:25:freechips.rocketchip.system.DefaultRV32Config.fir@128139.4]
  reg [31:0] _RAND_18;
  reg [31:0] _T_2_1_data; // @[ShiftQueue.scala 21:25:freechips.rocketchip.system.DefaultRV32Config.fir@128139.4]
  reg [31:0] _RAND_19;
  reg  _T_2_1_xcpt_pf_inst; // @[ShiftQueue.scala 21:25:freechips.rocketchip.system.DefaultRV32Config.fir@128139.4]
  reg [31:0] _RAND_20;
  reg  _T_2_1_xcpt_ae_inst; // @[ShiftQueue.scala 21:25:freechips.rocketchip.system.DefaultRV32Config.fir@128139.4]
  reg [31:0] _RAND_21;
  reg  _T_2_1_replay; // @[ShiftQueue.scala 21:25:freechips.rocketchip.system.DefaultRV32Config.fir@128139.4]
  reg [31:0] _RAND_22;
  reg  _T_2_2_btb_taken; // @[ShiftQueue.scala 21:25:freechips.rocketchip.system.DefaultRV32Config.fir@128139.4]
  reg [31:0] _RAND_23;
  reg  _T_2_2_btb_bridx; // @[ShiftQueue.scala 21:25:freechips.rocketchip.system.DefaultRV32Config.fir@128139.4]
  reg [31:0] _RAND_24;
  reg [4:0] _T_2_2_btb_entry; // @[ShiftQueue.scala 21:25:freechips.rocketchip.system.DefaultRV32Config.fir@128139.4]
  reg [31:0] _RAND_25;
  reg [7:0] _T_2_2_btb_bht_history; // @[ShiftQueue.scala 21:25:freechips.rocketchip.system.DefaultRV32Config.fir@128139.4]
  reg [31:0] _RAND_26;
  reg [31:0] _T_2_2_pc; // @[ShiftQueue.scala 21:25:freechips.rocketchip.system.DefaultRV32Config.fir@128139.4]
  reg [31:0] _RAND_27;
  reg [31:0] _T_2_2_data; // @[ShiftQueue.scala 21:25:freechips.rocketchip.system.DefaultRV32Config.fir@128139.4]
  reg [31:0] _RAND_28;
  reg  _T_2_2_xcpt_pf_inst; // @[ShiftQueue.scala 21:25:freechips.rocketchip.system.DefaultRV32Config.fir@128139.4]
  reg [31:0] _RAND_29;
  reg  _T_2_2_xcpt_ae_inst; // @[ShiftQueue.scala 21:25:freechips.rocketchip.system.DefaultRV32Config.fir@128139.4]
  reg [31:0] _RAND_30;
  reg  _T_2_2_replay; // @[ShiftQueue.scala 21:25:freechips.rocketchip.system.DefaultRV32Config.fir@128139.4]
  reg [31:0] _RAND_31;
  reg  _T_2_3_btb_taken; // @[ShiftQueue.scala 21:25:freechips.rocketchip.system.DefaultRV32Config.fir@128139.4]
  reg [31:0] _RAND_32;
  reg  _T_2_3_btb_bridx; // @[ShiftQueue.scala 21:25:freechips.rocketchip.system.DefaultRV32Config.fir@128139.4]
  reg [31:0] _RAND_33;
  reg [4:0] _T_2_3_btb_entry; // @[ShiftQueue.scala 21:25:freechips.rocketchip.system.DefaultRV32Config.fir@128139.4]
  reg [31:0] _RAND_34;
  reg [7:0] _T_2_3_btb_bht_history; // @[ShiftQueue.scala 21:25:freechips.rocketchip.system.DefaultRV32Config.fir@128139.4]
  reg [31:0] _RAND_35;
  reg [31:0] _T_2_3_pc; // @[ShiftQueue.scala 21:25:freechips.rocketchip.system.DefaultRV32Config.fir@128139.4]
  reg [31:0] _RAND_36;
  reg [31:0] _T_2_3_data; // @[ShiftQueue.scala 21:25:freechips.rocketchip.system.DefaultRV32Config.fir@128139.4]
  reg [31:0] _RAND_37;
  reg  _T_2_3_xcpt_pf_inst; // @[ShiftQueue.scala 21:25:freechips.rocketchip.system.DefaultRV32Config.fir@128139.4]
  reg [31:0] _RAND_38;
  reg  _T_2_3_xcpt_ae_inst; // @[ShiftQueue.scala 21:25:freechips.rocketchip.system.DefaultRV32Config.fir@128139.4]
  reg [31:0] _RAND_39;
  reg  _T_2_3_replay; // @[ShiftQueue.scala 21:25:freechips.rocketchip.system.DefaultRV32Config.fir@128139.4]
  reg [31:0] _RAND_40;
  reg  _T_2_4_btb_taken; // @[ShiftQueue.scala 21:25:freechips.rocketchip.system.DefaultRV32Config.fir@128139.4]
  reg [31:0] _RAND_41;
  reg  _T_2_4_btb_bridx; // @[ShiftQueue.scala 21:25:freechips.rocketchip.system.DefaultRV32Config.fir@128139.4]
  reg [31:0] _RAND_42;
  reg [4:0] _T_2_4_btb_entry; // @[ShiftQueue.scala 21:25:freechips.rocketchip.system.DefaultRV32Config.fir@128139.4]
  reg [31:0] _RAND_43;
  reg [7:0] _T_2_4_btb_bht_history; // @[ShiftQueue.scala 21:25:freechips.rocketchip.system.DefaultRV32Config.fir@128139.4]
  reg [31:0] _RAND_44;
  reg [31:0] _T_2_4_pc; // @[ShiftQueue.scala 21:25:freechips.rocketchip.system.DefaultRV32Config.fir@128139.4]
  reg [31:0] _RAND_45;
  reg [31:0] _T_2_4_data; // @[ShiftQueue.scala 21:25:freechips.rocketchip.system.DefaultRV32Config.fir@128139.4]
  reg [31:0] _RAND_46;
  reg  _T_2_4_xcpt_pf_inst; // @[ShiftQueue.scala 21:25:freechips.rocketchip.system.DefaultRV32Config.fir@128139.4]
  reg [31:0] _RAND_47;
  reg  _T_2_4_xcpt_ae_inst; // @[ShiftQueue.scala 21:25:freechips.rocketchip.system.DefaultRV32Config.fir@128139.4]
  reg [31:0] _RAND_48;
  reg  _T_2_4_replay; // @[ShiftQueue.scala 21:25:freechips.rocketchip.system.DefaultRV32Config.fir@128139.4]
  reg [31:0] _RAND_49;
  wire  _T_4; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@128141.4]
  wire  _T_6; // @[ShiftQueue.scala 29:45:freechips.rocketchip.system.DefaultRV32Config.fir@128143.4]
  wire  _T_7; // @[ShiftQueue.scala 29:28:freechips.rocketchip.system.DefaultRV32Config.fir@128144.4]
  wire  _T_10; // @[ShiftQueue.scala 30:48:freechips.rocketchip.system.DefaultRV32Config.fir@128147.4]
  wire  _T_11; // @[ShiftQueue.scala 30:45:freechips.rocketchip.system.DefaultRV32Config.fir@128148.4]
  wire  _T_12; // @[ShiftQueue.scala 28:10:freechips.rocketchip.system.DefaultRV32Config.fir@128149.4]
  wire  _T_19; // @[ShiftQueue.scala 36:45:freechips.rocketchip.system.DefaultRV32Config.fir@128159.4]
  wire  _T_24; // @[ShiftQueue.scala 29:45:freechips.rocketchip.system.DefaultRV32Config.fir@128165.4]
  wire  _T_25; // @[ShiftQueue.scala 29:28:freechips.rocketchip.system.DefaultRV32Config.fir@128166.4]
  wire  _T_28; // @[ShiftQueue.scala 30:48:freechips.rocketchip.system.DefaultRV32Config.fir@128169.4]
  wire  _T_29; // @[ShiftQueue.scala 30:45:freechips.rocketchip.system.DefaultRV32Config.fir@128170.4]
  wire  _T_30; // @[ShiftQueue.scala 28:10:freechips.rocketchip.system.DefaultRV32Config.fir@128171.4]
  wire  _T_37; // @[ShiftQueue.scala 36:45:freechips.rocketchip.system.DefaultRV32Config.fir@128181.4]
  wire  _T_42; // @[ShiftQueue.scala 29:45:freechips.rocketchip.system.DefaultRV32Config.fir@128187.4]
  wire  _T_43; // @[ShiftQueue.scala 29:28:freechips.rocketchip.system.DefaultRV32Config.fir@128188.4]
  wire  _T_46; // @[ShiftQueue.scala 30:48:freechips.rocketchip.system.DefaultRV32Config.fir@128191.4]
  wire  _T_47; // @[ShiftQueue.scala 30:45:freechips.rocketchip.system.DefaultRV32Config.fir@128192.4]
  wire  _T_48; // @[ShiftQueue.scala 28:10:freechips.rocketchip.system.DefaultRV32Config.fir@128193.4]
  wire  _T_55; // @[ShiftQueue.scala 36:45:freechips.rocketchip.system.DefaultRV32Config.fir@128203.4]
  wire  _T_60; // @[ShiftQueue.scala 29:45:freechips.rocketchip.system.DefaultRV32Config.fir@128209.4]
  wire  _T_61; // @[ShiftQueue.scala 29:28:freechips.rocketchip.system.DefaultRV32Config.fir@128210.4]
  wire  _T_64; // @[ShiftQueue.scala 30:48:freechips.rocketchip.system.DefaultRV32Config.fir@128213.4]
  wire  _T_65; // @[ShiftQueue.scala 30:45:freechips.rocketchip.system.DefaultRV32Config.fir@128214.4]
  wire  _T_66; // @[ShiftQueue.scala 28:10:freechips.rocketchip.system.DefaultRV32Config.fir@128215.4]
  wire  _T_73; // @[ShiftQueue.scala 36:45:freechips.rocketchip.system.DefaultRV32Config.fir@128225.4]
  wire  _T_77; // @[ShiftQueue.scala 29:45:freechips.rocketchip.system.DefaultRV32Config.fir@128230.4]
  wire  _T_81; // @[ShiftQueue.scala 30:48:freechips.rocketchip.system.DefaultRV32Config.fir@128234.4]
  wire  _T_82; // @[ShiftQueue.scala 30:45:freechips.rocketchip.system.DefaultRV32Config.fir@128235.4]
  wire  _T_83; // @[ShiftQueue.scala 28:10:freechips.rocketchip.system.DefaultRV32Config.fir@128236.4]
  wire  _T_90; // @[ShiftQueue.scala 36:45:freechips.rocketchip.system.DefaultRV32Config.fir@128246.4]
  wire [1:0] _T_94; // @[ShiftQueue.scala 52:20:freechips.rocketchip.system.DefaultRV32Config.fir@128260.4]
  wire [2:0] _T_96; // @[ShiftQueue.scala 52:20:freechips.rocketchip.system.DefaultRV32Config.fir@128262.4]

`define MY_ASSIGNMENT
`ifdef MY_ASSIGNMENT
  assign io_enq_ready = _T_1_4 == 1'h0;
  assign io_deq_valid = io_enq_valid | _T_1_0;
  assign _T_10 = _T_1_0 == 1'h0;
  assign io_deq_bits_btb_taken = _T_10 ? io_enq_bits_btb_taken : _T_2_0_btb_taken;
  assign io_deq_bits_btb_bridx = _T_10 ? io_enq_bits_btb_bridx : _T_2_0_btb_bridx;
  assign io_deq_bits_btb_entry = _T_10 ? io_enq_bits_btb_entry : _T_2_0_btb_entry;
  assign io_deq_bits_btb_bht_history = _T_10 ? io_enq_bits_btb_bht_history : _T_2_0_btb_bht_history;
  assign io_deq_bits_pc = _T_10 ? io_enq_bits_pc : _T_2_0_pc;
  assign io_deq_bits_data = _T_10 ? io_enq_bits_data : _T_2_0_data;
  assign io_deq_bits_xcpt_pf_inst = _T_10 ? io_enq_bits_xcpt_pf_inst : _T_2_0_xcpt_pf_inst;
  assign io_deq_bits_xcpt_ae_inst = _T_10 ? io_enq_bits_xcpt_ae_inst : _T_2_0_xcpt_ae_inst;
  assign io_deq_bits_replay = _T_10 ? io_enq_bits_replay : _T_2_0_replay;
  assign io_mask = {_T_1_4,_T_1_3,_T_1_2,_T_1_1,_T_1_0};

  assign _T_4 = io_enq_ready & io_enq_valid;
  assign _T_6 = _T_4 & _T_1_0;
  assign _T_7 = _T_1_1 | _T_6;
  assign _T_24 = _T_4 & _T_1_1;
  assign _T_25 = _T_1_2 | _T_24;
  assign _T_42 = _T_4 & _T_1_2;
  assign _T_43 = _T_1_3 | _T_42;
  assign _T_60 = _T_4 & _T_1_3;
  assign _T_61 = _T_1_4 | _T_60;
  assign _T_77 = _T_4 & _T_1_4;
always @(posedge clock) begin
	if (reset) begin
	  	_T_1_0 <= 1'h0;
		_T_1_1 <= 1'h0;
		_T_1_2 <= 1'h0;
		_T_1_3 <= 1'h0;
		_T_1_4 <= 1'h0;
	end else begin
		if (io_deq_ready) begin
			_T_1_0 <= _T_7;
			_T_1_1 <= _T_25;
			_T_1_2 <= _T_43;
			_T_1_3 <= _T_61;
			_T_1_4 <= _T_77;
		end else begin
			_T_1_0 <= _T_4 | _T_1_0;
			_T_1_1 <= _T_6 | _T_1_1;
			_T_1_2 <= _T_24 | _T_1_2;
			_T_1_3 <= _T_42 | _T_1_3;
			_T_1_4 <= _T_60 | _T_1_4;
		end
	end
end

  assign _T_12 = io_deq_ready ? _T_7 : (_T_4 & _T_10);
always @(posedge clock) begin
	if (_T_12) begin
		if (_T_1_1) begin
			_T_2_0_btb_taken <= _T_2_1_btb_taken;
			_T_2_0_btb_bridx <= _T_2_1_btb_bridx;
			_T_2_0_btb_entry <= _T_2_1_btb_entry;
			_T_2_0_btb_bht_history <= _T_2_1_btb_bht_history;
			_T_2_0_pc <= _T_2_1_pc;
			_T_2_0_data <= _T_2_1_data;
			_T_2_0_xcpt_pf_inst <= _T_2_1_xcpt_pf_inst;
			_T_2_0_xcpt_ae_inst <= _T_2_1_xcpt_ae_inst;
			_T_2_0_replay <= _T_2_1_replay;
		end else begin
			_T_2_0_btb_taken <= io_enq_bits_btb_taken;
			_T_2_0_btb_bridx <= io_enq_bits_btb_bridx;
			_T_2_0_btb_entry <= io_enq_bits_btb_entry;
			_T_2_0_btb_bht_history <= io_enq_bits_btb_bht_history;
			_T_2_0_pc <= io_enq_bits_pc;
			_T_2_0_data <= io_enq_bits_data;
			_T_2_0_xcpt_pf_inst <= io_enq_bits_xcpt_pf_inst;
			_T_2_0_xcpt_ae_inst <= io_enq_bits_xcpt_ae_inst;
			_T_2_0_replay <= io_enq_bits_replay;
		end
	end
end

  assign _T_30 = io_deq_ready ? _T_25 : (_T_6 & !_T_1_1);
always @(posedge clock) begin
	if (_T_30) begin
		if (_T_1_2) begin
			_T_2_1_btb_taken <= _T_2_2_btb_taken;
			_T_2_1_btb_bridx <= _T_2_2_btb_bridx;
			_T_2_1_btb_entry <= _T_2_2_btb_entry;
			_T_2_1_btb_bht_history <= _T_2_2_btb_bht_history;
			_T_2_1_pc <= _T_2_2_pc;
			_T_2_1_data <= _T_2_2_data;
			_T_2_1_xcpt_pf_inst <= _T_2_2_xcpt_pf_inst;
			_T_2_1_xcpt_ae_inst <= _T_2_2_xcpt_ae_inst;
			_T_2_1_replay <= _T_2_2_replay;
		end else begin
			_T_2_1_btb_taken <= io_enq_bits_btb_taken;
			_T_2_1_btb_bridx <= io_enq_bits_btb_bridx;
			_T_2_1_btb_entry <= io_enq_bits_btb_entry;
			_T_2_1_btb_bht_history <= io_enq_bits_btb_bht_history;
			_T_2_1_pc <= io_enq_bits_pc;
			_T_2_1_data <= io_enq_bits_data;
			_T_2_1_xcpt_pf_inst <= io_enq_bits_xcpt_pf_inst;
			_T_2_1_xcpt_ae_inst <= io_enq_bits_xcpt_ae_inst;
			_T_2_1_replay <= io_enq_bits_replay;
		end
	end
end

  assign _T_48 = io_deq_ready ? _T_43 : (_T_24 & !_T_1_2);
always @(posedge clock) begin
	if (_T_48) begin
		if (_T_1_3) begin
			_T_2_2_btb_taken <= _T_2_3_btb_taken;
			_T_2_2_btb_bridx <= _T_2_3_btb_bridx;
			_T_2_2_btb_entry <= _T_2_3_btb_entry;
			_T_2_2_btb_bht_history <= _T_2_3_btb_bht_history;
			_T_2_2_pc <= _T_2_3_pc;
			_T_2_2_data <= _T_2_3_data;
			_T_2_2_xcpt_pf_inst <= _T_2_3_xcpt_pf_inst;
			_T_2_2_xcpt_ae_inst <= _T_2_3_xcpt_ae_inst;
			_T_2_2_replay <= _T_2_3_replay;
		end else begin
			_T_2_2_btb_taken <= io_enq_bits_btb_taken;
			_T_2_2_btb_bridx <= io_enq_bits_btb_bridx;
			_T_2_2_btb_entry <= io_enq_bits_btb_entry;
			_T_2_2_btb_bht_history <= io_enq_bits_btb_bht_history;
			_T_2_2_pc <= io_enq_bits_pc;
			_T_2_2_data <= io_enq_bits_data;
			_T_2_2_xcpt_pf_inst <= io_enq_bits_xcpt_pf_inst;
			_T_2_2_xcpt_ae_inst <= io_enq_bits_xcpt_ae_inst;
			_T_2_2_replay <= io_enq_bits_replay;
		end
	end
end

  assign _T_66 = io_deq_ready ? _T_61 : (_T_42 & !_T_1_3);
always @(posedge clock) begin
	if (_T_66) begin
		if (_T_1_4) begin
			_T_2_3_btb_taken <= _T_2_4_btb_taken;
			_T_2_3_btb_bridx <= _T_2_4_btb_bridx;
			_T_2_3_btb_entry <= _T_2_4_btb_entry;
			_T_2_3_btb_bht_history <= _T_2_4_btb_bht_history;
			_T_2_3_pc <= _T_2_4_pc;
			_T_2_3_data <= _T_2_4_data;
			_T_2_3_xcpt_pf_inst <= _T_2_4_xcpt_pf_inst;
			_T_2_3_xcpt_ae_inst <= _T_2_4_xcpt_ae_inst;
			_T_2_3_replay <= _T_2_4_replay;
		end else begin
			_T_2_3_btb_taken <= io_enq_bits_btb_taken;
			_T_2_3_btb_bridx <= io_enq_bits_btb_bridx;
			_T_2_3_btb_entry <= io_enq_bits_btb_entry;
			_T_2_3_btb_bht_history <= io_enq_bits_btb_bht_history;
			_T_2_3_pc <= io_enq_bits_pc;
			_T_2_3_data <= io_enq_bits_data;
			_T_2_3_xcpt_pf_inst <= io_enq_bits_xcpt_pf_inst;
			_T_2_3_xcpt_ae_inst <= io_enq_bits_xcpt_ae_inst;
			_T_2_3_replay <= io_enq_bits_replay;
		end
	end
end

  assign _T_83 = io_deq_ready ? _T_77 : (_T_60 & !_T_1_4);
always @(posedge clock) begin
	if (_T_83) begin
		_T_2_4_btb_taken <= io_enq_bits_btb_taken;
		_T_2_4_btb_bridx <= io_enq_bits_btb_bridx;
		_T_2_4_btb_entry <= io_enq_bits_btb_entry;
		_T_2_4_btb_bht_history <= io_enq_bits_btb_bht_history;
		_T_2_4_pc <= io_enq_bits_pc;
		_T_2_4_data <= io_enq_bits_data;
		_T_2_4_xcpt_pf_inst <= io_enq_bits_xcpt_pf_inst;
		_T_2_4_xcpt_ae_inst <= io_enq_bits_xcpt_ae_inst;
		_T_2_4_replay <= io_enq_bits_replay;
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
  _T_1_0 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_1_1 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_1_2 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_1_3 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_1_4 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_2_0_btb_taken = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_2_0_btb_bridx = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_2_0_btb_entry = _RAND_7[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_2_0_btb_bht_history = _RAND_8[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_2_0_pc = _RAND_9[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_2_0_data = _RAND_10[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_2_0_xcpt_pf_inst = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  _T_2_0_xcpt_ae_inst = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  _T_2_0_replay = _RAND_13[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  _T_2_1_btb_taken = _RAND_14[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  _T_2_1_btb_bridx = _RAND_15[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  _T_2_1_btb_entry = _RAND_16[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  _T_2_1_btb_bht_history = _RAND_17[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  _T_2_1_pc = _RAND_18[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  _T_2_1_data = _RAND_19[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  _T_2_1_xcpt_pf_inst = _RAND_20[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  _T_2_1_xcpt_ae_inst = _RAND_21[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  _T_2_1_replay = _RAND_22[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  _T_2_2_btb_taken = _RAND_23[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  _T_2_2_btb_bridx = _RAND_24[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  _T_2_2_btb_entry = _RAND_25[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  _T_2_2_btb_bht_history = _RAND_26[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  _T_2_2_pc = _RAND_27[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  _T_2_2_data = _RAND_28[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  _T_2_2_xcpt_pf_inst = _RAND_29[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{`RANDOM}};
  _T_2_2_xcpt_ae_inst = _RAND_30[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{`RANDOM}};
  _T_2_2_replay = _RAND_31[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{`RANDOM}};
  _T_2_3_btb_taken = _RAND_32[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{`RANDOM}};
  _T_2_3_btb_bridx = _RAND_33[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{`RANDOM}};
  _T_2_3_btb_entry = _RAND_34[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{`RANDOM}};
  _T_2_3_btb_bht_history = _RAND_35[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{`RANDOM}};
  _T_2_3_pc = _RAND_36[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{`RANDOM}};
  _T_2_3_data = _RAND_37[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{`RANDOM}};
  _T_2_3_xcpt_pf_inst = _RAND_38[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {1{`RANDOM}};
  _T_2_3_xcpt_ae_inst = _RAND_39[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{`RANDOM}};
  _T_2_3_replay = _RAND_40[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {1{`RANDOM}};
  _T_2_4_btb_taken = _RAND_41[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {1{`RANDOM}};
  _T_2_4_btb_bridx = _RAND_42[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {1{`RANDOM}};
  _T_2_4_btb_entry = _RAND_43[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {1{`RANDOM}};
  _T_2_4_btb_bht_history = _RAND_44[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_45 = {1{`RANDOM}};
  _T_2_4_pc = _RAND_45[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_46 = {1{`RANDOM}};
  _T_2_4_data = _RAND_46[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_47 = {1{`RANDOM}};
  _T_2_4_xcpt_pf_inst = _RAND_47[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_48 = {1{`RANDOM}};
  _T_2_4_xcpt_ae_inst = _RAND_48[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_49 = {1{`RANDOM}};
  _T_2_4_replay = _RAND_49[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end

`endif // MY_ASSIGNMENT

`ifndef MY_ASSIGNMENT
  assign io_enq_ready = _T_1_4 == 1'h0; // @[ShiftQueue.scala 39:16:freechips.rocketchip.system.DefaultRV32Config.fir@128250.4]
  assign io_deq_valid = io_enq_valid | _T_1_0; // @[ShiftQueue.scala 40:16:freechips.rocketchip.system.DefaultRV32Config.fir@128251.4 ShiftQueue.scala 44:40:freechips.rocketchip.system.DefaultRV32Config.fir@128254.6]
  assign _T_10 = _T_1_0 == 1'h0; // @[ShiftQueue.scala 30:48:freechips.rocketchip.system.DefaultRV32Config.fir@128147.4]
  assign io_deq_bits_btb_taken = _T_10 ? io_enq_bits_btb_taken : _T_2_0_btb_taken; // @[ShiftQueue.scala 41:15:freechips.rocketchip.system.DefaultRV32Config.fir@128252.4 ShiftQueue.scala 45:36:freechips.rocketchip.system.DefaultRV32Config.fir@128258.6]
  assign io_deq_bits_btb_bridx = _T_10 ? io_enq_bits_btb_bridx : _T_2_0_btb_bridx; // @[ShiftQueue.scala 41:15:freechips.rocketchip.system.DefaultRV32Config.fir@128252.4 ShiftQueue.scala 45:36:freechips.rocketchip.system.DefaultRV32Config.fir@128258.6]
  assign io_deq_bits_btb_entry = _T_10 ? io_enq_bits_btb_entry : _T_2_0_btb_entry; // @[ShiftQueue.scala 41:15:freechips.rocketchip.system.DefaultRV32Config.fir@128252.4 ShiftQueue.scala 45:36:freechips.rocketchip.system.DefaultRV32Config.fir@128258.6]
  assign io_deq_bits_btb_bht_history = _T_10 ? io_enq_bits_btb_bht_history : _T_2_0_btb_bht_history; // @[ShiftQueue.scala 41:15:freechips.rocketchip.system.DefaultRV32Config.fir@128252.4 ShiftQueue.scala 45:36:freechips.rocketchip.system.DefaultRV32Config.fir@128258.6]
  assign io_deq_bits_pc = _T_10 ? io_enq_bits_pc : _T_2_0_pc; // @[ShiftQueue.scala 41:15:freechips.rocketchip.system.DefaultRV32Config.fir@128252.4 ShiftQueue.scala 45:36:freechips.rocketchip.system.DefaultRV32Config.fir@128258.6]
  assign io_deq_bits_data = _T_10 ? io_enq_bits_data : _T_2_0_data; // @[ShiftQueue.scala 41:15:freechips.rocketchip.system.DefaultRV32Config.fir@128252.4 ShiftQueue.scala 45:36:freechips.rocketchip.system.DefaultRV32Config.fir@128258.6]
  assign io_deq_bits_xcpt_pf_inst = _T_10 ? io_enq_bits_xcpt_pf_inst : _T_2_0_xcpt_pf_inst; // @[ShiftQueue.scala 41:15:freechips.rocketchip.system.DefaultRV32Config.fir@128252.4 ShiftQueue.scala 45:36:freechips.rocketchip.system.DefaultRV32Config.fir@128258.6]
  assign io_deq_bits_xcpt_ae_inst = _T_10 ? io_enq_bits_xcpt_ae_inst : _T_2_0_xcpt_ae_inst; // @[ShiftQueue.scala 41:15:freechips.rocketchip.system.DefaultRV32Config.fir@128252.4 ShiftQueue.scala 45:36:freechips.rocketchip.system.DefaultRV32Config.fir@128258.6]
  assign io_deq_bits_replay = _T_10 ? io_enq_bits_replay : _T_2_0_replay; // @[ShiftQueue.scala 41:15:freechips.rocketchip.system.DefaultRV32Config.fir@128252.4 ShiftQueue.scala 45:36:freechips.rocketchip.system.DefaultRV32Config.fir@128258.6]
  assign io_mask = {_T_96,_T_94}; // @[ShiftQueue.scala 52:11:freechips.rocketchip.system.DefaultRV32Config.fir@128264.4]

always @(posedge clock) begin
    if (reset) begin
      _T_1_0 <= 1'h0;
    end else begin
      if (io_deq_ready) begin
        _T_1_0 <= _T_7;
      end else begin
        _T_1_0 <= _T_19;
      end
    end
    if (reset) begin
      _T_1_1 <= 1'h0;
    end else begin
      if (io_deq_ready) begin
        _T_1_1 <= _T_25;
      end else begin
        _T_1_1 <= _T_37;
      end
    end
    if (reset) begin
      _T_1_2 <= 1'h0;
    end else begin
      if (io_deq_ready) begin
        _T_1_2 <= _T_43;
      end else begin
        _T_1_2 <= _T_55;
      end
    end
    if (reset) begin
      _T_1_3 <= 1'h0;
    end else begin
      if (io_deq_ready) begin
        _T_1_3 <= _T_61;
      end else begin
        _T_1_3 <= _T_73;
      end
    end
    if (reset) begin
      _T_1_4 <= 1'h0;
    end else begin
      if (io_deq_ready) begin
        _T_1_4 <= _T_77;
      end else begin
        _T_1_4 <= _T_90;
      end
    end
    if (_T_12) begin
      if (_T_1_1) begin
        _T_2_0_btb_taken <= _T_2_1_btb_taken;
      end else begin
        _T_2_0_btb_taken <= io_enq_bits_btb_taken;
      end
    end
    if (_T_12) begin
      if (_T_1_1) begin
        _T_2_0_btb_bridx <= _T_2_1_btb_bridx;
      end else begin
        _T_2_0_btb_bridx <= io_enq_bits_btb_bridx;
      end
    end
    if (_T_12) begin
      if (_T_1_1) begin
        _T_2_0_btb_entry <= _T_2_1_btb_entry;
      end else begin
        _T_2_0_btb_entry <= io_enq_bits_btb_entry;
      end
    end
    if (_T_12) begin
      if (_T_1_1) begin
        _T_2_0_btb_bht_history <= _T_2_1_btb_bht_history;
      end else begin
        _T_2_0_btb_bht_history <= io_enq_bits_btb_bht_history;
      end
    end
    if (_T_12) begin
      if (_T_1_1) begin
        _T_2_0_pc <= _T_2_1_pc;
      end else begin
        _T_2_0_pc <= io_enq_bits_pc;
      end
    end
    if (_T_12) begin
      if (_T_1_1) begin
        _T_2_0_data <= _T_2_1_data;
      end else begin
        _T_2_0_data <= io_enq_bits_data;
      end
    end
    if (_T_12) begin
      if (_T_1_1) begin
        _T_2_0_xcpt_pf_inst <= _T_2_1_xcpt_pf_inst;
      end else begin
        _T_2_0_xcpt_pf_inst <= io_enq_bits_xcpt_pf_inst;
      end
    end
    if (_T_12) begin
      if (_T_1_1) begin
        _T_2_0_xcpt_ae_inst <= _T_2_1_xcpt_ae_inst;
      end else begin
        _T_2_0_xcpt_ae_inst <= io_enq_bits_xcpt_ae_inst;
      end
    end
    if (_T_12) begin
      if (_T_1_1) begin
        _T_2_0_replay <= _T_2_1_replay;
      end else begin
        _T_2_0_replay <= io_enq_bits_replay;
      end
    end
    if (_T_30) begin
      if (_T_1_2) begin
        _T_2_1_btb_taken <= _T_2_2_btb_taken;
      end else begin
        _T_2_1_btb_taken <= io_enq_bits_btb_taken;
      end
    end
    if (_T_30) begin
      if (_T_1_2) begin
        _T_2_1_btb_bridx <= _T_2_2_btb_bridx;
      end else begin
        _T_2_1_btb_bridx <= io_enq_bits_btb_bridx;
      end
    end
    if (_T_30) begin
      if (_T_1_2) begin
        _T_2_1_btb_entry <= _T_2_2_btb_entry;
      end else begin
        _T_2_1_btb_entry <= io_enq_bits_btb_entry;
      end
    end
    if (_T_30) begin
      if (_T_1_2) begin
        _T_2_1_btb_bht_history <= _T_2_2_btb_bht_history;
      end else begin
        _T_2_1_btb_bht_history <= io_enq_bits_btb_bht_history;
      end
    end
    if (_T_30) begin
      if (_T_1_2) begin
        _T_2_1_pc <= _T_2_2_pc;
      end else begin
        _T_2_1_pc <= io_enq_bits_pc;
      end
    end
    if (_T_30) begin
      if (_T_1_2) begin
        _T_2_1_data <= _T_2_2_data;
      end else begin
        _T_2_1_data <= io_enq_bits_data;
      end
    end
    if (_T_30) begin
      if (_T_1_2) begin
        _T_2_1_xcpt_pf_inst <= _T_2_2_xcpt_pf_inst;
      end else begin
        _T_2_1_xcpt_pf_inst <= io_enq_bits_xcpt_pf_inst;
      end
    end
    if (_T_30) begin
      if (_T_1_2) begin
        _T_2_1_xcpt_ae_inst <= _T_2_2_xcpt_ae_inst;
      end else begin
        _T_2_1_xcpt_ae_inst <= io_enq_bits_xcpt_ae_inst;
      end
    end
    if (_T_30) begin
      if (_T_1_2) begin
        _T_2_1_replay <= _T_2_2_replay;
      end else begin
        _T_2_1_replay <= io_enq_bits_replay;
      end
    end
    if (_T_48) begin
      if (_T_1_3) begin
        _T_2_2_btb_taken <= _T_2_3_btb_taken;
      end else begin
        _T_2_2_btb_taken <= io_enq_bits_btb_taken;
      end
    end
    if (_T_48) begin
      if (_T_1_3) begin
        _T_2_2_btb_bridx <= _T_2_3_btb_bridx;
      end else begin
        _T_2_2_btb_bridx <= io_enq_bits_btb_bridx;
      end
    end
    if (_T_48) begin
      if (_T_1_3) begin
        _T_2_2_btb_entry <= _T_2_3_btb_entry;
      end else begin
        _T_2_2_btb_entry <= io_enq_bits_btb_entry;
      end
    end
    if (_T_48) begin
      if (_T_1_3) begin
        _T_2_2_btb_bht_history <= _T_2_3_btb_bht_history;
      end else begin
        _T_2_2_btb_bht_history <= io_enq_bits_btb_bht_history;
      end
    end
    if (_T_48) begin
      if (_T_1_3) begin
        _T_2_2_pc <= _T_2_3_pc;
      end else begin
        _T_2_2_pc <= io_enq_bits_pc;
      end
    end
    if (_T_48) begin
      if (_T_1_3) begin
        _T_2_2_data <= _T_2_3_data;
      end else begin
        _T_2_2_data <= io_enq_bits_data;
      end
    end
    if (_T_48) begin
      if (_T_1_3) begin
        _T_2_2_xcpt_pf_inst <= _T_2_3_xcpt_pf_inst;
      end else begin
        _T_2_2_xcpt_pf_inst <= io_enq_bits_xcpt_pf_inst;
      end
    end
    if (_T_48) begin
      if (_T_1_3) begin
        _T_2_2_xcpt_ae_inst <= _T_2_3_xcpt_ae_inst;
      end else begin
        _T_2_2_xcpt_ae_inst <= io_enq_bits_xcpt_ae_inst;
      end
    end
    if (_T_48) begin
      if (_T_1_3) begin
        _T_2_2_replay <= _T_2_3_replay;
      end else begin
        _T_2_2_replay <= io_enq_bits_replay;
      end
    end
    if (_T_66) begin
      if (_T_1_4) begin
        _T_2_3_btb_taken <= _T_2_4_btb_taken;
      end else begin
        _T_2_3_btb_taken <= io_enq_bits_btb_taken;
      end
    end
    if (_T_66) begin
      if (_T_1_4) begin
        _T_2_3_btb_bridx <= _T_2_4_btb_bridx;
      end else begin
        _T_2_3_btb_bridx <= io_enq_bits_btb_bridx;
      end
    end
    if (_T_66) begin
      if (_T_1_4) begin
        _T_2_3_btb_entry <= _T_2_4_btb_entry;
      end else begin
        _T_2_3_btb_entry <= io_enq_bits_btb_entry;
      end
    end
    if (_T_66) begin
      if (_T_1_4) begin
        _T_2_3_btb_bht_history <= _T_2_4_btb_bht_history;
      end else begin
        _T_2_3_btb_bht_history <= io_enq_bits_btb_bht_history;
      end
    end
    if (_T_66) begin
      if (_T_1_4) begin
        _T_2_3_pc <= _T_2_4_pc;
      end else begin
        _T_2_3_pc <= io_enq_bits_pc;
      end
    end
    if (_T_66) begin
      if (_T_1_4) begin
        _T_2_3_data <= _T_2_4_data;
      end else begin
        _T_2_3_data <= io_enq_bits_data;
      end
    end
    if (_T_66) begin
      if (_T_1_4) begin
        _T_2_3_xcpt_pf_inst <= _T_2_4_xcpt_pf_inst;
      end else begin
        _T_2_3_xcpt_pf_inst <= io_enq_bits_xcpt_pf_inst;
      end
    end
    if (_T_66) begin
      if (_T_1_4) begin
        _T_2_3_xcpt_ae_inst <= _T_2_4_xcpt_ae_inst;
      end else begin
        _T_2_3_xcpt_ae_inst <= io_enq_bits_xcpt_ae_inst;
      end
    end
    if (_T_66) begin
      if (_T_1_4) begin
        _T_2_3_replay <= _T_2_4_replay;
      end else begin
        _T_2_3_replay <= io_enq_bits_replay;
      end
    end
    if (_T_83) begin
      _T_2_4_btb_taken <= io_enq_bits_btb_taken;
    end
    if (_T_83) begin
      _T_2_4_btb_bridx <= io_enq_bits_btb_bridx;
    end
    if (_T_83) begin
      _T_2_4_btb_entry <= io_enq_bits_btb_entry;
    end
    if (_T_83) begin
      _T_2_4_btb_bht_history <= io_enq_bits_btb_bht_history;
    end
    if (_T_83) begin
      _T_2_4_pc <= io_enq_bits_pc;
    end
    if (_T_83) begin
      _T_2_4_data <= io_enq_bits_data;
    end
    if (_T_83) begin
      _T_2_4_xcpt_pf_inst <= io_enq_bits_xcpt_pf_inst;
    end
    if (_T_83) begin
      _T_2_4_xcpt_ae_inst <= io_enq_bits_xcpt_ae_inst;
    end
    if (_T_83) begin
      _T_2_4_replay <= io_enq_bits_replay;
    end
end
  assign _T_4 = io_enq_ready & io_enq_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@128141.4]
  assign _T_6 = _T_4 & _T_1_0; // @[ShiftQueue.scala 29:45:freechips.rocketchip.system.DefaultRV32Config.fir@128143.4]
  assign _T_7 = _T_1_1 | _T_6; // @[ShiftQueue.scala 29:28:freechips.rocketchip.system.DefaultRV32Config.fir@128144.4]
  assign _T_12 = io_deq_ready ? _T_7 : _T_11; // @[ShiftQueue.scala 28:10:freechips.rocketchip.system.DefaultRV32Config.fir@128149.4]
  assign _T_24 = _T_4 & _T_1_1; // @[ShiftQueue.scala 29:45:freechips.rocketchip.system.DefaultRV32Config.fir@128165.4]
  assign _T_25 = _T_1_2 | _T_24; // @[ShiftQueue.scala 29:28:freechips.rocketchip.system.DefaultRV32Config.fir@128166.4]
  assign _T_30 = io_deq_ready ? _T_25 : _T_29; // @[ShiftQueue.scala 28:10:freechips.rocketchip.system.DefaultRV32Config.fir@128171.4]
  assign _T_42 = _T_4 & _T_1_2; // @[ShiftQueue.scala 29:45:freechips.rocketchip.system.DefaultRV32Config.fir@128187.4]
  assign _T_43 = _T_1_3 | _T_42; // @[ShiftQueue.scala 29:28:freechips.rocketchip.system.DefaultRV32Config.fir@128188.4]
  assign _T_48 = io_deq_ready ? _T_43 : _T_47; // @[ShiftQueue.scala 28:10:freechips.rocketchip.system.DefaultRV32Config.fir@128193.4]
  assign _T_60 = _T_4 & _T_1_3; // @[ShiftQueue.scala 29:45:freechips.rocketchip.system.DefaultRV32Config.fir@128209.4]
  assign _T_61 = _T_1_4 | _T_60; // @[ShiftQueue.scala 29:28:freechips.rocketchip.system.DefaultRV32Config.fir@128210.4]
  assign _T_66 = io_deq_ready ? _T_61 : _T_65; // @[ShiftQueue.scala 28:10:freechips.rocketchip.system.DefaultRV32Config.fir@128215.4]
  assign _T_77 = _T_4 & _T_1_4; // @[ShiftQueue.scala 29:45:freechips.rocketchip.system.DefaultRV32Config.fir@128230.4]
  assign _T_83 = io_deq_ready ? _T_77 : _T_82; // @[ShiftQueue.scala 28:10:freechips.rocketchip.system.DefaultRV32Config.fir@128236.4]

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
  _T_1_0 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_1_1 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_1_2 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_1_3 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_1_4 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_2_0_btb_taken = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_2_0_btb_bridx = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_2_0_btb_entry = _RAND_7[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_2_0_btb_bht_history = _RAND_8[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_2_0_pc = _RAND_9[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_2_0_data = _RAND_10[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  _T_2_0_xcpt_pf_inst = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  _T_2_0_xcpt_ae_inst = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  _T_2_0_replay = _RAND_13[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  _T_2_1_btb_taken = _RAND_14[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  _T_2_1_btb_bridx = _RAND_15[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  _T_2_1_btb_entry = _RAND_16[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  _T_2_1_btb_bht_history = _RAND_17[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  _T_2_1_pc = _RAND_18[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  _T_2_1_data = _RAND_19[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  _T_2_1_xcpt_pf_inst = _RAND_20[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  _T_2_1_xcpt_ae_inst = _RAND_21[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  _T_2_1_replay = _RAND_22[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  _T_2_2_btb_taken = _RAND_23[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  _T_2_2_btb_bridx = _RAND_24[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  _T_2_2_btb_entry = _RAND_25[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  _T_2_2_btb_bht_history = _RAND_26[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  _T_2_2_pc = _RAND_27[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  _T_2_2_data = _RAND_28[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  _T_2_2_xcpt_pf_inst = _RAND_29[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{`RANDOM}};
  _T_2_2_xcpt_ae_inst = _RAND_30[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{`RANDOM}};
  _T_2_2_replay = _RAND_31[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{`RANDOM}};
  _T_2_3_btb_taken = _RAND_32[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{`RANDOM}};
  _T_2_3_btb_bridx = _RAND_33[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{`RANDOM}};
  _T_2_3_btb_entry = _RAND_34[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{`RANDOM}};
  _T_2_3_btb_bht_history = _RAND_35[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{`RANDOM}};
  _T_2_3_pc = _RAND_36[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{`RANDOM}};
  _T_2_3_data = _RAND_37[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{`RANDOM}};
  _T_2_3_xcpt_pf_inst = _RAND_38[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {1{`RANDOM}};
  _T_2_3_xcpt_ae_inst = _RAND_39[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{`RANDOM}};
  _T_2_3_replay = _RAND_40[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {1{`RANDOM}};
  _T_2_4_btb_taken = _RAND_41[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {1{`RANDOM}};
  _T_2_4_btb_bridx = _RAND_42[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {1{`RANDOM}};
  _T_2_4_btb_entry = _RAND_43[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {1{`RANDOM}};
  _T_2_4_btb_bht_history = _RAND_44[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_45 = {1{`RANDOM}};
  _T_2_4_pc = _RAND_45[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_46 = {1{`RANDOM}};
  _T_2_4_data = _RAND_46[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_47 = {1{`RANDOM}};
  _T_2_4_xcpt_pf_inst = _RAND_47[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_48 = {1{`RANDOM}};
  _T_2_4_xcpt_ae_inst = _RAND_48[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_49 = {1{`RANDOM}};
  _T_2_4_replay = _RAND_49[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end

`endif // MY_ASSIGNMENT

  assign _T_11 = _T_4 & _T_10; // @[ShiftQueue.scala 30:45:freechips.rocketchip.system.DefaultRV32Config.fir@128148.4]
  assign _T_19 = _T_4 | _T_1_0; // @[ShiftQueue.scala 36:45:freechips.rocketchip.system.DefaultRV32Config.fir@128159.4]
  assign _T_28 = _T_1_1 == 1'h0; // @[ShiftQueue.scala 30:48:freechips.rocketchip.system.DefaultRV32Config.fir@128169.4]
  assign _T_29 = _T_6 & _T_28; // @[ShiftQueue.scala 30:45:freechips.rocketchip.system.DefaultRV32Config.fir@128170.4]
  assign _T_37 = _T_6 | _T_1_1; // @[ShiftQueue.scala 36:45:freechips.rocketchip.system.DefaultRV32Config.fir@128181.4]
  assign _T_46 = _T_1_2 == 1'h0; // @[ShiftQueue.scala 30:48:freechips.rocketchip.system.DefaultRV32Config.fir@128191.4]
  assign _T_47 = _T_24 & _T_46; // @[ShiftQueue.scala 30:45:freechips.rocketchip.system.DefaultRV32Config.fir@128192.4]
  assign _T_55 = _T_24 | _T_1_2; // @[ShiftQueue.scala 36:45:freechips.rocketchip.system.DefaultRV32Config.fir@128203.4]
  assign _T_64 = _T_1_3 == 1'h0; // @[ShiftQueue.scala 30:48:freechips.rocketchip.system.DefaultRV32Config.fir@128213.4]
  assign _T_65 = _T_42 & _T_64; // @[ShiftQueue.scala 30:45:freechips.rocketchip.system.DefaultRV32Config.fir@128214.4]
  assign _T_73 = _T_42 | _T_1_3; // @[ShiftQueue.scala 36:45:freechips.rocketchip.system.DefaultRV32Config.fir@128225.4]
  assign _T_81 = _T_1_4 == 1'h0; // @[ShiftQueue.scala 30:48:freechips.rocketchip.system.DefaultRV32Config.fir@128234.4]
  assign _T_82 = _T_60 & _T_81; // @[ShiftQueue.scala 30:45:freechips.rocketchip.system.DefaultRV32Config.fir@128235.4]
  assign _T_90 = _T_60 | _T_1_4; // @[ShiftQueue.scala 36:45:freechips.rocketchip.system.DefaultRV32Config.fir@128246.4]
  assign _T_94 = {_T_1_1,_T_1_0}; // @[ShiftQueue.scala 52:20:freechips.rocketchip.system.DefaultRV32Config.fir@128260.4]
  assign _T_96 = {_T_1_4,_T_1_3,_T_1_2}; // @[ShiftQueue.scala 52:20:freechips.rocketchip.system.DefaultRV32Config.fir@128262.4]
  always @(posedge clock) begin
  end
endmodule
`endif // __ShiftQueue

