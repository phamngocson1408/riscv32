module MulDiv( // @[:freechips.rocketchip.system.DefaultRV32Config.fir@152527.2]
  input         clock, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@152528.4]
  input         reset, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@152529.4]
  output        io_req_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@152530.4]
  input         io_req_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@152530.4]
  input  [3:0]  io_req_bits_fn, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@152530.4]
  input  [31:0] io_req_bits_in1, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@152530.4]
  input  [31:0] io_req_bits_in2, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@152530.4]
  input  [4:0]  io_req_bits_tag, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@152530.4]
  input         io_kill, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@152530.4]
  input         io_resp_ready, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@152530.4]
  output        io_resp_valid, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@152530.4]
  output [31:0] io_resp_bits_data, // @[:freechips.rocketchip.system.DefaultRV32Config.fir@152530.4]
  output [4:0]  io_resp_bits_tag // @[:freechips.rocketchip.system.DefaultRV32Config.fir@152530.4]
);
  reg [2:0] state; // @[Multiplier.scala 51:18:freechips.rocketchip.system.DefaultRV32Config.fir@152535.4]
  reg [31:0] _RAND_0;
  reg [4:0] req_tag; // @[Multiplier.scala 53:16:freechips.rocketchip.system.DefaultRV32Config.fir@152536.4]
  reg [31:0] _RAND_1;
  reg [5:0] count; // @[Multiplier.scala 54:18:freechips.rocketchip.system.DefaultRV32Config.fir@152537.4]
  reg [31:0] _RAND_2;
  reg  neg_out; // @[Multiplier.scala 57:20:freechips.rocketchip.system.DefaultRV32Config.fir@152538.4]
  reg [31:0] _RAND_3;
  reg  isHi; // @[Multiplier.scala 58:17:freechips.rocketchip.system.DefaultRV32Config.fir@152539.4]
  reg [31:0] _RAND_4;
  reg  resHi; // @[Multiplier.scala 59:18:freechips.rocketchip.system.DefaultRV32Config.fir@152540.4]
  reg [31:0] _RAND_5;
  reg [32:0] divisor; // @[Multiplier.scala 60:20:freechips.rocketchip.system.DefaultRV32Config.fir@152541.4]
  reg [63:0] _RAND_6;
  reg [65:0] remainder; // @[Multiplier.scala 61:22:freechips.rocketchip.system.DefaultRV32Config.fir@152542.4]
  reg [95:0] _RAND_7;
  wire [3:0] _T; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@152543.4]
  wire  cmdMul; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@152544.4]
  wire [3:0] _T_3; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@152546.4]
  wire  _T_4; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@152547.4]
  wire [3:0] _T_5; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@152548.4]
  wire  _T_6; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@152549.4]
  wire  cmdHi; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@152551.4]
  wire [3:0] _T_9; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@152552.4]
  wire  _T_10; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@152553.4]
  wire [3:0] _T_11; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@152554.4]
  wire  _T_12; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@152555.4]
  wire  lhsSigned; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@152557.4]
  wire  _T_16; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@152559.4]
  wire  rhsSigned; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@152561.4]
  wire  _T_22; // @[Multiplier.scala 81:48:freechips.rocketchip.system.DefaultRV32Config.fir@152569.4]
  wire  lhs_sign; // @[Multiplier.scala 81:23:freechips.rocketchip.system.DefaultRV32Config.fir@152571.4]
  wire [15:0] _T_26; // @[Multiplier.scala 82:43:freechips.rocketchip.system.DefaultRV32Config.fir@152574.4]
  wire [15:0] _T_28; // @[Multiplier.scala 83:15:freechips.rocketchip.system.DefaultRV32Config.fir@152576.4]
  wire [31:0] lhs_in; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@152577.4]
  wire  _T_32; // @[Multiplier.scala 81:48:freechips.rocketchip.system.DefaultRV32Config.fir@152581.4]
  wire  rhs_sign; // @[Multiplier.scala 81:23:freechips.rocketchip.system.DefaultRV32Config.fir@152583.4]
  wire [15:0] _T_36; // @[Multiplier.scala 82:43:freechips.rocketchip.system.DefaultRV32Config.fir@152586.4]
  wire [15:0] _T_38; // @[Multiplier.scala 83:15:freechips.rocketchip.system.DefaultRV32Config.fir@152588.4]
  wire [32:0] _T_39; // @[Multiplier.scala 88:29:freechips.rocketchip.system.DefaultRV32Config.fir@152590.4]
  wire [32:0] subtractor; // @[Multiplier.scala 88:37:freechips.rocketchip.system.DefaultRV32Config.fir@152592.4]
  wire [31:0] _T_41; // @[Multiplier.scala 89:36:freechips.rocketchip.system.DefaultRV32Config.fir@152593.4]
  wire [31:0] _T_42; // @[Multiplier.scala 89:57:freechips.rocketchip.system.DefaultRV32Config.fir@152594.4]
  wire [31:0] result; // @[Multiplier.scala 89:19:freechips.rocketchip.system.DefaultRV32Config.fir@152595.4]
  wire [31:0] negated_remainder; // @[Multiplier.scala 90:27:freechips.rocketchip.system.DefaultRV32Config.fir@152597.4]
  wire  _T_44; // @[Multiplier.scala 92:39:freechips.rocketchip.system.DefaultRV32Config.fir@152598.4]
  wire  _T_45; // @[Multiplier.scala 93:20:freechips.rocketchip.system.DefaultRV32Config.fir@152600.6]
  wire  _T_46; // @[Multiplier.scala 96:18:freechips.rocketchip.system.DefaultRV32Config.fir@152604.6]
  wire  _T_47; // @[Multiplier.scala 101:39:freechips.rocketchip.system.DefaultRV32Config.fir@152610.4]
  wire [32:0] _T_48; // @[Multiplier.scala 106:29:freechips.rocketchip.system.DefaultRV32Config.fir@152616.4]
  wire [64:0] mulReg; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@152618.4]
  wire  mplierSign; // @[Multiplier.scala 107:29:freechips.rocketchip.system.DefaultRV32Config.fir@152619.4]
  wire [31:0] mplier; // @[Multiplier.scala 108:22:freechips.rocketchip.system.DefaultRV32Config.fir@152620.4]
  wire [32:0] _T_50; // @[Multiplier.scala 109:21:freechips.rocketchip.system.DefaultRV32Config.fir@152621.4]
  wire [32:0] accum; // @[Multiplier.scala 109:35:freechips.rocketchip.system.DefaultRV32Config.fir@152622.4]
  wire [32:0] mpcand; // @[Multiplier.scala 110:24:freechips.rocketchip.system.DefaultRV32Config.fir@152623.4]
  wire [7:0] _T_51; // @[Multiplier.scala 111:36:freechips.rocketchip.system.DefaultRV32Config.fir@152624.4]
  wire [8:0] _T_52; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@152625.4]
  wire [8:0] _T_53; // @[Multiplier.scala 111:58:freechips.rocketchip.system.DefaultRV32Config.fir@152626.4]
  wire [32:0] _GEN_35; // @[Multiplier.scala 111:65:freechips.rocketchip.system.DefaultRV32Config.fir@152627.4]
  wire [41:0] _T_54; // @[Multiplier.scala 111:65:freechips.rocketchip.system.DefaultRV32Config.fir@152627.4]
  wire [41:0] _GEN_36; // @[Multiplier.scala 111:74:freechips.rocketchip.system.DefaultRV32Config.fir@152628.4]
  wire [41:0] _T_56; // @[Multiplier.scala 111:74:freechips.rocketchip.system.DefaultRV32Config.fir@152629.4]
  wire [41:0] prod; // @[Multiplier.scala 111:74:freechips.rocketchip.system.DefaultRV32Config.fir@152630.4]
  wire [23:0] _T_57; // @[Multiplier.scala 112:36:freechips.rocketchip.system.DefaultRV32Config.fir@152631.4]
  wire [41:0] _T_58; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@152632.4]
  wire [65:0] nextMulReg; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@152633.4]
  wire  _T_59; // @[Multiplier.scala 113:30:freechips.rocketchip.system.DefaultRV32Config.fir@152634.4]
  wire  nextMplierSign; // @[Multiplier.scala 113:55:freechips.rocketchip.system.DefaultRV32Config.fir@152635.4]
  wire  _T_67; // @[Multiplier.scala 117:5:freechips.rocketchip.system.DefaultRV32Config.fir@152644.4]
  wire [32:0] _T_76; // @[Multiplier.scala 119:35:freechips.rocketchip.system.DefaultRV32Config.fir@152655.4]
  wire [31:0] _T_78; // @[Multiplier.scala 119:81:freechips.rocketchip.system.DefaultRV32Config.fir@152657.4]
  wire [64:0] nextMulReg1; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@152658.4]
  wire  _T_79; // @[Multiplier.scala 121:39:freechips.rocketchip.system.DefaultRV32Config.fir@152659.4]
  wire [32:0] _T_80; // @[Multiplier.scala 122:34:freechips.rocketchip.system.DefaultRV32Config.fir@152661.6]
  wire [31:0] _T_81; // @[Multiplier.scala 122:67:freechips.rocketchip.system.DefaultRV32Config.fir@152662.6]
  wire [65:0] _T_83; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@152664.6]
  wire [5:0] _T_85; // @[Multiplier.scala 124:20:freechips.rocketchip.system.DefaultRV32Config.fir@152667.6]
  wire  _T_86; // @[Multiplier.scala 125:26:freechips.rocketchip.system.DefaultRV32Config.fir@152669.6]
  wire  _T_88; // @[Multiplier.scala 130:39:freechips.rocketchip.system.DefaultRV32Config.fir@152676.4]
  wire  _T_89; // @[Multiplier.scala 134:28:freechips.rocketchip.system.DefaultRV32Config.fir@152678.6]
  wire [31:0] _T_90; // @[Multiplier.scala 135:24:freechips.rocketchip.system.DefaultRV32Config.fir@152679.6]
  wire [31:0] _T_91; // @[Multiplier.scala 135:45:freechips.rocketchip.system.DefaultRV32Config.fir@152680.6]
  wire [31:0] _T_92; // @[Multiplier.scala 135:14:freechips.rocketchip.system.DefaultRV32Config.fir@152681.6]
  wire  _T_94; // @[Multiplier.scala 135:67:freechips.rocketchip.system.DefaultRV32Config.fir@152683.6]
  wire [64:0] _T_96; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@152685.6]
  wire  _T_97; // @[Multiplier.scala 139:17:freechips.rocketchip.system.DefaultRV32Config.fir@152687.6]
  wire  _T_101; // @[Multiplier.scala 147:24:freechips.rocketchip.system.DefaultRV32Config.fir@152696.6]
  wire  _T_104; // @[Multiplier.scala 147:30:freechips.rocketchip.system.DefaultRV32Config.fir@152699.6]
  wire  _T_106; // @[Multiplier.scala 160:18:freechips.rocketchip.system.DefaultRV32Config.fir@152701.6]
  wire  _T_107; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@152706.4]
  wire  _T_108; // @[Multiplier.scala 162:24:freechips.rocketchip.system.DefaultRV32Config.fir@152707.4]
  wire  _T_109; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@152711.4]
  wire  _T_110; // @[Multiplier.scala 166:46:freechips.rocketchip.system.DefaultRV32Config.fir@152713.6]
  wire  _T_117; // @[Multiplier.scala 170:46:freechips.rocketchip.system.DefaultRV32Config.fir@152724.6]
  wire [32:0] _T_119; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@152727.6]
  wire [15:0] _T_128; // @[Multiplier.scala 177:69:freechips.rocketchip.system.DefaultRV32Config.fir@152741.4]
  wire [15:0] loOut; // @[Multiplier.scala 177:86:freechips.rocketchip.system.DefaultRV32Config.fir@152742.4]
  wire  _T_137; // @[Multiplier.scala 181:27:freechips.rocketchip.system.DefaultRV32Config.fir@152754.4]
  wire  _T_138; // @[Multiplier.scala 181:51:freechips.rocketchip.system.DefaultRV32Config.fir@152755.4]
  assign _T = io_req_bits_fn & 4'h4; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@152543.4]
  assign cmdMul = _T == 4'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@152544.4]
  assign _T_3 = io_req_bits_fn & 4'h5; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@152546.4]
  assign _T_4 = _T_3 == 4'h1; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@152547.4]
  assign _T_5 = io_req_bits_fn & 4'h2; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@152548.4]
  assign _T_6 = _T_5 == 4'h2; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@152549.4]
  assign cmdHi = _T_4 | _T_6; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@152551.4]
  assign _T_9 = io_req_bits_fn & 4'h6; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@152552.4]
  assign _T_10 = _T_9 == 4'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@152553.4]
  assign _T_11 = io_req_bits_fn & 4'h1; // @[Decode.scala 14:65:freechips.rocketchip.system.DefaultRV32Config.fir@152554.4]
  assign _T_12 = _T_11 == 4'h0; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@152555.4]
  assign lhsSigned = _T_10 | _T_12; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@152557.4]
  assign _T_16 = _T_3 == 4'h4; // @[Decode.scala 14:121:freechips.rocketchip.system.DefaultRV32Config.fir@152559.4]
  assign rhsSigned = _T_10 | _T_16; // @[Decode.scala 15:30:freechips.rocketchip.system.DefaultRV32Config.fir@152561.4]
  assign _T_22 = io_req_bits_in1[31]; // @[Multiplier.scala 81:48:freechips.rocketchip.system.DefaultRV32Config.fir@152569.4]
  assign lhs_sign = lhsSigned & _T_22; // @[Multiplier.scala 81:23:freechips.rocketchip.system.DefaultRV32Config.fir@152571.4]
  assign _T_26 = io_req_bits_in1[31:16]; // @[Multiplier.scala 82:43:freechips.rocketchip.system.DefaultRV32Config.fir@152574.4]
  assign _T_28 = io_req_bits_in1[15:0]; // @[Multiplier.scala 83:15:freechips.rocketchip.system.DefaultRV32Config.fir@152576.4]
  assign lhs_in = {_T_26,_T_28}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@152577.4]
  assign _T_32 = io_req_bits_in2[31]; // @[Multiplier.scala 81:48:freechips.rocketchip.system.DefaultRV32Config.fir@152581.4]
  assign rhs_sign = rhsSigned & _T_32; // @[Multiplier.scala 81:23:freechips.rocketchip.system.DefaultRV32Config.fir@152583.4]
  assign _T_36 = io_req_bits_in2[31:16]; // @[Multiplier.scala 82:43:freechips.rocketchip.system.DefaultRV32Config.fir@152586.4]
  assign _T_38 = io_req_bits_in2[15:0]; // @[Multiplier.scala 83:15:freechips.rocketchip.system.DefaultRV32Config.fir@152588.4]
  assign _T_39 = remainder[64:32]; // @[Multiplier.scala 88:29:freechips.rocketchip.system.DefaultRV32Config.fir@152590.4]
  assign subtractor = _T_39 - divisor; // @[Multiplier.scala 88:37:freechips.rocketchip.system.DefaultRV32Config.fir@152592.4]
  assign _T_41 = remainder[64:33]; // @[Multiplier.scala 89:36:freechips.rocketchip.system.DefaultRV32Config.fir@152593.4]
  assign _T_42 = remainder[31:0]; // @[Multiplier.scala 89:57:freechips.rocketchip.system.DefaultRV32Config.fir@152594.4]
  assign result = resHi ? _T_41 : _T_42; // @[Multiplier.scala 89:19:freechips.rocketchip.system.DefaultRV32Config.fir@152595.4]
  assign negated_remainder = 32'h0 - result; // @[Multiplier.scala 90:27:freechips.rocketchip.system.DefaultRV32Config.fir@152597.4]
  assign _T_44 = state == 3'h1; // @[Multiplier.scala 92:39:freechips.rocketchip.system.DefaultRV32Config.fir@152598.4]
  assign _T_45 = remainder[31]; // @[Multiplier.scala 93:20:freechips.rocketchip.system.DefaultRV32Config.fir@152600.6]
  assign _T_46 = divisor[31]; // @[Multiplier.scala 96:18:freechips.rocketchip.system.DefaultRV32Config.fir@152604.6]
  assign _T_47 = state == 3'h5; // @[Multiplier.scala 101:39:freechips.rocketchip.system.DefaultRV32Config.fir@152610.4]
  assign _T_48 = remainder[65:33]; // @[Multiplier.scala 106:29:freechips.rocketchip.system.DefaultRV32Config.fir@152616.4]
  assign mulReg = {_T_48,_T_42}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@152618.4]
  assign mplierSign = remainder[32]; // @[Multiplier.scala 107:29:freechips.rocketchip.system.DefaultRV32Config.fir@152619.4]
  assign mplier = mulReg[31:0]; // @[Multiplier.scala 108:22:freechips.rocketchip.system.DefaultRV32Config.fir@152620.4]
  assign _T_50 = mulReg[64:32]; // @[Multiplier.scala 109:21:freechips.rocketchip.system.DefaultRV32Config.fir@152621.4]
  assign accum = $signed(_T_50); // @[Multiplier.scala 109:35:freechips.rocketchip.system.DefaultRV32Config.fir@152622.4]
  assign mpcand = $signed(divisor); // @[Multiplier.scala 110:24:freechips.rocketchip.system.DefaultRV32Config.fir@152623.4]
  assign _T_51 = mplier[7:0]; // @[Multiplier.scala 111:36:freechips.rocketchip.system.DefaultRV32Config.fir@152624.4]
  assign _T_52 = {mplierSign,_T_51}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@152625.4]
  assign _T_53 = $signed(_T_52); // @[Multiplier.scala 111:58:freechips.rocketchip.system.DefaultRV32Config.fir@152626.4]
  assign _GEN_35 = {{24{_T_53[8]}},_T_53}; // @[Multiplier.scala 111:65:freechips.rocketchip.system.DefaultRV32Config.fir@152627.4]
  assign _T_54 = $signed(_GEN_35) * $signed(mpcand); // @[Multiplier.scala 111:65:freechips.rocketchip.system.DefaultRV32Config.fir@152627.4]
  assign _GEN_36 = {{9{accum[32]}},accum}; // @[Multiplier.scala 111:74:freechips.rocketchip.system.DefaultRV32Config.fir@152628.4]
  assign _T_56 = $signed(_T_54) + $signed(_GEN_36); // @[Multiplier.scala 111:74:freechips.rocketchip.system.DefaultRV32Config.fir@152629.4]
  assign prod = $signed(_T_56); // @[Multiplier.scala 111:74:freechips.rocketchip.system.DefaultRV32Config.fir@152630.4]
  assign _T_57 = mplier[31:8]; // @[Multiplier.scala 112:36:freechips.rocketchip.system.DefaultRV32Config.fir@152631.4]
  assign _T_58 = $unsigned(prod); // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@152632.4]
  assign nextMulReg = {_T_58,_T_57}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@152633.4]
  assign _T_59 = count == 6'h2; // @[Multiplier.scala 113:30:freechips.rocketchip.system.DefaultRV32Config.fir@152634.4]
  assign nextMplierSign = _T_59 & neg_out; // @[Multiplier.scala 113:55:freechips.rocketchip.system.DefaultRV32Config.fir@152635.4]
  assign _T_67 = isHi == 1'h0; // @[Multiplier.scala 117:5:freechips.rocketchip.system.DefaultRV32Config.fir@152644.4]
  assign _T_76 = nextMulReg[64:32]; // @[Multiplier.scala 119:35:freechips.rocketchip.system.DefaultRV32Config.fir@152655.4]
  assign _T_78 = nextMulReg[31:0]; // @[Multiplier.scala 119:81:freechips.rocketchip.system.DefaultRV32Config.fir@152657.4]
  assign nextMulReg1 = {_T_76,_T_78}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@152658.4]
  assign _T_79 = state == 3'h2; // @[Multiplier.scala 121:39:freechips.rocketchip.system.DefaultRV32Config.fir@152659.4]
  assign _T_80 = nextMulReg1[64:32]; // @[Multiplier.scala 122:34:freechips.rocketchip.system.DefaultRV32Config.fir@152661.6]
  assign _T_81 = nextMulReg1[31:0]; // @[Multiplier.scala 122:67:freechips.rocketchip.system.DefaultRV32Config.fir@152662.6]
  assign _T_83 = {_T_80,nextMplierSign,_T_81}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@152664.6]
  assign _T_85 = count + 6'h1; // @[Multiplier.scala 124:20:freechips.rocketchip.system.DefaultRV32Config.fir@152667.6]
  assign _T_86 = count == 6'h3; // @[Multiplier.scala 125:26:freechips.rocketchip.system.DefaultRV32Config.fir@152669.6]
  assign _T_88 = state == 3'h3; // @[Multiplier.scala 130:39:freechips.rocketchip.system.DefaultRV32Config.fir@152676.4]
  assign _T_89 = subtractor[32]; // @[Multiplier.scala 134:28:freechips.rocketchip.system.DefaultRV32Config.fir@152678.6]
  assign _T_90 = remainder[63:32]; // @[Multiplier.scala 135:24:freechips.rocketchip.system.DefaultRV32Config.fir@152679.6]
  assign _T_91 = subtractor[31:0]; // @[Multiplier.scala 135:45:freechips.rocketchip.system.DefaultRV32Config.fir@152680.6]
  assign _T_92 = _T_89 ? _T_90 : _T_91; // @[Multiplier.scala 135:14:freechips.rocketchip.system.DefaultRV32Config.fir@152681.6]
  assign _T_94 = _T_89 == 1'h0; // @[Multiplier.scala 135:67:freechips.rocketchip.system.DefaultRV32Config.fir@152683.6]
  assign _T_96 = {_T_92,_T_42,_T_94}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@152685.6]
  assign _T_97 = count == 6'h20; // @[Multiplier.scala 139:17:freechips.rocketchip.system.DefaultRV32Config.fir@152687.6]
  assign _T_101 = count == 6'h0; // @[Multiplier.scala 147:24:freechips.rocketchip.system.DefaultRV32Config.fir@152696.6]
  assign _T_104 = _T_101 & _T_94; // @[Multiplier.scala 147:30:freechips.rocketchip.system.DefaultRV32Config.fir@152699.6]
  assign _T_106 = _T_104 & _T_67; // @[Multiplier.scala 160:18:freechips.rocketchip.system.DefaultRV32Config.fir@152701.6]
  assign _T_107 = io_resp_ready & io_resp_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@152706.4]
  assign _T_108 = _T_107 | io_kill; // @[Multiplier.scala 162:24:freechips.rocketchip.system.DefaultRV32Config.fir@152707.4]
  assign _T_109 = io_req_ready & io_req_valid; // @[Decoupled.scala 40:37:freechips.rocketchip.system.DefaultRV32Config.fir@152711.4]
  assign _T_110 = lhs_sign | rhs_sign; // @[Multiplier.scala 166:46:freechips.rocketchip.system.DefaultRV32Config.fir@152713.6]
  assign _T_117 = lhs_sign != rhs_sign; // @[Multiplier.scala 170:46:freechips.rocketchip.system.DefaultRV32Config.fir@152724.6]
  assign _T_119 = {rhs_sign,_T_36,_T_38}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@152727.6]
  assign _T_128 = result[31:16]; // @[Multiplier.scala 177:69:freechips.rocketchip.system.DefaultRV32Config.fir@152741.4]
  assign loOut = result[15:0]; // @[Multiplier.scala 177:86:freechips.rocketchip.system.DefaultRV32Config.fir@152742.4]
  assign _T_137 = state == 3'h6; // @[Multiplier.scala 181:27:freechips.rocketchip.system.DefaultRV32Config.fir@152754.4]
  assign _T_138 = state == 3'h7; // @[Multiplier.scala 181:51:freechips.rocketchip.system.DefaultRV32Config.fir@152755.4]
  assign io_req_ready = state == 3'h0; // @[Multiplier.scala 182:16:freechips.rocketchip.system.DefaultRV32Config.fir@152759.4]
  assign io_resp_valid = _T_137 | _T_138; // @[Multiplier.scala 181:17:freechips.rocketchip.system.DefaultRV32Config.fir@152757.4]
  assign io_resp_bits_data = {_T_128,loOut}; // @[Multiplier.scala 180:21:freechips.rocketchip.system.DefaultRV32Config.fir@152753.4]
  assign io_resp_bits_tag = req_tag; // @[Multiplier.scala 179:16:freechips.rocketchip.system.DefaultRV32Config.fir@152751.4]
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
  req_tag = _RAND_1[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  count = _RAND_2[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  neg_out = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  isHi = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  resHi = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {2{`RANDOM}};
  divisor = _RAND_6[32:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {3{`RANDOM}};
  remainder = _RAND_7[65:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge clock) begin
    if (reset) begin
      state <= 3'h0;
    end else begin
      if (_T_109) begin
        if (cmdMul) begin
          state <= 3'h2;
        end else begin
          if (_T_110) begin
            state <= 3'h1;
          end else begin
            state <= 3'h3;
          end
        end
      end else begin
        if (_T_108) begin
          state <= 3'h0;
        end else begin
          if (_T_88) begin
            if (_T_97) begin
              if (neg_out) begin
                state <= 3'h5;
              end else begin
                state <= 3'h7;
              end
            end else begin
              if (_T_79) begin
                if (_T_86) begin
                  state <= 3'h6;
                end else begin
                  if (_T_47) begin
                    state <= 3'h7;
                  end else begin
                    if (_T_44) begin
                      state <= 3'h3;
                    end
                  end
                end
              end else begin
                if (_T_47) begin
                  state <= 3'h7;
                end else begin
                  if (_T_44) begin
                    state <= 3'h3;
                  end
                end
              end
            end
          end else begin
            if (_T_79) begin
              if (_T_86) begin
                state <= 3'h6;
              end else begin
                if (_T_47) begin
                  state <= 3'h7;
                end else begin
                  if (_T_44) begin
                    state <= 3'h3;
                  end
                end
              end
            end else begin
              if (_T_47) begin
                state <= 3'h7;
              end else begin
                if (_T_44) begin
                  state <= 3'h3;
                end
              end
            end
          end
        end
      end
    end
    if (_T_109) begin
      req_tag <= io_req_bits_tag;
    end
    if (_T_109) begin
      count <= 6'h0;
    end else begin
      if (_T_88) begin
        count <= _T_85;
      end else begin
        if (_T_79) begin
          count <= _T_85;
        end
      end
    end
    if (_T_109) begin
      if (cmdHi) begin
        neg_out <= lhs_sign;
      end else begin
        neg_out <= _T_117;
      end
    end else begin
      if (_T_88) begin
        if (_T_106) begin
          neg_out <= 1'h0;
        end
      end
    end
    if (_T_109) begin
      isHi <= cmdHi;
    end
    if (_T_109) begin
      resHi <= 1'h0;
    end else begin
      if (_T_88) begin
        if (_T_97) begin
          resHi <= isHi;
        end else begin
          if (_T_79) begin
            if (_T_86) begin
              resHi <= isHi;
            end else begin
              if (_T_47) begin
                resHi <= 1'h0;
              end
            end
          end else begin
            if (_T_47) begin
              resHi <= 1'h0;
            end
          end
        end
      end else begin
        if (_T_79) begin
          if (_T_86) begin
            resHi <= isHi;
          end else begin
            if (_T_47) begin
              resHi <= 1'h0;
            end
          end
        end else begin
          if (_T_47) begin
            resHi <= 1'h0;
          end
        end
      end
    end
    if (_T_109) begin
      divisor <= _T_119;
    end else begin
      if (_T_44) begin
        if (_T_46) begin
          divisor <= subtractor;
        end
      end
    end
    if (_T_109) begin
      remainder <= {{34'd0}, lhs_in};
    end else begin
      if (_T_88) begin
        remainder <= {{1'd0}, _T_96};
      end else begin
        if (_T_79) begin
          remainder <= _T_83;
        end else begin
          if (_T_47) begin
            remainder <= {{34'd0}, negated_remainder};
          end else begin
            if (_T_44) begin
              if (_T_45) begin
                remainder <= {{34'd0}, negated_remainder};
              end
            end
          end
        end
      end
    end
  end
endmodule

