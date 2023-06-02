#!/bin/bash

#Script: Ops 301 Class 02 Ops Challenege Solution
#Author: Colton Williams
#Date of last revision: 01 June 2023
#Purpose: Copy system logs

#!/bin/bash

source_file="/var/log/syslog"
destination_file="system_logs.txt"

# Copy the contents of the source file to the destination file
cp "$source_file" "$destination_file"

echo "System logs copied to $destination_file"
