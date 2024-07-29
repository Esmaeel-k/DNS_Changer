@echo off
:menu
echo ============================================================
echo                           DNS Changer
echo                    Select Your DNS Server
echo ============================================================
echo 1. DNS "Electro" ( +Online Games +YouTube +SpeedNetStable )
echo 2. DNS "Shecan" ( +OnlineGames -YouTube -SpeedNetDown )
echo 3. DNS "Google" ( +For Some Games +SpeedStable )
echo 4. DNS "CloudFlare" ( +For Some Games +SpeedStable )
echo 5. NO DNS "Remove All DNS"
echo 6. Exit
echo ============================================================
set /p choice=Please Choose One Of Them : 

if %choice%==1 goto electro
if %choice%==2 goto shecan
if %choice%==3 goto google
if %choice%==4 goto cloudflare
if %choice%==5 goto nodns
if %choice%==6 goto exit
echo Invalid Choose ! Please Try Again...
goto menu

:electro
echo Setting DNS Electro...
netsh interface ip set dns "Wi-Fi" static 78.157.42.100
goto end

:shecan
echo Setting DNS Shecan...
netsh interface ip set dns "Wi-Fi" static 178.22.122.100
goto end

:google
echo Setting DNS Google...
netsh interface ip set dns "Wi-Fi" static 8.8.8.8
goto end

:cloudflare
echo Setting DNS CloudFlare...
netsh interface ip set dns "Wi-Fi" static 1.1.1.1
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
