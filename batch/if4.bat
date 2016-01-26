@echo off
set /p var=请输入filename
if exist %var% echo 存在 & goto end
echo 不存在
:end
pause
