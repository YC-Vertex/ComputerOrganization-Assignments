/* Header */
`include "DotOp.v"

module GPTree (
    input   wire [32:1] G_0,
    input   wire [32:1] P_0,
    input   wire    ci,
    output  wire [32:1] co
);

    wire [32:1] Gf; // final G, G_{i:1}
    wire [32:1] Pf; // final P, P_{i:1}

/* Content */
wire [32:1] G_1;
wire [32:1] P_1;
wire [32:1] G_2;
wire [32:1] P_2;
wire [32:1] G_3;
wire [32:1] P_3;
wire [32:1] G_4;
wire [32:1] P_4;
wire [32:1] G_5;
wire [32:1] P_5;
wire [32:1] G_6;
wire [32:1] P_6;
wire [32:1] G_7;
wire [32:1] P_7;

// tree level = 1
// bit position = 32
DotOp dotop_0_0(G_0[32], P_0[32], G_0[31], P_0[31], G_1[32], P_1[32]);
// bit position = 31
assign G_1[31] = G_0[31];
assign P_1[31] = P_0[31];
// bit position = 30
DotOp dotop_0_2(G_0[30], P_0[30], G_0[29], P_0[29], G_1[30], P_1[30]);
// bit position = 29
assign G_1[29] = G_0[29];
assign P_1[29] = P_0[29];
// bit position = 28
DotOp dotop_0_4(G_0[28], P_0[28], G_0[27], P_0[27], G_1[28], P_1[28]);
// bit position = 27
assign G_1[27] = G_0[27];
assign P_1[27] = P_0[27];
// bit position = 26
DotOp dotop_0_6(G_0[26], P_0[26], G_0[25], P_0[25], G_1[26], P_1[26]);
// bit position = 25
assign G_1[25] = G_0[25];
assign P_1[25] = P_0[25];
// bit position = 24
DotOp dotop_0_8(G_0[24], P_0[24], G_0[23], P_0[23], G_1[24], P_1[24]);
// bit position = 23
assign G_1[23] = G_0[23];
assign P_1[23] = P_0[23];
// bit position = 22
DotOp dotop_0_10(G_0[22], P_0[22], G_0[21], P_0[21], G_1[22], P_1[22]);
// bit position = 21
assign G_1[21] = G_0[21];
assign P_1[21] = P_0[21];
// bit position = 20
DotOp dotop_0_12(G_0[20], P_0[20], G_0[19], P_0[19], G_1[20], P_1[20]);
// bit position = 19
assign G_1[19] = G_0[19];
assign P_1[19] = P_0[19];
// bit position = 18
DotOp dotop_0_14(G_0[18], P_0[18], G_0[17], P_0[17], G_1[18], P_1[18]);
// bit position = 17
assign G_1[17] = G_0[17];
assign P_1[17] = P_0[17];
// bit position = 16
DotOp dotop_0_16(G_0[16], P_0[16], G_0[15], P_0[15], G_1[16], P_1[16]);
// bit position = 15
assign G_1[15] = G_0[15];
assign P_1[15] = P_0[15];
// bit position = 14
DotOp dotop_0_18(G_0[14], P_0[14], G_0[13], P_0[13], G_1[14], P_1[14]);
// bit position = 13
assign G_1[13] = G_0[13];
assign P_1[13] = P_0[13];
// bit position = 12
DotOp dotop_0_20(G_0[12], P_0[12], G_0[11], P_0[11], G_1[12], P_1[12]);
// bit position = 11
assign G_1[11] = G_0[11];
assign P_1[11] = P_0[11];
// bit position = 10
DotOp dotop_0_22(G_0[10], P_0[10], G_0[9], P_0[9], G_1[10], P_1[10]);
// bit position = 9
assign G_1[9] = G_0[9];
assign P_1[9] = P_0[9];
// bit position = 8
DotOp dotop_0_24(G_0[8], P_0[8], G_0[7], P_0[7], G_1[8], P_1[8]);
// bit position = 7
assign G_1[7] = G_0[7];
assign P_1[7] = P_0[7];
// bit position = 6
DotOp dotop_0_26(G_0[6], P_0[6], G_0[5], P_0[5], G_1[6], P_1[6]);
// bit position = 5
assign G_1[5] = G_0[5];
assign P_1[5] = P_0[5];
// bit position = 4
DotOp dotop_0_28(G_0[4], P_0[4], G_0[3], P_0[3], G_1[4], P_1[4]);
// bit position = 3
assign G_1[3] = G_0[3];
assign P_1[3] = P_0[3];
// bit position = 2
DotOp dotop_0_30(G_0[2], P_0[2], G_0[1], P_0[1], G_1[2], P_1[2]);
// bit position = 1
assign G_1[1] = G_0[1];
assign P_1[1] = P_0[1];

// tree level = 2
// bit position = 32
DotOp dotop_1_0(G_1[32], P_1[32], G_1[30], P_1[30], G_2[32], P_2[32]);
// bit position = 31
assign G_2[31] = G_1[31];
assign P_2[31] = P_1[31];
// bit position = 30
assign G_2[30] = G_1[30];
assign P_2[30] = P_1[30];
// bit position = 29
assign G_2[29] = G_1[29];
assign P_2[29] = P_1[29];
// bit position = 28
DotOp dotop_1_4(G_1[28], P_1[28], G_1[26], P_1[26], G_2[28], P_2[28]);
// bit position = 27
assign G_2[27] = G_1[27];
assign P_2[27] = P_1[27];
// bit position = 26
assign G_2[26] = G_1[26];
assign P_2[26] = P_1[26];
// bit position = 25
assign G_2[25] = G_1[25];
assign P_2[25] = P_1[25];
// bit position = 24
DotOp dotop_1_8(G_1[24], P_1[24], G_1[22], P_1[22], G_2[24], P_2[24]);
// bit position = 23
assign G_2[23] = G_1[23];
assign P_2[23] = P_1[23];
// bit position = 22
assign G_2[22] = G_1[22];
assign P_2[22] = P_1[22];
// bit position = 21
assign G_2[21] = G_1[21];
assign P_2[21] = P_1[21];
// bit position = 20
DotOp dotop_1_12(G_1[20], P_1[20], G_1[18], P_1[18], G_2[20], P_2[20]);
// bit position = 19
assign G_2[19] = G_1[19];
assign P_2[19] = P_1[19];
// bit position = 18
assign G_2[18] = G_1[18];
assign P_2[18] = P_1[18];
// bit position = 17
assign G_2[17] = G_1[17];
assign P_2[17] = P_1[17];
// bit position = 16
DotOp dotop_1_16(G_1[16], P_1[16], G_1[14], P_1[14], G_2[16], P_2[16]);
// bit position = 15
assign G_2[15] = G_1[15];
assign P_2[15] = P_1[15];
// bit position = 14
assign G_2[14] = G_1[14];
assign P_2[14] = P_1[14];
// bit position = 13
assign G_2[13] = G_1[13];
assign P_2[13] = P_1[13];
// bit position = 12
DotOp dotop_1_20(G_1[12], P_1[12], G_1[10], P_1[10], G_2[12], P_2[12]);
// bit position = 11
assign G_2[11] = G_1[11];
assign P_2[11] = P_1[11];
// bit position = 10
assign G_2[10] = G_1[10];
assign P_2[10] = P_1[10];
// bit position = 9
assign G_2[9] = G_1[9];
assign P_2[9] = P_1[9];
// bit position = 8
DotOp dotop_1_24(G_1[8], P_1[8], G_1[6], P_1[6], G_2[8], P_2[8]);
// bit position = 7
assign G_2[7] = G_1[7];
assign P_2[7] = P_1[7];
// bit position = 6
assign G_2[6] = G_1[6];
assign P_2[6] = P_1[6];
// bit position = 5
assign G_2[5] = G_1[5];
assign P_2[5] = P_1[5];
// bit position = 4
DotOp dotop_1_28(G_1[4], P_1[4], G_1[2], P_1[2], G_2[4], P_2[4]);
// bit position = 3
assign G_2[3] = G_1[3];
assign P_2[3] = P_1[3];
// bit position = 2
assign G_2[2] = G_1[2];
assign P_2[2] = P_1[2];
// bit position = 1
assign G_2[1] = G_1[1];
assign P_2[1] = P_1[1];

// tree level = 3
// bit position = 32
DotOp dotop_2_0(G_2[32], P_2[32], G_2[28], P_2[28], G_3[32], P_3[32]);
// bit position = 31
assign G_3[31] = G_2[31];
assign P_3[31] = P_2[31];
// bit position = 30
assign G_3[30] = G_2[30];
assign P_3[30] = P_2[30];
// bit position = 29
assign G_3[29] = G_2[29];
assign P_3[29] = P_2[29];
// bit position = 28
DotOp dotop_2_4(G_2[28], P_2[28], G_2[24], P_2[24], G_3[28], P_3[28]);
// bit position = 27
assign G_3[27] = G_2[27];
assign P_3[27] = P_2[27];
// bit position = 26
assign G_3[26] = G_2[26];
assign P_3[26] = P_2[26];
// bit position = 25
assign G_3[25] = G_2[25];
assign P_3[25] = P_2[25];
// bit position = 24
DotOp dotop_2_8(G_2[24], P_2[24], G_2[20], P_2[20], G_3[24], P_3[24]);
// bit position = 23
assign G_3[23] = G_2[23];
assign P_3[23] = P_2[23];
// bit position = 22
assign G_3[22] = G_2[22];
assign P_3[22] = P_2[22];
// bit position = 21
assign G_3[21] = G_2[21];
assign P_3[21] = P_2[21];
// bit position = 20
DotOp dotop_2_12(G_2[20], P_2[20], G_2[16], P_2[16], G_3[20], P_3[20]);
// bit position = 19
assign G_3[19] = G_2[19];
assign P_3[19] = P_2[19];
// bit position = 18
assign G_3[18] = G_2[18];
assign P_3[18] = P_2[18];
// bit position = 17
assign G_3[17] = G_2[17];
assign P_3[17] = P_2[17];
// bit position = 16
DotOp dotop_2_16(G_2[16], P_2[16], G_2[12], P_2[12], G_3[16], P_3[16]);
// bit position = 15
assign G_3[15] = G_2[15];
assign P_3[15] = P_2[15];
// bit position = 14
assign G_3[14] = G_2[14];
assign P_3[14] = P_2[14];
// bit position = 13
assign G_3[13] = G_2[13];
assign P_3[13] = P_2[13];
// bit position = 12
DotOp dotop_2_20(G_2[12], P_2[12], G_2[8], P_2[8], G_3[12], P_3[12]);
// bit position = 11
assign G_3[11] = G_2[11];
assign P_3[11] = P_2[11];
// bit position = 10
assign G_3[10] = G_2[10];
assign P_3[10] = P_2[10];
// bit position = 9
assign G_3[9] = G_2[9];
assign P_3[9] = P_2[9];
// bit position = 8
DotOp dotop_2_24(G_2[8], P_2[8], G_2[4], P_2[4], G_3[8], P_3[8]);
// bit position = 7
assign G_3[7] = G_2[7];
assign P_3[7] = P_2[7];
// bit position = 6
assign G_3[6] = G_2[6];
assign P_3[6] = P_2[6];
// bit position = 5
assign G_3[5] = G_2[5];
assign P_3[5] = P_2[5];
// bit position = 4
assign G_3[4] = G_2[4];
assign P_3[4] = P_2[4];
// bit position = 3
assign G_3[3] = G_2[3];
assign P_3[3] = P_2[3];
// bit position = 2
assign G_3[2] = G_2[2];
assign P_3[2] = P_2[2];
// bit position = 1
assign G_3[1] = G_2[1];
assign P_3[1] = P_2[1];

// tree level = 4
// bit position = 32
DotOp dotop_3_0(G_3[32], P_3[32], G_3[28], P_3[28], G_4[32], P_4[32]);
// bit position = 31
assign G_4[31] = G_3[31];
assign P_4[31] = P_3[31];
// bit position = 30
assign G_4[30] = G_3[30];
assign P_4[30] = P_3[30];
// bit position = 29
assign G_4[29] = G_3[29];
assign P_4[29] = P_3[29];
// bit position = 28
DotOp dotop_3_4(G_3[28], P_3[28], G_3[24], P_3[24], G_4[28], P_4[28]);
// bit position = 27
assign G_4[27] = G_3[27];
assign P_4[27] = P_3[27];
// bit position = 26
assign G_4[26] = G_3[26];
assign P_4[26] = P_3[26];
// bit position = 25
assign G_4[25] = G_3[25];
assign P_4[25] = P_3[25];
// bit position = 24
DotOp dotop_3_8(G_3[24], P_3[24], G_3[20], P_3[20], G_4[24], P_4[24]);
// bit position = 23
assign G_4[23] = G_3[23];
assign P_4[23] = P_3[23];
// bit position = 22
assign G_4[22] = G_3[22];
assign P_4[22] = P_3[22];
// bit position = 21
assign G_4[21] = G_3[21];
assign P_4[21] = P_3[21];
// bit position = 20
DotOp dotop_3_12(G_3[20], P_3[20], G_3[16], P_3[16], G_4[20], P_4[20]);
// bit position = 19
assign G_4[19] = G_3[19];
assign P_4[19] = P_3[19];
// bit position = 18
assign G_4[18] = G_3[18];
assign P_4[18] = P_3[18];
// bit position = 17
assign G_4[17] = G_3[17];
assign P_4[17] = P_3[17];
// bit position = 16
DotOp dotop_3_16(G_3[16], P_3[16], G_3[12], P_3[12], G_4[16], P_4[16]);
// bit position = 15
assign G_4[15] = G_3[15];
assign P_4[15] = P_3[15];
// bit position = 14
assign G_4[14] = G_3[14];
assign P_4[14] = P_3[14];
// bit position = 13
assign G_4[13] = G_3[13];
assign P_4[13] = P_3[13];
// bit position = 12
DotOp dotop_3_20(G_3[12], P_3[12], G_3[8], P_3[8], G_4[12], P_4[12]);
// bit position = 11
assign G_4[11] = G_3[11];
assign P_4[11] = P_3[11];
// bit position = 10
assign G_4[10] = G_3[10];
assign P_4[10] = P_3[10];
// bit position = 9
assign G_4[9] = G_3[9];
assign P_4[9] = P_3[9];
// bit position = 8
assign G_4[8] = G_3[8];
assign P_4[8] = P_3[8];
// bit position = 7
assign G_4[7] = G_3[7];
assign P_4[7] = P_3[7];
// bit position = 6
assign G_4[6] = G_3[6];
assign P_4[6] = P_3[6];
// bit position = 5
assign G_4[5] = G_3[5];
assign P_4[5] = P_3[5];
// bit position = 4
assign G_4[4] = G_3[4];
assign P_4[4] = P_3[4];
// bit position = 3
assign G_4[3] = G_3[3];
assign P_4[3] = P_3[3];
// bit position = 2
assign G_4[2] = G_3[2];
assign P_4[2] = P_3[2];
// bit position = 1
assign G_4[1] = G_3[1];
assign P_4[1] = P_3[1];

// tree level = 5
// bit position = 32
DotOp dotop_4_0(G_4[32], P_4[32], G_4[28], P_4[28], G_5[32], P_5[32]);
// bit position = 31
assign G_5[31] = G_4[31];
assign P_5[31] = P_4[31];
// bit position = 30
assign G_5[30] = G_4[30];
assign P_5[30] = P_4[30];
// bit position = 29
assign G_5[29] = G_4[29];
assign P_5[29] = P_4[29];
// bit position = 28
DotOp dotop_4_4(G_4[28], P_4[28], G_4[24], P_4[24], G_5[28], P_5[28]);
// bit position = 27
assign G_5[27] = G_4[27];
assign P_5[27] = P_4[27];
// bit position = 26
assign G_5[26] = G_4[26];
assign P_5[26] = P_4[26];
// bit position = 25
assign G_5[25] = G_4[25];
assign P_5[25] = P_4[25];
// bit position = 24
DotOp dotop_4_8(G_4[24], P_4[24], G_4[20], P_4[20], G_5[24], P_5[24]);
// bit position = 23
assign G_5[23] = G_4[23];
assign P_5[23] = P_4[23];
// bit position = 22
assign G_5[22] = G_4[22];
assign P_5[22] = P_4[22];
// bit position = 21
assign G_5[21] = G_4[21];
assign P_5[21] = P_4[21];
// bit position = 20
DotOp dotop_4_12(G_4[20], P_4[20], G_4[16], P_4[16], G_5[20], P_5[20]);
// bit position = 19
assign G_5[19] = G_4[19];
assign P_5[19] = P_4[19];
// bit position = 18
assign G_5[18] = G_4[18];
assign P_5[18] = P_4[18];
// bit position = 17
assign G_5[17] = G_4[17];
assign P_5[17] = P_4[17];
// bit position = 16
assign G_5[16] = G_4[16];
assign P_5[16] = P_4[16];
// bit position = 15
assign G_5[15] = G_4[15];
assign P_5[15] = P_4[15];
// bit position = 14
assign G_5[14] = G_4[14];
assign P_5[14] = P_4[14];
// bit position = 13
assign G_5[13] = G_4[13];
assign P_5[13] = P_4[13];
// bit position = 12
assign G_5[12] = G_4[12];
assign P_5[12] = P_4[12];
// bit position = 11
assign G_5[11] = G_4[11];
assign P_5[11] = P_4[11];
// bit position = 10
assign G_5[10] = G_4[10];
assign P_5[10] = P_4[10];
// bit position = 9
assign G_5[9] = G_4[9];
assign P_5[9] = P_4[9];
// bit position = 8
assign G_5[8] = G_4[8];
assign P_5[8] = P_4[8];
// bit position = 7
assign G_5[7] = G_4[7];
assign P_5[7] = P_4[7];
// bit position = 6
assign G_5[6] = G_4[6];
assign P_5[6] = P_4[6];
// bit position = 5
assign G_5[5] = G_4[5];
assign P_5[5] = P_4[5];
// bit position = 4
assign G_5[4] = G_4[4];
assign P_5[4] = P_4[4];
// bit position = 3
assign G_5[3] = G_4[3];
assign P_5[3] = P_4[3];
// bit position = 2
assign G_5[2] = G_4[2];
assign P_5[2] = P_4[2];
// bit position = 1
assign G_5[1] = G_4[1];
assign P_5[1] = P_4[1];

// tree level = 6
// bit position = 32
assign G_6[32] = G_5[32];
assign P_6[32] = P_5[32];
// bit position = 31
assign G_6[31] = G_5[31];
assign P_6[31] = P_5[31];
// bit position = 30
DotOp dotop_5_2(G_5[30], P_5[30], G_5[28], P_5[28], G_6[30], P_6[30]);
// bit position = 29
assign G_6[29] = G_5[29];
assign P_6[29] = P_5[29];
// bit position = 28
assign G_6[28] = G_5[28];
assign P_6[28] = P_5[28];
// bit position = 27
assign G_6[27] = G_5[27];
assign P_6[27] = P_5[27];
// bit position = 26
DotOp dotop_5_6(G_5[26], P_5[26], G_5[24], P_5[24], G_6[26], P_6[26]);
// bit position = 25
assign G_6[25] = G_5[25];
assign P_6[25] = P_5[25];
// bit position = 24
assign G_6[24] = G_5[24];
assign P_6[24] = P_5[24];
// bit position = 23
assign G_6[23] = G_5[23];
assign P_6[23] = P_5[23];
// bit position = 22
DotOp dotop_5_10(G_5[22], P_5[22], G_5[20], P_5[20], G_6[22], P_6[22]);
// bit position = 21
assign G_6[21] = G_5[21];
assign P_6[21] = P_5[21];
// bit position = 20
assign G_6[20] = G_5[20];
assign P_6[20] = P_5[20];
// bit position = 19
assign G_6[19] = G_5[19];
assign P_6[19] = P_5[19];
// bit position = 18
DotOp dotop_5_14(G_5[18], P_5[18], G_5[16], P_5[16], G_6[18], P_6[18]);
// bit position = 17
assign G_6[17] = G_5[17];
assign P_6[17] = P_5[17];
// bit position = 16
assign G_6[16] = G_5[16];
assign P_6[16] = P_5[16];
// bit position = 15
assign G_6[15] = G_5[15];
assign P_6[15] = P_5[15];
// bit position = 14
DotOp dotop_5_18(G_5[14], P_5[14], G_5[12], P_5[12], G_6[14], P_6[14]);
// bit position = 13
assign G_6[13] = G_5[13];
assign P_6[13] = P_5[13];
// bit position = 12
assign G_6[12] = G_5[12];
assign P_6[12] = P_5[12];
// bit position = 11
assign G_6[11] = G_5[11];
assign P_6[11] = P_5[11];
// bit position = 10
DotOp dotop_5_22(G_5[10], P_5[10], G_5[8], P_5[8], G_6[10], P_6[10]);
// bit position = 9
assign G_6[9] = G_5[9];
assign P_6[9] = P_5[9];
// bit position = 8
assign G_6[8] = G_5[8];
assign P_6[8] = P_5[8];
// bit position = 7
assign G_6[7] = G_5[7];
assign P_6[7] = P_5[7];
// bit position = 6
DotOp dotop_5_26(G_5[6], P_5[6], G_5[4], P_5[4], G_6[6], P_6[6]);
// bit position = 5
assign G_6[5] = G_5[5];
assign P_6[5] = P_5[5];
// bit position = 4
assign G_6[4] = G_5[4];
assign P_6[4] = P_5[4];
// bit position = 3
assign G_6[3] = G_5[3];
assign P_6[3] = P_5[3];
// bit position = 2
assign G_6[2] = G_5[2];
assign P_6[2] = P_5[2];
// bit position = 1
assign G_6[1] = G_5[1];
assign P_6[1] = P_5[1];

// tree level = 7
// bit position = 32
assign G_7[32] = G_6[32];
assign P_7[32] = P_6[32];
// bit position = 31
DotOp dotop_6_1(G_6[31], P_6[31], G_6[30], P_6[30], G_7[31], P_7[31]);
// bit position = 30
assign G_7[30] = G_6[30];
assign P_7[30] = P_6[30];
// bit position = 29
DotOp dotop_6_3(G_6[29], P_6[29], G_6[28], P_6[28], G_7[29], P_7[29]);
// bit position = 28
assign G_7[28] = G_6[28];
assign P_7[28] = P_6[28];
// bit position = 27
DotOp dotop_6_5(G_6[27], P_6[27], G_6[26], P_6[26], G_7[27], P_7[27]);
// bit position = 26
assign G_7[26] = G_6[26];
assign P_7[26] = P_6[26];
// bit position = 25
DotOp dotop_6_7(G_6[25], P_6[25], G_6[24], P_6[24], G_7[25], P_7[25]);
// bit position = 24
assign G_7[24] = G_6[24];
assign P_7[24] = P_6[24];
// bit position = 23
DotOp dotop_6_9(G_6[23], P_6[23], G_6[22], P_6[22], G_7[23], P_7[23]);
// bit position = 22
assign G_7[22] = G_6[22];
assign P_7[22] = P_6[22];
// bit position = 21
DotOp dotop_6_11(G_6[21], P_6[21], G_6[20], P_6[20], G_7[21], P_7[21]);
// bit position = 20
assign G_7[20] = G_6[20];
assign P_7[20] = P_6[20];
// bit position = 19
DotOp dotop_6_13(G_6[19], P_6[19], G_6[18], P_6[18], G_7[19], P_7[19]);
// bit position = 18
assign G_7[18] = G_6[18];
assign P_7[18] = P_6[18];
// bit position = 17
DotOp dotop_6_15(G_6[17], P_6[17], G_6[16], P_6[16], G_7[17], P_7[17]);
// bit position = 16
assign G_7[16] = G_6[16];
assign P_7[16] = P_6[16];
// bit position = 15
DotOp dotop_6_17(G_6[15], P_6[15], G_6[14], P_6[14], G_7[15], P_7[15]);
// bit position = 14
assign G_7[14] = G_6[14];
assign P_7[14] = P_6[14];
// bit position = 13
DotOp dotop_6_19(G_6[13], P_6[13], G_6[12], P_6[12], G_7[13], P_7[13]);
// bit position = 12
assign G_7[12] = G_6[12];
assign P_7[12] = P_6[12];
// bit position = 11
DotOp dotop_6_21(G_6[11], P_6[11], G_6[10], P_6[10], G_7[11], P_7[11]);
// bit position = 10
assign G_7[10] = G_6[10];
assign P_7[10] = P_6[10];
// bit position = 9
DotOp dotop_6_23(G_6[9], P_6[9], G_6[8], P_6[8], G_7[9], P_7[9]);
// bit position = 8
assign G_7[8] = G_6[8];
assign P_7[8] = P_6[8];
// bit position = 7
DotOp dotop_6_25(G_6[7], P_6[7], G_6[6], P_6[6], G_7[7], P_7[7]);
// bit position = 6
assign G_7[6] = G_6[6];
assign P_7[6] = P_6[6];
// bit position = 5
DotOp dotop_6_27(G_6[5], P_6[5], G_6[4], P_6[4], G_7[5], P_7[5]);
// bit position = 4
assign G_7[4] = G_6[4];
assign P_7[4] = P_6[4];
// bit position = 3
DotOp dotop_6_29(G_6[3], P_6[3], G_6[2], P_6[2], G_7[3], P_7[3]);
// bit position = 2
assign G_7[2] = G_6[2];
assign P_7[2] = P_6[2];
// bit position = 1
assign G_7[1] = G_6[1];
assign P_7[1] = P_6[1];

// generate Gf and Pf
assign Gf[32] = G_7[32]; assign Pf[32] = P_7[32];
assign Gf[31] = G_7[31]; assign Pf[31] = P_7[31];
assign Gf[30] = G_7[30]; assign Pf[30] = P_7[30];
assign Gf[29] = G_7[29]; assign Pf[29] = P_7[29];
assign Gf[28] = G_7[28]; assign Pf[28] = P_7[28];
assign Gf[27] = G_7[27]; assign Pf[27] = P_7[27];
assign Gf[26] = G_7[26]; assign Pf[26] = P_7[26];
assign Gf[25] = G_7[25]; assign Pf[25] = P_7[25];
assign Gf[24] = G_7[24]; assign Pf[24] = P_7[24];
assign Gf[23] = G_7[23]; assign Pf[23] = P_7[23];
assign Gf[22] = G_7[22]; assign Pf[22] = P_7[22];
assign Gf[21] = G_7[21]; assign Pf[21] = P_7[21];
assign Gf[20] = G_7[20]; assign Pf[20] = P_7[20];
assign Gf[19] = G_7[19]; assign Pf[19] = P_7[19];
assign Gf[18] = G_7[18]; assign Pf[18] = P_7[18];
assign Gf[17] = G_7[17]; assign Pf[17] = P_7[17];
assign Gf[16] = G_7[16]; assign Pf[16] = P_7[16];
assign Gf[15] = G_7[15]; assign Pf[15] = P_7[15];
assign Gf[14] = G_7[14]; assign Pf[14] = P_7[14];
assign Gf[13] = G_7[13]; assign Pf[13] = P_7[13];
assign Gf[12] = G_7[12]; assign Pf[12] = P_7[12];
assign Gf[11] = G_7[11]; assign Pf[11] = P_7[11];
assign Gf[10] = G_7[10]; assign Pf[10] = P_7[10];
assign Gf[9] = G_7[9]; assign Pf[9] = P_7[9];
assign Gf[8] = G_7[8]; assign Pf[8] = P_7[8];
assign Gf[7] = G_7[7]; assign Pf[7] = P_7[7];
assign Gf[6] = G_7[6]; assign Pf[6] = P_7[6];
assign Gf[5] = G_7[5]; assign Pf[5] = P_7[5];
assign Gf[4] = G_7[4]; assign Pf[4] = P_7[4];
assign Gf[3] = G_7[3]; assign Pf[3] = P_7[3];
assign Gf[2] = G_7[2]; assign Pf[2] = P_7[2];
assign Gf[1] = G_7[1]; assign Pf[1] = P_7[1];

/* Footer */
    generate
        genvar i;
        for (i = 1; i <= 32; i = i + 1) begin: co_gen
            assign co[i] = Gf[i] | (Pf[i] & ci);
        end
    endgenerate
    
endmodule

