module full_adder(input a, input b, input cin, output sum, output carry);

    wire w1,w2,w3,w4,w5;

    xor x1(w1,a,b);
    xor x2(sum,w1,cin);

    and a1(w2,a,b);
    and a2(w3,a,cin);
    and a3(w4,b,cin);

    or o1(w5,w2,w3);
    or o2(carry,w5,w4);

endmodule

module mux(input j, input i0, input i1, output y);

    wire w1, w2, w3;

    and a1(w2,i1,j);
    not n1(w1,j);
    and a2(w3,w1,i0);
    or o1(y,w2,w3);

endmodule

module addsub(input aors, input i0, input i1, input cin, output sumdiff, output cout);

    wire w;

    xor x1(w, i1, aors);
    full_adder fa(i0, w, cin, sumdiff, cout);

endmodule

module alu_slice(input [1:0] op, input i0, input i1, input cin, output o, output cout);

    wire w1, w2, w3, w4;

    addsub as(op[0], i0, i1, cin, w1, cout);

    and a1(w2, i0, i1);
    or o1(w3, i0, i1);

    mux m1(op[0], w2, w3, w4);
    mux m2(op[1], w1, w4, o);

endmodule

module alu(input [1:0] op, input [15:0] i0, input [15:0] i1, output [15:0] o, output cout);

    wire [14:0] c;

    alu_slice as0(op, i0[0], i1[0], op[0], o[0], c[0]);
    alu_slice as1(op, i0[1], i1[1], c[0], o[1], c[1]);
    alu_slice as2(op, i0[2], i1[2], c[1], o[2], c[2]);
    alu_slice as3(op, i0[3], i1[3], c[2], o[3], c[3]);
    alu_slice as4(op, i0[4], i1[4], c[3], o[4], c[4]);
    alu_slice as5(op, i0[5], i1[5], c[4], o[5], c[5]);
    alu_slice as6(op, i0[6], i1[6], c[5], o[6], c[6]);
    alu_slice as7(op, i0[7], i1[7], c[6], o[7], c[7]);
    alu_slice as8(op, i0[8], i1[8], c[7], o[8], c[8]);
    alu_slice as9(op, i0[9], i1[9], c[8], o[9], c[9]);
    alu_slice as10(op, i0[10], i1[10], c[9], o[10], c[10]);
    alu_slice as11(op, i0[11], i1[11], c[10], o[11], c[11]);
    alu_slice as12(op, i0[12], i1[12], c[11], o[12], c[12]);
    alu_slice as13(op, i0[13], i1[13], c[12], o[13], c[13]);
    alu_slice as14(op, i0[14], i1[14], c[13], o[14], c[14]);
    alu_slice as15(op, i0[15], i1[15], c[14], o[15], cout);

endmodule