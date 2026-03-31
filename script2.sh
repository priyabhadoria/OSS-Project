#!/bin/bash

read -p "Enter package name: (e.g. git, httpd, mysql, vlc, firefox):" PACKAGE

PKG=$(rpm -qa | grep -i "^$PACKAGE")

if [ -n "$PKG" ]; then
    echo "$PACKAGE is installed."
    rpm -qi "$PKG" | grep -E "Name|Version|Summary|License"
else
    echo "$PACKAGE is NOT installed."
fi

case $PACKAGE in
    git) echo "Git: distributed version control system for tracking code changes" ;;
    httpd) echo "Apache: web server that powers many websites" ;;
    mysql) echo "MySQL: open source database system" ;;
    vlc) echo "VLC: free media player supporting many formats" ;;
    firefox) echo "Firefox: open source browser focused on privacy" ;;
    *) echo "No description available" ;;
esac