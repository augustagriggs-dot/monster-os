#!/bin/bash

# 1. FIX SYSTEM ERRORS
export FONTCONFIG_PATH=/etc/fonts

# 2. KILL GHOSTS
pkill -f brave
pkill -f unclutter
sleep 1

# 3. TRIPLE ZERO WIPE (Wipes the white-screen memory)
rm -rf ~/.config/BraveSoftware/Brave-Browser/Default/GPUCache
rm -rf ~/.config/BraveSoftware/Brave-Browser/Default/Cache/*

# 4. HIDE MOUSE
unclutter -idle 0.1 -root &

# 5. LAUNCH GOSTREAMER - THE "BLACK HOLE" SILENCE MODE
# We added > /dev/null 2>&1 to stop ALL terminal errors.
brave-browser --kiosk \
    --no-first-run \
    --simulate-outdated-no-au \
    --disable-features=InProductHelp,OverlayScrollbar \
    --disable-logging \
    --log-level=3 \
    --ignore-certificate-errors \
    --start-maximized \
    --force-device-scale-factor=1.0 \
    --autoplay-policy=no-user-gesture-required \
    --password-store=basic \
    "file:///home/theland/monster_system/active_index.html" > /dev/null 2>&1 &

echo "🚀 GOSTREAMER MONSTER OS LAUNCHED IN SILENT MODE!"
