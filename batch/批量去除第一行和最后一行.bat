@echo off 
setlocal enabledelayedexpansion 
for /r %%a in (*.sql) do ( 
set n=0 
for /f "skip=1 delims=" %%b in ('type "%%a"') do ( 
if "!n!"=="1" (echo !b!>"%%a") else echo !b!>>"%%a" 
set "b=%%b" & set /a n+=1 
)) 
pause 
