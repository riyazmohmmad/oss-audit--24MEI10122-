#!/bin/bash
# Script 1: System Identity Report
# Author: Riyaz Mohammad
# Course: Open Source Software

# --- Variables ---
STUDENT_NAME="Riyaz Mohammad"
SOFTWARE_CHOICE="Git"

# --- System Info ---
KERNEL=$(uname -r)
DISTRO=$(lsb_release -d | cut -f2)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
DATE_TIME=$(date)

# --- Display Output ---
echo "=========================================="
echo "   Open Source Audit — $STUDENT_NAME"
echo "=========================================="

echo "Chosen Software : $SOFTWARE_CHOICE"
echo "Linux Distro    : $DISTRO"
echo "Kernel Version  : $KERNEL"
echo "Current User    : $USER_NAME"
echo "Home Directory  : $HOME_DIR"
echo "System Uptime   : $UPTIME"
echo "Current Time    : $DATE_TIME"

echo ""
echo "License Info:"
echo "This system is based on GNU/Linux and follows the GNU General Public License (GPL), which ensures freedom to use, modify, and share software."

echo "=========================================="
