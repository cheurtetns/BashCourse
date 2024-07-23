#!/bin/bash
#
# The 'set' allows you to change the values of shell options and set the positional parameters, or to display the names and values of shell variables.
#
# The -e argument allows you to make the program quit if a command returns a non-zero status.
# The -x argument allows you to print the trace of simple commands
#
# EXERCISE: - Follow the very simple script here, and find out why the fruits are not printed and correct it the way you prefer
#
# I AM NOT DONE

set -x
set -e
list=('Oranges' 'apples' 'grapes')
echo "bien" | grep "vu"
for l in ${list[@]}; do
    echo $l
done
