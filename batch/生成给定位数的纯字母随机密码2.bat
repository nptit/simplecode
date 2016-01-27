@echo off
set /p length=请输入生成密码的位数:
call :randompassword length passwd1 passwd2 passwd3
rem 可以加个进度条
rem call 进度条.bat
echo 生成的密码1：%passwd1%
echo 生成的密码2：%passwd2%
echo 生成的密码3：%passwd3%
pause
goto :eof

:randompassword
@echo off
if %1=="" goto :eof
if %2=="" goto :eof
set /a count=%1
set passwordset=abcdefghigklmnopqrstuvwxyz0123456789
set return=
:random
set /a randomNum=%random%%%36
rem 使用命令嵌套从passwordset中随机取一个字母拼接
call set return=%return%%%passwordset:~%randomNum%,1%%
set /a count-=1
rem 循环生成随机数
if %count% GTR 0 goto random
if not "%2"=="" set %2=%return%
rem 删除第二个参数，后面顶上
shift /2
rem 如果有下一个参数
if not "%2"=="" goto randompassword
goto :eof
