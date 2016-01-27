@echo off
set /p length=请输入生成密码的位数:
call :randompassword length passwd1 passwd2
rem 可以加个进度条
rem call 进度条.bat
echo 生成的密码1：%passwd1%
echo 生成的密码2：%passwd2%
pause
goto :eof

:randompassword
@echo off
set /a length=%1
set passwordset=a b c d e f g h i g k l m n o p q r s t u v w x y z
set count=0
set return=
:random
set /a randomNum=%random%%%26+1
rem 从passwordset中随机取一个字母拼接
for /f "tokens=%randomNum% delims= " %%i in ("%passwordset%") do set return=%return%%%i
set /a count+=1
if %count% LSS %length% goto random
if not "%2"=="" set %2=%return%
shift /2
rem 这里为什么不能goto到random，确实逻辑有问题，单不能gouto？？
if not "%2"=="" goto randompassword
goto :eof
