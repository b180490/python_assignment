#! /usr/bin/bash

echo -n "Enter the number: "
read num

if [ $num -lt 0 ]
then
  echo "$num is negative."
elif [ $num -gt 0 ]
then
  echo "$num is positive."
else
  echo "$num is equal to 0."
fi
