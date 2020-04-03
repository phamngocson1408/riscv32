`include "include_module.v"
`ifdef __RVCExpander
module RVCExpander(
  input  [31:0] io_in,
  output [31:0] io_out_bits,
  output [4:0]  io_out_rd,
  output [4:0]  io_out_rs1,
  output [4:0]  io_out_rs2,
  output [4:0]  io_out_rs3,
  output        io_rvc
);

`define MY_ASSIGNMENT
`ifdef MY_ASSIGNMENT
  wire [4:0] rs1p = {2'h1, io_in[9:7]};
  wire [4:0] rs2p = {2'h1, io_in[4:2]};
  wire [4:0] rs2 = io_in[6:2];
  wire [4:0] rd = io_in[11:7];
  wire [9:0] addi4spnImm = {io_in[10:7],io_in[12:11],io_in[5],io_in[6],2'h0};
  wire [6:0] lwImm = {io_in[5], io_in[12:10], io_in[6], 2'h0};
  wire [7:0] ldImm = {io_in[6:5], io_in[12:10], 3'h0};
  wire [7:0] lwspImm = {io_in[3:2], io_in[12], io_in[6:4], 2'h0};
  wire [8:0] ldspImm = {io_in[4:2], io_in[12], io_in[6:5], 3'h0};
  wire [7:0] swspImm = {io_in[8:7], io_in[12:9], 2'h0};
  wire [8:0] sdspImm = {io_in[9:7], io_in[12:10], 3'h0};
  wire [31:0] luiImm = {{15{io_in[12]}}, io_in[6:2], 12'h0};
  wire [11:0] addi16spImm = {{3{io_in[12]}}, io_in[4:3], io_in[5], io_in[2], io_in[6], 4'h0};
  wire [11:0] addiImm = {{7{io_in[12]}}, io_in[6:2]};
  wire [20:0] jImm = {{10{io_in[12]}}, io_in[8], io_in[10:9], io_in[6], io_in[7], io_in[2], io_in[11], io_in[5:3], 1'h0};
  wire [12:0] bImm = {{5{io_in[12]}}, io_in[6:5], io_in[2], io_in[11:10], io_in[4:3], 1'h0};
  wire [5:0] shamt = {io_in[12], io_in[6:2]};
  wire [4:0] x0 = 5'h0;
  wire [4:0] ra = 5'h1;
  wire [4:0] sp = 5'h2;

  wire cmd_addi4spn = {io_in[1:0], io_in[15:13]} == 5'h0;
  wire cmd_fld = {io_in[1:0], io_in[15:13]} == 5'h1;
  wire cmd_lw = {io_in[1:0], io_in[15:13]} == 5'h2;
  wire cmd_flw = {io_in[1:0], io_in[15:13]} == 5'h3;
  wire cmd_unimp = {io_in[1:0], io_in[15:13]} == 5'h4;
  wire cmd_fsd = {io_in[1:0], io_in[15:13]} == 5'h5;
  wire cmd_sw = {io_in[1:0], io_in[15:13]} == 5'h6;
  wire cmd_fsw = {io_in[1:0], io_in[15:13]} == 5'h7;
  wire cmd_addi = {io_in[1:0], io_in[15:13]} == 5'h8;
  wire cmd_jal = {io_in[1:0], io_in[15:13]} == 5'h9;
  wire cmd_li = {io_in[1:0], io_in[15:13]} == 5'ha;
  wire cmd_lui = {io_in[1:0], io_in[15:13]} == 5'hb;
  wire cmd_arith = {io_in[1:0], io_in[15:13]} == 5'hc;
  wire cmd_j = {io_in[1:0], io_in[15:13]} == 5'hd;
  wire cmd_beqz = {io_in[1:0], io_in[15:13]} == 5'he;
  wire cmd_bnez = {io_in[1:0], io_in[15:13]} == 5'hf;
  wire cmd_slli = {io_in[1:0], io_in[15:13]} == 5'h10;
  wire cmd_fldsp = {io_in[1:0], io_in[15:13]} == 5'h11;
  wire cmd_lwsp = {io_in[1:0], io_in[15:13]} == 5'h12;
  wire cmd_flwsp = {io_in[1:0], io_in[15:13]} == 5'h13;
  wire cmd_jalr = {io_in[1:0], io_in[15:13]} == 5'h14;
  wire cmd_fsdsp = {io_in[1:0], io_in[15:13]} == 5'h15;
  wire cmd_swsp = {io_in[1:0], io_in[15:13]} == 5'h16;
  wire cmd_fswsp = {io_in[1:0], io_in[15:13]} == 5'h17;

  wire [6:0] bits_addi4spn_opc = (io_in[12:5] != 8'h0) ? 7'h13 : 7'h1f;
  wire [31:0] bits_addi4spn = {2'd0, addi4spnImm, sp, 3'h0, rs2p, bits_addi4spn_opc};
  wire [31:0] bits_fld = {{4'd0}, ldImm, rs1p, 3'h3, rs2p, 7'h7};
  wire [31:0] bits_lw = {{5'd0}, lwImm, rs1p, 3'h2, rs2p, 7'h3};
  wire [31:0] bits_flw = {{5'd0}, lwImm, rs1p, 3'h2, rs2p, 7'h7};
  wire [31:0] bits_unimp = {{5'd0}, lwImm[6:5], rs2p, rs1p, 3'h2, lwImm[4:0], 7'h3f};
  wire [31:0] bits_fsd = {{4'd0}, ldImm[7:5], rs2p, rs1p, 3'h3, ldImm[4:0], 7'h27};
  wire [31:0] bits_sw = {{5'd0}, lwImm[6:5], rs2p, rs1p, 3'h2, lwImm[4:0], 7'h23};
  wire [31:0] bits_fsw = {{5'd0}, lwImm[6:5], rs2p, rs1p, 3'h2, lwImm[4:0], 7'h27};
  wire [31:0] bits_addi = {addiImm, rd, 3'h0, rd, 7'h13};
  wire [31:0] bits_jal = {jImm[20], jImm[10:1], jImm[11], jImm[19:12], ra, 7'h6f};
  wire [31:0] bits_li = {addiImm, x0, 3'h0, rd, 7'h13};
  wire [6:0] bits_addi16sp_opc = (addiImm != 12'h0) ? 7'h13 : 7'h1f;
  wire [31:0] bits_addi16sp = {addi16spImm, rd, 3'h0, rd, bits_addi16sp_opc};
//  wire [6:0] bits_me_opc = ({{7{io_in[12]}}, io_in[6:2]} != 12'h0) ? 7'h37 : 7'h3f;
  wire [6:0] bits_me_opc = (addiImm != 12'h0) ? 7'h37 : 7'h3f;
  wire [31:0] bits_me = {luiImm[31:12], rd, bits_me_opc};
  wire rd_x0_sp = (rd == x0) | (rd == sp);
  wire [31:0] bits_lui = rd_x0_sp ? bits_addi16sp 
			: bits_me;

  wire [31:0] bits_srli = {{6'h0}, shamt, rs1p, 3'h5, rs1p, 7'h13}; // Corrected
  wire [31:0] bits_srai = bits_srli | 32'h40000000;
  wire [31:0] bits_andi = {addiImm, rs1p, 3'h7, rs1p,7'h13};

  wire [2:0] bits_rtype_funct = ({io_in[12], io_in[6:5]} == 3'h7) ? 3'h3 
		: ({io_in[12], io_in[6:5]} == 3'h6) ? 3'h2 
		: ({io_in[12], io_in[6:5]} == 3'h5) ? 3'h0 
		: ({io_in[12], io_in[6:5]} == 3'h4) ? 3'h0 
		: ({io_in[12], io_in[6:5]} == 3'h3) ? 3'h7 
		: ({io_in[12], io_in[6:5]} == 3'h2) ? 3'h6 
		: ({io_in[12], io_in[6:5]} == 3'h1) ? 3'h4 
		: 3'h0;
  wire [6:0] bits_rtype_opc = io_in[12] ? 7'h3b : 7'h33;
  wire [31:0] bits_rtype_sub = (io_in[6:5] == 2'h0) ? 32'h40000000 : 32'h0;
  wire [31:0] bits_rtype = {{7'd0}, rs2p, rs1p, bits_rtype_funct, rs1p, bits_rtype_opc} | bits_rtype_sub;

  wire [31:0] bits_arith = (io_in[11:10] == 2'h3) ? bits_rtype 
		: (io_in[11:10] == 2'h2) ? bits_andi 
		: (io_in[11:10] == 2'h1) ? bits_srai
		: bits_srli;
  wire [31:0] bits_j = {jImm[20], jImm[10:1], jImm[11], jImm[19:12], x0, 7'h6f};
  wire [31:0] bits_beqz = {bImm[12], bImm[10:5], x0, rs1p, 3'h0, bImm[4:1], bImm[11], 7'h63};
  wire [31:0] bits_bnez = {bImm[12], bImm[10:5], x0, rs1p, 3'h1, bImm[4:1], bImm[11], 7'h63};
  wire [31:0] bits_slli = {{6'd0}, shamt, rd, 3'h1, rd, 7'h13};
  wire [31:0] bits_fldsp = {{3'd0}, ldspImm, sp, 3'h3, rd, 7'h7};
  wire [6:0] bits_lwsp_load_opc = (rd != 5'h0) ? 7'h3 : 7'h1f;
  wire [31:0] bits_lwsp = {{4'd0}, lwspImm, sp, 3'h2, rd, bits_lwsp_load_opc};
  wire [31:0] bits_flwsp = {{4'd0}, lwspImm, sp, 3'h2, rd, 7'h7};

  wire rs2_or = rs2 != 5'h0;
  wire [31:0] bits_jalr_jr = {7'h0, rs2, rd, 3'h0, x0, 7'h67};
  wire [31:0] bits_jalr_reserved = {bits_jalr_jr[31:7], 7'h1f};
  wire [31:0] bits_jalr_jr_reserved = (rd != 5'h0) ? bits_jalr_jr 
			: bits_jalr_reserved;
  wire [31:0] bits_jalr_mv = {{7'd0}, rs2, x0, 3'h0, rd, 7'h33};
  wire [31:0] bits_jalr_add = {{7'd0}, rs2, rd, 3'h0, rd, 7'h33};
  wire [31:0] bits_jalr_jalr = {{7'd0}, rs2, rd, 3'h0, ra, 7'h67};
  wire [31:0] bits_jalr_ebreak = {{7'd0}, bits_jalr_jr[24:7], 7'h73} | 32'h100000;
  wire [31:0] bits_jalr_jalr_ebreak = (rd != 5'h0) ? bits_jalr_jalr 
			: bits_jalr_ebreak;
  wire [31:0] bits_jalr_jalr_add = rs2_or ? bits_jalr_add 
			: bits_jalr_jalr_ebreak;
  wire [31:0] bits_jalr_jr_mv = rs2_or ? bits_jalr_mv 
			: bits_jalr_jr_reserved;
  wire [31:0] bits_jalr = io_in[12] ? bits_jalr_jalr_add 
			: bits_jalr_jr_mv;

  wire [31:0] bits_fsdsp = {{3'd0}, sdspImm[8:5], rs2, sp, 3'h3, sdspImm[4:0], 7'h27};
  wire [31:0] bits_swsp = {{4'd0}, swspImm[7:5], rs2, sp, 3'h2, swspImm[4:0], 7'h23};
  wire [31:0] bits_fswsp = {{4'd0}, swspImm[7:5], rs2, sp, 3'h2, swspImm[4:0], 7'h27};

  assign io_out_bits =  cmd_fswsp ? bits_fswsp 
			: cmd_swsp ? bits_swsp 
			: cmd_fsdsp ? bits_fsdsp 
			: cmd_jalr ? bits_jalr 
			: cmd_flwsp ? bits_flwsp 
			: cmd_lwsp ? bits_lwsp 
			: cmd_fldsp ? bits_fldsp 
			: cmd_slli ? bits_slli 
			: cmd_bnez ? bits_bnez 
			: cmd_beqz ? bits_beqz 
			: cmd_j ? bits_j 
			: cmd_arith ? bits_arith 
			: cmd_lui ? bits_lui 
			: cmd_li ? bits_li 
			: cmd_jal ? bits_jal 
			: cmd_addi ? bits_addi 
			: cmd_fsw ? bits_fsw 
			: cmd_sw ? bits_sw 
			: cmd_fsd ? bits_fsd 
			: cmd_unimp ? bits_unimp 
			: cmd_flw ? bits_flw 
			: cmd_lw ? bits_lw 
			: cmd_fld ? bits_fld 
			: cmd_addi4spn ? bits_addi4spn
			: io_in;

  wire [4:0] rd_jalr = io_in[12] ? (rs2_or ? rd : ra) 
			: rs2_or ? rd 
			: x0;
  assign io_out_rd = cmd_fswsp ? rd 
			: cmd_swsp ? rd 
			: cmd_fsdsp ? rd 
			: cmd_jalr ? rd_jalr 
			: cmd_flwsp ? rd 
			: cmd_lwsp ? rd 
			: cmd_fldsp ? rd 
			: cmd_slli ? rd 
			: cmd_bnez ? x0 
			: cmd_beqz ? rs1p 
			: cmd_j ? x0 
			: cmd_arith ? rs1p 
			: cmd_lui ? (rd_x0_sp ? rd : rd) 
			: cmd_li ? rd 
			: cmd_jal ? ra 
			: cmd_addi ? rd 
			: cmd_fsw ? rs2p 
			: cmd_sw ? rs2p 
			: cmd_fsd ? rs2p 
			: cmd_unimp ? rs2p 
			: cmd_flw ? rs2p 
			: cmd_lw ? rs2p 
			: cmd_fld ? rs2p 
			: cmd_addi4spn ? rs2p
			: rd;

  wire [4:0] rs1_jalr = io_in[12] ? (rs2_or ? rd : rd) 
			: rs2_or ? x0 
			: rd;
  assign io_out_rs1 = cmd_fswsp ? sp 
			: cmd_swsp ? sp 
			: cmd_fsdsp ? sp 
			: cmd_jalr ? rs1_jalr 
			: cmd_flwsp ? sp 
			: cmd_lwsp ? sp 
			: cmd_fldsp ? sp 
			: cmd_slli ? rd 
			: cmd_bnez ? rs1p 
			: cmd_beqz ? rs1p 
			: cmd_j ? rs1p 
			: cmd_arith ? rs1p 
			: cmd_lui ? (rd_x0_sp ? rd : rd) 
			: cmd_li ? x0 
			: cmd_jal ? rd 
			: cmd_addi ? rd 
			: cmd_fsw ? rs1p 
			: cmd_sw ? rs1p 
			: cmd_fsd ? rs1p 
			: cmd_unimp ? rs1p 
			: cmd_flw ? rs1p 
			: cmd_lw ? rs1p 
			: cmd_fld ? rs1p 
			: cmd_addi4spn ? sp
			: io_in[19:15];

  wire [4:0] rs2_jalr = io_in[12] ? (rs2_or ? rs2 : rs2) 
			: rs2_or ? rs2 
			: rs2;
  assign io_out_rs2 = cmd_fswsp ? rs2 
			: cmd_swsp ? rs2 
			: cmd_fsdsp ? rs2 
			: cmd_jalr ? rs2_jalr 
			: cmd_flwsp ? rs2 
			: cmd_lwsp ? rs2 
			: cmd_fldsp ? rs2 
			: cmd_slli ? rs2 
			: cmd_bnez ? x0
			: cmd_beqz ? x0
			: cmd_j ? rs2p 
			: cmd_arith ? rs2p 
			: cmd_lui ? (rd_x0_sp ? rs2p : rs2p) 
			: cmd_li ? rs2p 
			: cmd_jal ? rs2p 
			: cmd_addi ? rs2p 
			: cmd_fsw ? rs2p 
			: cmd_sw ? rs2p 
			: cmd_fsd ? rs2p 
			: cmd_unimp ? rs2p 
			: cmd_flw ? rs2p 
			: cmd_lw ? rs2p 
			: cmd_fld ? rs2p 
			: cmd_addi4spn ? rs2p
			: io_in[24:20];

  assign io_out_rs3 = io_in[31:27]; 

  assign io_rvc = io_in[1:0] != 2'h3;
// Passed
`endif // MY_ASSIGNMENT

endmodule
`endif // __RVCExpander

