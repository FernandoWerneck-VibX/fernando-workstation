#!/bin/bash
set -e
sudo apt update && sudo apt upgrade -y
command -v flatpak >/dev/null && sudo flatpak update -y || true
if [ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]; then
  source "$HOME/.sdkman/bin/sdkman-init.sh" && sdk selfupdate && sdk update
fi
if [ -s "$HOME/.nvm/nvm.sh" ]; then
  export NVM_DIR="$HOME/.nvm"
  source "$NVM_DIR/nvm.sh"
  nvm install --lts --reinstall-packages-from=current
fi
command -v pyenv >/dev/null && pyenv update || true
