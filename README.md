# ServerScripts
useful scripts I run on my server

## Jellyfin_album_art_fix.sh
Jellyfin is weird and sometimes does not show album art, goes into every folder and makes a copy of any image renamed to cover.jpg, skips if already exists.

This might need to be undone to save space for example my FiiO X1 does not have this issue with album art so to not bloat that device I will run
`find . -type f \( -name "folder.jpg" -o -name "cover.jpg" \) -print -delete` to clean up.
