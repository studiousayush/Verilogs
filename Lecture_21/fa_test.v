module fulladder_test;

reg a,b,cin;
wire sum,cout;
integer correct;

fulladder fa1(a,b,cin,sum,cout);

initial begin
    correct =1;

    #5 a=1;b=1;cin=0; #5 if(sum!=0 || cout!=1) correct=0;
    #5 a=1;b=1;cin=1; #5 if(sum!=1 || cout!=1) correct=0;
    #5 a=0;b=1;cin=0; #5 if(sum!=1|| cout!=0) correct=0;

    #5 $display("Test completed, correct = %d",correct);
    $finish;
end
endmodule