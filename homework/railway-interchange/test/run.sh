#!/bin/sh

max_score=8
max_acceptable_complexity=4
max_acceptable_length=1

java -cp digital.jar CLI test ../circuit.dig -tests s.dig > /dev/null
s=$?
java -cp digital.jar CLI test ../circuit.dig -tests y1.dig > /dev/null
y1=$?
java -cp digital.jar CLI test ../circuit.dig -tests y2.dig > /dev/null
y2=$?
java -cp digital.jar CLI test ../circuit.dig -tests y3.dig > /dev/null
y3=$?

gates=$(java -cp digital.jar CLI stats -dig ../circuit.dig | awk -F "," 'NR>1 && $NF != "" {sum += $NF} END {print sum}')
len=$(java -cp digital.jar CLI length -dig ../circuit.dig)

test_score=$((max_score - s - s - y1 - y1 - y2 - y2 - y3 - y3))

if [[ "$s" -eq 1 ]]; then
  	echo "✖️  The S value is not calculated correctly."
else
  	echo "✔️  The S value is calculated correctly."
fi
if [[ "$y1" -eq 1 ]]; then
  	echo "✖️  The Y1 value is not calculated correctly."
else
	echo "✔️  The Y1 value is calculated correctly."
fi
if [[ "$y2" -eq 1 ]]; then
  	echo "✖️  The Y2 value is not calculated correctly."
else
  	echo "✔️  The Y2 value is calculated correctly."
fi
if [[ "$y3" -eq 1 ]]; then
  	echo "✖️  The Y3 value is not calculated correctly."
else
  	echo "✔️  The Y3 value is calculated correctly."
fi

if [[ "$test_score" -eq $max_score ]]; then
  	if [[ "$gates" -gt "$max_acceptable_complexity" ]]; then
    	echo "✖️  The circuit is not minimal."
 	 else
    	echo "✔️  The circuit is minimal."
  	fi
  	if [[ "$len" -gt "$max_acceptable_length" ]]; then
    	echo "✖️  The critical path is too long."
  	else
    	echo "✔️  The critical path is minimal."
  	fi
else
  	echo "✖️  The circuit should be correct to analyze critical path and complexity."
fi
