#!/bin/bash



if [ -d "bash_demo" ]; then
	echo "Directory 'bash_demo' already exists."
else
	mkdir bash_demo
	echo "Directory 'bash_demo' created."
fi
cd bash_demo || exit 1
current_date=$(date)
if [ -f "demo.txt" ]; then
	echo "File 'demo.txt' already exists." 	
else
	touch demo.txt
	echo "File 'demo.txt' created."
fi
	
	
echo "This file was created by a Bash script on $current_date." > demo.txt

cat demo.txt
