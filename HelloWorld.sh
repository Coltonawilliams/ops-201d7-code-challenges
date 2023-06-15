#!/bin/bash

#Script: Ops 301 Class 03 Ops Challenege Solution
#Author: Colton Williams
#Date of last revision: 13 June 2023
#Purpose: Hello World

e=y

while [ $e = y ]
do
echo "Please choose:"
echo "1) Hello world!"
echo "2) Ping Self"
echo "3) IP Info"
echo "4) Exit"

read a

if [ $a = 1 ]
    then echo "Hello world!"

elif [ $a = 2 ]
    then ping -c 3 localhost

elif [ $a = 3 ] 
    then ifconfig

else [ $a = 4 ]
    exit
fi

echo "Do you want to try again, y or n?"
read e
done

#x="z"
#while [ $x == "z" ]
#do 
#echo "please choose"
#echo "1 Hello World!"
#echo "2 Ping self"
#echo "3 Ip info"
#echo "4 exit"
#read a
#if [ $a == 1 ]
#    then echo "Hello World"
# The "3" before localhost means to ping 3 times
#elif [ $a == 2 ]
#    then ping -c 3 localhost
#
#elif [ $a == 3 ]
#    then ifconfig
#
#elif [ $a == 4 ]
#    then exit 0
#
#else echo "Invalid Option"
#fi 
#
#echo "Try Again? (y/n)"
#read x
#done