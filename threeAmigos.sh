#!/bin/bash

# This program will store the sum of the first 3 arguments into a variable.
# Then it will run subtractMachine.sh with the first arguement being the sum and the second being the 4th argument
# Invocation: debian@beaglebone:~/cpe422$ ./threeAmigos.sh num1 num2 num3 num4

#Problem 1
sum=$(($1+$2+$3))
echo "Sum = $sum"

#Problem 2
./subtractMachine.sh $sum $4