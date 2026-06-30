@echo off
echo [*] Running Network Diagnostic...
echo ------------------------------------------
echo [1] Checking local IP configuration...
ipconfig | findstr /i "ipv4 description default"
echo.
echo [2] Testing internet connectivity (Ping 8.8.8.8)...
ping -n 2 8.8.8.8 | findstr /i "reply loss"
echo ------------------------------------------
exit /b
