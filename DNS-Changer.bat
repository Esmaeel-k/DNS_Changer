@echo off
title DNS Changer
:menu
cls
echo ============================================================
echo                         DNS Changer
echo ============================================================
echo 1. DNS "Electro"
echo 2. DNS "Shecan"
echo 3. DNS "403 Online"
echo 4. DNS "Begzar"
echo 5. DNS "RadarGame"
echo 6. DNS "Google"
echo 7. Remove All DNS
echo 8. Exit
echo ============================================================
set /p choice=Please Choose One Of Them: 

if %choice%==1 goto electro
if %choice%==2 goto shecan
if %choice%==3 goto 403online
if %choice%==4 goto begzar
if %choice%==5 goto radargame
if %choice%==6 goto google
if %choice%==7 goto nodns
if %choice%==8 goto exit

echo Invalid Choose! Please Try Again...
pause
goto menu

:electro
echo Setting DNS Electro...
netsh interface ip set dns "Wi-Fi" static 78.157.42.100
netsh interface ip add dns "Wi-Fi" 78.157.42.101 index=2
goto end

:shecan
echo Setting DNS Shecan...
netsh interface ip set dns "Wi-Fi" static 178.22.122.100
netsh interface ip add dns "Wi-Fi" 185.51.200.2 index=2
goto end

:403online
echo Setting DNS 403 Online...
netsh interface ip set dns "Wi-Fi" static 10.202.10.202
netsh interface ip add dns "Wi-Fi" 10.202.10.102 index=2
goto end

:begzar
echo Setting DNS Begzar...
netsh interface ip set dns "Wi-Fi" static 185.55.226.26
netsh interface ip add dns "Wi-Fi" 185.55.225.25 index=2
goto end

:radargame
echo Setting DNS RadarGame...
netsh interface ip set dns "Wi-Fi" static 10.202.10.10
netsh interface ip add dns "Wi-Fi" 10.202.10.11 index=2
goto end

:google
echo Setting DNS Google...
netsh interface ip set dns "Wi-Fi" static 8.8.8.8
netsh interface ip add dns "Wi-Fi" 8.8.4.4 index=2
goto end

:nodns
echo Removing all DNS settings...
netsh interface ip set dns "Wi-Fi" dhcp
goto end

:end
echo DNS Successfully Changed.
pause
goto menu

:exit
echo Exiting...
pause
exit
