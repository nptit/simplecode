@echo off
set /a var=1"&"1
echo %var%
set /a var2=1"%"1
echo %var2%
set /a var=3"<<"2
echo %var%
set /a var4=4">>"2
echo %var4%
pause
