module decoder2_4;
    wire F0, F1, F2, F3;
    reg x, y;
    decoder d1(F0,F1,F2,F3,x,y);

    initial
    begin
        #000 x=1'b0; y=1'b0;
        #100 x=1'b0; y=1'b1;
        #100 x=1'b1; y=1'b0;
        #100 x=1'b1; y=1'b1;
        #100 x=1'b0; y=1'b0;

    end

    initial
    begin
        $monitor($time," x = %b, y = %b, F0 = %b, F1 = %b, F2 = %b, F3 = %b",x,y,F0,F1,F2,F3);
    end

    initial
    begin
        $dumpfile("decoder.vcd");
        $dumpvars(0,decoder2_4);
    end

endmodule