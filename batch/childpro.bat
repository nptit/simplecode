@echo off
call :sub return helloworld
echo %return%
pause
:sub
set %1=%2
goto :eof
