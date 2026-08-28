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

module not1(y,a);
    output y;
    input a;

    assign y=!a;

endmodule

module mux(y,j,i0,i1);
    output y;
    input i0, i1, j;
    wire w1, w2, w3;

    and1 a1(w2,i1,j);
    not1 n1(w1,j);
    and1 a2(w3,w1,i0);
    or1 o1(y,w2,w3);

endmodule