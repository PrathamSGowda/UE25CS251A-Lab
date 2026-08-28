module and1(y,a,b);
    output y;
    input a,b;

    assign y = a&b;
    
endmodule

module not1(y,a);
    output y;
    input a;

    assign y=!a;

endmodule

module decoder(F0,F1,F2,F3,x,y);
    output F0, F1, F2, F3;
    input x, y;
    wire x1, y2;

    not1 n1(x1,x);
    not1 n2(y1,y);

    and1 a1(F0,x1,y1);
    and1 a2(F1,x1,y);
    and1 a3(F2,x,y1);
    and1 a4(F3,x,y);

endmodule