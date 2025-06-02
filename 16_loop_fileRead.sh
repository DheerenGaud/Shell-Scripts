#!/bin/bash

file=/home/dheeren/Documents/cmd/names.txt

for name in $( cat $file  )
do
	echo $name
done	
