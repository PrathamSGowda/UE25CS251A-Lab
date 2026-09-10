module ripple_tb;
    reg [3:0]a;
    reg [3:0]b;
    reg cin;

    wire [3:0]s; 
    wire cout;

    rippleca r1(a,b,cin,s,cout);

    initial
    begin
        $monitor($time," a = %b, b = %b, cin = %b, s = %b, cout = %b",a,b,cin,s,cout);
    end

    initial
    begin
        #00 a=4'b0011; b=4'b0011; cin=0;
        #10 a=4'b0111; b=4'b0011; cin=1;
        #10 a=4'b0101; b=4'b0100; cin=1;
        #10 a=4'b0110; b=4'b0011; cin=1;
    end

    initial
    begin
        $dumpfile("ripple.vcd");
        $dumpvars(0,ripple_tb);
    end

endmodule