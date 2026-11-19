module seq_detector(x,z,clk,rst);

input x,clk,rst;
output reg z;

parameter S0=0,S1 = 1,S2=2,S3=3;
reg [1:0] PS , NS;

always@(posedge clk or negedge rst)begin
    if(rst)
        PS<=S0;
    else      
        PS<=NS;
end

always@(PS,x)begin
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
end


endmodule