#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m"

CHECK_ROOT(){
if [ $USED -ne 0 ]
then
    echo "please run this script with root priveleges"
    exit 1
fi
}

VALIDATE(){
if [ $? -ne 0 ]
then
    echo -e "$2is...$R FAILED $N"
    exit 1
else
    echo -e "$2 is...$G Success $N"
fi 
}

CHECK_ROOT
dnf list installed mysql

if [ $? -ne 0 ]
then
    echo "MYSQL is not installed, nothing to do.."
    dnf install mysql -y
    VALIDATE $? "Installing MYSQL"
else
    echo "MYSQL is already installed, nothing to do.."
fi
