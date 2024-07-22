#!/bin/bash
#
# I AM NOT DONE
#
IFS=$'\n'
content=($(<"./solutions/additionals/file.txt"))
echo ${content[9]}
