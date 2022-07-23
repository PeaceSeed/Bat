@echo off
title MTK
color 5b

:Main
echo **********************************
echo/
echo * 1. Show GPT                    *
echo/  
echo * 2. Unlock Method 1             *
echo/
echo **********************************
echo/
echo/


set /p a=You Can Choice :

if "%a%"=="1" Goto 1
if "%a%"=="2" Goto 2


:1
python "C:\mtkclient\mtk" printgpt
pause
cls
Goto Main

:2
python "C:\mtkclient\mtk" da seccfg unlock
pause
cls
Goto Main