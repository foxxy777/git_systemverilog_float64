interface intf(input logic clk);
  
  //declaring the signals
  //logic       valid;
  logic [63:0] a;
  logic [63:0] b;
  logic [63:0] return_value;
  logic rstN;
  logic start;
  logic fin;
  
endinterface
