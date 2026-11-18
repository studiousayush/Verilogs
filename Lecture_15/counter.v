module counter(clk,reset,count);
    input clk,reset;
    output reg [3:0] count;
    
    
    
    always @(posedge clk or posedge reset)
        if(reset)
            count <= 4'b0000;
        else
            count <= count + 1'b1;
endmodule