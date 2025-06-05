#!/bin/bash
#/home/dheeren/Documents/ShellProject

LIMIT=100
BASE=/home/dheeren/Documents/ShellProject/allFile/

if [ ! -d $BASE  ]
then 
	echo "This Directory Not exist $BASE"
	exit 1
fi

if [ ! -d $BASE/archive  ]
then 
	mkdir $BASE/archive
fi


for i in `find $BASE -size +85k`
do
	echo "$(date) - Archiving $i to $BASE/archive"
	gzip -k $i || exit 1
	mv $i.gz $BASE/archive || exit 1 
done



