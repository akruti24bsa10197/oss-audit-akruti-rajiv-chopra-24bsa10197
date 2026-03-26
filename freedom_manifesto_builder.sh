#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Akruti Rajiv Chopra
# This script asks the user questions and generates a manifesto file.
# Alias idea (example): alias runmanifest='./script5_manifesto_generator.sh'

echo "Answer three questions to generate your open source manifesto."
echo ""

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

echo "Open Source Manifesto - $DATE" > "$OUTPUT"
echo "" >> "$OUTPUT"
echo "I use $TOOL as part of my digital life, and it reminds me that software can be shared without losing its value." >> "$OUTPUT"
echo "To me, freedom means $FREEDOM, because true open source gives people the right to study, modify, and improve what they use." >> "$OUTPUT"
echo "If I could build one thing for the community, I would create $BUILD and share it openly so others could learn from it and make it better." >> "$OUTPUT"
echo "That is why open source is not only about code, but also about trust, collaboration, and progress." >> "$OUTPUT"

echo ""
echo "Manifesto saved to $OUTPUT"
echo "--------------------------------------"
cat "$OUTPUT"
