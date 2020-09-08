`include "transaction.sv"
`include "scoreboard.sv"

class monitor;
  
  virtual intf vif;
  
  mailbox mon2scb;
  scoreboard sb;

  function new(virtual intf vif,mailbox mon2scb,scoreboard sb);
    this.vif = vif;
    this.mon2scb = mon2scb;
    this.sb = sb;
  endfunction
  
  task main;
    begin
      transaction trans;
      trans = new();//这里没有用FIFO来.get，所以要new；
      @(posedge vif.clk);
      trans.a   = vif.a;
      trans.b   = vif.b;
      @(posedge vif.clk);
      trans.return_value   = vif.return_value;
      @(posedge vif.clk);
      mon2scb.put(trans);
      trans.display("[ Monitor: transaction from interface to Monitor ]");
      @(posedge vif.clk);
      sb.check_output;
    end
  endtask
  
endclass
