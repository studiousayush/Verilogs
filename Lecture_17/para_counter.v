//Parameterized design of a counter an Nbit counter 
// module counter #(parameter N=4)(clk,reset,count);
//     input clk,reset;
//     output reg [N-1:0] count;   

module counter (clear,clock,count);
    parameter N=7;
    input clear,clock;
    output reg [0:N] count;

    always @(negedge clock)

        if(clear)
            count <= 0;
        else
            count <= count + 1'b1;
endmodule