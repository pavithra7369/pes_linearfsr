module pes_lfsr_tb;
reg clk;
reg rst;
reg [3:0] seed;
reg load;
wire q;
pes_lfsr L(q, clk, rst, seed, load);
// initialization
// apply reset pulse
initial
begin
  $dumpfile ("pes_lfsr.vcd"); 
  $dumpvars(0,pes_lfsr_tb);
clk = 0;
load = 0;
seed = 0;
rst = 0;
#10 rst = 1;
#10 rst = 0;
end
// drive clock
always
#50 clk = !clk;
// program lfsr
initial begin
#100 seed = 4'b0001;
load = 1;
#100 load = 0;
end
endmodule
