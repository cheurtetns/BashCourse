#!/bin/bash

# EXERCISE: - Create a guessing game in pure bash.
#           - They are several ways of doing it.
#
# CHALLENGE: When $guess higher than $secret_number echo in red, if lower in blue, if same in green
#
# I AM NOT DONE
#
secret_number=$((1 + $RANDOM % 10))

# blue='\033[34m'
# red='\033[31m'
# green='\033[32m'
# color_reset='\033[0m'

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
        # echo -e "${green}Congratulations! You guessed the secret number.${color_reset}"
        break
    elif [[ $guess -lt $secret_number ]]; then
        echo "Too low. Guess higher."
        # echo -e "${blue}Too low. Guess higher.${color_reset}"
    else
        echo "Too high. Guess lower."
        # echo -e "${red}Too high. Guess lower.${color_reset}"
    fi
done
