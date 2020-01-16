module FPUFMAPipe(
  input         clock,
  input         reset,
  input         io_in_valid,
  input         io_in_bits_ren3,
  input         io_in_bits_swap23,
  input  [2:0]  io_in_bits_rm,
  input  [1:0]  io_in_bits_fmaCmd,
  input  [32:0] io_in_bits_in1,
  input  [32:0] io_in_bits_in2,
  input  [32:0] io_in_bits_in3,
  output [32:0] io_out_bits_data, 
  output [4:0]  io_out_bits_exc
);
  wire  fma_clock;
  wire  fma_reset;
  wire  fma_io_validin;
  wire [1:0] fma_io_op;
  wire [32:0] fma_io_a;
  wire [32:0] fma_io_b;
  wire [32:0] fma_io_c;
  wire [2:0] fma_io_roundingMode;
  wire [32:0] fma_io_out;
  wire [4:0] fma_io_exceptionFlags;
  reg  valid;
  reg [2:0] in_rm;
  reg [1:0] in_fmaCmd;
  reg [32:0] in_in1;
  reg [32:0] in_in2;
  reg [32:0] in_in3;

  MulAddRecFNPipe fma (
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

`define MY_ASSIGNEMNT
`ifdef MY_ASSIGNEMNT
always @(posedge clock) begin
	if (reset) begin
		valid <= 1'h0;
    		in_rm <= 3'h0;
    		in_fmaCmd <= 2'h0;
    		in_in1 <= 33'h00;
		in_in2 <= 33'h00;
		in_in3 <= 33'h00;
	end
	else begin
  		valid <= io_in_valid;
  		if (io_in_valid) begin
    			in_rm <= io_in_bits_rm;
    			in_fmaCmd <= io_in_bits_fmaCmd;
    			in_in1 <= io_in_bits_in1;

    			if (io_in_bits_swap23) begin
      				in_in2 <= 33'h80000000;
    			end
			else begin
      				in_in2 <= io_in_bits_in2;
    			end

    			if ((io_in_bits_ren3 | io_in_bits_swap23) == 1'h0) begin
      				in_in3 <= (io_in_bits_in1 ^ io_in_bits_in2) & 33'h100000000;
    			end	
			else begin
      				in_in3 <= io_in_bits_in3;
    			end
		end
	end
end

assign io_out_bits_data = fma_io_out;
assign io_out_bits_exc = fma_io_exceptionFlags;
assign fma_clock = clock;
assign fma_reset = reset;
assign fma_io_validin = valid;
assign fma_io_op = in_fmaCmd;
assign fma_io_a = in_in1;
assign fma_io_b = in_in2;
assign fma_io_c = in_in3;
assign fma_io_roundingMode = in_rm;
`endif // MY_ASSIGNEMNT
endmodule

