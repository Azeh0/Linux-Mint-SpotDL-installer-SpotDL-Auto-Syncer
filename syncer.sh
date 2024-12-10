#!/bin/bash

set -x
# Prompt the user to choose a format
echo "Enter number for format:"
echo "1) m4a"
echo "2) mp3"
echo "3) flac"
echo "4) ogg"
echo "5) opus"
echo "6) wav"
read -p "Choice: " choice

# Set the format based on user input
case $choice in
    1) FORMAT="m4a" ;;
    2) FORMAT="mp3" ;;
    3) FORMAT="flac" ;;
    4) FORMAT="ogg" ;;
    5) FORMAT="opus" ;;
    6) FORMAT="wav" ;;
    *) echo "Invalid choice, defaulting to m4a"; FORMAT="m4a" ;;
esac

while true; do
    pipx run spotdl sync "btap.sync.spotdl" --format $FORMAT --overwrite skip
    sleep 5
done