@echo off
set /p var=������filename
if exist %var% echo ���� & goto end
echo ������
:end
pause
