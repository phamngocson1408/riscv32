`include "include_module.v"
`ifdef __FPToFP
module FPToFP(
  input         clock,
  input         reset,
  input         io_in_valid,
  input         io_in_bits_wflags,
  input  [2:0]  io_in_bits_rm,
  input  [32:0] io_in_bits_in1,
  input  [32:0] io_in_bits_in2,
  output [32:0] io_out_bits_data,
  output [4:0]  io_out_bits_exc,
  input         io_lt
);
  reg  inPipe_valid;
  reg  inPipe_bits_wflags;
  reg [2:0] inPipe_bits_rm;
  reg [32:0] inPipe_bits_in1;
  reg [32:0] inPipe_bits_in2;
  wire [32:0] signNum;
  wire [32:0] fsgnj;
  reg [32:0] _T_34_data;
  reg [4:0] _T_34_exc;

`define MY_ASSIGNMENT
`ifdef MY_ASSIGNMENT
  wire [32:0] _T_4 = inPipe_bits_rm[0] ? ~ inPipe_bits_in2 : inPipe_bits_in2;
  assign signNum = inPipe_bits_rm[1] ? inPipe_bits_in1 ^ inPipe_bits_in2 : _T_4;
  assign fsgnj = {signNum[32], inPipe_bits_in1[31:0]};
  assign io_out_bits_data = _T_34_data;
  assign io_out_bits_exc = _T_34_exc;

  wire _T_21 = ((inPipe_bits_in1[31:29] == 3'h7) & !inPipe_bits_in1[22]) | ((inPipe_bits_in2[31:29] == 3'h7) & !inPipe_bits_in2[22]);
always @(posedge clock) begin
	if (reset) begin
		inPipe_valid <= 1'h0;
	end 
	else begin
		inPipe_valid <= io_in_valid;
		if (io_in_valid) begin
			inPipe_bits_wflags <= io_in_bits_wflags;
			inPipe_bits_rm <= io_in_bits_rm;
			inPipe_bits_in1 <= io_in_bits_in1;
			inPipe_bits_in2 <= io_in_bits_in2;
		end
		if (inPipe_valid) begin
			if (inPipe_bits_wflags) begin
				if ((inPipe_bits_in1[31:29] == 3'h7) & (inPipe_bits_in2[31:29] == 3'h7)) begin
					_T_34_data <= 33'he0400000;
				end
				else begin
					if ((inPipe_bits_in2[31:29] == 3'h7) | ((inPipe_bits_rm[0] != io_lt) & ((inPipe_bits_in1[31:29] == 3'h7) == 1'h0))) begin
				  		_T_34_data <= inPipe_bits_in1;
					end
					else begin
				    		_T_34_data <= inPipe_bits_in2;
				  	end
				end
			end
			else begin
				_T_34_data <= fsgnj;
			end

			if (inPipe_bits_wflags) begin
				_T_34_exc <= {_T_21, 4'h0};
			end
			else begin
				_T_34_exc <= 5'h0;
			end
		end
	end
end
`endif // MY_ASSIGNMENT

endmodule
`endif // __FPToFP
