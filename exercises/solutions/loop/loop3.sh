#!/bin/bash
#
# Iterate over a file
#
# EXERCISE: - Iterate over the file 'main.c'
#           - Find the line number and echo it where the 'Hello World' is printed
#
# CHALLENGE: - Echo everything before the 'Hello World' on one line
#            - Echo the 'Hello World' on a new line
#            - Echo the rest of the line on a new line
#
# I AM NOT DONE
#
main_path="./solutions/loop/main.c"
count=0
while read line; do
    if [[ $line =~ ^(.*)(Hello World)(.*)$ ]]; then
        # echo "-- ${BASH_REMATCH[1]}"
        # echo "-- ${BASH_REMATCH[2]}"
        # echo "-- ${BASH_REMATCH[3]}"
        echo "$count"
    fi
    ((count++))
done <$main_path
