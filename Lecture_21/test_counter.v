module test_counter;
 reg clr,clk;
 wire [7:0] out;

counter c1(clr,clk,out);
initial clk = 1'b0;

initial begin
    $dumpfile("counter.vcd");
    $dumpvars(0,test_counter);
    $monitor($time,"Count = %d",out );

end

always #5 clk = ~clk;
initial begin
    clr = 1'b1; #15 clr = 1'b0;
    #200 clr = 1'b1;
    #10 $finish;
end


endmodule
