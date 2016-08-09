@echo off
rem 建立all.sql清除里面数据
echo. > all.sql
setlocal enabledelayedexpansion
rem 生成all.sql,并把所有的sql文件拷贝到当前目录
for /f "delims=" %%i in ('dir /s /b *.sql') do (
					set str=%%i
					set var=!str:~-7!
					if not "!var!"=="all.sql" (echo. @"%%i" >> all.sql && copy "%%i" .)
	)
pause
