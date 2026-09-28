#!/bin/bash

mkdir -p Battlefield

touch Battlefield/knight.txt Battlefield/sorcerer.txt Battlefield/rouge.txt

if [ -f "Battlefield/knight.txt" ]; then
	mkdir -p Archive
	mv Battlefield/knight.txt Archive
fi

echo "All files in Battlefield:"
ls -la Battlefield
echo "All files in Archive:"
ls -la Archive
