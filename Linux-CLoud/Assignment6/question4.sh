#! /usr/bin/bash

# Prompt user to enter basic salary
read -p "Enter basic salary: " basic_salary

# Calculate DA (40% of basic salary)
da=$(echo "scale=2; $basic_salary * 0.4" | bc)

# Calculate HRA (20% of basic salary)
hra=$(echo "scale=2; $basic_salary * 0.2" | bc)

# Calculate gross salary
gross_salary=$(echo "scale=2; $basic_salary + $da + $hra" | bc)

# Display gross salary
echo "Gross salary: $gross_salary"

