#!/bin/bash
set -e
chezmoi cd
git add .
git commit -m "Atualização automática"
git push
