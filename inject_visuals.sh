#!/bin/bash
FILE="/home/theland/monster_system/active_index.html"

# 1. PREMIUM CINEMA (Using HD Movie Posters for that "Theatre" look)
sed -i 's|<span>Cineby HD</span>|<img src="https://image.tmdb.org/t/p/w500/mBaXZ95O2YAnSsySZuS7S19H3RS.jpg"><span>Cineby HD</span>|g' "$FILE"
sed -i 's|<span>HD Today</span>|<img src="https://image.tmdb.org/t/p/w500/29Msz9D76yyGPy4p9GBr9_MbiTM.jpg"><span>HD Today</span>|g' "$FILE"
sed -i 's|<span>BFlix</span>|<img src="https://image.tmdb.org/t/p/w500/7WsyChvnavnoUjs0oWpvuIqOS1x.jpg"><span>BFlix</span>|g' "$FILE"
sed -i 's|<span>Vumoo</span>|<img src="https://logo.clearbit.com/vudu.com"><span>Vumoo</span>|g' "$FILE"
sed -i 's|<span>Tubi TV</span>|<img src="https://logo.clearbit.com/tubi.com"><span>Tubi TV</span>|g' "$FILE"
sed -i 's|<span>Pluto TV</span>|<img src="https://logo.clearbit.com/pluto.tv"><span>Pluto TV</span>|g' "$FILE"

# 2. LIVE SPORTS (Using Official Brand Logos)
sed -i 's|<span>StreamEast</span>|<img src="https://logo.clearbit.com/espn.com"><span>StreamEast</span>|g' "$FILE"
sed -i 's|<span>NFL Bite</span>|<img src="https://logo.clearbit.com/nfl.com"><span>NFL Bite</span>|g' "$FILE"
sed -i 's|<span>NBA Bite</span>|<img src="https://logo.clearbit.com/nba.com"><span>NBA Bite</span>|g' "$FILE"
sed -i 's|<span>Meth Streams</span>|<img src="https://logo.clearbit.com/foxsports.com"><span>Meth Streams</span>|g' "$FILE"

# 3. SOCIAL & KIDS
sed -i 's|<span>PBS Kids</span>|<img src="https://logo.clearbit.com/pbs.org"><span>PBS Kids</span>|g' "$FILE"
sed -i 's|<span>YT Kids</span>|<img src="https://logo.clearbit.com/youtube.com"><span>YT Kids</span>|g' "$FILE"

# 4. GHOST MIRRORS (Using a "Plex" style branding for a clean look)
sed -i 's|<span>VidSrc Pro</span>|<img src="https://logo.clearbit.com/plex.tv"><span>VidSrc Pro</span>|g' "$FILE"

echo "🎨 HD Logos and Posters Injected into GOSTREAMER!"
/home/theland/monster_system/save_build.sh
