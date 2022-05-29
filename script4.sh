#!/bin/bash
read -p "Give a directory name: " response
if [ -d "$response" ]
then
	echo "Files and subdirectories are:(without hidden files)"
	ls $response | wc -l
	echo "With hidden files"
	ls -la $response | wc -l
else
	echo "Files does not exist!"
fi 

