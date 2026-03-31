#!/bin/bash

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

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
echo "Checking Git config files..."
echo "----------------------------"

FOUND=0

for FILE in "/etc/gitconfig" "$HOME/.gitconfig"; do
    if [ -f "$FILE" ]; then
        ls -l "$FILE" | awk '{print $1, $3, $4, $9}'
        FOUND=1
    fi
done

if [ $FOUND -eq 0 ]; then
    echo "No Git config files found"
fi