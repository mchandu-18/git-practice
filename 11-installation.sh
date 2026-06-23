#!/bin/bash

USERID=$(id -u)
#echo "user ID is: $USERID"

if[ $USER -ne 0]
then
    echo "please run this script with root priveleges"
    exit 1
fi

