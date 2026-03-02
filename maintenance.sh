#!/bin/bash
rm -rf ~/.config/brave-browser/Default/Cache/*
rm -rf ~/.config/brave-browser/Default/Code\ Cache/*
export DISPLAY=:0
brave-browser --incognito --kiosk --app="file:///home/theland/monster_system/launchpad.html" &
