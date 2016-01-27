@echo off
rem 开启延时
setlocal enabledelayedexpansion
rem 01_xxx.sql文件变为001_xxx.sql文件,判断前面数字到底是几位
for /f "delims=" %%i in ('dir /s /b *.sql') do (
	set var=%%~nxi
rem 连续截取俩次字符串会报错，说echo关闭，好神奇,后期继续测试
	rem set subvar=!var:~0,3!	
	set subvarlastword=!var:~2,1!
	rem 利用数值计算模拟或
	if "!subvarlastword!"=="_" set /a first=1
	if "!subvarlastword!"=="-" set /a last=1
	set /a var=first"|"last 
	if !var! EQU 1 ren %%i "0%%~ni.sql"
	rem echo !subvarlastword!
	rem ren %%i "0%%~ni.sql"
)
rem echo %%~ni
pause
