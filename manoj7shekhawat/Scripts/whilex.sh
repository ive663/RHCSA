#!/bin/bash

# Question: Script should take only one input numberic input
#		- It should print HACK N that many times
#		- If number of agruments is not 1 then it should print: Usage: ./whilex.sh <NUMBER>
#		- If input is not number then print: NOT a number
#		- If number is less than equal to 0 then print: Number not > 0
#		- We must use while loop to implement it

if [ $# != 1 ]
then 
	echo Usage: $0 \<NUMBER\>
else
	re='-?[0-9]+'
	if [[ $1 =~ $re ]]
	then
		if [ $1 -gt 0 ]
		then
			c=0
			while [ $c -lt $1 ]
			do
				c=$(( $c+1 ))
				echo HACK $c
			done
		else
			echo Number not \> 0
		fi
	else
		echo NOT a number
	fi
fi
