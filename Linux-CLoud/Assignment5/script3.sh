#! /usr/bin/bash

echo -n "Enter the name: "
read name

if [ -f "$name" ]
then
  echo "This is a File."
  echo "Size of the file is $(du -h $name)"

elif [ -d "$name" ]
then
  echo "This is a Directory."
  echo "Contents of the directory are $(ls -ls $name)"

else
  echo "No such file or directory."
fi 
