// test bench

module not_tb;
    wire y;
    reg a;
    not1 n(y,a);

    initial
    begin
        #000 a=0;
        #100 a=1;
        #100 a=0;
    end

    initial
    begin
        $monitor($time,"a = %b, y = %b",a,y);
    end

    initial
    begin
        $dumpfile("not.vcd");
        $dumpvars(0,not_tb);
    end

endmodule