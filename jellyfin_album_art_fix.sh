#!/bin/bash
# Find all image files and create/rename a copy to folder.jpg in the same directory

find . -type f \( -name "*.jpg" -o -name "*.jpeg" -o -name "*.png" -o -name "*.webp" \) | while read -r img; do
    dir=$(dirname "$img")
    filename=$(basename "$img")
    
    # Skip if the file is already named folder.jpg
    if [ "$filename" != "folder.jpg" ]; then
        echo "Processing: $dir/$filename"
        cp "$img" "$dir/folder.jpg"
    fi
done
