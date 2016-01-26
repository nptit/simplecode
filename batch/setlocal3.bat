@echo off
set var1=123
set var2=aaa
echo 交换前 var1=%var1% var2=%var2%

rem 批处理是一行一行执行的如果不开启延时变量，每一行只能感知上一行变量的改变 
rem 意味着，如果在同一行改变变量，比如var1值已经改变，但是var2赋值还是用的上一行
rem 的var1，
set var1=%var2% & set var2=%var1%
echo 交换后 var1=%var1% var2=%var2%
pause
