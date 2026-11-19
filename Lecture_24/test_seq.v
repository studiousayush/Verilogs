module test_seq;

wire z;
reg x, clk, rst;

seq_detector s1(
    .x(x),
    .clk(clk),
    .rst(rst),
    .z(z)
);

initial begin 
    $dumpfile("seq.vcd");
    $dumpvars(0,test_seq);
    clk=1'b0;rst=1'b1;
    #15 rst=1'b0;

end

always #5 clk=~clk;
initial begin 
    
     x=1'b0;
end


initial begin
 #12 x=0; #10 x=0; #10 x=1;#10 x=1;
 #10 x=0; #10 x=1; #10 x=1; #10 x=0;
 #10 x=0; #10 x=1; #10 x=1; #10 x=0;
 #10 $finish;
  
end


endmodule