#!/bin/bash

make clean
make

# ./malloc

# hyperfine --warmup 3 --min-runs 10 --max-runs 50 "./malloc"

perf stat ./malloc

# use `LDFLAGS = -pg -no-pie -fno-pie` in Makefile
# gprof ./malloc gmon.out > report.txt 

# time ./malloc
