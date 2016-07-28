@echo off

if "%1" == "" set /p SEC="Enter time in seconds > " else set SEC=%1
set /a FINISH=%TIME:~0,1%*36000+%TIME:~1,1%*3600+%TIME:~3,1%*600+%TIME:~4,1%*60+%TIME:~6,1%*10+%TIME:~7,1%+SEC

:while
set /a CTM=%TIME:~0,1%*36000+%TIME:~1,1%*3600+%TIME:~3,1%*600+%TIME:~4,1%*60+%TIME:~6,1%*10+%TIME:~7,1%;

if %CTM% NEQ %FINISH% goto :while