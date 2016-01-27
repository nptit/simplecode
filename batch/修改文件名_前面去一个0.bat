@echo off
rem 开启延时
setlocal enabledelayedexpansion
for /f "delims=" %%i in ('dir /s /b *.sql') do (
	set var=%%~nxi
	set subvar=!var:~1!	
	ren %%i !subvar!
	rem echo !subvarlastword!
)
rem echo %%~ni
pause
