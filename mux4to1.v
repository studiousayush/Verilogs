module mux2to1;
input [1:0] in;
input  sel;
output out;

assign out = in[sel];
endmodule

module mux4to1;
input [3:0] in;
input [1:0] sel;
output out;

wire [1:0]t;
 
mux2to1 m1(in[1:0],sel[0],t[0]);
mux2to1 m2(in[3:2],sel[0],t[1]);
mux2to1 m3(t,sel[1],out);

endmodule

