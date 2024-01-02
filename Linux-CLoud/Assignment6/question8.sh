#! /usr/bin/bash

read -p "Enter the number of lines you want to print : " lines


for ((i=1 ; i<=$lines ; i++ )); do
   for ((j=1; j<=i ; j++)); do
        echo -n "*"
   done
   echo ""
done
