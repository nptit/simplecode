@echo off
set str=hh echo hello 123
echo 初始变量为：%str%
echo 截取字符串: %str:~3,10%
echo 执行截取字符串
call %str:~3,10%
