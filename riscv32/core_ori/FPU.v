`include "include_module.v"
`ifdef __FPU
module FPU( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174442.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174443.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174444.4]
  input  [31:0] io_inst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174445.4]
  input  [31:0] io_fromint_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174445.4]
  input  [2:0]  io_fcsr_rm, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174445.4]
  output        io_fcsr_flags_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174445.4]
  output [4:0]  io_fcsr_flags_bits, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174445.4]
  output [31:0] io_store_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174445.4]
  output [31:0] io_toint_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174445.4]
  input         io_dmem_resp_val, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174445.4]
  input  [4:0]  io_dmem_resp_tag, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174445.4]
  input  [31:0] io_dmem_resp_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174445.4]
  input         io_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174445.4]
  output        io_fcsr_rdy, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174445.4]
  output        io_nack_mem, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174445.4]
  output        io_illegal_rm, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174445.4]
  input         io_killx, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174445.4]
  input         io_killm, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174445.4]
  output        io_dec_wen, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174445.4]
  output        io_dec_ren1, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174445.4]
  output        io_dec_ren2, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174445.4]
  output        io_dec_ren3, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174445.4]
  output        io_sboard_set, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174445.4]
  output        io_sboard_clr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174445.4]
  output [4:0]  io_sboard_clra // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174445.4]
);
  wire [31:0] fp_decoder_io_inst; // @[FPU.scala 692:26:freechips.rocketchip.system.DefaultRV32Config.fir@174452.4]
  wire  fp_decoder_io_sigs_wen; // @[FPU.scala 692:26:freechips.rocketchip.system.DefaultRV32Config.fir@174452.4]
  wire  fp_decoder_io_sigs_ren1; // @[FPU.scala 692:26:freechips.rocketchip.system.DefaultRV32Config.fir@174452.4]
  wire  fp_decoder_io_sigs_ren2; // @[FPU.scala 692:26:freechips.rocketchip.system.DefaultRV32Config.fir@174452.4]
  wire  fp_decoder_io_sigs_ren3; // @[FPU.scala 692:26:freechips.rocketchip.system.DefaultRV32Config.fir@174452.4]
  wire  fp_decoder_io_sigs_swap12; // @[FPU.scala 692:26:freechips.rocketchip.system.DefaultRV32Config.fir@174452.4]
  wire  fp_decoder_io_sigs_swap23; // @[FPU.scala 692:26:freechips.rocketchip.system.DefaultRV32Config.fir@174452.4]
  wire  fp_decoder_io_sigs_singleOut; // @[FPU.scala 692:26:freechips.rocketchip.system.DefaultRV32Config.fir@174452.4]
  wire  fp_decoder_io_sigs_fromint; // @[FPU.scala 692:26:freechips.rocketchip.system.DefaultRV32Config.fir@174452.4]
  wire  fp_decoder_io_sigs_toint; // @[FPU.scala 692:26:freechips.rocketchip.system.DefaultRV32Config.fir@174452.4]
  wire  fp_decoder_io_sigs_fastpipe; // @[FPU.scala 692:26:freechips.rocketchip.system.DefaultRV32Config.fir@174452.4]
  wire  fp_decoder_io_sigs_fma; // @[FPU.scala 692:26:freechips.rocketchip.system.DefaultRV32Config.fir@174452.4]
  wire  fp_decoder_io_sigs_div; // @[FPU.scala 692:26:freechips.rocketchip.system.DefaultRV32Config.fir@174452.4]
  wire  fp_decoder_io_sigs_sqrt; // @[FPU.scala 692:26:freechips.rocketchip.system.DefaultRV32Config.fir@174452.4]
  wire  fp_decoder_io_sigs_wflags; // @[FPU.scala 692:26:freechips.rocketchip.system.DefaultRV32Config.fir@174452.4]
  reg [32:0] regfile [0:31]; // @[FPU.scala 733:20:freechips.rocketchip.system.DefaultRV32Config.fir@174569.4]
  reg [63:0] _RAND_0;
  wire [32:0] regfile_ex_rs_0_data; // @[FPU.scala 733:20:freechips.rocketchip.system.DefaultRV32Config.fir@174569.4]
  wire [4:0] regfile_ex_rs_0_addr; // @[FPU.scala 733:20:freechips.rocketchip.system.DefaultRV32Config.fir@174569.4]
  wire [32:0] regfile_ex_rs_1_data; // @[FPU.scala 733:20:freechips.rocketchip.system.DefaultRV32Config.fir@174569.4]
  wire [4:0] regfile_ex_rs_1_addr; // @[FPU.scala 733:20:freechips.rocketchip.system.DefaultRV32Config.fir@174569.4]
  wire [32:0] regfile_ex_rs_2_data; // @[FPU.scala 733:20:freechips.rocketchip.system.DefaultRV32Config.fir@174569.4]
  wire [4:0] regfile_ex_rs_2_addr; // @[FPU.scala 733:20:freechips.rocketchip.system.DefaultRV32Config.fir@174569.4]
  wire [32:0] regfile__T_11_data; // @[FPU.scala 733:20:freechips.rocketchip.system.DefaultRV32Config.fir@174569.4]
  wire [4:0] regfile__T_11_addr; // @[FPU.scala 733:20:freechips.rocketchip.system.DefaultRV32Config.fir@174569.4]
  wire  regfile__T_11_mask; // @[FPU.scala 733:20:freechips.rocketchip.system.DefaultRV32Config.fir@174569.4]
  wire  regfile__T_11_en; // @[FPU.scala 733:20:freechips.rocketchip.system.DefaultRV32Config.fir@174569.4]
  wire [32:0] regfile__T_134_data; // @[FPU.scala 733:20:freechips.rocketchip.system.DefaultRV32Config.fir@174569.4]
  wire [4:0] regfile__T_134_addr; // @[FPU.scala 733:20:freechips.rocketchip.system.DefaultRV32Config.fir@174569.4]
  wire  regfile__T_134_mask; // @[FPU.scala 733:20:freechips.rocketchip.system.DefaultRV32Config.fir@174569.4]
  wire  regfile__T_134_en; // @[FPU.scala 733:20:freechips.rocketchip.system.DefaultRV32Config.fir@174569.4]
  wire [31:0] my_recFNFromFN_io_in; // @[FPU.scala 249:40:freechips.rocketchip.system.DefaultRV32Config.fir@174572.6]
  wire [32:0] my_recFNFromFN_io_out; // @[FPU.scala 249:40:freechips.rocketchip.system.DefaultRV32Config.fir@174572.6]
  wire  sfma_clock; // @[FPU.scala 777:20:freechips.rocketchip.system.DefaultRV32Config.fir@174632.4]
  wire  sfma_reset; // @[FPU.scala 777:20:freechips.rocketchip.system.DefaultRV32Config.fir@174632.4]
  wire  sfma_io_in_valid; // @[FPU.scala 777:20:freechips.rocketchip.system.DefaultRV32Config.fir@174632.4]
  wire  sfma_io_in_bits_ren3; // @[FPU.scala 777:20:freechips.rocketchip.system.DefaultRV32Config.fir@174632.4]
  wire  sfma_io_in_bits_swap23; // @[FPU.scala 777:20:freechips.rocketchip.system.DefaultRV32Config.fir@174632.4]
  wire [2:0] sfma_io_in_bits_rm; // @[FPU.scala 777:20:freechips.rocketchip.system.DefaultRV32Config.fir@174632.4]
  wire [1:0] sfma_io_in_bits_fmaCmd; // @[FPU.scala 777:20:freechips.rocketchip.system.DefaultRV32Config.fir@174632.4]
  wire [32:0] sfma_io_in_bits_in1; // @[FPU.scala 777:20:freechips.rocketchip.system.DefaultRV32Config.fir@174632.4]
  wire [32:0] sfma_io_in_bits_in2; // @[FPU.scala 777:20:freechips.rocketchip.system.DefaultRV32Config.fir@174632.4]
  wire [32:0] sfma_io_in_bits_in3; // @[FPU.scala 777:20:freechips.rocketchip.system.DefaultRV32Config.fir@174632.4]
  wire [32:0] sfma_io_out_bits_data; // @[FPU.scala 777:20:freechips.rocketchip.system.DefaultRV32Config.fir@174632.4]
  wire [4:0] sfma_io_out_bits_exc; // @[FPU.scala 777:20:freechips.rocketchip.system.DefaultRV32Config.fir@174632.4]
  wire  fpiu_clock; // @[FPU.scala 781:20:freechips.rocketchip.system.DefaultRV32Config.fir@174666.4]
  wire  fpiu_io_in_valid; // @[FPU.scala 781:20:freechips.rocketchip.system.DefaultRV32Config.fir@174666.4]
  wire  fpiu_io_in_bits_ren2; // @[FPU.scala 781:20:freechips.rocketchip.system.DefaultRV32Config.fir@174666.4]
  wire  fpiu_io_in_bits_wflags; // @[FPU.scala 781:20:freechips.rocketchip.system.DefaultRV32Config.fir@174666.4]
  wire [2:0] fpiu_io_in_bits_rm; // @[FPU.scala 781:20:freechips.rocketchip.system.DefaultRV32Config.fir@174666.4]
  wire [1:0] fpiu_io_in_bits_typ; // @[FPU.scala 781:20:freechips.rocketchip.system.DefaultRV32Config.fir@174666.4]
  wire [32:0] fpiu_io_in_bits_in1; // @[FPU.scala 781:20:freechips.rocketchip.system.DefaultRV32Config.fir@174666.4]
  wire [32:0] fpiu_io_in_bits_in2; // @[FPU.scala 781:20:freechips.rocketchip.system.DefaultRV32Config.fir@174666.4]
  wire [2:0] fpiu_io_out_bits_in_rm; // @[FPU.scala 781:20:freechips.rocketchip.system.DefaultRV32Config.fir@174666.4]
  wire [32:0] fpiu_io_out_bits_in_in1; // @[FPU.scala 781:20:freechips.rocketchip.system.DefaultRV32Config.fir@174666.4]
  wire [32:0] fpiu_io_out_bits_in_in2; // @[FPU.scala 781:20:freechips.rocketchip.system.DefaultRV32Config.fir@174666.4]
  wire  fpiu_io_out_bits_lt; // @[FPU.scala 781:20:freechips.rocketchip.system.DefaultRV32Config.fir@174666.4]
  wire [31:0] fpiu_io_out_bits_store; // @[FPU.scala 781:20:freechips.rocketchip.system.DefaultRV32Config.fir@174666.4]
  wire [31:0] fpiu_io_out_bits_toint; // @[FPU.scala 781:20:freechips.rocketchip.system.DefaultRV32Config.fir@174666.4]
  wire [4:0] fpiu_io_out_bits_exc; // @[FPU.scala 781:20:freechips.rocketchip.system.DefaultRV32Config.fir@174666.4]
  wire  ifpu_clock; // @[FPU.scala 791:20:freechips.rocketchip.system.DefaultRV32Config.fir@174711.4]
  wire  ifpu_reset; // @[FPU.scala 791:20:freechips.rocketchip.system.DefaultRV32Config.fir@174711.4]
  wire  ifpu_io_in_valid; // @[FPU.scala 791:20:freechips.rocketchip.system.DefaultRV32Config.fir@174711.4]
  wire  ifpu_io_in_bits_wflags; // @[FPU.scala 791:20:freechips.rocketchip.system.DefaultRV32Config.fir@174711.4]
  wire [2:0] ifpu_io_in_bits_rm; // @[FPU.scala 791:20:freechips.rocketchip.system.DefaultRV32Config.fir@174711.4]
  wire [1:0] ifpu_io_in_bits_typ; // @[FPU.scala 791:20:freechips.rocketchip.system.DefaultRV32Config.fir@174711.4]
  wire [31:0] ifpu_io_in_bits_in1; // @[FPU.scala 791:20:freechips.rocketchip.system.DefaultRV32Config.fir@174711.4]
  wire [32:0] ifpu_io_out_bits_data; // @[FPU.scala 791:20:freechips.rocketchip.system.DefaultRV32Config.fir@174711.4]
  wire [4:0] ifpu_io_out_bits_exc; // @[FPU.scala 791:20:freechips.rocketchip.system.DefaultRV32Config.fir@174711.4]
  wire  fpmu_clock; // @[FPU.scala 796:20:freechips.rocketchip.system.DefaultRV32Config.fir@174720.4]
  wire  fpmu_reset; // @[FPU.scala 796:20:freechips.rocketchip.system.DefaultRV32Config.fir@174720.4]
  wire  fpmu_io_in_valid; // @[FPU.scala 796:20:freechips.rocketchip.system.DefaultRV32Config.fir@174720.4]
  wire  fpmu_io_in_bits_wflags; // @[FPU.scala 796:20:freechips.rocketchip.system.DefaultRV32Config.fir@174720.4]
  wire [2:0] fpmu_io_in_bits_rm; // @[FPU.scala 796:20:freechips.rocketchip.system.DefaultRV32Config.fir@174720.4]
  wire [32:0] fpmu_io_in_bits_in1; // @[FPU.scala 796:20:freechips.rocketchip.system.DefaultRV32Config.fir@174720.4]
  wire [32:0] fpmu_io_in_bits_in2; // @[FPU.scala 796:20:freechips.rocketchip.system.DefaultRV32Config.fir@174720.4]
  wire [32:0] fpmu_io_out_bits_data; // @[FPU.scala 796:20:freechips.rocketchip.system.DefaultRV32Config.fir@174720.4]
  wire [4:0] fpmu_io_out_bits_exc; // @[FPU.scala 796:20:freechips.rocketchip.system.DefaultRV32Config.fir@174720.4]
  wire  fpmu_io_lt; // @[FPU.scala 796:20:freechips.rocketchip.system.DefaultRV32Config.fir@174720.4]
  wire  divSqrt_clock; // @[FPU.scala 905:27:freechips.rocketchip.system.DefaultRV32Config.fir@174926.4]
  wire  divSqrt_reset; // @[FPU.scala 905:27:freechips.rocketchip.system.DefaultRV32Config.fir@174926.4]
  wire  divSqrt_io_inReady; // @[FPU.scala 905:27:freechips.rocketchip.system.DefaultRV32Config.fir@174926.4]
  wire  divSqrt_io_inValid; // @[FPU.scala 905:27:freechips.rocketchip.system.DefaultRV32Config.fir@174926.4]
  wire  divSqrt_io_sqrtOp; // @[FPU.scala 905:27:freechips.rocketchip.system.DefaultRV32Config.fir@174926.4]
  wire [32:0] divSqrt_io_a; // @[FPU.scala 905:27:freechips.rocketchip.system.DefaultRV32Config.fir@174926.4]
  wire [32:0] divSqrt_io_b; // @[FPU.scala 905:27:freechips.rocketchip.system.DefaultRV32Config.fir@174926.4]
  wire [2:0] divSqrt_io_roundingMode; // @[FPU.scala 905:27:freechips.rocketchip.system.DefaultRV32Config.fir@174926.4]
  wire  divSqrt_io_outValid_div; // @[FPU.scala 905:27:freechips.rocketchip.system.DefaultRV32Config.fir@174926.4]
  wire  divSqrt_io_outValid_sqrt; // @[FPU.scala 905:27:freechips.rocketchip.system.DefaultRV32Config.fir@174926.4]
  wire [32:0] divSqrt_io_out; // @[FPU.scala 905:27:freechips.rocketchip.system.DefaultRV32Config.fir@174926.4]
  wire [4:0] divSqrt_io_exceptionFlags; // @[FPU.scala 905:27:freechips.rocketchip.system.DefaultRV32Config.fir@174926.4]
  reg  ex_reg_valid; // @[FPU.scala 696:25:freechips.rocketchip.system.DefaultRV32Config.fir@174457.4]
  reg [31:0] _RAND_1;
  reg [31:0] ex_reg_inst; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@174459.4]
  reg [31:0] _RAND_2;
  reg  ex_reg_ctrl_ren2; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@174463.4]
  reg [31:0] _RAND_3;
  reg  ex_reg_ctrl_ren3; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@174463.4]
  reg [31:0] _RAND_4;
  reg  ex_reg_ctrl_swap23; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@174463.4]
  reg [31:0] _RAND_5;
  reg  ex_reg_ctrl_singleOut; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@174463.4]
  reg [31:0] _RAND_6;
  reg  ex_reg_ctrl_fromint; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@174463.4]
  reg [31:0] _RAND_7;
  reg  ex_reg_ctrl_toint; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@174463.4]
  reg [31:0] _RAND_8;
  reg  ex_reg_ctrl_fastpipe; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@174463.4]
  reg [31:0] _RAND_9;
  reg  ex_reg_ctrl_fma; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@174463.4]
  reg [31:0] _RAND_10;
  reg  ex_reg_ctrl_div; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@174463.4]
  reg [31:0] _RAND_11;
  reg  ex_reg_ctrl_sqrt; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@174463.4]
  reg [31:0] _RAND_12;
  reg  ex_reg_ctrl_wflags; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@174463.4]
  reg [31:0] _RAND_13;
  reg [4:0] ex_ra_0; // @[FPU.scala 699:31:freechips.rocketchip.system.DefaultRV32Config.fir@174482.4]
  reg [31:0] _RAND_14;
  reg [4:0] ex_ra_1; // @[FPU.scala 699:31:freechips.rocketchip.system.DefaultRV32Config.fir@174483.4]
  reg [31:0] _RAND_15;
  reg [4:0] ex_ra_2; // @[FPU.scala 699:31:freechips.rocketchip.system.DefaultRV32Config.fir@174484.4]
  reg [31:0] _RAND_16;
  reg  load_wb; // @[FPU.scala 702:20:freechips.rocketchip.system.DefaultRV32Config.fir@174485.4]
  reg [31:0] _RAND_17;
  reg [31:0] load_wb_data; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@174492.4]
  reg [31:0] _RAND_18;
  reg [4:0] load_wb_tag; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@174496.4]
  reg [31:0] _RAND_19;
  reg  mem_reg_valid; // @[FPU.scala 713:30:freechips.rocketchip.system.DefaultRV32Config.fir@174506.4]
  reg [31:0] _RAND_20;
  wire  killm; // @[FPU.scala 714:25:freechips.rocketchip.system.DefaultRV32Config.fir@174507.4]
  wire  _T_3; // @[FPU.scala 718:41:freechips.rocketchip.system.DefaultRV32Config.fir@174510.4]
  wire  killx; // @[FPU.scala 718:24:freechips.rocketchip.system.DefaultRV32Config.fir@174511.4]
  wire  _T_4; // @[FPU.scala 719:36:freechips.rocketchip.system.DefaultRV32Config.fir@174512.4]
  wire  _T_5; // @[FPU.scala 719:33:freechips.rocketchip.system.DefaultRV32Config.fir@174513.4]
  reg [31:0] mem_reg_inst; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@174516.4]
  reg [31:0] _RAND_21;
  wire  _T_7; // @[FPU.scala 721:49:freechips.rocketchip.system.DefaultRV32Config.fir@174520.4]
  wire  _T_9; // @[FPU.scala 721:45:freechips.rocketchip.system.DefaultRV32Config.fir@174522.4]
  reg  wb_reg_valid; // @[FPU.scala 721:25:freechips.rocketchip.system.DefaultRV32Config.fir@174523.4]
  reg [31:0] _RAND_22;
  reg  mem_ctrl_singleOut; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@174531.4]
  reg [31:0] _RAND_23;
  reg  mem_ctrl_fromint; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@174531.4]
  reg [31:0] _RAND_24;
  reg  mem_ctrl_toint; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@174531.4]
  reg [31:0] _RAND_25;
  reg  mem_ctrl_fastpipe; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@174531.4]
  reg [31:0] _RAND_26;
  reg  mem_ctrl_fma; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@174531.4]
  reg [31:0] _RAND_27;
  reg  mem_ctrl_div; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@174531.4]
  reg [31:0] _RAND_28;
  reg  mem_ctrl_sqrt; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@174531.4]
  reg [31:0] _RAND_29;
  reg  mem_ctrl_wflags; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@174531.4]
  reg [31:0] _RAND_30;
  reg  wb_ctrl_toint; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@174550.4]
  reg [31:0] _RAND_31;
  wire  _T_21; // @[FPU.scala 745:13:freechips.rocketchip.system.DefaultRV32Config.fir@174596.8]
  wire [4:0] _T_22; // @[FPU.scala 745:51:freechips.rocketchip.system.DefaultRV32Config.fir@174598.10]
  wire [4:0] _T_24; // @[FPU.scala 749:50:freechips.rocketchip.system.DefaultRV32Config.fir@174608.10]
  wire  _T_27; // @[FPU.scala 751:32:freechips.rocketchip.system.DefaultRV32Config.fir@174616.8]
  wire  _T_28; // @[FPU.scala 751:29:freechips.rocketchip.system.DefaultRV32Config.fir@174617.8]
  wire [4:0] _T_30; // @[FPU.scala 753:46:freechips.rocketchip.system.DefaultRV32Config.fir@174624.8]
  wire [2:0] _T_31; // @[FPU.scala 755:30:freechips.rocketchip.system.DefaultRV32Config.fir@174628.4]
  wire  _T_32; // @[FPU.scala 755:38:freechips.rocketchip.system.DefaultRV32Config.fir@174629.4]
  wire  _T_34; // @[FPU.scala 778:33:freechips.rocketchip.system.DefaultRV32Config.fir@174636.4]
  wire [1:0] _T_40; // @[FPU.scala 766:30:freechips.rocketchip.system.DefaultRV32Config.fir@174652.4]
  wire  _T_41; // @[FPU.scala 766:39:freechips.rocketchip.system.DefaultRV32Config.fir@174653.4]
  wire  _T_42; // @[FPU.scala 766:67:freechips.rocketchip.system.DefaultRV32Config.fir@174654.4]
  wire  _T_43; // @[FPU.scala 766:53:freechips.rocketchip.system.DefaultRV32Config.fir@174655.4]
  wire [1:0] _GEN_155; // @[FPU.scala 766:36:freechips.rocketchip.system.DefaultRV32Config.fir@174656.4]
  wire  _T_45; // @[FPU.scala 782:51:freechips.rocketchip.system.DefaultRV32Config.fir@174670.4]
  wire  _T_46; // @[FPU.scala 782:66:freechips.rocketchip.system.DefaultRV32Config.fir@174671.4]
  wire  _T_47; // @[FPU.scala 782:103:freechips.rocketchip.system.DefaultRV32Config.fir@174672.4]
  wire  _T_48; // @[FPU.scala 782:82:freechips.rocketchip.system.DefaultRV32Config.fir@174673.4]
  wire [32:0] _T_62; // @[FPU.scala 794:29:freechips.rocketchip.system.DefaultRV32Config.fir@174718.4]
  reg [4:0] divSqrt_waddr; // @[FPU.scala 803:26:freechips.rocketchip.system.DefaultRV32Config.fir@174734.4]
  reg [31:0] _RAND_32;
  wire  _T_66; // @[FPU.scala 813:56:freechips.rocketchip.system.DefaultRV32Config.fir@174743.4]
  wire [1:0] _T_67; // @[FPU.scala 822:23:freechips.rocketchip.system.DefaultRV32Config.fir@174744.4]
  wire  _T_68; // @[FPU.scala 822:78:freechips.rocketchip.system.DefaultRV32Config.fir@174745.4]
  wire [1:0] _GEN_157; // @[FPU.scala 822:78:freechips.rocketchip.system.DefaultRV32Config.fir@174746.4]
  wire [1:0] memLatencyMask; // @[FPU.scala 822:78:freechips.rocketchip.system.DefaultRV32Config.fir@174746.4]
  reg [1:0] wen; // @[FPU.scala 836:16:freechips.rocketchip.system.DefaultRV32Config.fir@174747.4]
  reg [31:0] _RAND_33;
  reg [4:0] wbInfo_0_rd; // @[FPU.scala 837:19:freechips.rocketchip.system.DefaultRV32Config.fir@174748.4]
  reg [31:0] _RAND_34;
  reg [1:0] wbInfo_0_pipeid; // @[FPU.scala 837:19:freechips.rocketchip.system.DefaultRV32Config.fir@174748.4]
  reg [31:0] _RAND_35;
  reg [4:0] wbInfo_1_rd; // @[FPU.scala 837:19:freechips.rocketchip.system.DefaultRV32Config.fir@174748.4]
  reg [31:0] _RAND_36;
  reg [1:0] wbInfo_1_pipeid; // @[FPU.scala 837:19:freechips.rocketchip.system.DefaultRV32Config.fir@174748.4]
  reg [31:0] _RAND_37;
  wire  _T_69; // @[FPU.scala 838:48:freechips.rocketchip.system.DefaultRV32Config.fir@174749.4]
  wire  _T_70; // @[FPU.scala 838:69:freechips.rocketchip.system.DefaultRV32Config.fir@174750.4]
  wire  mem_wen; // @[FPU.scala 838:31:freechips.rocketchip.system.DefaultRV32Config.fir@174751.4]
  wire [1:0] _T_71; // @[FPU.scala 822:23:freechips.rocketchip.system.DefaultRV32Config.fir@174752.4]
  wire [1:0] _T_72; // @[FPU.scala 822:23:freechips.rocketchip.system.DefaultRV32Config.fir@174753.4]
  wire  _T_73; // @[FPU.scala 813:56:freechips.rocketchip.system.DefaultRV32Config.fir@174754.4]
  wire [2:0] _T_74; // @[FPU.scala 822:23:freechips.rocketchip.system.DefaultRV32Config.fir@174755.4]
  wire [1:0] _T_75; // @[FPU.scala 822:78:freechips.rocketchip.system.DefaultRV32Config.fir@174756.4]
  wire [2:0] _GEN_158; // @[FPU.scala 822:78:freechips.rocketchip.system.DefaultRV32Config.fir@174757.4]
  wire [2:0] _T_76; // @[FPU.scala 822:78:freechips.rocketchip.system.DefaultRV32Config.fir@174757.4]
  wire [2:0] _GEN_159; // @[FPU.scala 839:62:freechips.rocketchip.system.DefaultRV32Config.fir@174758.4]
  wire [2:0] _T_77; // @[FPU.scala 839:62:freechips.rocketchip.system.DefaultRV32Config.fir@174758.4]
  wire  _T_78; // @[FPU.scala 839:89:freechips.rocketchip.system.DefaultRV32Config.fir@174759.4]
  wire  _T_79; // @[FPU.scala 839:43:freechips.rocketchip.system.DefaultRV32Config.fir@174760.4]
  wire [2:0] _T_80; // @[FPU.scala 822:23:freechips.rocketchip.system.DefaultRV32Config.fir@174761.4]
  wire [2:0] _T_81; // @[FPU.scala 822:23:freechips.rocketchip.system.DefaultRV32Config.fir@174762.4]
  wire [3:0] _T_83; // @[FPU.scala 822:23:freechips.rocketchip.system.DefaultRV32Config.fir@174764.4]
  wire [2:0] _T_84; // @[FPU.scala 822:78:freechips.rocketchip.system.DefaultRV32Config.fir@174765.4]
  wire [3:0] _GEN_160; // @[FPU.scala 822:78:freechips.rocketchip.system.DefaultRV32Config.fir@174766.4]
  wire [3:0] _T_85; // @[FPU.scala 822:78:freechips.rocketchip.system.DefaultRV32Config.fir@174766.4]
  wire [3:0] _GEN_161; // @[FPU.scala 839:101:freechips.rocketchip.system.DefaultRV32Config.fir@174767.4]
  wire [3:0] _T_86; // @[FPU.scala 839:101:freechips.rocketchip.system.DefaultRV32Config.fir@174767.4]
  wire  _T_87; // @[FPU.scala 839:128:freechips.rocketchip.system.DefaultRV32Config.fir@174768.4]
  wire  _T_88; // @[FPU.scala 839:93:freechips.rocketchip.system.DefaultRV32Config.fir@174769.4]
  reg  write_port_busy; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@174770.4]
  reg [31:0] _RAND_38;
  wire  _T_90; // @[FPU.scala 843:14:freechips.rocketchip.system.DefaultRV32Config.fir@174775.4]
  wire  _T_91; // @[FPU.scala 845:14:freechips.rocketchip.system.DefaultRV32Config.fir@174779.4]
  wire [1:0] _GEN_162; // @[FPU.scala 848:23:freechips.rocketchip.system.DefaultRV32Config.fir@174785.8]
  wire [1:0] _T_94; // @[FPU.scala 848:23:freechips.rocketchip.system.DefaultRV32Config.fir@174785.8]
  wire  _T_95; // @[FPU.scala 851:13:freechips.rocketchip.system.DefaultRV32Config.fir@174788.6]
  wire  _T_96; // @[FPU.scala 851:47:freechips.rocketchip.system.DefaultRV32Config.fir@174789.6]
  wire  _T_97; // @[FPU.scala 851:30:freechips.rocketchip.system.DefaultRV32Config.fir@174790.6]
  wire [1:0] _GEN_163; // @[FPU.scala 824:108:freechips.rocketchip.system.DefaultRV32Config.fir@174799.8]
  wire [1:0] _T_103; // @[FPU.scala 824:108:freechips.rocketchip.system.DefaultRV32Config.fir@174799.8]
  wire [4:0] _T_104; // @[FPU.scala 855:37:freechips.rocketchip.system.DefaultRV32Config.fir@174801.8]
  wire  _T_106; // @[FPU.scala 851:47:freechips.rocketchip.system.DefaultRV32Config.fir@174805.6]
  wire  _T_107; // @[FPU.scala 851:30:freechips.rocketchip.system.DefaultRV32Config.fir@174806.6]
  wire  _T_195; // @[FPU.scala 920:37:freechips.rocketchip.system.DefaultRV32Config.fir@174952.4]
  reg  divSqrt_killed; // @[FPU.scala 898:29:freechips.rocketchip.system.DefaultRV32Config.fir@174919.4]
  reg [31:0] _RAND_39;
  wire  _T_196; // @[FPU.scala 921:24:freechips.rocketchip.system.DefaultRV32Config.fir@174954.6]
  wire  divSqrt_wen; // @[FPU.scala 920:66:freechips.rocketchip.system.DefaultRV32Config.fir@174953.4]
  wire  _T_116; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@174824.4]
  wire [32:0] _T_117; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@174825.4]
  wire  _T_118; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@174826.4]
  wire [32:0] _T_119; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@174827.4]
  wire  _T_120; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@174828.4]
  wire [32:0] _T_121; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@174829.4]
  wire [32:0] divSqrt_wdata; // @[FPU.scala 920:66:freechips.rocketchip.system.DefaultRV32Config.fir@174953.4]
  wire [4:0] _T_123; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@174832.4]
  wire [4:0] _T_125; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@174834.4]
  wire [4:0] wexc; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@174836.4]
  wire  _T_128; // @[FPU.scala 864:30:freechips.rocketchip.system.DefaultRV32Config.fir@174838.4]
  wire  wb_toint_valid; // @[FPU.scala 877:37:freechips.rocketchip.system.DefaultRV32Config.fir@174860.4]
  reg [4:0] wb_toint_exc; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@174861.4]
  reg [31:0] _RAND_40;
  wire  _T_138; // @[FPU.scala 879:41:freechips.rocketchip.system.DefaultRV32Config.fir@174865.4]
  wire [4:0] _T_141; // @[FPU.scala 881:8:freechips.rocketchip.system.DefaultRV32Config.fir@174869.4]
  wire [4:0] divSqrt_flags; // @[FPU.scala 920:66:freechips.rocketchip.system.DefaultRV32Config.fir@174953.4]
  wire [4:0] _T_142; // @[FPU.scala 882:8:freechips.rocketchip.system.DefaultRV32Config.fir@174870.4]
  wire [4:0] _T_143; // @[FPU.scala 881:48:freechips.rocketchip.system.DefaultRV32Config.fir@174871.4]
  wire [4:0] _T_145; // @[FPU.scala 883:8:freechips.rocketchip.system.DefaultRV32Config.fir@174873.4]
  wire  _T_147; // @[FPU.scala 885:47:freechips.rocketchip.system.DefaultRV32Config.fir@174876.4]
  wire  _T_148; // @[FPU.scala 885:72:freechips.rocketchip.system.DefaultRV32Config.fir@174877.4]
  wire  divSqrt_write_port_busy; // @[FPU.scala 885:65:freechips.rocketchip.system.DefaultRV32Config.fir@174878.4]
  wire  _T_149; // @[FPU.scala 886:33:freechips.rocketchip.system.DefaultRV32Config.fir@174879.4]
  wire  _T_150; // @[FPU.scala 886:68:freechips.rocketchip.system.DefaultRV32Config.fir@174880.4]
  wire  _T_151; // @[FPU.scala 886:51:freechips.rocketchip.system.DefaultRV32Config.fir@174881.4]
  wire  _T_153; // @[FPU.scala 886:87:freechips.rocketchip.system.DefaultRV32Config.fir@174883.4]
  wire  _T_155; // @[FPU.scala 886:120:freechips.rocketchip.system.DefaultRV32Config.fir@174885.4]
  wire  divSqrt_inFlight; // @[FPU.scala 913:13:freechips.rocketchip.system.DefaultRV32Config.fir@174942.4]
  wire  _T_156; // @[FPU.scala 886:131:freechips.rocketchip.system.DefaultRV32Config.fir@174886.4]
  wire  _T_158; // @[FPU.scala 887:34:freechips.rocketchip.system.DefaultRV32Config.fir@174889.4]
  reg  _T_164; // @[FPU.scala 890:55:freechips.rocketchip.system.DefaultRV32Config.fir@174897.4]
  reg [31:0] _RAND_41;
  wire [2:0] _T_172; // @[FPU.scala 895:27:freechips.rocketchip.system.DefaultRV32Config.fir@174909.4]
  wire  _T_173; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@174910.4]
  wire  _T_174; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@174911.4]
  wire  _T_175; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@174912.4]
  wire  _T_177; // @[FPU.scala 895:67:freechips.rocketchip.system.DefaultRV32Config.fir@174914.4]
  wire  _T_178; // @[FPU.scala 895:87:freechips.rocketchip.system.DefaultRV32Config.fir@174915.4]
  wire  _T_179; // @[FPU.scala 895:73:freechips.rocketchip.system.DefaultRV32Config.fir@174916.4]
  wire  tag_2; // @[FPU.scala 904:17:freechips.rocketchip.system.DefaultRV32Config.fir@174925.4]
  wire  _T_186; // @[FPU.scala 906:50:freechips.rocketchip.system.DefaultRV32Config.fir@174930.4]
  wire  _T_187; // @[FPU.scala 906:43:freechips.rocketchip.system.DefaultRV32Config.fir@174931.4]
  wire  _T_189; // @[FPU.scala 906:65:freechips.rocketchip.system.DefaultRV32Config.fir@174933.4]
  wire  _T_190; // @[FPU.scala 906:103:freechips.rocketchip.system.DefaultRV32Config.fir@174934.4]
  wire  _T_193; // @[FPU.scala 915:32:freechips.rocketchip.system.DefaultRV32Config.fir@174946.4]
  FPUDecoder fp_decoder ( // @[FPU.scala 692:26:freechips.rocketchip.system.DefaultRV32Config.fir@174452.4]
    .io_inst(fp_decoder_io_inst),
    .io_sigs_wen(fp_decoder_io_sigs_wen),
    .io_sigs_ren1(fp_decoder_io_sigs_ren1),
    .io_sigs_ren2(fp_decoder_io_sigs_ren2),
    .io_sigs_ren3(fp_decoder_io_sigs_ren3),
    .io_sigs_swap12(fp_decoder_io_sigs_swap12),
    .io_sigs_swap23(fp_decoder_io_sigs_swap23),
    .io_sigs_singleOut(fp_decoder_io_sigs_singleOut),
    .io_sigs_fromint(fp_decoder_io_sigs_fromint),
    .io_sigs_toint(fp_decoder_io_sigs_toint),
    .io_sigs_fastpipe(fp_decoder_io_sigs_fastpipe),
    .io_sigs_fma(fp_decoder_io_sigs_fma),
    .io_sigs_div(fp_decoder_io_sigs_div),
    .io_sigs_sqrt(fp_decoder_io_sigs_sqrt),
    .io_sigs_wflags(fp_decoder_io_sigs_wflags)
  );
  my_recFNFromFN my_recFNFromFN ( // @[FPU.scala 249:40:freechips.rocketchip.system.DefaultRV32Config.fir@174572.6]
    .io_in(my_recFNFromFN_io_in),
    .io_out(my_recFNFromFN_io_out)
  );
  FPUFMAPipe sfma ( // @[FPU.scala 777:20:freechips.rocketchip.system.DefaultRV32Config.fir@174632.4]
    .clock(sfma_clock),
    .reset(sfma_reset),
    .io_in_valid(sfma_io_in_valid),
    .io_in_bits_ren3(sfma_io_in_bits_ren3),
    .io_in_bits_swap23(sfma_io_in_bits_swap23),
    .io_in_bits_rm(sfma_io_in_bits_rm),
    .io_in_bits_fmaCmd(sfma_io_in_bits_fmaCmd),
    .io_in_bits_in1(sfma_io_in_bits_in1),
    .io_in_bits_in2(sfma_io_in_bits_in2),
    .io_in_bits_in3(sfma_io_in_bits_in3),
    .io_out_bits_data(sfma_io_out_bits_data),
    .io_out_bits_exc(sfma_io_out_bits_exc)
  );
  FPToInt fpiu ( // @[FPU.scala 781:20:freechips.rocketchip.system.DefaultRV32Config.fir@174666.4]
    .clock(fpiu_clock),
    .io_in_valid(fpiu_io_in_valid),
    .io_in_bits_ren2(fpiu_io_in_bits_ren2),
    .io_in_bits_wflags(fpiu_io_in_bits_wflags),
    .io_in_bits_rm(fpiu_io_in_bits_rm),
    .io_in_bits_typ(fpiu_io_in_bits_typ),
    .io_in_bits_in1(fpiu_io_in_bits_in1),
    .io_in_bits_in2(fpiu_io_in_bits_in2),
    .io_out_bits_in_rm(fpiu_io_out_bits_in_rm),
    .io_out_bits_in_in1(fpiu_io_out_bits_in_in1),
    .io_out_bits_in_in2(fpiu_io_out_bits_in_in2),
    .io_out_bits_lt(fpiu_io_out_bits_lt),
    .io_out_bits_store(fpiu_io_out_bits_store),
    .io_out_bits_toint(fpiu_io_out_bits_toint),
    .io_out_bits_exc(fpiu_io_out_bits_exc)
  );
  IntToFP ifpu ( // @[FPU.scala 791:20:freechips.rocketchip.system.DefaultRV32Config.fir@174711.4]
    .clock(ifpu_clock),
    .reset(ifpu_reset),
    .io_in_valid(ifpu_io_in_valid),
    .io_in_bits_wflags(ifpu_io_in_bits_wflags),
    .io_in_bits_rm(ifpu_io_in_bits_rm),
    .io_in_bits_typ(ifpu_io_in_bits_typ),
    .io_in_bits_in1(ifpu_io_in_bits_in1),
    .io_out_bits_data(ifpu_io_out_bits_data),
    .io_out_bits_exc(ifpu_io_out_bits_exc)
  );
  FPToFP fpmu ( // @[FPU.scala 796:20:freechips.rocketchip.system.DefaultRV32Config.fir@174720.4]
    .clock(fpmu_clock),
    .reset(fpmu_reset),
    .io_in_valid(fpmu_io_in_valid),
    .io_in_bits_wflags(fpmu_io_in_bits_wflags),
    .io_in_bits_rm(fpmu_io_in_bits_rm),
    .io_in_bits_in1(fpmu_io_in_bits_in1),
    .io_in_bits_in2(fpmu_io_in_bits_in2),
    .io_out_bits_data(fpmu_io_out_bits_data),
    .io_out_bits_exc(fpmu_io_out_bits_exc),
    .io_lt(fpmu_io_lt)
  );
  DivSqrtRecFN_small divSqrt ( // @[FPU.scala 905:27:freechips.rocketchip.system.DefaultRV32Config.fir@174926.4]
    .clock(divSqrt_clock),
    .reset(divSqrt_reset),
    .io_inReady(divSqrt_io_inReady),
    .io_inValid(divSqrt_io_inValid),
    .io_sqrtOp(divSqrt_io_sqrtOp),
    .io_a(divSqrt_io_a),
    .io_b(divSqrt_io_b),
    .io_roundingMode(divSqrt_io_roundingMode),
    .io_outValid_div(divSqrt_io_outValid_div),
    .io_outValid_sqrt(divSqrt_io_outValid_sqrt),
    .io_out(divSqrt_io_out),
    .io_exceptionFlags(divSqrt_io_exceptionFlags)
  );
  assign regfile_ex_rs_0_addr = ex_ra_0;
  assign regfile_ex_rs_0_data = regfile[regfile_ex_rs_0_addr]; // @[FPU.scala 733:20:freechips.rocketchip.system.DefaultRV32Config.fir@174569.4]
  assign regfile_ex_rs_1_addr = ex_ra_1;
  assign regfile_ex_rs_1_data = regfile[regfile_ex_rs_1_addr]; // @[FPU.scala 733:20:freechips.rocketchip.system.DefaultRV32Config.fir@174569.4]
  assign regfile_ex_rs_2_addr = ex_ra_2;
  assign regfile_ex_rs_2_data = regfile[regfile_ex_rs_2_addr]; // @[FPU.scala 733:20:freechips.rocketchip.system.DefaultRV32Config.fir@174569.4]
  assign regfile__T_11_data = my_recFNFromFN_io_out;
  assign regfile__T_11_addr = load_wb_tag;
  assign regfile__T_11_mask = 1'h1;
  assign regfile__T_11_en = load_wb;
  assign regfile__T_134_data = divSqrt_wen ? divSqrt_wdata : _T_121;
  assign regfile__T_134_addr = divSqrt_wen ? divSqrt_waddr : wbInfo_0_rd;
  assign regfile__T_134_mask = 1'h1;
  assign regfile__T_134_en = _T_128 | divSqrt_wen;
  assign killm = io_killm | io_nack_mem; // @[FPU.scala 714:25:freechips.rocketchip.system.DefaultRV32Config.fir@174507.4]
  assign _T_3 = mem_reg_valid & killm; // @[FPU.scala 718:41:freechips.rocketchip.system.DefaultRV32Config.fir@174510.4]
  assign killx = io_killx | _T_3; // @[FPU.scala 718:24:freechips.rocketchip.system.DefaultRV32Config.fir@174511.4]
  assign _T_4 = killx == 1'h0; // @[FPU.scala 719:36:freechips.rocketchip.system.DefaultRV32Config.fir@174512.4]
  assign _T_5 = ex_reg_valid & _T_4; // @[FPU.scala 719:33:freechips.rocketchip.system.DefaultRV32Config.fir@174513.4]
  assign _T_7 = killm == 1'h0; // @[FPU.scala 721:49:freechips.rocketchip.system.DefaultRV32Config.fir@174520.4]
  assign _T_9 = mem_reg_valid & _T_7; // @[FPU.scala 721:45:freechips.rocketchip.system.DefaultRV32Config.fir@174522.4]
  assign _T_21 = fp_decoder_io_sigs_swap12 == 1'h0; // @[FPU.scala 745:13:freechips.rocketchip.system.DefaultRV32Config.fir@174596.8]
  assign _T_22 = io_inst[19:15]; // @[FPU.scala 745:51:freechips.rocketchip.system.DefaultRV32Config.fir@174598.10]
  assign _T_24 = io_inst[24:20]; // @[FPU.scala 749:50:freechips.rocketchip.system.DefaultRV32Config.fir@174608.10]
  assign _T_27 = fp_decoder_io_sigs_swap23 == 1'h0; // @[FPU.scala 751:32:freechips.rocketchip.system.DefaultRV32Config.fir@174616.8]
  assign _T_28 = _T_21 & _T_27; // @[FPU.scala 751:29:freechips.rocketchip.system.DefaultRV32Config.fir@174617.8]
  assign _T_30 = io_inst[31:27]; // @[FPU.scala 753:46:freechips.rocketchip.system.DefaultRV32Config.fir@174624.8]
  assign _T_31 = ex_reg_inst[14:12]; // @[FPU.scala 755:30:freechips.rocketchip.system.DefaultRV32Config.fir@174628.4]
  assign _T_32 = _T_31 == 3'h7; // @[FPU.scala 755:38:freechips.rocketchip.system.DefaultRV32Config.fir@174629.4]
  assign _T_34 = ex_reg_valid & ex_reg_ctrl_fma; // @[FPU.scala 778:33:freechips.rocketchip.system.DefaultRV32Config.fir@174636.4]
  assign _T_40 = ex_reg_inst[3:2]; // @[FPU.scala 766:30:freechips.rocketchip.system.DefaultRV32Config.fir@174652.4]
  assign _T_41 = ex_reg_ctrl_ren3 == 1'h0; // @[FPU.scala 766:39:freechips.rocketchip.system.DefaultRV32Config.fir@174653.4]
  assign _T_42 = ex_reg_inst[27]; // @[FPU.scala 766:67:freechips.rocketchip.system.DefaultRV32Config.fir@174654.4]
  assign _T_43 = _T_41 & _T_42; // @[FPU.scala 766:53:freechips.rocketchip.system.DefaultRV32Config.fir@174655.4]
  assign _GEN_155 = {{1'd0}, _T_43}; // @[FPU.scala 766:36:freechips.rocketchip.system.DefaultRV32Config.fir@174656.4]
  assign _T_45 = ex_reg_ctrl_toint | ex_reg_ctrl_div; // @[FPU.scala 782:51:freechips.rocketchip.system.DefaultRV32Config.fir@174670.4]
  assign _T_46 = _T_45 | ex_reg_ctrl_sqrt; // @[FPU.scala 782:66:freechips.rocketchip.system.DefaultRV32Config.fir@174671.4]
  assign _T_47 = ex_reg_ctrl_fastpipe & ex_reg_ctrl_wflags; // @[FPU.scala 782:103:freechips.rocketchip.system.DefaultRV32Config.fir@174672.4]
  assign _T_48 = _T_46 | _T_47; // @[FPU.scala 782:82:freechips.rocketchip.system.DefaultRV32Config.fir@174673.4]
  assign _T_62 = {{1'd0}, io_fromint_data}; // @[FPU.scala 794:29:freechips.rocketchip.system.DefaultRV32Config.fir@174718.4]
  assign _T_66 = mem_ctrl_fma & mem_ctrl_singleOut; // @[FPU.scala 813:56:freechips.rocketchip.system.DefaultRV32Config.fir@174743.4]
  assign _T_67 = _T_66 ? 2'h2 : 2'h0; // @[FPU.scala 822:23:freechips.rocketchip.system.DefaultRV32Config.fir@174744.4]
  assign _T_68 = mem_ctrl_fastpipe | mem_ctrl_fromint; // @[FPU.scala 822:78:freechips.rocketchip.system.DefaultRV32Config.fir@174745.4]
  assign _GEN_157 = {{1'd0}, _T_68}; // @[FPU.scala 822:78:freechips.rocketchip.system.DefaultRV32Config.fir@174746.4]
  assign memLatencyMask = _GEN_157 | _T_67; // @[FPU.scala 822:78:freechips.rocketchip.system.DefaultRV32Config.fir@174746.4]
  assign _T_69 = mem_ctrl_fma | mem_ctrl_fastpipe; // @[FPU.scala 838:48:freechips.rocketchip.system.DefaultRV32Config.fir@174749.4]
  assign _T_70 = _T_69 | mem_ctrl_fromint; // @[FPU.scala 838:69:freechips.rocketchip.system.DefaultRV32Config.fir@174750.4]
  assign mem_wen = mem_reg_valid & _T_70; // @[FPU.scala 838:31:freechips.rocketchip.system.DefaultRV32Config.fir@174751.4]
  assign _T_71 = ex_reg_ctrl_fastpipe ? 2'h2 : 2'h0; // @[FPU.scala 822:23:freechips.rocketchip.system.DefaultRV32Config.fir@174752.4]
  assign _T_72 = ex_reg_ctrl_fromint ? 2'h2 : 2'h0; // @[FPU.scala 822:23:freechips.rocketchip.system.DefaultRV32Config.fir@174753.4]
  assign _T_73 = ex_reg_ctrl_fma & ex_reg_ctrl_singleOut; // @[FPU.scala 813:56:freechips.rocketchip.system.DefaultRV32Config.fir@174754.4]
  assign _T_74 = _T_73 ? 3'h4 : 3'h0; // @[FPU.scala 822:23:freechips.rocketchip.system.DefaultRV32Config.fir@174755.4]
  assign _T_75 = _T_71 | _T_72; // @[FPU.scala 822:78:freechips.rocketchip.system.DefaultRV32Config.fir@174756.4]
  assign _GEN_158 = {{1'd0}, _T_75}; // @[FPU.scala 822:78:freechips.rocketchip.system.DefaultRV32Config.fir@174757.4]
  assign _T_76 = _GEN_158 | _T_74; // @[FPU.scala 822:78:freechips.rocketchip.system.DefaultRV32Config.fir@174757.4]
  assign _GEN_159 = {{1'd0}, memLatencyMask}; // @[FPU.scala 839:62:freechips.rocketchip.system.DefaultRV32Config.fir@174758.4]
  assign _T_77 = _GEN_159 & _T_76; // @[FPU.scala 839:62:freechips.rocketchip.system.DefaultRV32Config.fir@174758.4]
  assign _T_78 = _T_77 != 3'h0; // @[FPU.scala 839:89:freechips.rocketchip.system.DefaultRV32Config.fir@174759.4]
  assign _T_79 = mem_wen & _T_78; // @[FPU.scala 839:43:freechips.rocketchip.system.DefaultRV32Config.fir@174760.4]
  assign _T_80 = ex_reg_ctrl_fastpipe ? 3'h4 : 3'h0; // @[FPU.scala 822:23:freechips.rocketchip.system.DefaultRV32Config.fir@174761.4]
  assign _T_81 = ex_reg_ctrl_fromint ? 3'h4 : 3'h0; // @[FPU.scala 822:23:freechips.rocketchip.system.DefaultRV32Config.fir@174762.4]
  assign _T_83 = _T_73 ? 4'h8 : 4'h0; // @[FPU.scala 822:23:freechips.rocketchip.system.DefaultRV32Config.fir@174764.4]
  assign _T_84 = _T_80 | _T_81; // @[FPU.scala 822:78:freechips.rocketchip.system.DefaultRV32Config.fir@174765.4]
  assign _GEN_160 = {{1'd0}, _T_84}; // @[FPU.scala 822:78:freechips.rocketchip.system.DefaultRV32Config.fir@174766.4]
  assign _T_85 = _GEN_160 | _T_83; // @[FPU.scala 822:78:freechips.rocketchip.system.DefaultRV32Config.fir@174766.4]
  assign _GEN_161 = {{2'd0}, wen}; // @[FPU.scala 839:101:freechips.rocketchip.system.DefaultRV32Config.fir@174767.4]
  assign _T_86 = _GEN_161 & _T_85; // @[FPU.scala 839:101:freechips.rocketchip.system.DefaultRV32Config.fir@174767.4]
  assign _T_87 = _T_86 != 4'h0; // @[FPU.scala 839:128:freechips.rocketchip.system.DefaultRV32Config.fir@174768.4]
  assign _T_88 = _T_79 | _T_87; // @[FPU.scala 839:93:freechips.rocketchip.system.DefaultRV32Config.fir@174769.4]
  assign _T_90 = wen[1]; // @[FPU.scala 843:14:freechips.rocketchip.system.DefaultRV32Config.fir@174775.4]
  assign _T_91 = wen[1:1]; // @[FPU.scala 845:14:freechips.rocketchip.system.DefaultRV32Config.fir@174779.4]
  assign _GEN_162 = {{1'd0}, _T_91}; // @[FPU.scala 848:23:freechips.rocketchip.system.DefaultRV32Config.fir@174785.8]
  assign _T_94 = _GEN_162 | memLatencyMask; // @[FPU.scala 848:23:freechips.rocketchip.system.DefaultRV32Config.fir@174785.8]
  assign _T_95 = write_port_busy == 1'h0; // @[FPU.scala 851:13:freechips.rocketchip.system.DefaultRV32Config.fir@174788.6]
  assign _T_96 = memLatencyMask[0]; // @[FPU.scala 851:47:freechips.rocketchip.system.DefaultRV32Config.fir@174789.6]
  assign _T_97 = _T_95 & _T_96; // @[FPU.scala 851:30:freechips.rocketchip.system.DefaultRV32Config.fir@174790.6]
  assign _GEN_163 = {{1'd0}, mem_ctrl_fromint}; // @[FPU.scala 824:108:freechips.rocketchip.system.DefaultRV32Config.fir@174799.8]
  assign _T_103 = _GEN_163 | _T_67; // @[FPU.scala 824:108:freechips.rocketchip.system.DefaultRV32Config.fir@174799.8]
  assign _T_104 = mem_reg_inst[11:7]; // @[FPU.scala 855:37:freechips.rocketchip.system.DefaultRV32Config.fir@174801.8]
  assign _T_106 = memLatencyMask[1]; // @[FPU.scala 851:47:freechips.rocketchip.system.DefaultRV32Config.fir@174805.6]
  assign _T_107 = _T_95 & _T_106; // @[FPU.scala 851:30:freechips.rocketchip.system.DefaultRV32Config.fir@174806.6]
  assign _T_195 = divSqrt_io_outValid_div | divSqrt_io_outValid_sqrt; // @[FPU.scala 920:37:freechips.rocketchip.system.DefaultRV32Config.fir@174952.4]
  assign _T_196 = divSqrt_killed == 1'h0; // @[FPU.scala 921:24:freechips.rocketchip.system.DefaultRV32Config.fir@174954.6]
  assign divSqrt_wen = _T_195 & _T_196; // @[FPU.scala 920:66:freechips.rocketchip.system.DefaultRV32Config.fir@174953.4]
  assign _T_116 = wbInfo_0_pipeid == 2'h1; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@174824.4]
  assign _T_117 = _T_116 ? ifpu_io_out_bits_data : fpmu_io_out_bits_data; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@174825.4]
  assign _T_118 = wbInfo_0_pipeid == 2'h2; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@174826.4]
  assign _T_119 = _T_118 ? sfma_io_out_bits_data : _T_117; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@174827.4]
  assign _T_120 = wbInfo_0_pipeid == 2'h3; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@174828.4]
  assign _T_121 = _T_120 ? sfma_io_out_bits_data : _T_119; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@174829.4]
  assign divSqrt_wdata = divSqrt_io_out; // @[FPU.scala 920:66:freechips.rocketchip.system.DefaultRV32Config.fir@174953.4]
  assign _T_123 = _T_116 ? ifpu_io_out_bits_exc : fpmu_io_out_bits_exc; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@174832.4]
  assign _T_125 = _T_118 ? sfma_io_out_bits_exc : _T_123; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@174834.4]
  assign wexc = _T_120 ? sfma_io_out_bits_exc : _T_125; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@174836.4]
  assign _T_128 = wen[0]; // @[FPU.scala 864:30:freechips.rocketchip.system.DefaultRV32Config.fir@174838.4]
  assign wb_toint_valid = wb_reg_valid & wb_ctrl_toint; // @[FPU.scala 877:37:freechips.rocketchip.system.DefaultRV32Config.fir@174860.4]
  assign _T_138 = wb_toint_valid | divSqrt_wen; // @[FPU.scala 879:41:freechips.rocketchip.system.DefaultRV32Config.fir@174865.4]
  assign _T_141 = wb_toint_valid ? wb_toint_exc : 5'h0; // @[FPU.scala 881:8:freechips.rocketchip.system.DefaultRV32Config.fir@174869.4]
  assign divSqrt_flags = divSqrt_io_exceptionFlags; // @[FPU.scala 920:66:freechips.rocketchip.system.DefaultRV32Config.fir@174953.4]
  assign _T_142 = divSqrt_wen ? divSqrt_flags : 5'h0; // @[FPU.scala 882:8:freechips.rocketchip.system.DefaultRV32Config.fir@174870.4]
  assign _T_143 = _T_141 | _T_142; // @[FPU.scala 881:48:freechips.rocketchip.system.DefaultRV32Config.fir@174871.4]
  assign _T_145 = _T_128 ? wexc : 5'h0; // @[FPU.scala 883:8:freechips.rocketchip.system.DefaultRV32Config.fir@174873.4]
  assign _T_147 = mem_ctrl_div | mem_ctrl_sqrt; // @[FPU.scala 885:47:freechips.rocketchip.system.DefaultRV32Config.fir@174876.4]
  assign _T_148 = wen != 2'h0; // @[FPU.scala 885:72:freechips.rocketchip.system.DefaultRV32Config.fir@174877.4]
  assign divSqrt_write_port_busy = _T_147 & _T_148; // @[FPU.scala 885:65:freechips.rocketchip.system.DefaultRV32Config.fir@174878.4]
  assign _T_149 = ex_reg_valid & ex_reg_ctrl_wflags; // @[FPU.scala 886:33:freechips.rocketchip.system.DefaultRV32Config.fir@174879.4]
  assign _T_150 = mem_reg_valid & mem_ctrl_wflags; // @[FPU.scala 886:68:freechips.rocketchip.system.DefaultRV32Config.fir@174880.4]
  assign _T_151 = _T_149 | _T_150; // @[FPU.scala 886:51:freechips.rocketchip.system.DefaultRV32Config.fir@174881.4]
  assign _T_153 = _T_151 | wb_toint_valid; // @[FPU.scala 886:87:freechips.rocketchip.system.DefaultRV32Config.fir@174883.4]
  assign _T_155 = _T_153 | _T_148; // @[FPU.scala 886:120:freechips.rocketchip.system.DefaultRV32Config.fir@174885.4]
  assign divSqrt_inFlight = divSqrt_io_inReady == 1'h0; // @[FPU.scala 913:13:freechips.rocketchip.system.DefaultRV32Config.fir@174942.4]
  assign _T_156 = _T_155 | divSqrt_inFlight; // @[FPU.scala 886:131:freechips.rocketchip.system.DefaultRV32Config.fir@174886.4]
  assign _T_158 = write_port_busy | divSqrt_write_port_busy; // @[FPU.scala 887:34:freechips.rocketchip.system.DefaultRV32Config.fir@174889.4]
  assign _T_172 = io_inst[14:12]; // @[FPU.scala 895:27:freechips.rocketchip.system.DefaultRV32Config.fir@174909.4]
  assign _T_173 = _T_172 == 3'h5; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@174910.4]
  assign _T_174 = _T_172 == 3'h6; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@174911.4]
  assign _T_175 = _T_173 | _T_174; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@174912.4]
  assign _T_177 = _T_172 == 3'h7; // @[FPU.scala 895:67:freechips.rocketchip.system.DefaultRV32Config.fir@174914.4]
  assign _T_178 = io_fcsr_rm >= 3'h5; // @[FPU.scala 895:87:freechips.rocketchip.system.DefaultRV32Config.fir@174915.4]
  assign _T_179 = _T_177 & _T_178; // @[FPU.scala 895:73:freechips.rocketchip.system.DefaultRV32Config.fir@174916.4]
  assign tag_2 = mem_ctrl_singleOut == 1'h0; // @[FPU.scala 904:17:freechips.rocketchip.system.DefaultRV32Config.fir@174925.4]
  assign _T_186 = tag_2 == 1'h0; // @[FPU.scala 906:50:freechips.rocketchip.system.DefaultRV32Config.fir@174930.4]
  assign _T_187 = mem_reg_valid & _T_186; // @[FPU.scala 906:43:freechips.rocketchip.system.DefaultRV32Config.fir@174931.4]
  assign _T_189 = _T_187 & _T_147; // @[FPU.scala 906:65:freechips.rocketchip.system.DefaultRV32Config.fir@174933.4]
  assign _T_190 = divSqrt_inFlight == 1'h0; // @[FPU.scala 906:103:freechips.rocketchip.system.DefaultRV32Config.fir@174934.4]
  assign _T_193 = divSqrt_io_inValid & divSqrt_io_inReady; // @[FPU.scala 915:32:freechips.rocketchip.system.DefaultRV32Config.fir@174946.4]
  assign io_fcsr_flags_valid = _T_138 | _T_128; // @[FPU.scala 879:23:freechips.rocketchip.system.DefaultRV32Config.fir@174868.4]
  assign io_fcsr_flags_bits = _T_143 | _T_145; // @[FPU.scala 880:22:freechips.rocketchip.system.DefaultRV32Config.fir@174875.4]
  assign io_store_data = fpiu_io_out_bits_store; // @[FPU.scala 784:17:freechips.rocketchip.system.DefaultRV32Config.fir@174703.4]
  assign io_toint_data = fpiu_io_out_bits_toint; // @[FPU.scala 785:17:freechips.rocketchip.system.DefaultRV32Config.fir@174704.4]
  assign io_fcsr_rdy = _T_156 == 1'h0; // @[FPU.scala 886:15:freechips.rocketchip.system.DefaultRV32Config.fir@174888.4]
  assign io_nack_mem = _T_158 | divSqrt_inFlight; // @[FPU.scala 887:15:freechips.rocketchip.system.DefaultRV32Config.fir@174891.4]
  assign io_illegal_rm = _T_175 | _T_179; // @[FPU.scala 895:17:freechips.rocketchip.system.DefaultRV32Config.fir@174918.4]
  assign io_dec_wen = fp_decoder_io_sigs_wen; // @[FPU.scala 888:10:freechips.rocketchip.system.DefaultRV32Config.fir@174892.4]
  assign io_dec_ren1 = fp_decoder_io_sigs_ren1; // @[FPU.scala 888:10:freechips.rocketchip.system.DefaultRV32Config.fir@174892.4]
  assign io_dec_ren2 = fp_decoder_io_sigs_ren2; // @[FPU.scala 888:10:freechips.rocketchip.system.DefaultRV32Config.fir@174892.4]
  assign io_dec_ren3 = fp_decoder_io_sigs_ren3; // @[FPU.scala 888:10:freechips.rocketchip.system.DefaultRV32Config.fir@174892.4]
  assign io_sboard_set = wb_reg_valid & _T_164; // @[FPU.scala 890:17:freechips.rocketchip.system.DefaultRV32Config.fir@174900.4]
  assign io_sboard_clr = _T_195 & _T_196; // @[FPU.scala 891:17:freechips.rocketchip.system.DefaultRV32Config.fir@174906.4]
  assign io_sboard_clra = divSqrt_wen ? divSqrt_waddr : wbInfo_0_rd; // @[FPU.scala 892:18:freechips.rocketchip.system.DefaultRV32Config.fir@174907.4]
  assign fp_decoder_io_inst = io_inst; // @[FPU.scala 693:22:freechips.rocketchip.system.DefaultRV32Config.fir@174456.4]
  assign my_recFNFromFN_io_in = load_wb_data; // @[FPU.scala 250:34:freechips.rocketchip.system.DefaultRV32Config.fir@174574.6]
  assign sfma_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174634.4]
  assign sfma_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174635.4]
  assign sfma_io_in_valid = _T_34 & ex_reg_ctrl_singleOut; // @[FPU.scala 778:20:freechips.rocketchip.system.DefaultRV32Config.fir@174638.4]
  assign sfma_io_in_bits_ren3 = ex_reg_ctrl_ren3; // @[FPU.scala 779:19:freechips.rocketchip.system.DefaultRV32Config.fir@174665.4]
  assign sfma_io_in_bits_swap23 = ex_reg_ctrl_swap23; // @[FPU.scala 779:19:freechips.rocketchip.system.DefaultRV32Config.fir@174665.4]
  assign sfma_io_in_bits_rm = _T_32 ? io_fcsr_rm : _T_31; // @[FPU.scala 779:19:freechips.rocketchip.system.DefaultRV32Config.fir@174665.4]
  assign sfma_io_in_bits_fmaCmd = _T_40 | _GEN_155; // @[FPU.scala 779:19:freechips.rocketchip.system.DefaultRV32Config.fir@174665.4]
  assign sfma_io_in_bits_in1 = regfile_ex_rs_0_data; // @[FPU.scala 779:19:freechips.rocketchip.system.DefaultRV32Config.fir@174665.4]
  assign sfma_io_in_bits_in2 = regfile_ex_rs_1_data; // @[FPU.scala 779:19:freechips.rocketchip.system.DefaultRV32Config.fir@174665.4]
  assign sfma_io_in_bits_in3 = regfile_ex_rs_2_data; // @[FPU.scala 779:19:freechips.rocketchip.system.DefaultRV32Config.fir@174665.4]
  assign fpiu_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174668.4]
  assign fpiu_io_in_valid = ex_reg_valid & _T_48; // @[FPU.scala 782:20:freechips.rocketchip.system.DefaultRV32Config.fir@174675.4]
  assign fpiu_io_in_bits_ren2 = ex_reg_ctrl_ren2; // @[FPU.scala 783:19:freechips.rocketchip.system.DefaultRV32Config.fir@174702.4]
  assign fpiu_io_in_bits_wflags = ex_reg_ctrl_wflags; // @[FPU.scala 783:19:freechips.rocketchip.system.DefaultRV32Config.fir@174702.4]
  assign fpiu_io_in_bits_rm = _T_32 ? io_fcsr_rm : _T_31; // @[FPU.scala 783:19:freechips.rocketchip.system.DefaultRV32Config.fir@174702.4]
  assign fpiu_io_in_bits_typ = ex_reg_inst[21:20]; // @[FPU.scala 783:19:freechips.rocketchip.system.DefaultRV32Config.fir@174702.4]
  assign fpiu_io_in_bits_in1 = regfile_ex_rs_0_data; // @[FPU.scala 783:19:freechips.rocketchip.system.DefaultRV32Config.fir@174702.4]
  assign fpiu_io_in_bits_in2 = regfile_ex_rs_1_data; // @[FPU.scala 783:19:freechips.rocketchip.system.DefaultRV32Config.fir@174702.4]
  assign ifpu_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174713.4]
  assign ifpu_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174714.4]
  assign ifpu_io_in_valid = ex_reg_valid & ex_reg_ctrl_fromint; // @[FPU.scala 792:20:freechips.rocketchip.system.DefaultRV32Config.fir@174716.4]
  assign ifpu_io_in_bits_wflags = fpiu_io_in_bits_wflags; // @[FPU.scala 793:19:freechips.rocketchip.system.DefaultRV32Config.fir@174717.4]
  assign ifpu_io_in_bits_rm = fpiu_io_in_bits_rm; // @[FPU.scala 793:19:freechips.rocketchip.system.DefaultRV32Config.fir@174717.4]
  assign ifpu_io_in_bits_typ = fpiu_io_in_bits_typ; // @[FPU.scala 793:19:freechips.rocketchip.system.DefaultRV32Config.fir@174717.4]
  assign ifpu_io_in_bits_in1 = _T_62[31:0]; // @[FPU.scala 793:19:freechips.rocketchip.system.DefaultRV32Config.fir@174717.4 FPU.scala 794:23:freechips.rocketchip.system.DefaultRV32Config.fir@174719.4]
  assign fpmu_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174722.4]
  assign fpmu_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174723.4]
  assign fpmu_io_in_valid = ex_reg_valid & ex_reg_ctrl_fastpipe; // @[FPU.scala 797:20:freechips.rocketchip.system.DefaultRV32Config.fir@174725.4]
  assign fpmu_io_in_bits_wflags = fpiu_io_in_bits_wflags; // @[FPU.scala 798:19:freechips.rocketchip.system.DefaultRV32Config.fir@174726.4]
  assign fpmu_io_in_bits_rm = fpiu_io_in_bits_rm; // @[FPU.scala 798:19:freechips.rocketchip.system.DefaultRV32Config.fir@174726.4]
  assign fpmu_io_in_bits_in1 = fpiu_io_in_bits_in1; // @[FPU.scala 798:19:freechips.rocketchip.system.DefaultRV32Config.fir@174726.4]
  assign fpmu_io_in_bits_in2 = fpiu_io_in_bits_in2; // @[FPU.scala 798:19:freechips.rocketchip.system.DefaultRV32Config.fir@174726.4]
  assign fpmu_io_lt = fpiu_io_out_bits_lt; // @[FPU.scala 799:14:freechips.rocketchip.system.DefaultRV32Config.fir@174727.4]
  assign divSqrt_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174928.4]
  assign divSqrt_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@174929.4]
  assign divSqrt_io_inValid = _T_189 & _T_190; // @[FPU.scala 906:26:freechips.rocketchip.system.DefaultRV32Config.fir@174936.4]
  assign divSqrt_io_sqrtOp = mem_ctrl_sqrt; // @[FPU.scala 907:25:freechips.rocketchip.system.DefaultRV32Config.fir@174937.4]
  assign divSqrt_io_a = fpiu_io_out_bits_in_in1; // @[FPU.scala 908:20:freechips.rocketchip.system.DefaultRV32Config.fir@174938.4]
  assign divSqrt_io_b = fpiu_io_out_bits_in_in2; // @[FPU.scala 909:20:freechips.rocketchip.system.DefaultRV32Config.fir@174939.4]
  assign divSqrt_io_roundingMode = fpiu_io_out_bits_in_rm; // @[FPU.scala 910:31:freechips.rocketchip.system.DefaultRV32Config.fir@174940.4]
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
  _RAND_0 = {2{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 32; initvar = initvar+1)
    regfile[initvar] = _RAND_0[32:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  ex_reg_valid = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  ex_reg_inst = _RAND_2[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  ex_reg_ctrl_ren2 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  ex_reg_ctrl_ren3 = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  ex_reg_ctrl_swap23 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  ex_reg_ctrl_singleOut = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  ex_reg_ctrl_fromint = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  ex_reg_ctrl_toint = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  ex_reg_ctrl_fastpipe = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  ex_reg_ctrl_fma = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  ex_reg_ctrl_div = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  ex_reg_ctrl_sqrt = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  ex_reg_ctrl_wflags = _RAND_13[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  ex_ra_0 = _RAND_14[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  ex_ra_1 = _RAND_15[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  ex_ra_2 = _RAND_16[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  load_wb = _RAND_17[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  load_wb_data = _RAND_18[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  load_wb_tag = _RAND_19[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  mem_reg_valid = _RAND_20[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  mem_reg_inst = _RAND_21[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  wb_reg_valid = _RAND_22[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  mem_ctrl_singleOut = _RAND_23[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  mem_ctrl_fromint = _RAND_24[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  mem_ctrl_toint = _RAND_25[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  mem_ctrl_fastpipe = _RAND_26[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  mem_ctrl_fma = _RAND_27[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  mem_ctrl_div = _RAND_28[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  mem_ctrl_sqrt = _RAND_29[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{`RANDOM}};
  mem_ctrl_wflags = _RAND_30[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{`RANDOM}};
  wb_ctrl_toint = _RAND_31[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{`RANDOM}};
  divSqrt_waddr = _RAND_32[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{`RANDOM}};
  wen = _RAND_33[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{`RANDOM}};
  wbInfo_0_rd = _RAND_34[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{`RANDOM}};
  wbInfo_0_pipeid = _RAND_35[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{`RANDOM}};
  wbInfo_1_rd = _RAND_36[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{`RANDOM}};
  wbInfo_1_pipeid = _RAND_37[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{`RANDOM}};
  write_port_busy = _RAND_38[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {1{`RANDOM}};
  divSqrt_killed = _RAND_39[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{`RANDOM}};
  wb_toint_exc = _RAND_40[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {1{`RANDOM}};
  _T_164 = _RAND_41[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge clock) begin
    if(regfile__T_11_en & regfile__T_11_mask) begin
      regfile[regfile__T_11_addr] <= regfile__T_11_data; // @[FPU.scala 733:20:freechips.rocketchip.system.DefaultRV32Config.fir@174569.4]
    end
    if(regfile__T_134_en & regfile__T_134_mask) begin
      regfile[regfile__T_134_addr] <= regfile__T_134_data; // @[FPU.scala 733:20:freechips.rocketchip.system.DefaultRV32Config.fir@174569.4]
    end
    if (reset) begin
      ex_reg_valid <= 1'h0;
    end else begin
      ex_reg_valid <= io_valid;
    end
    if (io_valid) begin
      ex_reg_inst <= io_inst;
    end
    if (io_valid) begin
      ex_reg_ctrl_ren2 <= fp_decoder_io_sigs_ren2;
    end
    if (io_valid) begin
      ex_reg_ctrl_ren3 <= fp_decoder_io_sigs_ren3;
    end
    if (io_valid) begin
      ex_reg_ctrl_swap23 <= fp_decoder_io_sigs_swap23;
    end
    if (io_valid) begin
      ex_reg_ctrl_singleOut <= fp_decoder_io_sigs_singleOut;
    end
    if (io_valid) begin
      ex_reg_ctrl_fromint <= fp_decoder_io_sigs_fromint;
    end
    if (io_valid) begin
      ex_reg_ctrl_toint <= fp_decoder_io_sigs_toint;
    end
    if (io_valid) begin
      ex_reg_ctrl_fastpipe <= fp_decoder_io_sigs_fastpipe;
    end
    if (io_valid) begin
      ex_reg_ctrl_fma <= fp_decoder_io_sigs_fma;
    end
    if (io_valid) begin
      ex_reg_ctrl_div <= fp_decoder_io_sigs_div;
    end
    if (io_valid) begin
      ex_reg_ctrl_sqrt <= fp_decoder_io_sigs_sqrt;
    end
    if (io_valid) begin
      ex_reg_ctrl_wflags <= fp_decoder_io_sigs_wflags;
    end
    if (io_valid) begin
      if (fp_decoder_io_sigs_ren2) begin
        if (fp_decoder_io_sigs_swap12) begin
          ex_ra_0 <= _T_24;
        end else begin
          if (fp_decoder_io_sigs_ren1) begin
            if (_T_21) begin
              ex_ra_0 <= _T_22;
            end
          end
        end
      end else begin
        if (fp_decoder_io_sigs_ren1) begin
          if (_T_21) begin
            ex_ra_0 <= _T_22;
          end
        end
      end
    end
    if (io_valid) begin
      if (fp_decoder_io_sigs_ren2) begin
        if (_T_28) begin
          ex_ra_1 <= _T_24;
        end else begin
          if (fp_decoder_io_sigs_ren1) begin
            if (fp_decoder_io_sigs_swap12) begin
              ex_ra_1 <= _T_22;
            end
          end
        end
      end else begin
        if (fp_decoder_io_sigs_ren1) begin
          if (fp_decoder_io_sigs_swap12) begin
            ex_ra_1 <= _T_22;
          end
        end
      end
    end
    if (io_valid) begin
      if (fp_decoder_io_sigs_ren3) begin
        ex_ra_2 <= _T_30;
      end else begin
        if (fp_decoder_io_sigs_ren2) begin
          if (fp_decoder_io_sigs_swap23) begin
            ex_ra_2 <= _T_24;
          end
        end
      end
    end
    load_wb <= io_dmem_resp_val;
    if (io_dmem_resp_val) begin
      load_wb_data <= io_dmem_resp_data;
    end
    if (io_dmem_resp_val) begin
      load_wb_tag <= io_dmem_resp_tag;
    end
    if (reset) begin
      mem_reg_valid <= 1'h0;
    end else begin
      mem_reg_valid <= _T_5;
    end
    if (ex_reg_valid) begin
      mem_reg_inst <= ex_reg_inst;
    end
    if (reset) begin
      wb_reg_valid <= 1'h0;
    end else begin
      wb_reg_valid <= _T_9;
    end
    if (ex_reg_valid) begin
      mem_ctrl_singleOut <= ex_reg_ctrl_singleOut;
    end
    if (ex_reg_valid) begin
      mem_ctrl_fromint <= ex_reg_ctrl_fromint;
    end
    if (ex_reg_valid) begin
      mem_ctrl_toint <= ex_reg_ctrl_toint;
    end
    if (ex_reg_valid) begin
      mem_ctrl_fastpipe <= ex_reg_ctrl_fastpipe;
    end
    if (ex_reg_valid) begin
      mem_ctrl_fma <= ex_reg_ctrl_fma;
    end
    if (ex_reg_valid) begin
      mem_ctrl_div <= ex_reg_ctrl_div;
    end
    if (ex_reg_valid) begin
      mem_ctrl_sqrt <= ex_reg_ctrl_sqrt;
    end
    if (ex_reg_valid) begin
      mem_ctrl_wflags <= ex_reg_ctrl_wflags;
    end
    if (mem_reg_valid) begin
      wb_ctrl_toint <= mem_ctrl_toint;
    end
    if (_T_193) begin
      divSqrt_waddr <= _T_104;
    end
    if (reset) begin
      wen <= 2'h0;
    end else begin
      if (mem_wen) begin
        if (_T_7) begin
          wen <= _T_94;
        end else begin
          wen <= {{1'd0}, _T_91};
        end
      end else begin
        wen <= {{1'd0}, _T_91};
      end
    end
    if (mem_wen) begin
      if (_T_97) begin
        wbInfo_0_rd <= _T_104;
      end else begin
        if (_T_90) begin
          wbInfo_0_rd <= wbInfo_1_rd;
        end
      end
    end else begin
      if (_T_90) begin
        wbInfo_0_rd <= wbInfo_1_rd;
      end
    end
    if (mem_wen) begin
      if (_T_97) begin
        wbInfo_0_pipeid <= _T_103;
      end else begin
        if (_T_90) begin
          wbInfo_0_pipeid <= wbInfo_1_pipeid;
        end
      end
    end else begin
      if (_T_90) begin
        wbInfo_0_pipeid <= wbInfo_1_pipeid;
      end
    end
    if (mem_wen) begin
      if (_T_107) begin
        wbInfo_1_rd <= _T_104;
      end
    end
    if (mem_wen) begin
      if (_T_107) begin
        wbInfo_1_pipeid <= _T_103;
      end
    end
    if (ex_reg_valid) begin
      write_port_busy <= _T_88;
    end
    if (_T_193) begin
      divSqrt_killed <= killm;
    end
    if (mem_ctrl_toint) begin
      wb_toint_exc <= fpiu_io_out_bits_exc;
    end
    _T_164 <= mem_ctrl_div | mem_ctrl_sqrt;
  end
endmodule

module my_recFNFromFN( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@171732.2]
  input  [31:0] io_in, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@171733.4]
  output [32:0] io_out // @[:freechips.rocketchip.system.DefaultRV32Config.fir@171733.4]
);
  wire [31:0] rawIn_io_in; // @[recFNFromFN.scala 48:27:freechips.rocketchip.system.DefaultRV32Config.fir@171736.4]
  wire  rawIn_io_out_isNaN; // @[recFNFromFN.scala 48:27:freechips.rocketchip.system.DefaultRV32Config.fir@171736.4]
  wire [9:0] rawIn_io_out_sExp; // @[recFNFromFN.scala 48:27:freechips.rocketchip.system.DefaultRV32Config.fir@171736.4]
  wire [24:0] rawIn_io_out_sig; // @[recFNFromFN.scala 48:27:freechips.rocketchip.system.DefaultRV32Config.fir@171736.4]
  wire  rawIn_io_isZero; // @[recFNFromFN.scala 48:27:freechips.rocketchip.system.DefaultRV32Config.fir@171736.4]
  wire [30:0] rawIn_io_sign; // @[recFNFromFN.scala 48:27:freechips.rocketchip.system.DefaultRV32Config.fir@171736.4]
  wire [2:0] _T; // @[recFNFromFN.scala 51:63:freechips.rocketchip.system.DefaultRV32Config.fir@171739.4]
  wire [2:0] _T_1; // @[recFNFromFN.scala 51:16:freechips.rocketchip.system.DefaultRV32Config.fir@171740.4]
  wire  _T_2; // @[recFNFromFN.scala 52:20:freechips.rocketchip.system.DefaultRV32Config.fir@171741.4]
  wire [2:0] _GEN_0; // @[recFNFromFN.scala 51:89:freechips.rocketchip.system.DefaultRV32Config.fir@171742.4]
  wire [2:0] _T_3; // @[recFNFromFN.scala 51:89:freechips.rocketchip.system.DefaultRV32Config.fir@171742.4]
  wire [5:0] _T_4; // @[recFNFromFN.scala 53:30:freechips.rocketchip.system.DefaultRV32Config.fir@171743.4]
  wire [22:0] _T_5; // @[recFNFromFN.scala 54:29:freechips.rocketchip.system.DefaultRV32Config.fir@171744.4]
  wire [62:0] _T_8; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@171747.4]
  my_rawFloatFromFN rawIn ( // @[recFNFromFN.scala 48:27:freechips.rocketchip.system.DefaultRV32Config.fir@171736.4]
    .io_in(rawIn_io_in),
    .io_out_isNaN(rawIn_io_out_isNaN),
    .io_out_sExp(rawIn_io_out_sExp),
    .io_out_sig(rawIn_io_out_sig),
    .io_isZero(rawIn_io_isZero),
    .io_sign(rawIn_io_sign)
  );
  assign _T = rawIn_io_out_sExp[8:6]; // @[recFNFromFN.scala 51:63:freechips.rocketchip.system.DefaultRV32Config.fir@171739.4]
  assign _T_1 = rawIn_io_isZero ? 3'h0 : _T; // @[recFNFromFN.scala 51:16:freechips.rocketchip.system.DefaultRV32Config.fir@171740.4]
  assign _T_2 = rawIn_io_out_isNaN; // @[recFNFromFN.scala 52:20:freechips.rocketchip.system.DefaultRV32Config.fir@171741.4]
  assign _GEN_0 = {{2'd0}, _T_2}; // @[recFNFromFN.scala 51:89:freechips.rocketchip.system.DefaultRV32Config.fir@171742.4]
  assign _T_3 = _T_1 | _GEN_0; // @[recFNFromFN.scala 51:89:freechips.rocketchip.system.DefaultRV32Config.fir@171742.4]
  assign _T_4 = rawIn_io_out_sExp[5:0]; // @[recFNFromFN.scala 53:30:freechips.rocketchip.system.DefaultRV32Config.fir@171743.4]
  assign _T_5 = rawIn_io_out_sig[22:0]; // @[recFNFromFN.scala 54:29:freechips.rocketchip.system.DefaultRV32Config.fir@171744.4]
  assign _T_8 = {rawIn_io_sign,_T_3,_T_4,_T_5}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@171747.4]
  assign io_out = _T_8[32:0]; // @[recFNFromFN.scala 50:16:freechips.rocketchip.system.DefaultRV32Config.fir@171748.4]
  assign rawIn_io_in = io_in; // @[recFNFromFN.scala 49:21:freechips.rocketchip.system.DefaultRV32Config.fir@171738.4]
endmodule

module my_rawFloatFromFN( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@171648.2]
  input  [31:0] io_in, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@171649.4]
  output        io_out_isNaN, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@171649.4]
  output [9:0]  io_out_sExp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@171649.4]
  output [24:0] io_out_sig, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@171649.4]
  output        io_isZero, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@171649.4]
  output [30:0] io_sign // @[:freechips.rocketchip.system.DefaultRV32Config.fir@171649.4]
);
  wire  sign; // @[rawFloatFromFN.scala 50:25:freechips.rocketchip.system.DefaultRV32Config.fir@171652.4]
  wire [7:0] expIn; // @[rawFloatFromFN.scala 51:26:freechips.rocketchip.system.DefaultRV32Config.fir@171653.4]
  wire [22:0] fractIn; // @[rawFloatFromFN.scala 52:28:freechips.rocketchip.system.DefaultRV32Config.fir@171654.4]
  wire  isZeroExpIn; // @[rawFloatFromFN.scala 54:34:freechips.rocketchip.system.DefaultRV32Config.fir@171655.4]
  wire  isZeroFractIn; // @[rawFloatFromFN.scala 55:38:freechips.rocketchip.system.DefaultRV32Config.fir@171656.4]
  wire  _T_1; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@171658.4]
  wire  _T_2; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@171659.4]
  wire  _T_3; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@171660.4]
  wire  _T_4; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@171661.4]
  wire  _T_5; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@171662.4]
  wire  _T_6; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@171663.4]
  wire  _T_7; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@171664.4]
  wire  _T_8; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@171665.4]
  wire  _T_9; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@171666.4]
  wire  _T_10; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@171667.4]
  wire  _T_11; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@171668.4]
  wire  _T_12; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@171669.4]
  wire  _T_13; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@171670.4]
  wire  _T_14; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@171671.4]
  wire  _T_15; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@171672.4]
  wire  _T_16; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@171673.4]
  wire  _T_17; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@171674.4]
  wire  _T_18; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@171675.4]
  wire  _T_19; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@171676.4]
  wire  _T_20; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@171677.4]
  wire  _T_21; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@171678.4]
  wire  _T_22; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@171679.4]
  wire [4:0] _T_23; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@171680.4]
  wire [4:0] _T_24; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@171681.4]
  wire [4:0] _T_25; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@171682.4]
  wire [4:0] _T_26; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@171683.4]
  wire [4:0] _T_27; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@171684.4]
  wire [4:0] _T_28; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@171685.4]
  wire [4:0] _T_29; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@171686.4]
  wire [4:0] _T_30; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@171687.4]
  wire [4:0] _T_31; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@171688.4]
  wire [4:0] _T_32; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@171689.4]
  wire [4:0] _T_33; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@171690.4]
  wire [4:0] _T_34; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@171691.4]
  wire [4:0] _T_35; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@171692.4]
  wire [4:0] _T_36; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@171693.4]
  wire [4:0] _T_37; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@171694.4]
  wire [4:0] _T_38; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@171695.4]
  wire [4:0] _T_39; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@171696.4]
  wire [4:0] _T_40; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@171697.4]
  wire [4:0] _T_41; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@171698.4]
  wire [4:0] _T_42; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@171699.4]
  wire [4:0] _T_43; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@171700.4]
  wire [4:0] normDist; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@171701.4]
  wire [53:0] _GEN_0; // @[rawFloatFromFN.scala 58:36:freechips.rocketchip.system.DefaultRV32Config.fir@171702.4]
  wire [53:0] _T_44; // @[rawFloatFromFN.scala 58:36:freechips.rocketchip.system.DefaultRV32Config.fir@171702.4]
  wire [21:0] _T_45; // @[rawFloatFromFN.scala 58:47:freechips.rocketchip.system.DefaultRV32Config.fir@171703.4]
  wire [22:0] subnormFract; // @[rawFloatFromFN.scala 58:64:freechips.rocketchip.system.DefaultRV32Config.fir@171704.4]
  wire [8:0] _GEN_1; // @[rawFloatFromFN.scala 61:26:freechips.rocketchip.system.DefaultRV32Config.fir@171705.4]
  wire [8:0] _T_46; // @[rawFloatFromFN.scala 61:26:freechips.rocketchip.system.DefaultRV32Config.fir@171705.4]
  wire [8:0] _T_47; // @[rawFloatFromFN.scala 60:16:freechips.rocketchip.system.DefaultRV32Config.fir@171706.4]
  wire [1:0] _T_48; // @[rawFloatFromFN.scala 64:27:freechips.rocketchip.system.DefaultRV32Config.fir@171707.4]
  wire [7:0] _GEN_2; // @[rawFloatFromFN.scala 64:22:freechips.rocketchip.system.DefaultRV32Config.fir@171708.4]
  wire [7:0] _T_49; // @[rawFloatFromFN.scala 64:22:freechips.rocketchip.system.DefaultRV32Config.fir@171708.4]
  wire [8:0] _GEN_3; // @[rawFloatFromFN.scala 63:15:freechips.rocketchip.system.DefaultRV32Config.fir@171709.4]
  wire [8:0] adjustedExp; // @[rawFloatFromFN.scala 63:15:freechips.rocketchip.system.DefaultRV32Config.fir@171710.4]
  wire  isZero; // @[rawFloatFromFN.scala 66:34:freechips.rocketchip.system.DefaultRV32Config.fir@171711.4]
  wire [1:0] _T_51; // @[rawFloatFromFN.scala 67:37:freechips.rocketchip.system.DefaultRV32Config.fir@171712.4]
  wire  isSpecial; // @[rawFloatFromFN.scala 67:62:freechips.rocketchip.system.DefaultRV32Config.fir@171713.4]
  wire  _T_52; // @[rawFloatFromFN.scala 69:39:freechips.rocketchip.system.DefaultRV32Config.fir@171714.4]
  wire  _T_57; // @[rawFloatFromFN.scala 85:29:freechips.rocketchip.system.DefaultRV32Config.fir@171724.4]
  wire [22:0] _T_58; // @[rawFloatFromFN.scala 85:42:freechips.rocketchip.system.DefaultRV32Config.fir@171725.4]
  wire [1:0] _T_59; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@171726.4]
  assign sign = io_in[31]; // @[rawFloatFromFN.scala 50:25:freechips.rocketchip.system.DefaultRV32Config.fir@171652.4]
  assign expIn = io_in[30:23]; // @[rawFloatFromFN.scala 51:26:freechips.rocketchip.system.DefaultRV32Config.fir@171653.4]
  assign fractIn = io_in[22:0]; // @[rawFloatFromFN.scala 52:28:freechips.rocketchip.system.DefaultRV32Config.fir@171654.4]
  assign isZeroExpIn = expIn == 8'h0; // @[rawFloatFromFN.scala 54:34:freechips.rocketchip.system.DefaultRV32Config.fir@171655.4]
  assign isZeroFractIn = fractIn == 23'h0; // @[rawFloatFromFN.scala 55:38:freechips.rocketchip.system.DefaultRV32Config.fir@171656.4]
  assign _T_1 = fractIn[1]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@171658.4]
  assign _T_2 = fractIn[2]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@171659.4]
  assign _T_3 = fractIn[3]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@171660.4]
  assign _T_4 = fractIn[4]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@171661.4]
  assign _T_5 = fractIn[5]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@171662.4]
  assign _T_6 = fractIn[6]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@171663.4]
  assign _T_7 = fractIn[7]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@171664.4]
  assign _T_8 = fractIn[8]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@171665.4]
  assign _T_9 = fractIn[9]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@171666.4]
  assign _T_10 = fractIn[10]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@171667.4]
  assign _T_11 = fractIn[11]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@171668.4]
  assign _T_12 = fractIn[12]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@171669.4]
  assign _T_13 = fractIn[13]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@171670.4]
  assign _T_14 = fractIn[14]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@171671.4]
  assign _T_15 = fractIn[15]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@171672.4]
  assign _T_16 = fractIn[16]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@171673.4]
  assign _T_17 = fractIn[17]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@171674.4]
  assign _T_18 = fractIn[18]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@171675.4]
  assign _T_19 = fractIn[19]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@171676.4]
  assign _T_20 = fractIn[20]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@171677.4]
  assign _T_21 = fractIn[21]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@171678.4]
  assign _T_22 = fractIn[22]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@171679.4]
  assign _T_23 = _T_1 ? 5'h15 : 5'h16; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@171680.4]
  assign _T_24 = _T_2 ? 5'h14 : _T_23; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@171681.4]
  assign _T_25 = _T_3 ? 5'h13 : _T_24; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@171682.4]
  assign _T_26 = _T_4 ? 5'h12 : _T_25; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@171683.4]
  assign _T_27 = _T_5 ? 5'h11 : _T_26; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@171684.4]
  assign _T_28 = _T_6 ? 5'h10 : _T_27; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@171685.4]
  assign _T_29 = _T_7 ? 5'hf : _T_28; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@171686.4]
  assign _T_30 = _T_8 ? 5'he : _T_29; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@171687.4]
  assign _T_31 = _T_9 ? 5'hd : _T_30; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@171688.4]
  assign _T_32 = _T_10 ? 5'hc : _T_31; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@171689.4]
  assign _T_33 = _T_11 ? 5'hb : _T_32; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@171690.4]
  assign _T_34 = _T_12 ? 5'ha : _T_33; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@171691.4]
  assign _T_35 = _T_13 ? 5'h9 : _T_34; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@171692.4]
  assign _T_36 = _T_14 ? 5'h8 : _T_35; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@171693.4]
  assign _T_37 = _T_15 ? 5'h7 : _T_36; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@171694.4]
  assign _T_38 = _T_16 ? 5'h6 : _T_37; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@171695.4]
  assign _T_39 = _T_17 ? 5'h5 : _T_38; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@171696.4]
  assign _T_40 = _T_18 ? 5'h4 : _T_39; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@171697.4]
  assign _T_41 = _T_19 ? 5'h3 : _T_40; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@171698.4]
  assign _T_42 = _T_20 ? 5'h2 : _T_41; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@171699.4]
  assign _T_43 = _T_21 ? 5'h1 : _T_42; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@171700.4]
  assign normDist = _T_22 ? 5'h0 : _T_43; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@171701.4]
  assign _GEN_0 = {{31'd0}, fractIn}; // @[rawFloatFromFN.scala 58:36:freechips.rocketchip.system.DefaultRV32Config.fir@171702.4]
  assign _T_44 = _GEN_0 << normDist; // @[rawFloatFromFN.scala 58:36:freechips.rocketchip.system.DefaultRV32Config.fir@171702.4]
  assign _T_45 = _T_44[21:0]; // @[rawFloatFromFN.scala 58:47:freechips.rocketchip.system.DefaultRV32Config.fir@171703.4]
  assign subnormFract = {_T_45, 1'h0}; // @[rawFloatFromFN.scala 58:64:freechips.rocketchip.system.DefaultRV32Config.fir@171704.4]
  assign _GEN_1 = {{4'd0}, normDist}; // @[rawFloatFromFN.scala 61:26:freechips.rocketchip.system.DefaultRV32Config.fir@171705.4]
  assign _T_46 = _GEN_1 ^ 9'h1ff; // @[rawFloatFromFN.scala 61:26:freechips.rocketchip.system.DefaultRV32Config.fir@171705.4]
  assign _T_47 = isZeroExpIn ? _T_46 : {{1'd0}, expIn}; // @[rawFloatFromFN.scala 60:16:freechips.rocketchip.system.DefaultRV32Config.fir@171706.4]
  assign _T_48 = isZeroExpIn ? 2'h2 : 2'h1; // @[rawFloatFromFN.scala 64:27:freechips.rocketchip.system.DefaultRV32Config.fir@171707.4]
  assign _GEN_2 = {{6'd0}, _T_48}; // @[rawFloatFromFN.scala 64:22:freechips.rocketchip.system.DefaultRV32Config.fir@171708.4]
  assign _T_49 = 8'h80 | _GEN_2; // @[rawFloatFromFN.scala 64:22:freechips.rocketchip.system.DefaultRV32Config.fir@171708.4]
  assign _GEN_3 = {{1'd0}, _T_49}; // @[rawFloatFromFN.scala 63:15:freechips.rocketchip.system.DefaultRV32Config.fir@171709.4]
  assign adjustedExp = _T_47 + _GEN_3; // @[rawFloatFromFN.scala 63:15:freechips.rocketchip.system.DefaultRV32Config.fir@171710.4]
  assign isZero = isZeroExpIn & isZeroFractIn; // @[rawFloatFromFN.scala 66:34:freechips.rocketchip.system.DefaultRV32Config.fir@171711.4]
  assign _T_51 = adjustedExp[8:7]; // @[rawFloatFromFN.scala 67:37:freechips.rocketchip.system.DefaultRV32Config.fir@171712.4]
  assign isSpecial = _T_51 == 2'h3; // @[rawFloatFromFN.scala 67:62:freechips.rocketchip.system.DefaultRV32Config.fir@171713.4]
  assign _T_52 = isZeroFractIn == 1'h0; // @[rawFloatFromFN.scala 69:39:freechips.rocketchip.system.DefaultRV32Config.fir@171714.4]
  assign _T_57 = isZero == 1'h0; // @[rawFloatFromFN.scala 85:29:freechips.rocketchip.system.DefaultRV32Config.fir@171724.4]
  assign _T_58 = isZeroExpIn ? subnormFract : fractIn; // @[rawFloatFromFN.scala 85:42:freechips.rocketchip.system.DefaultRV32Config.fir@171725.4]
  assign _T_59 = {1'h0,_T_57}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@171726.4]
  assign io_out_isNaN = isSpecial & _T_52; // @[rawFloatFromFN.scala 69:23:freechips.rocketchip.system.DefaultRV32Config.fir@171716.4]
  assign io_out_sExp = {1'b0,$signed(adjustedExp)}; // @[rawFloatFromFN.scala 81:23:freechips.rocketchip.system.DefaultRV32Config.fir@171723.4]
  assign io_out_sig = {_T_59,_T_58}; // @[rawFloatFromFN.scala 84:20:freechips.rocketchip.system.DefaultRV32Config.fir@171728.4]
  assign io_isZero = isZeroExpIn & isZeroFractIn; // @[rawFloatFromFN.scala 89:19:freechips.rocketchip.system.DefaultRV32Config.fir@171729.4]
  assign io_sign = {{30'd0}, sign}; // @[rawFloatFromFN.scala 90:17:freechips.rocketchip.system.DefaultRV32Config.fir@171730.4]
endmodule

`endif // __FPU
