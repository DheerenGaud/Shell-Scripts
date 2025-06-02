#!/bin/bash
echo This script Check User is Root or Not

uid=$UID
if [ $uid -eq 0 ]
then 
   echo "User is ROOT user"
else
   echo "User is NOT ROOT user"  	
fi

