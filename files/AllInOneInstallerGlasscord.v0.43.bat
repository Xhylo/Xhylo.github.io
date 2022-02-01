echo Installer By Leeprky#2063 - v0.43
cd %USERPROFILE%
git clone https://github.com/powercord-org/powercord
cd powercord
npm i
npm run plug && pause
cd %USERPROFILE%
cd powercord/src/Powercord/plugins && git clone https://github.com/redstonekasi/theme-toggler
cd ..\..\..\..\
cd powercord/src/Powercord/plugins && git clone https://github.com/ploogins/PowercordThemeDownloader
cd ..\..\..\..\
cd powercord/src/Powercord/plugins && git clone https://github.com/LandenStephenss/PowercordPluginDownloader
cd ..\..\..\..\
cd powercord/src/Powercord/themes && git clone https://github.com/LandenStephenss/MicrosoftTeams
cd %USERPROFILE%
mkdir %USERPROFILE%\AppData\Local\DiscordCanary\app-1.0.43\resources\app\Backup\Files"
xcopy "%USERPROFILE%\AppData\Local\DiscordCanary\app-1.0.43\resources\app" "%USERPROFILE%\AppData\Local\DiscordCanary\app-1.0.43\resources\app\Backup\Files"
cd %USERPROFILE%\AppData\Local\DiscordCanary\app-1.0.43\resources\app\Backup
git clone https://github.com/leeprky/RestoreGit
xcopy "%USERPROFILE%\AppData\Local\DiscordCanary\app-1.0.43\resources\app\Backup\RestoreGit\restore.bat" "%USERPROFILE%\AppData\Local\DiscordCanary\app-1.0.43\resources\app"
del /f /q "%USERPROFILE%\AppData\Local\DiscordCanary\app-1.0.43\resources\app\Backup\RestoreGit*.*"
for /d %%d in ("%USERPROFILE%\AppData\Local\DiscordCanary\app-1.0.43\resources\app\Backup\RestoreGit*.*") do rmdir /s /q "%%d"
@Echo Off
SETLOCAL EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do     rem"') do (
  set "DEL=%%a"
)
call :colorEcho a0 "BACKUP CREATED IF FILES COPIED"
echo.
exit
:colorEcho
echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1i
timeout 3 /nobreak
rem 
set "FirstDir=%USERPROFILE%\AppData\Local\DiscordCanary\app-1.0.43\resources\app\GlasscordHelper"
set "SecondDir=%USERPROFILE%\AppData\Local\DiscordCanary\app-1.0.43\resources\app\GlasscordHelper"
rem 

if exist "%FirstDir\" (
    rem 
    mkdir "%SecondDir%"
) else (
    rem 
    mkdir "%FirstDir%"
)
cd %USERPROFILE%\AppData\Local\DiscordCanary\app-1.0.43 \resources\app\GlasscordHelper
git clone https://github.com/leeprky/GlasscordInstallExample
del %USERPROFILE%\AppData\Local\DiscordCanary\app-1.0.43 \resources\app\GlasscordHelper\GlasscordInstallExample\README.md /q /f
start "" "%USERPROFILE%\AppData\Local\DiscordCanary\app-1.0.43\resources\app\GlasscordHelper\GlasscordInstallExample"
move "%USERPROFILE%\AppData\Local\DiscordCanary\app-1.0.43\resources\app\GlasscordHelper\GlasscordInstallExample\glasscord.asar" "%USERPROFILE%\AppData\Local\DiscordCanary\app-1.0.43 \resources\app"
start notepad "%USERPROFILE%\AppData\Local\DiscordCanary\app-1.0.43\resources\app\GlasscordHelper\GlasscordInstallExample\readme.txt"
start notepad "%USERPROFILE%\AppData\Local\DiscordCanary\app-1.0.43\resources\app\GlasscordHelper\GlasscordInstallExample\index.js"
@Echo Off
SETLOCAL EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do     rem"') do (
  set "DEL=%%a"
)
call :colorEcho a0 "IF NO ERRORS SHOWN, CONTINUE TO README.MD"
echo.
pause
exit
:colorEcho
echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1i
timeout 30 /nobreak
taskkill /IM DiscordCanary.exe /F
start %USERPROFILE%\AppData\Local\DiscordCanary\Update.exe --processStart DiscordCanary.exe
pause