** Results:
[fv_tb.inst1.VALID_REQ_1] always arbiter_sva(4).m >= 0 && arbiter_sva(4).m < arbiter_sva(4).NUM && $stable(arbiter_sva(4).m): ASSUMED
[fv_tb.inst1.VALID_REQ_2] always arbiter_sva(4).n >= 0 && arbiter_sva(4).n < arbiter_sva(4).NUM && $stable(arbiter_sva(4).n): ASSUMED
[fv_tb.inst1.HIGHEST_PRIORITY_REQ] always (arbiter_sva(4).req_i[0] |-> arbiter_sva(4).gnt_o[0]): PROVED (1-induction)
[fv_tb.inst1.PRIORITY_CHECK_1] always (arbiter_sva(4).m > 0 && arbiter_sva(4).m > arbiter_sva(4).n && arbiter_sva(4).req_i[arbiter_sva(4).m] && arbiter_sva(4).gnt_o[arbiter_sva(4).m] |-> arbiter_sva(4).req_i[arbiter_sva(4).n] == 0): PROVED (1-induction)
[fv_tb.inst1.PRIORITY_CHECK_2] always (arbiter_sva(4).m < arbiter_sva(4).n && arbiter_sva(4).req_i[arbiter_sva(4).m] && arbiter_sva(4).req_i[arbiter_sva(4).n] && $countones(arbiter_sva(4).req_i) == 2 |-> arbiter_sva(4).gnt_o[arbiter_sva(4).m]): PROVED (1-induction)
[fv_tb.inst1.assert.1] always (arbiter_sva(4).gnt_o[arbiter_sva(4).m] |-> arbiter_sva(4).req_i[arbiter_sva(4).m]): PROVED (1-induction)
[fv_tb.inst1.ONE_HOT_ARBITER] always (arbiter_sva(4).req_i |-> $onehot(arbiter_sva(4).gnt_o)): PROVED (1-induction)
[fv_tb.inst1.cover.2] cover arbiter_sva(4).req_i[0]: PROVED
Trace:

Transition system state 0
----------------------------------------------------
  fv_tb.inst1.NUM = 4 (00000000000000000000000000000100)
  fv_tb.inst1.req_i = 4'b0001 (0001)
  fv_tb.inst1.gnt_o = 4'b0001 (0001)
  fv_tb.inst1.clk = 1'b0
  fv_tb.inst1.m = 0 (00000000000000000000000000000000)
  fv_tb.inst1.n = 0 (00000000000000000000000000000000)
  fv_tb.inst1.inst.NUM_PORTS = 4 (00000000000000000000000000000100)
  fv_tb.inst1.inst.req_i = 4'b0001 (0001)
  fv_tb.inst1.inst.gnt_o = 4'b0001 (0001)
  fv_tb.inst1.inst.gnt = 4'b0001 (0001)
  fv_tb.inst1.inst.breakout = 1
  fv_tb.inst1.inst.i = 4 (00000000000000000000000000000100)
  fv_tb.inst2.NUM = 7 (00000000000000000000000000000111)
  fv_tb.inst2.req_i = 7'b0010000 (0010000)
  fv_tb.inst2.gnt_o = 7'b0010000 (0010000)
  fv_tb.inst2.clk = 1'b0
  fv_tb.inst2.m = 0 (00000000000000000000000000000000)
  fv_tb.inst2.n = 0 (00000000000000000000000000000000)
  fv_tb.inst2.inst.NUM_PORTS = 7 (00000000000000000000000000000111)
  fv_tb.inst2.inst.req_i = 7'b0010000 (0010000)
  fv_tb.inst2.inst.gnt_o = 7'b0010000 (0010000)
  fv_tb.inst2.inst.gnt = 7'b0010000 (0010000)
  fv_tb.inst2.inst.breakout = 1
  fv_tb.inst2.inst.i = 7 (00000000000000000000000000000111)
  ebmc::$past1@1 = 0 (00000000000000000000000000000000)
  ebmc::$past2@1 = 0 (00000000000000000000000000000000)
  ebmc::$past3@1 = 0 (00000000000000000000000000000000)
  ebmc::$past4@1 = 0 (00000000000000000000000000000000)

[fv_tb.inst1.cover.3] cover arbiter_sva(4).req_i[3]: PROVED
Trace:

Transition system state 0
----------------------------------------------------
  fv_tb.inst1.NUM = 4 (00000000000000000000000000000100)
  fv_tb.inst1.req_i = 4'b1100 (1100)
  fv_tb.inst1.gnt_o = 4'b0100 (0100)
  fv_tb.inst1.clk = 1'b0
  fv_tb.inst1.m = 0 (00000000000000000000000000000000)
  fv_tb.inst1.n = 0 (00000000000000000000000000000000)
  fv_tb.inst1.inst.NUM_PORTS = 4 (00000000000000000000000000000100)
  fv_tb.inst1.inst.req_i = 4'b1100 (1100)
  fv_tb.inst1.inst.gnt_o = 4'b0100 (0100)
  fv_tb.inst1.inst.gnt = 4'b0100 (0100)
  fv_tb.inst1.inst.breakout = 1
  fv_tb.inst1.inst.i = 4 (00000000000000000000000000000100)
  fv_tb.inst2.NUM = 7 (00000000000000000000000000000111)
  fv_tb.inst2.req_i = 7'b0010000 (0010000)
  fv_tb.inst2.gnt_o = 7'b0010000 (0010000)
  fv_tb.inst2.clk = 1'b0
  fv_tb.inst2.m = 0 (00000000000000000000000000000000)
  fv_tb.inst2.n = 0 (00000000000000000000000000000000)
  fv_tb.inst2.inst.NUM_PORTS = 7 (00000000000000000000000000000111)
  fv_tb.inst2.inst.req_i = 7'b0010000 (0010000)
  fv_tb.inst2.inst.gnt_o = 7'b0010000 (0010000)
  fv_tb.inst2.inst.gnt = 7'b0010000 (0010000)
  fv_tb.inst2.inst.breakout = 1
  fv_tb.inst2.inst.i = 7 (00000000000000000000000000000111)
  ebmc::$past1@1 = 0 (00000000000000000000000000000000)
  ebmc::$past2@1 = 0 (00000000000000000000000000000000)
  ebmc::$past3@1 = 0 (00000000000000000000000000000000)
  ebmc::$past4@1 = 0 (00000000000000000000000000000000)

[fv_tb.inst1.cover.4] cover $countones(arbiter_sva(4).req_i) == arbiter_sva(4).NUM: PROVED
Trace:

Transition system state 0
----------------------------------------------------
  fv_tb.inst1.NUM = 4 (00000000000000000000000000000100)
  fv_tb.inst1.req_i = 4'b1111 (1111)
  fv_tb.inst1.gnt_o = 4'b0001 (0001)
  fv_tb.inst1.clk = 1'b0
  fv_tb.inst1.m = 0 (00000000000000000000000000000000)
  fv_tb.inst1.n = 0 (00000000000000000000000000000000)
  fv_tb.inst1.inst.NUM_PORTS = 4 (00000000000000000000000000000100)
  fv_tb.inst1.inst.req_i = 4'b1111 (1111)
  fv_tb.inst1.inst.gnt_o = 4'b0001 (0001)
  fv_tb.inst1.inst.gnt = 4'b0001 (0001)
  fv_tb.inst1.inst.breakout = 1
  fv_tb.inst1.inst.i = 4 (00000000000000000000000000000100)
  fv_tb.inst2.NUM = 7 (00000000000000000000000000000111)
  fv_tb.inst2.req_i = 7'b0000000 (0000000)
  fv_tb.inst2.gnt_o = 7'b0000000 (0000000)
  fv_tb.inst2.clk = 1'b0
  fv_tb.inst2.m = 0 (00000000000000000000000000000000)
  fv_tb.inst2.n = 0 (00000000000000000000000000000000)
  fv_tb.inst2.inst.NUM_PORTS = 7 (00000000000000000000000000000111)
  fv_tb.inst2.inst.req_i = 7'b0000000 (0000000)
  fv_tb.inst2.inst.gnt_o = 7'b0000000 (0000000)
  fv_tb.inst2.inst.gnt = 7'b0000000 (0000000)
  fv_tb.inst2.inst.breakout = 0
  fv_tb.inst2.inst.i = 7 (00000000000000000000000000000111)
  ebmc::$past1@1 = 0 (00000000000000000000000000000000)
  ebmc::$past2@1 = 0 (00000000000000000000000000000000)
  ebmc::$past3@1 = 0 (00000000000000000000000000000000)
  ebmc::$past4@1 = 0 (00000000000000000000000000000000)

[fv_tb.inst1.cover.5] cover $countones(arbiter_sva(4).req_i) == 0: PROVED
Trace:

Transition system state 0
----------------------------------------------------
  fv_tb.inst1.NUM = 4 (00000000000000000000000000000100)
  fv_tb.inst1.req_i = 4'b0000 (0000)
  fv_tb.inst1.gnt_o = 4'b0000 (0000)
  fv_tb.inst1.clk = 1'b0
  fv_tb.inst1.m = 0 (00000000000000000000000000000000)
  fv_tb.inst1.n = 0 (00000000000000000000000000000000)
  fv_tb.inst1.inst.NUM_PORTS = 4 (00000000000000000000000000000100)
  fv_tb.inst1.inst.req_i = 4'b0000 (0000)
  fv_tb.inst1.inst.gnt_o = 4'b0000 (0000)
  fv_tb.inst1.inst.gnt = 4'b0000 (0000)
  fv_tb.inst1.inst.breakout = 0
  fv_tb.inst1.inst.i = 4 (00000000000000000000000000000100)
  fv_tb.inst2.NUM = 7 (00000000000000000000000000000111)
  fv_tb.inst2.req_i = 7'b0010000 (0010000)
  fv_tb.inst2.gnt_o = 7'b0010000 (0010000)
  fv_tb.inst2.clk = 1'b0
  fv_tb.inst2.m = 0 (00000000000000000000000000000000)
  fv_tb.inst2.n = 0 (00000000000000000000000000000000)
  fv_tb.inst2.inst.NUM_PORTS = 7 (00000000000000000000000000000111)
  fv_tb.inst2.inst.req_i = 7'b0010000 (0010000)
  fv_tb.inst2.inst.gnt_o = 7'b0010000 (0010000)
  fv_tb.inst2.inst.gnt = 7'b0010000 (0010000)
  fv_tb.inst2.inst.breakout = 1
  fv_tb.inst2.inst.i = 7 (00000000000000000000000000000111)
  ebmc::$past1@1 = 0 (00000000000000000000000000000000)
  ebmc::$past2@1 = 0 (00000000000000000000000000000000)
  ebmc::$past3@1 = 0 (00000000000000000000000000000000)
  ebmc::$past4@1 = 0 (00000000000000000000000000000000)

[fv_tb.inst2.VALID_REQ_1] always arbiter_sva(7).m >= 0 && arbiter_sva(7).m < arbiter_sva(7).NUM && $stable(arbiter_sva(7).m): ASSUMED
[fv_tb.inst2.VALID_REQ_2] always arbiter_sva(7).n >= 0 && arbiter_sva(7).n < arbiter_sva(7).NUM && $stable(arbiter_sva(7).n): ASSUMED
[fv_tb.inst2.HIGHEST_PRIORITY_REQ] always (arbiter_sva(7).req_i[0] |-> arbiter_sva(7).gnt_o[0]): PROVED (1-induction)
[fv_tb.inst2.PRIORITY_CHECK_1] always (arbiter_sva(7).m > 0 && arbiter_sva(7).m > arbiter_sva(7).n && arbiter_sva(7).req_i[arbiter_sva(7).m] && arbiter_sva(7).gnt_o[arbiter_sva(7).m] |-> arbiter_sva(7).req_i[arbiter_sva(7).n] == 0): PROVED (1-induction)
[fv_tb.inst2.PRIORITY_CHECK_2] always (arbiter_sva(7).m < arbiter_sva(7).n && arbiter_sva(7).req_i[arbiter_sva(7).m] && arbiter_sva(7).req_i[arbiter_sva(7).n] && $countones(arbiter_sva(7).req_i) == 2 |-> arbiter_sva(7).gnt_o[arbiter_sva(7).m]): PROVED (1-induction)
[fv_tb.inst2.assert.1] always (arbiter_sva(7).gnt_o[arbiter_sva(7).m] |-> arbiter_sva(7).req_i[arbiter_sva(7).m]): PROVED (1-induction)
[fv_tb.inst2.ONE_HOT_ARBITER] always (arbiter_sva(7).req_i |-> $onehot(arbiter_sva(7).gnt_o)): PROVED (1-induction)
[fv_tb.inst2.cover.2] cover arbiter_sva(7).req_i[0]: PROVED
Trace:

Transition system state 0
----------------------------------------------------
  fv_tb.inst1.NUM = 4 (00000000000000000000000000000100)
  fv_tb.inst1.req_i = 4'b1111 (1111)
  fv_tb.inst1.gnt_o = 4'b0001 (0001)
  fv_tb.inst1.clk = 1'b0
  fv_tb.inst1.m = 0 (00000000000000000000000000000000)
  fv_tb.inst1.n = 0 (00000000000000000000000000000000)
  fv_tb.inst1.inst.NUM_PORTS = 4 (00000000000000000000000000000100)
  fv_tb.inst1.inst.req_i = 4'b1111 (1111)
  fv_tb.inst1.inst.gnt_o = 4'b0001 (0001)
  fv_tb.inst1.inst.gnt = 4'b0001 (0001)
  fv_tb.inst1.inst.breakout = 1
  fv_tb.inst1.inst.i = 4 (00000000000000000000000000000100)
  fv_tb.inst2.NUM = 7 (00000000000000000000000000000111)
  fv_tb.inst2.req_i = 7'b1111011 (1111011)
  fv_tb.inst2.gnt_o = 7'b0000001 (0000001)
  fv_tb.inst2.clk = 1'b0
  fv_tb.inst2.m = 0 (00000000000000000000000000000000)
  fv_tb.inst2.n = 0 (00000000000000000000000000000000)
  fv_tb.inst2.inst.NUM_PORTS = 7 (00000000000000000000000000000111)
  fv_tb.inst2.inst.req_i = 7'b1111011 (1111011)
  fv_tb.inst2.inst.gnt_o = 7'b0000001 (0000001)
  fv_tb.inst2.inst.gnt = 7'b0000001 (0000001)
  fv_tb.inst2.inst.breakout = 1
  fv_tb.inst2.inst.i = 7 (00000000000000000000000000000111)
  ebmc::$past1@1 = 0 (00000000000000000000000000000000)
  ebmc::$past2@1 = 0 (00000000000000000000000000000000)
  ebmc::$past3@1 = 0 (00000000000000000000000000000000)
  ebmc::$past4@1 = 0 (00000000000000000000000000000000)

[fv_tb.inst2.cover.3] cover arbiter_sva(7).req_i[6]: PROVED
Trace:

Transition system state 0
----------------------------------------------------
  fv_tb.inst1.NUM = 4 (00000000000000000000000000000100)
  fv_tb.inst1.req_i = 4'b1111 (1111)
  fv_tb.inst1.gnt_o = 4'b0001 (0001)
  fv_tb.inst1.clk = 1'b0
  fv_tb.inst1.m = 0 (00000000000000000000000000000000)
  fv_tb.inst1.n = 0 (00000000000000000000000000000000)
  fv_tb.inst1.inst.NUM_PORTS = 4 (00000000000000000000000000000100)
  fv_tb.inst1.inst.req_i = 4'b1111 (1111)
  fv_tb.inst1.inst.gnt_o = 4'b0001 (0001)
  fv_tb.inst1.inst.gnt = 4'b0001 (0001)
  fv_tb.inst1.inst.breakout = 1
  fv_tb.inst1.inst.i = 4 (00000000000000000000000000000100)
  fv_tb.inst2.NUM = 7 (00000000000000000000000000000111)
  fv_tb.inst2.req_i = 7'b1111011 (1111011)
  fv_tb.inst2.gnt_o = 7'b0000001 (0000001)
  fv_tb.inst2.clk = 1'b0
  fv_tb.inst2.m = 0 (00000000000000000000000000000000)
  fv_tb.inst2.n = 0 (00000000000000000000000000000000)
  fv_tb.inst2.inst.NUM_PORTS = 7 (00000000000000000000000000000111)
  fv_tb.inst2.inst.req_i = 7'b1111011 (1111011)
  fv_tb.inst2.inst.gnt_o = 7'b0000001 (0000001)
  fv_tb.inst2.inst.gnt = 7'b0000001 (0000001)
  fv_tb.inst2.inst.breakout = 1
  fv_tb.inst2.inst.i = 7 (00000000000000000000000000000111)
  ebmc::$past1@1 = 0 (00000000000000000000000000000000)
  ebmc::$past2@1 = 0 (00000000000000000000000000000000)
  ebmc::$past3@1 = 0 (00000000000000000000000000000000)
  ebmc::$past4@1 = 0 (00000000000000000000000000000000)

[fv_tb.inst2.cover.4] cover $countones(arbiter_sva(7).req_i) == arbiter_sva(7).NUM: PROVED
Trace:

Transition system state 0
----------------------------------------------------
  fv_tb.inst1.NUM = 4 (00000000000000000000000000000100)
  fv_tb.inst1.req_i = 4'b0000 (0000)
  fv_tb.inst1.gnt_o = 4'b0000 (0000)
  fv_tb.inst1.clk = 1'b0
  fv_tb.inst1.m = 0 (00000000000000000000000000000000)
  fv_tb.inst1.n = 0 (00000000000000000000000000000000)
  fv_tb.inst1.inst.NUM_PORTS = 4 (00000000000000000000000000000100)
  fv_tb.inst1.inst.req_i = 4'b0000 (0000)
  fv_tb.inst1.inst.gnt_o = 4'b0000 (0000)
  fv_tb.inst1.inst.gnt = 4'b0000 (0000)
  fv_tb.inst1.inst.breakout = 0
  fv_tb.inst1.inst.i = 4 (00000000000000000000000000000100)
  fv_tb.inst2.NUM = 7 (00000000000000000000000000000111)
  fv_tb.inst2.req_i = 7'b1111111 (1111111)
  fv_tb.inst2.gnt_o = 7'b0000001 (0000001)
  fv_tb.inst2.clk = 1'b0
  fv_tb.inst2.m = 0 (00000000000000000000000000000000)
  fv_tb.inst2.n = 0 (00000000000000000000000000000000)
  fv_tb.inst2.inst.NUM_PORTS = 7 (00000000000000000000000000000111)
  fv_tb.inst2.inst.req_i = 7'b1111111 (1111111)
  fv_tb.inst2.inst.gnt_o = 7'b0000001 (0000001)
  fv_tb.inst2.inst.gnt = 7'b0000001 (0000001)
  fv_tb.inst2.inst.breakout = 1
  fv_tb.inst2.inst.i = 7 (00000000000000000000000000000111)
  ebmc::$past1@1 = 0 (00000000000000000000000000000000)
  ebmc::$past2@1 = 0 (00000000000000000000000000000000)
  ebmc::$past3@1 = 0 (00000000000000000000000000000000)
  ebmc::$past4@1 = 0 (00000000000000000000000000000000)

[fv_tb.inst2.cover.5] cover $countones(arbiter_sva(7).req_i) == 0: PROVED
Trace:

Transition system state 0
----------------------------------------------------
  fv_tb.inst1.NUM = 4 (00000000000000000000000000000100)
  fv_tb.inst1.req_i = 4'b0001 (0001)
  fv_tb.inst1.gnt_o = 4'b0001 (0001)
  fv_tb.inst1.clk = 1'b0
  fv_tb.inst1.m = 0 (00000000000000000000000000000000)
  fv_tb.inst1.n = 0 (00000000000000000000000000000000)
  fv_tb.inst1.inst.NUM_PORTS = 4 (00000000000000000000000000000100)
  fv_tb.inst1.inst.req_i = 4'b0001 (0001)
  fv_tb.inst1.inst.gnt_o = 4'b0001 (0001)
  fv_tb.inst1.inst.gnt = 4'b0001 (0001)
  fv_tb.inst1.inst.breakout = 1
  fv_tb.inst1.inst.i = 4 (00000000000000000000000000000100)
  fv_tb.inst2.NUM = 7 (00000000000000000000000000000111)
  fv_tb.inst2.req_i = 7'b0000000 (0000000)
  fv_tb.inst2.gnt_o = 7'b0000000 (0000000)
  fv_tb.inst2.clk = 1'b0
  fv_tb.inst2.m = 0 (00000000000000000000000000000000)
  fv_tb.inst2.n = 0 (00000000000000000000000000000000)
  fv_tb.inst2.inst.NUM_PORTS = 7 (00000000000000000000000000000111)
  fv_tb.inst2.inst.req_i = 7'b0000000 (0000000)
  fv_tb.inst2.inst.gnt_o = 7'b0000000 (0000000)
  fv_tb.inst2.inst.gnt = 7'b0000000 (0000000)
  fv_tb.inst2.inst.breakout = 0
  fv_tb.inst2.inst.i = 7 (00000000000000000000000000000111)
  ebmc::$past1@1 = 0 (00000000000000000000000000000000)
  ebmc::$past2@1 = 0 (00000000000000000000000000000000)
  ebmc::$past3@1 = 0 (00000000000000000000000000000000)
  ebmc::$past4@1 = 0 (00000000000000000000000000000000)

