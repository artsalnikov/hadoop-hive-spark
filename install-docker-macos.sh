#!/bin/bash

if [[ $(sysctl -n machdep.cpu.brand_string) =~ "Apple" ]]; then
  DOCKER_DMG_URL="https://desktop.docker.com/mac/main/arm64/172550/Docker.dmg"
else
  DOCKER_DMG_URL="https://desktop.docker.com/mac/main/amd64/172550/Docker.dmg"
fi

DMG_TMP_PATH=${TMPDIR}Docker.dmg

echo "Download Docker Desktop from '${DOCKER_DMG_URL}' to '${DMG_TMP_PATH}'"
curl -o "${DMG_TMP_PATH}" "${DOCKER_DMG_URL}"

echo "Install Docker Desktop"
echo "You may be prompted for a password to perform installation commands with extended privileges"
echo "Please, wait for about 1 minute..."
echo ""

sudo hdiutil attach "${DMG_TMP_PATH}"
sudo /Volumes/Docker/Docker.app/Contents/MacOS/install --accept-license
sudo hdiutil detach /Volumes/Docker

rm -rf "${DMG_TMP_PATH}"
