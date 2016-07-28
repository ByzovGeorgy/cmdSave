@echo off

for /f "delims=(: tokens=2" %%i in ('ipconfig /all ^| findstr IPv4') do ( echo%%i )