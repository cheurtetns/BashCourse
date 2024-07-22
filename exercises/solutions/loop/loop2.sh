h
#
# While loop allow you to loop
#
# EXERCICE: Create a Loop to echo the first line of the output command that contain a number, and then break the loop
#
while read line; do
	if [[ $line =~ [0-9] ]]; then
		echo $line
		break
	fi
done <<<$(ps -au)
