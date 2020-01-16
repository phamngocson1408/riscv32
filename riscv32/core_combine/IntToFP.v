module IntToFP(
  input         clock,
  input         reset,
  input         io_in_valid,
  input         io_in_bits_wflags,
  input  [2:0]  io_in_bits_rm,
  input  [1:0]  io_in_bits_typ,
  input  [31:0] io_in_bits_in1,
  output [32:0] io_out_bits_data,
  output [4:0]  io_out_bits_exc
);
  wire  INToRecFN_io_signedIn; // @[FPU.scala 497:23:freechips.rocketchip.system.DefaultRV32Config.fir@143546.6]
  wire [31:0] INToRecFN_io_in; // @[FPU.scala 497:23:freechips.rocketchip.system.DefaultRV32Config.fir@143546.6]
  wire [2:0] INToRecFN_io_roundingMode; // @[FPU.scala 497:23:freechips.rocketchip.system.DefaultRV32Config.fir@143546.6]
  wire [32:0] INToRecFN_io_out; // @[FPU.scala 497:23:freechips.rocketchip.system.DefaultRV32Config.fir@143546.6]
  wire [4:0] INToRecFN_io_exceptionFlags; // @[FPU.scala 497:23:freechips.rocketchip.system.DefaultRV32Config.fir@143546.6]
  reg  inPipe_valid; // @[Valid.scala 117:22:freechips.rocketchip.system.DefaultRV32Config.fir@143417.4]
  reg [31:0] _RAND_0;
  reg  inPipe_bits_wflags; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@143419.4]
  reg [31:0] _RAND_1;
  reg [2:0] inPipe_bits_rm; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@143419.4]
  reg [31:0] _RAND_2;
  reg [1:0] inPipe_bits_typ; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@143419.4]
  reg [31:0] _RAND_3;
  reg [31:0] inPipe_bits_in1; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@143419.4]
  reg [31:0] _RAND_4;
  wire  _T_2; // @[rawFloatFromFN.scala 46:22:freechips.rocketchip.system.DefaultRV32Config.fir@143451.4]
  wire [7:0] _T_3; // @[rawFloatFromFN.scala 47:23:freechips.rocketchip.system.DefaultRV32Config.fir@143452.4]
  wire [22:0] _T_4; // @[rawFloatFromFN.scala 48:25:freechips.rocketchip.system.DefaultRV32Config.fir@143453.4]
  wire  _T_8; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143457.4]
  wire  _T_9; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143458.4]
  wire  _T_10; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143459.4]
  wire  _T_11; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143460.4]
  wire  _T_12; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143461.4]
  wire  _T_13; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143462.4]
  wire  _T_14; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143463.4]
  wire  _T_15; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143464.4]
  wire  _T_16; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143465.4]
  wire  _T_17; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143466.4]
  wire  _T_18; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143467.4]
  wire  _T_19; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143468.4]
  wire  _T_20; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143469.4]
  wire  _T_21; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143470.4]
  wire  _T_22; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143471.4]
  wire  _T_23; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143472.4]
  wire  _T_24; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143473.4]
  wire  _T_25; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143474.4]
  wire  _T_26; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143475.4]
  wire  _T_27; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143476.4]
  wire  _T_28; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143477.4]
  wire  _T_29; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143478.4]
  wire [4:0] _T_30; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143479.4]
  wire [4:0] _T_31; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143480.4]
  wire [4:0] _T_32; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143481.4]
  wire [4:0] _T_33; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143482.4]
  wire [4:0] _T_34; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143483.4]
  wire [4:0] _T_35; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143484.4]
  wire [4:0] _T_36; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143485.4]
  wire [4:0] _T_37; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143486.4]
  wire [4:0] _T_38; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143487.4]
  wire [4:0] _T_39; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143488.4]
  wire [4:0] _T_40; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143489.4]
  wire [4:0] _T_41; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143490.4]
  wire [4:0] _T_42; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143491.4]
  wire [4:0] _T_43; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143492.4]
  wire [4:0] _T_44; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143493.4]
  wire [4:0] _T_45; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143494.4]
  wire [4:0] _T_46; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143495.4]
  wire [4:0] _T_47; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143496.4]
  wire [4:0] _T_48; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143497.4]
  wire [4:0] _T_49; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143498.4]
  wire [4:0] _T_50; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143499.4]
  wire [53:0] _GEN_23; // @[rawFloatFromFN.scala 54:36:freechips.rocketchip.system.DefaultRV32Config.fir@143501.4]
  wire [21:0] _T_53; // @[rawFloatFromFN.scala 54:47:freechips.rocketchip.system.DefaultRV32Config.fir@143502.4]
  wire [22:0] _T_54; // @[rawFloatFromFN.scala 54:64:freechips.rocketchip.system.DefaultRV32Config.fir@143503.4]
  wire [8:0] _GEN_24; // @[rawFloatFromFN.scala 57:26:freechips.rocketchip.system.DefaultRV32Config.fir@143504.4]
  wire [8:0] _T_55; // @[rawFloatFromFN.scala 57:26:freechips.rocketchip.system.DefaultRV32Config.fir@143504.4]
  wire [7:0] _GEN_25; // @[rawFloatFromFN.scala 60:22:freechips.rocketchip.system.DefaultRV32Config.fir@143507.4]
  wire [8:0] _GEN_26; // @[rawFloatFromFN.scala 59:15:freechips.rocketchip.system.DefaultRV32Config.fir@143508.4]
  wire [1:0] _T_62; // @[rawFloatFromFN.scala 63:37:freechips.rocketchip.system.DefaultRV32Config.fir@143511.4]
  wire  _T_63; // @[rawFloatFromFN.scala 63:62:freechips.rocketchip.system.DefaultRV32Config.fir@143512.4]
  wire  _T_65; // @[rawFloatFromFN.scala 66:36:freechips.rocketchip.system.DefaultRV32Config.fir@143515.4]
  wire  _T_66; // @[rawFloatFromFN.scala 66:33:freechips.rocketchip.system.DefaultRV32Config.fir@143516.4]
  wire  _T_70; // @[rawFloatFromFN.scala 72:29:freechips.rocketchip.system.DefaultRV32Config.fir@143525.4]
  wire [2:0] _T_74; // @[recFNFromFN.scala 48:53:freechips.rocketchip.system.DefaultRV32Config.fir@143530.4]
  wire [5:0] _T_78; // @[recFNFromFN.scala 50:23:freechips.rocketchip.system.DefaultRV32Config.fir@143534.4]
  wire [22:0] _T_79; // @[recFNFromFN.scala 51:22:freechips.rocketchip.system.DefaultRV32Config.fir@143535.4]
  wire [31:0] _T_83; // @[FPU.scala 483:39:freechips.rocketchip.system.DefaultRV32Config.fir@143540.4]
  wire  _T_85; // @[FPU.scala 498:38:freechips.rocketchip.system.DefaultRV32Config.fir@143550.6]
  reg [32:0] _T_88_data; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@143561.4]
  reg [63:0] _RAND_5;
  reg [4:0] _T_88_exc; // @[Reg.scala 15:16:freechips.rocketchip.system.DefaultRV32Config.fir@143561.4]
  reg [31:0] _RAND_6;
  INToRecFN INToRecFN ( // @[FPU.scala 497:23:freechips.rocketchip.system.DefaultRV32Config.fir@143546.6]
    .io_signedIn(INToRecFN_io_signedIn),
    .io_in(INToRecFN_io_in),
    .io_roundingMode(INToRecFN_io_roundingMode),
    .io_out(INToRecFN_io_out),
    .io_exceptionFlags(INToRecFN_io_exceptionFlags)
  );

`define MY_ASSIGNEMNT
`ifdef MY_ASSIGNEMNT
  assign io_out_bits_data = _T_88_data;
  assign io_out_bits_exc = _T_88_exc;
  assign INToRecFN_io_signedIn = ~ inPipe_bits_typ[0];
  assign INToRecFN_io_in = $unsigned($signed(inPipe_bits_in1));
  assign INToRecFN_io_roundingMode = inPipe_bits_rm;

  wire _T_5 = inPipe_bits_in1[30:23] == 8'h0;
  wire _T_6 = inPipe_bits_in1[22:0] == 23'h0;
  wire _T_61 = _T_5 & _T_6;
  wire [4:0] _T_51 = inPipe_bits_in1[22] ? 5'h0 
			: inPipe_bits_in1[21] ? 5'h1 
			: inPipe_bits_in1[20] ? 5'h2 
			: inPipe_bits_in1[19] ? 5'h3 
			: inPipe_bits_in1[18] ? 5'h4 
			: inPipe_bits_in1[17] ? 5'h5 
			: inPipe_bits_in1[16] ? 5'h6 
			: inPipe_bits_in1[15] ? 5'h7 
			: inPipe_bits_in1[14] ? 5'h8 
			: inPipe_bits_in1[13] ? 5'h9 
			: inPipe_bits_in1[12] ? 5'ha 
			: inPipe_bits_in1[11] ? 5'hb 
			: inPipe_bits_in1[10] ? 5'hc 
			: inPipe_bits_in1[9] ? 5'hd 
			: inPipe_bits_in1[8] ? 5'he 
			: inPipe_bits_in1[7] ? 5'hf 
			: inPipe_bits_in1[6] ? 5'h10 
			: inPipe_bits_in1[5] ? 5'h11 
			: inPipe_bits_in1[4] ? 5'h12 
			: inPipe_bits_in1[3] ? 5'h13 
			: inPipe_bits_in1[2] ? 5'h14 
			: inPipe_bits_in1[1] ? 5'h15
			: 5'h16 
			;
  wire [8:0] _T_56 = _T_5 ? ({{4'd0}, _T_51} ^ 9'h1ff) : {{1'd0}, inPipe_bits_in1[30:23]};
  wire [1:0] _T_57 = _T_5 ? 2'h2 : 2'h1;
  wire [7:0] _T_58 = 8'h80 | {{6'd0}, _T_57};
  wire [8:0] _T_60 = _T_56 + {{1'd0}, _T_58};
  wire [9:0] _T_69 = {1'b0,$signed(_T_60)};
  wire [2:0] _T_75 = _T_61 ? 3'h0 : _T_69[8:6];
  wire[2:0] _GEN_27 = {{2'd0}, ((_T_60[8:7] == 2'h3) & !(inPipe_bits_in1[22:0] == 23'h0))};
  wire [2:0] _T_77 = _T_75 | _GEN_27;
  wire [53:0] _T_52 = {{31'd0}, inPipe_bits_in1[22:0]} << _T_51;
  wire [22:0] _T_71 = _T_5 ? {_T_52[21:0], 1'h0} : inPipe_bits_in1[22:0];
  wire [24:0] _T_73 = {1'h0, !_T_61, _T_71};
  wire [32:0] _T_82 = {inPipe_bits_in1[31], _T_77, _T_69[5:0], _T_73[22:0]};
always @(posedge clock) begin
	if (reset) begin
		inPipe_valid <= 1'h0;
		inPipe_bits_wflags <= 1'h0;
		inPipe_bits_rm <= 3'h0;
		inPipe_bits_typ <= 2'h0;
		inPipe_bits_in1 <= 32'h00;
		_T_88_data <= 33'h000;
		_T_88_exc <= 5'h0;
	end
	else begin
		inPipe_valid <= io_in_valid;
		if (io_in_valid) begin
			inPipe_bits_wflags <= io_in_bits_wflags;
			inPipe_bits_rm <= io_in_bits_rm;
			inPipe_bits_typ <= io_in_bits_typ;
			inPipe_bits_in1 <= io_in_bits_in1;
		end
		if (inPipe_valid) begin
			if (inPipe_bits_wflags) begin
				_T_88_data <= INToRecFN_io_out;
				_T_88_exc <= INToRecFN_io_exceptionFlags;
			end else begin
				 _T_88_data <= _T_82;
		  		_T_88_exc <= 5'h0;
		  	end
		end
	end
end
`endif // MY_ASSIGNEMNT

`ifndef MY_ASSIGNEMNT
  assign io_out_bits_data = _T_88_data; // @[FPU.scala 511:10:freechips.rocketchip.system.DefaultRV32Config.fir@143570.4]
  assign io_out_bits_exc = _T_88_exc; // @[FPU.scala 511:10:freechips.rocketchip.system.DefaultRV32Config.fir@143570.4]
  assign INToRecFN_io_signedIn = ~ _T_85; // @[FPU.scala 498:23:freechips.rocketchip.system.DefaultRV32Config.fir@143552.6]
  assign INToRecFN_io_in = $unsigned(_T_83); // @[FPU.scala 499:17:freechips.rocketchip.system.DefaultRV32Config.fir@143553.6]
  assign INToRecFN_io_roundingMode = inPipe_bits_rm; // @[FPU.scala 500:27:freechips.rocketchip.system.DefaultRV32Config.fir@143554.6]
  wire  _T_6; // @[rawFloatFromFN.scala 51:38:freechips.rocketchip.system.DefaultRV32Config.fir@143455.4]
  assign _T_6 = _T_4 == 23'h0; // @[rawFloatFromFN.scala 51:38:freechips.rocketchip.system.DefaultRV32Config.fir@143455.4]
  wire  _T_5; // @[rawFloatFromFN.scala 50:34:freechips.rocketchip.system.DefaultRV32Config.fir@143454.4]
  assign _T_5 = _T_3 == 8'h0; // @[rawFloatFromFN.scala 50:34:freechips.rocketchip.system.DefaultRV32Config.fir@143454.4]
  wire  _T_61; // @[rawFloatFromFN.scala 62:34:freechips.rocketchip.system.DefaultRV32Config.fir@143510.4]
  assign _T_61 = _T_5 & _T_6; // @[rawFloatFromFN.scala 62:34:freechips.rocketchip.system.DefaultRV32Config.fir@143510.4]
  wire [4:0] _T_51; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143500.4]
  assign _T_51 = _T_29 ? 5'h0 : _T_50; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143500.4]
  wire [8:0] _T_56; // @[rawFloatFromFN.scala 56:16:freechips.rocketchip.system.DefaultRV32Config.fir@143505.4]
  assign _T_56 = _T_5 ? _T_55 : {{1'd0}, _T_3}; // @[rawFloatFromFN.scala 56:16:freechips.rocketchip.system.DefaultRV32Config.fir@143505.4]
  wire [1:0] _T_57; // @[rawFloatFromFN.scala 60:27:freechips.rocketchip.system.DefaultRV32Config.fir@143506.4]
  assign _T_57 = _T_5 ? 2'h2 : 2'h1; // @[rawFloatFromFN.scala 60:27:freechips.rocketchip.system.DefaultRV32Config.fir@143506.4]
  wire [7:0] _T_58; // @[rawFloatFromFN.scala 60:22:freechips.rocketchip.system.DefaultRV32Config.fir@143507.4]
  assign _T_58 = 8'h80 | _GEN_25; // @[rawFloatFromFN.scala 60:22:freechips.rocketchip.system.DefaultRV32Config.fir@143507.4]
  wire [8:0] _T_60; // @[rawFloatFromFN.scala 59:15:freechips.rocketchip.system.DefaultRV32Config.fir@143509.4]
  assign _T_60 = _T_56 + _GEN_26; // @[rawFloatFromFN.scala 59:15:freechips.rocketchip.system.DefaultRV32Config.fir@143509.4]
  wire [9:0] _T_69; // @[rawFloatFromFN.scala 70:48:freechips.rocketchip.system.DefaultRV32Config.fir@143523.4]
  assign _T_69 = {1'b0,$signed(_T_60)}; // @[rawFloatFromFN.scala 70:48:freechips.rocketchip.system.DefaultRV32Config.fir@143523.4]
  wire [2:0] _T_75; // @[recFNFromFN.scala 48:16:freechips.rocketchip.system.DefaultRV32Config.fir@143531.4]
  assign _T_75 = _T_61 ? 3'h0 : _T_74; // @[recFNFromFN.scala 48:16:freechips.rocketchip.system.DefaultRV32Config.fir@143531.4]
  wire [2:0] _GEN_27; // @[recFNFromFN.scala 48:79:freechips.rocketchip.system.DefaultRV32Config.fir@143533.4]
  assign _GEN_27 = {{2'd0}, _T_66}; // @[recFNFromFN.scala 48:79:freechips.rocketchip.system.DefaultRV32Config.fir@143533.4]
  wire [2:0] _T_77; // @[recFNFromFN.scala 48:79:freechips.rocketchip.system.DefaultRV32Config.fir@143533.4]
  assign _T_77 = _T_75 | _GEN_27; // @[recFNFromFN.scala 48:79:freechips.rocketchip.system.DefaultRV32Config.fir@143533.4]
  wire [53:0] _T_52; // @[rawFloatFromFN.scala 54:36:freechips.rocketchip.system.DefaultRV32Config.fir@143501.4]
  assign _T_52 = _GEN_23 << _T_51; // @[rawFloatFromFN.scala 54:36:freechips.rocketchip.system.DefaultRV32Config.fir@143501.4]
  wire [22:0] _T_71; // @[rawFloatFromFN.scala 72:42:freechips.rocketchip.system.DefaultRV32Config.fir@143526.4]
  assign _T_71 = _T_5 ? _T_54 : _T_4; // @[rawFloatFromFN.scala 72:42:freechips.rocketchip.system.DefaultRV32Config.fir@143526.4]
  wire [24:0] _T_73; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@143528.4]
  assign _T_73 = {1'h0,_T_70,_T_71}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@143528.4]
  wire [32:0] _T_82; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@143538.4]
  assign _T_82 = {_T_2,_T_77,_T_78,_T_79}; // @[Cat.scala 29:58:freechips.rocketchip.system.DefaultRV32Config.fir@143538.4]

`endif // MY_ASSIGNEMNT

  assign _T_2 = inPipe_bits_in1[31]; // @[rawFloatFromFN.scala 46:22:freechips.rocketchip.system.DefaultRV32Config.fir@143451.4]
  assign _T_3 = inPipe_bits_in1[30:23]; // @[rawFloatFromFN.scala 47:23:freechips.rocketchip.system.DefaultRV32Config.fir@143452.4]
  assign _T_4 = inPipe_bits_in1[22:0]; // @[rawFloatFromFN.scala 48:25:freechips.rocketchip.system.DefaultRV32Config.fir@143453.4]
  assign _T_8 = _T_4[1]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143457.4]
  assign _T_9 = _T_4[2]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143458.4]
  assign _T_10 = _T_4[3]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143459.4]
  assign _T_11 = _T_4[4]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143460.4]
  assign _T_12 = _T_4[5]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143461.4]
  assign _T_13 = _T_4[6]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143462.4]
  assign _T_14 = _T_4[7]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143463.4]
  assign _T_15 = _T_4[8]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143464.4]
  assign _T_16 = _T_4[9]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143465.4]
  assign _T_17 = _T_4[10]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143466.4]
  assign _T_18 = _T_4[11]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143467.4]
  assign _T_19 = _T_4[12]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143468.4]
  assign _T_20 = _T_4[13]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143469.4]
  assign _T_21 = _T_4[14]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143470.4]
  assign _T_22 = _T_4[15]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143471.4]
  assign _T_23 = _T_4[16]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143472.4]
  assign _T_24 = _T_4[17]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143473.4]
  assign _T_25 = _T_4[18]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143474.4]
  assign _T_26 = _T_4[19]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143475.4]
  assign _T_27 = _T_4[20]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143476.4]
  assign _T_28 = _T_4[21]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143477.4]
  assign _T_29 = _T_4[22]; // @[primitives.scala 92:52:freechips.rocketchip.system.DefaultRV32Config.fir@143478.4]
  assign _T_30 = _T_8 ? 5'h15 : 5'h16; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143479.4]
  assign _T_31 = _T_9 ? 5'h14 : _T_30; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143480.4]
  assign _T_32 = _T_10 ? 5'h13 : _T_31; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143481.4]
  assign _T_33 = _T_11 ? 5'h12 : _T_32; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143482.4]
  assign _T_34 = _T_12 ? 5'h11 : _T_33; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143483.4]
  assign _T_35 = _T_13 ? 5'h10 : _T_34; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143484.4]
  assign _T_36 = _T_14 ? 5'hf : _T_35; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143485.4]
  assign _T_37 = _T_15 ? 5'he : _T_36; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143486.4]
  assign _T_38 = _T_16 ? 5'hd : _T_37; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143487.4]
  assign _T_39 = _T_17 ? 5'hc : _T_38; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143488.4]
  assign _T_40 = _T_18 ? 5'hb : _T_39; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143489.4]
  assign _T_41 = _T_19 ? 5'ha : _T_40; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143490.4]
  assign _T_42 = _T_20 ? 5'h9 : _T_41; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143491.4]
  assign _T_43 = _T_21 ? 5'h8 : _T_42; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143492.4]
  assign _T_44 = _T_22 ? 5'h7 : _T_43; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143493.4]
  assign _T_45 = _T_23 ? 5'h6 : _T_44; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143494.4]
  assign _T_46 = _T_24 ? 5'h5 : _T_45; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143495.4]
  assign _T_47 = _T_25 ? 5'h4 : _T_46; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143496.4]
  assign _T_48 = _T_26 ? 5'h3 : _T_47; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143497.4]
  assign _T_49 = _T_27 ? 5'h2 : _T_48; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143498.4]
  assign _T_50 = _T_28 ? 5'h1 : _T_49; // @[Mux.scala 47:69:freechips.rocketchip.system.DefaultRV32Config.fir@143499.4]
  assign _GEN_23 = {{31'd0}, _T_4}; // @[rawFloatFromFN.scala 54:36:freechips.rocketchip.system.DefaultRV32Config.fir@143501.4]
  assign _T_53 = _T_52[21:0]; // @[rawFloatFromFN.scala 54:47:freechips.rocketchip.system.DefaultRV32Config.fir@143502.4]
  assign _T_54 = {_T_53, 1'h0}; // @[rawFloatFromFN.scala 54:64:freechips.rocketchip.system.DefaultRV32Config.fir@143503.4]
  assign _GEN_24 = {{4'd0}, _T_51}; // @[rawFloatFromFN.scala 57:26:freechips.rocketchip.system.DefaultRV32Config.fir@143504.4]
  assign _T_55 = _GEN_24 ^ 9'h1ff; // @[rawFloatFromFN.scala 57:26:freechips.rocketchip.system.DefaultRV32Config.fir@143504.4]
  assign _GEN_25 = {{6'd0}, _T_57}; // @[rawFloatFromFN.scala 60:22:freechips.rocketchip.system.DefaultRV32Config.fir@143507.4]
  assign _GEN_26 = {{1'd0}, _T_58}; // @[rawFloatFromFN.scala 59:15:freechips.rocketchip.system.DefaultRV32Config.fir@143508.4]
  assign _T_62 = _T_60[8:7]; // @[rawFloatFromFN.scala 63:37:freechips.rocketchip.system.DefaultRV32Config.fir@143511.4]
  assign _T_63 = _T_62 == 2'h3; // @[rawFloatFromFN.scala 63:62:freechips.rocketchip.system.DefaultRV32Config.fir@143512.4]
  assign _T_65 = _T_6 == 1'h0; // @[rawFloatFromFN.scala 66:36:freechips.rocketchip.system.DefaultRV32Config.fir@143515.4]
  assign _T_66 = _T_63 & _T_65; // @[rawFloatFromFN.scala 66:33:freechips.rocketchip.system.DefaultRV32Config.fir@143516.4]
  assign _T_70 = _T_61 == 1'h0; // @[rawFloatFromFN.scala 72:29:freechips.rocketchip.system.DefaultRV32Config.fir@143525.4]
  assign _T_74 = _T_69[8:6]; // @[recFNFromFN.scala 48:53:freechips.rocketchip.system.DefaultRV32Config.fir@143530.4]
  assign _T_78 = _T_69[5:0]; // @[recFNFromFN.scala 50:23:freechips.rocketchip.system.DefaultRV32Config.fir@143534.4]
  assign _T_79 = _T_73[22:0]; // @[recFNFromFN.scala 51:22:freechips.rocketchip.system.DefaultRV32Config.fir@143535.4]
  assign _T_83 = $signed(inPipe_bits_in1); // @[FPU.scala 483:39:freechips.rocketchip.system.DefaultRV32Config.fir@143540.4]
  assign _T_85 = inPipe_bits_typ[0]; // @[FPU.scala 498:38:freechips.rocketchip.system.DefaultRV32Config.fir@143550.6]
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
  inPipe_valid = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  inPipe_bits_wflags = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  inPipe_bits_rm = _RAND_2[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  inPipe_bits_typ = _RAND_3[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  inPipe_bits_in1 = _RAND_4[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {2{`RANDOM}};
  _T_88_data = _RAND_5[32:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_88_exc = _RAND_6[4:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
`ifndef MY_ASSIGNEMNT
  always @(posedge clock) begin
    if (reset) begin
      inPipe_valid <= 1'h0;
    end else begin
      inPipe_valid <= io_in_valid;
    end
    if (io_in_valid) begin
      inPipe_bits_wflags <= io_in_bits_wflags;
    end
    if (io_in_valid) begin
      inPipe_bits_rm <= io_in_bits_rm;
    end
    if (io_in_valid) begin
      inPipe_bits_typ <= io_in_bits_typ;
    end
    if (io_in_valid) begin
      inPipe_bits_in1 <= io_in_bits_in1;
    end
    if (inPipe_valid) begin
      if (inPipe_bits_wflags) begin
        _T_88_data <= INToRecFN_io_out;
      end else begin
        _T_88_data <= _T_82;
      end
    end
    if (inPipe_valid) begin
      if (inPipe_bits_wflags) begin
        _T_88_exc <= INToRecFN_io_exceptionFlags;
      end else begin
        _T_88_exc <= 5'h0;
      end
    end
  end
`endif // MY_ASSIGNEMNT
endmodule

