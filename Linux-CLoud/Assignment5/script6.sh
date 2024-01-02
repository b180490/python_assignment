#! /usr/bin/bash

echo -n "Enter the year: "
read year

if [ $(expr $year % 4) -eq 0 ]
then
  if [ $(expr $year % 100) -ne 0 ] || [ $(expr $year % 400) -eq 0 ]
    then
      echo "$year is leap year."
  else
    echo "$year is not leap year."
  fi
else  
  echo "$year is not leap year."
fi
