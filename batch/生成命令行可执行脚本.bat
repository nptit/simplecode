echo off
rem 在脚本前面增加declare后面增加end；
setlocal enabledelayedexpansion
for /r %%i in (*.sql) do (
	set /a loop=0;
	for /f "delims=" %%j in ('type "%%i"') do (
		if !loop! EQU 0 (echo declare>"%%i" & echo %%j>>"%%i") else echo %%j>>"%%i"
	set /a loop+=1;
	)
	echo end;>>%%i
)
pause
