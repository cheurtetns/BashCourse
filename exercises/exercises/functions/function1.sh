#!/bin/bash
#
# It is possible to create functions in bash.
# The argument of a function are denoted by $1, $2 ...
# return a value with echo
#
# EXERCISE: - Create a function called 'transform' that takes a value and an array, and returns the second value of the array
#
# CHALLENGE: - Check is the value of the integer is not bigger than the size of the array. If it is, print an error message
#
# I AM NOT DONE

# Declare 'transform' function here


arr=('value1' 'value2' 'value3' 'value4' 'value5' 'value6' 'value7' 'value8')
transform 5 ${arr[@]}
