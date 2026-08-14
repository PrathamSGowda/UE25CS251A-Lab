// dataflow

module xnor1(y,a,b);
    output y;
    input a,b;

    assign y = !(a^b);
    
endmodule