#!/bin/bash

echo "This script will show the number of files and subdirectories in the current directory (ommiting hidden file)"
ls | wc -l

echo "With hidden files the number researched is:"
ls -la |wc -l
