echo Installer By Leeprky#2063 - v1.2
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
cd powercord/src/Powercord/themes && git clone https://github.com/leeprky/MicrosoftTeams
taskkill /IM DiscordCanary.exe /F
start %USERPROFILE%\AppData\Local\DiscordCanary\Update.exe --processStart DiscordCanary.exe
pause