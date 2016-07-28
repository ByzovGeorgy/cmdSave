@echo off
FOR /F %%i IN ("%1") DO (
	echo %%~$Path:%1
)