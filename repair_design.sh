#!/bin/bash
FILE="/home/theland/monster_system/active_index.html"

# Create a clean, high-tech CSS block
cat << 'CSS' > /tmp/monster_final.css
<style>
  /* FORCE BLACK BACKGROUND */
  html, body { background-color: #000000 !important; color: #39FF14 !important; margin: 0; padding: 20px; font-family: 'Segoe UI', Roboto, Helvetica, Arial, sans-serif; }

  /* MODERN NEON GRID */
  .container { max-width: 1400px; margin: auto; }
  .rw { margin-bottom: 50px; }
  .rt { font-size: 1.6rem; font-weight: 800; color: #39FF14; text-transform: uppercase; border-left: 5px solid #39FF14; padding-left: 15px; margin-bottom: 20px; text-shadow: 0 0 10px rgba(57, 255, 20, 0.5); }
  
  .tc { 
    display: grid; 
    grid-template-columns: repeat(auto-fill, minmax(180px, 1fr)); 
    gap: 25px; 
  }

  /* POSTER BLOCKS */
  .t { 
    background: #0a0a0a; 
    border: 2px solid #1a1a1a; 
    border-radius: 15px; 
    padding: 20px; 
    text-align: center; 
    text-decoration: none; 
    color: #39FF14; 
    transition: all 0.4s cubic-bezier(0.175, 0.885, 0.32, 1.275);
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: space-between;
    min-height: 180px;
    box-shadow: 0 10px 20px rgba(0,0,0,0.5);
  }

  .t:hover { 
    border-color: #39FF14; 
    box-shadow: 0 0 20px rgba(57, 255, 20, 0.4); 
    transform: translateY(-10px);
    background: #000;
  }

  .t img { width: 80px; height: 80px; object-fit: contain; margin-bottom: 15px; filter: drop-shadow(0 0 5px rgba(57, 255, 20, 0.2)); }
  .t span { font-weight: bold; font-size: 0.9rem; letter-spacing: 1px; }
</style>
CSS

# Remove all old style tags and inject the new one
sed -i '/<style>/,<\/style>/d' "$FILE"
sed -i '/<head>/a r /tmp/monster_final.css' "$FILE"

echo "✅ Design Repaired: Black Background & Neon Green Restored!"
/home/theland/monster_system/save_build.sh
