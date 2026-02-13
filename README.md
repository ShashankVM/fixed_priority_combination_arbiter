**Command:** 
  `ebmc --systemverilog --top arbiter_sva arbiter_sva.sv arbiter.sv --trace`

**Output:**
Converting
Type-checking Verilog::arbiter
Synthesis Verilog::arbiter
file arbiter.sv line 12: Making arbiter.i a wire
file arbiter.sv line 8: Making arbiter.breakout a wire
file arbiter.sv line 7: Making arbiter.gnt a wire
Type-checking Verilog::arbiter_sva
Synthesis Verilog::arbiter_sva
file arbiter.sv line 12: Making arbiter(4).i a wire
file arbiter.sv line 8: Making arbiter(4).breakout a wire
file arbiter.sv line 7: Making arbiter(4).gnt a wire
file arbiter_sva.sv line 2: Making arbiter_sva.gnt_o a wire
No engine given, attempting heuristic engine selection
Tautology check
Attempting completeness threshold
Attempting 1-induction
Induction Base
Generating Decision Problem
Using MiniSAT 2.2.1 with simplifier
Properties
Solving with propositional reduction
SAT checker: instance is SATISFIABLE
SAT: path found
SAT checker: instance is SATISFIABLE
SAT: path found
SAT checker: instance is SATISFIABLE
SAT: path found
SAT checker: instance is SATISFIABLE
SAT: path found
SAT checker: instance is UNSATISFIABLE
UNSAT: No path found within bound
Induction Step
Using MiniSAT 2.2.1 with simplifier
SAT checker inconsistent: instance is UNSATISFIABLE
UNSAT: inductive proof successful, property holds
Using MiniSAT 2.2.1 with simplifier
SAT checker: instance is UNSATISFIABLE
UNSAT: inductive proof successful, property holds
Using MiniSAT 2.2.1 with simplifier
SAT checker: instance is UNSATISFIABLE
UNSAT: inductive proof successful, property holds
Using MiniSAT 2.2.1 with simplifier
SAT checker: instance is UNSATISFIABLE
UNSAT: inductive proof successful, property holds
Using MiniSAT 2.2.1 with simplifier
SAT checker: instance is UNSATISFIABLE
UNSAT: inductive proof successful, property holds

** Results:
[arbiter_sva.VALID_REQ_1] always arbiter_sva.m >= 0 && arbiter_sva.m < arbiter_sva.NUM && $stable(arbiter_sva.m): ASSUMED
[arbiter_sva.VALID_REQ_2] always arbiter_sva.n >= 0 && arbiter_sva.n < arbiter_sva.NUM && $stable(arbiter_sva.n): ASSUMED
[arbiter_sva.HIGHEST_PRIORITY_REQ] always (arbiter_sva.req_i[0] |-> arbiter_sva.gnt_o[0]): PROVED (1-induction)
[arbiter_sva.PRIORITY_CHECK_1] always (arbiter_sva.m > 0 && arbiter_sva.m > arbiter_sva.n && arbiter_sva.req_i[arbiter_sva.m] && arbiter_sva.gnt_o[arbiter_sva.m] |-> arbiter_sva.req_i[arbiter_sva.n] == 0): PROVED (1-induction)
[arbiter_sva.PRIORITY_CHECK_2] always (arbiter_sva.m < arbiter_sva.n && arbiter_sva.req_i[arbiter_sva.m] && arbiter_sva.req_i[arbiter_sva.n] && $countones(arbiter_sva.req_i) == 2 |-> arbiter_sva.gnt_o[arbiter_sva.m]): PROVED (1-induction)
[arbiter_sva.assert.1] always (arbiter_sva.gnt_o[arbiter_sva.m] |-> arbiter_sva.req_i[arbiter_sva.m]): PROVED (1-induction)
[arbiter_sva.ONE_HOT_ARBITER] always (arbiter_sva.req_i |-> $onehot(arbiter_sva.gnt_o)): PROVED (1-induction)
[arbiter_sva.cover.2] cover arbiter_sva.req_i[0]: PROVED
Trace:

Transition system state 0
----------------------------------------------------
  arbiter_sva.req_i = 4'b1101 (1101)
  arbiter_sva.gnt_o = 4'b0001 (0001)
  arbiter_sva.NUM = 4 (00000000000000000000000000000100)
  arbiter_sva.clk = 1'b0
  arbiter_sva.m = 0 (00000000000000000000000000000000)
  arbiter_sva.n = 0 (00000000000000000000000000000000)
  arbiter_sva.inst.NUM_PORTS = 4 (00000000000000000000000000000100)
  arbiter_sva.inst.req_i = 4'b1101 (1101)
  arbiter_sva.inst.gnt_o = 4'b0001 (0001)
  arbiter_sva.inst.gnt = 4'b0001 (0001)
  arbiter_sva.inst.breakout = 1
  arbiter_sva.inst.i = 4 (00000000000000000000000000000100)
  ebmc::$past1@1 = 0 (00000000000000000000000000000000)
  ebmc::$past2@1 = 0 (00000000000000000000000000000000)

[arbiter_sva.cover.3] cover arbiter_sva.req_i[3]: PROVED
Trace:

Transition system state 0
----------------------------------------------------
  arbiter_sva.req_i = 4'b1110 (1110)
  arbiter_sva.gnt_o = 4'b0010 (0010)
  arbiter_sva.NUM = 4 (00000000000000000000000000000100)
  arbiter_sva.clk = 1'b0
  arbiter_sva.m = 0 (00000000000000000000000000000000)
  arbiter_sva.n = 0 (00000000000000000000000000000000)
  arbiter_sva.inst.NUM_PORTS = 4 (00000000000000000000000000000100)
  arbiter_sva.inst.req_i = 4'b1110 (1110)
  arbiter_sva.inst.gnt_o = 4'b0010 (0010)
  arbiter_sva.inst.gnt = 4'b0010 (0010)
  arbiter_sva.inst.breakout = 1
  arbiter_sva.inst.i = 4 (00000000000000000000000000000100)
  ebmc::$past1@1 = 0 (00000000000000000000000000000000)
  ebmc::$past2@1 = 0 (00000000000000000000000000000000)

[arbiter_sva.cover.4] cover $countones(arbiter_sva.req_i) == arbiter_sva.NUM: PROVED
Trace:

Transition system state 0
----------------------------------------------------
  arbiter_sva.req_i = 4'b1111 (1111)
  arbiter_sva.gnt_o = 4'b0001 (0001)
  arbiter_sva.NUM = 4 (00000000000000000000000000000100)
  arbiter_sva.clk = 1'b0
  arbiter_sva.m = 0 (00000000000000000000000000000000)
  arbiter_sva.n = 0 (00000000000000000000000000000000)
  arbiter_sva.inst.NUM_PORTS = 4 (00000000000000000000000000000100)
  arbiter_sva.inst.req_i = 4'b1111 (1111)
  arbiter_sva.inst.gnt_o = 4'b0001 (0001)
  arbiter_sva.inst.gnt = 4'b0001 (0001)
  arbiter_sva.inst.breakout = 1
  arbiter_sva.inst.i = 4 (00000000000000000000000000000100)
  ebmc::$past1@1 = 0 (00000000000000000000000000000000)
  ebmc::$past2@1 = 0 (00000000000000000000000000000000)

[arbiter_sva.cover.5] cover $countones(arbiter_sva.req_i) == 0: PROVED
Trace:

Transition system state 0
----------------------------------------------------
  arbiter_sva.req_i = 4'b0000 (0000)
  arbiter_sva.gnt_o = 4'b0000 (0000)
  arbiter_sva.NUM = 4 (00000000000000000000000000000100)
  arbiter_sva.clk = 1'b0
  arbiter_sva.m = 0 (00000000000000000000000000000000)
  arbiter_sva.n = 0 (00000000000000000000000000000000)
  arbiter_sva.inst.NUM_PORTS = 4 (00000000000000000000000000000100)
  arbiter_sva.inst.req_i = 4'b0000 (0000)
  arbiter_sva.inst.gnt_o = 4'b0000 (0000)
  arbiter_sva.inst.gnt = 4'b0000 (0000)
  arbiter_sva.inst.breakout = 0
  arbiter_sva.inst.i = 4 (00000000000000000000000000000100)
  ebmc::$past1@1 = 0 (00000000000000000000000000000000)
  ebmc::$past2@1 = 0 (00000000000000000000000000000000)

**Documentation:**

