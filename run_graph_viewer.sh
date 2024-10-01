#!/bin/bash

total_time=0  # Variable to store total time in milliseconds
iterations=10  # Number of times to run the command
output_dir="./out/"  # Directory where CSV files are saved
file_prefix="out.ca-AstroPh_"  # Prefix for the generated files
file_extension=".csv"  # File extension

for i in $(seq 1 $iterations)
do
    echo "Run $i:"
    
    # Remove all output files that will be generated during the run (assuming 10 files with specific iterations)
    for iteration in $(seq 100 100 1000); do
        output_file="${output_dir}${file_prefix}${iteration}${file_extension}"
        
        if [ -f "$output_file" ]; then
            echo "Removing existing file: $output_file"
            rm "$output_file"
        fi
    done

    # Measure the time for this run
    start_time=$(date +%s%3N)
    
    # Run the GPU Graph Layout command (replace with your actual command)
    ./graph_viewer cpu 1000 10 wg 1 1 approximate 'out/Agro_full.txt' . csv 1800 1800
    
    # Calculate the time taken
    end_time=$(date +%s%3N)
    elapsed_time=$((end_time - start_time))
    
    # Add the time taken to total_time
    total_time=$((total_time + elapsed_time))
    
    echo "Time for run $i: $elapsed_time ms"
done

# Calculate the average time
average_time=$((total_time / iterations))

echo "Average time for $iterations runs: $average_time ms"
