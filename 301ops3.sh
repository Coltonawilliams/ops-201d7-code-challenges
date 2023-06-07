#!/bin/bash

#Script: Ops 301 Class 03 Ops Challenege Solution
#Author: Colton Williams
#Date of last revision: 07 June 2023
#Purpose: File Permissions

echo "Enter permission number (e.g. 777): "
read perm_num

cd $dir_path
chmod $perm_num $dir_path
ls -1 $dir_path
