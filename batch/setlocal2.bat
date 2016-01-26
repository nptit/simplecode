@echo off
setlocal enabledelayedexpansion
for /L %%i in (1,1,5) do(
set a=%%i
echo !a!
)
pause
