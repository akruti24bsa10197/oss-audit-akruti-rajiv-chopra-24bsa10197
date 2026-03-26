#!/bin/bash
# Keyword Log Tracker
# Author: Akruti Rajiv Chopra
# Course Project: Open Source Software Audit

# Take logfile from first argument and keyword from second argument
LOGFILE=$1
KEYWORD=${2:-"error"}
MATCH_COUNT=0

# Check if logfile argument is missing
if [ -z "$LOGFILE" ]; then
    echo "Usage: $0 <logfile> [keyword]"
    exit 1
fi

# Check if file exists
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

# Retry-style loop if file is empty
ATTEMPT=1
while [ ! -s "$LOGFILE" ] && [ $ATTEMPT -le 2 ]; do
    echo "Warning: $LOGFILE is empty. Retry attempt $ATTEMPT..."
    sleep 1
    ATTEMPT=$((ATTEMPT + 1))
done

# Exit if still empty after retries
if [ ! -s "$LOGFILE" ]; then
    echo "Error: $LOGFILE is still empty after retry attempts."
    exit 1
fi

# Read file line by line and count matches
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        MATCH_COUNT=$((MATCH_COUNT + 1))
    fi
done < "$LOGFILE"

# Print summary
echo "=================================================="
echo "            Keyword Log Tracking Report"
echo "=================================================="
echo "Keyword '$KEYWORD' found $MATCH_COUNT times in $LOGFILE"
echo "=================================================="

# Print last 5 matching lines
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
