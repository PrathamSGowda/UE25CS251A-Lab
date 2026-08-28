module mux2_1;
    wire y;
    reg j,i0,i1;
    mux m1(y,j,i0,i1);

    initial
    begin
        #000 j=1'b0; i0=1'b0; i1=1'b0;
        #100 j=1'b0; i0=1'b0; i1=1'b1;
        #100 j=1'b0; i0=1'b1; i1=1'b0;
        #100 j=1'b0; i0=1'b1; i1=1'b1;
        #100 j=1'b1; i0=1'b0; i1=1'b0;
        #100 j=1'b1; i0=1'b0; i1=1'b1;
        #100 j=1'b1; i0=1'b1; i1=1'b0;
        #100 j=1'b1; i0=1'b1; i1=1'b1;
        #100 j=1'b0; i0=1'b0; i1=1'b0;

    end

    initial
    begin
        $monitor($time," j = %b, i0 = %b, i1 = %b, y = %b",j,i0,i1,y);
    end

    initial
    begin
        $dumpfile("mux2_1.vcd");
        $dumpvars(0,mux2_1);
    end

endmodule