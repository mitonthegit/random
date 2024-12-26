@echo off
set /p filepath=Enter path of file to run:

echo Set objShell = CreateObject("WScript.Shell") > start.vbs
echo objShell.Run "%filepath%", 7, False >> start.vbs

echo Saved as start.vbs, this vbs file can be put in WIN+R: "shell:startup" to autolaunch bat file or whatever in backghround minimized
pause
exit /b
