#!/bin/bash
#
# AWK can also be used to search columns of data and cleanly output information.
#
# EXERCISE: - From the command 'ps -au', print only the 3rd column of the result.
#
# CHALLENGE: - From the 'ps-au' command, output the:
#               - PID,
#               - The memory in percent
#               - The command
#           for each process that uses less than 1% of memory on your system
#
# I AM NOT DONE
#
ps -au | awk '{print $3}'

# Challenge
#awk '{print $1 $2 $11}' <<<$(ps -au) | grep '0.'
