@echo off
if "%1" == "" ( set /p sleep="Enter time in seconds > ") else ( set /a sleep=%1)
set x=%time%
for /f "tokens=1-4 delims=:," %%i in ("%x%") do (
	set /a h1=%%i
	set /a m1=%%j
	set /a s1=%%k
)
:while
set y=%time%
for /f "tokens=1-4 delims=:," %%i in ("%y%") do (
	set /a h2=%%i
	set /a m2=%%j
	set /a s2=%%k
)
set /a delta=3600*(h2-h1)+60*(m2-m1)+(s2-s1)
if /i %delta% LEQ %sleep% goto :while