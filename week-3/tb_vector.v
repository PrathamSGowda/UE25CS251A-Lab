`define TESTVECS 8

module full_adder1;
    wire sum, carry;
    reg a,b,c;
    
    reg[2:0]vec[0:7];
    integer i;

    full_adder fa1(sum,carry,a,b,c);

    initial
    begin
        for(i=0; i<`TESTVECS; i = i+1)
        begin
            #20 {a,b,c} = vec[i];
        end

        #20 $finish;
    end

    initial
    begin
        vec[0] = 3'b000;
        vec[1] = 3'b001;
        vec[2] = 3'b010;
        vec[3] = 3'b011;
        vec[4] = 3'b100;
        vec[5] = 3'b101;
        vec[6] = 3'b110;
        vec[7] = 3'b111;    
    end

    initial
    begin
        $monitor($time,"a = %b, b = %b, c = %b, sum = %b, carry = %b",a,b,c,sum,carry);
    end

    initial
    begin
        $dumpfile("full_adder.vcd");
        $dumpvars(0,full_adder1);
    end

endmodule