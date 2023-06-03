#!/bin/bash

# Question: Take a input as a file and then print its contents line-by-line
# 		- if no input give then print: Usage: ./readfile.sh <FILE-NAME>
#		- it should take only one argument

if [ $# != 1 ]
then
	echo Usage: ./readfile.sh \<FILE-NAME\>
else
	echo we got file
	while IFS= read -r line
	do
		echo Line: $line
	done <"$1"
fi
