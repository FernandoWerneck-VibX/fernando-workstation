#!/bin/bash
sudo systemctl restart rclone-gdrive
sudo systemctl restart "$(systemd-escape -p "$HOME/Downloads").mount" || true
sudo systemctl restart "$(systemd-escape -p "$HOME/docs").mount" || true
