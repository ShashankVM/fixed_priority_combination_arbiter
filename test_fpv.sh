#!/bin/bash

exec 2>&1
set -ex

## create the mutated design
bash $SCRIPTS/create_mutated.sh

## run the formal checks with the mutated module substituted for the original
/home/shashank/hw-cbmc/src/ebmc/ebmc --top arbiter_sva -D MUTATION ../../arbiter_sva.sv mutated.v 2>&1 | tee fpv.out

## check formal output to obtain result status
if grep REFUTED fpv.out; then
	echo "1 FAIL" > output.txt
elif grep PROVED fpv.out; then
	echo "1 PASS" > output.txt
else
	echo "1 ERROR" > output.txt
fi

exit 0
