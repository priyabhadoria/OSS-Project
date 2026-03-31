#!/bin/bash

echo "Answer three questions to generate your manifesto."
echo ""

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# Write manifesto to file
echo "Open Source Manifesto - $DATE" > "$OUTPUT"
echo "" >> "$OUTPUT"
echo "I use $TOOL in my daily work." >> "$OUTPUT"
echo "For me, freedom means $FREEDOM." >> "$OUTPUT"
echo "I believe in sharing knowledge, and I would build $BUILD and make it available to everyone." >> "$OUTPUT"

echo ""
echo "Manifesto saved to $OUTPUT"
echo ""
cat "$OUTPUT"