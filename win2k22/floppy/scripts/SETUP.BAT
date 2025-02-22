sc config "WinRM" start= auto
powershell -Command "Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Force"
powershell -Command "Set-ExecutionPolicy Unrestricted -Force"
powershell -NoLogo -ExecutionPolicy RemoteSigned -File A:\WinRM.ps1

rem rem quick & simple WinRM configuration
rem rem basic config for winrm
rem cmd.exe /c winrm quickconfig -q
rem rem allow unencrypted traffic, and configure auth to use basic username/password auth
rem cmd.exe /c winrm set winrm/config/service @{AllowUnencrypted="true"}
rem cmd.exe /c winrm set winrm/config/service/auth @{Basic="true"}
rem rem update firewall rules to open the right port and to allow remote administration
rem cmd.exe /c netsh advfirewall firewall set rule group="remote administration" new enable=yes
rem rem restart winrm
rem cmd.exe /c net stop winrm
rem cmd.exe /c net start winrm
