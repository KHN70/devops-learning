#!/bin/bash
# Challenge 2: Basic File and Directory Operations
# Demonstrates directory creation, safe navigation, file creation checks, 
# dynamic date capture, and content redirection.

# 1. Check if target directory exists; create it if missing
if [ -d "bash_demo" ]; then
    echo "Directory 'bash_demo' already exists."
else
    mkdir bash_demo
    echo "Directory 'bash_demo' created."
fi

# 2. Enter target directory; exit immediately if cd fails (defensive programming)
cd bash_demo || exit 1

# 3. Capture system date dynamically into a variable
current_date=$(date)

# 4. Check if demo file exists before touching
if [ -f "demo.txt" ]; then
    echo "File 'demo.txt' already exists."
else
    touch demo.txt
    echo "File 'demo.txt' created."
fi

# 5. Overwrite file with current timestamp string and display contents
echo "This file was created by a Bash script on $current_date." > demo.txt
cat demo.txt
