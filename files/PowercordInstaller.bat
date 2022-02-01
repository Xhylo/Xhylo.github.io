echo Installer By Leeprky#2063 - v1.2
cd %USERPROFILE%
git clone https://github.com/powercord-org/powercord
cd powercord
npm i
npm run plug && pause
taskkill /IM DiscordCanary.exe /F
start %USERPROFILE%\AppData\Local\DiscordCanary\Update.exe --processStart DiscordCanary.exe
pause