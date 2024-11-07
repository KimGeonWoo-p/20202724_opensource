if [ -z $1 ]; then
	echo "You should notify folder name!"
	exit
fi

if [ -f $1 ]; then
	echo "$1 is not folder!"
	exit
fi

cd $1

for i in $(seq 0 4); do
	mkdir "file$i"
	cp "file$i.txt" "file$i"
done


