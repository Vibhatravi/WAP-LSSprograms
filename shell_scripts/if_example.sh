#!/bin/bash
read -p "Enter first number:" a
read -p "Enter second number:" b
read -p "Enter third number:" c
if [ $a -gt $b -a $a -gt $c ]
then
	echo "$a is the greatest no"
elif [ $b -gt $a -a $b -gt $c ]
then
	echo "$b is the greatest no"
else
	echo "$c is the greatest no"
fi
