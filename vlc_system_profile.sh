#!/bin/bash
# VLC Linux System Profile
# Author: Akruti Rajiv Chopra
# Course Project: Open Source Software Audit

# Student and project details
STUDENT_NAME="Akruti Rajiv Chopra"
PROJECT_SOFTWARE="VLC Media Player"

# Collect system information
KERNEL_VERSION=$(uname -r)
CURRENT_USER=$(whoami)
HOME_PATH=$HOME
SYSTEM_UPTIME=$(uptime -p)
CURRENT_TIME=$(date "+%A, %d %B %Y | %I:%M:%S %p")

# Get Linux distribution name
if [ -f /etc/os-release ]; then
    DISTRO_NAME=$(grep '^PRETTY_NAME=' /etc/os-release | cut -d= -f2 | tr -d '"')
else
    DISTRO_NAME="Unknown Linux Distribution"
fi

# Display formatted output
echo "=================================================="
echo "        VLC Open Source System Profile"
echo "=================================================="
echo "Student Name      : $STUDENT_NAME"
echo "Chosen Software   : $PROJECT_SOFTWARE"
echo "Linux Distribution: $DISTRO_NAME"
echo "Kernel Version    : $KERNEL_VERSION"
echo "Logged-in User    : $CURRENT_USER"
echo "Home Directory    : $HOME_PATH"
echo "System Uptime     : $SYSTEM_UPTIME"
echo "Current Date/Time : $CURRENT_TIME"
echo "Linux License     : GPL v2 (Linux Kernel License)"
echo "=================================================="
echo "Open source systems succeed because communities can study, improve, and share them freely."
