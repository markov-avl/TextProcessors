#!/bin/bash

file=./file1

if [ -e $file ]; then
	echo -n > $file
else
	touch $file
fi

for _ in {1..1000}; do
	line="*"
	for _ in {1..2}; do
		number=$(($RANDOM % 4))
		if (( $number == 0 )); then
			line="$lineкуку*"
		elif (( $number == 1 )); then
			line="$lineкоко*"
		elif (( $number == 2 )); then
            line="$lineкеке*"
		else
			line="$lineкики*"
		fi
	done
	echo $line >> $file
done
