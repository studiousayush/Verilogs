//2-bit comparator 

module compare2(a,b,eq,gt,lt);
    input [1:0] a,b;
    output reg eq,gt,lt;

    always@(*)begin
      gt = {a[1],a[0]} > {b[1],b[0]};
      lt = {a[1],a[0]} < {b[1],b[0]};
      eq = {a[1],a[0]} == {b[1],b[0]};  

    end
endmodule