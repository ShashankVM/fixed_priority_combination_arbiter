#!/bin/bash

exec 2>&1
set -ex

## create the mutated design
echo "read_rtlil ../../database/design.il" > mutate.ys
cut -f2- -d' ' input.txt >> mutate.ys
echo "rename -top mutated" >> mutate.ys
echo "write_json mutated.json" >> mutate.ys
yosys -ql mutate.log mutate.ys

## run formal equivalence check
echo "plugin -i slang" > eqy.ys
echo "read_slang ../../arbiter_breakout.sv --top arbiter_breakout" >> eqy.ys
echo "read_json mutated.json" >> eqy.ys
echo "miter -equiv -make_assert -make_outputs arbiter_breakout mutated miter" >> eqy.ys
echo "flatten miter" >> eqy.ys
echo "sat -verify -prove-asserts -show-inputs -show-outputs miter" >> eqy.ys
yosys -ql eq.log eqy.ys 2>&1 | tee eq.out

## check equivalence output to obtain result status
if grep FAIL eq.log; then
	echo "1 FAIL" > output.txt
elif grep SUCCESS eq.log; then
	echo "1 PASS" > output.txt
else
	echo "1 ERROR" > output.txt
fi

exit 0
