#!/bin/bash
# Storage and Permission Scan
# Author: Akruti Rajiv Chopra
# Course Project: Open Source Software Audit

# List of important Linux directories to check
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "=================================================="
echo "        Storage and Permission Scan Report"
echo "=================================================="

# Loop through each directory and display permissions + size
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMISSION_INFO=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        DIRECTORY_SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMISSION_INFO | Size: $DIRECTORY_SIZE"
    else
        echo "$DIR does not exist on this system."
    fi
done

echo ""
echo "=================================================="
echo "        VLC Configuration Directory Check"
echo "=================================================="

# Check VLC configuration directory in user's home
VLC_CONFIG_DIR="$HOME/.config/vlc"

if [ -d "$VLC_CONFIG_DIR" ]; then
    VLC_CONFIG_INFO=$(ls -ld "$VLC_CONFIG_DIR" | awk '{print $1, $3, $4}')
    echo "$VLC_CONFIG_DIR exists."
    echo "Permissions: $VLC_CONFIG_INFO"
else
    echo "$VLC_CONFIG_DIR does not exist."
    echo "This may happen if VLC has not been launched yet on this Linux system."
fi
