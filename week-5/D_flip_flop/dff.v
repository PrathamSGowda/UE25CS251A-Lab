module dff(clk, in, out);
    input clk, in;
    output out;
	reg dff_out;
	always@(posedge clk) dff_out <= in;
	assign out = dff_out;

endmodule