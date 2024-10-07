#!/bin/bash

# Recursive function to calculate factorial
factorial() {
    local n=$1
    if (( n == 0 )); then
        echo 1
    else
        echo $(( n * $(factorial $((n - 1))) ))
    fi
}

while true
do
	let i=i+1
	result=$(factorial $i)
	echo -e "$i"
	echo -e "$result"
done
