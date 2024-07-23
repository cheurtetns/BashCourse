#!/bin/bash
#
# The PIPESTATUS Variable
#
# The PIPESTATUS environment variable in Bash comes to our rescue for getting the exit status of each command in a pipeline.
# PIPESTATUS is an array.
# It stores the exit status of each command in the pipeline
# The value 0 is a success.
#
# I AM NOT DONE
#

set -e

echo "foo" | grep "oo"

# Fill below condition using PIPESTATUS
if [[  ]]; then
    echo "Last command is a success!"
else
    echo "Last command is a failure."
fi
