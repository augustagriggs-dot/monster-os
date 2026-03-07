#!/bin/bash
# GOSTREAMER MONSTER OS - TRIPLE ZERO MAINTENANCE

while true; do
    clear
    echo "=============================================="
    echo "    TRIPLE ZERO RESET - GOSTREAMER OS        "
    echo "=============================================="
    echo "1) 🟢 TRIPLE ZERO RESET (Clean Cache & Fix Fit)"
    echo "2) 🚀 RESTART KIOSK (Kill Ghost Windows)"
    echo "3) ⚖️  SWITCH TO ATTORNEY BUILD"
    echo "4) 👾 SWITCH TO GOSTREAMER BUILD"
    echo "5) 🛠️  EDIT BUILDER (Change Links/Labels)"
    echo "6) 📤 PUSH TO GITHUB (Backup System)"
    echo "q) EXIT"
    echo "=============================================="
    read -p "Select an option: " choice

    case $choice in
        1) 
            echo "🧹 Wiping Brave Cache & Ghost Layers..."
            rm -rf ~/.config/BraveSoftware/Brave-Browser/Default/GPUCache
            rm -rf ~/.config/BraveSoftware/Brave-Browser/Default/Cache/*
            echo "⚙️ Applying Zero-Margin CSS..."
            bash /home/theland/monster_system/build_os.sh
            echo "✅ RESET COMPLETE!"
            sleep 2 
            ;;
        2) 
            echo "🚀 Killing Brave & Unclutter..."
            pkill -f brave
            pkill -f unclutter
            sleep 1
            bash /home/theland/monster_system/kiosk_start.sh & 
            echo "✨ Kiosk Restarted!"
            sleep 1 
            ;;
        3) 
            sed -i 's|Exec=.*|Exec=bash /home/theland/monster_system/monster_loop.sh|' ~/.config/autostart/monster.desktop
            echo "⚖️ Switched to Attorney. Please Reboot."
            sleep 2 
            ;;
        4) 
            sed -i "s|Exec=.*|Exec=/home/theland/monster_system/kiosk_start.sh|" ~/.config/autostart/monster.desktop
            echo "👾 Switched to Monster OS. Please Reboot."
            sleep 2 
            ;;
        5) 
            nano /home/theland/monster_system/build_os.sh 
            ;;
        6) 
            echo "📤 Syncing to GitHub..."
            cd /home/theland/monster_system/
            git add .
            git commit -m "Triple Zero Reset Applied"
            git push origin main
            echo "✅ GitHub Updated!"
            sleep 2
            ;;
        q) exit ;;
        *) echo "Invalid choice."; sleep 1 ;;
    esac
done
