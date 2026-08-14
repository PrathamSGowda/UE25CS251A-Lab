// test bench

module circuit;
    wire y,d,e;
    reg a,b,c;
    and1 x(y,a,b);
    not1 n(e,c);
    or1 o(d,y,e);

    initial
    begin
        #000 a=0;b=0;c=0;
        #100 a=0;b=0;c=1;
        #100 a=0;b=1;c=0;
        #100 a=0;b=1;c=1;
        #100 a=1;b=0;c=0;
        #100 a=1;b=0;c=1;
        #100 a=1;b=1;c=0;
        #100 a=1;b=1;c=1;
    
    end

    initial
    begin
        $monitor($time,"a = %b, b = %b, c = %b, d = %b, e = %b",a,b,c,d,e);
    end

    initial
    begin
        $dumpfile("circuit.vcd");
        $dumpvars(0,circuit);
    end

endmodule