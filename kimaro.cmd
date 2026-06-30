@echo off
setlocal enabledelayedexpansion

:: Grab the first argument
set "COMMAND=%~1"

:: If empty, show help
if "%COMMAND%"=="" goto show_help

:: Check if the specific command file exists in the toolkit folder
if exist "%~dp0%COMMAND%.cmd" (
    call "%~dp0%COMMAND%.cmd"
    goto :eof
) else (
    echo [!] Unknown tool command: %COMMAND%
    goto show_help
)

:show_help
echo =======================================================
echo               KIMARO PROFESSIONAL TOOLKIT              
echo =======================================================
echo Usage: kimaro [command]
echo.
echo Available Commands:
echo   netst    - Network Diagnostic
echo   greet    - Runs greeting code test
echo =======================================================
goto :eof
