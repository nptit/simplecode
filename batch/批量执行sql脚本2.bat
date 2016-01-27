@echo off
rem 建立all.sql清除里面数据
echo. > all.sql
setlocal enabledelayedexpansion
rem 生成all.sql
for /r %%i in (*.txt) do (
        set str=%%i
        set var=!str:~-7!
        if not "!var!"=="all.sql" (echo @%%i >> all.sql)
	)
pause
