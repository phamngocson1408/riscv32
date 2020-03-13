`include "include_module.v"
`ifdef __HellaCacheArbiter
module HellaCacheArbiter( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144911.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144912.4]
  output        io_requestor_0_req_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144914.4]
  input         io_requestor_0_req_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144914.4]
  input  [31:0] io_requestor_0_req_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144914.4]
  input         io_requestor_0_s1_kill, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144914.4]
  output        io_requestor_0_s2_nack, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144914.4]
  output        io_requestor_0_resp_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144914.4]
  output [31:0] io_requestor_0_resp_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144914.4]
  output        io_requestor_0_s2_xcpt_ae_ld, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144914.4]
  output        io_requestor_1_req_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144914.4]
  input         io_requestor_1_req_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144914.4]
  input  [31:0] io_requestor_1_req_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144914.4]
  input  [6:0]  io_requestor_1_req_bits_tag, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144914.4]
  input  [4:0]  io_requestor_1_req_bits_cmd, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144914.4]
  input  [1:0]  io_requestor_1_req_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144914.4]
  input         io_requestor_1_req_bits_signed, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144914.4]
  input         io_requestor_1_s1_kill, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144914.4]
  input  [31:0] io_requestor_1_s1_data_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144914.4]
  output        io_requestor_1_s2_nack, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144914.4]
  output        io_requestor_1_resp_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144914.4]
  output [6:0]  io_requestor_1_resp_bits_tag, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144914.4]
  output [31:0] io_requestor_1_resp_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144914.4]
  output        io_requestor_1_resp_bits_replay, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144914.4]
  output        io_requestor_1_resp_bits_has_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144914.4]
  output [31:0] io_requestor_1_resp_bits_data_word_bypass, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144914.4]
  output        io_requestor_1_replay_next, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144914.4]
  output        io_requestor_1_s2_xcpt_ma_ld, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144914.4]
  output        io_requestor_1_s2_xcpt_ma_st, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144914.4]
  output        io_requestor_1_s2_xcpt_pf_ld, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144914.4]
  output        io_requestor_1_s2_xcpt_pf_st, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144914.4]
  output        io_requestor_1_s2_xcpt_ae_ld, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144914.4]
  output        io_requestor_1_s2_xcpt_ae_st, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144914.4]
  output        io_requestor_1_ordered, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144914.4]
  output        io_requestor_1_perf_release, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144914.4]
  output        io_requestor_1_perf_grant, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144914.4]
  input         io_mem_req_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144914.4]
  output        io_mem_req_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144914.4]
  output [31:0] io_mem_req_bits_addr, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144914.4]
  output [6:0]  io_mem_req_bits_tag, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144914.4]
  output [4:0]  io_mem_req_bits_cmd, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144914.4]
  output [1:0]  io_mem_req_bits_size, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144914.4]
  output        io_mem_req_bits_signed, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144914.4]
  output        io_mem_req_bits_phys, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144914.4]
  output        io_mem_s1_kill, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144914.4]
  output [31:0] io_mem_s1_data_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144914.4]
  input         io_mem_s2_nack, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144914.4]
  input         io_mem_resp_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144914.4]
  input  [6:0]  io_mem_resp_bits_tag, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144914.4]
  input  [31:0] io_mem_resp_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144914.4]
  input         io_mem_resp_bits_replay, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144914.4]
  input         io_mem_resp_bits_has_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144914.4]
  input  [31:0] io_mem_resp_bits_data_word_bypass, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144914.4]
  input         io_mem_replay_next, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144914.4]
  input         io_mem_s2_xcpt_ma_ld, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144914.4]
  input         io_mem_s2_xcpt_ma_st, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144914.4]
  input         io_mem_s2_xcpt_pf_ld, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144914.4]
  input         io_mem_s2_xcpt_pf_st, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144914.4]
  input         io_mem_s2_xcpt_ae_ld, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144914.4]
  input         io_mem_s2_xcpt_ae_st, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144914.4]
  input         io_mem_ordered, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144914.4]
  input         io_mem_perf_release, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144914.4]
  input         io_mem_perf_grant // @[:freechips.rocketchip.system.DefaultRV32Config.fir@144914.4]
);
  reg  _T; // @[HellaCacheArbiter.scala 19:20:freechips.rocketchip.system.DefaultRV32Config.fir@144919.4]
  reg [31:0] _RAND_0;
  reg  _T_1; // @[HellaCacheArbiter.scala 20:20:freechips.rocketchip.system.DefaultRV32Config.fir@144920.4]
  reg [31:0] _RAND_1;
  wire  _T_4; // @[HellaCacheArbiter.scala 27:67:freechips.rocketchip.system.DefaultRV32Config.fir@144927.4]
  wire [7:0] _T_6; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@144931.4]
  wire [7:0] _GEN_1; // @[HellaCacheArbiter.scala 49:26:freechips.rocketchip.system.DefaultRV32Config.fir@144937.4]
  wire  _T_8; // @[HellaCacheArbiter.scala 50:21:freechips.rocketchip.system.DefaultRV32Config.fir@144943.4]
  wire  _T_9; // @[HellaCacheArbiter.scala 51:21:freechips.rocketchip.system.DefaultRV32Config.fir@144948.4]
  wire  _T_10; // @[HellaCacheArbiter.scala 59:41:freechips.rocketchip.system.DefaultRV32Config.fir@144952.4]
  wire  _T_11; // @[HellaCacheArbiter.scala 59:57:freechips.rocketchip.system.DefaultRV32Config.fir@144953.4]
  wire [5:0] _T_15; // @[HellaCacheArbiter.scala 70:45:freechips.rocketchip.system.DefaultRV32Config.fir@144967.4]
  assign _T_4 = io_requestor_0_req_valid == 1'h0; // @[HellaCacheArbiter.scala 27:67:freechips.rocketchip.system.DefaultRV32Config.fir@144927.4]
  assign _T_6 = {io_requestor_1_req_bits_tag,1'h1}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@144931.4]
  assign _GEN_1 = io_requestor_0_req_valid ? 8'h0 : _T_6; // @[HellaCacheArbiter.scala 49:26:freechips.rocketchip.system.DefaultRV32Config.fir@144937.4]
  assign _T_8 = _T == 1'h0; // @[HellaCacheArbiter.scala 50:21:freechips.rocketchip.system.DefaultRV32Config.fir@144943.4]
  assign _T_9 = _T_1 == 1'h0; // @[HellaCacheArbiter.scala 51:21:freechips.rocketchip.system.DefaultRV32Config.fir@144948.4]
  assign _T_10 = io_mem_resp_bits_tag[0]; // @[HellaCacheArbiter.scala 59:41:freechips.rocketchip.system.DefaultRV32Config.fir@144952.4]
  assign _T_11 = _T_10 == 1'h0; // @[HellaCacheArbiter.scala 59:57:freechips.rocketchip.system.DefaultRV32Config.fir@144953.4]
  assign _T_15 = io_mem_resp_bits_tag[6:1]; // @[HellaCacheArbiter.scala 70:45:freechips.rocketchip.system.DefaultRV32Config.fir@144967.4]
  assign io_requestor_0_req_ready = io_mem_req_ready; // @[HellaCacheArbiter.scala 25:31:freechips.rocketchip.system.DefaultRV32Config.fir@144926.4]
  assign io_requestor_0_s2_nack = io_mem_s2_nack & _T_9; // @[HellaCacheArbiter.scala 64:31:freechips.rocketchip.system.DefaultRV32Config.fir@144961.4]
  assign io_requestor_0_resp_valid = io_mem_resp_valid & _T_11; // @[HellaCacheArbiter.scala 60:18:freechips.rocketchip.system.DefaultRV32Config.fir@144955.4]
  assign io_requestor_0_resp_bits_data = io_mem_resp_bits_data; // @[HellaCacheArbiter.scala 69:17:freechips.rocketchip.system.DefaultRV32Config.fir@144966.4]
  assign io_requestor_0_s2_xcpt_ae_ld = io_mem_s2_xcpt_ae_ld; // @[HellaCacheArbiter.scala 61:31:freechips.rocketchip.system.DefaultRV32Config.fir@144956.4]
  assign io_requestor_1_req_ready = io_requestor_0_req_ready & _T_4; // @[HellaCacheArbiter.scala 27:33:freechips.rocketchip.system.DefaultRV32Config.fir@144929.4]
  assign io_requestor_1_s2_nack = io_mem_s2_nack & _T_1; // @[HellaCacheArbiter.scala 64:31:freechips.rocketchip.system.DefaultRV32Config.fir@144979.4]
  assign io_requestor_1_resp_valid = io_mem_resp_valid & _T_10; // @[HellaCacheArbiter.scala 60:18:freechips.rocketchip.system.DefaultRV32Config.fir@144973.4]
  assign io_requestor_1_resp_bits_tag = {{1'd0}, _T_15}; // @[HellaCacheArbiter.scala 69:17:freechips.rocketchip.system.DefaultRV32Config.fir@144984.4 HellaCacheArbiter.scala 70:21:freechips.rocketchip.system.DefaultRV32Config.fir@144986.4]
  assign io_requestor_1_resp_bits_data = io_mem_resp_bits_data; // @[HellaCacheArbiter.scala 69:17:freechips.rocketchip.system.DefaultRV32Config.fir@144984.4]
  assign io_requestor_1_resp_bits_replay = io_mem_resp_bits_replay; // @[HellaCacheArbiter.scala 69:17:freechips.rocketchip.system.DefaultRV32Config.fir@144984.4]
  assign io_requestor_1_resp_bits_has_data = io_mem_resp_bits_has_data; // @[HellaCacheArbiter.scala 69:17:freechips.rocketchip.system.DefaultRV32Config.fir@144984.4]
  assign io_requestor_1_resp_bits_data_word_bypass = io_mem_resp_bits_data_word_bypass; // @[HellaCacheArbiter.scala 69:17:freechips.rocketchip.system.DefaultRV32Config.fir@144984.4]
  assign io_requestor_1_replay_next = io_mem_replay_next; // @[HellaCacheArbiter.scala 72:35:freechips.rocketchip.system.DefaultRV32Config.fir@144987.4]
  assign io_requestor_1_s2_xcpt_ma_ld = io_mem_s2_xcpt_ma_ld; // @[HellaCacheArbiter.scala 61:31:freechips.rocketchip.system.DefaultRV32Config.fir@144974.4]
  assign io_requestor_1_s2_xcpt_ma_st = io_mem_s2_xcpt_ma_st; // @[HellaCacheArbiter.scala 61:31:freechips.rocketchip.system.DefaultRV32Config.fir@144974.4]
  assign io_requestor_1_s2_xcpt_pf_ld = io_mem_s2_xcpt_pf_ld; // @[HellaCacheArbiter.scala 61:31:freechips.rocketchip.system.DefaultRV32Config.fir@144974.4]
  assign io_requestor_1_s2_xcpt_pf_st = io_mem_s2_xcpt_pf_st; // @[HellaCacheArbiter.scala 61:31:freechips.rocketchip.system.DefaultRV32Config.fir@144974.4]
  assign io_requestor_1_s2_xcpt_ae_ld = io_mem_s2_xcpt_ae_ld; // @[HellaCacheArbiter.scala 61:31:freechips.rocketchip.system.DefaultRV32Config.fir@144974.4]
  assign io_requestor_1_s2_xcpt_ae_st = io_mem_s2_xcpt_ae_st; // @[HellaCacheArbiter.scala 61:31:freechips.rocketchip.system.DefaultRV32Config.fir@144974.4]
  assign io_requestor_1_ordered = io_mem_ordered; // @[HellaCacheArbiter.scala 62:31:freechips.rocketchip.system.DefaultRV32Config.fir@144975.4]
  assign io_requestor_1_perf_release = io_mem_perf_release; // @[HellaCacheArbiter.scala 63:28:freechips.rocketchip.system.DefaultRV32Config.fir@144976.4]
  assign io_requestor_1_perf_grant = io_mem_perf_grant; // @[HellaCacheArbiter.scala 63:28:freechips.rocketchip.system.DefaultRV32Config.fir@144976.4]
  assign io_mem_req_valid = io_requestor_0_req_valid | io_requestor_1_req_valid; // @[HellaCacheArbiter.scala 24:22:freechips.rocketchip.system.DefaultRV32Config.fir@144925.4]
  assign io_mem_req_bits_addr = io_requestor_0_req_valid ? io_requestor_0_req_bits_addr : io_requestor_1_req_bits_addr; // @[HellaCacheArbiter.scala 32:25:freechips.rocketchip.system.DefaultRV32Config.fir@144930.4 HellaCacheArbiter.scala 32:25:freechips.rocketchip.system.DefaultRV32Config.fir@144938.6]
  assign io_mem_req_bits_tag = _GEN_1[6:0]; // @[HellaCacheArbiter.scala 32:25:freechips.rocketchip.system.DefaultRV32Config.fir@144930.4 HellaCacheArbiter.scala 33:29:freechips.rocketchip.system.DefaultRV32Config.fir@144932.4 HellaCacheArbiter.scala 32:25:freechips.rocketchip.system.DefaultRV32Config.fir@144938.6 HellaCacheArbiter.scala 33:29:freechips.rocketchip.system.DefaultRV32Config.fir@144940.6]
  assign io_mem_req_bits_cmd = io_requestor_0_req_valid ? 5'h0 : io_requestor_1_req_bits_cmd; // @[HellaCacheArbiter.scala 32:25:freechips.rocketchip.system.DefaultRV32Config.fir@144930.4 HellaCacheArbiter.scala 32:25:freechips.rocketchip.system.DefaultRV32Config.fir@144938.6]
  assign io_mem_req_bits_size = io_requestor_0_req_valid ? 2'h2 : io_requestor_1_req_bits_size; // @[HellaCacheArbiter.scala 32:25:freechips.rocketchip.system.DefaultRV32Config.fir@144930.4 HellaCacheArbiter.scala 32:25:freechips.rocketchip.system.DefaultRV32Config.fir@144938.6]
  assign io_mem_req_bits_signed = io_requestor_0_req_valid ? 1'h0 : io_requestor_1_req_bits_signed; // @[HellaCacheArbiter.scala 32:25:freechips.rocketchip.system.DefaultRV32Config.fir@144930.4 HellaCacheArbiter.scala 32:25:freechips.rocketchip.system.DefaultRV32Config.fir@144938.6]
  assign io_mem_req_bits_phys = io_requestor_0_req_valid; // @[HellaCacheArbiter.scala 32:25:freechips.rocketchip.system.DefaultRV32Config.fir@144930.4 HellaCacheArbiter.scala 32:25:freechips.rocketchip.system.DefaultRV32Config.fir@144938.6]
  assign io_mem_s1_kill = _T_8 ? io_requestor_0_s1_kill : io_requestor_1_s1_kill; // @[HellaCacheArbiter.scala 37:24:freechips.rocketchip.system.DefaultRV32Config.fir@144934.4 HellaCacheArbiter.scala 37:24:freechips.rocketchip.system.DefaultRV32Config.fir@144945.6]
  assign io_mem_s1_data_data = _T_8 ? 32'h0 : io_requestor_1_s1_data_data; // @[HellaCacheArbiter.scala 38:24:freechips.rocketchip.system.DefaultRV32Config.fir@144935.4 HellaCacheArbiter.scala 38:24:freechips.rocketchip.system.DefaultRV32Config.fir@144946.6]
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
  _T = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_1 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge clock) begin
    if (io_requestor_0_req_valid) begin
      _T <= 1'h0;
    end else begin
      _T <= 1'h1;
    end
    _T_1 <= _T;
  end
endmodule
`endif // __HellaCacheArbiter

