#!/bin/bash

# Question: Script should take a number as an argument and should print HACK that may times
# 		- Example forex.sh 4 will print HACK 1, HACK 2, HACK 3, HACK 4 in diffrent lines
#		- If number is less than or equal to zero then it should print: number less than 0
#		- If inout is not a number than it should print: Input not a number
#		- For any other number of inputs it should print: Usage ./forex.sh <NUMBER>
#		- If input is NOT a number it should throw error code 6 and should print Input not a number.

if [ $# != 1 ]
then
	echo Usage $0 \<NUMBER\>
else
	re='^-?[0-9]+$'
	if [[ $1 =~ $re ]]
	then
		if [ $1 -gt 0 ]
		then
			for (( c=1; c<=$1; c++ ))
			do
   				echo HACK $c
			done
		else
			echo number less than 0
		fi
	else
		echo Input not a number
		exit 6
	fi
fi
