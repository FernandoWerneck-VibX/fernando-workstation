#!/bin/bash
set -e
cd ~/projects
for dir in */; do cd "$dir"; git pull --rebase || true; cd ..; done
