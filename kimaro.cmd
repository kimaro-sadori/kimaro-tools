@echo off
if "%~1"=="" goto help
if exist "%~dp0%~1.cmd" (
    call "%~dp0%~1.cmd"
    goto :eof
) else (
    echo [!] Unknown command: %1
    goto help
)

:help
echo =======================================================
echo               KIMARO PROFESSIONAL TOOLKIT              
echo =======================================================
echo Usage: kimaro [command]
echo.
echo Available Commands:
echo   netst    - Network Diagnostic
echo   greet    - Runs greeting code test
echo =======================================================
