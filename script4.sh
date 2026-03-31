#!/bin/bash

# Usage: ./script4.sh logfile [keyword]

LOGFILE=$1
KEYWORD=${2:-"error"}
COUNT=0

# Check if file exists
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

# Do-while style retry if file is empty
while true; do
    if [ ! -s "$LOGFILE" ]; then
        echo "File is empty. Enter another file:"
        read LOGFILE

        if [ ! -f "$LOGFILE" ]; then
            echo "Error: File not found."
            continue
        fi
    else
        break
    fi
done

# Read file line by line and count matches
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"

echo ""
echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5