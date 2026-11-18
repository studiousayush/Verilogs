module test_cyclic;
 
reg clk;
wire [0:2] light;
cyclic_lamp c1(clk,light);

always #5 clk = ~clk;
initial begin
    clk = 1'b0;
    #100 $finish;
end

initial begin
    $dumpfile("cyclic_lamp.vcd");
    $dumpvars(0,test_cyclic);
    $monitor($time ," RGY = %b ", light);
end
endmodule