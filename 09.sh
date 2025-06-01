#!/bin/bash/

echo "Key value Pair"

declare -A arr
arr=( [name]=Dheeren [rollNo]=15 [city]=mumbai )

echo "name is : ${arr[name]}"
echo "rollno is : ${arr[rollNo]}"

