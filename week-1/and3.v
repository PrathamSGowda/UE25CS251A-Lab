// behavioral

module and3
(
    output reg y,
    input a,b
);

    always @(*)
    begin
        y = a&b;
    end

endmodule