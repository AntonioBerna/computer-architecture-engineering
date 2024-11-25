#!/bin/bash

points=0
accept=1
reject=1
while IFS= read -r line
do
  ./a.out "$line"
  if [ $? -ne 2 ]; then
     accept=0
  fi
done < accept.txt

while IFS= read -r line
do
  ./a.out "$line"
  if [ $? -ne 1 ]; then
     reject=0
  fi
done < reject.txt

if [ $(wc -c <"../reversed.c") -ge 102400 ]; then
    accept=0
    reject=0
    exit 0
fi

echo "accept=$accept"
echo "reject=$accept"

if [ $accept -eq 1 ]; then
    points=$(( points + 15 ))
fi

if [ $reject -eq 1 ]; then
    points=$(( points + 15 ))
fi

# Run twice to report linter errors to students
cppcheck --enable=all -q --std=c11 --language=c ../reversed.c
linter=$(cppcheck --enable=all -q --std=c11 --language=c --xml ../reversed.c 2>&1 | grep "error id" | grep -v checkersReport | wc -l)
linter=$(( 2*linter ))
points=$(( points - linter ))
echo "points=$points/30"
