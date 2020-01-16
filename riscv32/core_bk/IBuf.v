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
endmodule

