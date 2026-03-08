#!/bin/bash
set -euo pipefail

for governor_file in /sys/devices/system/cpu/cpu[0-9]*/cpufreq/scaling_governor; do
  [ -e "$governor_file" ] || continue
  echo powersave | sudo tee "$governor_file" >/dev/null
done

if systemctl list-unit-files thermald.service >/dev/null 2>&1; then
  sudo systemctl start thermald || true
fi
