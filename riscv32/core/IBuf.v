module IBuf(
  input         clock,
  input         reset,
  output        io_imem_ready,
  input         io_imem_valid,
  input         io_imem_bits_btb_taken,
  input         io_imem_bits_btb_bridx,
  input  [4:0]  io_imem_bits_btb_entry,
  input  [7:0]  io_imem_bits_btb_bht_history,
  input  [31:0] io_imem_bits_pc,
  input  [31:0] io_imem_bits_data,
  input         io_imem_bits_xcpt_pf_inst,
  input         io_imem_bits_xcpt_ae_inst,
  input         io_imem_bits_replay,
  input         io_kill,
  output [31:0] io_pc,
  output [4:0]  io_btb_resp_entry,
  output [7:0]  io_btb_resp_bht_history,
  input         io_inst_0_ready,
  output        io_inst_0_valid,
  output        io_inst_0_bits_xcpt0_pf_inst,
  output        io_inst_0_bits_xcpt0_ae_inst,
  output        io_inst_0_bits_xcpt1_pf_inst,
  output        io_inst_0_bits_xcpt1_ae_inst,
  output        io_inst_0_bits_replay,
  output        io_inst_0_bits_rvc,
  output [31:0] io_inst_0_bits_inst_bits,
  output [4:0]  io_inst_0_bits_inst_rd,
  output [4:0]  io_inst_0_bits_inst_rs1,
  output [4:0]  io_inst_0_bits_inst_rs2,
  output [4:0]  io_inst_0_bits_inst_rs3,
  output [31:0] io_inst_0_bits_raw
);
//*****************************************************************************
// Wire_Reg_Declarations
//*****************************************************************************
  wire [31:0] RVCExpander_io_in;
  wire [31:0] RVCExpander_io_out_bits;
  wire [4:0] RVCExpander_io_out_rd;
  wire [4:0] RVCExpander_io_out_rs1;
  wire [4:0] RVCExpander_io_out_rs2;
  wire [4:0] RVCExpander_io_out_rs3;
  wire  RVCExpander_io_rvc;
  reg  nBufValid;
  reg [31:0] buf__pc;
  reg [31:0] buf__data;
  reg  buf__xcpt_pf_inst;
  reg  buf__xcpt_ae_inst;
  reg  buf__replay;
  reg [4:0] ibufBTBResp_entry;
  reg [7:0] ibufBTBResp_bht_history;
  wire  pcWordBits;
  wire [1:0] nIC;
  wire [1:0] nValid;
  wire [1:0] valid;
  wire [1:0] bufMask;
  wire [1:0] buf_replay;
  wire [1:0] nReady;
  wire [1:0] nICReady;
  wire [1:0] icShiftAmt;
  wire [31:0] icData;
  wire [31:0] icMask;
  wire  xcpt_1_pf_inst;
  wire  xcpt_1_ae_inst;
  wire [1:0] ic_replay;

//*****************************************************************************
// Submodule_Initiations
//*****************************************************************************
  RVCExpander RVCExpander (
    .io_in(RVCExpander_io_in),
    .io_out_bits(RVCExpander_io_out_bits),
    .io_out_rd(RVCExpander_io_out_rd),
    .io_out_rs1(RVCExpander_io_out_rs1),
    .io_out_rs2(RVCExpander_io_out_rs2),
    .io_out_rs3(RVCExpander_io_out_rs3),
    .io_rvc(RVCExpander_io_rvc)
  );

//*****************************************************************************
// Wire_Reg_Assignments
//*****************************************************************************
`define WIRE_REG_ASSINGMENTS
`ifdef WIRE_REG_ASSINGMENTS
assign pcWordBits = io_imem_bits_pc[1];

wire [1:0] nIC_1 = io_imem_bits_btb_bridx + 1'h1;
wire [1:0] nIC_0 = io_imem_bits_btb_taken ? nIC_1 : 2'h2;
assign nIC = nIC_0 - {{1'd0}, pcWordBits};

wire [1:0] nReady_0 = RVCExpander_io_rvc ? 2'h1 : 2'h2;
wire [1:0] _T_98 = RVCExpander_io_rvc | valid[1] | buf_replay[0];
assign nReady = _T_98 ? nReady_0 : 2'h0;

wire [1:0] _GEN_57 = {{1'd0}, nBufValid};
assign nICReady = nReady - _GEN_57;

wire [1:0] nValid_0 = io_imem_valid ? nIC : 2'h0;
assign nValid = nValid_0 + _GEN_57;

wire [1:0] nBufValid_2 = (nReady >= _GEN_57) ? 2'h0 : (_GEN_57 - nReady);
wire _T_25 = io_imem_valid & (nReady >= {{1'd0}, nBufValid}) & (nICReady < nIC) & (2'h1 >= ( nIC - nICReady));
wire [1:0] nBufValid_1 = _T_25 ? (nIC - nICReady) : nBufValid_2;
wire [1:0] nBufValid_0 = io_kill ? 2'h0 
			: io_inst_0_ready ? nBufValid_1 
			: _GEN_57
			;
wire [1:0] _GEN_56 = {{1'd0}, pcWordBits};
wire [63:0] buf__data_0 = {io_imem_bits_data[31:16], io_imem_bits_data[31:16], io_imem_bits_data} >> {_GEN_56 + nICReady, 4'h0};
always @(posedge clock) begin
	if (reset) begin
		nBufValid <= 1'h0;
		buf__pc <= 32'h00;
		buf__data <= 32'h00;
		buf__xcpt_pf_inst <= 1'h0;
		buf__xcpt_ae_inst <= 1'h0;
		buf__replay <= 1'h0;
		ibufBTBResp_entry <= 5'h00;
		ibufBTBResp_bht_history <= 8'h00;
	end
	else begin
		nBufValid <= nBufValid_0[0];
		if (io_inst_0_ready & _T_25) begin
			buf__pc <= (io_imem_bits_pc & 32'hfffffffc) | ((io_imem_bits_pc + {29'd0, nICReady, 1'h0}) & 32'h3);
			buf__data <= {{16'd0}, buf__data_0[15:0]};
			buf__xcpt_pf_inst <= io_imem_bits_xcpt_pf_inst;
			buf__xcpt_ae_inst <= io_imem_bits_xcpt_ae_inst;
			buf__replay <= io_imem_bits_replay;
			ibufBTBResp_entry <= io_imem_bits_btb_entry;
			ibufBTBResp_bht_history <= io_imem_bits_btb_bht_history;
		end
	end
end

assign icShiftAmt = (2'h2 + _GEN_57) - _GEN_56;

wire [127:0] icData_1 = {io_imem_bits_data[31:16], io_imem_bits_data[31:16], io_imem_bits_data[31:16], io_imem_bits_data[31:16], io_imem_bits_data, io_imem_bits_data[15:0], io_imem_bits_data[15:0]};
wire [190:0] icData_0 = {{63'd0}, icData_1} << {icShiftAmt, 4'h0};
assign icData = icData_0[95:64];

wire [62:0] icMask_0 = 63'hffffffff << {nBufValid, 4'h0};
assign icMask = icMask_0[31:0];

assign xcpt_1_pf_inst = bufMask[1] ? buf__xcpt_pf_inst : io_imem_bits_xcpt_pf_inst;
assign xcpt_1_ae_inst = bufMask[1] ? buf__xcpt_ae_inst : io_imem_bits_xcpt_ae_inst;


wire [3:0] valid_0 = (4'h1 << nValid) - 4'h1;
assign valid = valid_0[1:0];

assign bufMask = (2'h1 << nBufValid) - 2'h1;

assign buf_replay = buf__replay ? bufMask : 2'h0;

wire [1:0] ic_replay_0 = io_imem_bits_replay ? (valid & (~ bufMask)) : 2'h0;
assign ic_replay = buf_replay | ic_replay_0;

wire _T_79 = (!io_imem_valid | !io_imem_bits_btb_taken | (io_imem_bits_btb_bridx >= pcWordBits) | reset) == 1'h0;
always @(posedge clock) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_79) begin
          $fwrite(32'h80000002,"Assertion failed\n    at IBuf.scala:79 assert(!io.imem.valid || !io.imem.bits.btb.taken || io.imem.bits.btb.bridx >= pcWordBits)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_79) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
end
`endif // WIRE_REG_ASSINGMENTS
//*****************************************************************************
// Output_Assignments
//*****************************************************************************
`define OUTPUT_ASSIGNMENTS
`ifdef OUTPUT_ASSIGNMENTS
assign io_imem_ready = io_inst_0_ready & (nReady >= _GEN_57) & ((nICReady >= nIC) | (2'h1 >= (nIC - nICReady)));
assign io_pc = (nBufValid > 1'h0) ? buf__pc : io_imem_bits_pc;
assign io_btb_resp_entry = ((bufMask[0] & RVCExpander_io_rvc) | bufMask[1]) ? ibufBTBResp_entry : io_imem_bits_btb_entry;
assign io_btb_resp_bht_history = ((bufMask[0] & RVCExpander_io_rvc) | bufMask[1]) ? ibufBTBResp_bht_history : io_imem_bits_btb_bht_history;
assign io_inst_0_valid = valid[0] & _T_98;
assign io_inst_0_bits_xcpt0_pf_inst = bufMask[0] ? buf__xcpt_pf_inst : io_imem_bits_xcpt_pf_inst;
assign io_inst_0_bits_xcpt0_ae_inst = bufMask ? buf__xcpt_ae_inst : io_imem_bits_xcpt_ae_inst;

wire [1:0] _T_109 = RVCExpander_io_rvc ? 2'h0 : {xcpt_1_pf_inst, xcpt_1_ae_inst};
assign io_inst_0_bits_xcpt1_pf_inst = _T_109[1];
assign io_inst_0_bits_xcpt1_ae_inst = _T_109[0];

assign io_inst_0_bits_replay = ic_replay[0] | (!RVCExpander_io_rvc & ic_replay[1]);

assign io_inst_0_bits_rvc = RVCExpander_io_rvc;
assign io_inst_0_bits_inst_bits = RVCExpander_io_out_bits;
assign io_inst_0_bits_inst_rd = RVCExpander_io_out_rd;
assign io_inst_0_bits_inst_rs1 = RVCExpander_io_out_rs1;
assign io_inst_0_bits_inst_rs2 = RVCExpander_io_out_rs2;
assign io_inst_0_bits_inst_rs3 = RVCExpander_io_out_rs3;
assign io_inst_0_bits_raw = (icData & icMask) | (buf__data & (~ icMask));
assign RVCExpander_io_in = (icData & icMask) | (buf__data & (~ icMask));

`endif // OUTPUT_ASSIGNMENTS
/*
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;

  wire [1:0] _T; // @[IBuf.scala 41:64:freechips.rocketchip.system.DefaultRV32Config.fir@147366.4]
  wire [1:0] _T_1; // @[IBuf.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@147367.4]
  wire [1:0] _T_4; // @[IBuf.scala 43:19:freechips.rocketchip.system.DefaultRV32Config.fir@147372.4]
  wire [3:0] _T_62; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@147449.4]
  wire [3:0] _T_64; // @[IBuf.scala 74:33:freechips.rocketchip.system.DefaultRV32Config.fir@147451.4]
  wire  _GEN_58; // @[IBuf.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@147499.4]
  wire [1:0] _T_93; // @[IBuf.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@147499.4]
  wire  _T_94; // @[IBuf.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@147500.4]
  wire  _T_95; // @[IBuf.scala 93:34:freechips.rocketchip.system.DefaultRV32Config.fir@147501.4]
  wire [1:0] _T_65; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@147453.4]
  wire  _T_97; // @[IBuf.scala 93:61:freechips.rocketchip.system.DefaultRV32Config.fir@147503.4]
  wire [1:0] _T_128; // @[IBuf.scala 102:71:freechips.rocketchip.system.DefaultRV32Config.fir@147548.6]
  wire  _T_6; // @[IBuf.scala 44:47:freechips.rocketchip.system.DefaultRV32Config.fir@147375.4]
  wire  _T_7; // @[IBuf.scala 44:37:freechips.rocketchip.system.DefaultRV32Config.fir@147376.4]
  wire  _T_8; // @[IBuf.scala 44:73:freechips.rocketchip.system.DefaultRV32Config.fir@147377.4]
  wire [1:0] _T_10; // @[IBuf.scala 44:92:freechips.rocketchip.system.DefaultRV32Config.fir@147379.4]
  wire  _T_11; // @[IBuf.scala 44:85:freechips.rocketchip.system.DefaultRV32Config.fir@147380.4]
  wire  _T_12; // @[IBuf.scala 44:80:freechips.rocketchip.system.DefaultRV32Config.fir@147381.4]
  wire [1:0] _T_16; // @[IBuf.scala 48:64:freechips.rocketchip.system.DefaultRV32Config.fir@147387.6]
  wire [1:0] _T_17; // @[IBuf.scala 48:23:freechips.rocketchip.system.DefaultRV32Config.fir@147388.6]
  wire  _T_19; // @[IBuf.scala 54:27:freechips.rocketchip.system.DefaultRV32Config.fir@147391.6]
  wire  _T_20; // @[IBuf.scala 54:62:freechips.rocketchip.system.DefaultRV32Config.fir@147392.6]
  wire  _T_21; // @[IBuf.scala 54:50:freechips.rocketchip.system.DefaultRV32Config.fir@147393.6]
  wire [1:0] _T_27; // @[IBuf.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@147400.8]
  wire [15:0] _T_30; // @[IBuf.scala 127:58:freechips.rocketchip.system.DefaultRV32Config.fir@147405.8]
  wire [63:0] _T_32; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@147407.8]
  wire [5:0] _T_33; // @[IBuf.scala 128:19:freechips.rocketchip.system.DefaultRV32Config.fir@147408.8]
  wire [63:0] _T_34; // @[IBuf.scala 128:10:freechips.rocketchip.system.DefaultRV32Config.fir@147409.8]
  wire [15:0] _T_35; // @[IBuf.scala 58:61:freechips.rocketchip.system.DefaultRV32Config.fir@147410.8]
  wire [31:0] _T_37; // @[IBuf.scala 59:35:freechips.rocketchip.system.DefaultRV32Config.fir@147413.8]
  wire [2:0] _T_38; // @[IBuf.scala 59:80:freechips.rocketchip.system.DefaultRV32Config.fir@147414.8]
  wire [31:0] _GEN_65; // @[IBuf.scala 59:68:freechips.rocketchip.system.DefaultRV32Config.fir@147415.8]
  wire [31:0] _T_40; // @[IBuf.scala 59:68:freechips.rocketchip.system.DefaultRV32Config.fir@147416.8]
  wire [31:0] _T_41; // @[IBuf.scala 59:109:freechips.rocketchip.system.DefaultRV32Config.fir@147417.8]
  wire [31:0] _T_42; // @[IBuf.scala 59:49:freechips.rocketchip.system.DefaultRV32Config.fir@147418.8]
  wire [1:0] _GEN_0; // @[IBuf.scala 54:92:freechips.rocketchip.system.DefaultRV32Config.fir@147398.6]
  wire [1:0] _GEN_23; // @[IBuf.scala 47:29:freechips.rocketchip.system.DefaultRV32Config.fir@147384.4]
  wire [1:0] _GEN_46; // @[IBuf.scala 63:20:freechips.rocketchip.system.DefaultRV32Config.fir@147423.4]
  wire [1:0] _T_44; // @[IBuf.scala 68:32:freechips.rocketchip.system.DefaultRV32Config.fir@147427.4]
  wire [15:0] _T_47; // @[IBuf.scala 69:87:freechips.rocketchip.system.DefaultRV32Config.fir@147431.4]
  wire [63:0] _T_49; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@147433.4]
  wire [15:0] _T_50; // @[IBuf.scala 120:58:freechips.rocketchip.system.DefaultRV32Config.fir@147434.4]
  wire [127:0] _T_53; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@147437.4]
  wire [5:0] _T_54; // @[IBuf.scala 121:19:freechips.rocketchip.system.DefaultRV32Config.fir@147438.4]
  wire [190:0] _GEN_68; // @[IBuf.scala 121:10:freechips.rocketchip.system.DefaultRV32Config.fir@147439.4]
  wire [190:0] _T_55; // @[IBuf.scala 121:10:freechips.rocketchip.system.DefaultRV32Config.fir@147439.4]
  wire [4:0] _T_57; // @[IBuf.scala 71:65:freechips.rocketchip.system.DefaultRV32Config.fir@147442.4]
  wire [62:0] _T_58; // @[IBuf.scala 71:51:freechips.rocketchip.system.DefaultRV32Config.fir@147443.4]
  wire [31:0] _T_59; // @[IBuf.scala 72:21:freechips.rocketchip.system.DefaultRV32Config.fir@147445.4]
  wire [31:0] _T_60; // @[IBuf.scala 72:43:freechips.rocketchip.system.DefaultRV32Config.fir@147446.4]
  wire [31:0] _T_61; // @[IBuf.scala 72:41:freechips.rocketchip.system.DefaultRV32Config.fir@147447.4]
  wire  _T_67; // @[IBuf.scala 76:61:freechips.rocketchip.system.DefaultRV32Config.fir@147456.4]
  wire  _T_68; // @[IBuf.scala 76:61:freechips.rocketchip.system.DefaultRV32Config.fir@147458.4]
  wire [1:0] _T_69; // @[IBuf.scala 78:65:freechips.rocketchip.system.DefaultRV32Config.fir@147461.4]
  wire [1:0] _T_70; // @[IBuf.scala 78:63:freechips.rocketchip.system.DefaultRV32Config.fir@147462.4]
  wire [1:0] _T_71; // @[IBuf.scala 78:35:freechips.rocketchip.system.DefaultRV32Config.fir@147463.4]
  wire  _T_72; // @[IBuf.scala 79:10:freechips.rocketchip.system.DefaultRV32Config.fir@147465.4]
  wire  _T_73; // @[IBuf.scala 79:28:freechips.rocketchip.system.DefaultRV32Config.fir@147466.4]
  wire  _T_74; // @[IBuf.scala 79:25:freechips.rocketchip.system.DefaultRV32Config.fir@147467.4]
  wire  _T_75; // @[IBuf.scala 79:78:freechips.rocketchip.system.DefaultRV32Config.fir@147468.4]
  wire  _T_76; // @[IBuf.scala 79:52:freechips.rocketchip.system.DefaultRV32Config.fir@147469.4]
  wire  _T_78; // @[IBuf.scala 79:9:freechips.rocketchip.system.DefaultRV32Config.fir@147471.4]
  wire  _T_80; // @[IBuf.scala 82:26:freechips.rocketchip.system.DefaultRV32Config.fir@147478.4]
  wire  _T_83; // @[IBuf.scala 92:29:freechips.rocketchip.system.DefaultRV32Config.fir@147489.4]
  wire  _T_84; // @[IBuf.scala 92:37:freechips.rocketchip.system.DefaultRV32Config.fir@147490.4]
  wire  _GEN_69; // @[IBuf.scala 92:61:freechips.rocketchip.system.DefaultRV32Config.fir@147493.4]
  wire [1:0] _T_87; // @[IBuf.scala 92:61:freechips.rocketchip.system.DefaultRV32Config.fir@147493.4]
  wire  _T_88; // @[IBuf.scala 92:61:freechips.rocketchip.system.DefaultRV32Config.fir@147494.4]
  wire  _T_89; // @[IBuf.scala 92:49:freechips.rocketchip.system.DefaultRV32Config.fir@147495.4]
  wire  _T_100; // @[IBuf.scala 94:32:freechips.rocketchip.system.DefaultRV32Config.fir@147506.4]
  wire [1:0] _T_108; // @[IBuf.scala 96:63:freechips.rocketchip.system.DefaultRV32Config.fir@147516.4]
  wire  _T_116; // @[IBuf.scala 100:25:freechips.rocketchip.system.DefaultRV32Config.fir@147532.4]
  wire  _GEN_70; // @[IBuf.scala 100:50:freechips.rocketchip.system.DefaultRV32Config.fir@147535.4]
  wire [1:0] _T_119; // @[IBuf.scala 100:50:freechips.rocketchip.system.DefaultRV32Config.fir@147535.4]
  wire  _T_120; // @[IBuf.scala 100:50:freechips.rocketchip.system.DefaultRV32Config.fir@147536.4]
  wire  _T_121; // @[IBuf.scala 100:40:freechips.rocketchip.system.DefaultRV32Config.fir@147537.4]

//*****************************************************************************
// Wire_Reg_Assignments
//*****************************************************************************
`ifndef WIRE_REG_ASSINGMENTS
  assign pcWordBits = io_imem_bits_pc[1]; // @[package.scala 120:13:freechips.rocketchip.system.DefaultRV32Config.fir@147362.4]
  assign nIC = _T_1 - _GEN_56; // @[IBuf.scala 41:88:freechips.rocketchip.system.DefaultRV32Config.fir@147369.4]
  wire  _T_98; // @[IBuf.scala 93:48:freechips.rocketchip.system.DefaultRV32Config.fir@147504.4]
  assign _T_98 = _T_95 | _T_97; // @[IBuf.scala 93:48:freechips.rocketchip.system.DefaultRV32Config.fir@147504.4]
  assign nReady = _T_98 ? _T_128 : 2'h0; // @[IBuf.scala 102:56:freechips.rocketchip.system.DefaultRV32Config.fir@147543.4]
  wire [1:0] _GEN_57; // @[IBuf.scala 43:49:freechips.rocketchip.system.DefaultRV32Config.fir@147373.4]
  assign _GEN_57 = {{1'd0}, nBufValid}; // @[IBuf.scala 43:49:freechips.rocketchip.system.DefaultRV32Config.fir@147373.4]
  assign nICReady = nReady - _GEN_57; // @[IBuf.scala 42:25:freechips.rocketchip.system.DefaultRV32Config.fir@147371.4]
  assign nValid = _T_4 + _GEN_57; // @[IBuf.scala 43:49:freechips.rocketchip.system.DefaultRV32Config.fir@147374.4]
  wire  _T_25; // @[IBuf.scala 54:68:freechips.rocketchip.system.DefaultRV32Config.fir@147397.6]
  assign _T_25 = _T_21 & _T_11; // @[IBuf.scala 54:68:freechips.rocketchip.system.DefaultRV32Config.fir@147397.6]
  wire [1:0] _GEN_56; // @[IBuf.scala 41:88:freechips.rocketchip.system.DefaultRV32Config.fir@147368.4]
  assign _GEN_56 = {{1'd0}, pcWordBits}; // @[IBuf.scala 41:88:freechips.rocketchip.system.DefaultRV32Config.fir@147368.4]
  assign icShiftAmt = _T_44 - _GEN_56; // @[IBuf.scala 68:44:freechips.rocketchip.system.DefaultRV32Config.fir@147429.4]
  assign icData = _T_55[95:64]; // @[package.scala 120:13:freechips.rocketchip.system.DefaultRV32Config.fir@147440.4]
  assign icMask = _T_58[31:0]; // @[IBuf.scala 71:92:freechips.rocketchip.system.DefaultRV32Config.fir@147444.4]
  assign xcpt_1_pf_inst = _T_68 ? buf__xcpt_pf_inst : io_imem_bits_xcpt_pf_inst; // @[IBuf.scala 76:53:freechips.rocketchip.system.DefaultRV32Config.fir@147459.4]
  assign xcpt_1_ae_inst = _T_68 ? buf__xcpt_ae_inst : io_imem_bits_xcpt_ae_inst; // @[IBuf.scala 76:53:freechips.rocketchip.system.DefaultRV32Config.fir@147459.4]
  assign valid = _T_64[1:0]; // @[IBuf.scala 74:37:freechips.rocketchip.system.DefaultRV32Config.fir@147452.4]
  assign bufMask = _T_65 - 2'h1; // @[IBuf.scala 75:37:freechips.rocketchip.system.DefaultRV32Config.fir@147455.4]
  assign buf_replay = buf__replay ? bufMask : 2'h0; // @[IBuf.scala 77:23:freechips.rocketchip.system.DefaultRV32Config.fir@147460.4]
  assign ic_replay = buf_replay | _T_71; // @[IBuf.scala 78:30:freechips.rocketchip.system.DefaultRV32Config.fir@147464.4]
  wire  _T_79; // @[IBuf.scala 79:9:freechips.rocketchip.system.DefaultRV32Config.fir@147472.4]
  assign _T_79 = _T_78 == 1'h0; // @[IBuf.scala 79:9:freechips.rocketchip.system.DefaultRV32Config.fir@147472.4]

`endif //WIRE_REG_ASSINGMENTS

  assign _T = io_imem_bits_btb_bridx + 1'h1; // @[IBuf.scala 41:64:freechips.rocketchip.system.DefaultRV32Config.fir@147366.4]
  assign _T_1 = io_imem_bits_btb_taken ? _T : 2'h2; // @[IBuf.scala 41:16:freechips.rocketchip.system.DefaultRV32Config.fir@147367.4]
  assign _T_4 = io_imem_valid ? nIC : 2'h0; // @[IBuf.scala 43:19:freechips.rocketchip.system.DefaultRV32Config.fir@147372.4]
  assign _T_62 = 4'h1 << nValid; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@147449.4]
  assign _T_64 = _T_62 - 4'h1; // @[IBuf.scala 74:33:freechips.rocketchip.system.DefaultRV32Config.fir@147451.4]
  assign _GEN_58 = valid[1:1]; // @[IBuf.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@147499.4]
  assign _T_93 = {{1'd0}, _GEN_58}; // @[IBuf.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@147499.4]
  assign _T_94 = _T_93[0]; // @[IBuf.scala 93:42:freechips.rocketchip.system.DefaultRV32Config.fir@147500.4]
  assign _T_95 = RVCExpander_io_rvc | _T_94; // @[IBuf.scala 93:34:freechips.rocketchip.system.DefaultRV32Config.fir@147501.4]
  assign _T_65 = 2'h1 << nBufValid; // @[OneHot.scala 58:35:freechips.rocketchip.system.DefaultRV32Config.fir@147453.4]
  assign _T_97 = buf_replay[0]; // @[IBuf.scala 93:61:freechips.rocketchip.system.DefaultRV32Config.fir@147503.4]
  assign _T_128 = RVCExpander_io_rvc ? 2'h1 : 2'h2; // @[IBuf.scala 102:71:freechips.rocketchip.system.DefaultRV32Config.fir@147548.6]
  assign _T_6 = nReady >= _GEN_57; // @[IBuf.scala 44:47:freechips.rocketchip.system.DefaultRV32Config.fir@147375.4]
  assign _T_7 = io_inst_0_ready & _T_6; // @[IBuf.scala 44:37:freechips.rocketchip.system.DefaultRV32Config.fir@147376.4]
  assign _T_8 = nICReady >= nIC; // @[IBuf.scala 44:73:freechips.rocketchip.system.DefaultRV32Config.fir@147377.4]
  assign _T_10 = nIC - nICReady; // @[IBuf.scala 44:92:freechips.rocketchip.system.DefaultRV32Config.fir@147379.4]
  assign _T_11 = 2'h1 >= _T_10; // @[IBuf.scala 44:85:freechips.rocketchip.system.DefaultRV32Config.fir@147380.4]
  assign _T_12 = _T_8 | _T_11; // @[IBuf.scala 44:80:freechips.rocketchip.system.DefaultRV32Config.fir@147381.4]
  assign _T_16 = _GEN_57 - nReady; // @[IBuf.scala 48:64:freechips.rocketchip.system.DefaultRV32Config.fir@147387.6]
  assign _T_17 = _T_6 ? 2'h0 : _T_16; // @[IBuf.scala 48:23:freechips.rocketchip.system.DefaultRV32Config.fir@147388.6]
  assign _T_19 = io_imem_valid & _T_6; // @[IBuf.scala 54:27:freechips.rocketchip.system.DefaultRV32Config.fir@147391.6]
  assign _T_20 = nICReady < nIC; // @[IBuf.scala 54:62:freechips.rocketchip.system.DefaultRV32Config.fir@147392.6]
  assign _T_21 = _T_19 & _T_20; // @[IBuf.scala 54:50:freechips.rocketchip.system.DefaultRV32Config.fir@147393.6]
  assign _T_27 = _GEN_56 + nICReady; // @[IBuf.scala 55:32:freechips.rocketchip.system.DefaultRV32Config.fir@147400.8]
  assign _T_30 = io_imem_bits_data[31:16]; // @[IBuf.scala 127:58:freechips.rocketchip.system.DefaultRV32Config.fir@147405.8]
  assign _T_32 = {_T_30,_T_30,io_imem_bits_data}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@147407.8]
  assign _T_33 = {_T_27, 4'h0}; // @[IBuf.scala 128:19:freechips.rocketchip.system.DefaultRV32Config.fir@147408.8]
  assign _T_34 = _T_32 >> _T_33; // @[IBuf.scala 128:10:freechips.rocketchip.system.DefaultRV32Config.fir@147409.8]
  assign _T_35 = _T_34[15:0]; // @[IBuf.scala 58:61:freechips.rocketchip.system.DefaultRV32Config.fir@147410.8]
  assign _T_37 = io_imem_bits_pc & 32'hfffffffc; // @[IBuf.scala 59:35:freechips.rocketchip.system.DefaultRV32Config.fir@147413.8]
  assign _T_38 = {nICReady, 1'h0}; // @[IBuf.scala 59:80:freechips.rocketchip.system.DefaultRV32Config.fir@147414.8]
  assign _GEN_65 = {{29'd0}, _T_38}; // @[IBuf.scala 59:68:freechips.rocketchip.system.DefaultRV32Config.fir@147415.8]
  assign _T_40 = io_imem_bits_pc + _GEN_65; // @[IBuf.scala 59:68:freechips.rocketchip.system.DefaultRV32Config.fir@147416.8]
  assign _T_41 = _T_40 & 32'h3; // @[IBuf.scala 59:109:freechips.rocketchip.system.DefaultRV32Config.fir@147417.8]
  assign _T_42 = _T_37 | _T_41; // @[IBuf.scala 59:49:freechips.rocketchip.system.DefaultRV32Config.fir@147418.8]
  assign _GEN_0 = _T_25 ? _T_10 : _T_17; // @[IBuf.scala 54:92:freechips.rocketchip.system.DefaultRV32Config.fir@147398.6]
  assign _GEN_23 = io_inst_0_ready ? _GEN_0 : {{1'd0}, nBufValid}; // @[IBuf.scala 47:29:freechips.rocketchip.system.DefaultRV32Config.fir@147384.4]
  assign _GEN_46 = io_kill ? 2'h0 : _GEN_23; // @[IBuf.scala 63:20:freechips.rocketchip.system.DefaultRV32Config.fir@147423.4]
  assign _T_44 = 2'h2 + _GEN_57; // @[IBuf.scala 68:32:freechips.rocketchip.system.DefaultRV32Config.fir@147427.4]
  assign _T_47 = io_imem_bits_data[15:0]; // @[IBuf.scala 69:87:freechips.rocketchip.system.DefaultRV32Config.fir@147431.4]
  assign _T_49 = {io_imem_bits_data,_T_47,_T_47}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@147433.4]
  assign _T_50 = _T_49[63:48]; // @[IBuf.scala 120:58:freechips.rocketchip.system.DefaultRV32Config.fir@147434.4]
  assign _T_53 = {_T_50,_T_50,_T_50,_T_50,io_imem_bits_data,_T_47,_T_47}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@147437.4]
  assign _T_54 = {icShiftAmt, 4'h0}; // @[IBuf.scala 121:19:freechips.rocketchip.system.DefaultRV32Config.fir@147438.4]
  assign _GEN_68 = {{63'd0}, _T_53}; // @[IBuf.scala 121:10:freechips.rocketchip.system.DefaultRV32Config.fir@147439.4]
  assign _T_55 = _GEN_68 << _T_54; // @[IBuf.scala 121:10:freechips.rocketchip.system.DefaultRV32Config.fir@147439.4]
  assign _T_57 = {nBufValid, 4'h0}; // @[IBuf.scala 71:65:freechips.rocketchip.system.DefaultRV32Config.fir@147442.4]
  assign _T_58 = 63'hffffffff << _T_57; // @[IBuf.scala 71:51:freechips.rocketchip.system.DefaultRV32Config.fir@147443.4]
  assign _T_59 = icData & icMask; // @[IBuf.scala 72:21:freechips.rocketchip.system.DefaultRV32Config.fir@147445.4]
  assign _T_60 = ~ icMask; // @[IBuf.scala 72:43:freechips.rocketchip.system.DefaultRV32Config.fir@147446.4]
  assign _T_61 = buf__data & _T_60; // @[IBuf.scala 72:41:freechips.rocketchip.system.DefaultRV32Config.fir@147447.4]
  assign _T_67 = bufMask[0]; // @[IBuf.scala 76:61:freechips.rocketchip.system.DefaultRV32Config.fir@147456.4]
  assign _T_68 = bufMask[1]; // @[IBuf.scala 76:61:freechips.rocketchip.system.DefaultRV32Config.fir@147458.4]
  assign _T_69 = ~ bufMask; // @[IBuf.scala 78:65:freechips.rocketchip.system.DefaultRV32Config.fir@147461.4]
  assign _T_70 = valid & _T_69; // @[IBuf.scala 78:63:freechips.rocketchip.system.DefaultRV32Config.fir@147462.4]
  assign _T_71 = io_imem_bits_replay ? _T_70 : 2'h0; // @[IBuf.scala 78:35:freechips.rocketchip.system.DefaultRV32Config.fir@147463.4]
  assign _T_72 = io_imem_valid == 1'h0; // @[IBuf.scala 79:10:freechips.rocketchip.system.DefaultRV32Config.fir@147465.4]
  assign _T_73 = io_imem_bits_btb_taken == 1'h0; // @[IBuf.scala 79:28:freechips.rocketchip.system.DefaultRV32Config.fir@147466.4]
  assign _T_74 = _T_72 | _T_73; // @[IBuf.scala 79:25:freechips.rocketchip.system.DefaultRV32Config.fir@147467.4]
  assign _T_75 = io_imem_bits_btb_bridx >= pcWordBits; // @[IBuf.scala 79:78:freechips.rocketchip.system.DefaultRV32Config.fir@147468.4]
  assign _T_76 = _T_74 | _T_75; // @[IBuf.scala 79:52:freechips.rocketchip.system.DefaultRV32Config.fir@147469.4]
  assign _T_78 = _T_76 | reset; // @[IBuf.scala 79:9:freechips.rocketchip.system.DefaultRV32Config.fir@147471.4]
  assign _T_80 = nBufValid > 1'h0; // @[IBuf.scala 82:26:freechips.rocketchip.system.DefaultRV32Config.fir@147478.4]
  assign _T_83 = ic_replay[0]; // @[IBuf.scala 92:29:freechips.rocketchip.system.DefaultRV32Config.fir@147489.4]
  assign _T_84 = RVCExpander_io_rvc == 1'h0; // @[IBuf.scala 92:37:freechips.rocketchip.system.DefaultRV32Config.fir@147490.4]
  assign _GEN_69 = ic_replay[1:1]; // @[IBuf.scala 92:61:freechips.rocketchip.system.DefaultRV32Config.fir@147493.4]
  assign _T_87 = {{1'd0}, _GEN_69}; // @[IBuf.scala 92:61:freechips.rocketchip.system.DefaultRV32Config.fir@147493.4]
  assign _T_88 = _T_87[0]; // @[IBuf.scala 92:61:freechips.rocketchip.system.DefaultRV32Config.fir@147494.4]
  assign _T_89 = _T_84 & _T_88; // @[IBuf.scala 92:49:freechips.rocketchip.system.DefaultRV32Config.fir@147495.4]
  assign _T_100 = valid[0]; // @[IBuf.scala 94:32:freechips.rocketchip.system.DefaultRV32Config.fir@147506.4]
  assign _T_108 = {xcpt_1_pf_inst,xcpt_1_ae_inst}; // @[IBuf.scala 96:63:freechips.rocketchip.system.DefaultRV32Config.fir@147516.4]
  assign _T_116 = _T_67 & RVCExpander_io_rvc; // @[IBuf.scala 100:25:freechips.rocketchip.system.DefaultRV32Config.fir@147532.4]
  assign _GEN_70 = bufMask[1:1]; // @[IBuf.scala 100:50:freechips.rocketchip.system.DefaultRV32Config.fir@147535.4]
  assign _T_119 = {{1'd0}, _GEN_70}; // @[IBuf.scala 100:50:freechips.rocketchip.system.DefaultRV32Config.fir@147535.4]
  assign _T_120 = _T_119[0]; // @[IBuf.scala 100:50:freechips.rocketchip.system.DefaultRV32Config.fir@147536.4]
  assign _T_121 = _T_116 | _T_120; // @[IBuf.scala 100:40:freechips.rocketchip.system.DefaultRV32Config.fir@147537.4]

`ifndef OUTPUT_ASSIGNMENTS
  assign io_imem_ready = _T_7 & _T_12; // @[IBuf.scala 44:17:freechips.rocketchip.system.DefaultRV32Config.fir@147383.4]
  assign io_pc = _T_80 ? buf__pc : io_imem_bits_pc; // @[IBuf.scala 82:9:freechips.rocketchip.system.DefaultRV32Config.fir@147480.4]
  assign io_btb_resp_entry = _T_121 ? ibufBTBResp_entry : io_imem_bits_btb_entry; // @[IBuf.scala 81:15:freechips.rocketchip.system.DefaultRV32Config.fir@147477.4 IBuf.scala 100:71:freechips.rocketchip.system.DefaultRV32Config.fir@147539.6]
  assign io_btb_resp_bht_history = _T_121 ? ibufBTBResp_bht_history : io_imem_bits_btb_bht_history; // @[IBuf.scala 81:15:freechips.rocketchip.system.DefaultRV32Config.fir@147477.4 IBuf.scala 100:71:freechips.rocketchip.system.DefaultRV32Config.fir@147539.6]
  assign io_inst_0_valid = _T_100 & _T_98; // @[IBuf.scala 94:24:freechips.rocketchip.system.DefaultRV32Config.fir@147508.4]
  assign io_inst_0_bits_xcpt0_pf_inst = _T_67 ? buf__xcpt_pf_inst : io_imem_bits_xcpt_pf_inst; // @[IBuf.scala 95:29:freechips.rocketchip.system.DefaultRV32Config.fir@147511.4]
  assign io_inst_0_bits_xcpt0_ae_inst = _T_67 ? buf__xcpt_ae_inst : io_imem_bits_xcpt_ae_inst; // @[IBuf.scala 95:29:freechips.rocketchip.system.DefaultRV32Config.fir@147511.4]

  wire [1:0] _T_109; // @[IBuf.scala 96:35:freechips.rocketchip.system.DefaultRV32Config.fir@147517.4]
  assign _T_109 = RVCExpander_io_rvc ? 2'h0 : _T_108; // @[IBuf.scala 96:35:freechips.rocketchip.system.DefaultRV32Config.fir@147517.4]
  assign io_inst_0_bits_xcpt1_pf_inst = _T_109[1]; // @[IBuf.scala 96:29:freechips.rocketchip.system.DefaultRV32Config.fir@147527.4]
  assign io_inst_0_bits_xcpt1_ae_inst = _T_109[0]; // @[IBuf.scala 96:29:freechips.rocketchip.system.DefaultRV32Config.fir@147527.4]
  assign io_inst_0_bits_replay = _T_83 | _T_89; // @[IBuf.scala 97:30:freechips.rocketchip.system.DefaultRV32Config.fir@147528.4]
  assign io_inst_0_bits_rvc = RVCExpander_io_rvc; // @[IBuf.scala 98:27:freechips.rocketchip.system.DefaultRV32Config.fir@147529.4]
  assign io_inst_0_bits_inst_bits = RVCExpander_io_out_bits; // @[IBuf.scala 88:26:freechips.rocketchip.system.DefaultRV32Config.fir@147486.4]
  assign io_inst_0_bits_inst_rd = RVCExpander_io_out_rd; // @[IBuf.scala 88:26:freechips.rocketchip.system.DefaultRV32Config.fir@147486.4]
  assign io_inst_0_bits_inst_rs1 = RVCExpander_io_out_rs1; // @[IBuf.scala 88:26:freechips.rocketchip.system.DefaultRV32Config.fir@147486.4]
  assign io_inst_0_bits_inst_rs2 = RVCExpander_io_out_rs2; // @[IBuf.scala 88:26:freechips.rocketchip.system.DefaultRV32Config.fir@147486.4]
  assign io_inst_0_bits_inst_rs3 = RVCExpander_io_out_rs3; // @[IBuf.scala 88:26:freechips.rocketchip.system.DefaultRV32Config.fir@147486.4]
  assign io_inst_0_bits_raw = _T_59 | _T_61; // @[IBuf.scala 89:25:freechips.rocketchip.system.DefaultRV32Config.fir@147487.4]
  assign RVCExpander_io_in = _T_59 | _T_61; // @[IBuf.scala 87:15:freechips.rocketchip.system.DefaultRV32Config.fir@147485.4]
`endif // OUTPUT_ASSIGNMENTS


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
  nBufValid = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  buf__pc = _RAND_1[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  buf__data = _RAND_2[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  buf__xcpt_pf_inst = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  buf__xcpt_ae_inst = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  buf__replay = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  ibufBTBResp_entry = _RAND_6[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  ibufBTBResp_bht_history = _RAND_7[7:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge clock) begin
`ifndef WIRE_REG_ASSINGMENTS
    if (reset) begin
      nBufValid <= 1'h0;
    end else begin
      nBufValid <= _GEN_46[0];
    end
    if (io_inst_0_ready) begin
      if (_T_25) begin
        buf__pc <= _T_42;
      end
    end
    if (io_inst_0_ready) begin
      if (_T_25) begin
        buf__data <= {{16'd0}, _T_35};
      end
    end
    if (io_inst_0_ready) begin
      if (_T_25) begin
        buf__xcpt_pf_inst <= io_imem_bits_xcpt_pf_inst;
      end
    end
    if (io_inst_0_ready) begin
      if (_T_25) begin
        buf__xcpt_ae_inst <= io_imem_bits_xcpt_ae_inst;
      end
    end
    if (io_inst_0_ready) begin
      if (_T_25) begin
        buf__replay <= io_imem_bits_replay;
      end
    end
    if (io_inst_0_ready) begin
      if (_T_25) begin
        ibufBTBResp_entry <= io_imem_bits_btb_entry;
      end
    end
    if (io_inst_0_ready) begin
      if (_T_25) begin
        ibufBTBResp_bht_history <= io_imem_bits_btb_bht_history;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_T_79) begin
          $fwrite(32'h80000002,"Assertion failed\n    at IBuf.scala:79 assert(!io.imem.valid || !io.imem.bits.btb.taken || io.imem.bits.btb.bridx >= pcWordBits)\n"); // @[IBuf.scala 79:9:freechips.rocketchip.system.DefaultRV32Config.fir@147474.6]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_T_79) begin
          $fatal; // @[IBuf.scala 79:9:freechips.rocketchip.system.DefaultRV32Config.fir@147475.6]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
`endif // WIRE_REG_ASSINGMENTS
  end
*/
endmodule

