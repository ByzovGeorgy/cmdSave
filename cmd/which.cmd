@echo off
for %%i in ("%PATH:;=" "%") do call :findexe %1 %%~i
goto :eof

:findexe
echo %2\%1
for %%i in (%PATHEXT:;= %) do if exist "%2\%1%%i" echo %2\%1%%i