#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Usage: $0 <python_script.py>"
    exit 1
fi

input_file="$1"
output_file="${input_file%.py}.mp3"

python3 script.py "$input_file" -o "$output_file"
