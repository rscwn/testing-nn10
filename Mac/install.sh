#!/usr/bin/env bash

# user install script
# bash -c "$(curl -fsSL https://raw.githubusercontent.com/rscwn/testing-nn10/refs/heads/main/Mac/install.sh)"

ARCH=$(uname -m)

JOLY_BIN_URL="https://raw.githubusercontent.com/rscwn/testing-nn10/refs/heads/main/Mac/"
INSTALLER_BIN_URL="$JOLY_BIN_URL/instwaller-$ARCH"

# we need to check if we already installed
BUNDLE_DIR="Roblox.app"
APP_DIR="/Applications/$BUNDLE_DIR"

UPDATE=0
if [ -d "$APP_DIR" ]; then
    echo "it is already installed in /Applications. Do you want to update or reinstall?"
    echo "1) Update"
    echo "2) Reinstall"
    echo "3) Exit"

    read -r CHOICE
    case $CHOICE in
        1)
            UPDATE=1
            ;;
        2)
            rm -rf "$APP_DIR"
            ;;
        3)
            echo "Exiting..."
            exit 0
            ;;
        *)
            echo "Invalid choice. Exiting..."
            exit 1
            ;;
    esac
fi

# now we donwload an run
curl -L "$INSTALLER_BIN_URL" -o ./instwaller
chmod +x ./instwaller
./instwaller $UPDATE

# now we don
rm ./instwaller

# should we run app or let user run it?
# lets hope they arent retarded enough to not know what the apps dir is