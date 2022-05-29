#!/bin/bash

counter=1
FILE=`getent passwd | cut -d: -f1`
for file in $FILE
do
	echo "$file: $counter"
	let counter=$counter+1
done
