: : to all of the people that think its a virus, as u can see its open source - phantom
@echo off
title PC Cleaner Utility
color 0A

echo -------------------------------
echo Starting PC Cleanup...
echo -------------------------------
timeout /t 2

:: Step 1 - System File Checker
echo Removing Potential Threats / Rats...
sfc /scannow

:: Step 2 - Deployment Image Servicing and Management
echo Running DISM Tool...
DISM /Online /Cleanup-Image /RestoreHealth

:: Step 3 - Cleaning Temp Files
echo Deleting Temporary Files...
del /s /f /q %temp%\*
del /s /f /q C:\Windows\Temp\*
rd /s /q %temp%
md %temp%

:: Step 4 - Clearing DNS Cache
echo Clearing DNS Cache...
ipconfig /flushdns

:: Step 5 - Disk Cleanup (silent pre-configured cleanup)
echo Running Disk Cleanup...
cleanmgr /sagerun:1

:: Step 6 - Restart Windows Explorer (optional UI refresh)
echo Restarting Windows Explorer...
taskkill /f /im explorer.exe
start explorer.exe

echo -------------------------------
echo Cleanup Completed Successfully!
pause
