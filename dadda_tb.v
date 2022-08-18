`timescale 1ps/1ps
module test1;
reg [7:0]a,b;
wire [15:0] result;
dadda ex1(a,b,result);
initial
begin
$dumpfile("1.vcd");
$dumpvars(0,test1);
$monitor($time," a=%h , b=%h , result=%h" , a,b,result);
#5 a=8'h10; b=8'h42;
#5 a=8'h10; b=8'h42;
#5 a=8'h10; b=8'h42;
end
endmodule
