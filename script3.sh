#!/bin/bash
read -p "Give a directory name: " response
echo "Files and subdirectories are:(without hidden files)"
ls $response | wc -l
echo "With hidden files"
ls -la $response | wc -l

