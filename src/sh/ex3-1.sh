N=$1

if [ -z $N ]; then
	N=20
fi

for _ in $(seq 1 $N)
do
	echo "hello world"
done
