#!/bin/bash
# Wait for desktop to settle
sleep 6
# Launch the build once. Using --app mode makes it look like a real app.
brave-browser --incognito --force-device-scale-factor=1.0 --high-dpi-support=1 --start-fullscreen --app="file:///home/theland/monster_system/launchpad.html"
