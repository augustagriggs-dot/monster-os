#!/bin/bash
# GOSTREAMER Monster OS - Artwork Maintenance Script

ZIP_PATH="/home/theland/Desktop/monster_art.zip"
IMG_DIR="/home/theland/monster_system/img"

echo "🟢 Starting GOSTREAMER Monster OS Artwork Update..."

# Step 1: Make sure the image directory exists
mkdir -p "$IMG_DIR"

# Step 2: Check if the zip file is on the desktop
if [ -f "$ZIP_PATH" ]; then
    echo "📦 Found monster_art.zip on Desktop. Extracting files..."
    
    # Unzip (-o overwrites old files, -j ignores folders inside the zip)
    unzip -o -j "$ZIP_PATH" -d "$IMG_DIR"
    
    echo "✅ All artwork successfully updated in the system!"
    
    # Step 3: Clean up the desktop
    echo "🧹 Removing the zip file from Desktop to keep things clean..."
    rm "$ZIP_PATH"
    
    echo "🚀 Update Complete! Go to Brave and press Ctrl+Shift+R to see your new Monster OS."
else
    echo "❌ ERROR: Could not find $ZIP_PATH."
    echo "Please make sure your zip file is named exactly 'monster_art.zip' and is sitting on your Desktop."
fi
