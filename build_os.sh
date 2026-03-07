#!/bin/bash
TARGET="/home/theland/monster_system/active_index.html"
JSON="/home/theland/monster_system/links.json"

# Write HTML Header with CSS
cat << 'EOF' > $TARGET
<!DOCTYPE html>
<html>
<head>
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; }
        body { background: #000 !important; color: white; font-family: sans-serif; padding: 25px; overflow-y: auto; scroll-behavior: smooth; min-height: 100vh; }
        
        .header { display: flex; justify-content: space-between; align-items: center; border: 3px solid #39FF14; padding: 15px; border-radius: 15px; margin-bottom: 25px; background: rgba(57, 255, 20, 0.05); }
        #clock { font-size: 42px; color: #39FF14; font-weight: bold; text-shadow: 0 0 10px #39FF14; }
        
        .search-container { margin-bottom: 35px; text-align: center; }
        .search-container input { width: 65%; padding: 18px; border-radius: 35px; border: 3px solid #39FF14; background: #111; color: white; font-size: 20px; outline: none; box-shadow: 0 0 15px rgba(57, 255, 20, 0.3); }

        .row-title { color: #39FF14; font-size: 24px; margin-bottom: 18px; font-weight: bold; text-transform: uppercase; border-left: 6px solid #39FF14; padding-left: 12px; }
        .grid { display: grid; grid-template-columns: repeat(3, 1fr); gap: 25px; margin-bottom: 45px; }

        .block {
            display: flex; flex-direction: column; justify-content: flex-end; align-items: center;
            aspect-ratio: 16 / 9; background-color: #0a0a0a; border: 3px solid #39FF14; border-radius: 18px;
            text-decoration: none; overflow: hidden; transition: 0.3s;
            background-repeat: no-repeat; background-position: center 35%; background-size: 50% auto;
        }
        .block:hover { transform: scale(1.06); box-shadow: 0 0 30px #39FF14; border-color: #fff; background-color: #000; }
        .block span { width: 100%; background: rgba(0, 0, 0, 0.95); color: #39FF14; padding: 12px 0; text-align: center; font-weight: bold; font-size: 18px; border-top: 1px solid #39FF14; }

        /* FLOATING NAVIGATION */
        #topBtn { position: fixed; bottom: 25px; right: 25px; background: #39FF14; color: #000; border: none; border-radius: 50%; width: 55px; height: 55px; font-size: 28px; font-weight: bold; cursor: pointer; display: none; z-index: 1000; box-shadow: 0 0 15px #39FF14; }
        #homeBtn { position: fixed; bottom: 25px; left: 25px; background: #39FF14; color: #000; border: none; border-radius: 12px; padding: 12px 25px; font-weight: bold; font-size: 18px; cursor: pointer; z-index: 1000; text-decoration: none; box-shadow: 0 0 15px #39FF14; }

        ::-webkit-scrollbar { width: 12px; }
        ::-webkit-scrollbar-track { background: #000; }
        ::-webkit-scrollbar-thumb { background: #39FF14; border-radius: 10px; border: 2px solid #000; }
    </style>
</head>
<body id="top-anchor">
    <div class="header">
        <div style="color: #39FF14; font-size: 30px; font-weight: bold; letter-spacing: 1px;">GOSTREAMER MONSTER OS</div>
        <div id="clock"></div>
    </div>

    <div class="search-container">
        <form action="https://duckduckgo.com/" method="get">
            <input type="text" name="q" placeholder="Search the web with DuckDuckGo..." autofocus>
        </form>
    </div>

    <a href="#" id="homeBtn" onclick="location.reload()">HOME</a>
    <button id="topBtn" onclick="window.scrollTo(0,0)">↑</button>
EOF

# Build Row Function
build_section() {
    local label=$1
    local key=$2
    echo "<div class='row-title'>$label</div><div class='grid'>" >> $TARGET
    jq -c ".$key[]" $JSON | while read -r item; do
        name=$(echo "$item" | jq -r '.name')
        url=$(echo "$item" | jq -r '.url')
        img=$(echo "$item" | jq -r '.img')
        echo "<a href='$url' class='block' style=\"background-image: url('$img');\"><span>$name</span></a>" >> $TARGET
    done
    echo "</div>" >> $TARGET
}

# Generate Categories
build_section "🎬 Premium Movies" "movies"
build_section "📺 Live TV" "live_tv"
build_section "📰 Local News" "news"
build_section "🎵 Music & Radio" "music"
build_section "🏈 Live Sports" "sports"
build_section "📱 Social Media" "social"
build_section "🛠️ System Tools" "system"

# Footer and Scripts
cat << 'EOF' >> $TARGET
    <script>
        function updateClock() { 
            const now = new Date(); 
            let options = { hour: '2-digit', minute: '2-digit', hour12: true };
            document.getElementById('clock').innerText = now.toLocaleTimeString([], options); 
        }
        setInterval(updateClock, 1000); updateClock();

        window.onscroll = function() {
            let btn = document.getElementById("topBtn");
            if (document.body.scrollTop > 400 || document.documentElement.scrollTop > 400) {
                btn.style.display = "block";
            } else {
                btn.style.display = "none";
            }
        };
    </script>
</body>
</html>
EOF
echo "✅ Final Monster Build Complete!"
