@echo off
rem count记录循环次数
set countNum=0
rem 要判断长度的字符串为
set str=%1
:count
set /a countNum+=1
set str=%str:~0,-1%
if defined str goto count
set %2=%countNum%

