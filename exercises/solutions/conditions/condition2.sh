#!/bin/bash
#
# It is possible to use regex in conditions thanks to the ~= comparison operator.
#
# EXERCICE: Check if the phone number is in the correct format.
#
# I AM NOT DONE
string="Hello, world!"

if ! [[ "$string" =~ [0-9] ]]; then
	echo "String does not contain any digits"
else
	echo "String contains at least one digit"
fi
