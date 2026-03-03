#!/bin/bash
# 1. Enter the image folder
cd /home/theland/monster_system/img/

# 2. Download high-def logos
wget -O netflix.png https://logo.clearbit.com/netflix.com
wget -O hulu.png https://logo.clearbit.com/hulu.com
wget -O hbo.png https://logo.clearbit.com/hbo.com
wget -O disney.png https://logo.clearbit.com/disneyplus.com
wget -O espn.png https://logo.clearbit.com/espn.com
wget -O nfl.png https://logo.clearbit.com/nfl.com
wget -O nba.png https://logo.clearbit.com/nba.com
wget -O youtube.png https://logo.clearbit.com/youtube.com

echo "✅ Logos Downloaded to /img/ folder!"
ls -l
