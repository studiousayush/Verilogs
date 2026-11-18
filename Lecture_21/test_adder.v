module test_adder;
reg [7:0] a,b;
wire [7:0] sum;
wire cout;
integer myseed;
adder adder1(sum,cout,a,b);

initial myseed = 15;

initial begin
    repeat(5)
    begin 
        a = $random(myseed);
        b = $random(myseed);
        #10;
        $display("T=%3d,a=%d, b=%d, sum=%d, cout=%b",$time,a,b,sum,cout);
    end
end

endmodule 