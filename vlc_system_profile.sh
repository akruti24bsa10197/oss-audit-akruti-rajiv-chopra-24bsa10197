---
## Linux package name for VLC
Depending on distro:
- Ubuntu/Debian: `vlc`
- Fedora/RHEL: `vlc`

Use `vlc` in script.

---

### **Script 1 — System Identity Report **
```bash
#!/bin/bash
# Script 1: System Identity Report
# Author: Akruti Rajiv Chopra | Course: Open Source Software
# Project Software: VLC Media Player

# --- Variables ---
STUDENT_NAME="Akruti Rajiv Chopra"
SOFTWARE_CHOICE="VLC Media Player"

# --- System Info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
CURRENT_DATE=$(date "+%d-%m-%Y %I:%M:%S %p")

# Detect Linux distribution
if [ -f /etc/os-release ]; then
    DISTRO=$(grep '^PRETTY_NAME=' /etc/os-release | cut -d= -f2 | tr -d '"')
else
    DISTRO="Unknown Linux Distribution"
fi

# --- Display ---
echo "=============================================="
echo " Open Source Audit - $STUDENT_NAME"
echo "=============================================="
echo "Chosen Software : $SOFTWARE_CHOICE"
echo "Linux Distro    : $DISTRO"
echo "Kernel Version  : $KERNEL"
echo "Current User    : $USER_NAME"
echo "Home Directory  : $HOME_DIR"
echo "System Uptime   : $UPTIME"
echo "Current Date    : $CURRENT_DATE"
echo "OS License      : Linux kernel is licensed under GPL v2"
echo "=============================================="
echo "Open source makes software transparent, modifiable, and community-driven."
