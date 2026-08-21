`define TESTVECS 16

module circuit_ex2;
    wire sum1, carry1, sum2, carry2;

    reg i2;
    reg[2:0]i1;

    reg[3:0]vec[0:15];

    full_adder fa2(sum2,carry2,i1[2],i1[1],i1[0]);
    full_adder fa1(sum1,carry1,i2,sum2,carry2);

    integer i;
    
    initial
    begin
        for(i=0; i<`TESTVECS; i = i+1)
        begin
            #20 {i2,i1} = vec[i];
        end

        #20 $finish;
    end

    initial
    begin
        vec[0]  = 4'b0000;
        vec[1]  = 4'b0001;
        vec[2]  = 4'b0010;
        vec[3]  = 4'b0011;
        vec[4]  = 4'b0100;
        vec[5]  = 4'b0101;
        vec[6]  = 4'b0110;
        vec[7]  = 4'b0111;
        vec[8]  = 4'b1000;
        vec[9]  = 4'b1001;
        vec[10] = 4'b1010;
        vec[11] = 4'b1011;
        vec[12] = 4'b1100;
        vec[13] = 4'b1101;
        vec[14] = 4'b1110;
        vec[15] = 4'b1111;  
    end

    initial
    begin
        $monitor($time,"  i2 = %b, i1[2] = %b, i1[1] = %b, i1[0] = %b, sum1 = %b, carry1 = %b",i2,i1[2],i1[1],i1[0],sum1,carry1);
    end

    initial
    begin
        $dumpfile("circuit_ex2.vcd");
        $dumpvars(0,circuit_ex2);
    end

endmodule