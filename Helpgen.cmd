@echo off 
chcp 65001
IF EXIST help.txt DEL help.txt
FOR /F "tokens=1 " %%i in ('help ^| FINDSTR /b /r /c:"[A-Z]* " ^| findstr /v "GRAFTABL" ^| findstr /v "DISKPART" ^| findstr /v "SC" ') DO (
		rem ECHO =============== >> help.txt
		echo %%i >> help.txt
		rem ECHO =============== >> help.txt
		rem HELP %%i >> help.txt
)