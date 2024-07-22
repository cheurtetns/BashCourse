#!/bin/bash
#
# awk was originally intended to be a data-driven programming language when alfred aho, peter weinberger, and brian kernighan wrote it at bell labs.
# the name comes from the initials of their last names, but the program we use in bash on linux is (g)awk or gnu awk, and there are many derivatives.
#
# awk is most often used for processing files.
# awk processes a condition if one is provided and then takes an action.
# the default action is to print whatever meets the criteria of the condition.
# to search a file for a regular expression pattern match:
# awk '/regex/' file.txt
#
# EXERCISE: - Use awk to print the line in file.txt that has the 'unix' word
#
# I AM NOT DONE
#
# Do not delete this line
file="./solutions/awk/file.txt"
awk '/unix/' $file
