#!/bin/bash
FILE="/home/theland/monster_system/active_index.html"

# The Neon Search Bar Code
SEARCH_BAR='<div style="text-align:center; padding: 30px 0; background: #000;"><form action="https://duckduckgo.com/" method="get" target="_blank" style="display: inline-block; width: 80%;"><div style="position: relative; display: flex; align-items: center;"><input type="text" name="q" placeholder="SEARCH THE WEB (NO TRACKING)..." style="width: 100%; padding: 18px 25px; border-radius: 50px; border: 2px solid #0f0; background: #000; color: #0f0; font-size: 1.3rem; outline: none; box-shadow: 0 0 20px #0f0; text-transform: uppercase;"><button type="submit" style="position: absolute; right: 10px; padding: 12px 30px; border-radius: 40px; border: none; background: #0f0; color: #000; font-weight: bold; cursor: pointer;">GO</button></div></form></div><hr style="border: 0; height: 1px; background: linear-gradient(to right, transparent, #0f0, transparent); margin-bottom: 30px;">'

# Use SED to inject the code right after the <body> tag
sed -i "s|<body>|<body>\n$SEARCH_BAR|g" "$FILE"

echo "✅ Neon Search Bar Injected into Monster OS!"
/home/theland/monster_system/save_build.sh
