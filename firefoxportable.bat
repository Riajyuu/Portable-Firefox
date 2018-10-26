@echo off
:ask
echo Would you like to define profile name?(Y/N)
set /P INPUT=Type input: %=%
If /I "%INPUT%"=="y" goto yes 
If /I "%INPUT%"=="n" goto no
:yes
@echo off
:ask
Please input profile name:
set profileName = %INPUT%
echo %~dp0firefox.exe -profile %~dp0%INPUT%
:no
%~dp0firefox.exe -profile %~dp0profileName