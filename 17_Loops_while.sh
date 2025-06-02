#!/bin/bash

echo read csv file

while IFS="," read id name age
do 
	echo "Name - $name id - $id age - $age "
done < data.csv
