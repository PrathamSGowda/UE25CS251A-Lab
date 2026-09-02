module DFF_reset;
    reg in, reset, clk;
    wire out;
    wire w1, w2;

    not1 n1(w1, reset);
    and1 a1(w2, in, w1);
    dff d1(clk, w2, out); 
    
    initial clk = 1'b0; always #005 clk = ~clk;

    initial
    begin
        #000 in=1'b1; reset=1'b1;
        #005 in=1'b0; reset=1'b1;
        #005 in=1'b1; reset=1'b1;
        #003 in=1'b1; reset=1'b0;
        #002 in=1'b1; reset=1'b0;
        #005 in=1'b0; reset=1'b0;
        #005 in=1'b0; reset=1'b0;
        #005 in=1'b1; reset=1'b0;
        #005 in=1'b1; reset=1'b0;
        #005 in=1'b0; reset=1'b0;

        $finish;
    end

    initial
    begin
        $monitor($time," clk = %b, reset = %b, in = %b, out = %b",clk,reset,in,out);
    end

    initial
    begin
        $dumpfile("DFF_reset.vcd");
        $dumpvars(0,DFF_reset);
    end

endmodule