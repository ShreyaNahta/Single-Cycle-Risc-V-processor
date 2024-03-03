module PCCounter #(parameter Width = 32) (clk, PCen,PC1,PC);
input clk, PCen;
input [Width-1:0] PC1;
output reg [Width-1:0] PC;
always@(posedge clk)
begin
if(PCen == 0)
PC <= PC;
else 
PC <= PC1;
end
endmodule
