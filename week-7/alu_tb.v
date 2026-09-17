module alu_tb;

    reg [1:0] op;
    reg [15:0] i0, i1;
    wire [15:0] o;
    wire cout;

    alu alu_0(op, i0, i1, o, cout);

    initial
    begin
        #0  op = 2'b00; i0 = 16'h0000; i1 = 16'h0000;
        #10 op = 2'b00; i0 = 16'haa55; i1 = 16'h55aa;
        #10 op = 2'b00; i0 = 16'hffff; i1 = 16'h0001;
        #10 op = 2'b00; i0 = 16'h0001; i1 = 16'h7fff;

        #10 op = 2'b01; i0 = 16'h0000; i1 = 16'h0000;
        #10 op = 2'b01; i0 = 16'haa55; i1 = 16'h55aa;
        #10 op = 2'b01; i0 = 16'hffff; i1 = 16'h0001;
        #10 op = 2'b01; i0 = 16'h0001; i1 = 16'h7fff;

        #10 op = 2'b10; i0 = 16'h0000; i1 = 16'h0000;
        #10 op = 2'b10; i0 = 16'haa55; i1 = 16'h55aa;
        #10 op = 2'b10; i0 = 16'hffff; i1 = 16'h0001;
        #10 op = 2'b10; i0 = 16'h0001; i1 = 16'h7fff;

        #10 op = 2'b11; i0 = 16'h0000; i1 = 16'h0000;
        #10 op = 2'b11; i0 = 16'haa55; i1 = 16'h55aa;
        #10 op = 2'b11; i0 = 16'hffff; i1 = 16'h0001;
        #10 op = 2'b11; i0 = 16'h0001; i1 = 16'h7fff;

        #10 $finish;
    end

    initial 
    begin
        $monitor("op = %b i0 = %h i1 = %h   o = %h cout = %b", op, i0, i1, o, cout);
    end

    initial 
    begin
        $dumpfile("alu_tb.vcd");
        $dumpvars(0, alu_tb);
    end

endmodule