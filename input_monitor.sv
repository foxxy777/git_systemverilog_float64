`include "transaction.sv"
`include "scoreboard.sv"

class input_monitor;
  
  virtual intf vif;
  
  mailbox in_mon2scb;
  mailbox driv2in_mon;

  scoreboard sb;
  
  function new(virtual intf vif,mailbox driv2in_mon ,in_mon2scb,scoreboard sb);
    this.vif = vif;
    this.driv2in_mon = driv2in_mon;
    this.in_mon2scb = in_mon2scb;
    this.sb = sb;
  endfunction
  
  task main;
    begin
      transaction trans;
      trans = new();//这里没有用FIFO来.get，所以要new；
      @(posedge vif.clk);
      driv2in_mon.get(trans);
     
      @(posedge vif.clk);
      in_mon2scb.put(trans);
      trans.display("[Input_Monitor: transaction from Driver to input_Monitor ]");
      @(posedge vif.clk);
	sb.update_input;
    end
  endtask

  
endclass
