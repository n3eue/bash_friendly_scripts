
#!/bin/bash

# Create two sub-directories in the current directory

mkdir $1
mkdir $2

# Check if the created directories exist in the current directory

if [ -e $1  ] && [ -e $2 ]
then
	echo "The directories are created and exist !"
else
	echo "The directories don't exist !"
fi

read -p "Numbers of assembly files to create: " n
for ((i=0;i<$n;i++))
do
	touch $1/$i.asm
done

read -p "Numbers of C files to create: " m
for ((j=0;j<$m;j++))
do
	touch $2/$j.c
done

echo "Checking existence of the created files in process..."
echo "$1:"
ls $1
echo "$2:"
ls $2
