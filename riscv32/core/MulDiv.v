`timescale 1ns / 10ps
`include "include_module.v"
`ifdef __MulDiv
module MulDiv(
  input         clock,
  input         reset,
  output        io_req_ready,
  input         io_req_valid,
  input  [3:0]  io_req_bits_fn,
  input  [31:0] io_req_bits_in1,
  input  [31:0] io_req_bits_in2,
  input  [4:0]  io_req_bits_tag,
  input         io_kill,
  input         io_resp_ready,
  output        io_resp_valid,
  output [31:0] io_resp_bits_data,
  output [4:0]  io_resp_bits_tag
);

  reg [2:0] state;
  reg [31:0] _RAND_0;
  reg [4:0] req_tag;
  reg [31:0] _RAND_1;
  reg [5:0] count;
  reg [31:0] _RAND_2;
  reg  neg_out;
  reg [31:0] _RAND_3;
  reg  isHi;
  reg [31:0] _RAND_4;
  reg  resHi;
  reg [31:0] _RAND_5;
  reg [32:0] divisor;
  reg [63:0] _RAND_6;
  reg [65:0] remainder;
  reg [95:0] _RAND_7;

  wire  s_ready = state == 6'h0;
  wire	s_neg_inputs = state == 3'h1;
  wire	s_mul = state == 3'h2;
  wire	s_div = state == 3'h3;
  wire	s_neg_output = state == 3'h5;
  wire	s_done_mul = state == 3'h6;
  wire	s_done_div = state == 3'h7;

  wire  cmdMul;
  wire  cmdHi;
  wire  lhsSigned;
  wire  rhsSigned;
  wire  lhs_sign;
  wire [31:0] lhs_in;
  wire  rhs_sign;
  wire [31:0] rhs_in;
  wire [32:0] subtractor;
  wire [31:0] result;
  wire [31:0] negated_remainder;
  wire [64:0] mulReg;
  wire  mplierSign;
  wire [31:0] mplier;
  wire [32:0] accum;
  wire [32:0] mpcand;
  wire [41:0] prod;
  wire [65:0] nextMulReg;
  wire  nextMplierSign;
  wire [64:0] nextMulReg1;
  wire [5:0] count_add_1;
  wire  divby0;
  wire  io_resp_fire;
  wire  io_req_fire;
  wire [15:0] loOut;

// Decode
  assign cmdMul = (io_req_bits_fn & 4'h4) == 4'h0;
  assign cmdHi = ((io_req_bits_fn & 4'h5) == 4'h1) | ((io_req_bits_fn & 4'h2) == 4'h2);
  assign lhsSigned = ((io_req_bits_fn & 4'h6) == 4'h0) | ((io_req_bits_fn & 4'h1) == 4'h0);
  assign rhsSigned = ((io_req_bits_fn & 4'h6) == 4'h0) | (((io_req_bits_fn & 4'h5)) == 4'h4);

// Sign calculate
  assign lhs_sign = lhsSigned & io_req_bits_in1[31];
  assign lhs_in = io_req_bits_in1[31:0];
  assign rhs_sign = rhsSigned & io_req_bits_in2[31];
  assign rhs_in = io_req_bits_in2[31:0];

  assign subtractor = remainder[64:32] - divisor;
  assign result = resHi ? remainder[64:33] : remainder[31:0];
  assign negated_remainder = 32'h0 - result;
  assign mulReg = {remainder[65:33], remainder[31:0]};
  assign mplierSign = remainder[32];
  assign mplier = mulReg[31:0];
  assign accum = $signed(mulReg[64:32]);
  assign mpcand = $signed(divisor);
  assign prod = $signed({{25{mplierSign}},mplier[7:0]}) * $signed(mpcand) + $signed({{9{accum[32]}},accum});
  assign nextMulReg = {$unsigned(prod),mplier[31:8]};
  assign nextMplierSign = (count == 6'h2) & neg_out;
  assign nextMulReg1 = {nextMulReg[64:32],nextMulReg[31:0]};
  assign count_add_1 = count + 6'h1;
  assign divby0 = (count == 6'h0) & !subtractor[32];
  assign io_resp_fire = io_resp_ready & io_resp_valid;
  assign io_req_fire = io_req_ready & io_req_valid;
  assign loOut = result[15:0];
  assign io_req_ready = s_ready;
  assign io_resp_valid = s_done_mul | s_done_div;
  assign io_resp_bits_data = {result[31:16], loOut};
  assign io_resp_bits_tag = req_tag;


always @(posedge clock) begin
	if (reset) begin
		state <= 3'h0;
	end else begin
		if (io_req_fire) begin
			if (cmdMul) begin
				state <= 3'h2;
			end else begin
				if (lhs_sign | rhs_sign) begin
					state <= 3'h1;
				end else begin
					state <= 3'h3;
				end
			end
		end else begin
			if (io_resp_fire | io_kill) begin
				state <= 3'h0;
			end else begin
				if (s_div && (count == 6'h20)) begin
					if (neg_out) begin
						state <= 3'h5;
					end else begin
						state <= 3'h7;
					end
				end else begin
					if (s_mul && (count == 6'h3)) begin
						state <= 3'h6;
					end else begin
						if (s_neg_output) begin
							state <= 3'h7;
						end else begin
							if (s_neg_inputs) begin
								state <= 3'h3;
							end
						end
					end
				end
			end
		end
	end
end

always @(posedge clock) begin
	if (io_req_fire) begin
		req_tag <= io_req_bits_tag;
	end
end

always @(posedge clock) begin
	if (io_req_fire) begin
		count <= 6'h0;
	end else begin
		if (s_div) begin
			count <= count_add_1;
		end else begin
			if (s_mul) begin
				count <= count_add_1;
			end
		end
	end
end

always @(posedge clock) begin
	if (io_req_fire) begin
		if (cmdHi) begin
			neg_out <= lhs_sign;
		end else begin
			neg_out <= lhs_sign != rhs_sign;
		end
	end else begin
		if (s_div) begin
			if (divby0 & !isHi) begin
				neg_out <= 1'h0;
			end
		end
	end
end

always @(posedge clock) begin
	if (io_req_fire) begin
		isHi <= cmdHi;
	end
end

always @(posedge clock) begin
	if (io_req_fire) begin
		resHi <= 1'h0;
	end else begin
		if (s_div & (count == 6'h20)) begin
			resHi <= isHi;
		end else begin
			if (s_mul & (count == 6'h3)) begin
				resHi <= isHi;
			end else begin
				if (s_neg_output) begin
					resHi <= 1'h0;
				end
			end
		end
	end
end

always @(posedge clock) begin
	if (io_req_fire) begin
		divisor <= {rhs_sign,rhs_in};
	end else begin
		if (s_neg_inputs) begin
			if (divisor[31]) begin
				divisor <= subtractor;
			end
		end
	end
end

  wire [31:0] _T_92 = subtractor[32] ? remainder[63:32] : subtractor[31:0];
always @(posedge clock) begin
	if (io_req_fire) begin
		remainder <= {{34'd0}, lhs_in};
	end else begin
		if (s_div) begin
			remainder <= {{1'd0}, _T_92,remainder[31:0],!subtractor[32]};
		end else begin
			if (s_mul) begin
				remainder <= {nextMulReg1[64:32],nextMplierSign,nextMulReg1[31:0]};
			end else begin
				if (s_neg_output) begin
					remainder <= {{34'd0}, negated_remainder};
				end else begin
					if (s_neg_inputs) begin
						if (remainder[31]) begin
							remainder <= {{34'd0}, negated_remainder};
						end
					end
				end
			end
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
  state = _RAND_0[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  req_tag = _RAND_1[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  count = _RAND_2[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  neg_out = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  isHi = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  resHi = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {2{`RANDOM}};
  divisor = _RAND_6[32:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {3{`RANDOM}};
  remainder = _RAND_7[65:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
/*
  always @(posedge clock) begin
    if (reset) begin
      state <= #1 3'h0;
    end else begin
      if (io_req_fire) begin
        if (cmdMul) begin
          state <= #1 3'h2;
        end else begin
          if (lhs_sign | rhs_sign) begin
            state <= #1 3'h1;
          end else begin
            state <= #1 3'h3;
          end
        end
      end else begin
        if (io_resp_fire | io_kill) begin
          state <= #1 3'h0;
        end else begin
          if (s_div) begin
            if (count == 6'h20) begin
              if (neg_out) begin
                state <= #1 3'h5;
              end else begin
                state <= #1 3'h7;
              end
            end else begin
              if (s_mul) begin
                if (count == 6'h3) begin
                  state <= #1 3'h6;
                end else begin
                  if (s_neg_output) begin
                    state <= #1 3'h7;
                  end else begin
                    if (s_neg_inputs) begin
                      state <= #1 3'h3;
                    end
                  end
                end
              end else begin
                if (s_neg_output) begin
                  state <= #1 3'h7;
                end else begin
                  if (s_neg_inputs) begin
                    state <= #1 3'h3;
                  end
                end
              end
            end
          end else begin
            if (s_mul) begin
              if (count == 6'h3) begin
                state <= #1 3'h6;
              end else begin
                if (s_neg_output) begin
                  state <= #1 3'h7;
                end else begin
                  if (s_neg_inputs) begin
                    state <= #1 3'h3;
                  end
                end
              end
            end else begin
              if (s_neg_output) begin
                state <= #1 3'h7;
              end else begin
                if (s_neg_inputs) begin
                  state <= #1 3'h3;
                end
              end
            end
          end
        end
      end
    end
end
  always @(posedge clock) begin
    if (io_req_fire) begin
      req_tag <= #1 io_req_bits_tag;
    end
end
  always @(posedge clock) begin
    if (io_req_fire) begin
      count <= #1 6'h0;
    end else begin
      if (s_div) begin
        count <= #1 count_add_1;
      end else begin
        if (s_mul) begin
          count <= #1 count_add_1;
        end
      end
    end
end
  always @(posedge clock) begin
    if (io_req_fire) begin
      if (cmdHi) begin
        neg_out <= #1 lhs_sign;
      end else begin
        neg_out <= #1 lhs_sign != rhs_sign;
      end
    end else begin
      if (s_div) begin
        if (_T_106) begin
          neg_out <= #1 1'h0;
        end
      end
    end
end
  always @(posedge clock) begin
    if (io_req_fire) begin
      isHi <= #1 cmdHi;
    end
end
  always @(posedge clock) begin
    if (io_req_fire) begin
      resHi <= #1 1'h0;
    end else begin
      if (s_div) begin
        if (count == 6'h20) begin
          resHi <= #1 isHi;
        end else begin
          if (s_mul) begin
            if (count == 6'h3) begin
              resHi <= #1 isHi;
            end else begin
              if (s_neg_output) begin
                resHi <= #1 1'h0;
              end
            end
          end else begin
            if (s_neg_output) begin
              resHi <= #1 1'h0;
            end
          end
        end
      end else begin
        if (s_mul) begin
          if (count == 6'h3) begin
            resHi <= #1 isHi;
          end else begin
            if (s_neg_output) begin
              resHi <= #1 1'h0;
            end
          end
        end else begin
          if (s_neg_output) begin
            resHi <= #1 1'h0;
          end
        end
      end
    end
end
  always @(posedge clock) begin
    if (io_req_fire) begin
      divisor <= #1 {rhs_sign,rhs_in};
    end else begin
      if (s_neg_inputs) begin
        if (divisor[31]) begin
          divisor <= #1 subtractor;
        end
      end
    end
end
  always @(posedge clock) begin
    if (io_req_fire) begin
      remainder <= #1 {{34'd0}, lhs_in};
    end else begin
      if (s_div) begin
        remainder <= #1 {{1'd0}, _T_96};
      end else begin
        if (s_mul) begin
          remainder <= #1 _T_83;
        end else begin
          if (s_neg_output) begin
            remainder <= #1 {{34'd0}, negated_remainder};
          end else begin
            if (s_neg_inputs) begin
              if (remainder[31]) begin
                remainder <= #1 {{34'd0}, negated_remainder};
              end
            end
          end
        end
      end
    end
  end
*/
endmodule
`endif // __MulDiv

