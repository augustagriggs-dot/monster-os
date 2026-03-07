#!/bin/bash
TARGET="/home/theland/monster_system/active_index.html"
JSON="/home/theland/monster_system/links.json"

# Write the HTML Head
cat << 'EOF' > $TARGET
<!DOCTYPE html>
<html>
<head>
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; }
        
        /* 📜 ENABLE SCROLLING */
        body { 
            background: #000 !important; 
            color: white; 
            font-family: sans-serif; 
            padding: 20px; 
            overflow-y: auto; /* Allows up/down scrolling */
            min-height: 100vh;
        }

        /* 🕰️ HEADER & CLOCK */
        .header { display: flex; justify-content: space-between; align-items: center; border: 3px solid #39FF14; padding: 15px; border-radius: 15px; margin-bottom: 20px; background: rgba(57, 255, 20, 0.05); }
        #clock { font-size: 40px; color: #39FF14; font-weight: bold; text-shadow: 0 0 10px #39FF14; }
        
        /* 🔍 DUCKDUCKGO SEARCH */
        .search-container { margin-bottom: 30px; text-align: center; }
        .search-container input { width: 60%; padding: 15px; border-radius: 30px; border: 2px solid #39FF14; background: #111; color: white; font-size: 18px; outline: none; }

        /* 📦 GRID: MAX 3 PER ROW */
        .row-title { color: #39FF14; font-size: 22px; margin-bottom: 15px; font-weight: bold; text-transform: uppercase; border-left: 5px solid #39FF14; padding-left: 10px; }
        .grid { 
            display: grid; 
            grid-template-columns: repeat(3, 1fr); /* FORCES 3 MAX */
            gap: 20px; 
            margin-bottom: 40px; 
        }

        .block {
            display: flex; flex-direction: column; justify-content: flex-end; align-items: center;
            aspect-ratio: 16 / 9; background-color: #0a0a0a; border: 3px solid #39FF14; border-radius: 15px;
            text-decoration: none; overflow: hidden; transition: 0.3s;
            background-repeat: no-repeat; background-position: center 40%; background-size: 60% auto;
        }
        .block:hover { transform: scale(1.05); box-shadow: 0 0 25px #39FF14; border-color: #fff; }
        .block span { width: 100%; background: rgba(0, 0, 0, 0.9); color: #39FF14; padding: 10px 0; text-align: center; font-weight: bold; font-size: 18px; border-top: 1px solid #39FF14; }
        
        /* Custom Scrollbar to match Monster Green */
        ::-webkit-scrollbar { width: 10px; }
        ::-webkit-scrollbar-track { background: #000; }
        ::-webkit-scrollbar-thumb { background: #39FF14; border-radius: 10px; }
    </style>
</head>
<body>
    <div class="header">
        <div style="color: #39FF14; font-size: 26px; font-weight: bold;">GOSTREAMER MONSTER OS</div>
        <div id="clock"></div>
    </div>

    <div class="search-container">
        <form action="https://duckduckgo.com/" method="get">
            <input type="text" name="q" placeholder="Search the web with DuckDuckGo...">
        </form>
    </div>
EOF

# Function to build rows automatically
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

build_section "🎬 Premium Movies" "movies"
build_section "📺 Live TV" "live_tv"
build_section "🏈 Live Sports" "sports"
build_section "🛰️ Entertainment" "entertainment"

# Footer with 12-Hour Clock
cat << 'EOF' >> $TARGET
    <script>
        function updateClock() { 
            const now = new Date(); 
            let options = { hour: '2-digit', minute: '2-digit', hour12: true };
            document.getElementById('clock').innerText = now.toLocaleTimeString([], options); 
        }
        setInterval(updateClock, 1000); updateClock();
    </script>
</body>
</html>
EOF
echo "✅ Build Complete! Max 3 blocks per row + DuckDuckGo + Scrolling enabled."
