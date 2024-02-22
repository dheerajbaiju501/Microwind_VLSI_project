// DSCH3
// 10/2/2023 8:45:35 PM
// C:\Users\djbai\OneDrive\Desktop\MICROWIND_3.1\advd_2nd oct.sch

module advd_2ndoct( D,C,A,B,O1,O2,O4,O3);
 input D,C,A,B;
 output O1,O2,O4,O3;
 wire w3,w5,w7,w8,w10,w11,w12,w14;
 wire w15,w17,w19,w20,w21;
 pmos #(24) pmos_1(w3,vdd,D); // 1.5u 0.18u
 nmos #(24) nmos_2(w3,vss,D); // 1.5u 0.18u
 pmos #(38) pmos_3(w5,vdd,C); // 1.5u 0.18u
 nmos #(38) nmos_4(w5,vss,C); // 1.5u 0.18u
 pmos #(24) pmos_5(w7,vdd,B); // 1.5u 0.18u
 pmos #(24) pmos_6(w8,vdd,C); // 1.5u 0.18u
 pmos #(31) pmos_7(O1,w8,w5); // 1.5u 0.18u
 pmos #(24) pmos_8(w8,vdd,D); // 1.5u 0.18u
 pmos #(31) pmos_9(O1,w8,w3); // 1.5u 0.18u
 nmos #(31) nmos_10(O1,w10,C); // 1.5u 0.18u
 nmos #(31) nmos_11(O1,w11,w5); // 1.5u 0.18u
 nmos #(10) nmos_12(w11,vss,w3); // 1.5u 0.18u
 nmos #(10) nmos_13(w10,vss,D); // 1.5u 0.18u
 pmos #(31) pmos_14(O2,w7,w12); // 1.5u 0.18u
 pmos #(24) pmos_15(w7,vdd,C); // 1.5u 0.18u
 pmos #(31) pmos_16(O2,w7,w5); // 1.5u 0.18u
 nmos #(31) nmos_17(O2,w14,B); // 1.5u 0.18u
 nmos #(31) nmos_18(O2,w15,w12); // 1.5u 0.18u
 nmos #(10) nmos_19(w15,vss,w5); // 1.5u 0.18u
 nmos #(10) nmos_20(w14,vss,C); // 1.5u 0.18u
 nmos #(24) nmos_21(w17,vss,O4); // 1.5u 0.18u
 pmos #(24) pmos_22(w17,vdd,O4); // 1.5u 0.18u
 nmos #(10) nmos_23(w19,vss,B); // 1.5u 0.18u
 nmos #(10) nmos_24(w20,vss,w12); // 1.5u 0.18u
 pmos #(38) pmos_25(w12,vdd,B); // 1.5u 0.18u
 nmos #(38) nmos_26(w12,vss,B); // 1.5u 0.18u
 pmos #(24) pmos_27(w21,vdd,O4); // 1.5u 0.18u
 pmos #(31) pmos_28(O3,w21,w17); // 1.5u 0.18u
 pmos #(24) pmos_29(w21,vdd,B); // 1.5u 0.18u
 pmos #(31) pmos_30(O3,w21,w12); // 1.5u 0.18u
 nmos #(31) nmos_31(O3,w19,O4); // 1.5u 0.18u
 nmos #(31) nmos_32(O3,w20,w17); // 1.5u 0.18u
endmodule

// Simulation parameters in Verilog Format
always
#1000 D=~D;
#2000 C=~C;
#4000 A=~A;
#8000 B=~B;

// Simulation parameters
// D CLK 10 10
// C CLK 20 20
// A CLK 40 40
// B CLK 80 80
