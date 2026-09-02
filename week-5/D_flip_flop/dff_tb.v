module d_flipflop;
    wire out;
    reg clk, in;
    dff d1(clk, in, out);

    initial clk = 1'b0; always #100 clk = ~clk;
    
    initial
    begin
        #000 in=1'b1;
        #100 in=1'b0;
        #100 in=1'b1;
        #100 in=1'b1;
        #100 in=1'b0;
        #100 in=1'b0;
        #100 in=1'b1;
        #100 in=1'b1;
        #100 in=1'b0;

        $finish;
    end

    initial
    begin
        $monitor($time," clk = %b, in = %b, out = %b",clk,in,out);
    end

    initial
    begin
        $dumpfile("d_flipflop.vcd");
        $dumpvars(0,d_flipflop);
    end

endmodule