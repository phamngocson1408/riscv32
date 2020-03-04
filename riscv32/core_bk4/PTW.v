`include "include_module.v"
`ifdef __PTW
module PTW(
  input         clock,
  input         reset,
  output        io_requestor_0_req_ready,
  input         io_requestor_0_req_valid,
  input  [19:0] io_requestor_0_req_bits_bits_addr,
  output        io_requestor_0_resp_valid,
  output        io_requestor_0_resp_bits_ae,
  output [53:0] io_requestor_0_resp_bits_pte_ppn,
  output        io_requestor_0_resp_bits_pte_d,
  output        io_requestor_0_resp_bits_pte_a,
  output        io_requestor_0_resp_bits_pte_g,
  output        io_requestor_0_resp_bits_pte_u,
  output        io_requestor_0_resp_bits_pte_x,
  output        io_requestor_0_resp_bits_pte_w,
  output        io_requestor_0_resp_bits_pte_r,
  output        io_requestor_0_resp_bits_pte_v,
  output        io_requestor_0_resp_bits_level,
  output        io_requestor_0_resp_bits_homogeneous,
  output        io_requestor_0_ptbr_mode,
  output        io_requestor_0_status_debug,
  output [1:0]  io_requestor_0_status_dprv,
  output        io_requestor_0_status_mxr,
  output        io_requestor_0_status_sum,
  output        io_requestor_0_pmp_0_cfg_l,
  output [1:0]  io_requestor_0_pmp_0_cfg_a,
  output        io_requestor_0_pmp_0_cfg_x,
  output        io_requestor_0_pmp_0_cfg_w,
  output        io_requestor_0_pmp_0_cfg_r,
  output [29:0] io_requestor_0_pmp_0_addr,
  output [31:0] io_requestor_0_pmp_0_mask,
  output        io_requestor_0_pmp_1_cfg_l,
  output [1:0]  io_requestor_0_pmp_1_cfg_a,
  output        io_requestor_0_pmp_1_cfg_x,
  output        io_requestor_0_pmp_1_cfg_w,
  output        io_requestor_0_pmp_1_cfg_r,
  output [29:0] io_requestor_0_pmp_1_addr,
  output [31:0] io_requestor_0_pmp_1_mask,
  output        io_requestor_0_pmp_2_cfg_l,
  output [1:0]  io_requestor_0_pmp_2_cfg_a,
  output        io_requestor_0_pmp_2_cfg_x,
  output        io_requestor_0_pmp_2_cfg_w,
  output        io_requestor_0_pmp_2_cfg_r,
  output [29:0] io_requestor_0_pmp_2_addr,
  output [31:0] io_requestor_0_pmp_2_mask, 
  output        io_requestor_0_pmp_3_cfg_l,
  output [1:0]  io_requestor_0_pmp_3_cfg_a,
  output        io_requestor_0_pmp_3_cfg_x,
  output        io_requestor_0_pmp_3_cfg_w,
  output        io_requestor_0_pmp_3_cfg_r,
  output [29:0] io_requestor_0_pmp_3_addr,
  output [31:0] io_requestor_0_pmp_3_mask,
  output        io_requestor_0_pmp_4_cfg_l,
  output [1:0]  io_requestor_0_pmp_4_cfg_a,
  output        io_requestor_0_pmp_4_cfg_x,
  output        io_requestor_0_pmp_4_cfg_w,
  output        io_requestor_0_pmp_4_cfg_r,
  output [29:0] io_requestor_0_pmp_4_addr,
  output [31:0] io_requestor_0_pmp_4_mask,
  output        io_requestor_0_pmp_5_cfg_l,
  output [1:0]  io_requestor_0_pmp_5_cfg_a,
  output        io_requestor_0_pmp_5_cfg_x,
  output        io_requestor_0_pmp_5_cfg_w,
  output        io_requestor_0_pmp_5_cfg_r,
  output [29:0] io_requestor_0_pmp_5_addr,
  output [31:0] io_requestor_0_pmp_5_mask,
  output        io_requestor_0_pmp_6_cfg_l,
  output [1:0]  io_requestor_0_pmp_6_cfg_a,
  output        io_requestor_0_pmp_6_cfg_x,
  output        io_requestor_0_pmp_6_cfg_w,
  output        io_requestor_0_pmp_6_cfg_r,
  output [29:0] io_requestor_0_pmp_6_addr,
  output [31:0] io_requestor_0_pmp_6_mask,
  output        io_requestor_0_pmp_7_cfg_l,
  output [1:0]  io_requestor_0_pmp_7_cfg_a,
  output        io_requestor_0_pmp_7_cfg_x,
  output        io_requestor_0_pmp_7_cfg_w,
  output        io_requestor_0_pmp_7_cfg_r,
  output [29:0] io_requestor_0_pmp_7_addr,
  output [31:0] io_requestor_0_pmp_7_mask,
  output        io_requestor_1_req_ready,
  input         io_requestor_1_req_valid,
  input         io_requestor_1_req_bits_valid,
  input  [19:0] io_requestor_1_req_bits_bits_addr,
  output        io_requestor_1_resp_valid,
  output        io_requestor_1_resp_bits_ae,
  output [53:0] io_requestor_1_resp_bits_pte_ppn,
  output        io_requestor_1_resp_bits_pte_d,
  output        io_requestor_1_resp_bits_pte_a,
  output        io_requestor_1_resp_bits_pte_g,
  output        io_requestor_1_resp_bits_pte_u,
  output        io_requestor_1_resp_bits_pte_x,
  output        io_requestor_1_resp_bits_pte_w,
  output        io_requestor_1_resp_bits_pte_r,
  output        io_requestor_1_resp_bits_pte_v,
  output        io_requestor_1_resp_bits_level,
  output        io_requestor_1_resp_bits_homogeneous,
  output        io_requestor_1_ptbr_mode,
  output        io_requestor_1_status_debug,
  output [1:0]  io_requestor_1_status_prv,
  output        io_requestor_1_pmp_0_cfg_l,
  output [1:0]  io_requestor_1_pmp_0_cfg_a,
  output        io_requestor_1_pmp_0_cfg_x,
  output        io_requestor_1_pmp_0_cfg_w,
  output        io_requestor_1_pmp_0_cfg_r,
  output [29:0] io_requestor_1_pmp_0_addr,
  output [31:0] io_requestor_1_pmp_0_mask,
  output        io_requestor_1_pmp_1_cfg_l,
  output [1:0]  io_requestor_1_pmp_1_cfg_a,
  output        io_requestor_1_pmp_1_cfg_x,
  output        io_requestor_1_pmp_1_cfg_w,
  output        io_requestor_1_pmp_1_cfg_r,
  output [29:0] io_requestor_1_pmp_1_addr,
  output [31:0] io_requestor_1_pmp_1_mask,
  output        io_requestor_1_pmp_2_cfg_l,
  output [1:0]  io_requestor_1_pmp_2_cfg_a,
  output        io_requestor_1_pmp_2_cfg_x,
  output        io_requestor_1_pmp_2_cfg_w,
  output        io_requestor_1_pmp_2_cfg_r,
  output [29:0] io_requestor_1_pmp_2_addr,
  output [31:0] io_requestor_1_pmp_2_mask,
  output        io_requestor_1_pmp_3_cfg_l,
  output [1:0]  io_requestor_1_pmp_3_cfg_a,
  output        io_requestor_1_pmp_3_cfg_x,
  output        io_requestor_1_pmp_3_cfg_w,
  output        io_requestor_1_pmp_3_cfg_r,
  output [29:0] io_requestor_1_pmp_3_addr,
  output [31:0] io_requestor_1_pmp_3_mask,
  output        io_requestor_1_pmp_4_cfg_l,
  output [1:0]  io_requestor_1_pmp_4_cfg_a,
  output        io_requestor_1_pmp_4_cfg_x,
  output        io_requestor_1_pmp_4_cfg_w,
  output        io_requestor_1_pmp_4_cfg_r,
  output [29:0] io_requestor_1_pmp_4_addr,
  output [31:0] io_requestor_1_pmp_4_mask,
  output        io_requestor_1_pmp_5_cfg_l,
  output [1:0]  io_requestor_1_pmp_5_cfg_a,
  output        io_requestor_1_pmp_5_cfg_x,
  output        io_requestor_1_pmp_5_cfg_w,
  output        io_requestor_1_pmp_5_cfg_r,
  output [29:0] io_requestor_1_pmp_5_addr,
  output [31:0] io_requestor_1_pmp_5_mask,
  output        io_requestor_1_pmp_6_cfg_l,
  output [1:0]  io_requestor_1_pmp_6_cfg_a,
  output        io_requestor_1_pmp_6_cfg_x,
  output        io_requestor_1_pmp_6_cfg_w,
  output        io_requestor_1_pmp_6_cfg_r,
  output [29:0] io_requestor_1_pmp_6_addr,
  output [31:0] io_requestor_1_pmp_6_mask,
  output        io_requestor_1_pmp_7_cfg_l,
  output [1:0]  io_requestor_1_pmp_7_cfg_a,
  output        io_requestor_1_pmp_7_cfg_x,
  output        io_requestor_1_pmp_7_cfg_w,
  output        io_requestor_1_pmp_7_cfg_r,
  output [29:0] io_requestor_1_pmp_7_addr,
  output [31:0] io_requestor_1_pmp_7_mask,
  input         io_mem_req_ready,
  output        io_mem_req_valid,
  output [31:0] io_mem_req_bits_addr,
  output        io_mem_s1_kill,
  input         io_mem_s2_nack,
  input         io_mem_resp_valid,
  input  [31:0] io_mem_resp_bits_data,
  input         io_mem_s2_xcpt_ae_ld,
  input         io_dpath_ptbr_mode,
  input  [21:0] io_dpath_ptbr_ppn,
  input         io_dpath_sfence_valid,
  input         io_dpath_sfence_bits_rs1,
  input         io_dpath_status_debug,
  input  [1:0]  io_dpath_status_dprv,
  input  [1:0]  io_dpath_status_prv,
  input         io_dpath_status_mxr,
  input         io_dpath_status_sum,
  input         io_dpath_pmp_0_cfg_l,
  input  [1:0]  io_dpath_pmp_0_cfg_a,
  input         io_dpath_pmp_0_cfg_x,
  input         io_dpath_pmp_0_cfg_w,
  input         io_dpath_pmp_0_cfg_r,
  input  [29:0] io_dpath_pmp_0_addr,
  input  [31:0] io_dpath_pmp_0_mask,
  input         io_dpath_pmp_1_cfg_l,
  input  [1:0]  io_dpath_pmp_1_cfg_a,
  input         io_dpath_pmp_1_cfg_x,
  input         io_dpath_pmp_1_cfg_w,
  input         io_dpath_pmp_1_cfg_r,
  input  [29:0] io_dpath_pmp_1_addr,
  input  [31:0] io_dpath_pmp_1_mask,
  input         io_dpath_pmp_2_cfg_l,
  input  [1:0]  io_dpath_pmp_2_cfg_a,
  input         io_dpath_pmp_2_cfg_x,
  input         io_dpath_pmp_2_cfg_w,
  input         io_dpath_pmp_2_cfg_r,
  input  [29:0] io_dpath_pmp_2_addr,
  input  [31:0] io_dpath_pmp_2_mask,
  input         io_dpath_pmp_3_cfg_l,
  input  [1:0]  io_dpath_pmp_3_cfg_a,
  input         io_dpath_pmp_3_cfg_x,
  input         io_dpath_pmp_3_cfg_w,
  input         io_dpath_pmp_3_cfg_r,
  input  [29:0] io_dpath_pmp_3_addr,
  input  [31:0] io_dpath_pmp_3_mask,
  input         io_dpath_pmp_4_cfg_l,
  input  [1:0]  io_dpath_pmp_4_cfg_a,
  input         io_dpath_pmp_4_cfg_x,
  input         io_dpath_pmp_4_cfg_w,
  input         io_dpath_pmp_4_cfg_r,
  input  [29:0] io_dpath_pmp_4_addr,
  input  [31:0] io_dpath_pmp_4_mask,
  input         io_dpath_pmp_5_cfg_l,
  input  [1:0]  io_dpath_pmp_5_cfg_a,
  input         io_dpath_pmp_5_cfg_x,
  input         io_dpath_pmp_5_cfg_w,
  input         io_dpath_pmp_5_cfg_r,
  input  [29:0] io_dpath_pmp_5_addr,
  input  [31:0] io_dpath_pmp_5_mask,
  input         io_dpath_pmp_6_cfg_l,
  input  [1:0]  io_dpath_pmp_6_cfg_a,
  input         io_dpath_pmp_6_cfg_x,
  input         io_dpath_pmp_6_cfg_w,
  input         io_dpath_pmp_6_cfg_r,
  input  [29:0] io_dpath_pmp_6_addr,
  input  [31:0] io_dpath_pmp_6_mask,
  input         io_dpath_pmp_7_cfg_l,
  input  [1:0]  io_dpath_pmp_7_cfg_a,
  input         io_dpath_pmp_7_cfg_x,
  input         io_dpath_pmp_7_cfg_w,
  input         io_dpath_pmp_7_cfg_r,
  input  [29:0] io_dpath_pmp_7_addr,
  input  [31:0] io_dpath_pmp_7_mask
);
  wire  arb_clock;
  wire  arb_io_in_0_ready;
  wire  arb_io_in_0_valid;
  wire [19:0] arb_io_in_0_bits_bits_addr;
  wire  arb_io_in_1_ready;
  wire  arb_io_in_1_valid;
  wire  arb_io_in_1_bits_valid;
  wire [19:0] arb_io_in_1_bits_bits_addr;
  wire  arb_io_out_ready;
  wire  arb_io_out_valid;
  wire  arb_io_out_bits_valid;
  wire [19:0] arb_io_out_bits_bits_addr;
  wire  arb_io_chosen;
  wire [2:0] _2_io_x;
  wire [2:0] _2_io_y;
  wire [53:0] _2_1_io_x_ppn;
  wire  _2_1_io_x_d;
  wire  _2_1_io_x_a;
  wire  _2_1_io_x_g;
  wire  _2_1_io_x_u;
  wire  _2_1_io_x_x;
  wire  _2_1_io_x_w;
  wire  _2_1_io_x_r;
  wire  _2_1_io_x_v;
  wire [53:0] _2_1_io_y_ppn;
  wire  _2_1_io_y_d;
  wire  _2_1_io_y_a;
  wire  _2_1_io_y_g;
  wire  _2_1_io_y_u;
  wire  _2_1_io_y_x;
  wire  _2_1_io_y_w;
  wire  _2_1_io_y_r;
  wire  _2_1_io_y_v;
  reg [2:0] state;
  reg [31:0] _RAND_0;
  reg  resp_valid_0;
  reg [31:0] _RAND_1;
  reg  resp_valid_1;
  reg [31:0] _RAND_2;
  wire  _T_2;
  reg  invalidated;
  reg [31:0] _RAND_3;
  reg  count;
  reg [31:0] _RAND_4;
  reg  resp_ae;
  reg [31:0] _RAND_5;
  reg [19:0] r_req_addr;
  reg [31:0] _RAND_6;
  reg  r_req_dest;
  reg [31:0] _RAND_7;
  reg [53:0] r_pte_ppn;
  reg [63:0] _RAND_8;
  reg  r_pte_d;
  reg [31:0] _RAND_9;
  reg  r_pte_a;
  reg [31:0] _RAND_10;
  reg  r_pte_g;
  reg [31:0] _RAND_11;
  reg  r_pte_u;
  reg [31:0] _RAND_12;
  reg  r_pte_x;
  reg [31:0] _RAND_13;
  reg  r_pte_w;
  reg [31:0] _RAND_14;
  reg  r_pte_r;
  reg [31:0] _RAND_15;
  reg  r_pte_v;
  reg [31:0] _RAND_16;
  reg  mem_resp_valid;
  reg [31:0] _RAND_17;
  reg [31:0] mem_resp_data;
  reg [31:0] _RAND_18;
  wire  tmp_v;
  wire  tmp_r;
  wire  tmp_w;
  wire  tmp_x;
  wire  tmp_u;
  wire  tmp_g;
  wire  tmp_a;
  wire  tmp_d;
  wire [53:0] tmp_ppn;
  wire  res_v;
  wire  invalid_paddr;
  wire  traverse;
  wire [9:0] vpn_idxs_0;
  wire [9:0] vpn_idxs_1;
  wire [9:0] vpn_idx;
  wire [65:0] pte_addr;
  wire [53:0] choices_0;
  reg [31:0] _RAND_19;
  reg [3:0] valid;
  reg [31:0] _RAND_20;
  reg [31:0] tags_0; 
  reg [31:0] _RAND_21;
  reg [31:0] tags_1;
  reg [31:0] _RAND_22;
  reg [31:0] tags_2;
  reg [31:0] _RAND_23;
  reg [31:0] tags_3;
  reg [31:0] _RAND_24;
  reg [19:0] data_0;
  reg [31:0] _RAND_25;
  reg [19:0] data_1;
  reg [31:0] _RAND_26;
  reg [19:0] data_2;
  reg [31:0] _RAND_27;
  reg [19:0] data_3;
  reg [31:0] _RAND_28;
  wire [3:0] hits;
  wire  hit;
  wire [1:0] r;
  wire [31:0] _tags_r;
  wire [53:0] res_ppn;
  wire [19:0] _data_r;
  wire  pte_cache_hit;
  wire [19:0] pte_cache_data;
  wire  pmaPgLevelHomogeneous_0;
  wire  pmaPgLevelHomogeneous_1;
  wire  pmaHomogeneous;
  wire  pmpHomogeneous;
  wire  homogeneous;
  wire [53:0] pte_2_ppn;
  wire [53:0] _T_778_ppn;
  wire [53:0] pte_1_ppn;
  wire [53:0] _T_779_ppn;
  wire  _T_779_d;
  wire  _T_779_a;
  wire  _T_779_g;
  wire  _T_779_u;
  wire  _T_779_x;
  wire  _T_779_w;
  wire  _T_779_r;
  wire  _T_779_v;
  wire [53:0] _T_780_ppn;
  wire  _T_780_d;
  wire  _T_780_a;
  wire  _T_780_g;
  wire  _T_780_u;
  wire  _T_780_x;
  wire  _T_780_w;
  wire  _T_780_r;
  wire  _T_780_v;
  wire  ae;
  reg [2:0] _T_42;
  RRArbiter arb (
    .clock(arb_clock),
    .io_in_0_ready(arb_io_in_0_ready),
    .io_in_0_valid(arb_io_in_0_valid),
    .io_in_0_bits_bits_addr(arb_io_in_0_bits_bits_addr),
    .io_in_1_ready(arb_io_in_1_ready),
    .io_in_1_valid(arb_io_in_1_valid),
    .io_in_1_bits_valid(arb_io_in_1_bits_valid),
    .io_in_1_bits_bits_addr(arb_io_in_1_bits_bits_addr),
    .io_out_ready(arb_io_out_ready),
    .io_out_valid(arb_io_out_valid),
    .io_out_bits_valid(arb_io_out_bits_valid),
    .io_out_bits_bits_addr(arb_io_out_bits_bits_addr),
    .io_chosen(arb_io_chosen)
  );
  _2_79 _2 ( 
    .io_x(_2_io_x),
    .io_y(_2_io_y)
  );
  _2_80 _2_1 (
    .io_x_ppn(_2_1_io_x_ppn),
    .io_x_d(_2_1_io_x_d),
    .io_x_a(_2_1_io_x_a),
    .io_x_g(_2_1_io_x_g),
    .io_x_u(_2_1_io_x_u),
    .io_x_x(_2_1_io_x_x),
    .io_x_w(_2_1_io_x_w),
    .io_x_r(_2_1_io_x_r),
    .io_x_v(_2_1_io_x_v),
    .io_y_ppn(_2_1_io_y_ppn),
    .io_y_d(_2_1_io_y_d),
    .io_y_a(_2_1_io_y_a),
    .io_y_g(_2_1_io_y_g),
    .io_y_u(_2_1_io_y_u),
    .io_y_x(_2_1_io_y_x),
    .io_y_w(_2_1_io_y_w),
    .io_y_r(_2_1_io_y_r),
    .io_y_v(_2_1_io_y_v)
  );

`define MY_ASSIGNMENT
`ifdef MY_ASSIGNMENT
  wire [63:0] _T_7 = {{32'd0}, mem_resp_data};
  assign tmp_v = _T_7[0];
  assign tmp_r = _T_7[1];
  assign tmp_w = _T_7[2];
  assign tmp_x = _T_7[3];
  assign tmp_u = _T_7[4];
  assign tmp_g = _T_7[5];
  assign tmp_a = _T_7[6];
  assign tmp_d = _T_7[7];
  assign tmp_ppn = _T_7[63:10];

  wire _GEN_0 = ((count <= 1'h0) & (tmp_ppn[9:0] != 10'h0)) ? 1'h0 : tmp_v;
  assign res_v = (tmp_r | tmp_w | tmp_x) ? _GEN_0 : tmp_v;

  assign invalid_paddr = tmp_ppn[53:20] != 34'h0;

  assign traverse = res_v & !tmp_r & !tmp_w & !tmp_x & !invalid_paddr & (count < 1'h1);

  assign vpn_idxs_0 = r_req_addr[19:10];
  assign vpn_idxs_1 = r_req_addr[9:0];
  assign vpn_idx = count ? vpn_idxs_1 : vpn_idxs_0;

  assign pte_addr = {r_pte_ppn,vpn_idx, 2'h0};

  assign choices_0 = {r_pte_ppn[53:10],vpn_idxs_1};

  wire _T_43 = {{34'd0}, tags_0} == pte_addr;
  wire _T_44 = {{34'd0}, tags_1} == pte_addr;
  wire _T_45 = {{34'd0}, tags_2} == pte_addr;
  wire _T_46 = {{34'd0}, tags_3} == pte_addr;
  assign hits = {_T_46,_T_45,_T_44,_T_43} & valid;
  assign hit = hits != 4'h0;

  wire [3:0] _T_56 = {_T_42, 1'h0};
  wire [3:0] _T_60 = {{1'd0}, _T_56[3:1]};
  wire [3:0] _T_67 = _T_56 >> {1'h1,_T_60[0]};
  wire [2:0] _T_70 = {1'h1,_T_60[0],_T_67[0]};
  wire [3:0] _T_72 = ~ valid;
  assign r = (valid == 4'hf) ? _T_70[1:0] 
		: _T_72[0] ? 2'h0 
		: _T_72[1] ? 2'h1 
		: _T_72[2] ? 2'h2 
		: 2'h3;

  assign _tags_r = pte_addr[31:0];

  assign res_ppn = {{34'd0}, tmp_ppn[19:0]};

  assign _data_r = res_ppn[19:0];

  wire _T_34 = count < 1'h1;
  assign pte_cache_hit = hit & _T_34;

  assign pte_cache_data = (hits[0] ? data_0 : 20'h0) 
			| (hits[1] ? data_1 : 20'h0) 
			| (hits[2] ? data_2 : 20'h0) 
			| (hits[3] ? data_3 : 20'h0);

  wire _T_140 = $signed($signed({1'b0,$signed(pte_addr ^ 66'h60000000)}) & $signed(-67'sh20000000)) == $signed(67'sh0);
  wire _T_145 = $signed($signed({1'b0,$signed(pte_addr ^ 66'hc000000)}) & $signed(-67'sh4000000)) == $signed(67'sh0);
  wire _T_150 = $signed($signed({1'b0,$signed(pte_addr ^ 66'h80000000)}) & $signed(-67'sh10000000)) == $signed(67'sh0);
  assign pmaPgLevelHomogeneous_0 = _T_140
				|  _T_145
				|  _T_150;
  assign pmaPgLevelHomogeneous_1 = _T_140 
				| ($signed($signed({1'b0,$signed(pte_addr ^ 66'h3000)}) & $signed(-67'sh1000)) == $signed(67'sh0)) 
				| _T_145 
				| ($signed($signed({1'b0,$signed(pte_addr ^ 66'h2000000)}) & $signed(-67'sh10000)) == $signed(67'sh0)) 
				| ($signed($signed({1'b0,$signed(pte_addr ^ 66'h10000)}) & $signed(-67'sh10000)) == $signed(67'sh0)) 
				| _T_150 
				| ($signed($signed({1'b0,$signed(pte_addr)}) & $signed(-67'sh1000)) == $signed(67'sh0));
  assign pmaHomogeneous = count ? pmaPgLevelHomogeneous_1 : pmaPgLevelHomogeneous_0; 

  wire [65:0] _T_274 = {pte_addr[65:12], 12'h0};
  wire _T_289 = count ? io_dpath_pmp_0_mask[11] : io_dpath_pmp_0_mask[21];
  wire [31:0] _T_293 = ~ ((~ {io_dpath_pmp_0_addr, 2'h0}) | 32'h3);
  wire [65:0] _T_294 = _T_274 ^ {{34'd0}, _T_293};
  wire _T_305 = count ? (_T_294[65:12] != 54'h0) : (_T_294[65:22] != 44'h0);
  wire _T_320 = (_T_274 < {{34'd0}, _T_293}) == 1'h0;
  wire [31:0] _T_322 = count ? 32'hfffff000 : 32'hffc00000;
  wire [65:0] _T_323 = _T_274 & {{34'd0}, _T_322};
  wire [31:0] _T_335 = _T_293 & _T_322;
  wire _T_336 = _T_323 < {{34'd0}, _T_335};
  wire _T_347 = count ? io_dpath_pmp_1_mask[11] : io_dpath_pmp_1_mask[21];
  wire [31:0] _T_351 = ~ ((~ {io_dpath_pmp_1_addr, 2'h0}) | 32'h3);
  wire [65:0] _T_352 = _T_274 ^ {{34'd0}, _T_351};
  wire _T_363 = count ? (_T_352[65:12] != 54'h0) : (_T_352[65:22] != 44'h0);
  wire _T_377 = _T_274 < {{34'd0}, _T_351};
  wire [31:0] _T_393 = _T_351 & _T_322;
  wire _T_394 = _T_323 < {{34'd0}, _T_393};
  wire _T_405 = count ? io_dpath_pmp_2_mask[11] : io_dpath_pmp_2_mask[21];
  wire [31:0] _T_409 = ~ ((~ {io_dpath_pmp_2_addr, 2'h0}) | 32'h3);
  wire [65:0] _T_410 = _T_274 ^ {{34'd0}, _T_409}; 
  wire _T_421 = count ? (_T_410[65:12] != 54'h0) : (_T_410[65:22] != 44'h0);
  wire _T_435 = _T_274 < {{34'd0}, _T_409}; 
  wire [31:0] _T_451 = _T_409 & _T_322;
  wire _T_452 = _T_323 < {{34'd0}, _T_451};
  wire _T_463 = count ? io_dpath_pmp_3_mask[11] : io_dpath_pmp_3_mask[21];
  wire [31:0] _T_467 = ~ ((~ {io_dpath_pmp_3_addr, 2'h0}) | 32'h3);
  wire [65:0] _T_468 = _T_274 ^ {{34'd0}, _T_467};
  wire _T_479 = count ? (_T_468[65:12] != 54'h0) : (_T_468[65:22] != 44'h0);
  wire _T_493 = _T_274 < {{34'd0}, _T_467};
  wire [31:0] _T_509 = _T_467 & _T_322;
  wire _T_510 = _T_323 < ({{34'd0}, _T_509});
  wire _T_521 = count ? io_dpath_pmp_4_mask[11] : io_dpath_pmp_4_mask[21];
  wire [31:0] _T_525 = ~ ((~ {io_dpath_pmp_4_addr, 2'h0}) | 32'h3);
  wire [65:0] _T_526 = _T_274 ^ {{34'd0}, _T_525};
  wire _T_537 = count ? (_T_526[65:12] != 54'h0) : (_T_526[65:22] != 44'h0);
  wire _T_551 = _T_274 < {{34'd0}, _T_525};
  wire [31:0] _T_567 = _T_525 & _T_322;
  wire _T_568 = _T_323 < {{34'd0}, _T_567};
  wire _T_579 = count ? io_dpath_pmp_5_mask[11] : io_dpath_pmp_5_mask[21];
  wire [31:0] _T_583 = ~ (~ ({io_dpath_pmp_5_addr, 2'h0}) | 32'h3);
  wire [65:0] _T_584 = _T_274 ^ {{34'd0}, _T_583};
  wire _T_595 = count ? (_T_584[65:12] != 54'h0) : (_T_584[65:22] != 44'h0); 
  wire _T_609 = _T_274 < {{34'd0}, _T_583};
  wire [31:0] _T_625 = _T_583 & _T_322;
  wire _T_626 = _T_323 < {{34'd0}, _T_625};
  wire _T_637 = count ? io_dpath_pmp_6_mask[11] : io_dpath_pmp_6_mask[21];
  wire [31:0] _T_641 = ~ ((~ {io_dpath_pmp_6_addr, 2'h0}) | 32'h3);
  wire [65:0] _T_642 = _T_274 ^ {{34'd0}, _T_641};
  wire _T_653 = count ? (_T_642[65:12] != 54'h0) : (_T_642[65:22] != 44'h0);
  wire _T_667 = _T_274 < {{34'd0}, _T_641};
  wire [31:0] _T_683 = _T_641 & _T_322;
  wire _T_684 = _T_323 < {{34'd0}, _T_683};
  wire _T_695 = count ? io_dpath_pmp_7_mask[11] : io_dpath_pmp_7_mask[21];
  wire [31:0] _T_699 = ~ ((~ {io_dpath_pmp_7_addr, 2'h0}) | 32'h3);
  wire [65:0] _T_700 = _T_274 ^ {{34'd0}, _T_699};
  wire _T_711 = count ? (_T_700[65:12] != 54'h0) : (_T_700[65:22] != 44'h0);
  wire _T_725 = _T_274 < {{34'd0}, _T_699};
  wire [31:0] _T_741 = _T_699 & _T_322;
  wire _T_742 = _T_323 < {{34'd0}, _T_741};
  assign pmpHomogeneous = (io_dpath_pmp_0_cfg_a[1] ? (_T_289 | _T_305) : (!io_dpath_pmp_0_cfg_a[0] | _T_320 | _T_336)) 
			& (io_dpath_pmp_1_cfg_a[1] ? (_T_347 | _T_363) : (!io_dpath_pmp_1_cfg_a[0] | _T_336 | !_T_377 | (_T_320 & _T_394))) 
			& (io_dpath_pmp_2_cfg_a[1] ? (_T_405 | _T_421) : (!io_dpath_pmp_2_cfg_a[0] | _T_394 | !_T_435 | (!_T_377 & _T_452))) 
			& (io_dpath_pmp_3_cfg_a[1] ? (_T_463 | _T_479) : (!io_dpath_pmp_3_cfg_a[0] | _T_452 | !_T_493 | (!_T_435 & _T_510))) 
			& (io_dpath_pmp_4_cfg_a[1] ? (_T_521 | _T_537) : (!io_dpath_pmp_4_cfg_a[0] | _T_510 | !_T_551 | (!_T_493 & _T_568))) 
			& (io_dpath_pmp_5_cfg_a[1] ? (_T_579 | _T_595) : (!io_dpath_pmp_5_cfg_a[0] | _T_568 | !_T_609 | (!_T_551 & _T_626))) 
			& (io_dpath_pmp_6_cfg_a[1] ? (_T_637 | _T_653) : (!io_dpath_pmp_6_cfg_a[0] | _T_626 | !_T_667 | (!_T_609 & _T_684))) 
			& (io_dpath_pmp_7_cfg_a[1] ? (_T_695 | _T_711) : (!io_dpath_pmp_7_cfg_a[0] | _T_684 | !_T_725 | (!_T_667 & _T_742)));

  assign homogeneous = pmaHomogeneous & pmpHomogeneous;

  assign ae = res_v & invalid_paddr;

  assign pte_2_ppn = {{32'd0}, io_dpath_ptbr_ppn};

  wire _T_41 = arb_io_out_ready & arb_io_out_valid;
  assign _T_778_ppn = _T_41 ? pte_2_ppn : r_pte_ppn;

  assign pte_1_ppn = {{34'd0}, pte_cache_data};

  wire _T_82 = state == 3'h1;
  wire _T_776 = _T_82 & pte_cache_hit;
  assign _T_779_ppn = _T_776 ? pte_1_ppn : _T_778_ppn; 
  assign _T_779_d = _T_776 ? 1'h0 : r_pte_d;
  assign _T_779_a = _T_776 ? 1'h0 : r_pte_a;
  assign _T_779_g = _T_776 ? 1'h0 : r_pte_g;
  assign _T_779_u = _T_776 ? 1'h0 : r_pte_u;
  assign _T_779_x = _T_776 ? 1'h0 : r_pte_x;
  assign _T_779_w = _T_776 ? 1'h0 : r_pte_w;
  assign _T_779_r = _T_776 ? 1'h0 : r_pte_r;
  assign _T_779_v = _T_776 ? 1'h0 : r_pte_v;
  assign _T_774 = (state == 3'h7) & !homogeneous;
  assign _T_780_ppn = _T_774 ? choices_0 : _T_779_ppn;
  assign _T_780_d = _T_774 ? r_pte_d : _T_779_d;
  assign _T_780_a = _T_774 ? r_pte_a : _T_779_a;
  assign _T_780_g = _T_774 ? r_pte_g : _T_779_g;
  assign _T_780_u = _T_774 ? r_pte_u : _T_779_u;
  assign _T_780_x = _T_774 ? r_pte_x : _T_779_x;
  assign _T_780_w = _T_774 ? r_pte_w : _T_779_w;
  assign _T_780_r = _T_774 ? r_pte_r : _T_779_r;
  assign _T_780_v = _T_774 ? r_pte_v : _T_779_v;

  assign io_requestor_0_req_ready = arb_io_in_0_ready;
  assign io_requestor_0_resp_valid = resp_valid_0;
  assign io_requestor_0_resp_bits_ae = resp_ae;
  assign io_requestor_0_resp_bits_pte_ppn = r_pte_ppn;
  assign io_requestor_0_resp_bits_pte_d = r_pte_d;
  assign io_requestor_0_resp_bits_pte_a = r_pte_a;
  assign io_requestor_0_resp_bits_pte_g = r_pte_g;
  assign io_requestor_0_resp_bits_pte_u = r_pte_u;
  assign io_requestor_0_resp_bits_pte_x = r_pte_x;
  assign io_requestor_0_resp_bits_pte_w = r_pte_w;
  assign io_requestor_0_resp_bits_pte_r = r_pte_r;
  assign io_requestor_0_resp_bits_pte_v = r_pte_v;
  assign io_requestor_0_resp_bits_level = count;
  assign io_requestor_0_resp_bits_homogeneous = pmaHomogeneous & pmpHomogeneous;
  assign io_requestor_0_ptbr_mode = io_dpath_ptbr_mode;
  assign io_requestor_0_status_debug = io_dpath_status_debug;
  assign io_requestor_0_status_dprv = io_dpath_status_dprv;
  assign io_requestor_0_status_mxr = io_dpath_status_mxr;
  assign io_requestor_0_status_sum = io_dpath_status_sum;
  assign io_requestor_0_pmp_0_cfg_l = io_dpath_pmp_0_cfg_l; 
  assign io_requestor_0_pmp_0_cfg_a = io_dpath_pmp_0_cfg_a; 
  assign io_requestor_0_pmp_0_cfg_x = io_dpath_pmp_0_cfg_x; 
  assign io_requestor_0_pmp_0_cfg_w = io_dpath_pmp_0_cfg_w; 
  assign io_requestor_0_pmp_0_cfg_r = io_dpath_pmp_0_cfg_r; 
  assign io_requestor_0_pmp_0_addr = io_dpath_pmp_0_addr; 
  assign io_requestor_0_pmp_0_mask = io_dpath_pmp_0_mask; 
  assign io_requestor_0_pmp_1_cfg_l = io_dpath_pmp_1_cfg_l;
  assign io_requestor_0_pmp_1_cfg_a = io_dpath_pmp_1_cfg_a; 
  assign io_requestor_0_pmp_1_cfg_x = io_dpath_pmp_1_cfg_x; 
  assign io_requestor_0_pmp_1_cfg_w = io_dpath_pmp_1_cfg_w; 
  assign io_requestor_0_pmp_1_cfg_r = io_dpath_pmp_1_cfg_r; 
  assign io_requestor_0_pmp_1_addr = io_dpath_pmp_1_addr; 
  assign io_requestor_0_pmp_1_mask = io_dpath_pmp_1_mask; 
  assign io_requestor_0_pmp_2_cfg_l = io_dpath_pmp_2_cfg_l;
  assign io_requestor_0_pmp_2_cfg_a = io_dpath_pmp_2_cfg_a;
  assign io_requestor_0_pmp_2_cfg_x = io_dpath_pmp_2_cfg_x;
  assign io_requestor_0_pmp_2_cfg_w = io_dpath_pmp_2_cfg_w;
  assign io_requestor_0_pmp_2_cfg_r = io_dpath_pmp_2_cfg_r;
  assign io_requestor_0_pmp_2_addr = io_dpath_pmp_2_addr;
  assign io_requestor_0_pmp_2_mask = io_dpath_pmp_2_mask;
  assign io_requestor_0_pmp_3_cfg_l = io_dpath_pmp_3_cfg_l; 
  assign io_requestor_0_pmp_3_cfg_a = io_dpath_pmp_3_cfg_a; 
  assign io_requestor_0_pmp_3_cfg_x = io_dpath_pmp_3_cfg_x;
  assign io_requestor_0_pmp_3_cfg_w = io_dpath_pmp_3_cfg_w;
  assign io_requestor_0_pmp_3_cfg_r = io_dpath_pmp_3_cfg_r;
  assign io_requestor_0_pmp_3_addr = io_dpath_pmp_3_addr; 
  assign io_requestor_0_pmp_3_mask = io_dpath_pmp_3_mask; 
  assign io_requestor_0_pmp_4_cfg_l = io_dpath_pmp_4_cfg_l; 
  assign io_requestor_0_pmp_4_cfg_a = io_dpath_pmp_4_cfg_a; 
  assign io_requestor_0_pmp_4_cfg_x = io_dpath_pmp_4_cfg_x; 
  assign io_requestor_0_pmp_4_cfg_w = io_dpath_pmp_4_cfg_w; 
  assign io_requestor_0_pmp_4_cfg_r = io_dpath_pmp_4_cfg_r; 
  assign io_requestor_0_pmp_4_addr = io_dpath_pmp_4_addr; 
  assign io_requestor_0_pmp_4_mask = io_dpath_pmp_4_mask; 
  assign io_requestor_0_pmp_5_cfg_l = io_dpath_pmp_5_cfg_l; 
  assign io_requestor_0_pmp_5_cfg_a = io_dpath_pmp_5_cfg_a; 
  assign io_requestor_0_pmp_5_cfg_x = io_dpath_pmp_5_cfg_x; 
  assign io_requestor_0_pmp_5_cfg_w = io_dpath_pmp_5_cfg_w; 
  assign io_requestor_0_pmp_5_cfg_r = io_dpath_pmp_5_cfg_r; 
  assign io_requestor_0_pmp_5_addr = io_dpath_pmp_5_addr; 
  assign io_requestor_0_pmp_5_mask = io_dpath_pmp_5_mask; 
  assign io_requestor_0_pmp_6_cfg_l = io_dpath_pmp_6_cfg_l;
  assign io_requestor_0_pmp_6_cfg_a = io_dpath_pmp_6_cfg_a;
  assign io_requestor_0_pmp_6_cfg_x = io_dpath_pmp_6_cfg_x;
  assign io_requestor_0_pmp_6_cfg_w = io_dpath_pmp_6_cfg_w;
  assign io_requestor_0_pmp_6_cfg_r = io_dpath_pmp_6_cfg_r;
  assign io_requestor_0_pmp_6_addr = io_dpath_pmp_6_addr; 
  assign io_requestor_0_pmp_6_mask = io_dpath_pmp_6_mask; 
  assign io_requestor_0_pmp_7_cfg_l = io_dpath_pmp_7_cfg_l;
  assign io_requestor_0_pmp_7_cfg_a = io_dpath_pmp_7_cfg_a;
  assign io_requestor_0_pmp_7_cfg_x = io_dpath_pmp_7_cfg_x;
  assign io_requestor_0_pmp_7_cfg_w = io_dpath_pmp_7_cfg_w;
  assign io_requestor_0_pmp_7_cfg_r = io_dpath_pmp_7_cfg_r;
  assign io_requestor_0_pmp_7_addr = io_dpath_pmp_7_addr; 
  assign io_requestor_0_pmp_7_mask = io_dpath_pmp_7_mask; 
  assign io_requestor_1_req_ready = arb_io_in_1_ready; 
  assign io_requestor_1_resp_valid = resp_valid_1;
  assign io_requestor_1_resp_bits_ae = resp_ae; 
  assign io_requestor_1_resp_bits_pte_ppn = r_pte_ppn;
  assign io_requestor_1_resp_bits_pte_d = r_pte_d;
  assign io_requestor_1_resp_bits_pte_a = r_pte_a; 
  assign io_requestor_1_resp_bits_pte_g = r_pte_g;
  assign io_requestor_1_resp_bits_pte_u = r_pte_u;
  assign io_requestor_1_resp_bits_pte_x = r_pte_x; 
  assign io_requestor_1_resp_bits_pte_w = r_pte_w; 
  assign io_requestor_1_resp_bits_pte_r = r_pte_r; 
  assign io_requestor_1_resp_bits_pte_v = r_pte_v; 
  assign io_requestor_1_resp_bits_level = count;
  assign io_requestor_1_resp_bits_homogeneous = pmaHomogeneous & pmpHomogeneous; 
  assign io_requestor_1_ptbr_mode = io_dpath_ptbr_mode;
  assign io_requestor_1_status_debug = io_dpath_status_debug;
  assign io_requestor_1_status_prv = io_dpath_status_prv;
  assign io_requestor_1_pmp_0_cfg_l = io_dpath_pmp_0_cfg_l;
  assign io_requestor_1_pmp_0_cfg_a = io_dpath_pmp_0_cfg_a;
  assign io_requestor_1_pmp_0_cfg_x = io_dpath_pmp_0_cfg_x;
  assign io_requestor_1_pmp_0_cfg_w = io_dpath_pmp_0_cfg_w;
  assign io_requestor_1_pmp_0_cfg_r = io_dpath_pmp_0_cfg_r;
  assign io_requestor_1_pmp_0_addr = io_dpath_pmp_0_addr; 
  assign io_requestor_1_pmp_0_mask = io_dpath_pmp_0_mask; 
  assign io_requestor_1_pmp_1_cfg_l = io_dpath_pmp_1_cfg_l; 
  assign io_requestor_1_pmp_1_cfg_a = io_dpath_pmp_1_cfg_a; 
  assign io_requestor_1_pmp_1_cfg_x = io_dpath_pmp_1_cfg_x; 
  assign io_requestor_1_pmp_1_cfg_w = io_dpath_pmp_1_cfg_w; 
  assign io_requestor_1_pmp_1_cfg_r = io_dpath_pmp_1_cfg_r; 
  assign io_requestor_1_pmp_1_addr = io_dpath_pmp_1_addr; 
  assign io_requestor_1_pmp_1_mask = io_dpath_pmp_1_mask; 
  assign io_requestor_1_pmp_2_cfg_l = io_dpath_pmp_2_cfg_l; 
  assign io_requestor_1_pmp_2_cfg_a = io_dpath_pmp_2_cfg_a; 
  assign io_requestor_1_pmp_2_cfg_x = io_dpath_pmp_2_cfg_x; 
  assign io_requestor_1_pmp_2_cfg_w = io_dpath_pmp_2_cfg_w; 
  assign io_requestor_1_pmp_2_cfg_r = io_dpath_pmp_2_cfg_r; 
  assign io_requestor_1_pmp_2_addr = io_dpath_pmp_2_addr; 
  assign io_requestor_1_pmp_2_mask = io_dpath_pmp_2_mask; 
  assign io_requestor_1_pmp_3_cfg_l = io_dpath_pmp_3_cfg_l; 
  assign io_requestor_1_pmp_3_cfg_a = io_dpath_pmp_3_cfg_a; 
  assign io_requestor_1_pmp_3_cfg_x = io_dpath_pmp_3_cfg_x; 
  assign io_requestor_1_pmp_3_cfg_w = io_dpath_pmp_3_cfg_w; 
  assign io_requestor_1_pmp_3_cfg_r = io_dpath_pmp_3_cfg_r;
  assign io_requestor_1_pmp_3_addr = io_dpath_pmp_3_addr;
  assign io_requestor_1_pmp_3_mask = io_dpath_pmp_3_mask;
  assign io_requestor_1_pmp_4_cfg_l = io_dpath_pmp_4_cfg_l;
  assign io_requestor_1_pmp_4_cfg_a = io_dpath_pmp_4_cfg_a;
  assign io_requestor_1_pmp_4_cfg_x = io_dpath_pmp_4_cfg_x;
  assign io_requestor_1_pmp_4_cfg_w = io_dpath_pmp_4_cfg_w; 
  assign io_requestor_1_pmp_4_cfg_r = io_dpath_pmp_4_cfg_r;
  assign io_requestor_1_pmp_4_addr = io_dpath_pmp_4_addr; 
  assign io_requestor_1_pmp_4_mask = io_dpath_pmp_4_mask; 
  assign io_requestor_1_pmp_5_cfg_l = io_dpath_pmp_5_cfg_l;
  assign io_requestor_1_pmp_5_cfg_a = io_dpath_pmp_5_cfg_a;
  assign io_requestor_1_pmp_5_cfg_x = io_dpath_pmp_5_cfg_x;
  assign io_requestor_1_pmp_5_cfg_w = io_dpath_pmp_5_cfg_w;
  assign io_requestor_1_pmp_5_cfg_r = io_dpath_pmp_5_cfg_r;
  assign io_requestor_1_pmp_5_addr = io_dpath_pmp_5_addr;
  assign io_requestor_1_pmp_5_mask = io_dpath_pmp_5_mask; 
  assign io_requestor_1_pmp_6_cfg_l = io_dpath_pmp_6_cfg_l; 
  assign io_requestor_1_pmp_6_cfg_a = io_dpath_pmp_6_cfg_a; 
  assign io_requestor_1_pmp_6_cfg_x = io_dpath_pmp_6_cfg_x; 
  assign io_requestor_1_pmp_6_cfg_w = io_dpath_pmp_6_cfg_w; 
  assign io_requestor_1_pmp_6_cfg_r = io_dpath_pmp_6_cfg_r; 
  assign io_requestor_1_pmp_6_addr = io_dpath_pmp_6_addr;
  assign io_requestor_1_pmp_6_mask = io_dpath_pmp_6_mask; 
  assign io_requestor_1_pmp_7_cfg_l = io_dpath_pmp_7_cfg_l;
  assign io_requestor_1_pmp_7_cfg_a = io_dpath_pmp_7_cfg_a;
  assign io_requestor_1_pmp_7_cfg_x = io_dpath_pmp_7_cfg_x;
  assign io_requestor_1_pmp_7_cfg_w = io_dpath_pmp_7_cfg_w;
  assign io_requestor_1_pmp_7_cfg_r = io_dpath_pmp_7_cfg_r;
  assign io_requestor_1_pmp_7_addr = io_dpath_pmp_7_addr; 
  assign io_requestor_1_pmp_7_mask = io_dpath_pmp_7_mask; 
  assign io_mem_req_valid = _T_82 | (state == 3'h3); 
  assign io_mem_req_bits_addr = pte_addr[31:0];
  assign io_mem_s1_kill = state != 3'h2;

  assign arb_clock = clock;
  assign arb_io_in_0_valid = io_requestor_0_req_valid;
  assign arb_io_in_0_bits_bits_addr = io_requestor_0_req_bits_bits_addr;
  assign arb_io_in_1_valid = io_requestor_1_req_valid; 
  assign arb_io_in_1_bits_valid = io_requestor_1_req_bits_valid;
  assign arb_io_in_1_bits_bits_addr = io_requestor_1_req_bits_bits_addr; 
  assign arb_io_out_ready = state == 3'h0;
  wire _T_752 = 3'h0 == state;
  wire [2:0] _T_754 = arb_io_out_bits_valid ? 3'h1 : 3'h0;
  wire _T_757 = 3'h1 == state;
  wire _T_761 = 3'h2 == state; 
  wire _T_763 = 3'h4 == state;
  wire _T_766 = 3'h7 == state;
  wire [2:0] _GEN_23 = _T_41 ? _T_754 : state;
  wire [2:0] _GEN_25 = pte_cache_hit ? state 
		: io_mem_req_ready ? 3'h2 
		: 3'h1; 
  wire [2:0] _GEN_29 = io_mem_s2_xcpt_ae_ld ? 3'h0 : 3'h5;
  wire [2:0] _GEN_78 = traverse ? 3'h1 : 3'h0; 
  assign _2_io_x = io_mem_s2_nack ? 3'h1 
		: mem_resp_valid ? _GEN_78 
		: _T_752 ? _GEN_23 
		: _T_757 ? _GEN_25 
		: _T_761 ? 3'h4 
		: _T_763 ? _GEN_29 
		: _T_766 ? 3'h0 
		: state;
  assign _2_1_io_x_ppn = mem_resp_valid ? res_ppn : _T_780_ppn;
  assign _2_1_io_x_d = mem_resp_valid ? tmp_d : _T_780_d;
  assign _2_1_io_x_a = mem_resp_valid ? tmp_a : _T_780_a;
  assign _2_1_io_x_g = mem_resp_valid ? tmp_g : _T_780_g;
  assign _2_1_io_x_u = mem_resp_valid ? tmp_u : _T_780_u;
  assign _2_1_io_x_x = mem_resp_valid ? tmp_x : _T_780_x;
  assign _2_1_io_x_w = mem_resp_valid ? tmp_w : _T_780_w;
  assign _2_1_io_x_r = mem_resp_valid ? tmp_r : _T_780_r;
  assign _2_1_io_x_v = mem_resp_valid ? res_v : _T_780_v;

always @(posedge clock) begin
	if (reset) begin
		state <= 3'h0;
	end else begin
		state <= _2_io_y;
	end
end

  wire _GEN_30 = io_mem_s2_xcpt_ae_ld & !r_req_dest;
  wire _GEN_31 = io_mem_s2_xcpt_ae_ld & r_req_dest;
  wire _GEN_37 = _T_766 & !r_req_dest;
  wire _GEN_38 = _T_766 & r_req_dest;
  wire _GEN_63 = _T_752 ? 1'h0 
		: _T_757 ? 1'h0 
		: _T_761 ? 1'h0 
		: _T_763 ? _GEN_30 
		: _GEN_37;
  wire _GEN_64 = _T_752 ? 1'h0 
		: _T_757 ? 1'h0 
		: _T_761 ? 1'h0 
		: _T_763 ? _GEN_31 
		: _GEN_38;
always @(posedge clock) begin
	if (mem_resp_valid && !traverse) begin
        	resp_valid_0 <= !r_req_dest | _GEN_63;
		resp_valid_1 <= r_req_dest | _GEN_64;
	end
	else begin
		if (_T_752) begin
			resp_valid_0 <= 1'h0;
			resp_valid_1 <= 1'h0;
		end else begin
			if (_T_757) begin
				resp_valid_0 <= 1'h0;
				resp_valid_1 <= 1'h0;
			end else begin
				if (_T_761) begin
					resp_valid_0 <= 1'h0;
					resp_valid_1 <= 1'h0;
				end else begin
					if (_T_763) begin
						resp_valid_0 <= _GEN_30;
						resp_valid_1 <= _GEN_31;
					end else begin
						resp_valid_0 <= _GEN_37;
						resp_valid_1 <= _GEN_38;
					end
				end
			end
		end
        end
end

always @(posedge clock) begin
    	invalidated <= io_dpath_sfence_valid | (invalidated & (state != 3'h0));
end

  wire _T_759 = count + 1'h1;
always @(posedge clock) begin
	if (mem_resp_valid & traverse) begin
		count <= _T_759;
	end else begin
		if (_T_752) begin
			count <= 1'h0;
		end else begin
			if (_T_757) begin
				if (pte_cache_hit) begin
					count <= _T_759;
				end
			end else begin
				if (!(_T_761)) begin
					if (!(_T_763)) begin
						if (_T_766) begin
							count <= !homogeneous | count;
						end
					end
				end
			end
		end
	end
end

always @(posedge clock) begin
    	if (mem_resp_valid & !traverse) begin
        	resp_ae <= ae;
	end else begin
		if (_T_752) begin
			resp_ae <= 1'h0;
		end else begin
			if (_T_757) begin
				resp_ae <= 1'h0;
			end else begin
				if (_T_761) begin
					resp_ae <= 1'h0;
				end else begin
					resp_ae <= _T_763 & io_mem_s2_xcpt_ae_ld;
				end
			end
		end
	end
end

  wire _T_86 = hits[3:2] != 2'h0;
  wire [3:0] _T_98 = !(hits[3:2] != 2'h0) ? (_T_56 | 4'h2) : (~ ((~ _T_56) | 4'h2));
  wire [3:0] _T_102 = 4'h1 << {1'h1,_T_86};
  wire [3:0] _T_107 = !(hits[3] | hits[1]) ? (_T_98 | _T_102) : (~ ((~ _T_98) | _T_102));	// TODO: verify
always @(posedge clock) begin
		if (_T_41) begin
			r_req_addr <= arb_io_out_bits_bits_addr;
			r_req_dest <= arb_io_chosen;
		end
		r_pte_ppn <= _2_1_io_y_ppn;
		r_pte_d <= _2_1_io_y_d;
		r_pte_a <= _2_1_io_y_a;
		r_pte_g <= _2_1_io_y_g;
		r_pte_u <= _2_1_io_y_u;
		r_pte_x <= _2_1_io_y_x;
		r_pte_w <= _2_1_io_y_w;
		r_pte_r <= _2_1_io_y_r;
		r_pte_v <= _2_1_io_y_v;
		mem_resp_valid <= io_mem_resp_valid;
		mem_resp_data <= io_mem_resp_bits_data;
		if (hit & _T_82) begin
			_T_42 <= _T_107[3:1];
		end
end

  wire [3:0] _T_80 = 4'h1 << r;
  wire _T_54 = mem_resp_valid & traverse & !hit & !invalidated;
always @(posedge clock) begin
	if (reset) begin
		valid <= 4'h0;
	end else begin
		if (io_dpath_sfence_valid & !io_dpath_sfence_bits_rs1) begin
			valid <= 4'h0;
		end else begin
			if (_T_54) begin
				valid <= valid | _T_80;
			end
		end
	end
end

always @(posedge clock) begin
	if (_T_54) begin
		if (2'h0 == r) begin
			tags_0 <= _tags_r;
			data_0 <= _data_r;
		end
		if (2'h1 == r) begin
			tags_1 <= _tags_r;
			data_1 <= _data_r;
		end
		if (2'h2 == r) begin
			tags_2 <= _tags_r;
			data_2 <= _data_r;
		end
		if (2'h3 == r) begin
			tags_3 <= _tags_r;
			data_3 <= _data_r;
		end
	end
end

    	`ifndef SYNTHESIS
  wire _T_796 = ((state == 3'h5) | reset) == 1'h0;
  wire _T_812 = ((state == 3'h4) | reset) == 1'h0;
	`endif
always @(posedge clock) begin
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (mem_resp_valid & _T_796) begin
          $fwrite(32'h80000002,"Assertion failed\n    at PTW.scala:342 assert(state === s_wait3)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (mem_resp_valid & _T_796) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (io_mem_s2_nack & _T_812) begin
          $fwrite(32'h80000002,"Assertion failed\n    at PTW.scala:359 assert(state === s_wait2)\n");
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (io_mem_s2_nack & _T_812) begin
          $fatal;
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
end

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
  state = _RAND_0[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  resp_valid_0 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  resp_valid_1 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  invalidated = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  count = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  resp_ae = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  r_req_addr = _RAND_6[19:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  r_req_dest = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {2{`RANDOM}};
  r_pte_ppn = _RAND_8[53:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  r_pte_d = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  r_pte_a = _RAND_10[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  r_pte_g = _RAND_11[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  r_pte_u = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  r_pte_x = _RAND_13[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  r_pte_w = _RAND_14[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  r_pte_r = _RAND_15[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  r_pte_v = _RAND_16[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  mem_resp_valid = _RAND_17[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  mem_resp_data = _RAND_18[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  _T_42 = _RAND_19[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  valid = _RAND_20[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  tags_0 = _RAND_21[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  tags_1 = _RAND_22[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  tags_2 = _RAND_23[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  tags_3 = _RAND_24[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  data_0 = _RAND_25[19:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  data_1 = _RAND_26[19:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  data_2 = _RAND_27[19:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  data_3 = _RAND_28[19:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
`endif // MY_ASSIGNMENT

endmodule
`endif // __PTW

