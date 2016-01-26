@echo off
set /p str=请输入字符串
echo 判断长度的字符串为:%str%
call strlen %str% num
echo 字符串%str%的长度为%num%
pause
