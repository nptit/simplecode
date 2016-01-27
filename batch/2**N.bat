@echo off
:start
set /p n=请输入次幂
set /a var=2"<<"(%n%-1)
echo 2的%n%次方为%var%
pause
goto start

