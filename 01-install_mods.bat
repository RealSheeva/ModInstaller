
@echo off
cls
call forge-1.12.2-14.23.5.2836-installer-win.exe
echo Please install the Forge Installer for Client. Launching now...
echo . 
echo .
echo .
echo Once completed, please press any key to finish installing mods.
pause
if not exist "%appdata%\.minecraft\mods" mkdir "%appdata%\.minecraft\mods"
if not exist "%appdata%\.minecraft\mods\1.12.2" mkdir "%appdata%\.minecraft\mods\1.12.2"
if not exist "%appdata%\.minecraft\resourcepacks" mkdir "%appdata%\.minecraft\resourcepacks"
if not exist "%appdata%\.minecraft\config" mkdir "%appdata%\.minecraft\config"

copy "%~dp0\mods\*" "%appdata%\.minecraft\mods\1.12.2"
copy "%~dp0\tex\*" "%appdata%\.minecraft\resourcepacks"
copy "%~dp0\config\*" "%appdata%\.minecraft\config"

color 30
echo All mods installed successfully. Welcome to Sheeva's Playpen :^)
pause