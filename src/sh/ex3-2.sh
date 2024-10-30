if [ -z $1 ] || [ -z $2 ] || [ -z $3 ]; then
	echo "no argument! the arguments should be more then 3!"
	exit

fi

if [ $2 = '+' ] || [ $2 = '-' ]; then
	echo `expr $1 $2 $3`
else
	echo "invalid operator!"
fi

