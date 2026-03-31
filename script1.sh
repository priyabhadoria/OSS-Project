#!/bin/bash

STUDENT_NAME="Priya Bhadoria"
SOFTWARE_CHOICE="Git"

KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DATE=$(date)
DISTRO=$(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '"')

echo "====================================="
echo " Open Source Audit - $STUDENT_NAME"
echo "====================================="
echo "Software : $SOFTWARE_CHOICE"
echo "Distro : $DISTRO"
echo "Kernel Version : $KERNEL"
echo "User : $USER_NAME"
echo "Uptime : $UPTIME"
echo "Date & Time : $DATE"
echo "License : GNU GPL (Linux Kernel)"