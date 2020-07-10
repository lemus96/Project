#$1 and $2 are considered to be $value and $num_files, in that order
function compare {
	if [[ $1 -gt $2 ]]
	then
		echo ""
		echo "Your guess is higher than the actual value. Try again."
	else
		echo ""
		echo "Your guess is lower than the actual value. Try again."
	fi
}

num_files=$(ls -A | wc -l )
value=0
while [[ $num_files -ne $value ]]
do
	echo "How many files are in your current directory? "
	read entry
	if [[ $entry =~ ^[0-9]+$ ]] && [[ $entry -ne 0 ]]
	then
		let value=$entry
		compare $value $num_files
	else
		echo ""
		echo "Invalid input. Please try again."
	fi

done

echo "Congratulaions! You have guessed the number of files in your current directory."
