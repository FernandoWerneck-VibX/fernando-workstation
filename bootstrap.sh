#!/usr/bin/env bash
sudo apt update && sudo apt upgrade -y
sudo apt dist-upgrade -y
sudo apt autoremove --purge -y


sudo apt update && sudo apt install -y ansible git
ansible-playbook -i inventory.ini site.yml --ask-become-pass
