@echo off  
echo 清除系统垃圾过程中，请稍等......  
del /f /s /q %systemdrive%\*.tmp  
del /f /s /q %systemdrive%\*._mp  
del /f /s /q %systemdrive%\*.log  
del /f /s /q %systemdrive%\*.gid  
del /f /s /q %systemdrive%\*.chk  
del /f /s /q %systemdrive%\*.old  
del /f /s /q %systemdrive%\recycled\*.*  
del /f /s /q %windir%\*.bak  
del /f /s /q %windir%\prefetch\*.*  
rd /s /q %windir%\temp & md %windir%\temp  
del /f /q %userprofile%\cookies\*.*  
del /f /q %userprofile%\recent\*.*  
del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.*"  
del /f /s /q "%userprofile%\Local Settings\Temp\*.*"  
del /f /s /q "%userprofile%\recent\*.*"  
echo 清除系统垃圾完成！按任意键继续……感谢您的使用！！  
echo. & pause  
