#!/bin/bash

# EXERCISE: - Create a guessing game in pure bash.
#           - They are several ways of doing it.

# I AM NOT DONE
#
secret_number=$((1 + $RANDOM % 10))

# Greeting message
echo "Welcome to the guessing game!"

# Loop for guessing

while true; do
    # Prompt user for guess
    read -r -p "Guess a number between 1 and 10: " guess

    # Do not delete this line, just press 'q' in during the test if you want to quit early the exercice
    if [[ $guess -eq 'q' ]]; then
        exit 1
    fi #TODO handle CTRL+C behavior

    # Check if guess is correct
    if [[ $guess -eq $secret_number ]]; then
        echo "Congratulations! You guessed the secret number."
        break
    elif [[ $guess -lt $secret_number ]]; then
        echo "Too low. Guess higher."
    else
        echo "Too high. Guess lower."
    fi
done
