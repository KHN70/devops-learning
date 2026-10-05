#!/bin/bash
# Challenge 4: Automated Text File Backup
# Prompts for a source directory, creates a timestamped backup folder,
# copies all .txt files, and reports the count of backed-up items.

# 1. Prompt user for source directory
read -p "Enter source directory: " sourceD

# 2. Generate timestamp and destination folder name
timestamp=$(date +%Y-%m-%d_%H-%M)
backupD="backup_${timestamp}"

# 3. Validate source directory exists before attempting backup
if [ ! -d "$sourceD" ]; then
    echo "ERROR! Source directory doesnt exist."
    exit 1
fi

# 4. Create destination directory if it doesn't already exist
if [ ! -d "$backupD" ]; then
    mkdir -p "$backupD"
    echo "Backup directory created: $backupD."
fi

# 5. Copy all .txt files from source to backup directory
echo "Now copying .txt files..."
cp "$sourceD"/*.txt "$backupD"/

# 6. Count copied files via pipe and display total
# Suppresses stderr (2>/dev/null) if no .txt files match
count=$(ls -1 "$backupD"/*.txt 2>/dev/null | wc -l)
echo "Backup complete! Files backed up: $count"
