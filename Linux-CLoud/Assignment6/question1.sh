#! /usr/bin/bash

echo -n "Enter the number : "
read num

for(( i=1 ; i <= 10 ; i++ ))
do
  echo "$num x $i = $(expr $i \* $num)"
done

