@echo off
setlocal enabledelayedexpansion
rem echo --hhhhh|findstr /c:"--">nul 2>nul&&echo true||echo false
for /r %%j in (*.txt) do (
	set /a loop=0
    echo %%j
    rem for /f in 括号中直接写的变量被当做文件名，会打开一个文件,但是如果文件名有特殊字符，不管用，比如1-副本（2）.txt,会被当做1这个文件
	for /f "delims=" %%i in (%%j) do (
		if !loop!==0 echo.>"%%j"
		echo %%i|findstr /c:"--">nul 2>nul&&set a=true||set a=false
		if !a!==false echo %%i>>"%%j"
		set /a loop+=1	
    )
)
pause
