#!/bin/bash
FILE="/home/theland/monster_system/active_index.html"

# This replaces your old CSS with a modern, responsive grid
cat << 'CSS' > /tmp/monster.css
<style>
  body { background: #000; color: #0f0; font-family: 'Courier New', monospace; margin: 0; padding: 20px; }
  .container { max-width: 1400px; margin: auto; }
  
  /* The Row Header */
  .rt { font-size: 1.4rem; font-weight: bold; color: #0f0; margin: 30px 0 15px 0; border-bottom: 1px solid #0f0; display: inline-block; padding-bottom: 5px; }
  
  /* The Grid - This makes everything line up! */
  .tc { 
    display: grid; 
    grid-template-columns: repeat(auto-fill, minmax(160px, 1fr)); 
    gap: 20px; 
    padding: 10px 0;
  }
  
  /* The Poster Block */
  .t { 
    background: #111; 
    border: 2px solid #0f0; 
    border-radius: 12px; 
    padding: 15px; 
    text-align: center; 
    text-decoration: none; 
    transition: all 0.3s ease;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    aspect-ratio: 1/1; /* Keeps them perfectly square like an app icon */
    box-shadow: 0 0 10px rgba(0, 255, 0, 0.1);
  }
  
  .t:hover { background: #0f0; color: #000; box-shadow: 0 0 25px #0f0; transform: scale(1.05); }
  
  /* Logo Styling */
  .t img { width: 60px; height: 60px; object-fit: contain; margin-bottom: 10px; }
  .t span { font-size: 0.9rem; font-weight: bold; text-transform: uppercase; }
</style>
CSS

# Inject the CSS into the head of the file
sed -i '/<style>/,<\/style>/d' "$FILE" # Remove old style
sed -i '/<head>/a r /tmp/monster.css' "$FILE"

echo "✅ Modern Grid CSS Applied!"
/home/theland/monster_system/save_build.sh
