#!/bin/bash

let readable_files=`find $1 -readable | wc -l`-1
echo "Readable files: $readable_files"

let writable_files=`find $1 -writable | wc -l`-1
echo "Writable files: $writable_files"

let executable_files=`find $1 -executable | wc -l`-1
echo "Executable files: $executable_files"



