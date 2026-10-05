#!/bin/bash
# Challenge 3: File Existence and Permission Checker
# Prompts for a target path, verifies existence, and tests
# read (-r), write (-w), and execute (-x) permissions for the running user.

# 1. Prompt user for target file path
echo "Enter a filename to check:"
read file_name

# 2. Guard: Verify if the file exists as a regular file
if [ -f "$file_name" ]; then
    echo "File exists!"

    # Check read permissions (-r)
    if [ -r "$file_name" ]; then
        echo "✓ File is readable"
    else
        echo "✗ File is not readable"
    fi

    # Check write permissions (-w)
    if [ -w "$file_name" ]; then
        echo "✓ File is writable"
    else
        echo "✗ File is not writable"
    fi

    # Check execution permissions (-x)
    if [ -x "$file_name" ]; then
        echo "✓ File is executable"
    else
        echo "✗ File is not executable"
    fi
else
    # Fallback if the file path is invalid or file doesn't exist
    echo "File does not exist"
fi
