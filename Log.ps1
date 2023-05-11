# Task 1
$Begin = Get-Date -Date '05/09/2023 00:00:00'
$End = Get-Date -Date  '05/09/2023 17:00:00'
Get-EventLog -LogName System -After $Begin -Before $End > C:\Users\willi\Documents\last_24.txt

# Task 2
Get-EventLog -LogName System -EntryType Error > C:\Users\willi\Documents\error.txt

# Task 3
Get-EventLog -LogName System -InstanceID 16 > C:\Users\willi\Documents\InstanceID.txt

# Task 4
Get-EventLog -LogName System -Newest 20 > C:\Users\willi\Documents\InstanceID\New20.txt

# Task 5
$Events Get-EventLog -LogName System -Newest 500
$Events / Group-Object -Property Socruce -NoElement / Sort-Object -Property Count -Descending > C:\Users\willi\Documents\InstanceID\500.txt
