(
echo @echo off
echo echo [*] Running Advanced Network Diagnostics...
echo powershell -NoProfile -ExecutionPolicy Bypass -Command "Write-Host '--- LOCAL IP ADAPTERS ---' -ForegroundColor Cyan; Get-NetIPAddress -AddressFamily IPv4 | Select-Object IPAddress, InterfaceAlias; Write-Host '--- TESTING INTERNET CONNECTIVITY ---' -ForegroundColor Yellow; Test-Connection -ComputerName google.com -Count 2 | Select-Object Address, ResponseTime"
) > netst.cmd