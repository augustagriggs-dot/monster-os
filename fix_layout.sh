#!/bin/bash
FILE="/home/theland/monster_system/active_index.html"

# 1. Standardize the CSS for Uniform Blocks and Responsive Rows
cat << 'CSS' > /tmp/monster_style.css
<style>
  body { background: #000; color: #0f0; font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; margin: 0; padding: 20px; }
  .container { max-width: 1400px; margin: auto; }
  
  /* Modern Glass Header */
  .header-box { background: rgba(0, 255, 0, 0.05); backdrop-filter: blur(10px); border: 1px solid #0f0; border-radius: 15px; padding: 20px; margin-bottom: 30px; text-align: center; box-shadow: 0 0 20px rgba(0,255,0,0.2); }
  
  /* Uniform Grid System */
  .rw { margin-bottom: 40px; }
  .rt { font-size: 1.5rem; font-weight: bold; margin-bottom: 15px; border-left: 5px solid #0f0; padding-left: 15px; text-transform: uppercase; }
  .tc { display: grid; grid-template-columns: repeat(auto-fit, minmax(180px, 1fr)); gap: 15px; }
  
  /* Unified Block Style (Poster & Wide) */
  .t { background: #111; border: 2px solid #333; border-radius: 10px; padding: 20px; text-align: center; text-decoration: none; color: #0f0; transition: 0.3s; display: flex; flex-direction: column; align-items: center; justify-content: center; min-height: 100px; box-shadow: 0 4px 6px rgba(0,0,0,0.5); }
  .t:hover { border-color: #0f0; box-shadow: 0 0 15px #0f0; transform: translateY(-5px); background: #000; }
  .t span { font-weight: bold; letter-spacing: 1px; }
</style>
CSS

# 2. Re-inject the modern Clock & Weather properly at the top
sed -i '/<style>/r /tmp/monster_style.css' "$FILE"

echo "✅ Layout Standardized: Blocks are now uniform and responsive."
/home/theland/monster_system/save_build.sh
