#!/bin/bash
export DBG=./src/sc.sh
# echo "Loading exercises..."
clear
# Function to check for folder presence
blue='\033[34m'
red='\033[31m'
green='\033[32m'
color_reset='\033[0m'

check_input() {
    # Read a single character with timeout (optional handling needed)
    read -r -s -n 1 -t 0.5 userInput
    if [[ -n "$userInput" ]]; then # Check if user entered something
        clear
        if [[ "$userInput" == "h" ]]; then
            cat help.json | grep $1 | sed 's/:/\n/' | sed '1d' | sed 's/\\n/\n/g' | sed 's/"//g'
        elif [[ "$userInput" == "q" ]]; then
            exit 1
        elif [[ "$userInput" == "c" ]]; then
            clear
        else
            echo -e "${red}This is not a command${color_reset}"
        fi
        echo "EXERCICE $1"
        echo -e "Press 'h' for Help, 'q' to Quit, 'c' to Clear or save the exercice"

    fi
}

get_exercises() {
    folder_path="$1"
    files=($(find "$folder_path" -type f -name "*.sh"))
    IFS=$'\n' sorted_files=($(sort <<<"${files[*]}"))
    unset IFS
    echo "${sorted_files[@]}"
}

directories=('variables' 'conditions' 'loop' 'functions' 'additionals' 'sed' 'awk' 'errors')

# clear
echo -e "This script has to be launched in its directory: '../Bash_course/exercises/'.\nElse, they will be errors.\nOpen the exercises on another window, and simply save the file of the corresponding exercise to see your output in this terminal.\nWhen you are over, delete the 'I AM NOT DONE' and go to the next exercise."
# Loop over directories
files=()
for dir in ${directories[@]}; do
    files=("${files[@]}" $(get_exercises ./exercises/$dir/))
done

count_files=0
while [ $count_files -lt ${#files[@]} ]; do
    solution_path=$(echo "${files[$count_files]}" | sed "s/exercises/solutions/")

    chmod +x ${files[$count_files]}
    chmod +x $solution_path

    if ! [[ -e ${files[$count_files]} && -x ${files[$count_files]} && -e $solution_path && -x $solution_path ]]; then
        echo "File Does not exists"
        exit 1
    fi

    exercise_name_sh=${files[$count_files]##*/}
    exercise_name=${exercise_name_sh%%.*}

    echo "---------------------------------------------------"
    echo "EXERCICE $exercise_name"
    echo -e "Press 'h' for Help, 'q' to Quit, 'c' to Clear or save the exercice"

    curr_date=$(stat -c %z ${files[$count_files]}) # Use %z to check inode change time (this time can be changed only by admin) 
    while true; do

        # Check if user wants to continue or not
        is_over=$(grep -Fxi "# I AM NOT DONE" ${files[$count_files]})
        if [ -z "${is_over}" ]; then
            unset $is_over
            clear
            ((count_files++))
            break
        fi

        # Check if a previous exercice get an I AM NOT DONE again
        count_files2=0
        come_back=false
        while [ $count_files2 -lt $count_files ]; do
            is_over=$(grep -Fxi "# I AM NOT DONE" ${files[$count_files2]})
            if ! [ -z "${is_over}" ]; then
                count_files=$count_files2
                come_back=true
                break
            fi
            ((count_files2++))
        done
        if $come_back; then
            clear
            break
        fi

        # Check if an input is given by the user. This waits for 500ms
        check_input $exercise_name
        # Check if file updated
        # TODO find another method to find if a file has been updated, not using the date
        if ! [[ "$(stat -c %z "${files[$count_files]}")" == "$curr_date" ]]; then
            is_over=$(grep -Fxi "# I AM NOT DONE" ${files[$count_files]})
            if [ -z "${is_over}" ]; then
                unset $is_over
                clear
                ((count_files++))
                break
            fi

            # User solution
            echo -e "${blue}OUTPUT:${color_reset}"
            (
                source $DBG
                source ${files[$count_files]}
            ) | tee /tmp/out
            out=$(cat /tmp/out)

            # Actual Solution
            echo -e "${green}Expected Output:${color_reset}"

            (
                source $DBG
                source $solution_path &
            ) | tee /tmp/out
            out=$(cat /tmp/out)

            curr_date=$(stat -c %z "${files[$count_files]}") # Has been updated

            echo "----------------"
            echo -e "Exercice $exercise_name"
            echo -e "Press 'h' for Help, 'q' to Quit, 'c' to Clear or save the exercice"

        fi
    done
done
