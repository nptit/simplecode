@echo off
for /r . %%i in (*.sql) do echo y|del %%~ni%%~xi
pause
