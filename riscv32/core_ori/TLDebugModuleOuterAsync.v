module TLDebugModuleOuterAsync( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76322.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76323.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76324.4]
  output [2:0]  auto_asource_out_a_mem_0_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76325.4]
  output [8:0]  auto_asource_out_a_mem_0_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76325.4]
  output [3:0]  auto_asource_out_a_mem_0_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76325.4]
  output [31:0] auto_asource_out_a_mem_0_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76325.4]
  input         auto_asource_out_a_ridx, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76325.4]
  output        auto_asource_out_a_widx, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76325.4]
  input         auto_asource_out_a_safe_ridx_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76325.4]
  output        auto_asource_out_a_safe_widx_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76325.4]
  output        auto_asource_out_a_safe_source_reset_n, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76325.4]
  input  [2:0]  auto_asource_out_d_mem_0_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76325.4]
  input  [1:0]  auto_asource_out_d_mem_0_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76325.4]
  input         auto_asource_out_d_mem_0_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76325.4]
  input  [31:0] auto_asource_out_d_mem_0_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76325.4]
  output        auto_asource_out_d_ridx, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76325.4]
  input         auto_asource_out_d_widx, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76325.4]
  output        auto_asource_out_d_safe_ridx_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76325.4]
  input         auto_asource_out_d_safe_widx_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76325.4]
  output        auto_asource_out_d_safe_sink_reset_n, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76325.4]
  output        auto_intsource_out_sync_0, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76325.4]
  output        io_dmi_req_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76326.4]
  input         io_dmi_req_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76326.4]
  input  [6:0]  io_dmi_req_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76326.4]
  input  [31:0] io_dmi_req_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76326.4]
  input  [1:0]  io_dmi_req_bits_op, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76326.4]
  input         io_dmi_resp_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76326.4]
  output        io_dmi_resp_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76326.4]
  output [31:0] io_dmi_resp_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76326.4]
  output [1:0]  io_dmi_resp_bits_resp, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76326.4]
  output        io_ctrl_ndreset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76326.4]
  output        io_ctrl_dmactive, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76326.4]
  output        io_innerCtrl_mem_0_resumereq, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76326.4]
  output [9:0]  io_innerCtrl_mem_0_hartsel, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76326.4]
  output        io_innerCtrl_mem_0_ackhavereset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76326.4]
  output        io_innerCtrl_mem_0_hrmask_0, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76326.4]
  input         io_innerCtrl_ridx, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76326.4]
  output        io_innerCtrl_widx, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76326.4]
  input         io_innerCtrl_safe_ridx_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76326.4]
  output        io_innerCtrl_safe_widx_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76326.4]
  output        io_innerCtrl_safe_source_reset_n, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76326.4]
  input         io_innerCtrl_safe_sink_reset_n, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76326.4]
  input         io_hgDebugInt_0 // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76326.4]
);
  wire  dmiXbar_clock; // @[Debug.scala 597:28:freechips.rocketchip.system.DefaultRV32Config.fir@76332.4]
  wire  dmiXbar_reset; // @[Debug.scala 597:28:freechips.rocketchip.system.DefaultRV32Config.fir@76332.4]
  wire  dmiXbar_auto_in_a_ready; // @[Debug.scala 597:28:freechips.rocketchip.system.DefaultRV32Config.fir@76332.4]
  wire  dmiXbar_auto_in_a_valid; // @[Debug.scala 597:28:freechips.rocketchip.system.DefaultRV32Config.fir@76332.4]
  wire [2:0] dmiXbar_auto_in_a_bits_opcode; // @[Debug.scala 597:28:freechips.rocketchip.system.DefaultRV32Config.fir@76332.4]
  wire [8:0] dmiXbar_auto_in_a_bits_address; // @[Debug.scala 597:28:freechips.rocketchip.system.DefaultRV32Config.fir@76332.4]
  wire [3:0] dmiXbar_auto_in_a_bits_mask; // @[Debug.scala 597:28:freechips.rocketchip.system.DefaultRV32Config.fir@76332.4]
  wire [31:0] dmiXbar_auto_in_a_bits_data; // @[Debug.scala 597:28:freechips.rocketchip.system.DefaultRV32Config.fir@76332.4]
  wire  dmiXbar_auto_in_d_ready; // @[Debug.scala 597:28:freechips.rocketchip.system.DefaultRV32Config.fir@76332.4]
  wire  dmiXbar_auto_in_d_valid; // @[Debug.scala 597:28:freechips.rocketchip.system.DefaultRV32Config.fir@76332.4]
  wire  dmiXbar_auto_in_d_bits_denied; // @[Debug.scala 597:28:freechips.rocketchip.system.DefaultRV32Config.fir@76332.4]
  wire [31:0] dmiXbar_auto_in_d_bits_data; // @[Debug.scala 597:28:freechips.rocketchip.system.DefaultRV32Config.fir@76332.4]
  wire  dmiXbar_auto_in_d_bits_corrupt; // @[Debug.scala 597:28:freechips.rocketchip.system.DefaultRV32Config.fir@76332.4]
  wire  dmiXbar_auto_out_1_a_ready; // @[Debug.scala 597:28:freechips.rocketchip.system.DefaultRV32Config.fir@76332.4]
  wire  dmiXbar_auto_out_1_a_valid; // @[Debug.scala 597:28:freechips.rocketchip.system.DefaultRV32Config.fir@76332.4]
  wire [2:0] dmiXbar_auto_out_1_a_bits_opcode; // @[Debug.scala 597:28:freechips.rocketchip.system.DefaultRV32Config.fir@76332.4]
  wire [6:0] dmiXbar_auto_out_1_a_bits_address; // @[Debug.scala 597:28:freechips.rocketchip.system.DefaultRV32Config.fir@76332.4]
  wire [3:0] dmiXbar_auto_out_1_a_bits_mask; // @[Debug.scala 597:28:freechips.rocketchip.system.DefaultRV32Config.fir@76332.4]
  wire [31:0] dmiXbar_auto_out_1_a_bits_data; // @[Debug.scala 597:28:freechips.rocketchip.system.DefaultRV32Config.fir@76332.4]
  wire  dmiXbar_auto_out_1_d_ready; // @[Debug.scala 597:28:freechips.rocketchip.system.DefaultRV32Config.fir@76332.4]
  wire  dmiXbar_auto_out_1_d_valid; // @[Debug.scala 597:28:freechips.rocketchip.system.DefaultRV32Config.fir@76332.4]
  wire [2:0] dmiXbar_auto_out_1_d_bits_opcode; // @[Debug.scala 597:28:freechips.rocketchip.system.DefaultRV32Config.fir@76332.4]
  wire [31:0] dmiXbar_auto_out_1_d_bits_data; // @[Debug.scala 597:28:freechips.rocketchip.system.DefaultRV32Config.fir@76332.4]
  wire  dmiXbar_auto_out_0_a_ready; // @[Debug.scala 597:28:freechips.rocketchip.system.DefaultRV32Config.fir@76332.4]
  wire  dmiXbar_auto_out_0_a_valid; // @[Debug.scala 597:28:freechips.rocketchip.system.DefaultRV32Config.fir@76332.4]
  wire [2:0] dmiXbar_auto_out_0_a_bits_opcode; // @[Debug.scala 597:28:freechips.rocketchip.system.DefaultRV32Config.fir@76332.4]
  wire [8:0] dmiXbar_auto_out_0_a_bits_address; // @[Debug.scala 597:28:freechips.rocketchip.system.DefaultRV32Config.fir@76332.4]
  wire [3:0] dmiXbar_auto_out_0_a_bits_mask; // @[Debug.scala 597:28:freechips.rocketchip.system.DefaultRV32Config.fir@76332.4]
  wire [31:0] dmiXbar_auto_out_0_a_bits_data; // @[Debug.scala 597:28:freechips.rocketchip.system.DefaultRV32Config.fir@76332.4]
  wire  dmiXbar_auto_out_0_d_ready; // @[Debug.scala 597:28:freechips.rocketchip.system.DefaultRV32Config.fir@76332.4]
  wire  dmiXbar_auto_out_0_d_valid; // @[Debug.scala 597:28:freechips.rocketchip.system.DefaultRV32Config.fir@76332.4]
  wire [2:0] dmiXbar_auto_out_0_d_bits_opcode; // @[Debug.scala 597:28:freechips.rocketchip.system.DefaultRV32Config.fir@76332.4]
  wire [1:0] dmiXbar_auto_out_0_d_bits_param; // @[Debug.scala 597:28:freechips.rocketchip.system.DefaultRV32Config.fir@76332.4]
  wire [1:0] dmiXbar_auto_out_0_d_bits_size; // @[Debug.scala 597:28:freechips.rocketchip.system.DefaultRV32Config.fir@76332.4]
  wire  dmiXbar_auto_out_0_d_bits_source; // @[Debug.scala 597:28:freechips.rocketchip.system.DefaultRV32Config.fir@76332.4]
  wire  dmiXbar_auto_out_0_d_bits_sink; // @[Debug.scala 597:28:freechips.rocketchip.system.DefaultRV32Config.fir@76332.4]
  wire  dmiXbar_auto_out_0_d_bits_denied; // @[Debug.scala 597:28:freechips.rocketchip.system.DefaultRV32Config.fir@76332.4]
  wire [31:0] dmiXbar_auto_out_0_d_bits_data; // @[Debug.scala 597:28:freechips.rocketchip.system.DefaultRV32Config.fir@76332.4]
  wire  dmiXbar_auto_out_0_d_bits_corrupt; // @[Debug.scala 597:28:freechips.rocketchip.system.DefaultRV32Config.fir@76332.4]
  wire  dmi2tl_auto_out_a_ready; // @[Debug.scala 600:28:freechips.rocketchip.system.DefaultRV32Config.fir@76338.4]
  wire  dmi2tl_auto_out_a_valid; // @[Debug.scala 600:28:freechips.rocketchip.system.DefaultRV32Config.fir@76338.4]
  wire [2:0] dmi2tl_auto_out_a_bits_opcode; // @[Debug.scala 600:28:freechips.rocketchip.system.DefaultRV32Config.fir@76338.4]
  wire [8:0] dmi2tl_auto_out_a_bits_address; // @[Debug.scala 600:28:freechips.rocketchip.system.DefaultRV32Config.fir@76338.4]
  wire [3:0] dmi2tl_auto_out_a_bits_mask; // @[Debug.scala 600:28:freechips.rocketchip.system.DefaultRV32Config.fir@76338.4]
  wire [31:0] dmi2tl_auto_out_a_bits_data; // @[Debug.scala 600:28:freechips.rocketchip.system.DefaultRV32Config.fir@76338.4]
  wire  dmi2tl_auto_out_d_ready; // @[Debug.scala 600:28:freechips.rocketchip.system.DefaultRV32Config.fir@76338.4]
  wire  dmi2tl_auto_out_d_valid; // @[Debug.scala 600:28:freechips.rocketchip.system.DefaultRV32Config.fir@76338.4]
  wire  dmi2tl_auto_out_d_bits_denied; // @[Debug.scala 600:28:freechips.rocketchip.system.DefaultRV32Config.fir@76338.4]
  wire [31:0] dmi2tl_auto_out_d_bits_data; // @[Debug.scala 600:28:freechips.rocketchip.system.DefaultRV32Config.fir@76338.4]
  wire  dmi2tl_auto_out_d_bits_corrupt; // @[Debug.scala 600:28:freechips.rocketchip.system.DefaultRV32Config.fir@76338.4]
  wire  dmi2tl_io_dmi_req_ready; // @[Debug.scala 600:28:freechips.rocketchip.system.DefaultRV32Config.fir@76338.4]
  wire  dmi2tl_io_dmi_req_valid; // @[Debug.scala 600:28:freechips.rocketchip.system.DefaultRV32Config.fir@76338.4]
  wire [6:0] dmi2tl_io_dmi_req_bits_addr; // @[Debug.scala 600:28:freechips.rocketchip.system.DefaultRV32Config.fir@76338.4]
  wire [31:0] dmi2tl_io_dmi_req_bits_data; // @[Debug.scala 600:28:freechips.rocketchip.system.DefaultRV32Config.fir@76338.4]
  wire [1:0] dmi2tl_io_dmi_req_bits_op; // @[Debug.scala 600:28:freechips.rocketchip.system.DefaultRV32Config.fir@76338.4]
  wire  dmi2tl_io_dmi_resp_ready; // @[Debug.scala 600:28:freechips.rocketchip.system.DefaultRV32Config.fir@76338.4]
  wire  dmi2tl_io_dmi_resp_valid; // @[Debug.scala 600:28:freechips.rocketchip.system.DefaultRV32Config.fir@76338.4]
  wire [31:0] dmi2tl_io_dmi_resp_bits_data; // @[Debug.scala 600:28:freechips.rocketchip.system.DefaultRV32Config.fir@76338.4]
  wire [1:0] dmi2tl_io_dmi_resp_bits_resp; // @[Debug.scala 600:28:freechips.rocketchip.system.DefaultRV32Config.fir@76338.4]
  wire  dmOuter_clock; // @[Debug.scala 619:27:freechips.rocketchip.system.DefaultRV32Config.fir@76345.4]
  wire  dmOuter_reset; // @[Debug.scala 619:27:freechips.rocketchip.system.DefaultRV32Config.fir@76345.4]
  wire  dmOuter_auto_dmi_in_a_ready; // @[Debug.scala 619:27:freechips.rocketchip.system.DefaultRV32Config.fir@76345.4]
  wire  dmOuter_auto_dmi_in_a_valid; // @[Debug.scala 619:27:freechips.rocketchip.system.DefaultRV32Config.fir@76345.4]
  wire [2:0] dmOuter_auto_dmi_in_a_bits_opcode; // @[Debug.scala 619:27:freechips.rocketchip.system.DefaultRV32Config.fir@76345.4]
  wire [6:0] dmOuter_auto_dmi_in_a_bits_address; // @[Debug.scala 619:27:freechips.rocketchip.system.DefaultRV32Config.fir@76345.4]
  wire [3:0] dmOuter_auto_dmi_in_a_bits_mask; // @[Debug.scala 619:27:freechips.rocketchip.system.DefaultRV32Config.fir@76345.4]
  wire [31:0] dmOuter_auto_dmi_in_a_bits_data; // @[Debug.scala 619:27:freechips.rocketchip.system.DefaultRV32Config.fir@76345.4]
  wire  dmOuter_auto_dmi_in_d_ready; // @[Debug.scala 619:27:freechips.rocketchip.system.DefaultRV32Config.fir@76345.4]
  wire  dmOuter_auto_dmi_in_d_valid; // @[Debug.scala 619:27:freechips.rocketchip.system.DefaultRV32Config.fir@76345.4]
  wire [2:0] dmOuter_auto_dmi_in_d_bits_opcode; // @[Debug.scala 619:27:freechips.rocketchip.system.DefaultRV32Config.fir@76345.4]
  wire [31:0] dmOuter_auto_dmi_in_d_bits_data; // @[Debug.scala 619:27:freechips.rocketchip.system.DefaultRV32Config.fir@76345.4]
  wire  dmOuter_auto_int_out_0; // @[Debug.scala 619:27:freechips.rocketchip.system.DefaultRV32Config.fir@76345.4]
  wire  dmOuter_io_ctrl_ndreset; // @[Debug.scala 619:27:freechips.rocketchip.system.DefaultRV32Config.fir@76345.4]
  wire  dmOuter_io_ctrl_dmactive; // @[Debug.scala 619:27:freechips.rocketchip.system.DefaultRV32Config.fir@76345.4]
  wire  dmOuter_io_innerCtrl_valid; // @[Debug.scala 619:27:freechips.rocketchip.system.DefaultRV32Config.fir@76345.4]
  wire  dmOuter_io_innerCtrl_bits_resumereq; // @[Debug.scala 619:27:freechips.rocketchip.system.DefaultRV32Config.fir@76345.4]
  wire [9:0] dmOuter_io_innerCtrl_bits_hartsel; // @[Debug.scala 619:27:freechips.rocketchip.system.DefaultRV32Config.fir@76345.4]
  wire  dmOuter_io_innerCtrl_bits_ackhavereset; // @[Debug.scala 619:27:freechips.rocketchip.system.DefaultRV32Config.fir@76345.4]
  wire  dmOuter_io_innerCtrl_bits_hrmask_0; // @[Debug.scala 619:27:freechips.rocketchip.system.DefaultRV32Config.fir@76345.4]
  wire  dmOuter_io_hgDebugInt_0; // @[Debug.scala 619:27:freechips.rocketchip.system.DefaultRV32Config.fir@76345.4]
  wire  intsource_auto_in_0; // @[Crossing.scala 26:31:freechips.rocketchip.system.DefaultRV32Config.fir@76352.4]
  wire  intsource_auto_out_sync_0; // @[Crossing.scala 26:31:freechips.rocketchip.system.DefaultRV32Config.fir@76352.4]
  wire  asource_clock; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@76358.4]
  wire  asource_reset; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@76358.4]
  wire  asource_auto_in_a_ready; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@76358.4]
  wire  asource_auto_in_a_valid; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@76358.4]
  wire [2:0] asource_auto_in_a_bits_opcode; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@76358.4]
  wire [8:0] asource_auto_in_a_bits_address; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@76358.4]
  wire [3:0] asource_auto_in_a_bits_mask; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@76358.4]
  wire [31:0] asource_auto_in_a_bits_data; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@76358.4]
  wire  asource_auto_in_d_ready; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@76358.4]
  wire  asource_auto_in_d_valid; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@76358.4]
  wire [2:0] asource_auto_in_d_bits_opcode; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@76358.4]
  wire [1:0] asource_auto_in_d_bits_param; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@76358.4]
  wire [1:0] asource_auto_in_d_bits_size; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@76358.4]
  wire  asource_auto_in_d_bits_source; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@76358.4]
  wire  asource_auto_in_d_bits_sink; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@76358.4]
  wire  asource_auto_in_d_bits_denied; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@76358.4]
  wire [31:0] asource_auto_in_d_bits_data; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@76358.4]
  wire  asource_auto_in_d_bits_corrupt; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@76358.4]
  wire [2:0] asource_auto_out_a_mem_0_opcode; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@76358.4]
  wire [8:0] asource_auto_out_a_mem_0_address; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@76358.4]
  wire [3:0] asource_auto_out_a_mem_0_mask; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@76358.4]
  wire [31:0] asource_auto_out_a_mem_0_data; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@76358.4]
  wire  asource_auto_out_a_ridx; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@76358.4]
  wire  asource_auto_out_a_widx; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@76358.4]
  wire  asource_auto_out_a_safe_ridx_valid; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@76358.4]
  wire  asource_auto_out_a_safe_widx_valid; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@76358.4]
  wire  asource_auto_out_a_safe_source_reset_n; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@76358.4]
  wire [2:0] asource_auto_out_d_mem_0_opcode; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@76358.4]
  wire [1:0] asource_auto_out_d_mem_0_size; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@76358.4]
  wire  asource_auto_out_d_mem_0_source; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@76358.4]
  wire [31:0] asource_auto_out_d_mem_0_data; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@76358.4]
  wire  asource_auto_out_d_ridx; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@76358.4]
  wire  asource_auto_out_d_widx; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@76358.4]
  wire  asource_auto_out_d_safe_ridx_valid; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@76358.4]
  wire  asource_auto_out_d_safe_widx_valid; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@76358.4]
  wire  asource_auto_out_d_safe_sink_reset_n; // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@76358.4]
  wire  AsyncQueueSource_clock; // @[AsyncQueue.scala 192:24:freechips.rocketchip.system.DefaultRV32Config.fir@76372.4]
  wire  AsyncQueueSource_reset; // @[AsyncQueue.scala 192:24:freechips.rocketchip.system.DefaultRV32Config.fir@76372.4]
  wire  AsyncQueueSource_io_enq_ready; // @[AsyncQueue.scala 192:24:freechips.rocketchip.system.DefaultRV32Config.fir@76372.4]
  wire  AsyncQueueSource_io_enq_valid; // @[AsyncQueue.scala 192:24:freechips.rocketchip.system.DefaultRV32Config.fir@76372.4]
  wire  AsyncQueueSource_io_enq_bits_resumereq; // @[AsyncQueue.scala 192:24:freechips.rocketchip.system.DefaultRV32Config.fir@76372.4]
  wire [9:0] AsyncQueueSource_io_enq_bits_hartsel; // @[AsyncQueue.scala 192:24:freechips.rocketchip.system.DefaultRV32Config.fir@76372.4]
  wire  AsyncQueueSource_io_enq_bits_ackhavereset; // @[AsyncQueue.scala 192:24:freechips.rocketchip.system.DefaultRV32Config.fir@76372.4]
  wire  AsyncQueueSource_io_enq_bits_hrmask_0; // @[AsyncQueue.scala 192:24:freechips.rocketchip.system.DefaultRV32Config.fir@76372.4]
  wire  AsyncQueueSource_io_async_mem_0_resumereq; // @[AsyncQueue.scala 192:24:freechips.rocketchip.system.DefaultRV32Config.fir@76372.4]
  wire [9:0] AsyncQueueSource_io_async_mem_0_hartsel; // @[AsyncQueue.scala 192:24:freechips.rocketchip.system.DefaultRV32Config.fir@76372.4]
  wire  AsyncQueueSource_io_async_mem_0_ackhavereset; // @[AsyncQueue.scala 192:24:freechips.rocketchip.system.DefaultRV32Config.fir@76372.4]
  wire  AsyncQueueSource_io_async_mem_0_hrmask_0; // @[AsyncQueue.scala 192:24:freechips.rocketchip.system.DefaultRV32Config.fir@76372.4]
  wire  AsyncQueueSource_io_async_ridx; // @[AsyncQueue.scala 192:24:freechips.rocketchip.system.DefaultRV32Config.fir@76372.4]
  wire  AsyncQueueSource_io_async_widx; // @[AsyncQueue.scala 192:24:freechips.rocketchip.system.DefaultRV32Config.fir@76372.4]
  wire  AsyncQueueSource_io_async_safe_ridx_valid; // @[AsyncQueue.scala 192:24:freechips.rocketchip.system.DefaultRV32Config.fir@76372.4]
  wire  AsyncQueueSource_io_async_safe_widx_valid; // @[AsyncQueue.scala 192:24:freechips.rocketchip.system.DefaultRV32Config.fir@76372.4]
  wire  AsyncQueueSource_io_async_safe_source_reset_n; // @[AsyncQueue.scala 192:24:freechips.rocketchip.system.DefaultRV32Config.fir@76372.4]
  wire  AsyncQueueSource_io_async_safe_sink_reset_n; // @[AsyncQueue.scala 192:24:freechips.rocketchip.system.DefaultRV32Config.fir@76372.4]
  TLXbar_7 dmiXbar ( // @[Debug.scala 597:28:freechips.rocketchip.system.DefaultRV32Config.fir@76332.4]
    .clock(dmiXbar_clock),
    .reset(dmiXbar_reset),
    .auto_in_a_ready(dmiXbar_auto_in_a_ready),
    .auto_in_a_valid(dmiXbar_auto_in_a_valid),
    .auto_in_a_bits_opcode(dmiXbar_auto_in_a_bits_opcode),
    .auto_in_a_bits_address(dmiXbar_auto_in_a_bits_address),
    .auto_in_a_bits_mask(dmiXbar_auto_in_a_bits_mask),
    .auto_in_a_bits_data(dmiXbar_auto_in_a_bits_data),
    .auto_in_d_ready(dmiXbar_auto_in_d_ready),
    .auto_in_d_valid(dmiXbar_auto_in_d_valid),
    .auto_in_d_bits_denied(dmiXbar_auto_in_d_bits_denied),
    .auto_in_d_bits_data(dmiXbar_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(dmiXbar_auto_in_d_bits_corrupt),
    .auto_out_1_a_ready(dmiXbar_auto_out_1_a_ready),
    .auto_out_1_a_valid(dmiXbar_auto_out_1_a_valid),
    .auto_out_1_a_bits_opcode(dmiXbar_auto_out_1_a_bits_opcode),
    .auto_out_1_a_bits_address(dmiXbar_auto_out_1_a_bits_address),
    .auto_out_1_a_bits_mask(dmiXbar_auto_out_1_a_bits_mask),
    .auto_out_1_a_bits_data(dmiXbar_auto_out_1_a_bits_data),
    .auto_out_1_d_ready(dmiXbar_auto_out_1_d_ready),
    .auto_out_1_d_valid(dmiXbar_auto_out_1_d_valid),
    .auto_out_1_d_bits_opcode(dmiXbar_auto_out_1_d_bits_opcode),
    .auto_out_1_d_bits_data(dmiXbar_auto_out_1_d_bits_data),
    .auto_out_0_a_ready(dmiXbar_auto_out_0_a_ready),
    .auto_out_0_a_valid(dmiXbar_auto_out_0_a_valid),
    .auto_out_0_a_bits_opcode(dmiXbar_auto_out_0_a_bits_opcode),
    .auto_out_0_a_bits_address(dmiXbar_auto_out_0_a_bits_address),
    .auto_out_0_a_bits_mask(dmiXbar_auto_out_0_a_bits_mask),
    .auto_out_0_a_bits_data(dmiXbar_auto_out_0_a_bits_data),
    .auto_out_0_d_ready(dmiXbar_auto_out_0_d_ready),
    .auto_out_0_d_valid(dmiXbar_auto_out_0_d_valid),
    .auto_out_0_d_bits_opcode(dmiXbar_auto_out_0_d_bits_opcode),
    .auto_out_0_d_bits_param(dmiXbar_auto_out_0_d_bits_param),
    .auto_out_0_d_bits_size(dmiXbar_auto_out_0_d_bits_size),
    .auto_out_0_d_bits_source(dmiXbar_auto_out_0_d_bits_source),
    .auto_out_0_d_bits_sink(dmiXbar_auto_out_0_d_bits_sink),
    .auto_out_0_d_bits_denied(dmiXbar_auto_out_0_d_bits_denied),
    .auto_out_0_d_bits_data(dmiXbar_auto_out_0_d_bits_data),
    .auto_out_0_d_bits_corrupt(dmiXbar_auto_out_0_d_bits_corrupt)
  );
  DMIToTL dmi2tl ( // @[Debug.scala 600:28:freechips.rocketchip.system.DefaultRV32Config.fir@76338.4]
    .auto_out_a_ready(dmi2tl_auto_out_a_ready),
    .auto_out_a_valid(dmi2tl_auto_out_a_valid),
    .auto_out_a_bits_opcode(dmi2tl_auto_out_a_bits_opcode),
    .auto_out_a_bits_address(dmi2tl_auto_out_a_bits_address),
    .auto_out_a_bits_mask(dmi2tl_auto_out_a_bits_mask),
    .auto_out_a_bits_data(dmi2tl_auto_out_a_bits_data),
    .auto_out_d_ready(dmi2tl_auto_out_d_ready),
    .auto_out_d_valid(dmi2tl_auto_out_d_valid),
    .auto_out_d_bits_denied(dmi2tl_auto_out_d_bits_denied),
    .auto_out_d_bits_data(dmi2tl_auto_out_d_bits_data),
    .auto_out_d_bits_corrupt(dmi2tl_auto_out_d_bits_corrupt),
    .io_dmi_req_ready(dmi2tl_io_dmi_req_ready),
    .io_dmi_req_valid(dmi2tl_io_dmi_req_valid),
    .io_dmi_req_bits_addr(dmi2tl_io_dmi_req_bits_addr),
    .io_dmi_req_bits_data(dmi2tl_io_dmi_req_bits_data),
    .io_dmi_req_bits_op(dmi2tl_io_dmi_req_bits_op),
    .io_dmi_resp_ready(dmi2tl_io_dmi_resp_ready),
    .io_dmi_resp_valid(dmi2tl_io_dmi_resp_valid),
    .io_dmi_resp_bits_data(dmi2tl_io_dmi_resp_bits_data),
    .io_dmi_resp_bits_resp(dmi2tl_io_dmi_resp_bits_resp)
  );
  TLDebugModuleOuter dmOuter ( // @[Debug.scala 619:27:freechips.rocketchip.system.DefaultRV32Config.fir@76345.4]
    .clock(dmOuter_clock),
    .reset(dmOuter_reset),
    .auto_dmi_in_a_ready(dmOuter_auto_dmi_in_a_ready),
    .auto_dmi_in_a_valid(dmOuter_auto_dmi_in_a_valid),
    .auto_dmi_in_a_bits_opcode(dmOuter_auto_dmi_in_a_bits_opcode),
    .auto_dmi_in_a_bits_address(dmOuter_auto_dmi_in_a_bits_address),
    .auto_dmi_in_a_bits_mask(dmOuter_auto_dmi_in_a_bits_mask),
    .auto_dmi_in_a_bits_data(dmOuter_auto_dmi_in_a_bits_data),
    .auto_dmi_in_d_ready(dmOuter_auto_dmi_in_d_ready),
    .auto_dmi_in_d_valid(dmOuter_auto_dmi_in_d_valid),
    .auto_dmi_in_d_bits_opcode(dmOuter_auto_dmi_in_d_bits_opcode),
    .auto_dmi_in_d_bits_data(dmOuter_auto_dmi_in_d_bits_data),
    .auto_int_out_0(dmOuter_auto_int_out_0),
    .io_ctrl_ndreset(dmOuter_io_ctrl_ndreset),
    .io_ctrl_dmactive(dmOuter_io_ctrl_dmactive),
    .io_innerCtrl_valid(dmOuter_io_innerCtrl_valid),
    .io_innerCtrl_bits_resumereq(dmOuter_io_innerCtrl_bits_resumereq),
    .io_innerCtrl_bits_hartsel(dmOuter_io_innerCtrl_bits_hartsel),
    .io_innerCtrl_bits_ackhavereset(dmOuter_io_innerCtrl_bits_ackhavereset),
    .io_innerCtrl_bits_hrmask_0(dmOuter_io_innerCtrl_bits_hrmask_0),
    .io_hgDebugInt_0(dmOuter_io_hgDebugInt_0)
  );
  IntSyncCrossingSource intsource ( // @[Crossing.scala 26:31:freechips.rocketchip.system.DefaultRV32Config.fir@76352.4]
    .auto_in_0(intsource_auto_in_0),
    .auto_out_sync_0(intsource_auto_out_sync_0)
  );
  TLAsyncCrossingSource asource ( // @[AsyncCrossing.scala 87:29:freechips.rocketchip.system.DefaultRV32Config.fir@76358.4]
    .clock(asource_clock),
    .reset(asource_reset),
    .auto_in_a_ready(asource_auto_in_a_ready),
    .auto_in_a_valid(asource_auto_in_a_valid),
    .auto_in_a_bits_opcode(asource_auto_in_a_bits_opcode),
    .auto_in_a_bits_address(asource_auto_in_a_bits_address),
    .auto_in_a_bits_mask(asource_auto_in_a_bits_mask),
    .auto_in_a_bits_data(asource_auto_in_a_bits_data),
    .auto_in_d_ready(asource_auto_in_d_ready),
    .auto_in_d_valid(asource_auto_in_d_valid),
    .auto_in_d_bits_opcode(asource_auto_in_d_bits_opcode),
    .auto_in_d_bits_param(asource_auto_in_d_bits_param),
    .auto_in_d_bits_size(asource_auto_in_d_bits_size),
    .auto_in_d_bits_source(asource_auto_in_d_bits_source),
    .auto_in_d_bits_sink(asource_auto_in_d_bits_sink),
    .auto_in_d_bits_denied(asource_auto_in_d_bits_denied),
    .auto_in_d_bits_data(asource_auto_in_d_bits_data),
    .auto_in_d_bits_corrupt(asource_auto_in_d_bits_corrupt),
    .auto_out_a_mem_0_opcode(asource_auto_out_a_mem_0_opcode),
    .auto_out_a_mem_0_address(asource_auto_out_a_mem_0_address),
    .auto_out_a_mem_0_mask(asource_auto_out_a_mem_0_mask),
    .auto_out_a_mem_0_data(asource_auto_out_a_mem_0_data),
    .auto_out_a_ridx(asource_auto_out_a_ridx),
    .auto_out_a_widx(asource_auto_out_a_widx),
    .auto_out_a_safe_ridx_valid(asource_auto_out_a_safe_ridx_valid),
    .auto_out_a_safe_widx_valid(asource_auto_out_a_safe_widx_valid),
    .auto_out_a_safe_source_reset_n(asource_auto_out_a_safe_source_reset_n),
    .auto_out_d_mem_0_opcode(asource_auto_out_d_mem_0_opcode),
    .auto_out_d_mem_0_size(asource_auto_out_d_mem_0_size),
    .auto_out_d_mem_0_source(asource_auto_out_d_mem_0_source),
    .auto_out_d_mem_0_data(asource_auto_out_d_mem_0_data),
    .auto_out_d_ridx(asource_auto_out_d_ridx),
    .auto_out_d_widx(asource_auto_out_d_widx),
    .auto_out_d_safe_ridx_valid(asource_auto_out_d_safe_ridx_valid),
    .auto_out_d_safe_widx_valid(asource_auto_out_d_safe_widx_valid),
    .auto_out_d_safe_sink_reset_n(asource_auto_out_d_safe_sink_reset_n)
  );
  AsyncQueueSource_1 AsyncQueueSource ( // @[AsyncQueue.scala 192:24:freechips.rocketchip.system.DefaultRV32Config.fir@76372.4]
    .clock(AsyncQueueSource_clock),
    .reset(AsyncQueueSource_reset),
    .io_enq_ready(AsyncQueueSource_io_enq_ready),
    .io_enq_valid(AsyncQueueSource_io_enq_valid),
    .io_enq_bits_resumereq(AsyncQueueSource_io_enq_bits_resumereq),
    .io_enq_bits_hartsel(AsyncQueueSource_io_enq_bits_hartsel),
    .io_enq_bits_ackhavereset(AsyncQueueSource_io_enq_bits_ackhavereset),
    .io_enq_bits_hrmask_0(AsyncQueueSource_io_enq_bits_hrmask_0),
    .io_async_mem_0_resumereq(AsyncQueueSource_io_async_mem_0_resumereq),
    .io_async_mem_0_hartsel(AsyncQueueSource_io_async_mem_0_hartsel),
    .io_async_mem_0_ackhavereset(AsyncQueueSource_io_async_mem_0_ackhavereset),
    .io_async_mem_0_hrmask_0(AsyncQueueSource_io_async_mem_0_hrmask_0),
    .io_async_ridx(AsyncQueueSource_io_async_ridx),
    .io_async_widx(AsyncQueueSource_io_async_widx),
    .io_async_safe_ridx_valid(AsyncQueueSource_io_async_safe_ridx_valid),
    .io_async_safe_widx_valid(AsyncQueueSource_io_async_safe_widx_valid),
    .io_async_safe_source_reset_n(AsyncQueueSource_io_async_safe_source_reset_n),
    .io_async_safe_sink_reset_n(AsyncQueueSource_io_async_safe_sink_reset_n)
  );
  assign auto_asource_out_a_mem_0_opcode = asource_auto_out_a_mem_0_opcode; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@76369.4]
  assign auto_asource_out_a_mem_0_address = asource_auto_out_a_mem_0_address; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@76369.4]
  assign auto_asource_out_a_mem_0_mask = asource_auto_out_a_mem_0_mask; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@76369.4]
  assign auto_asource_out_a_mem_0_data = asource_auto_out_a_mem_0_data; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@76369.4]
  assign auto_asource_out_a_widx = asource_auto_out_a_widx; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@76369.4]
  assign auto_asource_out_a_safe_widx_valid = asource_auto_out_a_safe_widx_valid; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@76369.4]
  assign auto_asource_out_a_safe_source_reset_n = asource_auto_out_a_safe_source_reset_n; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@76369.4]
  assign auto_asource_out_d_ridx = asource_auto_out_d_ridx; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@76369.4]
  assign auto_asource_out_d_safe_ridx_valid = asource_auto_out_d_safe_ridx_valid; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@76369.4]
  assign auto_asource_out_d_safe_sink_reset_n = asource_auto_out_d_safe_sink_reset_n; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@76369.4]
  assign auto_intsource_out_sync_0 = intsource_auto_out_sync_0; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@76368.4]
  assign io_dmi_req_ready = dmi2tl_io_dmi_req_ready; // @[Debug.scala 639:41:freechips.rocketchip.system.DefaultRV32Config.fir@76370.4]
  assign io_dmi_resp_valid = dmi2tl_io_dmi_resp_valid; // @[Debug.scala 639:41:freechips.rocketchip.system.DefaultRV32Config.fir@76370.4]
  assign io_dmi_resp_bits_data = dmi2tl_io_dmi_resp_bits_data; // @[Debug.scala 639:41:freechips.rocketchip.system.DefaultRV32Config.fir@76370.4]
  assign io_dmi_resp_bits_resp = dmi2tl_io_dmi_resp_bits_resp; // @[Debug.scala 639:41:freechips.rocketchip.system.DefaultRV32Config.fir@76370.4]
  assign io_ctrl_ndreset = dmOuter_io_ctrl_ndreset; // @[Debug.scala 641:13:freechips.rocketchip.system.DefaultRV32Config.fir@76371.4]
  assign io_ctrl_dmactive = dmOuter_io_ctrl_dmactive; // @[Debug.scala 641:13:freechips.rocketchip.system.DefaultRV32Config.fir@76371.4]
  assign io_innerCtrl_mem_0_resumereq = AsyncQueueSource_io_async_mem_0_resumereq; // @[Debug.scala 642:18:freechips.rocketchip.system.DefaultRV32Config.fir@76378.4]
  assign io_innerCtrl_mem_0_hartsel = AsyncQueueSource_io_async_mem_0_hartsel; // @[Debug.scala 642:18:freechips.rocketchip.system.DefaultRV32Config.fir@76378.4]
  assign io_innerCtrl_mem_0_ackhavereset = AsyncQueueSource_io_async_mem_0_ackhavereset; // @[Debug.scala 642:18:freechips.rocketchip.system.DefaultRV32Config.fir@76378.4]
  assign io_innerCtrl_mem_0_hrmask_0 = AsyncQueueSource_io_async_mem_0_hrmask_0; // @[Debug.scala 642:18:freechips.rocketchip.system.DefaultRV32Config.fir@76378.4]
  assign io_innerCtrl_widx = AsyncQueueSource_io_async_widx; // @[Debug.scala 642:18:freechips.rocketchip.system.DefaultRV32Config.fir@76378.4]
  assign io_innerCtrl_safe_widx_valid = AsyncQueueSource_io_async_safe_widx_valid; // @[Debug.scala 642:18:freechips.rocketchip.system.DefaultRV32Config.fir@76378.4]
  assign io_innerCtrl_safe_source_reset_n = AsyncQueueSource_io_async_safe_source_reset_n; // @[Debug.scala 642:18:freechips.rocketchip.system.DefaultRV32Config.fir@76378.4]
  assign dmiXbar_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76336.4]
  assign dmiXbar_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76337.4]
  assign dmiXbar_auto_in_a_valid = dmi2tl_auto_out_a_valid; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@76366.4]
  assign dmiXbar_auto_in_a_bits_opcode = dmi2tl_auto_out_a_bits_opcode; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@76366.4]
  assign dmiXbar_auto_in_a_bits_address = dmi2tl_auto_out_a_bits_address; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@76366.4]
  assign dmiXbar_auto_in_a_bits_mask = dmi2tl_auto_out_a_bits_mask; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@76366.4]
  assign dmiXbar_auto_in_a_bits_data = dmi2tl_auto_out_a_bits_data; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@76366.4]
  assign dmiXbar_auto_in_d_ready = dmi2tl_auto_out_d_ready; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@76366.4]
  assign dmiXbar_auto_out_1_a_ready = dmOuter_auto_dmi_in_a_ready; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@76365.4]
  assign dmiXbar_auto_out_1_d_valid = dmOuter_auto_dmi_in_d_valid; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@76365.4]
  assign dmiXbar_auto_out_1_d_bits_opcode = dmOuter_auto_dmi_in_d_bits_opcode; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@76365.4]
  assign dmiXbar_auto_out_1_d_bits_data = dmOuter_auto_dmi_in_d_bits_data; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@76365.4]
  assign dmiXbar_auto_out_0_a_ready = asource_auto_in_a_ready; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@76364.4]
  assign dmiXbar_auto_out_0_d_valid = asource_auto_in_d_valid; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@76364.4]
  assign dmiXbar_auto_out_0_d_bits_opcode = asource_auto_in_d_bits_opcode; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@76364.4]
  assign dmiXbar_auto_out_0_d_bits_param = asource_auto_in_d_bits_param; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@76364.4]
  assign dmiXbar_auto_out_0_d_bits_size = asource_auto_in_d_bits_size; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@76364.4]
  assign dmiXbar_auto_out_0_d_bits_source = asource_auto_in_d_bits_source; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@76364.4]
  assign dmiXbar_auto_out_0_d_bits_sink = asource_auto_in_d_bits_sink; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@76364.4]
  assign dmiXbar_auto_out_0_d_bits_denied = asource_auto_in_d_bits_denied; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@76364.4]
  assign dmiXbar_auto_out_0_d_bits_data = asource_auto_in_d_bits_data; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@76364.4]
  assign dmiXbar_auto_out_0_d_bits_corrupt = asource_auto_in_d_bits_corrupt; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@76364.4]
  assign dmi2tl_auto_out_a_ready = dmiXbar_auto_in_a_ready; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@76366.4]
  assign dmi2tl_auto_out_d_valid = dmiXbar_auto_in_d_valid; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@76366.4]
  assign dmi2tl_auto_out_d_bits_denied = dmiXbar_auto_in_d_bits_denied; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@76366.4]
  assign dmi2tl_auto_out_d_bits_data = dmiXbar_auto_in_d_bits_data; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@76366.4]
  assign dmi2tl_auto_out_d_bits_corrupt = dmiXbar_auto_in_d_bits_corrupt; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@76366.4]
  assign dmi2tl_io_dmi_req_valid = io_dmi_req_valid; // @[Debug.scala 639:41:freechips.rocketchip.system.DefaultRV32Config.fir@76370.4]
  assign dmi2tl_io_dmi_req_bits_addr = io_dmi_req_bits_addr; // @[Debug.scala 639:41:freechips.rocketchip.system.DefaultRV32Config.fir@76370.4]
  assign dmi2tl_io_dmi_req_bits_data = io_dmi_req_bits_data; // @[Debug.scala 639:41:freechips.rocketchip.system.DefaultRV32Config.fir@76370.4]
  assign dmi2tl_io_dmi_req_bits_op = io_dmi_req_bits_op; // @[Debug.scala 639:41:freechips.rocketchip.system.DefaultRV32Config.fir@76370.4]
  assign dmi2tl_io_dmi_resp_ready = io_dmi_resp_ready; // @[Debug.scala 639:41:freechips.rocketchip.system.DefaultRV32Config.fir@76370.4]
  assign dmOuter_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76350.4]
  assign dmOuter_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76351.4]
  assign dmOuter_auto_dmi_in_a_valid = dmiXbar_auto_out_1_a_valid; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@76365.4]
  assign dmOuter_auto_dmi_in_a_bits_opcode = dmiXbar_auto_out_1_a_bits_opcode; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@76365.4]
  assign dmOuter_auto_dmi_in_a_bits_address = dmiXbar_auto_out_1_a_bits_address; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@76365.4]
  assign dmOuter_auto_dmi_in_a_bits_mask = dmiXbar_auto_out_1_a_bits_mask; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@76365.4]
  assign dmOuter_auto_dmi_in_a_bits_data = dmiXbar_auto_out_1_a_bits_data; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@76365.4]
  assign dmOuter_auto_dmi_in_d_ready = dmiXbar_auto_out_1_d_ready; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@76365.4]
  assign dmOuter_io_hgDebugInt_0 = io_hgDebugInt_0; // @[Debug.scala 643:34:freechips.rocketchip.system.DefaultRV32Config.fir@76379.4]
  assign intsource_auto_in_0 = dmOuter_auto_int_out_0; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@76367.4]
  assign asource_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76362.4]
  assign asource_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76363.4]
  assign asource_auto_in_a_valid = dmiXbar_auto_out_0_a_valid; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@76364.4]
  assign asource_auto_in_a_bits_opcode = dmiXbar_auto_out_0_a_bits_opcode; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@76364.4]
  assign asource_auto_in_a_bits_address = dmiXbar_auto_out_0_a_bits_address; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@76364.4]
  assign asource_auto_in_a_bits_mask = dmiXbar_auto_out_0_a_bits_mask; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@76364.4]
  assign asource_auto_in_a_bits_data = dmiXbar_auto_out_0_a_bits_data; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@76364.4]
  assign asource_auto_in_d_ready = dmiXbar_auto_out_0_d_ready; // @[LazyModule.scala 167:57:freechips.rocketchip.system.DefaultRV32Config.fir@76364.4]
  assign asource_auto_out_a_ridx = auto_asource_out_a_ridx; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@76369.4]
  assign asource_auto_out_a_safe_ridx_valid = auto_asource_out_a_safe_ridx_valid; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@76369.4]
  assign asource_auto_out_d_mem_0_opcode = auto_asource_out_d_mem_0_opcode; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@76369.4]
  assign asource_auto_out_d_mem_0_size = auto_asource_out_d_mem_0_size; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@76369.4]
  assign asource_auto_out_d_mem_0_source = auto_asource_out_d_mem_0_source; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@76369.4]
  assign asource_auto_out_d_mem_0_data = auto_asource_out_d_mem_0_data; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@76369.4]
  assign asource_auto_out_d_widx = auto_asource_out_d_widx; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@76369.4]
  assign asource_auto_out_d_safe_widx_valid = auto_asource_out_d_safe_widx_valid; // @[LazyModule.scala 173:49:freechips.rocketchip.system.DefaultRV32Config.fir@76369.4]
  assign AsyncQueueSource_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76373.4]
  assign AsyncQueueSource_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@76374.4]
  assign AsyncQueueSource_io_enq_valid = dmOuter_io_innerCtrl_valid; // @[AsyncQueue.scala 193:19:freechips.rocketchip.system.DefaultRV32Config.fir@76376.4]
  assign AsyncQueueSource_io_enq_bits_resumereq = dmOuter_io_innerCtrl_bits_resumereq; // @[AsyncQueue.scala 193:19:freechips.rocketchip.system.DefaultRV32Config.fir@76375.4]
  assign AsyncQueueSource_io_enq_bits_hartsel = dmOuter_io_innerCtrl_bits_hartsel; // @[AsyncQueue.scala 193:19:freechips.rocketchip.system.DefaultRV32Config.fir@76375.4]
  assign AsyncQueueSource_io_enq_bits_ackhavereset = dmOuter_io_innerCtrl_bits_ackhavereset; // @[AsyncQueue.scala 193:19:freechips.rocketchip.system.DefaultRV32Config.fir@76375.4]
  assign AsyncQueueSource_io_enq_bits_hrmask_0 = dmOuter_io_innerCtrl_bits_hrmask_0; // @[AsyncQueue.scala 193:19:freechips.rocketchip.system.DefaultRV32Config.fir@76375.4]
  assign AsyncQueueSource_io_async_ridx = io_innerCtrl_ridx; // @[Debug.scala 642:18:freechips.rocketchip.system.DefaultRV32Config.fir@76378.4]
  assign AsyncQueueSource_io_async_safe_ridx_valid = io_innerCtrl_safe_ridx_valid; // @[Debug.scala 642:18:freechips.rocketchip.system.DefaultRV32Config.fir@76378.4]
  assign AsyncQueueSource_io_async_safe_sink_reset_n = io_innerCtrl_safe_sink_reset_n; // @[Debug.scala 642:18:freechips.rocketchip.system.DefaultRV32Config.fir@76378.4]
endmodule

