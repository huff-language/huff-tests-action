#!/bin/bash
SOURCE=$(pwd)
files=`find "$SOURCE" -type f -name "*$1"`

for i in "${files[@]}"
do
   huffc $i test 
done
echo "Tests ran on"
printf '%s\n' "${files[@]}"

