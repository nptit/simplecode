@echo off 
setlocal enabledelayedexpansion 
for /r %%a in (*.sql) do ( 
rem 如果不加/a 变量被当做字符串？
set /a n=0 
rem 统计文件总行数
set filesize=0;
for /f "delims=" %%b in ('type "%%a"') do set /a filesize+=1 
set /a breaknum=!filesize!-1

for /f "delims=" %%b in ('type "%%a"') do ( 
rem echo !breaknum!
rem 冲掉原来数据
if !n! EQU 0 (echo begin>"%%a" & echo %%b>>"%%a") else if !n! EQU !breaknum! (break)  else echo %%b>>"%%a" 
rem count
set /a n+=1 
)) 
pause 
