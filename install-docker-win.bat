@echo off
setlocal enabledelayedexpansion

set DOCKER_DMG_URL=https://desktop.docker.com/win/main/amd64/Docker%%20Desktop%%20Installer.exe

set DMG_TMP_PATH=%TMP%\DockerDesktopInstaller.exe

echo Download Docker Desktop from '%DOCKER_DMG_URL%' to '%DMG_TMP_PATH%'
curl -o "%DMG_TMP_PATH%" "%DOCKER_DMG_URL%"

echo Install Docker Desktop
echo You may be prompted for a password to perform installation commands with extended privileges
echo Please, wait for about 1 minute...
echo -

start /w "" "%DMG_TMP_PATH%" install --accept-license --no-windows-containers

del /F /Q "%DMG_TMP_PATH%"

pause
