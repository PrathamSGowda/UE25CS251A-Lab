module and1(y,a,b);
    output y;
    input a,b;

    assign y = a&b;
    
endmodule

module not1(y,a);
    output y;
    input a;
    assign y=!a;

endmodule

module dff(clk, in, out);
    input clk, in;
    output out;
	reg dff_out;
	always@(posedge clk) dff_out <= in;
	assign out = dff_out;

endmodule