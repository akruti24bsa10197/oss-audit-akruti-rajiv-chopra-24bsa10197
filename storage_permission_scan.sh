#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Akruti Rajiv Chopra
# Audits important Linux directories and checks VLC config directory

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "=============================================="
echo " Directory Audit Report"
echo "=============================================="

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done

echo ""
echo "=============================================="
echo " VLC Configuration Directory Check"
echo "=============================================="

VLC_CONFIG="$HOME/.config/vlc"

if [ -d "$VLC_CONFIG" ]; then
    VLC_PERMS=$(ls -ld "$VLC_CONFIG" | awk '{print $1, $3, $4}')
    echo "$VLC_CONFIG exists."
    echo "Permissions: $VLC_PERMS"
else
    echo "$VLC_CONFIG does not exist. VLC may not have been launched yet."
fi
