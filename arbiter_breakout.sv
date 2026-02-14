module arbiter_breakout #(
  parameter NUM_PORTS = 4
)(
    input       wire[NUM_PORTS-1:0] req_i,
    output      wire[NUM_PORTS-1:0] gnt_o   // One-hot grant signal
);
  logic [NUM_PORTS-1:0]gnt;
  bit breakout;
  always_comb begin
    gnt = 0;
    breakout = 0;
    for (int i = 0; i < NUM_PORTS; i++)
      if (!breakout) 
        priority if (req_i[i]) begin
	    gnt[i] = 1'b1;
        breakout = 1;
      end
  end
  assign gnt_o = gnt;

endmodule
