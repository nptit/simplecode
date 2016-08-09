@echo off
rem 原来文件格式为 数字+下划线+其他 例如01_mmmmm.sql 修改为 三位的编码
rem
rem 开启延时
setlocal enabledelayedexpansion

rem 统计文件数量
rem dir /B /A-D *.sql | find /V /C "">count.txt
rem    set /P c=<count.txt
set /a count = 0
for /f "delims=" %%i in ('dir /s /b *.sql') do (
	set var=%%~nxi
	
	echo !var!|findstr "^[0-9]*_" 2>nul&&set a=true||set a=false
		if !a!==true call :updatevar

	
	rem echo !count!
    if !count! LSS 10 (ren %%~nxi "00!count!_!var!") else (ren %%~nxi "0!count!_!var!")
    set /a count+=1
)
pause

rem 处理原来的文件名，删除前面的字符串
:updatevar
	echo !var!|findstr "^[0-9]*_" 2>nul&&set a=true||set a=false
		if !a!==true (set var=!var:~1! && call :updatevar)
goto :eof
