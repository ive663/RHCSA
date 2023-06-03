#!/bin/bash

# Question: Script should take only one input as argument
# 		- It should print
# 			-- YES for Y/y
#			-- NO  for N/n
#			-- UNKNOWN for anything else
#		- For anything else print: Usage: ./caseex.sh Y|N


if [ $# != 1 ]
then
	echo Usage: ./caseex.sh Y\|N
else
	MYVAR=$( echo $1 | tr [:upper:] [:lower:] )
	case $MYVAR in
		y)
			echo YES
			;;
		n)
			echo NO
			;;
		*)
			echo UNKNOWN
			;;
	esac

fi
