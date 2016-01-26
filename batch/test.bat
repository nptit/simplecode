@echo off
for /f "delims=" %%i in ('dir /b') do echo %%~zi
pause
