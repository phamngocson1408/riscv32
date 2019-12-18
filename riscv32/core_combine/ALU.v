module ALU( 
  input  [3:0]  io_fn, 
  input  [31:0] io_in2,
  input  [31:0] io_in1,
  output [31:0] io_out,
  output [31:0] io_adder_out,
  output        io_cmp_out
);

`define FN_ADD  	0
`define FN_SL   	1
`define FN_SEQ  	2
`define FN_SNE  	3
`define FN_XOR  	4
`define FN_SR   	5
`define FN_OR   	6
`define FN_AND  	7
`define FN_SUB  	10
`define FN_SRA  	11
`define FN_SLT  	12
`define FN_SGE  	13
`define FN_SLTU 	14
`define FN_SGEU 	15

`define FN_DIV  	FN_XOR
`define FN_DIVU 	FN_SR
`define FN_REM  	FN_OR
`define FN_REMU 	FN_AND

`define FN_MUL    	FN_ADD
`define FN_MULH   	FN_SL
`define FN_MULHSU 	FN_SEQ
`define FN_MULHU  	FN_SNE

wire isSub = io_fn[3];
wire isCmp = io_fn >= `FN_SLT;
wire cmpUnsigned = io_fn[1];
wire cmpInverted = io_fn[0];
wire cmpEq = !io_fn[3];

// ADD, SUB
wire [31:0] in2_inv = (isSub) ? ~io_in2 : io_in2;
wire [31:0] adder_temp = io_in1 + in2_inv;
assign io_adder_out = adder_temp + {31'h00, isSub};

// SLT, SLTU
wire slt = (io_in1[31] == io_in2[31]) ? io_adder_out[31]
	: (cmpUnsigned) ? io_in2[31]
	: io_in1[31];
wire [31:0] in1_xor_in2 = io_in1 ^ in2_inv;
wire cmp_temp = (cmpEq) ? (in1_xor_in2 == 32'h00) : slt;
assign io_cmp_out = cmpInverted ^ cmp_temp;

// SLL, SRL, SRA
wire [4:0] shamt = io_in2[4:0];

function [31:0] reverse;
	input [31:0] in;
	reg [31:0] out;
	integer i;
	begin
		for (i = 0; i < 32; i = i + 1) begin
			out[31 - i] = in[i];
		end
	reverse = out;
	end
endfunction

wire [31:0] io_in1_rev = reverse(io_in1);
wire [31:0] shin = (io_fn == `FN_SR | io_fn == `FN_SRA) ? io_in1 : io_in1_rev;
wire [32:0] shin_cat = {isSub & shin[31], shin};
wire [32:0] shin_cat_sign = $signed(shin_cat);
wire [32:0] shin_cat_shift = $signed(shin_cat_sign) >>> shamt;
wire [31:0] shout_r = shin_cat_shift[31:0];
wire [31:0] shout_l = reverse(shout_r);
wire [31:0] shout_temp1 = (io_fn == `FN_SR | io_fn == `FN_SRA) ? shout_r : 32'h00;
wire [31:0] shout_temp2 = (io_fn == `FN_SL) ? shout_l : 32'h00;
wire [31:0] shout = shout_temp1 | shout_temp2;

// AND, OR, XOR
wire [31:0] logic_ = ((io_fn == `FN_XOR | io_fn == `FN_OR) ? in1_xor_in2 : 0) | ((io_fn == `FN_OR || io_fn == `FN_AND) ? (io_in1 & io_in2) : 0);
wire [31:0] shift_logic = {31'h00, (isCmp && slt)} | logic_ | shout;
wire [31:0] io_out = (io_fn == `FN_ADD | io_fn == `FN_SUB) ? io_adder_out : shift_logic; 

endmodule
