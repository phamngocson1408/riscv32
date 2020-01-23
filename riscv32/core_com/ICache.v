`include "include_module.v"
`ifdef __ICache
module ICache(
  input         clock,
  input         reset,
  input         auto_master_out_a_ready,
  output        auto_master_out_a_valid,
  output [31:0] auto_master_out_a_bits_address,
  input         auto_master_out_d_valid,
  input  [2:0]  auto_master_out_d_bits_opcode,
  input  [3:0]  auto_master_out_d_bits_size,
  input  [31:0] auto_master_out_d_bits_data,
  input         auto_master_out_d_bits_corrupt,
  output        io_req_ready,
  input         io_req_valid,
  input  [31:0] io_req_bits_addr,
  input  [31:0] io_s1_paddr,
  input         io_s1_kill,
  input         io_s2_kill,
  output        io_resp_valid,
  output [31:0] io_resp_bits_data,
  output        io_resp_bits_ae,
  input         io_invalidate
);

  wire  MaxPeriodFibonacciLFSR_clock;
  wire  MaxPeriodFibonacciLFSR_reset;
  wire  MaxPeriodFibonacciLFSR_io_increment;
  wire  MaxPeriodFibonacciLFSR_io_out_0;
  wire  MaxPeriodFibonacciLFSR_io_out_1;
  wire  MaxPeriodFibonacciLFSR_io_out_2;
  wire  MaxPeriodFibonacciLFSR_io_out_3;
  wire  MaxPeriodFibonacciLFSR_io_out_4;
  wire  MaxPeriodFibonacciLFSR_io_out_5;
  wire  MaxPeriodFibonacciLFSR_io_out_6;
  wire  MaxPeriodFibonacciLFSR_io_out_7;
  wire  MaxPeriodFibonacciLFSR_io_out_8;
  wire  MaxPeriodFibonacciLFSR_io_out_9;
  wire  MaxPeriodFibonacciLFSR_io_out_10;
  wire  MaxPeriodFibonacciLFSR_io_out_11;
  wire  MaxPeriodFibonacciLFSR_io_out_12;
  wire  MaxPeriodFibonacciLFSR_io_out_13;
  wire  MaxPeriodFibonacciLFSR_io_out_14;
  wire  MaxPeriodFibonacciLFSR_io_out_15;
  wire [5:0] tag_array_RW0_addr;
  wire  tag_array_RW0_en;
  wire  tag_array_RW0_clk;
  wire  tag_array_RW0_wmode;
  wire [20:0] tag_array_RW0_wdata_0;
  wire [20:0] tag_array_RW0_wdata_1;
  wire [20:0] tag_array_RW0_wdata_2;
  wire [20:0] tag_array_RW0_wdata_3;
  wire [20:0] tag_array_RW0_rdata_0;
  wire [20:0] tag_array_RW0_rdata_1;
  wire [20:0] tag_array_RW0_rdata_2;
  wire [20:0] tag_array_RW0_rdata_3;
  wire  tag_array_RW0_wmask_0;
  wire  tag_array_RW0_wmask_1;
  wire  tag_array_RW0_wmask_2;
  wire  tag_array_RW0_wmask_3;
  wire [9:0] data_arrays_0_RW0_addr;
  wire  data_arrays_0_RW0_en;
  wire  data_arrays_0_RW0_clk;
  wire  data_arrays_0_RW0_wmode;
  wire [31:0] data_arrays_0_RW0_wdata_0;
  wire [31:0] data_arrays_0_RW0_wdata_1;
  wire [31:0] data_arrays_0_RW0_wdata_2;
  wire [31:0] data_arrays_0_RW0_wdata_3;
  wire [31:0] data_arrays_0_RW0_rdata_0;
  wire [31:0] data_arrays_0_RW0_rdata_1;
  wire [31:0] data_arrays_0_RW0_rdata_2;
  wire [31:0] data_arrays_0_RW0_rdata_3;
  wire  data_arrays_0_RW0_wmask_0;
  wire  data_arrays_0_RW0_wmask_1;
  wire  data_arrays_0_RW0_wmask_2;
  wire  data_arrays_0_RW0_wmask_3;
  wire  s0_valid;
  reg  s1_valid;
  reg [255:0] vb_array;
  wire  s1_tag_hit_0;
  wire  s1_tag_hit_1;
  wire  s1_tag_hit_2;
  wire  s1_tag_hit_3;
  wire  s1_hit;
  reg  s2_valid;
  reg  s2_hit;
  reg  invalidated;
  reg  refill_valid;
  wire  s2_miss;
  wire  s2_request_refill;
  wire  refill_fire;
  wire  s1_can_request_refill;
  reg [31:0] refill_paddr;
  wire [19:0] refill_tag;
  wire [5:0] refill_idx;
  wire  refill_one_beat;
  wire  d_done;
  wire [9:0] refill_cnt;
  wire  refill_done;
  wire [1:0] repl_way;
  reg  accruedRefillError;
  wire  refillError;
  wire  s1_tl_error_0;
  wire  s1_tl_error_1;
  wire  s1_tl_error_2;
  wire  s1_tl_error_3;
  wire [31:0] s1_dout_0;
  wire [31:0] s1_dout_1;
  wire [31:0] s1_dout_2;
  wire [31:0] s1_dout_3;
  reg  s2_tag_hit_0;
  reg  s2_tag_hit_1;
  reg  s2_tag_hit_2;
  reg  s2_tag_hit_3;
  reg [31:0] s2_dout_0;
  reg [31:0] s2_dout_1;
  reg [31:0] s2_dout_2;
  reg [31:0] s2_dout_3;
  reg  s2_tl_error;
  reg  _T_12;
  reg [9:0] _T_28;

  MaxPeriodFibonacciLFSR MaxPeriodFibonacciLFSR (
    .clock(MaxPeriodFibonacciLFSR_clock),
    .reset(MaxPeriodFibonacciLFSR_reset),
    .io_increment(MaxPeriodFibonacciLFSR_io_increment),
    .io_out_0(MaxPeriodFibonacciLFSR_io_out_0),
    .io_out_1(MaxPeriodFibonacciLFSR_io_out_1),
    .io_out_2(MaxPeriodFibonacciLFSR_io_out_2),
    .io_out_3(MaxPeriodFibonacciLFSR_io_out_3),
    .io_out_4(MaxPeriodFibonacciLFSR_io_out_4),
    .io_out_5(MaxPeriodFibonacciLFSR_io_out_5),
    .io_out_6(MaxPeriodFibonacciLFSR_io_out_6),
    .io_out_7(MaxPeriodFibonacciLFSR_io_out_7),
    .io_out_8(MaxPeriodFibonacciLFSR_io_out_8),
    .io_out_9(MaxPeriodFibonacciLFSR_io_out_9),
    .io_out_10(MaxPeriodFibonacciLFSR_io_out_10),
    .io_out_11(MaxPeriodFibonacciLFSR_io_out_11),
    .io_out_12(MaxPeriodFibonacciLFSR_io_out_12),
    .io_out_13(MaxPeriodFibonacciLFSR_io_out_13),
    .io_out_14(MaxPeriodFibonacciLFSR_io_out_14),
    .io_out_15(MaxPeriodFibonacciLFSR_io_out_15)
  );
  tag_array_0 tag_array (
    .RW0_addr(tag_array_RW0_addr),
    .RW0_en(tag_array_RW0_en),
    .RW0_clk(tag_array_RW0_clk),
    .RW0_wmode(tag_array_RW0_wmode),
    .RW0_wdata_0(tag_array_RW0_wdata_0),
    .RW0_wdata_1(tag_array_RW0_wdata_1),
    .RW0_wdata_2(tag_array_RW0_wdata_2),
    .RW0_wdata_3(tag_array_RW0_wdata_3),
    .RW0_rdata_0(tag_array_RW0_rdata_0),
    .RW0_rdata_1(tag_array_RW0_rdata_1),
    .RW0_rdata_2(tag_array_RW0_rdata_2),
    .RW0_rdata_3(tag_array_RW0_rdata_3),
    .RW0_wmask_0(tag_array_RW0_wmask_0),
    .RW0_wmask_1(tag_array_RW0_wmask_1),
    .RW0_wmask_2(tag_array_RW0_wmask_2),
    .RW0_wmask_3(tag_array_RW0_wmask_3)
  );
  data_arrays_0_0 data_arrays_0 (
    .RW0_addr(data_arrays_0_RW0_addr),
    .RW0_en(data_arrays_0_RW0_en),
    .RW0_clk(data_arrays_0_RW0_clk),
    .RW0_wmode(data_arrays_0_RW0_wmode),
    .RW0_wdata_0(data_arrays_0_RW0_wdata_0),
    .RW0_wdata_1(data_arrays_0_RW0_wdata_1),
    .RW0_wdata_2(data_arrays_0_RW0_wdata_2),
    .RW0_wdata_3(data_arrays_0_RW0_wdata_3),
    .RW0_rdata_0(data_arrays_0_RW0_rdata_0),
    .RW0_rdata_1(data_arrays_0_RW0_rdata_1),
    .RW0_rdata_2(data_arrays_0_RW0_rdata_2),
    .RW0_rdata_3(data_arrays_0_RW0_rdata_3),
    .RW0_wmask_0(data_arrays_0_RW0_wmask_0),
    .RW0_wmask_1(data_arrays_0_RW0_wmask_1),
    .RW0_wmask_2(data_arrays_0_RW0_wmask_2),
    .RW0_wmask_3(data_arrays_0_RW0_wmask_3)
  );

`define MY_ASSIGNMENT
`ifdef MY_ASSIGNMENT
  assign s0_valid = io_req_ready & io_req_valid;

  wire [255:0] _T_137 = vb_array >> {1'h0,io_s1_paddr[11:6]};
  assign s1_tag_hit_0 = _T_137[0] & (tag_array_RW0_rdata_0[19:0] == io_s1_paddr[31:12]);

  wire [255:0] _T_165 = vb_array >> {1'h1,io_s1_paddr[11:6]};
  assign s1_tag_hit_1 = _T_165[0] & (tag_array_RW0_rdata_1[19:0] == io_s1_paddr[31:12]);

  wire [255:0] _T_193 = vb_array >> {2'h2,io_s1_paddr[11:6]};
  assign s1_tag_hit_2 = _T_193[0] & (tag_array_RW0_rdata_2[19:0] == io_s1_paddr[31:12]);

  wire [255:0] _T_221 = vb_array >> {2'h3,io_s1_paddr[11:6]};
  assign s1_tag_hit_3 = _T_221[0] & (tag_array_RW0_rdata_3[19:0] == io_s1_paddr[31:12]);

  assign s1_hit = s1_tag_hit_0 | s1_tag_hit_1 | s1_tag_hit_2 | s1_tag_hit_3;

  assign s2_miss = s2_valid & !s2_hit & !io_s2_kill;

  assign s2_request_refill = s2_miss & _T_12;

  assign refill_fire = auto_master_out_a_ready & s2_request_refill;

  assign s1_can_request_refill = (s2_miss | refill_valid) == 1'h0;

  assign refill_tag = refill_paddr[31:12];
  assign refill_idx = refill_paddr[11:6];

  assign refill_one_beat = auto_master_out_d_valid & auto_master_out_d_bits_opcode[0];

  wire [26:0] _T_22 = 27'hfff << auto_master_out_d_bits_size;
  wire [9:0] _T_27 = auto_master_out_d_bits_opcode[0] ? ~ _T_22[11:2] : 10'h0;
  assign d_done = ((_T_28 == 10'h1) | (_T_27 == 10'h0)) & auto_master_out_d_valid;

  wire [9:0] _T_30 = _T_28 - 10'h1;
  assign refill_cnt = _T_27 & (~ _T_30);
  assign refill_done = refill_one_beat & d_done;

  wire [15:0] _T_52 = {MaxPeriodFibonacciLFSR_io_out_15,MaxPeriodFibonacciLFSR_io_out_14,MaxPeriodFibonacciLFSR_io_out_13,MaxPeriodFibonacciLFSR_io_out_12,MaxPeriodFibonacciLFSR_io_out_11,MaxPeriodFibonacciLFSR_io_out_10,MaxPeriodFibonacciLFSR_io_out_9,MaxPeriodFibonacciLFSR_io_out_8,MaxPeriodFibonacciLFSR_io_out_7,MaxPeriodFibonacciLFSR_io_out_6,MaxPeriodFibonacciLFSR_io_out_5,MaxPeriodFibonacciLFSR_io_out_4,MaxPeriodFibonacciLFSR_io_out_3,MaxPeriodFibonacciLFSR_io_out_2,MaxPeriodFibonacciLFSR_io_out_1,MaxPeriodFibonacciLFSR_io_out_0};
  wire [15:0] _T_84 = {_T_52[0],_T_52[1],_T_52[2],_T_52[3],_T_52[4],_T_52[5],_T_52[6],_T_52[7],_T_52[8],_T_52[9],_T_52[10],_T_52[11],_T_52[12],_T_52[13],_T_52[14],_T_52[15]};
  assign repl_way = _T_84[1:0];

  assign refillError = auto_master_out_d_bits_corrupt | ((refill_cnt > 10'h0) & accruedRefillError);

  assign s1_tl_error_0 = s1_tag_hit_0 & tag_array_RW0_rdata_0[20];
  assign s1_tl_error_1 = s1_tag_hit_1 & tag_array_RW0_rdata_1[20];
  assign s1_tl_error_2 = s1_tag_hit_2 & tag_array_RW0_rdata_2[20];
  assign s1_tl_error_3 = s1_tag_hit_3 & tag_array_RW0_rdata_3[20];

  assign s1_dout_0 = data_arrays_0_RW0_rdata_0;
  assign s1_dout_1 = data_arrays_0_RW0_rdata_1;
  assign s1_dout_2 = data_arrays_0_RW0_rdata_2;
  assign s1_dout_3 = data_arrays_0_RW0_rdata_3;

  assign auto_master_out_a_valid = s2_miss & _T_12;

  assign auto_master_out_a_bits_address = {refill_paddr[31:6], 6'h0};

  assign io_req_ready = refill_one_beat == 1'h0;
  assign io_resp_valid = s2_valid & s2_hit;
  assign io_resp_bits_data = (s2_tag_hit_0 ? s2_dout_0 : 32'h0) 
				| (s2_tag_hit_1 ? s2_dout_1 : 32'h0) 
				| (s2_tag_hit_2 ? s2_dout_2 : 32'h0) 
				| (s2_tag_hit_3 ? s2_dout_3 : 32'h0);
  assign io_resp_bits_ae = s2_tl_error;

  assign MaxPeriodFibonacciLFSR_clock = clock;
  assign MaxPeriodFibonacciLFSR_reset = reset;
  assign MaxPeriodFibonacciLFSR_io_increment = auto_master_out_a_ready & s2_request_refill;

  assign tag_array_RW0_wdata_0 = {refillError,refill_tag};
  assign tag_array_RW0_wdata_1 = {refillError,refill_tag};
  assign tag_array_RW0_wdata_2 = {refillError,refill_tag};
  assign tag_array_RW0_wdata_3 = {refillError,refill_tag};
  assign tag_array_RW0_wmask_0 = repl_way == 2'h0;
  assign tag_array_RW0_wmask_1 = repl_way == 2'h1;
  assign tag_array_RW0_wmask_2 = repl_way == 2'h2;
  assign tag_array_RW0_wmask_3 = repl_way == 2'h3;

  assign data_arrays_0_RW0_wdata_0 = auto_master_out_d_bits_data;
  assign data_arrays_0_RW0_wdata_1 = auto_master_out_d_bits_data;
  assign data_arrays_0_RW0_wdata_2 = auto_master_out_d_bits_data;
  assign data_arrays_0_RW0_wdata_3 = auto_master_out_d_bits_data;
  assign data_arrays_0_RW0_wmask_0 = repl_way == 2'h0;
  assign data_arrays_0_RW0_wmask_1 = repl_way == 2'h1;
  assign data_arrays_0_RW0_wmask_2 = repl_way == 2'h2;
  assign data_arrays_0_RW0_wmask_3 = repl_way == 2'h3;

  assign tag_array_RW0_wmode = refill_one_beat & d_done;
  assign tag_array_RW0_clk = clock;
  assign tag_array_RW0_en = (!refill_done & s0_valid) | refill_done;
  assign tag_array_RW0_addr = refill_done ? refill_idx : io_req_bits_addr[11:6];

  assign data_arrays_0_RW0_wmode = refill_one_beat & !invalidated;
  assign data_arrays_0_RW0_clk = clock;
  assign data_arrays_0_RW0_en = (!(refill_one_beat & !invalidated) & s0_valid) | (refill_one_beat & !invalidated);
  assign data_arrays_0_RW0_addr = refill_one_beat ? ({refill_idx, 4'h0} | refill_cnt) : io_req_bits_addr[11:2];

always @(posedge clock) begin
	if (reset) begin
		s1_valid <= 1'h0;
	end else begin
		s1_valid <= s0_valid;
	end
end

always @(posedge clock) begin
	if (reset) begin
		vb_array <= 256'h0;
	end else begin
		if (io_invalidate) begin
			vb_array <= 256'h0;
		end else begin
			if (refill_one_beat) begin
				if (refill_done & !invalidated) begin
					vb_array <= vb_array | (256'h1 << {repl_way,refill_idx});
				end else begin
				 	vb_array <= ~ ((~ vb_array) | (256'h1 << {repl_way,refill_idx}));
				end
			end
		end
	end
end

always @(posedge clock) begin
	if (reset) begin
		s2_valid <= 1'h0;
	end else begin
		s2_valid <= s1_valid & !io_s1_kill;
	end
end

always @(posedge clock) begin
	if (reset) begin
		s2_hit  <= 1'h0;
	end else begin
		s2_hit <= s1_hit;
	end
end

always @(posedge clock) begin
	if (!refill_valid) begin
		invalidated <= 1'h0;
	end else begin
		invalidated <= io_invalidate | invalidated;
	end
end

always @(posedge clock) begin
	if (reset) begin
		refill_valid <= 1'h0;
	end else begin
		if (refill_done) begin
			refill_valid <= 1'h0;
		end else begin
			refill_valid <= refill_fire | refill_valid;
		end
	end
end

always @(posedge clock) begin
	if (reset) begin
		_T_12 <= 1'h0;
	end else begin
		_T_12 <= !(s2_miss | refill_valid);
	end
end

always @(posedge clock) begin
	if (reset) begin
		refill_paddr <= 32'h00;
	end else begin
    		if (s1_valid & s1_can_request_refill) begin
      			refill_paddr <= io_s1_paddr;
    		end
	end
end

always @(posedge clock) begin
	if (reset) begin
		_T_28 <= 10'h0;
	end else begin
		if (auto_master_out_d_valid) begin
			if (_T_28 == 10'h0) begin
				if (auto_master_out_d_bits_opcode[0]) begin
					_T_28 <= ~ _T_22[11:2];
				end else begin
					_T_28 <= 10'h0;
				end
			end else begin
				_T_28 <= _T_30;
			end
		end
	end
end

always @(posedge clock) begin
	if (reset) begin
		accruedRefillError <= 1'h0;
	end else begin
		if (refill_one_beat) begin
			accruedRefillError <= refillError;
		end
	end
end

always @(posedge clock) begin
	if (reset) begin
		s2_tag_hit_0 <= 1'h0;
		s2_tag_hit_1 <= 1'h0;
		s2_tag_hit_2 <= 1'h0;
		s2_tag_hit_3 <= 1'h0;
		s2_dout_0 <= 32'h00;
		s2_dout_1 <= 32'h00;
		s2_dout_2 <= 32'h00;
		s2_dout_3 <= 32'h00;
		s2_tl_error <= 1'h0;
	end else begin
		if (s1_valid) begin
			s2_tag_hit_0 <= s1_tag_hit_0;
			s2_tag_hit_1 <= s1_tag_hit_1;
			s2_tag_hit_2 <= s1_tag_hit_2;
			s2_tag_hit_3 <= s1_tag_hit_3;
			s2_dout_0 <= s1_dout_0;
			s2_dout_1 <= s1_dout_1;
			s2_dout_2 <= s1_dout_2;
			s2_dout_3 <= s1_dout_3;
			s2_tl_error <= ({s1_tl_error_3,s1_tl_error_2,s1_tl_error_1,s1_tl_error_0} != 4'h0);
		end
	end
end

    `ifndef SYNTHESIS
  assign _T_254 = (!s1_valid | ((s1_tag_hit_0 + s1_tag_hit_1 + s1_tag_hit_2 + s1_tag_hit_3) <= 3'h1) | reset) == 1'h0;
    `endif
always @(posedge clock) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_254) begin
          $fwrite(32'h80000002,"Assertion failed\n    at ICache.scala:255 assert(!(s1_valid || s1_slaveValid) || PopCount(s1_tag_hit zip s1_tag_disparity map { case (h, d) => h && !d }) <= 1)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_254) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
end

`endif // MY_ASSIGNMENT

endmodule
`endif // __ICache
