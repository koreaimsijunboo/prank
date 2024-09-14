@echo off
set /a count=0
:loop
if %count%==9 goto last
echo Set WshShell = WScript.CreateObject("WScript.Shell") > prank.vbs
echo WshShell.Popup "You've been hacked!", 20, "Prank", 64 >> prank.vbs
start prank.vbs
timeout /t 3 /nobreak >nul
set /a count=%count%+1
goto loop

:last
echo Set WshShell = WScript.CreateObject("WScript.Shell") > prank.vbs
echo WshShell.Popup "Just kidding! :)", 3, "Prank", 64 >> prank.vbs
start prank.vbs
timeout /t 3 /nobreak >nul
del prank.vbs
exit
