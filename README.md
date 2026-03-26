# Open Source Audit - VLC Media Player

## Student Details
- Name: Akruti Rajiv Chopra
- Roll Number: 24BSA10197
- Course: Open Source Software
- Project Title: The Open Source Audit - VLC Media Player

## Chosen Software
VLC Media Player is a free and open-source multimedia player developed by the VideoLAN project. It is known for supporting a wide range of audio and video formats without requiring additional codecs.

## Repository Contents

- vlc_system_profile.sh
- vlc_package_audit.sh
- storage_permission_scan.sh
- keyword_log_tracker.sh
- freedom_manifesto_builder.sh
- README.md

## Script Descriptions

### 1. System Identity Report
Displays Linux distribution, kernel version, current user, home directory, uptime, date/time, and open-source license message.

### 2. FOSS Package Inspector
Checks whether VLC is installed, prints package version and summary, and shows a short philosophy note using a case statement.

### 3. Disk and Permission Auditor
Audits important Linux directories and checks VLC configuration directory permissions.

### 4. Log File Analyzer
Reads a log file line by line, counts keyword matches, and prints the last 5 matching lines.

### 5. Open Source Manifesto Generator
Asks three questions interactively and generates a personalized open-source philosophy statement in a text file.

## How to Run
Make scripts executable:
```bash
chmod +x *.sh
