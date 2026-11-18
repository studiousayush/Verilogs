// module full_adder(a,b,cin,sum,cout);
//     input a,b,cin;
//     output sum,cout;
    
//     wire t1,t2,t3;

//     xor g1(t1,a,b);
//     xor g2(sum,t1,cin);
//     and g3(t2,a,b);
//     and g4(t3,t1,cin);
//     or g5(cout,t2,t3);    
// endmodule

module RCA(carry_out,sum,A,B,carry_in)
parameter N=8;

input [N-1:0] A,B;
input carry_in;
output [N-1:0] sum;
output carry_out;
wire [N:0] c;

assign c[0]=carry_in;
assign carry_out=c[N];

genvar i;
generate
    for (i=0;i<N;i=i++)
    begin fa_loop
       wire t1,t2,t3;
     
       xor g1(t1,A[i],B[i]);
         xor g2(sum[i],t1,c[i]);
          and g3(t2,A[i],B[i]);
           and g4(t3,t1,c[i]);
            or g5(c[i+1],t2,t3);
        end
endgenerate 

endmodule