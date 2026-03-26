#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Akruti Rajiv Chopra
# Checks whether VLC is installed and prints package details

PACKAGE="vlc"

echo "=============================================="
echo " FOSS Package Inspector - VLC Media Player"
echo "=============================================="

# Check package using dpkg first, then rpm
if command -v dpkg >/dev/null 2>&1; then
    if dpkg -s "$PACKAGE" >/dev/null 2>&1; then
        echo "$PACKAGE is installed."
        dpkg -s "$PACKAGE" | grep -E 'Package:|Version:|Maintainer:|Description:'
    else
        echo "$PACKAGE is NOT installed."
    fi
elif command -v rpm >/dev/null 2>&1; then
    if rpm -q "$PACKAGE" >/dev/null 2>&1; then
        echo "$PACKAGE is installed."
        rpm -qi "$PACKAGE" | grep -E 'Name|Version|License|Summary'
    else
        echo "$PACKAGE is NOT installed."
    fi
else
    echo "No supported package manager found (dpkg/rpm)."
fi

echo ""
echo "Philosophy Note:"
case $PACKAGE in
    vlc) echo "VLC: a student-built media player that proves openness can beat restrictive codecs." ;;
    firefox) echo "Firefox: a browser built to protect an open web." ;;
    git) echo "Git: distributed version control born from the need for freedom and speed." ;;
    python3) echo "Python: a language shaped by readability and community contribution." ;;
    *) echo "This package represents the spirit of open collaboration." ;;
esac
