@echo off
setlocal enabledelayedexpansion
rem echo --hhhhh|findstr /c:"--">nul 2>nul&&echo true||echo false
for /r %%j in (*.sql) do (
	set /a loop=0
	for /f "delims=" %%i in ('type "%%j"') do (
		if !loop!==0 echo.>"%%j"
		echo %%i|findstr "^\/$" 2>nul&&set a=true||set a=false
		if !a!==false echo %%i>>"%%j"
		set /a loop+=1	
	)
)
pause
