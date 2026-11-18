//Behavioral modelling of 4to1 multiplexer 
// Structural modelling of 16to1 multiplexer using 4to1 multiplexer
module mux4to1(in,sel,out);
    input [3:0] in; // 4-bit input
    input [1:0] sel; // 2-bit select signal
    output out; // output

    assign out = in[sel]; // Select the appropriate input based on sel
endmodule


module mux16to1_ver2(in,sel,out);
    input [15:0] in; // 16-bit input
    input [3:0] sel; // 4-bit select signal
    output out; // output

    wire [3:0] mux_out; // Intermediate outputs from 4to1 multiplexers

    // Instantiate four 4to1 multiplexers
    mux4to1 mux0(.in(in[3:0]), .sel(sel[1:0]), .out(mux_out[0]));
    mux4to1 mux1(.in(in[7:4]), .sel(sel[1:0]), .out(mux_out[1]));
    mux4to1 mux2(.in(in[11:8]), .sel(sel[1:0]), .out(mux_out[2]));
    mux4to1 mux3(.in(in[15:12]), .sel(sel[1:0]), .out(mux_out[3]));

    // Final 4to1 multiplexer to select the output based on sel[3:2]
    mux4to1 final_mux(.in(mux_out), .sel(sel[3:2]), .out(out));
endmodule