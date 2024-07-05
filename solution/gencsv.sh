#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <start_index> <end_index>"
    exit 1
fi

start=$1
end=$2

if (( start >= end )); then
    echo "Error: End index must be greater than start index"
    exit 1
fi

filename="inputFile"

# Clear contents of the file if it exists
> "$filename"

for (( i=start; i<end; i++ )); do
    # Generate random number between 0 and 999 (inclusive)
    random_number=$(( RANDOM % 1000 ))
    
    # Append index and random number to the file
    echo "$i, $random_number" >> "$filename"
done

echo "File $filename generated with entries from $start to $((end-1))"

