#! /usr/bin/bash



# List only executable files in the current directory
executable_files=$(find . -maxdepth 1 -type f -executable)

# Check if there are executable files
if [ -n "$executable_files" ]; then
    echo "Executable files in the current directory:"
    echo "$executable_files"
else
    echo "No executable files found in the current directory."
fi

