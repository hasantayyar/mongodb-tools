#!/bin/bash
MONGODB_INSTALLED=`which mongod`
if [ "MONGODB_INSTALLED" == "" ]; then
    echo -e "mongodb NOT found."
    exit 1
fi
if [ -z $1 ]
then
	echo "give data folder path"
	exit
fi
sudo mkdir -p $1
sudo mongod --dbpath $1
