echo Installer By Leeprky#2063 - v1.2
cd %USERPROFILE%
cd powercord/src/Powercord/plugins && git clone https://github.com/redstonekasi/theme-toggler
cd ..\..\..\..\
cd powercord/src/Powercord/plugins && git clone https://github.com/ploogins/PowercordThemeDownloader
cd ..\..\..\..\
cd powercord/src/Powercord/plugins && git clone https://github.com/LandenStephenss/PowercordPluginDownloader
cd ..\..\..\..\
taskkill /IM DiscordCanary.exe /F
start %USERPROFILE%\AppData\Local\DiscordCanary\Update.exe --processStart DiscordCanary.exe
pause