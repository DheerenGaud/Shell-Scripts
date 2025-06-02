#!/bin/bash

read -p "Enter Your age : " age 
read -p "Enter Your gender Male|Female " gender
if [ $age -ge 18 ] && [ $gender == "Male"  ] 
then       
	echo "You can vote"
else
       echo sorry you cant vote
fi

