#!/bin/bash

#Script: Ops 201 Class 04 Ops Challenege Solution
#Author: Colton Williams
#Date of last revision: 23 May 2023
#Purpose: Log Retrieval via Powershell

# Output all events from the System event log that occurred in the last 24 hours to a file named last_24.txt on the desktop

$eventsLast24 = Get-WinEvent -LogName System -MaxEvents 0 -FilterXPath "*[System[TimeCreated[timediff(@SystemTime) <= 86400000]]]"
$eventsLast24 | Out-File -FilePath "$env:USERPROFILE\Desktop\last_24.txt"

# Output all "error" type events from the System event log to a file named errors.txt on the desktop

$errorEvents = Get-WinEvent -LogName System -FilterXPath "*[System[Level=2]]"
$errorEvents | Out-File -FilePath "$env:USERPROFILE\Desktop\errors.txt"

# Print to the screen all events with ID of 16 from the System event log

$eventsID16 = Get-WinEvent -LogName System -FilterXPath "*[System[EventID=16]]"
$eventsID16

# Print to the screen the most recent 20 entries from the System event log

$recentEvents = Get-WinEvent -LogName System -MaxEvents 20
$recentEvents

# Print to the screen all sources of the 500 most recent entries in the System event log, showing the entire text

$recent500Events = Get-WinEvent -LogName System -MaxEvents 500
$recent500Events | Select-Object -Property Source | Format-Table -AutoSize
