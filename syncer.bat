:: filepath: /D:/Random Projects/Linux SpotDL Syncer/syncer.bat
@echo off
setlocal enabledelayedexpansion

:: Prompt the user to choose a format
echo Enter number for format:
echo 1) m4a
echo 2) mp3
echo 3) flac
echo 4) ogg
echo 5) opus
echo 6) wav
set /p choice=Choice: 

:: Set the format based on user input
set FORMAT=m4a
if "%choice%"=="1" set FORMAT=m4a
if "%choice%"=="2" set FORMAT=mp3
if "%choice%"=="3" set FORMAT=flac
if "%choice%"=="4" set FORMAT=ogg
if "%choice%"=="5" set FORMAT=opus
if "%choice%"=="6" set FORMAT=wav

:: Prompt the user to input the dynamic part
set /p dynamic_part=Enter the name of your synced file for example; [name].sync.spotdl: 

echo Selected format: %FORMAT%
echo Dynamic part: %dynamic_part%

:loop
echo Running pipx command...
spotdl sync "%dynamic_part%.sync.spotdl" --format %FORMAT% --preload --overwrite skip
echo Command executed, sleeping for 5 seconds...
timeout /t 5 /nobreak
goto loop