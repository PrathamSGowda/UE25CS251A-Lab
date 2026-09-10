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

module rippleca(input [3:0]a, input [3:0]b, input cin1, output [3:0]s, output cout);

    wire c1,c2,c3;

    full_adder fa1(a[0],b[0],cin1,s[0],c1);
    full_adder fa2(a[1],b[1],c1,s[1],c2);
    full_adder fa3(a[2],b[2],c2,s[2],c3);
    full_adder fa4(a[3],b[3],cin1,s[3],cout);

endmodule