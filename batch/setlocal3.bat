@echo off
set var1=123
set var2=aaa
echo ����ǰ var1=%var1% var2=%var2%

rem ��������һ��һ��ִ�е������������ʱ������ÿһ��ֻ�ܸ�֪��һ�б����ĸı� 
rem ��ζ�ţ������ͬһ�иı����������var1ֵ�Ѿ��ı䣬����var2��ֵ�����õ���һ��
rem ��var1��
set var1=%var2% & set var2=%var1%
echo ������ var1=%var1% var2=%var2%
pause
