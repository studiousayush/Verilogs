module seq_detector(x,z,clk,rst);

input x,clk,rst;
output reg z;

parameter S0=0,S1 = 1,S2=2,S3=3;
reg [0:1] PS , NS;

always@(posedge clk or negedge reset)
if(reset) PS<=S0;
else      PS<=NS;

always@(PS,X)
      case (PS)
        S0:begin
          z = x?0:0;
          NS= x?S0:S1;
        end

        S1:begin
          z = x?0:0;
          NS= x?S2:S1;
        end

        S0:begin
          z = x?0:0;
          NS= x?S3:S1;
        end

        S0:begin
          z = x?0:1;
          NS= x?S0:S1;
        end
      endcase


endmodule