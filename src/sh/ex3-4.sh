echo "Is Linux fun? (yes / no)"
read input

# Extract the first letter of the input string
first_letter=$(printf %.1s "$input")

# Convert the first letter to lowercase (optional, for case-insensitive match)
first_letter=$(echo "$first_letter" | tr '[:upper:]' '[:lower:]')

case $first_letter in
	y)
		echo "yes"
		;;
	n)
		echo "no"
		;;
	*)
		echo "The answer should be yes or no"
esac
	
