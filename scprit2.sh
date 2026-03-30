#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Riyaz Mohammad
# Registation number : 24MEI10122

PACKAGE="git"   # ✅ Now we are checking Git

echo "Checking package: $PACKAGE"
echo "-------------------------"

# Check if package is installed
if dpkg -l | grep -qw $PACKAGE; then
    echo "$PACKAGE is installed."

    # Show version and details
    git --version
    dpkg -l | grep $PACKAGE

else
    echo "$PACKAGE is NOT installed."
fi

echo ""
echo "Philosophy Note:"
echo "----------------"

# Case statement
case $PACKAGE in
    git) echo "Git: version control system that empowers open collaboration and was created by Linus Torvalds" ;;
    firefox) echo "Firefox: a browser that protects open web freedom" ;;
    vlc) echo "VLC: play anything, built by community" ;;
    python3) echo "Python: simple language built by community" ;;
    *) echo "Unknown package but still part of open-source world" ;;
esac
