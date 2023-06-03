#!/bin/bash

# Question: Script should take one argument only with values
# 		- Yes|YES it should print awesome
# 		- No|NO it should print That's bad
#		- For anything else it should print it's usage as: Usage: ./ifelse.sh Yes|No

if [ $# != 1 ]
then
	echo Usage: ./ifelse.sh Yes\|No
else
	MYVAR=$( echo $1 | tr [:upper:] [:lower:] )
	if [ $MYVAR = "yes" ]
	then
		echo awesome
	elif [ $MYVAR = "no" ]
	then
		echo That\'s bad
	else
		echo Usage: ./ifelse.sh Yes\|No
	fi
	
fi
