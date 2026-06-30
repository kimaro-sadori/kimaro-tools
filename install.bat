@echo off
echo [*] Installing Kimaro Toolkit...
if not exist "%USERPROFILE%\AppData\Local\Microsoft\WindowsApps" mkdir "%USERPROFILE%\AppData\Local\Microsoft\WindowsApps"
copy /Y "%~dp0*.cmd" "%USERPROFILE%\AppData\Local\Microsoft\WindowsApps\" >nul
echo [+] Setup Complete!
