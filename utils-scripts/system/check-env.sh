#!/bin/bash
echo "Java: $(java -version 2>&1 | head -n 1)"
echo "Node: $(node -v)"
echo "Python: $(python --version)"
echo "Docker: $(docker --version)"
echo "K8s: $(kubectl version --client --short)"
echo "Flutter: $(flutter --version 2>/dev/null | head -n 1)"
