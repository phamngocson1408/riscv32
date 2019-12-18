module FPU( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144295.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144296.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144297.4]
  input  [31:0] io_inst, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144298.4]
  input  [31:0] io_fromint_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144298.4]
  input  [2:0]  io_fcsr_rm, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144298.4]
  output        io_fcsr_flags_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144298.4]
  output [4:0]  io_fcsr_flags_bits, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144298.4]
  output [31:0] io_store_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144298.4]
  output [31:0] io_toint_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144298.4]
  input         io_dmem_resp_val, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144298.4]
  input  [4:0]  io_dmem_resp_tag, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144298.4]
  input  [31:0] io_dmem_resp_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144298.4]
  input         io_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144298.4]
  output        io_fcsr_rdy, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144298.4]
  output        io_nack_mem, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144298.4]
  output        io_illegal_rm, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144298.4]
  input         io_killx, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144298.4]
  input         io_killm, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144298.4]
  output        io_dec_wen, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144298.4]
  output        io_dec_ren1, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144298.4]
  output        io_dec_ren2, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144298.4]
  output        io_dec_ren3, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144298.4]
  output        io_sboard_set, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144298.4]
  output        io_sboard_clr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144298.4]
  output [4:0]  io_sboard_clra // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144298.4]
);
  wire [31:0] fp_decoder_io_inst; // @[FPU.scala 688:26:freechips.rocketchip.system.DefaultRV32Config.fir@144305.4]
  wire  fp_decoder_io_sigs_wen; // @[FPU.scala 688:26:freechips.rocketchip.system.DefaultRV32Config.fir@144305.4]
  wire  fp_decoder_io_sigs_ren1; // @[FPU.scala 688:26:freechips.rocketchip.system.DefaultRV32Config.fir@144305.4]
  wire  fp_decoder_io_sigs_ren2; // @[FPU.scala 688:26:freechips.rocketchip.system.DefaultRV32Config.fir@144305.4]
  wire  fp_decoder_io_sigs_ren3; // @[FPU.scala 688:26:freechips.rocketchip.system.DefaultRV32Config.fir@144305.4]
  wire  fp_decoder_io_sigs_swap12; // @[FPU.scala 688:26:freechips.rocketchip.system.DefaultRV32Config.fir@144305.4]
  wire  fp_decoder_io_sigs_swap23; // @[FPU.scala 688:26:freechips.rocketchip.system.DefaultRV32Config.fir@144305.4]
  wire  fp_decoder_io_sigs_singleOut; // @[FPU.scala 688:26:freechips.rocketchip.system.DefaultRV32Config.fir@144305.4]
  wire  fp_decoder_io_sigs_fromint; // @[FPU.scala 688:26:freechips.rocketchip.system.DefaultRV32Config.fir@144305.4]
  wire  fp_decoder_io_sigs_toint; // @[FPU.scala 688:26:freechips.rocketchip.system.DefaultRV32Config.fir@144305.4]
  wire  fp_decoder_io_sigs_fastpipe; // @[FPU.scala 688:26:freechips.rocketchip.system.DefaultRV32Config.fir@144305.4]
  wire  fp_decoder_io_sigs_fma; // @[FPU.scala 688:26:freechips.rocketchip.system.DefaultRV32Config.fir@144305.4]
  wire  fp_decoder_io_sigs_div; // @[FPU.scala 688:26:freechips.rocketchip.system.DefaultRV32Config.fir@144305.4]
  wire  fp_decoder_io_sigs_sqrt; // @[FPU.scala 688:26:freechips.rocketchip.system.DefaultRV32Config.fir@144305.4]
  wire  fp_decoder_io_sigs_wflags; // @[FPU.scala 688:26:freechips.rocketchip.system.DefaultRV32Config.fir@144305.4]
  reg [32:0] regfile [0:31]; // @[FPU.scala 729:20:freechips.rocketchip.system.DefaultRV32Config.fir@144422.4]
  reg [63:0] _RAND_0;
  wire [32:0] regfile_ex_rs_0_data; // @[FPU.scala 729:20:freechips.rocketchip.system.DefaultRV32Config.fir@144422.4]
  wire [4:0] regfile_ex_rs_0_addr; // @[FPU.scala 729:20:freechips.rocketchip.system.DefaultRV32Config.fir@144422.4]
  wire [32:0] regfile_ex_rs_1_data; // @[FPU.scala 729:20:freechips.rocketchip.system.DefaultRV32Config.fir@144422.4]
  wire [4:0] regfile_ex_rs_1_addr; // @[FPU.scala 729:20:freechips.rocketchip.system.DefaultRV32Config.fir@144422.4]
  wire [32:0] regfile_ex_rs_2_data; // @[FPU.scala 729:20:freechips.rocketchip.system.DefaultRV32Config.fir@144422.4]
  wire [4:0] regfile_ex_rs_2_addr; // @[FPU.scala 729:20:freechips.rocketchip.system.DefaultRV32Config.fir@144422.4]
  wire [32:0] regfile__T_91_data; // @[FPU.scala 729:20:freechips.rocketchip.system.DefaultRV32Config.fir@144422.4]
  wire [4:0] regfile__T_91_addr; // @[FPU.scala 729:20:freechips.rocketchip.system.DefaultRV32Config.fir@144422.4]
  wire  regfile__T_91_mask; // @[FPU.scala 729:20:freechips.rocketchip.system.DefaultRV32Config.fir@144422.4]
  wire  regfile__T_91_en; // @[FPU.scala 729:20:freechips.rocketchip.system.DefaultRV32Config.fir@144422.4]
  wire [32:0] regfile__T_214_data; // @[FPU.scala 729:20:freechips.rocketchip.system.DefaultRV32Config.fir@144422.4]
  wire [4:0] regfile__T_214_addr; // @[FPU.scala 729:20:freechips.rocketchip.system.DefaultRV32Config.fir@144422.4]
  wire  regfile__T_214_mask; // @[FPU.scala 729:20:freechips.rocketchip.system.DefaultRV32Config.fir@144422.4]
  wire  regfile__T_214_en; // @[FPU.scala 729:20:freechips.rocketchip.system.DefaultRV32Config.fir@144422.4]
  wire  sfma_clock; // @[FPU.scala 773:20:freechips.rocketchip.system.DefaultRV32Config.fir@144570.4]
  wire  sfma_reset; // @[FPU.scala 773:20:freechips.rocketchip.system.DefaultRV32Config.fir@144570.4]
  wire  sfma_io_in_valid; // @[FPU.scala 773:20:freechips.rocketchip.system.DefaultRV32Config.fir@144570.4]
  wire  sfma_io_in_bits_ren3; // @[FPU.scala 773:20:freechips.rocketchip.system.DefaultRV32Config.fir@144570.4]
  wire  sfma_io_in_bits_swap23; // @[FPU.scala 773:20:freechips.rocketchip.system.DefaultRV32Config.fir@144570.4]
  wire [2:0] sfma_io_in_bits_rm; // @[FPU.scala 773:20:freechips.rocketchip.system.DefaultRV32Config.fir@144570.4]
  wire [1:0] sfma_io_in_bits_fmaCmd; // @[FPU.scala 773:20:freechips.rocketchip.system.DefaultRV32Config.fir@144570.4]
  wire [32:0] sfma_io_in_bits_in1; // @[FPU.scala 773:20:freechips.rocketchip.system.DefaultRV32Config.fir@144570.4]
  wire [32:0] sfma_io_in_bits_in2; // @[FPU.scala 773:20:freechips.rocketchip.system.DefaultRV32Config.fir@144570.4]
  wire [32:0] sfma_io_in_bits_in3; // @[FPU.scala 773:20:freechips.rocketchip.system.DefaultRV32Config.fir@144570.4]
  wire [32:0] sfma_io_out_bits_data; // @[FPU.scala 773:20:freechips.rocketchip.system.DefaultRV32Config.fir@144570.4]
  wire [4:0] sfma_io_out_bits_exc; // @[FPU.scala 773:20:freechips.rocketchip.system.DefaultRV32Config.fir@144570.4]
  wire  fpiu_clock; // @[FPU.scala 777:20:freechips.rocketchip.system.DefaultRV32Config.fir@144604.4]
  wire  fpiu_io_in_valid; // @[FPU.scala 777:20:freechips.rocketchip.system.DefaultRV32Config.fir@144604.4]
  wire  fpiu_io_in_bits_ren2; // @[FPU.scala 777:20:freechips.rocketchip.system.DefaultRV32Config.fir@144604.4]
  wire  fpiu_io_in_bits_wflags; // @[FPU.scala 777:20:freechips.rocketchip.system.DefaultRV32Config.fir@144604.4]
  wire [2:0] fpiu_io_in_bits_rm; // @[FPU.scala 777:20:freechips.rocketchip.system.DefaultRV32Config.fir@144604.4]
  wire [1:0] fpiu_io_in_bits_typ; // @[FPU.scala 777:20:freechips.rocketchip.system.DefaultRV32Config.fir@144604.4]
  wire [32:0] fpiu_io_in_bits_in1; // @[FPU.scala 777:20:freechips.rocketchip.system.DefaultRV32Config.fir@144604.4]
  wire [32:0] fpiu_io_in_bits_in2; // @[FPU.scala 777:20:freechips.rocketchip.system.DefaultRV32Config.fir@144604.4]
  wire [2:0] fpiu_io_out_bits_in_rm; // @[FPU.scala 777:20:freechips.rocketchip.system.DefaultRV32Config.fir@144604.4]
  wire [32:0] fpiu_io_out_bits_in_in1; // @[FPU.scala 777:20:freechips.rocketchip.system.DefaultRV32Config.fir@144604.4]
  wire [32:0] fpiu_io_out_bits_in_in2; // @[FPU.scala 777:20:freechips.rocketchip.system.DefaultRV32Config.fir@144604.4]
  wire  fpiu_io_out_bits_lt; // @[FPU.scala 777:20:freechips.rocketchip.system.DefaultRV32Config.fir@144604.4]
  wire [31:0] fpiu_io_out_bits_store; // @[FPU.scala 777:20:freechips.rocketchip.system.DefaultRV32Config.fir@144604.4]
  wire [31:0] fpiu_io_out_bits_toint; // @[FPU.scala 777:20:freechips.rocketchip.system.DefaultRV32Config.fir@144604.4]
  wire [4:0] fpiu_io_out_bits_exc; // @[FPU.scala 777:20:freechips.rocketchip.system.DefaultRV32Config.fir@144604.4]
  wire  ifpu_clock; // @[FPU.scala 787:20:freechips.rocketchip.system.DefaultRV32Config.fir@144649.4]
  wire  ifpu_reset; // @[FPU.scala 787:20:freechips.rocketchip.system.DefaultRV32Config.fir@144649.4]
  wire  ifpu_io_in_valid; // @[FPU.scala 787:20:freechips.rocketchip.system.DefaultRV32Config.fir@144649.4]
  wire  ifpu_io_in_bits_wflags; // @[FPU.scala 787:20:freechips.rocketchip.system.DefaultRV32Config.fir@144649.4]
  wire [2:0] ifpu_io_in_bits_rm; // @[FPU.scala 787:20:freechips.rocketchip.system.DefaultRV32Config.fir@144649.4]
  wire [1:0] ifpu_io_in_bits_typ; // @[FPU.scala 787:20:freechips.rocketchip.system.DefaultRV32Config.fir@144649.4]
  wire [31:0] ifpu_io_in_bits_in1; // @[FPU.scala 787:20:freechips.rocketchip.system.DefaultRV32Config.fir@144649.4]
  wire [32:0] ifpu_io_out_bits_data; // @[FPU.scala 787:20:freechips.rocketchip.system.DefaultRV32Config.fir@144649.4]
  wire [4:0] ifpu_io_out_bits_exc; // @[FPU.scala 787:20:freechips.rocketchip.system.DefaultRV32Config.fir@144649.4]
  wire  fpmu_clock; // @[FPU.scala 792:20:freechips.rocketchip.system.DefaultRV32Config.fir@144658.4]
  wire  fpmu_reset; // @[FPU.scala 792:20:freechips.rocketchip.system.DefaultRV32Config.fir@144658.4]
  wire  fpmu_io_in_valid; // @[FPU.scala 792:20:freechips.rocketchip.system.DefaultRV32Config.fir@144658.4]
  wire  fpmu_io_in_bits_wflags; // @[FPU.scala 792:20:freechips.rocketchip.system.DefaultRV32Config.fir@144658.4]
  wire [2:0] fpmu_io_in_bits_rm; // @[FPU.scala 792:20:freechips.rocketchip.system.DefaultRV32Config.fir@144658.4]
  wire [32:0] fpmu_io_in_bits_in1; // @[FPU.scala 792:20:freechips.rocketchip.system.DefaultRV32Config.fir@144658.4]
  wire [32:0] fpmu_io_in_bits_in2; // @[FPU.scala 792:20:freechips.rocketchip.system.DefaultRV32Config.fir@144658.4]
  wire [32:0] fpmu_io_out_bits_data; // @[FPU.scala 792:20:freechips.rocketchip.system.DefaultRV32Config.fir@144658.4]
  wire [4:0] fpmu_io_out_bits_exc; // @[FPU.scala 792:20:freechips.rocketchip.system.DefaultRV32Config.fir@144658.4]
  wire  fpmu_io_lt; // @[FPU.scala 792:20:freechips.rocketchip.system.DefaultRV32Config.fir@144658.4]
  wire  divSqrt_clock; // @[FPU.scala 901:27:freechips.rocketchip.system.DefaultRV32Config.fir@144864.4]
  wire  divSqrt_reset; // @[FPU.scala 901:27:freechips.rocketchip.system.DefaultRV32Config.fir@144864.4]
  wire  divSqrt_io_inReady; // @[FPU.scala 901:27:freechips.rocketchip.system.DefaultRV32Config.fir@144864.4]
  wire  divSqrt_io_inValid; // @[FPU.scala 901:27:freechips.rocketchip.system.DefaultRV32Config.fir@144864.4]
  wire  divSqrt_io_sqrtOp; // @[FPU.scala 901:27:freechips.rocketchip.system.DefaultRV32Config.fir@144864.4]
  wire [32:0] divSqrt_io_a; // @[FPU.scala 901:27:freechips.rocketchip.system.DefaultRV32Config.fir@144864.4]
  wire [32:0] divSqrt_io_b; // @[FPU.scala 901:27:freechips.rocketchip.system.DefaultRV32Config.fir@144864.4]
  wire [2:0] divSqrt_io_roundingMode; // @[FPU.scala 901:27:freechips.rocketchip.system.DefaultRV32Config.fir@144864.4]
  wire  divSqrt_io_outValid_div; // @[FPU.scala 901:27:freechips.rocketchip.system.DefaultRV32Config.fir@144864.4]
  wire  divSqrt_io_outValid_sqrt; // @[FPU.scala 901:27:freechips.rocketchip.system.DefaultRV32Config.fir@144864.4]
  wire [32:0] divSqrt_io_out; // @[FPU.scala 901:27:freechips.rocketchip.system.DefaultRV32Config.fir@144864.4]
  wire [4:0] divSqrt_io_exceptionFlags; // @[FPU.scala 901:27:freechips.rocketchip.system.DefaultRV32Config.fir@144864.4]
  reg  ex_reg_valid; // @[FPU.scala 692:25:freechips.rocketchip.system.DefaultRV32Config.fir@144310.4]
  reg [31:0] _RAND_1;
  reg [31:0] ex_reg_inst; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@144312.4]
  reg [31:0] _RAND_2;
  reg  ex_reg_ctrl_ren2; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@144316.4]
  reg [31:0] _RAND_3;
  reg  ex_reg_ctrl_ren3; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@144316.4]
  reg [31:0] _RAND_4;
  reg  ex_reg_ctrl_swap23; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@144316.4]
  reg [31:0] _RAND_5;
  reg  ex_reg_ctrl_singleOut; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@144316.4]
  reg [31:0] _RAND_6;
  reg  ex_reg_ctrl_fromint; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@144316.4]
  reg [31:0] _RAND_7;
  reg  ex_reg_ctrl_toint; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@144316.4]
  reg [31:0] _RAND_8;
  reg  ex_reg_ctrl_fastpipe; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@144316.4]
  reg [31:0] _RAND_9;
  reg  ex_reg_ctrl_fma; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@144316.4]
  reg [31:0] _RAND_10;
  reg  ex_reg_ctrl_div; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@144316.4]
  reg [31:0] _RAND_11;
  reg  ex_reg_ctrl_sqrt; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@144316.4]
  reg [31:0] _RAND_12;
  reg  ex_reg_ctrl_wflags; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@144316.4]
  reg [31:0] _RAND_13;
  reg [4:0] ex_ra_0; // @[FPU.scala 695:31:freechips.rocketchip.system.DefaultRV32Config.fir@144335.4]
  reg [31:0] _RAND_14;
  reg [4:0] ex_ra_1; // @[FPU.scala 695:31:freechips.rocketchip.system.DefaultRV32Config.fir@144336.4]
  reg [31:0] _RAND_15;
  reg [4:0] ex_ra_2; // @[FPU.scala 695:31:freechips.rocketchip.system.DefaultRV32Config.fir@144337.4]
  reg [31:0] _RAND_16;
  reg  load_wb; // @[FPU.scala 698:20:freechips.rocketchip.system.DefaultRV32Config.fir@144338.4]
  reg [31:0] _RAND_17;
  reg [31:0] load_wb_data; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@144345.4]
  reg [31:0] _RAND_18;
  reg [4:0] load_wb_tag; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@144349.4]
  reg [31:0] _RAND_19;
  reg  mem_reg_valid; // @[FPU.scala 709:30:freechips.rocketchip.system.DefaultRV32Config.fir@144359.4]
  reg [31:0] _RAND_20;
  wire  killm; // @[FPU.scala 710:25:freechips.rocketchip.system.DefaultRV32Config.fir@144360.4]
  wire  _T_3; // @[FPU.scala 714:41:freechips.rocketchip.system.DefaultRV32Config.fir@144363.4]
  wire  killx; // @[FPU.scala 714:24:freechips.rocketchip.system.DefaultRV32Config.fir@144364.4]
  wire  _T_4; // @[FPU.scala 715:36:freechips.rocketchip.system.DefaultRV32Config.fir@144365.4]
  wire  _T_5; // @[FPU.scala 715:33:freechips.rocketchip.system.DefaultRV32Config.fir@144366.4]
  reg [31:0] mem_reg_inst; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@144369.4]
  reg [31:0] _RAND_21;
  wire  _T_7; // @[FPU.scala 717:49:freechips.rocketchip.system.DefaultRV32Config.fir@144373.4]
  wire  _T_9; // @[FPU.scala 717:45:freechips.rocketchip.system.DefaultRV32Config.fir@144375.4]
  reg  wb_reg_valid; // @[FPU.scala 717:25:freechips.rocketchip.system.DefaultRV32Config.fir@144376.4]
  reg [31:0] _RAND_22;
  reg  mem_ctrl_singleOut; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@144384.4]
  reg [31:0] _RAND_23;
  reg  mem_ctrl_fromint; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@144384.4]
  reg [31:0] _RAND_24;
  reg  mem_ctrl_toint; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@144384.4]
  reg [31:0] _RAND_25;
  reg  mem_ctrl_fastpipe; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@144384.4]
  reg [31:0] _RAND_26;
  reg  mem_ctrl_fma; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@144384.4]
  reg [31:0] _RAND_27;
  reg  mem_ctrl_div; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@144384.4]
  reg [31:0] _RAND_28;
  reg  mem_ctrl_sqrt; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@144384.4]
  reg [31:0] _RAND_29;
  reg  mem_ctrl_wflags; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@144384.4]
  reg [31:0] _RAND_30;
  reg  wb_ctrl_toint; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@144403.4]
  reg [31:0] _RAND_31;
  wire  _T_11; // @[rawFloatFromFN.scala 46:22:freechips.rocketchip.system.DefaultRV32Config.fir@144425.6]
  wire [7:0] _T_12; // @[rawFloatFromFN.scala 47:23:freechips.rocketchip.system.DefaultRV32Config.fir@144426.6]
  wire [22:0] _T_13; // @[rawFloatFromFN.scala 48:25:freechips.rocketchip.system.DefaultRV32Config.fir@144427.6]
  wire  _T_14; // @[rawFloatFromFN.scala 50:34:freechips.rocketchip.system.DefaultRV32Config.fir@144428.6]
  wire  _T_15; // @[rawFloatFromFN.scala 51:38:freechips.rocketchip.system.DefaultRV32Config.fir@144429.6]
  wire  _T_17; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@144431.6]
  wire  _T_18; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@144432.6]
  wire  _T_19; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@144433.6]
  wire  _T_20; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@144434.6]
  wire  _T_21; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@144435.6]
  wire  _T_22; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@144436.6]
  wire  _T_23; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@144437.6]
  wire  _T_24; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@144438.6]
  wire  _T_25; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@144439.6]
  wire  _T_26; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@144440.6]
  wire  _T_27; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@144441.6]
  wire  _T_28; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@144442.6]
  wire  _T_29; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@144443.6]
  wire  _T_30; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@144444.6]
  wire  _T_31; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@144445.6]
  wire  _T_32; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@144446.6]
  wire  _T_33; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@144447.6]
  wire  _T_34; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@144448.6]
  wire  _T_35; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@144449.6]
  wire  _T_36; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@144450.6]
  wire  _T_37; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@144451.6]
  wire  _T_38; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@144452.6]
  wire [4:0] _T_39; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@144453.6]
  wire [4:0] _T_40; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@144454.6]
  wire [4:0] _T_41; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@144455.6]
  wire [4:0] _T_42; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@144456.6]
  wire [4:0] _T_43; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@144457.6]
  wire [4:0] _T_44; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@144458.6]
  wire [4:0] _T_45; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@144459.6]
  wire [4:0] _T_46; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@144460.6]
  wire [4:0] _T_47; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@144461.6]
  wire [4:0] _T_48; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@144462.6]
  wire [4:0] _T_49; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@144463.6]
  wire [4:0] _T_50; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@144464.6]
  wire [4:0] _T_51; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@144465.6]
  wire [4:0] _T_52; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@144466.6]
  wire [4:0] _T_53; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@144467.6]
  wire [4:0] _T_54; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@144468.6]
  wire [4:0] _T_55; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@144469.6]
  wire [4:0] _T_56; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@144470.6]
  wire [4:0] _T_57; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@144471.6]
  wire [4:0] _T_58; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@144472.6]
  wire [4:0] _T_59; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@144473.6]
  wire [4:0] _T_60; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@144474.6]
  wire [53:0] _GEN_155; // @[rawFloatFromFN.scala 54:36:freechips.rocketchip.system.DefaultRV32Config.fir@144475.6]
  wire [53:0] _T_61; // @[rawFloatFromFN.scala 54:36:freechips.rocketchip.system.DefaultRV32Config.fir@144475.6]
  wire [21:0] _T_62; // @[rawFloatFromFN.scala 54:47:freechips.rocketchip.system.DefaultRV32Config.fir@144476.6]
  wire [22:0] _T_63; // @[rawFloatFromFN.scala 54:64:freechips.rocketchip.system.DefaultRV32Config.fir@144477.6]
  wire [8:0] _GEN_156; // @[rawFloatFromFN.scala 57:26:freechips.rocketchip.system.DefaultRV32Config.fir@144478.6]
  wire [8:0] _T_64; // @[rawFloatFromFN.scala 57:26:freechips.rocketchip.system.DefaultRV32Config.fir@144478.6]
  wire [8:0] _T_65; // @[rawFloatFromFN.scala 56:16:freechips.rocketchip.system.DefaultRV32Config.fir@144479.6]
  wire [1:0] _T_66; // @[rawFloatFromFN.scala 60:27:freechips.rocketchip.system.DefaultRV32Config.fir@144480.6]
  wire [7:0] _GEN_157; // @[rawFloatFromFN.scala 60:22:freechips.rocketchip.system.DefaultRV32Config.fir@144481.6]
  wire [7:0] _T_67; // @[rawFloatFromFN.scala 60:22:freechips.rocketchip.system.DefaultRV32Config.fir@144481.6]
  wire [8:0] _GEN_158; // @[rawFloatFromFN.scala 59:15:freechips.rocketchip.system.DefaultRV32Config.fir@144482.6]
  wire [8:0] _T_69; // @[rawFloatFromFN.scala 59:15:freechips.rocketchip.system.DefaultRV32Config.fir@144483.6]
  wire  _T_70; // @[rawFloatFromFN.scala 62:34:freechips.rocketchip.system.DefaultRV32Config.fir@144484.6]
  wire [1:0] _T_71; // @[rawFloatFromFN.scala 63:37:freechips.rocketchip.system.DefaultRV32Config.fir@144485.6]
  wire  _T_72; // @[rawFloatFromFN.scala 63:62:freechips.rocketchip.system.DefaultRV32Config.fir@144486.6]
  wire  _T_74; // @[rawFloatFromFN.scala 66:36:freechips.rocketchip.system.DefaultRV32Config.fir@144489.6]
  wire  _T_75; // @[rawFloatFromFN.scala 66:33:freechips.rocketchip.system.DefaultRV32Config.fir@144490.6]
  wire [9:0] _T_78; // @[rawFloatFromFN.scala 70:48:freechips.rocketchip.system.DefaultRV32Config.fir@144497.6]
  wire  _T_79; // @[rawFloatFromFN.scala 72:29:freechips.rocketchip.system.DefaultRV32Config.fir@144499.6]
  wire [22:0] _T_80; // @[rawFloatFromFN.scala 72:42:freechips.rocketchip.system.DefaultRV32Config.fir@144500.6]
  wire [24:0] _T_82; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@144502.6]
  wire [2:0] _T_83; // @[recFNFromFN.scala 48:53:freechips.rocketchip.system.DefaultRV32Config.fir@144504.6]
  wire [2:0] _T_84; // @[recFNFromFN.scala 48:16:freechips.rocketchip.system.DefaultRV32Config.fir@144505.6]
  wire [2:0] _GEN_159; // @[recFNFromFN.scala 48:79:freechips.rocketchip.system.DefaultRV32Config.fir@144507.6]
  wire [2:0] _T_86; // @[recFNFromFN.scala 48:79:freechips.rocketchip.system.DefaultRV32Config.fir@144507.6]
  wire [5:0] _T_87; // @[recFNFromFN.scala 50:23:freechips.rocketchip.system.DefaultRV32Config.fir@144508.6]
  wire [22:0] _T_88; // @[recFNFromFN.scala 51:22:freechips.rocketchip.system.DefaultRV32Config.fir@144509.6]
  wire [28:0] _T_89; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@144510.6]
  wire [3:0] _T_90; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@144511.6]
  wire  _T_101; // @[FPU.scala 741:13:freechips.rocketchip.system.DefaultRV32Config.fir@144534.8]
  wire [4:0] _T_102; // @[FPU.scala 741:51:freechips.rocketchip.system.DefaultRV32Config.fir@144536.10]
  wire [4:0] _T_104; // @[FPU.scala 745:50:freechips.rocketchip.system.DefaultRV32Config.fir@144546.10]
  wire  _T_107; // @[FPU.scala 747:32:freechips.rocketchip.system.DefaultRV32Config.fir@144554.8]
  wire  _T_108; // @[FPU.scala 747:29:freechips.rocketchip.system.DefaultRV32Config.fir@144555.8]
  wire [4:0] _T_110; // @[FPU.scala 749:46:freechips.rocketchip.system.DefaultRV32Config.fir@144562.8]
  wire [2:0] _T_111; // @[FPU.scala 751:30:freechips.rocketchip.system.DefaultRV32Config.fir@144566.4]
  wire  _T_112; // @[FPU.scala 751:38:freechips.rocketchip.system.DefaultRV32Config.fir@144567.4]
  wire  _T_114; // @[FPU.scala 774:33:freechips.rocketchip.system.DefaultRV32Config.fir@144574.4]
  wire [1:0] _T_120; // @[FPU.scala 762:30:freechips.rocketchip.system.DefaultRV32Config.fir@144590.4]
  wire  _T_121; // @[FPU.scala 762:39:freechips.rocketchip.system.DefaultRV32Config.fir@144591.4]
  wire  _T_122; // @[FPU.scala 762:67:freechips.rocketchip.system.DefaultRV32Config.fir@144592.4]
  wire  _T_123; // @[FPU.scala 762:53:freechips.rocketchip.system.DefaultRV32Config.fir@144593.4]
  wire [1:0] _GEN_160; // @[FPU.scala 762:36:freechips.rocketchip.system.DefaultRV32Config.fir@144594.4]
  wire  _T_125; // @[FPU.scala 778:51:freechips.rocketchip.system.DefaultRV32Config.fir@144608.4]
  wire  _T_126; // @[FPU.scala 778:66:freechips.rocketchip.system.DefaultRV32Config.fir@144609.4]
  wire  _T_127; // @[FPU.scala 778:103:freechips.rocketchip.system.DefaultRV32Config.fir@144610.4]
  wire  _T_128; // @[FPU.scala 778:82:freechips.rocketchip.system.DefaultRV32Config.fir@144611.4]
  wire [32:0] _T_142; // @[FPU.scala 790:29:freechips.rocketchip.system.DefaultRV32Config.fir@144656.4]
  reg [4:0] divSqrt_waddr; // @[FPU.scala 799:26:freechips.rocketchip.system.DefaultRV32Config.fir@144672.4]
  reg [31:0] _RAND_32;
  wire  _T_146; // @[FPU.scala 809:56:freechips.rocketchip.system.DefaultRV32Config.fir@144681.4]
  wire [1:0] _T_147; // @[FPU.scala 818:23:freechips.rocketchip.system.DefaultRV32Config.fir@144682.4]
  wire  _T_148; // @[FPU.scala 818:78:freechips.rocketchip.system.DefaultRV32Config.fir@144683.4]
  wire [1:0] _GEN_162; // @[FPU.scala 818:78:freechips.rocketchip.system.DefaultRV32Config.fir@144684.4]
  wire [1:0] memLatencyMask; // @[FPU.scala 818:78:freechips.rocketchip.system.DefaultRV32Config.fir@144684.4]
  reg [1:0] wen; // @[FPU.scala 832:16:freechips.rocketchip.system.DefaultRV32Config.fir@144685.4]
  reg [31:0] _RAND_33;
  reg [4:0] wbInfo_0_rd; // @[FPU.scala 833:19:freechips.rocketchip.system.DefaultRV32Config.fir@144686.4]
  reg [31:0] _RAND_34;
  reg [1:0] wbInfo_0_pipeid; // @[FPU.scala 833:19:freechips.rocketchip.system.DefaultRV32Config.fir@144686.4]
  reg [31:0] _RAND_35;
  reg [4:0] wbInfo_1_rd; // @[FPU.scala 833:19:freechips.rocketchip.system.DefaultRV32Config.fir@144686.4]
  reg [31:0] _RAND_36;
  reg [1:0] wbInfo_1_pipeid; // @[FPU.scala 833:19:freechips.rocketchip.system.DefaultRV32Config.fir@144686.4]
  reg [31:0] _RAND_37;
  wire  _T_149; // @[FPU.scala 834:48:freechips.rocketchip.system.DefaultRV32Config.fir@144687.4]
  wire  _T_150; // @[FPU.scala 834:69:freechips.rocketchip.system.DefaultRV32Config.fir@144688.4]
  wire  mem_wen; // @[FPU.scala 834:31:freechips.rocketchip.system.DefaultRV32Config.fir@144689.4]
  wire [1:0] _T_151; // @[FPU.scala 818:23:freechips.rocketchip.system.DefaultRV32Config.fir@144690.4]
  wire [1:0] _T_152; // @[FPU.scala 818:23:freechips.rocketchip.system.DefaultRV32Config.fir@144691.4]
  wire  _T_153; // @[FPU.scala 809:56:freechips.rocketchip.system.DefaultRV32Config.fir@144692.4]
  wire [2:0] _T_154; // @[FPU.scala 818:23:freechips.rocketchip.system.DefaultRV32Config.fir@144693.4]
  wire [1:0] _T_155; // @[FPU.scala 818:78:freechips.rocketchip.system.DefaultRV32Config.fir@144694.4]
  wire [2:0] _GEN_163; // @[FPU.scala 818:78:freechips.rocketchip.system.DefaultRV32Config.fir@144695.4]
  wire [2:0] _T_156; // @[FPU.scala 818:78:freechips.rocketchip.system.DefaultRV32Config.fir@144695.4]
  wire [2:0] _GEN_164; // @[FPU.scala 835:62:freechips.rocketchip.system.DefaultRV32Config.fir@144696.4]
  wire [2:0] _T_157; // @[FPU.scala 835:62:freechips.rocketchip.system.DefaultRV32Config.fir@144696.4]
  wire  _T_158; // @[FPU.scala 835:89:freechips.rocketchip.system.DefaultRV32Config.fir@144697.4]
  wire  _T_159; // @[FPU.scala 835:43:freechips.rocketchip.system.DefaultRV32Config.fir@144698.4]
  wire [2:0] _T_160; // @[FPU.scala 818:23:freechips.rocketchip.system.DefaultRV32Config.fir@144699.4]
  wire [2:0] _T_161; // @[FPU.scala 818:23:freechips.rocketchip.system.DefaultRV32Config.fir@144700.4]
  wire [3:0] _T_163; // @[FPU.scala 818:23:freechips.rocketchip.system.DefaultRV32Config.fir@144702.4]
  wire [2:0] _T_164; // @[FPU.scala 818:78:freechips.rocketchip.system.DefaultRV32Config.fir@144703.4]
  wire [3:0] _GEN_165; // @[FPU.scala 818:78:freechips.rocketchip.system.DefaultRV32Config.fir@144704.4]
  wire [3:0] _T_165; // @[FPU.scala 818:78:freechips.rocketchip.system.DefaultRV32Config.fir@144704.4]
  wire [3:0] _GEN_166; // @[FPU.scala 835:101:freechips.rocketchip.system.DefaultRV32Config.fir@144705.4]
  wire [3:0] _T_166; // @[FPU.scala 835:101:freechips.rocketchip.system.DefaultRV32Config.fir@144705.4]
  wire  _T_167; // @[FPU.scala 835:128:freechips.rocketchip.system.DefaultRV32Config.fir@144706.4]
  wire  _T_168; // @[FPU.scala 835:93:freechips.rocketchip.system.DefaultRV32Config.fir@144707.4]
  reg  write_port_busy; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@144708.4]
  reg [31:0] _RAND_38;
  wire  _T_170; // @[FPU.scala 839:14:freechips.rocketchip.system.DefaultRV32Config.fir@144713.4]
  wire  _T_171; // @[FPU.scala 841:14:freechips.rocketchip.system.DefaultRV32Config.fir@144717.4]
  wire [1:0] _GEN_167; // @[FPU.scala 844:23:freechips.rocketchip.system.DefaultRV32Config.fir@144723.8]
  wire [1:0] _T_174; // @[FPU.scala 844:23:freechips.rocketchip.system.DefaultRV32Config.fir@144723.8]
  wire  _T_175; // @[FPU.scala 847:13:freechips.rocketchip.system.DefaultRV32Config.fir@144726.6]
  wire  _T_176; // @[FPU.scala 847:47:freechips.rocketchip.system.DefaultRV32Config.fir@144727.6]
  wire  _T_177; // @[FPU.scala 847:30:freechips.rocketchip.system.DefaultRV32Config.fir@144728.6]
  wire [1:0] _GEN_168; // @[FPU.scala 820:108:freechips.rocketchip.system.DefaultRV32Config.fir@144737.8]
  wire [1:0] _T_183; // @[FPU.scala 820:108:freechips.rocketchip.system.DefaultRV32Config.fir@144737.8]
  wire [4:0] _T_184; // @[FPU.scala 851:37:freechips.rocketchip.system.DefaultRV32Config.fir@144739.8]
  wire  _T_186; // @[FPU.scala 847:47:freechips.rocketchip.system.DefaultRV32Config.fir@144743.6]
  wire  _T_187; // @[FPU.scala 847:30:freechips.rocketchip.system.DefaultRV32Config.fir@144744.6]
  wire  _T_275; // @[FPU.scala 916:37:freechips.rocketchip.system.DefaultRV32Config.fir@144890.4]
  reg  divSqrt_killed; // @[FPU.scala 894:29:freechips.rocketchip.system.DefaultRV32Config.fir@144857.4]
  reg [31:0] _RAND_39;
  wire  _T_276; // @[FPU.scala 917:24:freechips.rocketchip.system.DefaultRV32Config.fir@144892.6]
  wire  divSqrt_wen; // @[FPU.scala 916:66:freechips.rocketchip.system.DefaultRV32Config.fir@144891.4]
  wire  _T_196; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@144762.4]
  wire [32:0] _T_197; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@144763.4]
  wire  _T_198; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@144764.4]
  wire [32:0] _T_199; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@144765.4]
  wire  _T_200; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@144766.4]
  wire [32:0] _T_201; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@144767.4]
  wire [32:0] divSqrt_wdata; // @[FPU.scala 916:66:freechips.rocketchip.system.DefaultRV32Config.fir@144891.4]
  wire [4:0] _T_203; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@144770.4]
  wire [4:0] _T_205; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@144772.4]
  wire [4:0] wexc; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@144774.4]
  wire  _T_208; // @[FPU.scala 860:30:freechips.rocketchip.system.DefaultRV32Config.fir@144776.4]
  wire  wb_toint_valid; // @[FPU.scala 873:37:freechips.rocketchip.system.DefaultRV32Config.fir@144798.4]
  reg [4:0] wb_toint_exc; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@144799.4]
  reg [31:0] _RAND_40;
  wire  _T_218; // @[FPU.scala 875:41:freechips.rocketchip.system.DefaultRV32Config.fir@144803.4]
  wire [4:0] _T_221; // @[FPU.scala 877:8:freechips.rocketchip.system.DefaultRV32Config.fir@144807.4]
  wire [4:0] divSqrt_flags; // @[FPU.scala 916:66:freechips.rocketchip.system.DefaultRV32Config.fir@144891.4]
  wire [4:0] _T_222; // @[FPU.scala 878:8:freechips.rocketchip.system.DefaultRV32Config.fir@144808.4]
  wire [4:0] _T_223; // @[FPU.scala 877:48:freechips.rocketchip.system.DefaultRV32Config.fir@144809.4]
  wire [4:0] _T_225; // @[FPU.scala 879:8:freechips.rocketchip.system.DefaultRV32Config.fir@144811.4]
  wire  _T_227; // @[FPU.scala 881:47:freechips.rocketchip.system.DefaultRV32Config.fir@144814.4]
  wire  _T_228; // @[FPU.scala 881:72:freechips.rocketchip.system.DefaultRV32Config.fir@144815.4]
  wire  divSqrt_write_port_busy; // @[FPU.scala 881:65:freechips.rocketchip.system.DefaultRV32Config.fir@144816.4]
  wire  _T_229; // @[FPU.scala 882:33:freechips.rocketchip.system.DefaultRV32Config.fir@144817.4]
  wire  _T_230; // @[FPU.scala 882:68:freechips.rocketchip.system.DefaultRV32Config.fir@144818.4]
  wire  _T_231; // @[FPU.scala 882:51:freechips.rocketchip.system.DefaultRV32Config.fir@144819.4]
  wire  _T_233; // @[FPU.scala 882:87:freechips.rocketchip.system.DefaultRV32Config.fir@144821.4]
  wire  _T_235; // @[FPU.scala 882:120:freechips.rocketchip.system.DefaultRV32Config.fir@144823.4]
  wire  divSqrt_inFlight; // @[FPU.scala 909:13:freechips.rocketchip.system.DefaultRV32Config.fir@144880.4]
  wire  _T_236; // @[FPU.scala 882:131:freechips.rocketchip.system.DefaultRV32Config.fir@144824.4]
  wire  _T_238; // @[FPU.scala 883:34:freechips.rocketchip.system.DefaultRV32Config.fir@144827.4]
  reg  _T_244; // @[FPU.scala 886:55:freechips.rocketchip.system.DefaultRV32Config.fir@144835.4]
  reg [31:0] _RAND_41;
  wire [2:0] _T_252; // @[FPU.scala 891:27:freechips.rocketchip.system.DefaultRV32Config.fir@144847.4]
  wire  _T_253; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@144848.4]
  wire  _T_254; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@144849.4]
  wire  _T_255; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@144850.4]
  wire  _T_257; // @[FPU.scala 891:67:freechips.rocketchip.system.DefaultRV32Config.fir@144852.4]
  wire  _T_258; // @[FPU.scala 891:87:freechips.rocketchip.system.DefaultRV32Config.fir@144853.4]
  wire  _T_259; // @[FPU.scala 891:73:freechips.rocketchip.system.DefaultRV32Config.fir@144854.4]
  wire  tag_2; // @[FPU.scala 900:17:freechips.rocketchip.system.DefaultRV32Config.fir@144863.4]
  wire  _T_266; // @[FPU.scala 902:50:freechips.rocketchip.system.DefaultRV32Config.fir@144868.4]
  wire  _T_267; // @[FPU.scala 902:43:freechips.rocketchip.system.DefaultRV32Config.fir@144869.4]
  wire  _T_269; // @[FPU.scala 902:65:freechips.rocketchip.system.DefaultRV32Config.fir@144871.4]
  wire  _T_270; // @[FPU.scala 902:103:freechips.rocketchip.system.DefaultRV32Config.fir@144872.4]
  wire  _T_273; // @[FPU.scala 911:32:freechips.rocketchip.system.DefaultRV32Config.fir@144884.4]
  FPUDecoder fp_decoder ( // @[FPU.scala 688:26:freechips.rocketchip.system.DefaultRV32Config.fir@144305.4]
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
  FPUFMAPipe sfma ( // @[FPU.scala 773:20:freechips.rocketchip.system.DefaultRV32Config.fir@144570.4]
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
  FPToInt fpiu ( // @[FPU.scala 777:20:freechips.rocketchip.system.DefaultRV32Config.fir@144604.4]
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
  IntToFP ifpu ( // @[FPU.scala 787:20:freechips.rocketchip.system.DefaultRV32Config.fir@144649.4]
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
  FPToFP fpmu ( // @[FPU.scala 792:20:freechips.rocketchip.system.DefaultRV32Config.fir@144658.4]
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
  DivSqrtRecFN_small divSqrt ( // @[FPU.scala 901:27:freechips.rocketchip.system.DefaultRV32Config.fir@144864.4]
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
  assign regfile_ex_rs_0_data = regfile[regfile_ex_rs_0_addr]; // @[FPU.scala 729:20:freechips.rocketchip.system.DefaultRV32Config.fir@144422.4]
  assign regfile_ex_rs_1_addr = ex_ra_1;
  assign regfile_ex_rs_1_data = regfile[regfile_ex_rs_1_addr]; // @[FPU.scala 729:20:freechips.rocketchip.system.DefaultRV32Config.fir@144422.4]
  assign regfile_ex_rs_2_addr = ex_ra_2;
  assign regfile_ex_rs_2_data = regfile[regfile_ex_rs_2_addr]; // @[FPU.scala 729:20:freechips.rocketchip.system.DefaultRV32Config.fir@144422.4]
  assign regfile__T_91_data = {_T_90,_T_89};
  assign regfile__T_91_addr = load_wb_tag;
  assign regfile__T_91_mask = 1'h1;
  assign regfile__T_91_en = load_wb;
  assign regfile__T_214_data = divSqrt_wen ? divSqrt_wdata : _T_201;
  assign regfile__T_214_addr = divSqrt_wen ? divSqrt_waddr : wbInfo_0_rd;
  assign regfile__T_214_mask = 1'h1;
  assign regfile__T_214_en = _T_208 | divSqrt_wen;
  assign killm = io_killm | io_nack_mem; // @[FPU.scala 710:25:freechips.rocketchip.system.DefaultRV32Config.fir@144360.4]
  assign _T_3 = mem_reg_valid & killm; // @[FPU.scala 714:41:freechips.rocketchip.system.DefaultRV32Config.fir@144363.4]
  assign killx = io_killx | _T_3; // @[FPU.scala 714:24:freechips.rocketchip.system.DefaultRV32Config.fir@144364.4]
  assign _T_4 = killx == 1'h0; // @[FPU.scala 715:36:freechips.rocketchip.system.DefaultRV32Config.fir@144365.4]
  assign _T_5 = ex_reg_valid & _T_4; // @[FPU.scala 715:33:freechips.rocketchip.system.DefaultRV32Config.fir@144366.4]
  assign _T_7 = killm == 1'h0; // @[FPU.scala 717:49:freechips.rocketchip.system.DefaultRV32Config.fir@144373.4]
  assign _T_9 = mem_reg_valid & _T_7; // @[FPU.scala 717:45:freechips.rocketchip.system.DefaultRV32Config.fir@144375.4]
  assign _T_11 = load_wb_data[31]; // @[rawFloatFromFN.scala 46:22:freechips.rocketchip.system.DefaultRV32Config.fir@144425.6]
  assign _T_12 = load_wb_data[30:23]; // @[rawFloatFromFN.scala 47:23:freechips.rocketchip.system.DefaultRV32Config.fir@144426.6]
  assign _T_13 = load_wb_data[22:0]; // @[rawFloatFromFN.scala 48:25:freechips.rocketchip.system.DefaultRV32Config.fir@144427.6]
  assign _T_14 = _T_12 == 8'h0; // @[rawFloatFromFN.scala 50:34:freechips.rocketchip.system.DefaultRV32Config.fir@144428.6]
  assign _T_15 = _T_13 == 23'h0; // @[rawFloatFromFN.scala 51:38:freechips.rocketchip.system.DefaultRV32Config.fir@144429.6]
  assign _T_17 = _T_13[1]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@144431.6]
  assign _T_18 = _T_13[2]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@144432.6]
  assign _T_19 = _T_13[3]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@144433.6]
  assign _T_20 = _T_13[4]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@144434.6]
  assign _T_21 = _T_13[5]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@144435.6]
  assign _T_22 = _T_13[6]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@144436.6]
  assign _T_23 = _T_13[7]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@144437.6]
  assign _T_24 = _T_13[8]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@144438.6]
  assign _T_25 = _T_13[9]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@144439.6]
  assign _T_26 = _T_13[10]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@144440.6]
  assign _T_27 = _T_13[11]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@144441.6]
  assign _T_28 = _T_13[12]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@144442.6]
  assign _T_29 = _T_13[13]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@144443.6]
  assign _T_30 = _T_13[14]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@144444.6]
  assign _T_31 = _T_13[15]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@144445.6]
  assign _T_32 = _T_13[16]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@144446.6]
  assign _T_33 = _T_13[17]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@144447.6]
  assign _T_34 = _T_13[18]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@144448.6]
  assign _T_35 = _T_13[19]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@144449.6]
  assign _T_36 = _T_13[20]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@144450.6]
  assign _T_37 = _T_13[21]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@144451.6]
  assign _T_38 = _T_13[22]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@144452.6]
  assign _T_39 = _T_17 ? 5'h15 : 5'h16; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@144453.6]
  assign _T_40 = _T_18 ? 5'h14 : _T_39; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@144454.6]
  assign _T_41 = _T_19 ? 5'h13 : _T_40; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@144455.6]
  assign _T_42 = _T_20 ? 5'h12 : _T_41; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@144456.6]
  assign _T_43 = _T_21 ? 5'h11 : _T_42; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@144457.6]
  assign _T_44 = _T_22 ? 5'h10 : _T_43; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@144458.6]
  assign _T_45 = _T_23 ? 5'hf : _T_44; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@144459.6]
  assign _T_46 = _T_24 ? 5'he : _T_45; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@144460.6]
  assign _T_47 = _T_25 ? 5'hd : _T_46; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@144461.6]
  assign _T_48 = _T_26 ? 5'hc : _T_47; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@144462.6]
  assign _T_49 = _T_27 ? 5'hb : _T_48; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@144463.6]
  assign _T_50 = _T_28 ? 5'ha : _T_49; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@144464.6]
  assign _T_51 = _T_29 ? 5'h9 : _T_50; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@144465.6]
  assign _T_52 = _T_30 ? 5'h8 : _T_51; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@144466.6]
  assign _T_53 = _T_31 ? 5'h7 : _T_52; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@144467.6]
  assign _T_54 = _T_32 ? 5'h6 : _T_53; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@144468.6]
  assign _T_55 = _T_33 ? 5'h5 : _T_54; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@144469.6]
  assign _T_56 = _T_34 ? 5'h4 : _T_55; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@144470.6]
  assign _T_57 = _T_35 ? 5'h3 : _T_56; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@144471.6]
  assign _T_58 = _T_36 ? 5'h2 : _T_57; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@144472.6]
  assign _T_59 = _T_37 ? 5'h1 : _T_58; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@144473.6]
  assign _T_60 = _T_38 ? 5'h0 : _T_59; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@144474.6]
  assign _GEN_155 = {{31'd0}, _T_13}; // @[rawFloatFromFN.scala 54:36:freechips.rocketchip.system.DefaultRV32Config.fir@144475.6]
  assign _T_61 = _GEN_155 << _T_60; // @[rawFloatFromFN.scala 54:36:freechips.rocketchip.system.DefaultRV32Config.fir@144475.6]
  assign _T_62 = _T_61[21:0]; // @[rawFloatFromFN.scala 54:47:freechips.rocketchip.system.DefaultRV32Config.fir@144476.6]
  assign _T_63 = {_T_62, 1'h0}; // @[rawFloatFromFN.scala 54:64:freechips.rocketchip.system.DefaultRV32Config.fir@144477.6]
  assign _GEN_156 = {{4'd0}, _T_60}; // @[rawFloatFromFN.scala 57:26:freechips.rocketchip.system.DefaultRV32Config.fir@144478.6]
  assign _T_64 = _GEN_156 ^ 9'h1ff; // @[rawFloatFromFN.scala 57:26:freechips.rocketchip.system.DefaultRV32Config.fir@144478.6]
  assign _T_65 = _T_14 ? _T_64 : {{1'd0}, _T_12}; // @[rawFloatFromFN.scala 56:16:freechips.rocketchip.system.DefaultRV32Config.fir@144479.6]
  assign _T_66 = _T_14 ? 2'h2 : 2'h1; // @[rawFloatFromFN.scala 60:27:freechips.rocketchip.system.DefaultRV32Config.fir@144480.6]
  assign _GEN_157 = {{6'd0}, _T_66}; // @[rawFloatFromFN.scala 60:22:freechips.rocketchip.system.DefaultRV32Config.fir@144481.6]
  assign _T_67 = 8'h80 | _GEN_157; // @[rawFloatFromFN.scala 60:22:freechips.rocketchip.system.DefaultRV32Config.fir@144481.6]
  assign _GEN_158 = {{1'd0}, _T_67}; // @[rawFloatFromFN.scala 59:15:freechips.rocketchip.system.DefaultRV32Config.fir@144482.6]
  assign _T_69 = _T_65 + _GEN_158; // @[rawFloatFromFN.scala 59:15:freechips.rocketchip.system.DefaultRV32Config.fir@144483.6]
  assign _T_70 = _T_14 & _T_15; // @[rawFloatFromFN.scala 62:34:freechips.rocketchip.system.DefaultRV32Config.fir@144484.6]
  assign _T_71 = _T_69[8:7]; // @[rawFloatFromFN.scala 63:37:freechips.rocketchip.system.DefaultRV32Config.fir@144485.6]
  assign _T_72 = _T_71 == 2'h3; // @[rawFloatFromFN.scala 63:62:freechips.rocketchip.system.DefaultRV32Config.fir@144486.6]
  assign _T_74 = _T_15 == 1'h0; // @[rawFloatFromFN.scala 66:36:freechips.rocketchip.system.DefaultRV32Config.fir@144489.6]
  assign _T_75 = _T_72 & _T_74; // @[rawFloatFromFN.scala 66:33:freechips.rocketchip.system.DefaultRV32Config.fir@144490.6]
  assign _T_78 = {1'b0,$signed(_T_69)}; // @[rawFloatFromFN.scala 70:48:freechips.rocketchip.system.DefaultRV32Config.fir@144497.6]
  assign _T_79 = _T_70 == 1'h0; // @[rawFloatFromFN.scala 72:29:freechips.rocketchip.system.DefaultRV32Config.fir@144499.6]
  assign _T_80 = _T_14 ? _T_63 : _T_13; // @[rawFloatFromFN.scala 72:42:freechips.rocketchip.system.DefaultRV32Config.fir@144500.6]
  assign _T_82 = {1'h0,_T_79,_T_80}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@144502.6]
  assign _T_83 = _T_78[8:6]; // @[recFNFromFN.scala 48:53:freechips.rocketchip.system.DefaultRV32Config.fir@144504.6]
  assign _T_84 = _T_70 ? 3'h0 : _T_83; // @[recFNFromFN.scala 48:16:freechips.rocketchip.system.DefaultRV32Config.fir@144505.6]
  assign _GEN_159 = {{2'd0}, _T_75}; // @[recFNFromFN.scala 48:79:freechips.rocketchip.system.DefaultRV32Config.fir@144507.6]
  assign _T_86 = _T_84 | _GEN_159; // @[recFNFromFN.scala 48:79:freechips.rocketchip.system.DefaultRV32Config.fir@144507.6]
  assign _T_87 = _T_78[5:0]; // @[recFNFromFN.scala 50:23:freechips.rocketchip.system.DefaultRV32Config.fir@144508.6]
  assign _T_88 = _T_82[22:0]; // @[recFNFromFN.scala 51:22:freechips.rocketchip.system.DefaultRV32Config.fir@144509.6]
  assign _T_89 = {_T_87,_T_88}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@144510.6]
  assign _T_90 = {_T_11,_T_86}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@144511.6]
  assign _T_101 = fp_decoder_io_sigs_swap12 == 1'h0; // @[FPU.scala 741:13:freechips.rocketchip.system.DefaultRV32Config.fir@144534.8]
  assign _T_102 = io_inst[19:15]; // @[FPU.scala 741:51:freechips.rocketchip.system.DefaultRV32Config.fir@144536.10]
  assign _T_104 = io_inst[24:20]; // @[FPU.scala 745:50:freechips.rocketchip.system.DefaultRV32Config.fir@144546.10]
  assign _T_107 = fp_decoder_io_sigs_swap23 == 1'h0; // @[FPU.scala 747:32:freechips.rocketchip.system.DefaultRV32Config.fir@144554.8]
  assign _T_108 = _T_101 & _T_107; // @[FPU.scala 747:29:freechips.rocketchip.system.DefaultRV32Config.fir@144555.8]
  assign _T_110 = io_inst[31:27]; // @[FPU.scala 749:46:freechips.rocketchip.system.DefaultRV32Config.fir@144562.8]
  assign _T_111 = ex_reg_inst[14:12]; // @[FPU.scala 751:30:freechips.rocketchip.system.DefaultRV32Config.fir@144566.4]
  assign _T_112 = _T_111 == 3'h7; // @[FPU.scala 751:38:freechips.rocketchip.system.DefaultRV32Config.fir@144567.4]
  assign _T_114 = ex_reg_valid & ex_reg_ctrl_fma; // @[FPU.scala 774:33:freechips.rocketchip.system.DefaultRV32Config.fir@144574.4]
  assign _T_120 = ex_reg_inst[3:2]; // @[FPU.scala 762:30:freechips.rocketchip.system.DefaultRV32Config.fir@144590.4]
  assign _T_121 = ex_reg_ctrl_ren3 == 1'h0; // @[FPU.scala 762:39:freechips.rocketchip.system.DefaultRV32Config.fir@144591.4]
  assign _T_122 = ex_reg_inst[27]; // @[FPU.scala 762:67:freechips.rocketchip.system.DefaultRV32Config.fir@144592.4]
  assign _T_123 = _T_121 & _T_122; // @[FPU.scala 762:53:freechips.rocketchip.system.DefaultRV32Config.fir@144593.4]
  assign _GEN_160 = {{1'd0}, _T_123}; // @[FPU.scala 762:36:freechips.rocketchip.system.DefaultRV32Config.fir@144594.4]
  assign _T_125 = ex_reg_ctrl_toint | ex_reg_ctrl_div; // @[FPU.scala 778:51:freechips.rocketchip.system.DefaultRV32Config.fir@144608.4]
  assign _T_126 = _T_125 | ex_reg_ctrl_sqrt; // @[FPU.scala 778:66:freechips.rocketchip.system.DefaultRV32Config.fir@144609.4]
  assign _T_127 = ex_reg_ctrl_fastpipe & ex_reg_ctrl_wflags; // @[FPU.scala 778:103:freechips.rocketchip.system.DefaultRV32Config.fir@144610.4]
  assign _T_128 = _T_126 | _T_127; // @[FPU.scala 778:82:freechips.rocketchip.system.DefaultRV32Config.fir@144611.4]
  assign _T_142 = {{1'd0}, io_fromint_data}; // @[FPU.scala 790:29:freechips.rocketchip.system.DefaultRV32Config.fir@144656.4]
  assign _T_146 = mem_ctrl_fma & mem_ctrl_singleOut; // @[FPU.scala 809:56:freechips.rocketchip.system.DefaultRV32Config.fir@144681.4]
  assign _T_147 = _T_146 ? 2'h2 : 2'h0; // @[FPU.scala 818:23:freechips.rocketchip.system.DefaultRV32Config.fir@144682.4]
  assign _T_148 = mem_ctrl_fastpipe | mem_ctrl_fromint; // @[FPU.scala 818:78:freechips.rocketchip.system.DefaultRV32Config.fir@144683.4]
  assign _GEN_162 = {{1'd0}, _T_148}; // @[FPU.scala 818:78:freechips.rocketchip.system.DefaultRV32Config.fir@144684.4]
  assign memLatencyMask = _GEN_162 | _T_147; // @[FPU.scala 818:78:freechips.rocketchip.system.DefaultRV32Config.fir@144684.4]
  assign _T_149 = mem_ctrl_fma | mem_ctrl_fastpipe; // @[FPU.scala 834:48:freechips.rocketchip.system.DefaultRV32Config.fir@144687.4]
  assign _T_150 = _T_149 | mem_ctrl_fromint; // @[FPU.scala 834:69:freechips.rocketchip.system.DefaultRV32Config.fir@144688.4]
  assign mem_wen = mem_reg_valid & _T_150; // @[FPU.scala 834:31:freechips.rocketchip.system.DefaultRV32Config.fir@144689.4]
  assign _T_151 = ex_reg_ctrl_fastpipe ? 2'h2 : 2'h0; // @[FPU.scala 818:23:freechips.rocketchip.system.DefaultRV32Config.fir@144690.4]
  assign _T_152 = ex_reg_ctrl_fromint ? 2'h2 : 2'h0; // @[FPU.scala 818:23:freechips.rocketchip.system.DefaultRV32Config.fir@144691.4]
  assign _T_153 = ex_reg_ctrl_fma & ex_reg_ctrl_singleOut; // @[FPU.scala 809:56:freechips.rocketchip.system.DefaultRV32Config.fir@144692.4]
  assign _T_154 = _T_153 ? 3'h4 : 3'h0; // @[FPU.scala 818:23:freechips.rocketchip.system.DefaultRV32Config.fir@144693.4]
  assign _T_155 = _T_151 | _T_152; // @[FPU.scala 818:78:freechips.rocketchip.system.DefaultRV32Config.fir@144694.4]
  assign _GEN_163 = {{1'd0}, _T_155}; // @[FPU.scala 818:78:freechips.rocketchip.system.DefaultRV32Config.fir@144695.4]
  assign _T_156 = _GEN_163 | _T_154; // @[FPU.scala 818:78:freechips.rocketchip.system.DefaultRV32Config.fir@144695.4]
  assign _GEN_164 = {{1'd0}, memLatencyMask}; // @[FPU.scala 835:62:freechips.rocketchip.system.DefaultRV32Config.fir@144696.4]
  assign _T_157 = _GEN_164 & _T_156; // @[FPU.scala 835:62:freechips.rocketchip.system.DefaultRV32Config.fir@144696.4]
  assign _T_158 = _T_157 != 3'h0; // @[FPU.scala 835:89:freechips.rocketchip.system.DefaultRV32Config.fir@144697.4]
  assign _T_159 = mem_wen & _T_158; // @[FPU.scala 835:43:freechips.rocketchip.system.DefaultRV32Config.fir@144698.4]
  assign _T_160 = ex_reg_ctrl_fastpipe ? 3'h4 : 3'h0; // @[FPU.scala 818:23:freechips.rocketchip.system.DefaultRV32Config.fir@144699.4]
  assign _T_161 = ex_reg_ctrl_fromint ? 3'h4 : 3'h0; // @[FPU.scala 818:23:freechips.rocketchip.system.DefaultRV32Config.fir@144700.4]
  assign _T_163 = _T_153 ? 4'h8 : 4'h0; // @[FPU.scala 818:23:freechips.rocketchip.system.DefaultRV32Config.fir@144702.4]
  assign _T_164 = _T_160 | _T_161; // @[FPU.scala 818:78:freechips.rocketchip.system.DefaultRV32Config.fir@144703.4]
  assign _GEN_165 = {{1'd0}, _T_164}; // @[FPU.scala 818:78:freechips.rocketchip.system.DefaultRV32Config.fir@144704.4]
  assign _T_165 = _GEN_165 | _T_163; // @[FPU.scala 818:78:freechips.rocketchip.system.DefaultRV32Config.fir@144704.4]
  assign _GEN_166 = {{2'd0}, wen}; // @[FPU.scala 835:101:freechips.rocketchip.system.DefaultRV32Config.fir@144705.4]
  assign _T_166 = _GEN_166 & _T_165; // @[FPU.scala 835:101:freechips.rocketchip.system.DefaultRV32Config.fir@144705.4]
  assign _T_167 = _T_166 != 4'h0; // @[FPU.scala 835:128:freechips.rocketchip.system.DefaultRV32Config.fir@144706.4]
  assign _T_168 = _T_159 | _T_167; // @[FPU.scala 835:93:freechips.rocketchip.system.DefaultRV32Config.fir@144707.4]
  assign _T_170 = wen[1]; // @[FPU.scala 839:14:freechips.rocketchip.system.DefaultRV32Config.fir@144713.4]
  assign _T_171 = wen[1:1]; // @[FPU.scala 841:14:freechips.rocketchip.system.DefaultRV32Config.fir@144717.4]
  assign _GEN_167 = {{1'd0}, _T_171}; // @[FPU.scala 844:23:freechips.rocketchip.system.DefaultRV32Config.fir@144723.8]
  assign _T_174 = _GEN_167 | memLatencyMask; // @[FPU.scala 844:23:freechips.rocketchip.system.DefaultRV32Config.fir@144723.8]
  assign _T_175 = write_port_busy == 1'h0; // @[FPU.scala 847:13:freechips.rocketchip.system.DefaultRV32Config.fir@144726.6]
  assign _T_176 = memLatencyMask[0]; // @[FPU.scala 847:47:freechips.rocketchip.system.DefaultRV32Config.fir@144727.6]
  assign _T_177 = _T_175 & _T_176; // @[FPU.scala 847:30:freechips.rocketchip.system.DefaultRV32Config.fir@144728.6]
  assign _GEN_168 = {{1'd0}, mem_ctrl_fromint}; // @[FPU.scala 820:108:freechips.rocketchip.system.DefaultRV32Config.fir@144737.8]
  assign _T_183 = _GEN_168 | _T_147; // @[FPU.scala 820:108:freechips.rocketchip.system.DefaultRV32Config.fir@144737.8]
  assign _T_184 = mem_reg_inst[11:7]; // @[FPU.scala 851:37:freechips.rocketchip.system.DefaultRV32Config.fir@144739.8]
  assign _T_186 = memLatencyMask[1]; // @[FPU.scala 847:47:freechips.rocketchip.system.DefaultRV32Config.fir@144743.6]
  assign _T_187 = _T_175 & _T_186; // @[FPU.scala 847:30:freechips.rocketchip.system.DefaultRV32Config.fir@144744.6]
  assign _T_275 = divSqrt_io_outValid_div | divSqrt_io_outValid_sqrt; // @[FPU.scala 916:37:freechips.rocketchip.system.DefaultRV32Config.fir@144890.4]
  assign _T_276 = divSqrt_killed == 1'h0; // @[FPU.scala 917:24:freechips.rocketchip.system.DefaultRV32Config.fir@144892.6]
  assign divSqrt_wen = _T_275 & _T_276; // @[FPU.scala 916:66:freechips.rocketchip.system.DefaultRV32Config.fir@144891.4]
  assign _T_196 = wbInfo_0_pipeid == 2'h1; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@144762.4]
  assign _T_197 = _T_196 ? ifpu_io_out_bits_data : fpmu_io_out_bits_data; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@144763.4]
  assign _T_198 = wbInfo_0_pipeid == 2'h2; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@144764.4]
  assign _T_199 = _T_198 ? sfma_io_out_bits_data : _T_197; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@144765.4]
  assign _T_200 = wbInfo_0_pipeid == 2'h3; // @[package.scala 32:81:freechips.rocketchip.system.DefaultRV32Config.fir@144766.4]
  assign _T_201 = _T_200 ? sfma_io_out_bits_data : _T_199; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@144767.4]
  assign divSqrt_wdata = divSqrt_io_out; // @[FPU.scala 916:66:freechips.rocketchip.system.DefaultRV32Config.fir@144891.4]
  assign _T_203 = _T_196 ? ifpu_io_out_bits_exc : fpmu_io_out_bits_exc; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@144770.4]
  assign _T_205 = _T_198 ? sfma_io_out_bits_exc : _T_203; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@144772.4]
  assign wexc = _T_200 ? sfma_io_out_bits_exc : _T_205; // @[package.scala 32:71:freechips.rocketchip.system.DefaultRV32Config.fir@144774.4]
  assign _T_208 = wen[0]; // @[FPU.scala 860:30:freechips.rocketchip.system.DefaultRV32Config.fir@144776.4]
  assign wb_toint_valid = wb_reg_valid & wb_ctrl_toint; // @[FPU.scala 873:37:freechips.rocketchip.system.DefaultRV32Config.fir@144798.4]
  assign _T_218 = wb_toint_valid | divSqrt_wen; // @[FPU.scala 875:41:freechips.rocketchip.system.DefaultRV32Config.fir@144803.4]
  assign _T_221 = wb_toint_valid ? wb_toint_exc : 5'h0; // @[FPU.scala 877:8:freechips.rocketchip.system.DefaultRV32Config.fir@144807.4]
  assign divSqrt_flags = divSqrt_io_exceptionFlags; // @[FPU.scala 916:66:freechips.rocketchip.system.DefaultRV32Config.fir@144891.4]
  assign _T_222 = divSqrt_wen ? divSqrt_flags : 5'h0; // @[FPU.scala 878:8:freechips.rocketchip.system.DefaultRV32Config.fir@144808.4]
  assign _T_223 = _T_221 | _T_222; // @[FPU.scala 877:48:freechips.rocketchip.system.DefaultRV32Config.fir@144809.4]
  assign _T_225 = _T_208 ? wexc : 5'h0; // @[FPU.scala 879:8:freechips.rocketchip.system.DefaultRV32Config.fir@144811.4]
  assign _T_227 = mem_ctrl_div | mem_ctrl_sqrt; // @[FPU.scala 881:47:freechips.rocketchip.system.DefaultRV32Config.fir@144814.4]
  assign _T_228 = wen != 2'h0; // @[FPU.scala 881:72:freechips.rocketchip.system.DefaultRV32Config.fir@144815.4]
  assign divSqrt_write_port_busy = _T_227 & _T_228; // @[FPU.scala 881:65:freechips.rocketchip.system.DefaultRV32Config.fir@144816.4]
  assign _T_229 = ex_reg_valid & ex_reg_ctrl_wflags; // @[FPU.scala 882:33:freechips.rocketchip.system.DefaultRV32Config.fir@144817.4]
  assign _T_230 = mem_reg_valid & mem_ctrl_wflags; // @[FPU.scala 882:68:freechips.rocketchip.system.DefaultRV32Config.fir@144818.4]
  assign _T_231 = _T_229 | _T_230; // @[FPU.scala 882:51:freechips.rocketchip.system.DefaultRV32Config.fir@144819.4]
  assign _T_233 = _T_231 | wb_toint_valid; // @[FPU.scala 882:87:freechips.rocketchip.system.DefaultRV32Config.fir@144821.4]
  assign _T_235 = _T_233 | _T_228; // @[FPU.scala 882:120:freechips.rocketchip.system.DefaultRV32Config.fir@144823.4]
  assign divSqrt_inFlight = divSqrt_io_inReady == 1'h0; // @[FPU.scala 909:13:freechips.rocketchip.system.DefaultRV32Config.fir@144880.4]
  assign _T_236 = _T_235 | divSqrt_inFlight; // @[FPU.scala 882:131:freechips.rocketchip.system.DefaultRV32Config.fir@144824.4]
  assign _T_238 = write_port_busy | divSqrt_write_port_busy; // @[FPU.scala 883:34:freechips.rocketchip.system.DefaultRV32Config.fir@144827.4]
  assign _T_252 = io_inst[14:12]; // @[FPU.scala 891:27:freechips.rocketchip.system.DefaultRV32Config.fir@144847.4]
  assign _T_253 = _T_252 == 3'h5; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@144848.4]
  assign _T_254 = _T_252 == 3'h6; // @[package.scala 15:47:freechips.rocketchip.system.DefaultRV32Config.fir@144849.4]
  assign _T_255 = _T_253 | _T_254; // @[package.scala 64:59:freechips.rocketchip.system.DefaultRV32Config.fir@144850.4]
  assign _T_257 = _T_252 == 3'h7; // @[FPU.scala 891:67:freechips.rocketchip.system.DefaultRV32Config.fir@144852.4]
  assign _T_258 = io_fcsr_rm >= 3'h5; // @[FPU.scala 891:87:freechips.rocketchip.system.DefaultRV32Config.fir@144853.4]
  assign _T_259 = _T_257 & _T_258; // @[FPU.scala 891:73:freechips.rocketchip.system.DefaultRV32Config.fir@144854.4]
  assign tag_2 = mem_ctrl_singleOut == 1'h0; // @[FPU.scala 900:17:freechips.rocketchip.system.DefaultRV32Config.fir@144863.4]
  assign _T_266 = tag_2 == 1'h0; // @[FPU.scala 902:50:freechips.rocketchip.system.DefaultRV32Config.fir@144868.4]
  assign _T_267 = mem_reg_valid & _T_266; // @[FPU.scala 902:43:freechips.rocketchip.system.DefaultRV32Config.fir@144869.4]
  assign _T_269 = _T_267 & _T_227; // @[FPU.scala 902:65:freechips.rocketchip.system.DefaultRV32Config.fir@144871.4]
  assign _T_270 = divSqrt_inFlight == 1'h0; // @[FPU.scala 902:103:freechips.rocketchip.system.DefaultRV32Config.fir@144872.4]
  assign _T_273 = divSqrt_io_inValid & divSqrt_io_inReady; // @[FPU.scala 911:32:freechips.rocketchip.system.DefaultRV32Config.fir@144884.4]
  assign io_fcsr_flags_valid = _T_218 | _T_208; // @[FPU.scala 875:23:freechips.rocketchip.system.DefaultRV32Config.fir@144806.4]
  assign io_fcsr_flags_bits = _T_223 | _T_225; // @[FPU.scala 876:22:freechips.rocketchip.system.DefaultRV32Config.fir@144813.4]
  assign io_store_data = fpiu_io_out_bits_store; // @[FPU.scala 780:17:freechips.rocketchip.system.DefaultRV32Config.fir@144641.4]
  assign io_toint_data = fpiu_io_out_bits_toint; // @[FPU.scala 781:17:freechips.rocketchip.system.DefaultRV32Config.fir@144642.4]
  assign io_fcsr_rdy = _T_236 == 1'h0; // @[FPU.scala 882:15:freechips.rocketchip.system.DefaultRV32Config.fir@144826.4]
  assign io_nack_mem = _T_238 | divSqrt_inFlight; // @[FPU.scala 883:15:freechips.rocketchip.system.DefaultRV32Config.fir@144829.4]
  assign io_illegal_rm = _T_255 | _T_259; // @[FPU.scala 891:17:freechips.rocketchip.system.DefaultRV32Config.fir@144856.4]
  assign io_dec_wen = fp_decoder_io_sigs_wen; // @[FPU.scala 884:10:freechips.rocketchip.system.DefaultRV32Config.fir@144830.4]
  assign io_dec_ren1 = fp_decoder_io_sigs_ren1; // @[FPU.scala 884:10:freechips.rocketchip.system.DefaultRV32Config.fir@144830.4]
  assign io_dec_ren2 = fp_decoder_io_sigs_ren2; // @[FPU.scala 884:10:freechips.rocketchip.system.DefaultRV32Config.fir@144830.4]
  assign io_dec_ren3 = fp_decoder_io_sigs_ren3; // @[FPU.scala 884:10:freechips.rocketchip.system.DefaultRV32Config.fir@144830.4]
  assign io_sboard_set = wb_reg_valid & _T_244; // @[FPU.scala 886:17:freechips.rocketchip.system.DefaultRV32Config.fir@144838.4]
  assign io_sboard_clr = _T_275 & _T_276; // @[FPU.scala 887:17:freechips.rocketchip.system.DefaultRV32Config.fir@144844.4]
  assign io_sboard_clra = divSqrt_wen ? divSqrt_waddr : wbInfo_0_rd; // @[FPU.scala 888:18:freechips.rocketchip.system.DefaultRV32Config.fir@144845.4]
  assign fp_decoder_io_inst = io_inst; // @[FPU.scala 689:22:freechips.rocketchip.system.DefaultRV32Config.fir@144309.4]
  assign sfma_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144572.4]
  assign sfma_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144573.4]
  assign sfma_io_in_valid = _T_114 & ex_reg_ctrl_singleOut; // @[FPU.scala 774:20:freechips.rocketchip.system.DefaultRV32Config.fir@144576.4]
  assign sfma_io_in_bits_ren3 = ex_reg_ctrl_ren3; // @[FPU.scala 775:19:freechips.rocketchip.system.DefaultRV32Config.fir@144603.4]
  assign sfma_io_in_bits_swap23 = ex_reg_ctrl_swap23; // @[FPU.scala 775:19:freechips.rocketchip.system.DefaultRV32Config.fir@144603.4]
  assign sfma_io_in_bits_rm = _T_112 ? io_fcsr_rm : _T_111; // @[FPU.scala 775:19:freechips.rocketchip.system.DefaultRV32Config.fir@144603.4]
  assign sfma_io_in_bits_fmaCmd = _T_120 | _GEN_160; // @[FPU.scala 775:19:freechips.rocketchip.system.DefaultRV32Config.fir@144603.4]
  assign sfma_io_in_bits_in1 = regfile_ex_rs_0_data; // @[FPU.scala 775:19:freechips.rocketchip.system.DefaultRV32Config.fir@144603.4]
  assign sfma_io_in_bits_in2 = regfile_ex_rs_1_data; // @[FPU.scala 775:19:freechips.rocketchip.system.DefaultRV32Config.fir@144603.4]
  assign sfma_io_in_bits_in3 = regfile_ex_rs_2_data; // @[FPU.scala 775:19:freechips.rocketchip.system.DefaultRV32Config.fir@144603.4]
  assign fpiu_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144606.4]
  assign fpiu_io_in_valid = ex_reg_valid & _T_128; // @[FPU.scala 778:20:freechips.rocketchip.system.DefaultRV32Config.fir@144613.4]
  assign fpiu_io_in_bits_ren2 = ex_reg_ctrl_ren2; // @[FPU.scala 779:19:freechips.rocketchip.system.DefaultRV32Config.fir@144640.4]
  assign fpiu_io_in_bits_wflags = ex_reg_ctrl_wflags; // @[FPU.scala 779:19:freechips.rocketchip.system.DefaultRV32Config.fir@144640.4]
  assign fpiu_io_in_bits_rm = _T_112 ? io_fcsr_rm : _T_111; // @[FPU.scala 779:19:freechips.rocketchip.system.DefaultRV32Config.fir@144640.4]
  assign fpiu_io_in_bits_typ = ex_reg_inst[21:20]; // @[FPU.scala 779:19:freechips.rocketchip.system.DefaultRV32Config.fir@144640.4]
  assign fpiu_io_in_bits_in1 = regfile_ex_rs_0_data; // @[FPU.scala 779:19:freechips.rocketchip.system.DefaultRV32Config.fir@144640.4]
  assign fpiu_io_in_bits_in2 = regfile_ex_rs_1_data; // @[FPU.scala 779:19:freechips.rocketchip.system.DefaultRV32Config.fir@144640.4]
  assign ifpu_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144651.4]
  assign ifpu_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144652.4]
  assign ifpu_io_in_valid = ex_reg_valid & ex_reg_ctrl_fromint; // @[FPU.scala 788:20:freechips.rocketchip.system.DefaultRV32Config.fir@144654.4]
  assign ifpu_io_in_bits_wflags = fpiu_io_in_bits_wflags; // @[FPU.scala 789:19:freechips.rocketchip.system.DefaultRV32Config.fir@144655.4]
  assign ifpu_io_in_bits_rm = fpiu_io_in_bits_rm; // @[FPU.scala 789:19:freechips.rocketchip.system.DefaultRV32Config.fir@144655.4]
  assign ifpu_io_in_bits_typ = fpiu_io_in_bits_typ; // @[FPU.scala 789:19:freechips.rocketchip.system.DefaultRV32Config.fir@144655.4]
  assign ifpu_io_in_bits_in1 = _T_142[31:0]; // @[FPU.scala 789:19:freechips.rocketchip.system.DefaultRV32Config.fir@144655.4 FPU.scala 790:23:freechips.rocketchip.system.DefaultRV32Config.fir@144657.4]
  assign fpmu_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144660.4]
  assign fpmu_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144661.4]
  assign fpmu_io_in_valid = ex_reg_valid & ex_reg_ctrl_fastpipe; // @[FPU.scala 793:20:freechips.rocketchip.system.DefaultRV32Config.fir@144663.4]
  assign fpmu_io_in_bits_wflags = fpiu_io_in_bits_wflags; // @[FPU.scala 794:19:freechips.rocketchip.system.DefaultRV32Config.fir@144664.4]
  assign fpmu_io_in_bits_rm = fpiu_io_in_bits_rm; // @[FPU.scala 794:19:freechips.rocketchip.system.DefaultRV32Config.fir@144664.4]
  assign fpmu_io_in_bits_in1 = fpiu_io_in_bits_in1; // @[FPU.scala 794:19:freechips.rocketchip.system.DefaultRV32Config.fir@144664.4]
  assign fpmu_io_in_bits_in2 = fpiu_io_in_bits_in2; // @[FPU.scala 794:19:freechips.rocketchip.system.DefaultRV32Config.fir@144664.4]
  assign fpmu_io_lt = fpiu_io_out_bits_lt; // @[FPU.scala 795:14:freechips.rocketchip.system.DefaultRV32Config.fir@144665.4]
  assign divSqrt_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144866.4]
  assign divSqrt_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144867.4]
  assign divSqrt_io_inValid = _T_269 & _T_270; // @[FPU.scala 902:26:freechips.rocketchip.system.DefaultRV32Config.fir@144874.4]
  assign divSqrt_io_sqrtOp = mem_ctrl_sqrt; // @[FPU.scala 903:25:freechips.rocketchip.system.DefaultRV32Config.fir@144875.4]
  assign divSqrt_io_a = fpiu_io_out_bits_in_in1; // @[FPU.scala 904:20:freechips.rocketchip.system.DefaultRV32Config.fir@144876.4]
  assign divSqrt_io_b = fpiu_io_out_bits_in_in2; // @[FPU.scala 905:20:freechips.rocketchip.system.DefaultRV32Config.fir@144877.4]
  assign divSqrt_io_roundingMode = fpiu_io_out_bits_in_rm; // @[FPU.scala 906:31:freechips.rocketchip.system.DefaultRV32Config.fir@144878.4]
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
  _T_244 = _RAND_41[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge clock) begin
    if(regfile__T_91_en & regfile__T_91_mask) begin
      regfile[regfile__T_91_addr] <= regfile__T_91_data; // @[FPU.scala 729:20:freechips.rocketchip.system.DefaultRV32Config.fir@144422.4]
    end
    if(regfile__T_214_en & regfile__T_214_mask) begin
      regfile[regfile__T_214_addr] <= regfile__T_214_data; // @[FPU.scala 729:20:freechips.rocketchip.system.DefaultRV32Config.fir@144422.4]
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
          ex_ra_0 <= _T_104;
        end else begin
          if (fp_decoder_io_sigs_ren1) begin
            if (_T_101) begin
              ex_ra_0 <= _T_102;
            end
          end
        end
      end else begin
        if (fp_decoder_io_sigs_ren1) begin
          if (_T_101) begin
            ex_ra_0 <= _T_102;
          end
        end
      end
    end
    if (io_valid) begin
      if (fp_decoder_io_sigs_ren2) begin
        if (_T_108) begin
          ex_ra_1 <= _T_104;
        end else begin
          if (fp_decoder_io_sigs_ren1) begin
            if (fp_decoder_io_sigs_swap12) begin
              ex_ra_1 <= _T_102;
            end
          end
        end
      end else begin
        if (fp_decoder_io_sigs_ren1) begin
          if (fp_decoder_io_sigs_swap12) begin
            ex_ra_1 <= _T_102;
          end
        end
      end
    end
    if (io_valid) begin
      if (fp_decoder_io_sigs_ren3) begin
        ex_ra_2 <= _T_110;
      end else begin
        if (fp_decoder_io_sigs_ren2) begin
          if (fp_decoder_io_sigs_swap23) begin
            ex_ra_2 <= _T_104;
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
    if (_T_273) begin
      divSqrt_waddr <= _T_184;
    end
    if (reset) begin
      wen <= 2'h0;
    end else begin
      if (mem_wen) begin
        if (_T_7) begin
          wen <= _T_174;
        end else begin
          wen <= {{1'd0}, _T_171};
        end
      end else begin
        wen <= {{1'd0}, _T_171};
      end
    end
    if (mem_wen) begin
      if (_T_177) begin
        wbInfo_0_rd <= _T_184;
      end else begin
        if (_T_170) begin
          wbInfo_0_rd <= wbInfo_1_rd;
        end
      end
    end else begin
      if (_T_170) begin
        wbInfo_0_rd <= wbInfo_1_rd;
      end
    end
    if (mem_wen) begin
      if (_T_177) begin
        wbInfo_0_pipeid <= _T_183;
      end else begin
        if (_T_170) begin
          wbInfo_0_pipeid <= wbInfo_1_pipeid;
        end
      end
    end else begin
      if (_T_170) begin
        wbInfo_0_pipeid <= wbInfo_1_pipeid;
      end
    end
    if (mem_wen) begin
      if (_T_187) begin
        wbInfo_1_rd <= _T_184;
      end
    end
    if (mem_wen) begin
      if (_T_187) begin
        wbInfo_1_pipeid <= _T_183;
      end
    end
    if (ex_reg_valid) begin
      write_port_busy <= _T_168;
    end
    if (_T_273) begin
      divSqrt_killed <= killm;
    end
    if (mem_ctrl_toint) begin
      wb_toint_exc <= fpiu_io_out_bits_exc;
    end
    _T_244 <= mem_ctrl_div | mem_ctrl_sqrt;
  end
endmodule

