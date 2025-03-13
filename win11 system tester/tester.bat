@echo off
:: This took some time and ChatGPT, so thanks!

color a

:home
cls
echo Welcome to the best testing software
powershell -Command "& {Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.MessageBox]::Show('This is a CLI, so it might look unclean. Please support.', 'Disclaimer', 'OK', [System.Windows.Forms.MessageBoxIcon]::Information);} "
echo.
echo Choose an option:
echo [A] Network Diagnostics
echo [B] System Diagnostics
echo [X] Exit
echo.
set /p option=Enter your choice (A/B/X): 

if /I "%option%"=="A" goto netdiog
if /I "%option%"=="B" goto systemdiog
if /I "%option%"=="X" exit

echo Invalid option! Please try again.
pause
goto home

:netdiog
cls
echo Running Network Diagnostics...
ping 127.0.0.1 >nul
echo [##       ]
timeout /t 1 >nul
echo [####     ]
timeout /t 1 >nul
echo [#########]
timeout /t 1 >nul
echo Complete!

ipconfig /all
pause
netsh wlan show networks
pause
goto home

:systemdiog
cls
echo Running System Diagnostics...
ping 127.0.0.1 >nul
echo [##       ]
timeout /t 1 >nul
echo [####     ]
timeout /t 1 >nul
echo [#########]
timeout /t 1 >nul
echo Complete!

systeminfo
pause
wmic cpu get name,MaxClockSpeed
wmic bios get smbiosbiosversion
pause
goto home
