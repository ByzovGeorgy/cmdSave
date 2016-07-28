@echo off
if "%1"=="/?" (echo THIS IS SLEEP & goto :eof)
if "%1"=="" (goto :label1) else (set/a sleep1=%1)
:label2
set x=%time%
for /f "tokens=1-4 delims=:," %%i in ("%x%") do (set/a h1=1%%i-100 & set/a m1=1%%j-100 & set/a s1=1%%k-100 & set/a ms1=1%%l-100) 
set/a sleep=%sleep1%*100
:start
set y=%time%
for /f "tokens=1-4 delims=:," %%i in ("%y%") do (set/a h2=1%%i-100 & set/a m2=1%%j-100 & set/a s2=1%%k-100 & set/a ms2=1%%l-100)
set/a delta=360000*(h2-h1)+6000*(m2-m1)+100*(s2-s1)+(ms2-ms1)
if /i %delta% leq %sleep% goto :start
echo %sleep1%
goto :eof

:label1
set/p sleep1="Please, write sleep time: "
if not defined sleep1 (goto :label1) else (goto :label2)