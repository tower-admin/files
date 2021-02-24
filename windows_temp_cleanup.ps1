$ErrorActionPreference = "SilentlyContinue"

gci -path "c:\users" | where {$_.name -notcontains "svc"} | Sort Name | %{
   $IETempFolder = "c:\users\" + $_.Name + "\AppData\Local\Microsoft\Windows\Temporary Internet Files"
   $TempFolder = "c:\users\" + $_.Name + "\AppData\Local\Temp"
   $ChromeTempFolder = "c:\users\" + $_.Name + "\AppData\Local\Google\Chrome\User Data\Default\Cache"

   gci -path $TempFolder | ri -recurse -Force -confirm:$false
   gci -path $IETempFolder | ri -recurse -Force -confirm:$false
   gci -path $ChromeTempFolder | ri -recurse -Force -confirm:$false
}

   gci -path c:\temp\ -recurse | ri -recurse -force -confirm:$false
   gci -path c:\programdata\*.log -recurse | ri -recurse -force -confirm:$false
   gci -path c:\inetpub\*.log -recurse | ri -recurse -force -confirm:$false
   gci -path c:\windows\temp\ -recurse | ri -recurse -force -confirm:$false
   gci -path c:\windows\SoftwareDistribution\Download\ -recurse | ri -recurse -force -confirm:$false
   gci -path C:\Windows\System32\LogFiles\ -recurse | ri -recurse -force -confirm:$false
