@echo off
set /p var=请输入命令试试:
%var%
if %errorlevel%==0 echo 执行成功 & goto end
echo 执行失败
:end
pause
