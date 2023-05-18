# Script: Ops 201 Class 12 Ops Challenge Solution
# Author: Colton Williams
# Date of latest revision: 05/17/23
# Purpose: Domain Analysis
# this script gathers intel about a domain

echo "enter website"
read website

# (>>) inserts on the bottom line
whois $website > domainanalysis.txt 
dig $website >> domainanalysis.txt 
host $website >> domainanalysis.txt 
nslookup $website >> domainanalysis.txt 

