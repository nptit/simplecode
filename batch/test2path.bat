@echo off
for /f "delims=" %%i in ("notepad.exe") do echo %%~$PATH:i
pause
