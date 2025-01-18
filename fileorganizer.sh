#!/bin/bash
#
# This script automates the separation of files based on their type.

echo "Enter the location of the directory:"
read location

echo ""
echo ""

if [ -d "$location" ]; then
    echo "Checking files in directory..."

    # Check if there are PNG and JPEG files in the directory
    png_files=$(ls "$location"/*.png 2>/dev/null)
    jpeg_files=$(ls "$location"/*.jpg 2>/dev/null)
    video_files=$(ls "$location"/*.mp4 2>/dev>null)

    # Proceed if there are PNG or JPEG files
    if [ -n "$png_files" ] || [ -n "$jpeg_files" ] || [  -n "$video_files"  ]; then
        # Move PNG and JPEG files to the destination directory
        mv "$location"/*.png  /home/shivam/Documents/Image_files
        if [ $? -eq 0 ]; then
            echo "png Files successfully moved."
        else
            echo "Error moving files."
        fi

        mv "$location"/*.jpg  /home/shivam/Documents/Image_files
        if [ $? -eq 0 ]; then
            echo "jpg Files successfully moved."
        else
            echo "Error moving files."
        fi
	
	mkdir /home/shivam/Documents/videos_files 2>/dev/null
        mv "$location"/*.mp4  /home/shivam/Documents/videos_files
        if [ $? -eq 0 ]; then
            echo "video Files successfully moved."
        else
            echo "Error moving files."
        fi

    else
        echo "No PNG or JPEG files found in the directory."
    fi
else
    echo "Not a valid directory."
fi

