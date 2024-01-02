#! /usr/bin/bash

read -p "Enter the filename :" filename

#check if the file exists
if [ -f "$filename" ]; then
# Get last modification time
  last_modified=$(stat -c "%y" "$filename")
  echo "Last modification time of $filename: $last_modified"
else
  echo "The file '$filename' does not exist."
fi



