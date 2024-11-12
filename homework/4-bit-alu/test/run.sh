#!/bin/bash

echo -n "Evaluating sum... "
java -cp digital.jar CLI test ../circuit.dig -tests somma.dig > /dev/null
sum=$?
if [ $sum -eq 0 ]; then 
	echo "✔️"
else
  	echo "✖️"
fi

echo -n "Evaluating shift... "
java -cp digital.jar CLI test ../circuit.dig -tests shift.dig > /dev/null
shift=$?
if [ $shift -eq 0 ]; then
    echo "✔️"
else
    echo "✖️"
fi

echo -n "Evaluating and... "
java -cp digital.jar CLI test ../circuit.dig -tests and.dig > /dev/null
and=$?
if [ $and -eq 0 ]; then
    echo "✔️"
else
    echo "✖️"
fi

echo -n "Evaluating or... "
java -cp digital.jar CLI test ../circuit.dig -tests or.dig > /dev/null
or=$?
if [ $or -eq 0 ]; then
  	echo "✔️"
else
  	echo "✖️"
fi

echo -n "Evaluating xor... "
java -cp digital.jar CLI test ../circuit.dig -tests xor.dig > /dev/null
xor=$?
if [ $xor -eq 0 ]; then
  	echo "✔️"
else
  	echo "✖️"
fi

echo -n "Evaluating xnor... "
java -cp digital.jar CLI test ../circuit.dig -tests xnor.dig > /dev/null
xnor=$?
if [ $xnor -eq 0 ]; then
  	echo "✔️"
else
  	echo "✖️"
fi

echo -n "Evaluating nand... "
java -cp digital.jar CLI test ../circuit.dig -tests nand.dig > /dev/null
nand=$?
if [ $nand -eq 0 ]; then
  	echo "✔️"
else
  	echo "✖️"
fi

echo -n "Evaluating nor... "
java -cp digital.jar CLI test ../circuit.dig -tests nor.dig > /dev/null
nor=$?
if [ $nor -eq 0 ]; then
  	echo "✔️"
else
  	echo "✖️"
fi

echo -n "Evaluating not... "
java -cp digital.jar CLI test ../circuit.dig -tests not.dig > /dev/null
not=$?
if [ $not -eq 0 ]; then
  	echo "✔️"
else
  	echo "✖️"
fi

echo -n "Evaluating complexity... "
ret=$(java -cp digital.jar CLI stats -dig ../circuit.dig | awk -F ',' 'NR>1 && $NF != "" {sum += $NF} END {print sum}' | awk -v max=25 '{if ($1 <= max) print 0; else print 1}')
# complexity=$(java -cp digital.jar CLI stats -dig ../circuit.dig | awk -F ',' 'NR>1 && $NF != "" {sum += $NF} END {print sum}')
# echo "Complexity: $complexity"
if [ $ret -eq 0 ]; then
	echo "✔️"
else
	echo "✖️"
fi

