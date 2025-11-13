#!/bin/bash
fusermount -u ~/GoogleDrive 2>/dev/null || true
rclone mount gdrive: ~/GoogleDrive --vfs-cache-mode writes &
