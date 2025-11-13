#!/bin/bash
find ~/projects -name "docker-compose.yml" -execdir docker compose up -d \;
