module TLDebugModule( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110349.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110350.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110351.4]
  output        auto_dmInner_dmInner_tl_in_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110352.4]
  input         auto_dmInner_dmInner_tl_in_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110352.4]
  input  [2:0]  auto_dmInner_dmInner_tl_in_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110352.4]
  input  [2:0]  auto_dmInner_dmInner_tl_in_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110352.4]
  input  [1:0]  auto_dmInner_dmInner_tl_in_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110352.4]
  input  [9:0]  auto_dmInner_dmInner_tl_in_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110352.4]
  input  [11:0] auto_dmInner_dmInner_tl_in_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110352.4]
  input  [3:0]  auto_dmInner_dmInner_tl_in_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110352.4]
  input  [31:0] auto_dmInner_dmInner_tl_in_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110352.4]
  input         auto_dmInner_dmInner_tl_in_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110352.4]
  input         auto_dmInner_dmInner_tl_in_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110352.4]
  output        auto_dmInner_dmInner_tl_in_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110352.4]
  output [2:0]  auto_dmInner_dmInner_tl_in_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110352.4]
  output [1:0]  auto_dmInner_dmInner_tl_in_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110352.4]
  output [9:0]  auto_dmInner_dmInner_tl_in_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110352.4]
  output [31:0] auto_dmInner_dmInner_tl_in_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110352.4]
  output        auto_dmOuter_intsource_out_sync_0, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110352.4]
  output        io_ctrl_ndreset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110353.4]
  output        io_ctrl_dmactive, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110353.4]
  output        io_dmi_dmi_req_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110353.4]
  input         io_dmi_dmi_req_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110353.4]
  input  [6:0]  io_dmi_dmi_req_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110353.4]
  input  [31:0] io_dmi_dmi_req_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110353.4]
  input  [1:0]  io_dmi_dmi_req_bits_op, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110353.4]
  input         io_dmi_dmi_resp_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110353.4]
  output        io_dmi_dmi_resp_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110353.4]
  output [31:0] io_dmi_dmi_resp_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110353.4]
  output [1:0]  io_dmi_dmi_resp_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110353.4]
  input         io_dmi_dmiClock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110353.4]
  input         io_dmi_dmiReset // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110353.4]
);
  wire  dmOuter_clock; // @[Debug.scala 1711:53:freechips.rocketchip.system.DefaultRV32Config.fir@110359.4]
  wire  dmOuter_reset; // @[Debug.scala 1711:53:freechips.rocketchip.system.DefaultRV32Config.fir@110359.4]
  wire [2:0] dmOuter_auto_asource_out_a_mem_0_opcode; // @[Debug.scala 1711:53:freechips.rocketchip.system.DefaultRV32Config.fir@110359.4]
  wire [8:0] dmOuter_auto_asource_out_a_mem_0_address; // @[Debug.scala 1711:53:freechips.rocketchip.system.DefaultRV32Config.fir@110359.4]
  wire [3:0] dmOuter_auto_asource_out_a_mem_0_mask; // @[Debug.scala 1711:53:freechips.rocketchip.system.DefaultRV32Config.fir@110359.4]
  wire [31:0] dmOuter_auto_asource_out_a_mem_0_data; // @[Debug.scala 1711:53:freechips.rocketchip.system.DefaultRV32Config.fir@110359.4]
  wire  dmOuter_auto_asource_out_a_ridx; // @[Debug.scala 1711:53:freechips.rocketchip.system.DefaultRV32Config.fir@110359.4]
  wire  dmOuter_auto_asource_out_a_widx; // @[Debug.scala 1711:53:freechips.rocketchip.system.DefaultRV32Config.fir@110359.4]
  wire  dmOuter_auto_asource_out_a_safe_ridx_valid; // @[Debug.scala 1711:53:freechips.rocketchip.system.DefaultRV32Config.fir@110359.4]
  wire  dmOuter_auto_asource_out_a_safe_widx_valid; // @[Debug.scala 1711:53:freechips.rocketchip.system.DefaultRV32Config.fir@110359.4]
  wire  dmOuter_auto_asource_out_a_safe_source_reset_n; // @[Debug.scala 1711:53:freechips.rocketchip.system.DefaultRV32Config.fir@110359.4]
  wire [2:0] dmOuter_auto_asource_out_d_mem_0_opcode; // @[Debug.scala 1711:53:freechips.rocketchip.system.DefaultRV32Config.fir@110359.4]
  wire [1:0] dmOuter_auto_asource_out_d_mem_0_size; // @[Debug.scala 1711:53:freechips.rocketchip.system.DefaultRV32Config.fir@110359.4]
  wire  dmOuter_auto_asource_out_d_mem_0_source; // @[Debug.scala 1711:53:freechips.rocketchip.system.DefaultRV32Config.fir@110359.4]
  wire [31:0] dmOuter_auto_asource_out_d_mem_0_data; // @[Debug.scala 1711:53:freechips.rocketchip.system.DefaultRV32Config.fir@110359.4]
  wire  dmOuter_auto_asource_out_d_ridx; // @[Debug.scala 1711:53:freechips.rocketchip.system.DefaultRV32Config.fir@110359.4]
  wire  dmOuter_auto_asource_out_d_widx; // @[Debug.scala 1711:53:freechips.rocketchip.system.DefaultRV32Config.fir@110359.4]
  wire  dmOuter_auto_asource_out_d_safe_ridx_valid; // @[Debug.scala 1711:53:freechips.rocketchip.system.DefaultRV32Config.fir@110359.4]
  wire  dmOuter_auto_asource_out_d_safe_widx_valid; // @[Debug.scala 1711:53:freechips.rocketchip.system.DefaultRV32Config.fir@110359.4]
  wire  dmOuter_auto_asource_out_d_safe_sink_reset_n; // @[Debug.scala 1711:53:freechips.rocketchip.system.DefaultRV32Config.fir@110359.4]
  wire  dmOuter_auto_intsource_out_sync_0; // @[Debug.scala 1711:53:freechips.rocketchip.system.DefaultRV32Config.fir@110359.4]
  wire  dmOuter_io_dmi_req_ready; // @[Debug.scala 1711:53:freechips.rocketchip.system.DefaultRV32Config.fir@110359.4]
  wire  dmOuter_io_dmi_req_valid; // @[Debug.scala 1711:53:freechips.rocketchip.system.DefaultRV32Config.fir@110359.4]
  wire [6:0] dmOuter_io_dmi_req_bits_addr; // @[Debug.scala 1711:53:freechips.rocketchip.system.DefaultRV32Config.fir@110359.4]
  wire [31:0] dmOuter_io_dmi_req_bits_data; // @[Debug.scala 1711:53:freechips.rocketchip.system.DefaultRV32Config.fir@110359.4]
  wire [1:0] dmOuter_io_dmi_req_bits_op; // @[Debug.scala 1711:53:freechips.rocketchip.system.DefaultRV32Config.fir@110359.4]
  wire  dmOuter_io_dmi_resp_ready; // @[Debug.scala 1711:53:freechips.rocketchip.system.DefaultRV32Config.fir@110359.4]
  wire  dmOuter_io_dmi_resp_valid; // @[Debug.scala 1711:53:freechips.rocketchip.system.DefaultRV32Config.fir@110359.4]
  wire [31:0] dmOuter_io_dmi_resp_bits_data; // @[Debug.scala 1711:53:freechips.rocketchip.system.DefaultRV32Config.fir@110359.4]
  wire [1:0] dmOuter_io_dmi_resp_bits_resp; // @[Debug.scala 1711:53:freechips.rocketchip.system.DefaultRV32Config.fir@110359.4]
  wire  dmOuter_io_ctrl_ndreset; // @[Debug.scala 1711:53:freechips.rocketchip.system.DefaultRV32Config.fir@110359.4]
  wire  dmOuter_io_ctrl_dmactive; // @[Debug.scala 1711:53:freechips.rocketchip.system.DefaultRV32Config.fir@110359.4]
  wire  dmOuter_io_innerCtrl_mem_0_resumereq; // @[Debug.scala 1711:53:freechips.rocketchip.system.DefaultRV32Config.fir@110359.4]
  wire [9:0] dmOuter_io_innerCtrl_mem_0_hartsel; // @[Debug.scala 1711:53:freechips.rocketchip.system.DefaultRV32Config.fir@110359.4]
  wire  dmOuter_io_innerCtrl_mem_0_ackhavereset; // @[Debug.scala 1711:53:freechips.rocketchip.system.DefaultRV32Config.fir@110359.4]
  wire  dmOuter_io_innerCtrl_mem_0_hrmask_0; // @[Debug.scala 1711:53:freechips.rocketchip.system.DefaultRV32Config.fir@110359.4]
  wire  dmOuter_io_innerCtrl_ridx; // @[Debug.scala 1711:53:freechips.rocketchip.system.DefaultRV32Config.fir@110359.4]
  wire  dmOuter_io_innerCtrl_widx; // @[Debug.scala 1711:53:freechips.rocketchip.system.DefaultRV32Config.fir@110359.4]
  wire  dmOuter_io_innerCtrl_safe_ridx_valid; // @[Debug.scala 1711:53:freechips.rocketchip.system.DefaultRV32Config.fir@110359.4]
  wire  dmOuter_io_innerCtrl_safe_widx_valid; // @[Debug.scala 1711:53:freechips.rocketchip.system.DefaultRV32Config.fir@110359.4]
  wire  dmOuter_io_innerCtrl_safe_source_reset_n; // @[Debug.scala 1711:53:freechips.rocketchip.system.DefaultRV32Config.fir@110359.4]
  wire  dmOuter_io_innerCtrl_safe_sink_reset_n; // @[Debug.scala 1711:53:freechips.rocketchip.system.DefaultRV32Config.fir@110359.4]
  wire  dmOuter_io_hgDebugInt_0; // @[Debug.scala 1711:53:freechips.rocketchip.system.DefaultRV32Config.fir@110359.4]
  wire  dmInner_clock; // @[Debug.scala 1712:53:freechips.rocketchip.system.DefaultRV32Config.fir@110366.4]
  wire  dmInner_reset; // @[Debug.scala 1712:53:freechips.rocketchip.system.DefaultRV32Config.fir@110366.4]
  wire [2:0] dmInner_auto_dmiXing_in_a_mem_0_opcode; // @[Debug.scala 1712:53:freechips.rocketchip.system.DefaultRV32Config.fir@110366.4]
  wire [8:0] dmInner_auto_dmiXing_in_a_mem_0_address; // @[Debug.scala 1712:53:freechips.rocketchip.system.DefaultRV32Config.fir@110366.4]
  wire [3:0] dmInner_auto_dmiXing_in_a_mem_0_mask; // @[Debug.scala 1712:53:freechips.rocketchip.system.DefaultRV32Config.fir@110366.4]
  wire [31:0] dmInner_auto_dmiXing_in_a_mem_0_data; // @[Debug.scala 1712:53:freechips.rocketchip.system.DefaultRV32Config.fir@110366.4]
  wire  dmInner_auto_dmiXing_in_a_ridx; // @[Debug.scala 1712:53:freechips.rocketchip.system.DefaultRV32Config.fir@110366.4]
  wire  dmInner_auto_dmiXing_in_a_widx; // @[Debug.scala 1712:53:freechips.rocketchip.system.DefaultRV32Config.fir@110366.4]
  wire  dmInner_auto_dmiXing_in_a_safe_ridx_valid; // @[Debug.scala 1712:53:freechips.rocketchip.system.DefaultRV32Config.fir@110366.4]
  wire  dmInner_auto_dmiXing_in_a_safe_widx_valid; // @[Debug.scala 1712:53:freechips.rocketchip.system.DefaultRV32Config.fir@110366.4]
  wire  dmInner_auto_dmiXing_in_a_safe_source_reset_n; // @[Debug.scala 1712:53:freechips.rocketchip.system.DefaultRV32Config.fir@110366.4]
  wire [2:0] dmInner_auto_dmiXing_in_d_mem_0_opcode; // @[Debug.scala 1712:53:freechips.rocketchip.system.DefaultRV32Config.fir@110366.4]
  wire [1:0] dmInner_auto_dmiXing_in_d_mem_0_size; // @[Debug.scala 1712:53:freechips.rocketchip.system.DefaultRV32Config.fir@110366.4]
  wire  dmInner_auto_dmiXing_in_d_mem_0_source; // @[Debug.scala 1712:53:freechips.rocketchip.system.DefaultRV32Config.fir@110366.4]
  wire [31:0] dmInner_auto_dmiXing_in_d_mem_0_data; // @[Debug.scala 1712:53:freechips.rocketchip.system.DefaultRV32Config.fir@110366.4]
  wire  dmInner_auto_dmiXing_in_d_ridx; // @[Debug.scala 1712:53:freechips.rocketchip.system.DefaultRV32Config.fir@110366.4]
  wire  dmInner_auto_dmiXing_in_d_widx; // @[Debug.scala 1712:53:freechips.rocketchip.system.DefaultRV32Config.fir@110366.4]
  wire  dmInner_auto_dmiXing_in_d_safe_ridx_valid; // @[Debug.scala 1712:53:freechips.rocketchip.system.DefaultRV32Config.fir@110366.4]
  wire  dmInner_auto_dmiXing_in_d_safe_widx_valid; // @[Debug.scala 1712:53:freechips.rocketchip.system.DefaultRV32Config.fir@110366.4]
  wire  dmInner_auto_dmiXing_in_d_safe_sink_reset_n; // @[Debug.scala 1712:53:freechips.rocketchip.system.DefaultRV32Config.fir@110366.4]
  wire  dmInner_auto_dmInner_tl_in_a_ready; // @[Debug.scala 1712:53:freechips.rocketchip.system.DefaultRV32Config.fir@110366.4]
  wire  dmInner_auto_dmInner_tl_in_a_valid; // @[Debug.scala 1712:53:freechips.rocketchip.system.DefaultRV32Config.fir@110366.4]
  wire [2:0] dmInner_auto_dmInner_tl_in_a_bits_opcode; // @[Debug.scala 1712:53:freechips.rocketchip.system.DefaultRV32Config.fir@110366.4]
  wire [2:0] dmInner_auto_dmInner_tl_in_a_bits_param; // @[Debug.scala 1712:53:freechips.rocketchip.system.DefaultRV32Config.fir@110366.4]
  wire [1:0] dmInner_auto_dmInner_tl_in_a_bits_size; // @[Debug.scala 1712:53:freechips.rocketchip.system.DefaultRV32Config.fir@110366.4]
  wire [9:0] dmInner_auto_dmInner_tl_in_a_bits_source; // @[Debug.scala 1712:53:freechips.rocketchip.system.DefaultRV32Config.fir@110366.4]
  wire [11:0] dmInner_auto_dmInner_tl_in_a_bits_address; // @[Debug.scala 1712:53:freechips.rocketchip.system.DefaultRV32Config.fir@110366.4]
  wire [3:0] dmInner_auto_dmInner_tl_in_a_bits_mask; // @[Debug.scala 1712:53:freechips.rocketchip.system.DefaultRV32Config.fir@110366.4]
  wire [31:0] dmInner_auto_dmInner_tl_in_a_bits_data; // @[Debug.scala 1712:53:freechips.rocketchip.system.DefaultRV32Config.fir@110366.4]
  wire  dmInner_auto_dmInner_tl_in_a_bits_corrupt; // @[Debug.scala 1712:53:freechips.rocketchip.system.DefaultRV32Config.fir@110366.4]
  wire  dmInner_auto_dmInner_tl_in_d_ready; // @[Debug.scala 1712:53:freechips.rocketchip.system.DefaultRV32Config.fir@110366.4]
  wire  dmInner_auto_dmInner_tl_in_d_valid; // @[Debug.scala 1712:53:freechips.rocketchip.system.DefaultRV32Config.fir@110366.4]
  wire [2:0] dmInner_auto_dmInner_tl_in_d_bits_opcode; // @[Debug.scala 1712:53:freechips.rocketchip.system.DefaultRV32Config.fir@110366.4]
  wire [1:0] dmInner_auto_dmInner_tl_in_d_bits_size; // @[Debug.scala 1712:53:freechips.rocketchip.system.DefaultRV32Config.fir@110366.4]
  wire [9:0] dmInner_auto_dmInner_tl_in_d_bits_source; // @[Debug.scala 1712:53:freechips.rocketchip.system.DefaultRV32Config.fir@110366.4]
  wire [31:0] dmInner_auto_dmInner_tl_in_d_bits_data; // @[Debug.scala 1712:53:freechips.rocketchip.system.DefaultRV32Config.fir@110366.4]
  wire  dmInner_io_dmactive; // @[Debug.scala 1712:53:freechips.rocketchip.system.DefaultRV32Config.fir@110366.4]
  wire  dmInner_io_innerCtrl_mem_0_resumereq; // @[Debug.scala 1712:53:freechips.rocketchip.system.DefaultRV32Config.fir@110366.4]
  wire [9:0] dmInner_io_innerCtrl_mem_0_hartsel; // @[Debug.scala 1712:53:freechips.rocketchip.system.DefaultRV32Config.fir@110366.4]
  wire  dmInner_io_innerCtrl_mem_0_ackhavereset; // @[Debug.scala 1712:53:freechips.rocketchip.system.DefaultRV32Config.fir@110366.4]
  wire  dmInner_io_innerCtrl_mem_0_hrmask_0; // @[Debug.scala 1712:53:freechips.rocketchip.system.DefaultRV32Config.fir@110366.4]
  wire  dmInner_io_innerCtrl_ridx; // @[Debug.scala 1712:53:freechips.rocketchip.system.DefaultRV32Config.fir@110366.4]
  wire  dmInner_io_innerCtrl_widx; // @[Debug.scala 1712:53:freechips.rocketchip.system.DefaultRV32Config.fir@110366.4]
  wire  dmInner_io_innerCtrl_safe_ridx_valid; // @[Debug.scala 1712:53:freechips.rocketchip.system.DefaultRV32Config.fir@110366.4]
  wire  dmInner_io_innerCtrl_safe_widx_valid; // @[Debug.scala 1712:53:freechips.rocketchip.system.DefaultRV32Config.fir@110366.4]
  wire  dmInner_io_innerCtrl_safe_source_reset_n; // @[Debug.scala 1712:53:freechips.rocketchip.system.DefaultRV32Config.fir@110366.4]
  wire  dmInner_io_innerCtrl_safe_sink_reset_n; // @[Debug.scala 1712:53:freechips.rocketchip.system.DefaultRV32Config.fir@110366.4]
  wire  dmInner_io_hgDebugInt_0; // @[Debug.scala 1712:53:freechips.rocketchip.system.DefaultRV32Config.fir@110366.4]
  TLDebugModuleOuterAsync dmOuter ( // @[Debug.scala 1711:53:freechips.rocketchip.system.DefaultRV32Config.fir@110359.4]
    .clock(dmOuter_clock),
    .reset(dmOuter_reset),
    .auto_asource_out_a_mem_0_opcode(dmOuter_auto_asource_out_a_mem_0_opcode),
    .auto_asource_out_a_mem_0_address(dmOuter_auto_asource_out_a_mem_0_address),
    .auto_asource_out_a_mem_0_mask(dmOuter_auto_asource_out_a_mem_0_mask),
    .auto_asource_out_a_mem_0_data(dmOuter_auto_asource_out_a_mem_0_data),
    .auto_asource_out_a_ridx(dmOuter_auto_asource_out_a_ridx),
    .auto_asource_out_a_widx(dmOuter_auto_asource_out_a_widx),
    .auto_asource_out_a_safe_ridx_valid(dmOuter_auto_asource_out_a_safe_ridx_valid),
    .auto_asource_out_a_safe_widx_valid(dmOuter_auto_asource_out_a_safe_widx_valid),
    .auto_asource_out_a_safe_source_reset_n(dmOuter_auto_asource_out_a_safe_source_reset_n),
    .auto_asource_out_d_mem_0_opcode(dmOuter_auto_asource_out_d_mem_0_opcode),
    .auto_asource_out_d_mem_0_size(dmOuter_auto_asource_out_d_mem_0_size),
    .auto_asource_out_d_mem_0_source(dmOuter_auto_asource_out_d_mem_0_source),
    .auto_asource_out_d_mem_0_data(dmOuter_auto_asource_out_d_mem_0_data),
    .auto_asource_out_d_ridx(dmOuter_auto_asource_out_d_ridx),
    .auto_asource_out_d_widx(dmOuter_auto_asource_out_d_widx),
    .auto_asource_out_d_safe_ridx_valid(dmOuter_auto_asource_out_d_safe_ridx_valid),
    .auto_asource_out_d_safe_widx_valid(dmOuter_auto_asource_out_d_safe_widx_valid),
    .auto_asource_out_d_safe_sink_reset_n(dmOuter_auto_asource_out_d_safe_sink_reset_n),
    .auto_intsource_out_sync_0(dmOuter_auto_intsource_out_sync_0),
    .io_dmi_req_ready(dmOuter_io_dmi_req_ready),
    .io_dmi_req_valid(dmOuter_io_dmi_req_valid),
    .io_dmi_req_bits_addr(dmOuter_io_dmi_req_bits_addr),
    .io_dmi_req_bits_data(dmOuter_io_dmi_req_bits_data),
    .io_dmi_req_bits_op(dmOuter_io_dmi_req_bits_op),
    .io_dmi_resp_ready(dmOuter_io_dmi_resp_ready),
    .io_dmi_resp_valid(dmOuter_io_dmi_resp_valid),
    .io_dmi_resp_bits_data(dmOuter_io_dmi_resp_bits_data),
    .io_dmi_resp_bits_resp(dmOuter_io_dmi_resp_bits_resp),
    .io_ctrl_ndreset(dmOuter_io_ctrl_ndreset),
    .io_ctrl_dmactive(dmOuter_io_ctrl_dmactive),
    .io_innerCtrl_mem_0_resumereq(dmOuter_io_innerCtrl_mem_0_resumereq),
    .io_innerCtrl_mem_0_hartsel(dmOuter_io_innerCtrl_mem_0_hartsel),
    .io_innerCtrl_mem_0_ackhavereset(dmOuter_io_innerCtrl_mem_0_ackhavereset),
    .io_innerCtrl_mem_0_hrmask_0(dmOuter_io_innerCtrl_mem_0_hrmask_0),
    .io_innerCtrl_ridx(dmOuter_io_innerCtrl_ridx),
    .io_innerCtrl_widx(dmOuter_io_innerCtrl_widx),
    .io_innerCtrl_safe_ridx_valid(dmOuter_io_innerCtrl_safe_ridx_valid),
    .io_innerCtrl_safe_widx_valid(dmOuter_io_innerCtrl_safe_widx_valid),
    .io_innerCtrl_safe_source_reset_n(dmOuter_io_innerCtrl_safe_source_reset_n),
    .io_innerCtrl_safe_sink_reset_n(dmOuter_io_innerCtrl_safe_sink_reset_n),
    .io_hgDebugInt_0(dmOuter_io_hgDebugInt_0)
  );
  TLDebugModuleInnerAsync dmInner ( // @[Debug.scala 1712:53:freechips.rocketchip.system.DefaultRV32Config.fir@110366.4]
    .clock(dmInner_clock),
    .reset(dmInner_reset),
    .auto_dmiXing_in_a_mem_0_opcode(dmInner_auto_dmiXing_in_a_mem_0_opcode),
    .auto_dmiXing_in_a_mem_0_address(dmInner_auto_dmiXing_in_a_mem_0_address),
    .auto_dmiXing_in_a_mem_0_mask(dmInner_auto_dmiXing_in_a_mem_0_mask),
    .auto_dmiXing_in_a_mem_0_data(dmInner_auto_dmiXing_in_a_mem_0_data),
    .auto_dmiXing_in_a_ridx(dmInner_auto_dmiXing_in_a_ridx),
    .auto_dmiXing_in_a_widx(dmInner_auto_dmiXing_in_a_widx),
    .auto_dmiXing_in_a_safe_ridx_valid(dmInner_auto_dmiXing_in_a_safe_ridx_valid),
    .auto_dmiXing_in_a_safe_widx_valid(dmInner_auto_dmiXing_in_a_safe_widx_valid),
    .auto_dmiXing_in_a_safe_source_reset_n(dmInner_auto_dmiXing_in_a_safe_source_reset_n),
    .auto_dmiXing_in_d_mem_0_opcode(dmInner_auto_dmiXing_in_d_mem_0_opcode),
    .auto_dmiXing_in_d_mem_0_size(dmInner_auto_dmiXing_in_d_mem_0_size),
    .auto_dmiXing_in_d_mem_0_source(dmInner_auto_dmiXing_in_d_mem_0_source),
    .auto_dmiXing_in_d_mem_0_data(dmInner_auto_dmiXing_in_d_mem_0_data),
    .auto_dmiXing_in_d_ridx(dmInner_auto_dmiXing_in_d_ridx),
    .auto_dmiXing_in_d_widx(dmInner_auto_dmiXing_in_d_widx),
    .auto_dmiXing_in_d_safe_ridx_valid(dmInner_auto_dmiXing_in_d_safe_ridx_valid),
    .auto_dmiXing_in_d_safe_widx_valid(dmInner_auto_dmiXing_in_d_safe_widx_valid),
    .auto_dmiXing_in_d_safe_sink_reset_n(dmInner_auto_dmiXing_in_d_safe_sink_reset_n),
    .auto_dmInner_tl_in_a_ready(dmInner_auto_dmInner_tl_in_a_ready),
    .auto_dmInner_tl_in_a_valid(dmInner_auto_dmInner_tl_in_a_valid),
    .auto_dmInner_tl_in_a_bits_opcode(dmInner_auto_dmInner_tl_in_a_bits_opcode),
    .auto_dmInner_tl_in_a_bits_param(dmInner_auto_dmInner_tl_in_a_bits_param),
    .auto_dmInner_tl_in_a_bits_size(dmInner_auto_dmInner_tl_in_a_bits_size),
    .auto_dmInner_tl_in_a_bits_source(dmInner_auto_dmInner_tl_in_a_bits_source),
    .auto_dmInner_tl_in_a_bits_address(dmInner_auto_dmInner_tl_in_a_bits_address),
    .auto_dmInner_tl_in_a_bits_mask(dmInner_auto_dmInner_tl_in_a_bits_mask),
    .auto_dmInner_tl_in_a_bits_data(dmInner_auto_dmInner_tl_in_a_bits_data),
    .auto_dmInner_tl_in_a_bits_corrupt(dmInner_auto_dmInner_tl_in_a_bits_corrupt),
    .auto_dmInner_tl_in_d_ready(dmInner_auto_dmInner_tl_in_d_ready),
    .auto_dmInner_tl_in_d_valid(dmInner_auto_dmInner_tl_in_d_valid),
    .auto_dmInner_tl_in_d_bits_opcode(dmInner_auto_dmInner_tl_in_d_bits_opcode),
    .auto_dmInner_tl_in_d_bits_size(dmInner_auto_dmInner_tl_in_d_bits_size),
    .auto_dmInner_tl_in_d_bits_source(dmInner_auto_dmInner_tl_in_d_bits_source),
    .auto_dmInner_tl_in_d_bits_data(dmInner_auto_dmInner_tl_in_d_bits_data),
    .io_dmactive(dmInner_io_dmactive),
    .io_innerCtrl_mem_0_resumereq(dmInner_io_innerCtrl_mem_0_resumereq),
    .io_innerCtrl_mem_0_hartsel(dmInner_io_innerCtrl_mem_0_hartsel),
    .io_innerCtrl_mem_0_ackhavereset(dmInner_io_innerCtrl_mem_0_ackhavereset),
    .io_innerCtrl_mem_0_hrmask_0(dmInner_io_innerCtrl_mem_0_hrmask_0),
    .io_innerCtrl_ridx(dmInner_io_innerCtrl_ridx),
    .io_innerCtrl_widx(dmInner_io_innerCtrl_widx),
    .io_innerCtrl_safe_ridx_valid(dmInner_io_innerCtrl_safe_ridx_valid),
    .io_innerCtrl_safe_widx_valid(dmInner_io_innerCtrl_safe_widx_valid),
    .io_innerCtrl_safe_source_reset_n(dmInner_io_innerCtrl_safe_source_reset_n),
    .io_innerCtrl_safe_sink_reset_n(dmInner_io_innerCtrl_safe_sink_reset_n),
    .io_hgDebugInt_0(dmInner_io_hgDebugInt_0)
  );
  assign auto_dmInner_dmInner_tl_in_a_ready = dmInner_auto_dmInner_tl_in_a_ready; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@110375.4]
  assign auto_dmInner_dmInner_tl_in_d_valid = dmInner_auto_dmInner_tl_in_d_valid; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@110375.4]
  assign auto_dmInner_dmInner_tl_in_d_bits_opcode = dmInner_auto_dmInner_tl_in_d_bits_opcode; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@110375.4]
  assign auto_dmInner_dmInner_tl_in_d_bits_size = dmInner_auto_dmInner_tl_in_d_bits_size; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@110375.4]
  assign auto_dmInner_dmInner_tl_in_d_bits_source = dmInner_auto_dmInner_tl_in_d_bits_source; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@110375.4]
  assign auto_dmInner_dmInner_tl_in_d_bits_data = dmInner_auto_dmInner_tl_in_d_bits_data; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@110375.4]
  assign auto_dmOuter_intsource_out_sync_0 = dmOuter_auto_intsource_out_sync_0; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@110374.4]
  assign io_ctrl_ndreset = dmOuter_io_ctrl_ndreset; // @[Debug.scala 1753:13:freechips.rocketchip.system.DefaultRV32Config.fir@110385.4]
  assign io_ctrl_dmactive = dmOuter_io_ctrl_dmactive; // @[Debug.scala 1753:13:freechips.rocketchip.system.DefaultRV32Config.fir@110385.4]
  assign io_dmi_dmi_req_ready = dmOuter_io_dmi_req_ready; // @[Debug.scala 1736:18:freechips.rocketchip.system.DefaultRV32Config.fir@110377.4]
  assign io_dmi_dmi_resp_valid = dmOuter_io_dmi_resp_valid; // @[Debug.scala 1736:18:freechips.rocketchip.system.DefaultRV32Config.fir@110377.4]
  assign io_dmi_dmi_resp_bits_data = dmOuter_io_dmi_resp_bits_data; // @[Debug.scala 1736:18:freechips.rocketchip.system.DefaultRV32Config.fir@110377.4]
  assign io_dmi_dmi_resp_bits_resp = dmOuter_io_dmi_resp_bits_resp; // @[Debug.scala 1736:18:freechips.rocketchip.system.DefaultRV32Config.fir@110377.4]
  assign dmOuter_clock = io_dmi_dmiClock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110364.4 Debug.scala 1738:28:freechips.rocketchip.system.DefaultRV32Config.fir@110379.4]
  assign dmOuter_reset = io_dmi_dmiReset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110365.4 Debug.scala 1737:28:freechips.rocketchip.system.DefaultRV32Config.fir@110378.4]
  assign dmOuter_auto_asource_out_a_ridx = dmInner_auto_dmiXing_in_a_ridx; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@110373.4]
  assign dmOuter_auto_asource_out_a_safe_ridx_valid = dmInner_auto_dmiXing_in_a_safe_ridx_valid; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@110373.4]
  assign dmOuter_auto_asource_out_d_mem_0_opcode = dmInner_auto_dmiXing_in_d_mem_0_opcode; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@110373.4]
  assign dmOuter_auto_asource_out_d_mem_0_size = dmInner_auto_dmiXing_in_d_mem_0_size; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@110373.4]
  assign dmOuter_auto_asource_out_d_mem_0_source = dmInner_auto_dmiXing_in_d_mem_0_source; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@110373.4]
  assign dmOuter_auto_asource_out_d_mem_0_data = dmInner_auto_dmiXing_in_d_mem_0_data; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@110373.4]
  assign dmOuter_auto_asource_out_d_widx = dmInner_auto_dmiXing_in_d_widx; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@110373.4]
  assign dmOuter_auto_asource_out_d_safe_widx_valid = dmInner_auto_dmiXing_in_d_safe_widx_valid; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@110373.4]
  assign dmOuter_io_dmi_req_valid = io_dmi_dmi_req_valid; // @[Debug.scala 1736:18:freechips.rocketchip.system.DefaultRV32Config.fir@110377.4]
  assign dmOuter_io_dmi_req_bits_addr = io_dmi_dmi_req_bits_addr; // @[Debug.scala 1736:18:freechips.rocketchip.system.DefaultRV32Config.fir@110377.4]
  assign dmOuter_io_dmi_req_bits_data = io_dmi_dmi_req_bits_data; // @[Debug.scala 1736:18:freechips.rocketchip.system.DefaultRV32Config.fir@110377.4]
  assign dmOuter_io_dmi_req_bits_op = io_dmi_dmi_req_bits_op; // @[Debug.scala 1736:18:freechips.rocketchip.system.DefaultRV32Config.fir@110377.4]
  assign dmOuter_io_dmi_resp_ready = io_dmi_dmi_resp_ready; // @[Debug.scala 1736:18:freechips.rocketchip.system.DefaultRV32Config.fir@110377.4]
  assign dmOuter_io_innerCtrl_ridx = dmInner_io_innerCtrl_ridx; // @[Debug.scala 1746:36:freechips.rocketchip.system.DefaultRV32Config.fir@110380.4]
  assign dmOuter_io_innerCtrl_safe_ridx_valid = dmInner_io_innerCtrl_safe_ridx_valid; // @[Debug.scala 1746:36:freechips.rocketchip.system.DefaultRV32Config.fir@110380.4]
  assign dmOuter_io_innerCtrl_safe_sink_reset_n = dmInner_io_innerCtrl_safe_sink_reset_n; // @[Debug.scala 1746:36:freechips.rocketchip.system.DefaultRV32Config.fir@110380.4]
  assign dmOuter_io_hgDebugInt_0 = dmInner_io_hgDebugInt_0; // @[Debug.scala 1749:36:freechips.rocketchip.system.DefaultRV32Config.fir@110383.4]
  assign dmInner_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110371.4]
  assign dmInner_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110372.4]
  assign dmInner_auto_dmiXing_in_a_mem_0_opcode = dmOuter_auto_asource_out_a_mem_0_opcode; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@110373.4]
  assign dmInner_auto_dmiXing_in_a_mem_0_address = dmOuter_auto_asource_out_a_mem_0_address; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@110373.4]
  assign dmInner_auto_dmiXing_in_a_mem_0_mask = dmOuter_auto_asource_out_a_mem_0_mask; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@110373.4]
  assign dmInner_auto_dmiXing_in_a_mem_0_data = dmOuter_auto_asource_out_a_mem_0_data; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@110373.4]
  assign dmInner_auto_dmiXing_in_a_widx = dmOuter_auto_asource_out_a_widx; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@110373.4]
  assign dmInner_auto_dmiXing_in_a_safe_widx_valid = dmOuter_auto_asource_out_a_safe_widx_valid; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@110373.4]
  assign dmInner_auto_dmiXing_in_a_safe_source_reset_n = dmOuter_auto_asource_out_a_safe_source_reset_n; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@110373.4]
  assign dmInner_auto_dmiXing_in_d_ridx = dmOuter_auto_asource_out_d_ridx; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@110373.4]
  assign dmInner_auto_dmiXing_in_d_safe_ridx_valid = dmOuter_auto_asource_out_d_safe_ridx_valid; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@110373.4]
  assign dmInner_auto_dmiXing_in_d_safe_sink_reset_n = dmOuter_auto_asource_out_d_safe_sink_reset_n; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@110373.4]
  assign dmInner_auto_dmInner_tl_in_a_valid = auto_dmInner_dmInner_tl_in_a_valid; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@110375.4]
  assign dmInner_auto_dmInner_tl_in_a_bits_opcode = auto_dmInner_dmInner_tl_in_a_bits_opcode; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@110375.4]
  assign dmInner_auto_dmInner_tl_in_a_bits_param = auto_dmInner_dmInner_tl_in_a_bits_param; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@110375.4]
  assign dmInner_auto_dmInner_tl_in_a_bits_size = auto_dmInner_dmInner_tl_in_a_bits_size; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@110375.4]
  assign dmInner_auto_dmInner_tl_in_a_bits_source = auto_dmInner_dmInner_tl_in_a_bits_source; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@110375.4]
  assign dmInner_auto_dmInner_tl_in_a_bits_address = auto_dmInner_dmInner_tl_in_a_bits_address; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@110375.4]
  assign dmInner_auto_dmInner_tl_in_a_bits_mask = auto_dmInner_dmInner_tl_in_a_bits_mask; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@110375.4]
  assign dmInner_auto_dmInner_tl_in_a_bits_data = auto_dmInner_dmInner_tl_in_a_bits_data; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@110375.4]
  assign dmInner_auto_dmInner_tl_in_a_bits_corrupt = auto_dmInner_dmInner_tl_in_a_bits_corrupt; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@110375.4]
  assign dmInner_auto_dmInner_tl_in_d_ready = auto_dmInner_dmInner_tl_in_d_ready; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@110375.4]
  assign dmInner_io_dmactive = dmOuter_io_ctrl_dmactive; // @[Debug.scala 1747:36:freechips.rocketchip.system.DefaultRV32Config.fir@110381.4]
  assign dmInner_io_innerCtrl_mem_0_resumereq = dmOuter_io_innerCtrl_mem_0_resumereq; // @[Debug.scala 1746:36:freechips.rocketchip.system.DefaultRV32Config.fir@110380.4]
  assign dmInner_io_innerCtrl_mem_0_hartsel = dmOuter_io_innerCtrl_mem_0_hartsel; // @[Debug.scala 1746:36:freechips.rocketchip.system.DefaultRV32Config.fir@110380.4]
  assign dmInner_io_innerCtrl_mem_0_ackhavereset = dmOuter_io_innerCtrl_mem_0_ackhavereset; // @[Debug.scala 1746:36:freechips.rocketchip.system.DefaultRV32Config.fir@110380.4]
  assign dmInner_io_innerCtrl_mem_0_hrmask_0 = dmOuter_io_innerCtrl_mem_0_hrmask_0; // @[Debug.scala 1746:36:freechips.rocketchip.system.DefaultRV32Config.fir@110380.4]
  assign dmInner_io_innerCtrl_widx = dmOuter_io_innerCtrl_widx; // @[Debug.scala 1746:36:freechips.rocketchip.system.DefaultRV32Config.fir@110380.4]
  assign dmInner_io_innerCtrl_safe_widx_valid = dmOuter_io_innerCtrl_safe_widx_valid; // @[Debug.scala 1746:36:freechips.rocketchip.system.DefaultRV32Config.fir@110380.4]
  assign dmInner_io_innerCtrl_safe_source_reset_n = dmOuter_io_innerCtrl_safe_source_reset_n; // @[Debug.scala 1746:36:freechips.rocketchip.system.DefaultRV32Config.fir@110380.4]
endmodule

