@echo off
rem count��¼ѭ������
set countNum=0
rem Ҫ�жϳ��ȵ��ַ���Ϊ
set str=%1
:count
set /a countNum+=1
set str=%str:~0,-1%
if defined str goto count
set %2=%countNum%

