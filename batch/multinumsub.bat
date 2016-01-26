@echo off
set sum=0
call :multisub sum 10 20 30
echo %sum%
pause
:multisub
set /a %1+=%2
shift /2
if not "%2"=="" goto multisub
goto :eof
