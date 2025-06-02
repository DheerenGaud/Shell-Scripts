#!/bin/bash

FilePath="/home/dheerenk/Documents/cmd/data.csv"

if [[ -f $FilePath  ]]
then
   echo "File exist"
else
     echo File not exist
     exit 1
fi

