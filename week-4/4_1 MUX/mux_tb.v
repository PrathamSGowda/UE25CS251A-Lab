`define TESTVECS 16

module mux_4_1;
    reg[3:0]i;
    reg s0, s1;

    wire w1, w2, y;

    reg[5:0]vec[0:15];

    mux m1(w1,s0,i[0],i[1]);
    mux m2(w2,s0,i[2],i[3]);
    mux m3(y,s1,w1,w2);

    integer j;

    initial
    begin
        for(j=0; j<`TESTVECS; j = j+1)
        begin
            #20 {s0,s1,i} = vec[j];
        end

        #20 $finish;
    end

    initial
    begin
        vec[0]  = 6'b000000;
        vec[1]  = 6'b000001;
        vec[2]  = 6'b000010;
        vec[3]  = 6'b000011;
        vec[4]  = 6'b000100;
        vec[5]  = 6'b000101;
        vec[6]  = 6'b000110;
        vec[7]  = 6'b000111;
        vec[8]  = 6'b111000;
        vec[9]  = 6'b111001;
        vec[10] = 6'b111010;
        vec[11] = 6'b111011;
        vec[12] = 6'b111100;
        vec[13] = 6'b111101;
        vec[14] = 6'b111110;
        vec[15] = 6'b111111; 
    end

    initial
    begin
        $monitor($time," s0 = %b, s1 = %b, i[3] = %b, i[2] = %b, i[1] = %b, i[0] = %b, y = %b",s0,s1,i[3],i[2],i[1],i[0],y);
    end

    initial
    begin
        $dumpfile("mux_4_1.vcd");
        $dumpvars(0,mux_4_1);
    end

endmodule