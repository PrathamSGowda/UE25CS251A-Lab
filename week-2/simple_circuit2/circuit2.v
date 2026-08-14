module circuit2(y1,a,b,c);

    output y1,y2;
    input a,b,c;
    and a1(y2,c,b);
    or o1(y1,a,y2);

  endmodule