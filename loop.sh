#!/bin/bash

#Script: Ops 201 Class 04 Ops Challenege Solution
#Author: Colton Williams
#Date of last revision: 03 May 2023
#Purpose: Loops

#Main

x=1
FILE="loop.txt"
while [ $x = 1 ] 

do
if [ -f "$FILE" ]
then
    echo "File $FILE exist."
else
    touch $FILE
    echo "File $FILE does not exist" 
fi

echo "press 1 to run again"
read x
done
#End