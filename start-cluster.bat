@echo off
setlocal enabledelayedexpansion

mkdir .\notebooks
xcopy /S /Y /R .\jupyter\notebook\* .\notebooks\
docker-compose -f .\docker-compose.yml up -d

pause
