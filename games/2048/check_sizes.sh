#!/bin/bash
# Path to your games folder
GAMES_DIR="./games"

echo "Checking folder sizes in $GAMES_DIR..."
echo "Folders above 25 MB will be highlighted."

# Loop through each folder
for folder in "$GAMES_DIR"/*; do
    if [ -d "$folder" ]; then
        size=$(du -sm "$folder" | awk '{print $1}')  # size in MB
        if [ "$size" -gt 25 ]; then
            echo "⚠️  $folder : ${size}MB"
        else
            echo "$folder : ${size}MB"
        fi
    fi
done

echo "Check complete."
