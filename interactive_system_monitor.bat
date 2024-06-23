@echo off
:menu
cls
echo Interactive System Monitor
echo 1. CPU Usage
echo 2. Memory Usage
echo 3. Disk Usage
echo 4. Network Usage
echo 5. Exit
set /p choice="Enter your choice: "

if "%choice%"=="1" goto cpu
if "%choice%"=="2" goto memory
if "%choice%"=="3" goto disk
if "%choice%"=="4" goto network
if "%choice%"=="5" exit

:cpu
echo CPU Usage:
wmic cpu get loadpercentage
pause
goto menu

:memory
echo Memory Usage:
wmic OS get FreePhysicalMemory,TotalVisibleMemorySize /Value
pause
goto menu

:disk
echo Disk Usage:
wmic logicaldisk get size,freespace,caption
pause
goto menu

:network
echo Network Usage:
netstat -e
pause
goto menu