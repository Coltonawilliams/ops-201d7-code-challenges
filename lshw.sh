#!/bin/bash


#Display the name of the computer
echo "Computer Name:"
hostnamectl |grep "Hostname :" | cut -d: -f2

#Display BIOS
echo -e "\nBIOSinformation:"
sudo dmidecode -t bios | grep -E 'Vendor|Version|Release Date|BIOS Revision'


#Display CPU
echo -e "\nCPU information:"
lshw -short | grep -i "processor" | head -1 | cut -f2-

#Display RAM
echo -e "\nRAM information:"
lshw -short | grep -i "memory" | greg -v "system" -1 | cut -f2-

#Display Adpater 
echo -e "\nDisplay adapter information"
lshw -short | grep -i "display" | cut -f2-

#Display Network
echo -e "\nDisplay adapter information:"
lshw -short | grep -i "display" | cut -f2-