module muxtest;
 reg[15:0] A;
 reg [3:0] S;
    wire F;

    mux16to1 mux1(.in(A), .sel(S), .out(F));

    initial begin

        $dumpfile("muxtest.vcd");
        $dumpvars(0, muxtest);
        $monitor($time, " A=%h, S=%h, F=%b", A, S, F);
        #5 A = 16'h3f0a;S = 4'h0; // Initialize S to 0
         // Wait for 10 time units

         // Set A to a specific value
        #5 S = 4'h1; 
        #5 S = 4'h6; 
        #5 S = 4'hc;
        #5$finish; // End the simulation
    end
endmodule