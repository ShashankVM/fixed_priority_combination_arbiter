module arbiter_sva #(
  parameter NUM = 4
);
  logic [NUM-1:0] req_i, gnt_o;

  arbiter #(NUM) inst(.req_i(req_i), .gnt_o(gnt_o));

  // declare a clock for concurrent assertions
  logic clk;
  default clocking CLK @(posedge clk);
  endclocking
   

  // Declare 2 symbolic variables
  int m, n;  

  VALID_REQ_1: assume property ((m >= 0) && (m < NUM) && $stable(m));

  VALID_REQ_2: assume property ((n >= 0) && (n < NUM) && $stable(n)); 

  // Highest priority request is always granted
  HIGHEST_PRIORITY_REQ: assert property (req_i[0] |-> gnt_o[0]); 
 
  // PRIORITY_CHECK_1: If a request is granted, there should be no request of a higher priority
  // active.
  // This check is only concerned with the higher priority requests and it is
  // a safety check. 
  PRIORITY_CHECK_1: assert property ((m > 0) && (m > n) && req_i[m] && gnt_o[m] |-> (req_i[n] == 0));
     
  // PRIORITY_CHECK_2: If there are 2 requests, then the one with higher priority needs to be
  // granted.
  // This check is concerned with lower priority requests and it is a liveness
  // check.
  PRIORITY_CHECK_2: assert property ((m < n) && req_i[m] && req_i[n] && ($countones(req_i) == 2) |-> gnt_o[m]);

  // No grant without its request
  assert property (gnt_o[m] |-> req_i[m]);

  // Not more than 1 grant for any non-zero number of requests        
  ONE_HOT_ARBITER: assert property (req_i |-> $onehot(gnt_o));

  // Cover highest priority request
  cover property (req_i[0]);

  // Cover lowest priority request
  cover property (req_i[NUM-1]);

  // Cover all requests high
  cover property ($countones(req_i) == NUM);

  // Cover all requests low
  cover property ($countones(req_i) == 0);

endmodule
