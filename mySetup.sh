#!/bin/bash

# This script sets te frequency of the BBB to 600MHz and displays the information on the cpu
# It also creates a variable called location which is set to the home directory
# Additionally it will create a variable called items which when called will display the number of items in the working directory
# Invocation: debian@beaglebone:~/cpe422$ ./mySetup.sh 

# a.) set freq to 600MHz
sudo cpufreq-set -f 600MHz

# b.) display cpu info
cpufreq-info

# c.) create var location = /home/debian
location=/home/debian

# d.) echo the var
echo $location

# d.) create var items which gets num of items in current working directory and displays the number
items=$(ls | wc -l)
