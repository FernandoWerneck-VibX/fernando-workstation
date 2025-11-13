#!/bin/bash
NAME=$1
mkdir "$NAME"; cd "$NAME"; touch Dockerfile docker-compose.yml; echo "node_modules/" > .gitignore
