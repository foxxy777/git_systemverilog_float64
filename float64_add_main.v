module shang_addc#(parameter A_WIDTH = 0, B_WIDTH = 0, C_WIDTH = 0) (
  input wire[A_WIDTH-1:0] a,
  input wire[B_WIDTH-1:0] b,
  input wire c,
  output wire[C_WIDTH-1:0] d
);
	assign d = a + b + c;
endmodule

module shang_mult#(parameter A_WIDTH = 0, B_WIDTH = 0, C_WIDTH = 0) (
  input wire[A_WIDTH-1:0] a,
  input wire[B_WIDTH-1:0] b,
  output wire[C_WIDTH-1:0] c
);
	assign c = a * b;
endmodule

module shang_udiv#(parameter A_WIDTH = 0, B_WIDTH = 0, C_WIDTH = 0) (
  input wire[A_WIDTH-1:0] a,
  input wire[B_WIDTH-1:0] b,
  output wire[C_WIDTH-1:0] c
);
	assign c = a / b;
endmodule

module shang_sdiv#(parameter A_WIDTH = 0, B_WIDTH = 0, C_WIDTH = 0) (
  input wire[A_WIDTH-1:0] a,
  input wire[B_WIDTH-1:0] b,
  output wire[C_WIDTH-1:0] c
);
	assign c = $signed(a) / $signed(b);
endmodule

module shang_shl#(parameter A_WIDTH = 0, B_WIDTH = 0, C_WIDTH = 0) (
  input wire[A_WIDTH-1:0] a,
  input wire[B_WIDTH-1:0] b,
  output wire[C_WIDTH-1:0] c
);
	assign c = a << b;
endmodule

module shang_sra#(parameter A_WIDTH = 0, B_WIDTH = 0, C_WIDTH = 0) (
  input wire[A_WIDTH-1:0] a,
  input wire[B_WIDTH-1:0] b,
  output wire[C_WIDTH-1:0] c
);
	assign c = $signed(a) >>> b;
endmodule

module shang_srl#(parameter A_WIDTH = 0, B_WIDTH = 0, C_WIDTH = 0) (
  input wire[A_WIDTH-1:0] a,
  input wire[B_WIDTH-1:0] b,
  output wire[C_WIDTH-1:0] c
);
	assign c = a >> b;
endmodule

module shang_sgt#(parameter A_WIDTH = 0, B_WIDTH = 0, C_WIDTH = 0) (
  input wire[A_WIDTH-1:0] a,
  input wire[B_WIDTH-1:0] b,
  output wire c
);
	assign c = ($signed(a) >  $signed(b)) ? 1'b1 : 1'b0;
endmodule

module shang_sge#(parameter A_WIDTH = 0, B_WIDTH = 0, C_WIDTH = 0) (
  input wire[A_WIDTH-1:0] a,
  input wire[B_WIDTH-1:0] b,
  output wire c
);
	assign c = ($signed(a) >=  $signed(b)) ? 1'b1 : 1'b0;
endmodule

module shang_ugt#(parameter A_WIDTH = 0, B_WIDTH = 0, C_WIDTH = 0) (
  input wire[A_WIDTH-1:0] a,
  input wire[B_WIDTH-1:0] b,
  output wire c
);
	assign c = (a > b)  ? 1'b1 : 1'b0;
endmodule

module shang_uge#(parameter A_WIDTH = 0, B_WIDTH = 0, C_WIDTH = 0) (
  input wire[A_WIDTH-1:0] a,
  input wire[B_WIDTH-1:0] b,
  output wire c
);
	assign c = (a >= b)  ? 1'b1 : 1'b0;
endmodule

module shang_rand#(parameter WIDTH = 0) (
  input wire[WIDTH-1:0] a,
  output wire b
);
	assign b = &a;
endmodule

module shang_rxor#(parameter WIDTH = 0) (
  input wire[WIDTH-1:0] a,
  output wire b
);
	assign b = ^a;
endmodule

module float64_add_DUT_RTL(
    input wire clk,
 (* altera_attribute = "-name VIRTUAL_PIN on" *)    input wire rstN,
 (* altera_attribute = "-name VIRTUAL_PIN on" *)    input wire start,
 (* altera_attribute = "-name VIRTUAL_PIN on" *)    output reg fin,
 (* altera_attribute = "-name VIRTUAL_PIN on" *)    input wire[63:0] a,
 (* altera_attribute = "-name VIRTUAL_PIN on" *)    input wire[63:0] b,
 (* altera_attribute = "-name VIRTUAL_PIN on" *)    output reg[63:0] return_value);


  reg Slot0r = 1'b1;
  reg[63:0] a_reg = 64'h0;
  reg[63:0] b_reg = 64'h0;
  reg[31:0] float_exception_flags_restore = 32'h0;
  reg[31:0] conv_i2980_i_reg2mem219_0 = 32'h0;
  reg[31:0] conv_i682_i_reg2mem221_0 = 32'h0;
  reg[63:0] storemerge_reg2mem_0 = 64'h0;
  reg[31:0] float_exception_flags_shadow_4 = 32'h0;
  reg[63:0] and_i2574_i_reg2mem_0 = 64'h0;
  reg[63:0] and_i77_i_reg2mem_0 = 64'h0;
  reg[31:0] conv_i681_i_reg2mem211_0 = 32'h0;
  reg[63:0] and_i2572_i_reg2mem_0 = 64'h0;
  reg[63:0] and_i76_i_reg2mem_0 = 64'h0;
  reg[31:0] conv_i2979_i_reg2mem215_0 = 32'h0;
  reg[63:0] storemerge1_i22_i_reg2mem217_0 = 64'h0;
  reg[63:0] sub3971_i_reg2mem205_0 = 64'h0;
  reg[31:0] bExp_0_load5378_i_reg2mem207_0 = 32'h0;
  reg[31:0] zSign83_i_reg2mem209_0 = 32'h0;
  reg[63:0] storemerge1_i_i_reg2mem213_0 = 64'h0;
  reg[31:0] tmp45_reg2mem_0 = 32'h0;
  reg[31:0] a7_i_i_i_i_reg2mem_0 = 32'h0;
  reg[31:0] tmp47 = 32'h0;
  reg[31:0] conv1424_i_i_i_reg2mem197_0 = 32'h0;
  reg[63:0] zSig25_i_i_i_reg2mem199_0 = 64'h0;
  reg[31:0] zExp27_i_i_i_reg2mem201_0 = 32'h0;
  reg[31:0] float_exception_flags_shadow_2 = 32'h0;
  reg[63:0] storemerge1_i_i_i_i_reg2mem203_0 = 64'h0;
  reg[31:0] zExp2730_i_i_i_reg2mem_0 = 32'h0;
  reg[63:0] zSig2531_i_i_i_reg2mem_0 = 64'h0;
  reg[31:0] conv142432_i_i_i_reg2mem_0 = 32'h0;
  reg[31:0] float_exception_flags_shadow_3 = 32'h0;
  reg[63:0] add4473_i_reg2mem231_0 = 64'h0;
  reg[31:0] aExp_0_load5779_i_reg2mem233_0 = 32'h0;
  reg[63:0] and_i1075_i_reg2mem_0 = 64'h0;
  reg[63:0] and_i77_i32_reg2mem_0 = 64'h0;
  reg[31:0] aExp_0_load5778_i_reg2mem_0 = 32'h0;
  reg[31:0] conv1424_i_i_reg2mem223_0 = 32'h0;
  reg[63:0] zSig25_i_i_reg2mem225_0 = 64'h0;
  reg[31:0] zExp27_i_i_reg2mem227_0 = 32'h0;
  reg[31:0] float_exception_flags_shadow_0 = 32'h0;
  reg[63:0] storemerge1_i_i_i_reg2mem229_0 = 64'h0;
  reg[31:0] zExp2730_i_i_reg2mem_0 = 32'h0;
  reg[63:0] zSig2531_i_i_reg2mem_0 = 64'h0;
  reg[31:0] conv142432_i_i_reg2mem_0 = 32'h0;
  reg[31:0] float_exception_flags_shadow_1 = 32'h0;
  reg tmp_reg2mem29_ge_0 = 1'b0;
  reg tmp24_reg2mem27_ge_0 = 1'b0;
  reg Slot1r = 1'b0;
  reg Slot2r = 1'b0;
  reg Slot3r = 1'b0;
  reg Slot4r = 1'b0;
  reg Slot44r = 1'b0;
  reg Slot52r = 1'b0;
  reg Slot61r = 1'b0;
  reg Slot70r = 1'b0;
  reg Slot62r = 1'b0;
  reg Slot69r = 1'b0;
  reg Slot71r = 1'b0;
  reg Slot74r = 1'b0;
  reg Slot53r = 1'b0;
  reg Slot56r = 1'b0;
  reg Slot57r = 1'b0;
  reg Slot59r = 1'b0;
  reg Slot58r = 1'b0;
  reg Slot60r = 1'b0;
  reg Slot75r = 1'b0;
  reg Slot76r = 1'b0;
  reg Slot54r = 1'b0;
  reg Slot55r = 1'b0;
  reg Slot45r = 1'b0;
  reg Slot47r = 1'b0;
  reg Slot48r = 1'b0;
  reg Slot50r = 1'b0;
  reg Slot49r = 1'b0;
  reg Slot51r = 1'b0;
  reg Slot72r = 1'b0;
  reg Slot73r = 1'b0;
  reg Slot77r = 1'b0;
  reg Slot78r = 1'b0;
  reg Slot79r = 1'b0;
  reg Slot80r = 1'b0;
  reg Slot81r = 1'b0;
  reg Slot82r = 1'b0;
  reg Slot83r = 1'b0;
  reg Slot84r = 1'b0;
  reg Slot85r = 1'b0;
  reg Slot86r = 1'b0;
  reg Slot87r = 1'b0;
  reg Slot88r = 1'b0;
  reg Slot91r = 1'b0;
  reg Slot92r = 1'b0;
  reg Slot94r = 1'b0;
  reg Slot93r = 1'b0;
  reg Slot95r = 1'b0;
  reg Slot96r = 1'b0;
  reg Slot97r = 1'b0;
  reg Slot89r = 1'b0;
  reg Slot98r = 1'b0;
  reg Slot99r = 1'b0;
  reg Slot100r = 1'b0;
  reg Slot101r = 1'b0;
  reg Slot102r = 1'b0;
  reg Slot90r = 1'b0;
  reg Slot46r = 1'b0;
  reg Slot5r = 1'b0;
  reg Slot12r = 1'b0;
  reg Slot22r = 1'b0;
  reg Slot43r = 1'b0;
  reg Slot42r = 1'b0;
  reg Slot23r = 1'b0;
  reg Slot13r = 1'b0;
  reg Slot16r = 1'b0;
  reg Slot17r = 1'b0;
  reg Slot19r = 1'b0;
  reg Slot18r = 1'b0;
  reg Slot14r = 1'b0;
  reg Slot15r = 1'b0;
  reg Slot6r = 1'b0;
  reg Slot8r = 1'b0;
  reg Slot9r = 1'b0;
  reg Slot11r = 1'b0;
  reg Slot10r = 1'b0;
  reg Slot20r = 1'b0;
  reg Slot21r = 1'b0;
  reg Slot24r = 1'b0;
  reg Slot25r = 1'b0;
  reg Slot26r = 1'b0;
  reg Slot27r = 1'b0;
  reg Slot30r = 1'b0;
  reg Slot31r = 1'b0;
  reg Slot33r = 1'b0;
  reg Slot32r = 1'b0;
  reg Slot34r = 1'b0;
  reg Slot35r = 1'b0;
  reg Slot36r = 1'b0;
  reg Slot28r = 1'b0;
  reg Slot37r = 1'b0;
  reg Slot38r = 1'b0;
  reg Slot39r = 1'b0;
  reg Slot40r = 1'b0;
  reg Slot41r = 1'b0;
  reg Slot29r = 1'b0;
  reg Slot7r = 1'b0;
  reg Slot63r = 1'b0;
  reg Slot64r = 1'b0;
  reg Slot65r = 1'b0;
  reg Slot66r = 1'b0;
  reg Slot67r = 1'b0;
  reg Slot68r = 1'b0;
  reg Slot103r = 1'b0;

  reg[31:0] float_exception_flags = 32'h0;
  reg[1:0] mem1addr = 2'h0;
  reg[31:0] mem1rdata = 32'h0;
  reg[31:0] mem1wdata = 32'h0;
  reg mem1en = 1'b0;
  reg mem1wen = 1'b0;
  reg[31:0] countLeadingZerosHigh = 32'h0;
  reg[9:0] mem2addr = 10'h0;
  reg[31:0] mem2rdata = 32'h0;
  reg[31:0] mem2wdata = 32'h0;
  reg mem2en = 1'b0;
  reg mem2wen = 1'b0;

  wire [1:0]llvm_shang_bit_extract_i2_i32_i16_i16;
  wire llvm_shang_bit_extract_i1_i64_i16_i16;
  wire [63:0]shr_i261;
  wire [31:0]conv_i262;
  wire llvm_shang_bit_extract_i1_i64_i16_i16263;
  wire [63:0]shr_i1264;
  wire [31:0]conv_i2265;
  wire cmp266;
  wire [11:0]llvm_shang_bit_extract_i12_i64_i16_i16;
  wire [63:0]shr_i2_i267;
  wire [31:0]shr_tr_i_i3268;
  wire [31:0]conv_i_i4269;
  wire [11:0]llvm_shang_bit_extract_i12_i64_i16_i16270;
  wire [63:0]shr_i28_i271;
  wire [31:0]shr_tr_i29_i272;
  wire [31:0]conv_i30_i273;
  wire [31:0]llvm_shang_not_i32_i32;
  wire [31:0]sub_i5274;
  wire llvm_shang_not_i1_i1276;
  wire [54:0]llvm_shang_bit_extract_i55_i64_i16_i16;
  wire [63:0]and_i_i6535;
  wire [63:0]shl_i7536;
  wire [54:0]llvm_shang_bit_extract_i55_i64_i16_i16537;
  wire [63:0]and_i10_i538;
  wire [63:0]shl4_i8539;
  wire cmp_i9540;
  wire llvm_shang_not_i1_i1542;
  wire cmp5_i10613;
  wire llvm_shang_not_i1_i1615;
  wire tobool_i11741;
  wire llvm_shang_not_i1_i1742;
  wire cmp10_i617;
  wire [63:0]or_i12618;
  wire [63:0]llvm_shang_bit_repeat_i64_i1_i32619;
  wire [63:0]llvm_shang_not_i64_i64620;
  wire [63:0]llvm_shang_and_i64_i64_i64621;
  wire [63:0]llvm_shang_and_i64_i64_i64622;
  wire [63:0]and_i1074_i623;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i32624;
  wire [31:0]sub71_i625;
  wire cmp_i11_i626;
  wire llvm_shang_not_i1_i1627;
  wire cmp1_i12_i629;
  wire llvm_shang_not_i1_i1631;
  wire [63:0]sh_prom_i14_i635;
  wire [5:0]llvm_shang_bit_extract_i6_i64_i16_i16636;
  wire [63:0]shr_i15_i637;
  wire [31:0]llvm_shang_not_i32_i32638;
  wire [31:0]sub_i_i14639;
  wire [31:0]and_i16_i640;
  wire [63:0]sh_prom3_i17_i641;
  wire [5:0]llvm_shang_bit_extract_i6_i64_i16_i16642;
  wire [63:0]shl_i18_i643;
  wire cmp4_i19_i644;
  wire [63:0]conv_i20_i645;
  wire [63:0]or_i21_i646;
  wire cmp6_i23_i633;
  wire [63:0]conv7_i24_i634;
  wire cmp14_i544;
  wire llvm_shang_not_i1_i1546;
  wire cmp16_i569;
  wire llvm_shang_not_i1_i1571;
  wire tobool18_i607;
  wire llvm_shang_not_i1_i1609;
  wire llvm_shang_bit_extract_i1_i64_i16_i16610;
  wire [63:0]shl_i9_i611;
  wire [63:0]add3_i82_i612;
  wire cmp24_i573;
  wire [63:0]or27_i574;
  wire [63:0]llvm_shang_bit_repeat_i64_i1_i32575;
  wire [63:0]llvm_shang_not_i64_i64576;
  wire [63:0]llvm_shang_and_i64_i64_i64577;
  wire [63:0]llvm_shang_and_i64_i64_i64578;
  wire [63:0]and_i76_i16579;
  wire [31:0]inc_i17580;
  wire [31:0]sub72_i581;
  wire cmp_i_i18582;
  wire llvm_shang_not_i1_i1587;
  wire [31:0]llvm_shang_not_i32_i32589;
  wire [31:0]sub29_i590;
  wire cmp1_i_i19591;
  wire llvm_shang_not_i1_i1593;
  wire [63:0]sh_prom_i_i21597;
  wire [5:0]llvm_shang_bit_extract_i6_i64_i16_i16598;
  wire [63:0]shr_i3_i599;
  wire [31:0]and_i4_i600;
  wire [63:0]sh_prom3_i_i22601;
  wire [5:0]llvm_shang_bit_extract_i6_i64_i16_i16602;
  wire [63:0]shl_i5_i603;
  wire cmp4_i_i23604;
  wire [63:0]conv_i6_i24605;
  wire [63:0]or_i7_i606;
  wire cmp6_i_i26595;
  wire [63:0]conv7_i_i27596;
  wire llvm_shang_eq_i1_i32_i32548;
  wire llvm_shang_eq_i1_i32_i32549;
  wire llvm_shang_or_i1_i1_i1552;
  wire llvm_shang_not_i1_i1553;
  wire [63:0]or33_i561;
  wire tobool34_i562;
  wire llvm_shang_not_i1_i1563;
  wire [63:0]add_i555;
  wire [54:0]llvm_shang_bit_extract_i55_i64_i16_i16556;
  wire [63:0]shr_i29557;
  wire llvm_shang_bit_extract_i1_i64_i16_i16558;
  wire [63:0]shl_i_i31559;
  wire [63:0]add_i1_i560;
  wire [63:0]add4381_i564;
  wire [63:0]add44_i565;
  wire [63:0]or47_i647;
  wire [63:0]add48_i648;
  wire [62:0]llvm_shang_bit_extract_i63_i64_i16_i16;
  wire [63:0]shl49_i649;
  wire cmp51_i650;
  wire not_cmp51_i651;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i32652;
  wire [31:0]aExp_0_load5778_dec50_i653;
  wire [63:0]llvm_shang_bit_repeat_i64_i1_i32654;
  wire [63:0]llvm_shang_not_i64_i64655;
  wire [63:0]llvm_shang_and_i64_i64_i64656;
  wire [63:0]llvm_shang_and_i64_i64_i64657;
  wire [63:0]add48_shl49_i658;
  wire [31:0]_tr_i_i659;
  wire [31:0]conv14_i_i660;
  wire [31:0]conv16_i_i661;
  wire cmp17_i_i662;
  wire llvm_shang_not_i1_i1664;
  wire cmp19_i_i670;
  wire llvm_shang_not_i1_i1672;
  wire cmp20_i_i674;
  wire llvm_shang_not_i1_i1676;
  wire [63:0]add_i_i712;
  wire cmp22_i_i713;
  wire llvm_shang_not_i1_i1714;
  wire [31:0]or_i_i_i33737;
  wire llvm_shang_bit_extract_i1_i64_i16_i16738;
  wire [63:0]shl_i6_i_i739;
  wire [63:0]add3_i733_i_i740;
  wire cmp27_i_i678;
  wire llvm_shang_not_i1_i1680;
  wire [31:0]llvm_shang_not_i32_i32681;
  wire [31:0]sub29_i_i682;
  wire cmp1_i_i_i683;
  wire llvm_shang_not_i1_i1685;
  wire [63:0]sh_prom_i_i_i691;
  wire [5:0]llvm_shang_bit_extract_i6_i64_i16_i16692;
  wire [63:0]shr_i_i_i34693;
  wire [31:0]and_i_i_i694;
  wire [63:0]sh_prom3_i_i_i695;
  wire [5:0]llvm_shang_bit_extract_i6_i64_i16_i16696;
  wire [63:0]shl_i3_i_i697;
  wire cmp4_i_i_i698;
  wire [63:0]conv_i_i_i35699;
  wire [63:0]or_i4_i_i700;
  wire cmp6_i_i_i687;
  wire [63:0]conv7_i_i_i688;
  wire [31:0]_tr1_i_i701;
  wire [31:0]conv31_i_i702;
  wire tobool34_i_i703;
  wire llvm_shang_not_i1_i1709;
  wire [31:0]or_i2_i_i711;
  wire not_tobool39_i_i715;
  wire [31:0]or_i_i36716;
  wire [31:0]float_exception_flags_shadow_0_or_i_i36717;
  wire [63:0]add43_i_i718;
  wire [53:0]llvm_shang_bit_extract_i54_i64_i16_i16719;
  wire [63:0]shr_i_i37720;
  wire cmp44_i_i721;
  wire [63:0]conv45_i_i722;
  wire [63:0]neg_i_i723;
  wire [63:0]and48_i_i724;
  wire cmp49_i_i725;
  wire llvm_shang_bit_extract_i1_i64_i16_i16726;
  wire [63:0]shl_i_i_i727;
  wire [63:0]tmp43728;
  wire [11:0]llvm_shang_bit_extract_i12_i64_i16_i16729;
  wire [63:0]_op_i_i730;
  wire [63:0]llvm_shang_bit_repeat_i64_i1_i32731;
  wire [63:0]llvm_shang_not_i64_i64732;
  wire [63:0]llvm_shang_and_i64_i64_i64733;
  wire [63:0]shl2_i_i_i734;
  wire [63:0]add_i_i_i38735;
  wire [63:0]add3_i_i_i736;
  wire [53:0]llvm_shang_bit_extract_i54_i64_i16_i16;
  wire [63:0]and_i_i278;
  wire [63:0]shl_i279;
  wire [53:0]llvm_shang_bit_extract_i54_i64_i16_i16280;
  wire [63:0]and_i25_i281;
  wire [63:0]shl4_i282;
  wire cmp_i283;
  wire llvm_shang_not_i1_i1285;
  wire cmp5_i287;
  wire llvm_shang_not_i1_i1289;
  wire llvm_shang_eq_i1_i32_i32;
  wire llvm_shang_eq_i1_i32_i32291;
  wire llvm_shang_or_i1_i1_i1;
  wire llvm_shang_not_i1_i1294;
  wire [63:0]or_i298;
  wire tobool_i299;
  wire llvm_shang_not_i1_i1301;
  wire [31:0]or_i26_i303;
  wire cmp17_i307;
  wire llvm_shang_not_i1_i1312;
  wire cmp20_i314;
  wire llvm_shang_not_i1_i1319;
  wire cmp25_i320;
  wire llvm_shang_not_i1_i1322;
  wire tobool27_i360;
  wire llvm_shang_not_i1_i1362;
  wire llvm_shang_bit_extract_i1_i64_i16_i16363;
  wire [63:0]xor_i364;
  wire [63:0]add3_i86_i365;
  wire cmp33_i324;
  wire [63:0]or35_i325;
  wire [63:0]llvm_shang_bit_repeat_i64_i1_i32;
  wire [63:0]llvm_shang_not_i64_i64;
  wire [63:0]llvm_shang_and_i64_i64_i64;
  wire [63:0]llvm_shang_and_i64_i64_i64326;
  wire [63:0]and_i75_i327;
  wire [31:0]inc_i328;
  wire [31:0]sub69_i329;
  wire cmp_i7_i330;
  wire llvm_shang_not_i1_i1333;
  wire [31:0]llvm_shang_not_i32_i32335;
  wire [31:0]sub37_i336;
  wire cmp1_i8_i337;
  wire llvm_shang_not_i1_i1339;
  wire [63:0]sh_prom_i10_i343;
  wire [5:0]llvm_shang_bit_extract_i6_i64_i16_i16;
  wire [63:0]shr_i11_i344;
  wire [31:0]and_i12_i345;
  wire [63:0]sh_prom3_i13_i346;
  wire [5:0]llvm_shang_bit_extract_i6_i64_i16_i16347;
  wire [63:0]shl_i14_i348;
  wire cmp4_i15_i349;
  wire [63:0]conv_i16_i350;
  wire [63:0]or_i17_i351;
  wire cmp6_i19_i341;
  wire [63:0]conv7_i20_i342;
  wire [63:0]or38_i352;
  wire [63:0]llvm_shang_not_i64_i64353;
  wire [63:0]sub39_i354;
  wire [31:0]xor40_i355;
  wire cmp41_i366;
  wire llvm_shang_not_i1_i1368;
  wire tobool43_i533;
  wire llvm_shang_not_i1_i1534;
  wire cmp48_i370;
  wire [63:0]or51_i371;
  wire [63:0]llvm_shang_bit_repeat_i64_i1_i32372;
  wire [63:0]llvm_shang_not_i64_i64373;
  wire [63:0]llvm_shang_and_i64_i64_i64374;
  wire [63:0]llvm_shang_and_i64_i64_i64375;
  wire [63:0]and_i2573_i376;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i32;
  wire [31:0]sub70_i377;
  wire cmp_i_i378;
  wire llvm_shang_not_i1_i1381;
  wire cmp1_i_i383;
  wire llvm_shang_not_i1_i1385;
  wire [63:0]sh_prom_i1_i389;
  wire [5:0]llvm_shang_bit_extract_i6_i64_i16_i16390;
  wire [63:0]shr_i_i391;
  wire [31:0]llvm_shang_not_i32_i32392;
  wire [31:0]sub_i2_i393;
  wire [31:0]and_i3_i394;
  wire [63:0]sh_prom3_i_i395;
  wire [5:0]llvm_shang_bit_extract_i6_i64_i16_i16396;
  wire [63:0]shl_i4_i397;
  wire cmp4_i_i398;
  wire [63:0]conv_i_i399;
  wire [63:0]or_i_i400;
  wire cmp6_i_i387;
  wire [63:0]conv7_i_i388;
  wire [63:0]or53_i401;
  wire [63:0]llvm_shang_not_i64_i64402;
  wire [63:0]sub54_i403;
  wire cmp_i_i_i404;
  wire [31:0]llvm_shang_bit_extract_i32_i64_i16_i16;
  wire [63:0]shr_i_i_i405;
  wire [63:0]llvm_shang_bit_repeat_i64_i1_i32406;
  wire [63:0]llvm_shang_not_i64_i64407;
  wire [63:0]llvm_shang_and_i64_i64_i64408;
  wire [63:0]llvm_shang_and_i64_i64_i64409;
  wire [63:0]a_shr_i_i_i410;
  wire [31:0]conv_i_i_i411;
  wire cmp_i_i_i_i412;
  wire [15:0]llvm_shang_bit_extract_i16_i32_i16_i16;
  wire [31:0]shl_i_i_i_i413;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i32414;
  wire [31:0]llvm_shang_not_i32_i32415;
  wire [31:0]llvm_shang_and_i32_i32_i32;
  wire [31:0]llvm_shang_and_i32_i32_i32416;
  wire [31:0]shl_a_i_i_i_i417;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i32418;
  wire [31:0]llvm_shang_and_i32_i32_i32420;
  wire [31:0]__i_i_i_i421;
  wire cmp1_i_i_i_i422;
  wire llvm_shang_not_i1_i1424;
  wire [31:0]add38_i_i_i_i428;
  wire [23:0]llvm_shang_bit_extract_i24_i32_i16_i16;
  wire [31:0]shl4_i_i_i_i429;
  wire [31:0]dec55_i430;
  wire [7:0]llvm_shang_bit_extract_i8_i32_i16_i16;
  wire [31:0]shr_i_i_i_i431;
  wire [29:0]llvm_shang_bit_extract_i30_i32_i16_i16;
  wire [31:0]llvm_shang_bit_cat_i32_i30_i2;
  wire [31:0]llvm_shang_add_i32_i32_i32;
  wire [9:0]llvm_shang_bit_extract_i10_i32_i16_i16;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i32437;
  wire [31:0]llvm_shang_not_i32_i32438;
  wire [31:0]llvm_shang_and_i32_i32_i32439;
  wire [31:0]llvm_shang_and_i32_i32_i32440;
  wire [31:0]add6_i_i_i_i441;
  wire [31:0]add1_i_i_i442;
  wire [31:0]sub_i_i443;
  wire [31:0]llvm_shang_not_i32_i32444;
  wire [31:0]sub1_i_i445;
  wire [63:0]sh_prom_i_i446;
  wire [5:0]llvm_shang_bit_extract_i6_i64_i16_i16447;
  wire [63:0]shl_i_i448;
  wire [31:0]_tr_i_i_i449;
  wire [31:0]conv14_i_i_i450;
  wire [31:0]conv16_i_i_i451;
  wire cmp17_i_i_i452;
  wire llvm_shang_not_i1_i1454;
  wire cmp19_i_i_i460;
  wire llvm_shang_not_i1_i1462;
  wire cmp20_i_i_i464;
  wire llvm_shang_not_i1_i1466;
  wire [63:0]add_i_i_i502;
  wire cmp22_i_i_i503;
  wire llvm_shang_not_i1_i1504;
  wire [31:0]or_i_i_i_i528;
  wire [63:0]conv2_i5_i_i_i529;
  wire llvm_shang_bit_extract_i1_i64_i16_i16530;
  wire [63:0]shl_i6_i_i_i531;
  wire [63:0]add3_i733_i_i_i532;
  wire cmp27_i_i_i468;
  wire llvm_shang_not_i1_i1470;
  wire [31:0]llvm_shang_not_i32_i32471;
  wire [31:0]sub29_i_i_i472;
  wire cmp1_i_i1_i_i473;
  wire llvm_shang_not_i1_i1475;
  wire [63:0]sh_prom_i_i_i_i481;
  wire [5:0]llvm_shang_bit_extract_i6_i64_i16_i16482;
  wire [63:0]shr_i_i2_i_i483;
  wire [31:0]and_i_i_i_i484;
  wire [63:0]sh_prom3_i_i_i_i485;
  wire [5:0]llvm_shang_bit_extract_i6_i64_i16_i16486;
  wire [63:0]shl_i3_i_i_i487;
  wire cmp4_i_i_i_i488;
  wire [63:0]conv_i_i_i_i489;
  wire [63:0]or_i4_i_i_i490;
  wire cmp6_i_i_i_i477;
  wire [63:0]conv7_i_i_i_i478;
  wire [31:0]_tr1_i_i_i491;
  wire [31:0]conv31_i_i_i492;
  wire tobool34_i_i_i493;
  wire llvm_shang_not_i1_i1499;
  wire [31:0]or_i2_i_i_i501;
  wire not_tobool39_i_i_i505;
  wire [31:0]or_i_i_i506;
  wire [31:0]float_exception_flags_shadow_2_or_i_i_i507;
  wire [63:0]add43_i_i_i508;
  wire [53:0]llvm_shang_bit_extract_i54_i64_i16_i16509;
  wire [63:0]shr_i4_i_i510;
  wire cmp44_i_i_i511;
  wire [63:0]conv45_i_i_i512;
  wire [63:0]neg_i_i_i513;
  wire [63:0]and48_i_i_i514;
  wire cmp49_i_i_i515;
  wire [63:0]conv2_i_i_i_i516;
  wire llvm_shang_bit_extract_i1_i64_i16_i16517;
  wire [63:0]shl_i_i5_i_i518;
  wire [63:0]tmp51519;
  wire [11:0]llvm_shang_bit_extract_i12_i64_i16_i16520;
  wire [63:0]_op_i_i_i521;
  wire [63:0]llvm_shang_bit_repeat_i64_i1_i32522;
  wire [63:0]llvm_shang_not_i64_i64523;
  wire [63:0]llvm_shang_and_i64_i64_i64524;
  wire [63:0]shl2_i_i_i_i525;
  wire [63:0]add_i_i_i_i526;
  wire [63:0]add3_i_i_i_i527;
  wire [1:0]llvm_shang_bit_extract_i2_i32_i16_i16778;
  wire [63:0]and_i3_ge743;
  wire cmp_i4_ge744;
  wire llvm_shang_not_i1_i1746;
  wire [63:0]and1_i5_ge749;
  wire tobool_i6_ge750;
  wire [63:0]and_i_ge751;
  wire cmp_i_ge752;
  wire llvm_shang_not_i1_i1754;
  wire [63:0]and1_i_ge757;
  wire tobool_i_ge758;
  wire [62:0]tmp23_ge759;
  wire cmp_i1_ge760;
  wire or519_ge761;
  wire [31:0]or_i_ge762;
  wire llvm_shang_not_i1_i1763;
  wire llvm_shang_and_i1_i1_i1;
  wire llvm_shang_and_i1_i1_i1764;
  wire tmp24_reg2mem27_ge_0_cmp_i1_ge765;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i32766;
  wire [31:0]llvm_shang_not_i32_i32767;
  wire [31:0]llvm_shang_and_i32_i32_i32768;
  wire [31:0]llvm_shang_and_i32_i32_i32769;
  wire [31:0]or_i_ge_float_exception_flags_restore770;
  wire [63:0]llvm_shang_bit_repeat_i64_i1_i32771;
  wire [63:0]llvm_shang_not_i64_i64772;
  wire [63:0]llvm_shang_and_i64_i64_i64773;
  wire [63:0]llvm_shang_and_i64_i64_i64774;
  wire [63:0]or4_mux20_v_ge775;
  wire [63:0]or4_mux20_ge776;
  wire llvm_shang_not_i1_i1;
  wire llvm_shang_and_i1_i1_i11593;
  wire llvm_shang_and_i1_i1_i11594;
  wire llvm_shang_and_i1_i1_i11595;
  wire llvm_shang_and_i1_i1_i11596;
  wire llvm_shang_and_i1_i1_i11597;
  wire llvm_shang_and_i1_i1_i11598;
  wire llvm_shang_and_i1_i1_i11599;
  wire llvm_shang_and_i1_i1_i11600;
  wire llvm_shang_and_i1_i1_i11601;
  wire llvm_shang_and_i1_i1_i11602;
  wire llvm_shang_and_i1_i1_i11603;
  wire llvm_shang_and_i1_i1_i11604;
  wire llvm_shang_and_i1_i1_i11605;
  wire llvm_shang_and_i1_i1_i11606;
  wire llvm_shang_and_i1_i1_i11607;
  wire llvm_shang_and_i1_i1_i11608;
  wire llvm_shang_and_i1_i1_i11609;
  wire llvm_shang_and_i1_i1_i11610;
  wire llvm_shang_and_i1_i1_i11611;
  wire llvm_shang_and_i1_i1_i11612;
  wire llvm_shang_and_i1_i1_i11613;
  wire llvm_shang_and_i1_i1_i11614;
  wire llvm_shang_and_i1_i1_i11615;
  wire llvm_shang_and_i1_i1_i11616;
  wire llvm_shang_and_i1_i1_i11617;
  wire llvm_shang_and_i1_i1_i11618;
  wire llvm_shang_and_i1_i1_i11619;
  wire llvm_shang_and_i1_i1_i11620;
  wire llvm_shang_and_i1_i1_i11621;
  wire llvm_shang_and_i1_i1_i11622;
  wire llvm_shang_and_i1_i1_i11623;
  wire llvm_shang_and_i1_i1_i11624;
  wire llvm_shang_and_i1_i1_i11625;
  wire llvm_shang_and_i1_i1_i11626;
  wire llvm_shang_and_i1_i1_i11627;
  wire llvm_shang_and_i1_i1_i11628;
  wire llvm_shang_and_i1_i1_i11629;
  wire llvm_shang_and_i1_i1_i11630;
  wire llvm_shang_and_i1_i1_i11631;
  wire llvm_shang_and_i1_i1_i11632;
  wire llvm_shang_and_i1_i1_i11633;
  wire llvm_shang_and_i1_i1_i11634;
  wire llvm_shang_and_i1_i1_i11635;
  wire llvm_shang_and_i1_i1_i11636;
  wire llvm_shang_and_i1_i1_i11637;
  wire llvm_shang_and_i1_i1_i11638;
  wire llvm_shang_and_i1_i1_i11639;
  wire llvm_shang_and_i1_i1_i11640;
  wire llvm_shang_and_i1_i1_i11641;
  wire llvm_shang_and_i1_i1_i11642;
  wire llvm_shang_and_i1_i1_i11643;
  wire llvm_shang_and_i1_i1_i11644;
  wire llvm_shang_and_i1_i1_i11645;
  wire llvm_shang_and_i1_i1_i11646;
  wire llvm_shang_and_i1_i1_i11647;
  wire llvm_shang_and_i1_i1_i11648;
  wire llvm_shang_and_i1_i1_i11649;
  wire llvm_shang_and_i1_i1_i11650;
  wire llvm_shang_and_i1_i1_i11651;
  wire llvm_shang_and_i1_i1_i11652;
  wire llvm_shang_and_i1_i1_i11653;
  wire llvm_shang_and_i1_i1_i11654;
  wire llvm_shang_and_i1_i1_i11655;
  wire llvm_shang_and_i1_i1_i11656;
  wire llvm_shang_and_i1_i1_i11657;
  wire llvm_shang_and_i1_i1_i11658;
  wire llvm_shang_and_i1_i1_i11659;
  wire llvm_shang_and_i1_i1_i11660;
  wire llvm_shang_and_i1_i1_i11661;
  wire llvm_shang_and_i1_i1_i11662;
  wire llvm_shang_and_i1_i1_i11663;
  wire llvm_shang_and_i1_i1_i11664;
  wire llvm_shang_and_i1_i1_i11665;
  wire llvm_shang_and_i1_i1_i11666;
  wire llvm_shang_and_i1_i1_i11667;
  wire llvm_shang_and_i1_i1_i11668;
  wire llvm_shang_and_i1_i1_i11669;
  wire llvm_shang_and_i1_i1_i11670;
  wire llvm_shang_and_i1_i1_i11671;
  wire llvm_shang_and_i1_i1_i11672;
  wire llvm_shang_and_i1_i1_i11673;
  wire llvm_shang_and_i1_i1_i11674;
  wire llvm_shang_and_i1_i1_i11675;
  wire llvm_shang_and_i1_i1_i11676;
  wire llvm_shang_and_i1_i1_i11677;
  wire llvm_shang_and_i1_i1_i11678;
  wire llvm_shang_and_i1_i1_i11679;
  wire llvm_shang_and_i1_i1_i11680;
  wire llvm_shang_and_i1_i1_i11681;
  wire llvm_shang_and_i1_i1_i11682;
  wire llvm_shang_and_i1_i1_i11683;
  wire llvm_shang_and_i1_i1_i11684;
  wire llvm_shang_and_i1_i1_i11685;
  wire llvm_shang_and_i1_i1_i11686;
  wire llvm_shang_and_i1_i1_i11687;
  wire llvm_shang_and_i1_i1_i11688;
  wire llvm_shang_and_i1_i1_i11689;
  wire llvm_shang_and_i1_i1_i11690;
  wire llvm_shang_and_i1_i1_i11691;
  wire llvm_shang_and_i1_i1_i11692;
  wire llvm_shang_and_i1_i1_i11693;
  wire llvm_shang_and_i1_i1_i11694;
  wire llvm_shang_and_i1_i1_i11695;
  wire llvm_shang_and_i1_i1_i11696;
  wire llvm_shang_and_i1_i1_i11697;
  wire llvm_shang_and_i1_i1_i11698;
  wire llvm_shang_and_i1_i1_i11699;
  wire llvm_shang_and_i1_i1_i11700;
  wire llvm_shang_and_i1_i1_i11701;
  wire llvm_shang_and_i1_i1_i11702;
  wire llvm_shang_and_i1_i1_i11703;
  wire llvm_shang_and_i1_i1_i11704;
  wire llvm_shang_and_i1_i1_i11705;
  wire llvm_shang_and_i1_i1_i11706;
  wire llvm_shang_and_i1_i1_i11707;
  wire llvm_shang_and_i1_i1_i11708;
  wire llvm_shang_and_i1_i1_i11709;
  wire llvm_shang_and_i1_i1_i11710;
  wire llvm_shang_and_i1_i1_i11711;
  wire llvm_shang_and_i1_i1_i11712;
  wire llvm_shang_and_i1_i1_i11713;
  wire llvm_shang_and_i1_i1_i11714;
  wire llvm_shang_and_i1_i1_i11715;
  wire llvm_shang_and_i1_i1_i11716;
  wire llvm_shang_and_i1_i1_i11717;
  wire llvm_shang_and_i1_i1_i11718;
  wire llvm_shang_and_i1_i1_i11719;
  wire llvm_shang_and_i1_i1_i11720;
  wire llvm_shang_and_i1_i1_i11721;
  wire llvm_shang_and_i1_i1_i11722;
  wire llvm_shang_and_i1_i1_i11723;
  wire llvm_shang_and_i1_i1_i11724;
  wire llvm_shang_and_i1_i1_i11725;
  wire llvm_shang_and_i1_i1_i11726;
  wire llvm_shang_and_i1_i1_i11727;
  wire llvm_shang_and_i1_i1_i11728;
  wire llvm_shang_and_i1_i1_i11729;
  wire llvm_shang_and_i1_i1_i11730;
  wire llvm_shang_and_i1_i1_i11731;
  wire llvm_shang_and_i1_i1_i11732;
  wire llvm_shang_and_i1_i1_i11733;
  wire llvm_shang_and_i1_i1_i11734;
  wire llvm_shang_and_i1_i1_i11735;
  wire llvm_shang_and_i1_i1_i11736;
  wire llvm_shang_and_i1_i1_i11737;
  wire llvm_shang_and_i1_i1_i11738;
  wire llvm_shang_and_i1_i1_i11739;
  wire llvm_shang_and_i1_i1_i11740;
  wire llvm_shang_and_i1_i1_i11741;
  wire llvm_shang_and_i1_i1_i11742;
  wire llvm_shang_and_i1_i1_i11743;
  wire llvm_shang_and_i1_i1_i11744;
  wire llvm_shang_and_i1_i1_i11745;
  wire llvm_shang_and_i1_i1_i11746;
  wire llvm_shang_and_i1_i1_i11747;
  wire [1:0]llvm_shang_bit_repeat_i2_i1_i321748;
  wire [1:0]llvm_shang_and_i2_i2_i21749;
  wire [1:0]llvm_shang_bit_repeat_i2_i1_i321750;
  wire [1:0]llvm_shang_and_i2_i2_i21751;
  wire [1:0]llvm_shang_or_i2_i2_i21752;
  wire llvm_shang_or_i1_i1_i11753;
  wire llvm_shang_or_i1_i1_i11754;
  wire llvm_shang_or_i1_i1_i11755;
  wire llvm_shang_or_i1_i1_i11756;
  wire llvm_shang_or_i1_i1_i11757;
  wire llvm_shang_or_i1_i1_i11758;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i321759;
  wire [31:0]llvm_shang_and_i32_i32_i321760;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i321761;
  wire [31:0]llvm_shang_and_i32_i32_i321762;
  wire [31:0]llvm_shang_or_i32_i32_i321763;
  wire llvm_shang_or_i1_i1_i11764;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i321765;
  wire [31:0]llvm_shang_and_i32_i32_i321766;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i321767;
  wire [31:0]llvm_shang_and_i32_i32_i321768;
  wire [31:0]llvm_shang_or_i32_i32_i321769;
  wire llvm_shang_or_i1_i1_i11770;
  wire [63:0]llvm_shang_bit_repeat_i64_i1_i321771;
  wire [63:0]llvm_shang_and_i64_i64_i641772;
  wire [63:0]llvm_shang_bit_repeat_i64_i1_i321774;
  wire [63:0]llvm_shang_and_i64_i64_i641775;
  wire [63:0]llvm_shang_bit_repeat_i64_i1_i321776;
  wire [63:0]llvm_shang_and_i64_i64_i641777;
  wire [63:0]llvm_shang_bit_repeat_i64_i1_i321778;
  wire [63:0]llvm_shang_and_i64_i64_i641779;
  wire [63:0]llvm_shang_bit_repeat_i64_i1_i321780;
  wire [63:0]llvm_shang_and_i64_i64_i641781;
  wire [63:0]llvm_shang_bit_repeat_i64_i1_i321782;
  wire [63:0]llvm_shang_and_i64_i64_i641783;
  wire [63:0]llvm_shang_bit_repeat_i64_i1_i321784;
  wire [63:0]llvm_shang_and_i64_i64_i641785;
  wire [63:0]llvm_shang_bit_repeat_i64_i1_i321786;
  wire [63:0]llvm_shang_and_i64_i64_i641787;
  wire [63:0]llvm_shang_bit_repeat_i64_i1_i321788;
  wire [63:0]llvm_shang_and_i64_i64_i641789;
  wire [63:0]llvm_shang_bit_repeat_i64_i1_i321790;
  wire [63:0]llvm_shang_and_i64_i64_i641791;
  wire [63:0]llvm_shang_bit_repeat_i64_i1_i321792;
  wire [63:0]llvm_shang_and_i64_i64_i641793;
  wire [63:0]llvm_shang_bit_repeat_i64_i1_i321794;
  wire [63:0]llvm_shang_and_i64_i64_i641795;
  wire [63:0]llvm_shang_or_i64_i64_i641796;
  wire [63:0]llvm_shang_or_i64_i64_i641797;
  wire [63:0]llvm_shang_or_i64_i64_i641798;
  wire [63:0]llvm_shang_or_i64_i64_i641799;
  wire [63:0]llvm_shang_or_i64_i64_i641800;
  wire [63:0]llvm_shang_or_i64_i64_i641801;
  wire [63:0]llvm_shang_or_i64_i64_i641802;
  wire [63:0]llvm_shang_or_i64_i64_i641803;
  wire [63:0]llvm_shang_or_i64_i64_i641804;
  wire [63:0]llvm_shang_or_i64_i64_i641805;
  wire [63:0]llvm_shang_or_i64_i64_i641806;
  wire [63:0]llvm_shang_or_i64_i64_i641807;
  wire llvm_shang_or_i1_i1_i11808;
  wire llvm_shang_or_i1_i1_i11809;
  wire llvm_shang_or_i1_i1_i11810;
  wire llvm_shang_or_i1_i1_i11811;
  wire llvm_shang_or_i1_i1_i11812;
  wire llvm_shang_or_i1_i1_i11813;
  wire llvm_shang_or_i1_i1_i11814;
  wire llvm_shang_or_i1_i1_i11815;
  wire llvm_shang_or_i1_i1_i11816;
  wire llvm_shang_or_i1_i1_i11817;
  wire llvm_shang_or_i1_i1_i11818;
  wire llvm_shang_or_i1_i1_i11819;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i321820;
  wire [31:0]llvm_shang_and_i32_i32_i321821;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i321822;
  wire [31:0]llvm_shang_and_i32_i32_i321823;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i321824;
  wire [31:0]llvm_shang_and_i32_i32_i321825;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i321826;
  wire [31:0]llvm_shang_and_i32_i32_i321827;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i321828;
  wire [31:0]llvm_shang_and_i32_i32_i321829;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i321830;
  wire [31:0]llvm_shang_and_i32_i32_i321831;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i321832;
  wire [31:0]llvm_shang_and_i32_i32_i321833;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i321834;
  wire [31:0]llvm_shang_and_i32_i32_i321835;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i321836;
  wire [31:0]llvm_shang_and_i32_i32_i321837;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i321838;
  wire [31:0]llvm_shang_and_i32_i32_i321839;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i321840;
  wire [31:0]llvm_shang_and_i32_i32_i321841;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i321842;
  wire [31:0]llvm_shang_and_i32_i32_i321843;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i321844;
  wire [31:0]llvm_shang_and_i32_i32_i321845;
  wire [31:0]llvm_shang_or_i32_i32_i321846;
  wire [31:0]llvm_shang_or_i32_i32_i321847;
  wire [31:0]llvm_shang_or_i32_i32_i321848;
  wire [31:0]llvm_shang_or_i32_i32_i321849;
  wire [31:0]llvm_shang_or_i32_i32_i321850;
  wire [31:0]llvm_shang_or_i32_i32_i321851;
  wire [31:0]llvm_shang_or_i32_i32_i321852;
  wire [31:0]llvm_shang_or_i32_i32_i321853;
  wire [31:0]llvm_shang_or_i32_i32_i321854;
  wire [31:0]llvm_shang_or_i32_i32_i321855;
  wire [31:0]llvm_shang_or_i32_i32_i321856;
  wire [31:0]llvm_shang_or_i32_i32_i321857;
  wire llvm_shang_or_i1_i1_i11858;
  wire llvm_shang_or_i1_i1_i11859;
  wire llvm_shang_or_i1_i1_i11860;
  wire llvm_shang_or_i1_i1_i11861;
  wire llvm_shang_or_i1_i1_i11862;
  wire llvm_shang_or_i1_i1_i11863;
  wire llvm_shang_or_i1_i1_i11864;
  wire llvm_shang_or_i1_i1_i11865;
  wire llvm_shang_or_i1_i1_i11866;
  wire llvm_shang_or_i1_i1_i11867;
  wire llvm_shang_or_i1_i1_i11868;
  wire llvm_shang_or_i1_i1_i11869;
  wire [63:0]llvm_shang_bit_repeat_i64_i1_i321870;
  wire [63:0]llvm_shang_and_i64_i64_i641871;
  wire [63:0]llvm_shang_bit_repeat_i64_i1_i321872;
  wire [63:0]llvm_shang_and_i64_i64_i641873;
  wire [63:0]llvm_shang_or_i64_i64_i641874;
  wire llvm_shang_or_i1_i1_i11875;
  wire [63:0]llvm_shang_bit_repeat_i64_i1_i321876;
  wire [63:0]llvm_shang_and_i64_i64_i641877;
  wire [63:0]llvm_shang_bit_repeat_i64_i1_i321878;
  wire [63:0]llvm_shang_and_i64_i64_i641879;
  wire [63:0]llvm_shang_or_i64_i64_i641880;
  wire llvm_shang_or_i1_i1_i11881;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i321882;
  wire [31:0]llvm_shang_and_i32_i32_i321883;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i321884;
  wire [31:0]llvm_shang_and_i32_i32_i321885;
  wire [31:0]llvm_shang_or_i32_i32_i321886;
  wire llvm_shang_or_i1_i1_i11887;
  wire [63:0]llvm_shang_bit_repeat_i64_i1_i321888;
  wire [63:0]llvm_shang_and_i64_i64_i641889;
  wire [63:0]llvm_shang_bit_repeat_i64_i1_i321890;
  wire [63:0]llvm_shang_and_i64_i64_i641891;
  wire [63:0]llvm_shang_or_i64_i64_i641892;
  wire llvm_shang_or_i1_i1_i11893;
  wire [63:0]llvm_shang_bit_repeat_i64_i1_i321894;
  wire [63:0]llvm_shang_and_i64_i64_i641895;
  wire [63:0]llvm_shang_bit_repeat_i64_i1_i321896;
  wire [63:0]llvm_shang_and_i64_i64_i641897;
  wire [63:0]llvm_shang_or_i64_i64_i641898;
  wire llvm_shang_or_i1_i1_i11899;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i321900;
  wire [31:0]llvm_shang_and_i32_i32_i321901;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i321902;
  wire [31:0]llvm_shang_and_i32_i32_i321903;
  wire [31:0]llvm_shang_or_i32_i32_i321904;
  wire llvm_shang_or_i1_i1_i11905;
  wire [63:0]llvm_shang_bit_repeat_i64_i1_i321906;
  wire [63:0]llvm_shang_and_i64_i64_i641907;
  wire [63:0]llvm_shang_bit_repeat_i64_i1_i321908;
  wire [63:0]llvm_shang_and_i64_i64_i641909;
  wire [63:0]llvm_shang_bit_repeat_i64_i1_i321910;
  wire [63:0]llvm_shang_and_i64_i64_i641911;
  wire [63:0]llvm_shang_or_i64_i64_i641912;
  wire [63:0]llvm_shang_or_i64_i64_i641913;
  wire llvm_shang_or_i1_i1_i11914;
  wire llvm_shang_or_i1_i1_i11915;
  wire [63:0]llvm_shang_bit_repeat_i64_i1_i321916;
  wire [63:0]llvm_shang_and_i64_i64_i641917;
  wire [63:0]llvm_shang_bit_repeat_i64_i1_i321918;
  wire [63:0]llvm_shang_and_i64_i64_i641919;
  wire [63:0]llvm_shang_or_i64_i64_i641920;
  wire llvm_shang_or_i1_i1_i11921;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i321922;
  wire [31:0]llvm_shang_and_i32_i32_i321923;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i321924;
  wire [31:0]llvm_shang_and_i32_i32_i321925;
  wire [31:0]llvm_shang_or_i32_i32_i321926;
  wire llvm_shang_or_i1_i1_i11927;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i321928;
  wire [31:0]llvm_shang_and_i32_i32_i321929;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i321930;
  wire [31:0]llvm_shang_and_i32_i32_i321931;
  wire [31:0]llvm_shang_or_i32_i32_i321932;
  wire llvm_shang_or_i1_i1_i11933;
  wire [63:0]llvm_shang_bit_repeat_i64_i1_i321934;
  wire [63:0]llvm_shang_and_i64_i64_i641935;
  wire [63:0]llvm_shang_bit_repeat_i64_i1_i321936;
  wire [63:0]llvm_shang_and_i64_i64_i641937;
  wire [63:0]llvm_shang_bit_repeat_i64_i1_i321938;
  wire [63:0]llvm_shang_and_i64_i64_i641939;
  wire [63:0]llvm_shang_or_i64_i64_i641940;
  wire [63:0]llvm_shang_or_i64_i64_i641941;
  wire llvm_shang_or_i1_i1_i11942;
  wire llvm_shang_or_i1_i1_i11943;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i321944;
  wire [31:0]llvm_shang_and_i32_i32_i321945;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i321946;
  wire [31:0]llvm_shang_and_i32_i32_i321947;
  wire [31:0]llvm_shang_or_i32_i32_i321948;
  wire llvm_shang_or_i1_i1_i11949;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i321950;
  wire [31:0]llvm_shang_and_i32_i32_i321951;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i321952;
  wire [31:0]llvm_shang_and_i32_i32_i321953;
  wire [31:0]llvm_shang_or_i32_i32_i321954;
  wire llvm_shang_or_i1_i1_i11955;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i321956;
  wire [31:0]llvm_shang_and_i32_i32_i321957;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i321958;
  wire [31:0]llvm_shang_and_i32_i32_i321959;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i321960;
  wire [31:0]llvm_shang_and_i32_i32_i321961;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i321962;
  wire [31:0]llvm_shang_and_i32_i32_i321963;
  wire [31:0]llvm_shang_or_i32_i32_i321964;
  wire [31:0]llvm_shang_or_i32_i32_i321965;
  wire [31:0]llvm_shang_or_i32_i32_i321966;
  wire llvm_shang_or_i1_i1_i11967;
  wire llvm_shang_or_i1_i1_i11968;
  wire llvm_shang_or_i1_i1_i11969;
  wire [63:0]llvm_shang_bit_repeat_i64_i1_i321970;
  wire [63:0]llvm_shang_and_i64_i64_i641971;
  wire [63:0]llvm_shang_bit_repeat_i64_i1_i321972;
  wire [63:0]llvm_shang_and_i64_i64_i641973;
  wire [63:0]llvm_shang_bit_repeat_i64_i1_i321974;
  wire [63:0]llvm_shang_and_i64_i64_i641975;
  wire [63:0]llvm_shang_bit_repeat_i64_i1_i321976;
  wire [63:0]llvm_shang_and_i64_i64_i641977;
  wire [63:0]llvm_shang_or_i64_i64_i641978;
  wire [63:0]llvm_shang_or_i64_i64_i641979;
  wire [63:0]llvm_shang_or_i64_i64_i641980;
  wire llvm_shang_or_i1_i1_i11981;
  wire llvm_shang_or_i1_i1_i11982;
  wire llvm_shang_or_i1_i1_i11983;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i321984;
  wire [31:0]llvm_shang_and_i32_i32_i321985;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i321986;
  wire [31:0]llvm_shang_and_i32_i32_i321987;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i321989;
  wire [31:0]llvm_shang_and_i32_i32_i321990;
  wire [31:0]llvm_shang_or_i32_i32_i321991;
  wire [31:0]llvm_shang_or_i32_i32_i321992;
  wire [31:0]llvm_shang_or_i32_i32_i321993;
  wire llvm_shang_or_i1_i1_i11994;
  wire llvm_shang_or_i1_i1_i11995;
  wire llvm_shang_or_i1_i1_i11996;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i321997;
  wire [31:0]llvm_shang_and_i32_i32_i321998;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i321999;
  wire [31:0]llvm_shang_and_i32_i32_i322000;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i322001;
  wire [31:0]llvm_shang_and_i32_i32_i322002;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i322003;
  wire [31:0]llvm_shang_and_i32_i32_i322004;
  wire [31:0]llvm_shang_or_i32_i32_i322005;
  wire [31:0]llvm_shang_or_i32_i32_i322006;
  wire [31:0]llvm_shang_or_i32_i32_i322007;
  wire llvm_shang_or_i1_i1_i12008;
  wire llvm_shang_or_i1_i1_i12009;
  wire llvm_shang_or_i1_i1_i12010;
  wire [63:0]llvm_shang_bit_repeat_i64_i1_i322011;
  wire [63:0]llvm_shang_and_i64_i64_i642012;
  wire [63:0]llvm_shang_bit_repeat_i64_i1_i322013;
  wire [63:0]llvm_shang_and_i64_i64_i642014;
  wire [63:0]llvm_shang_or_i64_i64_i642015;
  wire llvm_shang_or_i1_i1_i12016;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i322018;
  wire [31:0]llvm_shang_and_i32_i32_i322019;
  wire [31:0]llvm_shang_or_i32_i32_i322020;
  wire llvm_shang_or_i1_i1_i12021;
  wire [63:0]llvm_shang_bit_repeat_i64_i1_i322022;
  wire [63:0]llvm_shang_and_i64_i64_i642023;
  wire [63:0]llvm_shang_bit_repeat_i64_i1_i322024;
  wire [63:0]llvm_shang_and_i64_i64_i642025;
  wire [63:0]llvm_shang_or_i64_i64_i642026;
  wire llvm_shang_or_i1_i1_i12027;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i322029;
  wire [31:0]llvm_shang_and_i32_i32_i322030;
  wire [31:0]llvm_shang_or_i32_i32_i322031;
  wire llvm_shang_or_i1_i1_i12032;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i322033;
  wire [31:0]llvm_shang_and_i32_i32_i322034;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i322035;
  wire [31:0]llvm_shang_and_i32_i32_i322036;
  wire [31:0]llvm_shang_or_i32_i32_i322037;
  wire llvm_shang_or_i1_i1_i12038;
  wire [63:0]llvm_shang_bit_repeat_i64_i1_i322039;
  wire [63:0]llvm_shang_and_i64_i64_i642040;
  wire [63:0]llvm_shang_bit_repeat_i64_i1_i322041;
  wire [63:0]llvm_shang_and_i64_i64_i642042;
  wire [63:0]llvm_shang_or_i64_i64_i642043;
  wire llvm_shang_or_i1_i1_i12044;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i322045;
  wire [31:0]llvm_shang_and_i32_i32_i322046;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i322047;
  wire [31:0]llvm_shang_and_i32_i32_i322048;
  wire [31:0]llvm_shang_or_i32_i32_i322049;
  wire llvm_shang_or_i1_i1_i12050;
  wire [63:0]llvm_shang_bit_repeat_i64_i1_i322051;
  wire [63:0]llvm_shang_and_i64_i64_i642052;
  wire [63:0]llvm_shang_bit_repeat_i64_i1_i322053;
  wire [63:0]llvm_shang_and_i64_i64_i642054;
  wire [63:0]llvm_shang_bit_repeat_i64_i1_i322055;
  wire [63:0]llvm_shang_and_i64_i64_i642056;
  wire [63:0]llvm_shang_bit_repeat_i64_i1_i322057;
  wire [63:0]llvm_shang_and_i64_i64_i642058;
  wire [63:0]llvm_shang_bit_repeat_i64_i1_i322059;
  wire [63:0]llvm_shang_and_i64_i64_i642060;
  wire [63:0]llvm_shang_bit_repeat_i64_i1_i322061;
  wire [63:0]llvm_shang_and_i64_i64_i642062;
  wire [63:0]llvm_shang_or_i64_i64_i642063;
  wire [63:0]llvm_shang_or_i64_i64_i642064;
  wire [63:0]llvm_shang_or_i64_i64_i642065;
  wire [63:0]llvm_shang_or_i64_i64_i642066;
  wire [63:0]llvm_shang_or_i64_i64_i642067;
  wire llvm_shang_or_i1_i1_i12068;
  wire llvm_shang_or_i1_i1_i12069;
  wire llvm_shang_or_i1_i1_i12070;
  wire llvm_shang_or_i1_i1_i12071;
  wire llvm_shang_or_i1_i1_i12072;
  wire [63:0]llvm_shang_bit_repeat_i64_i1_i322073;
  wire [63:0]llvm_shang_and_i64_i64_i642074;
  wire [63:0]llvm_shang_bit_repeat_i64_i1_i322075;
  wire [63:0]llvm_shang_and_i64_i64_i642076;
  wire [63:0]llvm_shang_bit_repeat_i64_i1_i322077;
  wire [63:0]llvm_shang_and_i64_i64_i642078;
  wire [63:0]llvm_shang_bit_repeat_i64_i1_i322079;
  wire [63:0]llvm_shang_and_i64_i64_i642080;
  wire [63:0]llvm_shang_bit_repeat_i64_i1_i322081;
  wire [63:0]llvm_shang_and_i64_i64_i642082;
  wire [63:0]llvm_shang_bit_repeat_i64_i1_i322083;
  wire [63:0]llvm_shang_and_i64_i64_i642084;
  wire [63:0]llvm_shang_or_i64_i64_i642085;
  wire [63:0]llvm_shang_or_i64_i64_i642086;
  wire [63:0]llvm_shang_or_i64_i64_i642087;
  wire [63:0]llvm_shang_or_i64_i64_i642088;
  wire [63:0]llvm_shang_or_i64_i64_i642089;
  wire llvm_shang_or_i1_i1_i12090;
  wire llvm_shang_or_i1_i1_i12091;
  wire llvm_shang_or_i1_i1_i12092;
  wire llvm_shang_or_i1_i1_i12093;
  wire llvm_shang_or_i1_i1_i12094;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i322095;
  wire [31:0]llvm_shang_and_i32_i32_i322096;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i322097;
  wire [31:0]llvm_shang_and_i32_i32_i322098;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i322099;
  wire [31:0]llvm_shang_and_i32_i32_i322100;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i322101;
  wire [31:0]llvm_shang_and_i32_i32_i322102;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i322103;
  wire [31:0]llvm_shang_and_i32_i32_i322104;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i322105;
  wire [31:0]llvm_shang_and_i32_i32_i322106;
  wire [31:0]llvm_shang_or_i32_i32_i322107;
  wire [31:0]llvm_shang_or_i32_i32_i322108;
  wire [31:0]llvm_shang_or_i32_i32_i322109;
  wire [31:0]llvm_shang_or_i32_i32_i322110;
  wire [31:0]llvm_shang_or_i32_i32_i322111;
  wire llvm_shang_or_i1_i1_i12112;
  wire llvm_shang_or_i1_i1_i12113;
  wire llvm_shang_or_i1_i1_i12114;
  wire llvm_shang_or_i1_i1_i12115;
  wire llvm_shang_or_i1_i1_i12116;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i322117;
  wire [31:0]llvm_shang_and_i32_i32_i322118;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i322119;
  wire [31:0]llvm_shang_and_i32_i32_i322120;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i322121;
  wire [31:0]llvm_shang_and_i32_i32_i322122;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i322123;
  wire [31:0]llvm_shang_and_i32_i32_i322124;
  wire [31:0]llvm_shang_or_i32_i32_i322125;
  wire [31:0]llvm_shang_or_i32_i32_i322126;
  wire [31:0]llvm_shang_or_i32_i32_i322127;
  wire llvm_shang_or_i1_i1_i12128;
  wire llvm_shang_or_i1_i1_i12129;
  wire llvm_shang_or_i1_i1_i12130;
  wire [63:0]llvm_shang_bit_repeat_i64_i1_i322131;
  wire [63:0]llvm_shang_and_i64_i64_i642132;
  wire [63:0]llvm_shang_bit_repeat_i64_i1_i322133;
  wire [63:0]llvm_shang_and_i64_i64_i642134;
  wire [63:0]llvm_shang_bit_repeat_i64_i1_i322135;
  wire [63:0]llvm_shang_and_i64_i64_i642136;
  wire [63:0]llvm_shang_bit_repeat_i64_i1_i322137;
  wire [63:0]llvm_shang_and_i64_i64_i642138;
  wire [63:0]llvm_shang_or_i64_i64_i642139;
  wire [63:0]llvm_shang_or_i64_i64_i642140;
  wire [63:0]llvm_shang_or_i64_i64_i642141;
  wire llvm_shang_or_i1_i1_i12142;
  wire llvm_shang_or_i1_i1_i12143;
  wire llvm_shang_or_i1_i1_i12144;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i322145;
  wire [31:0]llvm_shang_and_i32_i32_i322146;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i322147;
  wire [31:0]llvm_shang_and_i32_i32_i322148;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i322150;
  wire [31:0]llvm_shang_and_i32_i32_i322151;
  wire [31:0]llvm_shang_or_i32_i32_i322152;
  wire [31:0]llvm_shang_or_i32_i32_i322153;
  wire [31:0]llvm_shang_or_i32_i32_i322154;
  wire llvm_shang_or_i1_i1_i12155;
  wire llvm_shang_or_i1_i1_i12156;
  wire llvm_shang_or_i1_i1_i12157;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i322158;
  wire [31:0]llvm_shang_and_i32_i32_i322159;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i322160;
  wire [31:0]llvm_shang_and_i32_i32_i322161;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i322162;
  wire [31:0]llvm_shang_and_i32_i32_i322163;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i322164;
  wire [31:0]llvm_shang_and_i32_i32_i322165;
  wire [31:0]llvm_shang_or_i32_i32_i322166;
  wire [31:0]llvm_shang_or_i32_i32_i322167;
  wire [31:0]llvm_shang_or_i32_i32_i322168;
  wire llvm_shang_or_i1_i1_i12169;
  wire llvm_shang_or_i1_i1_i12170;
  wire llvm_shang_or_i1_i1_i12171;
  wire [63:0]llvm_shang_bit_repeat_i64_i1_i322172;
  wire [63:0]llvm_shang_and_i64_i64_i642173;
  wire [63:0]llvm_shang_bit_repeat_i64_i1_i322174;
  wire [63:0]llvm_shang_and_i64_i64_i642175;
  wire [63:0]llvm_shang_or_i64_i64_i642176;
  wire llvm_shang_or_i1_i1_i12177;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i322179;
  wire [31:0]llvm_shang_and_i32_i32_i322180;
  wire [31:0]llvm_shang_or_i32_i32_i322181;
  wire llvm_shang_or_i1_i1_i12182;
  wire [63:0]llvm_shang_bit_repeat_i64_i1_i322183;
  wire [63:0]llvm_shang_and_i64_i64_i642184;
  wire [63:0]llvm_shang_bit_repeat_i64_i1_i322185;
  wire [63:0]llvm_shang_and_i64_i64_i642186;
  wire [63:0]llvm_shang_or_i64_i64_i642187;
  wire llvm_shang_or_i1_i1_i12188;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i322190;
  wire [31:0]llvm_shang_and_i32_i32_i322191;
  wire [31:0]llvm_shang_or_i32_i32_i322192;
  wire llvm_shang_or_i1_i1_i12193;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i322194;
  wire [31:0]llvm_shang_and_i32_i32_i322195;
  wire [31:0]llvm_shang_bit_repeat_i32_i1_i322196;
  wire [31:0]llvm_shang_and_i32_i32_i322197;
  wire [31:0]llvm_shang_or_i32_i32_i322198;
  wire llvm_shang_or_i1_i1_i12199;
  wire llvm_shang_and_i1_i1_i12200;
  wire llvm_shang_or_i1_i1_i12201;
  wire llvm_shang_or_i1_i1_i12202;
  wire llvm_shang_and_i1_i1_i12203;
  wire llvm_shang_or_i1_i1_i12204;
  wire llvm_shang_or_i1_i1_i12205;
  wire llvm_shang_or_i1_i1_i12206;
  wire llvm_shang_or_i1_i1_i12207;
  wire llvm_shang_or_i1_i1_i12208;
  wire llvm_shang_or_i1_i1_i12209;
  wire llvm_shang_or_i1_i1_i12210;
  wire llvm_shang_or_i1_i1_i12211;
  wire llvm_shang_or_i1_i1_i12212;
  wire llvm_shang_or_i1_i1_i12213;
  wire llvm_shang_or_i1_i1_i12214;
  wire llvm_shang_or_i1_i1_i12215;
  wire llvm_shang_or_i1_i1_i12216;
  wire llvm_shang_or_i1_i1_i12217;
  wire llvm_shang_or_i1_i1_i12218;
  wire llvm_shang_or_i1_i1_i12219;
  wire llvm_shang_or_i1_i1_i12220;
  wire llvm_shang_or_i1_i1_i12221;
  wire llvm_shang_or_i1_i1_i12222;
  wire llvm_shang_or_i1_i1_i12223;
  wire llvm_shang_or_i1_i1_i12224;
  wire llvm_shang_or_i1_i1_i12225;
  wire llvm_shang_or_i1_i1_i12226;
  wire llvm_shang_or_i1_i1_i12227;
  wire llvm_shang_or_i1_i1_i12228;
  wire llvm_shang_or_i1_i1_i12229;
  wire llvm_shang_or_i1_i1_i12230;
  wire llvm_shang_or_i1_i1_i12231;
  wire llvm_shang_or_i1_i1_i12232;
  wire llvm_shang_or_i1_i1_i12233;
  wire llvm_shang_or_i1_i1_i12234;
  wire llvm_shang_or_i1_i1_i12235;
  wire llvm_shang_or_i1_i1_i12236;
  wire llvm_shang_or_i1_i1_i12237;
  wire llvm_shang_or_i1_i1_i12238;
  wire llvm_shang_or_i1_i1_i12239;
  wire llvm_shang_or_i1_i1_i12240;
  wire llvm_shang_or_i1_i1_i12241;
  wire llvm_shang_or_i1_i1_i12242;
  wire llvm_shang_or_i1_i1_i12243;
  wire llvm_shang_or_i1_i1_i12244;
  wire llvm_shang_or_i1_i1_i12245;
  wire llvm_shang_or_i1_i1_i12246;
  wire llvm_shang_or_i1_i1_i12247;
  wire llvm_shang_or_i1_i1_i12248;
  wire llvm_shang_or_i1_i1_i12249;
  wire llvm_shang_or_i1_i1_i12250;
  wire llvm_shang_or_i1_i1_i12251;

   
  wire[31:0] SIRPtrToInt = ((((float_exception_flags[31:0]))));
  assign llvm_shang_bit_extract_i2_i32_i16_i16[1:0] = ((((SIRPtrToInt[1:0]))));
  assign llvm_shang_bit_extract_i1_i64_i16_i16 = ((((a_reg[63]))));
  assign shr_i261[63:0] = (((({((63'h0)), ((llvm_shang_bit_extract_i1_i64_i16_i16))}))));
  assign conv_i262[31:0] = ((((shr_i261[31:0]))));
  assign llvm_shang_bit_extract_i1_i64_i16_i16263 = ((((b_reg[63]))));
  assign shr_i1264[63:0] = (((({((63'h0)), ((llvm_shang_bit_extract_i1_i64_i16_i16263))}))));
  assign conv_i2265[31:0] = ((((shr_i1264[31:0]))));
  assign cmp266 = ((((conv_i262[31:0])) == ((conv_i2265[31:0]))));
  assign llvm_shang_bit_extract_i12_i64_i16_i16[11:0] = ((((a_reg[63:52]))));
  assign shr_i2_i267[63:0] = (((({((52'h0)), ((llvm_shang_bit_extract_i12_i64_i16_i16[11:0]))}))));
  assign shr_tr_i_i3268[31:0] = ((((shr_i2_i267[31:0]))));
  assign conv_i_i4269[31:0] = ((((shr_tr_i_i3268[31:0])) & ((32'h7FF))));
  assign llvm_shang_bit_extract_i12_i64_i16_i16270[11:0] = ((((b_reg[63:52]))));
  assign shr_i28_i271[63:0] = (((({((52'h0)), ((llvm_shang_bit_extract_i12_i64_i16_i16270[11:0]))}))));
  assign shr_tr_i29_i272[31:0] = ((((shr_i28_i271[31:0]))));
  assign conv_i30_i273[31:0] = ((((shr_tr_i29_i272[31:0])) & ((32'h7FF))));
  assign llvm_shang_not_i32_i32[31:0] = (((~((conv_i30_i273[31:0])))));
  shang_addc#(32, 32, 32) sub_i5274_shang_addc(((conv_i_i4269[31:0])), ((llvm_shang_not_i32_i32[31:0])), ((1'b1)), ((sub_i5274[31:0])));
  assign llvm_shang_not_i1_i1276 = (((~((cmp266)))));
  assign llvm_shang_bit_extract_i55_i64_i16_i16[54:0] = ((((a_reg[54:0]))));
  assign and_i_i6535[63:0] = (((({((llvm_shang_bit_extract_i55_i64_i16_i16[54:0])), ((9'h0))}))));
  assign shl_i7536[63:0] = ((((and_i_i6535[63:0])) & ((64'h1FFFFFFFFFFFFE00))));
  assign llvm_shang_bit_extract_i55_i64_i16_i16537[54:0] = ((((b_reg[54:0]))));
  assign and_i10_i538[63:0] = (((({((llvm_shang_bit_extract_i55_i64_i16_i16537[54:0])), ((9'h0))}))));
  assign shl4_i8539[63:0] = ((((and_i10_i538[63:0])) & ((64'h1FFFFFFFFFFFFE00))));
  shang_sgt#(32, 32, 1) cmp_i9540_shang_sgt(((sub_i5274[31:0])), ((32'h0)), ((cmp_i9540)));
  assign llvm_shang_not_i1_i1542 = (((~((cmp_i9540)))));
  assign cmp5_i10613 = ((((conv_i_i4269[31:0])) == ((32'h7FF))));
  assign llvm_shang_not_i1_i1615 = (((~((cmp5_i10613)))));
  assign tobool_i11741 = ((((shl_i7536[63:0])) == ((64'h0))));
  assign llvm_shang_not_i1_i1742 = (((~((tobool_i11741)))));
  assign cmp10_i617 = ((((conv_i30_i273[31:0])) == ((32'h0))));
  assign or_i12618[63:0] = ((((shl4_i8539[63:0])) | ((64'h2000000000000000))));
  assign llvm_shang_bit_repeat_i64_i1_i32619[63:0] = (({64{((cmp10_i617))}}));
  assign llvm_shang_not_i64_i64620[63:0] = (((~((llvm_shang_bit_repeat_i64_i1_i32619[63:0])))));
  assign llvm_shang_and_i64_i64_i64621[63:0] = ((((llvm_shang_bit_repeat_i64_i1_i32619[63:0])) & ((shl4_i8539[63:0]))));
  assign llvm_shang_and_i64_i64_i64622[63:0] = ((((llvm_shang_not_i64_i64620[63:0])) & ((or_i12618[63:0]))));
  assign and_i1074_i623[63:0] = ((((llvm_shang_and_i64_i64_i64621[63:0])) | ((llvm_shang_and_i64_i64_i64622[63:0]))));
  assign llvm_shang_bit_repeat_i32_i1_i32624[31:0] = (({32{((cmp10_i617))}}));
  shang_addc#(32, 32, 32) sub71_i625_shang_addc(((llvm_shang_bit_repeat_i32_i1_i32624[31:0])), ((sub_i5274[31:0])), 1'b0, ((sub71_i625[31:0])));
  assign cmp_i11_i626 = ((((sub71_i625[31:0])) == ((32'h0))));
  assign llvm_shang_not_i1_i1627 = (((~((cmp_i11_i626)))));
  shang_sgt#(32, 32, 1) cmp1_i12_i629_shang_sgt(((32'h40)), ((sub71_i625[31:0])), ((cmp1_i12_i629)));
  assign llvm_shang_not_i1_i1631 = (((~((cmp1_i12_i629)))));
  assign sh_prom_i14_i635[63:0] = (((({((32'h0)), ((sub71_i625[31:0]))}))));
  assign llvm_shang_bit_extract_i6_i64_i16_i16636[5:0] = ((((sh_prom_i14_i635[5:0]))));
  shang_srl#(64, 6, 64) shr_i15_i637_shang_srl(((and_i1074_i623[63:0])), ((llvm_shang_bit_extract_i6_i64_i16_i16636[5:0])), ((shr_i15_i637[63:0])));
  assign llvm_shang_not_i32_i32638[31:0] = (((~((sub71_i625[31:0])))));
  shang_addc#(32, 32, 32) sub_i_i14639_shang_addc(((32'h0)), ((llvm_shang_not_i32_i32638[31:0])), ((1'b1)), ((sub_i_i14639[31:0])));
  assign and_i16_i640[31:0] = ((((sub_i_i14639[31:0])) & ((32'h3F))));
  assign sh_prom3_i17_i641[63:0] = (((({((32'h0)), ((and_i16_i640[31:0]))}))));
  assign llvm_shang_bit_extract_i6_i64_i16_i16642[5:0] = ((((sh_prom3_i17_i641[5:0]))));
  shang_shl#(64, 6, 64) shl_i18_i643_shang_shl(((and_i1074_i623[63:0])), ((llvm_shang_bit_extract_i6_i64_i16_i16642[5:0])), ((shl_i18_i643[63:0])));
  assign cmp4_i19_i644 = ((((shl_i18_i643[63:0])) != ((64'h0))));
  assign conv_i20_i645[63:0] = (((({((63'h0)), ((cmp4_i19_i644))}))));
  assign or_i21_i646[63:0] = ((((conv_i20_i645[63:0])) | ((shr_i15_i637[63:0]))));
  assign cmp6_i23_i633 = ((((and_i1074_i623[63:0])) != ((64'h0))));
  assign conv7_i24_i634[63:0] = (((({((63'h0)), ((cmp6_i23_i633))}))));
  shang_sgt#(32, 32, 1) cmp14_i544_shang_sgt(((32'h0)), ((sub_i5274[31:0])), ((cmp14_i544)));
  assign llvm_shang_not_i1_i1546 = (((~((cmp14_i544)))));
  assign cmp16_i569 = ((((conv_i30_i273[31:0])) == ((32'h7FF))));
  assign llvm_shang_not_i1_i1571 = (((~((cmp16_i569)))));
  assign tobool18_i607 = ((((shl4_i8539[63:0])) == ((64'h0))));
  assign llvm_shang_not_i1_i1609 = (((~((tobool18_i607)))));
  assign llvm_shang_bit_extract_i1_i64_i16_i16610 = ((((shr_i261[0]))));
  assign shl_i9_i611[63:0] = (((({((llvm_shang_bit_extract_i1_i64_i16_i16610)), ((63'h0))}))));
  assign add3_i82_i612[63:0] = ((((shl_i9_i611[63:0])) | ((64'h7FF0000000000000))));
  assign cmp24_i573 = ((((conv_i_i4269[31:0])) == ((32'h0))));
  assign or27_i574[63:0] = ((((shl_i7536[63:0])) | ((64'h2000000000000000))));
  assign llvm_shang_bit_repeat_i64_i1_i32575[63:0] = (({64{((cmp24_i573))}}));
  assign llvm_shang_not_i64_i64576[63:0] = (((~((llvm_shang_bit_repeat_i64_i1_i32575[63:0])))));
  assign llvm_shang_and_i64_i64_i64577[63:0] = ((((llvm_shang_bit_repeat_i64_i1_i32575[63:0])) & ((shl_i7536[63:0]))));
  assign llvm_shang_and_i64_i64_i64578[63:0] = ((((llvm_shang_not_i64_i64576[63:0])) & ((or27_i574[63:0]))));
  assign and_i76_i16579[63:0] = ((((llvm_shang_and_i64_i64_i64577[63:0])) | ((llvm_shang_and_i64_i64_i64578[63:0]))));
  assign inc_i17580[31:0] = (((({((31'h0)), ((cmp24_i573))}))));
  shang_addc#(32, 32, 32) sub72_i581_shang_addc(((sub_i5274[31:0])), ((inc_i17580[31:0])), 1'b0, ((sub72_i581[31:0])));
  assign cmp_i_i18582 = ((((sub72_i581[31:0])) == ((32'h0))));
  assign llvm_shang_not_i1_i1587 = (((~((cmp_i_i18582)))));
  assign llvm_shang_not_i32_i32589[31:0] = (((~((sub72_i581[31:0])))));
  shang_addc#(32, 32, 32) sub29_i590_shang_addc(((32'h0)), ((llvm_shang_not_i32_i32589[31:0])), ((1'b1)), ((sub29_i590[31:0])));
  shang_sgt#(32, 32, 1) cmp1_i_i19591_shang_sgt(((32'h40)), ((sub29_i590[31:0])), ((cmp1_i_i19591)));
  assign llvm_shang_not_i1_i1593 = (((~((cmp1_i_i19591)))));
  assign sh_prom_i_i21597[63:0] = (((({((32'h0)), ((sub29_i590[31:0]))}))));
  assign llvm_shang_bit_extract_i6_i64_i16_i16598[5:0] = ((((sh_prom_i_i21597[5:0]))));
  shang_srl#(64, 6, 64) shr_i3_i599_shang_srl(((and_i76_i16579[63:0])), ((llvm_shang_bit_extract_i6_i64_i16_i16598[5:0])), ((shr_i3_i599[63:0])));
  assign and_i4_i600[31:0] = ((((sub72_i581[31:0])) & ((32'h3F))));
  assign sh_prom3_i_i22601[63:0] = (((({((32'h0)), ((and_i4_i600[31:0]))}))));
  assign llvm_shang_bit_extract_i6_i64_i16_i16602[5:0] = ((((sh_prom3_i_i22601[5:0]))));
  shang_shl#(64, 6, 64) shl_i5_i603_shang_shl(((and_i76_i16579[63:0])), ((llvm_shang_bit_extract_i6_i64_i16_i16602[5:0])), ((shl_i5_i603[63:0])));
  assign cmp4_i_i23604 = ((((shl_i5_i603[63:0])) != ((64'h0))));
  assign conv_i6_i24605[63:0] = (((({((63'h0)), ((cmp4_i_i23604))}))));
  assign or_i7_i606[63:0] = ((((conv_i6_i24605[63:0])) | ((shr_i3_i599[63:0]))));
  assign cmp6_i_i26595 = ((((and_i76_i16579[63:0])) != ((64'h0))));
  assign conv7_i_i27596[63:0] = (((({((63'h0)), ((cmp6_i_i26595))}))));
  assign llvm_shang_eq_i1_i32_i32548 = ((((conv_i_i4269[31:0])) == ((32'h0))));
  assign llvm_shang_eq_i1_i32_i32549 = ((((conv_i_i4269[31:0])) == ((32'h7FF))));
  assign llvm_shang_or_i1_i1_i1552 = ((((llvm_shang_eq_i1_i32_i32549)) | ((llvm_shang_eq_i1_i32_i32548))));
  assign llvm_shang_not_i1_i1553 = (((~((llvm_shang_or_i1_i1_i1552)))));
  assign or33_i561[63:0] = ((((shl4_i8539[63:0])) | ((shl_i7536[63:0]))));
  assign tobool34_i562 = ((((or33_i561[63:0])) == ((64'h0))));
  assign llvm_shang_not_i1_i1563 = (((~((tobool34_i562)))));
  shang_addc#(64, 64, 64) add_i555_shang_addc(((shl4_i8539[63:0])), ((shl_i7536[63:0])), 1'b0, ((add_i555[63:0])));
  assign llvm_shang_bit_extract_i55_i64_i16_i16556[54:0] = ((((add_i555[63:9]))));
  assign shr_i29557[63:0] = (((({((9'h0)), ((llvm_shang_bit_extract_i55_i64_i16_i16556[54:0]))}))));
  assign llvm_shang_bit_extract_i1_i64_i16_i16558 = ((((shr_i261[0]))));
  assign shl_i_i31559[63:0] = (((({((llvm_shang_bit_extract_i1_i64_i16_i16558)), ((63'h0))}))));
  assign add_i1_i560[63:0] = ((((shr_i29557[63:0])) | ((shl_i_i31559[63:0]))));
  assign add4381_i564[63:0] = ((((shl_i7536[63:0])) | ((64'h4000000000000000))));
  shang_addc#(64, 64, 64) add44_i565_shang_addc(((add4381_i564[63:0])), ((shl4_i8539[63:0])), 1'b0, ((add44_i565[63:0])));
  assign or47_i647[63:0] = ((((and_i77_i32_reg2mem_0[63:0])) | ((64'h2000000000000000))));
  shang_addc#(64, 64, 64) add48_i648_shang_addc(((or47_i647[63:0])), ((and_i1075_i_reg2mem_0[63:0])), 1'b0, ((add48_i648[63:0])));
  assign llvm_shang_bit_extract_i63_i64_i16_i16[62:0] = ((((add48_i648[62:0]))));
  assign shl49_i649[63:0] = (((({((llvm_shang_bit_extract_i63_i64_i16_i16[62:0])), ((1'b0))}))));
  shang_sgt#(64, 64, 1) cmp51_i650_shang_sgt(((64'h0)), ((shl49_i649[63:0])), ((cmp51_i650)));
  assign not_cmp51_i651 = ((((cmp51_i650)) ^ ((1'b1))));
  assign llvm_shang_bit_repeat_i32_i1_i32652[31:0] = (({32{((not_cmp51_i651))}}));
  shang_addc#(32, 32, 32) aExp_0_load5778_dec50_i653_shang_addc(((llvm_shang_bit_repeat_i32_i1_i32652[31:0])), ((aExp_0_load5778_i_reg2mem_0[31:0])), 1'b0, ((aExp_0_load5778_dec50_i653[31:0])));
  assign llvm_shang_bit_repeat_i64_i1_i32654[63:0] = (({64{((cmp51_i650))}}));
  assign llvm_shang_not_i64_i64655[63:0] = (((~((llvm_shang_bit_repeat_i64_i1_i32654[63:0])))));
  assign llvm_shang_and_i64_i64_i64656[63:0] = ((((llvm_shang_bit_repeat_i64_i1_i32654[63:0])) & ((add48_i648[63:0]))));
  assign llvm_shang_and_i64_i64_i64657[63:0] = ((((llvm_shang_not_i64_i64655[63:0])) & ((shl49_i649[63:0]))));
  assign add48_shl49_i658[63:0] = ((((llvm_shang_and_i64_i64_i64656[63:0])) | ((llvm_shang_and_i64_i64_i64657[63:0]))));
  assign _tr_i_i659[31:0] = ((((add4473_i_reg2mem231_0[31:0]))));
  assign conv14_i_i660[31:0] = ((((_tr_i_i659[31:0])) & ((32'h3FF))));
  assign conv16_i_i661[31:0] = ((((aExp_0_load5779_i_reg2mem233_0[31:0])) & ((32'hFFFF))));
  shang_ugt#(32, 32, 1) cmp17_i_i662_shang_ugt(((conv16_i_i661[31:0])), ((32'h7FC)), ((cmp17_i_i662)));
  assign llvm_shang_not_i1_i1664 = (((~((cmp17_i_i662)))));
  shang_sgt#(32, 32, 1) cmp19_i_i670_shang_sgt(((aExp_0_load5779_i_reg2mem233_0[31:0])), ((32'h7FD)), ((cmp19_i_i670)));
  assign llvm_shang_not_i1_i1672 = (((~((cmp19_i_i670)))));
  assign cmp20_i_i674 = ((((aExp_0_load5779_i_reg2mem233_0[31:0])) == ((32'h7FD))));
  assign llvm_shang_not_i1_i1676 = (((~((cmp20_i_i674)))));
  shang_addc#(64, 64, 64) add_i_i712_shang_addc(((add4473_i_reg2mem231_0[63:0])), ((64'h200)), 1'b0, ((add_i_i712[63:0])));
  shang_sgt#(64, 64, 1) cmp22_i_i713_shang_sgt(((64'h0)), ((add_i_i712[63:0])), ((cmp22_i_i713)));
  assign llvm_shang_not_i1_i1714 = (((~((cmp22_i_i713)))));
  assign or_i_i_i33737[31:0] = ((((float_exception_flags_restore[31:0])) | ((32'h9))));
  assign llvm_shang_bit_extract_i1_i64_i16_i16738 = ((((shr_i261[0]))));
  assign shl_i6_i_i739[63:0] = (((({((llvm_shang_bit_extract_i1_i64_i16_i16738)), ((63'h0))}))));
  assign add3_i733_i_i740[63:0] = ((((shl_i6_i_i739[63:0])) | ((64'h7FF0000000000000))));
  shang_sgt#(32, 32, 1) cmp27_i_i678_shang_sgt(((32'h0)), ((aExp_0_load5779_i_reg2mem233_0[31:0])), ((cmp27_i_i678)));
  assign llvm_shang_not_i1_i1680 = (((~((cmp27_i_i678)))));
  assign llvm_shang_not_i32_i32681[31:0] = (((~((aExp_0_load5779_i_reg2mem233_0[31:0])))));
  shang_addc#(32, 32, 32) sub29_i_i682_shang_addc(((32'h0)), ((llvm_shang_not_i32_i32681[31:0])), ((1'b1)), ((sub29_i_i682[31:0])));
  shang_sgt#(32, 32, 1) cmp1_i_i_i683_shang_sgt(((32'h40)), ((sub29_i_i682[31:0])), ((cmp1_i_i_i683)));
  assign llvm_shang_not_i1_i1685 = (((~((cmp1_i_i_i683)))));
  assign sh_prom_i_i_i691[63:0] = (((({((32'h0)), ((sub29_i_i682[31:0]))}))));
  assign llvm_shang_bit_extract_i6_i64_i16_i16692[5:0] = ((((sh_prom_i_i_i691[5:0]))));
  shang_srl#(64, 6, 64) shr_i_i_i34693_shang_srl(((add4473_i_reg2mem231_0[63:0])), ((llvm_shang_bit_extract_i6_i64_i16_i16692[5:0])), ((shr_i_i_i34693[63:0])));
  assign and_i_i_i694[31:0] = ((((aExp_0_load5779_i_reg2mem233_0[31:0])) & ((32'h3F))));
  assign sh_prom3_i_i_i695[63:0] = (((({((32'h0)), ((and_i_i_i694[31:0]))}))));
  assign llvm_shang_bit_extract_i6_i64_i16_i16696[5:0] = ((((sh_prom3_i_i_i695[5:0]))));
  shang_shl#(64, 6, 64) shl_i3_i_i697_shang_shl(((add4473_i_reg2mem231_0[63:0])), ((llvm_shang_bit_extract_i6_i64_i16_i16696[5:0])), ((shl_i3_i_i697[63:0])));
  assign cmp4_i_i_i698 = ((((shl_i3_i_i697[63:0])) != ((64'h0))));
  assign conv_i_i_i35699[63:0] = (((({((63'h0)), ((cmp4_i_i_i698))}))));
  assign or_i4_i_i700[63:0] = ((((conv_i_i_i35699[63:0])) | ((shr_i_i_i34693[63:0]))));
  assign cmp6_i_i_i687 = ((((add4473_i_reg2mem231_0[63:0])) != ((64'h0))));
  assign conv7_i_i_i688[63:0] = (((({((63'h0)), ((cmp6_i_i_i687))}))));
  assign _tr1_i_i701[31:0] = ((((storemerge1_i_i_i_reg2mem229_0[31:0]))));
  assign conv31_i_i702[31:0] = ((((_tr1_i_i701[31:0])) & ((32'h3FF))));
  assign tobool34_i_i703 = ((((conv31_i_i702[31:0])) == ((32'h0))));
  assign llvm_shang_not_i1_i1709 = (((~((tobool34_i_i703)))));
  assign or_i2_i_i711[31:0] = ((((float_exception_flags_restore[31:0])) | ((32'h4))));
  assign not_tobool39_i_i715 = ((((conv1424_i_i_reg2mem223_0[31:0])) != ((32'h0))));
  assign or_i_i36716[31:0] = (((({((31'h0)), ((not_tobool39_i_i715))}))));
  assign float_exception_flags_shadow_0_or_i_i36717[31:0] = ((((float_exception_flags_shadow_0[31:0])) | ((or_i_i36716[31:0]))));
  shang_addc#(64, 64, 64) add43_i_i718_shang_addc(((zSig2531_i_i_reg2mem_0[63:0])), ((64'h200)), 1'b0, ((add43_i_i718[63:0])));
  assign llvm_shang_bit_extract_i54_i64_i16_i16719[53:0] = ((((add43_i_i718[63:10]))));
  assign shr_i_i37720[63:0] = (((({((10'h0)), ((llvm_shang_bit_extract_i54_i64_i16_i16719[53:0]))}))));
  assign cmp44_i_i721 = ((((conv142432_i_i_reg2mem_0[31:0])) == ((32'h200))));
  assign conv45_i_i722[63:0] = (((({((63'h0)), ((cmp44_i_i721))}))));
  assign neg_i_i723[63:0] = ((((conv45_i_i722[63:0])) ^ ((64'hFFFFFFFFFFFFFFFF))));
  assign and48_i_i724[63:0] = ((((shr_i_i37720[63:0])) & ((neg_i_i723[63:0]))));
  assign cmp49_i_i725 = ((((and48_i_i724[63:0])) == ((64'h0))));
  assign llvm_shang_bit_extract_i1_i64_i16_i16726 = ((((shr_i261[0]))));
  assign shl_i_i_i727[63:0] = (((({((llvm_shang_bit_extract_i1_i64_i16_i16726)), ((63'h0))}))));
  assign tmp43728[63:0] = (((({((32'h0)), ((zExp2730_i_i_reg2mem_0[31:0]))}))));
  assign llvm_shang_bit_extract_i12_i64_i16_i16729[11:0] = ((((tmp43728[11:0]))));
  assign _op_i_i730[63:0] = (((({((llvm_shang_bit_extract_i12_i64_i16_i16729[11:0])), ((52'h0))}))));
  assign llvm_shang_bit_repeat_i64_i1_i32731[63:0] = (({64{((cmp49_i_i725))}}));
  assign llvm_shang_not_i64_i64732[63:0] = (((~((llvm_shang_bit_repeat_i64_i1_i32731[63:0])))));
  assign llvm_shang_and_i64_i64_i64733[63:0] = ((((llvm_shang_not_i64_i64732[63:0])) & ((_op_i_i730[63:0]))));
  assign shl2_i_i_i734[63:0] = ((((64'h0)) | ((llvm_shang_and_i64_i64_i64733[63:0]))));
  assign add_i_i_i38735[63:0] = ((((and48_i_i724[63:0])) | ((shl_i_i_i727[63:0]))));
  shang_addc#(64, 64, 64) add3_i_i_i736_shang_addc(((shl2_i_i_i734[63:0])), ((add_i_i_i38735[63:0])), 1'b0, ((add3_i_i_i736[63:0])));
  assign llvm_shang_bit_extract_i54_i64_i16_i16[53:0] = ((((a_reg[53:0]))));
  assign and_i_i278[63:0] = (((({((llvm_shang_bit_extract_i54_i64_i16_i16[53:0])), ((10'h0))}))));
  assign shl_i279[63:0] = ((((and_i_i278[63:0])) & ((64'h3FFFFFFFFFFFFC00))));
  assign llvm_shang_bit_extract_i54_i64_i16_i16280[53:0] = ((((b_reg[53:0]))));
  assign and_i25_i281[63:0] = (((({((llvm_shang_bit_extract_i54_i64_i16_i16280[53:0])), ((10'h0))}))));
  assign shl4_i282[63:0] = ((((and_i25_i281[63:0])) & ((64'h3FFFFFFFFFFFFC00))));
  shang_sgt#(32, 32, 1) cmp_i283_shang_sgt(((sub_i5274[31:0])), ((32'h0)), ((cmp_i283)));
  assign llvm_shang_not_i1_i1285 = (((~((cmp_i283)))));
  shang_sgt#(32, 32, 1) cmp5_i287_shang_sgt(((32'h0)), ((sub_i5274[31:0])), ((cmp5_i287)));
  assign llvm_shang_not_i1_i1289 = (((~((cmp5_i287)))));
  assign llvm_shang_eq_i1_i32_i32 = ((((conv_i_i4269[31:0])) == ((32'h0))));
  assign llvm_shang_eq_i1_i32_i32291 = ((((conv_i_i4269[31:0])) == ((32'h7FF))));
  assign llvm_shang_or_i1_i1_i1 = ((((llvm_shang_eq_i1_i32_i32)) | ((llvm_shang_eq_i1_i32_i32291))));
  assign llvm_shang_not_i1_i1294 = (((~((llvm_shang_or_i1_i1_i1)))));
  assign or_i298[63:0] = ((((shl4_i282[63:0])) | ((shl_i279[63:0]))));
  assign tobool_i299 = ((((or_i298[63:0])) == ((64'h0))));
  assign llvm_shang_not_i1_i1301 = (((~((tobool_i299)))));
  assign or_i26_i303[31:0] = ((((float_exception_flags_restore[31:0])) | ((32'h10))));
  shang_ugt#(64, 64, 1) cmp17_i307_shang_ugt(((shl_i279[63:0])), ((shl4_i282[63:0])), ((cmp17_i307)));
  assign llvm_shang_not_i1_i1312 = (((~((cmp17_i307)))));
  shang_ugt#(64, 64, 1) cmp20_i314_shang_ugt(((shl4_i282[63:0])), ((shl_i279[63:0])), ((cmp20_i314)));
  assign llvm_shang_not_i1_i1319 = (((~((cmp20_i314)))));
  assign cmp25_i320 = ((((conv_i30_i273[31:0])) == ((32'h7FF))));
  assign llvm_shang_not_i1_i1322 = (((~((cmp25_i320)))));
  assign tobool27_i360 = ((((shl4_i282[63:0])) == ((64'h0))));
  assign llvm_shang_not_i1_i1362 = (((~((tobool27_i360)))));
  assign llvm_shang_bit_extract_i1_i64_i16_i16363 = ((((shr_i261[0]))));
  assign xor_i364[63:0] = (((({((llvm_shang_bit_extract_i1_i64_i16_i16363)), ((63'h0))}))));
  assign add3_i86_i365[63:0] = ((((xor_i364[63:0])) ^ ((64'hFFF0000000000000))));
  assign cmp33_i324 = ((((conv_i_i4269[31:0])) == ((32'h0))));
  assign or35_i325[63:0] = ((((shl_i279[63:0])) | ((64'h4000000000000000))));
  assign llvm_shang_bit_repeat_i64_i1_i32[63:0] = (({64{((cmp33_i324))}}));
  assign llvm_shang_not_i64_i64[63:0] = (((~((llvm_shang_bit_repeat_i64_i1_i32[63:0])))));
  assign llvm_shang_and_i64_i64_i64[63:0] = ((((llvm_shang_bit_repeat_i64_i1_i32[63:0])) & ((shl_i279[63:0]))));
  assign llvm_shang_and_i64_i64_i64326[63:0] = ((((llvm_shang_not_i64_i64[63:0])) & ((or35_i325[63:0]))));
  assign and_i75_i327[63:0] = ((((llvm_shang_and_i64_i64_i64[63:0])) | ((llvm_shang_and_i64_i64_i64326[63:0]))));
  assign inc_i328[31:0] = (((({((31'h0)), ((cmp33_i324))}))));
  shang_addc#(32, 32, 32) sub69_i329_shang_addc(((sub_i5274[31:0])), ((inc_i328[31:0])), 1'b0, ((sub69_i329[31:0])));
  assign cmp_i7_i330 = ((((sub69_i329[31:0])) == ((32'h0))));
  assign llvm_shang_not_i1_i1333 = (((~((cmp_i7_i330)))));
  assign llvm_shang_not_i32_i32335[31:0] = (((~((sub69_i329[31:0])))));
  shang_addc#(32, 32, 32) sub37_i336_shang_addc(((32'h0)), ((llvm_shang_not_i32_i32335[31:0])), ((1'b1)), ((sub37_i336[31:0])));
  shang_sgt#(32, 32, 1) cmp1_i8_i337_shang_sgt(((32'h40)), ((sub37_i336[31:0])), ((cmp1_i8_i337)));
  assign llvm_shang_not_i1_i1339 = (((~((cmp1_i8_i337)))));
  assign sh_prom_i10_i343[63:0] = (((({((32'h0)), ((sub37_i336[31:0]))}))));
  assign llvm_shang_bit_extract_i6_i64_i16_i16[5:0] = ((((sh_prom_i10_i343[5:0]))));
  shang_srl#(64, 6, 64) shr_i11_i344_shang_srl(((and_i75_i327[63:0])), ((llvm_shang_bit_extract_i6_i64_i16_i16[5:0])), ((shr_i11_i344[63:0])));
  assign and_i12_i345[31:0] = ((((sub69_i329[31:0])) & ((32'h3F))));
  assign sh_prom3_i13_i346[63:0] = (((({((32'h0)), ((and_i12_i345[31:0]))}))));
  assign llvm_shang_bit_extract_i6_i64_i16_i16347[5:0] = ((((sh_prom3_i13_i346[5:0]))));
  shang_shl#(64, 6, 64) shl_i14_i348_shang_shl(((and_i75_i327[63:0])), ((llvm_shang_bit_extract_i6_i64_i16_i16347[5:0])), ((shl_i14_i348[63:0])));
  assign cmp4_i15_i349 = ((((shl_i14_i348[63:0])) != ((64'h0))));
  assign conv_i16_i350[63:0] = (((({((63'h0)), ((cmp4_i15_i349))}))));
  assign or_i17_i351[63:0] = ((((conv_i16_i350[63:0])) | ((shr_i11_i344[63:0]))));
  assign cmp6_i19_i341 = ((((and_i75_i327[63:0])) != ((64'h0))));
  assign conv7_i20_i342[63:0] = (((({((63'h0)), ((cmp6_i19_i341))}))));
  assign or38_i352[63:0] = ((((shl4_i282[63:0])) | ((64'h4000000000000000))));
  assign llvm_shang_not_i64_i64353[63:0] = (((~((and_i76_i_reg2mem_0[63:0])))));
  shang_addc#(64, 64, 64) sub39_i354_shang_addc(((and_i2572_i_reg2mem_0[63:0])), ((llvm_shang_not_i64_i64353[63:0])), ((1'b1)), ((sub39_i354[63:0])));
  assign xor40_i355[31:0] = ((((conv_i262[31:0])) ^ ((32'h1))));
  assign cmp41_i366 = ((((conv_i_i4269[31:0])) == ((32'h7FF))));
  assign llvm_shang_not_i1_i1368 = (((~((cmp41_i366)))));
  assign tobool43_i533 = ((((shl_i279[63:0])) == ((64'h0))));
  assign llvm_shang_not_i1_i1534 = (((~((tobool43_i533)))));
  assign cmp48_i370 = ((((conv_i30_i273[31:0])) == ((32'h0))));
  assign or51_i371[63:0] = ((((shl4_i282[63:0])) | ((64'h4000000000000000))));
  assign llvm_shang_bit_repeat_i64_i1_i32372[63:0] = (({64{((cmp48_i370))}}));
  assign llvm_shang_not_i64_i64373[63:0] = (((~((llvm_shang_bit_repeat_i64_i1_i32372[63:0])))));
  assign llvm_shang_and_i64_i64_i64374[63:0] = ((((llvm_shang_bit_repeat_i64_i1_i32372[63:0])) & ((shl4_i282[63:0]))));
  assign llvm_shang_and_i64_i64_i64375[63:0] = ((((llvm_shang_not_i64_i64373[63:0])) & ((or51_i371[63:0]))));
  assign and_i2573_i376[63:0] = ((((llvm_shang_and_i64_i64_i64374[63:0])) | ((llvm_shang_and_i64_i64_i64375[63:0]))));
  assign llvm_shang_bit_repeat_i32_i1_i32[31:0] = (({32{((cmp48_i370))}}));
  shang_addc#(32, 32, 32) sub70_i377_shang_addc(((llvm_shang_bit_repeat_i32_i1_i32[31:0])), ((sub_i5274[31:0])), 1'b0, ((sub70_i377[31:0])));
  assign cmp_i_i378 = ((((sub70_i377[31:0])) == ((32'h0))));
  assign llvm_shang_not_i1_i1381 = (((~((cmp_i_i378)))));
  shang_sgt#(32, 32, 1) cmp1_i_i383_shang_sgt(((32'h40)), ((sub70_i377[31:0])), ((cmp1_i_i383)));
  assign llvm_shang_not_i1_i1385 = (((~((cmp1_i_i383)))));
  assign sh_prom_i1_i389[63:0] = (((({((32'h0)), ((sub70_i377[31:0]))}))));
  assign llvm_shang_bit_extract_i6_i64_i16_i16390[5:0] = ((((sh_prom_i1_i389[5:0]))));
  shang_srl#(64, 6, 64) shr_i_i391_shang_srl(((and_i2573_i376[63:0])), ((llvm_shang_bit_extract_i6_i64_i16_i16390[5:0])), ((shr_i_i391[63:0])));
  assign llvm_shang_not_i32_i32392[31:0] = (((~((sub70_i377[31:0])))));
  shang_addc#(32, 32, 32) sub_i2_i393_shang_addc(((32'h0)), ((llvm_shang_not_i32_i32392[31:0])), ((1'b1)), ((sub_i2_i393[31:0])));
  assign and_i3_i394[31:0] = ((((sub_i2_i393[31:0])) & ((32'h3F))));
  assign sh_prom3_i_i395[63:0] = (((({((32'h0)), ((and_i3_i394[31:0]))}))));
  assign llvm_shang_bit_extract_i6_i64_i16_i16396[5:0] = ((((sh_prom3_i_i395[5:0]))));
  shang_shl#(64, 6, 64) shl_i4_i397_shang_shl(((and_i2573_i376[63:0])), ((llvm_shang_bit_extract_i6_i64_i16_i16396[5:0])), ((shl_i4_i397[63:0])));
  assign cmp4_i_i398 = ((((shl_i4_i397[63:0])) != ((64'h0))));
  assign conv_i_i399[63:0] = (((({((63'h0)), ((cmp4_i_i398))}))));
  assign or_i_i400[63:0] = ((((conv_i_i399[63:0])) | ((shr_i_i391[63:0]))));
  assign cmp6_i_i387 = ((((and_i2573_i376[63:0])) != ((64'h0))));
  assign conv7_i_i388[63:0] = (((({((63'h0)), ((cmp6_i_i387))}))));
  assign or53_i401[63:0] = ((((shl_i279[63:0])) | ((64'h4000000000000000))));
  assign llvm_shang_not_i64_i64402[63:0] = (((~((and_i2574_i_reg2mem_0[63:0])))));
  shang_addc#(64, 64, 64) sub54_i403_shang_addc(((and_i77_i_reg2mem_0[63:0])), ((llvm_shang_not_i64_i64402[63:0])), ((1'b1)), ((sub54_i403[63:0])));
  shang_ugt#(64, 64, 1) cmp_i_i_i404_shang_ugt(((64'h100000000)), ((sub3971_i_reg2mem205_0[63:0])), ((cmp_i_i_i404)));
  assign llvm_shang_bit_extract_i32_i64_i16_i16[31:0] = ((((sub3971_i_reg2mem205_0[63:32]))));
  assign shr_i_i_i405[63:0] = (((({((32'h0)), ((llvm_shang_bit_extract_i32_i64_i16_i16[31:0]))}))));
  assign llvm_shang_bit_repeat_i64_i1_i32406[63:0] = (({64{((cmp_i_i_i404))}}));
  assign llvm_shang_not_i64_i64407[63:0] = (((~((llvm_shang_bit_repeat_i64_i1_i32406[63:0])))));
  assign llvm_shang_and_i64_i64_i64408[63:0] = ((((llvm_shang_bit_repeat_i64_i1_i32406[63:0])) & ((sub3971_i_reg2mem205_0[63:0]))));
  assign llvm_shang_and_i64_i64_i64409[63:0] = ((((llvm_shang_not_i64_i64407[63:0])) & ((shr_i_i_i405[63:0]))));
  assign a_shr_i_i_i410[63:0] = ((((llvm_shang_and_i64_i64_i64408[63:0])) | ((llvm_shang_and_i64_i64_i64409[63:0]))));
  assign conv_i_i_i411[31:0] = ((((a_shr_i_i_i410[31:0]))));
  shang_ugt#(32, 32, 1) cmp_i_i_i_i412_shang_ugt(((32'h10000)), ((conv_i_i_i411[31:0])), ((cmp_i_i_i_i412)));
  assign llvm_shang_bit_extract_i16_i32_i16_i16[15:0] = ((((conv_i_i_i411[15:0]))));
  assign shl_i_i_i_i413[31:0] = (((({((llvm_shang_bit_extract_i16_i32_i16_i16[15:0])), ((16'h0))}))));
  assign llvm_shang_bit_repeat_i32_i1_i32414[31:0] = (({32{((cmp_i_i_i_i412))}}));
  assign llvm_shang_not_i32_i32415[31:0] = (((~((llvm_shang_bit_repeat_i32_i1_i32414[31:0])))));
  assign llvm_shang_and_i32_i32_i32[31:0] = ((((llvm_shang_bit_repeat_i32_i1_i32414[31:0])) & ((shl_i_i_i_i413[31:0]))));
  assign llvm_shang_and_i32_i32_i32416[31:0] = ((((llvm_shang_not_i32_i32415[31:0])) & ((conv_i_i_i411[31:0]))));
  assign shl_a_i_i_i_i417[31:0] = ((((llvm_shang_and_i32_i32_i32[31:0])) | ((llvm_shang_and_i32_i32_i32416[31:0]))));
  assign llvm_shang_bit_repeat_i32_i1_i32418[31:0] = (({32{((cmp_i_i_i_i412))}}));
  assign llvm_shang_and_i32_i32_i32420[31:0] = ((((llvm_shang_bit_repeat_i32_i1_i32418[31:0])) & ((32'h10))));
  assign __i_i_i_i421[31:0] = ((((llvm_shang_and_i32_i32_i32420[31:0])) | ((32'h0))));
  shang_ugt#(32, 32, 1) cmp1_i_i_i_i422_shang_ugt(((32'h1000000)), ((shl_a_i_i_i_i417[31:0])), ((cmp1_i_i_i_i422)));
  assign llvm_shang_not_i1_i1424 = (((~((cmp1_i_i_i_i422)))));
  assign add38_i_i_i_i428[31:0] = ((((__i_i_i_i421[31:0])) | ((32'h8))));
  assign llvm_shang_bit_extract_i24_i32_i16_i16[23:0] = ((((shl_a_i_i_i_i417[23:0]))));
  assign shl4_i_i_i_i429[31:0] = (((({((llvm_shang_bit_extract_i24_i32_i16_i16[23:0])), ((8'h0))}))));
  shang_addc#(32, 32, 32) dec55_i430_shang_addc(((bExp_0_load5378_i_reg2mem207_0[31:0])), ((32'hFFFFFFFF)), 1'b0, ((dec55_i430[31:0])));
  assign llvm_shang_bit_extract_i8_i32_i16_i16[7:0] = ((((a7_i_i_i_i_reg2mem_0[31:24]))));
  assign shr_i_i_i_i431[31:0] = (((({((24'h0)), ((llvm_shang_bit_extract_i8_i32_i16_i16[7:0]))}))));
  wire[31:0] SIRPtrToInt432 = ((((countLeadingZerosHigh[31:0]))));
  assign llvm_shang_bit_extract_i30_i32_i16_i16[29:0] = ((((shr_i_i_i_i431[29:0]))));
  assign llvm_shang_bit_cat_i32_i30_i2[31:0] = (((({((llvm_shang_bit_extract_i30_i32_i16_i16[29:0])), ((2'b0))}))));
  shang_addc#(32, 32, 32) llvm_shang_add_i32_i32_i32_shang_addc(((SIRPtrToInt432[31:0])), ((llvm_shang_bit_cat_i32_i30_i2[31:0])), 1'b0, ((llvm_shang_add_i32_i32_i32[31:0])));
  wire[31:0] SIRIntToPtr = ((((llvm_shang_add_i32_i32_i32[31:0]))));
  wire[31:0] SIRPtrToInt433 = ((((SIRIntToPtr[31:0]))));
  assign llvm_shang_bit_extract_i10_i32_i16_i16[9:0] = ((((SIRPtrToInt433[9:0]))));
  assign llvm_shang_bit_repeat_i32_i1_i32437[31:0] = (({32{((cmp_i_i_i404))}}));
  assign llvm_shang_not_i32_i32438[31:0] = (((~((llvm_shang_bit_repeat_i32_i1_i32437[31:0])))));
  assign llvm_shang_and_i32_i32_i32439[31:0] = ((((llvm_shang_bit_repeat_i32_i1_i32437[31:0])) & ((32'h1F))));
  assign llvm_shang_and_i32_i32_i32440[31:0] = ((((llvm_shang_not_i32_i32438[31:0])) & ((32'hFFFFFFFF))));
  assign add6_i_i_i_i441[31:0] = ((((llvm_shang_and_i32_i32_i32439[31:0])) | ((llvm_shang_and_i32_i32_i32440[31:0]))));
  shang_addc#(32, 32, 32) add1_i_i_i442_shang_addc(((tmp45_reg2mem_0[31:0])), ((add6_i_i_i_i441[31:0])), 1'b0, ((add1_i_i_i442[31:0])));
  shang_addc#(32, 32, 32) sub_i_i443_shang_addc(((add1_i_i_i442[31:0])), ((tmp47[31:0])), 1'b0, ((sub_i_i443[31:0])));
  assign llvm_shang_not_i32_i32444[31:0] = (((~((sub_i_i443[31:0])))));
  shang_addc#(32, 32, 32) sub1_i_i445_shang_addc(((dec55_i430[31:0])), ((llvm_shang_not_i32_i32444[31:0])), ((1'b1)), ((sub1_i_i445[31:0])));
  assign sh_prom_i_i446[63:0] = (((({((32'h0)), ((sub_i_i443[31:0]))}))));
  assign llvm_shang_bit_extract_i6_i64_i16_i16447[5:0] = ((((sh_prom_i_i446[5:0]))));
  shang_shl#(64, 6, 64) shl_i_i448_shang_shl(((sub3971_i_reg2mem205_0[63:0])), ((llvm_shang_bit_extract_i6_i64_i16_i16447[5:0])), ((shl_i_i448[63:0])));
  assign _tr_i_i_i449[31:0] = ((((shl_i_i448[31:0]))));
  assign conv14_i_i_i450[31:0] = ((((_tr_i_i_i449[31:0])) & ((32'h3FF))));
  assign conv16_i_i_i451[31:0] = ((((sub1_i_i445[31:0])) & ((32'hFFFF))));
  shang_ugt#(32, 32, 1) cmp17_i_i_i452_shang_ugt(((conv16_i_i_i451[31:0])), ((32'h7FC)), ((cmp17_i_i_i452)));
  assign llvm_shang_not_i1_i1454 = (((~((cmp17_i_i_i452)))));
  shang_sgt#(32, 32, 1) cmp19_i_i_i460_shang_sgt(((sub1_i_i445[31:0])), ((32'h7FD)), ((cmp19_i_i_i460)));
  assign llvm_shang_not_i1_i1462 = (((~((cmp19_i_i_i460)))));
  assign cmp20_i_i_i464 = ((((sub1_i_i445[31:0])) == ((32'h7FD))));
  assign llvm_shang_not_i1_i1466 = (((~((cmp20_i_i_i464)))));
  shang_addc#(64, 64, 64) add_i_i_i502_shang_addc(((shl_i_i448[63:0])), ((64'h200)), 1'b0, ((add_i_i_i502[63:0])));
  shang_sgt#(64, 64, 1) cmp22_i_i_i503_shang_sgt(((64'h0)), ((add_i_i_i502[63:0])), ((cmp22_i_i_i503)));
  assign llvm_shang_not_i1_i1504 = (((~((cmp22_i_i_i503)))));
  assign or_i_i_i_i528[31:0] = ((((float_exception_flags_restore[31:0])) | ((32'h9))));
  assign conv2_i5_i_i_i529[63:0] = (((({((32'h0)), ((zSign83_i_reg2mem209_0[31:0]))}))));
  assign llvm_shang_bit_extract_i1_i64_i16_i16530 = ((((conv2_i5_i_i_i529[0]))));
  assign shl_i6_i_i_i531[63:0] = (((({((llvm_shang_bit_extract_i1_i64_i16_i16530)), ((63'h0))}))));
  assign add3_i733_i_i_i532[63:0] = ((((shl_i6_i_i_i531[63:0])) | ((64'h7FF0000000000000))));
  shang_sgt#(32, 32, 1) cmp27_i_i_i468_shang_sgt(((32'h0)), ((sub1_i_i445[31:0])), ((cmp27_i_i_i468)));
  assign llvm_shang_not_i1_i1470 = (((~((cmp27_i_i_i468)))));
  assign llvm_shang_not_i32_i32471[31:0] = (((~((sub1_i_i445[31:0])))));
  shang_addc#(32, 32, 32) sub29_i_i_i472_shang_addc(((32'h0)), ((llvm_shang_not_i32_i32471[31:0])), ((1'b1)), ((sub29_i_i_i472[31:0])));
  shang_sgt#(32, 32, 1) cmp1_i_i1_i_i473_shang_sgt(((32'h40)), ((sub29_i_i_i472[31:0])), ((cmp1_i_i1_i_i473)));
  assign llvm_shang_not_i1_i1475 = (((~((cmp1_i_i1_i_i473)))));
  assign sh_prom_i_i_i_i481[63:0] = (((({((32'h0)), ((sub29_i_i_i472[31:0]))}))));
  assign llvm_shang_bit_extract_i6_i64_i16_i16482[5:0] = ((((sh_prom_i_i_i_i481[5:0]))));
  shang_srl#(64, 6, 64) shr_i_i2_i_i483_shang_srl(((shl_i_i448[63:0])), ((llvm_shang_bit_extract_i6_i64_i16_i16482[5:0])), ((shr_i_i2_i_i483[63:0])));
  assign and_i_i_i_i484[31:0] = ((((sub1_i_i445[31:0])) & ((32'h3F))));
  assign sh_prom3_i_i_i_i485[63:0] = (((({((32'h0)), ((and_i_i_i_i484[31:0]))}))));
  assign llvm_shang_bit_extract_i6_i64_i16_i16486[5:0] = ((((sh_prom3_i_i_i_i485[5:0]))));
  shang_shl#(64, 6, 64) shl_i3_i_i_i487_shang_shl(((shl_i_i448[63:0])), ((llvm_shang_bit_extract_i6_i64_i16_i16486[5:0])), ((shl_i3_i_i_i487[63:0])));
  assign cmp4_i_i_i_i488 = ((((shl_i3_i_i_i487[63:0])) != ((64'h0))));
  assign conv_i_i_i_i489[63:0] = (((({((63'h0)), ((cmp4_i_i_i_i488))}))));
  assign or_i4_i_i_i490[63:0] = ((((conv_i_i_i_i489[63:0])) | ((shr_i_i2_i_i483[63:0]))));
  assign cmp6_i_i_i_i477 = ((((shl_i_i448[63:0])) != ((64'h0))));
  assign conv7_i_i_i_i478[63:0] = (((({((63'h0)), ((cmp6_i_i_i_i477))}))));
  assign _tr1_i_i_i491[31:0] = ((((storemerge1_i_i_i_i_reg2mem203_0[31:0]))));
  assign conv31_i_i_i492[31:0] = ((((_tr1_i_i_i491[31:0])) & ((32'h3FF))));
  assign tobool34_i_i_i493 = ((((conv31_i_i_i492[31:0])) == ((32'h0))));
  assign llvm_shang_not_i1_i1499 = (((~((tobool34_i_i_i493)))));
  assign or_i2_i_i_i501[31:0] = ((((float_exception_flags_restore[31:0])) | ((32'h4))));
  assign not_tobool39_i_i_i505 = ((((conv1424_i_i_i_reg2mem197_0[31:0])) != ((32'h0))));
  assign or_i_i_i506[31:0] = (((({((31'h0)), ((not_tobool39_i_i_i505))}))));
  assign float_exception_flags_shadow_2_or_i_i_i507[31:0] = ((((float_exception_flags_shadow_2[31:0])) | ((or_i_i_i506[31:0]))));
  shang_addc#(64, 64, 64) add43_i_i_i508_shang_addc(((zSig2531_i_i_i_reg2mem_0[63:0])), ((64'h200)), 1'b0, ((add43_i_i_i508[63:0])));
  assign llvm_shang_bit_extract_i54_i64_i16_i16509[53:0] = ((((add43_i_i_i508[63:10]))));
  assign shr_i4_i_i510[63:0] = (((({((10'h0)), ((llvm_shang_bit_extract_i54_i64_i16_i16509[53:0]))}))));
  assign cmp44_i_i_i511 = ((((conv142432_i_i_i_reg2mem_0[31:0])) == ((32'h200))));
  assign conv45_i_i_i512[63:0] = (((({((63'h0)), ((cmp44_i_i_i511))}))));
  assign neg_i_i_i513[63:0] = ((((conv45_i_i_i512[63:0])) ^ ((64'hFFFFFFFFFFFFFFFF))));
  assign and48_i_i_i514[63:0] = ((((shr_i4_i_i510[63:0])) & ((neg_i_i_i513[63:0]))));
  assign cmp49_i_i_i515 = ((((and48_i_i_i514[63:0])) == ((64'h0))));
  assign conv2_i_i_i_i516[63:0] = (((({((32'h0)), ((zSign83_i_reg2mem209_0[31:0]))}))));
  assign llvm_shang_bit_extract_i1_i64_i16_i16517 = ((((conv2_i_i_i_i516[0]))));
  assign shl_i_i5_i_i518[63:0] = (((({((llvm_shang_bit_extract_i1_i64_i16_i16517)), ((63'h0))}))));
  assign tmp51519[63:0] = (((({((32'h0)), ((zExp2730_i_i_i_reg2mem_0[31:0]))}))));
  assign llvm_shang_bit_extract_i12_i64_i16_i16520[11:0] = ((((tmp51519[11:0]))));
  assign _op_i_i_i521[63:0] = (((({((llvm_shang_bit_extract_i12_i64_i16_i16520[11:0])), ((52'h0))}))));
  assign llvm_shang_bit_repeat_i64_i1_i32522[63:0] = (({64{((cmp49_i_i_i515))}}));
  assign llvm_shang_not_i64_i64523[63:0] = (((~((llvm_shang_bit_repeat_i64_i1_i32522[63:0])))));
  assign llvm_shang_and_i64_i64_i64524[63:0] = ((((llvm_shang_not_i64_i64523[63:0])) & ((_op_i_i_i521[63:0]))));
  assign shl2_i_i_i_i525[63:0] = ((((64'h0)) | ((llvm_shang_and_i64_i64_i64524[63:0]))));
  assign add_i_i_i_i526[63:0] = ((((and48_i_i_i514[63:0])) | ((shl_i_i5_i_i518[63:0]))));
  shang_addc#(64, 64, 64) add3_i_i_i_i527_shang_addc(((shl2_i_i_i_i525[63:0])), ((add_i_i_i_i526[63:0])), 1'b0, ((add3_i_i_i_i527[63:0])));
  wire[31:0] SIRPtrToInt777 = ((((float_exception_flags[31:0]))));
  assign llvm_shang_bit_extract_i2_i32_i16_i16778[1:0] = ((((SIRPtrToInt777[1:0]))));
  assign and_i3_ge743[63:0] = ((((a_reg[63:0])) & ((64'h7FF8000000000000))));
  assign cmp_i4_ge744 = ((((and_i3_ge743[63:0])) == ((64'h7FF0000000000000))));
  assign llvm_shang_not_i1_i1746 = (((~((cmp_i4_ge744)))));
  assign and1_i5_ge749[63:0] = ((((a_reg[63:0])) & ((64'h7FFFFFFFFFFFF))));
  assign tobool_i6_ge750 = ((((and1_i5_ge749[63:0])) != ((64'h0))));
  assign and_i_ge751[63:0] = ((((b_reg[63:0])) & ((64'h7FF8000000000000))));
  assign cmp_i_ge752 = ((((and_i_ge751[63:0])) == ((64'h7FF0000000000000))));
  assign llvm_shang_not_i1_i1754 = (((~((cmp_i_ge752)))));
  assign and1_i_ge757[63:0] = ((((b_reg[63:0])) & ((64'h7FFFFFFFFFFFF))));
  assign tobool_i_ge758 = ((((and1_i_ge757[63:0])) != ((64'h0))));
  assign tmp23_ge759[62:0] = ((((b_reg[62:0]))));
  shang_ugt#(63, 63, 1) cmp_i1_ge760_shang_ugt(((tmp23_ge759[62:0])), ((63'h7FF0000000000000)), ((cmp_i1_ge760)));
  assign or519_ge761 = ((((tmp_reg2mem29_ge_0)) | ((tmp24_reg2mem27_ge_0))));
  assign or_i_ge762[31:0] = ((((float_exception_flags_restore[31:0])) | ((32'h10))));
  assign llvm_shang_not_i1_i1763 = (((~((or519_ge761)))));
  assign llvm_shang_and_i1_i1_i1 = ((((or519_ge761)) & ((tmp24_reg2mem27_ge_0))));
  assign llvm_shang_and_i1_i1_i1764 = ((((llvm_shang_not_i1_i1763)) & ((cmp_i1_ge760))));
  assign tmp24_reg2mem27_ge_0_cmp_i1_ge765 = ((((llvm_shang_and_i1_i1_i1)) | ((llvm_shang_and_i1_i1_i1764))));
  assign llvm_shang_bit_repeat_i32_i1_i32766[31:0] = (({32{((or519_ge761))}}));
  assign llvm_shang_not_i32_i32767[31:0] = (((~((llvm_shang_bit_repeat_i32_i1_i32766[31:0])))));
  assign llvm_shang_and_i32_i32_i32768[31:0] = ((((llvm_shang_bit_repeat_i32_i1_i32766[31:0])) & ((or_i_ge762[31:0]))));
  assign llvm_shang_and_i32_i32_i32769[31:0] = ((((llvm_shang_not_i32_i32767[31:0])) & ((float_exception_flags_restore[31:0]))));
  assign or_i_ge_float_exception_flags_restore770[31:0] = ((((llvm_shang_and_i32_i32_i32768[31:0])) | ((llvm_shang_and_i32_i32_i32769[31:0]))));
  assign llvm_shang_bit_repeat_i64_i1_i32771[63:0] = (({64{((tmp24_reg2mem27_ge_0_cmp_i1_ge765))}}));
  assign llvm_shang_not_i64_i64772[63:0] = (((~((llvm_shang_bit_repeat_i64_i1_i32771[63:0])))));
  assign llvm_shang_and_i64_i64_i64773[63:0] = ((((llvm_shang_bit_repeat_i64_i1_i32771[63:0])) & ((b_reg[63:0]))));
  assign llvm_shang_and_i64_i64_i64774[63:0] = ((((llvm_shang_not_i64_i64772[63:0])) & ((a_reg[63:0]))));
  assign or4_mux20_v_ge775[63:0] = ((((llvm_shang_and_i64_i64_i64773[63:0])) | ((llvm_shang_and_i64_i64_i64774[63:0]))));
  assign or4_mux20_ge776[63:0] = ((((or4_mux20_v_ge775[63:0])) | ((64'h8000000000000))));
  assign llvm_shang_not_i1_i1 = (((~((start)))));
  assign llvm_shang_and_i1_i1_i11593 = ((((llvm_shang_not_i1_i1)) & ((Slot0r))));
  assign llvm_shang_and_i1_i1_i11594 = ((((start)) & ((Slot0r))));
  assign llvm_shang_and_i1_i1_i11595 = ((((start)) & ((Slot0r))));
  assign llvm_shang_and_i1_i1_i11596 = ((((start)) & ((Slot0r))));
  assign llvm_shang_and_i1_i1_i11597 = ((((llvm_shang_not_i1_i1294)) & ((Slot61r))));
  assign llvm_shang_and_i1_i1_i11598 = ((((llvm_shang_not_i1_i1294)) & ((Slot61r))));
  assign llvm_shang_and_i1_i1_i11599 = ((((cmp17_i307)) & ((Slot71r))));
  assign llvm_shang_and_i1_i1_i11600 = ((((cmp17_i307)) & ((Slot71r))));
  assign llvm_shang_and_i1_i1_i11601 = ((((cmp17_i307)) & ((Slot71r))));
  assign llvm_shang_and_i1_i1_i11602 = ((((cmp20_i314)) & ((Slot74r))));
  assign llvm_shang_and_i1_i1_i11603 = ((((cmp20_i314)) & ((Slot74r))));
  assign llvm_shang_and_i1_i1_i11604 = ((((cmp20_i314)) & ((Slot74r))));
  assign llvm_shang_and_i1_i1_i11605 = ((((llvm_shang_not_i1_i1319)) & ((Slot74r))));
  assign llvm_shang_and_i1_i1_i11606 = ((((llvm_shang_not_i1_i1319)) & ((Slot74r))));
  assign llvm_shang_and_i1_i1_i11607 = ((((cmp_i7_i330)) & ((Slot56r))));
  assign llvm_shang_and_i1_i1_i11608 = ((((cmp_i_i378)) & ((Slot47r))));
  assign llvm_shang_and_i1_i1_i11609 = ((((llvm_shang_not_i1_i1424)) & ((Slot78r))));
  assign llvm_shang_and_i1_i1_i11610 = ((((llvm_shang_not_i1_i1424)) & ((Slot78r))));
  assign llvm_shang_and_i1_i1_i11611 = ((((llvm_shang_not_i1_i1454)) & ((Slot86r))));
  assign llvm_shang_and_i1_i1_i11612 = ((((llvm_shang_not_i1_i1454)) & ((Slot86r))));
  assign llvm_shang_and_i1_i1_i11613 = ((((llvm_shang_not_i1_i1454)) & ((Slot86r))));
  assign llvm_shang_and_i1_i1_i11614 = ((((llvm_shang_not_i1_i1454)) & ((Slot86r))));
  assign llvm_shang_and_i1_i1_i11615 = ((((llvm_shang_not_i1_i1470)) & ((Slot91r))));
  assign llvm_shang_and_i1_i1_i11616 = ((((llvm_shang_not_i1_i1470)) & ((Slot91r))));
  assign llvm_shang_and_i1_i1_i11617 = ((((llvm_shang_not_i1_i1470)) & ((Slot91r))));
  assign llvm_shang_and_i1_i1_i11618 = ((((llvm_shang_not_i1_i1470)) & ((Slot91r))));
  assign llvm_shang_and_i1_i1_i11619 = ((((tobool34_i_i_i493)) & ((Slot96r))));
  assign llvm_shang_and_i1_i1_i11620 = ((((tobool34_i_i_i493)) & ((Slot96r))));
  assign llvm_shang_and_i1_i1_i11621 = ((((tobool34_i_i_i493)) & ((Slot96r))));
  assign llvm_shang_and_i1_i1_i11622 = ((((tobool34_i_i_i493)) & ((Slot96r))));
  assign llvm_shang_and_i1_i1_i11623 = ((((llvm_shang_not_i1_i1504)) & ((Slot89r))));
  assign llvm_shang_and_i1_i1_i11624 = ((((llvm_shang_not_i1_i1504)) & ((Slot89r))));
  assign llvm_shang_and_i1_i1_i11625 = ((((llvm_shang_not_i1_i1504)) & ((Slot89r))));
  assign llvm_shang_and_i1_i1_i11626 = ((((llvm_shang_not_i1_i1504)) & ((Slot89r))));
  assign llvm_shang_and_i1_i1_i11627 = ((((tobool43_i533)) & ((Slot46r))));
  assign llvm_shang_and_i1_i1_i11628 = ((((tobool43_i533)) & ((Slot46r))));
  assign llvm_shang_and_i1_i1_i11629 = ((((tobool34_i562)) & ((Slot42r))));
  assign llvm_shang_and_i1_i1_i11630 = ((((tobool34_i562)) & ((Slot42r))));
  assign llvm_shang_and_i1_i1_i11631 = ((((cmp_i_i18582)) & ((Slot16r))));
  assign llvm_shang_and_i1_i1_i11632 = ((((cmp_i_i18582)) & ((Slot16r))));
  assign llvm_shang_and_i1_i1_i11633 = ((((cmp_i_i18582)) & ((Slot16r))));
  assign llvm_shang_and_i1_i1_i11634 = ((((cmp_i11_i626)) & ((Slot8r))));
  assign llvm_shang_and_i1_i1_i11635 = ((((cmp_i11_i626)) & ((Slot8r))));
  assign llvm_shang_and_i1_i1_i11636 = ((((cmp_i11_i626)) & ((Slot8r))));
  assign llvm_shang_and_i1_i1_i11637 = ((((llvm_shang_not_i1_i1664)) & ((Slot25r))));
  assign llvm_shang_and_i1_i1_i11638 = ((((llvm_shang_not_i1_i1664)) & ((Slot25r))));
  assign llvm_shang_and_i1_i1_i11639 = ((((llvm_shang_not_i1_i1664)) & ((Slot25r))));
  assign llvm_shang_and_i1_i1_i11640 = ((((llvm_shang_not_i1_i1664)) & ((Slot25r))));
  assign llvm_shang_and_i1_i1_i11641 = ((((llvm_shang_not_i1_i1680)) & ((Slot30r))));
  assign llvm_shang_and_i1_i1_i11642 = ((((llvm_shang_not_i1_i1680)) & ((Slot30r))));
  assign llvm_shang_and_i1_i1_i11643 = ((((llvm_shang_not_i1_i1680)) & ((Slot30r))));
  assign llvm_shang_and_i1_i1_i11644 = ((((llvm_shang_not_i1_i1680)) & ((Slot30r))));
  assign llvm_shang_and_i1_i1_i11645 = ((((tobool34_i_i703)) & ((Slot35r))));
  assign llvm_shang_and_i1_i1_i11646 = ((((tobool34_i_i703)) & ((Slot35r))));
  assign llvm_shang_and_i1_i1_i11647 = ((((tobool34_i_i703)) & ((Slot35r))));
  assign llvm_shang_and_i1_i1_i11648 = ((((tobool34_i_i703)) & ((Slot35r))));
  assign llvm_shang_and_i1_i1_i11649 = ((((llvm_shang_not_i1_i1714)) & ((Slot28r))));
  assign llvm_shang_and_i1_i1_i11650 = ((((llvm_shang_not_i1_i1714)) & ((Slot28r))));
  assign llvm_shang_and_i1_i1_i11651 = ((((llvm_shang_not_i1_i1714)) & ((Slot28r))));
  assign llvm_shang_and_i1_i1_i11652 = ((((llvm_shang_not_i1_i1714)) & ((Slot28r))));
  assign llvm_shang_and_i1_i1_i11653 = ((((tobool_i11741)) & ((Slot7r))));
  assign llvm_shang_and_i1_i1_i11654 = ((((tobool_i11741)) & ((Slot7r))));
  assign llvm_shang_and_i1_i1_i11655 = ((((llvm_shang_not_i1_i1746)) & ((Slot63r))));
  assign llvm_shang_and_i1_i1_i11656 = ((((llvm_shang_not_i1_i1754)) & ((Slot65r))));
  assign llvm_shang_and_i1_i1_i11657 = ((((start)) & ((Slot0r))));
  assign llvm_shang_and_i1_i1_i11658 = ((((llvm_shang_not_i1_i1276)) & ((Slot4r))));
  assign llvm_shang_and_i1_i1_i11659 = ((((llvm_shang_not_i1_i1285)) & ((Slot44r))));
  assign llvm_shang_and_i1_i1_i11660 = ((((llvm_shang_not_i1_i1289)) & ((Slot52r))));
  assign llvm_shang_and_i1_i1_i11661 = ((((llvm_shang_eq_i1_i32_i32)) & ((Slot61r))));
  assign llvm_shang_and_i1_i1_i11662 = ((((llvm_shang_eq_i1_i32_i32291)) & ((Slot61r))));
  assign llvm_shang_and_i1_i1_i11663 = ((((tobool_i299)) & ((Slot62r))));
  assign llvm_shang_and_i1_i1_i11664 = ((((llvm_shang_not_i1_i1294)) & ((Slot61r))));
  assign llvm_shang_and_i1_i1_i11665 = ((((llvm_shang_not_i1_i1312)) & ((Slot71r))));
  assign llvm_shang_and_i1_i1_i11666 = ((((cmp5_i287)) & ((Slot52r))));
  assign llvm_shang_and_i1_i1_i11667 = ((((llvm_shang_not_i1_i1322)) & ((Slot53r))));
  assign llvm_shang_and_i1_i1_i11668 = ((((llvm_shang_not_i1_i1333)) & ((Slot56r))));
  assign llvm_shang_and_i1_i1_i11669 = ((((llvm_shang_not_i1_i1339)) & ((Slot57r))));
  assign llvm_shang_and_i1_i1_i11670 = ((((cmp1_i8_i337)) & ((Slot57r))));
  assign llvm_shang_and_i1_i1_i11671 = ((((cmp_i7_i330)) & ((Slot56r))));
  assign llvm_shang_and_i1_i1_i11672 = ((((cmp20_i314)) & ((Slot74r))));
  assign llvm_shang_and_i1_i1_i11673 = ((((cmp25_i320)) & ((Slot53r))));
  assign llvm_shang_and_i1_i1_i11674 = ((((tobool27_i360)) & ((Slot54r))));
  assign llvm_shang_and_i1_i1_i11675 = ((((cmp_i283)) & ((Slot44r))));
  assign llvm_shang_and_i1_i1_i11676 = ((((llvm_shang_not_i1_i1368)) & ((Slot45r))));
  assign llvm_shang_and_i1_i1_i11677 = ((((llvm_shang_not_i1_i1381)) & ((Slot47r))));
  assign llvm_shang_and_i1_i1_i11678 = ((((llvm_shang_not_i1_i1385)) & ((Slot48r))));
  assign llvm_shang_and_i1_i1_i11679 = ((((cmp1_i_i383)) & ((Slot48r))));
  assign llvm_shang_and_i1_i1_i11680 = ((((cmp_i_i378)) & ((Slot47r))));
  assign llvm_shang_and_i1_i1_i11681 = ((((cmp17_i307)) & ((Slot71r))));
  assign llvm_shang_and_i1_i1_i11682 = ((((cmp1_i_i_i_i422)) & ((Slot78r))));
  assign llvm_shang_and_i1_i1_i11683 = ((((llvm_shang_not_i1_i1424)) & ((Slot78r))));
  assign llvm_shang_and_i1_i1_i11684 = ((((cmp17_i_i_i452)) & ((Slot86r))));
  assign llvm_shang_and_i1_i1_i11685 = ((((llvm_shang_not_i1_i1462)) & ((Slot87r))));
  assign llvm_shang_and_i1_i1_i11686 = ((((llvm_shang_not_i1_i1466)) & ((Slot88r))));
  assign llvm_shang_and_i1_i1_i11687 = ((((cmp27_i_i_i468)) & ((Slot91r))));
  assign llvm_shang_and_i1_i1_i11688 = ((((llvm_shang_not_i1_i1475)) & ((Slot92r))));
  assign llvm_shang_and_i1_i1_i11689 = ((((cmp1_i_i1_i_i473)) & ((Slot92r))));
  assign llvm_shang_and_i1_i1_i11690 = ((((llvm_shang_not_i1_i1499)) & ((Slot96r))));
  assign llvm_shang_and_i1_i1_i11691 = ((((cmp20_i_i_i464)) & ((Slot88r))));
  assign llvm_shang_and_i1_i1_i11692 = ((((llvm_shang_not_i1_i1454)) & ((Slot86r))));
  assign llvm_shang_and_i1_i1_i11693 = ((((llvm_shang_not_i1_i1470)) & ((Slot91r))));
  assign llvm_shang_and_i1_i1_i11694 = ((((llvm_shang_not_i1_i1504)) & ((Slot89r))));
  assign llvm_shang_and_i1_i1_i11695 = ((((tobool34_i_i_i493)) & ((Slot96r))));
  assign llvm_shang_and_i1_i1_i11696 = ((((cmp19_i_i_i460)) & ((Slot87r))));
  assign llvm_shang_and_i1_i1_i11697 = ((((cmp22_i_i_i503)) & ((Slot89r))));
  assign llvm_shang_and_i1_i1_i11698 = ((((cmp41_i366)) & ((Slot45r))));
  assign llvm_shang_and_i1_i1_i11699 = ((((cmp266)) & ((Slot4r))));
  assign llvm_shang_and_i1_i1_i11700 = ((((llvm_shang_not_i1_i1542)) & ((Slot5r))));
  assign llvm_shang_and_i1_i1_i11701 = ((((llvm_shang_not_i1_i1546)) & ((Slot12r))));
  assign llvm_shang_and_i1_i1_i11702 = ((((llvm_shang_eq_i1_i32_i32548)) & ((Slot22r))));
  assign llvm_shang_and_i1_i1_i11703 = ((((llvm_shang_eq_i1_i32_i32549)) & ((Slot22r))));
  assign llvm_shang_and_i1_i1_i11704 = ((((llvm_shang_not_i1_i1553)) & ((Slot22r))));
  assign llvm_shang_and_i1_i1_i11705 = ((((cmp14_i544)) & ((Slot12r))));
  assign llvm_shang_and_i1_i1_i11706 = ((((llvm_shang_not_i1_i1571)) & ((Slot13r))));
  assign llvm_shang_and_i1_i1_i11707 = ((((llvm_shang_not_i1_i1587)) & ((Slot16r))));
  assign llvm_shang_and_i1_i1_i11708 = ((((llvm_shang_not_i1_i1593)) & ((Slot17r))));
  assign llvm_shang_and_i1_i1_i11709 = ((((cmp1_i_i19591)) & ((Slot17r))));
  assign llvm_shang_and_i1_i1_i11710 = ((((cmp16_i569)) & ((Slot13r))));
  assign llvm_shang_and_i1_i1_i11711 = ((((tobool18_i607)) & ((Slot14r))));
  assign llvm_shang_and_i1_i1_i11712 = ((((cmp_i9540)) & ((Slot5r))));
  assign llvm_shang_and_i1_i1_i11713 = ((((llvm_shang_not_i1_i1615)) & ((Slot6r))));
  assign llvm_shang_and_i1_i1_i11714 = ((((llvm_shang_not_i1_i1627)) & ((Slot8r))));
  assign llvm_shang_and_i1_i1_i11715 = ((((llvm_shang_not_i1_i1631)) & ((Slot9r))));
  assign llvm_shang_and_i1_i1_i11716 = ((((cmp1_i12_i629)) & ((Slot9r))));
  assign llvm_shang_and_i1_i1_i11717 = ((((cmp_i_i18582)) & ((Slot16r))));
  assign llvm_shang_and_i1_i1_i11718 = ((((cmp_i11_i626)) & ((Slot8r))));
  assign llvm_shang_and_i1_i1_i11719 = ((((cmp17_i_i662)) & ((Slot25r))));
  assign llvm_shang_and_i1_i1_i11720 = ((((llvm_shang_not_i1_i1672)) & ((Slot26r))));
  assign llvm_shang_and_i1_i1_i11721 = ((((llvm_shang_not_i1_i1676)) & ((Slot27r))));
  assign llvm_shang_and_i1_i1_i11722 = ((((cmp27_i_i678)) & ((Slot30r))));
  assign llvm_shang_and_i1_i1_i11723 = ((((llvm_shang_not_i1_i1685)) & ((Slot31r))));
  assign llvm_shang_and_i1_i1_i11724 = ((((cmp1_i_i_i683)) & ((Slot31r))));
  assign llvm_shang_and_i1_i1_i11725 = ((((llvm_shang_not_i1_i1709)) & ((Slot35r))));
  assign llvm_shang_and_i1_i1_i11726 = ((((cmp20_i_i674)) & ((Slot27r))));
  assign llvm_shang_and_i1_i1_i11727 = ((((llvm_shang_not_i1_i1664)) & ((Slot25r))));
  assign llvm_shang_and_i1_i1_i11728 = ((((llvm_shang_not_i1_i1680)) & ((Slot30r))));
  assign llvm_shang_and_i1_i1_i11729 = ((((llvm_shang_not_i1_i1714)) & ((Slot28r))));
  assign llvm_shang_and_i1_i1_i11730 = ((((tobool34_i_i703)) & ((Slot35r))));
  assign llvm_shang_and_i1_i1_i11731 = ((((cmp19_i_i670)) & ((Slot26r))));
  assign llvm_shang_and_i1_i1_i11732 = ((((cmp22_i_i713)) & ((Slot28r))));
  assign llvm_shang_and_i1_i1_i11733 = ((((cmp5_i10613)) & ((Slot6r))));
  assign llvm_shang_and_i1_i1_i11734 = ((((llvm_shang_not_i1_i1301)) & ((Slot62r))));
  assign llvm_shang_and_i1_i1_i11735 = ((((llvm_shang_not_i1_i1362)) & ((Slot54r))));
  assign llvm_shang_and_i1_i1_i11736 = ((((llvm_shang_not_i1_i1534)) & ((Slot46r))));
  assign llvm_shang_and_i1_i1_i11737 = ((((llvm_shang_not_i1_i1563)) & ((Slot42r))));
  assign llvm_shang_and_i1_i1_i11738 = ((((llvm_shang_not_i1_i1609)) & ((Slot14r))));
  assign llvm_shang_and_i1_i1_i11739 = ((((llvm_shang_not_i1_i1742)) & ((Slot7r))));
  assign llvm_shang_and_i1_i1_i11740 = ((((cmp_i4_ge744)) & ((Slot63r))));
  assign llvm_shang_and_i1_i1_i11741 = ((((llvm_shang_not_i1_i1746)) & ((Slot63r))));
  assign llvm_shang_and_i1_i1_i11742 = ((((cmp_i_ge752)) & ((Slot65r))));
  assign llvm_shang_and_i1_i1_i11743 = ((((llvm_shang_not_i1_i1754)) & ((Slot65r))));
  assign llvm_shang_and_i1_i1_i11744 = ((((llvm_shang_not_i1_i1319)) & ((Slot74r))));
  assign llvm_shang_and_i1_i1_i11745 = ((((tobool43_i533)) & ((Slot46r))));
  assign llvm_shang_and_i1_i1_i11746 = ((((tobool34_i562)) & ((Slot42r))));
  assign llvm_shang_and_i1_i1_i11747 = ((((tobool_i11741)) & ((Slot7r))));
  assign llvm_shang_bit_repeat_i2_i1_i321748[1:0] = (({2{((Slot1r))}}));
  assign llvm_shang_and_i2_i2_i21749[1:0] = ((((llvm_shang_bit_extract_i2_i32_i16_i16[1:0])) & ((llvm_shang_bit_repeat_i2_i1_i321748[1:0]))));
  assign llvm_shang_bit_repeat_i2_i1_i321750[1:0] = (({2{((Slot103r))}}));
  assign llvm_shang_and_i2_i2_i21751[1:0] = ((((llvm_shang_bit_extract_i2_i32_i16_i16778[1:0])) & ((llvm_shang_bit_repeat_i2_i1_i321750[1:0]))));
  assign llvm_shang_or_i2_i2_i21752[1:0] = ((((llvm_shang_and_i2_i2_i21749[1:0])) | ((llvm_shang_and_i2_i2_i21751[1:0]))));
  assign llvm_shang_or_i1_i1_i11753 = ((((Slot1r)) | ((Slot103r))));
  assign llvm_shang_or_i1_i1_i11754 = ((((Slot1r)) | ((Slot103r))));
  assign llvm_shang_or_i1_i1_i11755 = ((((Slot1r)) | ((Slot103r))));
  assign llvm_shang_or_i1_i1_i11756 = ((((1'b0)) | ((Slot103r))));
  assign llvm_shang_or_i1_i1_i11757 = ((((llvm_shang_and_i1_i1_i11594)) | ((Slot103r))));
  assign llvm_shang_or_i1_i1_i11758 = ((((llvm_shang_and_i1_i1_i11593)) | ((Slot103r))));
  assign llvm_shang_bit_repeat_i32_i1_i321759[31:0] = (({32{((llvm_shang_and_i1_i1_i11597))}}));
  assign llvm_shang_and_i32_i32_i321760[31:0] = ((((conv_i30_i273[31:0])) & ((llvm_shang_bit_repeat_i32_i1_i321759[31:0]))));
  assign llvm_shang_bit_repeat_i32_i1_i321761[31:0] = (({32{((Slot70r))}}));
  assign llvm_shang_and_i32_i32_i321762[31:0] = ((((32'h1)) & ((llvm_shang_bit_repeat_i32_i1_i321761[31:0]))));
  assign llvm_shang_or_i32_i32_i321763[31:0] = ((((llvm_shang_and_i32_i32_i321760[31:0])) | ((llvm_shang_and_i32_i32_i321762[31:0]))));
  assign llvm_shang_or_i1_i1_i11764 = ((((llvm_shang_and_i1_i1_i11597)) | ((Slot70r))));
  assign llvm_shang_bit_repeat_i32_i1_i321765[31:0] = (({32{((llvm_shang_and_i1_i1_i11598))}}));
  assign llvm_shang_and_i32_i32_i321766[31:0] = ((((conv_i_i4269[31:0])) & ((llvm_shang_bit_repeat_i32_i1_i321765[31:0]))));
  assign llvm_shang_bit_repeat_i32_i1_i321767[31:0] = (({32{((Slot70r))}}));
  assign llvm_shang_and_i32_i32_i321768[31:0] = ((((32'h1)) & ((llvm_shang_bit_repeat_i32_i1_i321767[31:0]))));
  assign llvm_shang_or_i32_i32_i321769[31:0] = ((((llvm_shang_and_i32_i32_i321766[31:0])) | ((llvm_shang_and_i32_i32_i321768[31:0]))));
  assign llvm_shang_or_i1_i1_i11770 = ((((llvm_shang_and_i1_i1_i11598)) | ((Slot70r))));
  assign llvm_shang_bit_repeat_i64_i1_i321771[63:0] = (({64{((Slot69r))}}));
  assign llvm_shang_and_i64_i64_i641772[63:0] = ((((64'h7FFFFFFFFFFFFFFF)) & ((llvm_shang_bit_repeat_i64_i1_i321771[63:0]))));
  assign llvm_shang_bit_repeat_i64_i1_i321774[63:0] = (({64{((Slot55r))}}));
  assign llvm_shang_and_i64_i64_i641775[63:0] = ((((add3_i86_i365[63:0])) & ((llvm_shang_bit_repeat_i64_i1_i321774[63:0]))));
  assign llvm_shang_bit_repeat_i64_i1_i321776[63:0] = (({64{((Slot102r))}}));
  assign llvm_shang_and_i64_i64_i641777[63:0] = ((((add3_i_i_i_i527[63:0])) & ((llvm_shang_bit_repeat_i64_i1_i321776[63:0]))));
  assign llvm_shang_bit_repeat_i64_i1_i321778[63:0] = (({64{((Slot90r))}}));
  assign llvm_shang_and_i64_i64_i641779[63:0] = ((((add3_i733_i_i_i532[63:0])) & ((llvm_shang_bit_repeat_i64_i1_i321778[63:0]))));
  assign llvm_shang_bit_repeat_i64_i1_i321780[63:0] = (({64{((llvm_shang_and_i1_i1_i11627))}}));
  assign llvm_shang_and_i64_i64_i641781[63:0] = ((((a_reg[63:0])) & ((llvm_shang_bit_repeat_i64_i1_i321780[63:0]))));
  assign llvm_shang_bit_repeat_i64_i1_i321782[63:0] = (({64{((Slot43r))}}));
  assign llvm_shang_and_i64_i64_i641783[63:0] = ((((add_i1_i560[63:0])) & ((llvm_shang_bit_repeat_i64_i1_i321782[63:0]))));
  assign llvm_shang_bit_repeat_i64_i1_i321784[63:0] = (({64{((llvm_shang_and_i1_i1_i11629))}}));
  assign llvm_shang_and_i64_i64_i641785[63:0] = ((((a_reg[63:0])) & ((llvm_shang_bit_repeat_i64_i1_i321784[63:0]))));
  assign llvm_shang_bit_repeat_i64_i1_i321786[63:0] = (({64{((Slot15r))}}));
  assign llvm_shang_and_i64_i64_i641787[63:0] = ((((add3_i82_i612[63:0])) & ((llvm_shang_bit_repeat_i64_i1_i321786[63:0]))));
  assign llvm_shang_bit_repeat_i64_i1_i321788[63:0] = (({64{((Slot41r))}}));
  assign llvm_shang_and_i64_i64_i641789[63:0] = ((((add3_i_i_i736[63:0])) & ((llvm_shang_bit_repeat_i64_i1_i321788[63:0]))));
  assign llvm_shang_bit_repeat_i64_i1_i321790[63:0] = (({64{((Slot29r))}}));
  assign llvm_shang_and_i64_i64_i641791[63:0] = ((((add3_i733_i_i740[63:0])) & ((llvm_shang_bit_repeat_i64_i1_i321790[63:0]))));
  assign llvm_shang_bit_repeat_i64_i1_i321792[63:0] = (({64{((llvm_shang_and_i1_i1_i11653))}}));
  assign llvm_shang_and_i64_i64_i641793[63:0] = ((((a_reg[63:0])) & ((llvm_shang_bit_repeat_i64_i1_i321792[63:0]))));
  assign llvm_shang_bit_repeat_i64_i1_i321794[63:0] = (({64{((Slot68r))}}));
  assign llvm_shang_and_i64_i64_i641795[63:0] = ((((or4_mux20_ge776[63:0])) & ((llvm_shang_bit_repeat_i64_i1_i321794[63:0]))));
  assign llvm_shang_or_i64_i64_i641796[63:0] = ((((llvm_shang_and_i64_i64_i641772[63:0])) | ((64'h0))));
  assign llvm_shang_or_i64_i64_i641797[63:0] = ((((llvm_shang_or_i64_i64_i641796[63:0])) | ((llvm_shang_and_i64_i64_i641775[63:0]))));
  assign llvm_shang_or_i64_i64_i641798[63:0] = ((((llvm_shang_or_i64_i64_i641797[63:0])) | ((llvm_shang_and_i64_i64_i641777[63:0]))));
  assign llvm_shang_or_i64_i64_i641799[63:0] = ((((llvm_shang_or_i64_i64_i641798[63:0])) | ((llvm_shang_and_i64_i64_i641779[63:0]))));
  assign llvm_shang_or_i64_i64_i641800[63:0] = ((((llvm_shang_or_i64_i64_i641799[63:0])) | ((llvm_shang_and_i64_i64_i641781[63:0]))));
  assign llvm_shang_or_i64_i64_i641801[63:0] = ((((llvm_shang_or_i64_i64_i641800[63:0])) | ((llvm_shang_and_i64_i64_i641783[63:0]))));
  assign llvm_shang_or_i64_i64_i641802[63:0] = ((((llvm_shang_or_i64_i64_i641801[63:0])) | ((llvm_shang_and_i64_i64_i641785[63:0]))));
  assign llvm_shang_or_i64_i64_i641803[63:0] = ((((llvm_shang_or_i64_i64_i641802[63:0])) | ((llvm_shang_and_i64_i64_i641787[63:0]))));
  assign llvm_shang_or_i64_i64_i641804[63:0] = ((((llvm_shang_or_i64_i64_i641803[63:0])) | ((llvm_shang_and_i64_i64_i641789[63:0]))));
  assign llvm_shang_or_i64_i64_i641805[63:0] = ((((llvm_shang_or_i64_i64_i641804[63:0])) | ((llvm_shang_and_i64_i64_i641791[63:0]))));
  assign llvm_shang_or_i64_i64_i641806[63:0] = ((((llvm_shang_or_i64_i64_i641805[63:0])) | ((llvm_shang_and_i64_i64_i641793[63:0]))));
  assign llvm_shang_or_i64_i64_i641807[63:0] = ((((llvm_shang_or_i64_i64_i641806[63:0])) | ((llvm_shang_and_i64_i64_i641795[63:0]))));
  assign llvm_shang_or_i1_i1_i11808 = ((((Slot69r)) | ((llvm_shang_and_i1_i1_i11605))));
  assign llvm_shang_or_i1_i1_i11809 = ((((llvm_shang_or_i1_i1_i11808)) | ((Slot55r))));
  assign llvm_shang_or_i1_i1_i11810 = ((((llvm_shang_or_i1_i1_i11809)) | ((Slot102r))));
  assign llvm_shang_or_i1_i1_i11811 = ((((llvm_shang_or_i1_i1_i11810)) | ((Slot90r))));
  assign llvm_shang_or_i1_i1_i11812 = ((((llvm_shang_or_i1_i1_i11811)) | ((llvm_shang_and_i1_i1_i11627))));
  assign llvm_shang_or_i1_i1_i11813 = ((((llvm_shang_or_i1_i1_i11812)) | ((Slot43r))));
  assign llvm_shang_or_i1_i1_i11814 = ((((llvm_shang_or_i1_i1_i11813)) | ((llvm_shang_and_i1_i1_i11629))));
  assign llvm_shang_or_i1_i1_i11815 = ((((llvm_shang_or_i1_i1_i11814)) | ((Slot15r))));
  assign llvm_shang_or_i1_i1_i11816 = ((((llvm_shang_or_i1_i1_i11815)) | ((Slot41r))));
  assign llvm_shang_or_i1_i1_i11817 = ((((llvm_shang_or_i1_i1_i11816)) | ((Slot29r))));
  assign llvm_shang_or_i1_i1_i11818 = ((((llvm_shang_or_i1_i1_i11817)) | ((llvm_shang_and_i1_i1_i11653))));
  assign llvm_shang_or_i1_i1_i11819 = ((((llvm_shang_or_i1_i1_i11818)) | ((Slot68r))));
  assign llvm_shang_bit_repeat_i32_i1_i321820[31:0] = (({32{((Slot69r))}}));
  assign llvm_shang_and_i32_i32_i321821[31:0] = ((((or_i26_i303[31:0])) & ((llvm_shang_bit_repeat_i32_i1_i321820[31:0]))));
  assign llvm_shang_bit_repeat_i32_i1_i321822[31:0] = (({32{((llvm_shang_and_i1_i1_i11606))}}));
  assign llvm_shang_and_i32_i32_i321823[31:0] = ((((float_exception_flags_restore[31:0])) & ((llvm_shang_bit_repeat_i32_i1_i321822[31:0]))));
  assign llvm_shang_bit_repeat_i32_i1_i321824[31:0] = (({32{((Slot55r))}}));
  assign llvm_shang_and_i32_i32_i321825[31:0] = ((((float_exception_flags_restore[31:0])) & ((llvm_shang_bit_repeat_i32_i1_i321824[31:0]))));
  assign llvm_shang_bit_repeat_i32_i1_i321826[31:0] = (({32{((Slot102r))}}));
  assign llvm_shang_and_i32_i32_i321827[31:0] = ((((float_exception_flags_shadow_3[31:0])) & ((llvm_shang_bit_repeat_i32_i1_i321826[31:0]))));
  assign llvm_shang_bit_repeat_i32_i1_i321828[31:0] = (({32{((Slot90r))}}));
  assign llvm_shang_and_i32_i32_i321829[31:0] = ((((or_i_i_i_i528[31:0])) & ((llvm_shang_bit_repeat_i32_i1_i321828[31:0]))));
  assign llvm_shang_bit_repeat_i32_i1_i321830[31:0] = (({32{((llvm_shang_and_i1_i1_i11628))}}));
  assign llvm_shang_and_i32_i32_i321831[31:0] = ((((float_exception_flags_restore[31:0])) & ((llvm_shang_bit_repeat_i32_i1_i321830[31:0]))));
  assign llvm_shang_bit_repeat_i32_i1_i321832[31:0] = (({32{((Slot43r))}}));
  assign llvm_shang_and_i32_i32_i321833[31:0] = ((((float_exception_flags_restore[31:0])) & ((llvm_shang_bit_repeat_i32_i1_i321832[31:0]))));
  assign llvm_shang_bit_repeat_i32_i1_i321834[31:0] = (({32{((llvm_shang_and_i1_i1_i11630))}}));
  assign llvm_shang_and_i32_i32_i321835[31:0] = ((((float_exception_flags_restore[31:0])) & ((llvm_shang_bit_repeat_i32_i1_i321834[31:0]))));
  assign llvm_shang_bit_repeat_i32_i1_i321836[31:0] = (({32{((Slot15r))}}));
  assign llvm_shang_and_i32_i32_i321837[31:0] = ((((float_exception_flags_restore[31:0])) & ((llvm_shang_bit_repeat_i32_i1_i321836[31:0]))));
  assign llvm_shang_bit_repeat_i32_i1_i321838[31:0] = (({32{((Slot41r))}}));
  assign llvm_shang_and_i32_i32_i321839[31:0] = ((((float_exception_flags_shadow_1[31:0])) & ((llvm_shang_bit_repeat_i32_i1_i321838[31:0]))));
  assign llvm_shang_bit_repeat_i32_i1_i321840[31:0] = (({32{((Slot29r))}}));
  assign llvm_shang_and_i32_i32_i321841[31:0] = ((((or_i_i_i33737[31:0])) & ((llvm_shang_bit_repeat_i32_i1_i321840[31:0]))));
  assign llvm_shang_bit_repeat_i32_i1_i321842[31:0] = (({32{((llvm_shang_and_i1_i1_i11654))}}));
  assign llvm_shang_and_i32_i32_i321843[31:0] = ((((float_exception_flags_restore[31:0])) & ((llvm_shang_bit_repeat_i32_i1_i321842[31:0]))));
  assign llvm_shang_bit_repeat_i32_i1_i321844[31:0] = (({32{((Slot68r))}}));
  assign llvm_shang_and_i32_i32_i321845[31:0] = ((((or_i_ge_float_exception_flags_restore770[31:0])) & ((llvm_shang_bit_repeat_i32_i1_i321844[31:0]))));
  assign llvm_shang_or_i32_i32_i321846[31:0] = ((((llvm_shang_and_i32_i32_i321821[31:0])) | ((llvm_shang_and_i32_i32_i321823[31:0]))));
  assign llvm_shang_or_i32_i32_i321847[31:0] = ((((llvm_shang_or_i32_i32_i321846[31:0])) | ((llvm_shang_and_i32_i32_i321825[31:0]))));
  assign llvm_shang_or_i32_i32_i321848[31:0] = ((((llvm_shang_or_i32_i32_i321847[31:0])) | ((llvm_shang_and_i32_i32_i321827[31:0]))));
  assign llvm_shang_or_i32_i32_i321849[31:0] = ((((llvm_shang_or_i32_i32_i321848[31:0])) | ((llvm_shang_and_i32_i32_i321829[31:0]))));
  assign llvm_shang_or_i32_i32_i321850[31:0] = ((((llvm_shang_or_i32_i32_i321849[31:0])) | ((llvm_shang_and_i32_i32_i321831[31:0]))));
  assign llvm_shang_or_i32_i32_i321851[31:0] = ((((llvm_shang_or_i32_i32_i321850[31:0])) | ((llvm_shang_and_i32_i32_i321833[31:0]))));
  assign llvm_shang_or_i32_i32_i321852[31:0] = ((((llvm_shang_or_i32_i32_i321851[31:0])) | ((llvm_shang_and_i32_i32_i321835[31:0]))));
  assign llvm_shang_or_i32_i32_i321853[31:0] = ((((llvm_shang_or_i32_i32_i321852[31:0])) | ((llvm_shang_and_i32_i32_i321837[31:0]))));
  assign llvm_shang_or_i32_i32_i321854[31:0] = ((((llvm_shang_or_i32_i32_i321853[31:0])) | ((llvm_shang_and_i32_i32_i321839[31:0]))));
  assign llvm_shang_or_i32_i32_i321855[31:0] = ((((llvm_shang_or_i32_i32_i321854[31:0])) | ((llvm_shang_and_i32_i32_i321841[31:0]))));
  assign llvm_shang_or_i32_i32_i321856[31:0] = ((((llvm_shang_or_i32_i32_i321855[31:0])) | ((llvm_shang_and_i32_i32_i321843[31:0]))));
  assign llvm_shang_or_i32_i32_i321857[31:0] = ((((llvm_shang_or_i32_i32_i321856[31:0])) | ((llvm_shang_and_i32_i32_i321845[31:0]))));
  assign llvm_shang_or_i1_i1_i11858 = ((((Slot69r)) | ((llvm_shang_and_i1_i1_i11606))));
  assign llvm_shang_or_i1_i1_i11859 = ((((llvm_shang_or_i1_i1_i11858)) | ((Slot55r))));
  assign llvm_shang_or_i1_i1_i11860 = ((((llvm_shang_or_i1_i1_i11859)) | ((Slot102r))));
  assign llvm_shang_or_i1_i1_i11861 = ((((llvm_shang_or_i1_i1_i11860)) | ((Slot90r))));
  assign llvm_shang_or_i1_i1_i11862 = ((((llvm_shang_or_i1_i1_i11861)) | ((llvm_shang_and_i1_i1_i11628))));
  assign llvm_shang_or_i1_i1_i11863 = ((((llvm_shang_or_i1_i1_i11862)) | ((Slot43r))));
  assign llvm_shang_or_i1_i1_i11864 = ((((llvm_shang_or_i1_i1_i11863)) | ((llvm_shang_and_i1_i1_i11630))));
  assign llvm_shang_or_i1_i1_i11865 = ((((llvm_shang_or_i1_i1_i11864)) | ((Slot15r))));
  assign llvm_shang_or_i1_i1_i11866 = ((((llvm_shang_or_i1_i1_i11865)) | ((Slot41r))));
  assign llvm_shang_or_i1_i1_i11867 = ((((llvm_shang_or_i1_i1_i11866)) | ((Slot29r))));
  assign llvm_shang_or_i1_i1_i11868 = ((((llvm_shang_or_i1_i1_i11867)) | ((llvm_shang_and_i1_i1_i11654))));
  assign llvm_shang_or_i1_i1_i11869 = ((((llvm_shang_or_i1_i1_i11868)) | ((Slot68r))));
  assign llvm_shang_bit_repeat_i64_i1_i321870[63:0] = (({64{((llvm_shang_and_i1_i1_i11599))}}));
  assign llvm_shang_and_i64_i64_i641871[63:0] = ((((shl4_i282[63:0])) & ((llvm_shang_bit_repeat_i64_i1_i321870[63:0]))));
  assign llvm_shang_bit_repeat_i64_i1_i321872[63:0] = (({64{((Slot51r))}}));
  assign llvm_shang_and_i64_i64_i641873[63:0] = ((((storemerge1_i_i_reg2mem213_0[63:0])) & ((llvm_shang_bit_repeat_i64_i1_i321872[63:0]))));
  assign llvm_shang_or_i64_i64_i641874[63:0] = ((((llvm_shang_and_i64_i64_i641871[63:0])) | ((llvm_shang_and_i64_i64_i641873[63:0]))));
  assign llvm_shang_or_i1_i1_i11875 = ((((llvm_shang_and_i1_i1_i11599)) | ((Slot51r))));
  assign llvm_shang_bit_repeat_i64_i1_i321876[63:0] = (({64{((llvm_shang_and_i1_i1_i11600))}}));
  assign llvm_shang_and_i64_i64_i641877[63:0] = ((((shl_i279[63:0])) & ((llvm_shang_bit_repeat_i64_i1_i321876[63:0]))));
  assign llvm_shang_bit_repeat_i64_i1_i321878[63:0] = (({64{((Slot51r))}}));
  assign llvm_shang_and_i64_i64_i641879[63:0] = ((((or53_i401[63:0])) & ((llvm_shang_bit_repeat_i64_i1_i321878[63:0]))));
  assign llvm_shang_or_i64_i64_i641880[63:0] = ((((llvm_shang_and_i64_i64_i641877[63:0])) | ((llvm_shang_and_i64_i64_i641879[63:0]))));
  assign llvm_shang_or_i1_i1_i11881 = ((((llvm_shang_and_i1_i1_i11600)) | ((Slot51r))));
  assign llvm_shang_bit_repeat_i32_i1_i321882[31:0] = (({32{((llvm_shang_and_i1_i1_i11601))}}));
  assign llvm_shang_and_i32_i32_i321883[31:0] = ((((conv_i682_i_reg2mem221_0[31:0])) & ((llvm_shang_bit_repeat_i32_i1_i321882[31:0]))));
  assign llvm_shang_bit_repeat_i32_i1_i321884[31:0] = (({32{((Slot51r))}}));
  assign llvm_shang_and_i32_i32_i321885[31:0] = ((((conv_i_i4269[31:0])) & ((llvm_shang_bit_repeat_i32_i1_i321884[31:0]))));
  assign llvm_shang_or_i32_i32_i321886[31:0] = ((((llvm_shang_and_i32_i32_i321883[31:0])) | ((llvm_shang_and_i32_i32_i321885[31:0]))));
  assign llvm_shang_or_i1_i1_i11887 = ((((llvm_shang_and_i1_i1_i11601)) | ((Slot51r))));
  assign llvm_shang_bit_repeat_i64_i1_i321888[63:0] = (({64{((llvm_shang_and_i1_i1_i11602))}}));
  assign llvm_shang_and_i64_i64_i641889[63:0] = ((((shl4_i282[63:0])) & ((llvm_shang_bit_repeat_i64_i1_i321888[63:0]))));
  assign llvm_shang_bit_repeat_i64_i1_i321890[63:0] = (({64{((Slot60r))}}));
  assign llvm_shang_and_i64_i64_i641891[63:0] = ((((or38_i352[63:0])) & ((llvm_shang_bit_repeat_i64_i1_i321890[63:0]))));
  assign llvm_shang_or_i64_i64_i641892[63:0] = ((((llvm_shang_and_i64_i64_i641889[63:0])) | ((llvm_shang_and_i64_i64_i641891[63:0]))));
  assign llvm_shang_or_i1_i1_i11893 = ((((llvm_shang_and_i1_i1_i11602)) | ((Slot60r))));
  assign llvm_shang_bit_repeat_i64_i1_i321894[63:0] = (({64{((llvm_shang_and_i1_i1_i11603))}}));
  assign llvm_shang_and_i64_i64_i641895[63:0] = ((((shl_i279[63:0])) & ((llvm_shang_bit_repeat_i64_i1_i321894[63:0]))));
  assign llvm_shang_bit_repeat_i64_i1_i321896[63:0] = (({64{((Slot60r))}}));
  assign llvm_shang_and_i64_i64_i641897[63:0] = ((((storemerge1_i22_i_reg2mem217_0[63:0])) & ((llvm_shang_bit_repeat_i64_i1_i321896[63:0]))));
  assign llvm_shang_or_i64_i64_i641898[63:0] = ((((llvm_shang_and_i64_i64_i641895[63:0])) | ((llvm_shang_and_i64_i64_i641897[63:0]))));
  assign llvm_shang_or_i1_i1_i11899 = ((((llvm_shang_and_i1_i1_i11603)) | ((Slot60r))));
  assign llvm_shang_bit_repeat_i32_i1_i321900[31:0] = (({32{((llvm_shang_and_i1_i1_i11604))}}));
  assign llvm_shang_and_i32_i32_i321901[31:0] = ((((conv_i2980_i_reg2mem219_0[31:0])) & ((llvm_shang_bit_repeat_i32_i1_i321900[31:0]))));
  assign llvm_shang_bit_repeat_i32_i1_i321902[31:0] = (({32{((Slot60r))}}));
  assign llvm_shang_and_i32_i32_i321903[31:0] = ((((conv_i30_i273[31:0])) & ((llvm_shang_bit_repeat_i32_i1_i321902[31:0]))));
  assign llvm_shang_or_i32_i32_i321904[31:0] = ((((llvm_shang_and_i32_i32_i321901[31:0])) | ((llvm_shang_and_i32_i32_i321903[31:0]))));
  assign llvm_shang_or_i1_i1_i11905 = ((((llvm_shang_and_i1_i1_i11604)) | ((Slot60r))));
  assign llvm_shang_bit_repeat_i64_i1_i321906[63:0] = (({64{((llvm_shang_and_i1_i1_i11607))}}));
  assign llvm_shang_and_i64_i64_i641907[63:0] = ((((and_i75_i327[63:0])) & ((llvm_shang_bit_repeat_i64_i1_i321906[63:0]))));
  assign llvm_shang_bit_repeat_i64_i1_i321908[63:0] = (({64{((Slot59r))}}));
  assign llvm_shang_and_i64_i64_i641909[63:0] = ((((conv7_i20_i342[63:0])) & ((llvm_shang_bit_repeat_i64_i1_i321908[63:0]))));
  assign llvm_shang_bit_repeat_i64_i1_i321910[63:0] = (({64{((Slot58r))}}));
  assign llvm_shang_and_i64_i64_i641911[63:0] = ((((or_i17_i351[63:0])) & ((llvm_shang_bit_repeat_i64_i1_i321910[63:0]))));
  assign llvm_shang_or_i64_i64_i641912[63:0] = ((((llvm_shang_and_i64_i64_i641907[63:0])) | ((llvm_shang_and_i64_i64_i641909[63:0]))));
  assign llvm_shang_or_i64_i64_i641913[63:0] = ((((llvm_shang_or_i64_i64_i641912[63:0])) | ((llvm_shang_and_i64_i64_i641911[63:0]))));
  assign llvm_shang_or_i1_i1_i11914 = ((((llvm_shang_and_i1_i1_i11607)) | ((Slot59r))));
  assign llvm_shang_or_i1_i1_i11915 = ((((llvm_shang_or_i1_i1_i11914)) | ((Slot58r))));
  assign llvm_shang_bit_repeat_i64_i1_i321916[63:0] = (({64{((Slot76r))}}));
  assign llvm_shang_and_i64_i64_i641917[63:0] = ((((sub39_i354[63:0])) & ((llvm_shang_bit_repeat_i64_i1_i321916[63:0]))));
  assign llvm_shang_bit_repeat_i64_i1_i321918[63:0] = (({64{((Slot73r))}}));
  assign llvm_shang_and_i64_i64_i641919[63:0] = ((((sub54_i403[63:0])) & ((llvm_shang_bit_repeat_i64_i1_i321918[63:0]))));
  assign llvm_shang_or_i64_i64_i641920[63:0] = ((((llvm_shang_and_i64_i64_i641917[63:0])) | ((llvm_shang_and_i64_i64_i641919[63:0]))));
  assign llvm_shang_or_i1_i1_i11921 = ((((Slot76r)) | ((Slot73r))));
  assign llvm_shang_bit_repeat_i32_i1_i321922[31:0] = (({32{((Slot76r))}}));
  assign llvm_shang_and_i32_i32_i321923[31:0] = ((((conv_i2979_i_reg2mem215_0[31:0])) & ((llvm_shang_bit_repeat_i32_i1_i321922[31:0]))));
  assign llvm_shang_bit_repeat_i32_i1_i321924[31:0] = (({32{((Slot73r))}}));
  assign llvm_shang_and_i32_i32_i321925[31:0] = ((((conv_i681_i_reg2mem211_0[31:0])) & ((llvm_shang_bit_repeat_i32_i1_i321924[31:0]))));
  assign llvm_shang_or_i32_i32_i321926[31:0] = ((((llvm_shang_and_i32_i32_i321923[31:0])) | ((llvm_shang_and_i32_i32_i321925[31:0]))));
  assign llvm_shang_or_i1_i1_i11927 = ((((Slot76r)) | ((Slot73r))));
  assign llvm_shang_bit_repeat_i32_i1_i321928[31:0] = (({32{((Slot76r))}}));
  assign llvm_shang_and_i32_i32_i321929[31:0] = ((((xor40_i355[31:0])) & ((llvm_shang_bit_repeat_i32_i1_i321928[31:0]))));
  assign llvm_shang_bit_repeat_i32_i1_i321930[31:0] = (({32{((Slot73r))}}));
  assign llvm_shang_and_i32_i32_i321931[31:0] = ((((conv_i262[31:0])) & ((llvm_shang_bit_repeat_i32_i1_i321930[31:0]))));
  assign llvm_shang_or_i32_i32_i321932[31:0] = ((((llvm_shang_and_i32_i32_i321929[31:0])) | ((llvm_shang_and_i32_i32_i321931[31:0]))));
  assign llvm_shang_or_i1_i1_i11933 = ((((Slot76r)) | ((Slot73r))));
  assign llvm_shang_bit_repeat_i64_i1_i321934[63:0] = (({64{((llvm_shang_and_i1_i1_i11608))}}));
  assign llvm_shang_and_i64_i64_i641935[63:0] = ((((and_i2573_i376[63:0])) & ((llvm_shang_bit_repeat_i64_i1_i321934[63:0]))));
  assign llvm_shang_bit_repeat_i64_i1_i321936[63:0] = (({64{((Slot50r))}}));
  assign llvm_shang_and_i64_i64_i641937[63:0] = ((((conv7_i_i388[63:0])) & ((llvm_shang_bit_repeat_i64_i1_i321936[63:0]))));
  assign llvm_shang_bit_repeat_i64_i1_i321938[63:0] = (({64{((Slot49r))}}));
  assign llvm_shang_and_i64_i64_i641939[63:0] = ((((or_i_i400[63:0])) & ((llvm_shang_bit_repeat_i64_i1_i321938[63:0]))));
  assign llvm_shang_or_i64_i64_i641940[63:0] = ((((llvm_shang_and_i64_i64_i641935[63:0])) | ((llvm_shang_and_i64_i64_i641937[63:0]))));
  assign llvm_shang_or_i64_i64_i641941[63:0] = ((((llvm_shang_or_i64_i64_i641940[63:0])) | ((llvm_shang_and_i64_i64_i641939[63:0]))));
  assign llvm_shang_or_i1_i1_i11942 = ((((llvm_shang_and_i1_i1_i11608)) | ((Slot50r))));
  assign llvm_shang_or_i1_i1_i11943 = ((((llvm_shang_or_i1_i1_i11942)) | ((Slot49r))));
  assign llvm_shang_bit_repeat_i32_i1_i321944[31:0] = (({32{((llvm_shang_and_i1_i1_i11609))}}));
  assign llvm_shang_and_i32_i32_i321945[31:0] = ((((__i_i_i_i421[31:0])) & ((llvm_shang_bit_repeat_i32_i1_i321944[31:0]))));
  assign llvm_shang_bit_repeat_i32_i1_i321946[31:0] = (({32{((Slot79r))}}));
  assign llvm_shang_and_i32_i32_i321947[31:0] = ((((add38_i_i_i_i428[31:0])) & ((llvm_shang_bit_repeat_i32_i1_i321946[31:0]))));
  assign llvm_shang_or_i32_i32_i321948[31:0] = ((((llvm_shang_and_i32_i32_i321945[31:0])) | ((llvm_shang_and_i32_i32_i321947[31:0]))));
  assign llvm_shang_or_i1_i1_i11949 = ((((llvm_shang_and_i1_i1_i11609)) | ((Slot79r))));
  assign llvm_shang_bit_repeat_i32_i1_i321950[31:0] = (({32{((llvm_shang_and_i1_i1_i11610))}}));
  assign llvm_shang_and_i32_i32_i321951[31:0] = ((((shl_a_i_i_i_i417[31:0])) & ((llvm_shang_bit_repeat_i32_i1_i321950[31:0]))));
  assign llvm_shang_bit_repeat_i32_i1_i321952[31:0] = (({32{((Slot79r))}}));
  assign llvm_shang_and_i32_i32_i321953[31:0] = ((((shl4_i_i_i_i429[31:0])) & ((llvm_shang_bit_repeat_i32_i1_i321952[31:0]))));
  assign llvm_shang_or_i32_i32_i321954[31:0] = ((((llvm_shang_and_i32_i32_i321951[31:0])) | ((llvm_shang_and_i32_i32_i321953[31:0]))));
  assign llvm_shang_or_i1_i1_i11955 = ((((llvm_shang_and_i1_i1_i11610)) | ((Slot79r))));
  assign llvm_shang_bit_repeat_i32_i1_i321956[31:0] = (({32{((llvm_shang_and_i1_i1_i11611))}}));
  assign llvm_shang_and_i32_i32_i321957[31:0] = ((((conv14_i_i_i450[31:0])) & ((llvm_shang_bit_repeat_i32_i1_i321956[31:0]))));
  assign llvm_shang_bit_repeat_i32_i1_i321958[31:0] = (({32{((llvm_shang_and_i1_i1_i11615))}}));
  assign llvm_shang_and_i32_i32_i321959[31:0] = ((((conv14_i_i_i450[31:0])) & ((llvm_shang_bit_repeat_i32_i1_i321958[31:0]))));
  assign llvm_shang_bit_repeat_i32_i1_i321960[31:0] = (({32{((Slot97r))}}));
  assign llvm_shang_and_i32_i32_i321961[31:0] = ((((conv31_i_i_i492[31:0])) & ((llvm_shang_bit_repeat_i32_i1_i321960[31:0]))));
  assign llvm_shang_bit_repeat_i32_i1_i321962[31:0] = (({32{((llvm_shang_and_i1_i1_i11623))}}));
  assign llvm_shang_and_i32_i32_i321963[31:0] = ((((conv14_i_i_i450[31:0])) & ((llvm_shang_bit_repeat_i32_i1_i321962[31:0]))));
  assign llvm_shang_or_i32_i32_i321964[31:0] = ((((llvm_shang_and_i32_i32_i321957[31:0])) | ((llvm_shang_and_i32_i32_i321959[31:0]))));
  assign llvm_shang_or_i32_i32_i321965[31:0] = ((((llvm_shang_or_i32_i32_i321964[31:0])) | ((llvm_shang_and_i32_i32_i321961[31:0]))));
  assign llvm_shang_or_i32_i32_i321966[31:0] = ((((llvm_shang_or_i32_i32_i321965[31:0])) | ((llvm_shang_and_i32_i32_i321963[31:0]))));
  assign llvm_shang_or_i1_i1_i11967 = ((((llvm_shang_and_i1_i1_i11611)) | ((llvm_shang_and_i1_i1_i11615))));
  assign llvm_shang_or_i1_i1_i11968 = ((((llvm_shang_or_i1_i1_i11967)) | ((Slot97r))));
  assign llvm_shang_or_i1_i1_i11969 = ((((llvm_shang_or_i1_i1_i11968)) | ((llvm_shang_and_i1_i1_i11623))));
  assign llvm_shang_bit_repeat_i64_i1_i321970[63:0] = (({64{((llvm_shang_and_i1_i1_i11612))}}));
  assign llvm_shang_and_i64_i64_i641971[63:0] = ((((shl_i_i448[63:0])) & ((llvm_shang_bit_repeat_i64_i1_i321970[63:0]))));
  assign llvm_shang_bit_repeat_i64_i1_i321972[63:0] = (({64{((llvm_shang_and_i1_i1_i11616))}}));
  assign llvm_shang_and_i64_i64_i641973[63:0] = ((((shl_i_i448[63:0])) & ((llvm_shang_bit_repeat_i64_i1_i321972[63:0]))));
  assign llvm_shang_bit_repeat_i64_i1_i321974[63:0] = (({64{((Slot97r))}}));
  assign llvm_shang_and_i64_i64_i641975[63:0] = ((((storemerge1_i_i_i_i_reg2mem203_0[63:0])) & ((llvm_shang_bit_repeat_i64_i1_i321974[63:0]))));
  assign llvm_shang_bit_repeat_i64_i1_i321976[63:0] = (({64{((llvm_shang_and_i1_i1_i11624))}}));
  assign llvm_shang_and_i64_i64_i641977[63:0] = ((((shl_i_i448[63:0])) & ((llvm_shang_bit_repeat_i64_i1_i321976[63:0]))));
  assign llvm_shang_or_i64_i64_i641978[63:0] = ((((llvm_shang_and_i64_i64_i641971[63:0])) | ((llvm_shang_and_i64_i64_i641973[63:0]))));
  assign llvm_shang_or_i64_i64_i641979[63:0] = ((((llvm_shang_or_i64_i64_i641978[63:0])) | ((llvm_shang_and_i64_i64_i641975[63:0]))));
  assign llvm_shang_or_i64_i64_i641980[63:0] = ((((llvm_shang_or_i64_i64_i641979[63:0])) | ((llvm_shang_and_i64_i64_i641977[63:0]))));
  assign llvm_shang_or_i1_i1_i11981 = ((((llvm_shang_and_i1_i1_i11612)) | ((llvm_shang_and_i1_i1_i11616))));
  assign llvm_shang_or_i1_i1_i11982 = ((((llvm_shang_or_i1_i1_i11981)) | ((Slot97r))));
  assign llvm_shang_or_i1_i1_i11983 = ((((llvm_shang_or_i1_i1_i11982)) | ((llvm_shang_and_i1_i1_i11624))));
  assign llvm_shang_bit_repeat_i32_i1_i321984[31:0] = (({32{((llvm_shang_and_i1_i1_i11613))}}));
  assign llvm_shang_and_i32_i32_i321985[31:0] = ((((sub1_i_i445[31:0])) & ((llvm_shang_bit_repeat_i32_i1_i321984[31:0]))));
  assign llvm_shang_bit_repeat_i32_i1_i321986[31:0] = (({32{((llvm_shang_and_i1_i1_i11617))}}));
  assign llvm_shang_and_i32_i32_i321987[31:0] = ((((sub1_i_i445[31:0])) & ((llvm_shang_bit_repeat_i32_i1_i321986[31:0]))));
  assign llvm_shang_bit_repeat_i32_i1_i321989[31:0] = (({32{((llvm_shang_and_i1_i1_i11625))}}));
  assign llvm_shang_and_i32_i32_i321990[31:0] = ((((32'h7FD)) & ((llvm_shang_bit_repeat_i32_i1_i321989[31:0]))));
  assign llvm_shang_or_i32_i32_i321991[31:0] = ((((llvm_shang_and_i32_i32_i321985[31:0])) | ((llvm_shang_and_i32_i32_i321987[31:0]))));
  assign llvm_shang_or_i32_i32_i321992[31:0] = ((((llvm_shang_or_i32_i32_i321991[31:0])) | ((32'h0))));
  assign llvm_shang_or_i32_i32_i321993[31:0] = ((((llvm_shang_or_i32_i32_i321992[31:0])) | ((llvm_shang_and_i32_i32_i321990[31:0]))));
  assign llvm_shang_or_i1_i1_i11994 = ((((llvm_shang_and_i1_i1_i11613)) | ((llvm_shang_and_i1_i1_i11617))));
  assign llvm_shang_or_i1_i1_i11995 = ((((llvm_shang_or_i1_i1_i11994)) | ((Slot97r))));
  assign llvm_shang_or_i1_i1_i11996 = ((((llvm_shang_or_i1_i1_i11995)) | ((llvm_shang_and_i1_i1_i11625))));
  assign llvm_shang_bit_repeat_i32_i1_i321997[31:0] = (({32{((llvm_shang_and_i1_i1_i11614))}}));
  assign llvm_shang_and_i32_i32_i321998[31:0] = ((((float_exception_flags_restore[31:0])) & ((llvm_shang_bit_repeat_i32_i1_i321997[31:0]))));
  assign llvm_shang_bit_repeat_i32_i1_i321999[31:0] = (({32{((llvm_shang_and_i1_i1_i11618))}}));
  assign llvm_shang_and_i32_i32_i322000[31:0] = ((((float_exception_flags_restore[31:0])) & ((llvm_shang_bit_repeat_i32_i1_i321999[31:0]))));
  assign llvm_shang_bit_repeat_i32_i1_i322001[31:0] = (({32{((Slot97r))}}));
  assign llvm_shang_and_i32_i32_i322002[31:0] = ((((or_i2_i_i_i501[31:0])) & ((llvm_shang_bit_repeat_i32_i1_i322001[31:0]))));
  assign llvm_shang_bit_repeat_i32_i1_i322003[31:0] = (({32{((llvm_shang_and_i1_i1_i11626))}}));
  assign llvm_shang_and_i32_i32_i322004[31:0] = ((((float_exception_flags_restore[31:0])) & ((llvm_shang_bit_repeat_i32_i1_i322003[31:0]))));
  assign llvm_shang_or_i32_i32_i322005[31:0] = ((((llvm_shang_and_i32_i32_i321998[31:0])) | ((llvm_shang_and_i32_i32_i322000[31:0]))));
  assign llvm_shang_or_i32_i32_i322006[31:0] = ((((llvm_shang_or_i32_i32_i322005[31:0])) | ((llvm_shang_and_i32_i32_i322002[31:0]))));
  assign llvm_shang_or_i32_i32_i322007[31:0] = ((((llvm_shang_or_i32_i32_i322006[31:0])) | ((llvm_shang_and_i32_i32_i322004[31:0]))));
  assign llvm_shang_or_i1_i1_i12008 = ((((llvm_shang_and_i1_i1_i11614)) | ((llvm_shang_and_i1_i1_i11618))));
  assign llvm_shang_or_i1_i1_i12009 = ((((llvm_shang_or_i1_i1_i12008)) | ((Slot97r))));
  assign llvm_shang_or_i1_i1_i12010 = ((((llvm_shang_or_i1_i1_i12009)) | ((llvm_shang_and_i1_i1_i11626))));
  assign llvm_shang_bit_repeat_i64_i1_i322011[63:0] = (({64{((Slot94r))}}));
  assign llvm_shang_and_i64_i64_i642012[63:0] = ((((conv7_i_i_i_i478[63:0])) & ((llvm_shang_bit_repeat_i64_i1_i322011[63:0]))));
  assign llvm_shang_bit_repeat_i64_i1_i322013[63:0] = (({64{((Slot93r))}}));
  assign llvm_shang_and_i64_i64_i642014[63:0] = ((((or_i4_i_i_i490[63:0])) & ((llvm_shang_bit_repeat_i64_i1_i322013[63:0]))));
  assign llvm_shang_or_i64_i64_i642015[63:0] = ((((llvm_shang_and_i64_i64_i642012[63:0])) | ((llvm_shang_and_i64_i64_i642014[63:0]))));
  assign llvm_shang_or_i1_i1_i12016 = ((((Slot94r)) | ((Slot93r))));
  assign llvm_shang_bit_repeat_i32_i1_i322018[31:0] = (({32{((Slot99r))}}));
  assign llvm_shang_and_i32_i32_i322019[31:0] = ((((zExp27_i_i_i_reg2mem201_0[31:0])) & ((llvm_shang_bit_repeat_i32_i1_i322018[31:0]))));
  assign llvm_shang_or_i32_i32_i322020[31:0] = ((((32'h0)) | ((llvm_shang_and_i32_i32_i322019[31:0]))));
  assign llvm_shang_or_i1_i1_i12021 = ((((llvm_shang_and_i1_i1_i11619)) | ((Slot99r))));
  assign llvm_shang_bit_repeat_i64_i1_i322022[63:0] = (({64{((llvm_shang_and_i1_i1_i11620))}}));
  assign llvm_shang_and_i64_i64_i642023[63:0] = ((((storemerge1_i_i_i_i_reg2mem203_0[63:0])) & ((llvm_shang_bit_repeat_i64_i1_i322022[63:0]))));
  assign llvm_shang_bit_repeat_i64_i1_i322024[63:0] = (({64{((Slot99r))}}));
  assign llvm_shang_and_i64_i64_i642025[63:0] = ((((zSig25_i_i_i_reg2mem199_0[63:0])) & ((llvm_shang_bit_repeat_i64_i1_i322024[63:0]))));
  assign llvm_shang_or_i64_i64_i642026[63:0] = ((((llvm_shang_and_i64_i64_i642023[63:0])) | ((llvm_shang_and_i64_i64_i642025[63:0]))));
  assign llvm_shang_or_i1_i1_i12027 = ((((llvm_shang_and_i1_i1_i11620)) | ((Slot99r))));
  assign llvm_shang_bit_repeat_i32_i1_i322029[31:0] = (({32{((Slot99r))}}));
  assign llvm_shang_and_i32_i32_i322030[31:0] = ((((conv1424_i_i_i_reg2mem197_0[31:0])) & ((llvm_shang_bit_repeat_i32_i1_i322029[31:0]))));
  assign llvm_shang_or_i32_i32_i322031[31:0] = ((((32'h0)) | ((llvm_shang_and_i32_i32_i322030[31:0]))));
  assign llvm_shang_or_i1_i1_i12032 = ((((llvm_shang_and_i1_i1_i11621)) | ((Slot99r))));
  assign llvm_shang_bit_repeat_i32_i1_i322033[31:0] = (({32{((llvm_shang_and_i1_i1_i11622))}}));
  assign llvm_shang_and_i32_i32_i322034[31:0] = ((((float_exception_flags_restore[31:0])) & ((llvm_shang_bit_repeat_i32_i1_i322033[31:0]))));
  assign llvm_shang_bit_repeat_i32_i1_i322035[31:0] = (({32{((Slot99r))}}));
  assign llvm_shang_and_i32_i32_i322036[31:0] = ((((float_exception_flags_shadow_2_or_i_i_i507[31:0])) & ((llvm_shang_bit_repeat_i32_i1_i322035[31:0]))));
  assign llvm_shang_or_i32_i32_i322037[31:0] = ((((llvm_shang_and_i32_i32_i322034[31:0])) | ((llvm_shang_and_i32_i32_i322036[31:0]))));
  assign llvm_shang_or_i1_i1_i12038 = ((((llvm_shang_and_i1_i1_i11622)) | ((Slot99r))));
  assign llvm_shang_bit_repeat_i64_i1_i322039[63:0] = (({64{((Slot23r))}}));
  assign llvm_shang_and_i64_i64_i642040[63:0] = ((((add44_i565[63:0])) & ((llvm_shang_bit_repeat_i64_i1_i322039[63:0]))));
  assign llvm_shang_bit_repeat_i64_i1_i322041[63:0] = (({64{((Slot21r))}}));
  assign llvm_shang_and_i64_i64_i642042[63:0] = ((((add48_shl49_i658[63:0])) & ((llvm_shang_bit_repeat_i64_i1_i322041[63:0]))));
  assign llvm_shang_or_i64_i64_i642043[63:0] = ((((llvm_shang_and_i64_i64_i642040[63:0])) | ((llvm_shang_and_i64_i64_i642042[63:0]))));
  assign llvm_shang_or_i1_i1_i12044 = ((((Slot23r)) | ((Slot21r))));
  assign llvm_shang_bit_repeat_i32_i1_i322045[31:0] = (({32{((Slot23r))}}));
  assign llvm_shang_and_i32_i32_i322046[31:0] = ((((conv_i_i4269[31:0])) & ((llvm_shang_bit_repeat_i32_i1_i322045[31:0]))));
  assign llvm_shang_bit_repeat_i32_i1_i322047[31:0] = (({32{((Slot21r))}}));
  assign llvm_shang_and_i32_i32_i322048[31:0] = ((((aExp_0_load5778_dec50_i653[31:0])) & ((llvm_shang_bit_repeat_i32_i1_i322047[31:0]))));
  assign llvm_shang_or_i32_i32_i322049[31:0] = ((((llvm_shang_and_i32_i32_i322046[31:0])) | ((llvm_shang_and_i32_i32_i322048[31:0]))));
  assign llvm_shang_or_i1_i1_i12050 = ((((Slot23r)) | ((Slot21r))));
  assign llvm_shang_bit_repeat_i64_i1_i322051[63:0] = (({64{((llvm_shang_and_i1_i1_i11631))}}));
  assign llvm_shang_and_i64_i64_i642052[63:0] = ((((shl4_i8539[63:0])) & ((llvm_shang_bit_repeat_i64_i1_i322051[63:0]))));
  assign llvm_shang_bit_repeat_i64_i1_i322053[63:0] = (({64{((Slot19r))}}));
  assign llvm_shang_and_i64_i64_i642054[63:0] = ((((shl4_i8539[63:0])) & ((llvm_shang_bit_repeat_i64_i1_i322053[63:0]))));
  assign llvm_shang_bit_repeat_i64_i1_i322055[63:0] = (({64{((Slot18r))}}));
  assign llvm_shang_and_i64_i64_i642056[63:0] = ((((shl4_i8539[63:0])) & ((llvm_shang_bit_repeat_i64_i1_i322055[63:0]))));
  assign llvm_shang_bit_repeat_i64_i1_i322057[63:0] = (({64{((llvm_shang_and_i1_i1_i11634))}}));
  assign llvm_shang_and_i64_i64_i642058[63:0] = ((((and_i1074_i623[63:0])) & ((llvm_shang_bit_repeat_i64_i1_i322057[63:0]))));
  assign llvm_shang_bit_repeat_i64_i1_i322059[63:0] = (({64{((Slot11r))}}));
  assign llvm_shang_and_i64_i64_i642060[63:0] = ((((conv7_i24_i634[63:0])) & ((llvm_shang_bit_repeat_i64_i1_i322059[63:0]))));
  assign llvm_shang_bit_repeat_i64_i1_i322061[63:0] = (({64{((Slot10r))}}));
  assign llvm_shang_and_i64_i64_i642062[63:0] = ((((or_i21_i646[63:0])) & ((llvm_shang_bit_repeat_i64_i1_i322061[63:0]))));
  assign llvm_shang_or_i64_i64_i642063[63:0] = ((((llvm_shang_and_i64_i64_i642052[63:0])) | ((llvm_shang_and_i64_i64_i642054[63:0]))));
  assign llvm_shang_or_i64_i64_i642064[63:0] = ((((llvm_shang_or_i64_i64_i642063[63:0])) | ((llvm_shang_and_i64_i64_i642056[63:0]))));
  assign llvm_shang_or_i64_i64_i642065[63:0] = ((((llvm_shang_or_i64_i64_i642064[63:0])) | ((llvm_shang_and_i64_i64_i642058[63:0]))));
  assign llvm_shang_or_i64_i64_i642066[63:0] = ((((llvm_shang_or_i64_i64_i642065[63:0])) | ((llvm_shang_and_i64_i64_i642060[63:0]))));
  assign llvm_shang_or_i64_i64_i642067[63:0] = ((((llvm_shang_or_i64_i64_i642066[63:0])) | ((llvm_shang_and_i64_i64_i642062[63:0]))));
  assign llvm_shang_or_i1_i1_i12068 = ((((llvm_shang_and_i1_i1_i11631)) | ((Slot19r))));
  assign llvm_shang_or_i1_i1_i12069 = ((((llvm_shang_or_i1_i1_i12068)) | ((Slot18r))));
  assign llvm_shang_or_i1_i1_i12070 = ((((llvm_shang_or_i1_i1_i12069)) | ((llvm_shang_and_i1_i1_i11634))));
  assign llvm_shang_or_i1_i1_i12071 = ((((llvm_shang_or_i1_i1_i12070)) | ((Slot11r))));
  assign llvm_shang_or_i1_i1_i12072 = ((((llvm_shang_or_i1_i1_i12071)) | ((Slot10r))));
  assign llvm_shang_bit_repeat_i64_i1_i322073[63:0] = (({64{((llvm_shang_and_i1_i1_i11632))}}));
  assign llvm_shang_and_i64_i64_i642074[63:0] = ((((and_i76_i16579[63:0])) & ((llvm_shang_bit_repeat_i64_i1_i322073[63:0]))));
  assign llvm_shang_bit_repeat_i64_i1_i322075[63:0] = (({64{((Slot19r))}}));
  assign llvm_shang_and_i64_i64_i642076[63:0] = ((((conv7_i_i27596[63:0])) & ((llvm_shang_bit_repeat_i64_i1_i322075[63:0]))));
  assign llvm_shang_bit_repeat_i64_i1_i322077[63:0] = (({64{((Slot18r))}}));
  assign llvm_shang_and_i64_i64_i642078[63:0] = ((((or_i7_i606[63:0])) & ((llvm_shang_bit_repeat_i64_i1_i322077[63:0]))));
  assign llvm_shang_bit_repeat_i64_i1_i322079[63:0] = (({64{((llvm_shang_and_i1_i1_i11635))}}));
  assign llvm_shang_and_i64_i64_i642080[63:0] = ((((shl_i7536[63:0])) & ((llvm_shang_bit_repeat_i64_i1_i322079[63:0]))));
  assign llvm_shang_bit_repeat_i64_i1_i322081[63:0] = (({64{((Slot11r))}}));
  assign llvm_shang_and_i64_i64_i642082[63:0] = ((((shl_i7536[63:0])) & ((llvm_shang_bit_repeat_i64_i1_i322081[63:0]))));
  assign llvm_shang_bit_repeat_i64_i1_i322083[63:0] = (({64{((Slot10r))}}));
  assign llvm_shang_and_i64_i64_i642084[63:0] = ((((shl_i7536[63:0])) & ((llvm_shang_bit_repeat_i64_i1_i322083[63:0]))));
  assign llvm_shang_or_i64_i64_i642085[63:0] = ((((llvm_shang_and_i64_i64_i642074[63:0])) | ((llvm_shang_and_i64_i64_i642076[63:0]))));
  assign llvm_shang_or_i64_i64_i642086[63:0] = ((((llvm_shang_or_i64_i64_i642085[63:0])) | ((llvm_shang_and_i64_i64_i642078[63:0]))));
  assign llvm_shang_or_i64_i64_i642087[63:0] = ((((llvm_shang_or_i64_i64_i642086[63:0])) | ((llvm_shang_and_i64_i64_i642080[63:0]))));
  assign llvm_shang_or_i64_i64_i642088[63:0] = ((((llvm_shang_or_i64_i64_i642087[63:0])) | ((llvm_shang_and_i64_i64_i642082[63:0]))));
  assign llvm_shang_or_i64_i64_i642089[63:0] = ((((llvm_shang_or_i64_i64_i642088[63:0])) | ((llvm_shang_and_i64_i64_i642084[63:0]))));
  assign llvm_shang_or_i1_i1_i12090 = ((((llvm_shang_and_i1_i1_i11632)) | ((Slot19r))));
  assign llvm_shang_or_i1_i1_i12091 = ((((llvm_shang_or_i1_i1_i12090)) | ((Slot18r))));
  assign llvm_shang_or_i1_i1_i12092 = ((((llvm_shang_or_i1_i1_i12091)) | ((llvm_shang_and_i1_i1_i11635))));
  assign llvm_shang_or_i1_i1_i12093 = ((((llvm_shang_or_i1_i1_i12092)) | ((Slot11r))));
  assign llvm_shang_or_i1_i1_i12094 = ((((llvm_shang_or_i1_i1_i12093)) | ((Slot10r))));
  assign llvm_shang_bit_repeat_i32_i1_i322095[31:0] = (({32{((llvm_shang_and_i1_i1_i11633))}}));
  assign llvm_shang_and_i32_i32_i322096[31:0] = ((((conv_i30_i273[31:0])) & ((llvm_shang_bit_repeat_i32_i1_i322095[31:0]))));
  assign llvm_shang_bit_repeat_i32_i1_i322097[31:0] = (({32{((Slot19r))}}));
  assign llvm_shang_and_i32_i32_i322098[31:0] = ((((conv_i30_i273[31:0])) & ((llvm_shang_bit_repeat_i32_i1_i322097[31:0]))));
  assign llvm_shang_bit_repeat_i32_i1_i322099[31:0] = (({32{((Slot18r))}}));
  assign llvm_shang_and_i32_i32_i322100[31:0] = ((((conv_i30_i273[31:0])) & ((llvm_shang_bit_repeat_i32_i1_i322099[31:0]))));
  assign llvm_shang_bit_repeat_i32_i1_i322101[31:0] = (({32{((llvm_shang_and_i1_i1_i11636))}}));
  assign llvm_shang_and_i32_i32_i322102[31:0] = ((((conv_i_i4269[31:0])) & ((llvm_shang_bit_repeat_i32_i1_i322101[31:0]))));
  assign llvm_shang_bit_repeat_i32_i1_i322103[31:0] = (({32{((Slot11r))}}));
  assign llvm_shang_and_i32_i32_i322104[31:0] = ((((conv_i_i4269[31:0])) & ((llvm_shang_bit_repeat_i32_i1_i322103[31:0]))));
  assign llvm_shang_bit_repeat_i32_i1_i322105[31:0] = (({32{((Slot10r))}}));
  assign llvm_shang_and_i32_i32_i322106[31:0] = ((((conv_i_i4269[31:0])) & ((llvm_shang_bit_repeat_i32_i1_i322105[31:0]))));
  assign llvm_shang_or_i32_i32_i322107[31:0] = ((((llvm_shang_and_i32_i32_i322096[31:0])) | ((llvm_shang_and_i32_i32_i322098[31:0]))));
  assign llvm_shang_or_i32_i32_i322108[31:0] = ((((llvm_shang_or_i32_i32_i322107[31:0])) | ((llvm_shang_and_i32_i32_i322100[31:0]))));
  assign llvm_shang_or_i32_i32_i322109[31:0] = ((((llvm_shang_or_i32_i32_i322108[31:0])) | ((llvm_shang_and_i32_i32_i322102[31:0]))));
  assign llvm_shang_or_i32_i32_i322110[31:0] = ((((llvm_shang_or_i32_i32_i322109[31:0])) | ((llvm_shang_and_i32_i32_i322104[31:0]))));
  assign llvm_shang_or_i32_i32_i322111[31:0] = ((((llvm_shang_or_i32_i32_i322110[31:0])) | ((llvm_shang_and_i32_i32_i322106[31:0]))));
  assign llvm_shang_or_i1_i1_i12112 = ((((llvm_shang_and_i1_i1_i11633)) | ((Slot19r))));
  assign llvm_shang_or_i1_i1_i12113 = ((((llvm_shang_or_i1_i1_i12112)) | ((Slot18r))));
  assign llvm_shang_or_i1_i1_i12114 = ((((llvm_shang_or_i1_i1_i12113)) | ((llvm_shang_and_i1_i1_i11636))));
  assign llvm_shang_or_i1_i1_i12115 = ((((llvm_shang_or_i1_i1_i12114)) | ((Slot11r))));
  assign llvm_shang_or_i1_i1_i12116 = ((((llvm_shang_or_i1_i1_i12115)) | ((Slot10r))));
  assign llvm_shang_bit_repeat_i32_i1_i322117[31:0] = (({32{((llvm_shang_and_i1_i1_i11637))}}));
  assign llvm_shang_and_i32_i32_i322118[31:0] = ((((conv14_i_i660[31:0])) & ((llvm_shang_bit_repeat_i32_i1_i322117[31:0]))));
  assign llvm_shang_bit_repeat_i32_i1_i322119[31:0] = (({32{((llvm_shang_and_i1_i1_i11641))}}));
  assign llvm_shang_and_i32_i32_i322120[31:0] = ((((conv14_i_i660[31:0])) & ((llvm_shang_bit_repeat_i32_i1_i322119[31:0]))));
  assign llvm_shang_bit_repeat_i32_i1_i322121[31:0] = (({32{((Slot36r))}}));
  assign llvm_shang_and_i32_i32_i322122[31:0] = ((((conv31_i_i702[31:0])) & ((llvm_shang_bit_repeat_i32_i1_i322121[31:0]))));
  assign llvm_shang_bit_repeat_i32_i1_i322123[31:0] = (({32{((llvm_shang_and_i1_i1_i11649))}}));
  assign llvm_shang_and_i32_i32_i322124[31:0] = ((((conv14_i_i660[31:0])) & ((llvm_shang_bit_repeat_i32_i1_i322123[31:0]))));
  assign llvm_shang_or_i32_i32_i322125[31:0] = ((((llvm_shang_and_i32_i32_i322118[31:0])) | ((llvm_shang_and_i32_i32_i322120[31:0]))));
  assign llvm_shang_or_i32_i32_i322126[31:0] = ((((llvm_shang_or_i32_i32_i322125[31:0])) | ((llvm_shang_and_i32_i32_i322122[31:0]))));
  assign llvm_shang_or_i32_i32_i322127[31:0] = ((((llvm_shang_or_i32_i32_i322126[31:0])) | ((llvm_shang_and_i32_i32_i322124[31:0]))));
  assign llvm_shang_or_i1_i1_i12128 = ((((llvm_shang_and_i1_i1_i11637)) | ((llvm_shang_and_i1_i1_i11641))));
  assign llvm_shang_or_i1_i1_i12129 = ((((llvm_shang_or_i1_i1_i12128)) | ((Slot36r))));
  assign llvm_shang_or_i1_i1_i12130 = ((((llvm_shang_or_i1_i1_i12129)) | ((llvm_shang_and_i1_i1_i11649))));
  assign llvm_shang_bit_repeat_i64_i1_i322131[63:0] = (({64{((llvm_shang_and_i1_i1_i11638))}}));
  assign llvm_shang_and_i64_i64_i642132[63:0] = ((((add4473_i_reg2mem231_0[63:0])) & ((llvm_shang_bit_repeat_i64_i1_i322131[63:0]))));
  assign llvm_shang_bit_repeat_i64_i1_i322133[63:0] = (({64{((llvm_shang_and_i1_i1_i11642))}}));
  assign llvm_shang_and_i64_i64_i642134[63:0] = ((((add4473_i_reg2mem231_0[63:0])) & ((llvm_shang_bit_repeat_i64_i1_i322133[63:0]))));
  assign llvm_shang_bit_repeat_i64_i1_i322135[63:0] = (({64{((Slot36r))}}));
  assign llvm_shang_and_i64_i64_i642136[63:0] = ((((storemerge1_i_i_i_reg2mem229_0[63:0])) & ((llvm_shang_bit_repeat_i64_i1_i322135[63:0]))));
  assign llvm_shang_bit_repeat_i64_i1_i322137[63:0] = (({64{((llvm_shang_and_i1_i1_i11650))}}));
  assign llvm_shang_and_i64_i64_i642138[63:0] = ((((add4473_i_reg2mem231_0[63:0])) & ((llvm_shang_bit_repeat_i64_i1_i322137[63:0]))));
  assign llvm_shang_or_i64_i64_i642139[63:0] = ((((llvm_shang_and_i64_i64_i642132[63:0])) | ((llvm_shang_and_i64_i64_i642134[63:0]))));
  assign llvm_shang_or_i64_i64_i642140[63:0] = ((((llvm_shang_or_i64_i64_i642139[63:0])) | ((llvm_shang_and_i64_i64_i642136[63:0]))));
  assign llvm_shang_or_i64_i64_i642141[63:0] = ((((llvm_shang_or_i64_i64_i642140[63:0])) | ((llvm_shang_and_i64_i64_i642138[63:0]))));
  assign llvm_shang_or_i1_i1_i12142 = ((((llvm_shang_and_i1_i1_i11638)) | ((llvm_shang_and_i1_i1_i11642))));
  assign llvm_shang_or_i1_i1_i12143 = ((((llvm_shang_or_i1_i1_i12142)) | ((Slot36r))));
  assign llvm_shang_or_i1_i1_i12144 = ((((llvm_shang_or_i1_i1_i12143)) | ((llvm_shang_and_i1_i1_i11650))));
  assign llvm_shang_bit_repeat_i32_i1_i322145[31:0] = (({32{((llvm_shang_and_i1_i1_i11639))}}));
  assign llvm_shang_and_i32_i32_i322146[31:0] = ((((aExp_0_load5779_i_reg2mem233_0[31:0])) & ((llvm_shang_bit_repeat_i32_i1_i322145[31:0]))));
  assign llvm_shang_bit_repeat_i32_i1_i322147[31:0] = (({32{((llvm_shang_and_i1_i1_i11643))}}));
  assign llvm_shang_and_i32_i32_i322148[31:0] = ((((aExp_0_load5779_i_reg2mem233_0[31:0])) & ((llvm_shang_bit_repeat_i32_i1_i322147[31:0]))));
  assign llvm_shang_bit_repeat_i32_i1_i322150[31:0] = (({32{((llvm_shang_and_i1_i1_i11651))}}));
  assign llvm_shang_and_i32_i32_i322151[31:0] = ((((32'h7FD)) & ((llvm_shang_bit_repeat_i32_i1_i322150[31:0]))));
  assign llvm_shang_or_i32_i32_i322152[31:0] = ((((llvm_shang_and_i32_i32_i322146[31:0])) | ((llvm_shang_and_i32_i32_i322148[31:0]))));
  assign llvm_shang_or_i32_i32_i322153[31:0] = ((((llvm_shang_or_i32_i32_i322152[31:0])) | ((32'h0))));
  assign llvm_shang_or_i32_i32_i322154[31:0] = ((((llvm_shang_or_i32_i32_i322153[31:0])) | ((llvm_shang_and_i32_i32_i322151[31:0]))));
  assign llvm_shang_or_i1_i1_i12155 = ((((llvm_shang_and_i1_i1_i11639)) | ((llvm_shang_and_i1_i1_i11643))));
  assign llvm_shang_or_i1_i1_i12156 = ((((llvm_shang_or_i1_i1_i12155)) | ((Slot36r))));
  assign llvm_shang_or_i1_i1_i12157 = ((((llvm_shang_or_i1_i1_i12156)) | ((llvm_shang_and_i1_i1_i11651))));
  assign llvm_shang_bit_repeat_i32_i1_i322158[31:0] = (({32{((llvm_shang_and_i1_i1_i11640))}}));
  assign llvm_shang_and_i32_i32_i322159[31:0] = ((((float_exception_flags_restore[31:0])) & ((llvm_shang_bit_repeat_i32_i1_i322158[31:0]))));
  assign llvm_shang_bit_repeat_i32_i1_i322160[31:0] = (({32{((llvm_shang_and_i1_i1_i11644))}}));
  assign llvm_shang_and_i32_i32_i322161[31:0] = ((((float_exception_flags_restore[31:0])) & ((llvm_shang_bit_repeat_i32_i1_i322160[31:0]))));
  assign llvm_shang_bit_repeat_i32_i1_i322162[31:0] = (({32{((Slot36r))}}));
  assign llvm_shang_and_i32_i32_i322163[31:0] = ((((or_i2_i_i711[31:0])) & ((llvm_shang_bit_repeat_i32_i1_i322162[31:0]))));
  assign llvm_shang_bit_repeat_i32_i1_i322164[31:0] = (({32{((llvm_shang_and_i1_i1_i11652))}}));
  assign llvm_shang_and_i32_i32_i322165[31:0] = ((((float_exception_flags_restore[31:0])) & ((llvm_shang_bit_repeat_i32_i1_i322164[31:0]))));
  assign llvm_shang_or_i32_i32_i322166[31:0] = ((((llvm_shang_and_i32_i32_i322159[31:0])) | ((llvm_shang_and_i32_i32_i322161[31:0]))));
  assign llvm_shang_or_i32_i32_i322167[31:0] = ((((llvm_shang_or_i32_i32_i322166[31:0])) | ((llvm_shang_and_i32_i32_i322163[31:0]))));
  assign llvm_shang_or_i32_i32_i322168[31:0] = ((((llvm_shang_or_i32_i32_i322167[31:0])) | ((llvm_shang_and_i32_i32_i322165[31:0]))));
  assign llvm_shang_or_i1_i1_i12169 = ((((llvm_shang_and_i1_i1_i11640)) | ((llvm_shang_and_i1_i1_i11644))));
  assign llvm_shang_or_i1_i1_i12170 = ((((llvm_shang_or_i1_i1_i12169)) | ((Slot36r))));
  assign llvm_shang_or_i1_i1_i12171 = ((((llvm_shang_or_i1_i1_i12170)) | ((llvm_shang_and_i1_i1_i11652))));
  assign llvm_shang_bit_repeat_i64_i1_i322172[63:0] = (({64{((Slot33r))}}));
  assign llvm_shang_and_i64_i64_i642173[63:0] = ((((conv7_i_i_i688[63:0])) & ((llvm_shang_bit_repeat_i64_i1_i322172[63:0]))));
  assign llvm_shang_bit_repeat_i64_i1_i322174[63:0] = (({64{((Slot32r))}}));
  assign llvm_shang_and_i64_i64_i642175[63:0] = ((((or_i4_i_i700[63:0])) & ((llvm_shang_bit_repeat_i64_i1_i322174[63:0]))));
  assign llvm_shang_or_i64_i64_i642176[63:0] = ((((llvm_shang_and_i64_i64_i642173[63:0])) | ((llvm_shang_and_i64_i64_i642175[63:0]))));
  assign llvm_shang_or_i1_i1_i12177 = ((((Slot33r)) | ((Slot32r))));
  assign llvm_shang_bit_repeat_i32_i1_i322179[31:0] = (({32{((Slot38r))}}));
  assign llvm_shang_and_i32_i32_i322180[31:0] = ((((zExp27_i_i_reg2mem227_0[31:0])) & ((llvm_shang_bit_repeat_i32_i1_i322179[31:0]))));
  assign llvm_shang_or_i32_i32_i322181[31:0] = ((((32'h0)) | ((llvm_shang_and_i32_i32_i322180[31:0]))));
  assign llvm_shang_or_i1_i1_i12182 = ((((llvm_shang_and_i1_i1_i11645)) | ((Slot38r))));
  assign llvm_shang_bit_repeat_i64_i1_i322183[63:0] = (({64{((llvm_shang_and_i1_i1_i11646))}}));
  assign llvm_shang_and_i64_i64_i642184[63:0] = ((((storemerge1_i_i_i_reg2mem229_0[63:0])) & ((llvm_shang_bit_repeat_i64_i1_i322183[63:0]))));
  assign llvm_shang_bit_repeat_i64_i1_i322185[63:0] = (({64{((Slot38r))}}));
  assign llvm_shang_and_i64_i64_i642186[63:0] = ((((zSig25_i_i_reg2mem225_0[63:0])) & ((llvm_shang_bit_repeat_i64_i1_i322185[63:0]))));
  assign llvm_shang_or_i64_i64_i642187[63:0] = ((((llvm_shang_and_i64_i64_i642184[63:0])) | ((llvm_shang_and_i64_i64_i642186[63:0]))));
  assign llvm_shang_or_i1_i1_i12188 = ((((llvm_shang_and_i1_i1_i11646)) | ((Slot38r))));
  assign llvm_shang_bit_repeat_i32_i1_i322190[31:0] = (({32{((Slot38r))}}));
  assign llvm_shang_and_i32_i32_i322191[31:0] = ((((conv1424_i_i_reg2mem223_0[31:0])) & ((llvm_shang_bit_repeat_i32_i1_i322190[31:0]))));
  assign llvm_shang_or_i32_i32_i322192[31:0] = ((((32'h0)) | ((llvm_shang_and_i32_i32_i322191[31:0]))));
  assign llvm_shang_or_i1_i1_i12193 = ((((llvm_shang_and_i1_i1_i11647)) | ((Slot38r))));
  assign llvm_shang_bit_repeat_i32_i1_i322194[31:0] = (({32{((llvm_shang_and_i1_i1_i11648))}}));
  assign llvm_shang_and_i32_i32_i322195[31:0] = ((((float_exception_flags_restore[31:0])) & ((llvm_shang_bit_repeat_i32_i1_i322194[31:0]))));
  assign llvm_shang_bit_repeat_i32_i1_i322196[31:0] = (({32{((Slot38r))}}));
  assign llvm_shang_and_i32_i32_i322197[31:0] = ((((float_exception_flags_shadow_0_or_i_i36717[31:0])) & ((llvm_shang_bit_repeat_i32_i1_i322196[31:0]))));
  assign llvm_shang_or_i32_i32_i322198[31:0] = ((((llvm_shang_and_i32_i32_i322195[31:0])) | ((llvm_shang_and_i32_i32_i322197[31:0]))));
  assign llvm_shang_or_i1_i1_i12199 = ((((llvm_shang_and_i1_i1_i11648)) | ((Slot38r))));
  assign llvm_shang_and_i1_i1_i12200 = ((((tobool_i6_ge750)) & ((Slot64r))));
  assign llvm_shang_or_i1_i1_i12201 = ((((1'b0)) | ((llvm_shang_and_i1_i1_i12200))));
  assign llvm_shang_or_i1_i1_i12202 = ((((llvm_shang_and_i1_i1_i11655)) | ((Slot64r))));
  assign llvm_shang_and_i1_i1_i12203 = ((((tobool_i_ge758)) & ((Slot66r))));
  assign llvm_shang_or_i1_i1_i12204 = ((((1'b0)) | ((llvm_shang_and_i1_i1_i12203))));
  assign llvm_shang_or_i1_i1_i12205 = ((((llvm_shang_and_i1_i1_i11656)) | ((Slot66r))));
  assign llvm_shang_or_i1_i1_i12206 = ((((llvm_shang_and_i1_i1_i11664)) | ((Slot70r))));
  assign llvm_shang_or_i1_i1_i12207 = ((((llvm_shang_and_i1_i1_i11671)) | ((Slot59r))));
  assign llvm_shang_or_i1_i1_i12208 = ((((llvm_shang_or_i1_i1_i12207)) | ((Slot58r))));
  assign llvm_shang_or_i1_i1_i12209 = ((((llvm_shang_and_i1_i1_i11672)) | ((Slot60r))));
  assign llvm_shang_or_i1_i1_i12210 = ((((llvm_shang_and_i1_i1_i11680)) | ((Slot50r))));
  assign llvm_shang_or_i1_i1_i12211 = ((((llvm_shang_or_i1_i1_i12210)) | ((Slot49r))));
  assign llvm_shang_or_i1_i1_i12212 = ((((llvm_shang_and_i1_i1_i11681)) | ((Slot51r))));
  assign llvm_shang_or_i1_i1_i12213 = ((((Slot76r)) | ((Slot73r))));
  assign llvm_shang_or_i1_i1_i12214 = ((((llvm_shang_and_i1_i1_i11683)) | ((Slot79r))));
  assign llvm_shang_or_i1_i1_i12215 = ((((Slot94r)) | ((Slot93r))));
  assign llvm_shang_or_i1_i1_i12216 = ((((llvm_shang_and_i1_i1_i11692)) | ((llvm_shang_and_i1_i1_i11693))));
  assign llvm_shang_or_i1_i1_i12217 = ((((llvm_shang_or_i1_i1_i12216)) | ((Slot97r))));
  assign llvm_shang_or_i1_i1_i12218 = ((((llvm_shang_or_i1_i1_i12217)) | ((llvm_shang_and_i1_i1_i11694))));
  assign llvm_shang_or_i1_i1_i12219 = ((((llvm_shang_and_i1_i1_i11695)) | ((Slot99r))));
  assign llvm_shang_or_i1_i1_i12220 = ((((llvm_shang_and_i1_i1_i11696)) | ((llvm_shang_and_i1_i1_i11697))));
  assign llvm_shang_or_i1_i1_i12221 = ((((llvm_shang_and_i1_i1_i11717)) | ((Slot19r))));
  assign llvm_shang_or_i1_i1_i12222 = ((((llvm_shang_or_i1_i1_i12221)) | ((Slot18r))));
  assign llvm_shang_or_i1_i1_i12223 = ((((llvm_shang_or_i1_i1_i12222)) | ((llvm_shang_and_i1_i1_i11718))));
  assign llvm_shang_or_i1_i1_i12224 = ((((llvm_shang_or_i1_i1_i12223)) | ((Slot11r))));
  assign llvm_shang_or_i1_i1_i12225 = ((((llvm_shang_or_i1_i1_i12224)) | ((Slot10r))));
  assign llvm_shang_or_i1_i1_i12226 = ((((Slot23r)) | ((Slot21r))));
  assign llvm_shang_or_i1_i1_i12227 = ((((Slot33r)) | ((Slot32r))));
  assign llvm_shang_or_i1_i1_i12228 = ((((llvm_shang_and_i1_i1_i11727)) | ((llvm_shang_and_i1_i1_i11728))));
  assign llvm_shang_or_i1_i1_i12229 = ((((llvm_shang_or_i1_i1_i12228)) | ((Slot36r))));
  assign llvm_shang_or_i1_i1_i12230 = ((((llvm_shang_or_i1_i1_i12229)) | ((llvm_shang_and_i1_i1_i11729))));
  assign llvm_shang_or_i1_i1_i12231 = ((((llvm_shang_and_i1_i1_i11730)) | ((Slot38r))));
  assign llvm_shang_or_i1_i1_i12232 = ((((llvm_shang_and_i1_i1_i11731)) | ((llvm_shang_and_i1_i1_i11732))));
  assign llvm_shang_or_i1_i1_i12233 = ((((llvm_shang_and_i1_i1_i11734)) | ((llvm_shang_and_i1_i1_i11735))));
  assign llvm_shang_or_i1_i1_i12234 = ((((llvm_shang_or_i1_i1_i12233)) | ((llvm_shang_and_i1_i1_i11736))));
  assign llvm_shang_or_i1_i1_i12235 = ((((llvm_shang_or_i1_i1_i12234)) | ((llvm_shang_and_i1_i1_i11737))));
  assign llvm_shang_or_i1_i1_i12236 = ((((llvm_shang_or_i1_i1_i12235)) | ((llvm_shang_and_i1_i1_i11738))));
  assign llvm_shang_or_i1_i1_i12237 = ((((llvm_shang_or_i1_i1_i12236)) | ((llvm_shang_and_i1_i1_i11739))));
  assign llvm_shang_or_i1_i1_i12238 = ((((llvm_shang_and_i1_i1_i11741)) | ((Slot64r))));
  assign llvm_shang_or_i1_i1_i12239 = ((((llvm_shang_and_i1_i1_i11743)) | ((Slot66r))));
  assign llvm_shang_or_i1_i1_i12240 = ((((Slot69r)) | ((llvm_shang_and_i1_i1_i11744))));
  assign llvm_shang_or_i1_i1_i12241 = ((((llvm_shang_or_i1_i1_i12240)) | ((Slot55r))));
  assign llvm_shang_or_i1_i1_i12242 = ((((llvm_shang_or_i1_i1_i12241)) | ((Slot102r))));
  assign llvm_shang_or_i1_i1_i12243 = ((((llvm_shang_or_i1_i1_i12242)) | ((Slot90r))));
  assign llvm_shang_or_i1_i1_i12244 = ((((llvm_shang_or_i1_i1_i12243)) | ((llvm_shang_and_i1_i1_i11745))));
  assign llvm_shang_or_i1_i1_i12245 = ((((llvm_shang_or_i1_i1_i12244)) | ((Slot43r))));
  assign llvm_shang_or_i1_i1_i12246 = ((((llvm_shang_or_i1_i1_i12245)) | ((llvm_shang_and_i1_i1_i11746))));
  assign llvm_shang_or_i1_i1_i12247 = ((((llvm_shang_or_i1_i1_i12246)) | ((Slot15r))));
  assign llvm_shang_or_i1_i1_i12248 = ((((llvm_shang_or_i1_i1_i12247)) | ((Slot41r))));
  assign llvm_shang_or_i1_i1_i12249 = ((((llvm_shang_or_i1_i1_i12248)) | ((Slot29r))));
  assign llvm_shang_or_i1_i1_i12250 = ((((llvm_shang_or_i1_i1_i12249)) | ((llvm_shang_and_i1_i1_i11747))));
  assign llvm_shang_or_i1_i1_i12251 = ((((llvm_shang_or_i1_i1_i12250)) | ((Slot68r))));
  
  
  // Synthesized MUX
  wire fin_register_guard = ((llvm_shang_or_i1_i1_i11757));
  wire fin_register_wire = ((llvm_shang_or_i1_i1_i11756));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      fin <= 1'b0;
    end else begin 
      if (fin_register_guard) begin 
        fin <= fin_register_wire;
      end 
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire return_value_register_guard = ((Slot103r));
  wire [63:0]return_value_register_wire = ((storemerge_reg2mem_0[63:0]));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      return_value <= 64'h7FFFFFFFFFFFFFFF;
    end else begin 
      if (return_value_register_guard) begin 
        return_value <= return_value_register_wire[63:0];
      end 
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot0r_register_guard = ((llvm_shang_or_i1_i1_i11758));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot0r <= 1'b1;
    end else begin 
      Slot0r <= Slot0r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire a_reg_register_guard = ((llvm_shang_and_i1_i1_i11595));
  wire [63:0]a_reg_register_wire = ((a[63:0]));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      a_reg <= 64'h0;
    end else begin 
      if (a_reg_register_guard) begin 
        a_reg <= a_reg_register_wire[63:0];
      end 
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire b_reg_register_guard = ((llvm_shang_and_i1_i1_i11596));
  wire [63:0]b_reg_register_wire = ((b[63:0]));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      b_reg <= 64'h0;
    end else begin 
      if (b_reg_register_guard) begin 
        b_reg <= b_reg_register_wire[63:0];
      end 
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire float_exception_flags_restore_register_guard = ((Slot4r));
  wire [31:0]float_exception_flags_restore_register_wire = ((mem1rdata[31:0]));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      float_exception_flags_restore <= 32'h0;
    end else begin 
      if (float_exception_flags_restore_register_guard) begin 
        float_exception_flags_restore <= float_exception_flags_restore_register_wire[31:0];
      end 
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire conv_i2980_i_reg2mem219_0_register_guard = ((llvm_shang_or_i1_i1_i11764));
  wire [31:0]conv_i2980_i_reg2mem219_0_register_wire = ((llvm_shang_or_i32_i32_i321763[31:0]));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      conv_i2980_i_reg2mem219_0 <= 32'h0;
    end else begin 
      if (conv_i2980_i_reg2mem219_0_register_guard) begin 
        conv_i2980_i_reg2mem219_0 <= conv_i2980_i_reg2mem219_0_register_wire[31:0];
      end 
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire conv_i682_i_reg2mem221_0_register_guard = ((llvm_shang_or_i1_i1_i11770));
  wire [31:0]conv_i682_i_reg2mem221_0_register_wire = ((llvm_shang_or_i32_i32_i321769[31:0]));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      conv_i682_i_reg2mem221_0 <= 32'h0;
    end else begin 
      if (conv_i682_i_reg2mem221_0_register_guard) begin 
        conv_i682_i_reg2mem221_0 <= conv_i682_i_reg2mem221_0_register_wire[31:0];
      end 
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire storemerge_reg2mem_0_register_guard = ((llvm_shang_or_i1_i1_i11819));
  wire [63:0]storemerge_reg2mem_0_register_wire = ((llvm_shang_or_i64_i64_i641807[63:0]));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      storemerge_reg2mem_0 <= 64'h0;
    end else begin 
      if (storemerge_reg2mem_0_register_guard) begin 
        storemerge_reg2mem_0 <= storemerge_reg2mem_0_register_wire[63:0];
      end 
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire float_exception_flags_shadow_4_register_guard = ((llvm_shang_or_i1_i1_i11869));
  wire [31:0]float_exception_flags_shadow_4_register_wire = ((llvm_shang_or_i32_i32_i321857[31:0]));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      float_exception_flags_shadow_4 <= 32'h0;
    end else begin 
      if (float_exception_flags_shadow_4_register_guard) begin 
        float_exception_flags_shadow_4 <= float_exception_flags_shadow_4_register_wire[31:0];
      end 
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire and_i2574_i_reg2mem_0_register_guard = ((llvm_shang_or_i1_i1_i11875));
  wire [63:0]and_i2574_i_reg2mem_0_register_wire = ((llvm_shang_or_i64_i64_i641874[63:0]));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      and_i2574_i_reg2mem_0 <= 64'h0;
    end else begin 
      if (and_i2574_i_reg2mem_0_register_guard) begin 
        and_i2574_i_reg2mem_0 <= and_i2574_i_reg2mem_0_register_wire[63:0];
      end 
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire and_i77_i_reg2mem_0_register_guard = ((llvm_shang_or_i1_i1_i11881));
  wire [63:0]and_i77_i_reg2mem_0_register_wire = ((llvm_shang_or_i64_i64_i641880[63:0]));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      and_i77_i_reg2mem_0 <= 64'h0;
    end else begin 
      if (and_i77_i_reg2mem_0_register_guard) begin 
        and_i77_i_reg2mem_0 <= and_i77_i_reg2mem_0_register_wire[63:0];
      end 
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire conv_i681_i_reg2mem211_0_register_guard = ((llvm_shang_or_i1_i1_i11887));
  wire [31:0]conv_i681_i_reg2mem211_0_register_wire = ((llvm_shang_or_i32_i32_i321886[31:0]));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      conv_i681_i_reg2mem211_0 <= 32'h0;
    end else begin 
      if (conv_i681_i_reg2mem211_0_register_guard) begin 
        conv_i681_i_reg2mem211_0 <= conv_i681_i_reg2mem211_0_register_wire[31:0];
      end 
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire and_i2572_i_reg2mem_0_register_guard = ((llvm_shang_or_i1_i1_i11893));
  wire [63:0]and_i2572_i_reg2mem_0_register_wire = ((llvm_shang_or_i64_i64_i641892[63:0]));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      and_i2572_i_reg2mem_0 <= 64'h0;
    end else begin 
      if (and_i2572_i_reg2mem_0_register_guard) begin 
        and_i2572_i_reg2mem_0 <= and_i2572_i_reg2mem_0_register_wire[63:0];
      end 
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire and_i76_i_reg2mem_0_register_guard = ((llvm_shang_or_i1_i1_i11899));
  wire [63:0]and_i76_i_reg2mem_0_register_wire = ((llvm_shang_or_i64_i64_i641898[63:0]));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      and_i76_i_reg2mem_0 <= 64'h0;
    end else begin 
      if (and_i76_i_reg2mem_0_register_guard) begin 
        and_i76_i_reg2mem_0 <= and_i76_i_reg2mem_0_register_wire[63:0];
      end 
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire conv_i2979_i_reg2mem215_0_register_guard = ((llvm_shang_or_i1_i1_i11905));
  wire [31:0]conv_i2979_i_reg2mem215_0_register_wire = ((llvm_shang_or_i32_i32_i321904[31:0]));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      conv_i2979_i_reg2mem215_0 <= 32'h0;
    end else begin 
      if (conv_i2979_i_reg2mem215_0_register_guard) begin 
        conv_i2979_i_reg2mem215_0 <= conv_i2979_i_reg2mem215_0_register_wire[31:0];
      end 
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire storemerge1_i22_i_reg2mem217_0_register_guard = ((llvm_shang_or_i1_i1_i11915));
  wire [63:0]storemerge1_i22_i_reg2mem217_0_register_wire = ((llvm_shang_or_i64_i64_i641913[63:0]));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      storemerge1_i22_i_reg2mem217_0 <= 64'h0;
    end else begin 
      if (storemerge1_i22_i_reg2mem217_0_register_guard) begin 
        storemerge1_i22_i_reg2mem217_0 <= storemerge1_i22_i_reg2mem217_0_register_wire[63:0];
      end 
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire sub3971_i_reg2mem205_0_register_guard = ((llvm_shang_or_i1_i1_i11921));
  wire [63:0]sub3971_i_reg2mem205_0_register_wire = ((llvm_shang_or_i64_i64_i641920[63:0]));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      sub3971_i_reg2mem205_0 <= 64'h0;
    end else begin 
      if (sub3971_i_reg2mem205_0_register_guard) begin 
        sub3971_i_reg2mem205_0 <= sub3971_i_reg2mem205_0_register_wire[63:0];
      end 
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire bExp_0_load5378_i_reg2mem207_0_register_guard = ((llvm_shang_or_i1_i1_i11927));
  wire [31:0]bExp_0_load5378_i_reg2mem207_0_register_wire = ((llvm_shang_or_i32_i32_i321926[31:0]));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      bExp_0_load5378_i_reg2mem207_0 <= 32'h0;
    end else begin 
      if (bExp_0_load5378_i_reg2mem207_0_register_guard) begin 
        bExp_0_load5378_i_reg2mem207_0 <= bExp_0_load5378_i_reg2mem207_0_register_wire[31:0];
      end 
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire zSign83_i_reg2mem209_0_register_guard = ((llvm_shang_or_i1_i1_i11933));
  wire [31:0]zSign83_i_reg2mem209_0_register_wire = ((llvm_shang_or_i32_i32_i321932[31:0]));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      zSign83_i_reg2mem209_0 <= 32'h0;
    end else begin 
      if (zSign83_i_reg2mem209_0_register_guard) begin 
        zSign83_i_reg2mem209_0 <= zSign83_i_reg2mem209_0_register_wire[31:0];
      end 
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire storemerge1_i_i_reg2mem213_0_register_guard = ((llvm_shang_or_i1_i1_i11943));
  wire [63:0]storemerge1_i_i_reg2mem213_0_register_wire = ((llvm_shang_or_i64_i64_i641941[63:0]));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      storemerge1_i_i_reg2mem213_0 <= 64'h0;
    end else begin 
      if (storemerge1_i_i_reg2mem213_0_register_guard) begin 
        storemerge1_i_i_reg2mem213_0 <= storemerge1_i_i_reg2mem213_0_register_wire[63:0];
      end 
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire tmp45_reg2mem_0_register_guard = ((llvm_shang_or_i1_i1_i11949));
  wire [31:0]tmp45_reg2mem_0_register_wire = ((llvm_shang_or_i32_i32_i321948[31:0]));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      tmp45_reg2mem_0 <= 32'h0;
    end else begin 
      if (tmp45_reg2mem_0_register_guard) begin 
        tmp45_reg2mem_0 <= tmp45_reg2mem_0_register_wire[31:0];
      end 
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire a7_i_i_i_i_reg2mem_0_register_guard = ((llvm_shang_or_i1_i1_i11955));
  wire [31:0]a7_i_i_i_i_reg2mem_0_register_wire = ((llvm_shang_or_i32_i32_i321954[31:0]));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      a7_i_i_i_i_reg2mem_0 <= 32'h0;
    end else begin 
      if (a7_i_i_i_i_reg2mem_0_register_guard) begin 
        a7_i_i_i_i_reg2mem_0 <= a7_i_i_i_i_reg2mem_0_register_wire[31:0];
      end 
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire tmp47_register_guard = ((Slot84r));
  wire [31:0]tmp47_register_wire = ((mem2rdata[31:0]));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      tmp47 <= 32'h0;
    end else begin 
      if (tmp47_register_guard) begin 
        tmp47 <= tmp47_register_wire[31:0];
      end 
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire conv1424_i_i_i_reg2mem197_0_register_guard = ((llvm_shang_or_i1_i1_i11969));
  wire [31:0]conv1424_i_i_i_reg2mem197_0_register_wire = ((llvm_shang_or_i32_i32_i321966[31:0]));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      conv1424_i_i_i_reg2mem197_0 <= 32'h0;
    end else begin 
      if (conv1424_i_i_i_reg2mem197_0_register_guard) begin 
        conv1424_i_i_i_reg2mem197_0 <= conv1424_i_i_i_reg2mem197_0_register_wire[31:0];
      end 
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire zSig25_i_i_i_reg2mem199_0_register_guard = ((llvm_shang_or_i1_i1_i11983));
  wire [63:0]zSig25_i_i_i_reg2mem199_0_register_wire = ((llvm_shang_or_i64_i64_i641980[63:0]));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      zSig25_i_i_i_reg2mem199_0 <= 64'h0;
    end else begin 
      if (zSig25_i_i_i_reg2mem199_0_register_guard) begin 
        zSig25_i_i_i_reg2mem199_0 <= zSig25_i_i_i_reg2mem199_0_register_wire[63:0];
      end 
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire zExp27_i_i_i_reg2mem201_0_register_guard = ((llvm_shang_or_i1_i1_i11996));
  wire [31:0]zExp27_i_i_i_reg2mem201_0_register_wire = ((llvm_shang_or_i32_i32_i321993[31:0]));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      zExp27_i_i_i_reg2mem201_0 <= 32'h0;
    end else begin 
      if (zExp27_i_i_i_reg2mem201_0_register_guard) begin 
        zExp27_i_i_i_reg2mem201_0 <= zExp27_i_i_i_reg2mem201_0_register_wire[31:0];
      end 
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire float_exception_flags_shadow_2_register_guard = ((llvm_shang_or_i1_i1_i12010));
  wire [31:0]float_exception_flags_shadow_2_register_wire = ((llvm_shang_or_i32_i32_i322007[31:0]));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      float_exception_flags_shadow_2 <= 32'h0;
    end else begin 
      if (float_exception_flags_shadow_2_register_guard) begin 
        float_exception_flags_shadow_2 <= float_exception_flags_shadow_2_register_wire[31:0];
      end 
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire storemerge1_i_i_i_i_reg2mem203_0_register_guard = ((llvm_shang_or_i1_i1_i12016));
  wire [63:0]storemerge1_i_i_i_i_reg2mem203_0_register_wire = ((llvm_shang_or_i64_i64_i642015[63:0]));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      storemerge1_i_i_i_i_reg2mem203_0 <= 64'h0;
    end else begin 
      if (storemerge1_i_i_i_i_reg2mem203_0_register_guard) begin 
        storemerge1_i_i_i_i_reg2mem203_0 <= storemerge1_i_i_i_i_reg2mem203_0_register_wire[63:0];
      end 
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire zExp2730_i_i_i_reg2mem_0_register_guard = ((llvm_shang_or_i1_i1_i12021));
  wire [31:0]zExp2730_i_i_i_reg2mem_0_register_wire = ((llvm_shang_or_i32_i32_i322020[31:0]));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      zExp2730_i_i_i_reg2mem_0 <= 32'h0;
    end else begin 
      if (zExp2730_i_i_i_reg2mem_0_register_guard) begin 
        zExp2730_i_i_i_reg2mem_0 <= zExp2730_i_i_i_reg2mem_0_register_wire[31:0];
      end 
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire zSig2531_i_i_i_reg2mem_0_register_guard = ((llvm_shang_or_i1_i1_i12027));
  wire [63:0]zSig2531_i_i_i_reg2mem_0_register_wire = ((llvm_shang_or_i64_i64_i642026[63:0]));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      zSig2531_i_i_i_reg2mem_0 <= 64'h0;
    end else begin 
      if (zSig2531_i_i_i_reg2mem_0_register_guard) begin 
        zSig2531_i_i_i_reg2mem_0 <= zSig2531_i_i_i_reg2mem_0_register_wire[63:0];
      end 
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire conv142432_i_i_i_reg2mem_0_register_guard = ((llvm_shang_or_i1_i1_i12032));
  wire [31:0]conv142432_i_i_i_reg2mem_0_register_wire = ((llvm_shang_or_i32_i32_i322031[31:0]));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      conv142432_i_i_i_reg2mem_0 <= 32'h0;
    end else begin 
      if (conv142432_i_i_i_reg2mem_0_register_guard) begin 
        conv142432_i_i_i_reg2mem_0 <= conv142432_i_i_i_reg2mem_0_register_wire[31:0];
      end 
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire float_exception_flags_shadow_3_register_guard = ((llvm_shang_or_i1_i1_i12038));
  wire [31:0]float_exception_flags_shadow_3_register_wire = ((llvm_shang_or_i32_i32_i322037[31:0]));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      float_exception_flags_shadow_3 <= 32'h0;
    end else begin 
      if (float_exception_flags_shadow_3_register_guard) begin 
        float_exception_flags_shadow_3 <= float_exception_flags_shadow_3_register_wire[31:0];
      end 
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire add4473_i_reg2mem231_0_register_guard = ((llvm_shang_or_i1_i1_i12044));
  wire [63:0]add4473_i_reg2mem231_0_register_wire = ((llvm_shang_or_i64_i64_i642043[63:0]));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      add4473_i_reg2mem231_0 <= 64'h0;
    end else begin 
      if (add4473_i_reg2mem231_0_register_guard) begin 
        add4473_i_reg2mem231_0 <= add4473_i_reg2mem231_0_register_wire[63:0];
      end 
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire aExp_0_load5779_i_reg2mem233_0_register_guard = ((llvm_shang_or_i1_i1_i12050));
  wire [31:0]aExp_0_load5779_i_reg2mem233_0_register_wire = ((llvm_shang_or_i32_i32_i322049[31:0]));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      aExp_0_load5779_i_reg2mem233_0 <= 32'h0;
    end else begin 
      if (aExp_0_load5779_i_reg2mem233_0_register_guard) begin 
        aExp_0_load5779_i_reg2mem233_0 <= aExp_0_load5779_i_reg2mem233_0_register_wire[31:0];
      end 
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire and_i1075_i_reg2mem_0_register_guard = ((llvm_shang_or_i1_i1_i12072));
  wire [63:0]and_i1075_i_reg2mem_0_register_wire = ((llvm_shang_or_i64_i64_i642067[63:0]));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      and_i1075_i_reg2mem_0 <= 64'h0;
    end else begin 
      if (and_i1075_i_reg2mem_0_register_guard) begin 
        and_i1075_i_reg2mem_0 <= and_i1075_i_reg2mem_0_register_wire[63:0];
      end 
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire and_i77_i32_reg2mem_0_register_guard = ((llvm_shang_or_i1_i1_i12094));
  wire [63:0]and_i77_i32_reg2mem_0_register_wire = ((llvm_shang_or_i64_i64_i642089[63:0]));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      and_i77_i32_reg2mem_0 <= 64'h0;
    end else begin 
      if (and_i77_i32_reg2mem_0_register_guard) begin 
        and_i77_i32_reg2mem_0 <= and_i77_i32_reg2mem_0_register_wire[63:0];
      end 
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire aExp_0_load5778_i_reg2mem_0_register_guard = ((llvm_shang_or_i1_i1_i12116));
  wire [31:0]aExp_0_load5778_i_reg2mem_0_register_wire = ((llvm_shang_or_i32_i32_i322111[31:0]));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      aExp_0_load5778_i_reg2mem_0 <= 32'h0;
    end else begin 
      if (aExp_0_load5778_i_reg2mem_0_register_guard) begin 
        aExp_0_load5778_i_reg2mem_0 <= aExp_0_load5778_i_reg2mem_0_register_wire[31:0];
      end 
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire conv1424_i_i_reg2mem223_0_register_guard = ((llvm_shang_or_i1_i1_i12130));
  wire [31:0]conv1424_i_i_reg2mem223_0_register_wire = ((llvm_shang_or_i32_i32_i322127[31:0]));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      conv1424_i_i_reg2mem223_0 <= 32'h0;
    end else begin 
      if (conv1424_i_i_reg2mem223_0_register_guard) begin 
        conv1424_i_i_reg2mem223_0 <= conv1424_i_i_reg2mem223_0_register_wire[31:0];
      end 
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire zSig25_i_i_reg2mem225_0_register_guard = ((llvm_shang_or_i1_i1_i12144));
  wire [63:0]zSig25_i_i_reg2mem225_0_register_wire = ((llvm_shang_or_i64_i64_i642141[63:0]));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      zSig25_i_i_reg2mem225_0 <= 64'h0;
    end else begin 
      if (zSig25_i_i_reg2mem225_0_register_guard) begin 
        zSig25_i_i_reg2mem225_0 <= zSig25_i_i_reg2mem225_0_register_wire[63:0];
      end 
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire zExp27_i_i_reg2mem227_0_register_guard = ((llvm_shang_or_i1_i1_i12157));
  wire [31:0]zExp27_i_i_reg2mem227_0_register_wire = ((llvm_shang_or_i32_i32_i322154[31:0]));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      zExp27_i_i_reg2mem227_0 <= 32'h0;
    end else begin 
      if (zExp27_i_i_reg2mem227_0_register_guard) begin 
        zExp27_i_i_reg2mem227_0 <= zExp27_i_i_reg2mem227_0_register_wire[31:0];
      end 
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire float_exception_flags_shadow_0_register_guard = ((llvm_shang_or_i1_i1_i12171));
  wire [31:0]float_exception_flags_shadow_0_register_wire = ((llvm_shang_or_i32_i32_i322168[31:0]));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      float_exception_flags_shadow_0 <= 32'h0;
    end else begin 
      if (float_exception_flags_shadow_0_register_guard) begin 
        float_exception_flags_shadow_0 <= float_exception_flags_shadow_0_register_wire[31:0];
      end 
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire storemerge1_i_i_i_reg2mem229_0_register_guard = ((llvm_shang_or_i1_i1_i12177));
  wire [63:0]storemerge1_i_i_i_reg2mem229_0_register_wire = ((llvm_shang_or_i64_i64_i642176[63:0]));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      storemerge1_i_i_i_reg2mem229_0 <= 64'h0;
    end else begin 
      if (storemerge1_i_i_i_reg2mem229_0_register_guard) begin 
        storemerge1_i_i_i_reg2mem229_0 <= storemerge1_i_i_i_reg2mem229_0_register_wire[63:0];
      end 
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire zExp2730_i_i_reg2mem_0_register_guard = ((llvm_shang_or_i1_i1_i12182));
  wire [31:0]zExp2730_i_i_reg2mem_0_register_wire = ((llvm_shang_or_i32_i32_i322181[31:0]));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      zExp2730_i_i_reg2mem_0 <= 32'h0;
    end else begin 
      if (zExp2730_i_i_reg2mem_0_register_guard) begin 
        zExp2730_i_i_reg2mem_0 <= zExp2730_i_i_reg2mem_0_register_wire[31:0];
      end 
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire zSig2531_i_i_reg2mem_0_register_guard = ((llvm_shang_or_i1_i1_i12188));
  wire [63:0]zSig2531_i_i_reg2mem_0_register_wire = ((llvm_shang_or_i64_i64_i642187[63:0]));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      zSig2531_i_i_reg2mem_0 <= 64'h0;
    end else begin 
      if (zSig2531_i_i_reg2mem_0_register_guard) begin 
        zSig2531_i_i_reg2mem_0 <= zSig2531_i_i_reg2mem_0_register_wire[63:0];
      end 
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire conv142432_i_i_reg2mem_0_register_guard = ((llvm_shang_or_i1_i1_i12193));
  wire [31:0]conv142432_i_i_reg2mem_0_register_wire = ((llvm_shang_or_i32_i32_i322192[31:0]));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      conv142432_i_i_reg2mem_0 <= 32'h0;
    end else begin 
      if (conv142432_i_i_reg2mem_0_register_guard) begin 
        conv142432_i_i_reg2mem_0 <= conv142432_i_i_reg2mem_0_register_wire[31:0];
      end 
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire float_exception_flags_shadow_1_register_guard = ((llvm_shang_or_i1_i1_i12199));
  wire [31:0]float_exception_flags_shadow_1_register_wire = ((llvm_shang_or_i32_i32_i322198[31:0]));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      float_exception_flags_shadow_1 <= 32'h0;
    end else begin 
      if (float_exception_flags_shadow_1_register_guard) begin 
        float_exception_flags_shadow_1 <= float_exception_flags_shadow_1_register_wire[31:0];
      end 
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire tmp_reg2mem29_ge_0_register_guard = ((llvm_shang_or_i1_i1_i12202));
  wire tmp_reg2mem29_ge_0_register_wire = ((llvm_shang_or_i1_i1_i12201));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      tmp_reg2mem29_ge_0 <= 1'b0;
    end else begin 
      if (tmp_reg2mem29_ge_0_register_guard) begin 
        tmp_reg2mem29_ge_0 <= tmp_reg2mem29_ge_0_register_wire;
      end 
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire tmp24_reg2mem27_ge_0_register_guard = ((llvm_shang_or_i1_i1_i12205));
  wire tmp24_reg2mem27_ge_0_register_wire = ((llvm_shang_or_i1_i1_i12204));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      tmp24_reg2mem27_ge_0 <= 1'b0;
    end else begin 
      if (tmp24_reg2mem27_ge_0_register_guard) begin 
        tmp24_reg2mem27_ge_0 <= tmp24_reg2mem27_ge_0_register_wire;
      end 
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot1r_register_guard = ((llvm_shang_and_i1_i1_i11657));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot1r <= 1'b0;
    end else begin 
      Slot1r <= Slot1r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot2r_register_guard = ((Slot1r));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot2r <= 1'b0;
    end else begin 
      Slot2r <= Slot2r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot3r_register_guard = ((Slot2r));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot3r <= 1'b0;
    end else begin 
      Slot3r <= Slot3r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot4r_register_guard = ((Slot3r));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot4r <= 1'b0;
    end else begin 
      Slot4r <= Slot4r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot44r_register_guard = ((llvm_shang_and_i1_i1_i11658));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot44r <= 1'b0;
    end else begin 
      Slot44r <= Slot44r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot52r_register_guard = ((llvm_shang_and_i1_i1_i11659));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot52r <= 1'b0;
    end else begin 
      Slot52r <= Slot52r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot61r_register_guard = ((llvm_shang_and_i1_i1_i11660));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot61r <= 1'b0;
    end else begin 
      Slot61r <= Slot61r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot70r_register_guard = ((llvm_shang_and_i1_i1_i11661));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot70r <= 1'b0;
    end else begin 
      Slot70r <= Slot70r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot62r_register_guard = ((llvm_shang_and_i1_i1_i11662));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot62r <= 1'b0;
    end else begin 
      Slot62r <= Slot62r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot69r_register_guard = ((llvm_shang_and_i1_i1_i11663));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot69r <= 1'b0;
    end else begin 
      Slot69r <= Slot69r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot71r_register_guard = ((llvm_shang_or_i1_i1_i12206));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot71r <= 1'b0;
    end else begin 
      Slot71r <= Slot71r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot74r_register_guard = ((llvm_shang_and_i1_i1_i11665));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot74r <= 1'b0;
    end else begin 
      Slot74r <= Slot74r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot53r_register_guard = ((llvm_shang_and_i1_i1_i11666));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot53r <= 1'b0;
    end else begin 
      Slot53r <= Slot53r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot56r_register_guard = ((llvm_shang_and_i1_i1_i11667));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot56r <= 1'b0;
    end else begin 
      Slot56r <= Slot56r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot57r_register_guard = ((llvm_shang_and_i1_i1_i11668));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot57r <= 1'b0;
    end else begin 
      Slot57r <= Slot57r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot59r_register_guard = ((llvm_shang_and_i1_i1_i11669));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot59r <= 1'b0;
    end else begin 
      Slot59r <= Slot59r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot58r_register_guard = ((llvm_shang_and_i1_i1_i11670));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot58r <= 1'b0;
    end else begin 
      Slot58r <= Slot58r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot60r_register_guard = ((llvm_shang_or_i1_i1_i12208));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot60r <= 1'b0;
    end else begin 
      Slot60r <= Slot60r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot75r_register_guard = ((llvm_shang_or_i1_i1_i12209));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot75r <= 1'b0;
    end else begin 
      Slot75r <= Slot75r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot76r_register_guard = ((Slot75r));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot76r <= 1'b0;
    end else begin 
      Slot76r <= Slot76r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot54r_register_guard = ((llvm_shang_and_i1_i1_i11673));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot54r <= 1'b0;
    end else begin 
      Slot54r <= Slot54r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot55r_register_guard = ((llvm_shang_and_i1_i1_i11674));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot55r <= 1'b0;
    end else begin 
      Slot55r <= Slot55r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot45r_register_guard = ((llvm_shang_and_i1_i1_i11675));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot45r <= 1'b0;
    end else begin 
      Slot45r <= Slot45r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot47r_register_guard = ((llvm_shang_and_i1_i1_i11676));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot47r <= 1'b0;
    end else begin 
      Slot47r <= Slot47r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot48r_register_guard = ((llvm_shang_and_i1_i1_i11677));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot48r <= 1'b0;
    end else begin 
      Slot48r <= Slot48r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot50r_register_guard = ((llvm_shang_and_i1_i1_i11678));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot50r <= 1'b0;
    end else begin 
      Slot50r <= Slot50r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot49r_register_guard = ((llvm_shang_and_i1_i1_i11679));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot49r <= 1'b0;
    end else begin 
      Slot49r <= Slot49r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot51r_register_guard = ((llvm_shang_or_i1_i1_i12211));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot51r <= 1'b0;
    end else begin 
      Slot51r <= Slot51r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot72r_register_guard = ((llvm_shang_or_i1_i1_i12212));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot72r <= 1'b0;
    end else begin 
      Slot72r <= Slot72r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot73r_register_guard = ((Slot72r));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot73r <= 1'b0;
    end else begin 
      Slot73r <= Slot73r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot77r_register_guard = ((llvm_shang_or_i1_i1_i12213));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot77r <= 1'b0;
    end else begin 
      Slot77r <= Slot77r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot78r_register_guard = ((Slot77r));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot78r <= 1'b0;
    end else begin 
      Slot78r <= Slot78r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot79r_register_guard = ((llvm_shang_and_i1_i1_i11682));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot79r <= 1'b0;
    end else begin 
      Slot79r <= Slot79r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot80r_register_guard = ((llvm_shang_or_i1_i1_i12214));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot80r <= 1'b0;
    end else begin 
      Slot80r <= Slot80r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot81r_register_guard = ((Slot80r));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot81r <= 1'b0;
    end else begin 
      Slot81r <= Slot81r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot82r_register_guard = ((Slot81r));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot82r <= 1'b0;
    end else begin 
      Slot82r <= Slot82r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot83r_register_guard = ((Slot82r));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot83r <= 1'b0;
    end else begin 
      Slot83r <= Slot83r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot84r_register_guard = ((Slot83r));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot84r <= 1'b0;
    end else begin 
      Slot84r <= Slot84r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot85r_register_guard = ((Slot84r));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot85r <= 1'b0;
    end else begin 
      Slot85r <= Slot85r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot86r_register_guard = ((Slot85r));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot86r <= 1'b0;
    end else begin 
      Slot86r <= Slot86r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot87r_register_guard = ((llvm_shang_and_i1_i1_i11684));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot87r <= 1'b0;
    end else begin 
      Slot87r <= Slot87r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot88r_register_guard = ((llvm_shang_and_i1_i1_i11685));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot88r <= 1'b0;
    end else begin 
      Slot88r <= Slot88r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot91r_register_guard = ((llvm_shang_and_i1_i1_i11686));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot91r <= 1'b0;
    end else begin 
      Slot91r <= Slot91r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot92r_register_guard = ((llvm_shang_and_i1_i1_i11687));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot92r <= 1'b0;
    end else begin 
      Slot92r <= Slot92r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot94r_register_guard = ((llvm_shang_and_i1_i1_i11688));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot94r <= 1'b0;
    end else begin 
      Slot94r <= Slot94r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot93r_register_guard = ((llvm_shang_and_i1_i1_i11689));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot93r <= 1'b0;
    end else begin 
      Slot93r <= Slot93r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot95r_register_guard = ((llvm_shang_or_i1_i1_i12215));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot95r <= 1'b0;
    end else begin 
      Slot95r <= Slot95r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot96r_register_guard = ((Slot95r));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot96r <= 1'b0;
    end else begin 
      Slot96r <= Slot96r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot97r_register_guard = ((llvm_shang_and_i1_i1_i11690));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot97r <= 1'b0;
    end else begin 
      Slot97r <= Slot97r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot89r_register_guard = ((llvm_shang_and_i1_i1_i11691));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot89r <= 1'b0;
    end else begin 
      Slot89r <= Slot89r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot98r_register_guard = ((llvm_shang_or_i1_i1_i12218));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot98r <= 1'b0;
    end else begin 
      Slot98r <= Slot98r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot99r_register_guard = ((Slot98r));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot99r <= 1'b0;
    end else begin 
      Slot99r <= Slot99r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot100r_register_guard = ((llvm_shang_or_i1_i1_i12219));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot100r <= 1'b0;
    end else begin 
      Slot100r <= Slot100r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot101r_register_guard = ((Slot100r));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot101r <= 1'b0;
    end else begin 
      Slot101r <= Slot101r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot102r_register_guard = ((Slot101r));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot102r <= 1'b0;
    end else begin 
      Slot102r <= Slot102r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot90r_register_guard = ((llvm_shang_or_i1_i1_i12220));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot90r <= 1'b0;
    end else begin 
      Slot90r <= Slot90r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot46r_register_guard = ((llvm_shang_and_i1_i1_i11698));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot46r <= 1'b0;
    end else begin 
      Slot46r <= Slot46r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot5r_register_guard = ((llvm_shang_and_i1_i1_i11699));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot5r <= 1'b0;
    end else begin 
      Slot5r <= Slot5r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot12r_register_guard = ((llvm_shang_and_i1_i1_i11700));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot12r <= 1'b0;
    end else begin 
      Slot12r <= Slot12r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot22r_register_guard = ((llvm_shang_and_i1_i1_i11701));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot22r <= 1'b0;
    end else begin 
      Slot22r <= Slot22r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot43r_register_guard = ((llvm_shang_and_i1_i1_i11702));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot43r <= 1'b0;
    end else begin 
      Slot43r <= Slot43r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot42r_register_guard = ((llvm_shang_and_i1_i1_i11703));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot42r <= 1'b0;
    end else begin 
      Slot42r <= Slot42r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot23r_register_guard = ((llvm_shang_and_i1_i1_i11704));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot23r <= 1'b0;
    end else begin 
      Slot23r <= Slot23r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot13r_register_guard = ((llvm_shang_and_i1_i1_i11705));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot13r <= 1'b0;
    end else begin 
      Slot13r <= Slot13r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot16r_register_guard = ((llvm_shang_and_i1_i1_i11706));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot16r <= 1'b0;
    end else begin 
      Slot16r <= Slot16r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot17r_register_guard = ((llvm_shang_and_i1_i1_i11707));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot17r <= 1'b0;
    end else begin 
      Slot17r <= Slot17r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot19r_register_guard = ((llvm_shang_and_i1_i1_i11708));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot19r <= 1'b0;
    end else begin 
      Slot19r <= Slot19r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot18r_register_guard = ((llvm_shang_and_i1_i1_i11709));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot18r <= 1'b0;
    end else begin 
      Slot18r <= Slot18r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot14r_register_guard = ((llvm_shang_and_i1_i1_i11710));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot14r <= 1'b0;
    end else begin 
      Slot14r <= Slot14r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot15r_register_guard = ((llvm_shang_and_i1_i1_i11711));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot15r <= 1'b0;
    end else begin 
      Slot15r <= Slot15r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot6r_register_guard = ((llvm_shang_and_i1_i1_i11712));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot6r <= 1'b0;
    end else begin 
      Slot6r <= Slot6r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot8r_register_guard = ((llvm_shang_and_i1_i1_i11713));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot8r <= 1'b0;
    end else begin 
      Slot8r <= Slot8r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot9r_register_guard = ((llvm_shang_and_i1_i1_i11714));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot9r <= 1'b0;
    end else begin 
      Slot9r <= Slot9r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot11r_register_guard = ((llvm_shang_and_i1_i1_i11715));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot11r <= 1'b0;
    end else begin 
      Slot11r <= Slot11r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot10r_register_guard = ((llvm_shang_and_i1_i1_i11716));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot10r <= 1'b0;
    end else begin 
      Slot10r <= Slot10r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot20r_register_guard = ((llvm_shang_or_i1_i1_i12225));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot20r <= 1'b0;
    end else begin 
      Slot20r <= Slot20r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot21r_register_guard = ((Slot20r));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot21r <= 1'b0;
    end else begin 
      Slot21r <= Slot21r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot24r_register_guard = ((llvm_shang_or_i1_i1_i12226));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot24r <= 1'b0;
    end else begin 
      Slot24r <= Slot24r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot25r_register_guard = ((Slot24r));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot25r <= 1'b0;
    end else begin 
      Slot25r <= Slot25r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot26r_register_guard = ((llvm_shang_and_i1_i1_i11719));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot26r <= 1'b0;
    end else begin 
      Slot26r <= Slot26r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot27r_register_guard = ((llvm_shang_and_i1_i1_i11720));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot27r <= 1'b0;
    end else begin 
      Slot27r <= Slot27r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot30r_register_guard = ((llvm_shang_and_i1_i1_i11721));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot30r <= 1'b0;
    end else begin 
      Slot30r <= Slot30r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot31r_register_guard = ((llvm_shang_and_i1_i1_i11722));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot31r <= 1'b0;
    end else begin 
      Slot31r <= Slot31r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot33r_register_guard = ((llvm_shang_and_i1_i1_i11723));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot33r <= 1'b0;
    end else begin 
      Slot33r <= Slot33r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot32r_register_guard = ((llvm_shang_and_i1_i1_i11724));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot32r <= 1'b0;
    end else begin 
      Slot32r <= Slot32r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot34r_register_guard = ((llvm_shang_or_i1_i1_i12227));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot34r <= 1'b0;
    end else begin 
      Slot34r <= Slot34r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot35r_register_guard = ((Slot34r));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot35r <= 1'b0;
    end else begin 
      Slot35r <= Slot35r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot36r_register_guard = ((llvm_shang_and_i1_i1_i11725));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot36r <= 1'b0;
    end else begin 
      Slot36r <= Slot36r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot28r_register_guard = ((llvm_shang_and_i1_i1_i11726));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot28r <= 1'b0;
    end else begin 
      Slot28r <= Slot28r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot37r_register_guard = ((llvm_shang_or_i1_i1_i12230));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot37r <= 1'b0;
    end else begin 
      Slot37r <= Slot37r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot38r_register_guard = ((Slot37r));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot38r <= 1'b0;
    end else begin 
      Slot38r <= Slot38r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot39r_register_guard = ((llvm_shang_or_i1_i1_i12231));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot39r <= 1'b0;
    end else begin 
      Slot39r <= Slot39r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot40r_register_guard = ((Slot39r));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot40r <= 1'b0;
    end else begin 
      Slot40r <= Slot40r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot41r_register_guard = ((Slot40r));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot41r <= 1'b0;
    end else begin 
      Slot41r <= Slot41r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot29r_register_guard = ((llvm_shang_or_i1_i1_i12232));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot29r <= 1'b0;
    end else begin 
      Slot29r <= Slot29r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot7r_register_guard = ((llvm_shang_and_i1_i1_i11733));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot7r <= 1'b0;
    end else begin 
      Slot7r <= Slot7r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot63r_register_guard = ((llvm_shang_or_i1_i1_i12237));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot63r <= 1'b0;
    end else begin 
      Slot63r <= Slot63r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot64r_register_guard = ((llvm_shang_and_i1_i1_i11740));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot64r <= 1'b0;
    end else begin 
      Slot64r <= Slot64r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot65r_register_guard = ((llvm_shang_or_i1_i1_i12238));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot65r <= 1'b0;
    end else begin 
      Slot65r <= Slot65r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot66r_register_guard = ((llvm_shang_and_i1_i1_i11742));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot66r <= 1'b0;
    end else begin 
      Slot66r <= Slot66r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot67r_register_guard = ((llvm_shang_or_i1_i1_i12239));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot67r <= 1'b0;
    end else begin 
      Slot67r <= Slot67r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot68r_register_guard = ((Slot67r));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot68r <= 1'b0;
    end else begin 
      Slot68r <= Slot68r_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire Slot103r_register_guard = ((llvm_shang_or_i1_i1_i12251));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      Slot103r <= 1'b0;
    end else begin 
      Slot103r <= Slot103r_register_guard;
    end //else reset
  end //always @(..)
  
  //(* ramstyle = "no_rw_check", max_depth = 1 *) logic[3:0][7:0] mem1ram[0:1-1];
  reg[31:0] mem1ram[0:1-1];
  initial  $readmemh("mem1ram_init.txt", mem1ram);
  /* Offset: 0 0x44689f8 float_exception_flags*/
  // Synthesized MUX
  wire mem1addr_register_guard = ((llvm_shang_or_i1_i1_i11753));
  wire [1:0]mem1addr_register_wire = ((llvm_shang_or_i2_i2_i21752[1:0]));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      mem1addr <= 2'h0;
    end else begin 
      if (mem1addr_register_guard) begin 
        mem1addr <= mem1addr_register_wire[1:0];
      end 
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire mem1en_register_guard = ((llvm_shang_or_i1_i1_i11755));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      mem1en <= 1'b0;
    end else begin 
      mem1en <= mem1en_register_guard;
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire mem1wdata_register_guard = ((Slot103r));
  wire [31:0]mem1wdata_register_wire = ((float_exception_flags_shadow_4[31:0]));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      mem1wdata <= 32'h0;
    end else begin 
      if (mem1wdata_register_guard) begin 
        mem1wdata <= mem1wdata_register_wire[31:0];
      end 
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire mem1wen_register_guard = ((Slot103r));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      mem1wen <= 1'b0;
    end else begin 
      mem1wen <= mem1wen_register_guard;
    end //else reset
  end //always @(..)
  
  always @(posedge clk)begin 
    if (mem1wen) begin 
      mem1ram[0] <= mem1wdata[31:0];
    end else begin 
      mem1rdata[31:0] <= mem1ram[0];
    end 
  end //always @(..)
  
  //(* ramstyle = "no_rw_check", max_depth = 256 *) logic[3:0][7:0] mem2ram[0:256-1];
  reg[31:0] mem2ram[0:256-1];
  initial  $readmemh("mem2ram_init.txt", mem2ram);
  /* Offset: 0 0x4468ad8 countLeadingZerosHigh*/
  // Synthesized MUX
  wire mem2addr_register_guard = ((Slot81r));
  wire [9:0]mem2addr_register_wire = ((llvm_shang_bit_extract_i10_i32_i16_i16[9:0]));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      mem2addr <= 10'h0;
    end else begin 
      if (mem2addr_register_guard) begin 
        mem2addr <= mem2addr_register_wire[9:0];
      end 
    end //else reset
  end //always @(..)
  
  // Synthesized MUX
  wire mem2en_register_guard = ((Slot81r));
  always @(posedge clk, negedge rstN)begin 
    if (!rstN)begin // reset registers
      mem2en <= 1'b0;
    end else begin 
      mem2en <= mem2en_register_guard;
    end //else reset
  end //always @(..)
  
  always @(posedge clk)begin 
    mem2rdata[31:0] <= mem2ram[mem2addr[9:2]];
  end //always @(..)
  
endmodule 
