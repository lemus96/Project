#$1 and $2 are considered to be $value and $num_files, in that order
function compare {
	if [[ $1 -gt $2 ]]
	then
		echo "Your guess is higher than the actual value."
	else
		echo "Your guess is lower than the actual value."
	fi
}

num_files=$(ls -a | wc -l )
echo "How many files are in your current directory? "
read value

while [[ $num_files -ne $value ]]
do
	compare $value $num_files
	echo "Please try again..."
	read value
done

echo "Congratulaions! You have guessed the number of files in your current directory."
