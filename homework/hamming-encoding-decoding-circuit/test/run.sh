# !/bin/sh

max_score=8

java -cp digital.jar CLI test ../circuit.dig -tests encode.dig > /dev/null
encode=$?
java -cp digital.jar CLI test ../circuit.dig -tests decode.dig > /dev/null
decode=$?
java -cp digital.jar CLI test ../circuit.dig -tests detect.dig > /dev/null
detect=$?
java -cp digital.jar CLI test ../circuit.dig -tests correct.dig > /dev/null
correct=$?

# ? DEBUG
# gates=$(java -cp digital.jar CLI stats -dig ../circuit.dig | awk -F ',' 'NR>1 && $NF != "" {sum += $NF} END {print sum}')
# echo "Gates: $gates"
# len=$(java -cp digital.jar CLI length -dig ../circuit.dig | awk -v thr=6 '{if ($1 <= thr) print $1; else print $1}')
# echo "Critical path: $len"

java -cp digital.jar CLI stats -dig ../circuit.dig | awk -F ',' 'NR>1 && $NF != "" {sum += $NF} END {print sum}' | awk -v min=15 -v max=30 '{if ($1 >= min && $1 <= max) exit 0; else exit 1}'
gates=$?
java -cp digital.jar CLI length -dig ../circuit.dig | awk -v thr=6 '{if ($1 <= thr) exit 0; else exit 1}'
len=$?

test_score=$((max_score - encode - encode - decode - decode - detect - detect - correct - correct))

if [[ "$encode" -eq 1 ]]; then
  	echo "✖️  Encode test failed."
else
  	echo "✔️  Encode test passed."
fi
if [[ "$decode" -eq 1 ]]; then
  	echo "✖️  Decode test failed."
else
	echo "✔️  Decode test passed."
fi
if [[ "$detect" -eq 1 ]]; then
  	echo "✖️  Detect test failed."
else
  	echo "✔️  Detect test passed."
fi
if [[ "$correct" -eq 1 ]]; then
  	echo "✖️  Correct test failed."
else
  	echo "✔️  Correct test passed."
fi

if [[ "$test_score" -eq $max_score ]]; then
    if [[ "$gates" -eq 1 ]]; then
    	echo "✖️  The circuit is not minimal."
    else
    	echo "✔️  The circuit is minimal."
    fi
    if [[ "$len" -eq 1 ]]; then
    	echo "✖️  The critical path is too long."
    else
    	echo "✔️  The critical path is minimal."
    fi
else
  	echo "✖️  The circuit should be correct to analyze critical path and complexity."
fi
