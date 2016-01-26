@echo off
set /p var1=变量一:
set /p var2=变量二:
if %var1%==%var2% echo 相等 & goto end
echo 不相等
:end
pause
