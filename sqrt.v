`timescale 1ns / 1ps
module sqroot(n, out);
input [15:0] n;
output [7:0] out; 

wire [7:0] out;

integer i;
reg [7:0] temp; 

assign out = temp; 

always@(n)
begin
  temp = 8'h80;
  for(i = 7; i >= 0; i = i-1)
  begin
    if(temp * temp == n)
      temp = temp; 
    else if(temp * temp < n)
      temp[i-1] = 1;
    else if(temp * temp > n)
    begin
      temp[i] = 0;
      temp[i-1] = 1; 
    end
  end
end
endmodule
