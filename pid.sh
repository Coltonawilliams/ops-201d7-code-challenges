#!/bin/bash

#Script: Ops 201 Class 04 Ops Challenege Solution
#Author: Colton Williams
#Date of last revision: 01 May 2023
#Purpose: PID scrips

#Main

y="x"

while [ $y == "x" ]
do  
    ps aux
    echo "Choose a PID."
    read pid
    kill $pid
    break
done

echo "Done."

