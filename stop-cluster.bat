@echo off
setlocal enabledelayedexpansion

docker-compose -f .\docker-compose.yml down

pause
