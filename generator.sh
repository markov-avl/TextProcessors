#!/bin/bash

file=./file1

if [ -e $file ]; then
	echo -n > $file
else
	touch $file
fi

for _ in {1..1000}; do
	number=$(($RANDOM % 4))
	if (( $number == 0 )); then
		echo "куку" >> $file
	elif (( $number == 1 )); then
		echo "коко" >> $file
	elif (( $number == 2 )); then
                echo "кеке" >> $file
	else
		echo "кики" >> $file
	fi
done
