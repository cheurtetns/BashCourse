#!/bin/bash
#
# Exercise 2
# It is possible to define arrays in bash.
#
# STRUCTURE: var=('value1' 'value2'..)
#
# EXERCICE: Define a variable fruit that contain different fruits.
#           echo the first element of the list
#           echo then all the fruits at once.
#
# I AM NOT DONE

fruit=('Oranges' 'Apple' 'Grapes')
echo "${fruit[0]}"
echo "${fruit[@]}"
