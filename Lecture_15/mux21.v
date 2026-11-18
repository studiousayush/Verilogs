// A combinational 2:1 multiplexer
module mux21(in0,in1,sel,out);
    input in0,in1;
    input sel;
    output reg f;

    always@ (in0 or in1 or sel)
  //  always@ (in0,in1,sel)                  alternate way of expressing the sensitivit
// always@(*)

    if(sel)
     f = in1;
    else
    f = in0;


endmodule
