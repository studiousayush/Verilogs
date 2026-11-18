//A sequential logic D flip-flop with negative edge triggering

module dff_negedge(Q,Qbar,D,clk);
    input D,clk;
    output reg Q,Qbar;
    

    always @(negedge clk)
    begin
        Q <= D;
        Qbar <= ~D;
    end
endmodule