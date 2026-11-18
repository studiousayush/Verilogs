module cyclic_lamp(clock,light);
input clock;
output reg [0:2] light;
parameter S0=0,S1=1,S2=2;
parameter YELLOW=3'b001,GREEN=3'b010,RED=3'b100;

reg [1:0] state;

always@(posedge clock)
    case(state)
        S0: begin
            light <= RED;
            state <= S1;
        end
        S1: begin
            light <= GREEN;
            state <= S2;
        end
        S2: begin
            light <= YELLOW;
            state <= S0;
        end
    default: begin
            light <= RED;
            state <= S0;
        end
    endcase
endmodule