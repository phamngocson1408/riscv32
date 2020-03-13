`include "include_module.v"
`ifdef __tag_array
module tag_array(
  input  [5:0]  RW0_addr,
  input         RW0_en,
  input         RW0_clk,
  input         RW0_wmode,
  input  [21:0] RW0_wdata_0,
  input  [21:0] RW0_wdata_1,
  input  [21:0] RW0_wdata_2,
  input  [21:0] RW0_wdata_3,
  output [21:0] RW0_rdata_0,
  output [21:0] RW0_rdata_1,
  output [21:0] RW0_rdata_2,
  output [21:0] RW0_rdata_3,
  input         RW0_wmask_0,
  input         RW0_wmask_1,
  input         RW0_wmask_2,
  input         RW0_wmask_3
);
  wire [5:0] tag_array_ext_RW0_addr;
  wire  tag_array_ext_RW0_en;
  wire  tag_array_ext_RW0_clk;
  wire  tag_array_ext_RW0_wmode;
  wire [87:0] tag_array_ext_RW0_wdata;
  wire [87:0] tag_array_ext_RW0_rdata;
  wire [3:0] tag_array_ext_RW0_wmask;

  tag_array_ext tag_array_ext (
    .RW0_addr(tag_array_ext_RW0_addr),
    .RW0_en(tag_array_ext_RW0_en),
    .RW0_clk(tag_array_ext_RW0_clk),
    .RW0_wmode(tag_array_ext_RW0_wmode),
    .RW0_wdata(tag_array_ext_RW0_wdata),
    .RW0_rdata(tag_array_ext_RW0_rdata),
    .RW0_wmask(tag_array_ext_RW0_wmask)
  );

  assign tag_array_ext_RW0_clk = RW0_clk;
  assign tag_array_ext_RW0_en = RW0_en;
  assign tag_array_ext_RW0_addr = RW0_addr;

  assign RW0_rdata_0 = $unsigned(tag_array_ext_RW0_rdata[21:0]);
  assign RW0_rdata_1 = $unsigned(tag_array_ext_RW0_rdata[43:22]);
  assign RW0_rdata_2 = $unsigned(tag_array_ext_RW0_rdata[65:44]);
  assign RW0_rdata_3 = $unsigned(tag_array_ext_RW0_rdata[87:66]);

  assign tag_array_ext_RW0_wmode = RW0_wmode;
  assign tag_array_ext_RW0_wdata = {
  				$unsigned(RW0_wdata_3)
  				,$unsigned(RW0_wdata_2)
  				,$unsigned(RW0_wdata_1)
  				,$unsigned(RW0_wdata_0)
				};
  assign tag_array_ext_RW0_wmask = {
  				$unsigned(RW0_wmask_3)
  				,$unsigned(RW0_wmask_2)
  				,$unsigned(RW0_wmask_1)
  				,$unsigned(RW0_wmask_0)
				};
endmodule
`endif // __tag_array

