#!/bin/bash

# This program will subtract the smaller number from the larger number when given two arguments. The difference is printed
# The program will thencount down from the difference to 1 printing out each result. 
# Invocation: debian@beaglebone:~/cpe422$ subtractMachine.sh 3 8

if [ $1 -gt $2 ]
 then
	answer=$(($1-$2))
	echo "Difference = $answer"
 else
	answer=$(($2-$1))
	echo "Difference = $answer"
fi


while [ $answer -gt 0 ]
do
echo "Count Down = $answer"
((answer--))
done