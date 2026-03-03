#!/bin/bash
FILE="/home/theland/monster_system/active_index.html"

# 1. Remove any lines BEFORE the <!DOCTYPE html> tag (Cleans the "Ghost Text")
sed -i '1,/<[Dd][Oo][Cc][Tt][Yy][Pp][Ee]/ { /<[Dd][Oo][Cc][Tt][Yy][Pp][Ee]/! d }' "$FILE"

# 2. Fix the CSS so logos are centered and visible
# We ensure flex-direction is column so the image is ON TOP of the text
sed -i 's|display:flex;align-items:flex-end;|display:flex;flex-direction:column;align-items:center;justify-content:center;|g' "$FILE"

# 3. Add Logos (Posters) back to the blocks
# This searches for your specific titles and puts the logo image inside the block
sed -i 's|<span>CINEBY HD</span>|<img src="https://logo.clearbit.com/netflix.com" style="max-height:80px;margin-bottom:10px;"><span>CINEBY HD</span>|g' "$FILE"
sed -i 's|<span>HD TODAY</span>|<img src="https://logo.clearbit.com/hulu.com" style="max-height:80px;margin-bottom:10px;"><span>HD TODAY</span>|g' "$FILE"
sed -i 's|<span>STREAMEAST</span>|<img src="https://logo.clearbit.com/espn.com" style="max-height:80px;margin-bottom:10px;"><span>STREAMEAST</span>|g' "$FILE"
sed -i 's|<span>YOUTUBE</span>|<img src="https://logo.clearbit.com/youtube.com" style="max-height:80px;margin-bottom:10px;"><span>YOUTUBE</span>|g' "$FILE"

echo "🧹 Header Cleaned! 🖼️ Logos Injected!"
/home/theland/monster_system/save_build.sh
