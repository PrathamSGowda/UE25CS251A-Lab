module DFF_rl;
    reg in, reset, clk, load;
    wire out;
    wire w1, w2, w3, w4, w5;

    mux m1(w1,load,out,in);
    not n1(w2,reset);
    and a1(w3,w1,w2);
    dff d1(clk,w3,out);

    initial clk = 1'b0; always #005 clk = ~clk;

    initial
    begin
        #000 in=1'b1; reset=1'b1; load=1'b0; 
        #005 in=1'b0; reset=1'b1; load=1'b0;
        #005 in=1'b1; reset=1'b1; load=1'b0;
        #003 in=1'b1; reset=1'b0; load=1'b0;
        #002 in=1'b1; reset=1'b0; load=1'b1;
        #005 in=1'b0; reset=1'b0; load=1'b1;
        #005 in=1'b0; reset=1'b0; load=1'b1;
        #005 in=1'b1; reset=1'b0; load=1'b1;
        #005 in=1'b1; reset=1'b0; load=1'b0;
        #005 in=1'b0; reset=1'b0; load=1'b0;

        $finish;
    end

    initial
    begin
        $monitor($time," clk = %b, reset = %b, load = %b, in = %b, out = %b",clk,reset,load,in,out);
    end

    initial
    begin
        $dumpfile("DFF_rl.vcd");
        $dumpvars(0,DFF_rl);
    end

endmodule