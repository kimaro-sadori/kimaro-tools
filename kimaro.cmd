(
echo @echo off
echo set "TOOL_DIR=%%~dp0"
echo if "%%~1"=="" goto help
echo if exist "%%TOOL_DIR%%%%~1.cmd" ^(
echo     call "%%TOOL_DIR%%%%~1.cmd" %%*
echo     goto :eof
echo ^) else ^(
echo     echo [!] Unknown command: %%1
echo     goto help
echo ^)
echo :help
echo =======================================================
echo               KIMARO PROFESSIONAL TOOLKIT              
echo =======================================================
echo Usage: kimaro [command]
echo.
echo Available Commands:
echo   netst    - Network Diagnostic ^(ping okda adrare ^)
echo   greet    - z3ma 5dam okda
echo =======================================================
echo goto :eof
) > kimaro.cmd