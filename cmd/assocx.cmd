@echo off
for /f "tokens=4 delims= " %%i in ('reg query HKCR\.%1\ /ve') do (
	for /f "tokens=4 delims=\" %%j in ('reg query HKCR\%%i\shell') do (
		for /f "tokens=4* delims= " %%k in ('reg query HKCR\%%i\shell\%%j\command /ve') do ( 
			echo %%j: %%k %%l
		)
	)
)