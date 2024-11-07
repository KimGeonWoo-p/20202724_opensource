if [ -z $1 ] || [ -z $2 ]; then
	echo "the arguments should be more then 3"
	exit
fi

W=$1
H=$2

H=$(echo "scale=2; $H / 100" | bc)
BMI=$(echo "scale=3; $H * $H" | bc)
BMI=$(echo "$W / $BMI" | bc)

if [ "$(echo "$BMI < 18.5" | bc)" = 1 ]; then
	echo "underweight"
elif [ "$(echo "$BMI >= 23" | bc)" = 1 ]; then
	echo "overweight"
else
	echo "normalweight"
fi
