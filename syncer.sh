#!/bin/bash

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

# Prompt the user to input the dynamic part
read -p "Enter the name of you synced file for examle; [name].sync.spotdl: " dynamic_part

echo "Selected format: $FORMAT"
echo "Dynamic part: $dynamic_part"

while true; do
    echo "Running pipx command..."
    pipx run spotdl sync "${dynamic_part}.sync.spotdl" --format $FORMAT --overwrite skip
    echo "Command executed, sleeping for 5 seconds..."
    sleep 5
done
