#!/system/bin/sh

# Wait for 30 seconds so system can finish mounting
sleep 30

# Source and destination
SRC="/cache"
DST="/storage/7BC1-1BE6/cache_backup"

# Create the destination folder if it doesn't exist
mkdir -p "$DST"

# Copy everything from /cache
cp -r "$SRC"/* "$DST"/

# Flush to disk
sync
