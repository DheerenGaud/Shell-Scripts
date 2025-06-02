#!/bin/bash

echo Fucntion

function hello {
	echo "Hello bro"
}
hello

sum() {
   num1=$1
   num2=$2
  # sum=$((num1+num2))
   let sum=num1+num2
   echo "of no is : $sum"
}

sum 5 4
