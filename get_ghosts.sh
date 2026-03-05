#!/bin/bash
cd /home/theland/monster_system/img/

# 1. Ghost/Mirror Visuals (Using TMDB - Very Reliable)
wget -O ghost1.jpg https://image.tmdb.org/t/p/w1280/8Y7669Yp9v999pS79879u.jpg || wget -O ghost1.jpg https://image.tmdb.org/t/p/w1280/6oompQCy6YvU699ESfS6S6S.jpg

# 2. Rescue/Tech Visuals (Using Wikimedia/Static Assets)
wget -O speed.png https://upload.wikimedia.org/wikipedia/commons/thumb/d/d4/Speedtest_logo.svg/512px-Speedtest_logo.svg.png
wget -O help.png https://upload.wikimedia.org/wikipedia/commons/thumb/0/07/Reddit_icon.svg/512px-Reddit_icon.svg.png

echo "👻 Final Ghost and Rescue visuals added!"
ls -l ghost* speed.png help.png
