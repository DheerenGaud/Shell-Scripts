#!/bin/bash

echo "Arrays "

arr=( 1 2 3 4 5 6  )

echo "4th element of array is ${arr[4]} "

#find the length of array
echo "length of array is : ${#arr} "

#print range of value eg 2 - 4
echo "value from 2 to 4 :- ${arr[*]:2:2} "

#Update the array
arr+=( New "Hello" 100 )
echo "array element : ${arr[*]}"

#change 2 index value
arr[2]="ganesh"
echo "Updatedarray element : ${arr[*]}"
