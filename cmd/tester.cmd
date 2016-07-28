@echo off
chcp 65001
IF EXIST help1.txt DEL help1.txt
set x=%HELP%
FOR /f %%i in ('HELP ^| FINDSTR [A-Z] ') do (
		echo %%i >> help1.txt
)
