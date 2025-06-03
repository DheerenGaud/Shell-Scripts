#!/bin/bash

read -p  "Enter Url : " url
ping -c 1 $url >> Output.log

if [ $? -eq 0 ]
then 
 echo "Successfully Connected"
else 
  echo "Enable to connect"
fi

