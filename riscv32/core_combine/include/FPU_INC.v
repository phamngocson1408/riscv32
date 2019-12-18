`define MY_DEFINE
`ifdef MY_DEFINE
//******************************************************************************
// IO_Declarations
//******************************************************************************
  wire [31:0] fp_decoder_io_inst;
  wire  fp_decoder_io_sigs_wen;
  wire  fp_decoder_io_sigs_ren1;
  wire  fp_decoder_io_sigs_ren2;
  wire  fp_decoder_io_sigs_ren3;
  wire  fp_decoder_io_sigs_swap12;
  wire  fp_decoder_io_sigs_swap23;
  wire  fp_decoder_io_sigs_singleOut;
  wire  fp_decoder_io_sigs_fromint;
  wire  fp_decoder_io_sigs_toint;
  wire  fp_decoder_io_sigs_fastpipe;
  wire  fp_decoder_io_sigs_fma;
  wire  fp_decoder_io_sigs_div;
  wire  fp_decoder_io_sigs_sqrt;
  wire  fp_decoder_io_sigs_wflags;
  reg [32:0] regfile [0:31];
  wire [32:0] regfile_ex_rs_0_data;
  wire [4:0] regfile_ex_rs_0_addr;
  wire [32:0] regfile_ex_rs_1_data;
  wire [4:0] regfile_ex_rs_1_addr;
  wire [32:0] regfile_ex_rs_2_data;
  wire [4:0] regfile_ex_rs_2_addr;
  wire [32:0] regfile__T_91_data;
  wire [4:0] regfile__T_91_addr;
  wire  regfile__T_91_mask;
  wire  regfile__T_91_en;
  wire [32:0] regfile__T_214_data;
  wire [4:0] regfile__T_214_addr;
  wire  regfile__T_214_mask;
  wire  regfile__T_214_en;
  wire  sfma_clock;
  wire  sfma_reset;
  wire  sfma_io_in_valid;
  wire  sfma_io_in_bits_ren3;
  wire  sfma_io_in_bits_swap23;
  wire [2:0] sfma_io_in_bits_rm;
  wire [1:0] sfma_io_in_bits_fmaCmd;
  wire [32:0] sfma_io_in_bits_in1;
  wire [32:0] sfma_io_in_bits_in2;
  wire [32:0] sfma_io_in_bits_in3;
  wire [32:0] sfma_io_out_bits_data;
  wire [4:0] sfma_io_out_bits_exc;
  wire  fpiu_clock;
  wire  fpiu_io_in_valid;
  wire  fpiu_io_in_bits_ren2;
  wire  fpiu_io_in_bits_wflags;
  wire [2:0] fpiu_io_in_bits_rm;
  wire [1:0] fpiu_io_in_bits_typ;
  wire [32:0] fpiu_io_in_bits_in1;
  wire [32:0] fpiu_io_in_bits_in2;
  wire [2:0] fpiu_io_out_bits_in_rm;
  wire [32:0] fpiu_io_out_bits_in_in1;
  wire [32:0] fpiu_io_out_bits_in_in2;
  wire  fpiu_io_out_bits_lt;
  wire [31:0] fpiu_io_out_bits_store;
  wire [31:0] fpiu_io_out_bits_toint;
  wire [4:0] fpiu_io_out_bits_exc;
  wire  ifpu_clock;
  wire  ifpu_reset;
  wire  ifpu_io_in_valid;
  wire  ifpu_io_in_bits_wflags;
  wire [2:0] ifpu_io_in_bits_rm;
  wire [1:0] ifpu_io_in_bits_typ;
  wire [31:0] ifpu_io_in_bits_in1;
  wire [32:0] ifpu_io_out_bits_data;
  wire [4:0] ifpu_io_out_bits_exc;
  wire  fpmu_clock;
  wire  fpmu_reset;
  wire  fpmu_io_in_valid;
  wire  fpmu_io_in_bits_wflags;
  wire [2:0] fpmu_io_in_bits_rm;
  wire [32:0] fpmu_io_in_bits_in1;
  wire [32:0] fpmu_io_in_bits_in2;
  wire [32:0] fpmu_io_out_bits_data;
  wire [4:0] fpmu_io_out_bits_exc;
  wire  fpmu_io_lt;
  wire  divSqrt_clock;
  wire  divSqrt_reset;
  wire  divSqrt_io_inReady;
  wire  divSqrt_io_inValid;
  wire  divSqrt_io_sqrtOp; 
  wire [32:0] divSqrt_io_a;
  wire [32:0] divSqrt_io_b;
  wire [2:0] divSqrt_io_roundingMode;
  wire  divSqrt_io_outValid_div;
  wire  divSqrt_io_outValid_sqrt;
  wire [32:0] divSqrt_io_out;
  wire [4:0] divSqrt_io_exceptionFlags;

//******************************************************************************
// Submodules_Initiations
//******************************************************************************
  FPUDecoder fp_decoder (
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
  FPUFMAPipe sfma (
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
  FPToInt fpiu (
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
  IntToFP ifpu (
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
  FPToFP fpmu (
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
  DivSqrtRecFN_small divSqrt (
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

//******************************************************************************
// Wires_Registers_Declarations
//******************************************************************************
reg  ex_reg_valid;
reg [31:0] ex_reg_inst;
reg  ex_reg_ctrl_ren2;
reg  ex_reg_ctrl_ren3;
reg  ex_reg_ctrl_swap23;
reg  ex_reg_ctrl_singleOut;
reg  ex_reg_ctrl_fromint;
reg  ex_reg_ctrl_toint;
reg  ex_reg_ctrl_fastpipe;
reg  ex_reg_ctrl_fma;
reg  ex_reg_ctrl_div;
reg  ex_reg_ctrl_sqrt;
reg  ex_reg_ctrl_wflags;
reg [4:0] ex_ra_0;
reg [4:0] ex_ra_1;
reg [4:0] ex_ra_2;
reg  load_wb;
reg [31:0] load_wb_data;
reg [4:0] load_wb_tag;
reg  mem_reg_valid;
wire  killm;
wire  killx;
reg [31:0] mem_reg_inst;
reg  wb_reg_valid;
reg  mem_ctrl_singleOut;
reg  mem_ctrl_fromint;
reg  mem_ctrl_toint;
reg  mem_ctrl_fastpipe;
reg  mem_ctrl_fma;
reg  mem_ctrl_div;
reg  mem_ctrl_sqrt;
reg  mem_ctrl_wflags;
reg  wb_ctrl_toint;
reg [4:0] divSqrt_waddr;
wire [1:0] memLatencyMask;
reg [1:0] wen;
reg [4:0] wbInfo_0_rd;
reg [1:0] wbInfo_0_pipeid;
reg [4:0] wbInfo_1_rd;
reg [1:0] wbInfo_1_pipeid;
wire  mem_wen;
reg  write_port_busy;
reg  divSqrt_killed;
wire  divSqrt_wen;
wire [32:0] divSqrt_wdata;
wire [4:0] wexc;
wire  wb_toint_valid;
reg [4:0] wb_toint_exc;
wire [4:0] divSqrt_flags;
wire  divSqrt_write_port_busy;
wire  divSqrt_inFlight;
reg  _T_244;
wire  tag_2;
`endif // MY_DEFINE

`define WIRE_REG_ASS
`ifdef WIRE_REG_ASS
//******************************************************************************
// Wires_Registers_Assignments
//******************************************************************************
assign regfile_ex_rs_0_addr = ex_ra_0;
assign regfile_ex_rs_0_data = regfile[regfile_ex_rs_0_addr];
assign regfile_ex_rs_1_addr = ex_ra_1;
assign regfile_ex_rs_1_data = regfile[regfile_ex_rs_1_addr];
assign regfile_ex_rs_2_addr = ex_ra_2;
assign regfile_ex_rs_2_data = regfile[regfile_ex_rs_2_addr];

wire [4:0] _T_60 = load_wb_data[22] ? 5'h0 
				: load_wb_data[21] ? 5'h1 
				: load_wb_data[20] ? 5'h2 
				: load_wb_data[19] ? 5'h3 
				: load_wb_data[18] ? 5'h4 
				: load_wb_data[17] ? 5'h5 
				: load_wb_data[16] ? 5'h6 
				: load_wb_data[15] ? 5'h7 
				: load_wb_data[14] ? 5'h8 
				: load_wb_data[13] ? 5'h9 
				: load_wb_data[12] ? 5'ha 
				: load_wb_data[11] ? 5'hb 
				: load_wb_data[10] ? 5'hc 
				: load_wb_data[9] ? 5'hd 
				: load_wb_data[8] ? 5'he 
				: load_wb_data[7] ? 5'hf 
				: load_wb_data[6] ? 5'h10 
				: load_wb_data[5] ? 5'h11 
				: load_wb_data[4] ? 5'h12 
				: load_wb_data[3] ? 5'h13 
				: load_wb_data[2] ? 5'h14 
				: load_wb_data[1] ? 5'h15 
				: 5'h16
				;

wire [1:0] _T_66 = (load_wb_data[30:23] == 8'h0) ? 2'h2 : 2'h1;
wire [7:0] _GEN_157 = {{6'd0}, _T_66};
wire [7:0] _T_67 = 8'h80 | _GEN_157;
wire [8:0] _GEN_158 = {{1'd0}, _T_67};
wire [8:0] _GEN_156 = {{4'd0}, _T_60};
wire [8:0] _T_64 = _GEN_156 ^ 9'h1ff;
wire [8:0] _T_65 = (load_wb_data[30:23] == 8'h0) ? _T_64 : {{1'd0}, load_wb_data[30:23]};
wire [8:0] _T_69 = _T_65 + _GEN_158;
wire [9:0] _T_78 = {1'b0,$signed(_T_69)};
wire [2:0] _T_83 = _T_78[8:6];
wire [2:0] _T_84 = ((load_wb_data[30:23] == 8'h0) & (load_wb_data[22:0] == 23'h0)) ? 3'h0 : _T_83;
wire _T_75 = (_T_69[8:7] == 2'h3) & ((load_wb_data[22:0] == 23'h0) == 1'h0);
wire [2:0] _GEN_159 = {{2'd0}, _T_75};
wire [2:0] _T_86 = _T_84 | _GEN_159;
wire [3:0] _T_90 = {load_wb_data[31],_T_86};
wire _T_79 = ((load_wb_data[30:23] == 8'h0) & (load_wb_data[22:0] == 23'h0)) == 1'h0;
wire [53:0] _GEN_155 = {{31'd0}, load_wb_data[22:0]};
wire [53:0] _T_61 = _GEN_155 << _T_60;
wire [21:0] _T_62 = _T_61[21:0];
wire [22:0] _T_63 = {_T_62, 1'h0};
wire [22:0] _T_80 = (load_wb_data[30:23] == 8'h0) ? _T_63 : load_wb_data[22:0];
wire [24:0] _T_82 = {1'h0,_T_79,_T_80};
wire [28:0] _T_89 = {_T_78[5:0], _T_82[22:0]};
assign regfile__T_91_data = {_T_90, _T_89};
assign regfile__T_91_addr = load_wb_tag;
assign regfile__T_91_mask = 1'h1;
assign regfile__T_91_en = load_wb;

wire [32:0] _T_201 = (wbInfo_0_pipeid == 2'h3) ? sfma_io_out_bits_data 
			: (wbInfo_0_pipeid == 2'h2) ? sfma_io_out_bits_data 
			: (wbInfo_0_pipeid == 2'h1) ? ifpu_io_out_bits_data 
			: fpmu_io_out_bits_data
			;
assign regfile__T_214_data = divSqrt_wen ? divSqrt_wdata : _T_201;
assign regfile__T_214_addr = divSqrt_wen ? divSqrt_waddr : wbInfo_0_rd;
assign regfile__T_214_mask = 1'h1;
assign regfile__T_214_en = wen[0] | divSqrt_wen;

always @(posedge clock) begin
	if (reset) begin
		ex_reg_valid <= 1'h0;
		ex_reg_inst <= 31'h00;
	end 
	else begin
		ex_reg_valid <= io_valid;
    		if (io_valid) begin
      			ex_reg_inst <= io_inst;
			ex_reg_ctrl_ren2 <= fp_decoder_io_sigs_ren2;
			ex_reg_ctrl_ren3 <= fp_decoder_io_sigs_ren3;
			ex_reg_ctrl_swap23 <= fp_decoder_io_sigs_swap23;
			ex_reg_ctrl_singleOut <= fp_decoder_io_sigs_singleOut;
			ex_reg_ctrl_fromint <= fp_decoder_io_sigs_fromint;
			ex_reg_ctrl_toint <= fp_decoder_io_sigs_toint;
			ex_reg_ctrl_fastpipe <= fp_decoder_io_sigs_fastpipe;
			ex_reg_ctrl_fma <= fp_decoder_io_sigs_fma;
			ex_reg_ctrl_div <= fp_decoder_io_sigs_div;
			ex_reg_ctrl_sqrt <= fp_decoder_io_sigs_sqrt;
			ex_reg_ctrl_wflags <= fp_decoder_io_sigs_wflags;
    		end
	end
end

always @(posedge clock) begin
	if (reset) begin
		load_wb <= 1'h0;
		load_wb_data <= 32'h00;
		load_wb_tag <= 5'h00;
	end 
	else begin
		load_wb <= io_dmem_resp_val;
		if (io_dmem_resp_val) begin
		  	load_wb_data <= io_dmem_resp_data;
		end
		if (io_dmem_resp_val) begin
		  	load_wb_tag <= io_dmem_resp_tag;
		end
	end
end

always @(posedge clock) begin
	if (reset) begin
		mem_reg_valid <= 1'h0;
	end 
	else begin
		mem_reg_valid <= ex_reg_valid & !killx;
	end
end

assign killm = io_killm | io_nack_mem;
assign killx = io_killx | mem_reg_valid & killm;

always @(posedge clock) begin
	if (reset) begin
		mem_reg_inst <= 32'h00;
		wb_reg_valid <= 1'h0;

		mem_ctrl_singleOut <= 1'h0;
		mem_ctrl_fromint <= 1'h0;
		mem_ctrl_toint <= 1'h0;
		mem_ctrl_fastpipe <= 1'h0;
		mem_ctrl_fma <= 1'h0;
		mem_ctrl_div <= 1'h0;
		mem_ctrl_sqrt <= 1'h0;
		mem_ctrl_wflags <= 1'h0;

      		wb_ctrl_toint <= 1'h0;


	end 
	else begin
    		if (ex_reg_valid) begin
			mem_reg_inst <= ex_reg_inst;

			mem_ctrl_singleOut <= ex_reg_ctrl_singleOut;
			mem_ctrl_fromint <= ex_reg_ctrl_fromint;
			mem_ctrl_toint <= ex_reg_ctrl_toint;
			mem_ctrl_fastpipe <= ex_reg_ctrl_fastpipe;
			mem_ctrl_fma <= ex_reg_ctrl_fma;
			mem_ctrl_div <= ex_reg_ctrl_div;
			mem_ctrl_sqrt <= ex_reg_ctrl_sqrt;
			mem_ctrl_wflags <= ex_reg_ctrl_wflags;
		end

		wb_reg_valid <= mem_reg_valid & !killm;

    		if (mem_reg_valid) begin
      			wb_ctrl_toint <= mem_ctrl_toint;
    		end

	end
end

// regfile
integer initvar;
always @(posedge clock) begin
	if (reset) begin
		for (initvar = 0; initvar < 32; initvar = initvar+1)
			regfile[initvar] <= 33'h00;
	end
	else begin
		if(regfile__T_91_en & regfile__T_91_mask) begin
			regfile[regfile__T_91_addr] <= regfile__T_91_data;
		end
		if(regfile__T_214_en & regfile__T_214_mask) begin
			regfile[regfile__T_214_addr] <= regfile__T_214_data;
		end
	end
end

always @(posedge clock) begin
	if (reset) begin
		ex_ra_0 <= 5'h00;
		ex_ra_1 <= 5'h00;
		ex_ra_2 <= 5'h00;
	end
	if (io_valid) begin
		if (fp_decoder_io_sigs_ren2 & fp_decoder_io_sigs_swap12) begin
	      		ex_ra_0 <= io_inst[24:20];
	    	end
		else if (fp_decoder_io_sigs_ren1 & !fp_decoder_io_sigs_swap12) begin
	          	ex_ra_0 <= io_inst[19:15];
	    	end
	
		if (fp_decoder_io_sigs_ren2 & !fp_decoder_io_sigs_swap12 & !fp_decoder_io_sigs_swap23) begin
		      	ex_ra_1 <= io_inst[24:20];
		end
		else if (fp_decoder_io_sigs_ren1 & fp_decoder_io_sigs_swap12) begin
	  	 	ex_ra_1 <= io_inst[19:15];
	  	end

	  	if (fp_decoder_io_sigs_ren3) begin
	  		ex_ra_2 <= io_inst[31:27];
	  	end
		else if (fp_decoder_io_sigs_ren2 & fp_decoder_io_sigs_swap23) begin
	        	ex_ra_2 <= io_inst[24:20];
	      	end
	end
end

wire [1:0] memLatencyMask_1 = (mem_ctrl_fma & mem_ctrl_singleOut) ? 2'h2 : 2'h0;
wire [1:0] memLatencyMask_0 = {{1'd0}, (mem_ctrl_fastpipe | mem_ctrl_fromint)};
assign memLatencyMask = memLatencyMask_0 | memLatencyMask_1;

assign mem_wen = mem_reg_valid & (mem_ctrl_fma | mem_ctrl_fastpipe | mem_ctrl_fromint);

wire [1:0] wbInfo_0_pipeid_0 = (mem_ctrl_fma & mem_ctrl_singleOut) ? 2'h2 : 2'h0;
wire [1:0] wbInfo_1_pipeid_0 = (mem_ctrl_fma & mem_ctrl_singleOut) ? 2'h2 : 2'h0;

wire [2:0] write_port_busy_6 = (ex_reg_ctrl_fma & ex_reg_ctrl_singleOut) ? 4'h8 : 4'h0;
wire [2:0] write_port_busy_5 = ex_reg_ctrl_fromint ? 3'h4 : 3'h0;
wire [2:0] write_port_busy_4 = ex_reg_ctrl_fastpipe ? 3'h4 : 3'h0;
wire [2:0] write_port_busy_3 = (ex_reg_ctrl_fma & ex_reg_ctrl_singleOut) ? 3'h4 : 3'h0;
wire [1:0] write_port_busy_2 = ex_reg_ctrl_fromint ? 2'h2 : 2'h0;
wire [1:0] write_port_busy_1 = ex_reg_ctrl_fastpipe ? 2'h2 : 2'h0;
wire write_port_busy_0 = (mem_wen & (({{1'd0}, memLatencyMask} & (({{1'd0}, (write_port_busy_1 | write_port_busy_2)}) | write_port_busy_3)) != 3'h0)) 
			| (({{2'd0}, wen} & ({{1'd0}, (write_port_busy_4 | write_port_busy_5)} | write_port_busy_6)) != 4'h0)
			;
always @(posedge clock) begin
	if (reset) begin
		wen <= 2'h0;
	 	wbInfo_0_rd <= 5'h00;
	 	wbInfo_0_pipeid <= 2'h0;
	 	wbInfo_1_rd <= 5'h00;
	 	wbInfo_1_pipeid <= 2'h0;
		write_port_busy <= 1'h0;
		wb_toint_exc <= 5'h00;
	end
	else begin
		if (mem_wen & !killm) begin
			wen <= {1'd0, wen[1]} | memLatencyMask;
		end
		else begin
			wen <= {1'd0, wen[1]} | memLatencyMask;
		end

		if (mem_wen & !write_port_busy & memLatencyMask[0]) begin
			wbInfo_0_rd <= mem_reg_inst[11:7];
			wbInfo_0_pipeid <= {{1'd0}, mem_ctrl_fromint} | wbInfo_0_pipeid_0;
		end
		else if (wen[1]) begin
		    	wbInfo_0_rd <= wbInfo_1_rd;
			wbInfo_0_pipeid <= wbInfo_1_pipeid;
		end

		if (mem_wen & !write_port_busy & memLatencyMask[1]) begin
			wbInfo_1_rd <= mem_reg_inst[11:7];
			wbInfo_1_pipeid <= {{1'd0}, mem_ctrl_fromint} | wbInfo_1_pipeid_0;
		end

    		if (ex_reg_valid) begin
      			write_port_busy <= write_port_busy_0;
    		end

		if (mem_ctrl_toint) begin
			wb_toint_exc <= fpiu_io_out_bits_exc;
		end

	end
end

assign wexc = (wbInfo_0_pipeid == 2'h3) ? sfma_io_out_bits_exc 
		: (wbInfo_0_pipeid == 2'h2) ? sfma_io_out_bits_exc
		: (wbInfo_0_pipeid == 2'h1) ? ifpu_io_out_bits_exc 
		: fpmu_io_out_bits_exc
		;

assign wb_toint_valid = wb_reg_valid & wb_ctrl_toint;

assign divSqrt_write_port_busy = (mem_ctrl_div | mem_ctrl_sqrt) & (wen != 2'h0);

always @(posedge clock) begin
	if (reset) begin
		divSqrt_killed <= 1'h0;
		divSqrt_waddr <= 5'h00;
	end
	else begin
		if (divSqrt_io_inValid & divSqrt_io_inReady) begin
      			divSqrt_killed <= killm;
			divSqrt_waddr <= mem_reg_inst[11:7];
    		end

	end
end

assign divSqrt_wen = (divSqrt_io_outValid_div | divSqrt_io_outValid_sqrt) & !divSqrt_killed;
assign divSqrt_wdata = divSqrt_io_out;
assign divSqrt_flags = divSqrt_io_exceptionFlags;
assign divSqrt_inFlight = divSqrt_io_inReady == 1'h0;
assign tag_2 = mem_ctrl_singleOut == 1'h0;

always @(posedge clock) begin
	if (reset) begin
		_T_244 <= 1'h0;
	end
	else begin
		_T_244 <= mem_ctrl_div | mem_ctrl_sqrt;
	end
end


//******************************************************************************
// Submodule_IO_Assignments
//******************************************************************************
assign fp_decoder_io_inst = io_inst;
assign sfma_clock = clock;
assign sfma_reset = reset;
assign sfma_io_in_valid = ex_reg_valid & ex_reg_ctrl_fma & ex_reg_ctrl_singleOut;
assign sfma_io_in_bits_ren3 = ex_reg_ctrl_ren3;
assign sfma_io_in_bits_swap23 = ex_reg_ctrl_swap23;
assign sfma_io_in_bits_rm = (ex_reg_inst[14:12] == 3'h7) ? io_fcsr_rm : ex_reg_inst[14:12];
assign sfma_io_in_bits_fmaCmd = ex_reg_inst[3:2] | {{1'd0}, (!ex_reg_ctrl_ren3 & ex_reg_inst[27])};
assign sfma_io_in_bits_in1 = regfile_ex_rs_0_data;
assign sfma_io_in_bits_in2 = regfile_ex_rs_1_data;
assign sfma_io_in_bits_in3 = regfile_ex_rs_2_data;
assign fpiu_clock = clock;
assign fpiu_io_in_valid = ex_reg_valid & (ex_reg_ctrl_toint | ex_reg_ctrl_div | ex_reg_ctrl_sqrt | (ex_reg_ctrl_fastpipe & ex_reg_ctrl_wflags));
assign fpiu_io_in_bits_ren2 = ex_reg_ctrl_ren2;
assign fpiu_io_in_bits_wflags = ex_reg_ctrl_wflags;
assign fpiu_io_in_bits_rm = (ex_reg_inst[14:12] == 3'h7) ? io_fcsr_rm : ex_reg_inst[14:12];
assign fpiu_io_in_bits_typ = ex_reg_inst[21:20];
assign fpiu_io_in_bits_in1 = regfile_ex_rs_0_data;
assign fpiu_io_in_bits_in2 = regfile_ex_rs_1_data;
assign ifpu_clock = clock;
assign ifpu_reset = reset;
assign ifpu_io_in_valid = ex_reg_valid & ex_reg_ctrl_fromint;
assign ifpu_io_in_bits_wflags = fpiu_io_in_bits_wflags;
assign ifpu_io_in_bits_rm = fpiu_io_in_bits_rm;
assign ifpu_io_in_bits_typ = fpiu_io_in_bits_typ;
assign ifpu_io_in_bits_in1 = io_fromint_data[31:0];
assign fpmu_clock = clock;
assign fpmu_reset = reset;
assign fpmu_io_in_valid = ex_reg_valid & ex_reg_ctrl_fastpipe;
assign fpmu_io_in_bits_wflags = fpiu_io_in_bits_wflags;
assign fpmu_io_in_bits_rm = fpiu_io_in_bits_rm;
assign fpmu_io_in_bits_in1 = fpiu_io_in_bits_in1;
assign fpmu_io_in_bits_in2 = fpiu_io_in_bits_in2;
assign fpmu_io_lt = fpiu_io_out_bits_lt;
assign divSqrt_clock = clock;
assign divSqrt_reset = reset;
assign divSqrt_io_inValid = mem_reg_valid & !tag_2 & (mem_ctrl_div | mem_ctrl_sqrt) & !divSqrt_inFlight;
assign divSqrt_io_sqrtOp = mem_ctrl_sqrt;
assign divSqrt_io_a = fpiu_io_out_bits_in_in1;
assign divSqrt_io_b = fpiu_io_out_bits_in_in2;
assign divSqrt_io_roundingMode = fpiu_io_out_bits_in_rm;

//******************************************************************************
// Outputs_Assignments
//******************************************************************************
assign io_fcsr_flags_valid = wb_toint_valid | divSqrt_wen | wen[0];

wire [4:0] io_fcsr_flags_bits_0 = wb_toint_valid ? wb_toint_exc : 5'h0;
wire [4:0] io_fcsr_flags_bits_1 = divSqrt_wen ? divSqrt_flags : 5'h0;
wire [4:0] io_fcsr_flags_bits_2 = wen[0] ? wexc : 5'h0;
assign io_fcsr_flags_bits = io_fcsr_flags_bits_0 | io_fcsr_flags_bits_1 | io_fcsr_flags_bits_2;
assign io_store_data = fpiu_io_out_bits_store;
assign io_toint_data = fpiu_io_out_bits_toint;
assign io_fcsr_rdy = ((ex_reg_valid & ex_reg_ctrl_wflags) 
			| (mem_reg_valid & mem_ctrl_wflags) 
			| wb_toint_valid 
			| (wen != 2'h0) 
			| divSqrt_inFlight) == 1'h0
			;
assign io_nack_mem = write_port_busy | divSqrt_write_port_busy | divSqrt_inFlight;
assign io_illegal_rm = (io_inst[14:12] == 3'h5) 
			| (io_inst[14:12] == 3'h6) 
			| ((io_inst[14:12] == 3'h7) & (io_fcsr_rm >= 3'h5))
			;
assign io_dec_wen = fp_decoder_io_sigs_wen;
assign io_dec_ren1 = fp_decoder_io_sigs_ren1;
assign io_dec_ren2 = fp_decoder_io_sigs_ren2;
assign io_dec_ren3 = fp_decoder_io_sigs_ren3;
assign io_sboard_set = wb_reg_valid & _T_244;
assign io_sboard_clr = (divSqrt_io_outValid_div | divSqrt_io_outValid_sqrt) & !divSqrt_killed;
assign io_sboard_clra = divSqrt_wen ? divSqrt_waddr : wbInfo_0_rd;

`endif // WIRE_REG_ASS
