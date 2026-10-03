#!/bin/bash

read -p "Enter a filename to check:" file_name


if [ ! -f "$file_name" ];then
	echo "File does not exist"
	exit 1
fi

echo "File exists!"

if [ -r "$file_name" ];then
                echo "✓ File is readable"
        else
                echo "✗ File is not readable"
fi
if [ -w "$file_name" ];then
                echo "✓ File is writable"
        else
                echo "✗ File is not writable"
fi
if [ -x "$file_name" ];then
                echo "✓ File is executable"
        else
                echo "✗ File is not executable"
fi
