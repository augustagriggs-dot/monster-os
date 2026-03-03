#!/bin/bash
cd /home/theland/monster_system/img/

# 1. Deadpool & Wolverine (Action Red)
wget -O poster1.jpg https://image.tmdb.org/t/p/w1280/yD94No9S79879u0h2YJ9S79879u.jpg || wget -O poster1.jpg https://images.wallpapersden.com/image/download/deadpool-and-wolverine-4k-movie-poster_bmVpa2aUmZqaraWkpJRmbmdlrWllZ2U.jpg

# 2. Avatar: Fire and Ash (Deep Blue)
wget -O poster2.jpg https://images.wallpapersden.com/image/download/avatar-3-fire-and-ash-movie-poster_bmVpa2aUmZqaraWkpJRma21lrWllZ2U.jpg

# 3. Joker 2 (Neon/Dark)
wget -O poster3.jpg https://images.wallpapersden.com/image/download/joker-folie-a-deux-movie-poster_bmVpa2aUmZqaraWkpJRmbmdlrWllZ2U.jpg

# 4. Avengers (Cinematic Gold/Blue)
wget -O poster4.jpg https://images.wallpapersden.com/image/download/avengers-endgame-movie-poster_bmVpa2aUmZqaraWkpJRmbmdlrWllZ2U.jpg

echo "🎬 Movie Backdrops added to /img/!"
ls -l poster*
