@echo off
title MTK
color 5b
mode 56,25

:Main
echo *******************************************************
echo/
echo *               1. Device Detect                      *
echo/  
echo *               2. Bootloader Stage                   *
echo/
echo *               3. CPU Info                           *
echo/
echo *               4. CPU InfoDevice Model               *
echo/
echo *               5. Firmware Region                    *
echo/
echo *******************************************************
echo/



set /p a=As you Like : 

if "%a%"=="1" Goto 1
if "%a%"=="2" Goto 2
if "%a%"=="3" Goto 3
if "%a%"=="4" Goto 4
if "%a%"=="5" Goto 5

:1
adb devices
pause
cls
Goto Main

:2
adb shell getprop ro.secureboot.lockstate
pause
cls
Goto Main

:3
adb shell cat proc/cpuinfo
pause
cls
Goto Main

:4
adb shell getprop ro.product.model
adb shell getprop ro.product.name
pause
cls
Goto Main

:5
adb shell getprop ro.miui.region
pause
cls
Goto Main