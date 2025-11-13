#!/bin/bash
set -e
sudo apt autoremove -y; sudo apt autoclean -y; sudo apt clean -y
docker system prune -af || true
rm -rf ~/.cache/* ~/.npm/_cacache ~/.gradle/caches ~/.m2/repository
