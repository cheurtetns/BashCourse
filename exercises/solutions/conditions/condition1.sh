#!/bin/bash
#
# Comparitions are done between [[ ]].
#
# EXERCICE: Compare the two variables to check if they are the same.
#           Change the values of the variables to be sure
#
# I AM NOT DONE
#
string1="foo"
string2="fo0"

num1=10
num2=5

if [[ $string1 == $string2 ]]; then
	echo "These are the same string"
else
	echo "It is not"
fi

if [[ $num1 -le $num2 ]]; then
	echo "Num1 less than num2"
elif [[ $num1 -gt $num2 ]]; then
	echo "Num1 greater than num2"
else
	echo "they are the same"
fi
