#!/bin/bash

read -p "Enter web url : " url

ping -c 1 $url

if [[ $? -eq 0 ]]
then 
	echo "Successfully connected to $url "
else 
	echo "Unable to connect to $url"
fi	
