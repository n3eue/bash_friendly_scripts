#!/bin/bash

test_type_files(){

	if [ -h $file ]
	then
		echo "This is a symbolic link"
	elif [ -d $file ]
	then
		echo "This is a directory file"
	elif [ -c $file ]
	then
		echo "This is a special character file"
	elif [ -b $file ]
	then
		echo "This is a special block file"
	elif [ -S $file ]
	then
		echo "This is a local socket file"
	elif [ -p $file ]
	then
		echo "This is a named pipe"
	else
		echo "This is a regular file"
	fi
}

for file in "$@"
do
	test_type_files
done

# Print a message for type of files in the current directory
echo "For the current directory we have:"
files=`ls .`
for file in $files
do
	echo -n  "$file: " 
	test_type_files
done
