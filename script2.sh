#!/bin/bash

echo "This script give you ability to know the number of files of a directory you passed as argument!"
echo "Without hidden files"
ls $1  | wc -l
echo "With hidden files"
ls -la $1 | wc -l
