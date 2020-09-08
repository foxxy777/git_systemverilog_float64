`ifndef TRANSACTION
`define TRANSACTION
class transaction;
  
  //declaring the transaction items
   bit [63:0] a;
   bit [63:0] b;
   bit [63:0] return_value;
  function void display(string name);
    $display("-------------------------");
    $display("- %s ",name);
    //$display("-------------------------");
    $display("- a = %0h, b = %0h",a,b);
    $display("- return_value = %0h",return_value);
    $display("-------------------------");
  endfunction
endclass

`endif
