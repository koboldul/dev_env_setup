 Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

cinst conemu -y
cinst totalcommander  -y
cinst notepadplusplus -y
cinst googlechrome -y
cinst everything -y
cinst procexp -y
cinst wireshark -y
cinst heidisql -y
#cinst visualstudio2017professional
cinst postman -y
cinst python3 -y
cinst visualstudiocode -y

Set-ExecutionPolicy unrestricted

import-module ServerManager

Install-WindowsFeature Web-Server,Web-Asp-Net45,Web-Mgmt-Console
Set-WebConfigurationProperty system.applicationHost/sites/siteDefaults -Name logFile.logFormat -Value "W3C"
Set-WebConfigurationProperty system.applicationHost/sites/siteDefaults -Name logFile.logExtFileFlags -Value "Date, Time, ClientIP, UserName, Method, UriQuery, HttpStatus, Referer"

netsh advfirewall firewall add rule name="Open Port VSMon" dir=in action=allow protocol=TCP localport=4020


Install-Module DockerProvider -Force
Install-Package Docker -ProviderName DockerProvider -Force