#!/bin/bash

echo -n "Evaluating accept... "
java -cp digital.jar CLI test ../circuit.dig -tests accept.dig > /dev/null
accept=$?
if [ $accept -eq 0 ]; then
    echo "✔️"
else
    echo "✖️"
fi

echo -n "Evaluating overlap... "
java -cp digital.jar CLI test ../circuit.dig -tests overlap.dig > /dev/null
overlap=$?
if [ $overlap -eq 0 ]; then
    echo "✔️"
else
    echo "✖️"
fi

