#! /usr/bin/bash


# List all files in the current directory, including hidden ones
hidden_files=$(ls -A | grep "^\.")

# Check if there are hidden files
if [ -n "$hidden_files" ]; then
    echo "Hidden files in the current directory:"
    echo "$hidden_files"
else
    echo "No hidden files found in the current directory."
fi

