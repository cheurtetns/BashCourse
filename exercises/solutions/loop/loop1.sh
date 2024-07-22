#!/bin/bash
#
# For loop allow you to loop on array
#
# EXERCICE: Create a Loop to echo all the element of the list that contain 'foo'
#
# I AM NOT DONE
#
list=('val1' 'foostr' 'val2' 'foo2' 'val3')

for val in "${list[@]}"; do
    if [[ $val =~ 'foo' ]]; then
        echo $val
    fi
done
