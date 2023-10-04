#!/bin/bash

# This program will create a parent directory with a child folder using the first and second arguements respectively.
# Inside the child folder, a file with the contents "hello world" will be created with the name of the 3rd argument  
# The forth argument is the name of the link which will link to the child folder
# Invocation: debian@beaglebone:~/cpe422$ ./simpleAdmin.sh dir1 dir2 message.txt linkName

# Problem 1
mkdir "$1"
echo "Creating a directory named $1 .......... done!"

# Problem 2
mkdir "$1"/"$2"
echo "Creating a directory named $2 under $1 .......... done!"

# problem 3
echo "Hello World!" > "$1/$2/$3"
echo "Creating a text file named $3 .......... done!"
echo "Moving $3 to $1/$2 .......... done!"

# problem 4
ln -s "$PWD/$1/$2" "$4"
echo "Creating a link from working directory to $2 .......... done!"
