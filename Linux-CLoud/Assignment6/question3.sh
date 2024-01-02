#!/bin/bash

read -p "Enter the num of terms :" num

# Function to generate Fibonacci series
fibonacci() {
    n=$1
    a=0
    b=1

    # Print the first two terms
    echo "Fibonacci Series up to $n terms:"
    echo -n "$a $b "

    # Generate the subsequent terms using a for loop
    for ((i=2; i<n; i++)); do
        c=$((a + b))
        echo -n "$c "
        a=$b
        b=$c
    done

    echo "" # Newline for better formatting
}



# Call the function with user input
fibonacci $num

