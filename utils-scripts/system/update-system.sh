#!/bin/bash
set -e
sudo apt update && sudo apt upgrade -y
flatpak update -y || true
sudo snap refresh || true
source "$HOME/.sdkman/bin/sdkman-init.sh" && sdk selfupdate && sdk update
export NVM_DIR="$HOME/.nvm"; source "$NVM_DIR/nvm.sh"; nvm install --lts --reinstall-packages-from=current
pyenv update
