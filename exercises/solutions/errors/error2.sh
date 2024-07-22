#!/bin/bash
#
# The PIPESTATUS Variable
#
# The PIPESTATUS environment variable in Bash comes to our rescue for getting the exit status of each command in a pipeline.
# PIPESTATUS is an array.
# It stores the exit status of each command in the pipeline
# The value 0 is a success.
#
#
#

set -e

echo "foo" | grep "vu"
if [[ 0 -eq ${PIPESTATUS[-1]} ]]; then
    echo "There is an error"
fi
echo "hello"
