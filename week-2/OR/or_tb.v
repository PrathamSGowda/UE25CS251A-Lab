// test bench

module or_tb;
    wire y;
    reg a,b;
    or1 o(y,a,b);

    initial
    begin
        #000 a=0;b=0;
        #100 a=0;b=1;
        #100 a=1;b=0;
        #100 a=1;b=1;
        #100 a=0;b=0;
    end

    initial
    begin
        $monitor($time,"a = %b, b = %b, y = %b",a,b,y);
    end

    initial
    begin
        $dumpfile("or.vcd");
        $dumpvars(0,or_tb);
    end

endmodule