#!/bin/bash
# Script 4: Log File Analyzer
# Author: Aditya Raj Singh

LOGFILE=$1
KEYWORD=${2:-"error"}
COUNT=0

if [ ! -f "$LOGFILE" ]; then
    echo "Error: File not found."
    exit 1
fi

echo "================================"
echo "Analyzing Log File: $LOGFILE"
echo "Keyword: $KEYWORD"
echo "================================"

while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Total occurrences of '$KEYWORD': $COUNT"

echo "================================"
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
