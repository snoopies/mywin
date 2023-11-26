msiexec /i "ZeroTier One.msi" /passive
echo %1
"C:\Program Files (x86)\ZeroTier\One\zerotier-cli.bat" join "%1"
