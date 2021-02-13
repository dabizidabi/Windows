$computername = Read-Host "Введіть назву компютера (example: localhost, DC, CORE)"
$y = Read-Host "Виключити всі адаптери крім одного? Y/N?"
if ($y -eq 'y')
    {
    $a = Get-WmiObject -class win32_networkadapter -ComputerName $computername
    for ($i=0 ; $i -le $a.Length; $i++) 
        {if 
            ($a[$i].netconnectionstatus -eq '2')
            {$b = $a[$i]
            break}   
         }
     for ($i=0 ; $i -le $a.Length; $i++)
         {if ($a[$i] -eq $b) {continue}
 
         else {$a[$i].disable()}
         }
     break
     }
 else {write-host 
       write-host "OK, нічого не робимо"}
