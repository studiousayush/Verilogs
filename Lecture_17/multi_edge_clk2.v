module multi_edge_clk2(a,b,c,d,f,clk);
  input [7:0] a,b,c,d;
    input clk;
    output reg [7:0] f;

    always@(posedge clk)
        c <= a + b;
    always@(negedge clk)
        f <= c - d;
endmodule