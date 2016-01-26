@echo off
dir c
if ERRORLEVEL 1 goto 1
if errorlevel 0 goto 0
:0
echo 执行成功
:1
echo 执行失败
goto exit
:exit
pause
