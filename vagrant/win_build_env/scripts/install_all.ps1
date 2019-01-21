& iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1')) 
& SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"

cinst notepadplusplus -y
cinst totalcommander -y
cinst openssh -y
cinst jdk8 -y
cinst conemu -y

powershell .\java_home.ps1
netsh advfirewall firewall set rule group="Network Discovery" new enable=Yes #49187 




