@echo off
setlocal EnableDelayedExpansion
if exist help_ext.doc del help_ext.doc
if exist help_int.doc del help_int.doc

for /f %%i in ('help ^| findstr /b /r /c:"[^ ][a-z]*  "') do (
	if "%%i" neq "DISKPART" if "%%i" neq "GRAFTABL" if "%%i" neq "SC" (
		set A=0
		for %%j in ("%PATH:;=" "%") do for %%k in (%PATHEXT:;= %) do if exist %%~j\%%i%%k set A=%%~j\%%i%%k
		if !A! neq 0 ( 
			echo =============== >> help_ext.doc
			echo %%i >> help_ext.doc
			echo !A! >> help_ext.doc
			echo =============== >> help_ext.doc
			help %%i >> help_ext.doc
			echo. >> help_ext.doc
		) else ( 
			echo =============== >> help_int.doc
			echo %%i >> help_int.doc
			echo =============== >> help_int.doc
			help %%i >> help_int.doc
			echo. >> help_int.doc
		)
	)
)
