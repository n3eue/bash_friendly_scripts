#!/bin/bash
read -p "Enter a number: " num
let square=$num*$num
let cube=$square*$num

if [ $num -gt 0 ]
then
echo "The square of $num is: $square"

else
echo "The cube of $num is: $cube"

fi
