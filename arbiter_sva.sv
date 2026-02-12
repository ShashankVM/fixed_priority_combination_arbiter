module arbiter_sva();
  logic [3:0] req_i, gnt_o;
  int NUM = 4;

  arbiter #(NUM) inst(.req_i(req_i), .gnt_o(gnt_o));
  logic clk;
  default clocking CLK @(posedge clk);
  endclocking

  // declare 2 symbolic variables to represent any 2 arbitrary requesters
  int m, n; 

  VALID_REQUESTER_RANGE_1: assume property ((m >=0) && (m < NUM)); 
  VALID_REQUESTER_RANGE_2: assume property ((n >=0) && (n < NUM));
     
  PRIORITY_ARBITER: assert property ((m <= n) && req_i[m] && req_i[n] |-> gnt_o[m]);
 
  // At most 1 grant at any given time        
  ONE_HOT0_ARBITER: assert property ($onehot0(gnt_o)); 
    
endmodule
