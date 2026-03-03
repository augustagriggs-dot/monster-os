#!/bin/bash
FILE="/home/theland/monster_system/active_index.html"
change_link() {
    sed -i "s|href=\".*\" class=\"t poster\"><span>$1</span>|href=\"$2\" class=\"t poster\"><span>$3</span>|g" "$FILE"
    sed -i "s|href=\".*\" class=\"t wide\"><span>$1</span>|href=\"$2\" class=\"t wide\"><span>$3</span>|g" "$FILE"
    echo "🔄 Swapped: $1 -> $3"
}
echo "🛠️ Starting Monster OS Bulk Update..."
change_link "NFL BITE 2026" "https://nflbite.app" "NFL BITE PRO"
change_link "NBA BITE LIVE" "https://nbabite.to" "NBA BITE HD"
change_link "METH STREAMS HD" "https://methstreams.cx" "METH STREAMS 2.0"
change_link "SPORTS HUB PRO" "https://sportshub.stream" "SPORTS HUB LIVE"
change_link "SPORTSURGE" "https://sportsurge.net" "SPORTSURGE GO"
change_link "BRAFLIX" "https://cineby.gd" "CINEBY HD"
change_link "VIDSRC" "https://vidsrc.to" "VIDSRC PRO"
echo "🚀 Update Complete! Syncing..."
/home/theland/monster_system/save_build.sh
