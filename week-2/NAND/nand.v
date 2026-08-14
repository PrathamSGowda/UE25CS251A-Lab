// dataflow

module nand1(y,a,b);
    output y;
    input a,b;

    assign y = !(a&b);
    
endmodule