if [ -z $1 ]; then
	echo "You should nodify member's name."
	exit
fi

if [ -z $1 ]; then
	echo "You should notify memper's phone number."
	exit
fi

if [ -f "DB.txt" ]; then
	touch "DB.txt"
fi

echo "$1 $2" >> "DB.txt"
