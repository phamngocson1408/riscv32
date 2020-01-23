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
  wire  INToRecFN_io_signedIn;
  wire [31:0] INToRecFN_io_in;
  wire [2:0] INToRecFN_io_roundingMode;
  wire [32:0] INToRecFN_io_out;
  wire [4:0] INToRecFN_io_exceptionFlags;
  reg  inPipe_valid;
  reg  inPipe_bits_wflags;
  reg [2:0] inPipe_bits_rm;
  reg [1:0] inPipe_bits_typ;
  reg [31:0] inPipe_bits_in1;
  reg [32:0] _T_88_data;
  reg [4:0] _T_88_exc;

  INToRecFN INToRecFN ( 
    .io_signedIn(INToRecFN_io_signedIn),
    .io_in(INToRecFN_io_in),
    .io_roundingMode(INToRecFN_io_roundingMode),
    .io_out(INToRecFN_io_out),
    .io_exceptionFlags(INToRecFN_io_exceptionFlags)
  );

`define MY_ASSIGNEMNT
`ifdef MY_ASSIGNEMNT
  assign io_out_bits_data = _T_88_data;
  assign io_out_bits_exc = _T_88_exc;
  assign INToRecFN_io_signedIn = ~ inPipe_bits_typ[0];
  assign INToRecFN_io_in = $unsigned($signed(inPipe_bits_in1));
  assign INToRecFN_io_roundingMode = inPipe_bits_rm;

  wire _T_5 = inPipe_bits_in1[30:23] == 8'h0;
  wire _T_6 = inPipe_bits_in1[22:0] == 23'h0;
  wire _T_61 = _T_5 & _T_6;
  wire [4:0] _T_51 = inPipe_bits_in1[22] ? 5'h0 
			: inPipe_bits_in1[21] ? 5'h1 
			: inPipe_bits_in1[20] ? 5'h2 
			: inPipe_bits_in1[19] ? 5'h3 
			: inPipe_bits_in1[18] ? 5'h4 
			: inPipe_bits_in1[17] ? 5'h5 
			: inPipe_bits_in1[16] ? 5'h6 
			: inPipe_bits_in1[15] ? 5'h7 
			: inPipe_bits_in1[14] ? 5'h8 
			: inPipe_bits_in1[13] ? 5'h9 
			: inPipe_bits_in1[12] ? 5'ha 
			: inPipe_bits_in1[11] ? 5'hb 
			: inPipe_bits_in1[10] ? 5'hc 
			: inPipe_bits_in1[9] ? 5'hd 
			: inPipe_bits_in1[8] ? 5'he 
			: inPipe_bits_in1[7] ? 5'hf 
			: inPipe_bits_in1[6] ? 5'h10 
			: inPipe_bits_in1[5] ? 5'h11 
			: inPipe_bits_in1[4] ? 5'h12 
			: inPipe_bits_in1[3] ? 5'h13 
			: inPipe_bits_in1[2] ? 5'h14 
			: inPipe_bits_in1[1] ? 5'h15
			: 5'h16 
			;
  wire [8:0] _T_56 = _T_5 ? ({{4'd0}, _T_51} ^ 9'h1ff) : {{1'd0}, inPipe_bits_in1[30:23]};
  wire [1:0] _T_57 = _T_5 ? 2'h2 : 2'h1;
  wire [7:0] _T_58 = 8'h80 | {{6'd0}, _T_57};
  wire [8:0] _T_60 = _T_56 + {{1'd0}, _T_58};
  wire [9:0] _T_69 = {1'b0,$signed(_T_60)};
  wire [2:0] _T_75 = _T_61 ? 3'h0 : _T_69[8:6];
  wire[2:0] _GEN_27 = {{2'd0}, ((_T_60[8:7] == 2'h3) & !(inPipe_bits_in1[22:0] == 23'h0))};
  wire [2:0] _T_77 = _T_75 | _GEN_27;
  wire [53:0] _T_52 = {{31'd0}, inPipe_bits_in1[22:0]} << _T_51;
  wire [22:0] _T_71 = _T_5 ? {_T_52[21:0], 1'h0} : inPipe_bits_in1[22:0];
  wire [24:0] _T_73 = {1'h0, !_T_61, _T_71};
  wire [32:0] _T_82 = {inPipe_bits_in1[31], _T_77, _T_69[5:0], _T_73[22:0]};
always @(posedge clock) begin
	if (reset) begin
		inPipe_valid <= 1'h0;
		inPipe_bits_wflags <= 1'h0;
		inPipe_bits_rm <= 3'h0;
		inPipe_bits_typ <= 2'h0;
		inPipe_bits_in1 <= 32'h00;
		_T_88_data <= 33'h000;
		_T_88_exc <= 5'h0;
	end
	else begin
		inPipe_valid <= io_in_valid;
		if (io_in_valid) begin
			inPipe_bits_wflags <= io_in_bits_wflags;
			inPipe_bits_rm <= io_in_bits_rm;
			inPipe_bits_typ <= io_in_bits_typ;
			inPipe_bits_in1 <= io_in_bits_in1;
		end
		if (inPipe_valid) begin
			if (inPipe_bits_wflags) begin
				_T_88_data <= INToRecFN_io_out;
				_T_88_exc <= INToRecFN_io_exceptionFlags;
			end else begin
				 _T_88_data <= _T_82;
		  		_T_88_exc <= 5'h0;
		  	end
		end
	end
end
`endif // MY_ASSIGNEMNT

endmodule
`endif // __IntToFP
