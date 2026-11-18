module example(A,B,C,D,E,F,Y);
input A,B,C,D,E,F;
output Y;
wire t1,t2,t3;

nand #1 g1(t1,A,B);
and #2 g2(t2,C,~B,D);
nor #1 g3(t3,E,F);
nand #1 g4(Y,t1,t2,t3);

endmodule