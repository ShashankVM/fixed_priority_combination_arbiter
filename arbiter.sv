module arbiter #(
  parameter NUM_PORTS = 4
)(
    input       wire[NUM_PORTS-1:0] req_i,
    output      wire[NUM_PORTS-1:0] gnt_o   // One-hot grant signal
);
  logic [NUM_PORTS-1:0]gnt;
  always_comb begin
    gnt = 0;
    for (int i = 0; i < NUM_PORTS; i++)
       priority if (req_i[i]) begin
         gnt[i] = 1'b1;
         break;
       end else begin
         gnt[i] = 1'b0;
       end
  end    
  assign gnt_o = gnt;

endmodule
