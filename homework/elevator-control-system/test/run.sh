#!/bin/bash
points=0

# Run tests
echo -n "Evaluating doors... "
java -cp digital.jar CLI test ../circuit.dig -tests porte.dig > /dev/null
doors=$?
if [ $doors -eq 0 ]; then
  echo "✔️"
  points=$((points + 10))
else
  echo "✖️"
fi

echo -n "Evaluating floors... "
java -cp digital.jar CLI test ../circuit.dig -tests piani.dig > /dev/null
floors=$?
if [ $floors -eq 0 ]; then
  echo "✔️"
  points=$((points + 15))
else
  echo "✖️"
fi

echo -n "Evaluating VIP... "
java -cp digital.jar CLI test ../circuit.dig -tests vip.dig > /dev/null
vip=$?
if [ $vip -eq 0 ]; then
  echo "✔️"
  points=$((points + 25))
else
  echo "✖️"
fi

echo "points=$points/50"

