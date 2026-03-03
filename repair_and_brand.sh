#!/bin/bash
FILE="/home/theland/monster_system/active_index.html"

# 1. Fix the broken <a tags (adding the missing < where needed)
sed -i 's/^a href=/<a href=/g' "$FILE"

# 2. Inject the New Professional CSS at the top
# This gives you the high-end background and Fire Stick tiles
sed -i '/<head>/a <style>:root{--n:#39FF14;--bg:#000;} body{background:radial-gradient(circle at top,#0a250a 0%,#000 80%);background-attachment:fixed;color:#fff;font-family:sans-serif;margin:0;padding:20px 40px;} .hdr{display:flex;justify-content:space-between;align-items:center;border-bottom:1px solid rgba(57,255,20,0.3);margin-bottom:30px;} .hdr h1{color:var(--n);text-shadow:0 0-10px var(--n);font-size:2.5rem;} .rw{margin-bottom:40px;} .rt{font-size:1.4rem;color:#fff;margin-bottom:15px;border-left:4px solid var(--n);padding-left:10px;} .tc{display:grid;grid-template-columns:repeat(auto-fill,minmax(220px,1fr));gap:20px;} .t{background:#111;border:1px solid #333;border-radius:12px;text-decoration:none;color:#ccc;display:flex;flex-direction:column;align-items:center;justify-content:center;padding:20px;transition:0.3s;aspect-ratio:16/9;} .t:hover{transform:scale(1.08);border-color:var(--n);box-shadow:0 15px 30px rgba(57,255,20,0.3);color:#fff;} .t img{max-width:60%;max-height:50px;margin-bottom:10px;filter:drop-shadow(0 4px 6px #000);} .t span{font-weight:600;text-transform:uppercase;font-size:0.9rem;}</style>' "$FILE"

# 3. Add Logo Images to your specific sites automatically
# Movies
sed -i 's|<span>CINEBY HD</span>|<img src="https://logo.clearbit.com/netflix.com"><span>CINEBY HD</span>|g' "$FILE"
sed -i 's|<span>HD TODAY</span>|<img src="https://logo.clearbit.com/hulu.com"><span>HD TODAY</span>|g' "$FILE"
sed -i 's|<span>TUBI TV</span>|<img src="https://logo.clearbit.com/tubi.com"><span>TUBI TV</span>|g' "$FILE"
# Sports
sed -i 's|<span>STREAMEAST</span>|<img src="https://logo.clearbit.com/espn.com"><span>STREAMEAST</span>|g' "$FILE"
sed -i 's|<span>METH STREAMS</span>|<img src="https://logo.clearbit.com/foxsports.com"><span>METH STREAMS</span>|g' "$FILE"
# Social
sed -i 's|<span>YOUTUBE</span>|<img src="https://logo.clearbit.com/youtube.com"><span>YOUTUBE</span>|g' "$FILE"
sed -i 's|<span>TIKTOK</span>|<img src="https://logo.clearbit.com/tiktok.com"><span>TIKTOK</span>|g' "$FILE"

echo "✅ GOSTREAMER Branded! Your sites are safe and the look is upgraded."
/home/theland/monster_system/save_build.sh
