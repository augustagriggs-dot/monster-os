#!/bin/bash
FILE="/home/theland/monster_system/active_index.html"

# 1. Fix the CSS so images are visible and blocks look like professional tiles
sed -i 's|background:var(--p);|background:linear-gradient(145deg, #1a1a1a, #000);|g' "$FILE"
sed -i 's|.t img{.*}|.t img{max-width:80%; max-height:120px; object-fit:contain; margin:auto; display:block; padding:10px;}|g' "$FILE"

# 2. Inject actual Logos/Posters into your links
# We find the <span> and put an <img> tag before it
sed -i 's|<span>CINEBY HD</span>|<img src="https://logo.clearbit.com/netflix.com"><span>CINEBY HD</span>|g' "$FILE"
sed -i 's|<span>HD TODAY</span>|<img src="https://logo.clearbit.com/hulu.com"><span>HD TODAY</span>|g' "$FILE"
sed -i 's|<span>STREAMEAST</span>|<img src="https://logo.clearbit.com/espn.com"><span>STREAMEAST</span>|g' "$FILE"
sed -i 's|<span>YOUTUBE</span>|<img src="https://logo.clearbit.com/youtube.com"><span>YOUTUBE</span>|g' "$FILE"
sed -i 's|<span>TIKTOK</span>|<img src="https://logo.clearbit.com/tiktok.com"><span>TIKTOK</span>|g' "$FILE"

# 3. Fix the "Poster" height so it doesn't look squashed
sed -i 's|height:210px;|height:230px; background-size: cover;|g' "$FILE"

echo "✅ Logos and CSS injected into GOSTREAMER Monster OS!"
/home/theland/monster_system/save_build.sh
