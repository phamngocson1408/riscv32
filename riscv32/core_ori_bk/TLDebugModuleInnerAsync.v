module TLDebugModuleInnerAsync( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110287.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110288.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110289.4]
  input  [2:0]  auto_dmiXing_in_a_mem_0_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110290.4]
  input  [8:0]  auto_dmiXing_in_a_mem_0_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110290.4]
  input  [3:0]  auto_dmiXing_in_a_mem_0_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110290.4]
  input  [31:0] auto_dmiXing_in_a_mem_0_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110290.4]
  output        auto_dmiXing_in_a_ridx, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110290.4]
  input         auto_dmiXing_in_a_widx, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110290.4]
  output        auto_dmiXing_in_a_safe_ridx_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110290.4]
  input         auto_dmiXing_in_a_safe_widx_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110290.4]
  input         auto_dmiXing_in_a_safe_source_reset_n, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110290.4]
  output [2:0]  auto_dmiXing_in_d_mem_0_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110290.4]
  output [1:0]  auto_dmiXing_in_d_mem_0_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110290.4]
  output        auto_dmiXing_in_d_mem_0_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110290.4]
  output [31:0] auto_dmiXing_in_d_mem_0_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110290.4]
  input         auto_dmiXing_in_d_ridx, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110290.4]
  output        auto_dmiXing_in_d_widx, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110290.4]
  input         auto_dmiXing_in_d_safe_ridx_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110290.4]
  output        auto_dmiXing_in_d_safe_widx_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110290.4]
  input         auto_dmiXing_in_d_safe_sink_reset_n, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110290.4]
  output        auto_dmInner_tl_in_a_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110290.4]
  input         auto_dmInner_tl_in_a_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110290.4]
  input  [2:0]  auto_dmInner_tl_in_a_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110290.4]
  input  [2:0]  auto_dmInner_tl_in_a_bits_param, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110290.4]
  input  [1:0]  auto_dmInner_tl_in_a_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110290.4]
  input  [9:0]  auto_dmInner_tl_in_a_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110290.4]
  input  [11:0] auto_dmInner_tl_in_a_bits_address, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110290.4]
  input  [3:0]  auto_dmInner_tl_in_a_bits_mask, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110290.4]
  input  [31:0] auto_dmInner_tl_in_a_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110290.4]
  input         auto_dmInner_tl_in_a_bits_corrupt, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110290.4]
  input         auto_dmInner_tl_in_d_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110290.4]
  output        auto_dmInner_tl_in_d_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110290.4]
  output [2:0]  auto_dmInner_tl_in_d_bits_opcode, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110290.4]
  output [1:0]  auto_dmInner_tl_in_d_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110290.4]
  output [9:0]  auto_dmInner_tl_in_d_bits_source, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110290.4]
  output [31:0] auto_dmInner_tl_in_d_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110290.4]
  input         io_dmactive, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110291.4]
  input         io_innerCtrl_mem_0_resumereq, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110291.4]
  input  [9:0]  io_innerCtrl_mem_0_hartsel, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110291.4]
  input         io_innerCtrl_mem_0_ackhavereset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110291.4]
  input         io_innerCtrl_mem_0_hrmask_0, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110291.4]
  output        io_innerCtrl_ridx, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110291.4]
  input         io_innerCtrl_widx, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110291.4]
  output        io_innerCtrl_safe_ridx_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110291.4]
  input         io_innerCtrl_safe_widx_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110291.4]
  input         io_innerCtrl_safe_source_reset_n, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110291.4]
  output        io_innerCtrl_safe_sink_reset_n, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110291.4]
  output        io_hgDebugInt_0 // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110291.4]
);
  wire  dmInner_clock; // @[Debug.scala 1635:27:freechips.rocketchip.system.DefaultRV32Config.fir@110297.4]
  wire  dmInner_reset; // @[Debug.scala 1635:27:freechips.rocketchip.system.DefaultRV32Config.fir@110297.4]
  wire  dmInner_auto_tl_in_a_ready; // @[Debug.scala 1635:27:freechips.rocketchip.system.DefaultRV32Config.fir@110297.4]
  wire  dmInner_auto_tl_in_a_valid; // @[Debug.scala 1635:27:freechips.rocketchip.system.DefaultRV32Config.fir@110297.4]
  wire [2:0] dmInner_auto_tl_in_a_bits_opcode; // @[Debug.scala 1635:27:freechips.rocketchip.system.DefaultRV32Config.fir@110297.4]
  wire [2:0] dmInner_auto_tl_in_a_bits_param; // @[Debug.scala 1635:27:freechips.rocketchip.system.DefaultRV32Config.fir@110297.4]
  wire [1:0] dmInner_auto_tl_in_a_bits_size; // @[Debug.scala 1635:27:freechips.rocketchip.system.DefaultRV32Config.fir@110297.4]
  wire [9:0] dmInner_auto_tl_in_a_bits_source; // @[Debug.scala 1635:27:freechips.rocketchip.system.DefaultRV32Config.fir@110297.4]
  wire [11:0] dmInner_auto_tl_in_a_bits_address; // @[Debug.scala 1635:27:freechips.rocketchip.system.DefaultRV32Config.fir@110297.4]
  wire [3:0] dmInner_auto_tl_in_a_bits_mask; // @[Debug.scala 1635:27:freechips.rocketchip.system.DefaultRV32Config.fir@110297.4]
  wire [31:0] dmInner_auto_tl_in_a_bits_data; // @[Debug.scala 1635:27:freechips.rocketchip.system.DefaultRV32Config.fir@110297.4]
  wire  dmInner_auto_tl_in_a_bits_corrupt; // @[Debug.scala 1635:27:freechips.rocketchip.system.DefaultRV32Config.fir@110297.4]
  wire  dmInner_auto_tl_in_d_ready; // @[Debug.scala 1635:27:freechips.rocketchip.system.DefaultRV32Config.fir@110297.4]
  wire  dmInner_auto_tl_in_d_valid; // @[Debug.scala 1635:27:freechips.rocketchip.system.DefaultRV32Config.fir@110297.4]
  wire [2:0] dmInner_auto_tl_in_d_bits_opcode; // @[Debug.scala 1635:27:freechips.rocketchip.system.DefaultRV32Config.fir@110297.4]
  wire [1:0] dmInner_auto_tl_in_d_bits_size; // @[Debug.scala 1635:27:freechips.rocketchip.system.DefaultRV32Config.fir@110297.4]
  wire [9:0] dmInner_auto_tl_in_d_bits_source; // @[Debug.scala 1635:27:freechips.rocketchip.system.DefaultRV32Config.fir@110297.4]
  wire [31:0] dmInner_auto_tl_in_d_bits_data; // @[Debug.scala 1635:27:freechips.rocketchip.system.DefaultRV32Config.fir@110297.4]
  wire  dmInner_auto_dmi_in_a_ready; // @[Debug.scala 1635:27:freechips.rocketchip.system.DefaultRV32Config.fir@110297.4]
  wire  dmInner_auto_dmi_in_a_valid; // @[Debug.scala 1635:27:freechips.rocketchip.system.DefaultRV32Config.fir@110297.4]
  wire [2:0] dmInner_auto_dmi_in_a_bits_opcode; // @[Debug.scala 1635:27:freechips.rocketchip.system.DefaultRV32Config.fir@110297.4]
  wire [2:0] dmInner_auto_dmi_in_a_bits_param; // @[Debug.scala 1635:27:freechips.rocketchip.system.DefaultRV32Config.fir@110297.4]
  wire [1:0] dmInner_auto_dmi_in_a_bits_size; // @[Debug.scala 1635:27:freechips.rocketchip.system.DefaultRV32Config.fir@110297.4]
  wire  dmInner_auto_dmi_in_a_bits_source; // @[Debug.scala 1635:27:freechips.rocketchip.system.DefaultRV32Config.fir@110297.4]
  wire [8:0] dmInner_auto_dmi_in_a_bits_address; // @[Debug.scala 1635:27:freechips.rocketchip.system.DefaultRV32Config.fir@110297.4]
  wire [3:0] dmInner_auto_dmi_in_a_bits_mask; // @[Debug.scala 1635:27:freechips.rocketchip.system.DefaultRV32Config.fir@110297.4]
  wire [31:0] dmInner_auto_dmi_in_a_bits_data; // @[Debug.scala 1635:27:freechips.rocketchip.system.DefaultRV32Config.fir@110297.4]
  wire  dmInner_auto_dmi_in_a_bits_corrupt; // @[Debug.scala 1635:27:freechips.rocketchip.system.DefaultRV32Config.fir@110297.4]
  wire  dmInner_auto_dmi_in_d_ready; // @[Debug.scala 1635:27:freechips.rocketchip.system.DefaultRV32Config.fir@110297.4]
  wire  dmInner_auto_dmi_in_d_valid; // @[Debug.scala 1635:27:freechips.rocketchip.system.DefaultRV32Config.fir@110297.4]
  wire [2:0] dmInner_auto_dmi_in_d_bits_opcode; // @[Debug.scala 1635:27:freechips.rocketchip.system.DefaultRV32Config.fir@110297.4]
  wire [1:0] dmInner_auto_dmi_in_d_bits_size; // @[Debug.scala 1635:27:freechips.rocketchip.system.DefaultRV32Config.fir@110297.4]
  wire  dmInner_auto_dmi_in_d_bits_source; // @[Debug.scala 1635:27:freechips.rocketchip.system.DefaultRV32Config.fir@110297.4]
  wire [31:0] dmInner_auto_dmi_in_d_bits_data; // @[Debug.scala 1635:27:freechips.rocketchip.system.DefaultRV32Config.fir@110297.4]
  wire  dmInner_io_dmactive; // @[Debug.scala 1635:27:freechips.rocketchip.system.DefaultRV32Config.fir@110297.4]
  wire  dmInner_io_innerCtrl_ready; // @[Debug.scala 1635:27:freechips.rocketchip.system.DefaultRV32Config.fir@110297.4]
  wire  dmInner_io_innerCtrl_valid; // @[Debug.scala 1635:27:freechips.rocketchip.system.DefaultRV32Config.fir@110297.4]
  wire  dmInner_io_innerCtrl_bits_resumereq; // @[Debug.scala 1635:27:freechips.rocketchip.system.DefaultRV32Config.fir@110297.4]
  wire [9:0] dmInner_io_innerCtrl_bits_hartsel; // @[Debug.scala 1635:27:freechips.rocketchip.system.DefaultRV32Config.fir@110297.4]
  wire  dmInner_io_innerCtrl_bits_ackhavereset; // @[Debug.scala 1635:27:freechips.rocketchip.system.DefaultRV32Config.fir@110297.4]
  wire  dmInner_io_innerCtrl_bits_hrmask_0; // @[Debug.scala 1635:27:freechips.rocketchip.system.DefaultRV32Config.fir@110297.4]
  wire  dmInner_io_hgDebugInt_0; // @[Debug.scala 1635:27:freechips.rocketchip.system.DefaultRV32Config.fir@110297.4]
  wire  dmiXing_clock; // @[Debug.scala 1636:27:freechips.rocketchip.system.DefaultRV32Config.fir@110304.4]
  wire [2:0] dmiXing_auto_in_a_mem_0_opcode; // @[Debug.scala 1636:27:freechips.rocketchip.system.DefaultRV32Config.fir@110304.4]
  wire [8:0] dmiXing_auto_in_a_mem_0_address; // @[Debug.scala 1636:27:freechips.rocketchip.system.DefaultRV32Config.fir@110304.4]
  wire [3:0] dmiXing_auto_in_a_mem_0_mask; // @[Debug.scala 1636:27:freechips.rocketchip.system.DefaultRV32Config.fir@110304.4]
  wire [31:0] dmiXing_auto_in_a_mem_0_data; // @[Debug.scala 1636:27:freechips.rocketchip.system.DefaultRV32Config.fir@110304.4]
  wire  dmiXing_auto_in_a_ridx; // @[Debug.scala 1636:27:freechips.rocketchip.system.DefaultRV32Config.fir@110304.4]
  wire  dmiXing_auto_in_a_widx; // @[Debug.scala 1636:27:freechips.rocketchip.system.DefaultRV32Config.fir@110304.4]
  wire  dmiXing_auto_in_a_safe_ridx_valid; // @[Debug.scala 1636:27:freechips.rocketchip.system.DefaultRV32Config.fir@110304.4]
  wire  dmiXing_auto_in_a_safe_widx_valid; // @[Debug.scala 1636:27:freechips.rocketchip.system.DefaultRV32Config.fir@110304.4]
  wire  dmiXing_auto_in_a_safe_source_reset_n; // @[Debug.scala 1636:27:freechips.rocketchip.system.DefaultRV32Config.fir@110304.4]
  wire [2:0] dmiXing_auto_in_d_mem_0_opcode; // @[Debug.scala 1636:27:freechips.rocketchip.system.DefaultRV32Config.fir@110304.4]
  wire [1:0] dmiXing_auto_in_d_mem_0_size; // @[Debug.scala 1636:27:freechips.rocketchip.system.DefaultRV32Config.fir@110304.4]
  wire  dmiXing_auto_in_d_mem_0_source; // @[Debug.scala 1636:27:freechips.rocketchip.system.DefaultRV32Config.fir@110304.4]
  wire [31:0] dmiXing_auto_in_d_mem_0_data; // @[Debug.scala 1636:27:freechips.rocketchip.system.DefaultRV32Config.fir@110304.4]
  wire  dmiXing_auto_in_d_ridx; // @[Debug.scala 1636:27:freechips.rocketchip.system.DefaultRV32Config.fir@110304.4]
  wire  dmiXing_auto_in_d_widx; // @[Debug.scala 1636:27:freechips.rocketchip.system.DefaultRV32Config.fir@110304.4]
  wire  dmiXing_auto_in_d_safe_ridx_valid; // @[Debug.scala 1636:27:freechips.rocketchip.system.DefaultRV32Config.fir@110304.4]
  wire  dmiXing_auto_in_d_safe_widx_valid; // @[Debug.scala 1636:27:freechips.rocketchip.system.DefaultRV32Config.fir@110304.4]
  wire  dmiXing_auto_in_d_safe_sink_reset_n; // @[Debug.scala 1636:27:freechips.rocketchip.system.DefaultRV32Config.fir@110304.4]
  wire  dmiXing_auto_out_a_ready; // @[Debug.scala 1636:27:freechips.rocketchip.system.DefaultRV32Config.fir@110304.4]
  wire  dmiXing_auto_out_a_valid; // @[Debug.scala 1636:27:freechips.rocketchip.system.DefaultRV32Config.fir@110304.4]
  wire [2:0] dmiXing_auto_out_a_bits_opcode; // @[Debug.scala 1636:27:freechips.rocketchip.system.DefaultRV32Config.fir@110304.4]
  wire [2:0] dmiXing_auto_out_a_bits_param; // @[Debug.scala 1636:27:freechips.rocketchip.system.DefaultRV32Config.fir@110304.4]
  wire [1:0] dmiXing_auto_out_a_bits_size; // @[Debug.scala 1636:27:freechips.rocketchip.system.DefaultRV32Config.fir@110304.4]
  wire  dmiXing_auto_out_a_bits_source; // @[Debug.scala 1636:27:freechips.rocketchip.system.DefaultRV32Config.fir@110304.4]
  wire [8:0] dmiXing_auto_out_a_bits_address; // @[Debug.scala 1636:27:freechips.rocketchip.system.DefaultRV32Config.fir@110304.4]
  wire [3:0] dmiXing_auto_out_a_bits_mask; // @[Debug.scala 1636:27:freechips.rocketchip.system.DefaultRV32Config.fir@110304.4]
  wire [31:0] dmiXing_auto_out_a_bits_data; // @[Debug.scala 1636:27:freechips.rocketchip.system.DefaultRV32Config.fir@110304.4]
  wire  dmiXing_auto_out_a_bits_corrupt; // @[Debug.scala 1636:27:freechips.rocketchip.system.DefaultRV32Config.fir@110304.4]
  wire  dmiXing_auto_out_d_ready; // @[Debug.scala 1636:27:freechips.rocketchip.system.DefaultRV32Config.fir@110304.4]
  wire  dmiXing_auto_out_d_valid; // @[Debug.scala 1636:27:freechips.rocketchip.system.DefaultRV32Config.fir@110304.4]
  wire [2:0] dmiXing_auto_out_d_bits_opcode; // @[Debug.scala 1636:27:freechips.rocketchip.system.DefaultRV32Config.fir@110304.4]
  wire [1:0] dmiXing_auto_out_d_bits_size; // @[Debug.scala 1636:27:freechips.rocketchip.system.DefaultRV32Config.fir@110304.4]
  wire  dmiXing_auto_out_d_bits_source; // @[Debug.scala 1636:27:freechips.rocketchip.system.DefaultRV32Config.fir@110304.4]
  wire [31:0] dmiXing_auto_out_d_bits_data; // @[Debug.scala 1636:27:freechips.rocketchip.system.DefaultRV32Config.fir@110304.4]
  wire  dmactiveSync_clock; // @[ResetCatchAndSync.scala 39:28:freechips.rocketchip.system.DefaultRV32Config.fir@110315.4]
  wire  dmactiveSync_reset; // @[ResetCatchAndSync.scala 39:28:freechips.rocketchip.system.DefaultRV32Config.fir@110315.4]
  wire  dmactiveSync_io_sync_reset; // @[ResetCatchAndSync.scala 39:28:freechips.rocketchip.system.DefaultRV32Config.fir@110315.4]
  wire  debug_clock_gate_in; // @[ClockGate.scala 23:20:freechips.rocketchip.system.DefaultRV32Config.fir@110325.4]
  wire  debug_clock_gate_en; // @[ClockGate.scala 23:20:freechips.rocketchip.system.DefaultRV32Config.fir@110325.4]
  wire  debug_clock_gate_out; // @[ClockGate.scala 23:20:freechips.rocketchip.system.DefaultRV32Config.fir@110325.4]
  wire  AsyncQueueSink_clock; // @[AsyncQueue.scala 183:22:freechips.rocketchip.system.DefaultRV32Config.fir@110334.4]
  wire  AsyncQueueSink_reset; // @[AsyncQueue.scala 183:22:freechips.rocketchip.system.DefaultRV32Config.fir@110334.4]
  wire  AsyncQueueSink_io_deq_valid; // @[AsyncQueue.scala 183:22:freechips.rocketchip.system.DefaultRV32Config.fir@110334.4]
  wire  AsyncQueueSink_io_deq_bits_resumereq; // @[AsyncQueue.scala 183:22:freechips.rocketchip.system.DefaultRV32Config.fir@110334.4]
  wire [9:0] AsyncQueueSink_io_deq_bits_hartsel; // @[AsyncQueue.scala 183:22:freechips.rocketchip.system.DefaultRV32Config.fir@110334.4]
  wire  AsyncQueueSink_io_deq_bits_ackhavereset; // @[AsyncQueue.scala 183:22:freechips.rocketchip.system.DefaultRV32Config.fir@110334.4]
  wire  AsyncQueueSink_io_deq_bits_hasel; // @[AsyncQueue.scala 183:22:freechips.rocketchip.system.DefaultRV32Config.fir@110334.4]
  wire  AsyncQueueSink_io_deq_bits_hamask_0; // @[AsyncQueue.scala 183:22:freechips.rocketchip.system.DefaultRV32Config.fir@110334.4]
  wire  AsyncQueueSink_io_deq_bits_hrmask_0; // @[AsyncQueue.scala 183:22:freechips.rocketchip.system.DefaultRV32Config.fir@110334.4]
  wire  AsyncQueueSink_io_async_mem_0_resumereq; // @[AsyncQueue.scala 183:22:freechips.rocketchip.system.DefaultRV32Config.fir@110334.4]
  wire [9:0] AsyncQueueSink_io_async_mem_0_hartsel; // @[AsyncQueue.scala 183:22:freechips.rocketchip.system.DefaultRV32Config.fir@110334.4]
  wire  AsyncQueueSink_io_async_mem_0_ackhavereset; // @[AsyncQueue.scala 183:22:freechips.rocketchip.system.DefaultRV32Config.fir@110334.4]
  wire  AsyncQueueSink_io_async_mem_0_hrmask_0; // @[AsyncQueue.scala 183:22:freechips.rocketchip.system.DefaultRV32Config.fir@110334.4]
  wire  AsyncQueueSink_io_async_ridx; // @[AsyncQueue.scala 183:22:freechips.rocketchip.system.DefaultRV32Config.fir@110334.4]
  wire  AsyncQueueSink_io_async_widx; // @[AsyncQueue.scala 183:22:freechips.rocketchip.system.DefaultRV32Config.fir@110334.4]
  wire  AsyncQueueSink_io_async_safe_ridx_valid; // @[AsyncQueue.scala 183:22:freechips.rocketchip.system.DefaultRV32Config.fir@110334.4]
  wire  AsyncQueueSink_io_async_safe_widx_valid; // @[AsyncQueue.scala 183:22:freechips.rocketchip.system.DefaultRV32Config.fir@110334.4]
  wire  AsyncQueueSink_io_async_safe_source_reset_n; // @[AsyncQueue.scala 183:22:freechips.rocketchip.system.DefaultRV32Config.fir@110334.4]
  wire  AsyncQueueSink_io_async_safe_sink_reset_n; // @[AsyncQueue.scala 183:22:freechips.rocketchip.system.DefaultRV32Config.fir@110334.4]
  wire  dmactive_synced; // @[Debug.scala 1663:27:freechips.rocketchip.system.DefaultRV32Config.fir@110320.4]
  reg  clock_en; // @[Debug.scala 1667:27:freechips.rocketchip.system.DefaultRV32Config.fir@110323.4]
  reg [31:0] _RAND_0;
  TLDebugModuleInner dmInner ( // @[Debug.scala 1635:27:freechips.rocketchip.system.DefaultRV32Config.fir@110297.4]
    .clock(dmInner_clock),
    .reset(dmInner_reset),
    .auto_tl_in_a_ready(dmInner_auto_tl_in_a_ready),
    .auto_tl_in_a_valid(dmInner_auto_tl_in_a_valid),
    .auto_tl_in_a_bits_opcode(dmInner_auto_tl_in_a_bits_opcode),
    .auto_tl_in_a_bits_param(dmInner_auto_tl_in_a_bits_param),
    .auto_tl_in_a_bits_size(dmInner_auto_tl_in_a_bits_size),
    .auto_tl_in_a_bits_source(dmInner_auto_tl_in_a_bits_source),
    .auto_tl_in_a_bits_address(dmInner_auto_tl_in_a_bits_address),
    .auto_tl_in_a_bits_mask(dmInner_auto_tl_in_a_bits_mask),
    .auto_tl_in_a_bits_data(dmInner_auto_tl_in_a_bits_data),
    .auto_tl_in_a_bits_corrupt(dmInner_auto_tl_in_a_bits_corrupt),
    .auto_tl_in_d_ready(dmInner_auto_tl_in_d_ready),
    .auto_tl_in_d_valid(dmInner_auto_tl_in_d_valid),
    .auto_tl_in_d_bits_opcode(dmInner_auto_tl_in_d_bits_opcode),
    .auto_tl_in_d_bits_size(dmInner_auto_tl_in_d_bits_size),
    .auto_tl_in_d_bits_source(dmInner_auto_tl_in_d_bits_source),
    .auto_tl_in_d_bits_data(dmInner_auto_tl_in_d_bits_data),
    .auto_dmi_in_a_ready(dmInner_auto_dmi_in_a_ready),
    .auto_dmi_in_a_valid(dmInner_auto_dmi_in_a_valid),
    .auto_dmi_in_a_bits_opcode(dmInner_auto_dmi_in_a_bits_opcode),
    .auto_dmi_in_a_bits_param(dmInner_auto_dmi_in_a_bits_param),
    .auto_dmi_in_a_bits_size(dmInner_auto_dmi_in_a_bits_size),
    .auto_dmi_in_a_bits_source(dmInner_auto_dmi_in_a_bits_source),
    .auto_dmi_in_a_bits_address(dmInner_auto_dmi_in_a_bits_address),
    .auto_dmi_in_a_bits_mask(dmInner_auto_dmi_in_a_bits_mask),
    .auto_dmi_in_a_bits_data(dmInner_auto_dmi_in_a_bits_data),
    .auto_dmi_in_a_bits_corrupt(dmInner_auto_dmi_in_a_bits_corrupt),
    .auto_dmi_in_d_ready(dmInner_auto_dmi_in_d_ready),
    .auto_dmi_in_d_valid(dmInner_auto_dmi_in_d_valid),
    .auto_dmi_in_d_bits_opcode(dmInner_auto_dmi_in_d_bits_opcode),
    .auto_dmi_in_d_bits_size(dmInner_auto_dmi_in_d_bits_size),
    .auto_dmi_in_d_bits_source(dmInner_auto_dmi_in_d_bits_source),
    .auto_dmi_in_d_bits_data(dmInner_auto_dmi_in_d_bits_data),
    .io_dmactive(dmInner_io_dmactive),
    .io_innerCtrl_ready(dmInner_io_innerCtrl_ready),
    .io_innerCtrl_valid(dmInner_io_innerCtrl_valid),
    .io_innerCtrl_bits_resumereq(dmInner_io_innerCtrl_bits_resumereq),
    .io_innerCtrl_bits_hartsel(dmInner_io_innerCtrl_bits_hartsel),
    .io_innerCtrl_bits_ackhavereset(dmInner_io_innerCtrl_bits_ackhavereset),
    .io_innerCtrl_bits_hrmask_0(dmInner_io_innerCtrl_bits_hrmask_0),
    .io_hgDebugInt_0(dmInner_io_hgDebugInt_0)
  );
  TLAsyncCrossingSink dmiXing ( // @[Debug.scala 1636:27:freechips.rocketchip.system.DefaultRV32Config.fir@110304.4]
    .clock(dmiXing_clock),
    .auto_in_a_mem_0_opcode(dmiXing_auto_in_a_mem_0_opcode),
    .auto_in_a_mem_0_address(dmiXing_auto_in_a_mem_0_address),
    .auto_in_a_mem_0_mask(dmiXing_auto_in_a_mem_0_mask),
    .auto_in_a_mem_0_data(dmiXing_auto_in_a_mem_0_data),
    .auto_in_a_ridx(dmiXing_auto_in_a_ridx),
    .auto_in_a_widx(dmiXing_auto_in_a_widx),
    .auto_in_a_safe_ridx_valid(dmiXing_auto_in_a_safe_ridx_valid),
    .auto_in_a_safe_widx_valid(dmiXing_auto_in_a_safe_widx_valid),
    .auto_in_a_safe_source_reset_n(dmiXing_auto_in_a_safe_source_reset_n),
    .auto_in_d_mem_0_opcode(dmiXing_auto_in_d_mem_0_opcode),
    .auto_in_d_mem_0_size(dmiXing_auto_in_d_mem_0_size),
    .auto_in_d_mem_0_source(dmiXing_auto_in_d_mem_0_source),
    .auto_in_d_mem_0_data(dmiXing_auto_in_d_mem_0_data),
    .auto_in_d_ridx(dmiXing_auto_in_d_ridx),
    .auto_in_d_widx(dmiXing_auto_in_d_widx),
    .auto_in_d_safe_ridx_valid(dmiXing_auto_in_d_safe_ridx_valid),
    .auto_in_d_safe_widx_valid(dmiXing_auto_in_d_safe_widx_valid),
    .auto_in_d_safe_sink_reset_n(dmiXing_auto_in_d_safe_sink_reset_n),
    .auto_out_a_ready(dmiXing_auto_out_a_ready),
    .auto_out_a_valid(dmiXing_auto_out_a_valid),
    .auto_out_a_bits_opcode(dmiXing_auto_out_a_bits_opcode),
    .auto_out_a_bits_param(dmiXing_auto_out_a_bits_param),
    .auto_out_a_bits_size(dmiXing_auto_out_a_bits_size),
    .auto_out_a_bits_source(dmiXing_auto_out_a_bits_source),
    .auto_out_a_bits_address(dmiXing_auto_out_a_bits_address),
    .auto_out_a_bits_mask(dmiXing_auto_out_a_bits_mask),
    .auto_out_a_bits_data(dmiXing_auto_out_a_bits_data),
    .auto_out_a_bits_corrupt(dmiXing_auto_out_a_bits_corrupt),
    .auto_out_d_ready(dmiXing_auto_out_d_ready),
    .auto_out_d_valid(dmiXing_auto_out_d_valid),
    .auto_out_d_bits_opcode(dmiXing_auto_out_d_bits_opcode),
    .auto_out_d_bits_size(dmiXing_auto_out_d_bits_size),
    .auto_out_d_bits_source(dmiXing_auto_out_d_bits_source),
    .auto_out_d_bits_data(dmiXing_auto_out_d_bits_data)
  );
  ResetCatchAndSync_d3 dmactiveSync ( // @[ResetCatchAndSync.scala 39:28:freechips.rocketchip.system.DefaultRV32Config.fir@110315.4]
    .clock(dmactiveSync_clock),
    .reset(dmactiveSync_reset),
    .io_sync_reset(dmactiveSync_io_sync_reset)
  );
  EICG_wrapper debug_clock_gate ( // @[ClockGate.scala 23:20:freechips.rocketchip.system.DefaultRV32Config.fir@110325.4]
    .in(debug_clock_gate_in),
    .en(debug_clock_gate_en),
    .out(debug_clock_gate_out)
  );
  AsyncQueueSink_2 AsyncQueueSink ( // @[AsyncQueue.scala 183:22:freechips.rocketchip.system.DefaultRV32Config.fir@110334.4]
    .clock(AsyncQueueSink_clock),
    .reset(AsyncQueueSink_reset),
    .io_deq_valid(AsyncQueueSink_io_deq_valid),
    .io_deq_bits_resumereq(AsyncQueueSink_io_deq_bits_resumereq),
    .io_deq_bits_hartsel(AsyncQueueSink_io_deq_bits_hartsel),
    .io_deq_bits_ackhavereset(AsyncQueueSink_io_deq_bits_ackhavereset),
    .io_deq_bits_hasel(AsyncQueueSink_io_deq_bits_hasel),
    .io_deq_bits_hamask_0(AsyncQueueSink_io_deq_bits_hamask_0),
    .io_deq_bits_hrmask_0(AsyncQueueSink_io_deq_bits_hrmask_0),
    .io_async_mem_0_resumereq(AsyncQueueSink_io_async_mem_0_resumereq),
    .io_async_mem_0_hartsel(AsyncQueueSink_io_async_mem_0_hartsel),
    .io_async_mem_0_ackhavereset(AsyncQueueSink_io_async_mem_0_ackhavereset),
    .io_async_mem_0_hrmask_0(AsyncQueueSink_io_async_mem_0_hrmask_0),
    .io_async_ridx(AsyncQueueSink_io_async_ridx),
    .io_async_widx(AsyncQueueSink_io_async_widx),
    .io_async_safe_ridx_valid(AsyncQueueSink_io_async_safe_ridx_valid),
    .io_async_safe_widx_valid(AsyncQueueSink_io_async_safe_widx_valid),
    .io_async_safe_source_reset_n(AsyncQueueSink_io_async_safe_source_reset_n),
    .io_async_safe_sink_reset_n(AsyncQueueSink_io_async_safe_sink_reset_n)
  );
  assign dmactive_synced = ~ dmactiveSync_io_sync_reset; // @[Debug.scala 1663:27:freechips.rocketchip.system.DefaultRV32Config.fir@110320.4]
  assign auto_dmiXing_in_a_ridx = dmiXing_auto_in_a_ridx; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@110313.4]
  assign auto_dmiXing_in_a_safe_ridx_valid = dmiXing_auto_in_a_safe_ridx_valid; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@110313.4]
  assign auto_dmiXing_in_d_mem_0_opcode = dmiXing_auto_in_d_mem_0_opcode; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@110313.4]
  assign auto_dmiXing_in_d_mem_0_size = dmiXing_auto_in_d_mem_0_size; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@110313.4]
  assign auto_dmiXing_in_d_mem_0_source = dmiXing_auto_in_d_mem_0_source; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@110313.4]
  assign auto_dmiXing_in_d_mem_0_data = dmiXing_auto_in_d_mem_0_data; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@110313.4]
  assign auto_dmiXing_in_d_widx = dmiXing_auto_in_d_widx; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@110313.4]
  assign auto_dmiXing_in_d_safe_widx_valid = dmiXing_auto_in_d_safe_widx_valid; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@110313.4]
  assign auto_dmInner_tl_in_a_ready = dmInner_auto_tl_in_a_ready; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@110311.4]
  assign auto_dmInner_tl_in_d_valid = dmInner_auto_tl_in_d_valid; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@110311.4]
  assign auto_dmInner_tl_in_d_bits_opcode = dmInner_auto_tl_in_d_bits_opcode; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@110311.4]
  assign auto_dmInner_tl_in_d_bits_size = dmInner_auto_tl_in_d_bits_size; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@110311.4]
  assign auto_dmInner_tl_in_d_bits_source = dmInner_auto_tl_in_d_bits_source; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@110311.4]
  assign auto_dmInner_tl_in_d_bits_data = dmInner_auto_tl_in_d_bits_data; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@110311.4]
  assign io_innerCtrl_ridx = AsyncQueueSink_io_async_ridx; // @[AsyncQueue.scala 184:19:freechips.rocketchip.system.DefaultRV32Config.fir@110342.4]
  assign io_innerCtrl_safe_ridx_valid = AsyncQueueSink_io_async_safe_ridx_valid; // @[AsyncQueue.scala 184:19:freechips.rocketchip.system.DefaultRV32Config.fir@110340.4]
  assign io_innerCtrl_safe_sink_reset_n = AsyncQueueSink_io_async_safe_sink_reset_n; // @[AsyncQueue.scala 184:19:freechips.rocketchip.system.DefaultRV32Config.fir@110337.4]
  assign io_hgDebugInt_0 = dmInner_io_hgDebugInt_0; // @[Debug.scala 1681:21:freechips.rocketchip.system.DefaultRV32Config.fir@110346.4]
  assign dmInner_clock = debug_clock_gate_out; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110302.4 Debug.scala 1675:28:freechips.rocketchip.system.DefaultRV32Config.fir@110331.4]
  assign dmInner_reset = reset; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110303.4]
  assign dmInner_auto_tl_in_a_valid = auto_dmInner_tl_in_a_valid; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@110311.4]
  assign dmInner_auto_tl_in_a_bits_opcode = auto_dmInner_tl_in_a_bits_opcode; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@110311.4]
  assign dmInner_auto_tl_in_a_bits_param = auto_dmInner_tl_in_a_bits_param; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@110311.4]
  assign dmInner_auto_tl_in_a_bits_size = auto_dmInner_tl_in_a_bits_size; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@110311.4]
  assign dmInner_auto_tl_in_a_bits_source = auto_dmInner_tl_in_a_bits_source; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@110311.4]
  assign dmInner_auto_tl_in_a_bits_address = auto_dmInner_tl_in_a_bits_address; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@110311.4]
  assign dmInner_auto_tl_in_a_bits_mask = auto_dmInner_tl_in_a_bits_mask; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@110311.4]
  assign dmInner_auto_tl_in_a_bits_data = auto_dmInner_tl_in_a_bits_data; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@110311.4]
  assign dmInner_auto_tl_in_a_bits_corrupt = auto_dmInner_tl_in_a_bits_corrupt; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@110311.4]
  assign dmInner_auto_tl_in_d_ready = auto_dmInner_tl_in_d_ready; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@110311.4]
  assign dmInner_auto_dmi_in_a_valid = dmiXing_auto_out_a_valid; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@110310.4]
  assign dmInner_auto_dmi_in_a_bits_opcode = dmiXing_auto_out_a_bits_opcode; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@110310.4]
  assign dmInner_auto_dmi_in_a_bits_param = dmiXing_auto_out_a_bits_param; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@110310.4]
  assign dmInner_auto_dmi_in_a_bits_size = dmiXing_auto_out_a_bits_size; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@110310.4]
  assign dmInner_auto_dmi_in_a_bits_source = dmiXing_auto_out_a_bits_source; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@110310.4]
  assign dmInner_auto_dmi_in_a_bits_address = dmiXing_auto_out_a_bits_address; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@110310.4]
  assign dmInner_auto_dmi_in_a_bits_mask = dmiXing_auto_out_a_bits_mask; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@110310.4]
  assign dmInner_auto_dmi_in_a_bits_data = dmiXing_auto_out_a_bits_data; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@110310.4]
  assign dmInner_auto_dmi_in_a_bits_corrupt = dmiXing_auto_out_a_bits_corrupt; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@110310.4]
  assign dmInner_auto_dmi_in_d_ready = dmiXing_auto_out_d_ready; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@110310.4]
  assign dmInner_io_dmactive = ~ dmactiveSync_io_sync_reset; // @[Debug.scala 1676:34:freechips.rocketchip.system.DefaultRV32Config.fir@110332.4]
  assign dmInner_io_innerCtrl_valid = AsyncQueueSink_io_deq_valid; // @[Debug.scala 1678:37:freechips.rocketchip.system.DefaultRV32Config.fir@110344.4]
  assign dmInner_io_innerCtrl_bits_resumereq = AsyncQueueSink_io_deq_bits_resumereq; // @[Debug.scala 1678:37:freechips.rocketchip.system.DefaultRV32Config.fir@110344.4]
  assign dmInner_io_innerCtrl_bits_hartsel = AsyncQueueSink_io_deq_bits_hartsel; // @[Debug.scala 1678:37:freechips.rocketchip.system.DefaultRV32Config.fir@110344.4]
  assign dmInner_io_innerCtrl_bits_ackhavereset = AsyncQueueSink_io_deq_bits_ackhavereset; // @[Debug.scala 1678:37:freechips.rocketchip.system.DefaultRV32Config.fir@110344.4]
  assign dmInner_io_innerCtrl_bits_hrmask_0 = AsyncQueueSink_io_deq_bits_hrmask_0; // @[Debug.scala 1678:37:freechips.rocketchip.system.DefaultRV32Config.fir@110344.4]
  assign dmiXing_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110308.4]
  assign dmiXing_auto_in_a_mem_0_opcode = auto_dmiXing_in_a_mem_0_opcode; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@110313.4]
  assign dmiXing_auto_in_a_mem_0_address = auto_dmiXing_in_a_mem_0_address; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@110313.4]
  assign dmiXing_auto_in_a_mem_0_mask = auto_dmiXing_in_a_mem_0_mask; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@110313.4]
  assign dmiXing_auto_in_a_mem_0_data = auto_dmiXing_in_a_mem_0_data; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@110313.4]
  assign dmiXing_auto_in_a_widx = auto_dmiXing_in_a_widx; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@110313.4]
  assign dmiXing_auto_in_a_safe_widx_valid = auto_dmiXing_in_a_safe_widx_valid; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@110313.4]
  assign dmiXing_auto_in_a_safe_source_reset_n = auto_dmiXing_in_a_safe_source_reset_n; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@110313.4]
  assign dmiXing_auto_in_d_ridx = auto_dmiXing_in_d_ridx; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@110313.4]
  assign dmiXing_auto_in_d_safe_ridx_valid = auto_dmiXing_in_d_safe_ridx_valid; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@110313.4]
  assign dmiXing_auto_in_d_safe_sink_reset_n = auto_dmiXing_in_d_safe_sink_reset_n; // @[LazyModule.scala 173:31:freechips.rocketchip.system.DefaultRV32Config.fir@110313.4]
  assign dmiXing_auto_out_a_ready = dmInner_auto_dmi_in_a_ready; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@110310.4]
  assign dmiXing_auto_out_d_valid = dmInner_auto_dmi_in_d_valid; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@110310.4]
  assign dmiXing_auto_out_d_bits_opcode = dmInner_auto_dmi_in_d_bits_opcode; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@110310.4]
  assign dmiXing_auto_out_d_bits_size = dmInner_auto_dmi_in_d_bits_size; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@110310.4]
  assign dmiXing_auto_out_d_bits_source = dmInner_auto_dmi_in_d_bits_source; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@110310.4]
  assign dmiXing_auto_out_d_bits_data = dmInner_auto_dmi_in_d_bits_data; // @[LazyModule.scala 167:31:freechips.rocketchip.system.DefaultRV32Config.fir@110310.4]
  assign dmactiveSync_clock = clock; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110317.4]
  assign dmactiveSync_reset = ~ io_dmactive; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110318.4]
  assign debug_clock_gate_in = clock; // @[ClockGate.scala 25:14:freechips.rocketchip.system.DefaultRV32Config.fir@110329.4]
  assign debug_clock_gate_en = clock_en; // @[ClockGate.scala 26:14:freechips.rocketchip.system.DefaultRV32Config.fir@110330.4]
  assign AsyncQueueSink_clock = debug_clock_gate_out; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110335.4]
  assign AsyncQueueSink_reset = ~ dmactive_synced; // @[:freechips.rocketchip.system.DefaultRV32Config.fir@110336.4]
  assign AsyncQueueSink_io_async_mem_0_resumereq = io_innerCtrl_mem_0_resumereq; // @[AsyncQueue.scala 184:19:freechips.rocketchip.system.DefaultRV32Config.fir@110343.4]
  assign AsyncQueueSink_io_async_mem_0_hartsel = io_innerCtrl_mem_0_hartsel; // @[AsyncQueue.scala 184:19:freechips.rocketchip.system.DefaultRV32Config.fir@110343.4]
  assign AsyncQueueSink_io_async_mem_0_ackhavereset = io_innerCtrl_mem_0_ackhavereset; // @[AsyncQueue.scala 184:19:freechips.rocketchip.system.DefaultRV32Config.fir@110343.4]
  assign AsyncQueueSink_io_async_mem_0_hrmask_0 = io_innerCtrl_mem_0_hrmask_0; // @[AsyncQueue.scala 184:19:freechips.rocketchip.system.DefaultRV32Config.fir@110343.4]
  assign AsyncQueueSink_io_async_widx = io_innerCtrl_widx; // @[AsyncQueue.scala 184:19:freechips.rocketchip.system.DefaultRV32Config.fir@110341.4]
  assign AsyncQueueSink_io_async_safe_widx_valid = io_innerCtrl_safe_widx_valid; // @[AsyncQueue.scala 184:19:freechips.rocketchip.system.DefaultRV32Config.fir@110339.4]
  assign AsyncQueueSink_io_async_safe_source_reset_n = io_innerCtrl_safe_source_reset_n; // @[AsyncQueue.scala 184:19:freechips.rocketchip.system.DefaultRV32Config.fir@110338.4]
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
  clock_en = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge clock) begin
    clock_en <= dmactive_synced | reset;
  end
endmodule

