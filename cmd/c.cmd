@echo off
set name=%1
if "%1"=="/?" (
echo argument is name of a program
echo "which" findes where it lies
goto :eof
)
if "%1"=="" (
echo not enough argument
goto :eof
)

set x=%path%
set x=%cd%;%x:)=^)%
set y=1
set existance=0
:label1
for /f "delims=; tokens=%y%" %%i in ("%x%") do (
	if not "%%i"=="" (
		call :call1 "%%i"
		set/a y=%y%+1
		if "%existance%"=="0" goto :label1
	)
)
if "%existance%"=="0" echo program doesn't exist
goto :eof

:call1
call :call2 %1 %name%
set x1=%pathext%
set y1=1
:label2
for /f "delims=; tokens=%y1%" %%i in ("%x1%") do (
	if not "%%i"=="" (
		call :call2 %1 %name%%%i
		set/a y1=%y1%+1
		if "%existance%"=="0" goto :label2
	)
)
goto :eof

:call2
if exist %~1\%2 (echo %~1\%2 & set existance=1)
goto :eof