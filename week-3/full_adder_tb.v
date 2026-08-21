module full_adder1;
    wire sum, carry;
    reg a,b,c;
    full_adder fa(sum,carry,a,b,c);

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
        #100 a=0;b=0;c=0;
    
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