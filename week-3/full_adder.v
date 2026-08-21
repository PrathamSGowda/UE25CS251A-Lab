module xor1(y,a,b);
    output y;
    input a,b;

    assign y = a^b;
    
endmodule

module and1(y,a,b);
    output y;
    input a,b;

    assign y = a&b;
    
endmodule

module or1(y,a,b);
    output y;
    input a,b;

    assign y = a|b;
    
endmodule

module full_adder(sum,carry,a,b,c);
    input a,b,c;
    output sum,carry;
    wire w1,w2,w3;

    xor1 a1(w1,a,b);
    xor1 a2(sum,w1,c);
    and1 a3(w2,w1,c);
    and1 a4(w3,a,b);
    or1 a5(carry,w2,w3);

endmodule