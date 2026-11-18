module generate_test;

reg [15:0] x;
reg [15:0] y;
wire [15:0] out;

xor_bitwise G1(.f(out),.a(x),.b(y));

initial begin
    $monitor("%0t x=%h, y=%h, out=%h", $time, x, y, out);
    x = 16'h0000;
    y = 16'h1111;
    #10 x = 16'hffff; y = 16'hffff;
    #20 x = 16'haaaa; y = 16'h5555;
    #10 $finish;
end
endmodule