@echo off
set "CMD_ARG=%~1"

:: If no argument is passed, show the menu
if "%CMD_ARG%"=="" goto menu

:: Check for subcommands safely
if /i "%CMD_ARG%"=="netst" (
    call "%~dp0netst.cmd"
    exit /b
)
if /i "%CMD_ARG%"=="greet" (
    call "%~dp0greet.cmd"
    exit /b
)

echo [!] Unknown command: %CMD_ARG%

:menu
echo =======================================================
echo               KIMARO PROFESSIONAL TOOLKIT              
echo =======================================================
echo Usage: kimaro [command]
echo.
echo Available Commands:
echo   netst    - Network Diagnostic
echo   greet    - Runs greeting code test
echo =======================================================
exit /b
