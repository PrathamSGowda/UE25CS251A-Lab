// test bench

module circuit;
    wire y1,y2;
    reg a,b,c;
    circuit2 c1(y1,a,b,c);

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
        $monitor($time,"a = %b, b = %b, c = %b, y1 = %b",a,b,c,y1);
    end

    initial
    begin
        $dumpfile("circuit.vcd");
        $dumpvars(0,circuit);
    end

endmodule