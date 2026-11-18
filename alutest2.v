module alutest2;
reg [15:0]X, Y;
wire [15:0] Z;
wire S, ZR, CY, P, V;


ALU2 DUT (X, Y, Z, S, ZR, CY, P, V );
initial begin
$dumpfile ("alu2.vcd"); $dumpvars (0,alutest2);
$monitor ($time,"X=%h, Y=%h, Z=%h, S=%b, Z=%b, CY=%b, P=%b, V=%b", X, Y, Z, S, ZR, CY, P, V);
#5 X = 16'h8fff; Y = 16'h8000;
#5 X = 16'hfffe; Y = 16'h0002;
#5 X = 16'hAAAA; Y = 16'h5555;
#5 $finish;

end
endmodule