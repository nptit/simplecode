@echo off
rem mode con cols=113 line=15 & color 9f
cls
echo.
echo 程序正在初始化
echo.
echo  +++++++++++++++++++++++++++++++++++++++++++++++++++++
set /p a=#<nul 
for /l %%i in (1,1,24) do set /p a=#<nul & ping /n 2 127.0.0.1>nul
echo 100%%
echo  +++++++++++++++++++++++++++++++++++++++++++++++++++++
pause
