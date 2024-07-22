#!/bin/bash
# EXERCISE: - Create a guessing game in pure bash.
#           - They are several ways of doing it.

# I AM NOT DONE
#
# Create a random number between 1 and 10
secret_number=$((1 + $RANDOM % 10))
# Greeting message

# Loop for guessing
while true; do
    # TODO: Prompt user for guess

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
