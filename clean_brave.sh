#!/bin/bash
# GOSTREAMER Monster OS - Brave Ad Killer

PREFS_FILE="/home/theland/.config/BraveSoftware/Brave-Browser/Default/Preferences"

if [ -f "$PREFS_FILE" ]; then
    echo "🎯 Found Brave Preferences. Cleaning up..."
    # Disable Sponsored Images, Backgrounds, and News
    sed -i 's/"show_sponsored_images":true/"show_sponsored_images":false/g' "$PREFS_FILE"
    sed -i 's/"show_background_images":true/"show_background_images":false/g' "$PREFS_FILE"
    sed -i 's/"brave_news_enabled":true/"brave_news_enabled":false/g' "$PREFS_FILE"
    echo "✅ Sponsored Images and News DISABLED."
else
    echo "⚠️ Preferences file not found. Make sure Brave has been opened at least once."
fi
