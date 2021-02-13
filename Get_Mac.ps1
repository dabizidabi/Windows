[string]$computername = Read-Host "Введіть назву компютера (example: localhost, DC, CORE)"
[string]$directory = Read-Host "Директорія для імпорту інформації (example: C:\IpMAC.txt)"
Get-WmiObject -class win32_networkadapterconfiguration -ComputerName $computername -Filter "ipenabled = 'true'" | 
select PScomputername, @{n="IP"; e={$_.ipaddress[0]}}, MACaddress |
Out-File $directory
