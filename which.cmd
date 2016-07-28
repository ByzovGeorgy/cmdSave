@echo off
chcp 65001
IF EXIST help.txt DEL help.txt
echo Command Help >> help.txt
FOR /f %%i in ('HELP ^| FINDSTR /b /r /c:"[A-Z]* " ^| findstr /v "GRAFTABL" ^| findstr /v "DISKPART" ^| findstr /v "SC" ') DO (
		ECHO =============== >> help.txt
		ECHO %%i >> help.txt
		ECHO =============== >> help.txt
		HELP %%i >> help.txt
)