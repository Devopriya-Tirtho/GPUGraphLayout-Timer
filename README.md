# GPU Graph Layout Timer

This repository contains a Bash script (`run_graph_viewer.sh`) that runs a graph layout program (`graph_viewer`) multiple times and measures the execution time for each run. It also calculates the average execution time after running the command a specified number of times (default is 10).

## Features

- Run a command multiple times (default: 10 times)
- Measure and log the execution time for each run
- Calculate the average execution time across all runs

## Prerequisites

- Cygwin or a Unix-like environment (such as Linux or WSL) to run the Bash script.
- Ensure that the `graph_viewer` executable is available and executable within the directory.
- Basic knowledge of command-line tools.

### Setup Instructions

1. Clone the repository or download the script:
   ```bash
   git clone https://github.com/yourusername/gpu-graph-layout-timer.git
   cd gpu-graph-layout-timer
