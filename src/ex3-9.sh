if [ -z $1 ]; then
	echo "Please enter the desired word."
	exit
fi

grep $1 "DB.txt"
