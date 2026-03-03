#!/bin/bash
FILE="/home/theland/monster_system/active_index.html"

# Remove the old widget lines first to keep it clean
sed -i '//,//d' "$FILE"

# Modern Glassmorphism Code
MODERN_WIDGET='<div class="glass-container" style="display: flex; justify-content: center; align-items: center; padding: 20px; gap: 20px; flex-wrap: wrap; margin-bottom: 30px;">
    <div style="background: rgba(255, 255, 255, 0.05); backdrop-filter: blur(15px); border: 1px solid rgba(0, 255, 0, 0.2); border-radius: 20px; padding: 25px; min-width: 280px; box-shadow: 0 8px 32px 0 rgba(0, 255, 0, 0.1); text-align: center;">
        <div id="mClock" style="font-size: 3.5rem; font-weight: 800; color: #0f0; text-shadow: 0 0 15px rgba(0, 255, 0, 0.7); font-family: sans-serif; letter-spacing: -2px;">00:00:00</div>
        <div id="mDate" style="font-size: 1rem; color: #0f0; opacity: 0.8; text-transform: uppercase; letter-spacing: 2px; margin-top: 5px;">LOADING DATE...</div>
    </div>

    <div style="background: rgba(255, 255, 255, 0.05); backdrop-filter: blur(15px); border: 1px solid rgba(0, 255, 0, 0.2); border-radius: 20px; padding: 10px; min-width: 400px; box-shadow: 0 8px 32px 0 rgba(0, 255, 0, 0.1);">
        <a class="weatherwidget-io" href="https://forecast7.com/en/40k71n74k01/new-york/" data-label_1="MONSTER OS" data-label_2="FORECAST" data-font="Roboto" data-icons="Climacons Animated" data-theme="pure" data-basecolor="rgba(0,0,0,0)" data-accent="rgba(0, 255, 0, 0)" data-textcolor="#00ff00" >MONSTER OS WEATHER</a>
    </div>
</div>

<script>
function updateTime() {
    const now = new Date();
    document.getElementById("mClock").innerText = now.toLocaleTimeString("en-US", { hour12: false });
    document.getElementById("mDate").innerText = now.toLocaleDateString(undefined, { weekday: "long", month: "short", day: "numeric" });
}
setInterval(updateTime, 1000);
updateTime();
!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="https://weatherwidget.io/js/widget.min.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","weatherwidget-io-js");
</script>
'

# Inject under the body tag
sed -i "/<body>/a $MODERN_WIDGET" "$FILE"

echo "💎 Modern Glassmorphism Widgets Injected!"
/home/theland/monster_system/save_build.sh
