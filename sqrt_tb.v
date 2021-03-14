`timescale 1ns / 1ps
module sqroot_tb();
reg [15:0] n;
wire [7:0] out;

sqroot DUT(.n(n), .out(out));

initial
begin
  n = 0; #2; 
  n = 25; #4; 
  n = 144; #4; 
  n = 196; #4;
  $finish; 
end

initial
begin
  $dumpfile("test.vcd");
  $dumpvars(0, DUT);
  $monitor("At time %d ns, n = %d, out = %d", $time, n, out);
end
endmodule
