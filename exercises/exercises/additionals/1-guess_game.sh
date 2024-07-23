#!/bin/bash
# EXERCISE: - Create a guessing game in pure bash.
#           - They are several ways of doing it.
#
# CHALLENGE: When $guess higher than $secret_number echo in red, if lower in blue, if same in green
#
# I AM NOT DONE
#

# If the script is stucked in an infinite loop, ctrl+c will exit the script
trap 'echo "Trap worked"' SIGINT

# Create a random number between 1 and 10
secret_number=$((1 + $RANDOM % 10))
# Greeting message

# Loop for guessing
while true; do
    # Prompt user for guess

    # Do not delete this line, just press 'q' in during the test if you want to quit early the exercice
    if [[ $guess -eq 'q' ]]; then
        exit 1
    fi

    # Check if guess is correct
    if [[  ]]; then
        echo "Congratulations! You guessed the secret number."
        break
    elif [[  ]]; then
        echo "Too low. Guess higher."
    else
        echo "Too high. Guess lower."
    fi
done
