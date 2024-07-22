#!/bin/bash
#
# One of the nice things about awk is that it tokenizes the lines that are fed into it.
# This means for items that have a separator, you can select a column.
# You can specify a field separator on the command line with the 'F' flag
#
# EXERCISE: - From the file /etc/passwd, echo all the users in your machine.
#
# CHALLENGE: From the /etc directory, echo it's size
#
# I AM NOT DONE

awk -F: ‘{print $1}’ /etc/passwd

# Challenge
# ls -l /etc | awk ‘{x += $5} END {print “total Kylobytes:” (x/1024)}'
