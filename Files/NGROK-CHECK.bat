@echo off
net config server /srvcomment:"Windows Azure VM" > out.txt 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V EnableAutoTray /T REG_DWORD /D 0 /F > out.txt 2>&1
net user administrator P@$$wOrd1 /add >nul
net localgroup administrators administrator /add >nul
echo All done! Connect your VM using RDP. When RDP expired and VM shutdown, Re-run jobs to get a new RDP.
echo IP:
rem tasklist | find /i "ngrok.exe" >Nul && curl -s localhost:4040/api/tunnels | curl -H "Content-Type: application/json" -X POST -d @- https://edith-bot.kevc.workers.dev/ || curl https://edith-bot.kevc.workers.dev/sendsecretmessage?message=VMFailed 
echo User: Administrator
echo Pass: Ghadmin123
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& './Files/DisablePasswordComplexity.ps1'" > out.txt 2>&1
diskperf -Y >nul
sc start audiosrv >nul
sc config Audiosrv start= auto >nul
ICACLS C:\Windows\Temp /grant administrator:F >nul
ICACLS C:\Windows\installer /grant administrator:F >nul
ping -n 10 127.0.0.1 >nul
rem PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& './Files/vn-link-cli.exe -k 1qaz@WSX'" > out.txt 2>&1






