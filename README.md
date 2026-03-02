## Formally Verified Parameterized Fixed Priority Combinational Arbiter

**Command:** 

Formal Property Verification:

`ebmc --systemverilog --top fv_tb top.sv arbiter_sva.sv arbiter.sv --trace`

Mutation Coverage with Yosys:
```
mcy init
mcy run -j$(nproc)
```

**Formal Proof Results:**

See [RESULTS](RESULTS.md)

**Mutation Coverage Results:**

See [MCY_RESULTS](MCY_RESULTS.md)

**Documentation:**


https://www.hackster.io/shashank-v-m/fpga-design-verification-of-fixed-priority-arbiter-3dfc6a
