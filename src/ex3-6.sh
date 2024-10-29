# Without argument.
if [ -z $1 ]; then
	echo "You should notify the folder name to use."
	exit
fi

# If the path does not exist.
if [ ! -d $1 ]; then
	mkdir $1
fi

cd $1

for i in $(seq 0 4); do
	touch "file$i.txt"
done

tar -cvf files.tar "file0.txt" "file1.txt" "file2.txt" "file3.txt" "file4.txt"
