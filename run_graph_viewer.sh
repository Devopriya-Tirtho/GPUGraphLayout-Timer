#!/bin/bash

total_time=0  # Variable to store total time in milliseconds
iterations=10  # Number of times to run the command

for i in $(seq 1 $iterations)
do
    echo "Run $i:"
    
    # Measure the time for this run
    start_time=$(date +%s%3N)
    
    # Run the GPU Graph Layout command
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
