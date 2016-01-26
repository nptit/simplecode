@echo off 
net start OracleServiceORCL
if %errorlevel%==0 (
	net start OracleDBConsoleorcl
	if %errorlevel%==0 net start OracleOraDb11g_home1TNSListener
)
