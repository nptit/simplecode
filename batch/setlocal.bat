@echo off
rem 开启变量延迟，运行到某一行会动态加载变量
setlocal enabledelayedexpansion
set a=4
set a=5 & echo !a!
pause
