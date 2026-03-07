#!/bin/bash
echo "🔍 DIAGNOSING GOSTREAMER MONSTER OS..."
echo "---------------------------------------"
[ -f "/home/theland/monster_system/active_index.html" ] && echo "✅ HTML File: EXISTS" || echo "❌ HTML File: MISSING"
[ -d "/home/theland/monster_system/img" ] && echo "✅ IMG Folder: EXISTS" || echo "❌ IMG Folder: MISSING"

echo "🖼️  CHECKING CRITICAL IMAGES:"
for img in logo.png bg.jpeg movieposter1.jpeg sports1.jpeg; do
    [ -f "/home/theland/monster_system/img/$img" ] && echo "   - $img: FOUND" || echo "   - $img: MISSING"
done

echo "---------------------------------------"
echo "📄 LAST 5 LINES OF CODE:"
tail -n 5 /home/theland/monster_system/active_index.html
