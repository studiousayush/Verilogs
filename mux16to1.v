module mux16to1(in,sel,out);
    input [15:0] in;// 16-bit input
    input [3:0] sel; // 4-bit select signal
    output out ;// output

    assign out = in[sel]; // Select the appropriate input based on sel
endmodule
