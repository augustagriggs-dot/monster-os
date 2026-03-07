#!/bin/bash
# 1. Pull latest config from YOUR GitHub
# Replace 'YOUR_USER' and 'YOUR_REPO' with your actual GitHub details
GITHUB_URL="https://raw.githubusercontent.com/YOUR_USER/YOUR_REPO/main/links.json"

echo "📡 Connecting to GOSTREAMER Satellite..."
curl -s $GITHUB_URL -o /home/theland/monster_system/links.json

if [ $? -eq 0 ]; then
    echo "✅ Update Received! Rebuilding UI..."
    /home/theland/monster_system/build_os.sh
    echo "🚀 Box is Up-to-Date."
else
    echo "❌ Update Failed. Check Internet."
fi
nano /home/theland/monster_system/update_box.sh
