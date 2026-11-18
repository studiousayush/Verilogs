module mux2to1;
input [1:0] in;
input  sel;
output out;
wire t1,t2,t3;

NOT g1(sel,t1);
AND g2(in[0],t1,t2);
AND g3(in[1],sel,t3);
OR g4(t2,t3,out);

endmodule