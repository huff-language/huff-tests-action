#!/bin/bash

location=${1:-"src"}
extension=${2:-"*.t.huff"}
format=${3:-"list"}

files=`find $location -type f -name "$extension"`

set -- junk $files
shift
for word; do
   huffc $word test --format $format
done

echo "Tests ran on"
printf '%s\n' "${files[@]}"

