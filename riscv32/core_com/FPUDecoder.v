`include "include_module.v"
`ifdef __FPUDecoder
module FPUDecoder(
  input  [31:0] io_inst,
  output        io_sigs_wen,
  output        io_sigs_ren1,
  output        io_sigs_ren2,
  output        io_sigs_ren3,
  output        io_sigs_swap12,
  output        io_sigs_swap23,
  output        io_sigs_singleOut,
  output        io_sigs_fromint,
  output        io_sigs_toint,
  output        io_sigs_fastpipe,
  output        io_sigs_fma,
  output        io_sigs_div,
  output        io_sigs_sqrt,
  output        io_sigs_wflags
);
  wire  decoder_4;

`define MY_ASSIGNMENT
`ifdef MY_ASSIGNMENT

assign decoder_4 = (io_inst & 32'h50) == 32'h40;
assign io_sigs_wen = ((io_inst & 32'h80000020) == 32'h0) 
			| ((io_inst & 32'h30) == 32'h0) 
			| ((io_inst & 32'h10000020) == 32'h10000000)
			;
assign io_sigs_ren1 = ((io_inst & 32'h80000004) == 32'h0) 
			| ((io_inst & 32'h10000004) == 32'h0) 
			| decoder_4
			;
assign io_sigs_ren2 = ((io_inst & 32'h40000004) == 32'h0) 
			| ((io_inst & 32'h20) == 32'h20) 
			| decoder_4
			;
assign io_sigs_ren3 = (io_inst & 32'h50) == 32'h40;

assign io_sigs_swap12 = (io_inst & 32'h40) == 32'h0;

assign io_sigs_swap23 = (io_inst & 32'h30000010) == 32'h10;

assign io_sigs_singleOut = ((io_inst & 32'h20000000) == 32'h0) 
			| ((io_inst & 32'h10000000) == 32'h0) 
			| ((io_inst & 32'h10) == 32'h0)
			;
assign io_sigs_fromint = (io_inst & 32'h90000010) == 32'h90000010;

assign io_sigs_toint = ((io_inst & 32'h20) == 32'h20) 
			| ((io_inst & 32'h90000010) == 32'h80000010)
			;
assign io_sigs_fastpipe = (io_inst & 32'ha0000010) == 32'h20000010;

assign io_sigs_fma = ((io_inst & 32'hb0000004) == 32'h0) 
			| ((io_inst & 32'ha8000004) == 32'h0) 
			| decoder_4
			;
assign io_sigs_div = (io_inst & 32'h58000010) == 32'h18000010;
assign io_sigs_sqrt = (io_inst & 32'hc0000010) == 32'h40000010;
assign io_sigs_wflags = ((io_inst & 32'h20000004) == 32'h0) 
			| decoder_4 
			| ((io_inst & 32'h8002000) == 32'h8000000) 
			| ((io_inst & 32'hc0000004) == 32'h80000000);

`endif // MY_ASSIGNMENT

endmodule
`endif // __FPUDecoder
