//up-down counter synchronous with clock
module counter(mode,clr,ld,clk,count,d_in);
    input mode,clr,ld,clk;
    input [3:0] d_in;
    output reg [3:0] count;

    always @(posedge clk)
        if(ld) 
        count <= d_in;
        else if(clr)
        count<= 0;
        else if(mode)
        count <= count + 1'b1;
        else
        count <= count - 1'b1;
endmodule