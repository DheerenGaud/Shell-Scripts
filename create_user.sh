#!/bin/bash

#checking Root user 
if [ $UID -ne 0 ]
then
	echo "Only ROOT user can excute $0"
	exit 1
fi

#check then then 1 Argument
if [ $# -eq 0 ]
then 
	echo "Atleast 1 Argument require"
	echo "Like  ---  $0 USER_NAME [COMMENTS]"
	exit 1
fi

#store 1st argument
USERNAME=$1

#store more argument
shift
DISCRIPTION=$@
#echo "$USERNAME and $DISCRIPTION"

#Create password
PASSWORD=$(date +%s%n)
echo $PASSWORD

#create user 
useradd -c "$DISCRIPTION" -m $USERNAME

#check user succefuly created or not 
if [ $? -ne 0 ]
then 
	echo "user not created"
        exit 1
fi

#set user password 
echo "$USERNAME:$PASSWORD" | chpasswd


if [ $? -ne 0 ]
then
        echo "user password not created"
        exit 1
fi

#set user password on 1st login
passwd -e $USERNAME

echo
echo
echo "Username : $USERNAME"
echo
echo "Password : $PASSWORD"
echo
echo $(hostname)


