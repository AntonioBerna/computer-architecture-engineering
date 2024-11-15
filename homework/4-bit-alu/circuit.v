/*
 * Generated by Digital. Don't modify this file!
 * Any changes will be lost if this file is regenerated.
 */
module DIG_ROM_64X2_ALU_1 (
    input [5:0] A,
    input sel,
    output reg [1:0] D
);
    reg [1:0] my_rom [0:57];

    always @ (*) begin
        if (~sel)
            D = 2'hz;
        else if (A > 6'h39)
            D = 2'h0;
        else
            D = my_rom[A];
    end

    initial begin
        my_rom[0] = 2'h0;
        my_rom[1] = 2'h2;
        my_rom[2] = 2'h2;
        my_rom[3] = 2'h1;
        my_rom[4] = 2'h0;
        my_rom[5] = 2'h0;
        my_rom[6] = 2'h1;
        my_rom[7] = 2'h1;
        my_rom[8] = 2'h0;
        my_rom[9] = 2'h0;
        my_rom[10] = 2'h0;
        my_rom[11] = 2'h2;
        my_rom[12] = 2'h0;
        my_rom[13] = 2'h0;
        my_rom[14] = 2'h0;
        my_rom[15] = 2'h0;
        my_rom[16] = 2'h0;
        my_rom[17] = 2'h2;
        my_rom[18] = 2'h2;
        my_rom[19] = 2'h2;
        my_rom[20] = 2'h0;
        my_rom[21] = 2'h0;
        my_rom[22] = 2'h0;
        my_rom[23] = 2'h0;
        my_rom[24] = 2'h0;
        my_rom[25] = 2'h2;
        my_rom[26] = 2'h2;
        my_rom[27] = 2'h0;
        my_rom[28] = 2'h0;
        my_rom[29] = 2'h0;
        my_rom[30] = 2'h0;
        my_rom[31] = 2'h0;
        my_rom[32] = 2'h2;
        my_rom[33] = 2'h0;
        my_rom[34] = 2'h0;
        my_rom[35] = 2'h2;
        my_rom[36] = 2'h0;
        my_rom[37] = 2'h0;
        my_rom[38] = 2'h0;
        my_rom[39] = 2'h0;
        my_rom[40] = 2'h2;
        my_rom[41] = 2'h2;
        my_rom[42] = 2'h2;
        my_rom[43] = 2'h0;
        my_rom[44] = 2'h0;
        my_rom[45] = 2'h0;
        my_rom[46] = 2'h0;
        my_rom[47] = 2'h0;
        my_rom[48] = 2'h2;
        my_rom[49] = 2'h0;
        my_rom[50] = 2'h0;
        my_rom[51] = 2'h0;
        my_rom[52] = 2'h0;
        my_rom[53] = 2'h0;
        my_rom[54] = 2'h0;
        my_rom[55] = 2'h0;
        my_rom[56] = 2'h2;
        my_rom[57] = 2'h2;
    end
endmodule

module DIG_ROM_128X2_ALU_2 (
    input [6:0] A,
    input sel,
    output reg [1:0] D
);
    reg [1:0] my_rom [0:121];

    always @ (*) begin
        if (~sel)
            D = 2'hz;
        else if (A > 7'h79)
            D = 2'h0;
        else
            D = my_rom[A];
    end

    initial begin
        my_rom[0] = 2'h0;
        my_rom[1] = 2'h2;
        my_rom[2] = 2'h2;
        my_rom[3] = 2'h1;
        my_rom[4] = 2'h0;
        my_rom[5] = 2'h0;
        my_rom[6] = 2'h1;
        my_rom[7] = 2'h1;
        my_rom[8] = 2'h0;
        my_rom[9] = 2'h0;
        my_rom[10] = 2'h0;
        my_rom[11] = 2'h2;
        my_rom[12] = 2'h0;
        my_rom[13] = 2'h0;
        my_rom[14] = 2'h0;
        my_rom[15] = 2'h0;
        my_rom[16] = 2'h0;
        my_rom[17] = 2'h2;
        my_rom[18] = 2'h2;
        my_rom[19] = 2'h2;
        my_rom[20] = 2'h0;
        my_rom[21] = 2'h0;
        my_rom[22] = 2'h0;
        my_rom[23] = 2'h0;
        my_rom[24] = 2'h0;
        my_rom[25] = 2'h2;
        my_rom[26] = 2'h2;
        my_rom[27] = 2'h0;
        my_rom[28] = 2'h0;
        my_rom[29] = 2'h0;
        my_rom[30] = 2'h0;
        my_rom[31] = 2'h0;
        my_rom[32] = 2'h2;
        my_rom[33] = 2'h0;
        my_rom[34] = 2'h0;
        my_rom[35] = 2'h2;
        my_rom[36] = 2'h0;
        my_rom[37] = 2'h0;
        my_rom[38] = 2'h0;
        my_rom[39] = 2'h0;
        my_rom[40] = 2'h2;
        my_rom[41] = 2'h2;
        my_rom[42] = 2'h2;
        my_rom[43] = 2'h0;
        my_rom[44] = 2'h0;
        my_rom[45] = 2'h0;
        my_rom[46] = 2'h0;
        my_rom[47] = 2'h0;
        my_rom[48] = 2'h2;
        my_rom[49] = 2'h0;
        my_rom[50] = 2'h0;
        my_rom[51] = 2'h0;
        my_rom[52] = 2'h0;
        my_rom[53] = 2'h0;
        my_rom[54] = 2'h0;
        my_rom[55] = 2'h0;
        my_rom[56] = 2'h2;
        my_rom[57] = 2'h2;
        my_rom[58] = 2'h0;
        my_rom[59] = 2'h0;
        my_rom[60] = 2'h0;
        my_rom[61] = 2'h0;
        my_rom[62] = 2'h0;
        my_rom[63] = 2'h0;
        my_rom[64] = 2'h2;
        my_rom[65] = 2'h1;
        my_rom[66] = 2'h1;
        my_rom[67] = 2'h3;
        my_rom[68] = 2'h2;
        my_rom[69] = 2'h2;
        my_rom[70] = 2'h3;
        my_rom[71] = 2'h3;
        my_rom[72] = 2'h0;
        my_rom[73] = 2'h0;
        my_rom[74] = 2'h0;
        my_rom[75] = 2'h2;
        my_rom[76] = 2'h0;
        my_rom[77] = 2'h0;
        my_rom[78] = 2'h0;
        my_rom[79] = 2'h0;
        my_rom[80] = 2'h0;
        my_rom[81] = 2'h2;
        my_rom[82] = 2'h2;
        my_rom[83] = 2'h2;
        my_rom[84] = 2'h0;
        my_rom[85] = 2'h0;
        my_rom[86] = 2'h0;
        my_rom[87] = 2'h0;
        my_rom[88] = 2'h0;
        my_rom[89] = 2'h2;
        my_rom[90] = 2'h2;
        my_rom[91] = 2'h0;
        my_rom[92] = 2'h0;
        my_rom[93] = 2'h0;
        my_rom[94] = 2'h0;
        my_rom[95] = 2'h0;
        my_rom[96] = 2'h2;
        my_rom[97] = 2'h0;
        my_rom[98] = 2'h0;
        my_rom[99] = 2'h2;
        my_rom[100] = 2'h0;
        my_rom[101] = 2'h0;
        my_rom[102] = 2'h0;
        my_rom[103] = 2'h0;
        my_rom[104] = 2'h2;
        my_rom[105] = 2'h2;
        my_rom[106] = 2'h2;
        my_rom[107] = 2'h0;
        my_rom[108] = 2'h0;
        my_rom[109] = 2'h0;
        my_rom[110] = 2'h0;
        my_rom[111] = 2'h0;
        my_rom[112] = 2'h2;
        my_rom[113] = 2'h0;
        my_rom[114] = 2'h0;
        my_rom[115] = 2'h0;
        my_rom[116] = 2'h0;
        my_rom[117] = 2'h0;
        my_rom[118] = 2'h0;
        my_rom[119] = 2'h0;
        my_rom[120] = 2'h2;
        my_rom[121] = 2'h2;
    end
endmodule

module DIG_ROM_128X2_ALU_3 (
    input [6:0] A,
    input sel,
    output reg [1:0] D
);
    reg [1:0] my_rom [0:121];

    always @ (*) begin
        if (~sel)
            D = 2'hz;
        else if (A > 7'h79)
            D = 2'h0;
        else
            D = my_rom[A];
    end

    initial begin
        my_rom[0] = 2'h0;
        my_rom[1] = 2'h2;
        my_rom[2] = 2'h2;
        my_rom[3] = 2'h1;
        my_rom[4] = 2'h0;
        my_rom[5] = 2'h0;
        my_rom[6] = 2'h1;
        my_rom[7] = 2'h1;
        my_rom[8] = 2'h0;
        my_rom[9] = 2'h0;
        my_rom[10] = 2'h0;
        my_rom[11] = 2'h2;
        my_rom[12] = 2'h0;
        my_rom[13] = 2'h0;
        my_rom[14] = 2'h0;
        my_rom[15] = 2'h0;
        my_rom[16] = 2'h0;
        my_rom[17] = 2'h2;
        my_rom[18] = 2'h2;
        my_rom[19] = 2'h2;
        my_rom[20] = 2'h0;
        my_rom[21] = 2'h0;
        my_rom[22] = 2'h0;
        my_rom[23] = 2'h0;
        my_rom[24] = 2'h0;
        my_rom[25] = 2'h2;
        my_rom[26] = 2'h2;
        my_rom[27] = 2'h0;
        my_rom[28] = 2'h0;
        my_rom[29] = 2'h0;
        my_rom[30] = 2'h0;
        my_rom[31] = 2'h0;
        my_rom[32] = 2'h2;
        my_rom[33] = 2'h0;
        my_rom[34] = 2'h0;
        my_rom[35] = 2'h2;
        my_rom[36] = 2'h0;
        my_rom[37] = 2'h0;
        my_rom[38] = 2'h0;
        my_rom[39] = 2'h0;
        my_rom[40] = 2'h2;
        my_rom[41] = 2'h2;
        my_rom[42] = 2'h2;
        my_rom[43] = 2'h0;
        my_rom[44] = 2'h0;
        my_rom[45] = 2'h0;
        my_rom[46] = 2'h0;
        my_rom[47] = 2'h0;
        my_rom[48] = 2'h2;
        my_rom[49] = 2'h0;
        my_rom[50] = 2'h0;
        my_rom[51] = 2'h0;
        my_rom[52] = 2'h0;
        my_rom[53] = 2'h0;
        my_rom[54] = 2'h0;
        my_rom[55] = 2'h0;
        my_rom[56] = 2'h2;
        my_rom[57] = 2'h2;
        my_rom[58] = 2'h0;
        my_rom[59] = 2'h0;
        my_rom[60] = 2'h0;
        my_rom[61] = 2'h0;
        my_rom[62] = 2'h0;
        my_rom[63] = 2'h0;
        my_rom[64] = 2'h2;
        my_rom[65] = 2'h1;
        my_rom[66] = 2'h1;
        my_rom[67] = 2'h3;
        my_rom[68] = 2'h2;
        my_rom[69] = 2'h2;
        my_rom[70] = 2'h3;
        my_rom[71] = 2'h3;
        my_rom[72] = 2'h0;
        my_rom[73] = 2'h0;
        my_rom[74] = 2'h0;
        my_rom[75] = 2'h2;
        my_rom[76] = 2'h0;
        my_rom[77] = 2'h0;
        my_rom[78] = 2'h0;
        my_rom[79] = 2'h0;
        my_rom[80] = 2'h0;
        my_rom[81] = 2'h2;
        my_rom[82] = 2'h2;
        my_rom[83] = 2'h2;
        my_rom[84] = 2'h0;
        my_rom[85] = 2'h0;
        my_rom[86] = 2'h0;
        my_rom[87] = 2'h0;
        my_rom[88] = 2'h0;
        my_rom[89] = 2'h2;
        my_rom[90] = 2'h2;
        my_rom[91] = 2'h0;
        my_rom[92] = 2'h0;
        my_rom[93] = 2'h0;
        my_rom[94] = 2'h0;
        my_rom[95] = 2'h0;
        my_rom[96] = 2'h2;
        my_rom[97] = 2'h0;
        my_rom[98] = 2'h0;
        my_rom[99] = 2'h2;
        my_rom[100] = 2'h0;
        my_rom[101] = 2'h0;
        my_rom[102] = 2'h0;
        my_rom[103] = 2'h0;
        my_rom[104] = 2'h2;
        my_rom[105] = 2'h2;
        my_rom[106] = 2'h2;
        my_rom[107] = 2'h0;
        my_rom[108] = 2'h0;
        my_rom[109] = 2'h0;
        my_rom[110] = 2'h0;
        my_rom[111] = 2'h0;
        my_rom[112] = 2'h2;
        my_rom[113] = 2'h0;
        my_rom[114] = 2'h0;
        my_rom[115] = 2'h0;
        my_rom[116] = 2'h0;
        my_rom[117] = 2'h0;
        my_rom[118] = 2'h0;
        my_rom[119] = 2'h0;
        my_rom[120] = 2'h2;
        my_rom[121] = 2'h2;
    end
endmodule

module DIG_ROM_128X2_ALU_4 (
    input [6:0] A,
    input sel,
    output reg [1:0] D
);
    reg [1:0] my_rom [0:121];

    always @ (*) begin
        if (~sel)
            D = 2'hz;
        else if (A > 7'h79)
            D = 2'h0;
        else
            D = my_rom[A];
    end

    initial begin
        my_rom[0] = 2'h0;
        my_rom[1] = 2'h2;
        my_rom[2] = 2'h2;
        my_rom[3] = 2'h1;
        my_rom[4] = 2'h0;
        my_rom[5] = 2'h0;
        my_rom[6] = 2'h1;
        my_rom[7] = 2'h1;
        my_rom[8] = 2'h0;
        my_rom[9] = 2'h0;
        my_rom[10] = 2'h0;
        my_rom[11] = 2'h2;
        my_rom[12] = 2'h0;
        my_rom[13] = 2'h0;
        my_rom[14] = 2'h0;
        my_rom[15] = 2'h0;
        my_rom[16] = 2'h0;
        my_rom[17] = 2'h2;
        my_rom[18] = 2'h2;
        my_rom[19] = 2'h2;
        my_rom[20] = 2'h0;
        my_rom[21] = 2'h0;
        my_rom[22] = 2'h0;
        my_rom[23] = 2'h0;
        my_rom[24] = 2'h0;
        my_rom[25] = 2'h2;
        my_rom[26] = 2'h2;
        my_rom[27] = 2'h0;
        my_rom[28] = 2'h0;
        my_rom[29] = 2'h0;
        my_rom[30] = 2'h0;
        my_rom[31] = 2'h0;
        my_rom[32] = 2'h2;
        my_rom[33] = 2'h0;
        my_rom[34] = 2'h0;
        my_rom[35] = 2'h2;
        my_rom[36] = 2'h0;
        my_rom[37] = 2'h0;
        my_rom[38] = 2'h0;
        my_rom[39] = 2'h0;
        my_rom[40] = 2'h2;
        my_rom[41] = 2'h2;
        my_rom[42] = 2'h2;
        my_rom[43] = 2'h0;
        my_rom[44] = 2'h0;
        my_rom[45] = 2'h0;
        my_rom[46] = 2'h0;
        my_rom[47] = 2'h0;
        my_rom[48] = 2'h2;
        my_rom[49] = 2'h0;
        my_rom[50] = 2'h0;
        my_rom[51] = 2'h0;
        my_rom[52] = 2'h0;
        my_rom[53] = 2'h0;
        my_rom[54] = 2'h0;
        my_rom[55] = 2'h0;
        my_rom[56] = 2'h2;
        my_rom[57] = 2'h2;
        my_rom[58] = 2'h0;
        my_rom[59] = 2'h0;
        my_rom[60] = 2'h0;
        my_rom[61] = 2'h0;
        my_rom[62] = 2'h0;
        my_rom[63] = 2'h0;
        my_rom[64] = 2'h2;
        my_rom[65] = 2'h1;
        my_rom[66] = 2'h1;
        my_rom[67] = 2'h3;
        my_rom[68] = 2'h2;
        my_rom[69] = 2'h2;
        my_rom[70] = 2'h3;
        my_rom[71] = 2'h3;
        my_rom[72] = 2'h0;
        my_rom[73] = 2'h0;
        my_rom[74] = 2'h0;
        my_rom[75] = 2'h2;
        my_rom[76] = 2'h0;
        my_rom[77] = 2'h0;
        my_rom[78] = 2'h0;
        my_rom[79] = 2'h0;
        my_rom[80] = 2'h0;
        my_rom[81] = 2'h2;
        my_rom[82] = 2'h2;
        my_rom[83] = 2'h2;
        my_rom[84] = 2'h0;
        my_rom[85] = 2'h0;
        my_rom[86] = 2'h0;
        my_rom[87] = 2'h0;
        my_rom[88] = 2'h0;
        my_rom[89] = 2'h2;
        my_rom[90] = 2'h2;
        my_rom[91] = 2'h0;
        my_rom[92] = 2'h0;
        my_rom[93] = 2'h0;
        my_rom[94] = 2'h0;
        my_rom[95] = 2'h0;
        my_rom[96] = 2'h2;
        my_rom[97] = 2'h0;
        my_rom[98] = 2'h0;
        my_rom[99] = 2'h2;
        my_rom[100] = 2'h0;
        my_rom[101] = 2'h0;
        my_rom[102] = 2'h0;
        my_rom[103] = 2'h0;
        my_rom[104] = 2'h2;
        my_rom[105] = 2'h2;
        my_rom[106] = 2'h2;
        my_rom[107] = 2'h0;
        my_rom[108] = 2'h0;
        my_rom[109] = 2'h0;
        my_rom[110] = 2'h0;
        my_rom[111] = 2'h0;
        my_rom[112] = 2'h2;
        my_rom[113] = 2'h0;
        my_rom[114] = 2'h0;
        my_rom[115] = 2'h0;
        my_rom[116] = 2'h0;
        my_rom[117] = 2'h0;
        my_rom[118] = 2'h0;
        my_rom[119] = 2'h0;
        my_rom[120] = 2'h2;
        my_rom[121] = 2'h2;
    end
endmodule


module rom (
  input b_0,
  input a_0,
  input b_1,
  input a_1,
  input b_2,
  input a_2,
  input b_3,
  input a_3,
  input op_1,
  input op_2,
  input op_3,
  input op_0,
  output r_0,
  output r_1,
  output r_2,
  output r_3,
  output c_out
);
  wire [5:0] s0;
  wire [1:0] s1;
  wire [3:0] s2;
  wire [6:0] s3;
  wire [1:0] s4;
  wire [6:0] s5;
  wire [6:0] s6;
  wire [1:0] s7;
  wire [1:0] s8;
  assign s2[0] = op_3;
  assign s2[1] = op_2;
  assign s2[2] = op_1;
  assign s2[3] = op_0;
  assign s0[0] = b_0;
  assign s0[1] = a_0;
  assign s0[5:2] = s2;
  // ALU_1
  DIG_ROM_64X2_ALU_1 DIG_ROM_64X2_ALU_1_i0 (
    .A( s0 ),
    .sel( 1'b1 ),
    .D( s1 )
  );
  assign s3[0] = b_1;
  assign s3[1] = a_1;
  assign s3[5:2] = s2;
  assign s3[6] = s1[0];
  assign r_0 = s1[1];
  // ALU_2
  DIG_ROM_128X2_ALU_2 DIG_ROM_128X2_ALU_2_i1 (
    .A( s3 ),
    .sel( 1'b1 ),
    .D( s4 )
  );
  assign s5[0] = b_2;
  assign s5[1] = a_2;
  assign s5[5:2] = s2;
  assign s5[6] = s4[0];
  assign r_1 = s4[1];
  // ALU_3
  DIG_ROM_128X2_ALU_3 DIG_ROM_128X2_ALU_3_i2 (
    .A( s5 ),
    .sel( 1'b1 ),
    .D( s8 )
  );
  assign s6[0] = b_3;
  assign s6[1] = a_3;
  assign s6[5:2] = s2;
  assign s6[6] = s8[0];
  assign r_2 = s8[1];
  // ALU_4
  DIG_ROM_128X2_ALU_4 DIG_ROM_128X2_ALU_4_i3 (
    .A( s6 ),
    .sel( 1'b1 ),
    .D( s7 )
  );
  assign c_out = s7[0];
  assign r_3 = s7[1];
endmodule