@echo off
rem 建立all.sql清除里面数据
echo. > all.sql
setlocal enabledelayedexpansion
rem 生成all.sql
for /f "delims=" %%i in ('dir /s /b *.sql') do (
					set str=%%i
					set var=!str:~-7!
					if not "!var!"=="all.sql" (echo @%%i >> all.sql)
	)
rem 执行all.sql
sqlplus %1/%2 @all.sql
pause
