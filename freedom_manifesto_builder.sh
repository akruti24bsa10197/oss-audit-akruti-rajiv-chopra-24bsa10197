#!/bin/bash
# Freedom Manifesto Builder
# Author: Akruti Rajiv Chopra
# Course Project: Open Source Software Audit
# Alias idea (example): alias runmanifest='./freedom_manifesto_builder.sh'

# Display welcome message
echo "Answer the following three questions to generate your open-source manifesto."
echo ""

# Take user input
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# Store date and output file name
TODAY=$(date '+%d %B %Y')
OUTPUT_FILE="manifesto_$(whoami).txt"

# Write manifesto content into the file
echo "Open Source Manifesto - $TODAY" > "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"
echo "I use $TOOL in my daily digital life, and it reminds me that software becomes more powerful when knowledge is shared openly." >> "$OUTPUT_FILE"
echo "To me, freedom means $FREEDOM, because open source gives users the right to study, modify, and improve the tools they depend on." >> "$OUTPUT_FILE"
echo "If I could build one thing for the community, I would create $BUILD and release it freely so that others could learn from it, improve it, and use it in meaningful ways." >> "$OUTPUT_FILE"
echo "That is why open source is not just about software—it is also about trust, collaboration, creativity, and collective progress." >> "$OUTPUT_FILE"

# Display saved file message
echo ""
echo "Manifesto saved to $OUTPUT_FILE"
echo "------------------------------------------"
cat "$OUTPUT_FILE"
