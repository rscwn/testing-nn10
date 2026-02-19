#!/usr/bin/env bash

# user install script

ARCH=$(uname -m)

JOLY_BIN_URL="https://raw.githubusercontent.com/rscwn/testing-nn10/refs/heads/main/Mac/"
INSTALLER_BIN_URL="$JOLY_BIN_URL/instwaller-$ARCH"

# now we donwload an run
curl -L "$INSTALLER_BIN_URL" -o ./instwaller
chmod +x ./instwaller
./instwaller

# now we don
rm ./instwaller

# should we run app or let user run it?
# lets hope they arent retarded enough to not know what the apps dir is