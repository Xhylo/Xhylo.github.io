echo Installer By Leeprky#2063 BD - v1.2
cd %USERPROFILE%
cd AppData\Roaming\BetterDiscord\themes && git clone https://github.com/leeprky/bd-themes
taskkill /IM Discord.exe /F
start %USERPROFILE%\AppData\Local\Discord\Update.exe --processStart Discord.exe
pause