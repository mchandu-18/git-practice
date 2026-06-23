#!/bin/bash

USERID=$(id -u)
#echo "user ID is: $USERID"

if [ $USERID -ne 0 ]
then
    echo "please run this script with root priveleges"
    exit 1
fi

dnf list installed git 

if [$? -ne 0]
then
    echo "Git is not installed, going to install it .."
    dnf install git -y
    if [ $? -ne 0 ]
    then
        echo "Git installation is not succes...chek it"
        exti1
    else
        echo "Git installation is success"

else  
    echo "Git is already installed, noting to do.."
fi 