#!/bin/bash

#Script: Ops 201 Class 04 Ops Challenege Solution
#Author: Colton Williams
#Date of last revision: 23 May 2023
#Purpose: System process commands

# Print active processes ordered by highest CPU time consumption
Get-Process | Sort-Object CPU -Descending

# Print active processes ordered by highest Process Identification Number (PID)
Get-Process | Sort-Object ID -Descending

# Print the top five active processes ordered by highest Working Set (WS(K))
Get-Process | Sort-Object WorkingSet -Descending | Select-Object -First 5

# Start a browser process and open the OWASP Top Ten URL
Start-Process -FilePath "chrome.exe" -ArgumentList "https://owasp.org/www-project-top-ten/"

# Start Notepad ten times using a for loop
for ($i = 1; $i -le 10; $i++) {
    Start-Process -FilePath "notepad.exe"
}

# Close all instances of Notepad
Get-Process -Name "notepad" | Stop-Process

# Kill a process by its Process Identification Number (PID)
$processToKill = Get-Process -Name "chrome" # Replace "chrome" with the appropriate process name
if ($processToKill) {
    $processToKill | Stop-Process
}